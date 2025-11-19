uint64_t sub_1003FDB50()
{
  v1 = *(v0 + 1352);
  v2 = *(v0 + 1344);
  v3 = *(v0 + 1128);
  v4 = *(v0 + 880);
  v5 = *(v0 + 856);
  v6 = *(v0 + 744);
  v7 = (*(v0 + 992) + *(v0 + 1492));
  *(v0 + 16) = *v7;
  v8 = v7[1];
  v9 = v7[2];
  v10 = v7[4];
  *(v0 + 64) = v7[3];
  *(v0 + 80) = v10;
  *(v0 + 32) = v8;
  *(v0 + 48) = v9;
  v11 = v7[5];
  v12 = v7[6];
  v13 = v7[8];
  *(v0 + 128) = v7[7];
  *(v0 + 144) = v13;
  *(v0 + 96) = v11;
  *(v0 + 112) = v12;
  v14 = v7[9];
  v15 = v7[10];
  v16 = v7[12];
  *(v0 + 192) = v7[11];
  *(v0 + 208) = v16;
  *(v0 + 160) = v14;
  *(v0 + 176) = v15;
  v17 = *(v0 + 48);
  v23 = *(v0 + 40);
  *(v0 + 1384) = v17;

  sub_10033A65C(v0 + 16);
  v18 = *(v3 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_allowAccountPrompt);
  *(v0 + 1392) = *(*sub_100006D8C(v6, v6[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);
  v1(v4, v3 + v2, v5);

  v19 = swift_task_alloc();
  *(v0 + 1400) = v19;
  *v19 = v0;
  v19[1] = sub_1003FDCEC;
  v20 = *(v0 + 888);
  v21 = *(v0 + 880);

  return sub_10054ADF8(v20, v23, v17, 0, 2, v21, v18);
}

uint64_t sub_1003FDCEC()
{
  v2 = *v1;
  *(*v1 + 1408) = v0;

  v3 = v2[171];
  v4 = v2[110];
  v5 = v2[107];
  v6 = v2[94];
  v3(v4, v5);

  if (v0)
  {
    v7 = sub_1003FF3E4;
  }

  else
  {
    v7 = sub_1003FDE8C;
  }

  return _swift_task_switch(v7, v6, 0);
}

void sub_1003FDE8C()
{
  v59 = v0;
  v1 = *(v0 + 1352);
  v2 = *(v0 + 888);
  v3 = *(v0 + 872);
  v4 = *(v0 + 856);
  static Logger.install.getter();
  v1(v3, v2, v4);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 1368);
  v9 = *(v0 + 1040);
  v10 = *(v0 + 1016);
  v11 = *(v0 + 1008);
  v12 = *(v0 + 872);
  v13 = *(v0 + 856);
  if (v7)
  {
    v55 = *(v0 + 1040);
    v14 = *(v0 + 752);
    v15 = swift_slowAlloc();
    v51 = v8;
    v16 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v58 = v52;
    *v15 = 138412546;
    v53 = v11;
    v17 = *(v14 + 160);
    *(v15 + 4) = v17;
    *v16 = v17;
    *(v15 + 12) = 2082;
    sub_100428444(&qword_100789F60, &type metadata accessor for UUID);
    v18 = v17;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    v51(v12, v13);
    v22 = sub_1002346CC(v19, v21, &v58);

    *(v15 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%@] Assigning installation identifier: %{public}s", v15, 0x16u);
    sub_1000032A8(v16, &qword_10077F920);

    sub_10000710C(v52);

    (*(v10 + 8))(v55, v53);
  }

  else
  {

    v8(v12, v13);
    (*(v10 + 8))(v9, v11);
  }

  v23 = *(v0 + 1408);
  v24 = *(v0 + 952);
  v25 = *(v0 + 944);
  v26 = *(v0 + 816);
  v27 = *(v0 + 752);
  sub_100428E08(*(v0 + 992), v26, type metadata accessor for ADP);
  (*(v24 + 56))(v26, 0, 1, v25);
  v28 = *(v27 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_lockedADP);
  *(swift_task_alloc() + 16) = v26;
  v29 = *(*v28 + class metadata base offset for ManagedBuffer + 16);
  v30 = (*(*v28 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v28 + v30));
  sub_1004283BC(v28 + v29);
  os_unfair_lock_unlock((v28 + v30));
  if (!v23)
  {
    v56 = *(v0 + 1256);
    v31 = *(v0 + 1128);
    v32 = *(v0 + 992);
    v33 = *(v0 + 816);
    v34 = *(v0 + 808);
    v35 = *(v0 + 800);
    v36 = *(v0 + 752);
    v37 = *(v0 + 744);

    sub_1000032A8(v33, &qword_100783C40);
    sub_100428E08(v32, v34 + v35[5], type metadata accessor for ADP);
    v38 = *(v36 + 152);
    v39 = v35[8];
    v40 = *(v36 + 120);
    v41 = *(v36 + 136);
    *(v0 + 1496) = v39;
    *(v34 + v39) = 0;
    *v34 = v31;
    v42 = v34 + v35[6];
    *v42 = v40;
    *(v42 + 1) = v41;
    v42[32] = v38;
    v43 = *(v31 + v56);
    *(v34 + v35[7]) = v43;
    v44 = *(v37 + 56);
    v54 = *(v37 + 24);
    v45 = *(v37 + 24);
    v57 = *(v37 + 40);
    v46 = sub_100006D8C(v37, v45);
    *(v0 + 360) = v54;
    *(v0 + 376) = v57;
    *(v0 + 392) = v44;
    v47 = sub_10020A748((v0 + 336));
    (*(*(v45 - 8) + 16))(v47, v46, v45);

    v48 = v43;
    v49 = swift_task_alloc();
    *(v0 + 1416) = v49;
    *v49 = v0;
    v49[1] = sub_1003FE37C;
    v50 = *(v0 + 792);

    sub_100215400(v50, v0 + 336);
  }
}

uint64_t sub_1003FE37C()
{
  v2 = *v1;
  *(*v1 + 1424) = v0;

  if (v0)
  {
    v3 = *(v2 + 752);
    v4 = sub_1003FF50C;
  }

  else
  {
    v5 = *(v2 + 752);
    sub_10000710C(v2 + 336);
    v4 = sub_1003FE4A4;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

void sub_1003FE4A4()
{
  v33 = v0[171];
  v28 = v0[141];
  v1 = v0[124];
  v29 = v1;
  v2 = v0[120];
  v26 = v2;
  v31 = v0[107];
  v32 = v0[111];
  v30 = v0[101];
  v3 = v0[99];
  v4 = v0[98];
  v5 = v0[97];
  v6 = v0[96];
  v7 = v0[95];
  v25 = v7;
  v8 = v0[94];
  v9 = v0[93];
  sub_100428E08(v3, v6, type metadata accessor for ADPPreflightResultingMetadata);
  (*(v4 + 56))(v6, 0, 1, v5);
  v10 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_preflightMetadata;
  swift_beginAccess();
  sub_10020AD90(v6, v8 + v10, &qword_100783C38);
  swift_endAccess();
  v27 = type metadata accessor for InstallConfirmationTask();
  sub_100428E08(v1, v2, type metadata accessor for ADP);
  sub_100428E08(v3, v7, type metadata accessor for MediaAPIMetadata);
  v11 = *(v28 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_authenticationContextData);
  v12 = *(v28 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_authenticationContextData + 8);
  v13 = *(v8 + 160);
  v14 = v9[3];
  v24 = v9[5];
  v15 = sub_100006D8C(v9, v14);
  v16 = *(v14 - 8);
  v17 = swift_task_alloc();
  (*(v16 + 16))(v17, v15, v14);

  sub_1001DFECC(v11, v12);
  v18 = v13;
  v19 = sub_1005ACF40(v26, v28, v25, v11, v12, v18, v17, v27, v14, v24);

  sub_10020B0E0(v11, v12);

  sub_100429090(v3, type metadata accessor for ADPPreflightResultingMetadata);
  sub_100429090(v30, type metadata accessor for ADPPreflightTask);
  v33(v32, v31);

  sub_100429090(v29, type metadata accessor for ADP);
  v20 = *(v8 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_installConfirmationTask);
  *(v8 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_installConfirmationTask) = v19;

  if ((*(v8 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_shouldCacheInstallAsPending) & 1) == 0)
  {
    goto LABEL_5;
  }

  if (qword_10077E518 != -1)
  {
    swift_once();
  }

  v21 = v0[178];
  v22 = qword_100783AE0;
  os_unfair_lock_lock((qword_100783AE0 + 24));
  sub_100428428((v22 + 16));
  os_unfair_lock_unlock((v22 + 24));
  if (!v21)
  {
LABEL_5:

    v23 = v0[1];

    v23();
  }
}

uint64_t sub_1003FEA0C()
{
  v1 = *(*v0 + 752);

  return _swift_task_switch(sub_1003FEB1C, v1, 0);
}

uint64_t sub_1003FEB1C()
{
  type metadata accessor for InternalError();
  sub_100428444(&qword_10077F900, type metadata accessor for InternalError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003FEDA4()
{
  v1 = *(*v0 + 752);

  return _swift_task_switch(sub_1003FEED0, v1, 0);
}

uint64_t sub_1003FEED0()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003FF0F8()
{
  sub_10020AD3C((v0 + 28));
  v1 = v0[152];
  v0[180] = v1;
  v2 = v0[93];
  v3 = v2[3];
  v4 = v2[6];
  v5 = v2[8];
  v6 = v2[9];
  v7 = v2[10];
  v8 = sub_100006D8C(v2, v3);
  swift_errorRetain();
  v9 = swift_task_alloc();
  v0[181] = v9;
  *v9 = v0;
  v9[1] = sub_1003FEDA4;
  v10 = v0[94];

  return sub_10041F4B4(v1, v8, v10, v3, v4, v5, v6, v7);
}

uint64_t sub_1003FF1F4()
{
  v1 = v0[154];
  v0[180] = v1;
  v2 = v0[93];
  v3 = v2[3];
  v4 = v2[6];
  v5 = v2[8];
  v6 = v2[9];
  v7 = v2[10];
  v8 = sub_100006D8C(v2, v3);
  swift_errorRetain();
  v9 = swift_task_alloc();
  v0[181] = v9;
  *v9 = v0;
  v9[1] = sub_1003FEDA4;
  v10 = v0[94];

  return sub_10041F4B4(v1, v8, v10, v3, v4, v5, v6, v7);
}

uint64_t sub_1003FF2E8()
{

  v1 = v0[160];
  v0[180] = v1;
  v2 = v0[93];
  v3 = v2[3];
  v4 = v2[6];
  v5 = v2[8];
  v6 = v2[9];
  v7 = v2[10];
  v8 = sub_100006D8C(v2, v3);
  swift_errorRetain();
  v9 = swift_task_alloc();
  v0[181] = v9;
  *v9 = v0;
  v9[1] = sub_1003FEDA4;
  v10 = v0[94];

  return sub_10041F4B4(v1, v8, v10, v3, v4, v5, v6, v7);
}

uint64_t sub_1003FF3E4()
{
  v1 = v0[124];

  sub_100429090(v1, type metadata accessor for ADP);
  v2 = v0[176];
  v0[180] = v2;
  v3 = v0[93];
  v4 = v3[3];
  v5 = v3[6];
  v6 = v3[8];
  v7 = v3[9];
  v8 = v3[10];
  v9 = sub_100006D8C(v3, v4);
  swift_errorRetain();
  v10 = swift_task_alloc();
  v0[181] = v10;
  *v10 = v0;
  v10[1] = sub_1003FEDA4;
  v11 = v0[94];

  return sub_10041F4B4(v2, v9, v11, v4, v5, v6, v7, v8);
}

uint64_t sub_1003FF50C()
{
  v1 = *(v0 + 1496);
  v2 = *(v0 + 808);
  sub_10000710C(v0 + 336);
  if (*(v2 + v1) == 1)
  {
    *(*(v0 + 752) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_shouldShowAlertOnInstallFailure) = 0;
  }

  v3 = *(v0 + 1368);
  v4 = *(v0 + 992);
  v5 = *(v0 + 888);
  v6 = *(v0 + 856);
  v7 = *(v0 + 808);
  swift_willThrow();

  sub_100429090(v7, type metadata accessor for ADPPreflightTask);
  v3(v5, v6);
  sub_100429090(v4, type metadata accessor for ADP);
  v8 = *(v0 + 1424);
  *(v0 + 1440) = v8;
  v9 = *(v0 + 744);
  v10 = v9[3];
  v11 = v9[6];
  v12 = v9[8];
  v13 = v9[9];
  v14 = v9[10];
  v15 = sub_100006D8C(v9, v10);
  swift_errorRetain();
  v16 = swift_task_alloc();
  *(v0 + 1448) = v16;
  *v16 = v0;
  v16[1] = sub_1003FEDA4;
  v17 = *(v0 + 752);

  return sub_10041F4B4(v8, v15, v17, v10, v11, v12, v13, v14);
}

uint64_t sub_1003FF6B0(uint64_t a1)
{
  *(v2 + 272) = a1;
  *(v2 + 280) = v1;
  return _swift_task_switch(sub_1003FF6D0, v1, 0);
}

uint64_t sub_1003FF6D0()
{
  v1 = *(v0 + 272);
  *(*(v0 + 280) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_shouldCacheInstallAsPending) = 0;
  v7 = *(v1 + 24);
  v2 = *(v1 + 24);
  v10 = *(v1 + 40);
  v8 = *(v1 + 80);
  v9 = *(v1 + 64);
  v3 = sub_100006D8C(v1, v2);
  *(v0 + 40) = v7;
  *(v0 + 56) = v10;
  *(v0 + 72) = v9;
  *(v0 + 88) = v8;
  v4 = sub_10020A748((v0 + 16));
  (*(*(v2 - 8) + 16))(v4, v3, v2);
  v5 = swift_task_alloc();
  *(v0 + 288) = v5;
  *v5 = v0;
  v5[1] = sub_1003FF7FC;

  return sub_1003FA244(v0 + 16);
}

uint64_t sub_1003FF7FC()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = *(v2 + 280);
    v4 = sub_100400008;
  }

  else
  {
    v5 = *(v2 + 280);
    sub_10000710C(v2 + 16);
    v4 = sub_1003FF924;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003FF924()
{
  v1 = *(v0 + 272);
  v2 = *(v1 + 24);
  v8 = *(v1 + 64);
  v9 = *(v1 + 40);
  v7 = *(v1 + 80);
  v3 = sub_100006D8C(v1, v2);
  *(v0 + 216) = v2;
  *(v0 + 224) = v9;
  *(v0 + 240) = v8;
  *(v0 + 256) = v7;
  v4 = sub_10020A748((v0 + 192));
  (*(*(v2 - 8) + 16))(v4, v3, v2);
  v5 = swift_task_alloc();
  *(v0 + 304) = v5;
  *v5 = v0;
  v5[1] = sub_1003FFA34;

  return sub_10042379C(v0 + 192);
}

uint64_t sub_1003FFA34()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = *(v2 + 280);
    v4 = sub_1003FFDB0;
  }

  else
  {
    v5 = *(v2 + 280);
    sub_10000710C(v2 + 192);
    v4 = sub_1003FFB5C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003FFB5C()
{
  v1 = *(v0 + 272);
  v7 = *(v1 + 24);
  v2 = *(v1 + 24);
  v10 = *(v1 + 48);
  v8 = *(v1 + 80);
  v9 = *(v1 + 64);
  v3 = sub_100006D8C(v1, v2);
  *(v0 + 128) = v7;
  *(v0 + 144) = v10;
  *(v0 + 160) = v9;
  *(v0 + 176) = v8;
  v4 = sub_10020A748((v0 + 104));
  (*(*(v2 - 8) + 16))(v4, v3, v2);
  v5 = swift_task_alloc();
  *(v0 + 320) = v5;
  *v5 = v0;
  v5[1] = sub_1003FFC74;

  return sub_100401444(v0 + 104);
}

uint64_t sub_1003FFC74()
{
  v2 = *v1;
  v2[41] = v0;

  if (v0)
  {
    v3 = v2[35];

    return _swift_task_switch(sub_1004000E4, v3, 0);
  }

  else
  {
    sub_10000710C((v2 + 13));
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1003FFDB0()
{
  sub_10000710C((v0 + 24));
  v1 = v0[39];
  v0[42] = v1;
  v2 = v0[34];
  v3 = v2[3];
  v4 = v2[7];
  v5 = v2[8];
  v6 = sub_100006D8C(v2, v3);
  v7 = swift_task_alloc();
  v0[43] = v7;
  *v7 = v0;
  v7[1] = sub_1003FFE8C;
  v8 = v0[35];

  return sub_100422468(v1, v6, v8, v3, v4, v5);
}

uint64_t sub_1003FFE8C()
{
  v1 = *(*v0 + 280);

  return _swift_task_switch(sub_1003FFF9C, v1, 0);
}

uint64_t sub_1003FFF9C()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100400008()
{
  sub_10000710C((v0 + 2));
  v1 = v0[37];
  v0[42] = v1;
  v2 = v0[34];
  v3 = v2[3];
  v4 = v2[7];
  v5 = v2[8];
  v6 = sub_100006D8C(v2, v3);
  v7 = swift_task_alloc();
  v0[43] = v7;
  *v7 = v0;
  v7[1] = sub_1003FFE8C;
  v8 = v0[35];

  return sub_100422468(v1, v6, v8, v3, v4, v5);
}

uint64_t sub_1004000E4()
{
  sub_10000710C((v0 + 13));
  v1 = v0[41];
  v0[42] = v1;
  v2 = v0[34];
  v3 = v2[3];
  v4 = v2[7];
  v5 = v2[8];
  v6 = sub_100006D8C(v2, v3);
  v7 = swift_task_alloc();
  v0[43] = v7;
  *v7 = v0;
  v7[1] = sub_1003FFE8C;
  v8 = v0[35];

  return sub_100422468(v1, v6, v8, v3, v4, v5);
}

uint64_t sub_1004001D8(uint64_t a1, uint64_t *a2)
{
  sub_1001F0C48(&qword_100783C50);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = _swiftEmptyArrayStorage;
  *a2 = result;
  return result;
}

uint64_t sub_10040022C()
{
  v1 = type metadata accessor for ADP();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1001F0C48(&qword_100783C40);
  __chkstk_darwin(v5 - 8);
  v7 = &v25[-v6];
  v8 = *(v0 + 112);
  v9 = (v8 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_itemIDFromButtonConfiguration);
  if ((*(v8 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_itemIDFromButtonConfiguration + 8) & 1) != 0 || (result = *v9) == 0)
  {
    v11 = *(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_lockedADP);
    v12 = *(*v11 + class metadata base offset for ManagedBuffer + 16);
    v13 = (*(*v11 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v11 + v13));
    sub_100005934(v11 + v12, v7, &qword_100783C40);
    os_unfair_lock_unlock((v11 + v13));
    if ((*(v2 + 48))(v7, 1, v1))
    {
      sub_1000032A8(v7, &qword_100783C40);
    }

    else
    {
      sub_100428E08(v7, v4, type metadata accessor for ADP);
      sub_1000032A8(v7, &qword_100783C40);
      v20 = *&v4[*(v1 + 24) + 16];
      sub_100429090(v4, type metadata accessor for ADP);
      if (v20)
      {
        return v20;
      }
    }

    v14 = *(v8 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
    v15 = *(*v14 + class metadata base offset for ManagedBuffer + 16);
    v16 = (*(*v14 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v14 + v16));
    v17 = (v14 + *(type metadata accessor for ADPInstallConfiguration.Storage(0) + 32) + v15);
    v18 = *v17;
    v19 = v17[1];

    os_unfair_lock_unlock((v14 + v16));
    if (!v19)
    {
      return 0;
    }

    sub_1005A9F58(v18, v19, v26);
    v26[7] = v26[2];
    v26[8] = v26[3];
    v26[9] = v26[4];
    v26[10] = v26[5];
    sub_1005A9044();
    v22 = v21;
    v24 = v23;
    sub_10020AD3C(v26);
    if (v24)
    {
      return 0;
    }

    result = v22;
    if (!v22)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100400560(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001F0C48(&qword_100783C40);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  swift_defaultActor_initialize();
  v8 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_lockedADP;
  v9 = type metadata accessor for ADP();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_1001F0C48(&qword_100783C98);
  v10 = swift_allocObject();
  *(v10 + ((*(*v10 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_10020A668(v7, v10 + *(*v10 + class metadata base offset for ManagedBuffer + 16), &qword_100783C40);
  *(v2 + v8) = v10;
  v11 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_preflightMetadata;
  v12 = type metadata accessor for ADPPreflightResultingMetadata(0);
  (*(*(v12 - 8) + 56))(v2 + v11, 1, 1, v12);
  *(v2 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_shouldCacheInstallAsPending) = 1;
  *(v2 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_shouldShowAlertOnInstallFailure) = 1;
  *(v2 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_installConfirmationTask) = 0;
  v13 = (v2 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_developerID);
  *v13 = 0;
  v13[1] = 0;
  *(v2 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_hasConditionalDeveloperApproval) = 0;
  *(v2 + 112) = a1;
  v14 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_id;
  v15 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_id;
  v16 = type metadata accessor for UUID();
  (*(*(v16 - 8) + 16))(v2 + v15, a1 + v14, v16);
  v17 = *(a2 + 16);
  *(v2 + 120) = *a2;
  *(v2 + 136) = v17;
  *(v2 + 152) = *(a2 + 32);
  v18 = *(a1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey);
  *(v2 + 160) = v18;
  v19 = v18;
  return v2;
}

uint64_t sub_100400814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for Logger();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();

  return _swift_task_switch(sub_1004008D8, 0, 0);
}

void sub_1004008D8()
{
  v40 = v0;
  if (qword_10077E518 != -1)
  {
LABEL_20:
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = qword_100783AE0;
  v0[8] = qword_100783AE0;
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  os_unfair_lock_lock((v3 + 24));
  sub_100428A1C((v3 + 16), &v39);
  v0[9] = 0;
  os_unfair_lock_unlock((v3 + 24));
  v5 = v39;
  v0[10] = v39;

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[11] = v5 & 0xFFFFFFFFFFFFFF8;
    v0[12] = v6;
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_22:
    v33 = v0[9];
    v34 = v0[8];
    v36 = v0[2];
    v35 = v0[3];

    v37 = swift_task_alloc();
    *(v37 + 16) = v36;
    *(v37 + 24) = v35;
    os_unfair_lock_lock((v34 + 24));
    sub_100428A38((v34 + 16));
    os_unfair_lock_unlock((v34 + 24));
    if (!v33)
    {

      v38 = v0[1];

      v38();
    }

    return;
  }

  v32 = _CocoaArrayWrapper.endIndex.getter();
  v0[11] = v5 & 0xFFFFFFFFFFFFFF8;
  v0[12] = v32;
  if (!v32)
  {
    goto LABEL_22;
  }

LABEL_4:
  v7 = 0;
  while (1)
  {
    v8 = v0[10];
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v0[11] + 16))
      {
        goto LABEL_19;
      }

      v9 = *(v8 + 8 * v7 + 32);
    }

    v10 = v7 + 1;
    v0[13] = v9;
    v0[14] = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v11 = *(*(v9 + 112) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
    v12 = v11 + *(*v11 + class metadata base offset for ManagedBuffer + 16);
    v13 = (*(*v11 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v11 + v13));
    LODWORD(v12) = *(v12 + 48);
    os_unfair_lock_unlock((v11 + v13));

    if (v12 != 1)
    {
      break;
    }

    v14 = v0[12];

    ++v7;
    if (v10 == v14)
    {
      goto LABEL_22;
    }
  }

  static Logger.install.getter();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = *(*(v9 + 112) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey);
    *(v17 + 4) = v19;
    *v18 = v19;
    v20 = v19;
    _os_log_impl(&_mh_execute_header, v15, v16, "[%@] Cleaning up pending install after client disconnect", v17, 0xCu);
    sub_1000032A8(v18, &qword_10077F920);
  }

  v22 = v0[6];
  v21 = v0[7];
  v24 = v0[4];
  v23 = v0[5];

  (*(v22 + 8))(v21, v23);
  v25 = v24[3];
  v26 = v24[4];
  v27 = v24[5];
  v28 = v24[6];
  v29 = v24[7];
  v30 = sub_100006D8C(v24, v25);
  v31 = swift_task_alloc();
  v0[15] = v31;
  *v31 = v0;
  v31[1] = sub_100400D24;

  sub_10041F4B4(0, v30, v9, v25, v26, v27, v28, v29);
}

uint64_t sub_100400D24()
{

  return _swift_task_switch(sub_100400E20, 0, 0);
}

void sub_100400E20()
{

  v1 = v0[14];
  if (v1 == v0[12])
  {
LABEL_2:
    v2 = v0[9];
    v3 = v0[8];
    v5 = v0[2];
    v4 = v0[3];

    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
    os_unfair_lock_lock((v3 + 24));
    sub_100428A38((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));
    if (!v2)
    {

      v14 = v0[1];

      v14();
    }
  }

  else
  {
    while (1)
    {
      v7 = v0[10];
      if ((v7 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v1 >= *(v0[11] + 16))
        {
          goto LABEL_21;
        }

        v8 = *(v7 + 8 * v1 + 32);
      }

      v9 = v1 + 1;
      v0[13] = v8;
      v0[14] = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        return;
      }

      v10 = *(*(v8 + 112) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
      v11 = v10 + *(*v10 + class metadata base offset for ManagedBuffer + 16);
      v12 = (*(*v10 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v10 + v12));
      LODWORD(v11) = *(v11 + 48);
      os_unfair_lock_unlock((v10 + v12));

      if (v11 != 1)
      {
        break;
      }

      v13 = v0[12];

      ++v1;
      if (v9 == v13)
      {
        goto LABEL_2;
      }
    }

    static Logger.install.getter();

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = *(*(v8 + 112) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey);
      *(v17 + 4) = v19;
      *v18 = v19;
      v20 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "[%@] Cleaning up pending install after client disconnect", v17, 0xCu);
      sub_1000032A8(v18, &qword_10077F920);
    }

    v22 = v0[6];
    v21 = v0[7];
    v24 = v0[4];
    v23 = v0[5];

    (*(v22 + 8))(v21, v23);
    v25 = v24[3];
    v26 = v24[4];
    v27 = v24[5];
    v28 = v24[6];
    v29 = v24[7];
    v30 = sub_100006D8C(v24, v25);
    v31 = swift_task_alloc();
    v0[15] = v31;
    *v31 = v0;
    v31[1] = sub_100400D24;

    sub_10041F4B4(0, v30, v8, v25, v26, v27, v28, v29);
  }
}

void *sub_1004011C8@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *result;
  if (*result >> 62)
  {
LABEL_21:
    result = _CocoaArrayWrapper.endIndex.getter();
    v6 = a3;
    v7 = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = a3;
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v8 = 0;
      v9 = v5 & 0xFFFFFFFFFFFFFF8;
      a4 = &OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_clientID;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          result = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v10 = result;
          v11 = (v8 + 1);
          if (__OFADD__(v8, 1))
          {
LABEL_18:
            __break(1u);
LABEL_19:
            a4 = v15;
            break;
          }
        }

        else
        {
          if (v8 >= *(v9 + 16))
          {
            __break(1u);
            goto LABEL_21;
          }

          v10 = *(v5 + 8 * v8 + 32);

          v11 = (v8 + 1);
          if (__OFADD__(v8, 1))
          {
            goto LABEL_18;
          }
        }

        v12 = (v10[14] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_clientID);
        v13 = v12[1];
        if (v13 && (*v12 == a2 ? (v14 = v13 == v6) : (v14 = 0), v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v6 = a3;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          result = specialized ContiguousArray._endMutation()();
          v9 = v5 & 0xFFFFFFFFFFFFFF8;
        }

        else
        {
        }

        ++v8;
        if (v11 == v7)
        {
          goto LABEL_19;
        }
      }
    }
  }

  *a4 = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_100401390(unint64_t *a1, uint64_t a2, uint64_t a3)
{

  v6 = sub_100427938(a1, a2, a3);

  if (*a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v8 = result;
    if (result >= v6)
    {
      return sub_100428C3C(v6, v8, type metadata accessor for ADPInstallTask);
    }
  }

  else
  {
    v8 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8 >= v6)
    {
      return sub_100428C3C(v6, v8, type metadata accessor for ADPInstallTask);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100401444(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = type metadata accessor for Logger();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  type metadata accessor for AppInstall();
  v2[21] = swift_task_alloc();
  v2[22] = type metadata accessor for ADPPrepareInstallTask();
  v2[23] = swift_task_alloc();
  sub_1001F0C48(&qword_100783C38);
  v2[24] = swift_task_alloc();
  v4 = type metadata accessor for ADPPreflightResultingMetadata(0);
  v2[25] = v4;
  v2[26] = *(v4 - 8);
  v2[27] = swift_task_alloc();
  sub_1001F0C48(&qword_100783C40);
  v2[28] = swift_task_alloc();
  v5 = type metadata accessor for ADP();
  v2[29] = v5;
  v2[30] = *(v5 - 8);
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_1004016B8, v1, 0);
}

uint64_t sub_1004016B8()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  *(v0 + 256) = *(*sub_100006D8C(v4, v4[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);
  v6 = *(v5 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_lockedADP);
  v7 = *(*v6 + class metadata base offset for ManagedBuffer + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v6 + v8));
  sub_100005934(v6 + v7, v3, &qword_100783C40);
  os_unfair_lock_unlock((v6 + v8));
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000032A8(*(v0 + 224), &qword_100783C40);
    static Logger.install.getter();

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 104);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = *(v11 + 160);
      *(v12 + 4) = v14;
      *v13 = v14;
      v15 = v14;
      _os_log_impl(&_mh_execute_header, v9, v10, "[%@] No ADP available, failing", v12, 0xCu);
      sub_1000032A8(v13, &qword_10077F920);
    }

    v17 = *(v0 + 120);
    v16 = *(v0 + 128);
    v18 = *(v0 + 112);

    (*(v17 + 8))(v16, v18);
    type metadata accessor for InternalError();
    sub_100428444(&qword_10077F900, type metadata accessor for InternalError);
    v19 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_17;
  }

  v20 = *(v0 + 200);
  v21 = *(v0 + 208);
  v22 = *(v0 + 192);
  v23 = *(v0 + 104);
  sub_1004287E8(*(v0 + 224), *(v0 + 248), type metadata accessor for ADP);
  v24 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_preflightMetadata;
  swift_beginAccess();
  sub_100005934(v23 + v24, v22, &qword_100783C38);
  v25 = (*(v21 + 48))(v22, 1, v20);
  v26 = *(v0 + 104);
  if (v25 == 1)
  {
    sub_1000032A8(*(v0 + 192), &qword_100783C38);
    static Logger.install.getter();

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = *(v0 + 104);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      v32 = *(v29 + 160);
      *(v30 + 4) = v32;
      *v31 = v32;
      v33 = v32;
      _os_log_impl(&_mh_execute_header, v27, v28, "[%@] No preflight metadata available, failing", v30, 0xCu);
      sub_1000032A8(v31, &qword_10077F920);
    }

    v34 = *(v0 + 248);
    v35 = *(v0 + 136);
    v36 = *(v0 + 112);
    v37 = *(v0 + 120);

    (*(v37 + 8))(v35, v36);
    type metadata accessor for InternalError();
    sub_100428444(&qword_10077F900, type metadata accessor for InternalError);
    v19 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_16:
    sub_100429090(v34, type metadata accessor for ADP);
LABEL_17:
    *(v0 + 320) = v19;
    v73 = *(v0 + 96);
    v74 = v73[3];
    v75 = v73[5];
    v76 = v73[8];
    v77 = v73[9];
    v78 = v73[10];
    v79 = sub_100006D8C(v73, v74);
    swift_errorRetain();
    v80 = swift_task_alloc();
    *(v0 + 328) = v80;
    *v80 = v0;
    v80[1] = sub_100402680;
    v81 = *(v0 + 104);

    return sub_10041F4B4(v19, v79, v81, v74, v75, v76, v77, v78);
  }

  sub_1004287E8(*(v0 + 192), *(v0 + 216), type metadata accessor for ADPPreflightResultingMetadata);
  v38 = *(v26 + 112);
  v39 = *(v38 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
  v40 = v39 + *(*v39 + class metadata base offset for ManagedBuffer + 16);
  v41 = (*(*v39 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v39 + v41));
  v42 = *(v40 + 40);

  os_unfair_lock_unlock((v39 + v41));
  if (!v42)
  {
    static Logger.install.getter();

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = *(v0 + 104);
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v65 = 138412290;
      v67 = *(v64 + 160);
      *(v65 + 4) = v67;
      *v66 = v67;
      v68 = v67;
      _os_log_impl(&_mh_execute_header, v62, v63, "[%@] No agent available, failing", v65, 0xCu);
      sub_1000032A8(v66, &qword_10077F920);
    }

    v34 = *(v0 + 248);
    v69 = *(v0 + 216);
    v70 = *(v0 + 144);
    v71 = *(v0 + 112);
    v72 = *(v0 + 120);

    (*(v72 + 8))(v70, v71);
    type metadata accessor for InternalError();
    sub_100428444(&qword_10077F900, type metadata accessor for InternalError);
    v19 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_100429090(v69, type metadata accessor for ADPPreflightResultingMetadata);
    goto LABEL_16;
  }

  v43 = *(v0 + 248);
  v44 = *(v0 + 216);
  v46 = *(v0 + 176);
  v45 = *(v0 + 184);
  v47 = *(v0 + 96);
  v48 = *(v0 + 104);

  sub_100428E08(v43, v45 + v46[5], type metadata accessor for ADP);
  sub_100428E08(v44, v45 + v46[6], type metadata accessor for ADPPreflightResultingMetadata);
  v49 = *(v48 + 152);
  v50 = *(v48 + 120);
  v51 = *(v48 + 136);
  *v45 = v38;
  v52 = *(v38 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey);
  *(v45 + v46[7]) = v52;
  v53 = v45 + v46[8];
  *v53 = v50;
  *(v53 + 1) = v51;
  v53[32] = v49;
  v54 = v4[3];
  v55 = *(v47 + 32);
  v82 = *(v47 + 48);
  v56 = sub_100006D8C(v47, v54);
  *(v0 + 40) = v54;
  *(v0 + 48) = v55;
  *(v0 + 56) = v82;
  v57 = sub_10020A748((v0 + 16));
  (*(*(v54 - 8) + 16))(v57, v56, v54);

  v58 = v52;
  v59 = swift_task_alloc();
  *(v0 + 264) = v59;
  *v59 = v0;
  v59[1] = sub_100401FF8;
  v60 = *(v0 + 168);

  return sub_1001F9218(v60, v0 + 16);
}

uint64_t sub_100401FF8(uint64_t a1)
{
  v3 = *v2;
  v3[34] = a1;
  v3[35] = v1;

  if (v1)
  {
    v4 = v3[13];
    v5 = sub_1004028B0;
  }

  else
  {
    v6 = v3[13];
    sub_10000710C((v3 + 2));
    v5 = sub_100402120;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100402120()
{
  static Logger.install.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[13];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = *(v3 + 160);
    *(v4 + 4) = v6;
    *v5 = v6;
    v7 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Enqueuing install", v4, 0xCu);
    sub_1000032A8(v5, &qword_10077F920);
  }

  v8 = v0[20];
  v9 = v0[14];
  v10 = v0[15];

  v11 = *(v10 + 8);
  v0[36] = v11;
  v0[37] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v9);
  v12 = swift_task_alloc();
  v0[38] = v12;
  *v12 = v0;
  v12[1] = sub_1004022D8;
  v13 = v0[34];
  v14 = v0[21];

  return sub_10054CDE0(v14, v13);
}

uint64_t sub_1004022D8()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 104);

  if (v0)
  {
    v4 = sub_100402A08;
  }

  else
  {
    v4 = sub_100402420;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100402420()
{
  static Logger.install.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[13];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = *(v3 + 160);
    *(v4 + 4) = v6;
    *v5 = v6;
    v7 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Successfully enqueued install", v4, 0xCu);
    sub_1000032A8(v5, &qword_10077F920);
  }

  v8 = v0[36];
  v9 = v0[31];
  v10 = v0[27];
  v11 = v0[23];
  v12 = v0[21];
  v13 = v0[19];
  v14 = v0[14];

  v8(v13, v14);
  sub_100429090(v12, type metadata accessor for AppInstall);
  sub_100429090(v11, type metadata accessor for ADPPrepareInstallTask);
  sub_100429090(v10, type metadata accessor for ADPPreflightResultingMetadata);
  sub_100429090(v9, type metadata accessor for ADP);

  v15 = v0[1];

  return v15();
}

uint64_t sub_100402680()
{
  v1 = *(*v0 + 104);

  return _swift_task_switch(sub_1004027AC, v1, 0);
}

uint64_t sub_1004027AC()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004028B0()
{
  v1 = v0[31];
  v2 = v0[27];
  sub_100429090(v0[23], type metadata accessor for ADPPrepareInstallTask);
  sub_100429090(v2, type metadata accessor for ADPPreflightResultingMetadata);
  sub_100429090(v1, type metadata accessor for ADP);
  sub_10000710C((v0 + 2));
  v3 = v0[35];
  v0[40] = v3;
  v4 = v0[12];
  v5 = v4[3];
  v6 = v4[5];
  v7 = v4[8];
  v8 = v4[9];
  v9 = v4[10];
  v10 = sub_100006D8C(v4, v5);
  swift_errorRetain();
  v11 = swift_task_alloc();
  v0[41] = v11;
  *v11 = v0;
  v11[1] = sub_100402680;
  v12 = v0[13];

  return sub_10041F4B4(v3, v10, v12, v5, v6, v7, v8, v9);
}

uint64_t sub_100402A08()
{
  v1 = v0[31];
  v2 = v0[27];
  v3 = v0[23];
  sub_100429090(v0[21], type metadata accessor for AppInstall);
  sub_100429090(v3, type metadata accessor for ADPPrepareInstallTask);
  sub_100429090(v2, type metadata accessor for ADPPreflightResultingMetadata);
  sub_100429090(v1, type metadata accessor for ADP);
  v4 = v0[39];
  v0[40] = v4;
  v5 = v0[12];
  v6 = v5[3];
  v7 = v5[5];
  v8 = v5[8];
  v9 = v5[9];
  v10 = v5[10];
  v11 = sub_100006D8C(v5, v6);
  swift_errorRetain();
  v12 = swift_task_alloc();
  v0[41] = v12;
  *v12 = v0;
  v12[1] = sub_100402680;
  v13 = v0[13];

  return sub_10041F4B4(v4, v11, v13, v6, v7, v8, v9, v10);
}

uint64_t sub_100402B78()
{
  v1 = type metadata accessor for Logger();
  v54 = *(v1 - 8);
  __chkstk_darwin(v1);
  v55 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1001F0C48(&unk_1007809F0);
  v4 = __chkstk_darwin(v3 - 8);
  v53 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v45 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v52 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v45 - v13;
  __chkstk_darwin(v12);
  v16 = &v45 - v15;
  v17 = *(v0 + 112);
  result = sub_10038A3C0();
  if (result)
  {
    v50 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_referrer;
    sub_100005934(v17 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_referrer, v7, &unk_1007809F0);
    v48 = *(v9 + 48);
    v49 = v9 + 48;
    if (v48(v7, 1, v8) == 1)
    {
      sub_1000032A8(v7, &unk_1007809F0);
      type metadata accessor for InternalError();
      sub_100428444(&qword_10077F900, type metadata accessor for InternalError);
      v19 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_8;
    }

    v51 = v1;
    (*(v9 + 32))(v16, v7, v8);
    (*(v9 + 16))(v14, v17 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_url, v8);
    sub_10020A980(v17 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_bag, v56);
    sub_100006D8C(v56, v56[3]);
    v20 = sub_100364E74();
    v21 = sub_10060B250(v16, v14, v20);

    v22 = *(v9 + 8);
    v22(v14, v8);
    sub_10000710C(v56);
    if (!v21)
    {
      type metadata accessor for InternalError();
      sub_100428444(&qword_10077F900, type metadata accessor for InternalError);
      v19 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v22(v16, v8);
      v1 = v51;
LABEL_8:
      v23 = v55;
      static Logger.install.getter();

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v24, v25))
      {

        (*(v54 + 8))(v23, v1);
        return swift_willThrow();
      }

      v47 = v25;
      v56[6] = v19;
      v51 = v1;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v56[0] = v46;
      *v26 = 138412802;
      v28 = *(v17 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey);
      *(v26 + 4) = v28;
      v45 = v27;
      *v27 = v28;
      *(v26 + 12) = 2082;
      v29 = v52;
      (*(v9 + 16))(v52, v17 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_url, v8);
      v30 = v28;
      v31 = sub_1005D772C();
      v33 = v32;
      v34 = *(v9 + 8);
      v34(v29, v8);
      if (v33)
      {
        v35 = v31;
      }

      else
      {
        v35 = 7104878;
      }

      if (v33)
      {
        v36 = v33;
      }

      else
      {
        v36 = 0xE300000000000000;
      }

      v37 = sub_1002346CC(v35, v36, v56);

      *(v26 + 14) = v37;
      *(v26 + 22) = 2082;
      v38 = v53;
      sub_100005934(v17 + v50, v53, &unk_1007809F0);
      if (v48(v38, 1, v8) == 1)
      {
        sub_1000032A8(v38, &unk_1007809F0);
      }

      else
      {
        v39 = sub_1005D772C();
        v41 = v40;
        v34(v38, v8);
        if (v41)
        {
          v42 = v39;
          v43 = v51;
LABEL_21:
          v44 = sub_1002346CC(v42, v41, v56);

          *(v26 + 24) = v44;
          sub_1000032A8(v45, &qword_10077F920);

          swift_arrayDestroy();

          (*(v54 + 8))(v55, v43);
          return swift_willThrow();
        }
      }

      v41 = 0xE300000000000000;
      v43 = v51;
      v42 = 7104878;
      goto LABEL_21;
    }

    return (v22)(v16, v8);
  }

  return result;
}

