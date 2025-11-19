uint64_t sub_10001F134()
{
  v99 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  sub_100010668(*(v0 + 48) + OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_appStoreMetrics, v3, &qword_100089388, &qword_100067A70);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100011C14(*(v0 + 120), &qword_100089388, &qword_100067A70);
    v4 = *(v0 + 112);
    v5 = *(v0 + 88);
    v6 = *(v0 + 96);
    v7 = *(v0 + 48) + OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_localizedContent;
    InstallSheetContext.source.getter();
    v8 = InstallSheetContext.Source.isAppStore.getter();
    v9 = *(v6 + 8);
    v9(v4, v5);
    if (v8)
    {
      v11 = *(v0 + 96);
      v10 = *(v0 + 104);
      v12 = *(v0 + 88);
      InstallSheetContext.source.getter();
      v13 = (*(v11 + 88))(v10, v12);
      if (v13 == enum case for InstallSheetContext.Source.appStoreWithContext(_:))
      {
        v14 = *(v0 + 104);
        v15 = *(v0 + 80);
        v16 = *(v0 + 64);
        v17 = *(v0 + 72);
        (*(*(v0 + 96) + 96))(v14, *(v0 + 88));
        (*(v17 + 32))(v15, v14, v16);
        LOBYTE(v14) = InstallSheetContext.Source.AppStoreSheetContext.showBiometrics.getter();
        (*(v17 + 8))(v15, v16);
        if (v14)
        {
          goto LABEL_15;
        }

LABEL_13:
        v45 = *(v0 + 152);
        v46 = *(v0 + 48);
        v47 = *(v0 + 264);

        v48 = v47;
        goto LABEL_21;
      }

      if (v13 == enum case for InstallSheetContext.Source.appStore(_:))
      {
        goto LABEL_13;
      }

      v9(*(v0 + 104), *(v0 + 88));
    }

LABEL_15:
    if (*(v0 + 264) == 1)
    {
      v49 = [objc_allocWithZone(LAContext) init];
      *(v0 + 232) = v49;
      *(v0 + 32) = 0;
      v50 = [v49 canEvaluatePolicy:1005 error:v0 + 32];
      v51 = *(v0 + 32);
      *(v0 + 240) = v51;
      if (v50)
      {
        v52 = *(v0 + 56);
        v53 = type metadata accessor for LocalizedCombinedApprovalAndInstallContent();
        v54 = (v7 + v53[14]);
        v55 = *v54;
        v56 = v54[1];
        v57 = (v7 + v53[15]);
        v58 = v57[1];
        v95 = *v57;
        v96 = v55;
        v59 = (v7 + v53[16]);
        v61 = *v59;
        v60 = v59[1];
        sub_100010668(v7 + v53[5], v52, &qword_1000893C0, &unk_1000663F0);
        v62 = type metadata accessor for OsloAuthenticationTask(0);
        v63 = objc_allocWithZone(v62);
        v64 = OBJC_IVAR____TtC26AppDistributionLaunchAngel22OsloAuthenticationTask_finalizedContinuation;
        v65 = sub_1000047BC(&unk_1000899D0, &unk_100066640);
        (*(*(v65 - 8) + 56))(&v63[v64], 1, 1, v65);
        v63[OBJC_IVAR____TtC26AppDistributionLaunchAngel22OsloAuthenticationTask_finalResult] = 0;
        v66 = &v63[OBJC_IVAR____TtC26AppDistributionLaunchAngel22OsloAuthenticationTask_localizedContent];
        v67 = type metadata accessor for OsloAuthenticationTask.LocalizedContent(0);
        sub_100010668(v52, v66 + *(v67 + 28), &qword_1000893C0, &unk_1000663F0);
        *v66 = v96;
        v66[1] = v56;
        v66[2] = v95;
        v66[3] = v58;
        v66[4] = v61;
        v66[5] = v60;
        *(v0 + 16) = v63;
        *(v0 + 24) = v62;
        v68 = v51;

        *(v0 + 248) = objc_msgSendSuper2((v0 + 16), "init");
        sub_100011C14(v52, &qword_1000893C0, &unk_1000663F0);
        v69 = swift_task_alloc();
        *(v0 + 256) = v69;
        *v69 = v0;
        v69[1] = sub_10002044C;

        return sub_10002EACC();
      }

      v79 = *(v0 + 152);
      v80 = v51;

      if (v80)
      {
        type metadata accessor for Code(0);
        *(v0 + 40) = -5;
        sub_100022474(&qword_100088578, type metadata accessor for Code);
        v81 = v80;
        if (static _ErrorCodeProtocol.~= infix(_:_:)())
        {
          v82 = *(v0 + 48);
          sub_100021898(1);

          goto LABEL_22;
        }
      }

      if (qword_100088438 != -1)
      {
        swift_once();
      }

      v83 = *(v0 + 48);
      v84 = type metadata accessor for Logger();
      sub_1000105E8(v84, qword_10008C4C0);
      v85 = v83;
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v98 = v97;
        *v88 = 136446466;
        v90 = InstallSheetContext.logKey.getter();
        v92 = sub_10000F78C(v90, v91, &v98);

        *(v88 + 4) = v92;
        *(v88 + 12) = 2114;
        *(v88 + 14) = v80;
        *v89 = v51;
        v93 = v80;
        _os_log_impl(&_mh_execute_header, v86, v87, "[%{public}s] Error evaluating policy: %{public}@", v88, 0x16u);
        sub_100011C14(v89, &qword_100088FD0, &qword_1000673F0);

        sub_10001059C(v97);
      }

      v94 = *(v0 + 48);
      sub_100021898(0);

      goto LABEL_22;
    }

    v70 = *(v0 + 152);
    v71 = *(v0 + 48);

    v48 = 0;
LABEL_21:
    sub_100021898(v48);
LABEL_22:
    v72 = *(v0 + 144);
    v73 = *(v0 + 112);
    v74 = *(v0 + 120);
    v75 = *(v0 + 104);
    v76 = *(v0 + 80);
    v77 = *(v0 + 56);

    v78 = *(v0 + 8);

    return v78();
  }

  v18 = *(v0 + 48);
  v19 = *(v0 + 264);
  sub_100022268(*(v0 + 120), *(v0 + 144));
  v20 = InstallSheetContext.itemID.getter();
  v22 = v21;
  *(v0 + 176) = v21;
  if (v19 == 1)
  {
    v23 = *(v0 + 144);
    v24 = *(v0 + 128);
    v25 = InstallSheetContext.itemID.getter();
    v27 = v26;
    *(v0 + 184) = v26;
    v28 = v23 + *(v24 + 24);
    v29 = InstallSheetContext.Source.AppStoreSheetContext.installType.getter();
    v31 = v30;
    *(v0 + 192) = v30;
    v32 = sub_100059AC4(&_swiftEmptyArrayStorage);
    *(v0 + 200) = v32;
    v33 = swift_task_alloc();
    *(v0 + 208) = v33;
    *v33 = v0;
    v33[1] = sub_10001FA2C;
    v34 = *(v0 + 144);
    v101 = v32;
    v35 = v20;
    v36 = v22;
    v37 = v25;
    v38 = v27;
    v39 = v29;
    v40 = v31;
  }

  else
  {
    v41 = sub_100059AC4(&_swiftEmptyArrayStorage);
    *(v0 + 216) = v41;
    v42 = swift_task_alloc();
    *(v0 + 224) = v42;
    *v42 = v0;
    v42[1] = sub_1000202B8;
    v43 = *(v0 + 144);
    v101 = v41;
    v39 = 0x7373696D736964;
    v35 = 0x6C65636E6143;
    v36 = 0xE600000000000000;
    v37 = v20;
    v38 = v22;
    v40 = 0xE700000000000000;
  }

  return sub_100056B2C(v35, v36, v37, v38, v39, v40, 0x6E6F74747562, 0xE600000000000000);
}

uint64_t sub_10001FA2C()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v4 = *(*v0 + 192);
  v5 = *(*v0 + 184);
  v6 = *(*v0 + 176);
  v10 = *v0;

  v7 = *(v1 + 168);
  v8 = *(v1 + 160);

  return _swift_task_switch(sub_10001FC00, v8, v7);
}

uint64_t sub_10001FC00()
{
  v70 = v0;
  sub_1000223B0(*(v0 + 144), type metadata accessor for InstallConfirmationAppStoreMetrics);
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 48) + OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_localizedContent;
  InstallSheetContext.source.getter();
  v5 = InstallSheetContext.Source.isAppStore.getter();
  v6 = *(v3 + 8);
  v6(v1, v2);
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  v8 = *(v0 + 96);
  v7 = *(v0 + 104);
  v9 = *(v0 + 88);
  InstallSheetContext.source.getter();
  v10 = (*(v8 + 88))(v7, v9);
  if (v10 == enum case for InstallSheetContext.Source.appStoreWithContext(_:))
  {
    v11 = *(v0 + 104);
    v12 = *(v0 + 80);
    v13 = *(v0 + 64);
    v14 = *(v0 + 72);
    (*(*(v0 + 96) + 96))(v11, *(v0 + 88));
    (*(v14 + 32))(v12, v11, v13);
    LOBYTE(v11) = InstallSheetContext.Source.AppStoreSheetContext.showBiometrics.getter();
    (*(v14 + 8))(v12, v13);
    if (v11)
    {
      goto LABEL_8;
    }

LABEL_6:
    v15 = *(v0 + 152);
    v16 = *(v0 + 48);
    v17 = *(v0 + 264);

    v18 = v17;
    goto LABEL_14;
  }

  if (v10 == enum case for InstallSheetContext.Source.appStore(_:))
  {
    goto LABEL_6;
  }

  v6(*(v0 + 104), *(v0 + 88));
LABEL_8:
  if (*(v0 + 264) == 1)
  {
    v19 = [objc_allocWithZone(LAContext) init];
    *(v0 + 232) = v19;
    *(v0 + 32) = 0;
    v20 = [v19 canEvaluatePolicy:1005 error:v0 + 32];
    v21 = *(v0 + 32);
    *(v0 + 240) = v21;
    if (v20)
    {
      v22 = *(v0 + 56);
      v23 = type metadata accessor for LocalizedCombinedApprovalAndInstallContent();
      v24 = (v4 + v23[14]);
      v25 = *v24;
      v26 = v24[1];
      v27 = (v4 + v23[15]);
      v28 = v27[1];
      v66 = *v27;
      v67 = v25;
      v29 = (v4 + v23[16]);
      v31 = *v29;
      v30 = v29[1];
      sub_100010668(v4 + v23[5], v22, &qword_1000893C0, &unk_1000663F0);
      v32 = type metadata accessor for OsloAuthenticationTask(0);
      v33 = objc_allocWithZone(v32);
      v34 = OBJC_IVAR____TtC26AppDistributionLaunchAngel22OsloAuthenticationTask_finalizedContinuation;
      v35 = sub_1000047BC(&unk_1000899D0, &unk_100066640);
      (*(*(v35 - 8) + 56))(&v33[v34], 1, 1, v35);
      v33[OBJC_IVAR____TtC26AppDistributionLaunchAngel22OsloAuthenticationTask_finalResult] = 0;
      v36 = &v33[OBJC_IVAR____TtC26AppDistributionLaunchAngel22OsloAuthenticationTask_localizedContent];
      v37 = type metadata accessor for OsloAuthenticationTask.LocalizedContent(0);
      sub_100010668(v22, v36 + *(v37 + 28), &qword_1000893C0, &unk_1000663F0);
      *v36 = v67;
      v36[1] = v26;
      v36[2] = v66;
      v36[3] = v28;
      v36[4] = v31;
      v36[5] = v30;
      *(v0 + 16) = v33;
      *(v0 + 24) = v32;
      v38 = v21;

      *(v0 + 248) = objc_msgSendSuper2((v0 + 16), "init");
      sub_100011C14(v22, &qword_1000893C0, &unk_1000663F0);
      v39 = swift_task_alloc();
      *(v0 + 256) = v39;
      *v39 = v0;
      v39[1] = sub_10002044C;

      return sub_10002EACC();
    }

    v50 = *(v0 + 152);
    v51 = v21;

    if (v51)
    {
      type metadata accessor for Code(0);
      *(v0 + 40) = -5;
      sub_100022474(&qword_100088578, type metadata accessor for Code);
      v52 = v51;
      if (static _ErrorCodeProtocol.~= infix(_:_:)())
      {
        v53 = *(v0 + 48);
        sub_100021898(1);

        goto LABEL_15;
      }
    }

    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v54 = *(v0 + 48);
    v55 = type metadata accessor for Logger();
    sub_1000105E8(v55, qword_10008C4C0);
    v56 = v54;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v69 = v68;
      *v59 = 136446466;
      v61 = InstallSheetContext.logKey.getter();
      v63 = sub_10000F78C(v61, v62, &v69);

      *(v59 + 4) = v63;
      *(v59 + 12) = 2114;
      *(v59 + 14) = v51;
      *v60 = v21;
      v64 = v51;
      _os_log_impl(&_mh_execute_header, v57, v58, "[%{public}s] Error evaluating policy: %{public}@", v59, 0x16u);
      sub_100011C14(v60, &qword_100088FD0, &qword_1000673F0);

      sub_10001059C(v68);
    }

    v65 = *(v0 + 48);
    sub_100021898(0);

    goto LABEL_15;
  }

  v41 = *(v0 + 152);
  v42 = *(v0 + 48);

  v18 = 0;
LABEL_14:
  sub_100021898(v18);
LABEL_15:
  v43 = *(v0 + 144);
  v44 = *(v0 + 112);
  v45 = *(v0 + 120);
  v46 = *(v0 + 104);
  v47 = *(v0 + 80);
  v48 = *(v0 + 56);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_1000202B8()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 216);
  v4 = *(*v0 + 176);
  v8 = *v0;

  v5 = *(v1 + 168);
  v6 = *(v1 + 160);

  return _swift_task_switch(sub_1000224C4, v6, v5);
}

uint64_t sub_10002044C(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v7 = *v1;
  *(*v1 + 265) = a1;

  v4 = *(v2 + 168);
  v5 = *(v2 + 160);

  return _swift_task_switch(sub_1000205A8, v5, v4);
}

uint64_t sub_1000205A8()
{
  v1 = *(v0 + 265);
  v2 = *(v0 + 152);

  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 232);
  v6 = *(v0 + 48);
  sub_100021898(v1);

  v7 = *(v0 + 144);
  v8 = *(v0 + 112);
  v9 = *(v0 + 120);
  v10 = *(v0 + 104);
  v11 = *(v0 + 80);
  v12 = *(v0 + 56);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000206A8(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = *(*(sub_1000047BC(&qword_100089388, &qword_100067A70) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v4 = type metadata accessor for InstallConfirmationAppStoreMetrics();
  v2[15] = v4;
  v5 = *(v4 - 8);
  v2[16] = v5;
  v6 = *(v5 + 64) + 15;
  v2[17] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[18] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[19] = v8;
  v2[20] = v7;

  return _swift_task_switch(sub_1000207D4, v8, v7);
}

uint64_t sub_1000207D4()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  sub_100010668(v0[13] + OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_appStoreMetrics, v3, &qword_100089388, &qword_100067A70);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[18];
    v5 = v0[14];

    sub_100011C14(v5, &qword_100089388, &qword_100067A70);
    v6 = v0[17];
    v7 = v0[14];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[13];
    v11 = v0[12];
    sub_100022268(v0[14], v0[17]);
    v12 = InstallSheetContext.itemID.getter();
    v14 = v13;
    v0[21] = v13;
    sub_1000047BC(&qword_100089500, &qword_100066630);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100065650;
    *(inited + 32) = 0x72556E6F69746361;
    *(inited + 40) = 0xE90000000000006CLL;
    v16 = URL.absoluteString.getter();
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v16;
    *(inited + 56) = v17;
    v0[22] = sub_100059AC4(inited);
    swift_setDeallocating();
    sub_100011C14(inited + 32, &qword_100089508, &qword_100066638);
    v18 = swift_task_alloc();
    v0[23] = v18;
    *v18 = v0;
    v18[1] = sub_100020A48;
    v19 = v0[17];

    return sub_100056B2C(0x726F4D6E7261654CLL, 0xE900000000000065, v12, v14, 0x657461676976616ELL, 0xE800000000000000, 1802398060, 0xE400000000000000);
  }
}

uint64_t sub_100020A48()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v4 = *(*v0 + 168);
  v8 = *v0;

  v5 = *(v1 + 160);
  v6 = *(v1 + 152);

  return _swift_task_switch(sub_100020BA8, v6, v5);
}

uint64_t sub_100020BA8()
{
  v2 = v0[17];
  v1 = v0[18];

  sub_1000223B0(v2, type metadata accessor for InstallConfirmationAppStoreMetrics);
  v3 = v0[17];
  v4 = v0[14];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100020C38()
{
  v1[2] = v0;
  v2 = *(*(sub_1000047BC(&qword_100089388, &qword_100067A70) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for InstallConfirmationAppStoreMetrics();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v7;
  v1[9] = v6;

  return _swift_task_switch(sub_100020D64, v7, v6);
}

uint64_t sub_100020D64()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  sub_100010668(v0[2] + OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_appStoreMetrics, v3, &qword_100089388, &qword_100067A70);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[3];
  if (v4 == 1)
  {
    v6 = v0[7];

    sub_100011C14(v5, &qword_100089388, &qword_100067A70);
    v7 = v0[6];
    v8 = v0[3];

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[2];
    sub_100022268(v0[3], v0[6]);
    v12 = InstallSheetContext.itemID.getter();
    v14 = v13;
    v0[10] = v13;
    v0[11] = sub_100059AC4(&_swiftEmptyArrayStorage);
    v15 = swift_task_alloc();
    v0[12] = v15;
    *v15 = v0;
    v15[1] = sub_100020F34;
    v16 = v0[6];

    return sub_100056B2C(1701998413, 0xE400000000000000, v12, v14, 1701998445, 0xE400000000000000, 0x6E6F74747562, 0xE600000000000000);
  }
}

uint64_t sub_100020F34()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v8 = *v0;

  v5 = *(v1 + 72);
  v6 = *(v1 + 64);

  return _swift_task_switch(sub_100022538, v6, v5);
}

uint64_t sub_100021094()
{
  v1[2] = v0;
  v2 = *(*(sub_1000047BC(&qword_100089388, &qword_100067A70) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for InstallConfirmationAppStoreMetrics();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v7;
  v1[9] = v6;

  return _swift_task_switch(sub_1000211C0, v7, v6);
}

uint64_t sub_1000211C0()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  sub_100010668(v0[2] + OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_appStoreMetrics, v3, &qword_100089388, &qword_100067A70);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[3];
  if (v4 == 1)
  {
    v6 = v0[7];

    sub_100011C14(v5, &qword_100089388, &qword_100067A70);
    v7 = v0[6];
    v8 = v0[3];

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[2];
    sub_100022268(v0[3], v0[6]);
    v12 = InstallSheetContext.itemID.getter();
    v14 = v13;
    v0[10] = v13;
    v15 = swift_task_alloc();
    v0[11] = v15;
    *v15 = v0;
    v15[1] = sub_100021360;
    v16 = v0[6];

    return sub_100057420(v12, v14, 0x6174736E49707041, 0xEA00000000006C6CLL);
  }
}

uint64_t sub_100021360()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return _swift_task_switch(sub_1000214A4, v5, v4);
}

uint64_t sub_1000214A4()
{
  v2 = v0[6];
  v1 = v0[7];

  sub_1000223B0(v2, type metadata accessor for InstallConfirmationAppStoreMetrics);
  v3 = v0[6];
  v4 = v0[3];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100021534()
{
  *(v1 + 64) = v0;
  type metadata accessor for MainActor();
  *(v1 + 72) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000215CC, v3, v2);
}

uint64_t sub_1000215CC()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = [objc_opt_self() clearColor];
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  v0[6] = sub_100022208;
  v0[7] = v5;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10005F9E8;
  v0[5] = &unk_10007EEF8;
  v6 = _Block_copy(v0 + 2);
  v7 = v0[7];
  v8 = v2;
  v9 = v3;

  [v4 animateWithDuration:v6 animations:0.3];
  _Block_release(v6);

  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v0[6] = sub_100022260;
  v0[7] = v10;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10005F9E8;
  v0[5] = &unk_10007EF48;
  v11 = _Block_copy(v0 + 2);
  v12 = v0[7];
  v13 = v8;

  [v13 dismissViewControllerAnimated:1 completion:v11];
  _Block_release(v11);
  v14 = v0[1];

  return v14();
}

uint64_t sub_1000217CC(uint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1 + OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_dismissAction;
  v3 = *(a1 + OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_dismissAction);
  if (v3)
  {
    v4 = *(v2 + 8);

    v3(v5);
    sub_10001369C(v3);
  }
}

void sub_100021898(char a1)
{
  v3 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v18 - v5;
  v7 = OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_response;
  v1[OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_response] = a1;
  v8 = OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_responseAction;
  v9 = *&v1[OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_responseAction];
  if (v9)
  {
    v10 = v9;
    if ([v10 canSendResponse])
    {
      v11 = [objc_allocWithZone(BSMutableSettings) init];
      v12 = [objc_allocWithZone(NSNumber) initWithBool:v1[v7]];
      [v11 setObject:v12 forSetting:1];

      v13 = [objc_opt_self() responseWithInfo:v11];
      [v10 sendResponse:v13];

      v10 = *&v1[v8];
      *&v1[v8] = 0;
    }
  }

  if ((a1 & 1) == 0)
  {
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    type metadata accessor for MainActor();
    v15 = v1;
    v16 = static MainActor.shared.getter();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = &protocol witness table for MainActor;
    v17[4] = v15;
    sub_100007654(0, 0, v6, &unk_100066620, v17);
  }
}

uint64_t sub_100021AB8()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100021B64;

  return sub_100021534();
}

uint64_t sub_100021B64()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100021CA0, v5, v4);
}

uint64_t sub_100021CA0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

void sub_100021D00(void *a1, uint64_t a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [a1 view];
  if (v4)
  {
    v5 = v4;
    [v4 setBackgroundColor:a2];
  }

  else
  {
    __break(1u);
  }
}

id sub_100021E70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CombinedApprovalAndInstallViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CombinedApprovalAndInstallViewController()
{
  result = qword_1000894E8;
  if (!qword_1000894E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100021F94()
{
  v0 = type metadata accessor for LocalizedCombinedApprovalAndInstallContent();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10002207C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10002207C()
{
  if (!qword_1000894F8)
  {
    type metadata accessor for InstallConfirmationAppStoreMetrics();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000894F8);
    }
  }
}

uint64_t sub_1000220D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100022114()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001020C;

  return sub_100021AB8();
}

