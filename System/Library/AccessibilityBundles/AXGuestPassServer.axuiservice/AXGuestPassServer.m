void *sub_1ED0()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = sub_1F30(v0);
    v2 = *(v0 + 24);
    *(v0 + 24) = v1;
  }

  return v1;
}

void *sub_1F30(uint64_t a1)
{
  v2 = sub_7E8C(&qword_392D8, &qword_2A118);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v29 = &v28 - v4;
  v5 = sub_28BC8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v28 - v11;
  v13 = sub_28268();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_28178();
  v18 = sub_28258();
  v19 = sub_29108();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v28 = a1;
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "initializing sync controller", v20, 2u);
    a1 = v28;
  }

  (*(v14 + 8))(v17, v13);
  result = *(a1 + 32);
  if (result)
  {
    v22 = [result privateCloudDatabase];
    sub_7298(v29);
    sub_88D8(&qword_392E0, v23, type metadata accessor for GuestPassCloudSyncController);
    swift_unknownObjectRetain();
    sub_28BB8();
    sub_28BA8();
    (*(v6 + 16))(v10, v12, v5);
    v24 = sub_28DA8();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    v27 = sub_28DB8();
    (*(v6 + 8))(v12, v5);
    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2290@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_7E8C(&qword_39208, &unk_2A090);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = [*(v1 + 16) guestPassLocalStorageURL];
  if (v10)
  {
    v11 = v10;
    sub_27FA8();

    v12 = sub_27FD8();
    (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  }

  else
  {
    v12 = sub_27FD8();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  }

  sub_98BC(v7, v9);
  sub_27FD8();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v9, 1, v12) == 1)
  {
    sub_925C(v9, &qword_39208, &unk_2A090);
    v14 = 1;
  }

  else
  {
    sub_27F98();
    (*(v13 + 8))(v9, v12);
    v14 = 0;
  }

  return (*(v13 + 56))(a1, v14, 1, v12);
}

uint64_t sub_24DC(void *a1)
{
  v2 = *(v1[19] + 32);
  if (v2)
  {
    v1[2] = v1;
    v1[7] = v1 + 18;
    v1[3] = sub_2600;
    v3 = swift_continuation_init();
    v1[17] = sub_7E8C(&qword_392C8, &qword_2A108);
    v1[10] = _NSConcreteStackBlock;
    v1[11] = 1107296256;
    v1[12] = sub_2800;
    v1[13] = &unk_35C40;
    v1[14] = v3;
    [v2 accountInfoWithCompletionHandler:v1 + 10];
    a1 = v1 + 2;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(a1);
}

uint64_t sub_2600()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_2788;
  }

  else
  {
    v3 = sub_2710;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_2710()
{
  v1 = *(v0 + 144);
  v2 = [v1 supportsDeviceToDeviceEncryption];

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2788()
{
  v1 = *(v0 + 160);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_2800(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_9878((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_7E8C(&qword_392D0, &qword_2A110);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

void *sub_28D8()
{
  v1 = v0;
  type metadata accessor for AXGuestPassServer();
  v2 = sub_AD5C();
  v3 = *&v2[OBJC_IVAR___AXGuestPassServer_settingsProfileManager];

  v1[2] = v3;
  v1[3] = 0;
  v1[5] = 0;
  v4 = objc_allocWithZone(CKRecordZone);
  v5 = sub_28E88();
  v6 = [v4 initWithZoneName:v5];

  v1[6] = v6;
  v7 = [objc_allocWithZone(CKContainerOptions) init];
  v8 = sub_28E88();
  [v7 setApplicationBundleIdentifierOverrideForPushTopicGeneration:v8];

  [v7 setUseZoneWidePCS:1];
  v9 = objc_allocWithZone(CKContainerID);
  v10 = sub_28E88();
  v11 = [v9 initWithContainerIdentifier:v10 environment:2];

  v12 = [objc_allocWithZone(CKContainer) initWithContainerID:v11 options:v7];
  v1[4] = v12;
  return v1;
}

Class sub_2A78()
{
  v1 = v0;
  v2 = sub_7E8C(&qword_391D8, &qword_2A078);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v27[-v7];
  v9 = sub_28058();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_290A8();
  v14 = sub_28FE8();
  v15 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v16 = *&v14[v15];

  sub_28FF8();
  v17 = *(v10 + 48);
  if (v17(v8, 1, v9) == 1)
  {
    sub_28048();
    if (v17(v8, 1, v9) != 1)
    {
      sub_925C(v8, &qword_391D8, &qword_2A078);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
  }

  v18 = sub_28FE8();
  v19 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v20 = *&v18[v19];

  (*(v10 + 16))(v6, v13, v9);
  (*(v10 + 56))(v6, 0, 1, v9);
  sub_29008();

  sub_9818(0, &qword_392C0, CKRecordID_ptr);
  v21 = sub_28038();
  v23 = v22;
  v24.super.isa = [*(v1 + 48) zoneID];
  v28._countAndFlagsBits = v21;
  v28._object = v23;
  isa = sub_290F8(v28, v24).super.isa;
  (*(v10 + 8))(v13, v9);
  return isa;
}

uint64_t sub_2DAC()
{
  sub_28F78();
  *(v0 + 24) = sub_28F68();
  v2 = sub_28F58();

  return _swift_task_switch(sub_2E40, v2, v1);
}

uint64_t sub_2E40()
{
  v2 = v0[2];
  v1 = v0[3];

  v0[4] = sub_1ED0();

  return _swift_task_switch(sub_2EB0, 0, 0);
}

uint64_t sub_2EB0()
{
  v1 = v0[4];
  v2 = v0[2];
  sub_28D98();

  sub_7E8C(&qword_392A0, &qword_2A680);
  v3 = sub_28C58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 1) = xmmword_29DC0;
  *&v7[v6] = sub_2A78();
  (*(v4 + 104))(&v7[v6], enum case for CKSyncEngine.PendingRecordZoneChange.deleteRecord(_:), v3);
  v8._rawValue = v7;
  sub_28D88(v8);

  v9 = *(v2 + 40);
  *(v2 + 40) = 0;

  v10 = v0[1];

  return v10();
}

uint64_t sub_3024(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = sub_28D38();
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v6 = *(v5 + 64) + 15;
  v3[16] = swift_task_alloc();
  v7 = sub_28058();
  v3[17] = v7;
  v8 = *(v7 - 8);
  v3[18] = v8;
  v9 = *(v8 + 64) + 15;
  v3[19] = swift_task_alloc();
  v10 = *(*(sub_7E8C(&qword_391D8, &qword_2A078) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v11 = sub_28CD8();
  v3[21] = v11;
  v12 = *(v11 - 8);
  v3[22] = v12;
  v13 = *(v12 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v14 = sub_28D08();
  v3[26] = v14;
  v15 = *(v14 - 8);
  v3[27] = v15;
  v16 = *(v15 + 64) + 15;
  v3[28] = swift_task_alloc();
  v17 = *(*(sub_7E8C(&qword_39288, &qword_2A540) - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v18 = sub_28268();
  v3[32] = v18;
  v19 = *(v18 - 8);
  v3[33] = v19;
  v20 = *(v19 + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v21 = sub_28C88();
  v3[40] = v21;
  v22 = *(v21 - 8);
  v3[41] = v22;
  v23 = *(v22 + 64) + 15;
  v3[42] = swift_task_alloc();
  v24 = sub_28CA8();
  v3[43] = v24;
  v25 = *(v24 - 8);
  v3[44] = v25;
  v26 = *(v25 + 64) + 15;
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v27 = sub_28D58();
  v3[47] = v27;
  v28 = *(v27 - 8);
  v3[48] = v28;
  v29 = *(v28 + 64) + 15;
  v3[49] = swift_task_alloc();
  v30 = sub_28C78();
  v3[50] = v30;
  v31 = *(v30 - 8);
  v3[51] = v31;
  v32 = *(v31 + 64) + 15;
  v3[52] = swift_task_alloc();
  v33 = sub_28D48();
  v3[53] = v33;
  v34 = *(v33 - 8);
  v3[54] = v34;
  v35 = *(v34 + 64) + 15;
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();

  return _swift_task_switch(sub_3518, 0, 0);
}

uint64_t sub_3518()
{
  v238 = v0;
  v1 = v0;
  v2 = v0[56];
  v3 = v0[53];
  v4 = v0[54];
  v5 = *(v4 + 16);
  (v5)(v2, v0[11], v3);
  v6 = (*(v4 + 88))(v2, v3);
  v7 = v0[53];
  if (v6 == enum case for CKSyncEngine.Event.stateUpdate(_:))
  {
    v8 = v0[56];
    v10 = v0[51];
    v9 = v1[52];
    v12 = v1[49];
    v11 = v1[50];
    v13 = v1[47];
    v14 = v1[48];
    v15 = v1[13];
    (*(v1[54] + 96))(v1[56], v7);
    (*(v10 + 32))(v9, v8, v11);
    sub_28C68();
    sub_6EA8();
    (*(v14 + 8))(v12, v13);
LABEL_3:
    (*(v10 + 8))(v9, v11);
    goto LABEL_60;
  }

  if (v6 == enum case for CKSyncEngine.Event.accountChange(_:))
  {
    v16 = v0[56];
    v17 = v0[46];
    v18 = v0[43];
    v19 = v0[44];
    v21 = v1[41];
    v20 = v1[42];
    v22 = v1[40];
    (*(v1[54] + 96))(v1[56], v7);
    (*(v19 + 32))(v17, v16, v18);
    sub_28C98();
    v23 = (*(v21 + 88))(v20, v22);
    if (v23 == enum case for CKSyncEngine.Event.AccountChange.ChangeType.signIn(_:))
    {
      v24 = v1[46];
      v25 = v1[43];
      v26 = v1[44];
      v27 = v1[31];
      v28 = v1[12];
      (*(v1[41] + 8))(v1[42], v1[40]);
      v29 = sub_28F98();
      (*(*(v29 - 8) + 56))(v27, 1, 1, v29);
      v30 = swift_allocObject();
      v30[2] = 0;
      v30[3] = 0;
      v30[4] = v28;

      sub_501C(0, 0, v27, &unk_2A0D8, v30);

      sub_925C(v27, &qword_39288, &qword_2A540);
      (*(v26 + 8))(v24, v25);
      goto LABEL_60;
    }

    if (v23 == enum case for CKSyncEngine.Event.AccountChange.ChangeType.signOut(_:) || v23 == enum case for CKSyncEngine.Event.AccountChange.ChangeType.switchAccounts(_:))
    {
      v56 = v1[39];
      v57 = v1[13];
      (*(v1[41] + 8))(v1[42], v1[40]);
      [*(v57 + 16) deleteAllGuestPassProfiles];
      sub_28178();
      v58 = sub_28258();
      v59 = sub_29138();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_0, v58, v59, "Turning off iCloud sync because iCloud account was signed out", v60, 2u);
      }

      v9 = v1[46];
      v11 = v1[43];
      v10 = v1[44];
      v61 = v1[39];
      v62 = v1[32];
      v63 = v1[33];

      (*(v63 + 8))(v61, v62);
      sub_290A8();
      v64 = sub_28FE8();
      [v64 setGuestPassShouldSyncToiCloud:0];

      goto LABEL_3;
    }

    v33 = v1[45];
    v34 = v1[46];
    v35 = v1[43];
    v36 = v1[44];
    v37 = v1[38];
    sub_28178();
    (*(v36 + 16))(v33, v34, v35);
    v38 = sub_28258();
    v39 = sub_29128();
    v40 = os_log_type_enabled(v38, v39);
    v41 = v1[45];
    v42 = v1[46];
    v43 = v1[43];
    v44 = v1[44];
    v45 = v1[38];
    v46 = v1[33];
    v234 = v1[32];
    if (v40)
    {
      v229 = v1[38];
      v47 = swift_slowAlloc();
      v201 = v1;
      v48 = swift_slowAlloc();
      v237[0] = v48;
      *v47 = 136315138;
      sub_88D8(&qword_392A8, 255, &type metadata accessor for CKSyncEngine.Event.AccountChange);
      v221 = v39;
      v49 = sub_292F8();
      v225 = v42;
      v51 = v50;
      v52 = *(v44 + 8);
      v52(v41, v43);
      v53 = sub_89C0(v49, v51, v237);

      *(v47 + 4) = v53;
      _os_log_impl(&dword_0, v38, v221, "Unknown acocunt change event %s", v47, 0xCu);
      sub_8F68(v48);
      v1 = v201;

      (*(v46 + 8))(v229, v234);
      v52(v225, v43);
    }

    else
    {

      v159 = *(v44 + 8);
      v159(v41, v43);
      (*(v46 + 8))(v45, v234);
      v159(v42, v43);
    }

    v32 = v1[41];
    v31 = v1[42];
    v7 = v1[40];
    goto LABEL_59;
  }

  if (v6 == enum case for CKSyncEngine.Event.fetchedDatabaseChanges(_:))
  {
    goto LABEL_8;
  }

  if (v6 == enum case for CKSyncEngine.Event.fetchedRecordZoneChanges(_:))
  {
    v54 = v0[56];
    v10 = v0[15];
    v9 = v1[16];
    v55 = v1[13];
    v11 = v1[14];
    (*(v1[54] + 96))(v1[56], v7);
    (*(v10 + 32))(v9, v54, v11);
    sub_6574(v9);
    goto LABEL_3;
  }

  if (v6 == enum case for CKSyncEngine.Event.sentDatabaseChanges(_:))
  {
    goto LABEL_8;
  }

  if (v6 == enum case for CKSyncEngine.Event.sentRecordZoneChanges(_:))
  {
    v65 = v0[56];
    v67 = v0[27];
    v66 = v1[28];
    v68 = v1[26];
    (*(v1[54] + 96))(v1[56], v7);
    (*(v67 + 32))(v66, v65, v68);
    v69 = v66;
    v70 = sub_28CE8();
    v219 = *(v70 + 16);
    v222 = v70;
    if (v219)
    {
      v71 = 0;
      v200 = v1 + 2;
      v72 = v1[22];
      v217 = v70 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
      v213 = (v1[33] + 8);
      v215 = (v72 + 8);
      v73 = v1[18];
      v204 = (v73 + 48);
      v199 = (v73 + 16);
      v197 = v1[13];
      v198 = (v73 + 8);
      v196 = enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:);
      v207 = v72;
      v202 = v1;
      do
      {
        if (v71 >= *(v222 + 16))
        {
          __break(1u);
          goto LABEL_84;
        }

        v75 = *(v72 + 16);
        v75(v1[25], v217 + *(v72 + 72) * v71, v1[21]);
        v76 = sub_28CC8();
        v77 = sub_28CB8();
        v1[9] = v77;
        type metadata accessor for CKError(0);
        sub_88D8(&qword_39298, 255, type metadata accessor for CKError);
        sub_27F38();

        v78 = v1[10];
        if (v78 <= 0x1A)
        {
          if (((1 << v78) & 0x900258) != 0)
          {
            v69 = v1[36];
            v80 = v1[24];
            v79 = v1[25];
            v81 = v1[21];
            sub_28178();
            v75(v80, v79, v81);
            v82 = v76;
            v5 = sub_28258();
            v83 = sub_29118();

            v84 = os_log_type_enabled(v5, v83);
            v226 = v1[32];
            v230 = v1[36];
            v85 = v1[24];
            v86 = v1[25];
            v87 = v1[21];
            if (v84)
            {
              v88 = swift_slowAlloc();
              v211 = v86;
              v89 = swift_slowAlloc();
              *v88 = 138412546;
              v90 = [v82 recordID];
              *(v88 + 4) = v90;
              *v89 = v90;
              *(v88 + 12) = 2112;
              sub_28CB8();
              v91 = v71;
              v92 = _swift_stdlib_bridgeErrorToNSError();
              v209 = v82;
              v69 = *v215;
              (*v215)(v85, v87);
              *(v88 + 14) = v92;
              v89[1] = v92;
              v71 = v91;
              v72 = v207;
              v93 = v83;
              v94 = v5;
              v95 = "Retryable error saving %@: %@";
LABEL_30:
              _os_log_impl(&dword_0, v94, v93, v95, v88, 0x16u);
              sub_7E8C(&qword_391E8, &qword_2A080);
              swift_arrayDestroy();

              (*v213)(v230, v226);
              (v69)(v211, v87);
              goto LABEL_23;
            }

            goto LABEL_22;
          }

          if (v78 == 14)
          {
            v231 = v71;
            v105 = v1[20];
            v106 = v1[17];
            v107 = [v76 recordID];
            v108 = [v107 recordName];

            v5 = sub_28EC8();
            v110 = v109;

            sub_290A8();
            v111 = sub_28FE8();
            v112 = direct field offset for AXSettings.guestPass;
            swift_beginAccess();
            v113 = *&v111[v112];

            sub_28FF8();
            v114 = (*v204)(v105, 1, v106);
            v69 = v1[20];
            if (v114)
            {
              sub_925C(v1[20], &qword_391D8, &qword_2A078);

              v71 = v231;
              v72 = v207;
              goto LABEL_37;
            }

            v132 = v1[19];
            v133 = v1[17];
            (*v199)(v132, v1[20], v133);
            sub_925C(v69, &qword_391D8, &qword_2A078);
            v134 = sub_28038();
            v69 = v135;
            (*v198)(v132, v133);
            if (v5 == v134 && v110 == v69)
            {

              v72 = v207;
              goto LABEL_51;
            }

            v136 = sub_29308();

            v71 = v231;
            v72 = v207;
            if (v136)
            {
LABEL_51:
              v137 = v1[25];
              v138 = sub_28CB8();
              v139 = sub_28E28();

              v140 = *(v197 + 40);
              *(v197 + 40) = v139;
              v141 = v139;

              if (v139)
              {
                v142 = [v141 encryptedValues];
                v143 = [v76 encryptedValues];
                v144 = sub_28E88();
                v145 = [v143 objectForKeyedSubscript:v144];
                swift_unknownObjectRelease();

                v146 = sub_28E88();
                [v142 setObject:v145 forKeyedSubscript:v146];

                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
              }

              v147 = v1[37];
              v148 = v1[12];
              sub_28D98();
              sub_7E8C(&qword_392A0, &qword_2A680);
              v149 = sub_28C58();
              v150 = *(v149 - 8);
              v151 = *(v150 + 72);
              v152 = (*(v150 + 80) + 32) & ~*(v150 + 80);
              v153 = swift_allocObject();
              *(v153 + 1) = xmmword_29DC0;
              *&v153[v152] = [v76 recordID];
              (*(v150 + 104))(&v153[v152], v196, v149);
              v154._rawValue = v153;
              sub_28D88(v154);

              sub_28178();
              v155 = sub_28258();
              v5 = sub_29108();
              v156 = os_log_type_enabled(v155, v5);
              v69 = v1[37];
              v157 = v1[32];
              if (v156)
              {
                v158 = swift_slowAlloc();
                *v158 = 0;
                _os_log_impl(&dword_0, v155, v5, "Tried to save a record that already existed on the server, updating the server record instead", v158, 2u);
              }

              (*v213)(v69, v157);
              v71 = v231;
            }

            else
            {
LABEL_37:
            }

            (*v215)(v1[25], v1[21]);
            goto LABEL_24;
          }

          if (v78 == 26)
          {
            v96 = v71;
            v98 = v1[29];
            v97 = v1[30];
            v99 = v1[12];
            v100 = sub_28F98();
            v101 = *(v100 - 8);
            (*(v101 + 56))(v97, 1, 1, v100);
            v102 = swift_allocObject();
            v102[2] = 0;
            v102[3] = 0;
            v102[4] = v76;
            v102[5] = v99;
            sub_91EC(v97, v98);
            LODWORD(v98) = (*(v101 + 48))(v98, 1, v100);

            v103 = v76;

            v104 = v1[29];
            if (v98 == 1)
            {
              sub_925C(v1[29], &qword_39288, &qword_2A540);
            }

            else
            {
              sub_28F88();
              (*(v101 + 8))(v104, v100);
            }

            v125 = v102[2];
            v124 = v102[3];
            swift_unknownObjectRetain();

            v71 = v96;
            if (v125)
            {
              swift_getObjectType();
              v126 = sub_28F58();
              v128 = v127;
              swift_unknownObjectRelease();
            }

            else
            {
              v126 = 0;
              v128 = 0;
            }

            v129 = swift_allocObject();
            *(v129 + 16) = &unk_2A0B8;
            *(v129 + 24) = v102;
            if (v128 | v126)
            {
              *v200 = 0;
              v200[1] = 0;
              v1[4] = v126;
              v1[5] = v128;
            }

            v69 = v1[30];
            v130 = v1[25];
            v131 = v1[21];
            v5 = swift_task_create();

            sub_925C(v69, &qword_39288, &qword_2A540);
            (*v215)(v130, v131);

            goto LABEL_24;
          }
        }

        v69 = v1[35];
        v115 = v1[25];
        v116 = v1[23];
        v117 = v1[21];
        sub_28178();
        v75(v116, v115, v117);
        v82 = v76;
        v5 = sub_28258();
        v118 = sub_29128();

        v119 = os_log_type_enabled(v5, v118);
        v226 = v1[32];
        v230 = v1[35];
        v86 = v1[25];
        v85 = v1[23];
        v87 = v1[21];
        if (v119)
        {
          v88 = swift_slowAlloc();
          v211 = v86;
          v120 = swift_slowAlloc();
          *v88 = 138412546;
          v121 = [v82 recordID];
          *(v88 + 4) = v121;
          *v120 = v121;
          *(v88 + 12) = 2112;
          sub_28CB8();
          v122 = v71;
          v123 = _swift_stdlib_bridgeErrorToNSError();
          v209 = v82;
          v69 = *v215;
          (*v215)(v85, v87);
          *(v88 + 14) = v123;
          v120[1] = v123;
          v71 = v122;
          v72 = v207;
          v93 = v118;
          v94 = v5;
          v95 = "Error saving record %@: %@";
          goto LABEL_30;
        }

LABEL_22:

        v74 = *v215;
        (*v215)(v85, v87);
        (*v213)(v230, v226);
        v74(v86, v87);
LABEL_23:
        v1 = v202;
LABEL_24:
        ++v71;
      }

      while (v219 != v71);
    }

    v174 = v1[28];
    v175 = sub_28CF8();
    v69 = v175;
    if (v175 >> 62)
    {
      v176 = sub_292A8();
      if (v176)
      {
        goto LABEL_75;
      }
    }

    else
    {
      v176 = *(&dword_10 + (v175 & 0xFFFFFFFFFFFFFF8));
      if (v176)
      {
LABEL_75:
        v177 = 0;
        while (1)
        {
          if ((v69 & 0xC000000000000001) != 0)
          {
            v178 = sub_29288();
          }

          else
          {
            if (v177 >= *(&dword_10 + (v69 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_85;
            }

            v178 = *(v69 + 8 * v177 + 32);
          }

          v5 = v178;
          v179 = v177 + 1;
          if (__OFADD__(v177, 1))
          {
            break;
          }

          v180 = v1[13];
          v237[0] = v178;
          sub_5A4C(v237, v180);

          ++v177;
          if (v179 == v176)
          {
            goto LABEL_91;
          }
        }

LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }
    }

LABEL_91:
    v10 = v1[27];
    v9 = v1[28];
    v11 = v1[26];

    goto LABEL_3;
  }

  if (v6 == enum case for CKSyncEngine.Event.willFetchChanges(_:) || v6 == enum case for CKSyncEngine.Event.willFetchRecordZoneChanges(_:) || v6 == enum case for CKSyncEngine.Event.didFetchRecordZoneChanges(_:) || v6 == enum case for CKSyncEngine.Event.didFetchChanges(_:) || v6 == enum case for CKSyncEngine.Event.willSendChanges(_:) || v6 == enum case for CKSyncEngine.Event.didSendChanges(_:) || v6 == enum case for CKSyncEngine.Event.willFetchAsset(_:) || v6 == enum case for CKSyncEngine.Event.fetchedAsset(_:))
  {
LABEL_8:
    v31 = v0[56];
    v32 = v0[54];
LABEL_59:
    (*(v32 + 8))(v31, v7);
    goto LABEL_60;
  }

  v69 = v0[53];
  if (v6 != enum case for CKSyncEngine.Event.didFetchAsset(_:))
  {
LABEL_86:
    v181 = v1[55];
    v182 = v1[34];
    v183 = v1[11];
    sub_28178();
    (v5)(v181, v183, v69);
    v184 = sub_28258();
    v228 = sub_29128();
    v185 = os_log_type_enabled(v184, v228);
    v187 = v1[54];
    v186 = v1[55];
    v188 = v1[53];
    v189 = v1[33];
    v236 = v1[34];
    v203 = v1;
    v233 = v1[32];
    if (v185)
    {
      v190 = swift_slowAlloc();
      v224 = swift_slowAlloc();
      v237[0] = v224;
      *v190 = 136315138;
      sub_88D8(&qword_39290, 255, &type metadata accessor for CKSyncEngine.Event);
      v191 = sub_292F8();
      v193 = v192;
      v194 = *(v187 + 8);
      v194(v186, v188);
      v195 = sub_89C0(v191, v193, v237);

      *(v190 + 4) = v195;
      _os_log_impl(&dword_0, v184, v228, "Unknown CKSyncEngine event %s", v190, 0xCu);
      sub_8F68(v224);
    }

    else
    {

      v194 = *(v187 + 8);
      v194(v186, v188);
    }

    (*(v189 + 8))(v236, v233);
    v1 = v203;
    v194(v203[56], v203[53]);
    goto LABEL_60;
  }

  (*(v0[54] + 8))(v0[56], v7);
LABEL_60:
  v161 = v1[55];
  v160 = v1[56];
  v162 = v1[52];
  v163 = v1[49];
  v165 = v1[45];
  v164 = v1[46];
  v166 = v1[42];
  v167 = v1;
  v170 = v1 + 38;
  v169 = v1[38];
  v168 = v170[1];
  v171 = v167[37];
  v205 = v167[36];
  v206 = v167[35];
  v208 = v167[34];
  v210 = v167[31];
  v212 = v167[30];
  v214 = v167[29];
  v216 = v167[28];
  v218 = v167[25];
  v220 = v167[24];
  v223 = v167[23];
  v227 = v167[20];
  v232 = v167[19];
  v235 = v167[16];

  v172 = v167[1];

  return v172();
}

uint64_t sub_4C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = sub_28C08();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = sub_28C28();
  v4[7] = v8;
  v9 = *(v8 - 8);
  v4[8] = v9;
  v10 = *(v9 + 64) + 15;
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_4D2C, 0, 0);
}

uint64_t sub_4D2C()
{
  v1 = v0[9];
  (*(v0[5] + 104))(v0[6], enum case for CKSyncEngine.FetchChangesOptions.Scope.all(_:), v0[4]);
  sub_28C18();
  v2 = async function pointer to CKSyncEngine.fetchChanges(_:)[1];
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_4E04;
  v4 = v0[9];
  v5 = v0[3];

  return CKSyncEngine.fetchChanges(_:)(v4);
}

uint64_t sub_4E04()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = v2[9];
  v6 = v2[8];
  v7 = v2[7];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = sub_9CC4;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_4F9C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_4F9C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  **(v0 + 16) = *(v0 + 88) != 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_501C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_7E8C(&qword_39288, &qword_2A540) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_91EC(a3, v26 - v10);
  v12 = sub_28F98();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_925C(v11, &qword_39288, &qword_2A540);
  }

  else
  {
    sub_28F88();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_28F58();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_28EF8() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      sub_7E8C(&qword_392B0, &qword_2A0F0);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  sub_7E8C(&qword_392B0, &qword_2A0F0);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_52E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_28BD8();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = sub_28BF8();
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();
  v12 = sub_28268();
  v5[10] = v12;
  v13 = *(v12 - 8);
  v5[11] = v13;
  v14 = *(v13 + 64) + 15;
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_5458, 0, 0);
}

uint64_t sub_5458()
{
  v1 = v0[12];
  v2 = v0[2];
  v3 = [v2 recordID];
  v4 = [v3 zoneID];

  v5 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v4];
  v0[13] = v5;

  sub_28D98();
  sub_7E8C(&qword_392B8, &qword_2A100);
  v6 = sub_28C38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 1) = xmmword_29DC0;
  *&v10[v9] = v5;
  (*(v7 + 104))(&v10[v9], enum case for CKSyncEngine.PendingDatabaseChange.saveZone(_:), v6);
  v11 = v5;
  v12._rawValue = v10;
  sub_28D78(v12);

  sub_28D98();
  sub_7E8C(&qword_392A0, &qword_2A680);
  v13 = sub_28C58();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 1) = xmmword_29DC0;
  *&v17[v16] = [v2 recordID];
  (*(v14 + 104))(&v17[v16], enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:), v13);
  v18._rawValue = v17;
  sub_28D88(v18);

  sub_28178();
  v19 = sub_28258();
  v20 = sub_29138();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "GuestPass zone not found, trying to create it now.", v21, 2u);
  }

  v23 = v0[11];
  v22 = v0[12];
  v25 = v0[9];
  v24 = v0[10];
  v27 = v0[5];
  v26 = v0[6];
  v28 = v0[4];

  (*(v23 + 8))(v22, v24);
  (*(v27 + 104))(v26, enum case for CKSyncEngine.SendChangesOptions.Scope.all(_:), v28);
  sub_28BE8();
  v29 = async function pointer to CKSyncEngine.sendChanges(_:)[1];
  v30 = swift_task_alloc();
  v0[14] = v30;
  *v30 = v0;
  v30[1] = sub_582C;
  v31 = v0[9];
  v32 = v0[3];

  return CKSyncEngine.sendChanges(_:)(v31);
}

uint64_t sub_582C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;

  v5 = v2[9];
  v6 = v2[8];
  v7 = v2[7];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = sub_9CB8;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_59C4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_59C4()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);

  v4 = *(v0 + 8);

  return v4();
}