uint64_t sub_1004032C8(uint64_t a1, uint64_t a2)
{
  v3[104] = v2;
  v3[103] = a2;
  v3[102] = a1;
  sub_1001F0C48(&unk_100780380);
  v3[105] = swift_task_alloc();
  v4 = type metadata accessor for AppInstallRequestType();
  v3[106] = v4;
  v3[107] = *(v4 - 8);
  v3[108] = swift_task_alloc();
  v3[109] = swift_task_alloc();
  sub_1001F0C48(&qword_10077EC90);
  v3[110] = swift_task_alloc();
  v5 = type metadata accessor for MediaAPIMetadata();
  v3[111] = v5;
  v3[112] = *(v5 - 8);
  v3[113] = swift_task_alloc();
  v3[114] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[115] = v6;
  v3[116] = *(v6 - 8);
  v3[117] = swift_task_alloc();
  v3[118] = swift_task_alloc();

  return _swift_task_switch(sub_1004034DC, v2, 0);
}

uint64_t sub_1004034DC()
{
  v37 = v0;
  v1 = *(v0 + 816);
  v2 = v1[5];
  v4 = v1[2];
  v3 = v1[3];
  *(v0 + 544) = v1[4];
  *(v0 + 560) = v2;
  *(v0 + 512) = v4;
  *(v0 + 528) = v3;
  sub_1005A9044();
  *(v0 + 952) = v5;
  if (v6 & 1) != 0 || (v7 = v5, sub_1005A9350(), *(v0 + 960) = v8, (v9))
  {

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = v8;
    static Logger.install.getter();

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 944);
    v17 = *(v0 + 928);
    v18 = *(v0 + 920);
    if (v15)
    {
      v19 = *(v0 + 832);
      v20 = swift_slowAlloc();
      v33 = v16;
      v21 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v34 = v31;
      *v20 = 138412546;
      v22 = *(v19 + 160);
      *(v20 + 4) = v22;
      *v21 = v22;
      *(v20 + 12) = 2082;
      *(v0 + 800) = v7;
      v23 = v22;
      v32 = v18;
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v24;
      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      String.append(_:)(v25);
      *(v0 + 808) = v12;
      v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v26);

      v27 = sub_1002346CC(v35, v36, &v34);

      *(v20 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v13, v14, "[%@] Install verification token contains version metadata (%{public}s), taking fast path", v20, 0x16u);
      sub_1000032A8(v21, &qword_10077F920);

      sub_10000710C(v31);

      v28 = *(v17 + 8);
      v28(v33, v32);
    }

    else
    {

      v28 = *(v17 + 8);
      v28(v16, v18);
    }

    *(v0 + 968) = v28;
    v29 = *(*(v0 + 832) + 112);
    *(v0 + 976) = v29;
    v30 = swift_task_alloc();
    *(v0 + 984) = v30;
    *v30 = v0;
    v30[1] = sub_10040385C;

    return sub_100219B60(v0 + 720, v29, v7, v12);
  }
}

