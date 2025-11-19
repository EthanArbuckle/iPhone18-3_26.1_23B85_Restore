uint64_t sub_10041EDB0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  v3[157] = a1;
  v3[158] = a2;

  v4 = swift_task_alloc();
  v3[159] = v4;
  *v4 = v6;
  v4[1] = sub_10041EF08;

  return sub_1006600F0((v3 + 101));
}

uint64_t sub_10041EF08(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  v3[160] = a1;
  v3[161] = a2;

  v4 = swift_task_alloc();
  v3[162] = v4;
  *v4 = v6;
  v4[1] = sub_10041F07C;

  return sub_1006600F0((v3 + 110));
}

uint64_t sub_10041F07C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1304) = a1;
  *(v3 + 1312) = a2;

  return _swift_asyncLet_get(v3 + 16, v3 + 1128, sub_10041F184, v3 + 656);
}

uint64_t sub_10041F1A0()
{
  v6 = *(v0 + 1280);
  v7 = *(v0 + 1304);
  v5 = *(v0 + 1256);
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1136);
  type metadata accessor for SystemAlert();
  v3 = swift_allocObject();
  *(v0 + 1320) = v3;

  swift_defaultActor_initialize();
  *(v3 + 112) = v5;
  *(v3 + 128) = v6;
  *(v3 + 144) = v7;
  *(v3 + 160) = v1;
  *(v3 + 168) = v2;
  *(v3 + 176) = 0;

  return _swift_asyncLet_finish(v0 + 16, v0 + 1128, sub_10041F27C, v0 + 768);
}

uint64_t sub_10041F27C()
{
  sub_100428444(&qword_10077EC88, type metadata accessor for SystemAlert);
  swift_getObjectType();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10041F330, v1, v0);
}

uint64_t sub_10041F330()
{

  return _swift_task_switch(sub_10041F3C4, 0, 0);
}

uint64_t sub_10041F3C4()
{
  v1 = v0[165];
  v2 = v0[151];
  v3 = v0[149];
  v4 = v0[148];
  sub_1000032A8(v0[147], &unk_1007809F0);
  (*(v3 + 8))(v2, v4);
  sub_10000710C((v0 + 136));
  sub_10000710C((v0 + 131));

  v5 = v0[1];

  return v5(v1);
}

uint64_t sub_10041F4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[25] = a6;
  v8[26] = a8;
  v8[23] = a4;
  v8[24] = a5;
  v8[21] = a1;
  v8[22] = a3;
  v15 = type metadata accessor for InternalError();
  v8[27] = v15;
  v8[28] = *(v15 - 8);
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v16 = type metadata accessor for UUID();
  v8[31] = v16;
  v8[32] = *(v16 - 8);
  v8[33] = swift_task_alloc();
  v17 = type metadata accessor for MarketplaceKitError();
  v8[34] = v17;
  v8[35] = *(v17 - 8);
  v8[36] = swift_task_alloc();
  sub_1001F0C48(&qword_100783C48);
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  v8[5] = a4;
  v8[6] = a5;
  v8[7] = a6;
  v8[8] = a7;
  v8[9] = a8;
  v8[39] = sub_10020A748(v8 + 2);
  (*(*(a4 - 8) + 16))();

  return _swift_task_switch(sub_10041F700, a3, 0);
}

uint64_t sub_10041F700()
{
  v1 = v0[21];
  if (v1)
  {
    v2 = v0[28];
    v0[20] = v1;
    swift_errorRetain();
    sub_1001F0C48(&unk_10077F940);
    v3 = swift_dynamicCast();
    v4 = *(v2 + 56);
    v5 = v0[38];
    if (v3)
    {
      v4(v0[38], 0, 1, v0[27]);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_100429090(v5, type metadata accessor for InternalError);
      if (EnumCaseMultiPayload == 11)
      {
        sub_10000710C((v0 + 2));

        v7 = v0[1];

        return v7();
      }
    }

    else
    {
      v4(v0[38], 1, 1, v0[27]);
      sub_1000032A8(v5, &qword_100783C48);
    }
  }

  v9 = *(*sub_100006D8C(v0 + 2, v0[5]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);
  v10 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_id;
  v0[40] = v9;
  v0[41] = v10;

  return _swift_task_switch(sub_10041F900, v9, 0);
}

uint64_t sub_10041F900()
{
  v1 = *(v0 + 176);
  sub_10054C8D0(v1 + *(v0 + 328));

  return _swift_task_switch(sub_10041F978, v1, 0);
}

uint64_t sub_10041F978()
{
  if (!*(v0 + 168))
  {
LABEL_4:
    *(v0 + 408) = 0;
    v3 = *(v0 + 256);
    v2 = *(v0 + 264);
    v4 = *(v0 + 248);
    v5 = *(v0 + 176);
    v6 = *(*sub_100006D8C((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_progressCache);
    *(v0 + 416) = v6;
    (*(v3 + 16))(v2, *(v5 + 112) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_id, v4);

    v7 = swift_task_alloc();
    *(v0 + 424) = v7;
    *v7 = v0;
    v7[1] = sub_1004200E0;
    v8 = *(v0 + 312);
    v9 = *(v0 + 264);
    v10 = *(v0 + 200);
    v11 = *(v0 + 208);
    v12 = *(v0 + 184);
    v13 = *(v0 + 192);

    return sub_100387224(v9, v8, v6, v12, v13, v10, v11);
  }

  swift_errorRetain();
  *(v0 + 336) = sub_10040022C();
  if (v1)
  {

    goto LABEL_4;
  }

  v15 = *(v0 + 288);
  v16 = *(v0 + 176);
  *(v0 + 344) = *(*sub_100006D8C((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_clientRegistry);
  v17 = *(*(v16 + 112) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
  v18 = *(*v17 + class metadata base offset for ManagedBuffer + 16);
  v19 = (*(*v17 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v17 + v19));
  sub_10020A980(v17 + v18, v0 + 80);
  os_unfair_lock_unlock((v17 + v19));
  v20 = *(v0 + 104);
  sub_100006D8C((v0 + 80), v20);
  *(v0 + 352) = sub_10056D600(v20);
  *(v0 + 360) = v21;
  *(v0 + 432) = v22;
  *(v0 + 368) = *(*sub_100006D8C((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installDatabase);
  swift_getErrorValue();
  v23 = *(v0 + 128);
  v24 = *(v0 + 136);

  sub_1004B53F8(v23, v24, v15);

  return _swift_task_switch(sub_10041FC34, 0, 0);
}

uint64_t sub_10041FC34()
{
  v13 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 352);
  v3 = *(v0 + 360);
  v4 = *(v0 + 344);
  os_unfair_lock_lock((v4 + 16));
  sub_10066F154((v4 + 24), v2, v3, v1 & 1, &v12);
  *(v0 + 376) = 0;
  v5 = *(v0 + 368);
  v6 = *(v0 + 336);
  v7 = *(v0 + 288);
  os_unfair_lock_unlock((v4 + 16));
  v8 = v12;
  *(v0 + 384) = v12;
  v9 = swift_task_alloc();
  *(v0 + 392) = v9;
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v5;
  v9[5] = 0;
  v9[6] = 0;
  v9[7] = v6;
  v10 = swift_task_alloc();
  *(v0 + 400) = v10;
  *v10 = v0;
  v10[1] = sub_10041FDA0;

  return withDiscardingTaskGroup<A>(returning:isolation:body:)();
}

uint64_t sub_10041FDA0()
{

  return _swift_task_switch(sub_10041FED4, 0, 0);
}

uint64_t sub_10041FED4()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  v4 = v0[22];

  sub_1003C74F8();
  (*(v2 + 8))(v1, v3);
  sub_10000710C((v0 + 10));

  return _swift_task_switch(sub_10041FFA0, v4, 0);
}

uint64_t sub_10041FFA0()
{
  v1 = v0[47];

  v0[51] = v1;
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[31];
  v5 = v0[22];
  v6 = *(*sub_100006D8C(v0 + 2, v0[5]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_progressCache);
  v0[52] = v6;
  (*(v3 + 16))(v2, *(v5 + 112) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_id, v4);

  v7 = swift_task_alloc();
  v0[53] = v7;
  *v7 = v0;
  v7[1] = sub_1004200E0;
  v8 = v0[39];
  v9 = v0[33];
  v10 = v0[25];
  v11 = v0[26];
  v12 = v0[23];
  v13 = v0[24];

  return sub_100387224(v9, v8, v6, v12, v13, v10, v11);
}

uint64_t sub_1004200E0()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 248);
  v4 = *(*v0 + 176);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100420270, v4, 0);
}

void sub_100420270()
{
  if (qword_10077E518 != -1)
  {
    swift_once();
  }

  v1 = v0[51];
  v2 = qword_100783AE0;
  os_unfair_lock_lock((qword_100783AE0 + 24));
  sub_100429188((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
  if (!v1)
  {
    v3 = v0[21];
    v4 = v0[37];
    v5 = v0[27];
    v6 = v0[28];
    if (v3)
    {
      v0[18] = v3;
      swift_errorRetain();
      sub_1001F0C48(&unk_10077F940);
      v7 = swift_dynamicCast();
      (*(v6 + 56))(v4, v7 ^ 1u, 1, v5);
      if ((*(v6 + 48))(v4, 1, v5) != 1)
      {
        v8 = v0[29];
        v9 = v0[30];
        sub_1004287E8(v0[37], v9, type metadata accessor for InternalError);
        sub_1004287E8(v9, v8, type metadata accessor for InternalError);
        LODWORD(v9) = swift_getEnumCaseMultiPayload();
        sub_100429090(v8, type metadata accessor for InternalError);
        if (v9 == 5)
        {
          *(v0[22] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_shouldShowAlertOnInstallFailure) = 0;
LABEL_11:
          sub_10000710C((v0 + 2));

          v10 = v0[1];

          v10();
          return;
        }

LABEL_10:
        sub_10048C4C4();
        goto LABEL_11;
      }
    }

    else
    {
      (*(v6 + 56))(v0[37], 1, 1, v0[27]);
    }

    sub_1000032A8(v0[37], &qword_100783C48);
    goto LABEL_10;
  }
}

uint64_t sub_1004204EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a2;
  v6[9] = a4;
  v6[7] = a1;
  sub_1001F0C48(&unk_100780380);
  v6[10] = swift_task_alloc();
  v11 = type metadata accessor for AppInstallRequestType();
  v6[11] = v11;
  v6[12] = *(v11 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[5] = a5;
  v6[6] = a6;
  v12 = sub_10020A748(v6 + 2);
  (*(*(a5 - 8) + 16))(v12, a3, a5);

  return _swift_task_switch(sub_100420650, a4, 0);
}

uint64_t sub_100420650()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = *(v0[9] + 112);
  v0[15] = v5;
  v18 = v5;
  v6 = *(v5 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
  v7 = *(*v6 + class metadata base offset for ManagedBuffer + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v8));
  v9 = type metadata accessor for ADPInstallConfiguration.Storage(0);
  v10 = *(v4 + 16);
  v10(v1, v6 + *(v9 + 28) + v7, v3);
  os_unfair_lock_unlock((v6 + v8));
  v10(v2, v1, v3);
  v11 = (*(v4 + 88))(v2, v3);
  if (v11 == enum case for AppInstallRequestType.automaticInstall(_:))
  {
LABEL_2:
    (*(v0[12] + 8))(v0[14], v0[11]);
    sub_10000710C((v0 + 2));

    v12 = v0[1];

    return v12();
  }

  if (v11 != enum case for AppInstallRequestType.install(_:))
  {
    if (v11 == enum case for AppInstallRequestType.automaticUpdate(_:))
    {
      goto LABEL_2;
    }

    if (v11 != enum case for AppInstallRequestType.update(_:) && v11 != enum case for AppInstallRequestType.promotion(_:))
    {
      if (v11 != enum case for AppInstallRequestType.restore(_:) && v11 != enum case for AppInstallRequestType.deviceVPP(_:) && v11 != enum case for AppInstallRequestType.deviceVPPUpdate(_:) && v11 != enum case for AppInstallRequestType.userVPP(_:) && v11 != enum case for AppInstallRequestType.userVPPUpdate(_:) && v11 != enum case for AppInstallRequestType.upp(_:) && v11 != enum case for AppInstallRequestType.restoreUpdate(_:))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      goto LABEL_2;
    }
  }

  (*(v0[12] + 8))(v0[14], v0[11]);
  v14 = *sub_100006D8C(v0 + 2, v0[5]);
  v15 = swift_task_alloc();
  v0[16] = v15;
  *v15 = v0;
  v15[1] = sub_1004209E0;
  v16 = v0[7];
  v17 = v0[8];

  return (sub_10041E5E0)(v18, v16, v17, v14);
}

uint64_t sub_1004209E0(uint64_t a1)
{
  v2 = *(*v1 + 72);
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_100420AF8, v2, 0);
}

uint64_t sub_100420AF8()
{
  v1 = v0[17];
  if (v1)
  {
    v2 = v0[15];
    v3 = v0[10];
    *(v0[9] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_shouldShowAlertOnInstallFailure) = 0;
    v4 = type metadata accessor for TaskPriority();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    v5 = swift_allocObject();
    v5[2] = 0;
    v5[3] = 0;
    v5[4] = v1;
    v5[5] = v2;

    sub_1004F8754(0xD000000000000013, 0x80000001006C4890, v3, &unk_1006AA448, v5);

    sub_1000032A8(v3, &unk_100780380);
  }

  sub_10000710C((v0 + 2));

  v6 = v0[1];

  return v6();
}

uint64_t sub_100420C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[159] = a2;
  sub_1001F0C48(&unk_100780380);
  v4[160] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  v4[161] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v4[162] = v9;
  v4[163] = *(v9 - 8);
  v4[164] = swift_task_alloc();
  v4[165] = swift_task_alloc();
  v4[166] = swift_task_alloc();
  v10 = type metadata accessor for AppInstallRequestType();
  v4[167] = v10;
  v4[168] = *(v10 - 8);
  v4[169] = swift_task_alloc();
  v4[170] = swift_task_alloc();
  v4[171] = swift_task_alloc();
  v4[131] = a3;
  v4[132] = a4;
  v11 = sub_10020A748(v4 + 128);
  (*(*(a3 - 8) + 16))(v11, a1, a3);

  return _swift_task_switch(sub_100420E8C, a2, 0);
}

uint64_t sub_100420E8C()
{
  v106 = v0;
  v1 = *(v0 + 1368);
  v2 = *(v0 + 1360);
  v3 = *(v0 + 1344);
  v4 = *(v0 + 1336);
  v103 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage;
  v104 = *(*(v0 + 1272) + 112);
  v5 = *(v104 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
  v6 = *(*v5 + class metadata base offset for ManagedBuffer + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  v101 = type metadata accessor for ADPInstallConfiguration.Storage(0);
  v8 = *(v3 + 16);
  v8(v1, v5 + *(v101 + 28) + v6, v4);
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
      v10 = *(*(v0 + 1344) + 8);
      v10(*(v0 + 1368), *(v0 + 1336));
      static Logger.install.getter();

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v96 = v12;
        v13 = *(v0 + 1352);
        v92 = *(v0 + 1336);
        v97 = *(v0 + 1304);
        v98 = *(v0 + 1296);
        v99 = *(v0 + 1328);
        v94 = v10;
        v14 = *(v0 + 1272);
        v15 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *v15 = 138412546;
        v16 = *(v14 + 160);
        *(v15 + 4) = v16;
        *v93 = v16;
        *(v15 + 12) = 2082;
        v17 = *(v104 + v103);
        v105[0] = v95;
        v18 = *(*v17 + class metadata base offset for ManagedBuffer + 16);
        v19 = (*(*v17 + 48) + 3) & 0x1FFFFFFFCLL;
        v20 = v16;
        os_unfair_lock_lock((v17 + v19));
        v8(v13, v17 + *(v101 + 28) + v18, v92);
        os_unfair_lock_unlock((v17 + v19));
        v21 = AppInstallRequestType.rawValue.getter();
        v23 = v22;
        v94(v13, v92);
        v24 = sub_1002346CC(v21, v23, v105);

        *(v15 + 14) = v24;
        _os_log_impl(&_mh_execute_header, v11, v96, "[%@] Ineligible alert not required for install of type %{public}s.", v15, 0x16u);
        sub_1000032A8(v93, &qword_10077F920);

        sub_10000710C(v95);

        (*(v97 + 8))(v99, v98);
      }

      else
      {
        v33 = *(v0 + 1328);
        v34 = *(v0 + 1304);
        v35 = *(v0 + 1296);

        (*(v34 + 8))(v33, v35);
      }

LABEL_39:
      sub_10000710C(v0 + 1024);

      v91 = *(v0 + 8);

      return v91();
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

  (*(*(v0 + 1344) + 8))(*(v0 + 1368), *(v0 + 1336));
  v25 = *(v104 + v103);
  v26 = *(*v25 + class metadata base offset for ManagedBuffer + 16);
  v27 = (*(*v25 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v25 + v27));
  sub_10020A980(v25 + v26, v0 + 1064);
  os_unfair_lock_unlock((v25 + v27));
  sub_1001F0C48(&qword_10077E970);
  if (swift_dynamicCast())
  {
    v28 = *(v0 + 1288);

    sub_100005934(v104 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_referrer, v28, &unk_1007809F0);
    v29 = type metadata accessor for URL();
    v30 = *(v29 - 8);
    v31 = (*(v30 + 48))(v28, 1, v29);
    v32 = *(v0 + 1288);
    if (v31 == 1)
    {
      sub_1000032A8(*(v0 + 1288), &unk_1007809F0);
LABEL_24:
      static Logger.install.getter();

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = *(v0 + 1272);
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v49 = 138412290;
        v51 = *(v48 + 160);
        *(v49 + 4) = v51;
        *v50 = v51;
        v52 = v51;
        _os_log_impl(&_mh_execute_header, v46, v47, "[%@] Ineligible alert not shown as there is no domain and/or no referrer.", v49, 0xCu);
        sub_1000032A8(v50, &qword_10077F920);
      }

      v53 = *(v0 + 1320);
      v54 = *(v0 + 1304);
      v55 = *(v0 + 1296);

      (*(v54 + 8))(v53, v55);
      goto LABEL_39;
    }

    v43 = sub_1005D6710();
    v44 = v45;
    (*(v30 + 8))(v32, v29);
    if (!v44)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v37 = *(v104 + v103);
    v38 = *(*v37 + class metadata base offset for ManagedBuffer + 16);
    v39 = (*(*v37 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v37 + v39));
    sub_10020A980(v37 + v38, v0 + 1104);
    os_unfair_lock_unlock((v37 + v39));
    if ((swift_dynamicCast() & 1) == 0)
    {
      static Logger.install.getter();

      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = *(v0 + 1272);
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v59 = 138412546;
        v62 = *(v58 + 160);
        *(v59 + 4) = v62;
        v100 = v60;
        v102 = v61;
        *v60 = v62;
        *(v59 + 12) = 2082;
        v63 = *(v104 + v103);
        v105[0] = v61;
        v64 = *(*v63 + class metadata base offset for ManagedBuffer + 16);
        v65 = (*(*v63 + 48) + 3) & 0x1FFFFFFFCLL;
        v66 = v62;
        os_unfair_lock_lock((v63 + v65));
        sub_10020A980(v63 + v64, v0 + 1144);
        os_unfair_lock_unlock((v63 + v65));
        v67 = *(v0 + 1168);
        v68 = *(v0 + 1176);
        sub_100006D8C((v0 + 1144), v67);
        v69 = (*(v68 + 56))(v67, v68);
        if (v70)
        {
          v71 = v69;
          v72 = v70;
        }

        else
        {
          v81 = *(v104 + v103);
          v82 = *(*v81 + class metadata base offset for ManagedBuffer + 16);
          v83 = (*(*v81 + 48) + 3) & 0x1FFFFFFFCLL;
          os_unfair_lock_lock((v81 + v83));
          sub_10020A980(v81 + v82, v0 + 1184);
          os_unfair_lock_unlock((v81 + v83));
          v84 = *(v0 + 1208);
          v85 = *(v0 + 1216);
          sub_100006D8C((v0 + 1184), v84);
          v71 = (*(v85 + 40))(v84, v85);
          v72 = v86;
          sub_10000710C(v0 + 1184);
        }

        v87 = *(v0 + 1312);
        v88 = *(v0 + 1304);
        v89 = *(v0 + 1296);
        sub_10000710C(v0 + 1144);
        v90 = sub_1002346CC(v71, v72, v105);

        *(v59 + 14) = v90;
        _os_log_impl(&_mh_execute_header, v56, v57, "[%@] Ineligible alert not shown for distributor %{public}s", v59, 0x16u);
        sub_1000032A8(v100, &qword_10077F920);

        sub_10000710C(v102);

        (*(v88 + 8))(v87, v89);
      }

      else
      {
        v73 = *(v0 + 1312);
        v74 = *(v0 + 1304);
        v75 = *(v0 + 1296);

        (*(v74 + 8))(v73, v75);
      }

      goto LABEL_39;
    }

    v40 = *(v0 + 1240);
    v41 = *(v0 + 1248);
    objc_allocWithZone(LSApplicationRecord);

    v42 = sub_10049E57C(v40, v41, 0);
    if (v42)
    {
      v76 = v42;
      v77 = [v42 localizedName];

      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v78;
    }

    else
    {

      v43 = 0;
      v44 = 0xE000000000000000;
    }
  }

  *(v0 + 952) = v43;
  *(v0 + 960) = v44;
  *(v0 + 1016) = 8;
  v79 = *(v0 + 1000);
  *(v0 + 840) = *(v0 + 984);
  *(v0 + 856) = v79;
  *(v0 + 872) = *(v0 + 1016);
  v80 = *(v0 + 968);
  *(v0 + 808) = *(v0 + 952);
  *(v0 + 824) = v80;
  *(v0 + 696) = 48;
  *(v0 + 704) = 0u;
  *(v0 + 720) = 0u;
  *(v0 + 736) = 0u;
  *(v0 + 752) = 0;
  *(v0 + 760) = 41;
  *(v0 + 912) = 0u;
  *(v0 + 928) = 0u;
  *(v0 + 880) = 0u;
  *(v0 + 896) = 0u;
  *(v0 + 944) = 41;
  *(v0 + 1376) = *(*sub_100006D8C((v0 + 1024), *(v0 + 1048)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_localizer);

  return _swift_task_switch(sub_100421B64, 0, 0);
}

uint64_t sub_100421B64()
{
  v1 = v0[172];
  v2 = swift_allocObject();
  v0[173] = v2;
  *(v2 + 16) = 2;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0;
  *(v2 + 80) = 41;
  *(v2 + 88) = v1;
  v3 = swift_task_alloc();
  v0[174] = v3;
  *(v3 + 16) = &unk_1006AA478;
  *(v3 + 24) = v2;

  sub_1001F0C48(&unk_10077FA80);
  swift_asyncLet_begin();
  v4 = swift_task_alloc();
  v0[175] = v4;
  *v4 = v0;
  v4[1] = sub_100421CB8;

  return sub_1006600F0((v0 + 87));
}

uint64_t sub_100421CB8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  v3[176] = a1;
  v3[177] = a2;

  v4 = swift_task_alloc();
  v3[178] = v4;
  *v4 = v6;
  v4[1] = sub_100421E10;

  return sub_1006600F0((v3 + 101));
}

uint64_t sub_100421E10(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  v3[179] = a1;
  v3[180] = a2;

  sub_100222FFC((v3 + 119));
  v4 = swift_task_alloc();
  v3[181] = v4;
  *v4 = v6;
  v4[1] = sub_100421F70;

  return sub_1006600F0((v3 + 110));
}

uint64_t sub_100421F70(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1456) = a1;
  *(v3 + 1464) = a2;

  return _swift_asyncLet_get(v3 + 16, v3 + 1256, sub_100422078, v3 + 656);
}

uint64_t sub_100422094()
{
  v6 = *(v0 + 1432);
  v7 = *(v0 + 1456);
  v5 = *(v0 + 1408);
  v1 = *(v0 + 1256);
  v2 = *(v0 + 1264);
  type metadata accessor for SystemAlert();
  v3 = swift_allocObject();
  *(v0 + 1472) = v3;

  swift_defaultActor_initialize();
  *(v3 + 112) = v5;
  *(v3 + 128) = v6;
  *(v3 + 144) = v7;
  *(v3 + 160) = v1;
  *(v3 + 168) = v2;
  *(v3 + 176) = 0;

  return _swift_asyncLet_finish(v0 + 16, v0 + 1256, sub_10042216C, v0 + 768);
}

uint64_t sub_10042216C()
{
  sub_100428444(&qword_10077EC88, type metadata accessor for SystemAlert);
  swift_getObjectType();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100422220, v1, v0);
}