uint64_t sub_1000221C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100022210(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100022228()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022268(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstallConfirmationAppStoreMetrics();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000222CC()
{
  v1 = (v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_dismissAction);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_childViewController) = 0;
  *(v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_responseAction) = 0;
  *(v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_response) = 0;
  v2 = OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_isIPad;
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  *(v0 + v2) = v4 == 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000223B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100022410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedCombinedApprovalAndInstallContent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100022474(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000224C4()
{

  return sub_10001FC00();
}

id sub_10002254C(void *a1, void *a2)
{
  v3 = v2;
  v79 = a2;
  v5 = type metadata accessor for ConfirmationSheetContext();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v75 = v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v74 = v72 - v11;
  v12 = __chkstk_darwin(v10);
  v76 = v72 - v13;
  __chkstk_darwin(v12);
  v77 = v72 - v14;
  v15 = sub_1000047BC(&qword_100089588, &unk_100066720);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v72 - v17;
  v19 = type metadata accessor for ConfirmationSheetSymbol();
  v81 = *(v19 - 8);
  v82 = v19;
  v20 = *(v81 + 64);
  __chkstk_darwin(v19);
  v80 = v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = &v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction];
  *v22 = 0;
  v22[1] = 0;
  v23 = OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_primaryButton;
  *&v3[v23] = [objc_opt_self() boldButton];
  v24 = OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_secondaryButton;
  *&v3[v24] = [objc_opt_self() linkButton];
  v25 = OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_isIPad;
  v26 = [objc_opt_self() currentDevice];
  v27 = [v26 userInterfaceIdiom];

  v3[v25] = v27 == 1;
  v28 = OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_context;
  v29 = v6[2];
  v30 = v5;
  (v29)(&v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_context], a1, v5);
  v31 = v79;
  *&v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_customBodyView] = v79;
  v32 = v31;
  v33 = v81;
  v78 = v32;
  v79 = a1;
  ConfirmationSheetContext.symbolConfiguration.getter();
  v34 = v82;
  if ((*(v33 + 48))(v18, 1, v82) == 1)
  {
    sub_100011C14(v18, &qword_100089588, &unk_100066720);
    v35 = v77;
    (v29)(v77, &v3[v28], v30);
    ConfirmationSheetContext.title.getter();
    v36 = v6[1];
    v36(v35, v30);
    v82 = String._bridgeToObjectiveC()();

    v37 = v76;
    (v29)(v76, &v3[v28], v30);
    ConfirmationSheetContext.subtitle.getter();
    v39 = v38;
    v36(v37, v30);
    if (v39)
    {
      v40 = String._bridgeToObjectiveC()();
    }

    else
    {
      v40 = 0;
    }

    v63 = type metadata accessor for ConfirmationSheetViewController();
    v85.receiver = v3;
    v85.super_class = v63;
    v64 = v82;
    v65 = objc_msgSendSuper2(&v85, "initWithTitle:detailText:symbolName:contentLayout:", v82, v40, 0, 3);

    v36(v79, v30);
  }

  else
  {
    v72[1] = v6 + 2;
    v73 = v6;
    v41 = v28;
    v76 = v29;
    v72[0] = v30;
    (*(v33 + 32))(v80, v18, v34);
    v42 = ConfirmationSheetSymbol.enableHeirarchicalColors.getter();
    if (v42 == 2 || (v42 & 1) == 0)
    {
      v57 = v76;
      v56 = v77;
      v49 = v72[0];
      (v76)(v77, &v3[v28], v72[0]);
      ConfirmationSheetContext.title.getter();
      v58 = *(v73 + 8);
      v73 = (v73 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58(v56, v49);
      v51 = String._bridgeToObjectiveC()();

      v59 = v75;
      v57(v75, &v3[v28], v49);
      ConfirmationSheetContext.subtitle.getter();
      v61 = v60;
      v62 = v59;
      v50 = v58;
      v58(v62, v49);
      if (v61)
      {
        v55 = String._bridgeToObjectiveC()();
      }

      else
      {
        v55 = 0;
      }

      v66 = v80;
      ConfirmationSheetSymbol.symbolName.getter();
      v67 = String._bridgeToObjectiveC()();

      v68 = type metadata accessor for ConfirmationSheetViewController();
      v84.receiver = v3;
      v84.super_class = v68;
      v69 = objc_msgSendSuper2(&v84, "initWithTitle:detailText:symbolName:contentLayout:", v51, v55, v67, 3);
      v47 = v78;
    }

    else
    {
      v43 = [objc_opt_self() tintColor];
      v44 = [objc_opt_self() configurationWithHierarchicalColor:v43];

      v45 = v44;
      ConfirmationSheetSymbol.symbolName.getter();
      v46 = String._bridgeToObjectiveC()();

      v47 = [objc_opt_self() systemImageNamed:v46 withConfiguration:v45];

      v75 = v45;
      v48 = v77;
      v49 = v72[0];
      (v76)(v77, &v3[v41], v72[0]);
      ConfirmationSheetContext.title.getter();
      v50 = *(v73 + 8);
      v73 = (v73 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v50(v48, v49);
      v51 = String._bridgeToObjectiveC()();

      v52 = v74;
      (v76)(v74, &v3[v41], v49);
      ConfirmationSheetContext.subtitle.getter();
      v54 = v53;
      v50(v52, v49);
      if (v54)
      {
        v55 = String._bridgeToObjectiveC()();
      }

      else
      {
        v55 = 0;
      }

      v70 = type metadata accessor for ConfirmationSheetViewController();
      v83.receiver = v3;
      v83.super_class = v70;
      v69 = objc_msgSendSuper2(&v83, "initWithTitle:detailText:icon:contentLayout:", v51, v55, v47, 3);

      v66 = v80;
      v67 = v75;
    }

    v65 = v69;
    v50(v79, v49);
    (*(v81 + 8))(v66, v82);
  }

  return v65;
}

id sub_100022D48()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:STRestrictionsPINControllerDidFinishNotification object:0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for ConfirmationSheetViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for ConfirmationSheetViewController()
{
  result = qword_100089578;
  if (!qword_100089578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100023038()
{
  v1 = v0;
  v2 = sub_1000047BC(&qword_1000895B0, &unk_100066758);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v109 = &v103 - v4;
  v5 = type metadata accessor for ConfirmationSheetMiniProductPageConfiguration();
  v110 = *(v5 - 8);
  v111 = v5;
  v6 = *(v110 + 64);
  __chkstk_darwin(v5);
  v106 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000047BC(&qword_1000895A0, &qword_100066750);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v103 - v10;
  v12 = type metadata accessor for ConfirmationSheetMoreInformationLink();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v108 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [v0 navigationItem];
  [v16 setTitle:0];

  [v1 setModalInPresentation:1];
  [v1 setDefinesPresentationContext:1];
  if (v1[OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_isIPad])
  {
    v17 = 88.0;
  }

  else
  {
    v17 = 38.0;
  }

  v18 = [v1 contentView];
  [v18 setDirectionalLayoutMargins:{0.0, v17, 0.0, v17}];

  v19 = [v1 headerView];
  v20 = [v19 bottomAnchor];

  v21 = [v1 contentView];
  v22 = [v21 topAnchor];

  v23 = [v20 constraintEqualToAnchor:v22 constant:0.0];
  [v23 setActive:1];

  v24 = [v1 contentView];
  v25 = [v24 topAnchor];

  v112 = OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_context;
  ConfirmationSheetContext.moreInformationLink.getter();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100011C14(v11, &qword_1000895A0, &qword_100066750);
    v26 = &off_100086000;
  }

  else
  {
    v27 = *(v13 + 32);
    v105 = v12;
    v27(v108, v11, v12);
    v28 = sub_100023D30();
    v104 = objc_opt_self();
    sub_1000047BC(&qword_10008A4A0, &unk_100066390);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100066650;
    v30 = [v28 topAnchor];
    v31 = [v30 constraintEqualToAnchor:v25 constant:4.0];

    *(v29 + 32) = v31;
    v32 = [v28 leadingAnchor];
    v33 = [v1 contentView];
    v34 = [v33 leadingAnchor];
    v107 = v25;
    v35 = v34;

    v36 = [v32 constraintEqualToAnchor:v35 constant:v17];
    *(v29 + 40) = v36;
    v37 = [v28 trailingAnchor];
    v38 = [v1 contentView];
    v39 = [v38 trailingAnchor];

    v40 = [v37 constraintLessThanOrEqualToAnchor:v39 constant:-v17];
    *(v29 + 48) = v40;
    sub_10001E778(0, &qword_1000895A8, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v104 activateConstraints:isa];

    v25 = [v28 bottomAnchor];
    (*(v13 + 8))(v108, v105);
    v26 = &off_100086000;
  }

  v42 = ConfirmationSheetContext.bulletPoints.getter();
  if (v42)
  {
    v43 = &off_100086000;
    if (*(v42 + 16))
    {
      v44 = sub_10002434C(v42);

      v108 = objc_opt_self();
      sub_1000047BC(&qword_10008A4A0, &unk_100066390);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_100066650;
      v46 = [v44 topAnchor];
      v47 = [v46 constraintEqualToAnchor:v25 constant:16.0];

      *(v45 + 32) = v47;
      v48 = [v44 leadingAnchor];
      v49 = [v1 contentView];
      v50 = v25;
      v51 = [v49 leadingAnchor];

      v52 = [v48 constraintEqualToAnchor:v51 constant:v17];
      *(v45 + 40) = v52;
      v53 = [v44 trailingAnchor];
      v54 = [v1 contentView];
      v55 = [v54 trailingAnchor];

      v26 = &off_100086000;
      v56 = [v53 constraintEqualToAnchor:v55 constant:-v17];

      *(v45 + 48) = v56;
      sub_10001E778(0, &qword_1000895A8, NSLayoutConstraint_ptr);
      v57 = Array._bridgeToObjectiveC()().super.isa;

      [v108 activateConstraints:v57];

      v25 = [v44 bottomAnchor];
    }

    else
    {
    }
  }

  else
  {
    v43 = &off_100086000;
  }

  v58 = *&v1[OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_customBodyView];
  if (v58)
  {
    v59 = v58;
    [v59 setTranslatesAutoresizingMaskIntoConstraints:0];
    v60 = [v1 contentView];
    [v60 addSubview:v59];

    v108 = objc_opt_self();
    sub_1000047BC(&qword_10008A4A0, &unk_100066390);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_100066650;
    v62 = v59;
    v63 = [v62 v43[130]];
    v64 = [v63 constraintEqualToAnchor:v25 constant:16.0];

    *(v61 + 32) = v64;
    v65 = [v62 leadingAnchor];
    v66 = [v1 contentView];
    v67 = v25;
    v68 = [v66 leadingAnchor];

    v69 = [v65 constraintEqualToAnchor:v68 constant:v17];
    *(v61 + 40) = v69;
    v70 = [v62 trailingAnchor];
    v26 = &off_100086000;
    v71 = [v1 contentView];
    v72 = [v71 trailingAnchor];

    v73 = [v70 constraintEqualToAnchor:v72 constant:-v17];
    *(v61 + 48) = v73;
    sub_10001E778(0, &qword_1000895A8, NSLayoutConstraint_ptr);
    v74 = Array._bridgeToObjectiveC()().super.isa;

    [v108 activateConstraints:v74];

    v25 = [v62 bottomAnchor];
  }

  v75 = v109;
  ConfirmationSheetContext.miniProductPageConfiguration.getter();
  v76 = v110;
  v77 = v111;
  if ((*(v110 + 48))(v75, 1, v111) == 1)
  {

    return sub_100011C14(v75, &qword_1000895B0, &unk_100066758);
  }

  else
  {
    v79 = v106;
    (*(v76 + 32))(v106, v75, v77);
    v80 = v26;
    v81 = ConfirmationSheetMiniProductPageConfiguration.itemID.getter();
    v83 = v82;
    v84 = ConfirmationSheetMiniProductPageConfiguration.versionID.getter();
    v107 = v25;
    v85 = v84;
    v87 = v86;
    v88 = ConfirmationSheetMiniProductPageConfiguration.distributorID.getter();
    v90 = v89;
    v91 = ConfirmationSheetMiniProductPageConfiguration.isForAppStore.getter();
    v92 = sub_1000251F8(v81, v83, v85, v87, v88, v90, v91 & 1);

    v93 = objc_opt_self();
    sub_1000047BC(&qword_10008A4A0, &unk_100066390);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_100066660;
    v95 = [v92 topAnchor];
    v96 = v107;
    v97 = [v95 constraintEqualToAnchor:v107 constant:24.0];

    *(v94 + 32) = v97;
    v98 = [v92 v80[108]];
    v99 = [v1 contentView];
    v100 = [v99 v80[108]];

    v101 = [v98 constraintEqualToAnchor:v100];
    *(v94 + 40) = v101;
    sub_10001E778(0, &qword_1000895A8, NSLayoutConstraint_ptr);
    v102 = Array._bridgeToObjectiveC()().super.isa;

    [v93 activateConstraints:v102];

    return (*(v110 + 8))(v79, v111);
  }
}

id sub_100023D30()
{
  v1 = v0;
  v2 = [objc_allocWithZone(UIView) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() systemImageNamed:v3];

  v5 = [objc_allocWithZone(UIImageView) initWithImage:v4];
  v6 = objc_opt_self();
  v7 = [v6 systemBlueColor];
  [v5 setTintColor:v7];

  v8 = v5;
  [v8 setContentMode:1];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [objc_allocWithZone(UILabel) init];
  ConfirmationSheetMoreInformationLink.label.getter();
  v10 = String._bridgeToObjectiveC()();

  [v9 setText:v10];

  v11 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v9 setFont:v11];

  v12 = [v6 systemBlueColor];
  [v9 setTextColor:v12];

  v13 = v9;
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v41 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v1 action:"moreInformationPressed"];
  [v2 addGestureRecognizer:v41];
  [v2 setUserInteractionEnabled:1];
  [v2 addSubview:v8];
  [v2 addSubview:v13];
  v14 = [v1 contentView];
  [v14 addSubview:v2];

  v40 = objc_opt_self();
  sub_1000047BC(&qword_10008A4A0, &unk_100066390);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100066670;
  v16 = [v8 leadingAnchor];
  v17 = [v2 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v15 + 32) = v18;
  v19 = [v8 centerYAnchor];
  v20 = [v2 centerYAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v15 + 40) = v21;
  v22 = [v8 widthAnchor];
  v23 = [v22 constraintEqualToConstant:20.0];

  *(v15 + 48) = v23;
  v24 = [v8 heightAnchor];
  v25 = [v24 constraintEqualToConstant:20.0];

  *(v15 + 56) = v25;
  v26 = [v13 leadingAnchor];
  v27 = [v8 trailingAnchor];

  v28 = [v26 constraintEqualToAnchor:v27 constant:6.0];
  *(v15 + 64) = v28;
  v29 = [v13 centerYAnchor];
  v30 = [v2 centerYAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v15 + 72) = v31;
  v32 = [v13 trailingAnchor];
  v33 = [v2 trailingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v15 + 80) = v34;
  v35 = [v2 heightAnchor];
  v36 = [v13 heightAnchor];

  v37 = [v35 constraintEqualToAnchor:v36];
  *(v15 + 88) = v37;
  sub_10001E778(0, &qword_1000895A8, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v40 activateConstraints:isa];

  return v2;
}

id sub_10002434C(uint64_t a1)
{
  v3 = [objc_allocWithZone(UIView) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [v1 contentView];
  [v4 addSubview:v3];

  v5 = *(a1 + 16);
  if (!v5)
  {
    v91 = [v3 heightAnchor];
    v90 = [v91 constraintEqualToConstant:0.0];

    [v90 setActive:1];
    goto LABEL_9;
  }

  v104 = v3;
  v97 = objc_opt_self();
  v96 = objc_opt_self();
  v95 = objc_opt_self();
  v94 = objc_opt_self();
  v103 = objc_opt_self();
  v101 = 0;
  v6 = *(type metadata accessor for ConfirmationSheetBulletPoint() - 8);
  v7 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v102 = v5 - 1;
  v93 = *(v6 + 72);
  while (1)
  {
    v105 = [objc_allocWithZone(UIView) init];
    [v105 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [objc_allocWithZone(UIImageView) init];
    v14 = [v97 systemBlueColor];
    v15 = [v96 configurationWithHierarchicalColor:v14];

    ConfirmationSheetBulletPoint.icon.getter();
    v16 = v15;
    v17 = String._bridgeToObjectiveC()();

    v18 = [v95 _systemImageNamed:v17 withConfiguration:v16];

    v100 = v16;
    [v13 setImage:v18];

    v106 = v13;
    [v106 setContentMode:1];
    [v106 setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [objc_allocWithZone(UIView) init];
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = [objc_allocWithZone(UILabel) init];
    ConfirmationSheetBulletPoint.header.getter();
    v21 = String._bridgeToObjectiveC()();

    [v20 setText:v21];

    v22 = [v94 preferredFontForTextStyle:UIFontTextStyleHeadline];
    [v20 setFont:v22];

    v23 = [v97 labelColor];
    [v20 setTextColor:v23];

    [v20 setNumberOfLines:0];
    v24 = v20;
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = [objc_allocWithZone(UILabel) init];
    v98 = v7;
    ConfirmationSheetBulletPoint.body.getter();
    v26 = String._bridgeToObjectiveC()();

    [v25 setText:v26];

    v27 = [v94 preferredFontForTextStyle:UIFontTextStyleBody];
    [v25 setFont:v27];

    v28 = [v97 secondaryLabelColor];
    [v25 setTextColor:v28];

    [v25 setNumberOfLines:0];
    v29 = v25;
    [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v19 addSubview:v24];
    [v19 addSubview:v29];
    [v105 addSubview:v106];
    [v105 addSubview:v19];
    [v104 addSubview:v105];
    sub_1000047BC(&qword_10008A4A0, &unk_100066390);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_100066680;
    v31 = [v24 topAnchor];
    v32 = [v19 topAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];

    *(v30 + 32) = v33;
    v34 = [v24 leadingAnchor];
    v35 = [v19 leadingAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];

    *(v30 + 40) = v36;
    v37 = [v24 trailingAnchor];
    v38 = [v19 trailingAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];

    *(v30 + 48) = v39;
    v40 = [v29 topAnchor];
    v41 = [v24 bottomAnchor];

    v42 = [v40 constraintEqualToAnchor:v41 constant:4.0];
    *(v30 + 56) = v42;
    v43 = [v29 leadingAnchor];
    v44 = [v19 leadingAnchor];
    v45 = [v43 constraintEqualToAnchor:v44];

    *(v30 + 64) = v45;
    v46 = [v29 trailingAnchor];
    v47 = [v19 trailingAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];

    *(v30 + 72) = v48;
    v49 = [v29 bottomAnchor];
    v99 = v29;

    v50 = [v19 bottomAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];

    *(v30 + 80) = v51;
    sub_10001E778(0, &qword_1000895A8, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v103 activateConstraints:isa];

    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_100066670;
    v54 = [v106 leadingAnchor];
    v55 = [v105 leadingAnchor];
    v56 = [v54 constraintEqualToAnchor:v55];

    *(v53 + 32) = v56;
    v57 = [v106 topAnchor];
    v58 = [v105 topAnchor];
    v59 = [v57 constraintEqualToAnchor:v58];

    *(v53 + 40) = v59;
    v60 = [v106 widthAnchor];
    v61 = [v60 constraintEqualToConstant:36.0];

    *(v53 + 48) = v61;
    v62 = [v106 heightAnchor];
    v63 = [v62 constraintEqualToConstant:36.0];

    *(v53 + 56) = v63;
    v64 = [v19 leadingAnchor];
    v65 = [v106 trailingAnchor];

    v66 = [v64 constraintEqualToAnchor:v65 constant:12.0];
    *(v53 + 64) = v66;
    v67 = [v19 topAnchor];
    v68 = [v105 topAnchor];
    v69 = [v67 constraintEqualToAnchor:v68];

    *(v53 + 72) = v69;
    v70 = [v19 trailingAnchor];
    v71 = [v105 trailingAnchor];
    v72 = [v70 constraintEqualToAnchor:v71];

    *(v53 + 80) = v72;
    v73 = [v19 bottomAnchor];
    v74 = [v105 bottomAnchor];
    v75 = [v73 constraintEqualToAnchor:v74];

    *(v53 + 88) = v75;
    v76 = Array._bridgeToObjectiveC()().super.isa;

    [v103 activateConstraints:v76];

    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_100066660;
    v78 = [v105 leadingAnchor];
    v79 = [v104 leadingAnchor];
    v80 = [v78 constraintEqualToAnchor:v79];

    *(v77 + 32) = v80;
    v81 = [v105 trailingAnchor];
    v82 = [v104 trailingAnchor];
    v83 = [v81 constraintEqualToAnchor:v82];

    *(v77 + 40) = v83;
    v84 = Array._bridgeToObjectiveC()().super.isa;

    [v103 activateConstraints:v84];

    if (v101)
    {
      break;
    }

    v8 = [v105 topAnchor];
    v9 = [v104 topAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];

    [v10 setActive:1];
    v11 = v102;
    v12 = &off_100086000;
    if (!v102)
    {
      goto LABEL_7;
    }

LABEL_4:
    v102 = v11 - 1;
    v7 = v98 + v93;
    v101 = v105;
  }

  v85 = [v105 topAnchor];
  v86 = [v101 bottomAnchor];
  v87 = [v85 constraintEqualToAnchor:v86 constant:24.0];

  [v87 setActive:1];
  v11 = v102;
  v12 = &off_100086000;
  if (v102)
  {
    goto LABEL_4;
  }

LABEL_7:
  v3 = v104;
  v88 = [v104 v12[108]];
  v89 = [v105 v12[108]];
  v90 = [v88 constraintEqualToAnchor:v89];

  [v90 setActive:1];
LABEL_9:

  return v3;
}

char *sub_1000251F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v14 = ConfirmationSheetContext.logKey.getter();
  v16 = v15;
  v52 = type metadata accessor for MiniProductPageView(0);
  v17 = objc_allocWithZone(v52);
  *&v17[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_traitChangeRegistration] = 0;
  v18 = OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_context;
  v19 = type metadata accessor for InstallSheetContext();
  (*(*(v19 - 8) + 56))(&v17[v18], 1, 1, v19);
  v20 = &v17[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_itemID];
  *v20 = a1;
  v20[1] = a2;
  v21 = &v17[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_versionID];
  *v21 = a3;
  v21[1] = a4;
  v22 = &v17[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_distributorID];
  *v22 = a5;
  v22[1] = a6;
  v17[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_isForAppStore] = a7;
  v23 = &v17[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_logKey];
  *v23 = v14;
  v23[1] = v16;
  v24 = objc_allocWithZone(AppStoreComponentsWrapper);
  v25 = v8;

  v26 = String._bridgeToObjectiveC()();

  v27 = [v24 initWithLogKey:v26];

  *&v17[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_appStoreComponentsWrapper] = v27;
  v53.receiver = v17;
  v53.super_class = v52;
  v28 = objc_msgSendSuper2(&v53, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10003FF70(v8, v28);
  sub_100045FF4();
  v29 = v28;
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = [v25 contentView];
  [v30 addSubview:v29];

  if (*(v25 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_isIPad) == 1)
  {
    v31 = [v25 contentView];
    v32 = [v31 leadingAnchor];

    v33 = [v29 leadingAnchor];
    v34 = [v32 constraintGreaterThanOrEqualToAnchor:v33 constant:-88.0];

    LODWORD(v35) = 1140457472;
    [v34 setPriority:v35];
    [v34 setActive:1];
    v36 = [v25 contentView];
    v37 = [v36 centerXAnchor];

    v38 = [v29 centerXAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];

    [v39 setActive:1];
    v40 = [v29 widthAnchor];
    v41 = [v40 constraintLessThanOrEqualToConstant:360.0];

    [v41 setActive:1];
  }

  else
  {
    v42 = [v29 leadingAnchor];
    v43 = [v25 contentView];
    v44 = [v43 leadingAnchor];

    v45 = [v42 constraintEqualToAnchor:v44 constant:24.0];
    [v45 setActive:1];

    v46 = [v29 trailingAnchor];
    v47 = [v25 contentView];
    v48 = [v47 trailingAnchor];

    v41 = [v46 constraintEqualToAnchor:v48 constant:-24.0];
    [v41 setActive:1];
  }

  return v29;
}

void sub_1000256E8()
{
  v1 = v0;
  v2 = sub_1000047BC(&unk_100089E30, &qword_100067230);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v68 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v73 = &v65 - v7;
  v8 = __chkstk_darwin(v6);
  v67 = &v65 - v9;
  __chkstk_darwin(v8);
  v66 = &v65 - v10;
  v71 = type metadata accessor for ConfirmationSheetButtonStyle();
  v11 = *(v71 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v71);
  v70 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v69 = &v65 - v15;
  v16 = type metadata accessor for ConfirmationSheetButton();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *&v0[OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_primaryButton];
  v22 = OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_context;
  ConfirmationSheetContext.primaryButton.getter();
  ConfirmationSheetButton.text.getter();
  v23 = *(v17 + 8);
  v23(v20, v16);
  v24 = String._bridgeToObjectiveC()();

  [v21 setTitle:v24 forState:0];

  v74 = v1;
  v72 = v22;
  ConfirmationSheetContext.primaryButton.getter();
  v25 = v69;
  ConfirmationSheetButton.style.getter();
  v23(v20, v16);
  v27 = v70;
  v26 = v71;
  (*(v11 + 104))(v70, enum case for ConfirmationSheetButtonStyle.white(_:), v71);
  LOBYTE(v24) = static ConfirmationSheetButtonStyle.== infix(_:_:)();
  v28 = *(v11 + 8);
  v28(v27, v26);
  v28(v25, v26);
  if (v24)
  {
    v29 = v66;
    UIButton.configuration.getter();
    v30 = type metadata accessor for UIButton.Configuration();
    v31 = *(*(v30 - 8) + 48);
    if (v31(v29, 1, v30))
    {
      sub_100010668(v29, v73, &unk_100089E30, &qword_100067230);
      UIButton.configuration.setter();
      sub_100011C14(v29, &unk_100089E30, &qword_100067230);
    }

    else
    {
      v32 = [objc_opt_self() systemBlueColor];
      UIButton.Configuration.baseForegroundColor.setter();
      UIButton.configuration.setter();
    }

    v33 = v67;
    UIButton.configuration.getter();
    if (v31(v33, 1, v30))
    {
      sub_100010668(v33, v73, &unk_100089E30, &qword_100067230);
      UIButton.configuration.setter();
      sub_100011C14(v33, &unk_100089E30, &qword_100067230);
    }

    else
    {
      v34 = [objc_opt_self() clearColor];
      UIButton.Configuration.baseBackgroundColor.setter();
      UIButton.configuration.setter();
    }
  }

  v35 = v74;
  [v21 addTarget:v74 action:"primaryButtonPressed" forControlEvents:64];
  v36 = [v35 buttonTray];
  [v36 addButton:v21];

  ConfirmationSheetContext.secondaryButtonText.getter();
  v37 = &off_100086000;
  if (v38)
  {
    v39 = *&v35[OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_secondaryButton];
    v40 = String._bridgeToObjectiveC()();

    [v39 setTitle:v40 forState:0];

    v41 = v68;
    UIButton.configuration.getter();
    v42 = type metadata accessor for UIButton.Configuration();
    if ((*(*(v42 - 8) + 48))(v41, 1, v42))
    {
      sub_100010668(v41, v73, &unk_100089E30, &qword_100067230);
      UIButton.configuration.setter();
      v35 = v74;
      sub_100011C14(v41, &unk_100089E30, &qword_100067230);
    }

    else
    {
      v43 = [objc_opt_self() systemBlueColor];
      UIButton.Configuration.baseForegroundColor.setter();
      UIButton.configuration.setter();
    }

    [v39 addTarget:v35 action:"secondaryButtonPressed" forControlEvents:64];
    v44 = [v35 buttonTray];
    [v44 addButton:v39];

    v45 = [v21 heightAnchor];
    v46 = [v39 heightAnchor];
    v47 = [v45 constraintEqualToAnchor:v46];

    v37 = &off_100086000;
    [v47 setActive:1];

    v35 = v74;
  }

  v48 = v35[OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_isIPad];
  v49 = [v35 buttonTray];
  v50 = v49;
  if (v48 == 1)
  {
    v51 = [v49 widthAnchor];

    v52 = [v51 constraintLessThanOrEqualToConstant:360.0];
    [v52 v37[103]];

    v53 = *&v35[OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_secondaryButton];
    v54 = [v53 superview];
    if (v54)
    {

      v55 = [v53 bottomAnchor];
    }

    else
    {
      v55 = [v21 bottomAnchor];
    }

    v56 = [v35 buttonTray];
    v62 = [v56 bottomAnchor];

    v63 = [v55 constraintEqualToAnchor:v62 constant:-24.0];
  }

  else
  {
    v57 = [v49 leadingAnchor];

    v58 = [v21 leadingAnchor];
    v59 = v35;
    v60 = [v57 constraintEqualToAnchor:v58 constant:-24.0];

    [v60 v37[103]];
    v61 = [v59 buttonTray];
    v55 = [v61 trailingAnchor];

    v62 = [v21 trailingAnchor];
    v63 = [v55 constraintEqualToAnchor:v62 constant:24.0];
  }

  v64 = v63;

  [v64 v37[103]];
}

id sub_100026034()
{
  v0 = sub_1000047BC(&qword_1000893C0, &unk_1000663F0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v23 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000047BC(&qword_1000895A0, &qword_100066750);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for ConfirmationSheetMoreInformationLink();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  ConfirmationSheetContext.moreInformationLink.getter();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_100011C14(v12, &qword_1000895A0, &qword_100066750);
  }

  (*(v14 + 32))(v17, v12, v13);
  ConfirmationSheetMoreInformationLink.URL.getter();
  URL.init(string:)();

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    (*(v14 + 8))(v17, v13);
    return sub_100011C14(v3, &qword_1000893C0, &unk_1000663F0);
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v20 = result;
      URL._bridgeToObjectiveC()(v19);
      v22 = v21;
      [v20 openSensitiveURL:v21 withOptions:0];

      (*(v5 + 8))(v8, v4);
      return (*(v14 + 8))(v17, v13);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000263B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(sub_1000047BC(&qword_1000895B8, &qword_100066778) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v6 = type metadata accessor for ConfirmationSheetPostPrimaryButtonAction();
  v4[4] = v6;
  v7 = *(v6 - 8);
  v4[5] = v7;
  v8 = *(v7 + 64) + 15;
  v4[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v10;
  v4[9] = v9;

  return _swift_task_switch(sub_1000264DC, v10, v9);
}

uint64_t sub_1000264DC()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = v0[2] + OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_context;
  ConfirmationSheetContext.postPrimaryButtonAction.getter();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[7];
    v6 = v0[2];
    v7 = v0[3];

    sub_100011C14(v7, &qword_1000895B8, &qword_100066778);
    v8 = v6 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction;
    v9 = *(v6 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction);
    if (v9)
    {
      v10 = *(v8 + 8);

      v9(1);
      sub_10001E7C4(v9);
    }

    v11 = v0[2];
    v12 = [objc_opt_self() defaultCenter];
    [v12 removeObserver:v11 name:STRestrictionsPINControllerDidFinishNotification object:0];

    v13 = v0[6];
    v14 = v0[3];

    v15 = v0[1];

    return v15();
  }

  else
  {
    (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
    v17 = swift_task_alloc();
    v0[10] = v17;
    *v17 = v0;
    v17[1] = sub_1000266C4;
    v18 = v0[6];
    v19 = v0[2];

    return sub_100026BC0(v18);
  }
}

uint64_t sub_1000266C4()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return _swift_task_switch(sub_1000267E4, v4, v3);
}

uint64_t sub_1000267E4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];

  (*(v4 + 8))(v2, v3);
  v5 = v0[6];
  v6 = v0[3];

  v7 = v0[1];

  return v7();
}

void sub_100026A18()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction + 8);

    v2(0);
    sub_10001E7C4(v2);
  }

  v4 = [objc_opt_self() defaultCenter];
  [v4 removeObserver:v1 name:STRestrictionsPINControllerDidFinishNotification object:0];
}