uint64_t sub_10040385C(char a1)
{
  v4 = *v2;
  *(v4 + 992) = v1;

  v5 = *(v4 + 832);
  if (v1)
  {
    v6 = sub_10040506C;
  }

  else
  {
    *(v4 + 682) = a1;
    v6 = sub_100403998;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100403998()
{
  v53 = v0;
  if (*(v0 + 682))
  {
    v1 = *(v0 + 960);
    v2 = *(v0 + 952);
    v3 = *(v0 + 824);
    v4 = *(v0 + 512);
    v5 = *(*(v0 + 832) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_hasConditionalDeveloperApproval);
    v6 = *(v0 + 520);
    *(v0 + 640) = *(v0 + 976);
    *(v0 + 648) = v4;
    *(v0 + 656) = v6;
    *(v0 + 664) = v2;
    *(v0 + 672) = v1;
    *(v0 + 680) = 0;
    *(v0 + 681) = v5;
    v7 = *(v3 + 56);
    v48 = *(v3 + 24);
    v8 = *(v3 + 24);
    v50 = *(v3 + 40);
    v9 = sub_100006D8C(v3, v8);
    *(v0 + 600) = v48;
    *(v0 + 616) = v50;
    *(v0 + 632) = v7;
    v10 = sub_10020A748((v0 + 576));
    (*(*(v8 - 8) + 16))(v10, v9, v8);

    v11 = swift_task_alloc();
    *(v0 + 1000) = v11;
    *v11 = v0;
    v11[1] = sub_100403E9C;
    v12 = *(v0 + 912);

    return sub_1003A0B90(v12, v0 + 576);
  }

  else
  {
    static Logger.install.getter();

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 976);
      v51 = *(v0 + 968);
      v47 = *(v0 + 920);
      v49 = *(v0 + 936);
      v17 = *(v0 + 864);
      v18 = *(v0 + 856);
      v19 = *(v0 + 848);
      v20 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v52 = v46;
      *v20 = 138412546;
      v21 = *(v16 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey);
      *(v20 + 4) = v21;
      *v45 = v21;
      *(v20 + 12) = 2082;
      v22 = *(v16 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
      v23 = *(*v22 + class metadata base offset for ManagedBuffer + 16);
      v24 = (*(*v22 + 48) + 3) & 0x1FFFFFFFCLL;
      v25 = v21;
      os_unfair_lock_lock((v22 + v24));
      v26 = type metadata accessor for ADPInstallConfiguration.Storage(0);
      (*(v18 + 16))(v17, v22 + *(v26 + 28) + v23, v19);
      os_unfair_lock_unlock((v22 + v24));
      v27 = AppInstallRequestType.rawValue.getter();
      v29 = v28;
      (*(v18 + 8))(v17, v19);
      v30 = sub_1002346CC(v27, v29, &v52);

      *(v20 + 14) = v30;
      sub_1000032A8(v45, &qword_10077F920);

      sub_10000710C(v46);

      v51(v49, v47);
    }

    else
    {
      v31 = *(v0 + 968);
      v32 = *(v0 + 936);
      v33 = *(v0 + 920);

      v31(v32, v33);
    }

    v34 = *(v0 + 824);
    v35 = *(v0 + 512);
    v36 = *(v0 + 520);
    v37 = v34[3];
    v38 = v34[7];
    v39 = sub_100006D8C(v34, v37);
    *(v0 + 784) = v37;
    *(v0 + 792) = v38;
    v40 = sub_10020A748((v0 + 760));
    (*(*(v37 - 8) + 16))(v40, v39, v37);
    v41 = swift_task_alloc();
    *(v0 + 1040) = v41;
    *v41 = v0;
    v41[1] = sub_100404B6C;
    v42 = *(v0 + 976);
    v43 = *(v0 + 960);
    v44 = *(v0 + 952);

    return sub_1004A4D04(v0 + 720, v35, v36, v42, v44, v43, v0 + 760);
  }
}

uint64_t sub_100403E9C()
{
  v2 = *v1;
  *(*v1 + 1008) = v0;

  if (v0)
  {
    v3 = *(v2 + 832);
    v4 = sub_10040513C;
  }

  else
  {
    v5 = *(v2 + 832);
    sub_10000710C(v2 + 576);
    v4 = sub_100403FC4;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

void sub_100403FC4()
{
  v1 = *(v0 + 1008);
  v2 = *(v0 + 976);
  v3 = *(v0 + 896);
  v4 = *(v0 + 888);
  v5 = *(v0 + 880);
  sub_100428E08(*(v0 + 912), v5, type metadata accessor for MediaAPIMetadata);
  (*(v3 + 56))(v5, 0, 1, v4);
  v6 = *(v2 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
  *(swift_task_alloc() + 16) = v5;
  v7 = *(*v6 + class metadata base offset for ManagedBuffer + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v8));
  sub_1004285F4(v6 + v7);
  os_unfair_lock_unlock((v6 + v8));
  if (!v1)
  {
    v9 = *(v0 + 682);
    v57 = *(v0 + 976);
    v54 = *(v0 + 912);
    v10 = *(v0 + 888);
    v11 = *(v0 + 880);
    v12 = *(v0 + 872);
    v13 = *(v0 + 856);
    v14 = *(v0 + 848);
    v15 = *(v0 + 832);

    sub_1000032A8(v11, &qword_10077EC90);
    v16 = &enum case for AppInstallRequestType.install(_:);
    if (v9 != 1)
    {
      v16 = &enum case for AppInstallRequestType.update(_:);
    }

    (*(v13 + 104))(v12, *v16, v14);
    v17 = *(v15 + 120);
    v18 = *(v15 + 136);
    *(v0 + 716) = *(v15 + 152);
    *(v0 + 684) = v17;
    *(v0 + 700) = v18;
    v19 = *(v54 + *(v10 + 32));
    sub_100428610((v0 + 224));
    v20 = *(v0 + 400);
    *(v0 + 176) = *(v0 + 384);
    *(v0 + 192) = v20;
    *(v0 + 208) = *(v0 + 416);
    v21 = *(v0 + 336);
    *(v0 + 112) = *(v0 + 320);
    *(v0 + 128) = v21;
    v22 = *(v0 + 368);
    *(v0 + 144) = *(v0 + 352);
    *(v0 + 160) = v22;
    v23 = *(v0 + 272);
    *(v0 + 48) = *(v0 + 256);
    *(v0 + 64) = v23;
    v24 = *(v0 + 304);
    *(v0 + 80) = *(v0 + 288);
    *(v0 + 96) = v24;
    v25 = *(v0 + 240);
    *(v0 + 16) = *(v0 + 224);
    *(v0 + 32) = v25;
    v26 = sub_1002223D8(v12, v57, v0 + 684, v19, (v0 + 16));
    (*(v13 + 8))(v12, v14);
    if (v26)
    {
      v58 = *(v0 + 960);
      v55 = *(v0 + 952);
      v27 = *(v0 + 912);
      v28 = *(v0 + 904);
      v29 = *(v0 + 832);
      v30 = *(v0 + 824);
      v52 = type metadata accessor for InstallConfirmationTask();
      sub_100428E08(v27, v28, type metadata accessor for MediaAPIMetadata);
      v31 = *(v30 + 24);
      v32 = *(v30 + 40);
      v33 = sub_100006D8C(v30, v31);
      v34 = *(v31 - 8);
      v35 = swift_task_alloc();
      (*(v34 + 16))(v35, v33, v31);

      v37 = sub_1005ACA6C(v36, v55, v58, v28, v35, v52, v31, v32);

      v38 = *(v29 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_installConfirmationTask);
      *(v29 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_installConfirmationTask) = v37;

      v39 = *(v30 + 24);
      v56 = *(v30 + 56);
      v59 = *(v30 + 40);
      v53 = *(v30 + 72);
      v40 = sub_100006D8C(v30, v39);
      *(v0 + 456) = v39;
      *(v0 + 464) = v59;
      *(v0 + 480) = v56;
      *(v0 + 496) = v53;
      v41 = sub_10020A748((v0 + 432));
      (*(*(v39 - 8) + 16))(v41, v40, v39);
      v42 = swift_task_alloc();
      *(v0 + 1016) = v42;
      *v42 = v0;
      v42[1] = sub_1004044D4;

      sub_10042379C(v0 + 432);
    }

    else
    {
      v43 = *(v0 + 912);
      v44 = *(v0 + 824);
      v46 = *v43;
      v45 = v43[1];
      v47 = v44[3];
      v48 = v44[7];
      v49 = sub_100006D8C(v44, v47);
      v50 = swift_task_alloc();
      *(v0 + 1032) = v50;
      *v50 = v0;
      v50[1] = sub_100404870;
      v51 = *(v0 + 832);

      sub_1004204EC(v46, v45, v49, v51, v47, v48);
    }
  }
}

uint64_t sub_1004044D4()
{
  v2 = *v1;
  *(*v1 + 1024) = v0;

  if (v0)
  {
    v3 = *(v2 + 832);
    v4 = sub_100404718;
  }

  else
  {
    v5 = *(v2 + 832);
    sub_10000710C(v2 + 432);
    v4 = sub_1004045FC;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1004045FC()
{
  v1 = *(v0 + 912);

  sub_1000032A8(v0 + 720, &unk_10077FA50);
  sub_100429090(v1, type metadata accessor for MediaAPIMetadata);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100404718()
{
  sub_100429090(*(v0 + 912), type metadata accessor for MediaAPIMetadata);
  sub_10000710C(v0 + 432);
  v1 = *(v0 + 832);
  if (*(v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_shouldShowAlertOnInstallFailure) == 1)
  {
    *(v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_shouldShowAlertOnInstallFailure) = (*(v0 + 680) & 1) == 0;
  }

  swift_willThrow();

  sub_1000032A8(v0 + 720, &unk_10077FA50);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100404870()
{
  v1 = *(*v0 + 832);

  return _swift_task_switch(sub_100404980, v1, 0);
}

uint64_t sub_100404980()
{
  v1 = *(v0 + 912);
  v2 = type metadata accessor for MarketplaceKitError();
  sub_100428444(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
  swift_allocError();
  (*(*(v2 - 8) + 104))(v3, enum case for MarketplaceKitError.featureUnavailable(_:), v2);
  swift_willThrow();
  sub_100429090(v1, type metadata accessor for MediaAPIMetadata);
  v4 = *(v0 + 832);
  if (*(v4 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_shouldShowAlertOnInstallFailure) == 1)
  {
    *(v4 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_shouldShowAlertOnInstallFailure) = (*(v0 + 680) & 1) == 0;
  }

  swift_willThrow();

  sub_1000032A8(v0 + 720, &unk_10077FA50);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100404B6C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 1048) = a1;

  if (v1)
  {
    v4 = *(v3 + 832);

    v5 = sub_100404EDC;
    v6 = v4;
  }

  else
  {
    v7 = *(v3 + 832);
    sub_10000710C(v3 + 760);
    v5 = sub_100404CB0;
    v6 = v7;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100404CB0()
{
  v1 = v0[131];
  if (v1)
  {
    v2 = v0[105];
    *(v0[104] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_shouldShowAlertOnInstallFailure) = 0;
    v3 = type metadata accessor for TaskPriority();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = swift_allocObject();
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = v1;
    sub_1004A6444(0, 0, v2, &unk_1006AA430, v4);
  }

  v5 = type metadata accessor for MarketplaceKitError();
  sub_100428444(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
  swift_allocError();
  (*(*(v5 - 8) + 104))(v6, enum case for MarketplaceKitError.mismatchedInstallType(_:), v5);
  swift_willThrow();
  sub_1000032A8((v0 + 90), &unk_10077FA50);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100404EDC()
{
  sub_10000710C(v0 + 760);
  v1 = type metadata accessor for MarketplaceKitError();
  sub_100428444(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
  swift_allocError();
  (*(*(v1 - 8) + 104))(v2, enum case for MarketplaceKitError.mismatchedInstallType(_:), v1);
  swift_willThrow();
  sub_1000032A8(v0 + 720, &unk_10077FA50);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10040506C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10040513C()
{
  sub_10000710C(v0 + 576);
  v1 = *(v0 + 832);
  if (*(v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_shouldShowAlertOnInstallFailure) == 1)
  {
    *(v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_shouldShowAlertOnInstallFailure) = (*(v0 + 680) & 1) == 0;
  }

  swift_willThrow();

  sub_1000032A8(v0 + 720, &unk_10077FA50);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100405278()
{
  v1[20] = v0;
  type metadata accessor for OAuthClient();
  v1[21] = swift_task_alloc();
  sub_1001F0C48(&qword_100782240);
  v1[22] = swift_task_alloc();
  v2 = type metadata accessor for OAuthCredential();
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v1[27] = v3;
  v1[28] = *(v3 - 8);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[33] = v4;
  v1[34] = *(v4 - 8);
  v1[35] = swift_task_alloc();

  return _swift_task_switch(sub_100405484, v0, 0);
}

uint64_t sub_100405484()
{
  v83 = v0;
  v1 = *(v0[20] + 112);
  v2 = v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_oAuthToken;
  v0[36] = *(v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_oAuthToken);
  v3 = *(v2 + 8);
  v0[37] = v3;
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
    v5 = *(*v4 + class metadata base offset for ManagedBuffer + 16);
    v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v4 + v6));
    sub_10020A980(v4 + v5, (v0 + 13));
    os_unfair_lock_unlock((v4 + v6));
    sub_1001F0C48(&qword_10077E970);
    if (swift_dynamicCast())
    {
      v7 = v0[24];
      v76 = v0[23];
      v8 = v0[22];
      v10 = v0[19];
      v9 = v0[20];
      v11 = v0[18];
      v0[38] = v11;
      v0[39] = v10;
      v12 = v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_accountID;
      v13 = *(v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_accountID);
      v0[40] = v13;
      v14 = *(v12 + 8);
      v0[41] = v14;

      static Logger.oauth.getter();
      v79 = v9;
      v15 = *(v9 + 160);
      v80 = v10;
      v81 = v11;
      sub_100489ADC(v13, v14, v11, v10, v15, v8);

      v16 = (*(v7 + 48))(v8, 1, v76);
      v17 = v0[32];
      v18 = v0[27];
      v19 = v0[28];
      if (v16 == 1)
      {
        v20 = v0[30];
        sub_1000032A8(v0[22], &qword_100782240);
        UUID.init()();
        v21 = (v19 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v77 = *(v19 + 16);
        v77(v20, v17, v18);

        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.default.getter();

        v24 = os_log_type_enabled(v22, v23);
        v25 = v0[30];
        v27 = v0[27];
        v26 = v0[28];
        if (v24)
        {
          v28 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v82 = v73;
          *v28 = 138412546;
          v29 = *(v79 + 160);
          *(v28 + 4) = v29;
          *v71 = v29;
          *(v28 + 12) = 2082;
          sub_100428444(&qword_100789F60, &type metadata accessor for UUID);
          v69 = v23;
          v30 = v29;
          v31 = dispatch thunk of CustomStringConvertible.description.getter();
          v33 = v32;
          v34 = *(v26 + 8);
          v34(v25, v27);
          v35 = v79;
          v36 = sub_1002346CC(v31, v33, &v82);

          *(v28 + 14) = v36;
          _os_log_impl(&_mh_execute_header, v22, v69, "[%@] Generating new client identifier: %{public}s", v28, 0x16u);
          sub_1000032A8(v71, &qword_10077F920);

          sub_10000710C(v73);
        }

        else
        {

          v34 = *(v26 + 8);
          v34(v25, v27);
          v35 = v79;
        }

        v41 = v77;
      }

      else
      {
        v39 = v0[31];
        v40 = v0[26];
        sub_1004287E8(v0[22], v40, type metadata accessor for OAuthCredential);
        v41 = *(v19 + 16);
        v75 = (v19 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v41(v17, v40, v18);
        v41(v39, v17, v18);

        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.default.getter();

        v44 = os_log_type_enabled(v42, v43);
        v45 = v0[31];
        v46 = v0[27];
        v47 = v0[28];
        v48 = v0[26];
        if (v44)
        {
          v70 = v43;
          v49 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v82 = v72;
          *v49 = 138412546;
          v35 = v79;
          v78 = v41;
          v50 = *(v79 + 160);
          *(v49 + 4) = v50;
          *v68 = v50;
          *(v49 + 12) = 2082;
          sub_100428444(&qword_100789F60, &type metadata accessor for UUID);
          v74 = v48;
          v51 = v50;
          v52 = dispatch thunk of CustomStringConvertible.description.getter();
          v54 = v53;
          v34 = *(v47 + 8);
          v34(v45, v46);
          v55 = sub_1002346CC(v52, v54, &v82);
          v41 = v78;

          *(v49 + 14) = v55;
          _os_log_impl(&_mh_execute_header, v42, v70, "[%@] Using existing client identifier: %{public}s", v49, 0x16u);
          sub_1000032A8(v68, &qword_10077F920);

          sub_10000710C(v72);

          sub_100429090(v74, type metadata accessor for OAuthCredential);
        }

        else
        {

          v34 = *(v47 + 8);
          v34(v45, v46);
          sub_100429090(v48, type metadata accessor for OAuthCredential);
          v35 = v79;
        }

        v21 = v75;
      }

      v0[42] = v34;
      v0[43] = v41;
      v56 = v0[32];
      v57 = v0[29];
      v58 = v0[27];
      v0[44] = v21;
      v41(v57, v56, v58);
      v59 = *(v35 + 160);
      v60 = objc_opt_self();
      v61 = v59;
      v62 = [v60 ephemeralSessionConfiguration];
      [v62 setHTTPShouldSetCookies:0];
      [v62 setHTTPCookieAcceptPolicy:1];
      [v62 setRequestCachePolicy:1];
      sub_10043D15C(1);
      v63 = [objc_opt_self() sessionWithConfiguration:v62];

      type metadata accessor for PlainHTTP();
      v64 = swift_allocObject();
      *(v64 + 24) = 0;
      *(v64 + 16) = v63;
      v65 = swift_task_alloc();
      v0[45] = v65;
      *v65 = v0;
      v65[1] = sub_100405D00;
      v66 = v0[29];
      v67 = v0[21];

      return sub_10062C6D0(v67, v66, v81, v80, v64, v61);
    }
  }

  v37 = v0[1];

  return v37();
}

uint64_t sub_100405D00()
{
  v2 = *v1;
  v2[46] = v0;

  if (v0)
  {
    v3 = v2[20];

    return _swift_task_switch(sub_1004061F0, v3, 0);
  }

  else
  {
    v4 = v2[37];
    v5 = swift_task_alloc();
    v2[47] = v5;
    *v5 = v2;
    v5[1] = sub_100405EB0;
    v6 = v2[36];

    return sub_10062DA94((v2 + 2), v6, v4);
  }
}

uint64_t sub_100405EB0()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = *(v2 + 160);

    v4 = sub_100406310;
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 160);

    v4 = sub_100406004;
    v5 = v6;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100406004()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 312);
  v18 = *(v0 + 320);
  v3 = *(v0 + 304);
  v4 = *(v0 + 272);
  v21 = *(v0 + 280);
  v22 = *(v0 + 336);
  v5 = *(v0 + 256);
  v6 = *(v0 + 216);
  v20 = *(v0 + 264);
  v7 = *(v0 + 200);
  v8 = *(v0 + 184);
  v9 = *(v0 + 160);
  v19 = *(v0 + 168);
  (*(v0 + 344))(v7, v5, v6);
  v10 = v7 + *(v8 + 20);
  v11 = *(v0 + 32);
  *v10 = *(v0 + 16);
  *(v10 + 16) = v11;
  v12 = *(v0 + 48);
  v13 = *(v0 + 64);
  v14 = *(v0 + 80);
  *(v10 + 80) = *(v0 + 96);
  *(v10 + 48) = v13;
  *(v10 + 64) = v14;
  *(v10 + 32) = v12;
  v15 = *(v9 + 160);
  sub_10048B61C(v7, v18, v1, v3, v2, v15);

  sub_100429090(v7, type metadata accessor for OAuthCredential);
  sub_100429090(v19, type metadata accessor for OAuthClient);
  v22(v5, v6);
  (*(v4 + 8))(v21, v20);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1004061F0()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  (*(v0 + 336))(*(v0 + 256), *(v0 + 216));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100406310()
{
  sub_100429090(*(v0 + 168), type metadata accessor for OAuthClient);
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  (*(v0 + 336))(*(v0 + 256), *(v0 + 216));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10040644C(void *a1)
{

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t sub_1004064CC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 648) = v6;
  *(v7 + 640) = a6;
  *(v7 + 632) = a5;
  *(v7 + 624) = a4;
  *(v7 + 616) = a3;
  *(v7 + 608) = a2;
  *(v7 + 1168) = a1;
  v8 = type metadata accessor for MarketplaceKitError();
  *(v7 + 656) = v8;
  *(v7 + 664) = *(v8 - 8);
  *(v7 + 672) = swift_task_alloc();
  v9 = type metadata accessor for AppLibrary.ExceptionRequest();
  *(v7 + 680) = v9;
  *(v7 + 688) = *(v9 - 8);
  *(v7 + 696) = swift_task_alloc();
  *(v7 + 704) = swift_task_alloc();
  *(v7 + 712) = swift_task_alloc();
  sub_1001F0C48(&qword_100782F00);
  *(v7 + 720) = swift_task_alloc();
  *(v7 + 728) = swift_task_alloc();
  *(v7 + 736) = type metadata accessor for MediaAPIMetadata();
  *(v7 + 744) = swift_task_alloc();
  sub_1001F0C48(&qword_100783C38);
  *(v7 + 752) = swift_task_alloc();
  v10 = type metadata accessor for ADPPreflightResultingMetadata(0);
  *(v7 + 760) = v10;
  *(v7 + 768) = *(v10 - 8);
  *(v7 + 776) = swift_task_alloc();
  sub_1001F0C48(&qword_100783C40);
  *(v7 + 784) = swift_task_alloc();
  *(v7 + 792) = swift_task_alloc();
  v11 = type metadata accessor for ADP();
  *(v7 + 800) = v11;
  *(v7 + 808) = *(v11 - 8);
  *(v7 + 816) = swift_task_alloc();
  *(v7 + 824) = swift_task_alloc();
  *(v7 + 832) = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  *(v7 + 840) = v12;
  *(v7 + 848) = *(v12 - 8);
  *(v7 + 856) = swift_task_alloc();
  *(v7 + 864) = swift_task_alloc();
  *(v7 + 872) = swift_task_alloc();
  *(v7 + 880) = swift_task_alloc();
  *(v7 + 888) = swift_task_alloc();
  *(v7 + 896) = swift_task_alloc();
  *(v7 + 904) = swift_task_alloc();
  *(v7 + 912) = swift_task_alloc();
  *(v7 + 920) = swift_task_alloc();

  return _swift_task_switch(sub_100406894, v6, 0);
}

uint64_t sub_100406894()
{
  v218 = v0;
  if (*(v0 + 1168) != 1)
  {
    static Logger.install.getter();

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 856);
    v13 = *(v0 + 848);
    v14 = *(v0 + 840);
    if (v11)
    {
      v15 = *(v0 + 648);
      v16 = swift_slowAlloc();
      v198 = swift_slowAlloc();
      v205 = swift_slowAlloc();
      v217[0] = v205;
      *v16 = 138412546;
      v211 = v12;
      v17 = *(v15 + 160);
      *(v16 + 4) = v17;
      *v198 = v17;
      *(v16 + 12) = 2082;
      type metadata accessor for UUID();
      sub_100428444(&qword_100789F60, &type metadata accessor for UUID);
      v201 = v14;
      v18 = v17;
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = sub_1002346CC(v19, v20, v217);

      *(v16 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v9, v10, "[%@] Asked to cancel install with identifier: %{public}s", v16, 0x16u);
      sub_1000032A8(v198, &qword_10077F920);

      sub_10000710C(v205);

      (*(v13 + 8))(v211, v201);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }

    v22 = *(v0 + 664);
    v23 = *(v0 + 656);
    v24 = *(v0 + 640);
    sub_100428444(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    v25 = swift_allocError();
    *(v0 + 1152) = v25;
    (*(v22 + 104))(v26, enum case for MarketplaceKitError.cancelled(_:), v23);
    v27 = v24[3];
    v28 = v24[6];
    v29 = v24[9];
    v30 = v24[10];
    v31 = v24[11];
    v32 = sub_100006D8C(v24, v27);
    v33 = swift_task_alloc();
    *(v0 + 1160) = v33;
    *v33 = v0;
    v33[1] = sub_10040AFC4;
    v34 = *(v0 + 648);
    v35 = v25;
    v36 = v32;
    v37 = v27;
    goto LABEL_8;
  }

  v1 = *(v0 + 616);
  if (v1)
  {
    v2 = *(v0 + 608);
    v3 = *(*(v0 + 648) + 112);
    *(v0 + 928) = v3;
    v4 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage;
    *(v0 + 936) = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage;
    v5 = *(v3 + v4);
    v6 = swift_task_alloc();
    *(v6 + 16) = v2;
    *(v6 + 24) = v1;
    v7 = *(*v5 + class metadata base offset for ManagedBuffer + 16);
    v8 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v5 + v8));
    sub_100428AC4(v5 + v7);
    os_unfair_lock_unlock((v5 + v8));

    static Logger.install.getter();

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    v47 = os_log_type_enabled(v45, v46);
    v48 = *(v0 + 920);
    v49 = *(v0 + 848);
    v50 = *(v0 + 840);
    if (v47)
    {
      v196 = v3;
      v51 = *(v0 + 648);
      v52 = swift_slowAlloc();
      v199 = swift_slowAlloc();
      v206 = swift_slowAlloc();
      v217[0] = v206;
      *v52 = 138412546;
      v53 = *(v51 + 160);
      *(v52 + 4) = v53;
      *v199 = v53;
      *(v52 + 12) = 2082;
      type metadata accessor for UUID();
      v212 = v48;
      sub_100428444(&qword_100789F60, &type metadata accessor for UUID);
      v54 = v53;
      v3 = v196;
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = sub_1002346CC(v55, v56, v217);

      *(v52 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v45, v46, "[%@] Asked to continue install with identifier: %{public}s", v52, 0x16u);
      sub_1000032A8(v199, &qword_10077F920);

      sub_10000710C(v206);

      v58 = *(v49 + 8);
      v58(v212, v50);
    }

    else
    {

      v58 = *(v49 + 8);
      v58(v48, v50);
    }

    *(v0 + 944) = v58;
    v59 = *(v0 + 808);
    v60 = *(v0 + 800);
    v61 = *(*(v0 + 648) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_lockedADP);
    v62 = *(v0 + 792);
    v63 = *(*v61 + class metadata base offset for ManagedBuffer + 16);
    v64 = (*(*v61 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v61 + v64));
    sub_100005934(v61 + v63, v62, &qword_100783C40);
    os_unfair_lock_unlock((v61 + v64));
    v65 = *(v59 + 48);
    v66 = &qword_100783000;
    if (v65(v62, 1, v60) == 1)
    {
      sub_1000032A8(*(v0 + 792), &qword_100783C40);
    }

    else
    {
      v207 = v65;
      v213 = v63;
      v67 = *(v0 + 768);
      v68 = *(v0 + 760);
      v69 = *(v0 + 752);
      v70 = *(v0 + 648);
      sub_1004287E8(*(v0 + 792), *(v0 + 832), type metadata accessor for ADP);
      v71 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_preflightMetadata;
      swift_beginAccess();
      sub_100005934(v70 + v71, v69, &qword_100783C38);
      v72 = (*(v67 + 48))(v69, 1, v68);
      v73 = *(v0 + 832);
      if (v72 == 1)
      {
        v74 = *(v0 + 752);
        sub_100429090(*(v0 + 832), type metadata accessor for ADP);
        sub_1000032A8(v74, &qword_100783C38);
      }

      else
      {
        v75 = *(v0 + 824);
        v76 = *(v0 + 776);
        v77 = *(v0 + 744);
        v191 = v77;
        v192 = v75;
        v200 = v76;
        v202 = *(v0 + 648);
        v78 = *(v0 + 640);
        v197 = *(v0 + 632);
        v194 = *(v0 + 624);
        sub_1004287E8(*(v0 + 752), v76, type metadata accessor for ADPPreflightResultingMetadata);
        v195 = type metadata accessor for InstallConfirmationTask();
        sub_100428E08(v73, v75, type metadata accessor for ADP);
        sub_100428E08(v76, v77, type metadata accessor for MediaAPIMetadata);
        v79 = *(v202 + 160);
        v80 = v78[3];
        v190 = v78[5];
        v81 = sub_100006D8C(v78, v80);
        v193 = v73;
        v82 = *(v80 - 8);
        v83 = swift_task_alloc();
        (*(v82 + 16))(v83, v81, v80);

        v84 = v79;
        sub_1001DFECC(v194, v197);
        v85 = sub_1005ACF40(v192, v3, v191, v194, v197, v84, v83, v195, v80, v190);

        sub_10020B0E0(v194, v197);

        sub_100429090(v200, type metadata accessor for ADPPreflightResultingMetadata);
        sub_100429090(v193, type metadata accessor for ADP);

        v86 = *(v202 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_installConfirmationTask);
        *(v202 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_installConfirmationTask) = v85;
      }

      v66 = &qword_100783000;
      v63 = v213;
      v65 = v207;
    }

    v87 = *(v0 + 800);
    v88 = *(v0 + 784);
    os_unfair_lock_lock((v61 + v64));
    sub_100005934(v61 + v63, v88, &qword_100783C40);
    os_unfair_lock_unlock((v61 + v64));
    if (v65(v88, 1, v87) == 1)
    {
      sub_1000032A8(*(v0 + 784), &qword_100783C40);
LABEL_28:
      if (*(*(v0 + 928) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_isExceptionRequest) != 1)
      {
        v119 = *(v0 + 768);
        v120 = *(v0 + 760);
        v121 = *(v0 + 648);

        v122 = v121 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_preflightMetadata;
        swift_beginAccess();
        v123 = (*(v119 + 48))(v122, 1, v120);
        v124 = 0;
        if (!v123)
        {
          v124 = *(v122 + *(*(v0 + 736) + 48));
        }

        if (sub_1005F5804() >= v124)
        {
          v158 = *(v0 + 640);
          v159 = *(v158 + 24);
          v216 = *(v158 + 40);
          v204 = *(v158 + 80);
          v210 = *(v158 + 64);
          v160 = sub_100006D8C(v158, v159);
          *(v0 + 216) = v159;
          *(v0 + 224) = v216;
          *(v0 + 240) = v210;
          *(v0 + 256) = v204;
          v161 = sub_10020A748((v0 + 192));
          (*(*(v159 - 8) + 16))(v161, v160, v159);
          v162 = swift_task_alloc();
          *(v0 + 1120) = v162;
          *v162 = v0;
          v162[1] = sub_10040A928;
          v157 = v0 + 192;
          goto LABEL_43;
        }

        static Logger.install.getter();

        v125 = Logger.logObject.getter();
        v126 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v125, v126))
        {
          v127 = *(v0 + 648);
          v128 = swift_slowAlloc();
          v129 = swift_slowAlloc();
          *v128 = 138412290;
          v130 = *(v127 + 160);
          *(v128 + 4) = v130;
          *v129 = v130;
          v131 = v130;
          _os_log_impl(&_mh_execute_header, v125, v126, "[%@] Device does not meet age rating, and no age exception was found.", v128, 0xCu);
          sub_1000032A8(v129, &qword_10077F920);
        }

        v132 = *(v0 + 944);
        v133 = *(v0 + 872);
        v134 = *(v0 + 840);
        v135 = *(v0 + 664);
        v136 = *(v0 + 656);
        v137 = *(v0 + 640);

        v132(v133, v134);
        sub_100428444(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
        v138 = swift_allocError();
        *(v0 + 1104) = v138;
        (*(v135 + 104))(v139, enum case for MarketplaceKitError.cancelled(_:), v136);
        v140 = v137[3];
        v141 = v137[6];
        v142 = v137[9];
        v30 = v137[10];
        v31 = v137[11];
        v143 = sub_100006D8C(v137, v140);
        v144 = swift_task_alloc();
        *(v0 + 1112) = v144;
        *v144 = v0;
        v144[1] = sub_10040A5E4;
        v34 = *(v0 + 648);
        v35 = v138;
        v36 = v143;
        v37 = v140;
        v38 = v141;
        v39 = v142;
        goto LABEL_9;
      }

      static Logger.install.getter();

      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.default.getter();

      v97 = os_log_type_enabled(v95, v96);
      v98 = *(v0 + 944);
      if (v97)
      {
        v99 = *(v0 + 936);
        v100 = *(v0 + 928);
        v214 = *(v0 + 904);
        v208 = *(v0 + 840);
        v101 = *(v0 + 648);
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        *v102 = 138412546;
        v105 = *(v101 + 160);
        *(v102 + 4) = v105;
        *v103 = v105;
        *(v102 + 12) = 2080;
        v106 = *(v100 + v99);
        v217[0] = v104;
        v107 = *(*v106 + class metadata base offset for ManagedBuffer + 16);
        v108 = (*(*v106 + 48) + 3) & 0x1FFFFFFFCLL;
        v109 = v105;
        os_unfair_lock_lock((v106 + v108));
        sub_10020A980(v106 + v107, v0 + 472);
        os_unfair_lock_unlock((v106 + v108));
        v111 = *(v0 + 496);
        v110 = *(v0 + 504);
        sub_100006D8C((v0 + 472), v111);
        v112 = v111;
        v66 = &qword_100783000;
        v113 = (*(v110 + 40))(v112, v110);
        v115 = v114;
        sub_10000710C(v0 + 472);
        v116 = sub_1002346CC(v113, v115, v217);

        *(v102 + 14) = v116;
        _os_log_impl(&_mh_execute_header, v95, v96, "[%@] %s marked this install as an exception request.", v102, 0x16u);
        sub_1000032A8(v103, &qword_10077F920);

        sub_10000710C(v104);

        v117 = v214;
        v118 = v208;
      }

      else
      {
        v145 = *(v0 + 904);
        v146 = *(v0 + 840);

        v117 = v145;
        v118 = v146;
      }

      v98(v117, v118);
      v147 = *(v0 + 768);
      v148 = *(v0 + 760);
      v149 = *(v0 + 648) + v66[351];
      swift_beginAccess();
      v150 = (*(v147 + 48))(v149, 1, v148);
      v151 = 0;
      if (!v150)
      {
        v151 = *(v149 + *(*(v0 + 736) + 48));
      }

      if (sub_1005F5804() < v151)
      {
        v152 = *(v0 + 640);

        v153 = *(v152 + 24);
        v215 = *(v152 + 40);
        v203 = *(v152 + 80);
        v209 = *(v152 + 64);
        v154 = sub_100006D8C(v152, v153);
        *(v0 + 296) = v153;
        *(v0 + 304) = v215;
        *(v0 + 320) = v209;
        *(v0 + 336) = v203;
        v155 = sub_10020A748((v0 + 272));
        (*(*(v153 - 8) + 16))(v155, v154, v153);
        v156 = swift_task_alloc();
        *(v0 + 1088) = v156;
        *v156 = v0;
        v156[1] = sub_10040A190;
        v157 = v0 + 272;
LABEL_43:

        return sub_10042379C(v157);
      }

      static Logger.install.getter();

      v163 = Logger.logObject.getter();
      v164 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v163, v164))
      {
        v165 = *(v0 + 648);
        v166 = swift_slowAlloc();
        v167 = swift_slowAlloc();
        *v166 = 138412290;
        v168 = *(v165 + 160);
        *(v166 + 4) = v168;
        *v167 = v168;
        v169 = v168;
        _os_log_impl(&_mh_execute_header, v163, v164, "[%@] Failing install: device already meets the age rating, an exception request is not needed.", v166, 0xCu);
        sub_1000032A8(v167, &qword_10077F920);
      }

      v170 = *(v0 + 944);
      v171 = *(v0 + 896);
      v172 = *(v0 + 840);
      v173 = *(v0 + 672);
      v174 = *(v0 + 664);
      v175 = *(v0 + 656);
      v176 = *(v0 + 640);

      v170(v171, v172);
      (*(v174 + 104))(v173, enum case for MarketplaceKitError.ageRatingExceptionNotNeeded(_:), v175);
      *(v0 + 976) = sub_100428444(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
      v177 = swift_allocError();
      *(v0 + 984) = v177;
      v178 = *(v174 + 16);
      *(v0 + 992) = v178;
      *(v0 + 1000) = (v174 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v178(v179, v173, v175);
      v180 = v176[3];
      v28 = v176[6];
      v29 = v176[9];
      v30 = v176[10];
      v31 = v176[11];
      v181 = sub_100006D8C(v176, v180);
      v182 = swift_task_alloc();
      *(v0 + 1008) = v182;
      *v182 = v0;
      v182[1] = sub_100409494;
      v34 = *(v0 + 648);
      v35 = v177;
      v36 = v181;
      v37 = v180;
LABEL_8:
      v38 = v28;
      v39 = v29;
LABEL_9:

      return sub_10041F4B4(v35, v36, v34, v37, v38, v39, v30, v31);
    }

    v89 = *(v0 + 768);
    v90 = *(v0 + 760);
    v91 = *(v0 + 648);
    sub_1004287E8(*(v0 + 784), *(v0 + 816), type metadata accessor for ADP);
    v92 = v91 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_preflightMetadata;
    swift_beginAccess();
    v93 = (*(v89 + 48))(v92, 1, v90);
    v94 = *(v0 + 816);
    if (v93)
    {
      sub_100429090(*(v0 + 816), type metadata accessor for ADP);
      goto LABEL_28;
    }

    v183 = *(v0 + 800);
    v184 = *(v0 + 640);
    *(v0 + 952) = *(v92 + *(*(v0 + 736) + 48));
    *(v0 + 960) = *(*sub_100006D8C(v184, v184[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_exceptionRequestService);
    v185 = v94 + *(v183 + 24);
    v186 = *(v185 + 24);
    v187 = *(v185 + 32);

    v188 = swift_task_alloc();
    *(v0 + 968) = v188;
    *v188 = v0;
    v188[1] = sub_100407F1C;
    v189 = *(v0 + 728);

    return sub_10059B568(v189, v186, v187, 0, 0);
  }

  else
  {
    v41 = *(v0 + 664);
    v42 = *(v0 + 656);
    sub_100428444(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(v41 + 104))(v43, enum case for MarketplaceKitError.missingInstallVerificationToken(_:), v42);
    swift_willThrow();

    v44 = *(v0 + 8);

    return v44();
  }
}

uint64_t sub_100407F1C()
{
  v1 = *(*v0 + 648);

  return _swift_task_switch(sub_100408048, v1, 0);
}

uint64_t sub_100408048()
{
  v220 = v0;
  v1 = *(v0 + 720);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  sub_100005934(*(v0 + 728), v1, &qword_100782F00);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 816);
    v5 = *(v0 + 720);
    sub_1000032A8(*(v0 + 728), &qword_100782F00);
    sub_100429090(v4, type metadata accessor for ADP);
    sub_1000032A8(v5, &qword_100782F00);
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v9 = *(v0 + 712);
    v10 = *(v0 + 704);
    v11 = *(v0 + 696);
    v12 = *(v0 + 688);
    v13 = *(v0 + 680);
    (*(v12 + 32))(v9, *(v0 + 720), v13);
    static Logger.install.getter();
    v14 = *(v12 + 16);
    v14(v10, v9, v13);
    v14(v11, v9, v13);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v213 = *(v0 + 944);
      v207 = *(v0 + 912);
      v201 = *(v0 + 840);
      v17 = *(v0 + 704);
      v195 = *(v0 + 696);
      v196 = *(v0 + 952);
      v18 = *(v0 + 688);
      v19 = *(v0 + 680);
      v20 = *(v0 + 648);
      v21 = swift_slowAlloc();
      v197 = swift_slowAlloc();
      v198 = swift_slowAlloc();
      v219 = v198;
      *v21 = 138413058;
      v22 = *(v20 + 160);
      *(v21 + 4) = v22;
      *v197 = v22;
      *(v21 + 12) = 2048;
      v23 = v22;
      v24 = AppLibrary.ExceptionRequest.exceptedRatingValue.getter();
      v25 = *(v18 + 8);
      v25(v17, v19);
      *(v21 + 14) = v24;
      *(v21 + 22) = 2048;
      *(v21 + 24) = v196;
      *(v21 + 32) = 2080;
      v26 = AppLibrary.ExceptionRequest.distributorID.getter();
      if (v27)
      {
        v28 = v26;
      }

      else
      {
        v28 = 7104878;
      }

      if (v27)
      {
        v29 = v27;
      }

      else
      {
        v29 = 0xE300000000000000;
      }

      v25(v195, v19);
      v30 = sub_1002346CC(v28, v29, &v219);

      *(v21 + 34) = v30;
      _os_log_impl(&_mh_execute_header, v15, v16, "[%@] Age exception found, highest approved rating: %ld, app's rating: %ld, distributorID of exception: %s", v21, 0x2Au);
      sub_1000032A8(v197, &qword_10077F920);

      sub_10000710C(v198);

      v213(v207, v201);
    }

    else
    {
      v31 = *(v0 + 944);
      v32 = *(v0 + 912);
      v33 = *(v0 + 840);
      v34 = *(v0 + 696);
      v35 = *(v0 + 680);
      v25 = *(*(v0 + 688) + 8);
      v25(*(v0 + 704), v35);

      v25(v34, v35);
      v31(v32, v33);
    }

    v36 = *(v0 + 952);
    v37 = AppLibrary.ExceptionRequest.exceptedRatingValue.getter();
    v6 = v37 >= v36;
    if (v37 < v36)
    {
      v7 = 0;
      v8 = 0;
    }

    else
    {
      v7 = AppLibrary.ExceptionRequest.distributorID.getter();
      v8 = v38;
    }

    v39 = *(v0 + 816);
    v40 = *(v0 + 728);
    v25(*(v0 + 712), *(v0 + 680));
    sub_1000032A8(v40, &qword_100782F00);
    sub_100429090(v39, type metadata accessor for ADP);
  }

  if (*(*(v0 + 928) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_isExceptionRequest) == 1)
  {
    v214 = v6;
    static Logger.install.getter();

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v0 + 944);
    if (v43)
    {
      v45 = *(v0 + 936);
      v46 = *(v0 + 928);
      v199 = *(v0 + 840);
      v200 = *(v0 + 904);
      v208 = v8;
      v47 = *(v0 + 648);
      v202 = v7;
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v219 = v50;
      *v48 = 138412546;
      v51 = *(v47 + 160);
      *(v48 + 4) = v51;
      *v49 = v51;
      *(v48 + 12) = 2080;
      v52 = *(v46 + v45);
      v53 = *(*v52 + class metadata base offset for ManagedBuffer + 16);
      v54 = (*(*v52 + 48) + 3) & 0x1FFFFFFFCLL;
      v55 = v51;
      os_unfair_lock_lock((v52 + v54));
      sub_10020A980(v52 + v53, v0 + 472);
      os_unfair_lock_unlock((v52 + v54));
      v56 = *(v0 + 496);
      v57 = *(v0 + 504);
      sub_100006D8C((v0 + 472), v56);
      v58 = *(v57 + 40);
      v59 = v57;
      v8 = v208;
      v60 = v58(v56, v59);
      v62 = v61;
      sub_10000710C(v0 + 472);
      v63 = sub_1002346CC(v60, v62, &v219);

      *(v48 + 14) = v63;
      _os_log_impl(&_mh_execute_header, v41, v42, "[%@] %s marked this install as an exception request.", v48, 0x16u);
      sub_1000032A8(v49, &qword_10077F920);

      sub_10000710C(v50);

      v7 = v202;

      v64 = v199;
      v65 = v200;
    }

    else
    {
      v88 = *(v0 + 904);
      v89 = *(v0 + 840);

      v65 = v88;
      v64 = v89;
    }

    v44(v65, v64);
    v90 = *(v0 + 768);
    v91 = *(v0 + 760);
    v92 = *(v0 + 648) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_preflightMetadata;
    swift_beginAccess();
    v93 = (*(v90 + 48))(v92, 1, v91);
    v94 = 0;
    if (!v93)
    {
      v94 = *(v92 + *(*(v0 + 736) + 48));
    }

    if (sub_1005F5804() >= v94)
    {

      static Logger.install.getter();

      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v101, v102))
      {
        v103 = *(v0 + 648);
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        *v104 = 138412290;
        v106 = *(v103 + 160);
        *(v104 + 4) = v106;
        *v105 = v106;
        v107 = v106;
        _os_log_impl(&_mh_execute_header, v101, v102, "[%@] Failing install: device already meets the age rating, an exception request is not needed.", v104, 0xCu);
        sub_1000032A8(v105, &qword_10077F920);
      }

      v108 = *(v0 + 944);
      v109 = *(v0 + 896);
      v110 = *(v0 + 840);
      v111 = *(v0 + 672);
      v112 = *(v0 + 664);
      v113 = *(v0 + 656);
      v114 = *(v0 + 640);

      v108(v109, v110);
      (*(v112 + 104))(v111, enum case for MarketplaceKitError.ageRatingExceptionNotNeeded(_:), v113);
      *(v0 + 976) = sub_100428444(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
      v115 = swift_allocError();
      *(v0 + 984) = v115;
      v116 = *(v112 + 16);
      *(v0 + 992) = v116;
      *(v0 + 1000) = (v112 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v116(v117, v111, v113);
      v118 = v114[3];
      v119 = v114[6];
      v120 = v114[9];
      v121 = v114[10];
      v122 = v114[11];
      v123 = sub_100006D8C(v114, v118);
      v124 = swift_task_alloc();
      *(v0 + 1008) = v124;
      *v124 = v0;
      v125 = sub_100409494;
      goto LABEL_51;
    }

    if (v214)
    {
      if (!v8)
      {
LABEL_48:
        static Logger.install.getter();

        v159 = Logger.logObject.getter();
        v160 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v159, v160))
        {
          v161 = *(v0 + 648);
          v162 = swift_slowAlloc();
          v163 = swift_slowAlloc();
          *v162 = 138412290;
          v164 = *(v161 + 160);
          *(v162 + 4) = v164;
          *v163 = v164;
          v165 = v164;
          _os_log_impl(&_mh_execute_header, v159, v160, "[%@] Failing install: an exception already exists from this distributor, an exception request is not needed.", v162, 0xCu);
          sub_1000032A8(v163, &qword_10077F920);
        }

        v166 = *(v0 + 944);
        v167 = *(v0 + 880);
        v168 = *(v0 + 840);
        v169 = *(v0 + 672);
        v170 = *(v0 + 664);
        v171 = *(v0 + 656);
        v172 = *(v0 + 640);

        v166(v167, v168);
        (*(v170 + 104))(v169, enum case for MarketplaceKitError.ageRatingExceptionNotNeeded(_:), v171);
        *(v0 + 1048) = sub_100428444(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
        v115 = swift_allocError();
        *(v0 + 1056) = v115;
        v173 = *(v170 + 16);
        *(v0 + 1064) = v173;
        *(v0 + 1072) = (v170 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v173(v174, v169, v171);
        v118 = v172[3];
        v119 = v172[6];
        v120 = v172[9];
        v121 = v172[10];
        v122 = v172[11];
        v123 = sub_100006D8C(v172, v118);
        v124 = swift_task_alloc();
        *(v0 + 1080) = v124;
        *v124 = v0;
        v125 = sub_100409E5C;
LABEL_51:
        v124[1] = v125;
        v146 = *(v0 + 648);
        v147 = v115;
        v148 = v123;
        v149 = v118;
        v150 = v119;
        v151 = v120;
LABEL_52:

        return sub_10041F4B4(v147, v148, v146, v149, v150, v151, v121, v122);
      }

      v95 = *(*(v0 + 928) + *(v0 + 936));
      v96 = *(*v95 + class metadata base offset for ManagedBuffer + 16);
      v97 = (*(*v95 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((v95 + v97));
      sub_10020A980(v95 + v96, v0 + 432);
      os_unfair_lock_unlock((v95 + v97));
      v98 = *(v0 + 456);
      v99 = *(v0 + 464);
      sub_100006D8C((v0 + 432), v98);
      if ((*(v99 + 40))(v98, v99) == v7 && v8 == v100)
      {

        sub_10000710C(v0 + 432);
LABEL_47:

        goto LABEL_48;
      }

      v158 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_10000710C(v0 + 432);
      if (v158)
      {
        goto LABEL_47;
      }

      static Logger.install.getter();

      v175 = Logger.logObject.getter();
      v176 = static os_log_type_t.default.getter();

      v177 = os_log_type_enabled(v175, v176);
      v178 = *(v0 + 944);
      v179 = *(v0 + 888);
      v180 = *(v0 + 840);
      if (v177)
      {
        v181 = *(v0 + 648);
        v217 = *(v0 + 944);
        v182 = v8;
        v183 = swift_slowAlloc();
        v211 = v180;
        v184 = swift_slowAlloc();
        v205 = v179;
        v185 = v7;
        v186 = swift_slowAlloc();
        v219 = v186;
        *v183 = 138412546;
        v187 = *(v181 + 160);
        *(v183 + 4) = v187;
        *v184 = v187;
        *(v183 + 12) = 2080;
        v188 = v187;
        v189 = sub_1002346CC(v185, v182, &v219);

        *(v183 + 14) = v189;
        _os_log_impl(&_mh_execute_header, v175, v176, "[%@] An exception exists from a different distributor: %s. Allowing the install to continue.", v183, 0x16u);
        sub_1000032A8(v184, &qword_10077F920);

        sub_10000710C(v186);

        v217(v205, v211);
      }

      else
      {

        v178(v179, v180);
      }

      v190 = *(v0 + 640);
      v191 = *(v190 + 24);
      v212 = *(v190 + 64);
      v218 = *(v190 + 40);
      v206 = *(v190 + 80);
      v192 = sub_100006D8C(v190, v191);
      *(v0 + 376) = v191;
      *(v0 + 384) = v218;
      *(v0 + 400) = v212;
      *(v0 + 416) = v206;
      v193 = sub_10020A748((v0 + 352));
      (*(*(v191 - 8) + 16))(v193, v192, v191);
      v194 = swift_task_alloc();
      *(v0 + 1016) = v194;
      *v194 = v0;
      v194[1] = sub_1004097C8;
      v87 = v0 + 352;
    }

    else
    {
      v152 = *(v0 + 640);

      v153 = *(v152 + 24);
      v210 = *(v152 + 64);
      v216 = *(v152 + 40);
      v204 = *(v152 + 80);
      v154 = sub_100006D8C(v152, v153);
      *(v0 + 296) = v153;
      *(v0 + 304) = v216;
      *(v0 + 320) = v210;
      *(v0 + 336) = v204;
      v155 = sub_10020A748((v0 + 272));
      (*(*(v153 - 8) + 16))(v155, v154, v153);
      v156 = swift_task_alloc();
      *(v0 + 1088) = v156;
      *v156 = v0;
      v156[1] = sub_10040A190;
      v87 = v0 + 272;
    }
  }

  else
  {
    v66 = *(v0 + 768);
    v67 = *(v0 + 760);
    v68 = *(v0 + 648);

    v69 = v68 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_preflightMetadata;
    swift_beginAccess();
    v70 = (*(v66 + 48))(v69, 1, v67);
    v71 = 0;
    if (!v70)
    {
      v71 = *(v69 + *(*(v0 + 736) + 48));
    }

    if (sub_1005F5804() < v71)
    {
      if (!v6)
      {
        static Logger.install.getter();

        v126 = Logger.logObject.getter();
        v127 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v126, v127))
        {
          v128 = *(v0 + 648);
          v129 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          *v129 = 138412290;
          v131 = *(v128 + 160);
          *(v129 + 4) = v131;
          *v130 = v131;
          v132 = v131;
          _os_log_impl(&_mh_execute_header, v126, v127, "[%@] Device does not meet age rating, and no age exception was found.", v129, 0xCu);
          sub_1000032A8(v130, &qword_10077F920);
        }

        v133 = *(v0 + 944);
        v134 = *(v0 + 872);
        v135 = *(v0 + 840);
        v136 = *(v0 + 664);
        v137 = *(v0 + 656);
        v138 = *(v0 + 640);

        v133(v134, v135);
        sub_100428444(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
        v139 = swift_allocError();
        *(v0 + 1104) = v139;
        (*(v136 + 104))(v140, enum case for MarketplaceKitError.cancelled(_:), v137);
        v141 = v138[3];
        v142 = v138[6];
        v143 = v138[9];
        v121 = v138[10];
        v122 = v138[11];
        v144 = sub_100006D8C(v138, v141);
        v145 = swift_task_alloc();
        *(v0 + 1112) = v145;
        *v145 = v0;
        v145[1] = sub_10040A5E4;
        v146 = *(v0 + 648);
        v147 = v139;
        v148 = v144;
        v149 = v141;
        v150 = v142;
        v151 = v143;
        goto LABEL_52;
      }

      static Logger.install.getter();

      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = *(v0 + 648);
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *v75 = 138412290;
        v77 = *(v74 + 160);
        *(v75 + 4) = v77;
        *v76 = v77;
        v78 = v77;
        _os_log_impl(&_mh_execute_header, v72, v73, "[%@] Device does not meet age rating, but an age exception was found, allowing install.", v75, 0xCu);
        sub_1000032A8(v76, &qword_10077F920);
      }

      v79 = *(v0 + 944);
      v80 = *(v0 + 864);
      v81 = *(v0 + 840);

      v79(v80, v81);
    }

    v82 = *(v0 + 640);
    v83 = *(v82 + 24);
    v209 = *(v82 + 64);
    v215 = *(v82 + 40);
    v203 = *(v82 + 80);
    v84 = sub_100006D8C(v82, v83);
    *(v0 + 216) = v83;
    *(v0 + 224) = v215;
    *(v0 + 240) = v209;
    *(v0 + 256) = v203;
    v85 = sub_10020A748((v0 + 192));
    (*(*(v83 - 8) + 16))(v85, v84, v83);
    v86 = swift_task_alloc();
    *(v0 + 1120) = v86;
    *v86 = v0;
    v86[1] = sub_10040A928;
    v87 = v0 + 192;
  }

  return sub_10042379C(v87);
}

uint64_t sub_100409494()
{
  v1 = *(*v0 + 648);

  return _swift_task_switch(sub_1004095C0, v1, 0);
}

uint64_t sub_1004095C0()
{
  v1 = v0[124];
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[82];
  swift_allocError();
  v1(v5, v2, v4);
  swift_willThrow();
  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1004097C8()
{
  v2 = *v1;
  *(*v1 + 1024) = v0;

  if (v0)
  {
    v3 = *(v2 + 648);
    v4 = sub_100409CA4;
  }

  else
  {
    v5 = *(v2 + 648);
    sub_10000710C(v2 + 352);
    v4 = sub_1004098F0;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1004098F0()
{
  v1 = *(v0 + 640);
  v7 = *(v1 + 24);
  v2 = *(v1 + 24);
  v10 = *(v1 + 48);
  v8 = *(v1 + 80);
  v9 = *(v1 + 64);
  v3 = sub_100006D8C(v1, v2);
  *(v0 + 128) = v7;
  *(v0 + 144) = v10;
  *(v0 + 160) = v9;
  *(v0 + 176) = v8;
  v4 = sub_10020A748((v0 + 104));
  (*(*(v2 - 8) + 16))(v4, v3, v2);
  v5 = swift_task_alloc();
  *(v0 + 1032) = v5;
  *v5 = v0;
  v5[1] = sub_100409A08;

  return sub_100401444(v0 + 104);
}

uint64_t sub_100409A08()
{
  v2 = *v1;
  v2[130] = v0;

  if (v0)
  {
    v3 = v2[81];

    return _swift_task_switch(sub_10040B3B0, v3, 0);
  }

  else
  {
    sub_10000710C((v2 + 13));

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_100409CA4()
{
  sub_10000710C(v0 + 352);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100409E5C()
{
  v1 = *(*v0 + 648);

  return _swift_task_switch(sub_100409F88, v1, 0);
}

uint64_t sub_100409F88()
{
  v1 = v0[133];
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[82];
  swift_allocError();
  v1(v5, v2, v4);
  swift_willThrow();
  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10040A190()
{
  v2 = *v1;
  v2[137] = v0;

  if (v0)
  {
    v3 = v2[81];

    return _swift_task_switch(sub_10040A42C, v3, 0);
  }

  else
  {
    sub_10000710C((v2 + 34));

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_10040A42C()
{
  sub_10000710C(v0 + 272);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10040A5E4()
{
  v1 = *(*v0 + 648);

  return _swift_task_switch(sub_10040A710, v1, 0);
}

uint64_t sub_10040A710()
{
  type metadata accessor for InternalError();
  sub_100428444(&qword_10077F900, type metadata accessor for InternalError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10040A928()
{
  v2 = *v1;
  *(*v1 + 1128) = v0;

  if (v0)
  {
    v3 = *(v2 + 648);
    v4 = sub_10040AE0C;
  }

  else
  {
    v5 = *(v2 + 648);
    sub_10000710C(v2 + 192);
    v4 = sub_10040AA50;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10040AA50()
{
  v1 = *(v0 + 640);
  v7 = *(v1 + 24);
  v2 = *(v1 + 24);
  v10 = *(v1 + 48);
  v8 = *(v1 + 80);
  v9 = *(v1 + 64);
  v3 = sub_100006D8C(v1, v2);
  *(v0 + 40) = v7;
  *(v0 + 56) = v10;
  *(v0 + 72) = v9;
  *(v0 + 88) = v8;
  v4 = sub_10020A748((v0 + 16));
  (*(*(v2 - 8) + 16))(v4, v3, v2);
  v5 = swift_task_alloc();
  *(v0 + 1136) = v5;
  *v5 = v0;
  v5[1] = sub_10040AB70;

  return sub_100401444(v0 + 16);
}

uint64_t sub_10040AB70()
{
  v2 = *v1;
  v2[143] = v0;

  if (v0)
  {
    v3 = v2[81];

    return _swift_task_switch(sub_10040B568, v3, 0);
  }

  else
  {
    sub_10000710C((v2 + 2));

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_10040AE0C()
{
  sub_10000710C(v0 + 192);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10040AFC4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10040B3B0()
{
  sub_10000710C(v0 + 104);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10040B568()
{
  sub_10000710C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10040B720(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_100783C40);
  __chkstk_darwin(v4 - 8);
  v6 = v18 - v5;
  v7 = *(a1 + 112);
  v8 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage;
  v9 = *(v7 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
  v10 = v9 + *(*v9 + class metadata base offset for ManagedBuffer + 16);
  v11 = (*(*v9 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v9 + v11));
  LODWORD(v10) = *(v10 + 48);
  os_unfair_lock_unlock((v9 + v11));
  if (v10 != 1)
  {
    v13 = *(v7 + v8);
    v14 = *(*v13 + class metadata base offset for ManagedBuffer + 16);
    v15 = (*(*v13 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v13 + v15));
    sub_10020A980(v13 + v14, v19);
    os_unfair_lock_unlock((v13 + v15));
    sub_1001F0C48(&qword_10077E970);
    if (swift_dynamicCast())
    {
      return v18[1];
    }

    return 0;
  }

  sub_100005934(a2, v6, &qword_100783C40);
  v12 = type metadata accessor for ADP();
  if ((*(*(v12 - 8) + 48))(v6, 1, v12) == 1)
  {
    sub_1000032A8(v6, &qword_100783C40);
    return 0;
  }

  v17 = *&v6[*(v12 + 24) + 24];

  sub_100429090(v6, type metadata accessor for ADP);
  return v17;
}

uint64_t sub_10040B980(void *a1, uint64_t a2)
{
  v6[2] = a2;
  result = sub_10041E018(sub_10042916C, v6, sub_10065C2BC);
  if (*a1 >> 62)
  {
    v5 = result;
    v4 = _CocoaArrayWrapper.endIndex.getter();
    result = v5;
    if (v4 >= v5)
    {
      return sub_100428C3C(result, v4, type metadata accessor for ADPInstallTask);
    }
  }

  else
  {
    v4 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 >= result)
    {
      return sub_100428C3C(result, v4, type metadata accessor for ADPInstallTask);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10040BA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v9 = type metadata accessor for Logger();
  v7[6] = v9;
  v7[7] = *(v9 - 8);
  v7[8] = swift_task_alloc();

  return _swift_task_switch(sub_10040BB14, a4, 0);
}

uint64_t sub_10040BB14()
{
  v1 = (v0[2] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_developerID);
  v0[9] = *v1;
  v0[10] = v1[1];

  return _swift_task_switch(sub_10040BB9C, 0, 0);
}

uint64_t sub_10040BB9C()
{
  v1 = v0[10];
  if (!v1)
  {
LABEL_7:

    v4 = v0[1];

    return v4();
  }

  if (v0[9] == v0[3] && v1 == v0[4])
  {
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v6 = v0[2];

  return _swift_task_switch(sub_10040BC78, v6, 0);
}

uint64_t sub_10040BC78()
{
  v1 = *(*(v0 + 16) + 160);
  *(v0 + 88) = v1;
  v2 = v1;

  return _swift_task_switch(sub_10040BCEC, 0, 0);
}

uint64_t sub_10040BCEC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 88);
  sub_10062611C();

  return _swift_task_switch(sub_10040BD64, v1, 0);
}

uint64_t sub_10040BD94()
{
  if (qword_10077E520 != -1)
  {
    swift_once();
  }

  v1 = off_100783AE8;
  os_unfair_lock_lock(off_100783AE8 + 6);
  v2 = *(v1 + 2);

  os_unfair_lock_unlock(v1 + 6);
  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  os_unfair_lock_lock(v1 + 6);
  sub_100428DEC(v1 + 2);
  os_unfair_lock_unlock(v1 + 6);
  os_unfair_lock_lock(v1 + 6);
  v4 = *(v1 + 2);

  os_unfair_lock_unlock(v1 + 6);
  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = v0[11];

  static Logger.install.getter();
  v7 = v6;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[11];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412802;
    *(v11 + 4) = v10;
    *v12 = v10;
    *(v11 + 12) = 2050;
    *(v11 + 14) = v3;
    *(v11 + 22) = 2050;
    *(v11 + 24) = v5;
    v13 = v10;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%@] Started with %{public}ld pending install tasks, ended with %{public}ld", v11, 0x20u);
    sub_1000032A8(v12, &qword_10077F920);
  }

  v15 = v0[7];
  v14 = v0[8];
  v16 = v0[6];

  (*(v15 + 8))(v14, v16);
  v17 = swift_task_alloc();
  v0[12] = v17;
  *v17 = v0;
  v17[1] = sub_10040C068;
  v18 = v0[5];

  return sub_1003FF6B0(v18);
}

uint64_t sub_10040C068()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_10040C1E8;
  }

  else
  {
    v2 = sub_10040C17C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10040C17C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10040C1E8()
{
  v1 = v0[5];
  v2 = v1[3];
  v3 = v1[7];
  v4 = v1[8];
  v5 = sub_100006D8C(v1, v2);
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_10040C2B0;
  v7 = v0[13];
  v8 = v0[2];

  return sub_100422468(v7, v5, v8, v2, v3, v4);
}

uint64_t sub_10040C2B0()
{

  return _swift_task_switch(sub_10040C3AC, 0, 0);
}

uint64_t sub_10040C3AC()
{
  v1 = *(v0 + 88);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10040C42C(unint64_t *a1)
{

  v2 = sub_100427BFC(a1);

  if (*a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v4 = result;
    if (result >= v2)
    {
      return sub_100428C3C(v2, v4, type metadata accessor for ADPInstallTask);
    }
  }

  else
  {
    v4 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 >= v2)
    {
      return sub_100428C3C(v2, v4, type metadata accessor for ADPInstallTask);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10040C4D8(int a1)
{
  v47 = a1;
  v2 = sub_1001F0C48(&qword_10077EC90);
  __chkstk_darwin(v2 - 8);
  v46 = &v42 - v3;
  v4 = type metadata accessor for MediaAPIMetadata();
  v44 = *(v4 - 8);
  v45 = v4;
  __chkstk_darwin(v4);
  v42 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001F0C48(&qword_100783C40);
  __chkstk_darwin(v6 - 8);
  v8 = &v42 - v7;
  v9 = type metadata accessor for ADP();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage;
  v43 = *(v1 + 112);
  v14 = *(v43 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
  v15 = *(*v14 + class metadata base offset for ManagedBuffer + 16);
  v16 = (*(*v14 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v14 + v16));
  sub_10020A980(v14 + v15, v51);
  os_unfair_lock_unlock((v14 + v16));
  v17 = *(v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_lockedADP);
  v18 = *(*v17 + class metadata base offset for ManagedBuffer + 16);
  v19 = (*(*v17 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v17 + v19));
  sub_100005934(v17 + v18, v8, &qword_100783C40);
  os_unfair_lock_unlock((v17 + v19));
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    sub_1004287E8(v8, v12, type metadata accessor for ADP);
    v27 = &v12[*(v9 + 24)];
    v28 = *(v27 + 21);
    v29 = v12;
    if (v28)
    {
      if (*(v27 + 20) == 0x6C7074656B72616DLL && v28 == 0xEB00000000656361)
      {
        v26 = 1;
      }

      else
      {
        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v34 = v27[184] == 1;
      v35 = *(v27 + 22) & 1;
      if (v34)
      {
        v26 = 0;
      }

      else
      {
        v26 = v35;
      }
    }

    v32 = type metadata accessor for ADP;
    v33 = v29;
    goto LABEL_14;
  }

  sub_1000032A8(v8, &qword_100783C40);
  v20 = *(v43 + v13);
  v21 = *(*v20 + class metadata base offset for ManagedBuffer + 16);
  v22 = (*(*v20 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v20 + v22));
  v23 = v20 + *(type metadata accessor for ADPInstallConfiguration.Storage(0) + 36) + v21;
  v24 = v46;
  sub_100005934(v23, v46, &qword_10077EC90);
  os_unfair_lock_unlock((v20 + v22));
  v25 = v45;
  if ((*(v44 + 48))(v24, 1, v45) != 1)
  {
    v30 = v24;
    v31 = v42;
    sub_1004287E8(v30, v42, type metadata accessor for MediaAPIMetadata);
    v26 = *(v31 + *(v25 + 32));
    v32 = type metadata accessor for MediaAPIMetadata;
    v33 = v31;
LABEL_14:
    sub_100429090(v33, v32);
    goto LABEL_15;
  }

  sub_1000032A8(v24, &qword_10077EC90);
  v26 = 0;
LABEL_15:
  sub_10020A980(v51, v48);
  v36 = v49;
  v37 = v50;
  sub_100006D8C(v48, v49);
  v38 = (*(v37 + 40))(v36, v37);
  v40 = v39;
  sub_10000710C(v48);
  sub_10056D4A4(v47, v38, v40, v26 & 1);

  return sub_10000710C(v51);
}

uint64_t sub_10040CA00(uint64_t a1)
{
  v2[94] = v1;
  v2[93] = a1;
  v3 = type metadata accessor for Logger();
  v2[95] = v3;
  v2[96] = *(v3 - 8);
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();
  v2[99] = swift_task_alloc();
  v4 = type metadata accessor for AppInstallRequestType();
  v2[100] = v4;
  v2[101] = *(v4 - 8);
  v2[102] = swift_task_alloc();
  v2[103] = swift_task_alloc();
  v2[104] = swift_task_alloc();

  return _swift_task_switch(sub_10040CB50, v1, 0);
}

uint64_t sub_10040CB50()
{
  v65 = v0;
  v1 = v0[104];
  v2 = v0[103];
  v3 = v0[101];
  v4 = v0[100];
  v63 = *(v0[94] + 112);
  v62 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage;
  v5 = *(v63 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
  v6 = *(*v5 + class metadata base offset for ManagedBuffer + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  v61 = type metadata accessor for ADPInstallConfiguration.Storage(0);
  v8 = *(v3 + 16);
  v8(v1, v5 + *(v61 + 28) + v6, v4);
  os_unfair_lock_unlock((v5 + v7));
  v8(v2, v1, v4);
  v9 = (*(v3 + 88))(v2, v4);
  if (v9 == enum case for AppInstallRequestType.automaticInstall(_:))
  {
    goto LABEL_2;
  }

  if (v9 != enum case for AppInstallRequestType.install(_:))
  {
    if (v9 == enum case for AppInstallRequestType.automaticUpdate(_:))
    {
LABEL_2:
      v10 = *(v0[101] + 8);
      v10(v0[104], v0[100]);
      static Logger.install.getter();

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v57 = v12;
        v13 = v0[102];
        v53 = v0[100];
        v58 = v0[96];
        v59 = v0[95];
        v60 = v0[97];
        v55 = v10;
        v14 = v0[94];
        v15 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v15 = 138412546;
        v16 = *(v14 + 160);
        *(v15 + 4) = v16;
        *v54 = v16;
        *(v15 + 12) = 2082;
        v17 = *(v63 + v62);
        v64 = v56;
        v18 = *(*v17 + class metadata base offset for ManagedBuffer + 16);
        v19 = (*(*v17 + 48) + 3) & 0x1FFFFFFFCLL;
        v20 = v16;
        os_unfair_lock_lock((v17 + v19));
        v8(v13, v17 + *(v61 + 28) + v18, v53);
        os_unfair_lock_unlock((v17 + v19));
        v21 = AppInstallRequestType.rawValue.getter();
        v23 = v22;
        v55(v13, v53);
        v24 = sub_1002346CC(v21, v23, &v64);

        *(v15 + 14) = v24;
        _os_log_impl(&_mh_execute_header, v11, v57, "[%@] Install failure alert not required for install of type %{public}s.", v15, 0x16u);
        sub_1000032A8(v54, &qword_10077F920);

        sub_10000710C(v56);

        (*(v58 + 8))(v60, v59);
      }

      else
      {
        v38 = v0[97];
        v39 = v0[96];
        v40 = v0[95];

        (*(v39 + 8))(v38, v40);
      }

LABEL_26:

      v51 = v0[1];

      return v51();
    }

    if (v9 != enum case for AppInstallRequestType.update(_:) && v9 != enum case for AppInstallRequestType.promotion(_:))
    {
      if (v9 != enum case for AppInstallRequestType.restore(_:) && v9 != enum case for AppInstallRequestType.deviceVPP(_:) && v9 != enum case for AppInstallRequestType.deviceVPPUpdate(_:) && v9 != enum case for AppInstallRequestType.userVPP(_:) && v9 != enum case for AppInstallRequestType.userVPPUpdate(_:) && v9 != enum case for AppInstallRequestType.upp(_:) && v9 != enum case for AppInstallRequestType.restoreUpdate(_:))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      goto LABEL_2;
    }
  }

  v25 = v0[94];
  (*(v0[101] + 8))(v0[104], v0[100]);
  if (*(v25 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_shouldShowAlertOnInstallFailure) != 1)
  {
    static Logger.install.getter();

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = v0[94];
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      v46 = *(v43 + 160);
      *(v44 + 4) = v46;
      *v45 = v46;
      v47 = v46;
      _os_log_impl(&_mh_execute_header, v41, v42, "[%@] Install failure alert not required to be shown at this point.", v44, 0xCu);
      sub_1000032A8(v45, &qword_10077F920);
    }

    v48 = v0[98];
    v49 = v0[96];
    v50 = v0[95];

    (*(v49 + 8))(v48, v50);
    goto LABEL_26;
  }

  static Logger.install.getter();

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = v0[94];
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    v31 = *(v28 + 160);
    *(v29 + 4) = v31;
    *v30 = v31;
    v32 = v31;
    _os_log_impl(&_mh_execute_header, v26, v27, "[%@] Showing content restricted alert.", v29, 0xCu);
    sub_1000032A8(v30, &qword_10077F920);
  }

  v33 = v0[99];
  v34 = v0[96];
  v35 = v0[95];
  v36 = v0[93];

  (*(v34 + 8))(v33, v35);
  v37 = swift_task_alloc();
  v0[105] = v37;
  *(v37 + 16) = &unk_1006AA3A0;
  *(v37 + 24) = v36;

  type metadata accessor for SystemAlert();
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 2, v0 + 87, sub_10040D390, v0 + 82);
}

uint64_t sub_10040D390()
{
  v1 = *(v0 + 696);
  *(v0 + 848) = v1;

  return _swift_task_switch(sub_10040D404, v1, 0);
}

uint64_t sub_10040D404()
{
  if (qword_10077E540 != -1)
  {
    swift_once();
  }

  v1 = qword_100786178;
  *(v0 + 856) = qword_100786178;

  return _swift_task_switch(sub_10040D49C, v1, 0);
}

uint64_t sub_10040D49C()
{
  v1 = v0[107];
  v2 = v0[106];
  v3 = sub_100428444(&qword_1007843A0, type metadata accessor for SystemAlertCenter);
  v4 = swift_task_alloc();
  v0[108] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[109] = v5;
  *v5 = v0;
  v5[1] = sub_10040D5D8;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 110, v1, v3, 0xD000000000000010, 0x80000001006C40F0, sub_1001F63E0, v4, &type metadata for SystemAlert.Response);
}

uint64_t sub_10040D5D8()
{
  v1 = *(*v0 + 856);

  return _swift_task_switch(sub_10040D704, v1, 0);
}

uint64_t sub_10040D704()
{

  return _swift_asyncLet_finish(v0 + 16, v0 + 696, sub_10040D770, v0 + 704);
}

uint64_t sub_10040D78C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10040D84C(uint64_t *a1, uint64_t a2)
{
  v78 = type metadata accessor for URL();
  v4 = *(v78 - 8);
  v5 = __chkstk_darwin(v78);
  v77 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v76 = &v63 - v7;
  v8 = type metadata accessor for ADP();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v67 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F0C48(&qword_100783C40);
  __chkstk_darwin(v11 - 8);
  v13 = &v63 - v12;
  v80 = a2;
  v79 = sub_10040022C();
  v69 = a1;
  v66 = v4;
  if (v14)
  {
    goto LABEL_38;
  }

  v71 = v8;
  v73 = v13;
  v15 = *a1;
  v16 = *a1 & 0xFFFFFFFFFFFFFF8;
  v17 = *a1 >> 62;
  if (v17)
  {
LABEL_37:
    v18 = _CocoaArrayWrapper.endIndex.getter();
    if (v18)
    {
      goto LABEL_4;
    }

LABEL_38:
    v45 = *v69;
    v71 = *v69 >> 62;
    if (v45 >> 62)
    {
LABEL_61:
      v61 = v45 & 0xFFFFFFFFFFFFFF8;
      v62 = v45;
      v47 = _CocoaArrayWrapper.endIndex.getter();
      v46 = v61;
      v45 = v62;
    }

    else
    {
      v46 = v45 & 0xFFFFFFFFFFFFFF8;
      v47 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v75 = v45 & 0xC000000000000001;
    v48 = (v66 + 16);
    v49 = (v66 + 8);
    v79 = -v47;
    v50 = 4;
    v73 = v46;
    v74 = v45;
    while (1)
    {
      if (v79 + v50 == 4)
      {

        v57 = v69;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v82 = v50 - 4;
      if (v75)
      {
        v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v82 >= *(v46 + 16))
        {
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v51 = *(v45 + 8 * v50);
      }

      v52 = *v48;
      v53 = v76;
      v54 = v78;
      (*v48)(v76, *(v51 + 112) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_url, v78);
      v55 = v77;
      v52(v77, *(v80 + 112) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_url, v54);
      LOBYTE(v52) = static URL.== infix(_:_:)();
      v56 = *v49;
      (*v49)(v55, v54);
      v56(v53, v54);

      if (v52)
      {
        break;
      }

      ++v50;
      v45 = v74;
      v46 = v73;
      if (__OFADD__(v82, 1))
      {
        goto LABEL_60;
      }
    }

    v58 = v80;

    v59 = v74;
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v71 || (result & 1) == 0)
    {
      result = sub_10065C2BC(v59);
      v59 = result;
      v60 = result & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v60 = v73;
    }

    if (v82 < *(v60 + 16))
    {
      *(v60 + 8 * v50) = v58;

      *v69 = v59;
      return result;
    }

    __break(1u);
    goto LABEL_63;
  }

  v18 = *(v16 + 16);
  if (!v18)
  {
    goto LABEL_38;
  }

LABEL_4:
  v64 = v17;
  v82 = v15 & 0xC000000000000001;
  v65 = v67 + 16;
  v68 = v15 & 0xFFFFFFFFFFFFFF8;
  v70 = (v9 + 48);
  v17 = 4;
  v75 = v18;
  v74 = v15;
  while (1)
  {
    v19 = v17 - 4;
    if (v82)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v19 >= *(v68 + 16))
      {
        goto LABEL_36;
      }

      v9 = *(v15 + 8 * v17);
    }

    v20 = *(v9 + 112);
    v21 = (v20 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_itemIDFromButtonConfiguration);
    if ((*(v20 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_itemIDFromButtonConfiguration + 8) & 1) == 0)
    {
      v22 = *v21;
      if (*v21)
      {
        break;
      }
    }

    v23 = *(v9 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_lockedADP);
    v24 = *(*v23 + class metadata base offset for ManagedBuffer + 16);
    v25 = (*(*v23 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v23 + v25));
    v26 = v23 + v24;
    v27 = v73;
    sub_100005934(v26, v73, &qword_100783C40);
    os_unfair_lock_unlock((v23 + v25));
    v28 = v71;
    if ((*v70)(v27, 1, v71))
    {
      sub_1000032A8(v27, &qword_100783C40);
    }

    else
    {
      v37 = v27;
      v38 = v27;
      v39 = v67;
      sub_100428E08(v37, v67, type metadata accessor for ADP);
      sub_1000032A8(v38, &qword_100783C40);
      v22 = *(v65 + *(v28 + 24));
      sub_100429090(v39, type metadata accessor for ADP);
      v15 = v74;
      v18 = v75;
      if (v22)
      {
        break;
      }
    }

    v29 = *(v20 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
    v30 = *(*v29 + class metadata base offset for ManagedBuffer + 16);
    v31 = (*(*v29 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v29 + v31));
    v32 = (v29 + *(type metadata accessor for ADPInstallConfiguration.Storage(0) + 32) + v30);
    v33 = *v32;
    v34 = v32[1];

    os_unfair_lock_unlock((v29 + v31));
    if (!v34)
    {
      goto LABEL_19;
    }

    v35 = v72;
    sub_1005A9F58(v33, v34, v81);
    if (v35)
    {

      v72 = 0;
LABEL_19:
      v15 = v74;

LABEL_20:
      v18 = v75;
      goto LABEL_21;
    }

    v72 = 0;
    v81[7] = v81[2];
    v81[8] = v81[3];
    v81[9] = v81[4];
    v81[10] = v81[5];
    sub_1005A9044();
    v22 = v40;
    v42 = v41;
    sub_10020AD3C(v81);

    v15 = v74;
    if (v42)
    {
      goto LABEL_20;
    }

    v18 = v75;
    if (v22)
    {
      goto LABEL_12;
    }

LABEL_21:
    v36 = v17 - 3;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    ++v17;
    if (v36 == v18)
    {
      goto LABEL_38;
    }
  }

LABEL_12:
  if (v22 != v79)
  {
    goto LABEL_21;
  }

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (v64 || (result & 1) == 0)
  {
    result = sub_10065C2BC(v15);
    v15 = result;
    v44 = result & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v44 = v68;
  }

  if (v19 < *(v44 + 16))
  {
    *(v44 + 8 * v17) = v80;

    *v69 = v15;
    return result;
  }

LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_10040E108()
{
  v1 = type metadata accessor for ContinuousClock();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_10040E1C4, 0, 0);
}

uint64_t sub_10040E1C4()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_10040E290;

  return sub_10049E724(0xC4ABBEBEA0100000, 22, 0, 0, 1);
}

uint64_t sub_10040E290()
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  *(*v1 + 48) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_10034E9BC;
  }

  else
  {
    v5 = sub_10040E400;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10040E400()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10040E464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100005934(a3, v22 - v9, &unk_100780380);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000032A8(v10, &unk_100780380);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10040E6D0()
{
  v1[2] = v0;
  type metadata accessor for Locale();
  v1[3] = swift_task_alloc();
  sub_1001F0C48(&qword_10077E950);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  v1[6] = swift_task_alloc();
  v2 = type metadata accessor for String.LocalizationValue();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  v1[20] = swift_task_alloc();
  v4 = type metadata accessor for AppInstallRequestType();
  v1[21] = v4;
  v1[22] = *(v4 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();

  return _swift_task_switch(sub_10040E988, v0, 0);
}

uint64_t sub_10040E988()
{
  v125 = v0;
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[21];
  v4 = v0[22];
  v118 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage;
  v121 = *(v0[2] + 112);
  v5 = *(v121 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
  v6 = *(*v5 + class metadata base offset for ManagedBuffer + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  v115 = type metadata accessor for ADPInstallConfiguration.Storage(0);
  v8 = *(v4 + 16);
  v8(v1, v5 + *(v115 + 28) + v6, v3);
  os_unfair_lock_unlock((v5 + v7));
  v8(v2, v1, v3);
  v9 = (*(v4 + 88))(v2, v3);
  if (v9 == enum case for AppInstallRequestType.automaticInstall(_:))
  {
    goto LABEL_2;
  }

  if (v9 != enum case for AppInstallRequestType.install(_:))
  {
    if (v9 == enum case for AppInstallRequestType.automaticUpdate(_:))
    {
LABEL_2:
      v10 = *(v0[22] + 8);
      v10(v0[25], v0[21]);
      static Logger.install.getter();

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v106 = v12;
        v13 = v0[23];
        v100 = v0[21];
        v108 = v0[15];
        v110 = v0[14];
        v113 = v0[16];
        v102 = v10;
        v14 = v0[2];
        v15 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        *v15 = 138412546;
        v16 = *(v14 + 160);
        *(v15 + 4) = v16;
        *v101 = v16;
        *(v15 + 12) = 2082;
        v17 = *(v121 + v118);
        v124 = v104;
        v18 = *(*v17 + class metadata base offset for ManagedBuffer + 16);
        v19 = (*(*v17 + 48) + 3) & 0x1FFFFFFFCLL;
        v20 = v16;
        os_unfair_lock_lock((v17 + v19));
        v8(v13, v17 + *(v115 + 28) + v18, v100);
        os_unfair_lock_unlock((v17 + v19));
        v21 = AppInstallRequestType.rawValue.getter();
        v23 = v22;
        v102(v13, v100);
        v24 = sub_1002346CC(v21, v23, &v124);

        *(v15 + 14) = v24;
        _os_log_impl(&_mh_execute_header, v11, v106, "[%@] Install failure alert not required for install of type %{public}s.", v15, 0x16u);
        sub_1000032A8(v101, &qword_10077F920);

        sub_10000710C(v104);

        (*(v108 + 8))(v113, v110);
      }

      else
      {
        v32 = v0[15];
        v31 = v0[16];
        v33 = v0[14];

        (*(v32 + 8))(v31, v33);
      }

LABEL_37:

      v99 = v0[1];

      return v99();
    }

    if (v9 != enum case for AppInstallRequestType.update(_:) && v9 != enum case for AppInstallRequestType.promotion(_:))
    {
      if (v9 != enum case for AppInstallRequestType.restore(_:) && v9 != enum case for AppInstallRequestType.deviceVPP(_:) && v9 != enum case for AppInstallRequestType.deviceVPPUpdate(_:) && v9 != enum case for AppInstallRequestType.userVPP(_:) && v9 != enum case for AppInstallRequestType.userVPPUpdate(_:) && v9 != enum case for AppInstallRequestType.upp(_:) && v9 != enum case for AppInstallRequestType.restoreUpdate(_:))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      goto LABEL_2;
    }
  }

  v25 = v0[2];
  (*(v0[22] + 8))(v0[25], v0[21]);
  if (*(v25 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_shouldShowAlertOnInstallFailure) != 1)
  {
    static Logger.install.getter();

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = v0[2];
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      v40 = *(v37 + 160);
      *(v38 + 4) = v40;
      *v39 = v40;
      v41 = v40;
      _os_log_impl(&_mh_execute_header, v35, v36, "[%@] Install failure alert not required to be shown at this point.", v38, 0xCu);
      sub_1000032A8(v39, &qword_10077F920);
    }

    v42 = v0[17];
    goto LABEL_36;
  }

  v26 = v0[20];
  sub_100005934(v121 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_referrer, v26, &unk_1007809F0);
  v27 = type metadata accessor for URL();
  v28 = *(v27 - 8);
  v29 = (*(v28 + 48))(v26, 1, v27);
  v30 = v0[20];
  if (v29 == 1)
  {
    sub_1000032A8(v0[20], &unk_1007809F0);
LABEL_33:
    static Logger.install.getter();

    v35 = Logger.logObject.getter();
    v91 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v35, v91))
    {
      v92 = v0[2];
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *v93 = 138412290;
      v95 = *(v92 + 160);
      *(v93 + 4) = v95;
      *v94 = v95;
      v96 = v95;
      _os_log_impl(&_mh_execute_header, v35, v91, "[%@] Install failure alert not shown as there is no domain and/or no referrer.", v93, 0xCu);
      sub_1000032A8(v94, &qword_10077F920);
    }

    v42 = v0[18];
LABEL_36:
    v97 = v0[14];
    v98 = v0[15];

    (*(v98 + 8))(v42, v97);
    goto LABEL_37;
  }

  v43 = sub_1005D6710();
  v45 = v44;
  (*(v28 + 8))(v30, v27);
  if (!v45)
  {
    goto LABEL_33;
  }

  v122 = v43;
  static Logger.install.getter();

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = v0[2];
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v49 = 138412290;
    v51 = *(v48 + 160);
    *(v49 + 4) = v51;
    *v50 = v51;
    v52 = v51;
    _os_log_impl(&_mh_execute_header, v46, v47, "[%@] Showing install failure alert.", v49, 0xCu);
    sub_1000032A8(v50, &qword_10077F920);
  }

  v53 = v0[19];
  v54 = v0[14];
  v55 = v0[15];
  v56 = v0[8];
  v119 = v0[7];
  v116 = v0[5];

  (*(v55 + 8))(v53, v54);
  String.LocalizationValue.init(stringLiteral:)();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v57._countAndFlagsBits = 0xD00000000000001ELL;
  v57._object = 0x80000001006CB320;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v57);
  v58._countAndFlagsBits = v122;
  v58._object = v45;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v58);

  v59._countAndFlagsBits = 0;
  v59._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v59);
  String.LocalizationValue.init(stringInterpolation:)();
  String.LocalizationValue.init(stringLiteral:)();
  (*(v56 + 56))(v116, 1, 1, v119);
  if (qword_10077E558 != -1)
  {
    swift_once();
  }

  v60 = v0[12];
  v61 = v0[10];
  v111 = v0[11];
  v63 = v0[7];
  v62 = v0[8];
  v105 = v0[4];
  v107 = v0[5];
  v64 = qword_1007B88B0;
  v65 = *(v62 + 16);
  v65(v61, v0[13], v63);
  v66 = v64;
  static Locale.current.getter();
  v67 = v66;
  v68 = String.init(localized:table:bundle:locale:comment:)();
  v120 = v69;
  v123 = v68;
  v65(v61, v60, v63);
  static Locale.current.getter();
  v70 = String.init(localized:table:bundle:locale:comment:)();
  v114 = v71;
  v117 = v70;
  v103 = v65;
  v65(v61, v111, v63);
  static Locale.current.getter();
  v72 = String.init(localized:table:bundle:locale:comment:)();
  v109 = v73;
  v112 = v72;
  sub_100005934(v107, v105, &qword_10077E950);
  v74 = 0;
  v75 = 0;
  if ((*(v62 + 48))(v105, 1, v63) != 1)
  {
    v76 = v0[9];
    v77 = v0[10];
    v78 = v67;
    v80 = v0[7];
    v79 = v0[8];
    (*(v79 + 32))(v77, v0[4], v80);
    v103(v76, v77, v80);
    static Locale.current.getter();
    v81 = v78;
    v74 = String.init(localized:table:bundle:locale:comment:)();
    v75 = v82;
    (*(v79 + 8))(v77, v80);
  }

  v84 = v0[12];
  v83 = v0[13];
  v85 = v0[11];
  v86 = v0[7];
  v87 = v0[8];
  v88 = v0[5];
  type metadata accessor for SystemAlert();
  v89 = swift_allocObject();
  v0[26] = v89;
  swift_defaultActor_initialize();
  sub_1000032A8(v88, &qword_10077E950);
  v90 = *(v87 + 8);
  v90(v85, v86);
  v90(v84, v86);
  v90(v83, v86);
  *(v89 + 112) = v123;
  *(v89 + 120) = v120;
  *(v89 + 128) = v117;
  *(v89 + 136) = v114;
  *(v89 + 144) = v112;
  *(v89 + 152) = v109;
  *(v89 + 160) = v74;
  *(v89 + 168) = v75;
  *(v89 + 176) = 0;

  return _swift_task_switch(sub_10040F70C, v89, 0);
}

uint64_t sub_10040F70C()
{
  if (qword_10077E540 != -1)
  {
    swift_once();
  }

  v1 = qword_100786178;
  *(v0 + 216) = qword_100786178;

  return _swift_task_switch(sub_10040F7A4, v1, 0);
}

uint64_t sub_10040F7A4()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = sub_100428444(&qword_1007843A0, type metadata accessor for SystemAlertCenter);
  v4 = swift_task_alloc();
  v0[28] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[29] = v5;
  *v5 = v0;
  v5[1] = sub_10040F8DC;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 30, v1, v3, 0xD000000000000010, 0x80000001006C40F0, sub_100223854, v4, &type metadata for SystemAlert.Response);
}

uint64_t sub_10040F8DC()
{
  v1 = *(*v0 + 216);

  return _swift_task_switch(sub_10040FA08, v1, 0);
}

uint64_t sub_10040FA24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10040FB60(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 112) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
  v3 = *(*v2 + class metadata base offset for ManagedBuffer + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v4));
  sub_10020A980(v2 + v3, v10);
  os_unfair_lock_unlock((v2 + v4));
  v5 = v11;
  v6 = v12;
  sub_100006D8C(v10, v11);
  v7 = (*(v6 + 40))(v5, v6);
  sub_10047DC1C(v7, v8);

  return sub_10000710C(v10);
}

uint64_t sub_10040FC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_10040FC7C, a4, 0);
}

uint64_t sub_10040FC7C()
{
  if (qword_10077E540 != -1)
  {
    swift_once();
  }

  v1 = qword_100786178;
  *(v0 + 32) = qword_100786178;

  return _swift_task_switch(sub_10040FD14, v1, 0);
}

uint64_t sub_10040FD14()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_100428444(&qword_1007843A0, type metadata accessor for SystemAlertCenter);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_10021EC9C;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 7, v1, v3, 0xD000000000000010, 0x80000001006C40F0, sub_100223854, v4, &type metadata for SystemAlert.Response);
}

uint64_t sub_10040FE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a4;
  v5[25] = a5;
  v7 = sub_1001F0C48(&qword_10077EC98);
  v5[26] = v7;
  v5[27] = *(v7 - 8);
  v5[28] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v5[31] = v8;
  v5[32] = *(v8 - 8);
  v5[33] = swift_task_alloc();

  return _swift_task_switch(sub_10040FFBC, a4, 0);
}

uint64_t sub_10040FFBC()
{
  if (qword_10077E540 != -1)
  {
    swift_once();
  }

  v1 = qword_100786178;
  *(v0 + 272) = qword_100786178;

  return _swift_task_switch(sub_100410054, v1, 0);
}

uint64_t sub_100410054()
{
  v1 = v0[34];
  v2 = v0[24];
  v3 = sub_100428444(&qword_1007843A0, type metadata accessor for SystemAlertCenter);
  v4 = swift_task_alloc();
  v0[35] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[36] = v5;
  *v5 = v0;
  v5[1] = sub_100410190;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 40, v1, v3, 0xD000000000000010, 0x80000001006C40F0, sub_100223854, v4, &type metadata for SystemAlert.Response);
}

uint64_t sub_100410190()
{
  v1 = *(*v0 + 272);

  return _swift_task_switch(sub_1004102BC, v1, 0);
}

uint64_t sub_1004102E0()
{
  if (*(v0 + 321) == 1)
  {
    v1 = *(v0 + 248);
    v2 = *(v0 + 256);
    v3 = *(v0 + 240);
    sub_10020A980(*(*(v0 + 200) + 112) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_bag, v0 + 144);
    sub_100006D8C((v0 + 144), *(v0 + 168));
    sub_100364C94();
    URL.init(string:)();

    sub_10000710C(v0 + 144);
    v4 = *(v2 + 48);
    if (v4(v3, 1, v1) == 1)
    {
      v5 = *(v0 + 248);
      v6 = *(v0 + 232);
      URL.init(string:)();
      v7 = v4(v6, 1, v5);
      if (v7 == 1)
      {
        goto LABEL_15;
      }

      v8 = *(v0 + 240);
      v9 = *(v0 + 248);
      (*(*(v0 + 256) + 32))(*(v0 + 264), *(v0 + 232), v9);
      if (v4(v8, 1, v9) != 1)
      {
        sub_1000032A8(*(v0 + 240), &unk_1007809F0);
      }
    }

    else
    {
      (*(*(v0 + 256) + 32))(*(v0 + 264), *(v0 + 240), *(v0 + 248));
    }

    v7 = [objc_opt_self() defaultWorkspace];
    *(v0 + 296) = v7;
    if (v7)
    {
      v12 = v7;
      v13 = *(v0 + 216);
      v14 = *(v0 + 224);
      v15 = *(v0 + 208);
      URL._bridgeToObjectiveC()((v0 + 80));
      v18 = v16;
      *(v0 + 304) = v16;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 184;
      *(v0 + 24) = sub_1004106AC;
      swift_continuation_init();
      *(v0 + 136) = v15;
      v17 = sub_10020A748((v0 + 112));
      sub_1001F0C48(&qword_10077ECA0);
      sub_1001F0C48(&unk_10077F940);
      CheckedContinuation.init(continuation:function:)();
      (*(v13 + 32))(v17, v14, v15);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1003FA170;
      *(v0 + 104) = &unk_1007644C0;
      [v12 openURL:v18 configuration:0 completionHandler:?];
      (*(v13 + 8))(v17, v15);
      v7 = (v0 + 16);

      return _swift_continuation_await(v7);
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return _swift_continuation_await(v7);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1004106AC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 312) = v1;
  if (v1)
  {
    v2 = sub_100410874;
  }

  else
  {
    v2 = sub_1004107BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004107BC()
{
  v2 = v0[37];
  v1 = v0[38];
  (*(v0[32] + 8))(v0[33], v0[31]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100410874()
{
  v1 = v0[38];
  v2 = v0[37];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[31];
  swift_willThrow();

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10041094C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_10041096C, a4, 0);
}

uint64_t sub_10041096C()
{
  if (qword_10077E540 != -1)
  {
    swift_once();
  }

  v1 = qword_100786178;
  *(v0 + 32) = qword_100786178;

  return _swift_task_switch(sub_100410A04, v1, 0);
}

uint64_t sub_100410A04()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_100428444(&qword_1007843A0, type metadata accessor for SystemAlertCenter);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_100410B3C;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 7, v1, v3, 0xD000000000000010, 0x80000001006C40F0, sub_100223854, v4, &type metadata for SystemAlert.Response);
}

uint64_t sub_100410B3C()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_100410C68, v1, 0);
}

uint64_t sub_100410C8C(uint64_t a1)
{
  v2[38] = a1;
  v2[39] = v1;
  sub_1001F0C48(&unk_100780380);
  v2[40] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v2[41] = v3;
  v2[42] = *(v3 - 8);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  sub_1001F0C48(&qword_10077EC90);
  v2[47] = swift_task_alloc();
  v4 = type metadata accessor for MediaAPIMetadata();
  v2[48] = v4;
  v2[49] = *(v4 - 8);
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = sub_1001F0C48(&unk_1007809F0);
  v2[53] = swift_task_alloc();
  sub_1001F0C48(&qword_100783C38);
  v2[54] = swift_task_alloc();
  v5 = type metadata accessor for ADPPreflightResultingMetadata(0);
  v2[55] = v5;
  v2[56] = *(v5 - 8);
  v2[57] = swift_task_alloc();
  sub_1001F0C48(&qword_100783C40);
  v2[58] = swift_task_alloc();
  v6 = type metadata accessor for ADP();
  v2[59] = v6;
  v7 = *(v6 - 8);
  v2[60] = v7;
  v2[61] = *(v7 + 64);
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();

  return _swift_task_switch(sub_100410FC0, v1, 0);
}

uint64_t sub_100410FC0()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 480);
  v3 = *(v0 + 464);
  v4 = *(*(v0 + 312) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_lockedADP);
  v5 = *(*v4 + class metadata base offset for ManagedBuffer + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v6));
  sub_100005934(v4 + v5, v3, &qword_100783C40);
  os_unfair_lock_unlock((v4 + v6));
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000032A8(*(v0 + 464), &qword_100783C40);
    static Logger.install.getter();

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 312);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = *(v9 + 160);
      *(v10 + 4) = v12;
      *v11 = v12;
      v13 = v12;
      _os_log_impl(&_mh_execute_header, v7, v8, "[%@] Failed to show exception request sheet, missing adp.", v10, 0xCu);
      sub_1000032A8(v11, &qword_10077F920);
    }

    v15 = *(v0 + 336);
    v14 = *(v0 + 344);
    v16 = *(v0 + 328);

    (*(v15 + 8))(v14, v16);
    goto LABEL_35;
  }

  v17 = *(v0 + 440);
  v18 = *(v0 + 448);
  v19 = *(v0 + 432);
  v20 = *(v0 + 312);
  sub_1004287E8(*(v0 + 464), *(v0 + 504), type metadata accessor for ADP);
  v21 = swift_allocBox();
  v23 = v22;
  v150 = v21;
  *(v0 + 512) = v21;
  v24 = type metadata accessor for URL();
  v25 = *(*(v24 - 8) + 56);
  v25(v23, 1, 1, v24);
  v26 = swift_allocBox();
  v147 = v27;
  v149 = v26;
  *(v0 + 520) = v26;
  v25(v27, 1, 1, v24);
  v28 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_preflightMetadata;
  swift_beginAccess();
  sub_100005934(v20 + v28, v19, &qword_100783C38);
  v29 = (*(v18 + 48))(v19, 1, v17);
  v30 = *(v0 + 384);
  if (v29 == 1)
  {
    v31 = *(v0 + 392);
    v32 = *(v0 + 376);
    sub_1000032A8(*(v0 + 432), &qword_100783C38);
    v33 = *(v20 + 112);
    v34 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage;
    v35 = *(v33 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
    v36 = *(*v35 + class metadata base offset for ManagedBuffer + 16);
    v37 = (*(*v35 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v35 + v37));
    v38 = type metadata accessor for ADPInstallConfiguration.Storage(0);
    sub_100005934(v35 + *(v38 + 36) + v36, v32, &qword_10077EC90);
    os_unfair_lock_unlock((v35 + v37));
    if ((*(v31 + 48))(v32, 1, v30) == 1)
    {
      sub_1000032A8(*(v0 + 376), &qword_10077EC90);
      static Logger.install.getter();

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = *(v0 + 312);
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138412290;
        v44 = *(v41 + 160);
        *(v42 + 4) = v44;
        *v43 = v44;
        v45 = v44;
        _os_log_impl(&_mh_execute_header, v39, v40, "[%@] Failed to show exception request sheet, missing metadata.", v42, 0xCu);
        sub_1000032A8(v43, &qword_10077F920);
      }

      v46 = *(v0 + 504);
      v47 = *(v0 + 368);
LABEL_34:
      v129 = *(v0 + 328);
      v130 = *(v0 + 336);

      (*(v130 + 8))(v47, v129);
      sub_100429090(v46, type metadata accessor for ADP);

LABEL_35:

      v131 = *(v0 + 8);

      return v131();
    }

    v58 = *(v0 + 400);
    v59 = *(v0 + 384);
    sub_1004287E8(*(v0 + 376), v58, type metadata accessor for MediaAPIMetadata);
    v60 = *(v33 + v34);
    v61 = *(*v60 + class metadata base offset for ManagedBuffer + 16);
    v62 = (*(*v60 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v60 + v62));
    sub_10020A980(v60 + v61, v0 + 88);
    os_unfair_lock_unlock((v60 + v62));
    v63 = *(v0 + 112);
    v64 = *(v0 + 120);
    sub_100006D8C((v0 + 88), v63);
    v142 = (*(v64 + 56))(v63, v64);
    v55 = v65;
    sub_10000710C(v0 + 88);
    v139 = v58[6];
    v140 = *v58;
    v66 = v58[5];
    v141 = v58[4];
    v146 = v58[1];
    v144 = v58[7];
    if (*(v58 + *(v59 + 56) + 8))
    {
      v67 = *(v0 + 424);

      URL.init(string:)();
      sub_10020AD90(v67, v23, &unk_1007809F0);
    }

    else
    {
    }

    v145 = v66;
    v70 = *(v0 + 400);
    v75 = *(v0 + 384);
    v72 = *(v70 + v75[8]);
    v76 = (v70 + v75[11]);
    v77 = v76[1];
    v137 = *(v70 + v75[12]);
    v138 = *v76;
    sub_100005934(v70 + v75[7], *(v0 + 424), &unk_1007809F0);
    v143 = v77;
  }

  else
  {
    v48 = *(v0 + 456);
    sub_1004287E8(*(v0 + 432), v48, type metadata accessor for ADPPreflightResultingMetadata);
    v33 = *(v20 + 112);
    v49 = *(v33 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
    v50 = *(*v49 + class metadata base offset for ManagedBuffer + 16);
    v51 = (*(*v49 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v49 + v51));
    sub_10020A980(v49 + v50, v0 + 208);
    os_unfair_lock_unlock((v49 + v51));
    v52 = *(v0 + 232);
    v53 = *(v0 + 240);
    sub_100006D8C((v0 + 208), v52);
    v142 = (*(v53 + 56))(v52, v53);
    v55 = v54;
    sub_10000710C(v0 + 208);
    v139 = v48[6];
    v140 = *v48;
    v56 = v48[5];
    v141 = v48[4];
    v146 = v48[1];
    v144 = v48[7];
    if (*(v48 + *(v30 + 56) + 8))
    {
      v57 = *(v0 + 424);

      URL.init(string:)();
      sub_10020AD90(v57, v23, &unk_1007809F0);
    }

    else
    {
    }

    v145 = v56;
    v68 = *(v0 + 456);
    v69 = *(v0 + 424);
    v70 = *(v0 + 408);
    v71 = *(v0 + 384);
    v72 = *(v68 + v71[8]);
    v73 = (v68 + v71[11]);
    v74 = v73[1];
    v137 = *(v68 + v71[12]);
    v138 = *v73;
    sub_100428E08(v68, v70, type metadata accessor for MediaAPIMetadata);
    v143 = v74;

    sub_100429090(v68, type metadata accessor for ADPPreflightResultingMetadata);
    sub_100005934(v70 + v71[7], v69, &unk_1007809F0);
  }

  sub_100429090(v70, type metadata accessor for MediaAPIMetadata);
  sub_10020AD90(*(v0 + 424), v147, &unk_1007809F0);
  v78 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage;
  v79 = *(v33 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
  v80 = *(*v79 + class metadata base offset for ManagedBuffer + 16);
  v81 = (*(*v79 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v79 + v81));
  sub_10020A980(v79 + v80, v0 + 128);
  os_unfair_lock_unlock((v79 + v81));
  sub_1001F0C48(&qword_10077E970);
  if (swift_dynamicCast())
  {

    v82 = 0;
    if (v55)
    {
      goto LABEL_20;
    }

LABEL_28:

    static Logger.install.getter();

    v39 = Logger.logObject.getter();
    v117 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v117))
    {
      v118 = *(v0 + 312);
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      *v119 = 138412290;
      v121 = *(v118 + 160);
      *(v119 + 4) = v121;
      *v120 = v121;
      v122 = v121;
      _os_log_impl(&_mh_execute_header, v39, v117, "[%@] Failed to show exception request sheet: unable to determine distributor name", v119, 0xCu);
      sub_1000032A8(v120, &qword_10077F920);
    }

    v46 = *(v0 + 504);
    v47 = *(v0 + 360);
    goto LABEL_34;
  }

  v114 = *(v33 + v78);
  v115 = *(*v114 + class metadata base offset for ManagedBuffer + 16);
  v116 = (*(*v114 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v114 + v116));
  sub_10020A980(v114 + v115, v0 + 168);
  os_unfair_lock_unlock((v114 + v116));
  if (!swift_dynamicCast())
  {

    static Logger.install.getter();

    v39 = Logger.logObject.getter();
    v123 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v123))
    {
      v124 = *(v0 + 312);
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      *v125 = 138412290;
      v127 = *(v124 + 160);
      *(v125 + 4) = v127;
      *v126 = v127;
      v128 = v127;
      _os_log_impl(&_mh_execute_header, v39, v123, "[%@] Failed to show exception request sheet: unable to determine install flow type", v125, 0xCu);
      sub_1000032A8(v126, &qword_10077F920);
    }

    v46 = *(v0 + 504);
    v47 = *(v0 + 352);
    goto LABEL_34;
  }

  if (v72)
  {
    v82 = 2;
  }

  else
  {
    v82 = 1;
  }

  if (!v55)
  {
    goto LABEL_28;
  }

LABEL_20:
  v84 = *(v0 + 496);
  v83 = *(v0 + 504);
  v135 = v72;
  v86 = *(v0 + 480);
  v85 = *(v0 + 488);
  v87 = *(v0 + 320);
  v136 = v87;
  v132 = v84;
  v133 = *(v0 + 312);
  v88 = *(v0 + 304);
  v148 = v88;
  v134 = v82;
  v89 = type metadata accessor for TaskPriority();
  (*(*(v89 - 8) + 56))(v87, 1, 1, v89);
  sub_10026FE78(v88, v0 + 16);
  sub_100428E08(v83, v84, type metadata accessor for ADP);
  v90 = sub_100428444(&qword_100783C58, type metadata accessor for ADPInstallTask);
  v91 = (*(v86 + 80) + 152) & ~*(v86 + 80);
  v92 = (v85 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
  v93 = (v92 + 39) & 0xFFFFFFFFFFFFFFF8;
  v94 = (v93 + 23) & 0xFFFFFFFFFFFFFFF8;
  v95 = (v94 + 15) & 0xFFFFFFFFFFFFFFF8;
  v96 = swift_allocObject();
  *(v96 + 16) = v133;
  *(v96 + 24) = v90;
  sub_10026FEE4(v0 + 16, v96 + 32);
  *(v96 + 104) = v134;
  *(v96 + 112) = v133;
  *(v96 + 120) = v140;
  *(v96 + 128) = v146;
  *(v96 + 136) = v139;
  *(v96 + 144) = v144;
  sub_1004287E8(v132, v96 + v91, type metadata accessor for ADP);
  *(v96 + v92) = v149;
  v97 = v96 + ((v92 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v97 = v142;
  *(v97 + 8) = v55;
  *(v97 + 16) = v135;
  v98 = (v96 + v93);
  *v98 = v141;
  v98[1] = v145;
  *(v96 + v94) = v150;
  v99 = (v96 + v95);
  *v99 = v138;
  v99[1] = v143;
  *(v96 + ((v95 + 23) & 0xFFFFFFFFFFFFFFF8)) = v137;
  swift_retain_n();

  sub_100494DB4(0, 0, v136, &unk_1006AA320, v96);

  *(v133 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_shouldShowAlertOnInstallFailure) = 0;
  v100 = type metadata accessor for MarketplaceKitError();
  *(v0 + 528) = v100;
  *(v0 + 536) = sub_100428444(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
  v101 = swift_allocError();
  *(v0 + 544) = v101;
  *(v0 + 576) = enum case for MarketplaceKitError.cancelled(_:);
  v102 = *(v100 - 8);
  v103 = *(v102 + 104);
  *(v0 + 552) = v103;
  *(v0 + 560) = (v102 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v103(v104);
  v105 = v148[3];
  v106 = v148[4];
  v107 = v148[6];
  v108 = v148[7];
  v109 = v148[8];
  v110 = sub_100006D8C(v148, v105);
  v111 = swift_task_alloc();
  *(v0 + 568) = v111;
  *v111 = v0;
  v111[1] = sub_100412080;
  v112 = *(v0 + 312);

  return sub_10041F4B4(v101, v110, v112, v105, v106, v107, v108, v109);
}

uint64_t sub_100412080()
{
  v1 = *(*v0 + 312);

  return _swift_task_switch(sub_1004121AC, v1, 0);
}

uint64_t sub_1004121AC()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 576);
  v3 = *(v0 + 528);
  v4 = *(v0 + 504);
  swift_allocError();
  v1(v5, v2, v3);
  swift_willThrow();
  sub_100429090(v4, type metadata accessor for ADP);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100412364()
{
  v1 = *(v0 + 968);
  *(v0 + 696) = 67;
  *(v0 + 704) = 0u;
  *(v0 + 720) = 0u;
  *(v0 + 736) = 0u;
  *(v0 + 752) = 0;
  *(v0 + 760) = 41;
  *(v0 + 808) = 68;
  *(v0 + 816) = 0u;
  *(v0 + 832) = 0u;
  *(v0 + 848) = 0u;
  *(v0 + 864) = 0;
  *(v0 + 872) = 41;
  *(v0 + 880) = 0u;
  *(v0 + 896) = 0u;
  *(v0 + 912) = 0u;
  *(v0 + 928) = 0u;
  *(v0 + 944) = 41;
  v2 = swift_allocObject();
  *(v0 + 976) = v2;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = -1;
  *(v2 + 88) = v1;
  v3 = swift_task_alloc();
  *(v0 + 984) = v3;
  *(v3 + 16) = &unk_10069F2C0;
  *(v3 + 24) = v2;

  sub_1001F0C48(&unk_10077FA80);
  swift_asyncLet_begin();
  v4 = swift_task_alloc();
  *(v0 + 992) = v4;
  *v4 = v0;
  v4[1] = sub_1004124EC;

  return sub_1006600F0(v0 + 696);
}

uint64_t sub_1004124EC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  v3[125] = a1;
  v3[126] = a2;

  v4 = swift_task_alloc();
  v3[127] = v4;
  *v4 = v6;
  v4[1] = sub_100412644;

  return sub_1006600F0((v3 + 101));
}

uint64_t sub_100412644(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  v3[128] = a1;
  v3[129] = a2;

  v4 = swift_task_alloc();
  v3[130] = v4;
  *v4 = v6;
  v4[1] = sub_10041279C;

  return sub_1006600F0((v3 + 110));
}

uint64_t sub_10041279C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1048) = a1;
  *(v3 + 1056) = a2;

  return _swift_asyncLet_get(v3 + 16, v3 + 952, sub_1004128A4, v3 + 656);
}

uint64_t sub_1004128C0()
{
  v6 = *(v0 + 1024);
  v7 = *(v0 + 1048);
  v5 = *(v0 + 1000);
  v1 = *(v0 + 952);
  v2 = *(v0 + 960);
  type metadata accessor for SystemAlert();
  v3 = swift_allocObject();
  *(v0 + 1064) = v3;

  swift_defaultActor_initialize();
  *(v3 + 112) = v5;
  *(v3 + 128) = v6;
  *(v3 + 144) = v7;
  *(v3 + 160) = v1;
  *(v3 + 168) = v2;
  *(v3 + 176) = 0;

  return _swift_asyncLet_finish(v0 + 16, v0 + 952, sub_10041299C, v0 + 768);
}

uint64_t sub_10041299C()
{
  sub_100428444(&qword_10077EC88, type metadata accessor for SystemAlert);
  swift_getObjectType();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100412A50, v1, v0);
}