uint64_t sub_100422220()
{
  v1 = *(v0 + 1272);

  return _swift_task_switch(sub_1004222B8, v1, 0);
}

uint64_t sub_1004222B8()
{
  v1 = v0[184];
  v2 = v0[160];
  v3 = v0[159];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v1;
  v5[5] = v3;

  sub_1004F8754(0xD000000000000010, 0x80000001006CB3F0, v2, &unk_1006AA490, v5);

  sub_1000032A8(v2, &unk_100780380);
  sub_10000710C((v0 + 128));

  v6 = v0[1];

  return v6();
}

uint64_t sub_100422468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a1;
  v6[12] = a3;
  sub_1001F0C48(&unk_100780380);
  v6[13] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v6[14] = v12;
  v6[15] = *(v12 - 8);
  v6[16] = swift_task_alloc();
  sub_1001F0C48(&qword_100783C48);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  sub_1001F0C48(&unk_100784390);
  v6[19] = swift_task_alloc();
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  v13 = sub_10020A748(v6 + 2);
  (*(*(a4 - 8) + 16))(v13, a2, a4);

  return _swift_task_switch(sub_100422640, a3, 0);
}

uint64_t sub_100422640()
{
  v0[8] = v0[11];
  swift_errorRetain();
  sub_1001F0C48(&unk_10077F940);
  v1 = type metadata accessor for MarketplaceKitError();
  v2 = swift_dynamicCast();
  v3 = *(*(v1 - 8) + 56);
  v4 = v0[19];
  if (v2)
  {
    v5 = *(v1 - 8);
    v3(v0[19], 0, 1, v1);
    v6 = (*(v5 + 88))(v4, v1);
    v7 = enum case for MarketplaceKitError.cancelled(_:);
    (*(v5 + 8))(v4, v1);
    if (v6 == v7)
    {
      sub_10040C4D8(2);
LABEL_4:
      sub_10000710C((v0 + 2));

      v8 = v0[1];

      return v8();
    }
  }

  else
  {
    v3(v0[19], 1, 1, v1);
    sub_1000032A8(v4, &unk_100784390);
  }

  v0[9] = v0[11];
  swift_errorRetain();
  v10 = type metadata accessor for InternalError();
  v11 = swift_dynamicCast();
  v12 = *(*(v10 - 8) + 56);
  v13 = v0[18];
  if (v11)
  {
    v12(v0[18], 0, 1, v10);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_100429090(v13, type metadata accessor for InternalError);
    if (EnumCaseMultiPayload == 16)
    {
      v15 = *(*sub_100006D8C(v0 + 2, v0[5]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_localizer);
      v0[20] = v15;

      v16 = swift_task_alloc();
      v0[21] = v16;
      *v16 = v0;
      v16[1] = sub_100422E6C;

      return sub_10040CA00(v15);
    }
  }

  else
  {
    v12(v0[18], 1, 1, v10);
    sub_1000032A8(v13, &qword_100783C48);
  }

  v0[10] = v0[11];
  swift_errorRetain();
  v17 = swift_dynamicCast();
  v18 = v0[17];
  if (v17)
  {
    v12(v0[17], 0, 1, v10);
    v19 = swift_getEnumCaseMultiPayload();
    v20 = v0[17];
    if (v19 == 11)
    {
      v22 = *v20;
      v21 = v20[1];
      static Logger.install.getter();

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = v0[12];
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138412290;
        v28 = *(v25 + 160);
        *(v26 + 4) = v28;
        *v27 = v28;
        v29 = v28;
        _os_log_impl(&_mh_execute_header, v23, v24, "[%@] Pausing install pending developer approval", v26, 0xCu);
        sub_1000032A8(v27, &qword_10077F920);
      }

      v31 = v0[15];
      v30 = v0[16];
      v32 = v0[14];
      v33 = v0[12];

      (*(v31 + 8))(v30, v32);
      v34 = (v33 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_developerID);
      *v34 = v22;
      v34[1] = v21;

      if (qword_10077E520 != -1)
      {
        swift_once();
      }

      v35 = off_100783AE8;
      os_unfair_lock_lock(off_100783AE8 + 6);
      sub_1004280A8(v35 + 2);
      os_unfair_lock_unlock(v35 + 6);
      _StringGuts.grow(_:)(29);

      v37._countAndFlagsBits = v22;
      v37._object = v21;
      String.append(_:)(v37);

      type metadata accessor for Transaction();
      v38 = swift_allocObject();
      *(v38 + 16) = 0xD00000000000001BLL;
      *(v38 + 24) = 0x80000001006CB2E0;
      v39 = qword_10077E570;
      swift_bridgeObjectRetain_n();
      if (v39 != -1)
      {
        swift_once();
      }

      os_unfair_lock_lock(&dword_100788650);
      sub_1005B8C24(&off_100788658, v38);
      v40 = v0[13];

      os_unfair_lock_unlock(&dword_100788650);
      v41 = type metadata accessor for TaskPriority();
      (*(*(v41 - 8) + 56))(v40, 1, 1, v41);
      v42 = swift_allocObject();
      v42[2] = 0;
      v42[3] = 0;
      v42[4] = v38;

      sub_10040E464(0xD00000000000001BLL, 0x80000001006CB2E0, v40, &unk_1006AA388, v42);

      sub_1000032A8(v40, &unk_100780380);
      goto LABEL_4;
    }

    sub_100429090(v20, type metadata accessor for InternalError);
  }

  else
  {
    v12(v0[17], 1, 1, v10);
    sub_1000032A8(v18, &qword_100783C48);
  }

  v36 = swift_task_alloc();
  v0[22] = v36;
  *v36 = v0;
  v36[1] = sub_100423048;

  return sub_10040E6D0();
}

uint64_t sub_100422E6C()
{
  v1 = *(*v0 + 96);

  return _swift_task_switch(sub_100422F98, v1, 0);
}

uint64_t sub_100422F98()
{
  sub_10040C4D8(1);
  sub_10000710C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100423048()
{
  v1 = *(*v0 + 96);

  return _swift_task_switch(sub_100423158, v1, 0);
}

uint64_t sub_100423158()
{
  v0[23] = *(*sub_100006D8C(v0 + 2, v0[5]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_certificateStore);

  v1 = swift_task_alloc();
  v0[24] = v1;
  *v1 = v0;
  v1[1] = sub_100423248;

  return sub_10052C4BC();
}

uint64_t sub_100423248()
{
  v2 = *v1;

  v3 = *(v2 + 96);
  if (v0)
  {
  }

  return _swift_task_switch(sub_1004291A0, v3, 0);
}

uint64_t sub_1004233A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v16 - 8);
  v18 = v23 - v17;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v24[6] = a8;
  v24[7] = a9;
  v19 = sub_10020A748(v24);
  (*(*(a5 - 8) + 16))(v19, a3, a5);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  sub_1002708C4(v24, v23);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = a1;
  *(v21 + 40) = a2;
  sub_100270928(v23, (v21 + 48));

  sub_1004A673C(0, 0, v18, &unk_1006AA4A8, v21);

  return sub_10000710C(v24);
}

unint64_t sub_10042354C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_23:
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v10 = *(a1 + 8 * v8 + 32);
    }

    v11 = (*(v10 + 112) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_clientID);
    v12 = v11[1];
    if (v12)
    {
      break;
    }

LABEL_5:
    if (__OFADD__(v8++, 1))
    {
      goto LABEL_22;
    }
  }

  if (*v11 != a2 || v12 != a3)
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      return v8;
    }

    goto LABEL_5;
  }

  return v8;
}

unint64_t sub_100423690(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    v5 = static UUID.== infix(_:_:)();

    if (v5)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_10042379C(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = type metadata accessor for AppInstallRequestType();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[29] = v4;
  v2[30] = *(v4 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  sub_1001F0C48(&qword_100782F00);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v5 = type metadata accessor for MediaAPIMetadata();
  v2[45] = v5;
  v2[46] = *(v5 - 8);
  v2[47] = swift_task_alloc();
  sub_1001F0C48(&qword_10077EC90);
  v2[48] = swift_task_alloc();

  return _swift_task_switch(sub_100423A20, v1, 0);
}

uint64_t sub_100423A20()
{
  v1 = v0[24] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_preflightMetadata;
  swift_beginAccess();
  v2 = type metadata accessor for ADPPreflightResultingMetadata(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2))
  {
    v3 = v0[48];
    v4 = v0[45];
    v5 = v0[46];
    v6 = *(*(v0[24] + 112) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
    v7 = *(*v6 + class metadata base offset for ManagedBuffer + 16);
    v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v6 + v8));
    v9 = type metadata accessor for ADPInstallConfiguration.Storage(0);
    sub_100005934(v6 + *(v9 + 36) + v7, v3, &qword_10077EC90);
    os_unfair_lock_unlock((v6 + v8));
    v10 = (*(v5 + 48))(v3, 1, v4);
    v11 = v0[48];
    if (v10)
    {
      v12 = v0 + 31;
      sub_1000032A8(v11, &qword_10077EC90);
      static Logger.install.getter();

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = v0[24];
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        v18 = *(v15 + 160);
        *(v16 + 4) = v18;
        *v17 = v18;
        v19 = v18;
        v20 = "[%@] Can not show install sheet. Rating rank not found in metadata.";
LABEL_10:
        _os_log_impl(&_mh_execute_header, v13, v14, v20, v16, 0xCu);
        sub_1000032A8(v17, &qword_10077F920);

        goto LABEL_11;
      }

      goto LABEL_11;
    }

    v22 = v0[47];
    v23 = v0[45];
    v24 = v0[48];
    sub_100428E08(v11, v22, type metadata accessor for MediaAPIMetadata);
    sub_1000032A8(v24, &qword_10077EC90);
    v21 = *(v22 + *(v23 + 48));
    sub_100429090(v22, type metadata accessor for MediaAPIMetadata);
  }

  else
  {
    v21 = *(v1 + *(v0[45] + 48));
  }

  v0[49] = v21;
  v25 = sub_10040022C();
  if (v26)
  {
    v12 = v0 + 32;
    static Logger.install.getter();

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v27 = v0[24];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v28 = *(v27 + 160);
      *(v16 + 4) = v28;
      *v17 = v28;
      v29 = v28;
      v20 = "[%@] Can not show install sheet. Item ID could not be determined.";
      goto LABEL_10;
    }

LABEL_11:
    v30 = *v12;
    v31 = v0[29];
    v32 = v0[30];

    (*(v32 + 8))(v30, v31);
    v33 = type metadata accessor for MarketplaceKitError();
    sub_100428444(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    v34 = swift_allocError();
    (*(*(v33 - 8) + 104))(v35, enum case for MarketplaceKitError.cancelled(_:), v33);
    swift_willThrow();
    v0[61] = v34;
    v36 = v0[23];
    v37 = v36[3];
    v38 = v36[5];
    v39 = v36[7];
    v40 = v36[8];
    v41 = v36[9];
    v42 = sub_100006D8C(v36, v37);
    swift_errorRetain();
    v43 = swift_task_alloc();
    v0[62] = v43;
    *v43 = v0;
    v43[1] = sub_100425B18;
    v44 = v0[24];

    return sub_10041F4B4(v34, v42, v44, v37, v38, v39, v40, v41);
  }

  v46 = v25;
  v0[50] = *(*sub_100006D8C(v0[23], *(v0[23] + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_exceptionRequestService);

  v47 = swift_task_alloc();
  v0[51] = v47;
  *v47 = v0;
  v47[1] = sub_100423FC4;
  v48 = v0[44];

  return sub_10059BD0C(v48, v46, 0, 0);
}

uint64_t sub_100423FC4()
{
  v1 = *(*v0 + 192);

  return _swift_task_switch(sub_1004240F0, v1, 0);
}

uint64_t sub_1004240F0()
{
  v142 = v0;
  v1 = *(v0 + 344);
  sub_100005934(*(v0 + 352), v1, &qword_100782F00);
  v2 = type metadata accessor for AppLibrary.ExceptionRequest();
  v3 = *(v2 - 8);
  v138 = *(v3 + 48);
  v135 = v3;
  v136 = v2;
  if (v138(v1, 1, v2) == 1)
  {
    sub_1000032A8(*(v0 + 344), &qword_100782F00);
    v4 = 0;
  }

  else
  {
    v5 = *(v0 + 392);
    v6 = *(v0 + 344);
    v7 = AppLibrary.ExceptionRequest.exceptedRatingValue.getter();
    (*(v3 + 8))(v6, v2);
    v4 = v7 >= v5;
  }

  v8 = *(v0 + 352);
  v10 = *(v0 + 328);
  v9 = *(v0 + 336);
  static Logger.install.getter();
  sub_100005934(v8, v9, &qword_100782F00);
  sub_100005934(v8, v10, &qword_100782F00);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 336);
  if (v13)
  {
    v132 = v12;
    v133 = v11;
    v15 = *(v0 + 320);
    v16 = *(v0 + 192);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    v141 = v131;
    *v17 = 138413314;
    v19 = *(v16 + 160);
    *(v17 + 4) = v19;
    v130 = v18;
    *v18 = v19;
    *(v17 + 12) = 2048;
    sub_100005934(v14, v15, &qword_100782F00);
    v20 = v138(v15, 1, v2);
    v21 = v19;
    v22 = *(v0 + 320);
    v134 = v4;
    if (v20 == 1)
    {
      sub_1000032A8(v22, &qword_100782F00);
      v23 = 0;
    }

    else
    {
      v23 = AppLibrary.ExceptionRequest.exceptedRatingValue.getter();
      (*(v135 + 8))(v22, v2);
    }

    v29 = *(v0 + 392);
    v30 = *(v0 + 328);
    v31 = *(v0 + 312);
    sub_1000032A8(*(v0 + 336), &qword_100782F00);
    *(v17 + 14) = v23;
    *(v17 + 22) = 2048;
    *(v17 + 24) = v29;
    *(v17 + 32) = 2048;
    *(v17 + 34) = sub_1005F5804();
    *(v17 + 42) = 2080;
    sub_100005934(v30, v31, &qword_100782F00);
    v32 = v138(v31, 1, v136);
    v33 = *(v0 + 312);
    if (v32 == 1)
    {
      sub_1000032A8(*(v0 + 312), &qword_100782F00);
      v34 = v134;
      v35 = v133;
    }

    else
    {
      v36 = AppLibrary.ExceptionRequest.distributorID.getter();
      v38 = v37;
      (*(v135 + 8))(v33, v136);
      v34 = v134;
      v35 = v133;
      if (v38)
      {
        sub_1000032A8(*(v0 + 328), &qword_100782F00);
        v39 = v36;
        goto LABEL_15;
      }
    }

    sub_1000032A8(*(v0 + 328), &qword_100782F00);

    v38 = 0xE300000000000000;
    v39 = 7104878;
LABEL_15:
    v40 = *(v0 + 304);
    v41 = *(v0 + 232);
    v42 = *(v0 + 240);
    v43 = sub_1002346CC(v39, v38, &v141);

    *(v17 + 44) = v43;
    _os_log_impl(&_mh_execute_header, v35, v132, "[%@] Checked highest approved age exception rating: %ld. App's minimum age rating rank: %ld. Device age rating rank: %ld. DistributorID of exception: %s", v17, 0x34u);
    sub_1000032A8(v130, &qword_10077F920);

    sub_10000710C(v131);

    v28 = *(v42 + 8);
    v28(v40, v41);
    *(v0 + 416) = v28;
    if (v34)
    {
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  v24 = *(v0 + 328);
  v25 = *(v0 + 304);
  v26 = *(v0 + 232);
  v27 = *(v0 + 240);
  sub_1000032A8(*(v0 + 336), &qword_100782F00);

  sub_1000032A8(v24, &qword_100782F00);
  v28 = *(v27 + 8);
  v28(v25, v26);
  *(v0 + 416) = v28;
  if (v4)
  {
    goto LABEL_22;
  }

LABEL_16:
  v44 = *(v0 + 392);
  if (sub_1005F5804() < v44)
  {
    static Logger.install.getter();

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = *(v0 + 192);
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      v50 = *(v47 + 160);
      *(v48 + 4) = v50;
      *v49 = v50;
      v51 = v50;
      _os_log_impl(&_mh_execute_header, v45, v46, "[%@] Device does not meet age rating, and an age exception is not present. Beginning the ask for exception sheet flow.", v48, 0xCu);
      sub_1000032A8(v49, &qword_10077F920);
    }

    v52 = *(v0 + 264);
    v53 = *(v0 + 232);
    v54 = *(v0 + 184);

    v28(v52, v53);
    v55 = *(v54 + 24);
    v56 = *(v54 + 72);
    v137 = *(v54 + 56);
    v139 = *(v54 + 40);
    v57 = sub_100006D8C(v54, v55);
    *(v0 + 40) = v55;
    *(v0 + 48) = v139;
    *(v0 + 64) = v137;
    *(v0 + 80) = v56;
    v58 = sub_10020A748((v0 + 16));
    (*(*(v55 - 8) + 16))(v58, v57, v55);
    v59 = swift_task_alloc();
    *(v0 + 472) = v59;
    *v59 = v0;
    v59[1] = sub_10042589C;

    return sub_100410C8C(v0 + 16);
  }

LABEL_22:
  v61 = *(*(v0 + 192) + 112);
  v62 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage;
  *(v0 + 424) = v61;
  *(v0 + 432) = v62;
  v63 = *(v61 + v62);
  v64 = v63 + *(*v63 + class metadata base offset for ManagedBuffer + 16);
  v65 = (*(*v63 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v63 + v65));
  v66 = type metadata accessor for ADPInstallConfiguration.Storage(0);
  *(v0 + 440) = v66;
  LODWORD(v64) = *(v64 + *(v66 + 40));
  os_unfair_lock_unlock((v63 + v65));
  if (v64 != 1 || (v67 = *(v61 + v62), v68 = *(*v67 + class metadata base offset for ManagedBuffer + 16), v69 = (*(*v67 + 48) + 3) & 0x1FFFFFFFCLL, os_unfair_lock_lock((v67 + v69)), sub_10020A980(v67 + v68, v0 + 88), os_unfair_lock_unlock((v67 + v69)), sub_1001F0C48(&qword_10077E970), v140 = v28, (swift_dynamicCast() & 1) != 0) && (v71 = *(v0 + 152), v70 = *(v0 + 160), sub_100006D8C(*(v0 + 184), *(*(v0 + 184) + 24)), , v72 = sub_1000071AC(), *(v0 + 168) = v71, *(v0 + 176) = v70, v73 = swift_task_alloc(), *(v73 + 16) = v0 + 168, v74 = sub_10020A1BC(sub_1001F7FFC, v73, v72), , , , , (v74 & 1) != 0))
  {
    sub_1000032A8(*(v0 + 352), &qword_100782F00);

    v75 = *(v0 + 8);

    return v75();
  }

  v77 = *(v0 + 216);
  v76 = *(v0 + 224);
  v78 = *(v61 + v62);
  v79 = *(v0 + 200);
  v80 = *(v0 + 208);
  v81 = *(*v78 + class metadata base offset for ManagedBuffer + 16);
  v82 = (*(*v78 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v78 + v82));
  v83 = *(v80 + 16);
  v83(v76, v78 + *(v66 + 28) + v81, v79);
  os_unfair_lock_unlock((v78 + v82));
  v83(v77, v76, v79);
  v84 = (*(v80 + 88))(v77, v79);
  v85 = v140;
  if (v84 == enum case for AppInstallRequestType.automaticInstall(_:))
  {
    goto LABEL_29;
  }

  if (v84 != enum case for AppInstallRequestType.install(_:))
  {
    if (v84 != enum case for AppInstallRequestType.automaticUpdate(_:))
    {
      if (v84 == enum case for AppInstallRequestType.update(_:) || v84 == enum case for AppInstallRequestType.promotion(_:))
      {
        goto LABEL_36;
      }

      if (v84 != enum case for AppInstallRequestType.restore(_:) && v84 != enum case for AppInstallRequestType.deviceVPP(_:) && v84 != enum case for AppInstallRequestType.deviceVPPUpdate(_:) && v84 != enum case for AppInstallRequestType.userVPP(_:) && v84 != enum case for AppInstallRequestType.userVPPUpdate(_:) && v84 != enum case for AppInstallRequestType.upp(_:) && v84 != enum case for AppInstallRequestType.restoreUpdate(_:))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }
    }

LABEL_29:
    (*(*(v0 + 208) + 8))(*(v0 + 224), *(v0 + 200));
    static Logger.install.getter();

    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = *(v0 + 192);
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *v89 = 138412290;
      v91 = *(v88 + 160);
      *(v89 + 4) = v91;
      *v90 = v91;
      v92 = v91;
      _os_log_impl(&_mh_execute_header, v86, v87, "[%@] Install sheet required, but this is an automatic install. Failing.", v89, 0xCu);
      sub_1000032A8(v90, &qword_10077F920);
    }

    v93 = *(v0 + 352);
    v94 = *(v0 + 272);
    v95 = *(v0 + 232);

    v140(v94, v95);
    v96 = type metadata accessor for MarketplaceKitError();
    sub_100428444(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    v97 = swift_allocError();
    (*(*(v96 - 8) + 104))(v98, enum case for MarketplaceKitError.cancelled(_:), v96);
LABEL_32:
    swift_willThrow();
    sub_1000032A8(v93, &qword_100782F00);
    *(v0 + 488) = v97;
    v99 = *(v0 + 184);
    v100 = v99[3];
    v101 = v99[5];
    v102 = v99[7];
    v103 = v99[8];
    v104 = v99[9];
    v105 = sub_100006D8C(v99, v100);
    swift_errorRetain();
    v106 = swift_task_alloc();
    *(v0 + 496) = v106;
    *v106 = v0;
    v106[1] = sub_100425B18;
    v107 = *(v0 + 192);

    return sub_10041F4B4(v97, v105, v107, v100, v101, v102, v103, v104);
  }

LABEL_36:
  v108 = *(v0 + 192);
  (*(*(v0 + 208) + 8))(*(v0 + 224), *(v0 + 200));
  v109 = *(v108 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_installConfirmationTask);
  *(v0 + 448) = v109;
  if (!v109)
  {
    static Logger.install.getter();

    v121 = Logger.logObject.getter();
    v122 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v121, v122))
    {
      v123 = *(v0 + 192);
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      *v124 = 138412290;
      v126 = *(v123 + 160);
      *(v124 + 4) = v126;
      *v125 = v126;
      v127 = v126;
      _os_log_impl(&_mh_execute_header, v121, v122, "[%@] No confirmation task available, failing", v124, 0xCu);
      sub_1000032A8(v125, &qword_10077F920);
    }

    v93 = *(v0 + 352);
    v128 = *(v0 + 280);
    v129 = *(v0 + 232);

    v140(v128, v129);
    type metadata accessor for InternalError();
    sub_100428444(&qword_10077F900, type metadata accessor for InternalError);
    v97 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    goto LABEL_32;
  }

  v109;
  static Logger.install.getter();

  v110 = Logger.logObject.getter();
  v111 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v110, v111))
  {
    v112 = *(v0 + 192);
    v113 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    *v113 = 138412290;
    v115 = *(v112 + 160);
    v85 = v140;
    *(v113 + 4) = v115;
    *v114 = v115;
    v116 = v115;
    _os_log_impl(&_mh_execute_header, v110, v111, "[%@] Install sheet required, requesting confirmation", v113, 0xCu);
    sub_1000032A8(v114, &qword_10077F920);
  }

  v117 = *(v0 + 296);
  v118 = *(v0 + 232);
  v119 = *(v0 + 240);

  *(v0 + 456) = (v119 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v85(v117, v118);
  v120 = swift_task_alloc();
  *(v0 + 464) = v120;
  *v120 = v0;
  v120[1] = sub_100425278;

  return sub_1005AADA8();
}