void sub_100026AF4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

uint64_t sub_100026BC0(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for ConfirmationSheetLAConfiguration();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = *(*(sub_1000047BC(&qword_1000893C0, &unk_1000663F0) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v7 = type metadata accessor for ConfirmationSheetOsloSheetConfiguration();
  v2[12] = v7;
  v8 = *(v7 - 8);
  v2[13] = v8;
  v9 = *(v8 + 64) + 15;
  v2[14] = swift_task_alloc();
  v10 = type metadata accessor for ConfirmationSheetPostPrimaryButtonAction();
  v2[15] = v10;
  v11 = *(v10 - 8);
  v2[16] = v11;
  v12 = *(v11 + 64) + 15;
  v2[17] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[18] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[19] = v13;
  v2[20] = v14;

  return _swift_task_switch(sub_100026DD8, v13, v14);
}

uint64_t sub_100026DD8()
{
  receiver = v0[8].receiver;
  super_class = v0[8].super_class;
  v3 = v0[7].super_class;
  receiver[2](super_class, v0[3].receiver, v3);
  v4 = (receiver[11])(super_class, v3);
  if (v4 == enum case for ConfirmationSheetPostPrimaryButtonAction.osloAuthentication(_:))
  {
    v5 = v0[8].super_class;
    v6 = v0[7].receiver;
    v7 = v0[6].receiver;
    v8 = v0[6].super_class;
    (*(v0[8].receiver + 12))(v5, v0[7].super_class);
    (*(v8 + 4))(v6, v5, v7);
    v9 = [objc_allocWithZone(LAContext) init];
    v0[2].receiver = 0;
    v0[10].super_class = v9;
    LODWORD(v7) = [(objc_class *)v9 canEvaluatePolicy:1005 error:&v0[2]];
    v10 = v0[2].receiver;
    v0[11].receiver = v10;
    v11 = v10;
    if (v7)
    {
      v12 = v0[7].receiver;
      v13 = v0[5].super_class;
      v14 = ConfirmationSheetOsloSheetConfiguration.paymentSheetTitle.getter();
      v99 = v15;
      v100 = v14;
      v98 = ConfirmationSheetOsloSheetConfiguration.paymentSheetLabel.getter();
      v17 = v16;
      v18 = ConfirmationSheetOsloSheetConfiguration.processingText.getter();
      v20 = v19;
      ConfirmationSheetOsloSheetConfiguration.iconURL.getter();
      v21 = type metadata accessor for OsloAuthenticationTask(0);
      v22 = objc_allocWithZone(v21);
      v23 = OBJC_IVAR____TtC26AppDistributionLaunchAngel22OsloAuthenticationTask_finalizedContinuation;
      v24 = sub_1000047BC(&unk_1000899D0, &unk_100066640);
      (*(*(v24 - 8) + 56))(&v22[v23], 1, 1, v24);
      v22[OBJC_IVAR____TtC26AppDistributionLaunchAngel22OsloAuthenticationTask_finalResult] = 0;
      v25 = &v22[OBJC_IVAR____TtC26AppDistributionLaunchAngel22OsloAuthenticationTask_localizedContent];
      v26 = type metadata accessor for OsloAuthenticationTask.LocalizedContent(0);
      sub_100010668(v13, v25 + *(v26 + 28), &qword_1000893C0, &unk_1000663F0);
      *v25 = v100;
      v25[1] = v99;
      v25[2] = v98;
      v25[3] = v17;
      v25[4] = v18;
      v25[5] = v20;
      v0[1].receiver = v22;
      v0[1].super_class = v21;
      v0[11].super_class = objc_msgSendSuper2(v0 + 1, "init");
      sub_100011C14(v13, &qword_1000893C0, &unk_1000663F0);
      v27 = swift_task_alloc();
      v0[12].receiver = v27;
      *v27 = v0;
      v27[1] = sub_100027914;

      return sub_10002EACC();
    }

    v35 = v11;
    v36 = v0[9].receiver;

    if (v35)
    {
      type metadata accessor for Code(0);
      v0[2].super_class = -5;
      sub_100029638();
      v37 = v35;
      if (static _ErrorCodeProtocol.~= infix(_:_:)())
      {
        if (qword_100088420 != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        sub_1000105E8(v38, qword_100089510);
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&_mh_execute_header, v39, v40, "Passcode not set, continuing without additional confirmation", v41, 2u);
        }

        v42 = v0[3].super_class;

        v43 = v42 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction;
        v44 = *(v42 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction);
        if (v44)
        {
          v45 = *(v43 + 1);

          v44(1);
          sub_10001E7C4(v44);
        }

        v47 = v0[6].super_class;
        v46 = v0[7].receiver;
        v48 = v0[6].receiver;
        v49 = v0[3].super_class;
        v50 = [objc_opt_self() defaultCenter];
        [v50 removeObserver:v49 name:STRestrictionsPINControllerDidFinishNotification object:0];

        (*(v47 + 1))(v46, v48);
LABEL_47:
        v93 = v0[8].super_class;
        v94 = v0[7].receiver;
        v96 = v0[5].receiver;
        v95 = v0[5].super_class;

        v97 = v0->super_class;

        return v97();
      }
    }

    if (qword_100088420 != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    sub_1000105E8(v74, qword_100089510);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();
    v77 = os_log_type_enabled(v75, v76);
    v78 = v0[6].super_class;
    v79 = v0[7].receiver;
    v80 = v0[6].receiver;
    if (v77)
    {
      v101 = v0[7].receiver;
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v81 = 138543362;
      *(v81 + 4) = v35;
      *v82 = v10;
      v35 = v35;
      _os_log_impl(&_mh_execute_header, v75, v76, "Error evaluating LAPolicyOslo policy: %{public}@", v81, 0xCu);
      sub_100011C14(v82, &qword_100088FD0, &qword_1000673F0);

      (*(v78 + 1))(v101, v80);
    }

    else
    {

      (*(v78 + 1))(v79, v80);
    }

    goto LABEL_47;
  }

  if (v4 != enum case for ConfirmationSheetPostPrimaryButtonAction.localAuthentication(_:))
  {
    v51 = v0[9].receiver;
    v52 = enum case for ConfirmationSheetPostPrimaryButtonAction.parentScreentimePinCode(_:);
    v53 = v4;

    if (v53 == v52)
    {
      v54 = objc_opt_self();
      if ([v54 isRestrictionsPasscodeSet])
      {
        if (qword_100088420 != -1)
        {
          swift_once();
        }

        v55 = type metadata accessor for Logger();
        sub_1000105E8(v55, qword_100089510);
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          *v58 = 0;
          _os_log_impl(&_mh_execute_header, v56, v57, "Activating Screen Time Pin UI", v58, 2u);
        }

        v59 = v0[3].super_class;

        [v54 activateRemotePINUI];
        v60 = [objc_opt_self() defaultCenter];
        [v60 addObserver:v59 selector:"handleScreenTimePinCompletionNotificationWithNotification:" name:STRestrictionsPINControllerDidFinishNotification object:0];
      }

      else
      {
        if (qword_100088420 != -1)
        {
          swift_once();
        }

        v83 = type metadata accessor for Logger();
        sub_1000105E8(v83, qword_100089510);
        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          *v86 = 0;
          _os_log_impl(&_mh_execute_header, v84, v85, "Screen Time Passcode not set, continuing without it", v86, 2u);
        }

        v87 = v0[3].super_class;

        v88 = v87 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction;
        v89 = *(v87 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction);
        if (v89)
        {
          v90 = *(v88 + 1);

          v89(1);
          sub_10001E7C4(v89);
        }

        v91 = v0[3].super_class;
        v92 = [objc_opt_self() defaultCenter];
        [v92 removeObserver:v91 name:STRestrictionsPINControllerDidFinishNotification object:0];
      }
    }

    else
    {
      if (qword_100088420 != -1)
      {
        swift_once();
      }

      v61 = type metadata accessor for Logger();
      sub_1000105E8(v61, qword_100089510);
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&_mh_execute_header, v62, v63, "Unknown post primary button action", v64, 2u);
      }

      v65 = v0[3].super_class;

      v66 = v65 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction;
      v67 = *(v65 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction);
      if (v67)
      {
        v68 = *(v66 + 1);

        v67(1);
        sub_10001E7C4(v67);
      }

      v70 = v0[8].receiver;
      v69 = v0[8].super_class;
      v71 = v0[7].super_class;
      v72 = v0[3].super_class;
      v73 = [objc_opt_self() defaultCenter];
      [v73 removeObserver:v72 name:STRestrictionsPINControllerDidFinishNotification object:0];

      v70[1](v69, v71);
    }

    goto LABEL_47;
  }

  v29 = v0[8].super_class;
  v31 = v0[4].super_class;
  v30 = v0[5].receiver;
  v32 = v0[4].receiver;
  (*(v0[8].receiver + 12))(v29, v0[7].super_class);
  (*(v31 + 4))(v30, v29, v32);
  v33 = swift_task_alloc();
  v0[12].super_class = v33;
  *v33 = v0;
  *(v33 + 1) = sub_100027C38;
  v34 = v0[5].receiver;

  return sub_100028618(v34);
}

uint64_t sub_100027914(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 208) = a1;

  v4 = *(v2 + 160);
  v5 = *(v2 + 152);

  return _swift_task_switch(sub_100027A70, v5, v4);
}

uint64_t sub_100027A70()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 144);

  if (v1 == 1)
  {
    v3 = *(v0 + 56);
    v4 = *(v3 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction);
    if (v4)
    {
      v5 = *(v3 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction + 8);

      v4(1);
      sub_10001E7C4(v4);
      v3 = *(v0 + 56);
    }

    v6 = *(v0 + 176);
    v7 = *(v0 + 184);
    v8 = *(v0 + 168);
    v10 = *(v0 + 104);
    v9 = *(v0 + 112);
    v11 = *(v0 + 96);
    v12 = [objc_opt_self() defaultCenter];
    [v12 removeObserver:v3 name:STRestrictionsPINControllerDidFinishNotification object:0];

    (*(v10 + 8))(v9, v11);
  }

  else
  {
    v6 = *(v0 + 176);
    v13 = *(v0 + 184);
    v14 = *(v0 + 168);
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  }

  v15 = *(v0 + 136);
  v16 = *(v0 + 112);
  v18 = *(v0 + 80);
  v17 = *(v0 + 88);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100027C38(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 209) = a1;

  v4 = *(v2 + 160);
  v5 = *(v2 + 152);

  return _swift_task_switch(sub_100027D94, v5, v4);
}