uint64_t sub_100412A50()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 1064);

  return v1(v2);
}

uint64_t sub_100412ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v7 = sub_1001F0C48(&qword_10077EC98);
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v5[26] = v8;
  v5[27] = *(v8 - 8);
  v5[28] = swift_task_alloc();

  return _swift_task_switch(sub_100412C3C, a4, 0);
}

uint64_t sub_100412C3C()
{
  if (qword_10077E540 != -1)
  {
    swift_once();
  }

  v1 = qword_100786178;
  *(v0 + 232) = qword_100786178;

  return _swift_task_switch(sub_100412CD4, v1, 0);
}

uint64_t sub_100412CD4()
{
  v1 = v0[29];
  v2 = v0[19];
  v3 = sub_100428444(&qword_1007843A0, type metadata accessor for SystemAlertCenter);
  v4 = swift_task_alloc();
  v0[30] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[31] = v5;
  *v5 = v0;
  v5[1] = sub_100412E10;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 35, v1, v3, 0xD000000000000010, 0x80000001006C40F0, sub_100223854, v4, &type metadata for SystemAlert.Response);
}

uint64_t sub_100412E10()
{
  v1 = *(*v0 + 232);

  return _swift_task_switch(sub_100412F3C, v1, 0);
}

uint64_t sub_100412F60()
{
  if (*(v0 + 281) == 1)
  {
    v1 = *(v0 + 208);
    v2 = *(v0 + 216);
    v3 = *(v0 + 200);
    sub_100006D8C((*(v0 + 160) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_bag), *(*(v0 + 160) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_bag + 24));
    sub_100364C94();
    URL.init(string:)();

    v4 = *(v2 + 48);
    if (v4(v3, 1, v1) == 1)
    {
      v5 = *(v0 + 208);
      v6 = *(v0 + 192);
      URL.init(string:)();
      v7 = v4(v6, 1, v5);
      if (v7 == 1)
      {
        goto LABEL_15;
      }

      v8 = *(v0 + 200);
      v9 = *(v0 + 208);
      (*(*(v0 + 216) + 32))(*(v0 + 224), *(v0 + 192), v9);
      if (v4(v8, 1, v9) != 1)
      {
        sub_1000032A8(*(v0 + 200), &unk_1007809F0);
      }
    }

    else
    {
      (*(*(v0 + 216) + 32))(*(v0 + 224), *(v0 + 200), *(v0 + 208));
    }

    v7 = [objc_opt_self() defaultWorkspace];
    *(v0 + 256) = v7;
    if (v7)
    {
      v12 = v7;
      v13 = *(v0 + 176);
      v14 = *(v0 + 184);
      v15 = *(v0 + 168);
      URL._bridgeToObjectiveC()((v0 + 80));
      v18 = v16;
      *(v0 + 264) = v16;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 144;
      *(v0 + 24) = sub_10021E80C;
      swift_continuation_init();
      *(v0 + 136) = v15;
      v17 = sub_10020A748((v0 + 112));
      sub_1001F0C48(&qword_10077ECA0);
      sub_1001F0C48(&unk_10077F940);
      CheckedContinuation.init(continuation:function:)();
      (*(v13 + 32))(v17, v14, v15);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1003FA170;
      *(v0 + 104) = &unk_100764420;
      [v12 openURL:v18 configuration:0 completionHandler:?];
      (*(v13 + 8))(v17, v15);
      v7 = (v0 + 16);

      return _swift_continuation_await(v7);
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return _swift_continuation_await(v7);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100413314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 3816) = v30;
  *(v8 + 3808) = v29;
  *(v8 + 3800) = v28;
  *(v8 + 3792) = v27;
  *(v8 + 3784) = v26;
  *(v8 + 211) = v25;
  *(v8 + 3776) = v24;
  *(v8 + 3768) = v23;
  *(v8 + 3760) = v22;
  *(v8 + 3744) = v21;
  *(v8 + 3736) = a8;
  *(v8 + 3728) = a7;
  *(v8 + 3720) = a6;
  *(v8 + 210) = a5;
  *(v8 + 3712) = a4;
  v10 = sub_1001F0C48(&unk_100784B60);
  *(v8 + 3824) = v10;
  *(v8 + 3832) = *(v10 - 8);
  *(v8 + 3840) = swift_task_alloc();
  v11 = sub_1001F0C48(&unk_100784AE0);
  *(v8 + 3848) = v11;
  *(v8 + 3856) = *(v11 - 8);
  *(v8 + 3864) = swift_task_alloc();
  v12 = type metadata accessor for AppInstallRequestType();
  *(v8 + 3872) = v12;
  *(v8 + 3880) = *(v12 - 8);
  *(v8 + 3888) = swift_task_alloc();
  v13 = type metadata accessor for ExceptionRequestMetadata();
  *(v8 + 3896) = v13;
  *(v8 + 3904) = *(v13 - 8);
  *(v8 + 3912) = swift_task_alloc();
  *(v8 + 3920) = swift_task_alloc();
  v14 = type metadata accessor for URL();
  *(v8 + 3928) = v14;
  *(v8 + 3936) = *(v14 - 8);
  *(v8 + 3944) = swift_task_alloc();
  *(v8 + 3952) = swift_task_alloc();
  sub_1001F0C48(&qword_100783C60);
  *(v8 + 3960) = swift_task_alloc();
  *(v8 + 3968) = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  *(v8 + 3976) = v15;
  *(v8 + 3984) = *(v15 - 8);
  *(v8 + 3992) = swift_task_alloc();
  *(v8 + 4000) = swift_task_alloc();
  *(v8 + 4008) = swift_task_alloc();
  *(v8 + 4016) = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  *(v8 + 4024) = v16;
  *(v8 + 4032) = *(v16 - 8);
  *(v8 + 4040) = swift_task_alloc();
  *(v8 + 4048) = swift_task_alloc();
  *(v8 + 4056) = swift_task_alloc();
  *(v8 + 4064) = swift_task_alloc();
  *(v8 + 4072) = swift_task_alloc();
  *(v8 + 4080) = swift_task_alloc();
  *(v8 + 4088) = swift_task_alloc();
  *(v8 + 4096) = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  *(v8 + 4104) = swift_task_alloc();
  *(v8 + 4112) = swift_task_alloc();
  *(v8 + 4120) = swift_task_alloc();
  *(v8 + 4128) = swift_task_alloc();
  *(v8 + 4136) = swift_task_alloc();
  *(v8 + 4144) = swift_task_alloc();
  *(v8 + 4152) = swift_task_alloc();
  *(v8 + 4160) = swift_task_alloc();
  sub_1001F0C48(&qword_100783C68);
  *(v8 + 4168) = swift_task_alloc();
  v17 = type metadata accessor for ConfirmationSheetButtonStyle();
  *(v8 + 4176) = v17;
  *(v8 + 4184) = *(v17 - 8);
  *(v8 + 4192) = swift_task_alloc();
  type metadata accessor for ConfirmationSheetButton();
  *(v8 + 4200) = swift_task_alloc();
  sub_1001F0C48(&qword_100783C70);
  *(v8 + 4208) = swift_task_alloc();
  sub_1001F0C48(&qword_100783C78);
  *(v8 + 4216) = swift_task_alloc();
  v18 = type metadata accessor for ConfirmationSheetContext();
  *(v8 + 4224) = v18;
  *(v8 + 4232) = *(v18 - 8);
  *(v8 + 4240) = swift_task_alloc();
  *(v8 + 4248) = swift_task_alloc();
  *(v8 + 4256) = swift_task_alloc();
  *(v8 + 4264) = swift_task_alloc();
  sub_1001F0C48(&qword_100783C80);
  *(v8 + 4272) = swift_task_alloc();
  *(v8 + 4280) = swift_task_alloc();
  *(v8 + 4288) = swift_projectBox();
  *(v8 + 4296) = swift_projectBox();

  return _swift_task_switch(sub_1004139E4, a6, 0);
}

uint64_t sub_1004139E4()
{
  v1 = *(v0 + 210);
  *(v0 + 4304) = *(*sub_100006D8C(*(v0 + 3712), *(*(v0 + 3712) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_localizer);
  if (v1)
  {
    if (v1 == 1)
    {
      *(v0 + 720) = 69;
      *(v0 + 776) = 0;
      *(v0 + 728) = 0u;
      *(v0 + 744) = 0u;
      *(v0 + 760) = 0u;
      *(v0 + 784) = 41;

      v2 = swift_task_alloc();
      *(v0 + 4416) = v2;
      *v2 = v0;
      v2[1] = sub_100414B08;
      v3 = v0 + 720;
    }

    else
    {
      v16 = *(v0 + 3752);
      *(v0 + 144) = *(v0 + 3744);
      *(v0 + 152) = v16;
      *(v0 + 208) = 29;

      v17 = swift_task_alloc();
      *(v0 + 4472) = v17;
      *v17 = v0;
      v17[1] = sub_100415478;
      v3 = v0 + 144;
    }

LABEL_7:

    return sub_1006600F0(v3);
  }

  v4 = *(*(v0 + 3720) + 112);
  *(v0 + 4312) = v4;
  v5 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage;
  *(v0 + 4320) = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage;
  v6 = *(v4 + v5);
  v7 = *(*v6 + class metadata base offset for ManagedBuffer + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v6 + v8));
  sub_10020A980(v6 + v7, v0 + 2944);
  os_unfair_lock_unlock((v6 + v8));
  v9 = *(v0 + 2968);
  v10 = *(v0 + 2976);
  sub_100006D8C((v0 + 2944), v9);
  v11 = (*(v10 + 56))(v9, v10);
  *(v0 + 4328) = v12;
  if (v12)
  {
    v13 = v12;
    *(v0 + 4336) = v11;
    v14 = v11;
    sub_10000710C(v0 + 2944);
    *(v0 + 1080) = v14;
    *(v0 + 1088) = v13;
    *(v0 + 1144) = 27;

    v15 = swift_task_alloc();
    *(v0 + 4344) = v15;
    *v15 = v0;
    v15[1] = sub_10041401C;
    v3 = v0 + 1080;
    goto LABEL_7;
  }

  sub_10000710C(v0 + 2944);
  static Logger.install.getter();

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v0 + 3720);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    v24 = *(v21 + 160);
    *(v22 + 4) = v24;
    *v23 = v24;
    v25 = v24;
    _os_log_impl(&_mh_execute_header, v19, v20, "[%@] Failed to show exception request sheet: unable to determine distributor's name", v22, 0xCu);
    sub_1000032A8(v23, &qword_10077F920);
  }

  v26 = *(v0 + 4040);
  v27 = *(v0 + 4032);
  v28 = *(v0 + 4024);

  (*(v27 + 8))(v26, v28);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_10041401C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 3216) = v2;
  *(v4 + 3224) = a1;
  *(v4 + 3232) = a2;
  v5 = *(v3 + 4336);
  v6 = *(v3 + 4328);
  v7 = *v2;

  *(v4 + 1152) = v5;
  *(v4 + 1160) = v6;
  *(v4 + 1216) = 28;
  v8 = swift_task_alloc();
  *(v4 + 4352) = v8;
  *v8 = v7;
  v8[1] = sub_1004141B0;

  return sub_1006600F0(v4 + 1152);
}