void sub_5A4C(id *a1, uint64_t a2)
{
  v40 = a2;
  v39 = sub_28268();
  v41 = *(v39 - 8);
  v3 = *(v41 + 64);
  __chkstk_darwin();
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_28058();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*(*(sub_7E8C(&qword_391D8, &qword_2A078) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = &v37 - v11;
  v13 = *a1;
  v14 = [*a1 recordID];
  v15 = [v14 recordName];

  v16 = sub_28EC8();
  v18 = v17;

  sub_290A8();
  v19 = sub_28FE8();
  v20 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v21 = *&v19[v20];

  sub_28FF8();
  if ((*(v6 + 48))(v12, 1, v5))
  {
    sub_925C(v12, &qword_391D8, &qword_2A078);

    return;
  }

  v37 = v13;
  v23 = v39;
  v22 = v40;
  (*(v6 + 16))(v9, v12, v5);
  sub_925C(v12, &qword_391D8, &qword_2A078);
  v24 = sub_28038();
  v26 = v25;
  (*(v6 + 8))(v9, v5);
  if (v16 == v24 && v18 == v26)
  {

    v27 = v23;
    v28 = v41;
    v29 = v37;
  }

  else
  {
    v30 = sub_29308();

    v27 = v23;
    v28 = v41;
    v29 = v37;
    if ((v30 & 1) == 0)
    {
      return;
    }
  }

  v31 = v38;
  sub_28178();
  v32 = sub_28258();
  v33 = sub_29138();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_0, v32, v33, "Successfully synced latest guest pass data to CloudKit", v34, 2u);
  }

  (*(v28 + 8))(v31, v27);
  v35 = *(v22 + 40);
  *(v22 + 40) = v29;
  v36 = v29;
}

Class sub_5E44(void *a1, uint64_t a2)
{
  v63 = a2;
  v3 = sub_28268();
  v65 = *(v3 - 8);
  v66 = v3;
  v4 = *(v65 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v61 - v8;
  v10 = sub_28058();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_7E8C(&qword_391D8, &qword_2A078);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v61 - v17;
  v64 = a1;
  v19 = [a1 recordName];
  v20 = sub_28EC8();
  v22 = v21;

  sub_290A8();
  v23 = sub_28FE8();
  v24 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v25 = *&v23[v24];

  sub_28FF8();
  if ((*(v11 + 48))(v18, 1, v10))
  {
    sub_925C(v18, &qword_391D8, &qword_2A078);

LABEL_3:
    sub_28178();
    v26 = v64;
    v27 = sub_28258();
    v28 = sub_29128();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v67[0] = v30;
      *v29 = 136315138;
      v31 = [v26 recordName];
      v32 = sub_28EC8();
      v34 = v33;

      v35 = sub_89C0(v32, v34, v67);

      *(v29 + 4) = v35;
      _os_log_impl(&dword_0, v27, v28, "Asked to upload a record that didn't originate on this device: %s", v29, 0xCu);
      sub_8F68(v30);
    }

    (*(v65 + 8))(v9, v66);
    return 0;
  }

  v38 = v63;
  v62 = v7;
  (*(v11 + 16))(v14, v18, v10);
  sub_925C(v18, &qword_391D8, &qword_2A078);
  v39 = sub_28038();
  v41 = v40;
  (*(v11 + 8))(v14, v10);
  if (v20 == v39 && v22 == v41)
  {
  }

  else
  {
    v42 = sub_29308();

    if ((v42 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v43 = *(v38 + 40);
  if (v43)
  {
    isa = v43;
  }

  else
  {
    sub_9818(0, &qword_391E0, CKRecord_ptr);
    v44.super.isa = v64;
    v68._countAndFlagsBits = 0x7361507473657547;
    v68._object = 0xED00006174614473;
    isa = sub_291B8(v68, v44).super.isa;
  }

  v45 = objc_opt_self();
  sub_28168();
  v46 = v43;
  sub_28118();
  v47 = sub_28E38().super.isa;

  v67[0] = 0;
  v48 = [v45 dataWithPropertyList:v47 format:100 options:0 error:v67];

  v49 = v67[0];
  if (v48)
  {
    v50 = sub_28028();
    v52 = v51;

    v53 = [(objc_class *)isa encryptedValues];
    swift_getObjectType();
    v67[3] = &type metadata for Data;
    v67[4] = &protocol witness table for Data;
    v67[0] = v50;
    v67[1] = v52;
    sub_8FB4(v50, v52);
    sub_29188();
    sub_9008(v50, v52);
    swift_unknownObjectRelease();
    return isa;
  }

  v54 = v49;
  sub_27F78();

  swift_willThrow();
  v55 = v62;
  sub_28178();
  swift_errorRetain();
  v56 = sub_28258();
  v57 = sub_29128();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v58 = 138412290;
    swift_errorRetain();
    v60 = _swift_stdlib_bridgeErrorToNSError();
    *(v58 + 4) = v60;
    *v59 = v60;
    _os_log_impl(&dword_0, v56, v57, "Erring serializing guest pass payload %@", v58, 0xCu);
    sub_925C(v59, &qword_391E8, &qword_2A080);
  }

  else
  {
  }

  (*(v65 + 8))(v55, v66);
  return 0;
}

uint64_t sub_6574(uint64_t a1)
{
  v2 = sub_290E8();
  v3 = *(v2 - 8);
  v91 = v2;
  v92 = v3;
  v4 = *(v3 + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v78 - v8;
  v98 = sub_28268();
  v10 = *(v98 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v98);
  v14 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v78 - v15;
  v95 = sub_290C8();
  v17 = *(v95 - 1);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v95);
  v88 = (&v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v22 = &v78 - v21;
  v23 = sub_28D18();
  v25 = *(v23 + 16);
  v26 = &GuestPassCloudSyncController;
  v94 = v14;
  v90 = v9;
  if (v25)
  {
    v80 = a1;
    v81 = v7;
    v27 = v17 + 16;
    v86 = *(v17 + 16);
    v28 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v78 = v23;
    v29 = v23 + v28;
    v85 = *(v27 + 56);
    *&v87 = v27;
    v97 = (v27 - 8);
    v79 = v10;
    v84 = (v10 + 8);
    *&v24 = 136315138;
    v82 = v24;
    v93 = v16;
    v30 = v95;
    v83 = v22;
    while (1)
    {
      v31 = v86;
      v86(v22, v29, v30);
      sub_28178();
      v32 = v88;
      v31(v88, v22, v30);
      v33 = sub_28258();
      v34 = sub_29138();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v99 = v36;
        *v35 = v82;
        v37 = sub_290B8();
        v38 = [v37 recordID];

        v39 = [v38 v26[34].ivars];
        v40 = sub_28EC8();
        v42 = v41;

        v96 = *v97;
        (v96)(v32, v95);
        v43 = sub_89C0(v40, v42, &v99);
        v26 = &GuestPassCloudSyncController;

        *(v35 + 4) = v43;
        _os_log_impl(&dword_0, v33, v34, "Got new synced guest pass data for record %s", v35, 0xCu);
        sub_8F68(v36);
        v22 = v83;

        (*v84)(v93, v98);
      }

      else
      {

        v96 = *v97;
        (v96)(v32, v30);
        (*v84)(v16, v98);
      }

      v44 = sub_290B8();
      v45 = [v44 encryptedValues];

      v46 = sub_28E88();
      isa = [v45 objectForKeyedSubscript:v46];
      swift_unknownObjectRelease();

      if (!isa)
      {
        goto LABEL_11;
      }

      v101 = isa;
      sub_7E8C(&qword_39280, &unk_2A0A0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v48 = v99;
      v49 = v100;
      v50 = *(v89 + 16);
      sub_8FB4(v99, v100);
      isa = sub_28018().super.isa;
      sub_9008(v48, v49);
LABEL_12:
      v51 = sub_290B8();
      v52 = [v51 recordID];

      v53 = [v52 v26[34].ivars];
      if (!v53)
      {
        sub_28EC8();
        v53 = sub_28E88();
      }

      [v50 storeGuestPassProfile:isa name:{v53, v78}];

      sub_90BC(v48, v49);
      v30 = v95;
      (v96)(v22, v95);
      v29 += v85;
      --v25;
      v16 = v93;
      v14 = v94;
      if (!v25)
      {

        v7 = v81;
        v9 = v90;
        v10 = v79;
        goto LABEL_16;
      }
    }

    isa = 0;
LABEL_11:
    v48 = 0;
    v50 = *(v89 + 16);
    v49 = 0xF000000000000000;
    goto LABEL_12;
  }

LABEL_16:
  v54 = sub_28D28();
  v56 = *(v54 + 16);
  v57 = v91;
  if (v56)
  {
    v95 = *(v89 + 16);
    v58 = *(v92 + 16);
    v92 += 16;
    v93 = v58;
    v59 = (*(v92 + 64) + 32) & ~*(v92 + 64);
    v86 = v54;
    v60 = v54 + v59;
    v61 = *(v92 + 56);
    v97 = (v92 - 8);
    v88 = (v10 + 8);
    v89 = v61;
    *&v55 = 136315138;
    v87 = v55;
    do
    {
      v96 = v56;
      v62 = v93;
      (v93)(v9, v60, v57);
      sub_28178();
      v62(v7, v9, v57);
      v63 = v7;
      v64 = sub_28258();
      v65 = sub_29138();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v99 = v67;
        *v66 = v87;
        v68 = sub_290D8();
        v69 = [v68 recordName];

        v70 = sub_28EC8();
        v72 = v71;

        v73 = *v97;
        (*v97)(v63, v91);
        v74 = sub_89C0(v70, v72, &v99);
        v57 = v91;

        *(v66 + 4) = v74;
        _os_log_impl(&dword_0, v64, v65, "Synced deletion for guest pass record %s", v66, 0xCu);
        sub_8F68(v67);
        v14 = v94;
      }

      else
      {

        v73 = *v97;
        (*v97)(v63, v57);
      }

      (*v88)(v14, v98);
      v7 = v63;
      v9 = v90;
      v75 = sub_290D8();
      v76 = [v75 recordName];

      if (!v76)
      {
        sub_28EC8();
        v76 = sub_28E88();
      }

      [v95 deleteGuestPassProfile:v76];

      v73(v9, v57);
      v60 += v89;
      v56 = v96 - 1;
    }

    while (v96 != &dword_0 + 1);
  }
}

uint64_t sub_6EA8()
{
  v0 = sub_28268();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v27[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_7E8C(&qword_39208, &unk_2A090);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v27[-v7];
  v9 = sub_27FD8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2290(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_925C(v8, &qword_39208, &unk_2A090);
    sub_28178();
    v14 = sub_28258();
    v15 = sub_29128();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "Unable to persist sync state because we could not read from the container", v16, 2u);
    }

    return (*(v1 + 8))(v4, v0);
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    v18 = sub_27E98();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    sub_27E88();
    sub_28D58();
    sub_88D8(&qword_39218, 255, &type metadata accessor for CKSyncEngine.State.Serialization);
    v21 = sub_27E78();
    v23 = v22;

    v24 = [objc_opt_self() defaultManager];
    sub_27FC8();
    v25 = sub_28E88();

    if (v23 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      sub_8FB4(v21, v23);
      isa = sub_28018().super.isa;
      sub_90BC(v21, v23);
    }

    [v24 createFileAtPath:v25 contents:isa attributes:0];

    sub_90BC(v21, v23);
    return (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_7298@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_28268();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_7E8C(&qword_39208, &unk_2A090);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v31[-v9];
  v11 = sub_27FD8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v31[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2290(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_925C(v10, &qword_39208, &unk_2A090);
    sub_28178();
    v16 = sub_28258();
    v17 = sub_29128();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "Unable to retrieve sync state because we could not read from the container", v18, 2u);
    }

    (*(v3 + 8))(v6, v2);
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v19 = [objc_opt_self() defaultManager];
    sub_27FC8();
    v20 = sub_28E88();

    v21 = [v19 fileExistsAtPath:v20];

    if (v21)
    {
      v22 = sub_27E68();
      v23 = *(v22 + 48);
      v24 = *(v22 + 52);
      swift_allocObject();
      sub_27E58();
      v25 = sub_27FE8();
      v27 = v26;
      v28 = sub_28D58();
      sub_88D8(&qword_39210, 255, &type metadata accessor for CKSyncEngine.State.Serialization);
      sub_27E48();
      (*(v12 + 8))(v15, v11);
      sub_9008(v25, v27);

      return (*(*(v28 - 8) + 56))(a1, 0, 1, v28);
    }

    (*(v12 + 8))(v15, v11);
  }

  v29 = sub_28D58();
  return (*(*(v29 - 8) + 56))(a1, 1, 1, v29);
}

uint64_t sub_76F8()
{
  v1 = *(v0 + 24);

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_7750(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_77F4;

  return sub_3024(a1, a2);
}

uint64_t sub_77F4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_78E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  return _swift_task_switch(sub_790C, 0, 0);
}

uint64_t sub_790C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_28D98();
  sub_28D68();

  sub_28C48();
  v4 = v0[1];

  return v4();
}

uint64_t sub_79B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to CKSyncEngineDelegate.nextFetchChangesOptions(_:syncEngine:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_9CB0;

  return CKSyncEngineDelegate.nextFetchChangesOptions(_:syncEngine:)(a1, a2, a3, a4, a5);
}

uint64_t variable initialization expression of AXGuestPassNetworkConnection.connectionState@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for NWConnection.State.setup(_:);
  v3 = sub_28388();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

id variable initialization expression of AXGuestPassRootView._guestPassSettings()
{
  sub_290A8();
  v0 = sub_28FE8();
  v1 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v2 = *&v0[v1];

  return v2;
}

uint64_t variable initialization expression of AXGuestPassRootView.browseDescriptor@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_284C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = sub_284E8();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v16 = *(sub_7E8C(&qword_39040, &qword_29DE0) + 48);
  v7 = sub_280B8();
  v8 = sub_28158();
  v10 = v9;

  *a1 = v8;
  a1[1] = v10;
  sub_284D8();
  sub_7E8C(&qword_39048, &qword_29DE8);
  v11 = *(v3 + 72);
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_29DD0;
  sub_284B8();
  sub_284A8();
  sub_88D8(&qword_39050, 255, &type metadata accessor for NWBrowser.Descriptor.Options.DeviceType);
  sub_7E8C(&qword_39058, &qword_29DF0);
  sub_7ED4();
  sub_29208();
  sub_284F8();
  v13 = enum case for NWBrowser.Descriptor.applicationServiceWithOptions(_:);
  v14 = sub_28508();
  return (*(*(v14 - 8) + 104))(a1, v13, v14);
}