uint64_t sub_100027D94()
{
  v1 = *(v0 + 209);
  v2 = *(v0 + 144);

  if (v1 == 1)
  {
    v3 = *(v0 + 56);
    v4 = *(v3 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction);
    if (v4)
    {
      v5 = *(v3 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction + 8);

      v4(1);
      sub_10001E7C4(v4);
      v3 = *(v0 + 56);
    }

    v6 = [objc_opt_self() defaultCenter];
    [v6 removeObserver:v3 name:STRestrictionsPINControllerDidFinishNotification object:0];
  }

  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  v7 = *(v0 + 136);
  v8 = *(v0 + 112);
  v10 = *(v0 + 80);
  v9 = *(v0 + 88);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100027F1C()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

uint64_t sub_100027FB0()
{
  result = type metadata accessor for ConfirmationSheetContext();
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

void sub_100028234(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  v5 = [v4 defaultCenter];
  v6 = STRestrictionsPINControllerDidFinishNotification;
  [v5 removeObserver:v2 name:STRestrictionsPINControllerDidFinishNotification object:0];

  v7 = [a1 userInfo];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v21 + 1) = v10;

  AnyHashable.init<A>(_:)();
  if (!*(v9 + 16) || (v11 = sub_100057EC8(v20), (v12 & 1) == 0))
  {

    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v13 = v11;

  sub_100010538(*(v9 + 56) + 32 * v13, v19);

  sub_10001E2FC(v20);
  sub_100028608(v19, &v21);
  sub_10001E778(0, &qword_100089378, NSNumber_ptr);
  swift_dynamicCast();
  v14 = v18;
  if ([v18 BOOLValue])
  {
    v15 = *(v2 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction);
    if (v15)
    {
      v16 = *(v2 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction + 8);

      v15(1);
      sub_10001E7C4(v15);
    }

    v17 = [v4 defaultCenter];
    [v17 removeObserver:v2 name:v6 object:0];

    v14 = v17;
  }
}

uint64_t sub_100028540()
{
  v0 = type metadata accessor for Logger();
  sub_1000295D4(v0, qword_100089510);
  v1 = sub_1000105E8(v0, qword_100089510);
  if (qword_100088440 != -1)
  {
    swift_once();
  }

  v2 = sub_1000105E8(v0, qword_10008C4D8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

_OWORD *sub_100028608(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100028618(uint64_t a1)
{
  v1[45] = a1;
  v2 = sub_1000047BC(&qword_100089590, &unk_100067A90);
  v1[46] = v2;
  v3 = *(v2 - 8);
  v1[47] = v3;
  v4 = *(v3 + 64) + 15;
  v1[48] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[49] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[50] = v5;
  v1[51] = v6;

  return _swift_task_switch(sub_10002874C, v5, v6);
}

uint64_t sub_10002874C()
{
  v1 = [objc_allocWithZone(LAContext) init];
  *(v0 + 416) = v1;
  sub_10001E778(0, &qword_100089378, NSNumber_ptr);
  isa = NSNumber.init(integerLiteral:)(60).super.super.isa;
  [v1 setOptionMaxCredentialAge:isa];

  *(v0 + 328) = 0;
  LODWORD(isa) = [v1 canEvaluatePolicy:2 error:v0 + 328];
  v3 = *(v0 + 328);
  *(v0 + 424) = v3;
  v4 = v3;
  if (isa)
  {
    v5 = *(v0 + 360);
    ConfirmationSheetLAConfiguration.localizedReason.getter();
    v6 = String._bridgeToObjectiveC()();

    [v1 setLocalizedReason:v6];

    *(v0 + 344) = 0;
    v7 = [v1 evaluationMechanismsForPolicy:2 error:v0 + 344];
    v8 = *(v0 + 344);
    if (v7)
    {
      v9 = v7;
      v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v8;

      *(v0 + 448) = 1;
      AnyHashable.init<A>(_:)();
      v12 = sub_10005A7B8(v0 + 224, v10);

      sub_10001E2FC(v0 + 224);
      if (v12)
      {
        v13 = *(v0 + 360);
        ConfirmationSheetLAConfiguration.touchIDTitle.getter();
        v14 = String._bridgeToObjectiveC()();

        [v1 setOptionAuthenticationTitle:v14];

        ConfirmationSheetLAConfiguration.touchIDReason.getter();
        v15 = String._bridgeToObjectiveC()();

        [v1 setLocalizedReason:v15];
      }
    }

    else
    {
      v24 = v8;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v26 = *(v0 + 376);
    v25 = *(v0 + 384);
    v27 = *(v0 + 360);
    v28 = *(v0 + 368);
    ConfirmationSheetLAConfiguration.passcodeTitle.getter();
    v29 = String._bridgeToObjectiveC()();

    [v1 setOptionPasscodeTitle:v29];

    ConfirmationSheetLAConfiguration.passcodeReason.getter();
    v30 = String._bridgeToObjectiveC()();

    [v1 setOptionPasswordAuthenticationReason:v30];

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 352;
    *(v0 + 24) = sub_100028E18;
    swift_continuation_init();
    *(v0 + 136) = v28;
    v31 = sub_1000104C4((v0 + 112));
    sub_1000047BC(&qword_100089598, &unk_100066740);
    sub_1000047BC(&qword_100088B60, &qword_100065F80);
    CheckedContinuation.init(continuation:function:)();
    (*(v26 + 32))(v31, v25, v28);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10005A890;
    *(v0 + 104) = &unk_10007EFC0;
    [v1 evaluatePolicy:2 options:0 reply:?];
    (*(v26 + 8))(v31, v28);

    return _swift_continuation_await(v0 + 16);
  }

  v16 = v4;
  v17 = *(v0 + 392);

  if (!v16)
  {
    goto LABEL_17;
  }

  type metadata accessor for Code(0);
  *(v0 + 336) = -5;
  sub_100029638();
  v18 = v16;
  if ((static _ErrorCodeProtocol.~= infix(_:_:)() & 1) == 0)
  {

LABEL_17:
    if (qword_100088420 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_1000105E8(v32, qword_100089510);
    v23 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      *(v34 + 4) = v16;
      *v35 = v3;
      v16 = v16;
      _os_log_impl(&_mh_execute_header, v23, v33, "Local Authentication failed when checking if deviceOwnerAuthentication can be evaluated: %@", v34, 0xCu);
      sub_100011C14(v35, &qword_100088FD0, &qword_1000673F0);
    }

    v22 = 0;
    v18 = v1;
    goto LABEL_22;
  }

  if (qword_100088420 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000105E8(v19, qword_100089510);
  v16 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v16, v20, "Passcode not set, continuing without additional confirmation", v21, 2u);
  }

  v22 = 1;
  v23 = v18;
LABEL_22:

  v36 = *(v0 + 384);

  v37 = *(v0 + 8);

  return v37(v22);
}

uint64_t sub_100028E18()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 432) = v3;
  v4 = *(v1 + 408);
  v5 = *(v1 + 400);
  if (v3)
  {
    v6 = sub_1000292F4;
  }

  else
  {
    v6 = sub_100028F74;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100028F74()
{
  v26 = v0;
  v1 = *(v0 + 392);

  v2 = *(v0 + 352);
  if (v2)
  {
    *(v0 + 440) = 3;
    AnyHashable.init<A>(_:)();
    if (*(v2 + 16) && (v3 = sub_100057EC8(v0 + 144), (v4 & 1) != 0))
    {
      sub_100010538(*(v2 + 56) + 32 * v3, v0 + 264);
      sub_10001E2FC(v0 + 144);
      if ((swift_dynamicCast() & 1) != 0 && *(v0 + 453) == 1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_10001E2FC(v0 + 144);
    }

    *(v0 + 444) = 1;
    AnyHashable.init<A>(_:)();
    if (*(v2 + 16) && (v5 = sub_100057EC8(v0 + 184), (v6 & 1) != 0))
    {
      sub_100010538(*(v2 + 56) + 32 * v5, v0 + 296);
      sub_10001E2FC(v0 + 184);
      if ((swift_dynamicCast() & 1) != 0 && *(v0 + 452) == 1)
      {
LABEL_12:
        v7 = *(v0 + 424);

        v8 = 1;
        goto LABEL_22;
      }
    }

    else
    {
      sub_10001E2FC(v0 + 184);
    }

    if (qword_100088420 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000105E8(v9, qword_100089510);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    v12 = os_log_type_enabled(v10, v11);
    v14 = *(v0 + 416);
    v13 = *(v0 + 424);
    if (v12)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v15 = 136446210;
      v17 = Dictionary.description.getter();
      v19 = v18;

      v20 = sub_10000F78C(v17, v19, &v25);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed local authentication evaluation with results: %{public}s", v15, 0xCu);
      sub_10001059C(v16);
    }

    else
    {
    }
  }

  else
  {
    v21 = *(v0 + 424);
  }

  v8 = 0;
LABEL_22:
  v22 = *(v0 + 384);

  v23 = *(v0 + 8);

  return v23(v8);
}

uint64_t sub_1000292F4()
{
  v1 = v0[53];
  v2 = v0[54];
  v3 = v0[52];
  v4 = v0[49];

  swift_willThrow();

  if (qword_100088420 != -1)
  {
    swift_once();
  }

  v5 = v0[54];
  v6 = type metadata accessor for Logger();
  sub_1000105E8(v6, qword_100089510);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[54];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Could not handle local authentication for confirmation sheet: %@", v11, 0xCu);
    sub_100011C14(v12, &qword_100088FD0, &qword_1000673F0);
  }

  else
  {
  }

  v14 = v0[48];

  v15 = v0[1];

  return v15(0);
}

void sub_1000294EC()
{
  if (qword_100088420 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000105E8(v0, qword_100089510);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Mini product page finished loading", v2, 2u);
  }
}

uint64_t *sub_1000295D4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_100029638()
{
  result = qword_100088578;
  if (!qword_100088578)
  {
    type metadata accessor for Code(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088578);
  }

  return result;
}

uint64_t sub_1000296A8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000296E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001020C;

  return sub_1000263B0(a1, v4, v5, v6);
}

unint64_t sub_10002979C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10007E3D8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

void sub_1000297E8()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 activateManualDomain:v1];
  swift_unknownObjectRelease();

  v3 = static CommandLine.argc.getter();
  v4 = static CommandLine.unsafeArgv.getter();
  type metadata accessor for AppDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  UIApplicationMain(v3, v4, 0, v6);
}

uint64_t sub_10002994C()
{
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000105E8(v0, qword_10008C4C0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Angel startup", v3, 2u);
  }

  type metadata accessor for LaunchAngelXPCServer();
  swift_initStackObject();
  [*(sub_100015AA8() + 16) activate];
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Configured XPC listeners", v6, 2u);
  }

  sub_1000297E8();
}

uint64_t sub_100029ADC()
{
  v0 = sub_1000047BC(&qword_100089670, &qword_1000667A8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  qword_1000895C0 = result;
  return result;
}

uint64_t sub_100029B40()
{
  v2 = *(v0 + 16);
  os_activity_scope_leave(&v2);
  return swift_deallocClassInstance();
}

uint64_t sub_100029BCC()
{
  qword_1000895C8 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

unint64_t sub_100029C08(unint64_t description, char a2, void *dso)
{
  v3 = description;
  if ((a2 & 1) == 0)
  {
    if (description)
    {
      if (qword_100088430 == -1)
      {
LABEL_4:
        v4 = dso;
        v5 = qword_1000895C8;

        return _os_activity_create(v4, v3, v5, OS_ACTIVITY_FLAG_DEFAULT);
      }

LABEL_17:
      v13 = dso;
      swift_once();
      dso = v13;
      goto LABEL_4;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (HIDWORD(description))
  {
    goto LABEL_16;
  }

  if ((description & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return description;
  }

  if (description >> 16 > 0x10)
  {
    __break(1u);
LABEL_19:
    v7 = (description & 0x3F) << 8;
    v8 = (description >> 6) + v7 + 33217;
    v9 = (v7 | (description >> 6) & 0x3F) << 8;
    v10 = (description >> 18) + ((v9 | (description >> 12) & 0x3F) << 8) - 2122219023;
    v11 = (description >> 12) + v9 + 8487393;
    if (description >> 16)
    {
      v6 = v10;
    }

    else
    {
      v6 = v11;
    }

    if (description < 0x800)
    {
      v6 = v8;
    }

    goto LABEL_12;
  }

  if (description > 0x7F)
  {
    goto LABEL_19;
  }

  v6 = description + 1;
LABEL_12:
  *descriptiona = (v6 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v6) & 0x18)));
  if (qword_100088430 != -1)
  {
    v12 = dso;
    swift_once();
    dso = v12;
  }

  return _os_activity_create(dso, descriptiona, qword_1000895C8, OS_ACTIVITY_FLAG_DEFAULT);
}

uint64_t sub_100029DDC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000047BC(&qword_100088900, &unk_1000667B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100029EAC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000047BC(&qword_100088900, &unk_1000667B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100029F7C()
{
  sub_10002A080(319, &unk_1000896E0, type metadata accessor for BulletPoint, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_10002A080(319, &qword_100088970, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10002A080(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10002A0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10002A1CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10002A288()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10002A348(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ConditionalContent.Storage();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_10002A440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for _ConditionalContent.Storage();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_10002A538@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000047BC(&qword_100089E40, &qword_100065D50);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for MultiBulletPointView(0);
  sub_100010668(v1 + *(v12 + 20), v11, &qword_100089E40, &qword_100065D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for DynamicTypeSize();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_10002A740@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

__n128 sub_10002A7C4@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v3 = type metadata accessor for MultiBulletPointView(0);
  v32 = *(v3 - 8);
  v4 = *(v32 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for DynamicTypeSize();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v31 - v11;
  v13 = sub_1000047BC(&qword_1000897B0, &qword_100066870);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v31 - v15;
  sub_10002A538(v12);
  v17 = v6[13];
  v36 = enum case for DynamicTypeSize.large(_:);
  v37 = v6 + 13;
  v35 = v17;
  v17(v10);
  v33 = sub_10002BCA0(&qword_100088A58, &type metadata accessor for DynamicTypeSize);
  v18 = dispatch thunk of static Comparable.> infix(_:_:)();
  v19 = v6[1];
  v19(v10, v5);
  v38 = v6 + 1;
  v34 = v19;
  v19(v12, v5);
  if (v18)
  {
    v20 = static HorizontalAlignment.leading.getter();
  }

  else
  {
    v20 = static HorizontalAlignment.center.getter();
  }

  *v16 = v20;
  *(v16 + 1) = 0x4036000000000000;
  v39 = v16;
  v16[16] = 0;
  type metadata accessor for MainActor();
  v31[3] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v31[2] = *(sub_1000047BC(&qword_1000897B8, &unk_100066878) + 44);
  *&v41 = *v2;
  sub_10002BCE8(v2, v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v22 = swift_allocObject();
  sub_10002BE68(v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);

  v32 = sub_1000047BC(&qword_1000897C0, &qword_100066888);
  v31[1] = type metadata accessor for UUID();
  sub_1000047BC(&qword_1000897C8, &qword_100066890);
  sub_100012174(&qword_1000897D0, &qword_1000897C0, &qword_100066888);
  sub_100012174(&qword_1000897D8, &qword_1000897C8, &qword_100066890);
  sub_10002BCA0(&qword_1000897E0, type metadata accessor for BulletPoint);
  v23 = v39;
  ForEach<>.init(_:content:)();

  sub_10002B8C0();
  sub_10002A538(v12);
  v35(v10, v36, v5);
  v24 = dispatch thunk of static Comparable.> infix(_:_:)();
  v25 = v34;
  v34(v10, v5);
  v25(v12, v5);
  if (v24)
  {
    static Alignment.leading.getter();
  }

  else
  {
    static Alignment.center.getter();
  }

  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v26 = v40;
  sub_1000110B8(v23, v40, &qword_1000897B0, &qword_100066870);
  v27 = v26 + *(sub_1000047BC(&qword_1000897E8, &qword_100066898) + 36);
  v28 = v46;
  *(v27 + 64) = v45;
  *(v27 + 80) = v28;
  *(v27 + 96) = v47;
  v29 = v42;
  *v27 = v41;
  *(v27 + 16) = v29;
  result = v44;
  *(v27 + 32) = v43;
  *(v27 + 48) = result;
  return result;
}

uint64_t sub_10002AE20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000047BC(&qword_1000897C8, &qword_100066890);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = [objc_opt_self() currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == 1)
  {
    v10 = 14.0;
  }

  else
  {
    v10 = 16.0;
  }

  v11 = *(v4 + 40);
  *&v7[v11] = swift_getKeyPath();
  sub_1000047BC(&qword_100089E40, &qword_100065D50);
  swift_storeEnumTagMultiPayload();
  sub_10002AFCC(a1, v7);
  *&v7[*(v4 + 36)] = v10;
  sub_1000110B8(v7, a2, &qword_1000897C8, &qword_100066890);
}

uint64_t sub_10002AFCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v31 = a2;
  v3 = type metadata accessor for Image.ResizingMode();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000047BC(&qword_1000897F0, &qword_1000668D0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v29 - v14;
  v16 = (a1 + *(type metadata accessor for BulletPoint(0) + 20));
  v18 = *v16;
  v17 = v16[1];

  Image.init(_internalSystemName:)();
  (*(v4 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v3);
  v19 = Image.resizable(capInsets:resizingMode:)();

  (*(v4 + 8))(v7, v3);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  LOBYTE(v38[0]) = 1;
  *&v34[3] = *&v34[27];
  *&v34[11] = *&v34[35];
  *&v34[19] = *&v34[43];
  v20 = &v15[*(sub_1000047BC(&qword_1000897F8, &qword_1000668D8) + 36)];
  v21 = *(sub_1000047BC(&qword_100089800, &qword_1000668E0) + 28);
  static SymbolRenderingMode.hierarchical.getter();
  v22 = type metadata accessor for SymbolRenderingMode();
  (*(*(v22 - 8) + 56))(v20 + v21, 0, 1, v22);
  *v20 = swift_getKeyPath();
  *v15 = v19;
  *(v15 + 1) = 0;
  *(v15 + 8) = 257;
  v23 = *&v34[8];
  *(v15 + 18) = *v34;
  *(v15 + 34) = v23;
  *(v15 + 50) = *&v34[16];
  *(v15 + 8) = *&v34[23];
  *&v15[*(v9 + 44)] = static Color.blue.getter();
  v24 = static HorizontalAlignment.center.getter();
  v33 = 1;
  sub_10002B42C(v30, v38);
  memcpy(v35, v38, sizeof(v35));
  memcpy(v36, v38, sizeof(v36));
  sub_100010668(v35, v37, &qword_100089808, &qword_100066918);
  sub_100011C14(v36, &qword_100089808, &qword_100066918);
  memcpy(&v32[7], v35, 0x120uLL);
  v25 = v33;
  sub_100010668(v15, v13, &qword_1000897F0, &qword_1000668D0);
  v26 = v31;
  sub_100010668(v13, v31, &qword_1000897F0, &qword_1000668D0);
  v27 = *(sub_1000047BC(&qword_100089810, &qword_100066920) + 48);
  v37[0] = v24;
  v37[1] = 0;
  LOBYTE(v37[2]) = v25;
  memcpy(&v37[2] + 1, v32, 0x127uLL);
  memcpy((v26 + v27), v37, 0x138uLL);
  sub_100010668(v37, v38, &qword_100089818, &qword_100066928);
  sub_100011C14(v15, &qword_1000897F0, &qword_1000668D0);
  v38[0] = v24;
  v38[1] = 0;
  LOBYTE(v38[2]) = v25;
  memcpy(&v38[2] + 1, v32, 0x127uLL);
  sub_100011C14(v38, &qword_100089818, &qword_100066928);
  return sub_100011C14(v13, &qword_1000897F0, &qword_1000668D0);
}

uint64_t sub_10002B42C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v34 = type metadata accessor for BulletPoint(0);
  v3 = (a1 + *(v34 + 24));
  v4 = v3[1];
  v78 = *v3;
  v79 = v4;
  sub_10000F728();

  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  static Font.subheadline.getter();
  v32 = a1;
  v10 = Text.font(_:)();
  v12 = v11;
  v14 = v13;

  sub_10000F77C(v5, v7, v9 & 1);

  v36 = Text.bold()();
  v37 = v15;
  v17 = v16;
  v38 = v16;
  v19 = v18;
  sub_10000F77C(v10, v12, v14 & 1);

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v20 = v19 & 1;
  v100 = v19 & 1;
  v39 = v19 & 1;
  v21 = (v32 + *(v34 + 28));
  v22 = v21[1];
  v78 = *v21;
  v79 = v22;

  v23 = Text.init<A>(_:)();
  v25 = v24;
  LOBYTE(v12) = v26;
  LODWORD(v78) = static HierarchicalShapeStyle.secondary.getter();
  v27 = Text.foregroundStyle<A>(_:)();
  v33 = v28;
  v35 = v29;
  LOBYTE(v5) = v30;
  sub_10000F77C(v23, v25, v12 & 1);

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v49 = v36;
  *(&v49 + 1) = v17;
  LOBYTE(v50) = v20;
  *(&v50 + 1) = *v99;
  DWORD1(v50) = *&v99[3];
  *(&v50 + 1) = v37;
  v55 = v96;
  v56 = v97;
  v57 = v98;
  v51 = v92;
  v52 = v93;
  v53 = v94;
  v54 = v95;
  __src[6] = v96;
  __src[7] = v97;
  __src[2] = v92;
  __src[3] = v93;
  __src[4] = v94;
  __src[5] = v95;
  __src[0] = v49;
  __src[1] = v50;
  *&v58 = v27;
  *(&v58 + 1) = v33;
  LOBYTE(v59) = v5 & 1;
  *(&v59 + 1) = *v90;
  DWORD1(v59) = *&v90[3];
  *(&v59 + 1) = v35;
  v64 = v46;
  v65 = v47;
  v66 = v48;
  v60 = v42;
  v61 = v43;
  v62 = v44;
  v63 = v45;
  __src[12] = v43;
  __src[13] = v44;
  __src[10] = v59;
  __src[11] = v42;
  __src[14] = v45;
  __src[15] = v46;
  __src[16] = v47;
  __src[17] = v48;
  v91 = v5 & 1;
  __src[8] = v98;
  __src[9] = v58;
  memcpy(a2, __src, 0x120uLL);
  v67[0] = v27;
  v67[1] = v33;
  v68 = v5 & 1;
  *v69 = *v90;
  *&v69[3] = *&v90[3];
  v70 = v35;
  v75 = v46;
  v76 = v47;
  v77 = v48;
  v71 = v42;
  v72 = v43;
  v73 = v44;
  v74 = v45;
  sub_100010668(&v49, &v78, &qword_100089820, &qword_100066930);
  sub_100010668(&v58, &v78, &qword_100089820, &qword_100066930);
  sub_100011C14(v67, &qword_100089820, &qword_100066930);
  v78 = v36;
  v79 = v38;
  v80 = v39;
  *v81 = *v99;
  *&v81[3] = *&v99[3];
  v82 = v37;
  v87 = v96;
  v88 = v97;
  v89 = v98;
  v83 = v92;
  v84 = v93;
  v85 = v94;
  v86 = v95;
  sub_100011C14(&v78, &qword_100089820, &qword_100066930);
}

double sub_10002B8C0()
{
  v0 = type metadata accessor for DynamicTypeSize();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v13 - v6;
  sub_10002A538(&v13 - v6);
  (*(v1 + 104))(v5, enum case for DynamicTypeSize.large(_:), v0);
  sub_10002BCA0(&qword_100088A58, &type metadata accessor for DynamicTypeSize);
  v8 = dispatch thunk of static Comparable.> infix(_:_:)();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  if (v8)
  {
    return INFINITY;
  }

  v11 = [objc_opt_self() currentDevice];
  v12 = [v11 userInterfaceIdiom];

  result = INFINITY;
  if (v12 == 1)
  {
    return 340.0;
  }

  return result;
}

uint64_t sub_10002BA98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000047BC(&qword_100089E40, &qword_100065D50);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v18 - v12);
  sub_100010668(v2 + *(a1 + 40), &v18 - v12, &qword_100089E40, &qword_100065D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for DynamicTypeSize();
    return (*(*(v14 - 8) + 32))(a2, v13, v14);
  }

  else
  {
    v16 = *v13;
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_10002BCA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002BCE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultiBulletPointView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002BD4C()
{
  v1 = (type metadata accessor for MultiBulletPointView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = v1[7];
  sub_1000047BC(&qword_100089E40, &qword_100065D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for DynamicTypeSize();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002BE68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultiBulletPointView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002BECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(type metadata accessor for MultiBulletPointView(0) - 8) + 80);

  return sub_10002AE20(a1, a2);
}

uint64_t sub_10002BF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for HStack();
  v58 = *(v6 - 8);
  v7 = *(v58 + 64);
  v8 = __chkstk_darwin(v6);
  v57 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v56 = &v54 - v10;
  v60 = v5;
  v61 = v4;
  v11 = type metadata accessor for VStack();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v54 = &v54 - v16;
  v17 = type metadata accessor for DynamicTypeSize();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v54 - v23;
  v59 = v6;
  v25 = type metadata accessor for _ConditionalContent();
  v63 = *(v25 - 8);
  v64 = v25;
  v26 = *(v63 + 64);
  __chkstk_darwin(v25);
  v62 = &v54 - v27;
  v28 = v2;
  sub_10002BA98(a1, v24);
  (*(v18 + 104))(v22, enum case for DynamicTypeSize.large(_:), v17);
  sub_10002BCA0(&qword_100088A58, &type metadata accessor for DynamicTypeSize);
  v29 = dispatch thunk of static Comparable.> infix(_:_:)();
  v30 = *(v18 + 8);
  v30(v22, v17);
  v30(v24, v17);
  if (v29)
  {
    v31 = static HorizontalAlignment.leading.getter();
    v32 = *&v28[*(a1 + 36)];
    __chkstk_darwin(v31);
    v33 = v60;
    *(&v54 - 4) = v61;
    *(&v54 - 3) = v33;
    *(&v54 - 2) = v28;
    VStack.init(alignment:spacing:content:)();
    swift_getWitnessTable();
    v35 = v54;
    v34 = v55;
    v36 = *(v55 + 16);
    v36(v54, v15, v11);
    v37 = *(v34 + 8);
    v37(v15, v11);
    v36(v15, v35, v11);
    swift_getWitnessTable();
    v38 = v62;
    sub_10002A348(v15, v11);
    v37(v15, v11);
    v39 = v35;
    v40 = v11;
  }

  else
  {
    v41 = static VerticalAlignment.center.getter();
    v42 = *&v28[*(a1 + 36)];
    __chkstk_darwin(v41);
    v43 = v60;
    *(&v54 - 4) = v61;
    *(&v54 - 3) = v43;
    *(&v54 - 2) = v28;
    v44 = v57;
    HStack.init(alignment:spacing:content:)();
    v45 = v59;
    swift_getWitnessTable();
    v46 = v58;
    v47 = *(v58 + 16);
    v48 = v56;
    v47(v56, v44, v45);
    v37 = *(v46 + 8);
    v37(v44, v45);
    v47(v44, v48, v45);
    swift_getWitnessTable();
    v38 = v62;
    sub_10002A440(v44, v11, v45);
    v37(v44, v45);
    v39 = v48;
    v40 = v45;
  }

  v37(v39, v40);
  WitnessTable = swift_getWitnessTable();
  v50 = swift_getWitnessTable();
  v66 = WitnessTable;
  v67 = v50;
  v51 = v64;
  swift_getWitnessTable();
  v52 = v63;
  (*(v63 + 16))(v65, v38, v51);
  return (*(v52 + 8))(v38, v51);
}

uint64_t sub_10002C5D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *(v6 + 16);
  v10(v9, a1, a2);
  v10(a3, v9, a2);
  (*(v6 + 8))(v9, a2);
}

uint64_t sub_10002C770(uint64_t a1)
{
  v2 = sub_1000047BC(qword_100089828, &qword_100066938);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_100010668(a1, &v6 - v4, qword_100089828, &qword_100066938);
  return EnvironmentValues.symbolRenderingMode.setter();
}

void sub_10002C824(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_10002A080(319, &qword_100088970, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10002C8E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(type metadata accessor for DynamicTypeSize() - 8);
  v9 = 8;
  if (*(v8 + 64) > 8uLL)
  {
    v9 = *(v8 + 64);
  }

  if (v7 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v7;
  }

  v11 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  v12 = *(v8 + 80) & 0xF8 | 7;
  if (a2 <= v10)
  {
    goto LABEL_30;
  }

  v13 = v9 + ((v12 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v10 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_30:
      if (v7 < 0xFE)
      {
        v22 = *(((((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12) + v9);
        if (v22 >= 2)
        {
          return (v22 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v21 = *(v6 + 48);

        return v21(a1, v7, v5);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_30;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v19 = v13;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v10 + (v20 | v18) + 1;
}

void sub_10002CB50(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v28 = v8;
  v9 = *(v8 + 84);
  v10 = *(type metadata accessor for DynamicTypeSize() - 8);
  v11 = *(v10 + 64);
  if (v11 <= 8)
  {
    v11 = 8;
  }

  if (v9 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = v9;
  }

  v13 = *(v8 + 64);
  v14 = *(v10 + 80) & 0xF8 | 7;
  v15 = v11 + 1;
  v16 = ((v14 + ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14) + v11 + 1;
  if (a3 <= v12)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v12 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v12 < a2)
  {
    v18 = ~v12 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_57:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v16] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v17)
  {
    goto LABEL_32;
  }

  a1[v16] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v9 < 0xFE)
  {
    v24 = (((&a1[v13 + 7] & 0xFFFFFFFFFFFFFFF8) + v14 + 8) & ~v14);
    if (a2 > 0xFE)
    {
      if (v15 <= 3)
      {
        v25 = ~(-1 << (8 * v15));
      }

      else
      {
        v25 = -1;
      }

      if (v15)
      {
        v26 = v25 & (a2 - 255);
        if (v15 <= 3)
        {
          v27 = v15;
        }

        else
        {
          v27 = 4;
        }

        bzero(v24, v15);
        if (v27 > 2)
        {
          if (v27 == 3)
          {
            *v24 = v26;
            v24[2] = BYTE2(v26);
          }

          else
          {
            *v24 = v26;
          }
        }

        else if (v27 == 1)
        {
          *v24 = v26;
        }

        else
        {
          *v24 = v26;
        }
      }
    }

    else
    {
      v24[v11] = -a2;
    }
  }

  else
  {
    v23 = *(v28 + 56);

    v23(a1, a2, v9, v7);
  }
}

unint64_t sub_10002CED4()
{
  result = qword_1000898B0;
  if (!qword_1000898B0)
  {
    sub_10000B850(&qword_1000897E8, &qword_100066898);
    sub_100012174(&qword_1000898B8, &qword_1000897B0, &qword_100066870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000898B0);
  }

  return result;
}

uint64_t sub_10002D048(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for VStack();
  type metadata accessor for HStack();
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_10002D134()
{
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = type metadata accessor for Logger();
  sub_1000105E8(v2, qword_10008C4C0);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 80);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = *(v6 + OBJC_IVAR____TtC26AppDistributionLaunchAngel23InstallConfirmationTask_logKey);
    *(v7 + 4) = v9;
    *v8 = v9;
    v10 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Running install confirmation task", v7, 0xCu);
    sub_100011C14(v8, &qword_100088FD0, &qword_1000673F0);
  }

  v11 = [objc_opt_self() identityOfCurrentProcess];
  *(v0 + 88) = v11;
  if (v11)
  {
    v12 = v11;
    v13 = objc_allocWithZone(SBSRemoteAlertDefinition);
    v14 = v12;
    v15 = String._bridgeToObjectiveC()();
    *(v0 + 96) = [v13 initWithSceneProvidingProcess:v14 configurationIdentifier:v15];

    return _swift_task_switch(sub_10002D464, 0, 0);
  }

  else
  {
    v16 = *(v0 + 80);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 80);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = *(v19 + OBJC_IVAR____TtC26AppDistributionLaunchAngel23InstallConfirmationTask_logKey);
      *(v20 + 4) = v22;
      *v21 = v22;
      v23 = v22;
      _os_log_impl(&_mh_execute_header, v17, v18, "[%@] No identity", v20, 0xCu);
      sub_100011C14(v21, &qword_100088FD0, &qword_1000673F0);
    }

    v24 = *(v0 + 8);

    return v24(0);
  }
}

uint64_t sub_10002D464()
{
  v1 = v0[12];
  v2 = v0[10];
  v0[2] = v0;
  v0[7] = v0 + 13;
  v0[3] = sub_10002D514;
  v3 = swift_continuation_init();
  sub_10002D660(v3, v2, v1);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10002D514()
{
  v2 = *v0;
  *(*v0 + 105) = *(*v0 + 104);

  return _swift_task_switch(sub_10002D5F8, 0, 0);
}

uint64_t sub_10002D5F8()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 105);
  v3 = *(v0 + 8);

  return v3(v2);
}

void sub_10002D660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  v33 = sub_10002EA64;
  v34 = v8;
  aBlock = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_100043F50;
  v32 = &unk_10007F0E0;
  v9 = _Block_copy(&aBlock);
  v10 = objc_opt_self();

  v11 = [v10 responderWithHandler:v9];
  _Block_release(v9);

  v12 = [objc_allocWithZone(BSAction) initWithInfo:0 responder:v11];
  sub_1000047BC(&qword_10008A4A0, &unk_100066390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100066310;
  *(inited + 32) = v12;
  v14 = v12;
  sub_10004DA58(inited);
  swift_setDeallocating();
  v15 = *(inited + 16);
  swift_arrayDestroy();
  sub_10001596C();
  sub_10002EA84(&qword_100089370, sub_10001596C);
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v6 setActions:isa];

  v17 = type metadata accessor for PropertyListEncoder();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for InstallSheetContext();
  sub_10002EA84(&unk_100089910, &type metadata accessor for InstallSheetContext);
  v20 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v22 = v21;

  sub_1000047BC(&unk_10008A4B0, &unk_1000676F0);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_100065650;
  aBlock = 0x44747865746E6F63;
  v30 = 0xEB00000000617461;
  AnyHashable.init<A>(_:)();
  *(v23 + 96) = &type metadata for Data;
  *(v23 + 72) = v20;
  *(v23 + 80) = v22;
  sub_100015A00(v20, v22);
  sub_100059988(v23);
  swift_setDeallocating();
  sub_100011C14(v23 + 32, &qword_100089010, &qword_1000663A0);
  v24 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v6 setUserInfo:v24];

  v25 = [objc_opt_self() newHandleWithDefinition:a3 configurationContext:v6];
  v26 = *(a2 + OBJC_IVAR____TtC26AppDistributionLaunchAngel23InstallConfirmationTask_remoteHandle);
  *(a2 + OBJC_IVAR____TtC26AppDistributionLaunchAngel23InstallConfirmationTask_remoteHandle) = v25;
  v27 = v25;

  [v27 registerObserver:a2];
  v28 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
  [v27 activateWithContext:v28];

  sub_100015A54(v20, v22);
}

void sub_10002DC48(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [a1 info];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 objectForSetting:1];

      if (v9)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v31 = 0u;
        v32 = 0u;
      }

      v33 = v31;
      v34 = v32;
      if (*(&v32 + 1))
      {
        if (swift_dynamicCast())
        {
          v10 = v31;
          if (qword_100088438 != -1)
          {
            swift_once();
          }

          v11 = type metadata accessor for Logger();
          sub_1000105E8(v11, qword_10008C4C0);
          v12 = v6;
          v13 = Logger.logObject.getter();
          v14 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v13, v14))
          {
            v15 = swift_slowAlloc();
            v16 = swift_slowAlloc();
            v17 = swift_slowAlloc();
            *&v33 = v17;
            *v15 = 138412546;
            v18 = *&v12[OBJC_IVAR____TtC26AppDistributionLaunchAngel23InstallConfirmationTask_logKey];
            *(v15 + 4) = v18;
            *v16 = v18;
            *(v15 + 12) = 2080;
            if (v31)
            {
              v19 = 0x656D7269666E6F63;
            }

            else
            {
              v19 = 0x64656C65636E6163;
            }

            if (v31)
            {
              v20 = 0xE900000000000064;
            }

            else
            {
              v20 = 0xE800000000000000;
            }

            v21 = v18;
            v22 = sub_10000F78C(v19, v20, &v33);

            *(v15 + 14) = v22;
            _os_log_impl(&_mh_execute_header, v13, v14, "[%@] Install %s", v15, 0x16u);
            sub_100011C14(v16, &qword_100088FD0, &qword_1000673F0);

            sub_10001059C(v17);
          }

LABEL_26:
          **(*(a3 + 64) + 40) = v10;
          swift_continuation_resume();

          return;
        }

LABEL_21:
        if (qword_100088438 != -1)
        {
          swift_once();
        }

        v23 = type metadata accessor for Logger();
        sub_1000105E8(v23, qword_10008C4C0);
        v24 = v6;
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          *v27 = 138412290;
          v29 = *&v24[OBJC_IVAR____TtC26AppDistributionLaunchAngel23InstallConfirmationTask_logKey];
          *(v27 + 4) = v29;
          *v28 = v29;
          v30 = v29;
          _os_log_impl(&_mh_execute_header, v25, v26, "[%@] No response provided, defaulting to cancel.", v27, 0xCu);
          sub_100011C14(v28, &qword_100088FD0, &qword_1000673F0);
        }

        v10 = 0;
        goto LABEL_26;
      }
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
    }

    sub_100011C14(&v33, &qword_100089020, &qword_1000663B0);
    goto LABEL_21;
  }
}

id sub_10002E09C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InstallConfirmationTask();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InstallConfirmationTask()
{
  result = qword_100089900;
  if (!qword_100089900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002E1B4()
{
  result = type metadata accessor for InstallSheetContext();
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

void sub_10002E2BC()
{
  v1 = OBJC_IVAR____TtC26AppDistributionLaunchAngel23InstallConfirmationTask_remoteHandle;
  v2 = *(v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel23InstallConfirmationTask_remoteHandle);
  if (v2)
  {
    [v2 unregisterObserver:v0];
    v2 = *(v0 + v1);
  }

  [v2 invalidate];
  v3 = *(v0 + v1);
  *(v0 + v1) = 0;
}

void sub_10002E3F0()
{
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000105E8(v1, qword_10008C4C0);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = *&v2[OBJC_IVAR____TtC26AppDistributionLaunchAngel23InstallConfirmationTask_logKey];
    *(v4 + 4) = v6;
    *v5 = v6;
    v7 = v6;
    _os_log_impl(&_mh_execute_header, oslog, v3, "[%@] Remote alert did activate", v4, 0xCu);
    sub_100011C14(v5, &qword_100088FD0, &qword_1000673F0);
  }
}

void sub_10002E548()
{
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000105E8(v1, qword_10008C4C0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = *&v2[OBJC_IVAR____TtC26AppDistributionLaunchAngel23InstallConfirmationTask_logKey];
    *(v5 + 4) = v7;
    *v6 = v7;
    v8 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Remote alert did deactivate", v5, 0xCu);
    sub_100011C14(v6, &qword_100088FD0, &qword_1000673F0);
  }

  sub_10002E2BC();
}

void sub_10002E698(uint64_t a1)
{
  sub_10002E2BC();
  if (a1)
  {
    swift_errorRetain();
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000105E8(v3, qword_10008C4C0);
    swift_errorRetain();
    v4 = v1;
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v22 = v8;
      *v6 = 138412546;
      v9 = *&v4[OBJC_IVAR____TtC26AppDistributionLaunchAngel23InstallConfirmationTask_logKey];
      *(v6 + 4) = v9;
      *v7 = v9;
      *(v6 + 12) = 2082;
      swift_getErrorValue();
      v10 = v9;
      v11 = Error.localizedDescription.getter();
      v13 = sub_10000F78C(v11, v12, &v22);

      *(v6 + 14) = v13;
      _os_log_impl(&_mh_execute_header, oslog, v5, "[%@] Remote alert did invalidate with error: %{public}s", v6, 0x16u);
      sub_100011C14(v7, &qword_100088FD0, &qword_1000673F0);

      sub_10001059C(v8);

      return;
    }
  }

  else
  {
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000105E8(v14, qword_10008C4C0);
    v15 = v1;
    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = *&v15[OBJC_IVAR____TtC26AppDistributionLaunchAngel23InstallConfirmationTask_logKey];
      *(v17 + 4) = v19;
      *v18 = v19;
      v20 = v19;
      _os_log_impl(&_mh_execute_header, oslog, v16, "[%@] Remote alert did invalidate", v17, 0xCu);
      sub_100011C14(v18, &qword_100088FD0, &qword_1000673F0);
    }
  }
}

uint64_t sub_10002E9F4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002EA2C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002EA6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EA84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002EACC()
{
  v1[132] = v0;
  v2 = sub_1000047BC(&qword_100089A80, &unk_100066A90);
  v1[133] = v2;
  v3 = *(v2 - 8);
  v1[134] = v3;
  v4 = *(v3 + 64) + 15;
  v1[135] = swift_task_alloc();
  v5 = sub_1000047BC(&unk_1000899D0, &unk_100066640);
  v1[136] = v5;
  v6 = *(v5 - 8);
  v1[137] = v6;
  v7 = *(v6 + 64) + 15;
  v1[138] = swift_task_alloc();
  v8 = *(*(sub_1000047BC(&qword_1000893C0, &unk_1000663F0) - 8) + 64) + 15;
  v1[139] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v1[140] = v9;
  v10 = *(v9 - 8);
  v1[141] = v10;
  v11 = *(v10 + 64) + 15;
  v1[142] = swift_task_alloc();
  v1[143] = type metadata accessor for MainActor();
  v1[144] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[145] = v12;
  v1[146] = v13;

  return _swift_task_switch(sub_10002ED04, v12, v13);
}

uint64_t sub_10002ED04()
{
  v1 = *(v0 + 1056);
  v2 = [objc_allocWithZone(PKPaymentRequest) init];
  *(v0 + 1176) = v2;
  [v2 setRequestType:15];
  [v2 setConfirmationStyle:3];
  v3 = (v1 + OBJC_IVAR____TtC26AppDistributionLaunchAngel22OsloAuthenticationTask_localizedContent);
  v4 = *(v1 + OBJC_IVAR____TtC26AppDistributionLaunchAngel22OsloAuthenticationTask_localizedContent);
  v5 = *(v1 + OBJC_IVAR____TtC26AppDistributionLaunchAngel22OsloAuthenticationTask_localizedContent + 8);
  v47 = v4;
  v6 = String._bridgeToObjectiveC()();
  [v2 setLocalizedNavigationTitle:v6];

  v7 = v3[4];
  v8 = v3[5];
  v9 = String._bridgeToObjectiveC()();
  [v2 setLocalizedAuthorizingTitle:v9];

  sub_1000047BC(&unk_10008A4B0, &unk_1000676F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100065650;
  *(v0 + 1000) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1008) = v11;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = 0xD000000000000033;
  *(inited + 80) = 0x8000000100069BE0;
  v12 = sub_100059988(inited);
  swift_setDeallocating();
  sub_100011C14(inited + 32, &qword_100089010, &qword_1000663A0);
  v13 = objc_opt_self();
  *(v0 + 1048) = 0;
  v14 = [v13 archivedDataWithRootObject:v2 requiringSecureCoding:1 error:v0 + 1048];
  v15 = *(v0 + 1048);
  if (v14)
  {
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    *(v0 + 1032) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 1040) = v19;
    AnyHashable.init<A>(_:)();
    *(v0 + 896) = &type metadata for Data;
    *(v0 + 872) = v16;
    *(v0 + 880) = v18;
    sub_100028608((v0 + 872), (v0 + 904));
    sub_100015A00(v16, v18);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100059434((v0 + 904), v0 + 704, isUniquelyReferenced_nonNull_native);
    sub_100015A54(v16, v18);
    sub_10001E2FC(v0 + 704);
  }

  else
  {
    v21 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  *(v0 + 1184) = v12;
  v22 = *(v0 + 1128);
  v23 = *(v0 + 1120);
  v24 = *(v0 + 1112);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_100066A20;
  *(v0 + 936) = 0x656C746974;
  *(v0 + 944) = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  *(v25 + 96) = &type metadata for String;
  *(v25 + 72) = v47;
  *(v25 + 80) = v5;
  *(v0 + 952) = 0x6567617373656DLL;
  *(v0 + 960) = 0xE700000000000000;

  AnyHashable.init<A>(_:)();
  v27 = v3[2];
  v26 = v3[3];
  *(v25 + 168) = &type metadata for String;
  *(v25 + 144) = v27;
  *(v25 + 152) = v26;
  *(v0 + 968) = 0x63536E6565726373;
  *(v0 + 976) = 0xEB00000000656C61;

  AnyHashable.init<A>(_:)();
  PKScreenScale();
  *(v25 + 240) = &type metadata for CGFloat;
  *(v25 + 216) = v28;
  v29 = sub_100059988(v25);
  *(v0 + 1192) = v29;
  swift_setDeallocating();
  sub_1000047BC(&qword_100089010, &qword_1000663A0);
  swift_arrayDestroy();
  v30 = type metadata accessor for OsloAuthenticationTask.LocalizedContent(0);
  sub_100010668(v3 + *(v30 + 28), v24, &qword_1000893C0, &unk_1000663F0);
  if ((*(v22 + 48))(v24, 1, v23) == 1)
  {
    sub_100011C14(*(v0 + 1112), &qword_1000893C0, &unk_1000663F0);
    v31 = *(v0 + 1184);
    v32 = *(v0 + 1176);
    v33 = *(v0 + 1104);
    v34 = *(v0 + 1096);
    v35 = *(v0 + 1088);
    v36 = *(v0 + 1056);
    *(v0 + 984) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 992) = v37;
    AnyHashable.init<A>(_:)();
    *(v0 + 768) = sub_1000047BC(&qword_100089A88, &unk_100067870);
    *(v0 + 744) = v29;
    sub_100028608((v0 + 744), (v0 + 776));
    v38 = swift_isUniquelyReferenced_nonNull_native();
    sub_100059434((v0 + 776), v0 + 624, v38);
    sub_10001E2FC(v0 + 624);
    v39 = String._bridgeToObjectiveC()();
    [v32 setClientViewSourceIdentifier:v39];

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v32 setClientViewSourceParameter:isa];

    v41 = [objc_allocWithZone(PKPaymentAuthorizationController) initWithPaymentRequest:v32];
    *(v0 + 1240) = v41;
    [v41 setDelegate:v36];
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 1272;
    *(v0 + 24) = sub_10002FAAC;
    swift_continuation_init();
    *(v0 + 552) = v35;
    v42 = sub_1000104C4((v0 + 528));
    CheckedContinuation.init(continuation:function:)();
    (*(v34 + 32))(v42, v33, v35);
    *(v0 + 496) = _NSConcreteStackBlock;
    *(v0 + 504) = 1107296256;
    *(v0 + 512) = sub_100030684;
    *(v0 + 520) = &unk_10007F108;
    [v41 presentWithCompletion:v0 + 496];
    (*(v34 + 8))(v42, v35);

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    (*(*(v0 + 1128) + 32))(*(v0 + 1136), *(v0 + 1112), *(v0 + 1120));
    *(v0 + 1200) = [objc_opt_self() sharedSession];
    v43 = async function pointer to NSURLSession.data(from:delegate:)[1];
    v44 = swift_task_alloc();
    *(v0 + 1208) = v44;
    *v44 = v0;
    v44[1] = sub_10002F518;
    v45 = *(v0 + 1136);

    return NSURLSession.data(from:delegate:)(v45, 0);
  }
}

uint64_t sub_10002F518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v4;
  v8 = *v4;
  v10 = *(*v4 + 1208);
  v11 = *v4;

  v12 = v8[150];
  if (v3)
  {

    v13 = v9[146];
    v14 = v9[145];
    v15 = sub_10003033C;
  }

  else
  {

    v9[152] = a3;
    v9[153] = a2;
    v9[154] = a1;
    v13 = v9[146];
    v14 = v9[145];
    v15 = sub_10002F6B0;
  }

  return _swift_task_switch(v15, v14, v13);
}

uint64_t sub_10002F6B0()
{
  v1 = v0;
  v23 = v0 + 16;
  v24 = v0 + 1272;
  v2 = *(v0 + 1232);
  v3 = *(v0 + 1224);
  v4 = *(v0 + 1192);
  v5 = *(v0 + 1136);
  v6 = *(v0 + 1128);
  v7 = *(v0 + 1120);

  *(v0 + 1016) = 1852793705;
  *(v0 + 1024) = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  *(v0 + 832) = &type metadata for Data;
  *(v0 + 808) = v2;
  *(v0 + 816) = v3;
  sub_100028608((v0 + 808), (v0 + 840));
  sub_100015A00(v2, v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100059434((v0 + 840), v0 + 664, isUniquelyReferenced_nonNull_native);
  sub_100015A54(v2, v3);
  sub_10001E2FC(v0 + 664);
  (*(v6 + 8))(v5, v7);
  v9 = v4;
  v10 = *(v1 + 1184);
  v11 = *(v1 + 1176);
  v12 = *(v1 + 1104);
  v13 = *(v1 + 1096);
  v14 = *(v1 + 1088);
  v15 = *(v1 + 1056);
  *(v1 + 984) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 992) = v16;
  AnyHashable.init<A>(_:)();
  *(v1 + 768) = sub_1000047BC(&qword_100089A88, &unk_100067870);
  *(v1 + 744) = v9;
  sub_100028608((v1 + 744), (v1 + 776));
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_100059434((v1 + 776), v1 + 624, v17);
  sub_10001E2FC(v1 + 624);
  v18 = String._bridgeToObjectiveC()();
  [v11 setClientViewSourceIdentifier:v18];

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v11 setClientViewSourceParameter:isa];

  v20 = [objc_allocWithZone(PKPaymentAuthorizationController) initWithPaymentRequest:v11];
  *(v1 + 1240) = v20;
  [v20 setDelegate:v15];
  *(v1 + 16) = v1;
  *(v1 + 56) = v24;
  *(v1 + 24) = sub_10002FAAC;
  swift_continuation_init();
  *(v1 + 552) = v14;
  v21 = sub_1000104C4((v1 + 528));
  CheckedContinuation.init(continuation:function:)();
  (*(v13 + 32))(v21, v12, v14);
  *(v1 + 496) = _NSConcreteStackBlock;
  *(v1 + 504) = 1107296256;
  *(v1 + 512) = sub_100030684;
  *(v1 + 520) = &unk_10007F108;
  [v20 presentWithCompletion:?];
  (*(v13 + 8))(v21, v14);

  return _swift_continuation_await(v23);
}