uint64_t sub_1004141B0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 3240) = v2;
  *(v3 + 3248) = a1;
  *(v3 + 3256) = a2;
  v4 = *v2;

  *(v3 + 1224) = 3;
  *(v3 + 1232) = 0u;
  *(v3 + 1248) = 0u;
  *(v3 + 1264) = 0u;
  *(v3 + 1280) = 0;
  *(v3 + 1288) = 41;
  v5 = swift_task_alloc();
  *(v3 + 4360) = v5;
  *v5 = v4;
  v5[1] = sub_100414344;

  return sub_1006600F0(v3 + 1224);
}

uint64_t sub_100414344(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 3720);
  *(v3 + 4368) = a1;
  *(v3 + 4376) = a2;

  return _swift_task_switch(sub_100414460, v4, 0);
}

uint64_t sub_100414460()
{
  v1 = *(v0 + 4320);
  v2 = *(v0 + 4312);
  v3 = *(v0 + 4280);
  sub_10020A980(v2 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_bag, v0 + 2704);
  sub_100006D8C((v0 + 2704), *(v0 + 2728));
  sub_1003655C8();
  ConfirmationSheetMoreInformationLink.init(label:URL:)();
  sub_10000710C(v0 + 2704);
  v4 = type metadata accessor for ConfirmationSheetMoreInformationLink();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = *(v2 + v1);
  v6 = *(*v5 + class metadata base offset for ManagedBuffer + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_10020A980(v5 + v6, v0 + 2664);
  os_unfair_lock_unlock((v5 + v7));
  v8 = *(v0 + 2688);
  v9 = *(v0 + 2696);
  sub_100006D8C((v0 + 2664), v8);
  *(v0 + 4384) = (*(v9 + 40))(v8, v9);
  *(v0 + 4392) = v10;

  sub_10000710C(v0 + 2664);
  *(v0 + 1296) = 85;
  *(v0 + 1304) = 0u;
  *(v0 + 1320) = 0u;
  *(v0 + 1336) = 0u;
  *(v0 + 1352) = 0;
  *(v0 + 1360) = 41;
  v11 = swift_task_alloc();
  *(v0 + 4400) = v11;
  *v11 = v0;
  v11[1] = sub_100414698;

  return sub_1006600F0(v0 + 1296);
}

uint64_t sub_100414698(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[408] = v2;
  v4[409] = a1;
  v4[410] = a2;
  v5 = v3[542];
  v6 = v3[541];
  v7 = v3[467];
  v8 = v3[466];
  v9 = *v2;

  v4[171] = v8;
  v4[172] = v7;
  v4[173] = v5;
  v4[174] = v6;
  v10 = *(v4 + 385);
  *(v4 + 175) = *(v4 + 383);
  *(v4 + 177) = v10;
  *(v4 + 1432) = 38;

  v11 = swift_task_alloc();
  v4[551] = v11;
  *v11 = v9;
  v11[1] = sub_100414880;

  return sub_1006600F0((v4 + 171));
}

uint64_t sub_100414880(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *v2;

  v7 = *(v5 + 3272);
  v8 = *(v5 + 3280);
  v9 = *(v5 + 4392);
  v10 = *(v5 + 4384);
  v11 = *(v5 + 3248);
  v12 = *(v5 + 3256);
  v13 = *(v5 + 3224);
  v14 = *(v5 + 3232);
  *(v5 + 4624) = 0;
  *(v5 + 4616) = v9;
  *(v5 + 4608) = v10;
  *(v5 + 4632) = v14;
  *(v5 + 4640) = v13;
  *(v5 + 4648) = v12;
  *(v5 + 4656) = v11;
  *(v5 + 4664) = v8;
  *(v5 + 4672) = v7;
  *(v5 + 4680) = a2;
  *(v5 + 4688) = a1;
  *(v5 + 1440) = 71;
  *(v5 + 1448) = 0u;
  *(v5 + 1464) = 0u;
  *(v5 + 1480) = 0u;
  *(v5 + 1496) = 0;
  *(v5 + 1504) = 41;
  v15 = swift_task_alloc();
  *(v5 + 4696) = v15;
  *v15 = v6;
  v15[1] = sub_100416348;

  return sub_1006600F0(v5 + 1440);
}

uint64_t sub_100414B08(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 3288) = v2;
  *(v4 + 3296) = a1;
  *(v4 + 3304) = a2;
  v5 = *(v3 + 3752);
  v6 = *(v3 + 3744);
  v7 = *v2;

  *(v4 + 792) = v6;
  *(v4 + 800) = v5;
  *(v4 + 856) = 26;
  v8 = swift_task_alloc();
  *(v4 + 4424) = v8;
  *v8 = v7;
  v8[1] = sub_100414C9C;

  return sub_1006600F0(v4 + 792);
}