uint64_t sub_100425278(char a1)
{
  v2 = *(*v1 + 192);
  *(*v1 + 504) = a1;

  return _swift_task_switch(sub_100425390, v2, 0);
}

uint64_t sub_100425390()
{
  v43 = v0;
  static Logger.install.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 504);
    v41 = *(v0 + 416);
    v4 = *(v0 + 288);
    v5 = *(v0 + 232);
    v6 = *(v0 + 192);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v42 = v9;
    *v7 = 138412546;
    v10 = *(v6 + 160);
    *(v7 + 4) = v10;
    *v8 = v10;
    *(v7 + 12) = 2082;
    v11 = (v3 & 1) == 0;
    if (v3)
    {
      v12 = 0x6C6C6174736E49;
    }

    else
    {
      v12 = 0x6C65636E6143;
    }

    if (v11)
    {
      v13 = 0xE600000000000000;
    }

    else
    {
      v13 = 0xE700000000000000;
    }

    v14 = v10;
    v15 = sub_1002346CC(v12, v13, &v42);

    *(v7 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Install confirmation task finished with result: %{public}s", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);

    v41(v4, v5);
  }

  else
  {
    v16 = *(v0 + 416);
    v17 = *(v0 + 288);
    v18 = *(v0 + 232);

    v16(v17, v18);
  }

  v19 = *(v0 + 504);
  v20 = *(v0 + 440);
  v21 = *(v0 + 192);
  v22 = *(*(v0 + 424) + *(v0 + 432));
  v23 = v22 + *(*v22 + class metadata base offset for ManagedBuffer + 16);
  v24 = (*(*v22 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v22 + v24));
  *(v23 + *(v20 + 40)) = 0;
  os_unfair_lock_unlock((v22 + v24));
  *(v21 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_shouldShowAlertOnInstallFailure) = 0;
  v25 = *(v0 + 448);
  v26 = *(v0 + 352);
  if (v19)
  {
    sub_1000032A8(*(v0 + 352), &qword_100782F00);

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    v29 = type metadata accessor for MarketplaceKitError();
    sub_100428444(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    v30 = swift_allocError();
    (*(*(v29 - 8) + 104))(v31, enum case for MarketplaceKitError.cancelled(_:), v29);
    swift_willThrow();

    sub_1000032A8(v26, &qword_100782F00);
    *(v0 + 488) = v30;
    v32 = *(v0 + 184);
    v33 = v32[3];
    v34 = v32[5];
    v35 = v32[7];
    v36 = v32[8];
    v37 = v32[9];
    v38 = sub_100006D8C(v32, v33);
    swift_errorRetain();
    v39 = swift_task_alloc();
    *(v0 + 496) = v39;
    *v39 = v0;
    v39[1] = sub_100425B18;
    v40 = *(v0 + 192);

    return sub_10041F4B4(v30, v38, v40, v33, v34, v35, v36, v37);
  }
}

uint64_t sub_10042589C()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v3 = *(v2 + 192);
    v4 = sub_100425D90;
  }

  else
  {
    v5 = *(v2 + 192);
    sub_10000710C(v2 + 16);
    v4 = sub_1004259C4;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1004259C4()
{
  sub_1000032A8(*(v0 + 352), &qword_100782F00);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100425B18()
{
  v1 = *(*v0 + 192);

  return _swift_task_switch(sub_100425C44, v1, 0);
}

uint64_t sub_100425C44()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100425D90()
{
  sub_1000032A8(v0[44], &qword_100782F00);
  sub_10000710C((v0 + 2));
  v1 = v0[60];
  v0[61] = v1;
  v2 = v0[23];
  v3 = v2[3];
  v4 = v2[5];
  v5 = v2[7];
  v6 = v2[8];
  v7 = v2[9];
  v8 = sub_100006D8C(v2, v3);
  swift_errorRetain();
  v9 = swift_task_alloc();
  v0[62] = v9;
  *v9 = v0;
  v9[1] = sub_100425B18;
  v10 = v0[24];

  return sub_10041F4B4(v1, v8, v10, v3, v4, v5, v6, v7);
}

char *sub_100425EA4(char *result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a3 - v8;
  if (__OFSUB__(a3, v8))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v10 = *v7;
  v11 = &result[v10 + 32];
  if (!v9)
  {
    goto LABEL_13;
  }

  v12 = *(v10 + 16);
  v13 = __OFSUB__(v12, a2);
  v14 = v12 - a2;
  if (v13)
  {
    goto LABEL_22;
  }

  result = &v11[a3];
  v15 = (v10 + 32 + a2);
  if (&v11[a3] != v15 || result >= &v15[v14])
  {
    v17 = a3;
    v18 = a6;
    v19 = a5;
    v20 = a7;
    result = memmove(result, v15, v14);
    a7 = v20;
    a5 = v19;
    a6 = v18;
    a3 = v17;
  }

  v21 = *(v10 + 16);
  v13 = __OFADD__(v21, v9);
  v22 = v21 + v9;
  if (v13)
  {
    goto LABEL_23;
  }

  *(v10 + 16) = v22;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (__OFSUB__(a7 >> 1, a6))
  {
    goto LABEL_24;
  }

  if ((a7 >> 1) - a6 != a3)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  return memcpy(v11, (a5 + a6), a3);
}

char *sub_100425FB8(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = *v6;
  v9 = *(*v6 + 2);
  if (v9 < a2)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = result;
  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = __OFSUB__(v13, v11);
  v15 = v13 - v11;
  if (v14)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = v9 + v15;
  if (__OFADD__(v9, v15))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (!isUniquelyReferenced_nonNull_native || v16 > *(v8 + 3) >> 1)
  {
    if (v9 <= v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = v9;
    }

    v8 = sub_100363090(isUniquelyReferenced_nonNull_native, v20, 1, v8);
    *v6 = v8;
  }

  result = sub_100425EA4(v10, a2, v13, a3, a4, a5, a6);
  *v6 = v8;
  return result;
}

uint64_t sub_1004260D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  sub_1001F0C48(&unk_100780380);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return _swift_task_switch(sub_100426184, 0, 0);
}

uint64_t sub_100426184()
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
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_21;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_21;
    }
  }

  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v20 = v2 & 0xC000000000000001;
  v21 = result;
  v22 = v2;
  do
  {
    if (v20)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v5 = *(v2 + 8 * v4 + 32);
    }

    v7 = *(v0 + 168);
    v6 = *(v0 + 176);
    v8 = *(v0 + 152);
    v9 = *(v0 + 160);
    v10 = *(v0 + 144);
    v11 = type metadata accessor for TaskPriority();
    v12 = *(v11 - 8);
    (*(v12 + 56))(v6, 1, 1, v11);
    sub_100231CE8(v9, v0 + 16);
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = v5;
    *(v13 + 40) = v10;
    *(v13 + 48) = v8;
    sub_100231D54((v0 + 16), (v13 + 56));
    sub_100005934(v6, v7, &unk_100780380);
    LODWORD(v6) = (*(v12 + 48))(v7, 1, v11);

    v14 = *(v0 + 168);
    if (v6 == 1)
    {
      sub_1000032A8(*(v0 + 168), &unk_100780380);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v12 + 8))(v14, v11);
    }

    v15 = *(v13 + 16);
    swift_unknownObjectRetain();

    if (v15)
    {
      swift_getObjectType();
      v16 = dispatch thunk of Actor.unownedExecutor.getter();
      v18 = v17;
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    sub_1000032A8(*(v0 + 176), &unk_100780380);
    if (v18 | v16)
    {
      *(v0 + 112) = 0;
      *(v0 + 120) = 0;
      *(v0 + 128) = v16;
      *(v0 + 136) = v18;
    }

    v2 = v22;
    ++v4;
    swift_task_create();
  }

  while (v21 != v4);
LABEL_21:

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100426504(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a8;
  *(v8 + 72) = v13;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 224) = a4;
  *(v8 + 32) = a3;
  *(v8 + 40) = a5;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = type metadata accessor for UUID();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v8 + 112) = v10;
  *(v8 + 120) = *(v10 - 8);
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();
  sub_1001F0C48(&qword_100783C40);
  *(v8 + 152) = swift_task_alloc();

  return _swift_task_switch(sub_100426694, 0, 0);
}

uint64_t sub_100426694()
{
  v40 = v0;
  if (v0[4])
  {
    if (qword_10077E518 != -1)
    {
      swift_once();
    }

    v1 = v0[2];
    v2 = qword_100783AE0;
    v0[20] = qword_100783AE0;
    *(swift_task_alloc() + 16) = v1;
    os_unfair_lock_lock((v2 + 24));
    sub_100428A54((v2 + 16), v39);
    os_unfair_lock_unlock((v2 + 24));
    v23 = v39[0];
    v0[21] = v39[0];

    if (v23)
    {

      return _swift_task_switch(sub_100426B98, v23, 0);
    }

    v24 = v0[13];
    v25 = v0[10];
    v26 = v0[11];
    v27 = v0[2];
    static Logger.install.getter();
    (*(v26 + 16))(v24, v27, v25);
    v7 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    v29 = os_log_type_enabled(v7, v28);
    v10 = v0[17];
    v12 = v0[14];
    v11 = v0[15];
    v13 = v0[13];
    v15 = v0[10];
    v14 = v0[11];
    if (v29)
    {
      v38 = v0[14];
      v16 = swift_slowAlloc();
      v36 = v28;
      v17 = swift_slowAlloc();
      v39[0] = v17;
      *v16 = 136446210;
      sub_100428444(&qword_100789F60, &type metadata accessor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v10;
      v32 = v31;
      (*(v14 + 8))(v13, v15);
      v33 = sub_1002346CC(v30, v32, v39);

      *(v16 + 4) = v33;
      v22 = "No pending install with ID: %{public}s found";
      goto LABEL_7;
    }

LABEL_14:

    (*(v14 + 8))(v13, v15);
    (*(v11 + 8))(v10, v12);
    goto LABEL_15;
  }

  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v6 = v0[2];
  static Logger.install.getter();
  (*(v4 + 16))(v3, v6, v5);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[15];
  v10 = v0[16];
  v12 = v0[14];
  v14 = v0[11];
  v13 = v0[12];
  v15 = v0[10];
  if (!v9)
  {
    goto LABEL_14;
  }

  v38 = v0[14];
  v16 = swift_slowAlloc();
  v36 = v8;
  v17 = swift_slowAlloc();
  v39[0] = v17;
  *v16 = 136446210;
  sub_100428444(&qword_100789F60, &type metadata accessor for UUID);
  v18 = dispatch thunk of CustomStringConvertible.description.getter();
  v37 = v10;
  v20 = v19;
  (*(v14 + 8))(v13, v15);
  v21 = sub_1002346CC(v18, v20, v39);

  *(v16 + 4) = v21;
  v22 = "No calling bundle ID found when confirming %{public}s";
LABEL_7:
  _os_log_impl(&_mh_execute_header, v7, v36, v22, v16, 0xCu);
  sub_10000710C(v17);

  (*(v11 + 8))(v37, v38);
LABEL_15:
  type metadata accessor for InternalError();
  sub_100428444(&qword_10077F900, type metadata accessor for InternalError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v34 = v0[1];

  return v34();
}

uint64_t sub_100426B98()
{
  v1 = *(*(v0 + 168) + 160);
  *(v0 + 176) = v1;
  v2 = v1;

  return _swift_task_switch(sub_100426C0C, 0, 0);
}

uint64_t sub_100426C0C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = *(v0 + 176);
  sub_10062611C();

  v4 = *(v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_lockedADP);
  v5 = *(*v4 + class metadata base offset for ManagedBuffer + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v6));
  sub_100005934(v4 + v5, v2, &qword_100783C40);
  os_unfair_lock_unlock((v4 + v6));
  v7 = sub_10040B720(v1, v2);
  if (v8)
  {
    if (v7 == *(v0 + 24) && v8 == *(v0 + 32))
    {

LABEL_6:
      v10 = swift_task_alloc();
      *(v0 + 184) = v10;
      *v10 = v0;
      v10[1] = sub_100426FAC;
      v11 = *(v0 + 64);
      v12 = *(v0 + 72);
      v13 = *(v0 + 48);
      v14 = *(v0 + 56);
      v15 = *(v0 + 40);
      v16 = *(v0 + 224);

      return sub_1004064CC(v16, v15, v13, v14, v11, v12);
    }

    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      goto LABEL_6;
    }
  }

  v18 = *(v0 + 176);
  static Logger.install.getter();
  v19 = v18;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = *(v0 + 176);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v22;
    *v24 = v22;
    v25 = v22;
    _os_log_impl(&_mh_execute_header, v20, v21, "[%@] Blocking attempt to confirm install started by another distributor.", v23, 0xCu);
    sub_1000032A8(v24, &qword_10077F920);
  }

  v26 = *(v0 + 176);
  v28 = *(v0 + 144);
  v27 = *(v0 + 152);
  v29 = *(v0 + 112);
  v30 = *(v0 + 120);

  (*(v30 + 8))(v28, v29);
  type metadata accessor for InternalError();
  sub_100428444(&qword_10077F900, type metadata accessor for InternalError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  sub_1000032A8(v27, &qword_100783C40);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_100426FAC()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1004275A4;
  }

  else
  {
    v2 = sub_1004270C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_1004270C0()
{
  if (*(v0 + 224))
  {
    v1 = *(v0 + 192);
    v2 = *(v0 + 160);
    v3 = *(v0 + 16);
    *(swift_task_alloc() + 16) = v3;
    os_unfair_lock_lock((v2 + 24));
    sub_100428AA8((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));
    if (!v1)
    {
      v14 = *(v0 + 152);

      sub_1000032A8(v14, &qword_100783C40);

      v15 = *(v0 + 8);

      v15();
    }
  }

  else
  {
    v4 = *(v0 + 168);
    v5 = *(v0 + 72);
    v6 = type metadata accessor for MarketplaceKitError();
    sub_100428444(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    v7 = swift_allocError();
    *(v0 + 200) = v7;
    (*(*(v6 - 8) + 104))(v8, enum case for MarketplaceKitError.cancelled(_:), v6);
    v9 = v5[3];
    v10 = v5[7];
    v11 = v5[8];
    v12 = sub_100006D8C(v5, v9);
    v13 = swift_task_alloc();
    *(v0 + 208) = v13;
    *v13 = v0;
    v13[1] = sub_10042734C;

    sub_100422468(v7, v12, v4, v9, v10, v11);
  }
}

uint64_t sub_10042734C()
{

  return _swift_task_switch(sub_100427464, 0, 0);
}

void sub_100427464()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 160);
  v3 = *(v0 + 16);
  *(swift_task_alloc() + 16) = v3;
  os_unfair_lock_lock((v2 + 24));
  sub_100428AA8((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
  if (!v1)
  {
    v4 = *(v0 + 152);

    sub_1000032A8(v4, &qword_100783C40);

    v5 = *(v0 + 8);

    v5();
  }
}

uint64_t sub_1004275A4()
{
  v1 = v0[21];
  v2 = v0[9];
  v3 = v2[3];
  v4 = v2[7];
  v5 = v2[8];
  v6 = sub_100006D8C(v2, v3);
  v7 = swift_task_alloc();
  v0[27] = v7;
  *v7 = v0;
  v7[1] = sub_100427678;
  v8 = v0[24];

  return sub_100422468(v8, v6, v1, v3, v4, v5);
}

uint64_t sub_100427678()
{

  return _swift_task_switch(sub_100427774, 0, 0);
}

uint64_t sub_100427774()
{
  v1 = v0[22];
  v2 = v0[19];
  swift_willThrow();

  sub_1000032A8(v2, &qword_100783C40);

  v3 = v0[1];

  return v3();
}

unint64_t sub_100427854(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_100427938(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v6 = a1;
  v7 = *a1;
  result = sub_10042354C(*a1, a2, a3);
  v10 = result;
  if (v3)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v24 = v4;
  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_16;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_49;
    }

    v13 = *(v7 + 8 * v11 + 32);

LABEL_16:
    v14 = (*(v13 + 112) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_clientID);
    v15 = v14[1];
    if (!v15)
    {

      if (v10 != v11)
      {
        goto LABEL_25;
      }

      goto LABEL_8;
    }

    if (*v14 == a2 && v15 == v4)
    {
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {
        if (v10 != v11)
        {
LABEL_25:
          if ((v7 & 0xC000000000000001) != 0)
          {
            v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v10 & 0x8000000000000000) != 0)
            {
              goto LABEL_53;
            }

            v20 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v10 >= v20)
            {
              goto LABEL_54;
            }

            if (v11 >= v20)
            {
              goto LABEL_55;
            }

            v18 = *(v7 + 32 + 8 * v10);
            v19 = *(v7 + 32 + 8 * v11);
          }

          v21 = v6;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
          {
            v7 = sub_10065C2BC(v7);
            v22 = (v7 >> 62) & 1;
          }

          else
          {
            LODWORD(v22) = 0;
          }

          v23 = v7 & 0xFFFFFFFFFFFFFF8;
          *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v19;

          if ((v7 & 0x8000000000000000) != 0 || v22)
          {
            v7 = sub_10065C2BC(v7);
            v23 = v7 & 0xFFFFFFFFFFFFFF8;
            if ((v11 & 0x8000000000000000) != 0)
            {
LABEL_46:
              __break(1u);
              return v10;
            }
          }

          else if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_46;
          }

          if (v11 >= *(v23 + 16))
          {
            goto LABEL_52;
          }

          v6 = v21;
          *(v23 + 8 * v11 + 32) = v18;

          *v21 = v7;
          v4 = v24;
        }

LABEL_8:
        v12 = __OFADD__(v10++, 1);
        if (v12)
        {
          goto LABEL_51;
        }
      }
    }

    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