uint64_t sub_10002FAAC()
{
  v1 = *(*v0 + 1168);
  v2 = *(*v0 + 1160);
  v3 = *v0;

  return _swift_task_switch(sub_10002FBE0, v2, v1);
}

uint64_t sub_10002FBE0()
{
  if (*(v0 + 1272) == 1)
  {
    v1 = *(v0 + 1144);
    v2 = *(v0 + 1056);
    v3 = static MainActor.shared.getter();
    *(v0 + 1248) = v3;
    v4 = swift_task_alloc();
    *(v0 + 1256) = v4;
    *(v4 + 16) = v2;
    v5 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v6 = swift_task_alloc();
    *(v0 + 1264) = v6;
    *v6 = v0;
    v6[1] = sub_10002FDB4;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 1273, v3, &protocol witness table for MainActor, 0x29286E7572, 0xE500000000000000, sub_10003169C, v4, &type metadata for Bool);
  }

  else
  {
    v7 = *(v0 + 1240);
    v8 = *(v0 + 1152);

    v9 = *(v0 + 1136);
    v10 = *(v0 + 1112);
    v11 = *(v0 + 1104);
    v12 = *(v0 + 1080);

    v13 = *(v0 + 8);

    return v13(0);
  }
}

uint64_t sub_10002FDB4()
{
  v1 = *v0;
  v2 = *(*v0 + 1264);
  v3 = *(*v0 + 1256);
  v4 = *(*v0 + 1248);
  v8 = *v0;

  v5 = *(v1 + 1168);
  v6 = *(v1 + 1160);

  return _swift_task_switch(sub_10002FF48, v6, v5);
}

uint64_t sub_10002FF48()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 10;
  v4 = v0 + 70;
  v5 = v0[155];
  v6 = v0[135];
  v7 = v0[134];
  v8 = v0[133];
  *(v1 + 1274) = *(v1 + 1273);
  v1[10] = v2;
  v1[11] = sub_100030124;
  swift_continuation_init();
  v1[77] = v8;
  v9 = sub_1000104C4(v1 + 74);
  CheckedContinuation.init(continuation:function:)();
  (*(v7 + 32))(v9, v6, v8);
  v1[70] = _NSConcreteStackBlock;
  v1[71] = 1107296256;
  v1[72] = sub_100030890;
  v1[73] = &unk_10007F130;
  [v5 dismissWithCompletion:v4];
  (*(v7 + 8))(v9, v8);

  return _swift_continuation_await(v3);
}

uint64_t sub_100030124()
{
  v1 = *(*v0 + 1168);
  v2 = *(*v0 + 1160);
  v3 = *v0;

  return _swift_task_switch(sub_100030258, v2, v1);
}

uint64_t sub_100030258()
{
  v1 = *(v0 + 1240);
  v2 = *(v0 + 1152);

  v3 = *(v0 + 1274);
  v4 = *(v0 + 1136);
  v5 = *(v0 + 1112);
  v6 = *(v0 + 1104);
  v7 = *(v0 + 1080);

  v8 = *(v0 + 8);

  return v8(v3);
}

uint64_t sub_10003033C()
{
  v1 = v0;
  (*(v1[141] + 8))(v1[142], v1[140]);
  v2 = v0[149];
  v3 = v0[148];
  v4 = v0[147];
  v5 = v0[138];
  v6 = v0[137];
  v7 = v0[136];
  v8 = v0[132];
  v0[123] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0[124] = v9;
  AnyHashable.init<A>(_:)();
  v0[96] = sub_1000047BC(&qword_100089A88, &unk_100067870);
  v0[93] = v2;
  sub_100028608(v1 + 93, v1 + 97);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100059434(v1 + 97, (v1 + 78), isUniquelyReferenced_nonNull_native);
  sub_10001E2FC((v0 + 78));
  v11 = String._bridgeToObjectiveC()();
  [v4 setClientViewSourceIdentifier:v11];

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v4 setClientViewSourceParameter:isa];

  v13 = [objc_allocWithZone(PKPaymentAuthorizationController) initWithPaymentRequest:v4];
  v0[155] = v13;
  [v13 setDelegate:v8];
  v0[2] = v0;
  v0[7] = v0 + 159;
  v0[3] = sub_10002FAAC;
  swift_continuation_init();
  v0[69] = v7;
  v14 = sub_1000104C4(v0 + 66);
  CheckedContinuation.init(continuation:function:)();
  (*(v6 + 32))(v14, v5, v7);
  v0[62] = _NSConcreteStackBlock;
  v0[63] = 1107296256;
  v0[64] = sub_100030684;
  v0[65] = &unk_10007F108;
  [v13 presentWithCompletion:v0 + 62];
  (*(v6 + 8))(v14, v7);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100030684(uint64_t a1)
{
  sub_100010624((a1 + 32), *(a1 + 56));
  sub_1000047BC(&unk_1000899D0, &unk_100066640);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1000306E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000047BC(&qword_100089A90, &unk_100066AA0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_1000047BC(&unk_1000899D0, &unk_100066640);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtC26AppDistributionLaunchAngel22OsloAuthenticationTask_finalizedContinuation;
  swift_beginAccess();
  sub_1000316A4(v7, a2 + v10);
  swift_endAccess();
}

uint64_t sub_100030890(uint64_t a1)
{
  sub_100010624((a1 + 32), *(a1 + 56));
  sub_1000047BC(&qword_100089A80, &unk_100066A90);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100030B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v4[4] = type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100030BD4, v6, v5);
}

uint64_t sub_100030BD4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  v0[6] = _Block_copy(v3);
  v5 = v4;
  v0[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100030C80, v7, v6);
}

uint64_t sub_100030C80()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[3];

  v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel22OsloAuthenticationTask_finalResult] = 1;
  v4 = [objc_allocWithZone(PKPaymentAuthorizationResult) initWithStatus:0 errors:0];

  (v2)[2](v2, v4);
  _Block_release(v2);

  v5 = v0[1];

  return v5();
}

void sub_100030E48()
{
  v0 = type metadata accessor for OsloAuthenticationTask.LocalizedContent(319);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100030F3C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100030F3C()
{
  if (!qword_1000899C8)
  {
    sub_10000B850(&unk_1000899D0, &unk_100066640);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000899C8);
    }
  }
}

uint64_t sub_100030FB4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000047BC(&qword_1000893C0, &unk_1000663F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100031084(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000047BC(&qword_1000893C0, &unk_1000663F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100031134()
{
  sub_100016184();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1000311B8(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1000121F4;

  return v7();
}

uint64_t sub_1000312A0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10001020C;

  return v8();
}

uint64_t sub_100031388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_100010668(a3, v25 - v11, &unk_100088F10, &qword_100065D60);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100011C14(v12, &unk_100088F10, &qword_100065D60);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = String.utf8CString.getter() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_100011C14(a3, &unk_100088F10, &qword_100065D60);

    return v23;
  }

LABEL_8:
  sub_100011C14(a3, &unk_100088F10, &qword_100065D60);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1000316A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000047BC(&qword_100089A90, &unk_100066AA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100031714()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100031764()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10001020C;

  return sub_100030B38(v2, v3, v5, v4);
}

uint64_t sub_100031828()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000121F4;

  return sub_1000311B8(v2, v3, v5);
}

uint64_t sub_1000318E8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100031928(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000121F4;

  return sub_1000312A0(a1, v4, v5, v7);
}

uint64_t sub_1000319F4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100031A2C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000121F4;

  return sub_10000F1C0(a1, v5);
}

uint64_t sub_100031AE4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001020C;

  return sub_10000F1C0(a1, v5);
}