uint64_t sub_7E8C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_7ED4()
{
  result = qword_39060;
  if (!qword_39060)
  {
    sub_7F38(&qword_39058, &qword_29DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39060);
  }

  return result;
}

uint64_t sub_7F38(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_7FE8(uint64_t a1)
{
  v2 = sub_88D8(&qword_39308, 255, type metadata accessor for CKError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_8058(uint64_t a1)
{
  v2 = sub_88D8(&qword_39308, 255, type metadata accessor for CKError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_80CC(uint64_t a1)
{
  v2 = sub_88D8(&qword_39298, 255, type metadata accessor for CKError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_8158(uint64_t a1, id *a2)
{
  result = sub_28EA8();
  *a2 = 0;
  return result;
}

uint64_t sub_81D0(uint64_t a1, id *a2)
{
  v3 = sub_28EB8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_8250@<X0>(void *a1@<X8>)
{
  sub_28EC8();
  v2 = sub_28E88();

  *a1 = v2;
  return result;
}

uint64_t sub_8294()
{
  v1 = *v0;
  sub_28EC8();
  v2 = sub_28F38();

  return v2;
}

uint64_t sub_82D0()
{
  v1 = *v0;
  sub_28EC8();
  sub_28F08();
}

Swift::Int sub_8324()
{
  v1 = *v0;
  sub_28EC8();
  sub_29368();
  sub_28F08();
  v2 = sub_29378();

  return v2;
}

uint64_t sub_83A8(uint64_t a1)
{
  v2 = sub_88D8(&qword_39298, 255, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_8418(uint64_t a1)
{
  v2 = sub_88D8(&qword_39298, 255, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_8488(void *a1, uint64_t a2)
{
  v4 = sub_88D8(&qword_39298, 255, type metadata accessor for CKError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_8540(uint64_t a1, uint64_t a2)
{
  v4 = sub_88D8(&qword_39298, 255, type metadata accessor for CKError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_85C0()
{
  v2 = *v0;
  sub_29368();
  sub_28E68();
  return sub_29378();
}

void *sub_8620@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_8630(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_28EC8();
  v6 = v5;
  if (v4 == sub_28EC8() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_29308();
  }

  return v9 & 1;
}

uint64_t sub_86B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_88D8(&qword_39298, 255, type metadata accessor for CKError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_8754@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_28E88();

  *a2 = v5;
  return result;
}

uint64_t sub_879C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_28EC8();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_87C8(uint64_t a1)
{
  v2 = sub_88D8(&qword_391F8, 255, type metadata accessor for STBackgroundActivityIdentifier);
  v3 = sub_88D8(&qword_39200, 255, type metadata accessor for STBackgroundActivityIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_88D8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_89C0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_8A8C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_905C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_8F68(v11);
  return v7;
}

unint64_t sub_8A8C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_8B98(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_29298();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_8B98(uint64_t a1, unint64_t a2)
{
  v4 = sub_8BE4(a1, a2);
  sub_8D14(&off_35AE8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_8BE4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_8E00(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_29298();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_28F28();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_8E00(v10, 0);
        result = sub_29268();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_8D14(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_8E74(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_8E00(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_7E8C(&qword_391F0, &qword_2A088);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_8E74(char *result, int64_t a2, char a3, char *a4)
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
    sub_7E8C(&qword_391F0, &qword_2A088);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_8F68(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_8FB4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_9008(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_905C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_90BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_9008(a1, a2);
  }

  return a1;
}

uint64_t sub_90E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_912C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_9CB0;

  return sub_52E0(a1, v4, v5, v7, v6);
}

uint64_t sub_91EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_7E8C(&qword_39288, &qword_2A540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_925C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_7E8C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_92BC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_92F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_9CB0;

  return sub_1A290(a1, v5);
}

uint64_t sub_93AC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_93EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_77F4;

  return sub_4C10(a1, v4, v5, v6);
}

uint64_t sub_94A0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_9594;

  return v6(v2 + 32);
}

uint64_t sub_9594()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_96A8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_9CB0;

  return sub_94A0(a1, v5);
}

uint64_t sub_9760(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_77F4;

  return sub_94A0(a1, v5);
}

uint64_t sub_9818(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *sub_9878(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_98BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_7E8C(&qword_39208, &unk_2A090);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_9B1C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_9BB8()
{
  result = qword_39330;
  if (!qword_39330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39330);
  }

  return result;
}

uint64_t property wrapper backing initializer of AXGuestPassAlertView.guestPassServer()
{
  swift_getObjectType();
  sub_28A58();
  return v1;
}

uint64_t AXGuestPassAlertView.init()()
{
  type metadata accessor for AXGuestPassServer();
  sub_AD5C();
  sub_28A58();
  return v1;
}

uint64_t AXGuestPassAlertView.body.getter()
{
  v0._object = 0x800000000002B520;
  v0._countAndFlagsBits = 0xD000000000000016;
  GuestPassLocString(_:)(v0);
  sub_7E8C(&qword_393B0, &qword_2A450);
  sub_28A88();
  swift_getKeyPath();
  sub_7E8C(&qword_393B8, &qword_2A480);
  sub_28AE8();

  sub_7E8C(&qword_393C0, &qword_2A488);
  sub_A978();
  sub_A9CC();
  sub_289A8();
}

uint64_t sub_9F14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_AD04();
  sub_28088();

  *a2 = *(v3 + OBJC_IVAR___AXGuestPassServer__presentStatusBarAlert);
  return result;
}

uint64_t sub_9FE8@<X0>(char *a1@<X8>)
{
  v29 = a1;
  v1 = sub_7E8C(&qword_393D8, &qword_2A528);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v28 - v3;
  v5 = sub_7E8C(&qword_393E0, &qword_2A530);
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v28 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v28 - v14;
  __chkstk_darwin(v13);
  v17 = &v28 - v16;
  v18._countAndFlagsBits = 0xD000000000000024;
  v18._object = 0x800000000002B560;
  v30 = GuestPassLocString(_:)(v18);
  sub_28578();
  v19 = sub_28598();
  v20 = *(*(v19 - 8) + 56);
  v20(v4, 0, 1, v19);
  sub_A978();
  sub_28AB8();
  v21._object = 0x800000000002B590;
  v21._countAndFlagsBits = 0xD00000000000001ELL;
  v30 = GuestPassLocString(_:)(v21);
  sub_28588();
  v20(v4, 0, 1, v19);
  sub_28AB8();
  v22 = v6[2];
  v22(v12, v17, v5);
  v23 = v28;
  v22(v28, v15, v5);
  v24 = v29;
  v22(v29, v12, v5);
  v25 = sub_7E8C(&qword_393E8, &qword_2A538);
  v22(&v24[*(v25 + 48)], v23, v5);
  v26 = v6[1];
  v26(v15, v5);
  v26(v17, v5);
  v26(v23, v5);
  return (v26)(v12, v5);
}

uint64_t sub_A364()
{
  v0 = sub_7E8C(&qword_39288, &qword_2A540);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_28F98();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_28F78();
  v5 = sub_28F68();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = &protocol witness table for MainActor;
  sub_16BFC(0, 0, v3, &unk_2A550, v6);
}

uint64_t sub_A470()
{
  v1 = sub_28268();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  sub_28F78();
  v0[5] = sub_28F68();
  v5 = sub_28F58();
  v0[6] = v5;
  v0[7] = v4;

  return _swift_task_switch(sub_A560, v5, v4);
}

uint64_t sub_A560()
{
  *(v0 + 64) = sub_280B8();
  v1 = async function pointer to AXGuestPassService.endGuestPassSession()[1];
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_A5FC;

  return AXGuestPassService.endGuestPassSession()();
}

uint64_t sub_A5FC()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 48);
    v5 = *(v2 + 56);
    v6 = sub_A780;
  }

  else
  {

    v4 = *(v2 + 48);
    v5 = *(v2 + 56);
    v6 = sub_A718;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_A718()
{
  v1 = v0[5];

  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_A780()
{
  v1 = v0[10];
  v2 = v0[8];
  v4 = v0[4];
  v3 = v0[5];

  sub_28178();
  swift_errorRetain();
  v5 = sub_28258();
  v6 = sub_29128();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[10];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_0, v5, v6, "AXGuestPassAlertView: Unable to end guest pass session. %@", v9, 0xCu);
    sub_AC9C(v10);
  }

  else
  {
    v12 = v0[10];
  }

  (*(v0[3] + 8))(v0[4], v0[2]);
  v13 = v0[4];

  v14 = v0[1];

  return v14();
}

uint64_t sub_A908@<X0>(uint64_t a1@<X8>)
{
  v2._object = 0x800000000002B540;
  v2._countAndFlagsBits = 0xD000000000000018;
  GuestPassLocString(_:)(v2);
  sub_A978();
  result = sub_288F8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

unint64_t sub_A978()
{
  result = qword_393C8;
  if (!qword_393C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_393C8);
  }

  return result;
}

unint64_t sub_A9CC()
{
  result = qword_393D0;
  if (!qword_393D0)
  {
    sub_7F38(&qword_393C0, &qword_2A488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_393D0);
  }

  return result;
}

uint64_t sub_AA70()
{
  v1 = *v0;
  v2 = v0[1];
  return AXGuestPassAlertView.body.getter();
}

__n128 sub_AA78(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_AA84(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_AACC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_AB18()
{
  sub_7F38(&qword_393C0, &qword_2A488);
  sub_A978();
  sub_A9CC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_ABB8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_ABF0()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_77F4;

  return sub_A470();
}

uint64_t sub_AC9C(uint64_t a1)
{
  v2 = sub_7E8C(&qword_391E8, &qword_2A080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_AD04()
{
  result = qword_39550;
  if (!qword_39550)
  {
    type metadata accessor for AXGuestPassServer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39550);
  }

  return result;
}

id sub_AD5C()
{
  if (qword_39030 != -1)
  {
    swift_once();
  }

  v0 = swift_dynamicCastClassUnconditional();

  return v0;
}

uint64_t sub_ADD0()
{
  swift_getKeyPath();
  sub_1316C(&qword_39550, type metadata accessor for AXGuestPassServer);
  sub_28088();

  return *(v0 + OBJC_IVAR___AXGuestPassServer__presentStatusBarAlert);
}

uint64_t sub_AE78(uint64_t result)
{
  if (*(v1 + OBJC_IVAR___AXGuestPassServer__presentStatusBarAlert) == (result & 1))
  {
    *(v1 + OBJC_IVAR___AXGuestPassServer__presentStatusBarAlert) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1316C(&qword_39550, type metadata accessor for AXGuestPassServer);
    sub_28078();
  }

  return result;
}

void *sub_AFB8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1316C(&qword_39550, type metadata accessor for AXGuestPassServer);
  sub_28088();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

id sub_B060@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1316C(&qword_39550, type metadata accessor for AXGuestPassServer);
  sub_28088();

  v6 = *(v5 + *a2);
  *a3 = v6;

  return v6;
}

void sub_B124(void *a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = *(v2 + *a2);
  if (!v6)
  {
    if (!a1)
    {
      v10 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1316C(&qword_39550, type metadata accessor for AXGuestPassServer);
    sub_28078();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_11F90();
  v7 = v6;
  v8 = a1;
  v9 = sub_291C8();

  if ((v9 & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(v3 + v5);
LABEL_8:
  *(v3 + v5) = a1;
}

uint64_t sub_B2A8()
{
  swift_getKeyPath();
  sub_1316C(&qword_39550, type metadata accessor for AXGuestPassServer);
  sub_28088();

  v1 = *(v0 + OBJC_IVAR___AXGuestPassServer__profileList);
}

uint64_t sub_B354(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR___AXGuestPassServer__profileList);
  *(a1 + OBJC_IVAR___AXGuestPassServer__profileList) = a2;
}

uint64_t sub_B398()
{
  swift_getKeyPath();
  sub_1316C(&qword_39550, type metadata accessor for AXGuestPassServer);
  sub_28088();

  v1 = *(v0 + OBJC_IVAR___AXGuestPassServer__senderDescription);
  v2 = *(v0 + OBJC_IVAR___AXGuestPassServer__senderDescription + 8);

  return v1;
}

uint64_t sub_B454@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1316C(&qword_39550, type metadata accessor for AXGuestPassServer);
  sub_28088();

  v4 = *(v3 + OBJC_IVAR___AXGuestPassServer__senderDescription + 8);
  *a2 = *(v3 + OBJC_IVAR___AXGuestPassServer__senderDescription);
  a2[1] = v4;
}

uint64_t sub_B50C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_B54C(v2, v3);
}

uint64_t sub_B54C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___AXGuestPassServer__senderDescription);
  v6 = *(v2 + OBJC_IVAR___AXGuestPassServer__senderDescription + 8);
  if (v6)
  {
    if (a2)
    {
      if (*v5 == a1 && v6 == a2)
      {
        goto LABEL_8;
      }

      v8 = *(v2 + OBJC_IVAR___AXGuestPassServer__senderDescription + 8);
      if (sub_29308())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1316C(&qword_39550, type metadata accessor for AXGuestPassServer);
    sub_28078();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

id sub_B6C8()
{
  swift_getKeyPath();
  sub_1316C(&qword_39550, type metadata accessor for AXGuestPassServer);
  sub_28088();

  v1 = *(v0 + OBJC_IVAR___AXGuestPassServer__networkConnection);

  return v1;
}

id sub_B780@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1316C(&qword_39550, type metadata accessor for AXGuestPassServer);
  sub_28088();

  v4 = *(v3 + OBJC_IVAR___AXGuestPassServer__networkConnection);
  *a2 = v4;

  return v4;
}

void sub_B86C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___AXGuestPassServer__networkConnection;
  v5 = *(v1 + OBJC_IVAR___AXGuestPassServer__networkConnection);
  type metadata accessor for AXGuestPassNetworkConnection();
  v6 = v5;
  v7 = sub_291C8();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1316C(&qword_39550, type metadata accessor for AXGuestPassServer);
    sub_28078();
  }
}

void *sub_B9D0()
{
  v1 = OBJC_IVAR___AXGuestPassServer____lazy_storage___syncController;
  if (*(v0 + OBJC_IVAR___AXGuestPassServer____lazy_storage___syncController))
  {
    v2 = *(v0 + OBJC_IVAR___AXGuestPassServer____lazy_storage___syncController);
  }

  else
  {
    v3 = v0;
    type metadata accessor for GuestPassCloudSyncController();
    swift_allocObject();
    v2 = sub_28D8();
    v4 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_BA4C()
{
  result = [objc_allocWithZone(type metadata accessor for AXGuestPassServer()) init];
  qword_393F0 = result;
  return result;
}

char *sub_BAB8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR___AXGuestPassServer___gpTransferViewController] = 0;
  *&v0[OBJC_IVAR___AXGuestPassServer___gpSessionViewController] = 0;
  v3 = OBJC_IVAR___AXGuestPassServer_settingsProfileManager;
  *&v1[v3] = [objc_allocWithZone(AXSettingsProfileManager) init];
  *&v1[OBJC_IVAR___AXGuestPassServer__profileList] = sub_12218(&_swiftEmptyArrayStorage);
  v1[OBJC_IVAR___AXGuestPassServer__presentStatusBarAlert] = 0;
  v4 = &v1[OBJC_IVAR___AXGuestPassServer__senderDescription];
  v5 = type metadata accessor for AXGuestPassNetworkConnection();
  *v4 = 0;
  v4[1] = 0;
  v6 = [objc_allocWithZone(v5) init];
  *&v1[OBJC_IVAR___AXGuestPassServer__networkConnection] = v6;
  *&v1[OBJC_IVAR___AXGuestPassServer____lazy_storage___syncController] = 0;
  v7 = OBJC_IVAR___AXGuestPassServer_activityController;
  type metadata accessor for AXGuestPassBackgroundActivityController();
  swift_allocObject();
  *&v1[v7] = sub_20B74();
  v8 = OBJC_IVAR___AXGuestPassServer_pinManager;
  type metadata accessor for GuestPassPINManager();
  swift_allocObject();
  *&v1[v8] = sub_18B80();
  _s17AXGuestPassServer0aB17NetworkConnectionC22__observationRegistrar33_F8B8A65206FC09C8A21103A3AFF7C9E911Observation0rG0Vvpfi_0();
  v28.receiver = v1;
  v28.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v28, "init");
  sub_290A8();
  v10 = v9;
  v11 = sub_28FE8();
  v12 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v13 = *&v11[v12];

  sub_29068();
  v14 = sub_28FE8();
  v15 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v16 = *&v14[v15];

  sub_29048();
  v17 = sub_28FE8();
  v18 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v19 = *&v17[v18];

  sub_29088();
  v20 = *&v10[OBJC_IVAR___AXGuestPassServer_activityController];
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = *(v20 + 40);
  v23 = *(v20 + 48);
  *(v20 + 40) = sub_135CC;
  *(v20 + 48) = v21;

  sub_135D4(v22);

  v24 = [objc_opt_self() sharedInstance];
  aBlock[4] = sub_BF8C;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_C0F8;
  aBlock[3] = &unk_35E68;
  v25 = _Block_copy(aBlock);
  [v24 registerUpdateBlock:v25 forRetrieveSelector:sub_28068() withListener:v10];

  _Block_release(v25);
  return v10;
}

void sub_BE40()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (Strong[OBJC_IVAR___AXGuestPassServer__presentStatusBarAlert] == 1)
    {
      Strong[OBJC_IVAR___AXGuestPassServer__presentStatusBarAlert] = 1;
    }

    else
    {
      v1 = Strong;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1316C(&qword_39550, type metadata accessor for AXGuestPassServer);
      sub_28078();
    }
  }
}

uint64_t sub_BF8C()
{
  v0 = sub_28268();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_28178();
  v5 = sub_28258();
  v6 = sub_29108();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "Guest pass status changed, updating CC widget", v7, 2u);
  }

  (*(v1 + 8))(v4, v0);
  sub_28E18();
  sub_28E08();
  sub_28DF8();
}

uint64_t sub_C0F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_C16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[17] = a4;
  return _swift_task_switch(sub_C190, 0, 0);
}

uint64_t sub_C190()
{
  v1 = v0[17];
  v0[20] = sub_B9D0();
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_C22C;

  return sub_24BC();
}

uint64_t sub_C22C(char a1)
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_C34C, 0, 0);
}

uint64_t sub_C34C()
{
  v1 = *(v0 + 176);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  sub_7E8C(&qword_39570, &qword_2A668);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29DC0;
  strcpy((v0 + 120), "syncAvailable");
  *(v0 + 134) = -4864;
  sub_29248();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = v1;
  v5 = sub_1231C(inited);
  swift_setDeallocating();
  sub_925C(inited + 32, &qword_39578, &unk_2A670);
  v3(v5, 0);

  v6 = *(v0 + 8);

  return v6();
}

void sub_C578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5.super.isa = sub_28E38().super.isa;
    if (a2)
    {
LABEL_3:
      v6 = sub_27F68();
      goto LABEL_6;
    }
  }

  else
  {
    v5.super.isa = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

unint64_t sub_C624(unint64_t a1, char *a2, uint64_t a3, unint64_t a4)
{
  v111 = a3;
  v114 = a2;
  v6 = sub_7E8C(&qword_39288, &qword_2A540);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v107 = &v100 - v8;
  v9 = sub_7E8C(&qword_39208, &unk_2A090);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v108 = &v100 - v14;
  v15 = sub_27FD8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v103 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v109 = &v100 - v21;
  v22 = __chkstk_darwin(v20);
  v105 = &v100 - v23;
  __chkstk_darwin(v22);
  v25 = &v100 - v24;
  v26 = sub_28268();
  v115 = *(v26 - 8);
  v116 = v26;
  v27 = *(v115 + 64);
  __chkstk_darwin(v26);
  v29 = &v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v25;
  if (a1)
  {
    v30 = a1;
  }

  else
  {
    v30 = sub_1231C(&_swiftEmptyArrayStorage);
  }

  v106 = v13;
  v112 = v15;

  v110 = sub_28E58();
  v32 = v31;
  sub_28178();

  v33 = sub_28258();
  v34 = sub_29138();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v113 = v30;
    v36 = v35;
    v37 = swift_slowAlloc();
    v102 = v16;
    v100 = v37;
    v121 = v37;
    *v36 = 134218498;
    v101 = v29;
    v38 = v114;
    *(v36 + 4) = v114;
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_89C0(v111, a4, &v121);
    *(v36 + 22) = 2080;
    v39 = sub_89C0(v110, v32, &v121);

    *(v36 + 24) = v39;
    _os_log_impl(&dword_0, v33, v34, "Service got a message: %ld from client: %s. Payload: %s", v36, 0x20u);
    swift_arrayDestroy();
    v40 = v102;

    v30 = v113;

    (*(v115 + 8))(v101, v116);
    if (v38 != &dword_8 + 2)
    {
      goto LABEL_6;
    }
  }

  else
  {

    (*(v115 + 8))(v29, v116);
    v38 = v114;
    v40 = v16;
    if (v114 != &dword_8 + 2)
    {
LABEL_6:
      if (v38 == &dword_8 + 1)
      {

        v41 = [*&v118[OBJC_IVAR___AXGuestPassServer_settingsProfileManager] guestPassLocalStorageURL];
        if (v41)
        {
          v42 = v104;
          v43 = v41;
          sub_27FA8();

          v44 = [objc_opt_self() defaultManager];
          sub_28EC8();
          v45 = v105;
          sub_27F98();

          sub_27FB8(1);
          v46 = *(v40 + 8);
          v47 = v112;
          v46(v45, v112);
          v48 = sub_28E88();

          v121 = 0;
          v49 = [v44 contentsOfDirectoryAtPath:v48 error:&v121];

          v50 = v121;
          if (v49)
          {
            v51 = sub_28F48();
            v52 = v50;

            sub_7E8C(&qword_39570, &qword_2A668);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_29DC0;
            v121 = 0x4C656C69666F7270;
            v122 = 0xEB00000000747369;
            sub_29248();
            *(inited + 96) = sub_7E8C(&unk_39580, &unk_2B320);
            *(inited + 72) = v51;
            v54 = sub_1231C(inited);
            swift_setDeallocating();
            sub_925C(inited + 32, &qword_39578, &unk_2A670);
            v46(v42, v47);
            return v54;
          }

          else
          {
            v75 = v121;
            sub_27F78();

            swift_willThrow();

            v76 = sub_1231C(&_swiftEmptyArrayStorage);
            v46(v42, v47);
            return v76;
          }
        }
      }

      else
      {
        v61 = sub_28F98();
        v62 = v107;
        (*(*(v61 - 8) + 56))(v107, 1, 1, v61);
        sub_28F78();
        v63 = v30;
        v64 = v118;
        v65 = sub_28F68();
        v66 = swift_allocObject();
        v66[2] = v65;
        v66[3] = &protocol witness table for MainActor;
        v66[4] = v38;
        v66[5] = v64;
        v66[6] = v63;
        sub_16BFC(0, 0, v62, &unk_2A660, v66);
      }

      return sub_1231C(&_swiftEmptyArrayStorage);
    }
  }

  v56 = [*&v118[OBJC_IVAR___AXGuestPassServer_settingsProfileManager] guestPassLocalStorageURL];
  v57 = v112;
  if (v56)
  {
    v58 = v106;
    v59 = v56;
    sub_27FA8();

    v60 = 0;
  }

  else
  {
    v60 = 1;
    v58 = v106;
  }

  (*(v40 + 56))(v58, v60, 1, v57);
  v67 = v108;
  sub_98BC(v58, v108);
  if ((*(v40 + 48))(v67, 1, v57) == 1)
  {

    sub_925C(v67, &qword_39208, &unk_2A090);
    return sub_1231C(&_swiftEmptyArrayStorage);
  }

  v113 = v30;
  sub_28EC8();
  v68 = v103;
  sub_27F98();

  v116 = *(v40 + 8);
  v116(v67, v57);
  (*(v40 + 32))(v109, v68, v57);
  v114 = objc_opt_self();
  v69 = [v114 defaultManager];
  sub_27FB8(1);
  v70 = sub_28E88();

  v121 = 0;
  v71 = [v69 contentsOfDirectoryAtPath:v70 error:&v121];

  v72 = v121;
  if (v71)
  {
    v73 = sub_28F48();
    v74 = v72;
  }

  else
  {
    v77 = v121;
    sub_27F78();

    swift_willThrow();

    v117 = 0;
    v73 = &_swiftEmptyArrayStorage;
  }

  v78 = v113;
  v79 = v116;
  v118 = v73[2];
  if (!v118)
  {

LABEL_37:

    v87 = sub_1231C(&_swiftEmptyArrayStorage);
    v79(v109, v57);
    return v87;
  }

  v115 = v40 + 8;
  v80 = 0;
  v81 = v73 + 5;
  while (1)
  {
    if (v80 >= v73[2])
    {
      __break(1u);
    }

    v83 = *(v81 - 1);
    v82 = *v81;
    v119 = 0x49656C69666F7270;
    v120 = 0xE900000000000044;

    sub_29248();
    if (*(v78 + 16))
    {
      v84 = sub_12054(&v121);
      if (v85)
      {
        break;
      }
    }

    sub_12548(&v121);
LABEL_25:

LABEL_26:
    ++v80;
    v81 += 2;
    if (v118 == v80)
    {

      v57 = v112;
      goto LABEL_37;
    }
  }

  sub_905C(*(v78 + 56) + 32 * v84, v123);
  sub_12548(&v121);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_25;
  }

  if (v83 == v119 && v82 == v120)
  {

    goto LABEL_40;
  }

  v86 = sub_29308();

  if ((v86 & 1) == 0)
  {

    v78 = v113;
    v79 = v116;
    goto LABEL_26;
  }

LABEL_40:

  v88 = [v114 defaultManager];
  v89 = v105;
  sub_27F98();

  sub_27FB8(1);
  v90 = v112;
  v91 = v116;
  v116(v89, v112);
  v92 = sub_28E88();

  v93 = [v88 contentsAtPath:v92];

  if (v93)
  {
    v94 = sub_28028();
    v96 = v95;

    sub_7E8C(&qword_39570, &qword_2A668);
    v97 = swift_initStackObject();
    *(v97 + 16) = xmmword_29DC0;
    v121 = 0x44656C69666F7270;
    v122 = 0xEB00000000617461;
    sub_8FB4(v94, v96);
    sub_29248();
    *(v97 + 96) = &type metadata for Data;
    *(v97 + 72) = v94;
    *(v97 + 80) = v96;
    v98 = sub_1231C(v97);
    swift_setDeallocating();
    sub_925C(v97 + 32, &qword_39578, &unk_2A670);
    sub_9008(v94, v96);
    v91(v109, v90);
    return v98;
  }

  else
  {
    v99 = sub_1231C(&_swiftEmptyArrayStorage);
    v91(v109, v90);
    return v99;
  }
}

uint64_t sub_D374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = sub_28F78();
  v6[6] = sub_28F68();
  v8 = sub_28F58();
  v6[7] = v8;
  v6[8] = v7;

  return _swift_task_switch(sub_D414, v8, v7);
}

uint64_t sub_D414()
{
  v1 = v0[2];
  if (v1 <= 5)
  {
    if (v1 <= 2)
    {
      if (v1 == 1)
      {
        v11 = swift_task_alloc();
        v0[11] = v11;
        *v11 = v0;
        v11[1] = sub_DA80;
        v13 = v0[3];
        v12 = v0[4];

        return sub_F428(v12);
      }

      else
      {
        if (v1 != 2)
        {
          goto LABEL_39;
        }

        v9 = swift_task_alloc();
        v0[12] = v9;
        *v9 = v0;
        v9[1] = sub_DBA0;
        v10 = v0[3];

        return sub_1032C();
      }
    }

    else if (v1 == 3)
    {
      v21 = swift_task_alloc();
      v0[9] = v21;
      *v21 = v0;
      v21[1] = sub_D840;
      v22 = v0[3];

      return sub_E1F4();
    }

    else if (v1 == 4)
    {
      v14 = swift_task_alloc();
      v0[10] = v14;
      *v14 = v0;
      v14[1] = sub_D960;
      v15 = v0[3];

      return sub_ECF0();
    }

    else
    {
      v4 = swift_task_alloc();
      v0[13] = v4;
      *v4 = v0;
      v4[1] = sub_DCC0;
      v5 = v0[3];

      return sub_10C68();
    }
  }

  else
  {
    if (v1 > 10)
    {
      switch(v1)
      {
        case 11:
          v24 = v0[6];
          v25 = v0[3];

          v26 = *(v25 + OBJC_IVAR___AXGuestPassServer_pinManager);
          sub_1735C();
          break;
        case 12:
          v18 = v0[6];
          v19 = v0[3];

          v20 = *(v19 + OBJC_IVAR___AXGuestPassServer_pinManager);
          sub_18040();
          break;
        case 13:
          v7 = v0[6];

          sub_280E8();
          v8 = sub_280D8();
          sub_280C8();

          break;
        default:
          goto LABEL_39;
      }

LABEL_41:
      v28 = v0[1];

      return v28();
    }

    switch(v1)
    {
      case 6:
        v23 = v0[3];
        v0[14] = sub_B9D0();

        return _swift_task_switch(sub_DE40, 0, 0);
      case 7:
        v16 = v0[3];
        v0[17] = sub_B9D0();
        v17 = swift_task_alloc();
        v0[18] = v17;
        *v17 = v0;
        v17[1] = sub_E0B0;

        return sub_2D8C();
      case 8:
        v2 = v0[6];
        v3 = v0[3];

        sub_B9D0();
        sub_1ED0();

LABEL_40:

        goto LABEL_41;
      default:
LABEL_39:
        v27 = v0[6];
        goto LABEL_40;
    }
  }
}

uint64_t sub_D840()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return _swift_task_switch(sub_13670, v4, v3);
}

uint64_t sub_D960()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return _swift_task_switch(sub_13670, v4, v3);
}

uint64_t sub_DA80()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return _swift_task_switch(sub_13670, v4, v3);
}

uint64_t sub_DBA0()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return _swift_task_switch(sub_13670, v4, v3);
}

uint64_t sub_DCC0()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return _swift_task_switch(sub_DDE0, v4, v3);
}

uint64_t sub_DDE0()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_DE40()
{
  v1 = *(v0 + 40);
  *(v0 + 120) = sub_28F68();
  v3 = sub_28F58();

  return _swift_task_switch(sub_DECC, v3, v2);
}

uint64_t sub_DECC()
{
  v2 = v0[14];
  v1 = v0[15];

  v0[16] = sub_1ED0();

  return _swift_task_switch(sub_DF3C, 0, 0);
}

uint64_t sub_DF3C()
{
  v1 = v0[16];
  v2 = v0[14];
  sub_28D98();

  sub_7E8C(&qword_392A0, &qword_2A680);
  v3 = sub_28C58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 1) = xmmword_29DC0;
  *&v7[v6] = sub_2A78();
  (*(v4 + 104))(&v7[v6], enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:), v3);
  v8._rawValue = v7;
  sub_28D88(v8);

  v9 = v0[7];
  v10 = v0[8];

  return _swift_task_switch(sub_13670, v9, v10);
}

uint64_t sub_E0B0()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v7 = *v0;

  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return _swift_task_switch(sub_13670, v5, v4);
}