uint64_t sub_100414C9C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 3312) = v2;
  *(v3 + 3320) = a1;
  *(v3 + 3328) = a2;
  v4 = *v2;

  *(v3 + 864) = 82;
  *(v3 + 872) = 0u;
  *(v3 + 888) = 0u;
  *(v3 + 904) = 0u;
  *(v3 + 920) = 0;
  *(v3 + 928) = 41;
  v5 = swift_task_alloc();
  *(v3 + 4432) = v5;
  *v5 = v4;
  v5[1] = sub_100414E14;

  return sub_1006600F0(v3 + 864);
}

uint64_t sub_100414E14(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 3720);
  *(v3 + 4440) = a1;
  *(v3 + 4448) = a2;

  return _swift_task_switch(sub_100414F30, v4, 0);
}

uint64_t sub_100414F30()
{
  v1 = *(v0 + 4280);
  sub_10020A980(*(*(v0 + 3720) + 112) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_bag, v0 + 3024);
  sub_100006D8C((v0 + 3024), *(v0 + 3048));
  sub_1003655C8();
  ConfirmationSheetMoreInformationLink.init(label:URL:)();
  sub_10000710C(v0 + 3024);
  v2 = type metadata accessor for ConfirmationSheetMoreInformationLink();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  *(v0 + 936) = 85;
  *(v0 + 944) = 0u;
  *(v0 + 960) = 0u;
  *(v0 + 976) = 0u;
  *(v0 + 992) = 0;
  *(v0 + 1000) = 41;
  v3 = swift_task_alloc();
  *(v0 + 4456) = v3;
  *v3 = v0;
  v3[1] = sub_1004150AC;

  return sub_1006600F0(v0 + 936);
}

uint64_t sub_1004150AC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 3336) = v2;
  *(v4 + 3344) = a1;
  *(v4 + 3352) = a2;
  v5 = *(v3 + 3736);
  v6 = *(v3 + 3728);
  v7 = *v2;

  *(v4 + 1008) = v6;
  *(v4 + 1016) = v5;
  v8 = *(v4 + 2584);
  *(v4 + 1024) = *(v4 + 2568);
  *(v4 + 1040) = v8;
  *(v4 + 1056) = *(v4 + 2600);
  *(v4 + 1072) = 39;
  v9 = swift_task_alloc();
  *(v4 + 4464) = v9;
  *v9 = v7;
  v9[1] = sub_100415258;

  return sub_1006600F0(v4 + 1008);
}

uint64_t sub_100415258(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *v2;

  v7 = *(v5 + 3344);
  v8 = *(v5 + 3352);
  v9 = *(v5 + 3320);
  v10 = *(v5 + 3328);
  v11 = *(v5 + 3296);
  v12 = *(v5 + 3304);
  *(v5 + 4608) = 0;
  *(v5 + 4624) = 0;
  *(v5 + 4616) = 0;
  *(v5 + 4632) = v12;
  *(v5 + 4640) = v11;
  *(v5 + 4648) = v10;
  *(v5 + 4656) = v9;
  *(v5 + 4664) = v8;
  *(v5 + 4672) = v7;
  *(v5 + 4680) = a2;
  *(v5 + 4688) = a1;
  *(v5 + 1440) = 71;
  *(v5 + 1496) = 0;
  *(v5 + 1464) = 0u;
  *(v5 + 1480) = 0u;
  *(v5 + 1448) = 0u;
  *(v5 + 1504) = 41;
  v13 = swift_task_alloc();
  *(v5 + 4696) = v13;
  *v13 = v6;
  v13[1] = sub_100416348;

  return sub_1006600F0(v5 + 1440);
}

uint64_t sub_100415478(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[420] = v2;
  v3[421] = a1;
  v3[422] = a2;
  v7 = *v2;

  v3[27] = 70;
  v4 = (v3 + 27);
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0;
  *(v4 + 64) = 41;
  v5 = swift_task_alloc();
  *(v4 + 4264) = v5;
  *v5 = v7;
  v5[1] = sub_1004155D8;

  return sub_1006600F0(v4);
}

uint64_t sub_1004155D8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[423] = v2;
  v4[424] = a1;
  v4[425] = a2;
  v5 = v3[465];

  return _swift_task_switch(sub_1004156F4, v5, 0);
}

uint64_t sub_1004156F4()
{
  v1 = *(v0 + 4280);
  v2 = type metadata accessor for ConfirmationSheetMoreInformationLink();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  *(v0 + 288) = 29;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0u;
  *(v0 + 328) = 0u;
  *(v0 + 344) = 0;
  *(v0 + 352) = 41;
  v3 = swift_task_alloc();
  *(v0 + 4488) = v3;
  *v3 = v0;
  v3[1] = sub_1004157F4;

  return sub_1006600F0(v0 + 288);
}

uint64_t sub_1004157F4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  *(v3 + 4496) = a1;
  *(v3 + 4504) = a2;

  *(v3 + 360) = 37;
  *(v3 + 368) = 0u;
  *(v3 + 384) = 0u;
  *(v3 + 400) = 0u;
  *(v3 + 416) = 0;
  *(v3 + 424) = 41;
  v4 = swift_task_alloc();
  *(v3 + 4512) = v4;
  *v4 = v6;
  v4[1] = sub_10041596C;

  return sub_1006600F0(v3 + 360);
}

uint64_t sub_10041596C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  *(v3 + 4520) = a1;
  *(v3 + 4528) = a2;

  *(v3 + 432) = 31;
  *(v3 + 440) = 0u;
  *(v3 + 456) = 0u;
  *(v3 + 472) = 0u;
  *(v3 + 488) = 0;
  *(v3 + 496) = 41;
  v4 = swift_task_alloc();
  *(v3 + 4536) = v4;
  *v4 = v6;
  v4[1] = sub_100415AE8;

  return sub_1006600F0(v3 + 432);
}

uint64_t sub_100415AE8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  *(v3 + 4544) = a1;
  *(v3 + 4552) = a2;

  *(v3 + 504) = 74;
  *(v3 + 512) = 0u;
  *(v3 + 528) = 0u;
  *(v3 + 544) = 0u;
  *(v3 + 560) = 0;
  *(v3 + 568) = 41;
  v4 = swift_task_alloc();
  *(v3 + 4560) = v4;
  *v4 = v6;
  v4[1] = sub_100415C60;

  return sub_1006600F0(v3 + 504);
}

uint64_t sub_100415C60(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 3720);
  *(v3 + 4568) = a1;
  *(v3 + 4576) = a2;

  return _swift_task_switch(sub_100415D7C, v4, 0);
}

uint64_t sub_100415D7C()
{
  sub_1001F0C48(&qword_100783C88);
  type metadata accessor for ConfirmationSheetBulletPoint();
  v1 = swift_allocObject();
  *(v0 + 4584) = v1;
  *(v1 + 16) = xmmword_10069F6E0;
  ConfirmationSheetBulletPoint.init(icon:header:body:)();
  ConfirmationSheetBulletPoint.init(icon:header:body:)();
  *(v0 + 576) = 86;
  *(v0 + 584) = 0u;
  *(v0 + 600) = 0u;
  *(v0 + 616) = 0u;
  *(v0 + 632) = 0;
  *(v0 + 640) = 41;
  v2 = swift_task_alloc();
  *(v0 + 4592) = v2;
  *v2 = v0;
  v2[1] = sub_100415F6C;

  return sub_1006600F0(v0 + 576);
}

uint64_t sub_100415F6C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 3408) = v2;
  *(v4 + 3416) = a1;
  *(v4 + 3424) = a2;
  v5 = *(v3 + 3736);
  v6 = *(v3 + 3728);
  v7 = *v2;

  *(v4 + 648) = v6;
  *(v4 + 656) = v5;
  v8 = *(v4 + 2632);
  *(v4 + 664) = *(v4 + 2616);
  *(v4 + 680) = v8;
  *(v4 + 696) = *(v4 + 2648);
  *(v4 + 712) = 39;
  v9 = swift_task_alloc();
  *(v4 + 4600) = v9;
  *v9 = v7;
  v9[1] = sub_100416118;

  return sub_1006600F0(v4 + 648);
}

uint64_t sub_100416118(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *v2;

  v7 = *(v5 + 3416);
  v8 = *(v5 + 3424);
  v9 = *(v5 + 3392);
  v10 = *(v5 + 3400);
  v11 = *(v5 + 3368);
  v12 = *(v5 + 3376);
  *(v5 + 4624) = *(v5 + 4584);
  *(v5 + 4608) = 0u;
  *(v5 + 4632) = v12;
  *(v5 + 4640) = v11;
  *(v5 + 4648) = v10;
  *(v5 + 4656) = v9;
  *(v5 + 4664) = v8;
  *(v5 + 4672) = v7;
  *(v5 + 4680) = a2;
  *(v5 + 4688) = a1;
  *(v5 + 1440) = 71;
  *(v5 + 1448) = 0u;
  *(v5 + 1464) = 0u;
  *(v5 + 1480) = 0u;
  *(v5 + 1496) = 0;
  *(v5 + 1504) = 41;
  v13 = swift_task_alloc();
  *(v5 + 4696) = v13;
  *v13 = v6;
  v13[1] = sub_100416348;

  return sub_1006600F0(v5 + 1440);
}

uint64_t sub_100416348(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  *(v3 + 4704) = a1;
  *(v3 + 4712) = a2;

  *(v3 + 1512) = 7;
  *(v3 + 1520) = 0u;
  *(v3 + 1536) = 0u;
  *(v3 + 1552) = 0u;
  *(v3 + 1568) = 0;
  *(v3 + 1576) = 41;
  v4 = swift_task_alloc();
  *(v3 + 4720) = v4;
  *v4 = v6;
  v4[1] = sub_1004164C4;

  return sub_1006600F0(v3 + 1512);
}

uint64_t sub_1004164C4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  *(v3 + 4728) = a1;
  *(v3 + 4736) = a2;

  *(v3 + 1584) = 12;
  *(v3 + 1592) = 0u;
  *(v3 + 1608) = 0u;
  *(v3 + 1624) = 0u;
  *(v3 + 1640) = 0;
  *(v3 + 1648) = 41;
  v4 = swift_task_alloc();
  *(v3 + 4744) = v4;
  *v4 = v6;
  v4[1] = sub_100416640;

  return sub_1006600F0(v3 + 1584);
}

uint64_t sub_100416640(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 3720);
  *(v3 + 4752) = a1;
  *(v3 + 4760) = a2;

  return _swift_task_switch(sub_10041675C, v4, 0);
}