uint64_t sub_100031B9C()
{
  v1 = v0;
  v2 = sub_1000047BC(&qword_100089A90, &unk_100066AA0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v13[-v4];
  v6 = sub_1000047BC(&unk_1000899D0, &unk_100066640);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13[-v9];
  v11 = OBJC_IVAR____TtC26AppDistributionLaunchAngel22OsloAuthenticationTask_finalizedContinuation;
  swift_beginAccess();
  if (!(*(v7 + 48))(v1 + v11, 1, v6))
  {
    (*(v7 + 16))(v10, v1 + v11, v6);
    v13[0] = *(v1 + OBJC_IVAR____TtC26AppDistributionLaunchAngel22OsloAuthenticationTask_finalResult);
    CheckedContinuation.resume(returning:)();
    (*(v7 + 8))(v10, v6);
  }

  (*(v7 + 56))(v5, 1, 1, v6);
  swift_beginAccess();
  sub_1000316A4(v5, v1 + v11);
  return swift_endAccess();
}

uint64_t sub_100031D80(uint64_t a1)
{
  v2 = type metadata accessor for OsloAuthenticationTask.LocalizedContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100031DEC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001020C;

  return v7(a1);
}

uint64_t sub_100031EE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int sub_100031FE8(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t sub_100032030(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

BOOL sub_100032060(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_100031FB0(*a1, *a2);
}

Swift::Int sub_100032078(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_100031FE8(*v1);
}

void sub_10003208C(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  sub_100031FC0(a1, *v2);
}

Swift::Int sub_1000320A0(uint64_t a1, void *a2)
{
  Hasher.init(_seed:)();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  sub_100031FC0(v8, *v2);
  return Hasher._finalize()();
}

uint64_t sub_1000320EC(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_100032030(*v1);
}

uint64_t sub_100032100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_100031EE4(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_100032140@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_100037A18();
  *a2 = result;
  return result;
}

uint64_t sub_100032174(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1000321C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_10003221C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_10003228C(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = type metadata accessor for AppDistributionLaunchAngelServiceResult.FailureCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v46 = v7;
  v8 = type metadata accessor for KeyedEncodingContainer();
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = *(v48 + 64);
  __chkstk_darwin(v8);
  v47 = v39 - v10;
  v11 = type metadata accessor for AppDistributionLaunchAngelServiceResult.SuccessCodingKeys();
  v12 = swift_getWitnessTable();
  v41 = v11;
  v39[1] = v12;
  v13 = type metadata accessor for KeyedEncodingContainer();
  v43 = *(v13 - 8);
  v44 = v13;
  v14 = *(v43 + 64);
  v15 = __chkstk_darwin(v13);
  v40 = v39 - v16;
  v42 = *(v4 - 8);
  v17 = *(v42 + 64);
  v18 = __chkstk_darwin(v15);
  v39[0] = v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 - 1);
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  v23 = (v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = v6;
  v51 = v4;
  type metadata accessor for AppDistributionLaunchAngelServiceResult.CodingKeys();
  swift_getWitnessTable();
  v52 = type metadata accessor for KeyedEncodingContainer();
  v54 = *(v52 - 8);
  v24 = *(v54 + 64);
  __chkstk_darwin(v52);
  v26 = v39 - v25;
  v27 = a1[4];
  sub_100010624(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(v20 + 16))(v23, v53, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v23;
    v29 = v23[1];
    v56 = 1;
    v30 = v47;
    v31 = v52;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v32 = v49;
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(v48 + 8))(v30, v32);
  }

  else
  {
    v33 = v42;
    v34 = v39[0];
    v35 = v51;
    (*(v42 + 32))(v39[0], v23, v51);
    v55 = 0;
    v36 = v40;
    v31 = v52;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v37 = v44;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v43 + 8))(v36, v37);
    (*(v33 + 8))(v34, v35);
  }

  return (*(v54 + 8))(v26, v31);
}

uint64_t sub_10003278C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v78 = a4;
  v7 = type metadata accessor for AppDistributionLaunchAngelServiceResult.FailureCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v75 = v7;
  v68 = type metadata accessor for KeyedDecodingContainer();
  v67 = *(v68 - 8);
  v8 = *(v67 + 64);
  __chkstk_darwin(v68);
  v76 = &v63 - v9;
  v10 = type metadata accessor for AppDistributionLaunchAngelServiceResult.SuccessCodingKeys();
  v71 = swift_getWitnessTable();
  v72 = v10;
  v66 = type metadata accessor for KeyedDecodingContainer();
  v65 = *(v66 - 8);
  v11 = *(v65 + 64);
  __chkstk_darwin(v66);
  v73 = &v63 - v12;
  type metadata accessor for AppDistributionLaunchAngelServiceResult.CodingKeys();
  v81 = swift_getWitnessTable();
  v13 = type metadata accessor for KeyedDecodingContainer();
  v14 = *(v13 - 8);
  v79 = v13;
  v80 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v63 - v16;
  v69 = a2;
  v70 = a3;
  v18 = type metadata accessor for AppDistributionLaunchAngelServiceResult();
  v77 = *(v18 - 8);
  v19 = *(v77 + 64);
  v20 = __chkstk_darwin(v18);
  v22 = (&v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __chkstk_darwin(v20);
  v25 = &v63 - v24;
  __chkstk_darwin(v23);
  v27 = &v63 - v26;
  v28 = a1;
  v29 = a1[3];
  v30 = a1[4];
  v87 = v28;
  sub_100010624(v28, v29);
  v31 = v82;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v31)
  {
    v64 = v22;
    v81 = v27;
    v82 = v25;
    v32 = v79;
    v33 = v17;
    *&v83 = KeyedDecodingContainer.allKeys.getter();
    type metadata accessor for Array();
    swift_getWitnessTable();
    *&v85 = ArraySlice.init<A>(_:)();
    *(&v85 + 1) = v34;
    *&v86 = v35;
    *(&v86 + 1) = v36;
    type metadata accessor for ArraySlice();
    swift_getWitnessTable();
    Collection<>.popFirst()();
    v37 = v83;
    if (v83 == 2 || (v63 = v85, v83 = v85, v84 = v86, (Collection.isEmpty.getter() & 1) == 0))
    {
      v42 = type metadata accessor for DecodingError();
      swift_allocError();
      v43 = v32;
      v45 = v44;
      v46 = *(sub_1000047BC(qword_100089B88, &qword_100066D28) + 48);
      *v45 = v18;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v42 - 8) + 104))(v45, enum case for DecodingError.typeMismatch(_:), v42);
      swift_willThrow();
      (*(v80 + 8))(v17, v43);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v37)
      {
        LOBYTE(v83) = 1;
        v38 = v76;
        v39 = v33;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v40 = v32;
        v41 = v78;
        v49 = v40;
        v50 = v68;
        v54 = KeyedDecodingContainer.decode(_:forKey:)();
        v56 = v55;
        (*(v67 + 8))(v38, v50);
        (*(v80 + 8))(v39, v49);
        swift_unknownObjectRelease();
        v57 = v64;
        *v64 = v54;
        v57[1] = v56;
        swift_storeEnumTagMultiPayload();
        v58 = v57;
        v59 = v77;
      }

      else
      {
        LOBYTE(v83) = 0;
        v47 = v73;
        v48 = v33;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v59 = v77;
        v51 = v66;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v52 = v80;
        (*(v65 + 8))(v47, v51);
        (*(v52 + 8))(v48, v32);
        swift_unknownObjectRelease();
        v60 = v82;
        swift_storeEnumTagMultiPayload();
        v41 = v78;
        v58 = v60;
      }

      v61 = *(v59 + 32);
      v62 = v81;
      v61(v81, v58, v18);
      v61(v41, v62, v18);
    }
  }

  return sub_10001059C(v87);
}

uint64_t sub_100032FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_10003221C(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_100032FE8@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_100032F6C();
  *a2 = result & 1;
  return result;
}