uint64_t sub_E1F4()
{
  v1[22] = v0;
  v2 = sub_28268();
  v1[23] = v2;
  v3 = *(v2 - 8);
  v1[24] = v3;
  v4 = *(v3 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v5 = type metadata accessor for AXGuestPassRootView();
  v1[29] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[30] = swift_task_alloc();
  sub_28F78();
  v1[31] = sub_28F68();
  v8 = sub_28F58();
  v1[32] = v8;
  v1[33] = v7;

  return _swift_task_switch(sub_E33C, v8, v7);
}

uint64_t sub_E33C()
{
  sub_290A8();
  v1 = sub_28FE8();
  v2 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v3 = *(v1 + v2);

  LOBYTE(v1) = sub_29038();
  if (v1 & 1) != 0 || (v4 = sub_28FE8(), v5 = direct field offset for AXSettings.guestPass, swift_beginAccess(), v6 = *(v4 + v5), v4, LOBYTE(v4) = sub_29058(), v6, (v4))
  {
    v7 = *(v0 + 248);
    v8 = *(v0 + 208);

    sub_28178();
    v9 = sub_28258();
    v10 = sub_29128();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 208);
    v13 = *(v0 + 184);
    v14 = *(v0 + 192);
    if (!v11)
    {
LABEL_6:

      (*(v14 + 8))(v12, v13);
LABEL_7:
      v17 = *(v0 + 240);
      v18 = *(v0 + 216);
      v19 = *(v0 + 224);
      v21 = *(v0 + 200);
      v20 = *(v0 + 208);

      v22 = *(v0 + 8);

      return v22();
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "Asked to show guest pass transfer UI when already shown";
LABEL_5:
    _os_log_impl(&dword_0, v9, v10, v16, v15, 2u);

    goto LABEL_6;
  }

  if (!AXDeviceIsUnlocked())
  {
    v29 = *(v0 + 248);
    v30 = *(v0 + 216);

    sub_28178();
    v9 = sub_28258();
    v10 = sub_29128();
    v31 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 216);
    v13 = *(v0 + 184);
    v14 = *(v0 + 192);
    if (!v31)
    {
      goto LABEL_6;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "Asked to show guest pass tranfser UI when device was locked.";
    goto LABEL_5;
  }

  v24 = sub_28FE8();
  v25 = [v24 guestPassSessionIsActive];

  if (v25)
  {
    v26 = *(v0 + 248);
    v27 = *(v0 + 224);

    sub_28178();
    v9 = sub_28258();
    v10 = sub_29128();
    v28 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 224);
    v13 = *(v0 + 184);
    v14 = *(v0 + 192);
    if (!v28)
    {
      goto LABEL_6;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "Asked to show guest pass tranfser UI when guest pass session was already active.";
    goto LABEL_5;
  }

  v32 = sub_28FE8();
  v33 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v34 = *&v32[v33];

  v35 = sub_29018();
  v36 = sub_28FE8();
  v37 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v38 = *&v36[v37];

  if (v35)
  {
    sub_29068();
  }

  else
  {
    sub_29048();
  }

  v39 = *(v0 + 176);

  swift_getKeyPath();
  *(v0 + 168) = v39;
  sub_1316C(&qword_39550, type metadata accessor for AXGuestPassServer);
  sub_28088();

  if (*(v39 + OBJC_IVAR___AXGuestPassServer___gpTransferViewController))
  {
    v40 = *(v0 + 248);

    v41 = *(v0 + 176);
    sub_113F0();
    goto LABEL_7;
  }

  v42 = *(v0 + 240);
  sub_281E8();
  *(v0 + 272) = sub_281D8();
  AXGuestPassRootView.init()(v42);
  v43 = sub_280B8();
  v44 = sub_28158();
  v46 = v45;

  *(v0 + 280) = v46;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v47 = async function pointer to AXUniversalDisplayManager.addContent<A>(withView:userInteractionEnabled:service:sceneClientIdentifier:windowIdentifier:context:userInterfaceStyle:windowScene:spatialConfiguration:)[1];
  v48 = swift_task_alloc();
  *(v0 + 288) = v48;
  sub_1316C(&qword_39590, type metadata accessor for AXGuestPassRootView);
  *v48 = v0;
  v48[1] = sub_E8A8;
  v49 = *(v0 + 240);
  v50 = *(v0 + 176);
  v52 = *(v0 + 232);

  return AXUniversalDisplayManager.addContent<A>(withView:userInteractionEnabled:service:sceneClientIdentifier:windowIdentifier:context:userInterfaceStyle:windowScene:spatialConfiguration:)(v49, 1, v50, 0xD000000000000020, 0x800000000002B760, v44, v46, 0);
}

uint64_t sub_E8A8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 288);
  v6 = *(*v2 + 280);
  v7 = *(*v2 + 272);
  v8 = *v2;
  v4[37] = v1;

  v9 = v4[30];
  if (v1)
  {
    sub_925C((v4 + 2), &qword_39598, &qword_2AEB0);
    sub_125F8(v9);
    v10 = v4[32];
    v11 = v4[33];
    v12 = sub_EB38;
  }

  else
  {
    v4[38] = a1;
    sub_925C((v4 + 2), &qword_39598, &qword_2AEB0);
    sub_125F8(v9);
    v10 = v4[32];
    v11 = v4[33];
    v12 = sub_EA64;
  }

  return _swift_task_switch(v12, v10, v11);
}

uint64_t sub_EA64()
{
  v1 = v0[38];
  v2 = v0[31];
  v3 = v0[22];

  sub_B124(v1, &OBJC_IVAR___AXGuestPassServer___gpTransferViewController);
  v4 = v0[22];
  sub_113F0();
  v5 = v0[30];
  v6 = v0[27];
  v7 = v0[28];
  v9 = v0[25];
  v8 = v0[26];

  v10 = v0[1];

  return v10();
}

uint64_t sub_EB38()
{
  v1 = v0[37];
  v2 = v0[31];
  v3 = v0[25];

  sub_28178();
  swift_errorRetain();
  v4 = sub_28258();
  v5 = sub_29128();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[37];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_0, v4, v5, "Error beginning guest pass transfer: %@", v8, 0xCu);
    sub_925C(v9, &qword_391E8, &qword_2A080);
  }

  else
  {
    v11 = v0[37];
  }

  (*(v0[24] + 8))(v0[25], v0[23]);
  v12 = v0[30];
  v13 = v0[27];
  v14 = v0[28];
  v16 = v0[25];
  v15 = v0[26];

  v17 = v0[1];

  return v17();
}

uint64_t sub_ECF0()
{
  v1[13] = v0;
  v2 = sub_28268();
  v1[14] = v2;
  v3 = *(v2 - 8);
  v1[15] = v3;
  v4 = *(v3 + 64) + 15;
  v1[16] = swift_task_alloc();
  sub_28F78();
  v1[17] = sub_28F68();
  v6 = sub_28F58();
  v1[18] = v6;
  v1[19] = v5;

  return _swift_task_switch(sub_EDE4, v6, v5);
}

uint64_t sub_EDE4()
{
  v1 = v0[13];
  sub_290A8();
  v2 = sub_28FE8();
  v3 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v4 = *&v2[v3];

  sub_29068();
  v5 = sub_28FE8();
  v6 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v7 = *&v5[v6];

  sub_29048();
  v8 = sub_28FE8();
  v9 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v10 = *&v8[v9];

  sub_29088();
  sub_281E8();
  v0[20] = sub_281D8();
  swift_getKeyPath();
  v0[21] = OBJC_IVAR___AXGuestPassServer___observationRegistrar;
  v0[11] = v1;
  v0[22] = sub_1316C(&qword_39550, type metadata accessor for AXGuestPassServer);
  sub_28088();

  v11 = OBJC_IVAR___AXGuestPassServer___gpTransferViewController;
  v0[23] = OBJC_IVAR___AXGuestPassServer___gpTransferViewController;
  v12 = *(v1 + v11);
  v0[24] = v12;
  v13 = v12;
  v14 = sub_280B8();
  v15 = sub_28158();
  v17 = v16;

  v0[25] = v17;
  v18 = async function pointer to AXUniversalDisplayManager.removeContent(withViewController:userInteractionEnabled:windowIdentifier:service:context:)[1];
  v19 = swift_task_alloc();
  v0[26] = v19;
  *v19 = v0;
  v19[1] = sub_F048;
  v20 = v0[13];

  return AXUniversalDisplayManager.removeContent(withViewController:userInteractionEnabled:windowIdentifier:service:context:)(v12, 1, v15, v17, v20, 0);
}

uint64_t sub_F048()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v11 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = v2[18];
    v5 = v2[19];
    v6 = sub_F280;
  }

  else
  {
    v8 = v2[24];
    v7 = v2[25];
    v9 = v2[20];

    v4 = v2[18];
    v5 = v2[19];
    v6 = sub_F178;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_F178()
{
  v1 = v0[23];
  v2 = v0[17];
  v3 = v0[13];

  if (*(v3 + v1))
  {
    v4 = v0[27];
    v6 = v0[21];
    v5 = v0[22];
    v7 = v0[13];
    swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    v0[12] = v7;
    sub_28078();
  }

  v9 = v0[16];

  v10 = v0[1];

  return v10();
}

uint64_t sub_F280()
{
  v1 = v0[27];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[20];
  v6 = v0[16];
  v5 = v0[17];

  sub_28178();
  swift_errorRetain();
  v7 = sub_28258();
  v8 = sub_29128();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[27];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&dword_0, v7, v8, "Error ending guest pass transfer: %@", v11, 0xCu);
    sub_925C(v12, &qword_391E8, &qword_2A080);
  }

  else
  {
    v14 = v0[27];
  }

  (*(v0[15] + 8))(v0[16], v0[14]);
  v15 = v0[16];

  v16 = v0[1];

  return v16();
}