unint64_t sub_100427BFC(unint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  result = sub_100423690(*a1);
  v6 = result;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    if (v3 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  while (1)
  {
    if (v3 >> 62)
    {
      if (v7 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v6;
      }
    }

    else if (v7 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_15;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

LABEL_15:
    v9 = static UUID.== infix(_:_:)();

    if ((v9 & 1) == 0)
    {
      if (v6 != v7)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v12 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v12)
          {
            goto LABEL_45;
          }

          if (v7 >= v12)
          {
            goto LABEL_46;
          }

          v10 = *(v3 + 32 + 8 * v6);
          v11 = *(v3 + 32 + 8 * v7);
        }

        v13 = v2;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_10065C2BC(v3);
          v14 = (v3 >> 62) & 1;
        }

        else
        {
          LODWORD(v14) = 0;
        }

        v15 = v3 & 0xFFFFFFFFFFFFFF8;
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v11;

        if ((v3 & 0x8000000000000000) != 0 || v14)
        {
          v3 = sub_10065C2BC(v3);
          v15 = v3 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v6;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v7 >= *(v15 + 16))
        {
          goto LABEL_43;
        }

        v2 = v13;
        *(v15 + 8 * v7 + 32) = v10;

        *v13 = v3;
      }

      v8 = __OFADD__(v6++, 1);
      if (v8)
      {
        goto LABEL_42;
      }
    }

    v8 = __OFADD__(v7++, 1);
    if (v8)
    {
      goto LABEL_41;
    }
  }

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
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_100427E7C(uint64_t a1)
{
  type metadata accessor for ADP();
  v8 = *(v1 + 24);
  v9 = *(v1 + 16);
  v6 = *(v1 + 120);
  v7 = *(v1 + 112);
  v5 = *(v1 + 128);
  v11 = *(v1 + 104);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_100214EFC;

  return sub_100413314(a1, v9, v8, v1 + 32, v11, v7, v6, v5);
}

uint64_t sub_1004280C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100214EFC;

  return sub_10040E108();
}

uint64_t sub_100428178()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100428208;

  return sub_100412344(v0);
}

uint64_t sub_100428208(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_100428304(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001F0E54;

  return sub_1003F9F70(a1, v4);
}

uint64_t sub_1004283BC(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1000032A8(a1, &qword_100783C40);
  return sub_100005934(v3, a1, &qword_100783C40);
}

uint64_t sub_100428444(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10042848C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100214EFC;

  return sub_10040FC5C(a1, v4, v5, v6);
}

uint64_t sub_100428540(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1001F0E54;

  return sub_10040FC5C(a1, v4, v5, v6);
}

double sub_100428610(_OWORD *a1)
{
  result = 0.0;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_100428634()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100428674(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100214EFC;

  return sub_10041094C(a1, v4, v5, v6);
}

uint64_t sub_100428728(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_100412ACC(a1, v4, v5, v7, v6);
}

uint64_t sub_1004287E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100428850()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100428898(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_10040FE4C(a1, v4, v5, v7, v6);
}

uint64_t sub_100428958(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_100400814(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t sub_100428A54@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v6[2] = *(v2 + 16);
  result = sub_10020B0C8(sub_100428AE0, v6, v4);
  *a2 = result;
  return result;
}

uint64_t sub_100428B20(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_100428C3C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v5)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v5, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v6 - v5;
  if (__OFSUB__(0, v5 - v6))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = __OFADD__(v11, v10);
  result = v11 + v10;
  if (!v12)
  {
    sub_10041DCEC(result);
    return sub_100428B20(v6, v5, 0, v3);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_100428D18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100214EFC;

  return sub_10040BA4C(a1, v4, v5, v6, v7, v8, (v1 + 7));
}

uint64_t sub_100428E08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100428E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_100428FBC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_10036428C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_100428E70(v6, a2, 0, type metadata accessor for DownloadRequest);
  *v2 = v4;
  return result;
}

uint64_t sub_100429090(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1004290F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadRequest();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004291B8()
{
  *(v1 + 16) = v0;
  sub_1001F0C48(&unk_100780380);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100429254, 0, 0);
}

uint64_t sub_100429254()
{
  v1 = v0[2];
  v2 = *(*sub_100006D8C(v1, v1[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installDatabase);
  v0[4] = v2;
  v3 = v1[6];
  v0[5] = v3;

  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v3;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_100429364;

  return sub_10052F328(sub_10052F328, sub_100302850, v4, v2);
}

uint64_t sub_100429364()
{

  if (v0)
  {

    v1 = sub_100429694;
  }

  else
  {

    v1 = sub_1004294AC;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1004294AC()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v0[3];

  v4 = *(*sub_100006D8C(v2, v2[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_restoreManager);
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;
  v6[5] = v4;

  v7 = v1;
  sub_1004A673C(0, 0, v3, &unk_1006A12D0, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1004295D8()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_100429608()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001F0E54;

  return sub_1004291B8();
}

uint64_t sub_100429698(uint64_t a1, void *a2, uint64_t a3)
{
  v65 = a1;
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1001F0C48(&qword_10077E950);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v55 - v10;
  v12 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v56 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v18 = __chkstk_darwin(v17);
  v69 = &v55 - v19;
  v20 = __chkstk_darwin(v18);
  v68 = &v55 - v21;
  v22 = __chkstk_darwin(v20);
  v67 = &v55 - v23;
  __chkstk_darwin(v22);
  v66 = &v55 - v24;
  v63 = v25;
  v64 = v9;
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v26._countAndFlagsBits = 0xD000000000000022;
  v26._object = 0x80000001006CB410;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v26);
  v27._countAndFlagsBits = v65;
  v27._object = a2;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v27);
  if (a3 >= 1)
  {
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v28);
    v29._countAndFlagsBits = sub_10051CB0C(a3);
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v29);
  }

  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v30);
  v31 = v66;
  String.LocalizationValue.init(stringInterpolation:)();
  v32 = v67;
  String.LocalizationValue.init(stringLiteral:)();
  v33 = *(v14 + 16);
  v34 = v68;
  v33(v68, v31, v13);
  String.LocalizationValue.init(stringLiteral:)();
  String.LocalizationValue.init(stringLiteral:)();
  (*(v14 + 56))(v11, 0, 1, v13);
  if (qword_10077E558 != -1)
  {
    swift_once();
  }

  v35 = qword_1007B88B0;
  v36 = v63;
  v33(v63, v32, v13);
  v37 = v35;
  static Locale.current.getter();
  v55 = v37;
  v38 = String.init(localized:table:bundle:locale:comment:)();
  v61 = v39;
  v62 = v38;
  v33(v36, v34, v13);
  static Locale.current.getter();
  v40 = String.init(localized:table:bundle:locale:comment:)();
  v59 = v41;
  v60 = v40;
  v33(v36, v69, v13);
  static Locale.current.getter();
  v42 = String.init(localized:table:bundle:locale:comment:)();
  v57 = v43;
  v58 = v42;
  v65 = v11;
  v44 = v64;
  sub_1001F9140(v11, v64);
  v45 = 0;
  v46 = 0;
  if ((*(v14 + 48))(v44, 1, v13) != 1)
  {
    (*(v14 + 32))(v36, v44, v13);
    v33(v56, v36, v13);
    static Locale.current.getter();
    v47 = v55;
    v45 = String.init(localized:table:bundle:locale:comment:)();
    v46 = v48;
    (*(v14 + 8))(v36, v13);
  }

  type metadata accessor for SystemAlert();
  v49 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1001F91B0(v65);
  v50 = *(v14 + 8);
  v50(v69, v13);
  v50(v68, v13);
  v50(v67, v13);
  v50(v66, v13);
  v51 = v61;
  *(v49 + 112) = v62;
  *(v49 + 120) = v51;
  v52 = v59;
  *(v49 + 128) = v60;
  *(v49 + 136) = v52;
  v53 = v57;
  *(v49 + 144) = v58;
  *(v49 + 152) = v53;
  *(v49 + 160) = v45;
  *(v49 + 168) = v46;
  *(v49 + 176) = 0;
  return v49;
}

uint64_t sub_100429D00(uint64_t a1, void *a2, uint64_t a3)
{
  v63._countAndFlagsBits = a1;
  v63._object = a2;
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1001F0C48(&qword_10077E950);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v53 - v9;
  v11 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for String.LocalizationValue();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v54 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v17 = __chkstk_darwin(v16);
  v66 = &v53 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v53 - v20;
  v22 = __chkstk_darwin(v19);
  v65 = &v53 - v23;
  __chkstk_darwin(v22);
  v64 = &v53 - v24;
  v61 = v25;
  v62 = v8;
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v26._object = 0x80000001006CB490;
  v26._countAndFlagsBits = 0xD000000000000024;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v26);
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v63);
  if (a3 >= 1)
  {
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v27);
    v28._countAndFlagsBits = sub_10051CB0C(a3);
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v28);
  }

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v29);
  v30 = v64;
  String.LocalizationValue.init(stringInterpolation:)();
  v31 = v65;
  String.LocalizationValue.init(stringLiteral:)();
  v32 = *(v13 + 16);
  v32(v21, v30, v12);
  String.LocalizationValue.init(stringLiteral:)();
  String.LocalizationValue.init(stringLiteral:)();
  (*(v13 + 56))(v10, 0, 1, v12);
  if (qword_10077E558 != -1)
  {
    swift_once();
  }

  v33 = qword_1007B88B0;
  v34 = v61;
  v32(v61, v31, v12);
  v35 = v33;
  static Locale.current.getter();
  v53 = v35;
  v36 = String.init(localized:table:bundle:locale:comment:)();
  v59 = v37;
  v60 = v36;
  v63._object = v21;
  v32(v34, v21, v12);
  static Locale.current.getter();
  v38 = String.init(localized:table:bundle:locale:comment:)();
  v57 = v39;
  v58 = v38;
  v32(v34, v66, v12);
  static Locale.current.getter();
  v40 = String.init(localized:table:bundle:locale:comment:)();
  v55 = v41;
  v56 = v40;
  v63._countAndFlagsBits = v10;
  v42 = v62;
  sub_1001F9140(v10, v62);
  v43 = 0;
  v44 = 0;
  if ((*(v13 + 48))(v42, 1, v12) != 1)
  {
    (*(v13 + 32))(v34, v42, v12);
    v32(v54, v34, v12);
    static Locale.current.getter();
    v45 = v53;
    v43 = String.init(localized:table:bundle:locale:comment:)();
    v44 = v46;
    (*(v13 + 8))(v34, v12);
  }

  type metadata accessor for SystemAlert();
  v47 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1001F91B0(v63._countAndFlagsBits);
  v48 = *(v13 + 8);
  v48(v66, v12);
  v48(v63._object, v12);
  v48(v65, v12);
  v48(v64, v12);
  v49 = v59;
  *(v47 + 112) = v60;
  *(v47 + 120) = v49;
  v50 = v57;
  *(v47 + 128) = v58;
  *(v47 + 136) = v50;
  v51 = v55;
  *(v47 + 144) = v56;
  *(v47 + 152) = v51;
  *(v47 + 160) = v43;
  *(v47 + 168) = v44;
  *(v47 + 176) = 0;
  return v47;
}

uint64_t sub_10042A360(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_10042BD18();
  v4 = swift_task_alloc();
  v2[5] = v4;
  *v4 = v2;
  v4[1] = sub_10042A410;

  return dispatch thunk of AsyncIteratorProtocol.next()(v2 + 7, &type metadata for ThermalPressureMonitor.AsyncIterator, v3);
}

uint64_t sub_10042A410()
{
  v2 = *(*v1 + 24);
  *(*v1 + 48) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_10042BEA8;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_10042BEAC;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_10042A5A0(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_10042BD6C();
  v4 = swift_task_alloc();
  v2[5] = v4;
  *v4 = v2;
  v4[1] = sub_10042A410;

  return dispatch thunk of AsyncIteratorProtocol.next()(v2 + 7, &type metadata for RestoreStateObserver.AsyncIterator, v3);
}

uint64_t sub_10042A650(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_10042B1A0();
  v4 = swift_task_alloc();
  v2[5] = v4;
  *v4 = v2;
  v4[1] = sub_10042A700;

  return dispatch thunk of AsyncIteratorProtocol.next()(v2 + 7, &type metadata for DeviceStateObserver.AsyncIterator, v3);
}

uint64_t sub_10042A700()
{
  v2 = *(*v1 + 24);
  *(*v1 + 48) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_10042A8AC;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_10042A890;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_10042A8AC()
{
  v0[2] = v0[6];
  sub_1001F0C48(&unk_10077F940);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

BOOL sub_10042A954()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v23 - v6;
  v24 = 0;
  v25 = 0;
  if (AKSIdentityGetSessionTimeWindows())
  {
    v8 = *(v0 + 16);
    os_unfair_lock_lock((v8 + 40));
    v9 = *(v8 + 18);
    os_unfair_lock_unlock((v8 + 40));
    if (v9)
    {
      static Logger.general.getter();
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Skipping duration check, device is in lockout", v12, 2u);
      }

      (*(v2 + 8))(v7, v1);
      return 0;
    }

    else
    {
      return (v24 + 1) < 0x15181;
    }
  }

  else
  {
    v14 = v25;
    if (v25)
    {
      static Logger.general.getter();
      v15 = v14;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138543362;
        type metadata accessor for CFError(0);
        sub_10042BDC0();
        swift_allocError();
        *v20 = v15;
        v21 = v15;
        v22 = _swift_stdlib_bridgeErrorToNSError();
        *(v18 + 4) = v22;
        *v19 = v22;
        _os_log_impl(&_mh_execute_header, v16, v17, "Cannot determine device lock time: %{public}@", v18, 0xCu);
        sub_1001F8084(v19);
      }

      else
      {
        v21 = v16;
        v16 = v15;
      }

      (*(v2 + 8))(v5, v1);
    }

    return 1;
  }
}

void sub_10042AC70()
{
  v1 = type metadata accessor for DispatchQoS.QoSClass();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  out_token = -1;
  v5 = kMobileKeyBagLockStatusNotifyToken;
  sub_1001F0FB0();
  (*(v2 + 104))(v4, enum case for DispatchQoS.QoSClass.default(_:), v1);
  v6 = static OS_dispatch_queue.global(qos:)();
  (*(v2 + 8))(v4, v1);
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_10042BE50;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005DBC28;
  aBlock[3] = &unk_100764650;
  v8 = _Block_copy(aBlock);

  LODWORD(v5) = notify_register_dispatch(v5, &out_token, v6, v8);
  _Block_release(v8);

  if (!v5)
  {
    v9 = out_token;
    v10 = *(v0 + 16);
    os_unfair_lock_lock(v10 + 10);
    v10[5]._os_unfair_lock_opaque = v9;
    os_unfair_lock_unlock(v10 + 10);
    sub_10042B1F4();
  }
}

void sub_10042AE94()
{
  v1 = type metadata accessor for DispatchQoS.QoSClass();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  out_token = -1;
  sub_1001F0FB0();
  (*(v2 + 104))(v4, enum case for DispatchQoS.QoSClass.default(_:), v1);
  v5 = static OS_dispatch_queue.global(qos:)();
  (*(v2 + 8))(v4, v1);
  v6 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_10042BE18;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005DBC28;
  aBlock[3] = &unk_100764628;
  v7 = _Block_copy(aBlock);

  LODWORD(v4) = notify_register_dispatch("com.apple.BiometricKit.lockoutStateChanged", &out_token, v5, v7);
  _Block_release(v7);

  if (!v4)
  {
    v8 = out_token;
    v9 = *(v0 + 16);
    os_unfair_lock_lock(v9 + 10);
    v9[6]._os_unfair_lock_opaque = v8;
    os_unfair_lock_unlock(v9 + 10);
    sub_10042B618();
  }
}

uint64_t sub_10042B0B0()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 10);
  os_unfair_lock_opaque = v1[5]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v1 + 10);
  if (os_unfair_lock_opaque != -1)
  {
    notify_cancel(os_unfair_lock_opaque);
    os_unfair_lock_lock(v1 + 10);
    v1[5]._os_unfair_lock_opaque = -1;
    os_unfair_lock_unlock(v1 + 10);
  }

  v3 = *(v0 + 16);
  os_unfair_lock_lock(v3 + 10);
  v4 = v3[6]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v3 + 10);
  if (v4 != -1)
  {
    notify_cancel(v4);
    os_unfair_lock_lock(v3 + 10);
    v3[6]._os_unfair_lock_opaque = -1;
    os_unfair_lock_unlock(v3 + 10);
  }

  return swift_deallocClassInstance();
}

unint64_t sub_10042B1A0()
{
  result = qword_100783D48;
  if (!qword_100783D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783D48);
  }

  return result;
}

void sub_10042B1F4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 16);
  os_unfair_lock_lock((v6 + 40));
  v7 = *(v6 + 20);
  os_unfair_lock_unlock((v6 + 40));
  if (v7 != -1)
  {
    os_unfair_lock_lock((v6 + 40));
    v8 = *(v6 + 17);
    os_unfair_lock_unlock((v6 + 40));
    if ((v8 & 1) == 0)
    {
      v9 = MKBDeviceUnlockedSinceBoot() == 1;
      os_unfair_lock_lock((v6 + 40));
      *(v6 + 17) = v9;
      os_unfair_lock_unlock((v6 + 40));
    }

    v10 = MKBGetDeviceLockState();
    if (v10)
    {
      v11 = v10 == 3;
    }

    else
    {
      v11 = 1;
    }

    v12 = v11;
    os_unfair_lock_lock((v6 + 40));
    *(v6 + 16) = v12;
    os_unfair_lock_unlock((v6 + 40));
    static Logger.general.getter();

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109376;
      *(v15 + 4) = v12;
      *(v15 + 8) = 1024;
      os_unfair_lock_lock((v6 + 40));
      v16 = *(v6 + 17);
      os_unfair_lock_unlock((v6 + 40));
      *(v15 + 10) = v16;

      _os_log_impl(&_mh_execute_header, v13, v14, "Device state: unlocked = %{BOOL}d, since boot = %{BOOL}d", v15, 0xEu);
    }

    else
    {
    }

    (*(v3 + 8))(v5, v2);
    sub_10042B414(v12);
  }
}

uint64_t sub_10042B414(char a1)
{
  v3 = sub_1001F0C48(&qword_100781408);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - v5;
  v7 = *(v1 + 16);
  os_unfair_lock_lock((v7 + 40));
  v8 = *(v7 + 32);
  *(v7 + 32) = _swiftEmptyArrayStorage;
  os_unfair_lock_unlock((v7 + 40));
  v9 = *(v8 + 16);
  if (v9)
  {
    v12 = *(v4 + 16);
    v10 = v4 + 16;
    v11 = v12;
    v13 = (*(v10 + 64) + 32) & ~*(v10 + 64);
    v18 = v8;
    v14 = v8 + v13;
    v15 = *(v10 + 56);
    v16 = a1 & 1;
    do
    {
      v11(v6, v14, v3);
      v19 = v16;
      CheckedContinuation.resume(returning:)();
      (*(v10 - 8))(v6, v3);
      v14 += v15;
      --v9;
    }

    while (v9);
  }
}

uint64_t sub_10042B5B8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

void sub_10042B618()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 40));
  v2 = *(v1 + 24);
  os_unfair_lock_unlock((v1 + 40));
  if (v2 != -1)
  {
    v4 = 0;
    if (notify_get_state(v2, &v4) || (v3 = v4, HIDWORD(v4)))
    {
      os_unfair_lock_lock((v1 + 40));
      *(v1 + 18) = 0;
    }

    else
    {
      os_unfair_lock_lock((v1 + 40));
      *(v1 + 18) = v3 == 3;
    }

    os_unfair_lock_unlock((v1 + 40));
  }
}

uint64_t sub_10042B6D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_100781408);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  (*(v5 + 16))(&v12 - v6, a2, v4);
  v8 = *(a1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_100363CB4(0, v8[2] + 1, 1, v8);
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_100363CB4(v9 > 1, v10 + 1, 1, v8);
  }

  v8[2] = v10 + 1;
  result = (*(v5 + 32))(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v10, v7, v4);
  *(a1 + 16) = v8;
  return result;
}