uint64_t sub_100033020(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_100033074(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_1000330C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_10003311C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

Swift::Int sub_1000331AC()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1000331F0()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100033260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = type metadata accessor for ConfirmationSheetContext();
  v3[23] = v4;
  v5 = *(v4 - 8);
  v3[24] = v5;
  v6 = *(v5 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v7 = type metadata accessor for LicenseResolutionContext();
  v3[28] = v7;
  v8 = *(v7 - 8);
  v3[29] = v8;
  v9 = *(v8 + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v10 = type metadata accessor for OAuthAuthorizationContext();
  v3[33] = v10;
  v11 = *(v10 - 8);
  v3[34] = v11;
  v12 = *(v11 + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v13 = type metadata accessor for InstallSheetContext();
  v3[37] = v13;
  v14 = *(v13 - 8);
  v3[38] = v14;
  v15 = *(v14 + 64) + 15;
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v16 = type metadata accessor for LaunchAngelXPCResponse.ResponseType();
  v3[42] = v16;
  v17 = *(v16 - 8);
  v3[43] = v17;
  v18 = *(v17 + 64) + 15;
  v3[44] = swift_task_alloc();
  v19 = type metadata accessor for LaunchAngelXPCRequest.RequestType();
  v3[45] = v19;
  v20 = *(v19 - 8);
  v3[46] = v20;
  v21 = *(v20 + 64) + 15;
  v3[47] = swift_task_alloc();
  v22 = sub_1000047BC(&qword_100089AE8, &qword_100066BA0);
  v3[48] = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  v3[49] = swift_task_alloc();
  v24 = type metadata accessor for LaunchAngelXPCRequest();
  v3[50] = v24;
  v25 = *(v24 - 8);
  v3[51] = v25;
  v26 = *(v25 + 64) + 15;
  v3[52] = swift_task_alloc();

  return _swift_task_switch(sub_1000335DC, 0, 0);
}

uint64_t sub_1000335DC()
{
  v206 = v0;
  v1 = *(v0 + 384);
  v2 = *(v0 + 392);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v5 = type metadata accessor for LogKey();
  v6 = objc_allocWithZone(v5);
  v7 = sub_100055C40();
  *(v0 + 424) = v7;
  v8 = type metadata accessor for PropertyListDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100012174(&qword_100089AF0, &qword_100089AE8, &qword_100066BA0);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v198 = v5;
  v11 = *(v0 + 408);
  v12 = *(v0 + 416);
  v14 = *(v0 + 392);
  v13 = *(v0 + 400);
  v16 = *(v0 + 368);
  v15 = *(v0 + 376);
  v17 = *(v0 + 360);

  (*(v11 + 32))(v12, v14, v13);
  LaunchAngelXPCRequest.requestType.getter();
  v18 = (*(v16 + 88))(v15, v17);
  if (v18 == enum case for LaunchAngelXPCRequest.RequestType.displayProductPage(_:))
  {
    v19 = *(v0 + 376);
    (*(*(v0 + 368) + 96))(v19, *(v0 + 360));
    v21 = *v19;
    v20 = *(v19 + 8);
    v22 = *(v19 + 16);
    v23 = *(v19 + 32);
    v203 = *(v19 + 24);
    *(v0 + 432) = v23;
    if (qword_100088450 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000105E8(v24, qword_10008C508);
    v25 = v7;

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v199 = v20;
      v29 = swift_slowAlloc();
      v205[0] = swift_slowAlloc();
      *v28 = 138413058;
      *(v28 + 4) = v25;
      *v29 = v25;
      *(v28 + 12) = 2050;
      *(v28 + 14) = v21;
      *(v28 + 22) = 2082;
      *(v0 + 144) = v199;
      *(v0 + 152) = v22;
      v30 = v25;
      sub_1000047BC(qword_100089AF8, &qword_100066BA8);
      v31 = String.init<A>(describing:)();
      v33 = sub_10000F78C(v31, v32, v205);

      *(v28 + 24) = v33;
      *(v28 + 32) = 2082;
      v34 = v203;
      *(v28 + 34) = sub_10000F78C(v203, v23, v205);
      _os_log_impl(&_mh_execute_header, v26, v27, "[%@] Asked to display product page %{public}llu - %{public}s by %{public}s", v28, 0x2Au);
      sub_100011C14(v29, &qword_100088FD0, &qword_1000673F0);
      v20 = v199;

      swift_arrayDestroy();
    }

    else
    {

      v34 = v203;
    }

    v50 = swift_task_alloc();
    *(v0 + 440) = v50;
    *v50 = v0;
    v50[1] = sub_100034CD8;

    return sub_10004AD3C(v34, v23, v21, v20, v22);
  }

  v204 = v0;
  if (v18 == enum case for LaunchAngelXPCRequest.RequestType.displaySearchResults(_:))
  {
    v35 = *(v0 + 376);
    (*(*(v0 + 368) + 96))(v35, *(v0 + 360));
    v37 = *v35;
    v36 = v35[1];
    *(v0 + 456) = v36;
    v39 = v35[2];
    v38 = v35[3];
    *(v0 + 464) = v38;
    if (qword_100088450 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_1000105E8(v40, qword_10008C508);
    v41 = v7;

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v200 = v39;
      v45 = v37;
      v46 = swift_slowAlloc();
      v205[0] = swift_slowAlloc();
      *v44 = 138412802;
      *(v44 + 4) = v41;
      *v46 = v41;
      *(v44 + 12) = 2082;
      v47 = v41;
      *(v44 + 14) = sub_10000F78C(v45, v36, v205);
      *(v44 + 22) = 2082;
      *(v44 + 24) = sub_10000F78C(v200, v38, v205);
      _os_log_impl(&_mh_execute_header, v42, v43, "[%@] Asked to display search results %{public}s by %{public}s", v44, 0x20u);
      sub_100011C14(v46, &qword_100088FD0, &qword_1000673F0);
      v37 = v45;
      v39 = v200;

      swift_arrayDestroy();
    }

    v201 = sub_10004B584;
    v48 = swift_task_alloc();
    *(v0 + 472) = v48;
    *v48 = v0;
    v49 = sub_1000350E0;
LABEL_22:
    v48[1] = v49;

    return v201(v39, v38, v37, v36);
  }

  v52 = v0;
  if (v18 == enum case for LaunchAngelXPCRequest.RequestType.displayAuthorization(_:))
  {
    v53 = *(v0 + 376);
    (*(*(v0 + 368) + 96))(v53, *(v0 + 360));
    v37 = *v53;
    v36 = v53[1];
    *(v0 + 488) = v36;
    v39 = v53[2];
    v38 = v53[3];
    *(v0 + 496) = v38;
    if (qword_100088450 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_1000105E8(v54, qword_10008C508);
    v55 = v7;

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v202 = v39;
      v59 = v37;
      v60 = swift_slowAlloc();
      v205[0] = swift_slowAlloc();
      *v58 = 138412802;
      *(v58 + 4) = v55;
      *v60 = v55;
      *(v58 + 12) = 2082;
      v61 = v55;
      *(v58 + 14) = sub_10000F78C(v59, v36, v205);
      *(v58 + 22) = 2082;
      *(v58 + 24) = sub_10000F78C(v202, v38, v205);
      _os_log_impl(&_mh_execute_header, v56, v57, "[%@] Asked to display authorization for %{public}s by %{public}s", v58, 0x20u);
      sub_100011C14(v60, &qword_100088FD0, &qword_1000673F0);
      v37 = v59;
      v39 = v202;

      swift_arrayDestroy();
    }

    v201 = sub_10004BE8C;
    v48 = swift_task_alloc();
    *(v0 + 504) = v48;
    *v48 = v0;
    v49 = sub_100035380;
    goto LABEL_22;
  }

  if (v18 == enum case for LaunchAngelXPCRequest.RequestType.getInstallConfirmation(_:))
  {
    v62 = *(v0 + 376);
    v63 = *(v0 + 328);
    super_class = v204[18].super_class;
    receiver = v204[19].receiver;
    (*(v204[23].receiver + 12))(v204[23].super_class, v204[22].super_class);
    receiver[4](v63, v62, super_class);
    if (qword_100088450 != -1)
    {
      swift_once();
    }

    v67 = v204[20].receiver;
    v66 = v204[20].super_class;
    v68 = v204[18].super_class;
    v69 = v204[19].receiver;
    v70 = type metadata accessor for Logger();
    sub_1000105E8(v70, qword_10008C508);
    v71 = v69[2];
    v71(v67, v66, v68);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();
    v74 = os_log_type_enabled(v72, v73);
    v75 = v204[20].receiver;
    v76 = v204[18].super_class;
    v77 = v204[19].receiver;
    if (v74)
    {
      v195 = v71;
      v78 = swift_slowAlloc();
      v192 = swift_slowAlloc();
      v205[0] = v192;
      *v78 = 136446210;
      v189 = InstallSheetContext.logKey.getter();
      v80 = v79;
      v81 = v77[1];
      v82 = (v77 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      (v81)(v75, v76);
      v83 = v81;
      v84 = sub_10000F78C(v189, v80, v205);
      v52 = v204;

      *(v78 + 4) = v84;
      _os_log_impl(&_mh_execute_header, v72, v73, "[%{public}s]: Asked to confirm install", v78, 0xCu);
      sub_10001059C(v192);

      v71 = v195;
    }

    else
    {

      v110 = v77[1];
      v82 = (v77 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      (v110)(v75, v76);
      v83 = v110;
    }

    v52[32].super_class = v83;
    v111 = v52[19].super_class;
    v112 = v52[18].super_class;
    v71(v111, v52[20].super_class, v112);
    v113 = type metadata accessor for InstallConfirmationTask();
    v114 = objc_allocWithZone(v113);
    *&v114[OBJC_IVAR____TtC26AppDistributionLaunchAngel23InstallConfirmationTask_remoteHandle] = 0;
    v71(&v114[OBJC_IVAR____TtC26AppDistributionLaunchAngel23InstallConfirmationTask_context], v111, v112);
    v115 = InstallSheetContext.logKey.getter();
    v117 = v116;
    v118 = objc_allocWithZone(v198);
    v119 = &v118[OBJC_IVAR____TtC26AppDistributionLaunchAngel6LogKey_stringValue];
    *v119 = v115;
    v119[1] = v117;
    v52[7].receiver = v118;
    v52[7].super_class = v198;
    *&v114[OBJC_IVAR____TtC26AppDistributionLaunchAngel23InstallConfirmationTask_logKey] = objc_msgSendSuper2(v52 + 7, "init");
    v52[8].receiver = v114;
    v52[8].super_class = v113;
    v52[33].receiver = objc_msgSendSuper2(v52 + 8, "init");
    v52[33].super_class = v82;
    (v83)(v111, v112);
    v120 = swift_task_alloc();
    v52[34].receiver = v120;
    *v120 = v52;
    v120[1] = sub_100035620;

    return sub_10002D114();
  }

  else if (v18 == enum case for LaunchAngelXPCRequest.RequestType.oauthAuthorization(_:))
  {
    v85 = *(v0 + 376);
    v86 = *(v0 + 288);
    v87 = v204[16].super_class;
    v88 = v204[17].receiver;
    (*(v204[23].receiver + 12))(v204[23].super_class, v204[22].super_class);
    v88[4](v86, v85, v87);
    if (qword_100088450 != -1)
    {
      swift_once();
    }

    v89 = type metadata accessor for Logger();
    sub_1000105E8(v89, qword_10008C508);
    v90 = v7;
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *v93 = 138412290;
      *(v93 + 4) = v90;
      *v94 = v90;
      v95 = v90;
      _os_log_impl(&_mh_execute_header, v91, v92, "[%@] Asked to display OAuth web authentication", v93, 0xCu);
      sub_100011C14(v94, &qword_100088FD0, &qword_1000673F0);
    }

    v96 = v204[17].super_class;
    v97 = v204[18].receiver;
    v98 = v204[16].super_class;
    v99 = v204[17].receiver;

    v100 = v99[2];
    v100(v96, v97, v98);
    v101 = type metadata accessor for OAuthAuthorizationTask();
    v102 = objc_allocWithZone(v101);
    *&v102[OBJC_IVAR____TtC26AppDistributionLaunchAngel22OAuthAuthorizationTask_remoteHandle] = 0;
    v100(&v102[OBJC_IVAR____TtC26AppDistributionLaunchAngel22OAuthAuthorizationTask_context], v96, v98);
    v103 = OAuthAuthorizationContext.logKey.getter();
    v105 = v104;
    v106 = objc_allocWithZone(v198);
    v107 = &v106[OBJC_IVAR____TtC26AppDistributionLaunchAngel6LogKey_stringValue];
    *v107 = v103;
    v107[1] = v105;
    v204[5].receiver = v106;
    v204[5].super_class = v198;
    *&v102[OBJC_IVAR____TtC26AppDistributionLaunchAngel22OAuthAuthorizationTask_logKey] = objc_msgSendSuper2(v204 + 5, "init");
    v204[6].receiver = v102;
    v204[6].super_class = v101;
    v204[34].super_class = objc_msgSendSuper2(v204 + 6, "init");
    v108 = v99[1];
    v204[35].receiver = v108;
    v204[35].super_class = ((v99 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v108(v96, v98);
    v109 = swift_task_alloc();
    v204[36].receiver = v109;
    *v109 = v204;
    v109[1] = sub_1000358D4;

    return sub_100013768();
  }

  else if (v18 == enum case for LaunchAngelXPCRequest.RequestType.handleLicenseResolution(_:))
  {
    v121 = *(v0 + 376);
    v122 = *(v0 + 256);
    v123 = v204[14].receiver;
    v124 = v204[14].super_class;
    (*(v204[23].receiver + 12))(v204[23].super_class, v204[22].super_class);
    (*(v124 + 4))(v122, v121, v123);
    if (qword_100088450 != -1)
    {
      swift_once();
    }

    v126 = v204[15].super_class;
    v125 = v204[16].receiver;
    v127 = v204[14].receiver;
    v128 = v204[14].super_class;
    v129 = type metadata accessor for Logger();
    sub_1000105E8(v129, qword_10008C508);
    v130 = *(v128 + 2);
    v130(v126, v125, v127);
    v131 = Logger.logObject.getter();
    v132 = static os_log_type_t.default.getter();
    v133 = os_log_type_enabled(v131, v132);
    v134 = v204[15].super_class;
    v135 = v204[14].receiver;
    v136 = v204[14].super_class;
    if (v133)
    {
      v196 = v130;
      v137 = swift_slowAlloc();
      v193 = swift_slowAlloc();
      v205[0] = v193;
      *v137 = 136446210;
      v190 = LicenseResolutionContext.logKey.getter();
      v139 = v138;
      v140 = *(v136 + 1);
      v141 = (v136 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v140(v134, v135);
      v142 = v140;
      v143 = sub_10000F78C(v190, v139, v205);
      v52 = v204;

      *(v137 + 4) = v143;
      _os_log_impl(&_mh_execute_header, v131, v132, "[%{public}s] Handling license resolution request", v137, 0xCu);
      sub_10001059C(v193);

      v130 = v196;
    }

    else
    {

      v167 = *(v136 + 1);
      v141 = (v136 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v167(v134, v135);
      v142 = v167;
    }

    v52[37].receiver = v142;
    v168 = v52[15].receiver;
    v169 = v52[14].receiver;
    v130(v168, v52[16].receiver, v169);
    v170 = type metadata accessor for LicenseResolutionTask();
    v171 = objc_allocWithZone(v170);
    *&v171[OBJC_IVAR____TtC26AppDistributionLaunchAngel21LicenseResolutionTask_remoteHandle] = 0;
    v130(&v171[OBJC_IVAR____TtC26AppDistributionLaunchAngel21LicenseResolutionTask_context], v168, v169);
    v172 = LicenseResolutionContext.logKey.getter();
    v174 = v173;
    v175 = objc_allocWithZone(v198);
    v176 = &v175[OBJC_IVAR____TtC26AppDistributionLaunchAngel6LogKey_stringValue];
    *v176 = v172;
    v176[1] = v174;
    v52[3].receiver = v175;
    v52[3].super_class = v198;
    *&v171[OBJC_IVAR____TtC26AppDistributionLaunchAngel21LicenseResolutionTask_logKey] = objc_msgSendSuper2(v52 + 3, "init");
    v52[4].receiver = v171;
    v52[4].super_class = v170;
    v52[37].super_class = objc_msgSendSuper2(v52 + 4, "init");
    v52[38].receiver = v141;
    v142(v168, v169);
    v177 = swift_task_alloc();
    v52[38].super_class = v177;
    *v177 = v52;
    *(v177 + 1) = sub_100035B8C;

    return sub_10004C9A8();
  }

  else if (v18 == enum case for LaunchAngelXPCRequest.RequestType.showConfirmationSheet(_:))
  {
    v144 = *(v0 + 376);
    v145 = *(v0 + 216);
    v146 = v204[11].super_class;
    v147 = v204[12].receiver;
    (*(v204[23].receiver + 12))(v204[23].super_class, v204[22].super_class);
    v147[4](v145, v144, v146);
    if (qword_100088450 != -1)
    {
      swift_once();
    }

    v149 = v204[13].receiver;
    v148 = v204[13].super_class;
    v150 = v204[11].super_class;
    v151 = v204[12].receiver;
    v152 = type metadata accessor for Logger();
    sub_1000105E8(v152, qword_10008C508);
    v153 = v151[2];
    v153(v149, v148, v150);
    v154 = Logger.logObject.getter();
    v155 = static os_log_type_t.default.getter();
    v156 = os_log_type_enabled(v154, v155);
    v157 = v204[13].receiver;
    v158 = v204[11].super_class;
    v159 = v204[12].receiver;
    if (v156)
    {
      v197 = v153;
      v160 = swift_slowAlloc();
      v194 = swift_slowAlloc();
      v205[0] = v194;
      *v160 = 136315138;
      v191 = ConfirmationSheetContext.logKey.getter();
      v162 = v161;
      v163 = v159[1];
      v164 = (v159 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v163(v157, v158);
      v165 = v163;
      v166 = sub_10000F78C(v191, v162, v205);
      v52 = v204;

      *(v160 + 4) = v166;
      _os_log_impl(&_mh_execute_header, v154, v155, "[%s] Asked to show confirmation sheet", v160, 0xCu);
      sub_10001059C(v194);

      v153 = v197;
    }

    else
    {

      v178 = v159[1];
      v164 = (v159 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v178(v157, v158);
      v165 = v178;
    }

    v52[39].receiver = v165;
    v179 = v52[12].super_class;
    v180 = v52[11].super_class;
    v153(v179, v52[13].super_class, v180);
    v181 = type metadata accessor for ConfirmationSheetTask();
    v182 = objc_allocWithZone(v181);
    *&v182[OBJC_IVAR____TtC26AppDistributionLaunchAngel21ConfirmationSheetTask_remoteHandle] = 0;
    v153(&v182[OBJC_IVAR____TtC26AppDistributionLaunchAngel21ConfirmationSheetTask_context], v179, v180);
    v183 = ConfirmationSheetContext.logKey.getter();
    v185 = v184;
    v186 = objc_allocWithZone(v198);
    v187 = &v186[OBJC_IVAR____TtC26AppDistributionLaunchAngel6LogKey_stringValue];
    *v187 = v183;
    v187[1] = v185;
    v52[1].receiver = v186;
    v52[1].super_class = v198;
    *&v182[OBJC_IVAR____TtC26AppDistributionLaunchAngel21ConfirmationSheetTask_logKey] = objc_msgSendSuper2(v52 + 1, "init");
    v52[2].receiver = v182;
    v52[2].super_class = v181;
    v52[39].super_class = objc_msgSendSuper2(v52 + 2, "init");
    v52[40].receiver = v164;
    v165(v179, v180);
    v188 = swift_task_alloc();
    v52[40].super_class = v188;
    *v188 = v52;
    *(v188 + 1) = sub_100035E38;

    return sub_10004451C();
  }

  else
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

uint64_t sub_100034CD8()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v4 = *v1;
  *(*v1 + 448) = v0;

  v5 = *(v2 + 432);

  if (v0)
  {
    v6 = sub_100034F90;
  }

  else
  {
    v6 = sub_100034E0C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100034E0C()
{
  v1 = v0[52];
  v2 = v0[53];
  v3 = v0[50];
  v4 = v0[51];
  v5 = v0[20];
  (*(v0[43] + 104))(v0[44], enum case for LaunchAngelXPCResponse.ResponseType.ignored(_:), v0[42]);
  LaunchAngelXPCResponse.init(responseType:)();

  (*(v4 + 8))(v1, v3);
  v6 = v0[52];
  v7 = v0[49];
  v8 = v0[47];
  v9 = v0[44];
  v11 = v0[40];
  v10 = v0[41];
  v12 = v0[39];
  v14 = v0[35];
  v13 = v0[36];
  v15 = v0[32];
  v18 = v0[31];
  v19 = v0[30];
  v20 = v0[27];
  v21 = v0[26];
  v22 = v0[25];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100034F90()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 400);
  v3 = *(v0 + 408);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 416);
  v5 = *(v0 + 392);
  v6 = *(v0 + 376);
  v7 = *(v0 + 352);
  v9 = *(v0 + 320);
  v8 = *(v0 + 328);
  v10 = *(v0 + 312);
  v12 = *(v0 + 280);
  v11 = *(v0 + 288);
  v13 = *(v0 + 256);
  v16 = *(v0 + 248);
  v17 = *(v0 + 240);
  v18 = *(v0 + 216);
  v19 = *(v0 + 208);
  v20 = *(v0 + 200);
  v21 = *(v0 + 448);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1000350E0()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v4 = *v1;
  *(*v1 + 480) = v0;

  v5 = *(v2 + 464);
  v6 = *(v2 + 456);

  if (v0)
  {
    v7 = sub_100035230;
  }

  else
  {
    v7 = sub_100038890;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100035230()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 400);
  v3 = *(v0 + 408);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 416);
  v5 = *(v0 + 392);
  v6 = *(v0 + 376);
  v7 = *(v0 + 352);
  v9 = *(v0 + 320);
  v8 = *(v0 + 328);
  v10 = *(v0 + 312);
  v12 = *(v0 + 280);
  v11 = *(v0 + 288);
  v13 = *(v0 + 256);
  v16 = *(v0 + 248);
  v17 = *(v0 + 240);
  v18 = *(v0 + 216);
  v19 = *(v0 + 208);
  v20 = *(v0 + 200);
  v21 = *(v0 + 480);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100035380()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v4 = *v1;
  *(*v1 + 512) = v0;

  v5 = *(v2 + 496);
  v6 = *(v2 + 488);

  if (v0)
  {
    v7 = sub_1000354D0;
  }

  else
  {
    v7 = sub_100038890;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000354D0()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 400);
  v3 = *(v0 + 408);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 416);
  v5 = *(v0 + 392);
  v6 = *(v0 + 376);
  v7 = *(v0 + 352);
  v9 = *(v0 + 320);
  v8 = *(v0 + 328);
  v10 = *(v0 + 312);
  v12 = *(v0 + 280);
  v11 = *(v0 + 288);
  v13 = *(v0 + 256);
  v16 = *(v0 + 248);
  v17 = *(v0 + 240);
  v18 = *(v0 + 216);
  v19 = *(v0 + 208);
  v20 = *(v0 + 200);
  v21 = *(v0 + 512);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100035620(char a1)
{
  v2 = *(*v1 + 544);
  v4 = *v1;
  *(*v1 + 153) = a1;

  return _swift_task_switch(sub_100035720, 0, 0);
}

uint64_t sub_100035720()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v3 = *(v0 + 520);
  v4 = *(v0 + 424);
  v29 = *(v0 + 416);
  v5 = *(v0 + 400);
  v6 = *(v0 + 408);
  v7 = *(v0 + 344);
  v8 = *(v0 + 352);
  v10 = *(v0 + 328);
  v9 = *(v0 + 336);
  v11 = *(v0 + 296);
  v12 = *(v0 + 160);
  *v8 = *(v0 + 153);
  (*(v7 + 104))(v8, enum case for LaunchAngelXPCResponse.ResponseType.installSheetConfirmation(_:), v9);
  LaunchAngelXPCResponse.init(responseType:)();

  v3(v10, v11);
  (*(v6 + 8))(v29, v5);
  v13 = *(v0 + 416);
  v14 = *(v0 + 392);
  v15 = *(v0 + 376);
  v16 = *(v0 + 352);
  v18 = *(v0 + 320);
  v17 = *(v0 + 328);
  v19 = *(v0 + 312);
  v21 = *(v0 + 280);
  v20 = *(v0 + 288);
  v22 = *(v0 + 256);
  v25 = *(v0 + 248);
  v26 = *(v0 + 240);
  v27 = *(v0 + 216);
  v28 = *(v0 + 208);
  v30 = *(v0 + 200);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1000358D4(uint64_t a1)
{
  v2 = *(*v1 + 576);
  v4 = *v1;
  *(*v1 + 584) = a1;

  return _swift_task_switch(sub_1000359D4, 0, 0);
}

uint64_t sub_1000359D4()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[53];
  v29 = v0[52];
  v5 = v0[50];
  v6 = v0[51];
  v7 = v0[43];
  v8 = v0[44];
  v9 = v0[42];
  v10 = v0[36];
  v11 = v0[33];
  v12 = v0[20];
  *v8 = v0[73];
  (*(v7 + 104))(v8, enum case for LaunchAngelXPCResponse.ResponseType.oauthAuthorization(_:), v9);
  LaunchAngelXPCResponse.init(responseType:)();

  v2(v10, v11);
  (*(v6 + 8))(v29, v5);
  v13 = v0[52];
  v14 = v0[49];
  v15 = v0[47];
  v16 = v0[44];
  v18 = v0[40];
  v17 = v0[41];
  v19 = v0[39];
  v21 = v0[35];
  v20 = v0[36];
  v22 = v0[32];
  v25 = v0[31];
  v26 = v0[30];
  v27 = v0[27];
  v28 = v0[26];
  v30 = v0[25];

  v23 = v0[1];

  return v23();
}

uint64_t sub_100035B8C()
{
  v1 = *(*v0 + 616);
  v3 = *v0;

  return _swift_task_switch(sub_100035C88, 0, 0);
}

uint64_t sub_100035C88()
{
  v1 = v0[75];
  v2 = v0[74];
  v3 = v0[53];
  v24 = v0[76];
  v26 = v0[52];
  v4 = v0[50];
  v5 = v0[51];
  v6 = v0[32];
  v7 = v0[28];
  v8 = v0[20];
  (*(v0[43] + 104))(v0[44], enum case for LaunchAngelXPCResponse.ResponseType.ignored(_:), v0[42]);
  LaunchAngelXPCResponse.init(responseType:)();

  v2(v6, v7);
  (*(v5 + 8))(v26, v4);
  v9 = v0[52];
  v10 = v0[49];
  v11 = v0[47];
  v12 = v0[44];
  v14 = v0[40];
  v13 = v0[41];
  v15 = v0[39];
  v17 = v0[35];
  v16 = v0[36];
  v18 = v0[32];
  v21 = v0[31];
  v22 = v0[30];
  v23 = v0[27];
  v25 = v0[26];
  v27 = v0[25];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100035E38(char a1)
{
  v2 = *(*v1 + 648);
  v4 = *v1;
  *(*v1 + 154) = a1;

  return _swift_task_switch(sub_100035F38, 0, 0);
}

uint64_t sub_100035F38()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);
  v4 = *(v0 + 424);
  v29 = *(v0 + 416);
  v5 = *(v0 + 400);
  v6 = *(v0 + 408);
  v7 = *(v0 + 344);
  v8 = *(v0 + 352);
  v9 = *(v0 + 336);
  v10 = *(v0 + 216);
  v11 = *(v0 + 184);
  v12 = *(v0 + 160);
  *v8 = *(v0 + 154);
  (*(v7 + 104))(v8, enum case for LaunchAngelXPCResponse.ResponseType.confirmationSheet(_:), v9);
  LaunchAngelXPCResponse.init(responseType:)();

  v3(v10, v11);
  (*(v6 + 8))(v29, v5);
  v13 = *(v0 + 416);
  v14 = *(v0 + 392);
  v15 = *(v0 + 376);
  v16 = *(v0 + 352);
  v18 = *(v0 + 320);
  v17 = *(v0 + 328);
  v19 = *(v0 + 312);
  v21 = *(v0 + 280);
  v20 = *(v0 + 288);
  v22 = *(v0 + 256);
  v25 = *(v0 + 248);
  v26 = *(v0 + 240);
  v27 = *(v0 + 216);
  v28 = *(v0 + 208);
  v30 = *(v0 + 200);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1000361BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = v16;
  *(v8 + 120) = v17;
  *(v8 + 96) = v15;
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 224) = a6;
  *(v8 + 64) = a4;
  *(v8 + 72) = a5;
  *(v8 + 56) = a1;
  v9 = type metadata accessor for Logger();
  *(v8 + 128) = v9;
  v10 = *(v9 - 8);
  *(v8 + 136) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  v12 = *(*(sub_1000047BC(&qword_100089AC0, &qword_100066B60) - 8) + 64) + 15;
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();

  return _swift_task_switch(sub_100036318, 0, 0);
}

uint64_t sub_100036318()
{
  v1 = v0;
  v2 = v0[21];
  v3 = v0[16];
  v4 = v0[17];
  v32 = v3;
  v33 = v0[20];
  v5 = v0[13];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[8];
  v9 = *(v1 + 11);
  v30 = v9;
  v31 = *(v1 + 7);
  v10 = *(v1 + 224);
  (*(v4 + 56))(v2, 1, 1);
  v11 = swift_task_alloc();
  v1[22] = v11;
  *(v11 + 16) = v7;
  *(v11 + 24) = v30;
  *(v11 + 40) = v5;
  *(v11 + 48) = v8;
  *(v11 + 56) = v6;
  *(v11 + 64) = v10;
  *(v11 + 72) = v31;
  type metadata accessor for LogActivity();
  v12 = swift_allocObject();
  v1[23] = v12;
  v13 = sub_100029C08(v8, v10, &_mh_execute_header);
  v1[5] = 0;
  v1[6] = 0;
  os_activity_scope_enter(v13, (v1 + 5));
  swift_unknownObjectRelease();
  *(v12 + 16) = *(v1 + 5);
  type metadata accessor for Transaction();
  swift_allocObject();
  v14 = sub_10003785C();
  v1[24] = v14;
  sub_100010668(v2, v33, &qword_100089AC0, &qword_100066B60);
  v15 = 0;
  if ((*(v4 + 48))(v33, 1, v32) != 1)
  {
    v16 = v1[19];
    v18 = v1[17];
    v17 = v1[18];
    v19 = v1[16];
    v20 = v1[8];
    v34 = v1[9];
    v21 = *(v1 + 224);
    (*(v18 + 32))(v16, v1[20], v19);
    (*(v18 + 16))(v17, v16, v19);
    v22 = type metadata accessor for SignpostInterval();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    v15 = sub_100004D68(v20, v34, v21, v17);
    (*(v18 + 8))(v16, v19);
  }

  v1[25] = v15;
  if (qword_100088428 != -1)
  {
    swift_once();
  }

  v1[2] = v12;
  v1[3] = v14;
  v1[4] = v15;
  v25 = swift_task_alloc();
  v1[26] = v25;
  *(v25 + 16) = &unk_100066B70;
  *(v25 + 24) = v11;
  v26 = async function pointer to TaskLocal.withValue<A>(_:operation:isolation:file:line:)[1];

  v27 = swift_task_alloc();
  v1[27] = v27;
  *v27 = v1;
  v27[1] = sub_1000366C0;
  v28 = v1[7];

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v28, v1 + 2, &unk_100066B80, v25, 0, 0, 0xD000000000000037, 0x8000000100069D60);
}

uint64_t sub_1000366C0()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v15 = *v1;

  if (v0)
  {
    v5 = v2[25];
    v4 = v2[26];
    v8 = v2 + 23;
    v6 = v2[23];
    v7 = v8[1];

    v9 = sub_100036960;
  }

  else
  {
    v11 = v2[25];
    v10 = v2[26];
    v12 = v2[23];
    v13 = v2[24];

    v9 = sub_100036860;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100036860()
{
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[20];
  v5 = v0[21];
  v8 = v0[18];
  v7 = v0[19];

  sub_100011C14(v5, &qword_100089AC0, &qword_100066B60);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100036960()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
}

uint64_t sub_1000369F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 96) = v15;
  *(v8 + 104) = v16;
  *(v8 + 168) = a8;
  *(v8 + 80) = a6;
  *(v8 + 88) = a7;
  *(v8 + 64) = a4;
  *(v8 + 72) = a5;
  *(v8 + 48) = a2;
  *(v8 + 56) = a3;
  v9 = sub_1000047BC(&qword_100089AC8, &qword_100066B88);
  *(v8 + 112) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 120) = swift_task_alloc();
  v11 = sub_1000047BC(&qword_100089AD0, &unk_100066B90);
  *(v8 + 128) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();

  return _swift_task_switch(sub_100036AF4, 0, 0);
}

uint64_t sub_100036AF4()
{
  v60 = v0;
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 56);
    v5 = *(v2 + 56);
    v4 = v2 + 56;
    v3 = v5;
    v6 = -1;
    v7 = -1 << *(*(v0 + 56) + 32);
    if (-v7 < 64)
    {
      v6 = ~(-1 << -v7);
    }

    v8 = v6 & v3;
    v9 = (63 - v7) >> 6;
    v10 = v1;

    v11 = 0;
    while (v8)
    {
LABEL_5:
      v8 &= v8 - 1;
      v12 = String._bridgeToObjectiveC()();
      v13 = [v10 hasEntitlement:v12];

      if ((v13 & 1) == 0)
      {
        v57 = *(v0 + 56);
        sub_100038068();
        swift_allocError();
        swift_willThrow();

        goto LABEL_15;
      }
    }

    while (1)
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v14 >= v9)
      {
        break;
      }

      v8 = *(v4 + 8 * v14);
      ++v11;
      if (v8)
      {
        v11 = v14;
        goto LABEL_5;
      }
    }

    v15 = *(v0 + 56);
    v16 = *(v0 + 64);

    v58 = (v16 + *v16);
    v17 = v16[1];
    v18 = swift_task_alloc();
    *(v0 + 152) = v18;
    *v18 = v0;
    v18[1] = sub_100037094;
    v19 = *(v0 + 136);
    v20 = *(v0 + 72);

    return v58(v19);
  }

  else
  {
    sub_100038068();
    swift_allocError();
    swift_willThrow();
LABEL_15:
    if (qword_100088450 != -1)
    {
LABEL_23:
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000105E8(v22, qword_10008C508);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v26 = *(v0 + 80);
      v25 = *(v0 + 88);
      v27 = *(v0 + 168);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v59 = v30;
      *v28 = 136315394;
      v31 = StaticString.description.getter();
      v33 = sub_10000F78C(v31, v32, &v59);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2114;
      swift_errorRetain();
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v34;
      *v29 = v34;
      _os_log_impl(&_mh_execute_header, v23, v24, "Error in %s: %{public}@", v28, 0x16u);
      sub_100011C14(v29, &qword_100088FD0, &qword_1000673F0);

      sub_10001059C(v30);
    }

    v35 = *(v0 + 144);
    v36 = *(v0 + 128);
    swift_getErrorValue();
    v38 = *(v0 + 16);
    v37 = *(v0 + 24);
    v39 = *(v0 + 32);
    v40 = Error.localizedDescription.getter();
    v42 = v41;

    *v35 = v40;
    v35[1] = v42;
    swift_storeEnumTagMultiPayload();
    v43 = *(v0 + 144);
    v45 = *(v0 + 112);
    v44 = *(v0 + 120);
    v46 = type metadata accessor for PropertyListEncoder();
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_100010668(v43, v44, &qword_100089AD0, &unk_100066B90);
    sub_100012174(&qword_100089AE0, &qword_100089AC8, &qword_100066B88);
    v49 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v51 = v50;
    sub_100011C14(*(v0 + 120), &qword_100089AC8, &qword_100066B88);

    v53 = *(v0 + 136);
    v52 = *(v0 + 144);
    v54 = *(v0 + 120);
    v55 = *(v0 + 104);
    (*(v0 + 96))(v49, v51, 0);
    sub_100015A54(v49, v51);
    sub_100011C14(v52, &qword_100089AD0, &unk_100066B90);

    v56 = *(v0 + 8);

    return v56();
  }
}

uint64_t sub_100037094()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_100037390;
  }

  else
  {
    v3 = sub_1000371A8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000371A8()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);

  swift_storeEnumTagMultiPayload();
  sub_1000380BC(v1, v2);
  v4 = *(v0 + 160);
  v5 = *(v0 + 144);
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  v8 = type metadata accessor for PropertyListEncoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100010668(v5, v6, &qword_100089AD0, &unk_100066B90);
  sub_100012174(&qword_100089AE0, &qword_100089AC8, &qword_100066B88);
  v12 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v13 = v4;
  v14 = *(v0 + 120);
  if (v13)
  {

    sub_100011C14(v14, &qword_100089AC8, &qword_100066B88);
    v12 = 0;
    v15 = 0xC000000000000000;
  }

  else
  {
    v15 = v11;
    sub_100011C14(*(v0 + 120), &qword_100089AC8, &qword_100066B88);
  }

  v17 = *(v0 + 136);
  v16 = *(v0 + 144);
  v18 = *(v0 + 120);
  v19 = *(v0 + 104);
  (*(v0 + 96))(v12, v15, 0);
  sub_100015A54(v12, v15);
  sub_100011C14(v16, &qword_100089AD0, &unk_100066B90);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100037390()
{
  v39 = v0;

  v1 = *(v0 + 160);
  if (qword_100088450 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000105E8(v2, qword_10008C508);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 80);
    v5 = *(v0 + 88);
    v7 = *(v0 + 168);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v38 = v10;
    *v8 = 136315394;
    v11 = StaticString.description.getter();
    v13 = sub_10000F78C(v11, v12, &v38);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error in %s: %{public}@", v8, 0x16u);
    sub_100011C14(v9, &qword_100088FD0, &qword_1000673F0);

    sub_10001059C(v10);
  }

  v15 = *(v0 + 144);
  v16 = *(v0 + 128);
  swift_getErrorValue();
  v18 = *(v0 + 16);
  v17 = *(v0 + 24);
  v19 = *(v0 + 32);
  v20 = Error.localizedDescription.getter();
  v22 = v21;

  *v15 = v20;
  v15[1] = v22;
  swift_storeEnumTagMultiPayload();
  v23 = *(v0 + 144);
  v25 = *(v0 + 112);
  v24 = *(v0 + 120);
  v26 = type metadata accessor for PropertyListEncoder();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100010668(v23, v24, &qword_100089AD0, &unk_100066B90);
  sub_100012174(&qword_100089AE0, &qword_100089AC8, &qword_100066B88);
  v29 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v31 = v30;
  sub_100011C14(*(v0 + 120), &qword_100089AC8, &qword_100066B88);

  v33 = *(v0 + 136);
  v32 = *(v0 + 144);
  v34 = *(v0 + 120);
  v35 = *(v0 + 104);
  (*(v0 + 96))(v29, v31, 0);
  sub_100015A54(v29, v31);
  sub_100011C14(v32, &qword_100089AD0, &unk_100066B90);

  v36 = *(v0 + 8);

  return v36();
}

id sub_10003776C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LaunchAngelService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000377C4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000377FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v5 + 16))(v5, isa, a3);
}

uint64_t sub_10003785C()
{
  v1 = v0;
  StaticString.description.getter();
  String.utf8CString.getter();
  v2 = os_transaction_create();

  if (v2)
  {

    *(v0 + 16) = v2;
    timestamp = os_transaction_get_timestamp();
    if (qword_100088440 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000105E8(v5, qword_10008C4D8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 33554946;
      *(v8 + 4) = timestamp;
      *(v8 + 6) = 2080;
      v10 = StaticString.description.getter();
      v12 = sub_10000F78C(v10, v11, &v13);

      *(v8 + 8) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "[TXN%hx] 🐏 Beginning transaction (%s)", v8, 0x10u);
      sub_10001059C(v9);
    }

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100037A20(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  v15 = sub_10004E044(&off_10007E4E8);
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v18 = objc_opt_self();
  sub_100015A00(a1, a2);
  v19 = [v18 currentContext];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 remoteToken];
  }

  else
  {
    v21 = 0;
  }

  sub_100010668(v14, v12, &unk_100088F10, &qword_100065D60);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = "handleXPCRequest";
  *(v22 + 40) = 16;
  *(v22 + 48) = 2;
  *(v22 + 56) = v21;
  *(v22 + 64) = v15;
  *(v22 + 72) = &unk_100066B48;
  *(v22 + 80) = v17;
  *(v22 + 88) = a3;
  *(v22 + 96) = a4;
  v23 = v21;

  sub_100007654(0, 0, v12, &unk_100066B58, v22);

  return sub_100011C14(v14, &unk_100088F10, &qword_100065D60);
}

uint64_t sub_100037C88()
{
  sub_100015A54(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100037CC0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000121F4;

  return sub_100033260(a1, v5, v4);
}

uint64_t sub_100037D6C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  v4 = *(v0 + 96);

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100037DC4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 64);
  v15 = *(v1 + 56);
  v14 = *(v1 + 72);
  v10 = *(v1 + 88);
  v9 = *(v1 + 96);
  v11 = *(v1 + 48);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10001020C;

  return sub_1000361BC(a1, v4, v5, v6, v7, v11, v15, v8);
}

uint64_t sub_100037EC8(uint64_t a1)
{
  v4 = *(v1 + 24);
  v14 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = *(v1 + 72);
  v9 = *(v1 + 80);
  v11 = *(v1 + 64);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10001020C;

  return sub_1000369F4(a1, v14, v4, v5, v6, v7, v8, v11);
}

uint64_t sub_100037FBC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000121F4;

  return sub_100031DEC(a1, v5);
}

unint64_t sub_100038068()
{
  result = qword_100089AD8;
  if (!qword_100089AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089AD8);
  }

  return result;
}