uint64_t sub_F428(uint64_t a1)
{
  v2[44] = a1;
  v2[45] = v1;
  v2[46] = swift_getObjectType();
  v3 = sub_28268();
  v2[47] = v3;
  v4 = *(v3 - 8);
  v2[48] = v4;
  v5 = *(v4 + 64) + 15;
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  sub_28F78();
  v2[51] = sub_28F68();
  v6 = sub_28F58();
  v2[52] = v6;
  v2[53] = v7;

  return _swift_task_switch(sub_F568, v6, v7);
}

uint64_t sub_F568()
{
  strcpy((v0 + 224), "guestPassData");
  v1 = *(v0 + 352);
  *(v0 + 238) = -4864;
  sub_29248();
  if (!*(v1 + 16) || (v2 = *(v0 + 352), v3 = sub_12054(v0 + 16), (v4 & 1) == 0))
  {
    v17 = *(v0 + 408);
    sub_12548(v0 + 16);
LABEL_11:

    sub_280F8();
    sub_1316C(&qword_395A0, &type metadata accessor for AXGuestPassError);
    swift_allocError();
    sub_28108();
    swift_willThrow();
LABEL_12:
    v18 = *(v0 + 392);
    sub_28178();
    swift_errorRetain();
    v19 = sub_28258();
    v20 = sub_29128();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&dword_0, v19, v20, "Error beginning guest pass session: %@", v21, 0xCu);
      sub_925C(v22, &qword_391E8, &qword_2A080);
    }

    else
    {
    }

    (*(*(v0 + 384) + 8))(*(v0 + 392), *(v0 + 376));
LABEL_16:
    v25 = *(v0 + 392);
    v24 = *(v0 + 400);

    v26 = *(v0 + 8);

    return v26();
  }

  sub_905C(*(*(v0 + 352) + 56) + 32 * v3, v0 + 96);
  sub_12548(v0 + 16);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v28 = *(v0 + 408);
    goto LABEL_11;
  }

  v6 = *(v0 + 240);
  v5 = *(v0 + 248);
  *(v0 + 432) = v6;
  *(v0 + 440) = v5;
  v7 = objc_opt_self();
  isa = sub_28018().super.isa;
  *(v0 + 320) = 0;
  v9 = [v7 propertyListWithData:isa options:0 format:0 error:v0 + 320];

  v10 = *(v0 + 320);
  if (!v9)
  {
    v29 = *(v0 + 408);
    v30 = v10;

    sub_27F78();

LABEL_22:
    swift_willThrow();
    sub_9008(v6, v5);
    goto LABEL_12;
  }

  v11 = v10;
  sub_291F8();
  swift_unknownObjectRelease();
  sub_7E8C(&qword_395A8, &qword_2A6C0);
  if (!swift_dynamicCast())
  {
    v31 = *(v0 + 408);

    sub_280F8();
    sub_1316C(&qword_395A0, &type metadata accessor for AXGuestPassError);
    swift_allocError();
    sub_28108();
    goto LABEL_22;
  }

  v12 = *(v0 + 328);
  sub_28168();
  *(v0 + 256) = sub_28148();
  *(v0 + 264) = v13;
  sub_29248();
  if (*(v12 + 16) && (v14 = sub_12054(v0 + 56), (v15 & 1) != 0))
  {
    sub_905C(*(v12 + 56) + 32 * v14, v0 + 160);
    sub_12548(v0 + 56);

    if (swift_dynamicCast())
    {
      v16 = *(v0 + 360);
      sub_B54C(*(v0 + 304), *(v0 + 312));
    }
  }

  else
  {

    sub_12548(v0 + 56);
  }

  v32 = *(v0 + 360);
  v33 = *(v32 + OBJC_IVAR___AXGuestPassServer_settingsProfileManager);
  v34 = sub_28018().super.isa;
  [v33 startGuestModeSessionWithData:v34];

  _AXSTripleClickAddOption();
  swift_getKeyPath();
  *(v0 + 336) = v32;
  sub_1316C(&qword_39550, type metadata accessor for AXGuestPassServer);
  sub_28088();

  if (*(v32 + OBJC_IVAR___AXGuestPassServer___gpSessionViewController))
  {
    v36 = *(v0 + 400);
    v35 = *(v0 + 408);

    sub_28178();
    v37 = sub_28258();
    v38 = sub_29128();
    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 400);
    v41 = *(v0 + 376);
    v42 = *(v0 + 384);
    if (v39)
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_0, v37, v38, "Tried to start a guest pass session, but a session view already existed", v43, 2u);
    }

    sub_9008(v6, v5);

    (*(v42 + 8))(v40, v41);
    goto LABEL_16;
  }

  v44 = *(v0 + 368);
  sub_281E8();
  *(v0 + 448) = sub_281D8();
  *(v0 + 344) = sub_AD5C();
  sub_28A58();
  v45 = *(v0 + 272);
  v46 = *(v0 + 280);
  *(v0 + 456) = v45;
  *(v0 + 464) = v46;
  *(v0 + 288) = v45;
  *(v0 + 296) = v46;
  v47 = sub_280B8();
  v48 = sub_28158();
  v50 = v49;

  *(v0 + 472) = v50;
  *(v0 + 208) = 0u;
  *(v0 + 192) = 0u;
  v51 = async function pointer to AXUniversalDisplayManager.addContent<A>(withView:userInteractionEnabled:service:sceneClientIdentifier:windowIdentifier:context:userInterfaceStyle:windowScene:spatialConfiguration:)[1];
  v52 = swift_task_alloc();
  *(v0 + 480) = v52;
  sub_13230();
  *v52 = v0;
  v52[1] = sub_FD5C;
  v53 = *(v0 + 360);

  return AXUniversalDisplayManager.addContent<A>(withView:userInteractionEnabled:service:sceneClientIdentifier:windowIdentifier:context:userInterfaceStyle:windowScene:spatialConfiguration:)(v0 + 288, 1, v53, 0, 0, v48, v50, 0);
}

uint64_t sub_FD5C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 480);
  v6 = *(*v2 + 464);
  v16 = *v2;
  *(*v2 + 488) = v1;

  v7 = v4[59];
  if (v1)
  {
    v9 = v4[56];
    v8 = v4[57];

    sub_925C((v4 + 24), &qword_39598, &qword_2AEB0);

    v10 = v4[52];
    v11 = v4[53];
    v12 = sub_1015C;
  }

  else
  {
    v14 = v4[56];
    v13 = v4[57];

    v4[62] = a1;
    sub_925C((v4 + 24), &qword_39598, &qword_2AEB0);

    v10 = v4[52];
    v11 = v4[53];
    v12 = sub_FF30;
  }

  return _swift_task_switch(v12, v10, v11);
}

uint64_t sub_FF30()
{
  v2 = v0[61];
  v1 = v0[62];
  v3 = v0[51];
  v4 = v0[45];

  sub_B124(v1, &OBJC_IVAR___AXGuestPassServer___gpSessionViewController);
  v5 = *(v4 + OBJC_IVAR___AXGuestPassServer_activityController);
  sub_20978();
  v7 = v0[54];
  v6 = v0[55];
  if (v2)
  {
    sub_9008(v0[54], v0[55]);
    v8 = v0[49];
    sub_28178();
    swift_errorRetain();
    v9 = sub_28258();
    v10 = sub_29128();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&dword_0, v9, v10, "Error beginning guest pass session: %@", v11, 0xCu);
      sub_925C(v12, &qword_391E8, &qword_2A080);
    }

    else
    {
    }

    (*(v0[48] + 8))(v0[49], v0[47]);
  }

  else
  {
    v14 = v0[45];
    sub_113F0();
    sub_9008(v7, v6);
  }

  v16 = v0[49];
  v15 = v0[50];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1015C()
{
  v1 = v0[54];
  v2 = v0[55];
  v3 = v0[51];

  sub_9008(v1, v2);
  v4 = v0[61];
  v5 = v0[49];
  sub_28178();
  swift_errorRetain();
  v6 = sub_28258();
  v7 = sub_29128();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_0, v6, v7, "Error beginning guest pass session: %@", v8, 0xCu);
    sub_925C(v9, &qword_391E8, &qword_2A080);
  }

  else
  {
  }

  (*(v0[48] + 8))(v0[49], v0[47]);
  v12 = v0[49];
  v11 = v0[50];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1032C()
{
  v1[5] = v0;
  v2 = sub_28268();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  sub_28F78();
  v1[10] = sub_28F68();
  v6 = sub_28F58();
  v1[11] = v6;
  v1[12] = v5;

  return _swift_task_switch(sub_1042C, v6, v5);
}

uint64_t sub_1042C()
{
  v1 = v0[5];
  [*(v1 + OBJC_IVAR___AXGuestPassServer_settingsProfileManager) endGuestModeSession];
  _AXSTripleClickRemoveOption();
  v0[13] = sub_281E8();
  v0[14] = sub_281D8();
  swift_getKeyPath();
  v0[15] = OBJC_IVAR___AXGuestPassServer___observationRegistrar;
  v0[2] = v1;
  v0[16] = sub_1316C(&qword_39550, type metadata accessor for AXGuestPassServer);
  sub_28088();

  v2 = OBJC_IVAR___AXGuestPassServer___gpSessionViewController;
  v0[17] = OBJC_IVAR___AXGuestPassServer___gpSessionViewController;
  v3 = *(v1 + v2);
  v0[18] = v3;
  v4 = v3;
  v5 = sub_280B8();
  v6 = sub_28158();
  v8 = v7;

  v0[19] = v8;
  v9 = async function pointer to AXUniversalDisplayManager.removeContent(withViewController:userInteractionEnabled:windowIdentifier:service:context:)[1];
  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_105D4;
  v11 = v0[5];

  return AXUniversalDisplayManager.removeContent(withViewController:userInteractionEnabled:windowIdentifier:service:context:)(v3, 1, v6, v8, v11, 0);
}

uint64_t sub_105D4()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v11 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = v2[11];
    v5 = v2[12];
    v6 = sub_10ABC;
  }

  else
  {
    v8 = v2[18];
    v7 = v2[19];
    v9 = v2[14];

    v4 = v2[11];
    v5 = v2[12];
    v6 = sub_10704;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10704()
{
  v1 = v0[17];
  v2 = v0[10];
  v3 = v0[5];

  v4 = v0[21];
  if (*(v3 + v1))
  {
    v6 = v0[15];
    v5 = v0[16];
    v7 = v0[5];
    swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    v0[4] = v7;
    sub_28078();
  }

  v9 = *(v0[5] + OBJC_IVAR___AXGuestPassServer_activityController);
  if (AXDeviceHasJindo())
  {
    v10 = v0[13];
    v11 = sub_281D8();
    v12 = sub_280B8();
    v13 = sub_28158();
    v15 = v14;

    v40._countAndFlagsBits = v13;
    v40._object = v15;
    sub_281A8(v40);

    if (v4)
    {
      v16 = v0[8];
      sub_28178();
      swift_errorRetain();
      v17 = sub_28258();
      v18 = sub_29128();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        swift_errorRetain();
        v21 = _swift_stdlib_bridgeErrorToNSError();
        *(v19 + 4) = v21;
        *v20 = v21;
        _os_log_impl(&dword_0, v17, v18, "Error ending guest pass session: %@", v19, 0xCu);
        sub_925C(v20, &qword_391E8, &qword_2A080);
      }

      else
      {
      }

      (*(v0[7] + 8))(v0[8], v0[6]);
      goto LABEL_13;
    }
  }

  else
  {
    sub_2146C();
  }

  v22 = v0[9];
  v23 = v0[5];
  sub_11578();
  v24 = [objc_opt_self() sharedInstance];
  [v24 invalidateAssertionUIIfNeeded];

  sub_28178();
  v25 = sub_28258();
  v26 = sub_29138();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_0, v25, v26, "AXGuestPassNetworkConnection: tearing down sender connection and listener", v27, 2u);
  }

  v29 = v0[15];
  v28 = v0[16];
  v30 = v0[9];
  v31 = v0[6];
  v32 = v0[7];
  v33 = v0[5];

  (*(v32 + 8))(v30, v31);
  swift_getKeyPath();
  v0[3] = v33;
  sub_28088();

  v34 = *(v33 + OBJC_IVAR___AXGuestPassServer__networkConnection);
  sub_1ADF8();

LABEL_13:
  v36 = v0[8];
  v35 = v0[9];

  v37 = v0[1];

  return v37();
}

uint64_t sub_10ABC()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[14];
  v4 = v0[10];

  v5 = v0[21];
  v6 = v0[8];
  sub_28178();
  swift_errorRetain();
  v7 = sub_28258();
  v8 = sub_29128();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_0, v7, v8, "Error ending guest pass session: %@", v9, 0xCu);
    sub_925C(v10, &qword_391E8, &qword_2A080);
  }

  else
  {
  }

  (*(v0[7] + 8))(v0[8], v0[6]);
  v13 = v0[8];
  v12 = v0[9];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10C68()
{
  v1[11] = v0;
  v2 = sub_28268();
  v1[12] = v2;
  v3 = *(v2 - 8);
  v1[13] = v3;
  v4 = *(v3 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  sub_28F78();
  v1[16] = sub_28F68();
  v6 = sub_28F58();
  v1[17] = v6;
  v1[18] = v5;

  return _swift_task_switch(sub_10D68, v6, v5);
}

uint64_t sub_10D68()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 guestPassSessionIsActive];

  if (v2)
  {
    v3 = v0[15];
    sub_28178();
    v4 = sub_28258();
    v5 = sub_29138();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "Guest pass session attempted to recover, most likely from a crash. Ending the session as the network connection has been severed.", v6, 2u);
    }

    v7 = v0[15];
    v8 = v0[12];
    v9 = v0[13];

    (*(v9 + 8))(v7, v8);
    v10 = swift_task_alloc();
    v0[19] = v10;
    *v10 = v0;
    v10[1] = sub_10FC4;
    v11 = v0[11];

    return sub_1032C();
  }

  else
  {
    v13 = v0[16];
    v14 = v0[14];

    sub_28178();
    v15 = sub_28258();
    v16 = sub_29128();
    v17 = os_log_type_enabled(v15, v16);
    v19 = v0[13];
    v18 = v0[14];
    v20 = v0[12];
    if (v17)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_0, v15, v16, "Attempted to resume guest pass session but session was inactive in preferences.", v21, 2u);
    }

    (*(v19 + 8))(v18, v20);
    v23 = v0[14];
    v22 = v0[15];

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_10FC4()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v6 = *v0;

  v3 = *(v1 + 144);
  v4 = *(v1 + 136);

  return _swift_task_switch(sub_110E4, v4, v3);
}

uint64_t sub_110E4()
{
  v1 = v0[16];

  sub_290A8();
  v2 = sub_28FE8();
  v3 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v4 = *&v2[v3];

  sub_29068();
  v5 = sub_28FE8();
  v6 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v7 = *&v5[v6];

  sub_29048();
  v8 = sub_28FE8();
  v9 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v10 = *&v8[v9];

  sub_29088();
  v12 = v0[14];
  v11 = v0[15];

  v13 = v0[1];

  return v13();
}

void sub_113F0()
{
  v1 = v0;
  v2 = sub_28268();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_28178();
  v7 = sub_28258();
  v8 = sub_29108();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "Starting monitor for device lock status.", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = CFNotificationCenterGetDarwinNotifyCenter();
  v11 = AXkMobileKeyBagLockStatusNotificationID();
  CFNotificationCenterAddObserver(v10, v1, sub_11A10, v11, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void sub_11578()
{
  v1 = v0;
  v2 = sub_28268();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_28178();
  v7 = sub_28258();
  v8 = sub_29108();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "Stopping monitor for device lock status.", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v10, v1);
}

uint64_t sub_116F4()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 guestPassSessionIsActive];

  if (v2)
  {
    v3 = swift_task_alloc();
    v0[3] = v3;
    *v3 = v0;
    v3[1] = sub_11828;
    v4 = v0[2];

    return sub_1032C();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[4] = v6;
    *v6 = v0;
    v6[1] = sub_1191C;
    v7 = v0[2];

    return sub_ECF0();
  }
}

uint64_t sub_11828()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1191C()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_11A18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_77F4;

  return sub_ECF0();
}

id AXGuestPassNetworkConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AXGuestPassServer()
{
  result = qword_39538;
  if (!qword_39538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_11D3C()
{
  result = sub_280A8();
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

uint64_t sub_11E20()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_9CB0;

  return sub_11A18();
}

void sub_11EFC(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_B124(v2, &OBJC_IVAR___AXGuestPassServer___gpTransferViewController);
}

void sub_11F50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR___AXGuestPassServer___gpTransferViewController);
  *(v1 + OBJC_IVAR___AXGuestPassServer___gpTransferViewController) = v2;
  v4 = v2;
}

unint64_t sub_11F90()
{
  result = qword_39560;
  if (!qword_39560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_39560);
  }

  return result;
}

unint64_t sub_11FDC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_29368();
  sub_28F08();
  v6 = sub_29378();

  return sub_12098(a1, a2, v6);
}

unint64_t sub_12054(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29228(*(v2 + 40));

  return sub_12150(a1, v4);
}