uint64_t sub_10041675C()
{
  v51 = *(v0 + 4288);
  v1 = *(v0 + 4280);
  v2 = *(v0 + 4272);
  v3 = *(v0 + 4216);
  v48 = *(v0 + 4208);
  v49 = *(v0 + 4192);
  v4 = *(v0 + 4184);
  v5 = *(v0 + 4168);
  v50 = *(v0 + 4160);
  v6 = *(v0 + 3760);
  v7 = *(v0 + 3720);
  v8 = *(v7 + 160);
  LogKey.description.getter();

  v9 = type metadata accessor for ConfirmationSheetSymbol();
  *(v0 + 4768) = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  *(v0 + 4776) = v11;
  *(v0 + 4784) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11(v3, 1, 1, v9);
  sub_100005934(v1, v2, &qword_100783C80);
  v12 = *(type metadata accessor for ADP() + 24);
  *(v0 + 212) = v12;
  v13 = v6 + v12;
  v14 = *(v6 + v12 + 16);
  *(v0 + 4792) = v14;
  *(v0 + 3672) = v14;
  dispatch thunk of CustomStringConvertible.description.getter();
  v15 = *(v13 + 8);
  *(v0 + 4800) = v15;
  *(v0 + 3680) = v15;
  dispatch thunk of CustomStringConvertible.description.getter();
  ConfirmationSheetMiniProductPageConfiguration.init(itemID:versionID:distributorID:isForAppStore:)();
  v16 = type metadata accessor for ConfirmationSheetMiniProductPageConfiguration();
  *(v0 + 4808) = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  *(v0 + 4816) = v18;
  *(v0 + 4824) = (v17 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v18(v48, 0, 1, v16);
  *(v0 + 284) = enum case for ConfirmationSheetButtonStyle.white(_:);
  v19 = *(v4 + 104);
  *(v0 + 4832) = v19;
  *(v0 + 4840) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v19(v49);

  ConfirmationSheetButton.init(text:style:)();
  swift_beginAccess();
  sub_100005934(v51, v50, &unk_1007809F0);

  ConfirmationSheetOsloSheetConfiguration.init(paymentSheetTitle:paymentSheetLabel:processingText:iconURL:)();
  v20 = enum case for ConfirmationSheetPostPrimaryButtonAction.osloAuthentication(_:);
  v21 = type metadata accessor for ConfirmationSheetPostPrimaryButtonAction();
  *(v0 + 4848) = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 104);
  *(v0 + 4856) = v23;
  *(v0 + 4864) = (v22 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v23(v5, v20, v21);
  v24 = *(v22 + 56);
  *(v0 + 4872) = v24;
  *(v0 + 4880) = (v22 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v24(v5, 0, 1, v21);
  ConfirmationSheetContext.init(logKey:symbolConfiguration:title:subtitle:moreInformationLink:bulletPoints:miniProductPageConfiguration:primaryButton:secondaryButtonText:postPrimaryButtonAction:)();
  static Logger.install.getter();

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    v29 = *(v7 + 160);
    *(v27 + 4) = v29;
    *v28 = v29;
    v30 = v29;
    _os_log_impl(&_mh_execute_header, v25, v26, "[%@] Presenting sheet to confirm if the user wants to request an exception.", v27, 0xCu);
    sub_1000032A8(v28, &qword_10077F920);
  }

  v31 = *(v0 + 4264);
  v32 = *(v0 + 4256);
  v33 = *(v0 + 4232);
  v34 = *(v0 + 4224);
  v35 = *(v0 + 4096);
  v36 = *(v0 + 4032);
  v37 = *(v0 + 4024);

  v38 = *(v36 + 8);
  *(v0 + 4888) = v38;
  *(v0 + 4896) = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v38(v35, v37);
  v39 = *(v33 + 16);
  *(v0 + 4904) = v39;
  *(v0 + 4912) = (v33 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v39(v32, v31, v34);
  *(v0 + 4920) = type metadata accessor for ConfirmationSheetTask();
  v40 = swift_allocObject();
  *(v0 + 4928) = v40;
  v39(v40 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon21ConfirmationSheetTask_context, v32, v34);
  v41 = ConfirmationSheetContext.logKey.getter();
  v43 = v42;
  v44 = *(v33 + 8);
  *(v0 + 4936) = v44;
  *(v0 + 4944) = (v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v44(v32, v34);
  v45 = (v40 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon21ConfirmationSheetTask_logKey);
  *v45 = v41;
  v45[1] = v43;
  v46 = swift_task_alloc();
  *(v0 + 4952) = v46;
  *v46 = v0;
  v46[1] = sub_100416DC4;

  return sub_100652C68();
}

uint64_t sub_100416DC4(char a1)
{
  v4 = *v2;
  *(*v2 + 4960) = v1;

  if (v1)
  {
    v5 = *(v4 + 3720);

    v6 = sub_1004174F0;
    v7 = v5;
  }

  else
  {
    v7 = *(v4 + 3720);
    *(v4 + 281) = a1 & 1;
    v6 = sub_100416F24;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100416F24()
{
  if (*(v0 + 281) == 1)
  {
    static Logger.install.getter();

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = *(v0 + 3720);
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      v6 = *(v3 + 160);
      *(v4 + 4) = v6;
      *v5 = v6;
      v7 = v6;
      _os_log_impl(&_mh_execute_header, v1, v2, "[%@] User confirmed the exception request.", v4, 0xCu);
      sub_1000032A8(v5, &qword_10077F920);
    }

    v8 = *(v0 + 4888);
    v9 = *(v0 + 4296);
    v10 = *(v0 + 4288);
    v27 = *(v0 + 4152);
    v28 = *(v0 + 4144);
    v11 = *(v0 + 4088);
    v12 = *(v0 + 4024);
    v29 = *(v0 + 3720);
    v13 = *(v0 + 3712);

    v8(v11, v12);
    UUID.init()();
    *(v0 + 4968) = *(*sub_100006D8C(v13, v13[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_exceptionRequestService);
    swift_beginAccess();
    sub_100005934(v10, v27, &unk_1007809F0);
    swift_beginAccess();
    sub_100005934(v9, v28, &unk_1007809F0);
    if (*(v29 + 152))
    {

      v14 = 0;
      v15 = 0;
    }

    else
    {
      v22 = *(v0 + 3720);
      v24 = v22[17];
      v23 = v22[18];
      v26 = v22[15];
      v25 = v22[16];

      v14 = audit_token_t.signingIdentifier.getter(v26, v25, v24, v23);
    }

    *(v0 + 4984) = v15;
    *(v0 + 4976) = v14;
    *(v0 + 4992) = *(*(v0 + 3720) + 112);

    return _swift_task_switch(sub_10041783C, 0, 0);
  }

  else
  {
    v16 = *(v0 + 4936);
    v17 = *(v0 + 4928);
    v30 = *(v0 + 4280);
    v18 = *(v0 + 4264);
    v19 = *(v0 + 4224);

    swift_setDeallocating();
    v16(v17 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon21ConfirmationSheetTask_context, v19);

    swift_deallocClassInstance();

    v16(v18, v19);
    sub_1000032A8(v30, &qword_100783C80);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_1004174F0()
{
  v1 = v0[617];
  v2 = v0[616];
  v3 = v0[528];

  swift_setDeallocating();
  v1(v2 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon21ConfirmationSheetTask_context, v3);

  swift_deallocClassInstance();
  v4 = v0[535];
  (v0[617])(v0[533], v0[528]);
  sub_1000032A8(v4, &qword_100783C80);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10041783C()
{
  v1 = sub_1005A4320();
  *(v0 + 5000) = v1;
  *(v0 + 5008) = v2;
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = *(v0 + 4992);
    v6 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage;
    *(v0 + 5016) = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage;
    v7 = *(v5 + v6);
    v8 = *(*v7 + class metadata base offset for ManagedBuffer + 16);
    v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v7 + v9));
    sub_10020A980(v7 + v8, v0 + 2744);
    os_unfair_lock_unlock((v7 + v9));
    *(v0 + 5024) = sub_1001F0C48(&qword_10077E970);
    v10 = swift_dynamicCast();
    *(v0 + 282) = v10;
    if (v10)
    {
    }

    else if (*(v0 + 211))
    {
      v21 = *(v0 + 3808);
      v22 = *(v0 + 3800);
      v23 = *(v0 + 3752);
      v24 = *(v0 + 3744);
      *(v0 + 1656) = v3;
      *(v0 + 1664) = v4;
      *(v0 + 1672) = v24;
      *(v0 + 1680) = v23;
      *(v0 + 1688) = v22;
      *(v0 + 1696) = v21;
      *(v0 + 1720) = 32;

      v25 = swift_task_alloc();
      *(v0 + 5360) = v25;
      *v25 = v0;
      v25[1] = sub_10041ACF4;
      v20 = v0 + 1656;
      goto LABEL_12;
    }

    v26 = *(v0 + 3808);
    v27 = *(v0 + 3800);
    v28 = *(v0 + 3776);
    v29 = *(v0 + 3768);
    v30 = *(v0 + 3736);
    v31 = *(v0 + 3728);
    *(v0 + 2440) = v3;
    *(v0 + 2448) = v4;
    *(v0 + 2456) = v31;
    *(v0 + 2464) = v30;
    *(v0 + 2472) = v29;
    *(v0 + 2480) = v28;
    *(v0 + 2488) = v27;
    *(v0 + 2496) = v26;
    v32 = *(v0 + 2440);
    v33 = *(v0 + 2456);
    v34 = *(v0 + 2472);
    *(v0 + 1776) = *(v0 + 2488);
    *(v0 + 1760) = v34;
    *(v0 + 1744) = v33;
    *(v0 + 1728) = v32;
    *(v0 + 1792) = 31;

    v35 = swift_task_alloc();
    *(v0 + 5032) = v35;
    *v35 = v0;
    v35[1] = sub_100417CA0;
    v20 = v0 + 1728;
  }

  else
  {

    if (qword_10077E568 != -1)
    {
      swift_once();
    }

    sub_1002710CC(*(v0 + 4024), qword_1007880E8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "[AskForException] Unable to send exception request: unable to determine user's display name.", v13, 2u);
    }

    v14 = *(v0 + 4152);
    v15 = *(v0 + 4144);
    v16 = *(v0 + 3968);
    v17 = *(v0 + 3904);
    v18 = *(v0 + 3896);

    sub_1000032A8(v15, &unk_1007809F0);
    sub_1000032A8(v14, &unk_1007809F0);
    (*(v17 + 56))(v16, 1, 1, v18);
    *(v0 + 2160) = 72;
    *(v0 + 2168) = 0u;
    *(v0 + 2184) = 0u;
    *(v0 + 2200) = 0u;
    *(v0 + 2216) = 0;
    *(v0 + 2224) = 41;
    v19 = swift_task_alloc();
    *(v0 + 5312) = v19;
    *v19 = v0;
    v19[1] = sub_100419F88;
    v20 = v0 + 2160;
  }

LABEL_12:

  return sub_1006600F0(v20);
}

uint64_t sub_100417CA0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[429] = v2;
  v3[430] = a1;
  v3[431] = a2;

  sub_1000032A8((v3 + 305), &qword_100783C90);

  return _swift_task_switch(sub_100417DC0, 0, 0);
}

uint64_t sub_100417DC0()
{
  v77 = v0;
  v1 = *(v0 + 3440);
  v2 = *(v0 + 282);
  v3 = *(v0 + 5016);
  v4 = *(v0 + 4992);
  *(v0 + 5040) = *(v0 + 3448);
  *(v0 + 5048) = v1;
  v5 = *(v4 + v3);
  v6 = *(*v5 + class metadata base offset for ManagedBuffer + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_10020A980(v5 + v6, v0 + 2784);
  os_unfair_lock_unlock((v5 + v7));
  swift_dynamicCast();
  if ((v2 & 1) == 0)
  {
  }

  v8 = *(v0 + 4136);
  v9 = *(v0 + 4128);
  v10 = *(v0 + 3936);
  v11 = *(v0 + 3928);
  sub_100005934(*(v0 + 4152), v8, &unk_1007809F0);
  sub_100005934(v8, v9, &unk_1007809F0);
  if ((*(v10 + 48))(v9, 1, v11) == 1)
  {
    sub_1000032A8(*(v0 + 4128), &unk_1007809F0);
  }

  else
  {
    (*(*(v0 + 3936) + 32))(*(v0 + 3952), *(v0 + 4128), *(v0 + 3928));
    URL.absoluteString.getter();
    v12._countAndFlagsBits = 0x676E702E6262;
    v12._object = 0xE600000000000000;
    v13 = String.hasSuffix(_:)(v12);

    if (v13)
    {
      v14 = *(v0 + 4160);
      v15 = *(v0 + 4136);
      v16 = *(v0 + 3952);
      v17 = *(v0 + 3936);
      v18 = *(v0 + 3928);
      *(v0 + 3632) = URL.absoluteString.getter();
      *(v0 + 3640) = v19;
      *(v0 + 3648) = 0x676E702E6262;
      *(v0 + 3656) = 0xE600000000000000;
      *(v0 + 3552) = 0x676E702E6477;
      *(v0 + 3560) = 0xE600000000000000;
      sub_100005E50();
      StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

      URL.init(string:)();

      (*(v17 + 8))(v16, v18);
      sub_1000032A8(v15, &unk_1007809F0);
      sub_10020A668(v14, v15, &unk_1007809F0);
    }

    else
    {
      (*(*(v0 + 3936) + 8))(*(v0 + 3952), *(v0 + 3928));
    }
  }

  v20 = *(v0 + 5016);
  v21 = *(v0 + 4992);
  v22 = *(v0 + 4144);
  v23 = *(v0 + 4136);
  v24 = *(v0 + 4120);
  v25 = *(v0 + 4112);
  v26 = *(v0 + 3760) + *(v0 + 212);
  *(v0 + 5056) = *(v26 + 24);
  *(v0 + 5064) = *(v26 + 32);
  sub_100005934(v23, v24, &unk_1007809F0);
  v27 = *(v21 + v20);
  v28 = *(*v27 + class metadata base offset for ManagedBuffer + 16);
  v29 = (*(*v27 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v27 + v29));
  sub_10020A980(v27 + v28, v0 + 2824);
  os_unfair_lock_unlock((v27 + v29));
  v30 = *(v0 + 2848);
  v31 = *(v0 + 2856);
  sub_100006D8C((v0 + 2824), v30);
  (*(v31 + 40))(v30, v31);
  sub_100005934(v22, v25, &unk_1007809F0);
  v32 = *(v21 + v20);
  v33 = *(*v32 + class metadata base offset for ManagedBuffer + 16);
  v34 = (*(*v32 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v32 + v34));
  sub_10020A980(v32 + v33, v0 + 2864);
  os_unfair_lock_unlock((v32 + v34));
  if (swift_dynamicCast())
  {
  }

  v35 = *(v0 + 5016);
  v36 = *(v0 + 4992);
  v72 = *(v0 + 4960);
  v70 = *(v0 + 4160);
  v71 = *(v0 + 4104);
  v74 = *(v0 + 3944);
  v37 = *(v0 + 3936);
  v68 = *(v0 + 3928);
  v38 = *(v0 + 3888);
  v39 = *(v0 + 3880);
  v69 = *(v0 + 3872);
  v40 = *(v36 + v35);
  v41 = *(*v40 + class metadata base offset for ManagedBuffer + 16);
  v42 = (*(*v40 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v40 + v42));
  sub_10020A980(v40 + v41, v0 + 2904);
  os_unfair_lock_unlock((v40 + v42));
  swift_dynamicCast();
  v43 = *(v36 + v35);
  v44 = *(*v43 + class metadata base offset for ManagedBuffer + 16);
  v45 = (*(*v43 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v43 + v45));
  v46 = type metadata accessor for ADPInstallConfiguration.Storage(0);
  (*(v39 + 16))(v38, v43 + *(v46 + 28) + v44, v69);
  os_unfair_lock_unlock((v43 + v45));
  AppInstallRequestType.rawValue.getter();
  (*(v39 + 8))(v38, v69);
  (*(v37 + 16))(v74, v36 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_url, v68);
  v47 = *(v36 + v35);
  v48 = (*(*v47 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v47 + v48));

  os_unfair_lock_unlock((v47 + v48));
  v49 = *(v36 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_authenticationContextData + 8);
  v67 = *(v36 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_authenticationContextData);
  sub_100005934(v36 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_referrer, v70, &unk_1007809F0);
  sub_100005934(v36 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_appShareURL, v71, &unk_1007809F0);

  sub_1001DFECC(v67, v49);

  ExceptionRequestMetadata.init(appBundleID:appItemID:appVersionID:appName:requestedAppIconURL:distributorID:distributorName:developerID:developerName:developerSupportURL:isWebApp:isDistributor:askerName:ageRatingString:distributorType:distributorBundleID:distributorDomain:installTypeRawValue:accountID:url:oAuthToken:installVerificationToken:clientID:authenticationContextData:userInitiatedOverride:allowAccountPrompt:originallyRequestedVersionID:itemIDFromButtonConfiguration:referrer:appShareURL:)();
  sub_10000710C(v0 + 2824);
  *(v0 + 5072) = ExceptionRequestMetadata.dictionary()();
  if (v72)
  {
    (*(*(v0 + 3904) + 8))(*(v0 + 3920), *(v0 + 3896));

    if (qword_10077E568 != -1)
    {
      swift_once();
    }

    sub_1002710CC(*(v0 + 4024), qword_1007880E8);
    swift_errorRetain();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    v52 = os_log_type_enabled(v50, v51);
    v53 = *(v0 + 4152);
    v54 = *(v0 + 4144);
    v55 = *(v0 + 4136);
    if (v52)
    {
      v56 = swift_slowAlloc();
      v75 = v53;
      v76[0] = swift_slowAlloc();
      v57 = v76[0];
      *v56 = 136315138;
      swift_getErrorValue();
      v58 = Error.localizedDescription.getter();
      v73 = v54;
      v60 = sub_1002346CC(v58, v59, v76);

      *(v56 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v50, v51, "Error when requesting exception: %s", v56, 0xCu);
      sub_10000710C(v57);

      sub_1000032A8(v55, &unk_1007809F0);
      sub_1000032A8(v73, &unk_1007809F0);
      v61 = v75;
    }

    else
    {

      sub_1000032A8(v55, &unk_1007809F0);
      sub_1000032A8(v54, &unk_1007809F0);
      v61 = v53;
    }

    sub_1000032A8(v61, &unk_1007809F0);
    (*(*(v0 + 3904) + 56))(*(v0 + 3968), 1, 1, *(v0 + 3896));
    *(v0 + 2160) = 72;
    *(v0 + 2168) = 0u;
    *(v0 + 2184) = 0u;
    *(v0 + 2200) = 0u;
    *(v0 + 2216) = 0;
    *(v0 + 2224) = 41;
    v65 = swift_task_alloc();
    *(v0 + 5312) = v65;
    *v65 = v0;
    v65[1] = sub_100419F88;
    v64 = v0 + 2160;
  }

  else
  {
    v62 = *(v0 + 5008);
    *(v0 + 1800) = *(v0 + 5000);
    *(v0 + 1808) = v62;
    *(v0 + 1864) = 30;

    v63 = swift_task_alloc();
    *(v0 + 5080) = v63;
    *v63 = v0;
    v63[1] = sub_100418B80;
    v64 = v0 + 1800;
  }

  return sub_1006600F0(v64);
}

uint64_t sub_100418B80(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  *(v3 + 5088) = a1;
  *(v3 + 5096) = a2;

  *(v3 + 1872) = 13;
  *(v3 + 1880) = 0u;
  *(v3 + 1896) = 0u;
  *(v3 + 1912) = 0u;
  *(v3 + 1928) = 0;
  *(v3 + 1936) = 41;
  v4 = swift_task_alloc();
  *(v3 + 5104) = v4;
  *v4 = v6;
  v4[1] = sub_100418D18;

  return sub_1006600F0(v3 + 1872);
}

uint64_t sub_100418D18(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  *(v3 + 5112) = a1;
  *(v3 + 5120) = a2;

  *(v3 + 1944) = 14;
  *(v3 + 1952) = 0u;
  *(v3 + 1968) = 0u;
  *(v3 + 1984) = 0u;
  *(v3 + 2000) = 0;
  *(v3 + 2008) = 41;
  v4 = swift_task_alloc();
  *(v3 + 5128) = v4;
  *v4 = v6;
  v4[1] = sub_100418E94;

  return sub_1006600F0(v3 + 1944);
}

uint64_t sub_100418E94(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  *(v3 + 5136) = a1;
  *(v3 + 5144) = a2;

  *(v3 + 2016) = 15;
  *(v3 + 2024) = 0u;
  *(v3 + 2040) = 0u;
  *(v3 + 2056) = 0u;
  *(v3 + 2072) = 0;
  *(v3 + 2080) = 41;
  v4 = swift_task_alloc();
  *(v3 + 5152) = v4;
  *v4 = v6;
  v4[1] = sub_100419010;

  return sub_1006600F0(v3 + 2016);
}

uint64_t sub_100419010(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  *(v3 + 5160) = a1;
  *(v3 + 5168) = a2;

  *(v3 + 2088) = 16;
  *(v3 + 2096) = 0u;
  *(v3 + 2112) = 0u;
  *(v3 + 2128) = 0u;
  *(v3 + 2144) = 0;
  *(v3 + 2152) = 41;
  v4 = swift_task_alloc();
  *(v3 + 5176) = v4;
  *v4 = v6;
  v4[1] = sub_10041918C;

  return sub_1006600F0(v3 + 2088);
}

uint64_t sub_10041918C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 5184) = a1;
  *(v3 + 5192) = a2;

  return _swift_task_switch(sub_100419290, 0, 0);
}

uint64_t sub_100419290()
{
  if (qword_10077E568 != -1)
  {
    swift_once();
  }

  sub_1002710CC(v0[503], qword_1007880E8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "[AskForException] Created request metadata dictionary, sending request to APRequestHandler", v3, 2u);
  }

  v25 = v0[634];
  v18 = v0[624];
  v19 = v0[627];
  v4 = v0[599];
  v28 = v0[483];
  v30 = v0[482];
  v26 = v0[481];
  v21 = v0[477];

  v34 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v0[650] = isa;
  v32 = String._bridgeToObjectiveC()();
  v0[651] = v32;

  v31 = String._bridgeToObjectiveC()();
  v0[652] = v31;

  v29 = String._bridgeToObjectiveC()();
  v0[653] = v29;
  v27 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v4];
  v0[654] = v27;
  v5 = *(v18 + v19);
  v6 = *(*v5 + class metadata base offset for ManagedBuffer + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_10020A980(v5 + v6, (v0 + 373));
  os_unfair_lock_unlock((v5 + v7));

  v8 = v0[376];
  v9 = v0[377];
  sub_100006D8C(v0 + 373, v8);
  (*(v9 + 40))(v8, v9);
  v24 = String._bridgeToObjectiveC()();
  v0[655] = v24;

  sub_10000710C((v0 + 373));
  v22 = [objc_allocWithZone(NSNumber) initWithInteger:v21];
  v0[656] = v22;
  v20 = String._bridgeToObjectiveC()();
  v0[657] = v20;

  v23 = String._bridgeToObjectiveC()();
  v0[658] = v23;

  v10 = String._bridgeToObjectiveC()();
  v0[659] = v10;

  v11 = String._bridgeToObjectiveC()();
  v0[660] = v11;

  v12 = String._bridgeToObjectiveC()();
  v0[661] = v12;
  sub_10020965C(v25);

  v13 = objc_allocWithZone(APAskToAgeRestrictionMetadata);
  v14 = Dictionary._bridgeToObjectiveC()().super.isa;

  v15 = [v13 initWithDictionary:v14];
  v0[662] = v15;

  v0[10] = v0;
  v0[15] = v0 + 209;
  v0[11] = sub_100419888;
  swift_continuation_init();
  v0[304] = v26;
  v16 = sub_10020A748(v0 + 301);
  sub_1001F0C48(&unk_10077F940);
  CheckedContinuation.init(continuation:function:)();
  (*(v30 + 32))(v16, v28, v26);
  v0[297] = _NSConcreteStackBlock;
  v0[298] = 1107296256;
  v0[299] = sub_10041DC48;
  v0[300] = &unk_100764308;
  [v34 addExceptionRequestWithUUID:isa type:0 title:v32 message:v31 bundleIdentifier:v29 adamID:v27 distributorID:v24 ageRatingValue:v22 preApprove:v20 postApprove:v23 preDecline:v10 postDecline:v11 responseBundleIdentifier:v12 metadata:v15 withCompletion:v0 + 297];
  (*(v30 + 8))(v16, v26);

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_100419888()
{
  v1 = *(*v0 + 112);
  *(*v0 + 5304) = v1;
  if (v1)
  {
    v2 = sub_100419BE0;
  }

  else
  {
    v2 = sub_100419998;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100419998()
{
  v1 = *(v0 + 5296);
  v2 = *(v0 + 5288);
  v3 = *(v0 + 5280);
  v11 = *(v0 + 5272);
  v12 = *(v0 + 5264);
  v13 = *(v0 + 5256);
  v14 = *(v0 + 5248);
  v15 = *(v0 + 5240);
  v16 = *(v0 + 5232);
  v17 = *(v0 + 5224);
  v18 = *(v0 + 5216);
  v19 = *(v0 + 5208);
  v20 = *(v0 + 5200);
  v4 = *(v0 + 4152);
  v5 = *(v0 + 4144);
  v6 = *(v0 + 4136);
  v7 = *(v0 + 3904);

  sub_1000032A8(v6, &unk_1007809F0);
  sub_1000032A8(v5, &unk_1007809F0);
  sub_1000032A8(v4, &unk_1007809F0);
  LODWORD(v4) = *(v0 + 209);

  if (v4 == 1)
  {
    (*(*(v0 + 3904) + 32))(*(v0 + 3968), *(v0 + 3920), *(v0 + 3896));
    v8 = 0;
  }

  else
  {
    (*(*(v0 + 3904) + 8))(*(v0 + 3920), *(v0 + 3896));
    v8 = 1;
  }

  (*(v7 + 56))(*(v0 + 3968), v8, 1, *(v0 + 3896));
  *(v0 + 2160) = 72;
  *(v0 + 2168) = 0u;
  *(v0 + 2184) = 0u;
  *(v0 + 2200) = 0u;
  *(v0 + 2216) = 0;
  *(v0 + 2224) = 41;
  v9 = swift_task_alloc();
  *(v0 + 5312) = v9;
  *v9 = v0;
  v9[1] = sub_100419F88;

  return sub_1006600F0(v0 + 2160);
}

uint64_t sub_100419BE0()
{
  v34 = v0;
  v1 = *(v0 + 5296);
  v2 = *(v0 + 5288);
  v3 = *(v0 + 5280);
  v4 = *(v0 + 5272);
  v5 = *(v0 + 5264);
  v23 = *(v0 + 5256);
  v24 = *(v0 + 5248);
  v25 = *(v0 + 5240);
  v26 = *(v0 + 5232);
  v27 = *(v0 + 5224);
  v28 = *(v0 + 5216);
  v29 = *(v0 + 5208);
  v31 = *(v0 + 5200);
  v6 = *(v0 + 3920);
  v7 = *(v0 + 3904);
  v8 = *(v0 + 3896);
  swift_willThrow();
  (*(v7 + 8))(v6, v8);

  if (qword_10077E568 != -1)
  {
    swift_once();
  }

  sub_1002710CC(*(v0 + 4024), qword_1007880E8);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 4152);
  v13 = *(v0 + 4144);
  v14 = *(v0 + 4136);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v32 = v12;
    v33 = swift_slowAlloc();
    v16 = v33;
    *v15 = 136315138;
    swift_getErrorValue();
    v17 = Error.localizedDescription.getter();
    v30 = v13;
    v19 = sub_1002346CC(v17, v18, &v33);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "Error when requesting exception: %s", v15, 0xCu);
    sub_10000710C(v16);

    sub_1000032A8(v14, &unk_1007809F0);
    sub_1000032A8(v30, &unk_1007809F0);
    v20 = v32;
  }

  else
  {

    sub_1000032A8(v14, &unk_1007809F0);
    sub_1000032A8(v13, &unk_1007809F0);
    v20 = v12;
  }

  sub_1000032A8(v20, &unk_1007809F0);
  (*(*(v0 + 3904) + 56))(*(v0 + 3968), 1, 1, *(v0 + 3896));
  *(v0 + 2160) = 72;
  *(v0 + 2168) = 0u;
  *(v0 + 2184) = 0u;
  *(v0 + 2200) = 0u;
  *(v0 + 2216) = 0;
  *(v0 + 2224) = 41;
  v21 = swift_task_alloc();
  *(v0 + 5312) = v21;
  *v21 = v0;
  v21[1] = sub_100419F88;

  return sub_1006600F0(v0 + 2160);
}

uint64_t sub_100419F88(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 3456) = v2;
  *(v3 + 3464) = a1;
  *(v3 + 3472) = a2;
  v4 = *v2;
  *(v3 + 5320) = a2;

  *(v3 + 2232) = 73;
  *(v3 + 2240) = 0u;
  *(v3 + 2256) = 0u;
  *(v3 + 2272) = 0u;
  *(v3 + 2288) = 0;
  *(v3 + 2296) = 41;
  v5 = swift_task_alloc();
  *(v3 + 5328) = v5;
  *v5 = v4;
  v5[1] = sub_10041A104;

  return sub_1006600F0(v3 + 2232);
}

uint64_t sub_10041A104(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 3480) = v2;
  *(v3 + 3488) = a1;
  *(v3 + 3496) = a2;
  v4 = *v2;
  *(v3 + 5336) = a2;

  *(v3 + 2304) = 11;
  *(v3 + 2312) = 0u;
  *(v3 + 2328) = 0u;
  *(v3 + 2344) = 0u;
  *(v3 + 2360) = 0;
  *(v3 + 2368) = 41;
  v5 = swift_task_alloc();
  *(v3 + 5344) = v5;
  *v5 = v4;
  v5[1] = sub_10041A280;

  return sub_1006600F0(v3 + 2304);
}

uint64_t sub_10041A280(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[438] = v2;
  v4[439] = a1;
  v4[440] = a2;
  v5 = v3[465];
  v4[669] = a2;

  return _swift_task_switch(sub_10041A3A0, v5, 0);
}

uint64_t sub_10041A3A0()
{
  v1 = *(v0 + 3960);
  v2 = *(v0 + 3904);
  v3 = *(v0 + 3896);
  sub_100005934(*(v0 + 3968), v1, &qword_100783C60);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 3960);

    sub_1000032A8(v4, &qword_100783C60);
    static Logger.install.getter();

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 3720);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = *(v7 + 160);
      *(v8 + 4) = v10;
      *v9 = v10;
      v11 = v10;
      _os_log_impl(&_mh_execute_header, v5, v6, "[%@] Cannot request exception without preflight metadata", v8, 0xCu);
      sub_1000032A8(v9, &qword_10077F920);
    }

    v64 = *(v0 + 4936);
    v12 = *(v0 + 4888);
    v62 = *(v0 + 4264);
    v63 = *(v0 + 4280);
    v13 = *(v0 + 4048);
    v14 = *(v0 + 4024);
    v59 = *(v0 + 4016);
    v61 = *(v0 + 4224);
    v15 = *(v0 + 3984);
    v16 = *(v0 + 3976);
    v17 = *(v0 + 3968);

    v12(v13, v14);
    sub_1000032A8(v17, &qword_100783C60);
    (*(v15 + 8))(v59, v16);
    v64(v62, v61);
    sub_1000032A8(v63, &qword_100783C80);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v60 = *(v0 + 4872);
    v57 = *(v0 + 4848);
    v58 = *(v0 + 4856);
    v56 = *(v0 + 4832);
    v55 = *(v0 + 284);
    v54 = *(v0 + 4816);
    v53 = *(v0 + 4808);
    v50 = *(v0 + 4792);
    v51 = *(v0 + 4800);
    v20 = *(v0 + 4776);
    v21 = *(v0 + 4768);
    v22 = *(v0 + 4272);
    v23 = *(v0 + 4216);
    v24 = *(v0 + 4208);
    v25 = *(v0 + 4192);
    v52 = *(v0 + 4176);
    v26 = *(v0 + 4168);
    v27 = *(v0 + 3720);
    (*(*(v0 + 3904) + 32))(*(v0 + 3912), *(v0 + 3960), *(v0 + 3896));
    v28 = *(v27 + 160);
    LogKey.description.getter();

    v20(v23, 1, 1, v21);
    v29 = type metadata accessor for ConfirmationSheetMoreInformationLink();
    (*(*(v29 - 8) + 56))(v22, 1, 1, v29);
    *(v0 + 3696) = v50;
    dispatch thunk of CustomStringConvertible.description.getter();
    *(v0 + 3704) = v51;
    dispatch thunk of CustomStringConvertible.description.getter();
    ConfirmationSheetMiniProductPageConfiguration.init(itemID:versionID:distributorID:isForAppStore:)();
    v54(v24, 0, 1, v53);
    v56(v25, v55, v52);
    ConfirmationSheetButton.init(text:style:)();
    v58(v26, enum case for ConfirmationSheetPostPrimaryButtonAction.parentScreentimePinCode(_:), v57);
    v60(v26, 0, 1, v57);
    ConfirmationSheetContext.init(logKey:symbolConfiguration:title:subtitle:moreInformationLink:bulletPoints:miniProductPageConfiguration:primaryButton:secondaryButtonText:postPrimaryButtonAction:)();
    static Logger.install.getter();

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = *(v0 + 3720);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      v35 = *(v32 + 160);
      *(v33 + 4) = v35;
      *v34 = v35;
      v36 = v35;
      _os_log_impl(&_mh_execute_header, v30, v31, "[%@] Exception request was sent to parents/guardians. Presenting the in person approval sheet", v33, 0xCu);
      sub_1000032A8(v34, &qword_10077F920);
    }

    v65 = *(v0 + 4936);
    v37 = *(v0 + 4904);
    v38 = *(v0 + 4888);
    v39 = *(v0 + 4248);
    v40 = *(v0 + 4240);
    v41 = *(v0 + 4224);
    v42 = *(v0 + 4080);
    v43 = *(v0 + 4024);

    v38(v42, v43);
    v37(v40, v39, v41);
    v44 = swift_allocObject();
    *(v0 + 5368) = v44;
    v37(v44 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon21ConfirmationSheetTask_context, v40, v41);
    v45 = ConfirmationSheetContext.logKey.getter();
    v47 = v46;
    v65(v40, v41);
    v48 = (v44 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon21ConfirmationSheetTask_logKey);
    *v48 = v45;
    v48[1] = v47;
    v49 = swift_task_alloc();
    *(v0 + 5376) = v49;
    *v49 = v0;
    v49[1] = sub_10041BBF8;

    return sub_100652C68();
  }
}