uint64_t sub_1000380BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000047BC(&qword_100089AD0, &unk_100066B90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100038148(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000381B4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1000382CC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_1000384A0()
{
  result = qword_100089B80;
  if (!qword_100089B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089B80);
  }

  return result;
}

uint64_t sub_100038550(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1000385E0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for LaunchAngelEntitlements(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for LaunchAngelEntitlements(_WORD *result, int a2, int a3)
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

void sub_100038894()
{
  v1 = sub_1000047BC(&unk_100089E30, &qword_100067230);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v218 = &v202 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v216 = &v202 - v6;
  v7 = __chkstk_darwin(v5);
  v206 = &v202 - v8;
  v9 = __chkstk_darwin(v7);
  v220 = &v202 - v10;
  v11 = __chkstk_darwin(v9);
  v215 = &v202 - v12;
  __chkstk_darwin(v11);
  v205 = &v202 - v13;
  v208 = type metadata accessor for MultiBulletPointView(0);
  v14 = *(*(v208 - 1) + 64);
  v15 = __chkstk_darwin(v208);
  v210 = (&v202 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v18 = (&v202 - v17);
  isa = type metadata accessor for AttributedString.MarkdownParsingOptions.FailurePolicy();
  v213 = *(isa - 1);
  v19 = *(v213 + 64);
  __chkstk_darwin(isa);
  v214 = &v202 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AttributedString.MarkdownParsingOptions.InterpretedSyntax();
  v211 = *(v21 - 8);
  v212 = v21;
  v22 = *(v211 + 64);
  __chkstk_darwin(v21);
  v24 = &v202 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for AttributedString.MarkdownParsingOptions();
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v204 = &v202 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v209 = &v202 - v29;
  v30 = sub_1000047BC(&qword_1000893C0, &unk_1000663F0);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v203 = &v202 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v207 = &v202 - v34;
  v35 = type metadata accessor for InstallSheetContext();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  v39 = &v202 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for CombinedApprovalAndInstallSheetViewController();
  v224.receiver = v0;
  v224.super_class = v40;
  objc_msgSendSuper2(&v224, "viewDidLoad");
  [v0 setModalInPresentation:1];
  [v0 setDefinesPresentationContext:1];
  v217 = v0[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_isIPad];
  if (v217)
  {
    v41 = 88.0;
  }

  else
  {
    v41 = 24.0;
  }

  v42 = [v0 contentView];
  [v42 setDirectionalLayoutMargins:{0.0, v41, 0.0, v41}];

  v43 = [v0 headerView];
  v44 = [v43 bottomAnchor];

  v45 = [v0 contentView];
  v46 = [v45 topAnchor];

  v47 = [v44 constraintEqualToAnchor:v46 constant:-4.0];
  [v47 setActive:1];

  v48 = &v0[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_localizedContent];
  (*(v36 + 16))(v39, &v0[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_localizedContent], v35);
  v49 = objc_allocWithZone(type metadata accessor for MiniProductPageView(0));
  v50 = v0;
  v51 = sub_100040764(v39, v50, v49);

  v52 = v51;
  [v52 setTranslatesAutoresizingMaskIntoConstraints:0];
  v53 = [v50 contentView];
  v223 = v52;
  [v53 addSubview:v52];

  v221 = type metadata accessor for LocalizedCombinedApprovalAndInstallContent();
  v222 = v48;
  v54 = &v48[v221[8]];
  v55 = *v54;
  if ((v54[16] & 1) == 0)
  {
    v89 = *(v54 + 1);
    type metadata accessor for NonHighlightableTextView();
    v90 = objc_allocWithZone(swift_getObjCClassFromMetadata());

    v91 = [v90 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v91 setEditable:0];
    sub_10001E778(0, &qword_100089E50, NSAttributedString_ptr);
    v92 = type metadata accessor for URL();
    (*(*(v92 - 8) + 56))(v207, 1, 1, v92);
    (*(v211 + 104))(v24, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:), v212);
    (*(v213 + 104))(v214, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:), isa);
    AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:)();
    v93 = NSAttributedString.init(markdown:options:baseURL:)();
    v94 = v223;
    [v91 setAttributedText:v93];

    [v91 setTextAlignment:1];
    v95 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    [v91 setFont:v95];

    [v91 setScrollEnabled:0];
    v96 = v91;
    [v96 setTranslatesAutoresizingMaskIntoConstraints:0];
    v97 = [objc_opt_self() labelColor];
    [v96 setTextColor:v97];

    [v96 setDelegate:v50];
    v98 = [v50 contentView];
    [v98 insertSubview:v96 belowSubview:v94];

    v99 = [v50 contentView];
    v100 = [v99 leadingAnchor];

    v101 = [v96 leadingAnchor];
    v102 = [v100 constraintEqualToAnchor:v101 constant:-v41];

    [v102 setActive:1];
    v103 = [v50 contentView];
    v104 = [v103 trailingAnchor];

    v105 = [v96 trailingAnchor];
    v106 = [v104 constraintEqualToAnchor:v105 constant:v41];

    [v106 setActive:1];
    v107 = [v50 contentView];
    v108 = [v107 topAnchor];

    v109 = [v96 topAnchor];
    v110 = [v108 constraintEqualToAnchor:v109];

    [v110 setActive:1];
    v111 = [v96 bottomAnchor];

    v112 = [v94 topAnchor];
    v113 = [v111 constraintEqualToAnchor:v112 constant:-24.0];

    [v113 setActive:1];
    v114 = [v94 bottomAnchor];
    v115 = [v50 contentView];
    v116 = [v115 bottomAnchor];

    v117 = [v114 constraintEqualToAnchor:v116];
    [v117 setActive:1];

    goto LABEL_13;
  }

  v209 = v24;
  v56 = isa;
  *(v18 + v208[5]) = swift_getKeyPath();
  sub_1000047BC(&qword_100089E40, &qword_100065D50);
  swift_storeEnumTagMultiPayload();
  *v18 = v55;
  sub_100041ED0(v18, v210, type metadata accessor for MultiBulletPointView);
  v57 = objc_allocWithZone(sub_1000047BC(&qword_100089E48, &qword_1000672C8));

  v58 = UIHostingController.init(rootView:)();
  [v50 addChildViewController:v58];
  v59 = [v58 view];
  v210 = v18;
  if (!v59)
  {
    __break(1u);
    goto LABEL_35;
  }

  v60 = v59;
  [v59 setTranslatesAutoresizingMaskIntoConstraints:0];

  v61 = [v50 contentView];
  v62 = [v58 view];

  if (!v62)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v63 = v56;
  [v61 addSubview:v62];

  [v58 didMoveToParentViewController:v50];
  v64 = [v50 contentView];
  v65 = [v64 leadingAnchor];

  v66 = [v58 view];
  if (!v66)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v67 = v58;
  v68 = [v66 leadingAnchor];

  v69 = [v65 constraintEqualToAnchor:v68 constant:-(v41 + 12.0)];
  [v69 setActive:1];

  v70 = [v50 contentView];
  v71 = [v70 trailingAnchor];

  v72 = [v67 view];
  if (!v72)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v73 = [v72 trailingAnchor];

  v74 = [v71 constraintEqualToAnchor:v73 constant:v41];
  [v74 setActive:1];

  v75 = [v50 contentView];
  v76 = [v75 topAnchor];

  v77 = [v67 view];
  if (!v77)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v78 = [v77 topAnchor];

  v79 = [v76 constraintEqualToAnchor:v78 constant:-24.0];
  [v79 setActive:1];

  v80 = [v67 view];
  v208 = v67;

  if (!v80)
  {
LABEL_39:
    __break(1u);
    return;
  }

  v81 = [v80 bottomAnchor];

  v82 = [v223 topAnchor];
  v83 = [v81 constraintEqualToAnchor:v82 constant:-24.0];

  [v83 setActive:1];
  type metadata accessor for NonHighlightableTextView();
  v84 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v84 setEditable:0];
  sub_10001E778(0, &qword_100089E50, NSAttributedString_ptr);
  v85 = &v222[v221[13]];
  v86 = *v85;
  v87 = *(v85 + 1);
  v88 = type metadata accessor for URL();
  (*(*(v88 - 8) + 56))(v203, 1, 1, v88);
  (*(v211 + 104))(v209, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:), v212);
  (*(v213 + 104))(v214, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:), v63);

  AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:)();
  v118 = NSAttributedString.init(markdown:options:baseURL:)();
  v119 = v210;
  [v84 setAttributedText:v118];

  [v84 setTextAlignment:1];
  v120 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v84 setFont:v120];

  [v84 setScrollEnabled:0];
  v121 = v84;
  [v121 setTranslatesAutoresizingMaskIntoConstraints:0];
  v122 = [objc_opt_self() labelColor];
  [v121 setTextColor:v122];

  [v121 setDelegate:v50];
  v123 = [v50 contentView];
  [v123 addSubview:v121];

  v124 = [v50 contentView];
  v125 = [v124 leadingAnchor];

  v126 = [v121 leadingAnchor];
  v127 = [v125 constraintEqualToAnchor:v126 constant:-v41];

  [v127 setActive:1];
  v128 = [v50 contentView];
  v129 = [v128 trailingAnchor];

  v130 = [v121 trailingAnchor];
  v131 = [v129 constraintEqualToAnchor:v130 constant:v41];

  [v131 setActive:1];
  v132 = [v223 bottomAnchor];
  v133 = [v121 topAnchor];
  v134 = [v132 constraintEqualToAnchor:v133 constant:-12.0];

  [v134 setActive:1];
  v135 = [v50 contentView];
  v136 = [v135 bottomAnchor];

  v137 = [v121 bottomAnchor];
  v138 = [v136 constraintEqualToAnchor:v137];

  [v138 setActive:1];
  sub_100041F38(v119, type metadata accessor for MultiBulletPointView);
LABEL_13:
  sub_10001E778(0, &qword_100089E58, UIColor_ptr);
  isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.88, 0.88, 0.88, 1.0).super.isa;
  v139 = *&v50[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_allowButton];
  [v139 setEnabled:0];
  v141 = v221;
  v140 = v222;
  v142 = &v222[v221[9]];
  v143 = *v142;
  v144 = *(v142 + 1);

  v145 = String._bridgeToObjectiveC()();

  [v139 setTitle:v145 forState:0];

  v146 = v215;
  v147 = v216;
  if (v140[v141[17]] == 1)
  {
    v148 = v205;
    UIButton.configuration.getter();
    v149 = type metadata accessor for UIButton.Configuration();
    v150 = *(*(v149 - 8) + 48);
    if (v150(v148, 1, v149))
    {
      sub_1000419A4(v148, v220);
      UIButton.configuration.setter();
      sub_100011C14(v148, &unk_100089E30, &qword_100067230);
    }

    else
    {
      v152 = [objc_opt_self() systemBlueColor];
      UIButton.Configuration.baseForegroundColor.setter();
      UIButton.configuration.setter();
    }

    UIButton.configuration.getter();
    if (v150(v146, 1, v149))
    {
      sub_1000419A4(v146, v220);
      UIButton.configuration.setter();
      sub_100011C14(v146, &unk_100089E30, &qword_100067230);
    }

    else
    {
      v155 = [objc_opt_self() clearColor];
      UIButton.Configuration.baseBackgroundColor.setter();
      UIButton.configuration.setter();
    }
  }

  else
  {
    v151 = v206;
    UIButton.configuration.getter();
    v149 = type metadata accessor for UIButton.Configuration();
    if ((*(*(v149 - 8) + 48))(v151, 1, v149))
    {
      sub_1000419A4(v151, v220);
      UIButton.configuration.setter();
      sub_100011C14(v151, &unk_100089E30, &qword_100067230);
    }

    else
    {
      v153 = [objc_opt_self() whiteColor];
      UIButton.Configuration.baseForegroundColor.setter();
      UIButton.configuration.setter();
    }

    v154 = [objc_opt_self() systemBlueColor];
    [v139 setTintColor:v154];
  }

  [v139 addTarget:v50 action:"allowPressed" forControlEvents:64];
  v156 = [v50 buttonTray];
  [v156 addButton:v139];

  v157 = *&v50[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_cancelButton];
  v158 = &v222[v221[10]];
  v159 = *v158;
  v160 = *(v158 + 1);

  v161 = String._bridgeToObjectiveC()();

  [v157 setTitle:v161 forState:0];

  UIButton.configuration.getter();
  type metadata accessor for UIButton.Configuration();
  v162 = *(*(v149 - 8) + 48);
  if (v162(v147, 1, v149))
  {
    sub_1000419A4(v147, v220);
    UIButton.configuration.setter();
    sub_100011C14(v147, &unk_100089E30, &qword_100067230);
  }

  else
  {
    v163 = [objc_opt_self() systemBlueColor];
    UIButton.Configuration.baseForegroundColor.setter();
    UIButton.configuration.setter();
  }

  v164 = v218;
  UIButton.configuration.getter();
  if (v162(v164, 1, v149))
  {
    sub_1000419A4(v164, v220);
    UIButton.configuration.setter();
    sub_100011C14(v164, &unk_100089E30, &qword_100067230);
  }

  else
  {
    v165 = [objc_opt_self() clearColor];
    UIButton.Configuration.baseBackgroundColor.setter();
    UIButton.configuration.setter();
  }

  [v157 addTarget:v50 action:"cancelPressed" forControlEvents:64];
  v166 = [v50 buttonTray];
  [v166 addButton:v157];

  v167 = [v139 heightAnchor];
  v168 = [v157 heightAnchor];
  v169 = [v167 constraintEqualToAnchor:v168];

  [v169 setActive:1];
  v170 = [v50 contentView];
  v171 = [v170 leadingAnchor];

  v172 = v223;
  v173 = [v223 leadingAnchor];
  if (v217)
  {
    v174 = [v171 constraintGreaterThanOrEqualToAnchor:v173 constant:-88.0];

    LODWORD(v175) = 1140457472;
    v222 = v174;
    [v174 setPriority:v175];
    [v174 setActive:1];
    v176 = [v50 contentView];
    v177 = [v176 centerXAnchor];

    v178 = [v172 centerXAnchor];
    v179 = [v177 constraintEqualToAnchor:v178];

    [v179 setActive:1];
    v180 = [v172 widthAnchor];

    v181 = [v180 constraintLessThanOrEqualToConstant:360.0];
    [v181 setActive:1];

    v182 = [v50 buttonTray];
    v183 = [v182 widthAnchor];

    v184 = [v183 constraintLessThanOrEqualToConstant:360.0];
    [v184 setActive:1];

    v185 = [v157 bottomAnchor];
    v186 = [v50 buttonTray];
    v187 = [v186 bottomAnchor];

    v188 = [v185 constraintEqualToAnchor:v187 constant:-24.0];
    [v188 setActive:1];

    v189 = v172;
  }

  else
  {
    v190 = [v171 constraintEqualToAnchor:v173 constant:-24.0];

    [v190 setActive:1];
    v191 = [v50 contentView];
    v192 = [v191 trailingAnchor];

    v189 = v172;
    v193 = [v172 trailingAnchor];

    v194 = [v192 constraintEqualToAnchor:v193 constant:24.0];
    [v194 setActive:1];

    v195 = [v50 buttonTray];
    v196 = [v195 leadingAnchor];

    v197 = [v139 leadingAnchor];
    v198 = [v196 constraintEqualToAnchor:v197 constant:-24.0];

    [v198 setActive:1];
    v199 = [v50 buttonTray];
    v200 = [v199 trailingAnchor];

    v201 = [v139 trailingAnchor];
    v188 = [v200 constraintEqualToAnchor:v201 constant:24.0];

    [v188 setActive:1];
  }
}

uint64_t sub_10003A798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_10003A830, v6, v5);
}

uint64_t sub_10003A830()
{
  v1 = *(v0 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_10003A928;

    return sub_100021094();
  }

  else
  {
    v5 = *(v0 + 32);

    **(v0 + 16) = *(v0 + 56) == 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_10003A928()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 48);
  v5 = *(v1 + 40);

  return _swift_task_switch(sub_100041FC8, v5, v4);
}

uint64_t sub_10003AD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10003ADF8, v6, v5);
}

uint64_t sub_10003ADF8()
{
  v2 = v0[2];
  v1 = v0[3];

  [*(v2 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_allowButton) setEnabled:1];
  v3 = v0[1];

  return v3();
}

uint64_t sub_10003AEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_10003AF40, v6, v5);
}

uint64_t sub_10003AF40()
{
  v1 = *(v0 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_10003A928;

    return sub_100020C38();
  }

  else
  {
    v5 = *(v0 + 32);

    **(v0 + 16) = *(v0 + 56) == 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

void sub_10003B06C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, char *, uint64_t, void *))
{
  v8 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v16 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  type metadata accessor for MainActor();
  v13 = a1;
  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v13;
  a5(0, 0, v11, a4, v15);
}

uint64_t sub_10003B1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_10003B244, v7, v6);
}

uint64_t sub_10003B244()
{
  v1 = *(v0 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = sub_10003B344;
    v4 = *(v0 + 32);

    return sub_1000206A8(v4);
  }

  else
  {
    v6 = *(v0 + 40);

    **(v0 + 16) = *(v0 + 64) == 0;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_10003B344()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return _swift_task_switch(sub_10003B488, v5, v4);
}

uint64_t sub_10003B488()
{
  v1 = *(v0 + 40);

  **(v0 + 16) = *(v0 + 64) == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10003B5FC()
{
  v1 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  v2 = *(*(v1 - 8) + 64);
  result = __chkstk_darwin(v1 - 8);
  v5 = &v10 - v4;
  if ((v0[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_allowButtonPressed] & 1) == 0)
  {
    v0[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_allowButtonPressed] = 1;
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    type metadata accessor for MainActor();
    v7 = v0;
    v8 = static MainActor.shared.getter();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = &protocol witness table for MainActor;
    v9[4] = v7;
    sub_100007654(0, 0, v5, &unk_100067228, v9);
  }

  return result;
}

uint64_t sub_10003B738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(sub_1000047BC(&unk_100089E30, &qword_100067230) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v4[4] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[6] = v7;
  v4[7] = v6;

  return _swift_task_switch(sub_10003B814, v7, v6);
}

uint64_t sub_10003B814()
{
  v1 = v0[2];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_10003BD2C;

    return sub_10001EED4(1);
  }

  else
  {
    v5 = v0[5];

    v6 = v0[4];
    v7 = v0[2];
    v8 = *(v7 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_cancelButton);
    v9 = v7 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_localizedContent;
    v10 = type metadata accessor for LocalizedCombinedApprovalAndInstallContent();
    v11 = (v9 + *(v10 + 44));
    v12 = *v11;
    v13 = v11[1];

    v14 = String._bridgeToObjectiveC()();

    [v8 setTitle:v14 forState:0];

    v15 = OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installProgressView;
    v16 = *(v7 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installProgressView);
    LODWORD(v10) = *(v9 + *(v10 + 68));
    v17 = objc_opt_self();
    v18 = &selRef_blueTheme;
    if (!v10)
    {
      v18 = &selRef_whiteTheme;
    }

    v19 = *v18;
    v20 = v16;
    v21 = [v17 v19];
    [v20 setOfferTheme:v21];

    [*(v7 + v15) setLockupSize:ASCLockupViewSizeSmallOfferButton];
    v22 = *(v7 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_allowButton);
    v23 = *(v7 + v15);
    [v22 frame];
    [v23 setLayoutMargins:{0.0, CGRectGetHeight(v43) * -0.5, 0.0, 0.0}];

    UIButton.configuration.getter();
    v24 = type metadata accessor for UIButton.Configuration();
    v25 = (*(*(v24 - 8) + 48))(v6, 1, v24);
    v26 = v0[4];
    if (v25)
    {
      sub_1000419A4(v0[4], v0[3]);
      UIButton.configuration.setter();
      sub_100011C14(v26, &unk_100089E30, &qword_100067230);
    }

    else
    {
      v27 = v0[4];
      UIButton.Configuration.title.setter();
      UIButton.configuration.setter();
    }

    v40 = v0[4];
    v41 = v0[3];
    v28 = v0[2];
    [v22 setTitle:0 forState:0];
    [*(v7 + v15) setTranslatesAutoresizingMaskIntoConstraints:0];
    [v22 addSubview:*(v7 + v15)];
    v29 = [*(v7 + v15) centerXAnchor];
    v30 = [v22 centerXAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];

    [v31 setActive:1];
    v32 = [*(v7 + v15) centerYAnchor];
    v33 = [v22 centerYAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];

    [v34 setActive:1];
    v35 = [*(v7 + v15) heightAnchor];
    [v22 frame];
    v36 = [v35 constraintEqualToConstant:CGRectGetHeight(v44)];

    [v36 setActive:1];
    v37 = [*(v7 + v15) widthAnchor];
    [v22 frame];
    v38 = [v37 constraintEqualToConstant:CGRectGetHeight(v45)];

    [v38 setActive:1];
    sub_10003CA80();

    v39 = v0[1];

    return v39();
  }
}

uint64_t sub_10003BD2C()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return _swift_task_switch(sub_10003BE70, v5, v4);
}

uint64_t sub_10003BE70()
{
  v1 = v0[5];

  v2 = v0[4];
  v3 = v0[2];
  v4 = *(v3 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_cancelButton);
  v5 = v3 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_localizedContent;
  v6 = type metadata accessor for LocalizedCombinedApprovalAndInstallContent();
  v7 = (v5 + *(v6 + 44));
  v8 = *v7;
  v9 = v7[1];

  v10 = String._bridgeToObjectiveC()();

  [v4 setTitle:v10 forState:0];

  v11 = OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installProgressView;
  v12 = *(v3 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installProgressView);
  LODWORD(v6) = *(v5 + *(v6 + 68));
  v13 = objc_opt_self();
  v14 = &selRef_blueTheme;
  if (!v6)
  {
    v14 = &selRef_whiteTheme;
  }

  v15 = *v14;
  v16 = v12;
  v17 = [v13 v15];
  [v16 setOfferTheme:v17];

  [*(v3 + v11) setLockupSize:ASCLockupViewSizeSmallOfferButton];
  v18 = *(v3 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_allowButton);
  v19 = *(v3 + v11);
  [v18 frame];
  [v19 setLayoutMargins:{0.0, CGRectGetHeight(v40) * -0.5, 0.0, 0.0}];

  UIButton.configuration.getter();
  v20 = type metadata accessor for UIButton.Configuration();
  v21 = (*(*(v20 - 8) + 48))(v2, 1, v20);
  v22 = v0[4];
  if (v21)
  {
    sub_1000419A4(v0[4], v0[3]);
    UIButton.configuration.setter();
    sub_100011C14(v22, &unk_100089E30, &qword_100067230);
  }

  else
  {
    v23 = v0[4];
    UIButton.Configuration.title.setter();
    UIButton.configuration.setter();
  }

  v37 = v0[4];
  v38 = v0[3];
  v24 = v0[2];
  [v18 setTitle:0 forState:0];
  [*(v3 + v11) setTranslatesAutoresizingMaskIntoConstraints:0];
  [v18 addSubview:*(v3 + v11)];
  v25 = [*(v3 + v11) centerXAnchor];
  v26 = [v18 centerXAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

  [v27 setActive:1];
  v28 = [*(v3 + v11) centerYAnchor];
  v29 = [v18 centerYAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  [v30 setActive:1];
  v31 = [*(v3 + v11) heightAnchor];
  [v18 frame];
  v32 = [v31 constraintEqualToConstant:CGRectGetHeight(v41)];

  [v32 setActive:1];
  v33 = [*(v3 + v11) widthAnchor];
  [v18 frame];
  v34 = [v33 constraintEqualToConstant:CGRectGetHeight(v42)];

  [v34 setActive:1];
  sub_10003CA80();

  v35 = v0[1];

  return v35();
}

uint64_t sub_10003C30C()
{
  v1 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  v2 = *(*(v1 - 8) + 64);
  result = __chkstk_darwin(v1 - 8);
  v5 = &v11 - v4;
  if (*&v0[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installingApp])
  {

    v6 = AppLibrary.App.id.getter();

    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    type metadata accessor for MainActor();
    v8 = v0;
    v9 = static MainActor.shared.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = &protocol witness table for MainActor;
    v10[4] = v8;
    v10[5] = v6;
    sub_100054600(0, 0, v5, &unk_100067218, v10);
  }

  return result;
}

uint64_t sub_10003C458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_10003C4F0, v7, v6);
}

uint64_t sub_10003C4F0()
{
  v1 = v0[2];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_10003C61C;

    return sub_100021534();
  }

  else
  {
    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = sub_10003C794;
    v6 = v0[3];

    return sub_10004C41C(v6);
  }
}

uint64_t sub_10003C61C()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *v0;

  swift_unknownObjectRelease();
  v5 = swift_task_alloc();
  *(v1 + 72) = v5;
  *v5 = v4;
  v5[1] = sub_10003C794;
  v6 = *(v1 + 24);

  return (sub_10004C41C)(v6);
}

uint64_t sub_10003C794()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 48);
  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_10003C934;
  }

  else
  {
    v7 = sub_10003C8D0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10003C8D0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10003C934()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

void sub_10003C9B4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}