unint64_t sub_12098(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_29308())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_12150(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1259C(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_29238();
      sub_12548(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_12218(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_7E8C(&qword_395C0, &qword_2A780);
    v3 = sub_292D8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_11FDC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1231C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_7E8C(&qword_395B8, &qword_2A740);
    v3 = sub_292D8();
    v4 = a1 + 32;

    while (1)
    {
      sub_133C4(v4, v13);
      result = sub_12054(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_13434(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_12438()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_12480(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_77F4;

  return sub_D374(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_125F8(uint64_t a1)
{
  v2 = type metadata accessor for AXGuestPassRootView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_12654(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v31 = a5;
  v33 = a4;
  v10 = sub_7E8C(&qword_39288, &qword_2A540);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v32 = &v29 - v12;
  v13 = sub_28268();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_28178();

  v18 = sub_28258();
  v19 = sub_29118();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v30 = v6;
    v22 = v21;
    v34 = v21;
    *v20 = 134218242;
    *(v20 + 4) = a1;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_89C0(a2, a3, &v34);
    _os_log_impl(&dword_0, v18, v19, "Service got async message: %ld from client: %s.", v20, 0x16u);
    sub_8F68(v22);
    v6 = v30;
  }

  result = (*(v14 + 8))(v17, v13);
  if (a1 == 14)
  {
    v24 = sub_28F98();
    v25 = v32;
    (*(*(v24 - 8) + 56))(v32, 1, 1, v24);
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v27 = v33;
    v26[4] = v6;
    v26[5] = v27;
    v26[6] = v31;
    v28 = v6;

    sub_16BFC(0, 0, v25, &unk_2A750, v26);
  }

  return result;
}

Swift::Int sub_12920(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_7E8C(&unk_395D0, &qword_2A790);
    v3 = sub_29258();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      sub_1259C(v6 + 40 * v4, v19);
      result = sub_29228(*(v3 + 40));
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        sub_1259C(*(v3 + 48) + 40 * i, v18);
        v11 = sub_29238();
        result = sub_12548(v18);
        if (v11)
        {
          sub_12548(v19);
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      v12 = *(v3 + 48) + 40 * i;
      v13 = v19[0];
      v14 = v19[1];
      *(v12 + 32) = v20;
      *v12 = v13;
      *(v12 + 16) = v14;
      v15 = *(v3 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        *(v3 + 16) = v17;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

Swift::Int sub_12A80(uint64_t a1)
{
  if (a1 > 8)
  {
    if ((a1 - 11) < 3 || (a1 - 9) < 2 || a1 != 14)
    {
      goto LABEL_10;
    }

LABEL_12:
    sub_7E8C(&qword_395C8, &qword_2A788);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29DD0;
    sub_29248();
    sub_29248();
    v2 = sub_12920(inited);
    swift_setDeallocating();
LABEL_13:
    swift_arrayDestroy();
    return v2;
  }

  if ((a1 - 5) < 4)
  {
    goto LABEL_12;
  }

  if (a1 == 2)
  {
    sub_7E8C(&qword_395C8, &qword_2A788);
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_2A580;
    sub_29248();
    sub_29248();
    sub_29248();
    v2 = sub_12920(v5);
    swift_setDeallocating();
    goto LABEL_13;
  }

  if (a1 == 3)
  {
    goto LABEL_12;
  }

LABEL_10:
  sub_7E8C(&qword_395C8, &qword_2A788);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_29DC0;
  sub_29248();
  v2 = sub_12920(v1);
  swift_setDeallocating();
  sub_12548(v1 + 32);
  return v2;
}

uint64_t sub_12E50(void *a1)
{
  v2 = sub_7E8C(&qword_39288, &qword_2A540);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = sub_28268();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = AXDeviceIsUnlocked();
  if ((result & 1) == 0 && a1)
  {
    v12 = a1;
    sub_28178();
    v13 = sub_28258();
    v14 = sub_29108();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "User locked device. Ending guest pass session.", v15, 2u);
    }

    (*(v7 + 8))(v10, v6);
    v16 = sub_28F98();
    (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v12;
    sub_16BFC(0, 0, v5, &unk_2A6B8, v17);
  }

  return result;
}

uint64_t sub_13078()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_130B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_9CB0;

  return sub_116D4(a1, v4, v5, v6);
}

uint64_t sub_1316C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_131DC(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_B124(v2, &OBJC_IVAR___AXGuestPassServer___gpSessionViewController);
}

unint64_t sub_13230()
{
  result = qword_395B0;
  if (!qword_395B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_395B0);
  }

  return result;
}

uint64_t sub_13288(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_B54C(v2, v3);
}

uint64_t sub_132C8()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR___AXGuestPassServer__senderDescription);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
}

void sub_13314()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR___AXGuestPassServer___gpSessionViewController);
  *(v1 + OBJC_IVAR___AXGuestPassServer___gpSessionViewController) = v2;
  v4 = v2;
}

void sub_13384()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR___AXGuestPassServer__networkConnection);
  *(v1 + OBJC_IVAR___AXGuestPassServer__networkConnection) = v2;
  v4 = v2;
}

uint64_t sub_133C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_7E8C(&qword_39578, &unk_2A670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_13434(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_13444()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_13484()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_134CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_9CB0;

  return sub_C16C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_13594()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_135D4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_135E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t AXSUIGuestPassOnboardingView.init(isLearnMore:isPresented:presentDevicePicker:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t AXSUIGuestPassOnboardingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v1 = sub_28228();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7E8C(&qword_395E0, &qword_2A7C0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_7E8C(&qword_395E8, &qword_2A7C8);
  v9 = *(v8 - 8);
  v43 = v8;
  v44 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v38 - v11;
  v13 = sub_7E8C(&qword_395F0, &qword_2A7D0);
  v45 = *(v13 - 8);
  v46 = v13;
  v14 = *(v45 + 64);
  __chkstk_darwin(v13);
  v16 = v38 - v15;
  v54._object = 0x800000000002B940;
  v54._countAndFlagsBits = 0xD000000000000010;
  v17 = sub_281F8(v54);
  v41 = v18;
  v42 = v17;
  v19 = sub_28E88();
  v52 = sub_13D7C;
  v53 = 0;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_13D9C;
  v51 = &unk_35E90;
  v20 = _Block_copy(&aBlock);
  v21 = AXLocStringForDeviceVariant();
  _Block_release(v20);

  if (v21)
  {
    v22 = sub_28EC8();
    v39 = v23;
    v40 = v22;
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

  v38[1] = "@NSString16@?0@NSString8";
  sub_7E8C(&qword_395F8, &qword_2A7D8);
  v24 = *(v2 + 72);
  v25 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_29DC0;
  sub_28218();
  aBlock = v26;
  sub_15638(&qword_39600, &type metadata accessor for OnboardingTraits);
  sub_7E8C(&qword_39608, &qword_2A7E0);
  sub_15494(&qword_39610, &qword_39608, &qword_2A7E0);
  sub_29208();
  sub_28AF8();
  v27 = (*(v2 + 8))(v5, v1);
  __chkstk_darwin(v27);
  sub_7E8C(&qword_39618, &qword_2A7E8);
  sub_15494(&qword_39620, &qword_39618, &qword_2A7E8);
  v28 = v12;
  sub_28208();
  sub_28B68();
  v29 = sub_7E8C(&qword_39628, &qword_2A7F0);
  v30 = sub_15494(&qword_39630, &qword_395E8, &qword_2A7C8);
  v31 = sub_149A4();
  v32 = v43;
  sub_289F8();
  v33 = (*(v44 + 8))(v28, v32);
  __chkstk_darwin(v33);
  sub_7E8C(&qword_39658, &qword_2A800);
  aBlock = v32;
  v49 = &type metadata for Solarium;
  v50 = v29;
  v51 = v30;
  v52 = &protocol witness table for Solarium;
  v53 = v31;
  swift_getOpaqueTypeConformance2();
  v34 = sub_7F38(&qword_39660, &qword_2A808);
  v35 = sub_14FE0();
  aBlock = v34;
  v49 = v35;
  swift_getOpaqueTypeConformance2();
  v36 = v46;
  sub_289D8();
  return (*(v45 + 8))(v16, v36);
}

uint64_t sub_13D7C(Swift::String a1)
{
  if (a1._object)
  {
    a1._countAndFlagsBits = sub_281F8(a1);
  }

  return a1._countAndFlagsBits;
}

id sub_13D9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_28EC8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3(v4, v6);
  v8 = v7;

  if (v8)
  {
    v9 = sub_28E88();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_13E4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_13E64@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_7E8C(&qword_39618, &qword_2A7E8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  if (*a1)
  {
    v9 = *(v6 + 56);

    return v9(a2, 1, 1, v4);
  }

  else
  {
    v13 = v6;
    *v8 = sub_286B8();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v11 = sub_7E8C(&qword_39698, &qword_2A8E8);
    sub_13FE0(a1, &v8[*(v11 + 44)]);
    sub_1551C(v8, a2, &qword_39618, &qword_2A7E8);
    return (*(v13 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_13FE0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v55 = a2;
  v53 = sub_28248();
  v51 = *(v53 - 8);
  v3 = *(v51 + 64);
  __chkstk_darwin(v53);
  v49 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_7E8C(&qword_396A0, &qword_2A8F0);
  v52 = *(v54 - 8);
  v5 = *(v52 + 64);
  v6 = __chkstk_darwin(v54);
  v50 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v57 = &v46 - v8;
  v9 = sub_28238();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_7E8C(&qword_393E0, &qword_2A530);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v46 - v17;
  v48 = sub_7E8C(&qword_396A8, &qword_2A8F8);
  v56 = *(v48 - 8);
  v19 = v56[8];
  v20 = __chkstk_darwin(v48);
  v47 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v46 - v22;
  v24 = swift_allocObject();
  v25 = *(a1 + 16);
  *(v24 + 16) = *a1;
  *(v24 + 32) = v25;
  *(v24 + 48) = *(a1 + 32);
  *(v24 + 64) = *(a1 + 48);
  sub_154E4(a1, v58);
  sub_28AA8();
  sub_285B8();
  sub_15494(&qword_39688, &qword_393E0, &qword_2A530);
  sub_15638(&qword_396B0, &type metadata accessor for AXOnboardingPrimaryButtonStyle);
  v26 = v23;
  v46 = v23;
  sub_28938();
  (*(v10 + 8))(v13, v9);
  v27 = *(v15 + 8);
  v27(v18, v14);
  v28 = swift_allocObject();
  v29 = *(a1 + 16);
  *(v28 + 16) = *a1;
  *(v28 + 32) = v29;
  *(v28 + 48) = *(a1 + 32);
  *(v28 + 64) = *(a1 + 48);
  sub_154E4(a1, v58);
  sub_28AA8();
  v30 = v49;
  sub_285C8();
  sub_15638(&qword_396B8, &type metadata accessor for AXOnboardingSecondaryButtonStyle);
  v31 = v57;
  v32 = v53;
  sub_28938();
  (*(v51 + 8))(v30, v32);
  v27(v18, v14);
  v33 = v56[2];
  v34 = v47;
  v35 = v26;
  v36 = v48;
  v33(v47, v35, v48);
  v37 = v52;
  v38 = *(v52 + 16);
  v39 = v50;
  v40 = v54;
  v38(v50, v31, v54);
  v41 = v55;
  v33(v55, v34, v36);
  v42 = sub_7E8C(&qword_396C0, &unk_2A900);
  v38(&v41[*(v42 + 48)], v39, v40);
  v43 = *(v37 + 8);
  v43(v57, v40);
  v44 = v56[1];
  v44(v46, v36);
  v43(v39, v40);
  return (v44)(v34, v36);
}

uint64_t sub_14658(uint64_t a1)
{
  sub_290A8();
  v2 = sub_28FE8();
  v3 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v4 = *&v2[v3];

  sub_29028();
  v6 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_7E8C(&qword_39690, &qword_2A8E0);
  sub_28AD8();
  v7 = *(a1 + 32);
  v9 = *(a1 + 48);
  return sub_28AD8();
}

uint64_t sub_14740@<X0>(uint64_t a1@<X8>)
{
  v6._countAndFlagsBits = 0x45554E49544E4F43;
  v6._object = 0xE800000000000000;
  sub_281F8(v6);
  sub_A978();
  result = sub_288F8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_147AC@<X0>(uint64_t a1@<X8>)
{
  v6._object = 0x800000000002B9C0;
  v6._countAndFlagsBits = 0xD000000000000014;
  sub_281F8(v6);
  sub_A978();
  result = sub_288F8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_14824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_7E8C(&qword_39648, &qword_2A7F8);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = v21 - v7;
  sub_28818();
  sub_285A8();
  v23 = v9;
  v24 = v10;
  v25 = v11;
  v26 = v12;
  v27 = 0;
  v13 = &v8[*(v5 + 44)];
  sub_28748();
  v14 = sub_7E8C(&qword_395E8, &qword_2A7C8);
  (*(*(v14 - 8) + 16))(v8, a1, v14);
  sub_28828();
  AXDeviceIsPad();
  sub_285A8();
  v21[0] = v15;
  v21[1] = v16;
  v21[2] = v17;
  v21[3] = v18;
  v22 = 0;
  v19 = a2 + *(sub_7E8C(&qword_39628, &qword_2A7F0) + 36);
  sub_28748();
  return sub_1551C(v8, a2, &qword_39648, &qword_2A7F8);
}

unint64_t sub_149A4()
{
  result = qword_39638;
  if (!qword_39638)
  {
    sub_7F38(&qword_39628, &qword_2A7F0);
    sub_14A60();
    sub_15638(&qword_39650, &type metadata accessor for SafeAreaPaddingModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39638);
  }

  return result;
}

unint64_t sub_14A60()
{
  result = qword_39640;
  if (!qword_39640)
  {
    sub_7F38(&qword_39648, &qword_2A7F8);
    sub_15494(&qword_39630, &qword_395E8, &qword_2A7C8);
    sub_15638(&qword_39650, &type metadata accessor for SafeAreaPaddingModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39640);
  }

  return result;
}

uint64_t sub_14B48@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_7E8C(&qword_39680, &unk_2A8D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v28 - v7;
  v9 = sub_286F8();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_7E8C(&qword_39670, &qword_2A810);
  v32 = *(v11 - 8);
  v12 = *(v32 + 64);
  __chkstk_darwin(v11);
  v31 = v28 - v13;
  v14 = sub_7E8C(&qword_39660, &qword_2A808);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v28 - v19;
  if (*a1)
  {
    v21 = sub_286E8();
    v28[1] = v28;
    __chkstk_darwin(v21);
    v29 = v8;
    v30 = a2;
    v28[-2] = a1;
    sub_7E8C(&qword_393E0, &qword_2A530);
    v28[0] = v11;
    sub_15494(&qword_39688, &qword_393E0, &qword_2A530);
    v22 = v31;
    sub_285E8();
    v23 = sub_15494(&qword_39678, &qword_39670, &qword_2A810);
    v24 = v29;
    v25 = v28[0];
    sub_28708();
    (*(v5 + 16))(v18, v24, v4);
    (*(v5 + 56))(v18, 0, 1, v4);
    v33 = v25;
    v34 = v23;
    swift_getOpaqueTypeConformance2();
    sub_28718();
    sub_15424(v18);
    (*(v5 + 8))(v24, v4);
    (*(v32 + 8))(v22, v25);
  }

  else
  {
    (*(v5 + 56))(v18, 1, 1, v4);
    v26 = sub_15494(&qword_39678, &qword_39670, &qword_2A810);
    v33 = v11;
    v34 = v26;
    swift_getOpaqueTypeConformance2();
    sub_28718();
    sub_15424(v18);
  }

  sub_14FE0();
  sub_28708();
  return sub_15424(v20);
}

unint64_t sub_14FE0()
{
  result = qword_39668;
  if (!qword_39668)
  {
    sub_7F38(&qword_39660, &qword_2A808);
    sub_7F38(&qword_39670, &qword_2A810);
    sub_15494(&qword_39678, &qword_39670, &qword_2A810);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39668);
  }

  return result;
}

uint64_t sub_150F0(uint64_t a1)
{
  v9._countAndFlagsBits = 1162760004;
  v9._object = 0xE400000000000000;
  v7 = sub_281F8(v9);
  v8 = v2;
  v3 = swift_allocObject();
  v4 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = *(a1 + 48);
  sub_154E4(a1, v6);
  sub_A978();
  return sub_28AC8();
}

uint64_t sub_151A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 48);
  return AXSUIGuestPassOnboardingView.body.getter(a1);
}

__n128 sub_151EC(uint64_t a1, uint64_t a2)
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

uint64_t sub_15208(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_15250(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_152B0()
{
  sub_7F38(&qword_395F0, &qword_2A7D0);
  sub_7F38(&qword_39658, &qword_2A800);
  sub_7F38(&qword_395E8, &qword_2A7C8);
  sub_7F38(&qword_39628, &qword_2A7F0);
  sub_15494(&qword_39630, &qword_395E8, &qword_2A7C8);
  sub_149A4();
  swift_getOpaqueTypeConformance2();
  sub_7F38(&qword_39660, &qword_2A808);
  sub_14FE0();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_15424(uint64_t a1)
{
  v2 = sub_7E8C(&qword_39660, &qword_2A808);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_15494(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_7F38(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1551C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_7E8C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1558C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_155DC()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  sub_7E8C(&qword_39690, &qword_2A8E0);
  return sub_28AD8();
}

uint64_t sub_15638(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::String __swiftcall GuestPassLocString(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (qword_39038 != -1)
  {
    swift_once();
  }

  if (qword_396C8)
  {
    v3 = qword_396C8;
    v4 = sub_28E88();
    v5 = sub_28E88();
    v6 = sub_28E88();
    v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

    countAndFlagsBits = sub_28EC8();
    object = v8;
  }

  else
  {
  }

  v9 = countAndFlagsBits;
  v10 = object;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

void sub_157A8()
{
  v0 = sub_28E88();
  v1 = [objc_opt_self() bundleWithIdentifier:v0];

  qword_396C8 = v1;
}

id sub_15818()
{
  v1 = sub_7E8C(&qword_39288, &qword_2A540);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v23 - v3;
  v5 = sub_28508();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_16A38();
  (*(v6 + 16))(v9, v0, v5);
  v10 = *(v0 + *(type metadata accessor for AXDevicePickerRepresentable(0) + 24));

  result = sub_29198();
  if (result)
  {
    v12 = result;
    v13._object = 0x800000000002B940;
    v13._countAndFlagsBits = 0xD000000000000010;
    GuestPassLocString(_:)(v13);
    v14 = sub_28E88();

    [v12 setTitle:v14];

    sub_7E8C(&qword_397C0, &qword_2AA58);
    sub_287F8();
    v15 = v24;
    v17 = *&v24[OBJC_IVAR____TtCV17AXGuestPassServer27AXDevicePickerRepresentable11Coordinator_onSelect];
    v16 = *&v24[OBJC_IVAR____TtCV17AXGuestPassServer27AXDevicePickerRepresentable11Coordinator_onSelect + 8];
    v18 = sub_28F98();
    (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v12;
    v19[5] = v17;
    v19[6] = v16;
    v20 = v12;

    v21 = sub_15F38(0, 0, v4, &unk_2AA68, v19);
    v22 = *&v15[OBJC_IVAR____TtCV17AXGuestPassServer27AXDevicePickerRepresentable11Coordinator_endpointTask];
    *&v15[OBJC_IVAR____TtCV17AXGuestPassServer27AXDevicePickerRepresentable11Coordinator_endpointTask] = v21;

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_15AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_28298();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();

  return _swift_task_switch(sub_15B7C, 0, 0);
}

uint64_t sub_15B7C()
{
  v0[8] = sub_28F78();
  sub_28F68();

  v1 = async function pointer to DDDevicePickerViewController.endpoint.getter[1];
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_15C30;
  v3 = v0[7];
  v4 = v0[2];

  return DDDevicePickerViewController.endpoint.getter(v3);
}

uint64_t sub_15C30()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_15ED4;
  }

  else
  {
    v3 = sub_15D44;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_15D44()
{
  v1 = *(v0 + 64);
  *(v0 + 88) = sub_28F68();
  v3 = sub_28F58();

  return _swift_task_switch(sub_15DD0, v3, v2);
}

uint64_t sub_15DD0()
{
  v1 = v0[11];
  v2 = v0[7];
  v4 = v0[3];
  v3 = v0[4];

  v4(v2);

  return _swift_task_switch(sub_15E54, 0, 0);
}

uint64_t sub_15E54()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_15ED4()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_15F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_7E8C(&qword_39288, &qword_2A540);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_91EC(a3, v24 - v10);
  v12 = sub_28F98();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_16B94(v11);
  }

  else
  {
    sub_28F88();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_28F58();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_28EF8() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_16B94(a3);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_16B94(a3);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

id sub_161D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXDevicePickerRepresentable.Coordinator(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_16294()
{
  result = type metadata accessor for AXDevicePickerRepresentable(319);
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

uint64_t sub_1635C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_163B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_28508();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_16488(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_28508();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_16540()
{
  result = sub_28508();
  if (v1 <= 0x3F)
  {
    result = sub_28438();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_16608(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = OBJC_IVAR____TtCV17AXGuestPassServer27AXDevicePickerRepresentable11Coordinator_endpointTask;
  if (*(*a2 + OBJC_IVAR____TtCV17AXGuestPassServer27AXDevicePickerRepresentable11Coordinator_endpointTask))
  {
    v4 = *(*a2 + OBJC_IVAR____TtCV17AXGuestPassServer27AXDevicePickerRepresentable11Coordinator_endpointTask);

    sub_7E8C(&qword_392D0, &qword_2A110);
    sub_28FA8();

    v5 = *(v2 + v3);
  }

  *(v2 + v3) = 0;
}

uint64_t sub_166A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = a1 - 8;
  v5 = *(*(a1 - 8) + 64);
  __chkstk_darwin(a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_16978(v2, v7);
  v8 = (v2 + *(v4 + 28));
  v10 = *v8;
  v9 = v8[1];
  v11 = type metadata accessor for AXDevicePickerRepresentable.Coordinator(0);
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtCV17AXGuestPassServer27AXDevicePickerRepresentable11Coordinator_endpointTask] = 0;
  sub_16978(v7, &v12[OBJC_IVAR____TtCV17AXGuestPassServer27AXDevicePickerRepresentable11Coordinator_parent]);
  v13 = &v12[OBJC_IVAR____TtCV17AXGuestPassServer27AXDevicePickerRepresentable11Coordinator_onSelect];
  *v13 = v10;
  *(v13 + 1) = v9;
  v16.receiver = v12;
  v16.super_class = v11;

  v14 = objc_msgSendSuper2(&v16, "init");
  result = sub_169DC(v7);
  *a2 = v14;
  return result;
}

uint64_t sub_167F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_16934(&qword_397B0);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_16870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_16934(&qword_397B0);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_168F0()
{
  sub_16934(&qword_397B0);
  sub_287A8();
  __break(1u);
}

uint64_t sub_16934(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AXDevicePickerRepresentable(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_16978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXDevicePickerRepresentable(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_169DC(uint64_t a1)
{
  v2 = type metadata accessor for AXDevicePickerRepresentable(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_16A38()
{
  result = qword_397B8;
  if (!qword_397B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_397B8);
  }

  return result;
}

uint64_t sub_16A84()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_16ACC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_77F4;

  return sub_15AB8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_16B94(uint64_t a1)
{
  v2 = sub_7E8C(&qword_39288, &qword_2A540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_16BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_7E8C(&qword_39288, &qword_2A540);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1ABBC(a3, v27 - v11, &qword_39288, &qword_2A540);
  v13 = sub_28F98();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_925C(v12, &qword_39288, &qword_2A540);
  }

  else
  {
    sub_28F88();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_28F58();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_28EF8() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_925C(a3, &qword_39288, &qword_2A540);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_925C(a3, &qword_39288, &qword_2A540);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_16EFC()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1A6DC(&qword_39A08, type metadata accessor for GuestPassPIN);
  sub_28088();

  v2 = *(v0 + 16);
  v1 = *(v4 + 24);

  return v2;
}

uint64_t sub_16FAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A6DC(&qword_39A08, type metadata accessor for GuestPassPIN);
  sub_28088();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_17058(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 16) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 24);
      if (sub_29308())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1A6DC(&qword_39A08, type metadata accessor for GuestPassPIN);
    sub_28078();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_171C8()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC17AXGuestPassServer12GuestPassPIN___observationRegistrar;
  v3 = sub_280A8();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t type metadata accessor for GuestPassPIN()
{
  result = qword_397F8;
  if (!qword_397F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_172C0()
{
  result = sub_280A8();
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

uint64_t sub_1735C()
{
  v1 = sub_7E8C(&qword_39288, &qword_2A540);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v19 - v3;
  v5 = sub_28268();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = __chkstk_darwin(v5);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + 16) && (*(v0 + 24) & 1) == 0)
  {
    v11 = result;
    v12 = v0;
    sub_28178();
    v13 = sub_28258();
    v14 = sub_29138();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "showing PIN", v15, 2u);
    }

    (*(v6 + 8))(v10, v11);
    *(v12 + 24) = 1;
    v16 = *(v12 + 32);
    sub_28518();
    swift_allocObject();
    swift_weakInit();

    sub_28528();

    sub_28558();
    v17 = sub_28F98();
    (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v12;

    sub_16BFC(0, 0, v4, &unk_2AB38, v18);
  }

  return result;
}

uint64_t sub_175F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_7E8C(&qword_39288, &qword_2A540);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v17 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = *(result + 40);

    sub_17058(a1, a2);
  }

  if (!a2)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v10 = result;
      v11 = *(result + 32);
      sub_28538();
      *(v10 + 24) = 0;
      v12 = *(v10 + 32);
      sub_28518();
      v13 = *(v10 + 40);
      if (*(v13 + 24))
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        v17[-3] = 0;
        v17[-2] = 0;
        v17[-4] = v13;
        v17[1] = v13;
        sub_1A6DC(&qword_39A08, type metadata accessor for GuestPassPIN);

        sub_28078();
      }

      else
      {
        *(v13 + 16) = 0;
        *(v13 + 24) = 0;
      }

      v15 = sub_28F98();
      (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
      v16 = swift_allocObject();
      v16[2] = 0;
      v16[3] = 0;
      v16[4] = v10;
      sub_16BFC(0, 0, v7, &unk_2AB68, v16);
    }
  }

  return result;
}

uint64_t sub_17898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a4;
  v5 = sub_28268();
  v4[17] = v5;
  v6 = *(v5 - 8);
  v4[18] = v6;
  v7 = *(v6 + 64) + 15;
  v4[19] = swift_task_alloc();

  return _swift_task_switch(sub_17958, 0, 0);
}

uint64_t sub_17958()
{
  *(v0 + 160) = sub_281E8();
  sub_28F78();
  *(v0 + 168) = sub_28F68();
  v2 = sub_28F58();

  return _swift_task_switch(sub_179F8, v2, v1);
}

uint64_t sub_179F8()
{
  v2 = v0[20];
  v1 = v0[21];

  v0[22] = sub_281D8();

  return _swift_task_switch(sub_17A68, 0, 0);
}

uint64_t sub_17A68()
{
  v1 = *(v0 + 128);
  *(v0 + 112) = *(v1 + 40);
  type metadata accessor for GuestPassPIN();

  sub_28A58();
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  *(v0 + 184) = v2;
  *(v0 + 192) = v3;
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  *(v0 + 64) = v1;
  type metadata accessor for AXGuestPassServer();

  v4 = sub_AD5C();
  *(v0 + 200) = v4;
  v5 = sub_280B8();
  v6 = sub_28158();
  v8 = v7;

  *(v0 + 208) = v8;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v9 = async function pointer to AXUniversalDisplayManager.addContent<A>(withView:userInteractionEnabled:service:sceneClientIdentifier:windowIdentifier:context:userInterfaceStyle:windowScene:spatialConfiguration:)[1];
  v10 = swift_task_alloc();
  *(v0 + 216) = v10;
  sub_1A570();
  *v10 = v0;
  v10[1] = sub_17BF4;
  v11 = *(v0 + 176);

  return AXUniversalDisplayManager.addContent<A>(withView:userInteractionEnabled:service:sceneClientIdentifier:windowIdentifier:context:userInterfaceStyle:windowScene:spatialConfiguration:)(v0 + 48, 1, v4, 0, 0, v6, v8, 0);
}

uint64_t sub_17BF4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *(*v2 + 208);
  v7 = *(*v2 + 200);
  v8 = *(*v2 + 176);
  v17 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v9 = v4[23];
    v10 = v4[24];
    v11 = v4[16];
    sub_925C((v4 + 2), &qword_39598, &qword_2AEB0);

    v12 = sub_17E50;
  }

  else
  {
    v14 = v4[23];
    v13 = v4[24];
    v15 = v4[16];
    v4[29] = a1;
    sub_925C((v4 + 2), &qword_39598, &qword_2AEB0);

    v12 = sub_17DDC;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_17DDC()
{
  v1 = v0[16];
  v2 = *(v1 + 16);
  *(v1 + 16) = v0[29];

  v3 = v0[19];

  v4 = v0[1];

  return v4();
}

uint64_t sub_17E50()
{
  v27 = v0;
  v1 = v0[28];
  v2 = v0[19];
  v3 = v0[16];
  *(v3 + 24) = 0;
  v4 = *(v3 + 32);
  sub_28518();
  sub_28178();
  swift_errorRetain();
  v5 = sub_28258();
  v6 = sub_29128();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[28];
    v8 = v0[18];
    v25 = v0[19];
    v9 = v0[17];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v13 = v0[9];
    v12 = v0[10];
    v14 = v0[11];
    v15 = sub_29348();
    v17 = sub_89C0(v15, v16, &v26);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_0, v5, v6, "Unalbe to install PIN gesture view %s", v10, 0xCu);
    sub_8F68(v11);

    (*(v8 + 8))(v25, v9);
  }

  else
  {
    v18 = v0[28];
    v20 = v0[18];
    v19 = v0[19];
    v21 = v0[17];

    (*(v20 + 8))(v19, v21);
  }

  v22 = v0[19];

  v23 = v0[1];

  return v23();
}

void sub_18040()
{
  v1 = v0;
  v2 = sub_28268();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v29 - v9;
  __chkstk_darwin(v8);
  v12 = v29 - v11;
  v13 = *(v0 + 40);
  swift_getKeyPath();
  v29[0] = v13;
  sub_1A6DC(&qword_39A08, type metadata accessor for GuestPassPIN);

  sub_28088();

  v15 = *(v13 + 16);
  v14 = *(v13 + 24);

  if (v14)
  {
    sub_28178();
    v16 = sub_28258();
    v17 = sub_29138();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "speaking PIN", v18, 2u);
    }

    v19 = *(v3 + 8);
    v19(v12, v2);
    v29[0] = 0;
    v29[1] = 0xE000000000000000;
    sub_29278(60);
    v30._countAndFlagsBits = 0xD000000000000029;
    v30._object = 0x800000000002BB30;
    sub_28F18(v30);
    v31._countAndFlagsBits = v15;
    v31._object = v14;
    sub_28F18(v31);

    v32._object = 0x800000000002BB60;
    v32._countAndFlagsBits = 0xD000000000000011;
    sub_28F18(v32);
    v20 = objc_allocWithZone(AVSpeechUtterance);
    v21 = sub_28E88();

    v22 = [v20 initWithSSMLRepresentation:v21];

    if (v22)
    {
      [*(v1 + 48) speakUtterance:v22];
    }

    else
    {
      sub_28178();
      v26 = sub_28258();
      v27 = sub_29128();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_0, v26, v27, "Error creating utterance", v28, 2u);
      }

      v19(v10, v2);
    }
  }

  else
  {
    sub_28178();
    v23 = sub_28258();
    v24 = sub_29128();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "Asked to speak PIN but none existed", v25, 2u);
    }

    (*(v3 + 8))(v7, v2);
  }
}

uint64_t sub_18458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_28268();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_18518, 0, 0);
}

uint64_t sub_18518()
{
  *(v0 + 80) = sub_281E8();
  sub_28F78();
  *(v0 + 88) = sub_28F68();
  v2 = sub_28F58();

  return _swift_task_switch(sub_185B8, v2, v1);
}

uint64_t sub_185B8()
{
  v2 = v0[10];
  v1 = v0[11];

  v0[12] = sub_281D8();

  return _swift_task_switch(sub_18628, 0, 0);
}

uint64_t sub_18628()
{
  v1 = *(v0[6] + 16);
  v0[13] = v1;
  v2 = v1;
  v3 = sub_280B8();
  v4 = sub_28158();
  v6 = v5;

  v0[14] = v6;
  type metadata accessor for AXGuestPassServer();
  v7 = sub_AD5C();
  v0[15] = v7;
  v8 = async function pointer to AXUniversalDisplayManager.removeContent(withViewController:userInteractionEnabled:windowIdentifier:service:context:)[1];
  v9 = swift_task_alloc();
  v0[16] = v9;
  *v9 = v0;
  v9[1] = sub_18728;
  v10 = v0[12];

  return AXUniversalDisplayManager.removeContent(withViewController:userInteractionEnabled:windowIdentifier:service:context:)(v1, 1, v4, v6, v7, 0);
}

uint64_t sub_18728()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v11 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_188D0;
  }

  else
  {
    v6 = v2[14];
    v5 = v2[15];
    v9 = v2 + 12;
    v7 = v2[12];
    v8 = v9[1];

    v4 = sub_18860;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_18860()
{
  v1 = v0[6];
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;

  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_188D0()
{
  v28 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 72);

  sub_28178();
  swift_errorRetain();
  v6 = sub_28258();
  v7 = sub_29128();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 136);
    v9 = *(v0 + 64);
    v26 = *(v0 + 72);
    v10 = *(v0 + 56);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v14 = *(v0 + 16);
    v13 = *(v0 + 24);
    v15 = *(v0 + 32);
    v16 = sub_29348();
    v18 = sub_89C0(v16, v17, &v27);

    *(v11 + 4) = v18;
    _os_log_impl(&dword_0, v6, v7, "Error removing PIN view %s", v11, 0xCu);
    sub_8F68(v12);

    (*(v9 + 8))(v26, v10);
  }

  else
  {
    v19 = *(v0 + 136);
    v21 = *(v0 + 64);
    v20 = *(v0 + 72);
    v22 = *(v0 + 56);

    (*(v21 + 8))(v20, v22);
  }

  v23 = *(v0 + 72);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_18AC8()
{
  v1 = *(v0 + 40);

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_18B40(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_17058(v2, v3);
}

uint64_t sub_18B80()
{
  v1 = v0;
  v18 = sub_29158();
  v2 = *(v18 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v18);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29148();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = sub_28DE8();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v10 = sub_1A690();
  v17[0] = "</say-as></speak>";
  v17[1] = v10;
  sub_28DD8();
  v19 = &_swiftEmptyArrayStorage;
  sub_1A6DC(&qword_39A20, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_7E8C(&qword_39A28, &qword_2AB70);
  sub_15494(&qword_39A30, &qword_39A28, &qword_2AB70);
  sub_29208();
  (*(v2 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v18);
  sub_29178();
  v11 = objc_allocWithZone(sub_28568());
  *(v0 + 32) = sub_28548();
  v12 = type metadata accessor for GuestPassPIN();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  _s17AXGuestPassServer0aB17NetworkConnectionC22__observationRegistrar33_F8B8A65206FC09C8A21103A3AFF7C9E911Observation0rG0Vvpfi_0();
  *(v1 + 40) = v15;
  *(v1 + 48) = [objc_allocWithZone(AVSpeechSynthesizer) init];
  return v1;
}

uint64_t sub_18E5C@<X0>(void (*a1)()@<X0>, ValueMetadata *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a4;
  v45 = sub_7E8C(&qword_39A38, &qword_2AC18);
  v7 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v9 = &v38 - v8;
  v10 = sub_7E8C(&qword_39A40, &qword_2AC20);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v38 - v12);
  v44 = sub_7E8C(&qword_39A48, &qword_2AC28);
  v40 = *(v44 - 8);
  v14 = *(v40 + 64);
  __chkstk_darwin(v44);
  v39 = &v38 - v15;
  v16 = sub_7E8C(&qword_39A50, &qword_2AC30);
  v42 = *(v16 - 8);
  v17 = *(v42 + 64);
  __chkstk_darwin(v16);
  v41 = &v38 - v18;
  v48 = a1;
  v49 = a2;
  sub_7E8C(&qword_39A58, &qword_2AC38);
  sub_28A68();
  v19 = v46;
  swift_getKeyPath();
  v48 = v19;
  sub_1A6DC(&qword_39A08, type metadata accessor for GuestPassPIN);
  sub_28088();

  v21 = *(v19 + 16);
  v20 = *(v19 + 24);

  if (v20)
  {
    *v13 = sub_28B78();
    v13[1] = v22;
    v23 = sub_7E8C(&qword_39A70, &qword_2AC40);
    sub_1943C(v21, v20, v13 + *(v23 + 44));

    v24 = swift_allocObject();
    v24[2] = a1;
    v24[3] = a2;
    v24[4] = a3;
    v38 = v16;
    v25 = sub_15494(&qword_39A60, &qword_39A40, &qword_2AC20);

    v26 = v39;
    sub_28948();

    sub_925C(v13, &qword_39A40, &qword_2AC20);
    v27 = swift_allocObject();
    v27[1].Kind = a1;
    v27[1].Description = a2;
    v27[2].Kind = a3;
    v48 = sub_1A898;
    v49 = v27;

    v46 = v10;
    v47 = v25;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v29 = sub_1A7EC();
    v30 = v41;
    v31 = v44;
    sub_289C8();

    (*(v40 + 8))(v26, v31);
    v32 = v42;
    v33 = v38;
    (*(v42 + 16))(v9, v30, v38);
    swift_storeEnumTagMultiPayload();
    v48 = v31;
    v49 = &type metadata for GuestPassSpeakPINGesture;
    v50 = OpaqueTypeConformance2;
    v51 = v29;
    swift_getOpaqueTypeConformance2();
    sub_286D8();
    return (*(v32 + 8))(v30, v33);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v35 = sub_15494(&qword_39A60, &qword_39A40, &qword_2AC20);
    v48 = v10;
    v49 = v35;
    v36 = swift_getOpaqueTypeConformance2();
    v37 = sub_1A7EC();
    v48 = v44;
    v49 = &type metadata for GuestPassSpeakPINGesture;
    v50 = v36;
    v51 = v37;
    swift_getOpaqueTypeConformance2();
    return sub_286D8();
  }
}

uint64_t sub_1943C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a1;
  v53 = a2;
  v56 = a3;
  v3 = sub_7E8C(&qword_39A78, &qword_2AC50);
  v4 = *(v3 - 8);
  v54 = v3 - 8;
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3 - 8);
  v55 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v50 - v8;
  v10 = sub_7E8C(&qword_39A80, &qword_2AC58);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = &v50 - v13;
  v15 = sub_7E8C(&qword_39A88, &qword_2AC60);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v19 = &v50 - v18;
  v20 = sub_7E8C(&qword_39A90, &qword_2AC68);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  v23 = __chkstk_darwin(v20);
  v51 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v50 - v26;
  __chkstk_darwin(v25);
  v50 = &v50 - v28;
  sub_28B58();
  v29 = sub_28808();
  v14[*(sub_7E8C(&qword_39A98, &qword_2AC70) + 36)] = v29;
  v30 = *(v11 + 44);
  v31 = enum case for ColorScheme.dark(_:);
  v32 = sub_285D8();
  v33 = *(v32 - 8);
  (*(v33 + 104))(&v14[v30], v31, v32);
  (*(v33 + 56))(&v14[v30], 0, 1, v32);
  sub_28B78();
  sub_28648();
  sub_1551C(v14, v19, &qword_39A80, &qword_2AC58);
  v34 = &v19[*(v16 + 44)];
  v35 = v62;
  *(v34 + 4) = v61;
  *(v34 + 5) = v35;
  *(v34 + 6) = v63;
  v36 = v58;
  *v34 = v57;
  *(v34 + 1) = v36;
  v37 = v60;
  *(v34 + 2) = v59;
  *(v34 + 3) = v37;
  v38 = sub_28618();
  LOBYTE(v31) = sub_28808();
  sub_1551C(v19, v27, &qword_39A88, &qword_2AC60);
  v39 = &v27[*(v21 + 44)];
  *v39 = v38;
  v39[8] = v31;
  v40 = v50;
  sub_1551C(v27, v50, &qword_39A90, &qword_2AC68);
  *v9 = sub_286B8();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v41 = sub_7E8C(&qword_39AA0, &qword_2AC78);
  sub_19930(v52, v53, &v9[*(v41 + 44)]);
  v42 = sub_28A18();
  *&v9[*(sub_7E8C(&qword_39AA8, &qword_2AC80) + 36)] = v42;
  v43 = sub_28808();
  v44 = &v9[*(v54 + 44)];
  *v44 = v43;
  *(v44 + 8) = 0u;
  *(v44 + 24) = 0u;
  v44[40] = 1;
  v45 = v51;
  sub_1ABBC(v40, v51, &qword_39A90, &qword_2AC68);
  v46 = v55;
  sub_1ABBC(v9, v55, &qword_39A78, &qword_2AC50);
  v47 = v56;
  sub_1ABBC(v45, v56, &qword_39A90, &qword_2AC68);
  v48 = sub_7E8C(&qword_39AB0, &qword_2AC88);
  sub_1ABBC(v46, v47 + *(v48 + 48), &qword_39A78, &qword_2AC50);
  sub_925C(v9, &qword_39A78, &qword_2AC50);
  sub_925C(v40, &qword_39A90, &qword_2AC68);
  sub_925C(v46, &qword_39A78, &qword_2AC50);
  return sub_925C(v45, &qword_39A90, &qword_2AC68);
}

uint64_t sub_19930@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v59 = a3;
  v5 = sub_28608();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_7E8C(&qword_39AB8, &qword_2AC90);
  v11 = *(v10 - 8);
  v56 = v10 - 8;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10 - 8);
  v58 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v60 = v55 - v15;
  v16._object = 0x800000000002B940;
  v16._countAndFlagsBits = 0xD000000000000010;
  v73 = GuestPassLocString(_:)(v16);
  v55[1] = sub_A978();
  v17 = sub_288F8();
  v64 = v18;
  v65 = v17;
  v20 = v19;
  v57 = v21;
  KeyPath = swift_getKeyPath();
  v66 = sub_28888();
  v62 = swift_getKeyPath();
  v61 = v20 & 1;
  v73._countAndFlagsBits = a1;
  v73._object = a2;

  v22 = sub_288F8();
  v24 = v23;
  LOBYTE(a2) = v25;
  v27 = v26;
  v55[0] = v26;
  v28 = swift_getKeyPath();
  v73._countAndFlagsBits = v22;
  v73._object = v24;
  v74 = a2 & 1;
  v76 = v27;
  v77 = v28;
  v78 = 1;
  (*(v6 + 104))(v9, enum case for DynamicTypeSize.accessibility5(_:), v5);
  sub_7E8C(&qword_39AC0, &qword_2ACF8);
  sub_1AAF4();
  v29 = v60;
  sub_28968();
  (*(v6 + 8))(v9, v5);
  sub_1ABAC(v22, v24, a2 & 1);

  v30 = sub_28868();
  v31 = swift_getKeyPath();
  v32 = (v29 + *(v56 + 44));
  *v32 = v31;
  v32[1] = v30;
  v33._countAndFlagsBits = 0xD000000000000015;
  v33._object = 0x800000000002BBA0;
  v73 = GuestPassLocString(_:)(v33);
  v34 = sub_288F8();
  v36 = v35;
  v38 = v37;
  sub_28878();
  v39 = sub_288E8();
  v41 = v40;
  LODWORD(v56) = v42;
  v44 = v43;

  sub_1ABAC(v34, v36, v38 & 1);

  v45 = v58;
  sub_1ABBC(v29, v58, &qword_39AB8, &qword_2AC90);
  *&v69 = v65;
  *(&v69 + 1) = v64;
  LOBYTE(v70) = v61;
  *(&v70 + 1) = *v68;
  DWORD1(v70) = *&v68[3];
  v46 = v57;
  *(&v70 + 1) = v57;
  *&v71 = KeyPath;
  BYTE8(v71) = 1;
  *(&v71 + 9) = *v67;
  HIDWORD(v71) = *&v67[3];
  *&v72 = v62;
  *(&v72 + 1) = v66;
  v47 = v69;
  v48 = v70;
  v49 = v72;
  v50 = v59;
  v59[2] = v71;
  v50[3] = v49;
  *v50 = v47;
  v50[1] = v48;
  v51 = v50;
  v52 = sub_7E8C(&qword_39AE0, &qword_2AD08);
  sub_1ABBC(v45, v51 + *(v52 + 48), &qword_39AB8, &qword_2AC90);
  v53 = v51 + *(v52 + 64);
  *v53 = v39;
  *(v53 + 1) = v41;
  LOBYTE(v36) = v56 & 1;
  v53[16] = v56 & 1;
  *(v53 + 3) = v44;
  sub_1ABBC(&v69, &v73, &qword_39AE8, &qword_2AD10);
  sub_1AC24(v39, v41, v36);

  sub_925C(v60, &qword_39AB8, &qword_2AC90);
  sub_1ABAC(v39, v41, v36);

  sub_925C(v45, &qword_39AB8, &qword_2AC90);
  v73._countAndFlagsBits = v65;
  v73._object = v64;
  v74 = v61;
  *v75 = *v68;
  *&v75[3] = *&v68[3];
  v76 = v46;
  v77 = KeyPath;
  v78 = 1;
  *v79 = *v67;
  *&v79[3] = *&v67[3];
  v80 = v62;
  v81 = v66;
  return sub_925C(&v73, &qword_39AE8, &qword_2AD10);
}

uint64_t sub_19EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_7E8C(&qword_39288, &qword_2A540);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v14 - v6;
  v8 = *(a3 + 32);
  sub_28538();
  *(a3 + 24) = 0;
  sub_28518();
  v9 = *(a3 + 40);
  if (*(v9 + 24))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v14[-3] = 0;
    v14[-2] = 0;
    v14[-4] = v9;
    v14[1] = v9;
    sub_1A6DC(&qword_39A08, type metadata accessor for GuestPassPIN);

    sub_28078();
  }

  else
  {
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
  }

  v11 = sub_28F98();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a3;

  sub_16BFC(0, 0, v7, &unk_2AC48, v12);
}

id sub_1A0F8()
{
  v0 = [objc_allocWithZone(UILongPressGestureRecognizer) init];
  [v0 setNumberOfTouchesRequired:3];
  [v0 setMinimumPressDuration:5.0];
  return v0;
}

char *sub_1A15C(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  result = [a1 state];
  if (result == &dword_0 + 1)
  {
    return v2();
  }

  return result;
}

uint64_t sub_1A198()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1A1DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_9CB0;

  return sub_17898(a1, v4, v5, v6);
}

uint64_t sub_1A290(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A388;

  return v7(a1);
}

uint64_t sub_1A388()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1A480()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1A4B8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_77F4;

  return sub_1A290(a1, v5);
}

unint64_t sub_1A570()
{
  result = qword_39A10;
  if (!qword_39A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39A10);
  }

  return result;
}

uint64_t sub_1A5C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_9CB0;

  return sub_18458(a1, v4, v5, v6);
}

unint64_t sub_1A690()
{
  result = qword_39A18;
  if (!qword_39A18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_39A18);
  }

  return result;
}

uint64_t sub_1A6DC(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_1A724(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A738(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A780(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A7EC()
{
  result = qword_39A68;
  if (!qword_39A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39A68);
  }

  return result;
}

uint64_t sub_1A850()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1A8BC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1A8FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_77F4;

  return sub_18458(a1, v4, v5, v6);
}

uint64_t sub_1A9B0()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 24);
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

uint64_t sub_1A9F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_28658();
  *a1 = result;
  return result;
}

uint64_t sub_1AA44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_28678();
  *a1 = result;
  return result;
}