void sub_10042B854(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  os_unfair_lock_lock(v2 + 10);
  sub_10042BCFC(&v2[4]);
  os_unfair_lock_unlock(v2 + 10);
}

uint64_t sub_10042B8A8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  return _swift_task_switch(sub_10042B8D0, 0, 0);
}

uint64_t sub_10042B8D0()
{
  if (static Task<>.isCancelled.getter())
  {
    **(v0 + 16) = 2;
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 32) = v3;
    *v3 = v0;
    v3[1] = sub_10042B9E8;
    v4 = *(v0 + 24);

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 40, 0, 0, 0x29287478656ELL, 0xE600000000000000, sub_10042BCF4, v4, &type metadata for Bool);
  }
}

uint64_t sub_10042B9E8()
{

  return _swift_task_switch(sub_10042BAE4, 0, 0);
}

uint64_t sub_10042BB08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_10042BBC4;

  return sub_10042A650(a2, a3);
}

uint64_t sub_10042BBC4(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

unint64_t sub_10042BD18()
{
  result = qword_100783D50;
  if (!qword_100783D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783D50);
  }

  return result;
}

unint64_t sub_10042BD6C()
{
  result = qword_100784370;
  if (!qword_100784370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784370);
  }

  return result;
}

unint64_t sub_10042BDC0()
{
  result = qword_1007805F0;
  if (!qword_1007805F0)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007805F0);
  }

  return result;
}

uint64_t sub_10042BEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[27] = a6;
  v7[28] = v6;
  v7[25] = a4;
  v7[26] = a5;
  v7[23] = a2;
  v7[24] = a3;
  v7[22] = a1;
  v8 = type metadata accessor for Logger();
  v7[29] = v8;
  v7[30] = *(v8 - 8);
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  v7[39] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v7[40] = v9;
  v7[41] = *(v9 - 8);
  v7[42] = swift_task_alloc();

  return _swift_task_switch(sub_10042C038, 0, 0);
}

void sub_10042C038()
{
  v170 = v0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  if (AppInstallRequest.isMarketplaceInstall.getter())
  {
    v2 = *(v0 + 328);
    v1 = *(v0 + 336);
    v3 = *(v0 + 320);
    AppInstallRequest.adp.getter();
    v4 = sub_1005D6710();
    v6 = v5;
    (*(v2 + 8))(v1, v3);
    if (v6)
    {
      v7 = &type metadata for WebDistributor;
      v8 = sub_100231E84();
LABEL_7:
      v13 = v8;
      sub_1000032A8(v0 + 16, &unk_10077FA50);
      *(v0 + 16) = v4;
      *(v0 + 24) = v6;
      *(v0 + 40) = v7;
      *(v0 + 48) = v13;
      sub_10042D85C(v0 + 16, v0 + 96);
      if (*(v0 + 120))
      {
        sub_1001DFDBC((v0 + 96), v0 + 56);
        v14 = *(v0 + 80);
        v15 = *(v0 + 88);
        sub_100006D8C((v0 + 56), v14);
        v16 = (*(v15 + 64))(v14, v15);
        v18 = v17;
        *(v0 + 344) = v16;
        v19 = swift_task_alloc();
        *(v0 + 352) = v19;
        *v19 = v0;
        v19[1] = sub_10042D250;
        v20 = *(v0 + 200);
        v21 = *(v0 + 208);
        v22 = *(v0 + 184);
        v23 = *(v0 + 192);

        sub_100322914(v16, v18 & 1, v22, v23, v20, v21);
        return;
      }

      v24 = *(v0 + 216);
      sub_1000032A8(v0 + 96, &unk_10077FA50);
      static Logger.install.getter();
      v25 = v24;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = *(v0 + 216);
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138412290;
        *(v29 + 4) = v28;
        *v30 = v28;
        v31 = v28;
        _os_log_impl(&_mh_execute_header, v26, v27, "[%@] No distributor found", v29, 0xCu);
        sub_1000032A8(v30, &qword_10077F920);
      }

      v32 = *(v0 + 248);
      goto LABEL_20;
    }

    v33 = *(v0 + 216);
    static Logger.install.getter();
    v34 = v33;
    v26 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v35))
    {
      v36 = *(v0 + 216);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      *(v37 + 4) = v36;
      *v38 = v36;
      v39 = v36;
      _os_log_impl(&_mh_execute_header, v26, v35, "[%@] No available distribution domain for install", v37, 0xCu);
      sub_1000032A8(v38, &qword_10077F920);
    }

    v32 = *(v0 + 312);
LABEL_20:
    v47 = *(v0 + 232);
    v48 = *(v0 + 240);

    (*(v48 + 8))(v32, v47);
    type metadata accessor for InternalError();
    sub_100274098();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_21;
  }

  v9 = audit_token_t.signingIdentifier.getter(*(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208));
  if (!v10)
  {
    v40 = *(v0 + 216);
    static Logger.install.getter();
    v41 = v40;
    v26 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v42))
    {
      v43 = *(v0 + 216);
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      *(v44 + 4) = v43;
      *v45 = v43;
      v46 = v43;
      _os_log_impl(&_mh_execute_header, v26, v42, "[%@] No signing identifier available", v44, 0xCu);
      sub_1000032A8(v45, &qword_10077F920);
    }

    v32 = *(v0 + 264);
    goto LABEL_20;
  }

  v4 = v9;
  v6 = v10;
  v11 = objc_allocWithZone(LSApplicationExtensionRecord);

  v12 = sub_10042D790();
  v50 = v12;
  if (!v12)
  {
    v7 = &type metadata for NativeDistributor;
    v8 = sub_1003000A4();
    goto LABEL_7;
  }

  v51 = [v50 extensionPointRecord];
  v52 = [v51 identifier];

  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v54;

  if (v53 == 0xD00000000000001FLL && 0x80000001006C49F0 == v55)
  {
  }

  else
  {
    v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v57 & 1) == 0)
    {
      v58 = *(v0 + 216);
      static Logger.install.getter();
      v59 = v58;
      v60 = v50;
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.error.getter();

      v63 = os_log_type_enabled(v61, v62);
      v64 = *(v0 + 272);
      v65 = *(v0 + 232);
      v66 = *(v0 + 240);
      if (v63)
      {
        v165 = *(v0 + 272);
        v67 = *(v0 + 216);
        v161 = *(v0 + 232);
        v68 = swift_slowAlloc();
        v157 = v62;
        v69 = swift_slowAlloc();
        v159 = swift_slowAlloc();
        *&v168 = v159;
        *v68 = 138412546;
        *(v68 + 4) = v67;
        *v69 = v67;
        *(v68 + 12) = 2082;
        v70 = v67;
        v71 = [v60 extensionPointRecord];
        v72 = v60;
        v73 = [v71 identifier];

        v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v76 = v75;

        v77 = sub_1002346CC(v74, v76, &v168);

        *(v68 + 14) = v77;
        _os_log_impl(&_mh_execute_header, v61, v157, "[%@] Ineligible extension point: %{public}s", v68, 0x16u);
        sub_1000032A8(v69, &qword_10077F920);

        sub_10000710C(v159);

        (*(v66 + 8))(v165, v161);
        type metadata accessor for InternalError();
        sub_100274098();
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      else
      {

        (*(v66 + 8))(v64, v65);
        type metadata accessor for InternalError();
        sub_100274098();
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      goto LABEL_21;
    }
  }

  v78 = [v50 containingBundleRecord];
  if (v78)
  {
    v79 = v78;
    objc_opt_self();
    v80 = swift_dynamicCastObjCClass();
    if (v80)
    {
      v81 = v80;
      v82 = v79;
      v83 = [v81 bundleIdentifier];
      if (v83)
      {
        v160 = v82;
        v156 = v50;
        v84 = v83;
        v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v158 = v86;

        v87 = sub_1001F6740(&off_100758A10);
        swift_arrayDestroy();
        v88 = 0;
        v89 = v87 + 56;
        v162 = v81;
        v90 = -1;
        v91 = -1 << *(v87 + 32);
        if (-v91 < 64)
        {
          v90 = ~(-1 << -v91);
        }

        v92 = v90 & *(v87 + 56);
        v93 = (63 - v91) >> 6;
        v155 = v85;
        while (v92)
        {
LABEL_46:

          v95 = [v81 entitlements];
          v96 = String._bridgeToObjectiveC()();

          sub_1003F9BE0();
          v97 = [v95 objectForKey:v96 ofClass:swift_getObjCClassFromMetadata()];

          if (v97)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v168 = 0u;
            v169 = 0u;
          }

          v92 &= v92 - 1;
          v98 = v168;
          *(v0 + 152) = v169;
          *(v0 + 136) = v98;
          v81 = v162;
          if (*(v0 + 160))
          {
            if (swift_dynamicCast())
            {
              v99 = *(v0 + 168);
              v100 = [v99 BOOLValue];

              if (v100)
              {
                v101 = *(v0 + 216);

                static Logger.install.getter();
                v102 = v101;
                v103 = v158;

                v104 = Logger.logObject.getter();
                v105 = static os_log_type_t.default.getter();

                v106 = os_log_type_enabled(v104, v105);
                v107 = *(v0 + 296);
                v109 = *(v0 + 232);
                v108 = *(v0 + 240);
                if (v106)
                {
                  v110 = *(v0 + 216);
                  v111 = swift_slowAlloc();
                  v166 = v107;
                  v112 = swift_slowAlloc();
                  v163 = v109;
                  v113 = swift_slowAlloc();
                  *&v168 = v113;
                  *v111 = 138412546;
                  *(v111 + 4) = v110;
                  *v112 = v110;
                  *(v111 + 12) = 2082;
                  v114 = v110;
                  v103 = v158;
                  v115 = v155;
                  *(v111 + 14) = sub_1002346CC(v155, v158, &v168);
                  _os_log_impl(&_mh_execute_header, v104, v105, "[%@] Attributing extension request to containing app %{public}s", v111, 0x16u);
                  sub_1000032A8(v112, &qword_10077F920);

                  sub_10000710C(v113);

                  (*(v108 + 8))(v166, v163);
                }

                else
                {

                  (*(v108 + 8))(v107, v109);
                  v115 = v155;
                }

                v154 = *(v0 + 176);
                v154[3] = &type metadata for NativeDistributor;
                v154[4] = sub_1003000A4();

                *v154 = v115;
                v154[1] = v103;
                sub_1000032A8(v0 + 16, &unk_10077FA50);

                v49 = *(v0 + 8);
                goto LABEL_22;
              }
            }
          }

          else
          {
            sub_1000032A8(v0 + 136, &qword_100783A30);
          }
        }

        while (1)
        {
          v94 = v88 + 1;
          if (__OFADD__(v88, 1))
          {
            __break(1u);
            return;
          }

          if (v94 >= v93)
          {
            break;
          }

          v92 = *(v89 + 8 * v94);
          ++v88;
          if (v92)
          {
            v88 = v94;
            goto LABEL_46;
          }
        }

        v127 = *(v0 + 216);
        v128 = v160;

        static Logger.install.getter();
        v129 = v127;

        v130 = Logger.logObject.getter();
        v131 = static os_log_type_t.error.getter();

        v132 = os_log_type_enabled(v130, v131);
        v133 = *(v0 + 304);
        v135 = *(v0 + 232);
        v134 = *(v0 + 240);
        if (v132)
        {
          v167 = *(v0 + 232);
          v136 = *(v0 + 216);
          v137 = swift_slowAlloc();
          v164 = v133;
          v138 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          *&v168 = v139;
          *v137 = 138412546;
          *(v137 + 4) = v136;
          *v138 = v136;
          *(v137 + 12) = 2082;
          v140 = v136;
          v141 = sub_1002346CC(v155, v158, &v168);

          *(v137 + 14) = v141;
          _os_log_impl(&_mh_execute_header, v130, v131, "[%@] Containing app %{public}s not authorized", v137, 0x16u);
          sub_1000032A8(v138, &qword_10077F920);

          sub_10000710C(v139);

          v128 = v160;

          (*(v134 + 8))(v164, v167);
        }

        else
        {

          (*(v134 + 8))(v133, v135);
        }

        type metadata accessor for InternalError();
        sub_100274098();
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      else
      {
        v142 = *(v0 + 216);

        static Logger.install.getter();
        v143 = v142;
        v144 = Logger.logObject.getter();
        v145 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v144, v145))
        {
          v146 = *(v0 + 216);
          v147 = swift_slowAlloc();
          v148 = v82;
          v149 = swift_slowAlloc();
          *v147 = 138412290;
          *(v147 + 4) = v146;
          *v149 = v146;
          v150 = v146;
          _os_log_impl(&_mh_execute_header, v144, v145, "[%@] No bundle ID available", v147, 0xCu);
          sub_1000032A8(v149, &qword_10077F920);
          v82 = v148;
        }

        v151 = *(v0 + 288);
        v153 = *(v0 + 232);
        v152 = *(v0 + 240);

        (*(v152 + 8))(v151, v153);
        type metadata accessor for InternalError();
        sub_100274098();
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      goto LABEL_21;
    }
  }

  v116 = *(v0 + 216);
  static Logger.install.getter();
  v117 = v116;
  v118 = Logger.logObject.getter();
  v119 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v118, v119))
  {
    v120 = *(v0 + 216);
    v121 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    *v121 = 138412290;
    *(v121 + 4) = v120;
    *v122 = v120;
    v123 = v120;
    _os_log_impl(&_mh_execute_header, v118, v119, "[%@] Containing bundle record not found", v121, 0xCu);
    sub_1000032A8(v122, &qword_10077F920);
  }

  v124 = *(v0 + 280);
  v126 = *(v0 + 232);
  v125 = *(v0 + 240);

  (*(v125 + 8))(v124, v126);
  type metadata accessor for InternalError();
  sub_100274098();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

LABEL_21:
  sub_1000032A8(v0 + 16, &unk_10077FA50);

  v49 = *(v0 + 8);
LABEL_22:

  v49();
}

uint64_t sub_10042D250(char a1)
{
  v4 = *v2;
  *(*v2 + 360) = v1;

  if (v1)
  {

    v5 = sub_10042D688;
  }

  else
  {
    *(v4 + 368) = a1 & 1;

    v5 = sub_10042D3A8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10042D3A8()
{
  if (*(v0 + 368) == 1)
  {
    v1 = *(v0 + 176);
    sub_1000032A8(v0 + 16, &unk_10077FA50);
    sub_1001DFDBC((v0 + 56), v1);

    v2 = *(v0 + 8);
  }

  else
  {
    v3 = *(v0 + 216);
    static Logger.install.getter();
    v4 = v3;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 216);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v7;
      *v9 = v7;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v5, v6, "[%@] Not entitled to perform this action", v8, 0xCu);
      sub_1000032A8(v9, &qword_10077F920);
    }

    v11 = *(v0 + 256);
    v12 = *(v0 + 232);
    v13 = *(v0 + 240);

    (*(v13 + 8))(v11, v12);
    type metadata accessor for InternalError();
    sub_100274098();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1000032A8(v0 + 16, &unk_10077FA50);
    sub_10000710C(v0 + 56);

    v2 = *(v0 + 8);
  }

  return v2();
}

uint64_t sub_10042D688()
{
  sub_1000032A8(v0 + 16, &unk_10077FA50);
  sub_10000710C(v0 + 56);

  v1 = *(v0 + 8);

  return v1();
}