uint64_t sub_10041ACF4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[441] = v2;
  v3[442] = a1;
  v3[443] = a2;

  return _swift_task_switch(sub_10041AE58, 0, 0);
}

uint64_t sub_10041AE58()
{
  v77 = v0;
  v1 = *(v0 + 3536);
  v2 = *(v0 + 5016);
  v3 = *(v0 + 4992);
  *(v0 + 5040) = *(v0 + 3544);
  *(v0 + 5048) = v1;
  v4 = *(v3 + v2);
  v5 = *(*v4 + class metadata base offset for ManagedBuffer + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v6));
  sub_10020A980(v4 + v5, v0 + 2784);
  os_unfair_lock_unlock((v4 + v6));
  swift_dynamicCast();

  v7 = *(v0 + 4152);
  v8 = *(v0 + 4136);
  v9 = *(v0 + 4128);
  v10 = *(v0 + 3936);
  v11 = *(v0 + 3928);

  sub_100005934(v7, v8, &unk_1007809F0);
  sub_100005934(v8, v9, &unk_1007809F0);
  if ((*(v10 + 48))(v9, 1, v11) == 1)
  {
    sub_1000032A8(*(v0 + 4128), &unk_1007809F0);
  }

  else
  {
    (*(*(v0 + 3936) + 32))(*(v0 + 3952), *(v0 + 4128), *(v0 + 3928));
    URL.absoluteString.getter();
    v12._countAndFlagsBits = 0x676E702E6262;
    v12._object = 0xE600000000000000;
    v13 = String.hasSuffix(_:)(v12);

    if (v13)
    {
      v14 = *(v0 + 4160);
      v15 = *(v0 + 4136);
      v16 = *(v0 + 3952);
      v17 = *(v0 + 3936);
      v18 = *(v0 + 3928);
      *(v0 + 3632) = URL.absoluteString.getter();
      *(v0 + 3640) = v19;
      *(v0 + 3648) = 0x676E702E6262;
      *(v0 + 3656) = 0xE600000000000000;
      *(v0 + 3552) = 0x676E702E6477;
      *(v0 + 3560) = 0xE600000000000000;
      sub_100005E50();
      StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

      URL.init(string:)();

      (*(v17 + 8))(v16, v18);
      sub_1000032A8(v15, &unk_1007809F0);
      sub_10020A668(v14, v15, &unk_1007809F0);
    }

    else
    {
      (*(*(v0 + 3936) + 8))(*(v0 + 3952), *(v0 + 3928));
    }
  }

  v20 = *(v0 + 5016);
  v21 = *(v0 + 4992);
  v22 = *(v0 + 4144);
  v23 = *(v0 + 4136);
  v24 = *(v0 + 4120);
  v25 = *(v0 + 4112);
  v26 = *(v0 + 3760) + *(v0 + 212);
  *(v0 + 5056) = *(v26 + 24);
  *(v0 + 5064) = *(v26 + 32);
  sub_100005934(v23, v24, &unk_1007809F0);
  v27 = *(v21 + v20);
  v28 = *(*v27 + class metadata base offset for ManagedBuffer + 16);
  v29 = (*(*v27 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v27 + v29));
  sub_10020A980(v27 + v28, v0 + 2824);
  os_unfair_lock_unlock((v27 + v29));
  v30 = *(v0 + 2848);
  v31 = *(v0 + 2856);
  sub_100006D8C((v0 + 2824), v30);
  (*(v31 + 40))(v30, v31);
  sub_100005934(v22, v25, &unk_1007809F0);
  v32 = *(v21 + v20);
  v33 = *(*v32 + class metadata base offset for ManagedBuffer + 16);
  v34 = (*(*v32 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v32 + v34));
  sub_10020A980(v32 + v33, v0 + 2864);
  os_unfair_lock_unlock((v32 + v34));
  if (swift_dynamicCast())
  {
  }

  v35 = *(v0 + 5016);
  v36 = *(v0 + 4992);
  v72 = *(v0 + 4960);
  v70 = *(v0 + 4160);
  v71 = *(v0 + 4104);
  v74 = *(v0 + 3944);
  v37 = *(v0 + 3936);
  v68 = *(v0 + 3928);
  v38 = *(v0 + 3888);
  v39 = *(v0 + 3880);
  v69 = *(v0 + 3872);
  v40 = *(v36 + v35);
  v41 = *(*v40 + class metadata base offset for ManagedBuffer + 16);
  v42 = (*(*v40 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v40 + v42));
  sub_10020A980(v40 + v41, v0 + 2904);
  os_unfair_lock_unlock((v40 + v42));
  swift_dynamicCast();
  v43 = *(v36 + v35);
  v44 = *(*v43 + class metadata base offset for ManagedBuffer + 16);
  v45 = (*(*v43 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v43 + v45));
  v46 = type metadata accessor for ADPInstallConfiguration.Storage(0);
  (*(v39 + 16))(v38, v43 + *(v46 + 28) + v44, v69);
  os_unfair_lock_unlock((v43 + v45));
  AppInstallRequestType.rawValue.getter();
  (*(v39 + 8))(v38, v69);
  (*(v37 + 16))(v74, v36 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_url, v68);
  v47 = *(v36 + v35);
  v48 = (*(*v47 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v47 + v48));

  os_unfair_lock_unlock((v47 + v48));
  v50 = *(v36 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_authenticationContextData);
  v49 = *(v36 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_authenticationContextData + 8);
  sub_100005934(v36 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_referrer, v70, &unk_1007809F0);
  sub_100005934(v36 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_appShareURL, v71, &unk_1007809F0);

  sub_1001DFECC(v50, v49);

  ExceptionRequestMetadata.init(appBundleID:appItemID:appVersionID:appName:requestedAppIconURL:distributorID:distributorName:developerID:developerName:developerSupportURL:isWebApp:isDistributor:askerName:ageRatingString:distributorType:distributorBundleID:distributorDomain:installTypeRawValue:accountID:url:oAuthToken:installVerificationToken:clientID:authenticationContextData:userInitiatedOverride:allowAccountPrompt:originallyRequestedVersionID:itemIDFromButtonConfiguration:referrer:appShareURL:)();
  sub_10000710C(v0 + 2824);
  *(v0 + 5072) = ExceptionRequestMetadata.dictionary()();
  if (v72)
  {
    (*(*(v0 + 3904) + 8))(*(v0 + 3920), *(v0 + 3896));

    if (qword_10077E568 != -1)
    {
      swift_once();
    }

    sub_1002710CC(*(v0 + 4024), qword_1007880E8);
    swift_errorRetain();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();

    v53 = os_log_type_enabled(v51, v52);
    v54 = *(v0 + 4152);
    v55 = *(v0 + 4144);
    v56 = *(v0 + 4136);
    if (v53)
    {
      v57 = swift_slowAlloc();
      v75 = v54;
      v76[0] = swift_slowAlloc();
      v58 = v76[0];
      *v57 = 136315138;
      swift_getErrorValue();
      v59 = Error.localizedDescription.getter();
      v73 = v55;
      v61 = sub_1002346CC(v59, v60, v76);

      *(v57 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v51, v52, "Error when requesting exception: %s", v57, 0xCu);
      sub_10000710C(v58);

      sub_1000032A8(v56, &unk_1007809F0);
      sub_1000032A8(v73, &unk_1007809F0);
      v62 = v75;
    }

    else
    {

      sub_1000032A8(v56, &unk_1007809F0);
      sub_1000032A8(v55, &unk_1007809F0);
      v62 = v54;
    }

    sub_1000032A8(v62, &unk_1007809F0);
    (*(*(v0 + 3904) + 56))(*(v0 + 3968), 1, 1, *(v0 + 3896));
    *(v0 + 2160) = 72;
    *(v0 + 2168) = 0u;
    *(v0 + 2184) = 0u;
    *(v0 + 2200) = 0u;
    *(v0 + 2216) = 0;
    *(v0 + 2224) = 41;
    v66 = swift_task_alloc();
    *(v0 + 5312) = v66;
    *v66 = v0;
    v66[1] = sub_100419F88;
    v65 = v0 + 2160;
  }

  else
  {
    v63 = *(v0 + 5008);
    *(v0 + 1800) = *(v0 + 5000);
    *(v0 + 1808) = v63;
    *(v0 + 1864) = 30;

    v64 = swift_task_alloc();
    *(v0 + 5080) = v64;
    *v64 = v0;
    v64[1] = sub_100418B80;
    v65 = v0 + 1800;
  }

  return sub_1006600F0(v65);
}

uint64_t sub_10041BBF8(char a1)
{
  v4 = *v2;
  *(v4 + 5384) = v1;

  v5 = *(v4 + 3720);
  if (v1)
  {
    v6 = sub_10041C4C8;
  }

  else
  {
    *(v4 + 283) = a1 & 1;
    v6 = sub_10041BD38;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10041BD38()
{
  v52 = v0;
  if (*(v0 + 283) == 1)
  {
    v1 = *(v0 + 4016);
    v2 = *(v0 + 4008);
    v3 = *(v0 + 3984);
    v4 = *(v0 + 3976);
    static Logger.install.getter();
    v5 = *(v3 + 16);
    *(v0 + 5392) = v5;
    *(v0 + 5400) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v5(v2, v1, v4);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 4888);
    v10 = *(v0 + 4072);
    v11 = *(v0 + 4024);
    v12 = *(v0 + 4008);
    v13 = *(v0 + 3984);
    v14 = *(v0 + 3976);
    if (v8)
    {
      v15 = *(v0 + 3720);
      v47 = *(v0 + 4072);
      v16 = swift_slowAlloc();
      v45 = v11;
      v17 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v51 = v41;
      *v16 = 138412546;
      v18 = *(v15 + 160);
      *(v16 + 4) = v18;
      *v17 = v18;
      *(v16 + 12) = 2080;
      v19 = v18;
      v20 = UUID.uuidString.getter();
      v43 = v9;
      v22 = v21;
      v39 = v7;
      v23 = *(v13 + 8);
      v23(v12, v14);
      v24 = sub_1002346CC(v20, v22, &v51);

      *(v16 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v6, v39, "[%@] Locally approved request %s", v16, 0x16u);
      sub_1000032A8(v17, &qword_10077F920);

      sub_10000710C(v41);

      v43(v47, v45);
    }

    else
    {

      v23 = *(v13 + 8);
      v23(v12, v14);
      v9(v10, v11);
    }

    *(v0 + 5408) = v23;
    v34 = *(v0 + 3840);
    v35 = *(v0 + 3832);
    v36 = *(v0 + 3824);
    v50 = objc_opt_self();
    UUID.uuidString.getter();
    v37 = String._bridgeToObjectiveC()();
    *(v0 + 5416) = v37;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_10041C8F4;
    swift_continuation_init();
    *(v0 + 2560) = v36;
    v38 = sub_10020A748((v0 + 2536));
    sub_1001F0C48(&unk_10077F940);
    CheckedContinuation.init(continuation:function:)();
    (*(v35 + 32))(v38, v34, v36);
    *(v0 + 2504) = _NSConcreteStackBlock;
    *(v0 + 2512) = 1107296256;
    *(v0 + 2520) = sub_10041D918;
    *(v0 + 2528) = &unk_1007642E0;
    [v50 updateExceptionRequestWithUniqueIdentifier:v37 action:0 completionHandler:v0 + 2504];
    (*(v35 + 8))(v38, v36);

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v25 = *(v0 + 5368);
    v26 = *(v0 + 4936);
    v48 = *(v0 + 4264);
    v49 = *(v0 + 4280);
    v27 = *(v0 + 4248);
    v28 = *(v0 + 4224);
    v29 = *(v0 + 3984);
    v44 = *(v0 + 3976);
    v46 = *(v0 + 4016);
    v40 = *(v0 + 3912);
    v42 = *(v0 + 3968);
    v30 = *(v0 + 3904);
    v31 = *(v0 + 3896);

    swift_setDeallocating();
    v26(v25 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon21ConfirmationSheetTask_context, v28);

    swift_deallocClassInstance();
    v26(v27, v28);
    (*(v30 + 8))(v40, v31);
    sub_1000032A8(v42, &qword_100783C60);
    (*(v29 + 8))(v46, v44);
    v26(v48, v28);
    sub_1000032A8(v49, &qword_100783C80);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_10041C4C8()
{
  v1 = v0[671];
  v2 = v0[617];
  v3 = v0[616];
  v4 = v0[528];
  v5 = v0[498];
  v14 = v0[497];
  v15 = v0[502];
  v13 = v0[496];
  v11 = v0[531];
  v12 = v0[489];
  v6 = v0[488];
  v10 = v0[487];

  swift_setDeallocating();
  v2(v3 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon21ConfirmationSheetTask_context, v4);

  swift_deallocClassInstance();
  swift_setDeallocating();
  v2(v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon21ConfirmationSheetTask_context, v4);

  swift_deallocClassInstance();
  v2(v11, v4);
  (*(v6 + 8))(v12, v10);
  sub_1000032A8(v13, &qword_100783C60);
  (*(v5 + 8))(v15, v14);
  v7 = v0[535];
  (v0[617])(v0[533], v0[528]);
  sub_1000032A8(v7, &qword_100783C80);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10041C8F4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 5424) = v2;
  v3 = *(v1 + 3720);
  if (v2)
  {
    v4 = sub_10041D1F8;
  }

  else
  {
    v4 = sub_10041CA14;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10041CA14()
{
  v34 = v0;
  v1 = *(v0 + 5392);
  v2 = *(v0 + 4016);
  v3 = *(v0 + 4000);
  v4 = *(v0 + 3976);

  static Logger.install.getter();
  v1(v3, v2, v4);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v32 = *(v0 + 5408);
  v8 = *(v0 + 4888);
  v9 = *(v0 + 4064);
  v10 = *(v0 + 4024);
  v11 = *(v0 + 4000);
  v12 = *(v0 + 3984);
  v13 = *(v0 + 3976);
  if (v7)
  {
    v14 = *(v0 + 3720);
    v31 = *(v0 + 4064);
    v15 = swift_slowAlloc();
    v28 = v6;
    v16 = swift_slowAlloc();
    v30 = v10;
    v17 = swift_slowAlloc();
    v33 = v17;
    *v15 = 138412546;
    v18 = *(v14 + 160);
    *(v15 + 4) = v18;
    *v16 = v18;
    *(v15 + 12) = 2080;
    v19 = v18;
    v20 = UUID.uuidString.getter();
    v29 = v8;
    v22 = v21;
    v23 = v12 + 8;
    v32(v11, v13);
    v24 = sub_1002346CC(v20, v22, &v33);

    *(v15 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v5, v28, "[%@] Reconstructing and continuing the install %s", v15, 0x16u);
    sub_1000032A8(v16, &qword_10077F920);

    sub_10000710C(v17);

    v29(v31, v30);
  }

  else
  {

    v23 = v12 + 8;
    v32(v11, v13);
    v8(v9, v10);
  }

  *(v0 + 5432) = v23;
  *(v0 + 5440) = *(*sub_100006D8C(*(v0 + 3712), *(*(v0 + 3712) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_exceptionRequestService);

  v25 = swift_task_alloc();
  *(v0 + 5448) = v25;
  *v25 = v0;
  v25[1] = sub_10041CD00;
  v26 = *(v0 + 3912);

  return sub_10059C45C(v26);
}

uint64_t sub_10041CD00()
{
  v1 = *(*v0 + 3720);

  return _swift_task_switch(sub_10041CE2C, v1, 0);
}

uint64_t sub_10041CE2C()
{
  v14 = v0[676];
  v1 = v0[671];
  v2 = v0[617];
  v15 = v0[535];
  v3 = v0[531];
  v4 = v0[528];
  v12 = v0[502];
  v13 = v0[533];
  v10 = v0[496];
  v11 = v0[497];
  v5 = v0[489];
  v6 = v0[488];
  v7 = v0[487];

  swift_setDeallocating();
  v2(v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon21ConfirmationSheetTask_context, v4);

  swift_deallocClassInstance();
  v2(v3, v4);
  (*(v6 + 8))(v5, v7);
  sub_1000032A8(v10, &qword_100783C60);
  v14(v12, v11);
  v2(v13, v4);
  sub_1000032A8(v15, &qword_100783C80);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10041D1F8()
{
  v56 = v0;
  v1 = v0[677];
  v2 = v0[674];
  v3 = v0[502];
  v4 = v0[499];
  v5 = v0[497];
  swift_willThrow();

  static Logger.install.getter();
  v2(v4, v3, v5);

  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = v7;
  v54 = v6;
  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[676];
    v47 = v0[617];
    v43 = v0[611];
    v51 = v0[533];
    v53 = v0[535];
    v39 = v0[528];
    v41 = v0[531];
    v32 = v0[503];
    v33 = v0[507];
    v49 = v0[502];
    v10 = v0[499];
    v11 = v0[497];
    v45 = v0[496];
    v34 = v0[488];
    v35 = v0[487];
    v37 = v0[489];
    v12 = v0[465];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v55[0] = swift_slowAlloc();
    *v13 = 138412802;
    v15 = *(v12 + 160);
    *(v13 + 4) = v15;
    *v14 = v15;
    *(v13 + 12) = 2080;
    v16 = v15;
    v17 = UUID.uuidString.getter();
    v19 = v18;
    v9(v10, v11);
    v20 = sub_1002346CC(v17, v19, v55);

    *(v13 + 14) = v20;
    *(v13 + 22) = 2080;
    swift_getErrorValue();
    v21 = Error.localizedDescription.getter();
    v23 = sub_1002346CC(v21, v22, v55);

    *(v13 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v54, v8, "[%@] Error when locally approving exception request %s: %s", v13, 0x20u);
    sub_1000032A8(v14, &qword_10077F920);

    swift_arrayDestroy();

    v43(v33, v32);
    v47(v41, v39);
    (*(v34 + 8))(v37, v35);
    sub_1000032A8(v45, &qword_100783C60);
    v9(v49, v11);
    v47(v51, v39);
  }

  else
  {
    v44 = v0[676];
    v48 = v0[617];
    v42 = v0[611];
    v52 = v0[533];
    v53 = v0[535];
    v40 = v0[531];
    v24 = v0[528];
    v25 = v0[507];
    v26 = v0[503];
    v50 = v0[502];
    v27 = v0[499];
    v28 = v0[497];
    v46 = v0[496];
    v29 = v0[488];
    v36 = v0[487];
    v38 = v0[489];

    v44(v27, v28);
    v42(v25, v26);
    v48(v40, v24);
    (*(v29 + 8))(v38, v36);
    sub_1000032A8(v46, &qword_100783C60);
    v44(v50, v28);
    v48(v52, v24);
  }

  sub_1000032A8(v53, &qword_100783C80);

  v30 = v0[1];

  return v30();
}

void sub_10041D918(uint64_t a1, void *a2)
{
  sub_100006D8C((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    sub_1001F0C48(&unk_100784B60);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1001F0C48(&unk_100784B60);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10041D9A8()
{

  v1 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1000032A8(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_preflightMetadata, &qword_100783C38);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for ADPInstallTask()
{
  result = qword_100783B50;
  if (!qword_100783B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10041DAD8()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_10041DBF0();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10041DBF0()
{
  if (!qword_100783B60)
  {
    type metadata accessor for ADPPreflightResultingMetadata(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100783B60);
    }
  }
}

void sub_10041DC48(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100006D8C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    sub_1001F0C48(&unk_100784AE0);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1001F0C48(&unk_100784AE0);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10041DCEC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

unint64_t sub_10041DD8C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_10036428C(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_10041DE60(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_10041DE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for DownloadRequest();
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1000032A8(a4, &qword_100783CA0);
  }

  if (v17 < 1)
  {
    return sub_1000032A8(a4, &qword_100783CA0);
  }

  result = sub_100428E08(a4, v15, type metadata accessor for DownloadRequest);
  if (v12 >= v17)
  {
    return sub_1000032A8(a4, &qword_100783CA0);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_10041E018(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t (*a3)(unint64_t))
{
  v8 = *v4;
  v9 = sub_1003F9D68(a1, a2, *v4);
  if (v5)
  {
    return v3;
  }

  if (v10)
  {
    if (v8 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v9;
  v21 = a3;
  v12 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v8 >> 62)
    {
      if (v12 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v3;
      }
    }

    else if (v12 == *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v3;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v12 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v12 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v14 = *(v8 + 8 * v12 + 32);
    }

    v22 = v14;
    v15 = a1(&v22);

    if ((v15 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v13 = __OFADD__(v12++, 1);
    if (v13)
    {
      goto LABEL_42;
    }
  }

  if (v3 == v12)
  {
LABEL_9:
    v13 = __OFADD__(v3++, 1);
    if (v13)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v18 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3 >= v18)
    {
      goto LABEL_46;
    }

    if (v12 >= v18)
    {
      goto LABEL_47;
    }

    v16 = *(v8 + 32 + 8 * v3);
    v17 = *(v8 + 32 + 8 * v12);
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v8 & 0x8000000000000000) != 0 || (v8 & 0x4000000000000000) != 0)
  {
    v8 = v21(v8);
    v19 = (v8 >> 62) & 1;
  }

  else
  {
    LODWORD(v19) = 0;
  }

  v20 = v8 & 0xFFFFFFFFFFFFFF8;
  *((v8 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20) = v17;

  if ((v8 & 0x8000000000000000) == 0 && !v19)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v8 = v21(v8);
  v20 = v8 & 0xFFFFFFFFFFFFFF8;
  if ((v12 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v12 >= *(v20 + 16))
    {
      goto LABEL_44;
    }

    *(v20 + 8 * v12 + 32) = v16;

    *v4 = v8;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
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
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_10041E2B0(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for DownloadRequest();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v34 - v12;
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  v16 = *v2;
  result = sub_1003F9E84(a1, a2, *v2);
  if (!v3)
  {
    v44 = 0;
    if (v18)
    {
      return *(v16 + 16);
    }

    v39 = v15;
    v40 = a1;
    v36 = v13;
    v37 = v10;
    v35 = v2;
    v43 = result;
    v19 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = (v16 + 16);
      v20 = *(v16 + 16);
      if (v19 == v20)
      {
        return v43;
      }

      v38 = v7;
      while (v19 < v20)
      {
        v22 = v16;
        v41 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v23 = v16 + v41;
        v24 = *(v7 + 72);
        v42 = v24 * v19;
        v25 = v39;
        sub_100428E08(v23 + v24 * v19, v39, type metadata accessor for DownloadRequest);
        v26 = a2;
        v27 = v44;
        v28 = v40(v25);
        result = sub_100429090(v25, type metadata accessor for DownloadRequest);
        v44 = v27;
        if (v27)
        {
          return result;
        }

        if (v28)
        {
          a2 = v26;
          v7 = v38;
          v16 = v22;
        }

        else
        {
          v29 = v43;
          if (v19 == v43)
          {
            a2 = v26;
            v7 = v38;
            v16 = v22;
          }

          else
          {
            if ((v43 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v30 = *v21;
            if (v43 >= *v21)
            {
              goto LABEL_27;
            }

            v31 = v24 * v43;
            result = sub_100428E08(v23 + v24 * v43, v36, type metadata accessor for DownloadRequest);
            if (v19 >= v30)
            {
              goto LABEL_28;
            }

            v32 = v42;
            sub_100428E08(v23 + v42, v37, type metadata accessor for DownloadRequest);
            v16 = v22;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_100659B20(v22);
            }

            a2 = v26;
            v33 = v16 + v41;
            result = sub_1004290F0(v37, v16 + v41 + v31);
            if (v19 >= *(v16 + 16))
            {
              goto LABEL_29;
            }

            result = sub_1004290F0(v36, v33 + v32);
            *v35 = v16;
            v7 = v38;
            v29 = v43;
          }

          v43 = v29 + 1;
        }

        ++v19;
        v21 = (v16 + 16);
        v20 = *(v16 + 16);
        if (v19 == v20)
        {
          return v43;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10041E5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  v4[145] = a3;
  v4[144] = a2;
  v4[143] = a1;
  v7 = v6;
  sub_1001F0C48(&unk_1007809F0);
  v4[146] = swift_task_alloc();
  v4[147] = swift_task_alloc();
  v8 = type metadata accessor for AppInstallRequestType();
  v4[148] = v8;
  v4[149] = *(v8 - 8);
  v4[150] = swift_task_alloc();
  v4[151] = swift_task_alloc();
  v4[134] = v7;
  v4[135] = &off_100770208;
  v4[131] = a4;

  return _swift_task_switch(sub_10041E74C, 0, 0);
}

uint64_t sub_10041E74C()
{
  v1 = *(v0 + 1208);
  v2 = *(v0 + 1192);
  v3 = *(v0 + 1184);
  v4 = *(v0 + 1176);
  v5 = *(v0 + 1144);
  v6 = *(v5 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
  v7 = v6 + *(*v6 + class metadata base offset for ManagedBuffer + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v8));
  v9 = type metadata accessor for ADPInstallConfiguration.Storage(0);
  v10 = *(v2 + 16);
  v10(v1, v7 + *(v9 + 28), v3);
  os_unfair_lock_unlock((v6 + v8));
  sub_100005934(v5 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_referrer, v4, &unk_1007809F0);
  os_unfair_lock_lock((v6 + v8));
  sub_10020A980(v7, v0 + 1088);
  os_unfair_lock_unlock((v6 + v8));
  v11 = *(v0 + 1112);
  v12 = *(v0 + 1120);
  sub_100006D8C((v0 + 1088), v11);
  v13 = (*(v12 + 56))(v11, v12);
  if (v14)
  {
    countAndFlagsBits = v13;
    object = v14;
    goto LABEL_7;
  }

  v17 = *(v0 + 1168);
  sub_100005934(*(v0 + 1176), v17, &unk_1007809F0);
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 48))(v17, 1, v18);
  v21 = *(v0 + 1168);
  if (v20 == 1)
  {
    sub_1000032A8(*(v0 + 1168), &unk_1007809F0);
  }

  else
  {
    v22 = URL.host(percentEncoded:)(1);
    countAndFlagsBits = v22.value._countAndFlagsBits;
    object = v22.value._object;
    (*(v19 + 8))(v21, v18);
    if (v22.value._object)
    {
      goto LABEL_7;
    }
  }

  countAndFlagsBits = 0;
  object = 0xE000000000000000;
LABEL_7:
  *(v0 + 1216) = object;
  v23 = *(v0 + 1200);
  v24 = *(v0 + 1192);
  v25 = *(v0 + 1184);
  v10(v23, *(v0 + 1208), v25);
  v26 = (*(v24 + 88))(v23, v25);
  if (v26 == enum case for AppInstallRequestType.automaticInstall(_:))
  {
LABEL_8:

    v27 = *(v0 + 1208);
    v28 = *(v0 + 1192);
    v29 = *(v0 + 1184);
    sub_1000032A8(*(v0 + 1176), &unk_1007809F0);
    (*(v28 + 8))(v27, v29);
    sub_10000710C(v0 + 1088);
    sub_10000710C(v0 + 1048);

    v30 = *(v0 + 8);

    return v30(0);
  }

  if (v26 == enum case for AppInstallRequestType.install(_:))
  {
    v32 = 6;
    v33 = 7;
  }

  else
  {
    if (v26 == enum case for AppInstallRequestType.automaticUpdate(_:))
    {
      goto LABEL_8;
    }

    if (v26 != enum case for AppInstallRequestType.update(_:))
    {
      if (v26 != enum case for AppInstallRequestType.promotion(_:) && v26 != enum case for AppInstallRequestType.restore(_:) && v26 != enum case for AppInstallRequestType.deviceVPP(_:) && v26 != enum case for AppInstallRequestType.deviceVPPUpdate(_:) && v26 != enum case for AppInstallRequestType.userVPP(_:) && v26 != enum case for AppInstallRequestType.userVPPUpdate(_:) && v26 != enum case for AppInstallRequestType.upp(_:) && v26 != enum case for AppInstallRequestType.restoreUpdate(_:))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      goto LABEL_8;
    }

    v32 = 9;
    v33 = 10;
  }

  v34 = *(v0 + 1160);
  *(v0 + 696) = *(v0 + 1152);
  *(v0 + 704) = v34;
  v35 = *(v0 + 968);
  *(v0 + 712) = *(v0 + 952);
  *(v0 + 728) = v35;
  *(v0 + 744) = *(v0 + 984);
  *(v0 + 760) = v32;
  *(v0 + 808) = countAndFlagsBits;
  *(v0 + 816) = object;
  v36 = *(v0 + 1016);
  *(v0 + 824) = *(v0 + 1000);
  *(v0 + 840) = v36;
  *(v0 + 856) = *(v0 + 1032);
  *(v0 + 872) = v33;
  *(v0 + 880) = 0u;
  *(v0 + 896) = 0u;
  *(v0 + 912) = 0u;
  *(v0 + 928) = 0u;
  *(v0 + 944) = 41;
  v37 = *(*sub_100006D8C((v0 + 1048), *(v0 + 1072)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_localizer);
  *(v0 + 1224) = v37;

  v38 = swift_allocObject();
  *(v0 + 1232) = v38;
  *(v38 + 16) = 2;
  *(v38 + 24) = 0u;
  *(v38 + 40) = 0u;
  *(v38 + 56) = 0u;
  *(v38 + 72) = 0;
  *(v38 + 80) = 41;
  *(v38 + 88) = v37;
  v39 = swift_task_alloc();
  *(v0 + 1240) = v39;
  *(v39 + 16) = &unk_1006AA460;
  *(v39 + 24) = v38;

  sub_1001F0C48(&unk_10077FA80);
  swift_asyncLet_begin();
  v40 = swift_task_alloc();
  *(v0 + 1248) = v40;
  *v40 = v0;
  v40[1] = sub_10041EDB0;

  return sub_1006600F0(v0 + 696);
}