uint64_t sub_1AA70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_28678();
  *a1 = result;
  return result;
}

uint64_t sub_1AA9C(uint64_t *a1)
{
  v1 = *a1;

  return sub_28688();
}

uint64_t sub_1AAC8(uint64_t *a1)
{
  v1 = *a1;

  return sub_28688();
}

unint64_t sub_1AAF4()
{
  result = qword_39AC8;
  if (!qword_39AC8)
  {
    sub_7F38(&qword_39AC0, &qword_2ACF8);
    sub_15494(&qword_39AD0, &qword_39AD8, &qword_2AD00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39AC8);
  }

  return result;
}

uint64_t sub_1ABAC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1ABBC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_7E8C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AC24(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1AC48()
{
  result = qword_39AF0;
  if (!qword_39AF0)
  {
    sub_7F38(&qword_39AF8, &qword_2AD60);
    sub_7F38(&qword_39A48, &qword_2AC28);
    sub_7F38(&qword_39A40, &qword_2AC20);
    sub_15494(&qword_39A60, &qword_39A40, &qword_2AC20);
    swift_getOpaqueTypeConformance2();
    sub_1A7EC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39AF0);
  }

  return result;
}

id AXGuestPassNetworkConnection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1ADF8()
{
  if (*(v0 + OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_connection))
  {

    sub_283A8();
  }

  if (*(v0 + OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_senderConnection))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_senderConnection);

    sub_283A8();
  }

  if (*(v0 + OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_listener))
  {
    v3 = *(v0 + OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_listener);

    sub_282F8();
  }

  return result;
}