id sub_10042D790()
{
  v1 = String._bridgeToObjectiveC()();

  v6 = 0;
  v2 = [v0 initWithBundleIdentifier:v1 error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_10042D85C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&unk_10077FA50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_10042D8CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v2 = a1;
  sub_100526940(0, v1, 0);
  v3 = v2 + 64;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v7 = *(v2 + 36);
  v25 = v2 + 72;
  v26 = v1;
  v27 = v7;
  v28 = v2 + 64;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_22;
    }

    if (v7 != *(v2 + 36))
    {
      goto LABEL_23;
    }

    v29 = v6;
    v10 = (*(v2 + 48) + 16 * v5);
    v11 = v10[1];
    v12 = (*(v2 + 56) + 16 * v5);
    v30 = *v12;
    v31 = *v10;
    v13 = v2;
    v14 = v12[1];
    v15 = *(&_swiftEmptyArrayStorage + 2);
    v16 = *(&_swiftEmptyArrayStorage + 3);

    if (v15 >= v16 >> 1)
    {
      result = sub_100526940((v16 > 1), v15 + 1, 1);
    }

    *(&_swiftEmptyArrayStorage + 2) = v15 + 1;
    v17 = (&_swiftEmptyArrayStorage + 32 * v15);
    v17[4] = v31;
    v17[5] = v11;
    v17[6] = v30;
    v17[7] = v14;
    v8 = 1 << *(v13 + 32);
    if (v5 >= v8)
    {
      goto LABEL_24;
    }

    v2 = v13;
    v3 = v28;
    v18 = *(v28 + 8 * v9);
    if ((v18 & (1 << v5)) == 0)
    {
      goto LABEL_25;
    }

    v7 = v27;
    if (v27 != *(v2 + 36))
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (v5 & 0x3F));
    if (v19)
    {
      v8 = __clz(__rbit64(v19)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v9 << 6;
      v21 = v9 + 1;
      v22 = (v25 + 8 * v9);
      while (v21 < (v8 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_100323C00(v5, v27, 0);
          v8 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_100323C00(v5, v27, 0);
    }

LABEL_4:
    v6 = v29 + 1;
    v5 = v8;
    if (v29 + 1 == v26)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10042DB34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_1001F0C48(&qword_100784078);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_100006D8C(a1, a1[3]);
  sub_10043C3BC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10042DCC8()
{
  if (*v0)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_10042DCFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10042DDD8(uint64_t a1)
{
  v2 = sub_10043C3BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10042DE14(uint64_t a1)
{
  v2 = sub_10043C3BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10042DE9C(void *a1)
{
  v3 = v1;
  v5 = sub_1001F0C48(&qword_100783FF0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100006D8C(a1, a1[3]);
  sub_10043C094();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v10[15] = 1;
    sub_1001F0C48(&qword_100783DF0);
    sub_10043AB8C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10[14] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10042E054(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_1001F0C48(&qword_100783E60);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_100006D8C(a1, a1[3]);
  sub_10043ACB8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10042E1E8()
{
  v1 = 0x736D61726170;
  if (*v0 != 1)
  {
    v1 = 1954047348;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65707954656D696DLL;
  }
}

uint64_t sub_10042E238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100433684(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10042E260(uint64_t a1)
{
  v2 = sub_10043C094();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10042E29C(uint64_t a1)
{
  v2 = sub_10043C094();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10042E2D8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100433798(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_10042E338(uint64_t a1)
{
  v2 = sub_10043ACB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10042E374(uint64_t a1)
{
  v2 = sub_10043ACB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10042E3B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100433A10(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_10042E400(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x646F6874656DLL;
    v6 = 0x7372655670747468;
    if (a1 != 2)
    {
      v6 = 0x7365696B6F6F63;
    }

    if (a1)
    {
      v5 = 7107189;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6174614474736F70;
    v2 = 0x6953726564616568;
    if (a1 != 7)
    {
      v2 = 0x657A695379646F62;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x73726564616568;
    if (a1 != 4)
    {
      v3 = 0x7274537972657571;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10042E524(void *a1)
{
  v3 = v1;
  v5 = sub_1001F0C48(&qword_100783E10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - v7;
  sub_100006D8C(a1, a1[3]);
  sub_10043A5F4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11[0]) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v11[0]) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11[0]) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v11[0] = *(v3 + 48);
    v13 = 3;
    sub_1001F0C48(&qword_100783DC0);
    sub_10043A9DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v11[0] = *(v3 + 56);
    v13 = 4;
    sub_1001F0C48(&qword_100783DD8);
    sub_10043AAB4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v11[0] = *(v3 + 64);
    v13 = 5;
    sub_1001F0C48(&qword_100783DF0);
    sub_10043AB8C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v9 = *(v3 + 88);
    v11[0] = *(v3 + 72);
    v11[1] = v9;
    v12 = *(v3 + 104);
    v13 = 6;
    sub_10043AC64();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v11[0]) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11[0]) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10042E874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1004343FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10042E89C(uint64_t a1)
{
  v2 = sub_10043A5F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10042E8D8(uint64_t a1)
{
  v2 = sub_10043A5F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10042E914@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1004346E8(a1, v9);
  if (!v2)
  {
    v5 = v13;
    a2[4] = v12;
    a2[5] = v5;
    v6 = v15;
    a2[6] = v14;
    a2[7] = v6;
    v7 = v9[1];
    *a2 = v9[0];
    a2[1] = v7;
    result = *&v10;
    v8 = v11;
    a2[2] = v10;
    a2[3] = v8;
  }

  return result;
}

uint64_t sub_10042E980(void *a1)
{
  v3 = sub_1001F0C48(&qword_100784130);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100006D8C(a1, a1[3]);
  sub_10043CE68();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10042EB40()
{
  v1 = 1702521203;
  v2 = 1954047348;
  if (*v0 != 2)
  {
    v2 = 0x676E69646F636E65;
  }

  if (*v0)
  {
    v1 = 0x65707954656D696DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10042EBA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100434CF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10042EBD0(uint64_t a1)
{
  v2 = sub_10043CE68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10042EC0C(uint64_t a1)
{
  v2 = sub_10043CE68();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10042EC48@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100434E54(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_10042ECB0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x737574617473;
    v6 = 0x7372655670747468;
    if (a1 != 2)
    {
      v6 = 0x7365696B6F6F63;
    }

    if (a1)
    {
      v5 = 0x6554737574617473;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7463657269646572;
    v2 = 0x5373726564616568;
    if (a1 != 7)
    {
      v2 = 0x657A695379646F62;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x73726564616568;
    if (a1 != 4)
    {
      v3 = 0x746E65746E6F63;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10042EDE4(void *a1)
{
  v3 = v1;
  v5 = sub_1001F0C48(&qword_100784038);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7 - 8];
  sub_100006D8C(a1, a1[3]);
  sub_10043C0E8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v14 = *(v3 + 40);
    v13[0] = 3;
    sub_1001F0C48(&qword_100783DC0);
    sub_10043A9DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v14 = *(v3 + 48);
    v13[0] = 4;
    sub_1001F0C48(&qword_100783DD8);
    sub_10043AAB4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v9 = *(v3 + 72);
    v18[0] = *(v3 + 56);
    v18[1] = v9;
    v18[2] = *(v3 + 88);
    v19 = *(v3 + 104);
    v10 = *(v3 + 72);
    v14 = *(v3 + 56);
    v15 = v10;
    v16 = *(v3 + 88);
    v17 = *(v3 + 104);
    v20 = 5;
    sub_10043C2DC(v18, v13);
    sub_10043C314();
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    LOBYTE(v14) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10042F160(void *a1)
{
  v3 = sub_1001F0C48(&qword_100784138);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100006D8C(a1, a1[3]);
  sub_10043CEBC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10042F328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10043559C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10042F350(uint64_t a1)
{
  v2 = sub_10043C0E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10042F38C(uint64_t a1)
{
  v2 = sub_10043C0E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10042F3C8@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10043588C(a1, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a2 + 96) = v8[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v8[8];
    v6 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v6;
    v7 = v8[5];
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v7;
    result = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_10042F43C()
{
  v1 = 0x73657269707865;
  v2 = 1734431845;
  if (*v0 != 2)
  {
    v2 = 0x746E756F43746968;
  }

  if (*v0)
  {
    v1 = 0x656363417473616CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10042F4B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100435EDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10042F4DC(uint64_t a1)
{
  v2 = sub_10043CEBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10042F518(uint64_t a1)
{
  v2 = sub_10043CEBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10042F554@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100436048(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_10042F5BC(void *a1)
{
  v3 = v1;
  v5 = sub_1001F0C48(&qword_100784048);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16[-v7 - 8];
  sub_100006D8C(a1, a1[3]);
  sub_10043C190();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v23[0] = *v3;
  v23[1] = v9;
  v11 = *v3;
  v10 = v3[1];
  v23[2] = v3[2];
  v24 = *(v3 + 6);
  v17 = v11;
  v18 = v10;
  v19 = v3[2];
  v20 = *(v3 + 6);
  v25 = 0;
  sub_100005934(v23, v16, &qword_100784050);
  sub_10043C368();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  sub_10043C238(v17, *(&v17 + 1), v18, *(&v18 + 1));
  if (!v2)
  {
    v12 = *(v3 + 72);
    v21[0] = *(v3 + 56);
    v21[1] = v12;
    v21[2] = *(v3 + 88);
    v22 = *(v3 + 13);
    v13 = *(v3 + 72);
    v17 = *(v3 + 56);
    v18 = v13;
    v19 = *(v3 + 88);
    v20 = *(v3 + 13);
    v25 = 1;
    sub_100005934(v21, v16, &qword_100784050);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10043C238(v17, *(&v17 + 1), v18, *(&v18 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10042F814()
{
  if (*v0)
  {
    return 0x7165527265746661;
  }

  else
  {
    return 0x655265726F666562;
  }
}

uint64_t sub_10042F864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x655265726F666562 && a2 == 0xED00007473657571;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7165527265746661 && a2 == 0xEC00000074736575)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10042F94C(uint64_t a1)
{
  v2 = sub_10043C190();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10042F988(uint64_t a1)
{
  v2 = sub_10043C190();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10042F9C4@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100436328(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v7[6];
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_10042FA30(void *a1)
{
  v3 = sub_1001F0C48(&qword_100784060);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100006D8C(a1, a1[3]);
  sub_10043C288();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[10] = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[9] = 6;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10042FC60(void *a1)
{
  v3 = sub_1001F0C48(&qword_100783FE8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100006D8C(a1, a1[3]);
  sub_10043BFD8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10042FE40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_1001F0C48(&qword_100783E78);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_100006D8C(a1, a1[3]);
  sub_10043AD0C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10042FFD4()
{
  v1 = *v0;
  v2 = 0x64656B636F6C62;
  v3 = 0x65766965636572;
  if (v1 != 5)
  {
    v3 = 7107443;
  }

  v4 = 1684956531;
  if (v1 != 3)
  {
    v4 = 1953063287;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 7564900;
  if (v1 != 1)
  {
    v5 = 0x7463656E6E6F63;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100430090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100437980(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1004300C4(uint64_t a1)
{
  v2 = sub_10043C288();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100430100(uint64_t a1)
{
  v2 = sub_10043C288();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10043013C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100437BC8(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1004301B0()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 1752457584;
  v4 = 0x6E69616D6F64;
  if (v1 != 3)
  {
    v4 = 0x73657269707865;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65756C6176;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100430234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100437E70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10043025C(uint64_t a1)
{
  v2 = sub_10043BFD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100430298(uint64_t a1)
{
  v2 = sub_10043BFD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1004302D4@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100438018(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_100430338(uint64_t a1)
{
  v2 = sub_10043AD0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100430374(uint64_t a1)
{
  v2 = sub_10043AD0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004303DC@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_100430430@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_1001F0C48(&qword_100780E08);
  __chkstk_darwin(v1 - 8);
  v29 = &v24 - v2;
  v28 = type metadata accessor for TimeZone();
  v3 = *(v28 - 8);
  __chkstk_darwin(v28);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v5 = *(v27 - 8);
  __chkstk_darwin(v27);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  __chkstk_darwin(v16);
  (*(v18 + 104))(&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Date.ISO8601FormatStyle.DateSeparator.dash(_:));
  v19 = v12;
  v20 = v28;
  (*(v13 + 104))(v15, enum case for Date.ISO8601FormatStyle.DateTimeSeparator.standard(_:), v19);
  v21 = v7;
  v22 = v29;
  (*(v9 + 104))(v11, enum case for Date.ISO8601FormatStyle.TimeSeparator.colon(_:), v8);
  (*(v5 + 104))(v21, enum case for Date.ISO8601FormatStyle.TimeZoneSeparator.omitted(_:), v27);
  TimeZone.init(secondsFromGMT:)();
  result = (*(v3 + 48))(v22, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 32))(v25, v22, v20);
    return Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
  }

  return result;
}

uint64_t sub_100430834(void *a1)
{
  v3 = v1;
  v5 = sub_1001F0C48(&qword_100783EB0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31[-v7];
  sub_100006D8C(a1, a1[3]);
  sub_10043AD60();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v49) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v49) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v75[4] = *(v3 + 88);
    v75[5] = *(v3 + 104);
    v75[6] = *(v3 + 120);
    v75[7] = *(v3 + 136);
    v75[0] = *(v3 + 24);
    v75[1] = *(v3 + 40);
    v75[2] = *(v3 + 56);
    v75[3] = *(v3 + 72);
    v9 = *(v3 + 104);
    v64 = *(v3 + 88);
    v65 = v9;
    v10 = *(v3 + 136);
    v66 = *(v3 + 120);
    v67 = v10;
    v11 = *(v3 + 40);
    v60 = *(v3 + 24);
    v61 = v11;
    v12 = *(v3 + 72);
    v62 = *(v3 + 56);
    v63 = v12;
    v59 = 2;
    sub_10043A974(v75, &v49);
    sub_10043AFCC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v58[4] = v64;
    v58[5] = v65;
    v58[6] = v66;
    v58[7] = v67;
    v58[0] = v60;
    v58[1] = v61;
    v58[2] = v62;
    v58[3] = v63;
    sub_10043A9AC(v58);
    v13 = *(v3 + 248);
    v74[5] = *(v3 + 232);
    v74[6] = v13;
    v14 = *(v3 + 280);
    v74[7] = *(v3 + 264);
    v15 = *(v3 + 264);
    v74[8] = v14;
    v16 = *(v3 + 168);
    v17 = *(v3 + 200);
    v74[2] = *(v3 + 184);
    v74[3] = v17;
    v74[4] = *(v3 + 216);
    v74[0] = *(v3 + 152);
    v74[1] = v16;
    v18 = *(v3 + 232);
    v55 = *(v3 + 248);
    v56 = v15;
    v57 = *(v3 + 280);
    v19 = *(v3 + 168);
    v20 = *(v3 + 200);
    v51 = *(v3 + 184);
    v52 = v20;
    v53 = *(v3 + 216);
    v54 = v18;
    v49 = *(v3 + 152);
    v50 = v19;
    v48 = 3;
    sub_10043B020(v74, v47);
    sub_10043B058();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v47[6] = v55;
    v47[7] = v56;
    v47[8] = v57;
    v47[2] = v51;
    v47[3] = v52;
    v47[4] = v53;
    v47[5] = v54;
    v47[0] = v49;
    v47[1] = v50;
    sub_10043ADE4(v47);
    v21 = *(v3 + 344);
    v22 = *(v3 + 376);
    v71 = *(v3 + 360);
    v72 = v22;
    v23 = *(v3 + 376);
    v73 = *(v3 + 392);
    v24 = *(v3 + 312);
    v68[0] = *(v3 + 296);
    v68[1] = v24;
    v25 = *(v3 + 344);
    v27 = *(v3 + 296);
    v26 = *(v3 + 312);
    v69 = *(v3 + 328);
    v70 = v25;
    v44 = v71;
    v45 = v23;
    v46 = *(v3 + 392);
    v40 = v27;
    v41 = v26;
    v42 = v69;
    v43 = v21;
    v39 = 4;
    sub_10043B0AC(v68, v38);
    sub_10043B0E4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v38[4] = v44;
    v38[5] = v45;
    v38[6] = v46;
    v38[0] = v40;
    v38[1] = v41;
    v38[2] = v42;
    v38[3] = v43;
    sub_10043ADB4(v38);
    v28 = *(v3 + 456);
    v34 = *(v3 + 440);
    v35 = v28;
    v36 = *(v3 + 472);
    v37 = *(v3 + 488);
    v29 = *(v3 + 424);
    v32 = *(v3 + 408);
    v33 = v29;
    v31[15] = 5;
    sub_10043B138();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v32) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v32) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100430D58()
{
  v1 = *v0;
  v2 = 0x4464657472617473;
  v3 = 0x5049726576726573;
  if (v1 != 6)
  {
    v3 = 0x697463656E6E6F63;
  }

  v4 = 0x6568636163;
  if (v1 != 4)
  {
    v4 = 0x73676E696D6974;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x74736575716572;
  if (v1 != 2)
  {
    v5 = 0x65736E6F70736572;
  }

  if (*v0)
  {
    v2 = 1701669236;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100430E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1004385D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100430E98(uint64_t a1)
{
  v2 = sub_10043AD60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100430ED4(uint64_t a1)
{
  v2 = sub_10043AD60();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100430F10@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10043887C(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x210uLL);
  }

  return result;
}

uint64_t sub_100430F74(void *a1)
{
  v3 = v1;
  v5 = sub_1001F0C48(&qword_100783F08);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_100006D8C(a1, a1[3]);
  sub_10043B18C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9 = *(v3 + 32);
    v13 = *(v3 + 16);
    v14 = v9;
    v12 = 1;
    sub_10043B30C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v13 = *(v3 + 48);
    v12 = 2;
    sub_1001F0C48(&qword_100783EF0);
    sub_10043B360();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10043115C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100439524(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100431184(uint64_t a1)
{
  v2 = sub_10043B18C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004311C0(uint64_t a1)
{
  v2 = sub_10043B18C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1004311FC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10043963C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_100431264(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  *&v89 = a5;
  v93 = a4;
  v91 = a3;
  v87 = a2;
  v85 = a1;
  v92 = type metadata accessor for URLRequest();
  v90 = *(v92 - 8);
  v5 = __chkstk_darwin(v92);
  v86 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v88 = &v81 - v7;
  v102 = type metadata accessor for Date();
  v97 = *(v102 - 8);
  v8 = __chkstk_darwin(v102);
  v84 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v81 - v10;
  v12 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v12 - 8);
  v96.opaque[0] = &v81 - v13;
  v14 = type metadata accessor for URL();
  v105 = *(v14 - 8);
  __chkstk_darwin(v14);
  v99 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v94 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v83 = &v81 - v21;
  __chkstk_darwin(v20);
  v23 = &v81 - v22;
  v24 = sub_1001F0C48(&unk_10077F8E0);
  v25 = __chkstk_darwin(v24 - 8);
  v27 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v25);
  v30 = &v81 - v29;
  __chkstk_darwin(v28);
  v32 = &v81 - v31;
  v103 = v17;
  v33 = *(v17 + 56);
  v100 = v16;
  v33(&v81 - v31, 1, 1, v16);
  v98 = v32;
  sub_100005934(v32, v30, &unk_10077F8E0);
  type metadata accessor for LogActivity();
  v34 = swift_allocObject();
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v104 = v14;
  v35 = _os_activity_create(&_mh_execute_header, "HTTPArchive", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v35, &state);
  swift_unknownObjectRelease();
  v34[1] = state;
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  *&v95 = v11;
  TaskLocal.get()();
  v36 = state.opaque[1];
  if (state.opaque[1])
  {
  }

  else
  {
    sub_1001F0C48(&qword_100784310);
    v36 = swift_allocObject();
    *(v36 + 24) = 0;
    *(v36 + 16) = 0;
  }

  v37 = v102;
  v102 = v34;
  type metadata accessor for Transaction();
  v38 = swift_allocObject();

  *(v38 + 16) = StaticString.description.getter();
  *(v38 + 24) = v39;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  v101 = v38;
  sub_1005B8C24(&off_100788658, v38);
  v82 = 0;
  os_unfair_lock_unlock(&dword_100788650);
  sub_100005934(v30, v27, &unk_10077F8E0);
  v40 = v103;
  v41 = v100;
  if ((*(v103 + 48))(v27, 1, v100) == 1)
  {
    sub_1000032A8(v30, &unk_10077F8E0);

    v42 = 0;
  }

  else
  {
    (*(v40 + 32))(v23, v27, v41);
    v43 = v83;
    (*(v40 + 16))(v83, v23, v41);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v44 = sub_1005AD4D8("HTTPArchive", 11, 2, v43);

    (*(v40 + 8))(v23, v41);
    sub_1000032A8(v30, &unk_10077F8E0);
    v42 = v44;
  }

  v45 = v105;
  v46 = v97;
  state.opaque[0] = v102;
  state.opaque[1] = v36;
  *&v111 = v101;
  *(&v111 + 1) = v42;
  v97 = v42;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  sub_1001F0C48(&qword_100783D78);
  swift_task_localValuePush();
  os_unfair_lock_lock((v36 + 24));
  v47 = *(v36 + 16);
  v48 = v47;
  os_unfair_lock_unlock((v36 + 24));
  if (v47)
  {
    sub_100625B04();
  }

  v49 = v95;
  static Date.now.getter();
  v50 = v96.opaque[0];
  sub_100431F3C(v96.opaque[0]);
  v51 = *(v46 + 8);
  v51(v49, v37);
  v52 = v104;
  if ((*(v45 + 48))(v50, 1, v104) == 1)
  {
    sub_1000032A8(v50, &unk_1007809F0);
  }

  else
  {
    v83 = v36;
    (*(v45 + 32))(v99, v50, v52);
    v53 = v84;
    static Date.now.getter();
    static Date.- infix(_:_:)();
    v51(v53, v37);
    sub_100439928();
    v51(v49, v37);
    v54 = v90;
    v55 = *(v90 + 16);
    v56 = v88;
    v57 = v92;
    v55(v88, v85, v92);
    v58 = v86;
    v55(v86, v56, v57);
    v59 = v87;
    v60 = v91;
    v61 = v93;
    sub_10020ABFC(v91, v93);
    v62 = v89;
    v63 = v89;
    sub_100439020(v58, v59, v60, v61, v62, &state);
    v96 = state;
    v95 = v111;
    v64 = v112;
    v89 = v113;

    sub_100007158(v60, v61);
    (*(v54 + 8))(v56, v57);
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    v106 = v96;
    v107 = v95;
    v108 = v64;
    v109 = v89;
    sub_10043A21C();
    v65 = v82;
    v66 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    if (v65)
    {

      sub_10043A270(&state);
      v68 = v105;
      v69 = v99;
      v70 = v103;
      v71 = v94;
      static Logger.general.getter();
      swift_errorRetain();
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *v77 = 138412290;
        swift_errorRetain();
        v79 = _swift_stdlib_bridgeErrorToNSError();
        *(v77 + 4) = v79;
        *v78 = v79;
        _os_log_impl(&_mh_execute_header, v75, v76, "Failed to persist HTTP archive: %@", v77, 0xCu);
        sub_1000032A8(v78, &qword_10077F920);

        v68 = v105;
      }

      (*(v70 + 8))(v71, v100);
      (*(v68 + 8))(v69, v104);
    }

    else
    {
      v72 = v66;
      v73 = v67;

      sub_10043A270(&state);
      v74 = v99;
      Data.write(to:options:)();
      (*(v105 + 8))(v74, v104);
      sub_100007158(v72, v73);
    }
  }

  swift_task_localValuePop();

  return sub_1000032A8(v98, &unk_10077F8E0);
}

uint64_t sub_100431F3C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL.DirectoryHint();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001F0C48(&unk_1007809F0);
  v7 = __chkstk_darwin(v6);
  v9 = v18 - v8;
  if (qword_10077E530 != -1)
  {
    v17 = v7;
    swift_once();
    v7 = v17;
  }

  v10 = sub_1002710CC(v7, qword_100783D60);
  sub_100005934(v10, v9, &unk_1007809F0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_1000032A8(v9, &unk_1007809F0);
    v13 = 1;
  }

  else
  {
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    v14._object = 0x80000001006CB580;
    v14._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v14);
    Date.timeIntervalSinceReferenceDate.getter();
    Double.write<A>(to:)();
    v15._countAndFlagsBits = 1918986286;
    v15._object = 0xE400000000000000;
    String.append(_:)(v15);
    (*(v3 + 104))(v5, enum case for URL.DirectoryHint.inferFromPath(_:), v2);
    sub_100005E50();
    URL.appending<A>(component:directoryHint:)();
    (*(v3 + 8))(v5, v2);

    (*(v12 + 8))(v9, v11);
    v13 = 0;
  }

  return (*(v12 + 56))(a1, v13, 1, v11);
}

uint64_t sub_100432248()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_100006190(0, &qword_1007801B8);
  static DispatchQoS.utility.getter();
  v7[1] = &_swiftEmptyArrayStorage;
  sub_1000062EC();
  sub_1001F0C48(&unk_1007801C0);
  sub_100006344();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100783D58 = result;
  return result;
}

uint64_t sub_100432464()
{
  v0 = sub_1001F0C48(&unk_1007809F0);
  sub_100367DEC(v0, qword_100783D60);
  v1 = sub_1002710CC(v0, qword_100783D60);
  return sub_1004324BC(v1);
}

uint64_t sub_1004324BC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = type metadata accessor for URL.DirectoryHint();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v28 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  v27 = objc_opt_self();
  v15 = [v27 defaultManager];
  v16 = [v15 URLsForDirectory:5 inDomains:1];

  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v17 + 16))
  {
    (*(v10 + 16))(v14, v17 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v9);

    (*(v6 + 104))(v8, enum case for URL.DirectoryHint.inferFromPath(_:), v5);
    sub_100005E50();
    URL.appending<A>(components:directoryHint:)();
    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v14, v9);
    (*(v10 + 56))(a1, 0, 1, v9);
  }

  else
  {

    (*(v10 + 56))(a1, 1, 1, v9);
  }

  sub_100005934(a1, v4, &unk_1007809F0);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    return sub_1000032A8(v4, &unk_1007809F0);
  }

  (*(v10 + 32))(v28, v4, v9);
  v19 = [v27 defaultManager];
  URL._bridgeToObjectiveC()(v20);
  v22 = v21;
  v29 = 0;
  v23 = [v19 createDirectoryAtURL:v21 withIntermediateDirectories:1 attributes:0 error:&v29];

  if (v23)
  {
    v24 = v29;
  }

  else
  {
    v25 = v29;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return (*(v10 + 8))(v28, v9);
}

uint64_t sub_100432914(void *a1)
{
  v2 = v1;
  v4 = sub_1001F0C48(&qword_100783D98);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11[-v6 - 8];
  sub_100006D8C(a1, a1[3]);
  sub_10043A514();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = *(v2 + 16);
  v12 = *v2;
  v13 = v8;
  v14 = *(v2 + 32);
  v15 = *(v2 + 48);
  sub_10043A568(v2, v11);
  sub_10043A5A0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100432AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 6778732 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100432B3C(uint64_t a1)
{
  v2 = sub_10043A514();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100432B78(uint64_t a1)
{
  v2 = sub_10043A514();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100432BB4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10043B438(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

void *sub_100432C48@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
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

      return _swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_100362568(0, 1, 1, _swiftEmptyArrayStorage);
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
    v14 = sub_100362568((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = _swiftEmptyArrayStorage;
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
        v19 = String.subscript.getter();
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

        v14 = String.index(after:)();
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
        v18 = String.index(after:)();
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
          v7 = String.subscript.getter();
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

        v14 = sub_100362568(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_100362568(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_100362568((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100433008(void *a1)
{
  v3 = sub_1001F0C48(&qword_100784068);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100006D8C(a1, a1[3]);
  sub_10043C3BC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v10 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000710C(a1);
  return v7;
}

uint64_t sub_1004331EC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for URLQueryItem();
  v56 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URLComponents();
  v55 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v16 - 8);
  if (a2 >> 60 == 15)
  {

    a3 = 0;
    a4 = 0;
    goto LABEL_10;
  }

  if (!a4)
  {
    result = sub_10020B0E0(a1, a2);
    a3 = 0;
    goto LABEL_10;
  }

  v50 = v15;
  if (a3 == 0xD000000000000010 && 0x80000001006C4680 == a4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    static String.Encoding.utf8.getter();
    countAndFlagsBits = String.init(data:encoding:)();
  }

  else
  {
    if (a3 == 0xD000000000000021 && 0x80000001006CA760 == a4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v57 = v12;
      v23 = v50;
      URLComponents.init()();
      static String.Encoding.utf8.getter();
      String.init(data:encoding:)();
      URLComponents.percentEncodedQuery.setter();
      v24 = URLComponents.queryItems.getter();
      if (v24)
      {
        v54 = v10;
        v25 = *(v24 + 16);
        if (v25)
        {
          v44 = v13;
          v45 = a1;
          v46 = a2;
          v47 = a3;
          v48 = a4;
          v49 = a5;
          v58 = _swiftEmptyArrayStorage;
          v26 = v24;
          sub_100526920(0, v25, 0);
          v27 = v57;
          v22 = v58;
          v28 = *(v56 + 16);
          v29 = *(v56 + 80);
          v43 = v26;
          v30 = v26 + ((v29 + 32) & ~v29);
          v52 = *(v56 + 72);
          v53 = v28;
          v56 += 16;
          v51 = (v56 - 8);
          do
          {
            v31 = v54;
            v53(v27, v30, v54);
            v32 = URLQueryItem.name.getter();
            v34 = v33;
            v35 = URLQueryItem.value.getter();
            v27 = v57;
            v36 = v35;
            v38 = v37;
            (*v51)(v57, v31);
            v58 = v22;
            v40 = v22[2];
            v39 = v22[3];
            if (v40 >= v39 >> 1)
            {
              sub_100526920((v39 > 1), v40 + 1, 1);
              v27 = v57;
              v22 = v58;
            }

            v22[2] = v40 + 1;
            v41 = &v22[4 * v40];
            v41[4] = v32;
            v41[5] = v34;
            v41[6] = v36;
            v41[7] = v38;
            v30 += v52;
            --v25;
          }

          while (v25);
          (*(v55 + 8))(v50, v44);
          sub_10020B0E0(v45, v46);

          a4 = v48;
          a5 = v49;
          a3 = v47;
        }

        else
        {

          sub_10020B0E0(a1, a2);
          result = (*(v55 + 8))(v23, v13);
          v22 = _swiftEmptyArrayStorage;
        }

        goto LABEL_11;
      }

      sub_10020B0E0(a1, a2);
      result = (*(v55 + 8))(v23, v13);
LABEL_10:
      v22 = 0;
LABEL_11:
      v20 = 0;
      v21 = 0;
      goto LABEL_12;
    }

    v42 = Data.base64EncodedString(options:)(0);
    object = v42._object;
    countAndFlagsBits = v42._countAndFlagsBits;
  }

  v20 = countAndFlagsBits;
  v21 = object;
  result = sub_10020B0E0(a1, a2);
  v22 = 0;
LABEL_12:
  *a5 = a3;
  a5[1] = a4;
  a5[2] = v22;
  a5[3] = v20;
  a5[4] = v21;
  return result;
}

uint64_t sub_100433684(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65707954656D696DLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D61726170 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100433798@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1001F0C48(&qword_100783FD8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_100006D8C(a1, a1[3]);
  sub_10043C094();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000710C(a1);
  }

  v24 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v20 = v9;
  sub_1001F0C48(&qword_100783DF0);
  v23 = 1;
  sub_10043A848();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v19 = v21;
  v22 = 2;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13 = v8;
  v15 = v14;
  (*(v6 + 8))(v13, v5);
  result = sub_10000710C(a1);
  v17 = v19;
  *a2 = v20;
  a2[1] = v11;
  a2[2] = v17;
  a2[3] = v12;
  a2[4] = v15;
  return result;
}

uint64_t sub_100433A10(void *a1)
{
  v3 = sub_1001F0C48(&qword_100783E50);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100006D8C(a1, a1[3]);
  sub_10043ACB8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v10 = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000710C(a1);
  return v7;
}

uint64_t sub_100433BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v91 = type metadata accessor for URLQueryItem();
  *&v92 = *(v91 - 8);
  __chkstk_darwin(v91);
  v90 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F0C48(&unk_1007803A0);
  __chkstk_darwin(v5 - 8);
  v85 = &v73 - v6;
  v7 = type metadata accessor for URLComponents();
  v81 = *(v7 - 8);
  v82 = v7;
  __chkstk_darwin(v7);
  v78 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v79 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001F0C48(&unk_1007809F0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v73 - v16;
  v18 = URLRequest.httpMethod.getter();
  v88 = v19;
  v89 = v18;
  URLRequest.url.getter();
  v20 = *(v10 + 48);
  v21 = v20(v17, 1, v9);
  v80 = v10;
  if (v21 == 1)
  {
    v22 = v9;
    sub_1000032A8(v17, &unk_1007809F0);
    v23 = 0;
    v86 = 0xE000000000000000;
  }

  else
  {
    v23 = URL.absoluteString.getter();
    v86 = v24;
    v25 = *(v10 + 8);
    v22 = v9;
    v25(v17, v9);
  }

  v26 = URLRequest.allHTTPHeaderFields.getter();
  v27 = _swiftEmptyArrayStorage;
  v28 = v85;
  if (v26)
  {
    v27 = sub_10042D8CC(v26);
  }

  v29 = URLRequest.httpBody.getter();
  v87 = v23;
  if (v30 >> 60 != 15)
  {
    v33 = v27;
    v34 = v29;
    v35 = v30;
    sub_10020ABFC(v29, v30);
    v36._countAndFlagsBits = 0x2D746E65746E6F43;
    v36._object = 0xEC00000065707954;
    v37 = URLRequest.value(forHTTPHeaderField:)(v36);
    sub_1004331EC(v34, v35, v37.value._countAndFlagsBits, v37.value._object, v93);
    v38 = v34;
    v27 = v33;
    sub_10020B0E0(v38, v35);
    v91 = v93[1];
    v92 = v93[0];
    v39 = v94;
    v40 = type metadata accessor for URLRequest();
    result = (*(*(v40 - 8) + 8))(a1, v40);
    v43 = v91;
    v42 = v92;
    v44 = _swiftEmptyArrayStorage;
    v32 = v88;
    v45 = v86;
    goto LABEL_22;
  }

  URLRequest.url.getter();
  v31 = v22;
  if (v20(v15, 1, v22) == 1)
  {
    sub_1000032A8(v15, &unk_1007809F0);
    v32 = v88;
LABEL_12:
    v51 = type metadata accessor for URLRequest();
    result = (*(*(v51 - 8) + 8))(a1, v51);
    v39 = 0;
    v42 = 0uLL;
    v44 = _swiftEmptyArrayStorage;
    v43 = 0uLL;
    v45 = v86;
    goto LABEL_22;
  }

  v77 = v27;
  v46 = v80;
  v47 = v79;
  (*(v80 + 32))();
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v49 = v81;
  v48 = v82;
  v50 = v31;
  if ((*(v81 + 48))(v28, 1, v82) == 1)
  {
    (*(v46 + 8))(v47, v31);
    sub_1000032A8(v28, &unk_1007803A0);
    v32 = v88;
    v27 = v77;
    goto LABEL_12;
  }

  v52 = v78;
  (*(v49 + 32))(v78, v28, v48);
  v53 = URLComponents.queryItems.getter();
  v44 = _swiftEmptyArrayStorage;
  if (v53)
  {
    v54 = *(v53 + 16);
    if (v54)
    {
      v74 = v50;
      v75 = a1;
      v76 = a2;
      *&v93[0] = _swiftEmptyArrayStorage;
      v55 = v53;
      sub_100526920(0, v54, 0);
      v44 = *&v93[0];
      v85 = *(v92 + 16);
      v56 = (*(v92 + 80) + 32) & ~*(v92 + 80);
      v73 = v55;
      v57 = v55 + v56;
      v58 = *(v92 + 72);
      *&v92 = v92 + 16;
      v83 = (v92 - 8);
      v84 = v58;
      do
      {
        v60 = v90;
        v59 = v91;
        (v85)(v90, v57, v91);
        v61 = URLQueryItem.name.getter();
        v63 = v62;
        v64 = URLQueryItem.value.getter();
        v66 = v65;
        (*v83)(v60, v59);
        *&v93[0] = v44;
        v68 = v44[2];
        v67 = v44[3];
        if (v68 >= v67 >> 1)
        {
          sub_100526920((v67 > 1), v68 + 1, 1);
          v44 = *&v93[0];
        }

        v44[2] = v68 + 1;
        v69 = &v44[4 * v68];
        v69[4] = v61;
        v69[5] = v63;
        v69[6] = v64;
        v69[7] = v66;
        v57 += v84;
        --v54;
      }

      while (v54);

      a2 = v76;
      a1 = v75;
      v49 = v81;
      v48 = v82;
      v50 = v74;
      v46 = v80;
      v52 = v78;
      v47 = v79;
    }

    else
    {
    }
  }

  v70 = type metadata accessor for URLRequest();
  (*(*(v70 - 8) + 8))(a1, v70);
  (*(v49 + 8))(v52, v48);
  result = (*(v46 + 8))(v47, v50);
  v39 = 0;
  v42 = 0uLL;
  v43 = 0uLL;
  v32 = v88;
  v45 = v86;
  v27 = v77;
LABEL_22:
  v71 = 0xE300000000000000;
  if (v32)
  {
    v71 = v32;
  }

  v72 = 5522759;
  if (v32)
  {
    v72 = v89;
  }

  *a2 = v72;
  *(a2 + 8) = v71;
  *(a2 + 16) = v87;
  *(a2 + 24) = v45;
  *(a2 + 32) = 0x312E312F50545448;
  *(a2 + 40) = 0xE800000000000000;
  *(a2 + 48) = _swiftEmptyArrayStorage;
  *(a2 + 56) = v27;
  *(a2 + 64) = v44;
  *(a2 + 72) = v42;
  *(a2 + 88) = v43;
  *(a2 + 104) = v39;
  *(a2 + 112) = -1;
  *(a2 + 120) = -1;
  return result;
}

uint64_t sub_1004343FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646F6874656DLL && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7372655670747468 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365696B6F6F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73726564616568 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7274537972657571 && a2 == 0xEB00000000676E69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6174614474736F70 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6953726564616568 && a2 == 0xEA0000000000657ALL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x657A695379646F62 && a2 == 0xE800000000000000)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1004346E8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1001F0C48(&qword_100783DB0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - v7;
  v9 = a1[3];
  v43 = a1;
  sub_100006D8C(a1, v9);
  sub_10043A5F4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000710C(v43);
  }

  v10 = v6;
  v42 = a2;
  LOBYTE(v52) = 0;
  v11 = v5;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v41 = v13;
  LOBYTE(v52) = 1;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v40 = v15;
  v16 = v14;
  LOBYTE(v52) = 2;
  *&v38 = KeyedDecodingContainer.decode(_:forKey:)();
  *(&v38 + 1) = v17;
  sub_1001F0C48(&qword_100783DC0);
  LOBYTE(v44) = 3;
  sub_10043A698();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v39 = v52;
  sub_1001F0C48(&qword_100783DD8);
  LOBYTE(v44) = 4;
  sub_10043A770();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v37 = v16;
  v18 = v52;
  sub_1001F0C48(&qword_100783DF0);
  LOBYTE(v44) = 5;
  sub_10043A848();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v36 = v52;
  LOBYTE(v44) = 6;
  sub_10043A920();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v32 = v52;
  v33 = v53;
  v31 = v54;
  v34 = v56;
  v35 = v55;
  LOBYTE(v52) = 7;
  v30 = KeyedDecodingContainer.decode(_:forKey:)();
  v68 = 8;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v10 + 8))(v8, v11);
  v20 = v40;
  *&v44 = v12;
  *(&v44 + 1) = v41;
  v21 = v37;
  *&v45 = v37;
  *(&v45 + 1) = v40;
  v22 = *(&v38 + 1);
  v46 = v38;
  *&v47 = v39;
  *(&v47 + 1) = v18;
  *&v48 = v36;
  *(&v48 + 1) = v32;
  v23 = v30;
  *&v49 = v33;
  *(&v49 + 1) = v31;
  *&v50 = v35;
  *(&v50 + 1) = v34;
  *&v51 = v30;
  *(&v51 + 1) = v19;
  sub_10043A974(&v44, &v52);
  sub_10000710C(v43);
  v52 = v12;
  v53 = v41;
  v54 = v21;
  v55 = v20;
  v56 = v38;
  v57 = v22;
  v58 = v39;
  v59 = v18;
  v60 = v36;
  v61 = v32;
  v62 = v33;
  v63 = v31;
  v64 = v35;
  v65 = v34;
  v66 = v23;
  v67 = v19;
  result = sub_10043A9AC(&v52);
  v25 = v49;
  v26 = v42;
  v42[4] = v48;
  v26[5] = v25;
  v27 = v51;
  v26[6] = v50;
  v26[7] = v27;
  v28 = v45;
  *v26 = v44;
  v26[1] = v28;
  v29 = v47;
  v26[2] = v46;
  v26[3] = v29;
  return result;
}

uint64_t sub_100434CF0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702521203 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65707954656D696DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E69646F636E65 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100434E54@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1001F0C48(&qword_100784110);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  sub_100006D8C(a1, a1[3]);
  sub_10043CE68();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000710C(a1);
  }

  v30 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  v26 = v10;
  v28 = 2;
  v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v25 = v13;
  v27 = 3;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = v15;
  v17 = *(v6 + 8);
  v23 = v14;
  v17(v8, v5);

  v18 = v25;

  sub_10000710C(a1);

  v20 = v26;
  *a2 = v9;
  a2[1] = v20;
  v21 = v23;
  v22 = v24;
  a2[2] = v12;
  a2[3] = v22;
  a2[4] = v18;
  a2[5] = v21;
  a2[6] = v16;
  return result;
}

void sub_100435100(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClassUnconditional();
  v38 = a1;
  v42 = [v6 statusCode];
  v7 = [objc_opt_self() localizedStringForStatusCode:{objc_msgSend(v6, "statusCode")}];
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v8;

  v39 = v6;
  v9 = [v6 allHeaderFields];
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  v45 = _swiftEmptyArrayStorage;
  if (v13)
  {
    while (1)
    {
LABEL_11:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v18 = v17 | (v15 << 6);
      sub_10043A310(*(v10 + 48) + 40 * v18, v49);
      sub_10020A6D0(*(v10 + 56) + 32 * v18, v50);
      sub_10043A310(v49, v48);
      if (!swift_dynamicCast())
      {
        goto LABEL_6;
      }

      sub_10020A6D0(v50, v48);
      if (swift_dynamicCast())
      {
        sub_1000032A8(v49, &unk_100786690);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_100363CD8(0, *(v45 + 2) + 1, 1, v45);
        }

        v20 = *(v45 + 2);
        v19 = *(v45 + 3);
        v21 = v20 + 1;
        if (v20 >= v19 >> 1)
        {
          v36 = *(v45 + 2);
          v37 = v20 + 1;
          v23 = sub_100363CD8((v19 > 1), v20 + 1, 1, v45);
          v20 = v36;
          v21 = v37;
          v45 = v23;
        }

        *(v45 + 2) = v21;
        v22 = &v45[32 * v20];
        *(v22 + 4) = v46;
        *(v22 + 5) = v47;
        *(v22 + 6) = v46;
        *(v22 + 7) = v47;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      else
      {

LABEL_6:
        sub_1000032A8(v49, &unk_100786690);
        if (!v13)
        {
          goto LABEL_7;
        }
      }
    }
  }

  while (1)
  {
LABEL_7:
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v16 >= v14)
    {
      break;
    }

    v13 = *(v10 + 64 + 8 * v16);
    ++v15;
    if (v13)
    {
      v15 = v16;
      goto LABEL_11;
    }
  }

  v24 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    v25 = a2;
    if (v24 != 2)
    {
      v26 = 0;
      goto LABEL_30;
    }

    v28 = *(a2 + 16);
    v27 = *(a2 + 24);
    v26 = v27 - v28;
    if (!__OFSUB__(v27, v28))
    {
      goto LABEL_28;
    }

    __break(1u);
LABEL_26:
    if (!__OFSUB__(HIDWORD(v25), v25))
    {
      v26 = HIDWORD(v25) - v25;
LABEL_28:
      sub_10020ABFC(v25, a3);
      goto LABEL_30;
    }

LABEL_35:
    __break(1u);
    return;
  }

  v25 = a2;
  if (v24)
  {
    goto LABEL_26;
  }

  v26 = BYTE6(a3);
LABEL_30:
  v29 = v38;
  v30 = String._bridgeToObjectiveC()();
  v31 = [v39 valueForHTTPHeaderField:v30];

  if (v31)
  {
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0xE000000000000000;
  }

  v35 = Data.base64EncodedString(options:)(0);

  sub_100007158(v25, a3);
  *a4 = v42;
  *(a4 + 8) = v40;
  *(a4 + 16) = v41;
  *(a4 + 24) = 0x312E312F50545448;
  *(a4 + 32) = 0xE800000000000000;
  *(a4 + 40) = _swiftEmptyArrayStorage;
  *(a4 + 48) = v45;
  *(a4 + 56) = v26;
  *(a4 + 64) = v32;
  *(a4 + 72) = v34;
  *(a4 + 80) = v35;
  *(a4 + 96) = xmmword_1006AA6A0;
  *(a4 + 112) = 0;
  *(a4 + 120) = 0xE000000000000000;
  *(a4 + 128) = -1;
  *(a4 + 136) = -1;
}

uint64_t sub_10043559C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6554737574617473 && a2 == 0xEA00000000007478 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7372655670747468 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365696B6F6F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73726564616568 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7463657269646572 && a2 == 0xEB000000004C5255 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x5373726564616568 && a2 == 0xEB00000000657A69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x657A695379646F62 && a2 == 0xE800000000000000)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_10043588C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v43 = sub_1001F0C48(&qword_100783FF8);
  v5 = *(v43 - 8);
  __chkstk_darwin(v43);
  v7 = &v26 - v6;
  sub_100006D8C(a1, a1[3]);
  sub_10043C0E8();
  v44 = v7;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000710C(a1);
  }

  v8 = v5;
  LOBYTE(v54) = 0;
  v9 = v43;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v54) = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v42 = v12;
  LOBYTE(v54) = 2;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v41 = v14;
  v34 = v13;
  v35 = v11;
  sub_1001F0C48(&qword_100783DC0);
  LOBYTE(v45) = 3;
  sub_10043A698();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v33 = v54;
  sub_1001F0C48(&qword_100783DD8);
  LOBYTE(v45) = 4;
  sub_10043A770();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v40 = v54;
  LOBYTE(v45) = 5;
  sub_10043C13C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31 = v55;
  v32 = v54;
  v39 = v58;
  v29 = v59;
  v30 = v57;
  v37 = v56;
  v38 = v60;
  LOBYTE(v54) = 6;
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  v36 = v15;
  LOBYTE(v54) = 7;
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  v72 = 8;
  v16 = v44;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v8 + 8))(v16, v9);
  *&v45 = v10;
  *(&v45 + 1) = v35;
  v19 = v41;
  v18 = v42;
  *&v46 = v42;
  *(&v46 + 1) = v34;
  v20 = v33;
  *&v47 = v41;
  *(&v47 + 1) = v33;
  *&v48 = v40;
  *(&v48 + 1) = v32;
  *&v49 = v31;
  *(&v49 + 1) = v37;
  *&v50 = v30;
  *(&v50 + 1) = v39;
  *&v51 = v29;
  *(&v51 + 1) = v38;
  *&v52 = v28;
  *(&v52 + 1) = v36;
  *&v53 = v27;
  *(&v53 + 1) = v17;
  sub_10043B020(&v45, &v54);
  sub_10000710C(a1);
  v54 = v10;
  v55 = v35;
  v56 = v18;
  v57 = v34;
  v58 = v19;
  v59 = v20;
  v60 = v40;
  v61 = v32;
  v62 = v31;
  v63 = v37;
  v64 = v30;
  v65 = v39;
  v66 = v29;
  v67 = v38;
  v68 = v28;
  v69 = v36;
  v70 = v27;
  v71 = v17;
  result = sub_10043ADE4(&v54);
  v22 = v52;
  a2[6] = v51;
  a2[7] = v22;
  a2[8] = v53;
  v23 = v48;
  a2[2] = v47;
  a2[3] = v23;
  v24 = v50;
  a2[4] = v49;
  a2[5] = v24;
  v25 = v46;
  *a2 = v45;
  a2[1] = v25;
  return result;
}

uint64_t sub_100435EDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73657269707865 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656363417473616CLL && a2 == 0xEA00000000007373 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1734431845 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E756F43746968 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100436048@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1001F0C48(&qword_100784120);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_100006D8C(a1, a1[3]);
  sub_10043CEBC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000710C(a1);
  }

  v29 = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v25 = v10;
  v28 = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = v12;
  v22 = v11;
  v27 = 2;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = v13;
  v26 = 3;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v15 = v25;

  v16 = v24;

  v17 = v23;

  sub_10000710C(a1);

  *a2 = v9;
  a2[1] = v15;
  v19 = v21;
  a2[2] = v22;
  a2[3] = v16;
  a2[4] = v19;
  a2[5] = v17;
  a2[6] = v14;
  return result;
}

uint64_t sub_100436328@<X0>(void *a1@<X0>, unsigned __int128 *a2@<X8>)
{
  v34 = a2;
  v4 = sub_1001F0C48(&qword_100784010);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - v6;
  sub_100006D8C(a1, a1[3]);
  sub_10043C190();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000710C(a1);
  }

  v8 = v5;
  LOBYTE(v35) = 0;
  sub_10043C1E4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v9 = v42;
  v30 = v43;
  v31 = v44;
  v32 = v45;
  v33 = v46;
  v58 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v8 + 8))(v7, v4);
  v27 = v55;
  v28 = v54;
  v25 = v56;
  v26 = *(&v55 + 1);
  v23 = v57;
  v24 = *(&v56 + 1);
  v22 = *(&v57 + 1);
  v29 = v9;
  v11 = v30;
  v10 = v31;
  v35 = __PAIR128__(v30, v9);
  v13 = *(&v31 + 1);
  v12 = v32;
  v36 = v31;
  v15 = *(&v32 + 1);
  v14 = v33;
  v37 = v32;
  *&v38 = v33;
  *(&v38 + 1) = v54;
  v39 = v55;
  v40 = v56;
  v41 = v57;
  sub_10043B0AC(&v35, &v42);
  sub_10000710C(a1);
  v42 = v29;
  v43 = v11;
  *&v44 = v10;
  *(&v44 + 1) = v13;
  *&v45 = v12;
  *(&v45 + 1) = v15;
  v46 = v14;
  v47 = v28;
  v48 = v27;
  v49 = v26;
  v50 = v25;
  v51 = v24;
  v52 = v23;
  v53 = v22;
  result = sub_10043ADB4(&v42);
  v17 = v40;
  v18 = v34;
  v34[4] = v39;
  v18[5] = v17;
  v18[6] = v41;
  v19 = v36;
  *v18 = v35;
  v18[1] = v19;
  v20 = v38;
  v18[2] = v37;
  v18[3] = v20;
  return result;
}

uint64_t sub_100436604@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DateInterval();
  v176 = *(v4 - 8);
  __chkstk_darwin(v4);
  v175 = &v159 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001F0C48(&qword_10077EF30);
  v7 = __chkstk_darwin(v6 - 8);
  v169 = &v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v170 = &v159 - v10;
  v11 = __chkstk_darwin(v9);
  v179 = &v159 - v12;
  v13 = __chkstk_darwin(v11);
  v184 = &v159 - v14;
  v15 = __chkstk_darwin(v13);
  v171 = &v159 - v16;
  v17 = __chkstk_darwin(v15);
  v172 = &v159 - v18;
  v19 = __chkstk_darwin(v17);
  v174 = &v159 - v20;
  v21 = __chkstk_darwin(v19);
  v186 = &v159 - v22;
  v23 = __chkstk_darwin(v21);
  v178 = &v159 - v24;
  v25 = __chkstk_darwin(v23);
  v173 = &v159 - v26;
  v27 = __chkstk_darwin(v25);
  v177 = &v159 - v28;
  v29 = __chkstk_darwin(v27);
  v185 = &v159 - v30;
  v31 = __chkstk_darwin(v29);
  v33 = &v159 - v32;
  v34 = __chkstk_darwin(v31);
  v36 = &v159 - v35;
  v37 = __chkstk_darwin(v34);
  v39 = &v159 - v38;
  __chkstk_darwin(v37);
  v41 = &v159 - v40;
  v42 = type metadata accessor for Date();
  v187 = *(v42 - 8);
  v43 = __chkstk_darwin(v42);
  v44 = __chkstk_darwin(v43);
  v45 = __chkstk_darwin(v44);
  v46 = __chkstk_darwin(v45);
  v47 = __chkstk_darwin(v46);
  v48 = __chkstk_darwin(v47);
  v49 = __chkstk_darwin(v48);
  __chkstk_darwin(v49);
  v51 = __chkstk_darwin(&v159 - v50);
  v53 = &v159 - v52;
  result = __chkstk_darwin(v51);
  v63 = &v159 - v62;
  if (!a1)
  {
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v191 = 1;
    v190 = 1;
    v189 = 1;
LABEL_70:
    v188 = a1 == 0;
    v156 = v191;
    v157 = v190;
    v158 = v189;
    *a2 = 0;
    *(a2 + 8) = v156;
    *(a2 + 16) = 0;
    *(a2 + 24) = v157;
    *(a2 + 32) = v78;
    *(a2 + 40) = v158;
    *(a2 + 48) = v77;
    *(a2 + 56) = v76;
    *(a2 + 64) = v75;
    *(a2 + 72) = v74;
    *(a2 + 80) = a1 == 0;
    return result;
  }

  v161 = v58;
  v167 = v57;
  v160 = v56;
  v162 = v55;
  v163 = result;
  v164 = v61;
  v159 = v60;
  v166 = v59;
  v165 = v4;
  v183 = a1;
  v64 = [a1 transactionMetrics];
  sub_100006190(0, &qword_100783D90);
  v65 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v65 >> 62))
  {
    result = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_67:

    v191 = 1;
    v190 = 1;
    goto LABEL_68;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_67;
  }

LABEL_4:
  if ((v65 & 0xC000000000000001) != 0)
  {
    v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_73;
    }

    v66 = *(v65 + 32);
  }

  v67 = v66;

  v191 = 1;
  v190 = 1;
  if (!v67)
  {
LABEL_68:
    v153 = *(v187 + 56);
    v153(v41, 1, 1, v42);
    sub_1000032A8(v41, &qword_10077EF30);
    v189 = 0;
    v154 = v185;
    v153(v185, 1, 1, v42);
    sub_1000032A8(v154, &qword_10077EF30);
    v155 = v186;
    v153(v186, 1, 1, v42);
    sub_1000032A8(v155, &qword_10077EF30);
    a1 = v183;

    v138 = v184;
    v153(v184, 1, 1, v42);
    v76 = -1;
    v78 = -1;
    v77 = -1;
    goto LABEL_69;
  }

  v168 = v67;
  v68 = [v67 connectStartDate];
  a1 = v183;
  if (v68)
  {
    v69 = v68;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v70 = v187;
    v71 = *(v187 + 56);
    v72 = v39;
    v73 = 0;
  }

  else
  {
    v70 = v187;
    v71 = *(v187 + 56);
    v72 = v39;
    v73 = 1;
  }

  v182 = v71;
  v71(v72, v73, 1, v42);
  sub_10043A2A0(v39, v41);
  v180 = *(v70 + 48);
  v181 = v70 + 48;
  if (v180(v41, 1, v42) == 1)
  {
    sub_1000032A8(v41, &qword_10077EF30);
    v78 = -1;
    v79 = v70;
    v81 = v178;
    v80 = v179;
    v82 = v168;
    v83 = v186;
LABEL_19:
    v89 = v177;
    goto LABEL_24;
  }

  v84 = *(v70 + 32);
  v84(v63, v41, v42);
  v85 = [v168 connectEndDate];
  if (v85)
  {
    v86 = v85;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v87 = 0;
  }

  else
  {
    v87 = 1;
  }

  v88 = v187;
  v182(v33, v87, 1, v42);
  sub_10043A2A0(v33, v36);
  if (v180(v36, 1, v42) == 1)
  {
    (*(v88 + 8))(v63, v42);
    sub_1000032A8(v36, &qword_10077EF30);
    v78 = -1;
    a1 = v183;
    v79 = v88;
    v82 = v168;
    v83 = v186;
    v81 = v178;
    v80 = v179;
    goto LABEL_19;
  }

  v84(v53, v36, v42);
  v90 = *(v88 + 16);
  v90(v163, v63, v42);
  v90(v164, v53, v42);
  v91 = v175;
  DateInterval.init(start:end:)();
  DateInterval.duration.getter();
  v93 = v92;
  v94 = v92;
  (*(v176 + 8))(v91, v165);
  v95 = *(v88 + 8);
  v95(v53, v42);
  result = (v95)(v63, v42);
  v81 = v178;
  if ((*&v94 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v79 = v88;
  v83 = v186;
  if (v93 <= -9.22337204e18)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  a1 = v183;
  v80 = v179;
  v82 = v168;
  v89 = v177;
  if (v93 >= 9.22337204e18)
  {
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v78 = v93;
LABEL_24:
  v189 = 0;
  v96 = [v82 requestStartDate];
  if (v96)
  {
    v97 = v96;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v79 = v187;
    v98 = 0;
  }

  else
  {
    v98 = 1;
  }

  v178 = (v79 + 56);
  v182(v89, v98, 1, v42);
  v99 = v89;
  v100 = v79;
  v101 = v185;
  sub_10043A2A0(v99, v185);
  if (v180(v101, 1, v42) == 1)
  {
    sub_1000032A8(v101, &qword_10077EF30);
    v77 = -1;
    goto LABEL_38;
  }

  v102 = *(v100 + 32);
  v102(v167, v101, v42);
  v103 = [v82 requestEndDate];
  if (v103)
  {
    v104 = v103;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v105 = 0;
  }

  else
  {
    v105 = 1;
  }

  v182(v81, v105, 1, v42);
  v106 = v173;
  sub_10043A2A0(v81, v173);
  if (v180(v106, 1, v42) == 1)
  {
    (*(v187 + 8))(v167, v42);
    sub_1000032A8(v106, &qword_10077EF30);
    v77 = -1;
    v82 = v168;
    goto LABEL_38;
  }

  v107 = v161;
  v102(v161, v106, v42);
  v108 = v187;
  v109 = *(v187 + 16);
  v109(v163, v167, v42);
  v109(v164, v107, v42);
  v110 = v175;
  DateInterval.init(start:end:)();
  DateInterval.duration.getter();
  v112 = v111;
  v113 = v111;
  (*(v176 + 8))(v110, v165);
  v114 = *(v108 + 8);
  v114(v107, v42);
  result = (v114)(v167, v42);
  if ((*&v113 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_74;
  }

  if (v112 <= -9.22337204e18)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v82 = v168;
  v83 = v186;
  v80 = v179;
  if (v112 >= 9.22337204e18)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v77 = v112;
LABEL_38:
  v115 = [v82 responseStartDate];
  if (v115)
  {
    v116 = v174;
    v117 = v115;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v118 = v116;
    v119 = 0;
  }

  else
  {
    v119 = 1;
    v118 = v174;
  }

  v182(v118, v119, 1, v42);
  sub_10043A2A0(v118, v83);
  if (v180(v83, 1, v42) == 1)
  {
    sub_1000032A8(v83, &qword_10077EF30);
    v76 = -1;
    goto LABEL_52;
  }

  v120 = *(v187 + 32);
  v120(v162, v83, v42);
  v121 = [v82 requestEndDate];
  if (v121)
  {
    v122 = v171;
    v123 = v121;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v124 = 0;
  }

  else
  {
    v124 = 1;
    v122 = v171;
  }

  v182(v122, v124, 1, v42);
  v125 = v172;
  sub_10043A2A0(v122, v172);
  if (v180(v125, 1, v42) == 1)
  {
    (*(v187 + 8))(v162, v42);
    sub_1000032A8(v125, &qword_10077EF30);
    v76 = -1;
    a1 = v183;
    v82 = v168;
    goto LABEL_52;
  }

  v186 = v78;
  v126 = v160;
  v120(v160, v125, v42);
  v127 = v187;
  v128 = *(v187 + 16);
  v128(v163, v126, v42);
  v129 = v162;
  v128(v164, v162, v42);
  v130 = v175;
  DateInterval.init(start:end:)();
  DateInterval.duration.getter();
  v132 = v131;
  v133 = v131;
  (*(v176 + 8))(v130, v165);
  v134 = *(v127 + 8);
  v134(v126, v42);
  result = (v134)(v129, v42);
  if ((*&v133 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_76;
  }

  if (v132 <= -9.22337204e18)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  a1 = v183;
  v82 = v168;
  v78 = v186;
  v80 = v179;
  if (v132 >= 9.22337204e18)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v76 = v132;
LABEL_52:
  v135 = [v82 responseStartDate];
  if (v135)
  {
    v136 = v135;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v137 = 0;
  }

  else
  {
    v137 = 1;
  }

  v182(v80, v137, 1, v42);
  v138 = v184;
  sub_10043A2A0(v80, v184);
  if (v180(v138, 1, v42) == 1)
  {

LABEL_69:
    result = sub_1000032A8(v138, &qword_10077EF30);
    v74 = -1;
    v75 = -1;
    goto LABEL_70;
  }

  v186 = v78;
  v139 = *(v187 + 32);
  v139(v166, v138, v42);
  v140 = [v82 responseEndDate];
  if (v140)
  {
    v141 = v169;
    v142 = v140;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v143 = 0;
  }

  else
  {
    v143 = 1;
    v141 = v169;
  }

  v182(v141, v143, 1, v42);
  v144 = v170;
  sub_10043A2A0(v141, v170);
  if (v180(v144, 1, v42) == 1)
  {
    (*(v187 + 8))(v166, v42);

    a1 = v183;
    result = sub_1000032A8(v144, &qword_10077EF30);
    v74 = -1;
    v75 = -1;
    v78 = v186;
    goto LABEL_70;
  }

  v145 = v159;
  v139(v159, v144, v42);
  v146 = v187;
  v147 = *(v187 + 16);
  v147(v163, v166, v42);
  v147(v164, v145, v42);
  v148 = v175;
  DateInterval.init(start:end:)();
  DateInterval.duration.getter();
  v150 = v149;
  v151 = v149;

  a1 = v183;
  (*(v176 + 8))(v148, v165);
  v152 = *(v146 + 8);
  v152(v145, v42);
  result = (v152)(v166, v42);
  if ((*&v151 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_79;
  }

  if (v150 <= -9.22337204e18)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v78 = v186;
  if (v150 < 9.22337204e18)
  {
    v75 = v150;
    v74 = -1;
    goto LABEL_70;
  }

LABEL_84:
  __break(1u);
  return result;
}

uint64_t sub_100437980(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656B636F6C62 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7564900 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7463656E6E6F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684956531 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1953063287 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65766965636572 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 7107443 && a2 == 0xE300000000000000)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_100437BC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1001F0C48(&qword_100784028);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  sub_100006D8C(a1, a1[3]);
  sub_10043C288();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000710C(a1);
  }

  v41 = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v34 = v10 & 1;
  v40 = 1;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v33 = v12 & 1;
  v39 = 2;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v32 = v14 & 1;
  v38 = 3;
  v30 = KeyedDecodingContainer.decode(_:forKey:)();
  v37 = 4;
  v29 = KeyedDecodingContainer.decode(_:forKey:)();
  v36 = 5;
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  v35 = 6;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = *(v6 + 8);
  v27 = v15;
  v17 = v8;
  v19 = v18;
  v16(v17, v5);
  v20 = v19 & 1;
  v31 = v19 & 1;
  v21 = v34;
  v22 = v33;
  HIDWORD(v26) = v32;
  result = sub_10000710C(a1);
  *a2 = v9;
  *(a2 + 8) = v21;
  *(a2 + 16) = v11;
  *(a2 + 24) = v22;
  *(a2 + 32) = v13;
  *(a2 + 40) = BYTE4(v26);
  v24 = v29;
  *(a2 + 48) = v30;
  *(a2 + 56) = v24;
  v25 = v27;
  *(a2 + 64) = v28;
  *(a2 + 72) = v25;
  *(a2 + 80) = v20;
  return result;
}

uint64_t sub_100437E70(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1752457584 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73657269707865 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100438018@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1001F0C48(&qword_100783FC8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_100006D8C(a1, a1[3]);
  sub_10043BFD8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000710C(a1);
  }

  LOBYTE(v36[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = v10;
  LOBYTE(v36[0]) = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v12;
  v26 = v11;
  LOBYTE(v36[0]) = 2;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v28 = v13;
  LOBYTE(v36[0]) = 3;
  v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v27 = v14;
  v37 = 4;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = v16;
  (*(v6 + 8))(v8, v5);
  *&v31 = v9;
  *(&v31 + 1) = v30;
  v18 = v29;
  *&v32 = v26;
  *(&v32 + 1) = v29;
  v19 = v28;
  *&v33 = v25;
  *(&v33 + 1) = v28;
  v20 = v27;
  *&v34 = v24;
  *(&v34 + 1) = v27;
  *&v35 = v15;
  *(&v35 + 1) = v17;
  sub_10043C02C(&v31, v36);
  sub_10000710C(a1);
  v36[0] = v9;
  v36[1] = v30;
  v36[2] = v26;
  v36[3] = v18;
  v36[4] = v25;
  v36[5] = v19;
  v36[6] = v24;
  v36[7] = v20;
  v36[8] = v15;
  v36[9] = v17;
  result = sub_10043C064(v36);
  v22 = v34;
  a2[2] = v33;
  a2[3] = v22;
  a2[4] = v35;
  v23 = v32;
  *a2 = v31;
  a2[1] = v23;
  return result;
}

uint64_t sub_1004383F0(void *a1)
{
  v3 = sub_1001F0C48(&qword_100783E68);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100006D8C(a1, a1[3]);
  sub_10043AD0C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v10 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000710C(a1);
  return v7;
}

uint64_t sub_1004385D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4464657472617473 && a2 == 0xEF656D6954657461;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74736575716572 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6568636163 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73676E696D6974 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5049726576726573 && a2 == 0xEF73736572646441 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEA00000000006E6FLL)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

void *sub_10043887C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v129 = sub_1001F0C48(&qword_100783E80);
  v5 = *(v129 - 8);
  __chkstk_darwin(v129);
  v7 = &v24 - v6;
  sub_100006D8C(a1, a1[3]);
  sub_10043AD60();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000710C(a1);
  }

  v8 = a2;
  LOBYTE(v29[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v27 = v9;
  LOBYTE(v29[0]) = 1;
  v12 = v5;
  v26 = KeyedDecodingContainer.decode(_:forKey:)();
  v90 = 2;
  sub_10043AE14();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v125 = v95;
  v126 = v96;
  v127 = v97;
  v128 = v98;
  v121 = v91;
  v122 = v92;
  v123 = v93;
  v124 = v94;
  v80 = 3;
  sub_10043AE68();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v118 = v87;
  v119 = v88;
  v120 = v89;
  v114 = v83;
  v115 = v84;
  v117 = v86;
  v116 = v85;
  v113 = v82;
  v112 = v81;
  v72 = 4;
  sub_10043AEBC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v109 = v77;
  v110 = v78;
  v111 = v79;
  v105 = v73;
  v106 = v74;
  v108 = v76;
  v107 = v75;
  v65 = 5;
  sub_10043AF10();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v101 = v68;
  v102 = v69;
  v103 = v70;
  v104 = v71;
  v99 = v66;
  v100 = v67;
  LOBYTE(v29[0]) = 6;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v13;
  v64 = 7;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = *(v12 + 8);
  v24 = v15;
  v17 = v7;
  v19 = v18;
  v16(v17, v129);
  v28[0] = v27;
  v28[1] = v11;
  v28[2] = v26;
  *&v28[11] = v125;
  *&v28[13] = v126;
  *&v28[15] = v127;
  *&v28[17] = v128;
  *&v28[3] = v121;
  *&v28[5] = v122;
  *&v28[7] = v123;
  *&v28[9] = v124;
  *&v28[33] = v119;
  *&v28[35] = v120;
  *&v28[19] = v112;
  *&v28[31] = v118;
  *&v28[29] = v117;
  *&v28[27] = v116;
  *&v28[25] = v115;
  *&v28[23] = v114;
  *&v28[21] = v113;
  *&v28[45] = v109;
  *&v28[47] = v110;
  *&v28[49] = v111;
  *&v28[37] = v105;
  *&v28[39] = v106;
  *&v28[41] = v107;
  *&v28[43] = v108;
  *&v28[51] = v99;
  *&v28[53] = v100;
  *&v28[57] = v102;
  *&v28[59] = v103;
  *&v28[55] = v101;
  LOBYTE(v28[61]) = v104;
  v20 = v25;
  v28[62] = v25;
  v21 = v14;
  v28[63] = v14;
  v22 = v24;
  v28[64] = v24;
  v28[65] = v19;
  sub_10043AF64(v28, v29);
  sub_10000710C(a1);
  v29[0] = v27;
  v29[1] = v11;
  v29[2] = v26;
  v34 = v125;
  v35 = v126;
  v36 = v127;
  v37 = v128;
  v30 = v121;
  v31 = v122;
  v32 = v123;
  v33 = v124;
  v45 = v119;
  v46 = v120;
  v38 = v112;
  v44 = v118;
  v43 = v117;
  v42 = v116;
  v41 = v115;
  v40 = v114;
  v39 = v113;
  v51 = v109;
  v52 = v110;
  v53 = v111;
  v47 = v105;
  v48 = v106;
  v49 = v107;
  v50 = v108;
  v54 = v99;
  v55 = v100;
  v57 = v102;
  v58 = v103;
  v56 = v101;
  v59 = v104;
  v60 = v20;
  v61 = v21;
  v62 = v22;
  v63 = v19;
  sub_10043AF9C(v29);
  return memcpy(v8, v28, 0x210uLL);
}