uint64_t sub_1AE9C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_2092C(&qword_39BA8, type metadata accessor for AXGuestPassNetworkConnection);
  sub_28088();

  v3 = OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection__connectionState;
  swift_beginAccess();
  v4 = sub_28388();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1AF94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2092C(&qword_39BA8, type metadata accessor for AXGuestPassNetworkConnection);
  sub_28088();

  v4 = OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection__connectionState;
  swift_beginAccess();
  v5 = sub_28388();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1B08C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_28388();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = *a2;
  return sub_1B158(v7);
}

uint64_t sub_1B158(uint64_t a1)
{
  v2 = v1;
  v4 = sub_28388();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection__connectionState;
  swift_beginAccess();
  (*(v5 + 16))(v8, v1 + v9, v4);
  sub_2092C(&qword_39BA0, &type metadata accessor for NWConnection.State);
  v10 = sub_28E78();
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (v10)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v9, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v14[-2] = v2;
    v14[-1] = a1;
    v14[1] = v2;
    sub_2092C(&qword_39BA8, type metadata accessor for AXGuestPassNetworkConnection);
    sub_28078();
  }

  return (v11)(a1, v4);
}

uint64_t sub_1B3D8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection__connectionState;
  swift_beginAccess();
  v5 = sub_28388();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1B474(uint64_t a1)
{
  v2 = v1;
  v61 = sub_28298();
  v4 = *(v61 - 1);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v61);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v53 - v9;
  v60 = sub_28268();
  v11 = *(v60 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v60);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v53 - v16;
  result = sub_28288();
  if (result)
  {
    v19 = result;
    v58 = v15;
    v59 = v11;
    v20 = swift_slowAlloc();
    *v20 = 0;
    v20[1] = 0;
    v57 = v19;
    nw_endpoint_set_agent_identifier();

    sub_28178();
    v21 = *(v4 + 16);
    v56 = a1;
    v21(v10, a1, v61);
    v22 = sub_28258();
    v23 = sub_29138();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v53 = v21;
      v25 = v24;
      v26 = swift_slowAlloc();
      v55 = v2;
      v27 = v26;
      v62 = v26;
      *v25 = 136315138;
      v28 = sub_28278();
      v54 = v8;
      v30 = v29;
      (*(v4 + 8))(v10, v61);
      v31 = sub_89C0(v28, v30, &v62);
      v8 = v54;

      *(v25 + 4) = v31;
      _os_log_impl(&dword_0, v22, v23, "AXGuestPassNetworkConnection: Attempting to connect to %s", v25, 0xCu);
      sub_8F68(v27);
      v2 = v55;

      v21 = v53;
    }

    else
    {

      (*(v4 + 8))(v10, v61);
    }

    v32 = v60;
    v33 = *(v59 + 8);
    v33(v17, v60);
    v21(v8, v56, v61);
    sub_28438();
    sub_28418();
    sub_28428();
    nw_parameters_set_attach_protocol_listener();
    swift_unknownObjectRelease();
    sub_7E8C(&qword_39B80, &qword_2AE68);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_29DC0;
    v35 = *(v2 + OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_networkAgentDomain + 8);
    *(v34 + 32) = *(v2 + OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_networkAgentDomain);
    *(v34 + 40) = v35;
    v36 = *(v2 + OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_networkAgentType + 8);
    *(v34 + 48) = *(v2 + OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_networkAgentType);
    *(v34 + 56) = v36;

    sub_28408();
    sub_283E8();
    v37 = sub_283D8();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    v40 = sub_28368();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1F96C(sub_1F964);
    sub_28358();

    sub_1A690();
    v41 = sub_29168();
    sub_28398();

    v42 = v58;
    sub_28178();

    v43 = sub_28258();
    v44 = sub_29138();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v61 = v33;
      v46 = v45;
      v47 = v2;
      v48 = swift_slowAlloc();
      v62 = v48;
      *v46 = 136315138;
      v49 = sub_28348();
      v51 = sub_89C0(v49, v50, &v62);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_0, v43, v44, "AXGuestPassNetworkConnection: Started connection %s", v46, 0xCu);
      sub_8F68(v48);
      v2 = v47;

      swift_unknownObjectRelease();
      v61(v42, v60);
    }

    else
    {

      swift_unknownObjectRelease();
      v33(v42, v32);
    }

    v52 = *(v2 + OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_connection);
    *(v2 + OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_connection) = v40;
  }

  return result;
}

void sub_1BA68(uint64_t a1)
{
  v2 = sub_28388();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v29 - v8;
  __chkstk_darwin(v7);
  v11 = &v29 - v10;
  v12 = sub_28268();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v34 = v13;
    v35 = v12;
    v36 = Strong;
    sub_28178();
    v37 = *(v38 + 16);
    v37(v11, a1, v2);
    v18 = sub_28258();
    v19 = sub_29138();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v29 = v20;
      v30 = swift_slowAlloc();
      v39 = v30;
      *v20 = 136315138;
      v37(v9, v11, v2);
      v21 = sub_28EE8();
      v31 = a1;
      v32 = v6;
      v22 = v21;
      v24 = v23;
      v33 = *(v38 + 8);
      v33(v11, v2);
      v25 = sub_89C0(v22, v24, &v39);
      a1 = v31;

      v26 = v29;
      *(v29 + 1) = v25;
      v6 = v32;
      _os_log_impl(&dword_0, v18, v19, "AXGuestPassNetworkConnection: New endpoint connection state %s", v26, 0xCu);
      sub_8F68(v30);
    }

    else
    {

      v33 = *(v38 + 8);
      v33(v11, v2);
    }

    (*(v34 + 8))(v16, v35);
    v27 = v37;
    v37(v9, a1, v2);
    v28 = v36;
    sub_1B158(v9);
    v27(v6, a1, v2);
    if ((*(v38 + 88))(v6, v2) == enum case for NWConnection.State.ready(_:))
    {
      sub_1BE40();
    }

    else
    {

      v33(v6, v2);
    }
  }
}

uint64_t sub_1BE40()
{
  v1 = v0;
  v2 = sub_28268();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v34 - v8;
  v10 = *&v1[OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_connection];
  if (v10)
  {
    v11 = *&v1[OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_connection];

    sub_28178();

    v12 = sub_28258();
    v13 = sub_29138();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v34 = v2;
      v15 = v14;
      v16 = swift_slowAlloc();
      v35 = v16;
      *v15 = 136315138;
      v17 = sub_28348();
      v19 = sub_89C0(v17, v18, &v35);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_0, v12, v13, "AXGuestPassNetworkConnection: Attempting to setup listener for sender connection using %s", v15, 0xCu);
      sub_8F68(v16);

      (*(v3 + 8))(v9, v34);
    }

    else
    {

      (*(v3 + 8))(v9, v2);
    }

    sub_28308();
    sub_28438();

    sub_28418();
    sub_28428();
    nw_parameters_set_attach_protocol_listener();
    swift_unknownObjectRelease();
    sub_7E8C(&qword_39B80, &qword_2AE68);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_29DC0;
    v25 = *&v1[OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_networkAgentDomain + 8];
    *(v24 + 32) = *&v1[OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_networkAgentDomain];
    *(v24 + 40) = v25;
    v26 = *&v1[OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_networkAgentType + 8];
    *(v24 + 48) = *&v1[OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_networkAgentType];
    *(v24 + 56) = v26;

    sub_28408();
    sub_283E8();
    v27 = sub_282A8();
    v28 = OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_listener;
    v29 = *&v1[OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_listener];
    *&v1[OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_listener] = v27;

    if (*&v1[v28])
    {
      v30 = swift_allocObject();
      *(v30 + 16) = v1;
      *(v30 + 24) = v10;

      v31 = v1;
      sub_1F96C(sub_1F97C);
      sub_282C8();

      if (*&v1[v28])
      {
        v32 = *&v1[v28];

        sub_1F96C(sub_1CE38);
        sub_282B8();

        if (*&v1[v28])
        {
          sub_1A690();

          v33 = sub_29168();
          sub_282E8();
        }
      }
    }
  }

  else
  {
    sub_28178();
    v20 = sub_28258();
    v21 = sub_29128();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "Unable to setup new listener. Connection is invalid.", v22, 2u);
    }

    return (*(v3 + 8))(v7, v2);
  }
}

uint64_t sub_1C2B0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = a2;

  sub_1F96C(sub_1F9C8);
  sub_28358();

  sub_1A690();
  v8 = sub_29168();
  sub_28398();

  v9 = *&v7[OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_senderConnection];
  *&v7[OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_senderConnection] = a1;
}

uint64_t sub_1C38C(char *a1, uint64_t a2, uint64_t a3)
{
  v78 = a2;
  v79 = a3;
  v4 = sub_28458();
  v75 = *(v4 - 8);
  v5 = *(v75 + 64);
  __chkstk_darwin(v4);
  v74 = (&v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_28388();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v82 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v68 - v13;
  __chkstk_darwin(v12);
  v16 = &v68 - v15;
  v17 = sub_28268();
  v18 = *(v17 - 8);
  v83 = v17;
  v84 = v18;
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v80 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v76 = &v68 - v23;
  v24 = __chkstk_darwin(v22);
  v73 = &v68 - v25;
  v26 = __chkstk_darwin(v24);
  v77 = &v68 - v27;
  __chkstk_darwin(v26);
  v29 = &v68 - v28;
  sub_28178();
  v30 = *(v8 + 16);
  v81 = a1;
  v31 = a1;
  v32 = v30;
  v33 = v7;
  v30(v16, v31, v7);
  v34 = sub_28258();
  v35 = sub_29108();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v72 = v4;
    v37 = v36;
    v69 = v36;
    v70 = swift_slowAlloc();
    v71 = v8;
    v85 = v70;
    *v37 = 136315138;
    v32(v14, v16, v33);
    v38 = sub_28EE8();
    v40 = v39;
    v68 = v32;
    v41 = *(v8 + 8);
    v42 = v33;
    v41(v16, v33);
    v43 = sub_89C0(v38, v40, &v85);

    v44 = v69;
    *(v69 + 4) = v43;
    v45 = v68;
    _os_log_impl(&dword_0, v34, v35, "AXGuestPassNetworkConnection: [senderConnection] New endpoint connection state %s", v44, 0xCu);
    sub_8F68(v70);

    v4 = v72;

    v46 = *(v84 + 8);
    v46(v29, v83);
    v47 = v42;
    v8 = v71;
  }

  else
  {

    v45 = v32;
    v41 = *(v8 + 8);
    v47 = v33;
    v41(v16, v33);
    v46 = *(v84 + 8);
    v46(v29, v83);
  }

  v48 = v82;
  v45(v82, v81, v47);
  v49 = (*(v8 + 88))(v48, v47);
  if (v49 == enum case for NWConnection.State.failed(_:))
  {
    v50 = v80;
    sub_28178();
    v51 = sub_28258();
    v52 = sub_29128();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_0, v51, v52, "AXGuestPassNetworkConnection: [senderConnection] Unable to establish network connection to retrieve device class.", v53, 2u);
    }

    v46(v50, v83);
    return (v41)(v48, v47);
  }

  if (v49 != enum case for NWConnection.State.ready(_:))
  {
    if (v49 != enum case for NWConnection.State.cancelled(_:))
    {
      return (v41)(v48, v47);
    }

    v63 = v76;
    sub_28178();
    v64 = sub_28258();
    v65 = sub_29128();
    if (!os_log_type_enabled(v64, v65))
    {
      goto LABEL_22;
    }

    v66 = swift_slowAlloc();
    *v66 = 0;
    v67 = "AXGuestPassNetworkConnection: [senderConnection] Has been cancelled.";
    goto LABEL_21;
  }

  sub_1CB10();
  sub_28488();
  sub_28448();
  v55 = sub_283C8();

  if (v55)
  {
    sub_28478();
    if (swift_dynamicCastClass())
    {
      v57 = v74;
      v56 = v75;
      *v74 = 1;
      (*(v56 + 104))(v57, enum case for NWProtocolQUIC.Metadata.KeepAliveBehavior.seconds(_:), v4);
      sub_28468();
      v58 = v73;
      sub_28178();
      v59 = sub_28258();
      v60 = sub_29138();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_0, v59, v60, "AXGuestPassNetworkConnection [senderConnection]: Setting connection keep alive timer to 1 seconds.", v61, 2u);
      }

      v62 = v58;
      return (v46)(v62, v83);
    }
  }

  v63 = v77;
  sub_28178();
  v64 = sub_28258();
  v65 = sub_29128();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    v67 = "AXGuestPassNetworkConnection [senderConnection]: Failed to retrieve metadata from connection.";
LABEL_21:
    _os_log_impl(&dword_0, v64, v65, v67, v66, 2u);
  }

LABEL_22:

  v62 = v63;
  return (v46)(v62, v83);
}

uint64_t sub_1CB10()
{
  v1 = v0;
  v2 = sub_28268();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = *(v1 + OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_senderConnection);
  if (v10)
  {
    v11 = *(v1 + OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_senderConnection);

    sub_28178();

    v12 = sub_28258();
    v13 = sub_29108();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v26 = v2;
      v15 = v14;
      v16 = swift_slowAlloc();
      v27 = v16;
      *v15 = 136315138;
      v17 = sub_28348();
      v19 = sub_89C0(v17, v18, &v27);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_0, v12, v13, "AXGuestPassNetworkConnection: Attempting to retrieve device class with connection %s", v15, 0xCu);
      sub_8F68(v16);

      (*(v3 + 8))(v9, v26);
    }

    else
    {

      (*(v3 + 8))(v9, v2);
    }

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = v10;

    sub_283B8();
  }

  else
  {
    sub_28178();
    v20 = sub_28258();
    v21 = sub_29128();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "AXGuestPassNetworkConnection: No valid sender connection.", v22, 2u);
    }

    return (*(v3 + 8))(v7, v2);
  }
}

uint64_t sub_1CE38(uint64_t a1)
{
  v2 = sub_282D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = sub_28268();
  v26 = *(v10 - 8);
  v11 = *(v26 + 64);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_28178();
  v14 = *(v3 + 16);
  v14(v9, a1, v2);
  v15 = sub_28258();
  v16 = sub_29108();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25 = v10;
    v18 = v17;
    v24 = swift_slowAlloc();
    v27 = v24;
    *v18 = 136315138;
    v14(v7, v9, v2);
    v19 = sub_28EE8();
    v21 = v20;
    (*(v3 + 8))(v9, v2);
    v22 = sub_89C0(v19, v21, &v27);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_0, v15, v16, "AXGuestPassNetworkConnection: New listener state: %s", v18, 0xCu);
    sub_8F68(v24);

    return (*(v26 + 8))(v13, v25);
  }

  else
  {

    (*(v3 + 8))(v9, v2);
    return (*(v26 + 8))(v13, v10);
  }
}

uint64_t sub_1D10C(uint64_t a1, unint64_t a2)
{
  v5 = sub_28338();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_28268();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  result = __chkstk_darwin(v10);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_connection);
  if (v16)
  {
    v17 = a2 >> 60 == 15;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    v45 = v9;
    v48 = result;

    sub_1EEA4(a1, a2);
    sub_28178();

    v18 = sub_28258();
    v19 = sub_29108();

    v20 = os_log_type_enabled(v18, v19);
    v46 = v6;
    v47 = v5;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v44 = a1;
      v22 = a2;
      v23 = v21;
      v24 = swift_slowAlloc();
      v49 = v24;
      *v23 = 136315138;
      v25 = sub_28348();
      v27 = sub_89C0(v25, v26, &v49);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_0, v18, v19, "AXGuestPassNetworkConnection: Attempting to send payload with connection %s", v23, 0xCu);
      sub_8F68(v24);

      a2 = v22;
      a1 = v44;
    }

    (*(v11 + 8))(v15, v48);
    v28 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v28 != 2)
      {
        goto LABEL_18;
      }

      v31 = *(a1 + 16);
      v30 = *(a1 + 24);
      v32 = __OFSUB__(v30, v31);
      v29 = v30 - v31;
      if (!v32)
      {
LABEL_16:
        if ((v29 & 0x8000000000000000) == 0)
        {
          goto LABEL_19;
        }

        __break(1u);
LABEL_18:
        v29 = 0;
        goto LABEL_19;
      }

      __break(1u);
    }

    else if (!v28)
    {
      v29 = BYTE6(a2);
LABEL_19:
      v49 = bswap64(v29);
      v33 = sub_1D554(&v49, v50);
      v35 = v34;
      v51 = v33;
      v52 = v34;
      v48 = v33;
      v44 = v34;
      v50[2] = &type metadata for Data;
      v50[3] = &protocol witness table for Data;
      v49 = a1;
      v50[0] = a2;
      v36 = sub_9878(&v49, &type metadata for Data);
      v37 = *v36;
      v38 = v36[1];
      sub_1EEA4(a1, a2);
      sub_8FB4(v33, v35);
      sub_1EEB8(v37, v38);
      sub_8F68(&v49);
      v39 = v51;
      v40 = v52;
      sub_28328();
      sub_28318();
      v42 = v45;
      v41 = v46;
      *v45 = sub_1EFF0;
      v42[1] = v16;
      v43 = v47;
      (*(v41 + 104))(v42, enum case for NWConnection.SendCompletion.contentProcessed(_:), v47);

      sub_28378();

      sub_9008(v39, v40);
      sub_90BC(a1, a2);
      sub_9008(v48, v44);

      return (*(v41 + 8))(v42, v43);
    }

    LODWORD(v29) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
    }

    v29 = v29;
    goto LABEL_16;
  }

  return result;
}