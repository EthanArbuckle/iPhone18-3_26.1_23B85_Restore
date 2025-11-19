void *sub_4339C()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = [v1 userInterfaceIdiom];

  v3 = [v0 currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v16 = &type metadata for MomentsFeatureFlags;
  v17 = sub_50F04();
  v5 = sub_53A58();
  sub_777C(&v15);
  if (v2)
  {
    v6 = ((v4 == &dword_0 + 1) & v5) == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v16 = &type metadata for PrivacyAndSecuritySettingsListItemIdentifier;
    v17 = &off_6E828;
    LOBYTE(v15) = 17;
    sub_44BC(&qword_77F90, &qword_57CD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_57A70;
    sub_50DB8(&v15, inited + 32);
    sub_44BC(&qword_79328, &qword_5A7B0);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_57A70;
    *(v8 + 32) = inited;
    v9 = v8 + 32;
    v10 = sub_40F9C(v8);
    swift_setDeallocating();
    sub_47F8(v9, &qword_79330, &qword_5A7B8);
  }

  sub_44BC(&qword_79328, &qword_5A7B0);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_57A70;
  *(v11 + 32) = v10;
  v12 = v11 + 32;
  v13 = sub_40F9C(v11);
  swift_setDeallocating();
  sub_47F8(v12, &qword_79330, &qword_5A7B8);
  return v13;
}

void *sub_4358C()
{
  v9 = &type metadata for PrivacyAndSecuritySettingsListItemIdentifier;
  v10 = &off_6E828;
  LOBYTE(v8) = 34;
  sub_44BC(&qword_77F90, &qword_57CD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_57A70;
  sub_50DB8(&v8, inited + 32);
  v6 = &type metadata for PrivacyAndSecuritySettingsListItemIdentifier;
  v7 = &off_6E828;
  LOBYTE(v5) = 35;
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_57A70;
  sub_50DB8(&v5, v1 + 32);
  sub_44BC(&qword_79328, &qword_5A7B0);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_5A530;
  *(v2 + 32) = inited;
  *(v2 + 40) = v1;
  v3 = sub_40F9C(v2);
  swift_setDeallocating();
  sub_44BC(&qword_79330, &qword_5A7B8);
  swift_arrayDestroy();
  return v3;
}

void *sub_436BC(uint64_t *a1)
{
  v2 = *a1;
  v50 = v2;
  v51 = &off_70408;
  *&v49 = a1;
  v3 = type metadata accessor for AppPrivacyReportListItemProvider();
  v4 = swift_allocObject();
  v5 = sub_50D68(&v49, v2);
  v6 = *(v2 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v40 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v39 - v40);
  v9 = *(v6 + 16);
  (v9)(v39 - v40);
  v10 = *v8;

  v11 = sub_50408(v10, v4);
  sub_777C(&v49);
  v50 = v3;
  v51 = &off_6F7E0;
  *&v49 = v11;
  sub_44BC(&qword_77F90, &qword_57CD0);
  inited = swift_initStackObject();
  v42 = xmmword_57A70;
  *(inited + 16) = xmmword_57A70;
  v41 = inited;
  sub_50DB8(&v49, inited + 32);
  v47 = v2;
  v48 = &off_70408;
  *&v46 = a1;
  v13 = type metadata accessor for AppleIntelligenceReportListItemProvider();
  v14 = swift_allocObject();
  v15 = sub_50D68(&v46, v2);
  v39[1] = v7;
  __chkstk_darwin(v15);
  v16 = (v39 - v40);
  v17 = (v39 - v40);
  v40 = v9;
  (v9)(v17);
  v18 = *v16;

  v19 = sub_4FECC(v18, v14);
  sub_777C(&v46);
  v47 = v13;
  v48 = &off_6F770;
  *&v46 = v19;
  v20 = swift_initStackObject();
  *(v20 + 16) = v42;
  sub_50DB8(&v46, v20 + 32);
  if (a1[10] == 18507 && a1[11] == 0xE200000000000000 || (sub_54BD8() & 1) != 0)
  {
    v44 = v2;
    v45 = &off_70408;
    *&v43 = a1;
    v21 = type metadata accessor for LocationAccessReportListItemProvider();
    v22 = swift_allocObject();
    v23 = sub_50D68(&v43, v2);
    __chkstk_darwin(v23);
    v25 = (v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    (v40)(v25);
    v26 = *v25;

    v27 = sub_507D8(v26, v22);
    sub_777C(&v43);
    v44 = v21;
    v45 = &off_6F800;
    *&v43 = v27;
    v28 = swift_initStackObject();
    *(v28 + 16) = v42;
    sub_50DB8(&v43, v28 + 32);
    sub_44BC(&qword_79328, &qword_5A7B0);
    v29 = swift_initStackObject();
    *(v29 + 16) = v42;
    *(v29 + 32) = v28;
    v30 = v29 + 32;
    v31 = sub_40F9C(v29);
    swift_setDeallocating();
    sub_47F8(v30, &qword_79330, &qword_5A7B8);
  }

  else
  {
    v31 = &_swiftEmptyArrayStorage;
  }

  if ([objc_opt_self() shouldShowDataAndSensors])
  {
    v44 = &type metadata for PrivacyAndSecuritySettingsListItemIdentifier;
    v45 = &off_6E828;
    LOBYTE(v43) = 39;
    v32 = swift_initStackObject();
    *(v32 + 16) = v42;
    sub_50DB8(&v43, v32 + 32);
    sub_44BC(&qword_79328, &qword_5A7B0);
    v33 = swift_initStackObject();
    *(v33 + 16) = v42;
    *(v33 + 32) = v32;
    v34 = v33 + 32;
    v35 = sub_40F9C(v33);
    swift_setDeallocating();
    sub_47F8(v34, &qword_79330, &qword_5A7B8);
  }

  else
  {
    v35 = &_swiftEmptyArrayStorage;
  }

  sub_44BC(&qword_79328, &qword_5A7B0);
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_5A560;
  *(v36 + 32) = v41;
  *(v36 + 40) = v20;
  *(v36 + 48) = v31;
  *(v36 + 56) = v35;
  v37 = sub_40F9C(v36);
  swift_setDeallocating();
  sub_44BC(&qword_79330, &qword_5A7B8);
  swift_arrayDestroy();
  return v37;
}

void *sub_43BE0(uint64_t *a1)
{
  v2 = *a1;
  v53 = v2;
  v54 = &off_70408;
  *&v52 = a1;
  v3 = type metadata accessor for DeveloperModeListItemProvider();
  v4 = swift_allocObject();
  v5 = sub_50D68(&v52, v2);
  v6 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v36 - v7);
  v10 = *(v9 + 16);
  v39 = v7;
  v40 = v9 + 16;
  v38 = v10;
  v10(&v36 - v7);
  v11 = *v8;

  v12 = sub_4FA00(v11, v4);
  sub_777C(&v52);
  v53 = v3;
  v54 = &off_6F660;
  *&v52 = v12;
  sub_44BC(&qword_77F90, &qword_57CD0);
  inited = swift_initStackObject();
  v42 = xmmword_57A70;
  *(inited + 16) = xmmword_57A70;
  v41 = inited;
  sub_50DB8(&v52, inited + 32);

  v15 = sub_50BE0(v14);
  v50 = type metadata accessor for InputAccessoriesListItemProvider();
  v51 = &off_6F6A8;
  *&v49 = v15;
  v16 = swift_initStackObject();
  *(v16 + 16) = v42;
  sub_50DB8(&v49, v16 + 32);
  v47 = &type metadata for SoftwareUpdateFeatureFlags;
  v48 = sub_50DD0();
  v17 = sub_53A58();
  sub_777C(&v46);
  if (v17)
  {
    v18 = type metadata accessor for BackgroundSecurityImprovementsListItemProvider();
    v19 = swift_allocObject();
    *(v19 + 16) = 42;
    v47 = v18;
    v48 = &off_6F640;
    *&v46 = v19;
    v20 = swift_initStackObject();
    *(v20 + 16) = v42;
    sub_50DB8(&v46, v20 + 32);
    sub_44BC(&qword_79328, &qword_5A7B0);
    v21 = swift_initStackObject();
    *(v21 + 16) = v42;
    *(v21 + 32) = v20;
    v22 = v21 + 32;
    v37 = sub_40F9C(v21);
    swift_setDeallocating();
    sub_47F8(v22, &qword_79330, &qword_5A7B8);
  }

  else
  {
    v37 = &_swiftEmptyArrayStorage;
  }

  v47 = v2;
  v48 = &off_70408;
  *&v46 = a1;
  v23 = type metadata accessor for StolenDeviceProtectionListItemProvider();
  v24 = swift_allocObject();
  v25 = sub_50D68(&v46, v2);
  __chkstk_darwin(v25);
  v26 = (&v36 - v39);
  v38(&v36 - v39);
  v27 = *v26;
  *(v24 + 48) = v2;
  *(v24 + 56) = &off_70408;
  *(v24 + 24) = v27;
  *(v24 + 16) = 43;

  sub_777C(&v46);
  v47 = v23;
  v48 = &off_6F738;
  *&v46 = v24;
  v28 = swift_initStackObject();
  *(v28 + 16) = v42;
  sub_50DB8(&v46, v28 + 32);
  v29 = type metadata accessor for LockdownModeListItemProvider();
  v30 = swift_allocObject();
  *(v30 + 16) = 44;
  v44 = v29;
  v45 = &off_6F718;
  *&v43 = v30;
  v31 = swift_initStackObject();
  *(v31 + 16) = v42;
  sub_50DB8(&v43, v31 + 32);
  sub_44BC(&qword_79328, &qword_5A7B0);
  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_5A570;
  *(v32 + 32) = v41;
  v33 = v37;
  *(v32 + 40) = v16;
  *(v32 + 48) = v33;
  *(v32 + 56) = v28;
  *(v32 + 64) = v31;
  v34 = sub_40F9C(v32);
  swift_setDeallocating();
  sub_44BC(&qword_79330, &qword_5A7B8);
  swift_arrayDestroy();
  return v34;
}

char *sub_44070()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_54458();
  v107 = *(v3 - 8);
  v108 = v3;
  v4 = *(v107 + 64);
  __chkstk_darwin(v3);
  v105 = v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_54498();
  v104 = *(v106 - 8);
  v6 = *(v104 + 64);
  __chkstk_darwin(v106);
  v103 = v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_54468();
  v101 = *(v102 - 8);
  v8 = *(v101 + 64);
  __chkstk_darwin(v102);
  v100 = v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_44BC(&qword_79288, &qword_5A6C8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v89 = v77 - v12;
  v90 = sub_44BC(&qword_79290, &qword_5A6D0);
  v88 = *(v90 - 8);
  v13 = *(v88 + 64);
  __chkstk_darwin(v90);
  v15 = v77 - v14;
  v93 = sub_44BC(&qword_79298, &qword_5A6D8);
  v92 = *(v93 - 8);
  v16 = *(v92 + 64);
  __chkstk_darwin(v93);
  v91 = v77 - v17;
  v97 = sub_44BC(&qword_792A0, &qword_5A6E0);
  v95 = *(v97 - 8);
  v18 = *(v95 + 64);
  __chkstk_darwin(v97);
  v94 = v77 - v19;
  v99 = sub_44BC(&qword_792A8, &qword_5A6E8);
  v98 = *(v99 - 8);
  v20 = *(v98 + 64);
  __chkstk_darwin(v99);
  v96 = v77 - v21;
  *(v0 + 16) = 45;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 56) = 0;
  v22 = sub_54638();
  v23 = MGGetStringAnswer();

  if (v23)
  {
    v24 = sub_54668();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0xE000000000000000;
  }

  *(v1 + 10) = v24;
  *(v1 + 11) = v26;
  v27 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel_appendSettingsNavigationPath;
  v28 = sub_53B88();
  (*(*(v28 - 8) + 56))(&v1[v27], 1, 1, v28);
  v29 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel_clearSettingsNavigationPath;
  v30 = sub_53B68();
  (*(*(v30 - 8) + 56))(&v1[v29], 1, 1, v30);
  v31 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel_invalidationSubject;
  v87 = sub_44BC(&qword_792B0, &qword_5A6F0);
  v32 = *(v87 + 48);
  v33 = *(v87 + 52);
  swift_allocObject();
  *&v1[v31] = sub_53D08();
  *&v1[OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel_cancellables] = &_swiftEmptySetSingleton;
  v1[OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel__communicationSafetySetupHasCompleted] = 0;
  v34 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel_scrollToItemSubject;
  v35 = sub_44BC(&qword_792B8, &qword_5A6F8);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  *&v1[v34] = sub_53D08();
  *&v1[OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel____lazy_storage___sectionModelProviders] = 0;
  sub_53A38();
  v38 = type metadata accessor for TCCAuthorizationProvider();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  *(v1 + 6) = sub_20418();
  swift_getKeyPath();
  aBlock[0] = v1;
  sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
  sub_53A28();

  v41 = *(v1 + 6);
  v110 = v2;
  v111 = &off_70408;
  aBlock[0] = v1;
  sub_89B8(aBlock, &v113);
  swift_beginAccess();
  swift_retain_n();

  sub_4B2A8(&v113, v41 + 48);
  swift_endAccess();
  sub_20810();

  sub_777C(aBlock);
  aBlock[0] = *&v1[OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel_invalidationSubject];
  v78 = sub_54988();
  v79 = v77;
  v42 = *(v78 - 8);
  v43 = *(v42 + 64);
  __chkstk_darwin(v78);
  v45 = v77 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_54978();
  v86 = objc_opt_self();
  v46 = [v86 mainRunLoop];
  v113 = v46;
  v47 = sub_44BC(&qword_792C0, &qword_5A730);
  v77[1] = v77;
  v85 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47 - 8);
  v84 = v48;
  v49 = v77 - v48;
  v50 = sub_54968();
  v51 = *(v50 - 8);
  v52 = *(v51 + 56);
  v83 = v50;
  v82 = v52;
  v81 = v51 + 56;
  (v52)(v49, 1, 1);
  v53 = sub_E444(0, &qword_792C8, NSRunLoop_ptr);
  sub_489C(&qword_792D0, &qword_792B0, &qword_5A6F0);
  v54 = sub_4B318();
  v87 = v53;
  v80 = v54;
  sub_53D88();
  sub_47F8(v49, &qword_792C0, &qword_5A730);

  (*(v42 + 8))(v45, v78);

  if (qword_76FD0 != -1)
  {
    swift_once();
  }

  v55 = qword_79130;
  aBlock[0] = qword_79130;
  v56 = sub_54858();
  v57 = v89;
  (*(*(v56 - 8) + 56))(v89, 1, 1, v56);
  v79 = sub_E444(0, &qword_775E0, OS_dispatch_queue_ptr);
  sub_489C(&qword_792E0, &qword_79290, &qword_5A6D0);
  sub_4B5E8();
  v58 = v55;
  v59 = v91;
  v60 = v90;
  sub_53D78();
  sub_47F8(v57, &qword_79288, &qword_5A6C8);

  (*(v88 + 8))(v15, v60);
  swift_allocObject();
  swift_weakInit();
  sub_44BC(&qword_792F0, &qword_5A738);
  sub_489C(&qword_792F8, &qword_79298, &qword_5A6D8);
  v61 = v94;
  v62 = v93;
  sub_53D68();

  (*(v92 + 8))(v59, v62);
  v63 = [v86 mainRunLoop];
  aBlock[0] = v63;
  __chkstk_darwin(v63);
  v64 = v77 - v84;
  v82(v77 - v84, 1, 1, v83);
  sub_489C(&qword_79300, &qword_792A0, &qword_5A6E0);
  v65 = v96;
  v66 = v97;
  sub_53D78();
  sub_47F8(v64, &qword_792C0, &qword_5A730);

  (*(v95 + 8))(v61, v66);
  swift_getKeyPath();
  aBlock[0] = v1;
  sub_489C(&qword_79308, &qword_792A8, &qword_5A6E8);
  v67 = v99;
  sub_53DA8();

  (*(v98 + 8))(v65, v67);
  swift_beginAccess();
  sub_53CB8();
  swift_endAccess();

  v68 = v101;
  v69 = v100;
  v70 = v102;
  (*(v101 + 104))(v100, enum case for DispatchQoS.QoSClass.userInitiated(_:), v102);
  v71 = sub_548A8();
  (*(v68 + 8))(v69, v70);
  v111 = sub_4B6E4;
  v112 = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_51A90;
  v110 = &unk_70450;
  v72 = _Block_copy(aBlock);

  v73 = v103;
  sub_54478();
  v113 = &_swiftEmptyArrayStorage;
  sub_4B704(&qword_775E8, &type metadata accessor for DispatchWorkItemFlags);
  sub_44BC(&qword_775F0, &qword_574F8);
  sub_489C(&qword_775F8, &qword_775F0, &qword_574F8);
  v74 = v105;
  v75 = v108;
  sub_549E8();
  sub_54888();
  _Block_release(v72);

  (*(v107 + 8))(v74, v75);
  (*(v104 + 8))(v73, v106);

  return v1;
}

uint64_t sub_45018@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  if (qword_76FF0 != -1)
  {
    swift_once();
  }

  v5 = sub_53C38();
  sub_7700(v5, qword_7BC30);

  v6 = sub_53C18();
  v7 = sub_54828();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v44[0] = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_18710(v4, v3, v44);
    sub_777C(v9);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = sub_53C18();
    v13 = sub_54828();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "Requesting new snapshot for data model due to invalidation.", v14, 2u);
    }

    v15 = sub_40714();
    v16 = *(v15 + 16);
    if (v16)
    {
      v31 = a2;
      v17 = &_swiftEmptyArrayStorage;
      v18 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel__communicationSafetySetupHasCompleted;
      v19 = v15 + 32;
      do
      {
        sub_89B8(v19, v41);
        sub_89B8(v41, &v36);
        sub_44BC(&qword_79310, &qword_5A798);
        type metadata accessor for SensitiveContentWarningListSectionModelProvider();
        if (swift_dynamicCast() && (, swift_getKeyPath(), *&v36 = v11, sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel), sub_53A28(), , (*(v11 + v18) & 1) == 0))
        {
          sub_777C(v41);
        }

        else
        {
          v20 = v42;
          v21 = v43;
          sub_7738(v41, v42);
          (*(v21 + 16))(v44, v20, v21);
          v38 = v44[2];
          v39 = v44[3];
          v40 = v45;
          v36 = v44[0];
          v37 = v44[1];
          sub_777C(v41);
          if (*(&v45 + 1))
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_23C20(0, *(v17 + 2) + 1, 1, v17);
            }

            v23 = *(v17 + 2);
            v22 = *(v17 + 3);
            if (v23 >= v22 >> 1)
            {
              v17 = sub_23C20((v22 > 1), v23 + 1, 1, v17);
            }

            v34 = v39;
            v35 = v40;
            v32 = v37;
            v33 = v38;
            v24 = v36;
            *(v17 + 2) = v23 + 1;
            v25 = &v17[80 * v23];
            *(v25 + 2) = v24;
            *(v25 + 5) = v34;
            *(v25 + 6) = v35;
            *(v25 + 3) = v32;
            *(v25 + 4) = v33;
          }
        }

        v19 += 40;
        --v16;
      }

      while (v16);

      a2 = v31;
    }

    else
    {

      v17 = &_swiftEmptyArrayStorage;
    }

    v26 = sub_C50C(v17);
    v28 = v27;
    v30 = v29;

    *a2 = v26;
    a2[1] = v28;
    a2[2] = v30;
  }

  else
  {
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 1;
  }

  return result;
}

uint64_t sub_45470()
{
  v0 = sub_54458();
  v13 = *(v0 - 8);
  v1 = *(v13 + 64);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_54498();
  v4 = *(v12 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v12);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [objc_opt_self() initializeNudityDetection];
  sub_E444(0, &qword_775E0, OS_dispatch_queue_ptr);
  v8 = sub_54878();
  v9 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_4B74C;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_51A90;
  aBlock[3] = &unk_70478;
  v10 = _Block_copy(aBlock);

  sub_54478();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_4B704(&qword_775E8, &type metadata accessor for DispatchWorkItemFlags);
  sub_44BC(&qword_775F0, &qword_574F8);
  sub_489C(&qword_775F8, &qword_775F0, &qword_574F8);
  sub_549E8();
  sub_54888();
  _Block_release(v10);

  (*(v13 + 8))(v3, v0);
  return (*(v4 + 8))(v7, v12);
}

uint64_t sub_45780()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_3FACC(0, 0, 0);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel__communicationSafetySetupHasCompleted) == 1)
    {
      *(result + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel__communicationSafetySetupHasCompleted) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
      sub_53A18();
    }
  }

  return result;
}

uint64_t sub_4590C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_45950()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel_cancellables;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *(v0 + v2);
    }

    sub_54A08();
    sub_53CD8();
    sub_4B704(&qword_777C0, &type metadata accessor for AnyCancellable);
    result = sub_547E8();
    v3 = v33;
    v6 = v34;
    v7 = v35;
    v8 = v36;
    v9 = v37;
  }

  else
  {
    v10 = -1 << *(v3 + 32);
    v6 = v3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v3 + 56);

    v8 = 0;
  }

  v13 = (v7 + 64) >> 6;
  if (v3 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v14 = v8;
    v15 = v9;
    v16 = v8;
    if (!v9)
    {
      break;
    }

LABEL_14:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v3 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v18)
    {
LABEL_20:
      sub_11288();
      v19 = *(v1 + v2);
      *(v1 + v2) = &_swiftEmptySetSingleton;

      v20 = v1[4];
      v21 = v1[5];
      sub_4B7F0(v1[3]);
      v22 = v1[6];

      v23 = v1[7];

      v24 = v1[9];
      sub_515E4(v1[8]);
      v25 = v1[11];

      sub_47F8(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel_appendSettingsNavigationPath, &qword_790E0, &qword_5A4E0);
      sub_47F8(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel_clearSettingsNavigationPath, &qword_790D8, &unk_5A8E0);
      v26 = *(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel_invalidationSubject);

      v27 = *(v1 + v2);

      v28 = *(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel_scrollToItemSubject);

      v29 = *(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel____lazy_storage___sectionModelProviders);

      v30 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel___observationRegistrar;
      v31 = sub_53A48();
      (*(*(v31 - 8) + 8))(v1 + v30, v31);
      return v1;
    }

    while (1)
    {
      sub_53CC8();

      v8 = v16;
      v9 = v17;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (sub_54A28())
      {
        sub_53CD8();
        swift_dynamicCast();
        v16 = v8;
        v17 = v9;
        if (v32)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_20;
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_45C68()
{
  sub_45950();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PrivacyAndSecuritySettingsListViewModel()
{
  result = qword_79188;
  if (!qword_79188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_45D14()
{
  sub_45EB8(319, &qword_79198, &type metadata accessor for AppendSettingsNavigationPathAction);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_45EB8(319, &unk_791A0, &type metadata accessor for ClearSettingsNavigationPathAction);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_53A48();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_45EB8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_54998();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_45F0C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v235 = a3;
  v7 = sub_53B58();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v224 = &v214 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v232 = &v214 - v12;
  v13 = type metadata accessor for PrivacyAndSecuritySettingsDestinationOption();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v234 = &v214 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v233 = &v214 - v17;
  v18 = sub_44BC(&qword_790E0, &qword_5A4E0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v227 = &v214 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v225 = &v214 - v23;
  __chkstk_darwin(v22);
  v25 = &v214 - v24;
  v26 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel_appendSettingsNavigationPath;
  swift_beginAccess();
  v230 = v26;
  sub_4790(v3 + v26, v25, &qword_790E0, &qword_5A4E0);
  v27 = sub_53B88();
  v226 = *(v27 - 8);
  v28 = *(v226 + 48);
  v231 = v27;
  v229 = v226 + 48;
  v228 = v28;
  LODWORD(v26) = (v28)(v25, 1);
  v29 = sub_47F8(v25, &qword_790E0, &qword_5A4E0);
  if (v26 == 1)
  {
    v30 = a1;
    v31 = v235;
    if (qword_76FE8 != -1)
    {
      swift_once();
    }

    v32 = a2;
    v33 = sub_53C38();
    sub_7700(v33, qword_7BC18);

    v34 = sub_53C18();
    v35 = sub_54828();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v240 = swift_slowAlloc();
      *v36 = 136315394;
      v37 = *v4;
      v38 = sub_54D48();
      v40 = sub_18710(v38, v39, &v240);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2080;
      *(v36 + 14) = sub_18710(0xD00000000000001CLL, 0x800000000005EBA0, &v240);
      _os_log_impl(&dword_0, v34, v35, "%s.%s: deferring url load", v36, 0x16u);
      swift_arrayDestroy();
    }

    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v214 - 2) = v4;
    *(&v214 - 1) = v30;
    v240 = v4;
    sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
    sub_53A18();

    v42 = swift_getKeyPath();
    __chkstk_darwin(v42);
    *(&v214 - 4) = v4;
    *(&v214 - 3) = v32;
    *(&v214 - 2) = v31;
    v240 = v4;
    sub_53A18();

    return;
  }

  if (!a1)
  {
    if (a2)
    {
      (a2)(v29);
    }

    return;
  }

  if (qword_76FE8 != -1)
  {
    swift_once();
  }

  v43 = sub_53C38();
  v44 = sub_7700(v43, qword_7BC18);

  v45 = sub_53C18();
  v46 = sub_54828();

  v47 = os_log_type_enabled(v45, v46);
  v223 = v44;
  v221 = v7;
  v222 = v8;
  v220 = v13;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v240 = swift_slowAlloc();
    *v48 = 136315907;
    v49 = *v4;
    v50 = sub_54D48();
    v52 = a2;
    v53 = sub_18710(v50, v51, &v240);

    *(v48 + 4) = v53;
    *(v48 + 12) = 2080;
    *(v48 + 14) = sub_18710(0xD00000000000001CLL, 0x800000000005EBA0, &v240);
    *(v48 + 22) = 2160;
    *(v48 + 24) = 1752392040;
    *(v48 + 32) = 2081;
    v54 = sub_545D8();
    v56 = sub_18710(v54, v55, &v240);

    *(v48 + 34) = v56;
    a2 = v52;
    _os_log_impl(&dword_0, v45, v46, "Start (%s.%s) url: '%{private,mask.hash}s'…", v48, 0x2Au);
    swift_arrayDestroy();
  }

  v57 = sub_53C18();
  v58 = sub_54828();

  v59 = os_log_type_enabled(v57, v58);
  if (a2)
  {
    if (!v59)
    {
      goto LABEL_20;
    }

    v60 = swift_slowAlloc();
    v240 = swift_slowAlloc();
    *v60 = 136315394;
    v61 = *v4;
    v62 = sub_54D48();
    v64 = a2;
    v65 = sub_18710(v62, v63, &v240);

    *(v60 + 4) = v65;
    a2 = v64;
    *(v60 + 12) = 2080;
    *(v60 + 14) = sub_18710(0xD00000000000001CLL, 0x800000000005EBA0, &v240);
    v66 = "%s.%s: completion block present";
  }

  else
  {
    if (!v59)
    {
      goto LABEL_20;
    }

    v60 = swift_slowAlloc();
    v240 = swift_slowAlloc();
    *v60 = 136315394;
    v67 = *v4;
    v68 = sub_54D48();
    v70 = sub_18710(v68, v69, &v240);

    *(v60 + 4) = v70;
    a2 = 0;
    *(v60 + 12) = 2080;
    *(v60 + 14) = sub_18710(0xD00000000000001CLL, 0x800000000005EBA0, &v240);
    v66 = "%s.%s: completion block not present";
  }

  _os_log_impl(&dword_0, v57, v58, v66, v60, 0x16u);
  swift_arrayDestroy();

LABEL_20:

  *&v236[0] = 1752457584;
  *(&v236[0] + 1) = 0xE400000000000000;
  sub_54A58();
  if (*(a1 + 16) && (v71 = sub_1BE7C(&v240), (v72 & 1) != 0))
  {
    sub_CAF4(*(a1 + 56) + 32 * v71, &v242);
  }

  else
  {
    v242 = 0u;
    v243 = 0u;
  }

  sub_1C37C(&v240);
  if (*(&v243 + 1))
  {
    if (swift_dynamicCast())
    {
      v74 = v240;
      v73 = v241;

      v75 = sub_53C18();
      v76 = sub_54828();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v219 = v74;
        v78 = v77;
        v240 = swift_slowAlloc();
        *v78 = 136315394;
        v79 = *v4;
        v80 = sub_54D48();
        v82 = a2;
        v83 = sub_18710(v80, v81, &v240);

        *(v78 + 4) = v83;
        a2 = v82;
        *(v78 + 12) = 2080;
        *(v78 + 14) = sub_18710(0xD00000000000001CLL, 0x800000000005EBA0, &v240);
        _os_log_impl(&dword_0, v75, v76, "%s.%s: path component is present.", v78, 0x16u);
        swift_arrayDestroy();

        v74 = v219;
      }

      v84 = v222;
      v240 = v74;
      v241 = v73;
      *&v242 = 47;
      *(&v242 + 1) = 0xE100000000000000;
      v85 = sub_A700();
      v86 = sub_549A8();
      v87 = v86;
      v88 = *(v86 + 2);
      if (v88)
      {
        v216 = v85;
        v89 = *(v86 + 4);
        v90 = *(v86 + 5);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v239 = v87;
        v218 = a2;
        v217 = v73;
        if (isUniquelyReferenced_nonNull_native && (v88 - 1) <= *(v87 + 3) >> 1)
        {
          v219 = v87;
        }

        else
        {
          v219 = sub_23D40(isUniquelyReferenced_nonNull_native, v88, 1, v87);
          v239 = v219;
        }

        sub_5175C(0, 1, 0);
        v111 = 0;
        while (v111 != 45)
        {
          v112 = *(&off_6E0F0 + v111 + 32);
          if (sub_6104(*(&off_6E0F0 + v111 + 32)) == v89 && v113 == v90)
          {

LABEL_68:
            v126 = *(v4 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel_scrollToItemSubject);
            LOBYTE(v240) = v112;
            sub_53CF8();
            v127 = sub_3F1A4();
            v128 = sub_C3CC(v127);

            v129 = v128;
            v130 = *(v128 + 2) + 1;
            v131 = 32;
            v132 = v221;
            v133 = v234;
            v134 = v233;
            while (--v130)
            {
              v135 = v129[v131];
              v131 += 104;
              if (v135 == v112)
              {

                sub_D4BC(v112, v134);
                if (swift_getEnumCaseMultiPayload())
                {
                  sub_5181C(v134);
                  v136 = 0;
                }

                else
                {
                  (*(v84 + 8))(v134, v132);
                  *&v242 = 0x6574616D696E61;
                  *(&v242 + 1) = 0xE700000000000000;

                  sub_54A58();
                  *(&v243 + 1) = &type metadata for Bool;
                  LOBYTE(v242) = 1;
                  sub_CB50(&v242, v236);
                  v145 = swift_isUniquelyReferenced_nonNull_native();
                  v237 = a1;
                  sub_4DD6C(v236, &v240, v145);
                  sub_1C37C(&v240);
                  v233 = v237;
                  v240 = v219;

                  sub_44BC(&qword_793D0, &qword_5A8D8);
                  sub_489C(&qword_793D8, &qword_793D0, &qword_5A8D8);
                  v146 = sub_545F8();
                  v148 = v147;

                  v149 = HIBYTE(v148) & 0xF;
                  if ((v148 & 0x2000000000000000) == 0)
                  {
                    v149 = v146 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v149)
                  {
                    *&v242 = 1752457584;
                    *(&v242 + 1) = 0xE400000000000000;
                    sub_54A58();
                    *(&v243 + 1) = &type metadata for String;
                    *&v242 = v146;
                    *(&v242 + 1) = v148;
                    sub_CB50(&v242, v236);
                    v150 = v233;
                    v151 = swift_isUniquelyReferenced_nonNull_native();
                    v237 = v150;
                    sub_4DD6C(v236, &v240, v151);
                    sub_1C37C(&v240);
                    v136 = v237;
                  }

                  else
                  {

                    v136 = v233;
                  }

                  v132 = v221;
                }

                sub_D4BC(v112, v133);
                if (swift_getEnumCaseMultiPayload())
                {

                  v153 = sub_53C18();
                  v154 = sub_54828();
                  if (os_log_type_enabled(v153, v154))
                  {
                    v155 = swift_slowAlloc();
                    v156 = swift_slowAlloc();
                    v240 = v156;
                    *v155 = 136446210;
                    v157 = sub_6E88(v112);
                    v159 = sub_18710(v157, v158, &v240);
                    v133 = v234;

                    *(v155 + 4) = v159;
                    _os_log_impl(&dword_0, v153, v154, "Attempting to deep link into %{public}s which is not supported.", v155, 0xCu);
                    sub_777C(v156);
                  }

                  v160 = v218;
                  if (v218)
                  {
                    v218();
                  }

                  sub_5181C(v133);
                  goto LABEL_119;
                }

                (*(v84 + 32))(v232, v133, v132);

                v161 = sub_53C18();
                v162 = sub_54828();

                v163 = os_log_type_enabled(v161, v162);
                v215 = a1;
                if (v163)
                {
                  v164 = swift_slowAlloc();
                  v240 = swift_slowAlloc();
                  *v164 = 136315394;
                  v165 = *v4;
                  v166 = sub_54D48();
                  v168 = sub_18710(v166, v167, &v240);
                  v132 = v221;

                  *(v164 + 4) = v168;
                  v84 = v222;
                  *(v164 + 12) = 2080;
                  *(v164 + 14) = sub_18710(0xD00000000000001CLL, 0x800000000005EBA0, &v240);
                  _os_log_impl(&dword_0, v161, v162, "%s.%s: found recipe", v164, 0x16u);
                  swift_arrayDestroy();
                }

                v169 = v232;
                if (v136)
                {

                  v170 = sub_53C18();
                  v171 = sub_54828();

                  if (os_log_type_enabled(v170, v171))
                  {
                    v172 = swift_slowAlloc();
                    v234 = swift_slowAlloc();
                    v240 = v234;
                    *v172 = 136315907;
                    v173 = *v4;
                    v174 = sub_54D48();
                    v176 = sub_18710(v174, v175, &v240);

                    *(v172 + 4) = v176;
                    *(v172 + 12) = 2080;
                    *(v172 + 14) = sub_18710(0xD00000000000001CLL, 0x800000000005EBA0, &v240);
                    *(v172 + 22) = 2081;
                    v233 = v136;
                    v177 = sub_545D8();
                    v179 = sub_18710(v177, v178, &v240);

                    *(v172 + 24) = v179;
                    *(v172 + 32) = 2081;
                    v84 = v222;
                    swift_beginAccess();
                    sub_4B704(&qword_793C8, &type metadata accessor for PreferencesControllerRecipe);
                    v180 = sub_54BB8();
                    v182 = sub_18710(v180, v181, &v240);

                    *(v172 + 34) = v182;
                    v132 = v221;
                    _os_log_impl(&dword_0, v170, v171, "%s.%s: calling pending url dict: %{private}s, on recipe: %{private}s", v172, 0x2Au);
                    swift_arrayDestroy();

                    v169 = v232;
                  }

                  swift_beginAccess();
                  v183 = v224;
                  sub_53B18();

                  swift_beginAccess();
                  (*(v84 + 40))(v169, v183, v132);
                }

                v184 = sub_53C18();
                v185 = sub_54828();

                if (os_log_type_enabled(v184, v185))
                {
                  v186 = swift_slowAlloc();
                  v240 = swift_slowAlloc();
                  *v186 = 136315394;
                  v187 = *v4;
                  v188 = sub_54D48();
                  v190 = sub_18710(v188, v189, &v240);

                  *(v186 + 4) = v190;
                  *(v186 + 12) = 2080;
                  *(v186 + 14) = sub_18710(0xD00000000000001CLL, 0x800000000005EBA0, &v240);
                  _os_log_impl(&dword_0, v184, v185, "%s.%s: appending recipe to path", v186, 0x16u);
                  swift_arrayDestroy();
                }

                a1 = v215;
                v191 = v227;
                v192 = v225;
                sub_4790(v4 + v230, v225, &qword_790E0, &qword_5A4E0);
                v193 = v228(v192, 1, v231);
                sub_47F8(v192, &qword_790E0, &qword_5A4E0);
                v194 = v221;
                if (v193 == 1)
                {

                  v195 = sub_53C18();
                  v196 = sub_54808();

                  if (os_log_type_enabled(v195, v196))
                  {
                    v197 = swift_slowAlloc();
                    v234 = swift_slowAlloc();
                    v240 = v234;
                    *v197 = 136315394;
                    v198 = *v4;
                    v199 = sub_54D48();
                    v201 = a1;
                    v202 = sub_18710(v199, v200, &v240);

                    *(v197 + 4) = v202;
                    a1 = v201;
                    v191 = v227;
                    *(v197 + 12) = 2080;
                    *(v197 + 14) = sub_18710(0xD00000000000001CLL, 0x800000000005EBA0, &v240);
                    _os_log_impl(&dword_0, v195, v196, "%s.%s: appendSettingsNavigationPath function is nil", v197, 0x16u);
                    swift_arrayDestroy();

                    v194 = v221;
                  }
                }

                sub_4790(v4 + v230, v191, &qword_790E0, &qword_5A4E0);
                v203 = v231;
                if (v228(v191, 1, v231) != 1)
                {

                  v204 = v232;
                  swift_beginAccess();
                  sub_4B704(qword_78D28, &type metadata accessor for PreferencesControllerRecipe);
                  sub_53B78();
                  (*(v226 + 8))(v191, v203);
                  (*(v222 + 8))(v204, v194);
                  v160 = v218;
LABEL_119:

                  v205 = sub_53C18();
                  v206 = sub_54828();

                  if (os_log_type_enabled(v205, v206))
                  {
                    v207 = swift_slowAlloc();
                    v234 = swift_slowAlloc();
                    v238 = v234;
                    *v207 = 136315394;
                    v208 = *v4;
                    v209 = sub_54D48();
                    v211 = sub_18710(v209, v210, &v238);

                    *(v207 + 4) = v211;
                    *(v207 + 12) = 2080;
                    *(v207 + 14) = sub_18710(0xD00000000000001CLL, 0x800000000005EBA0, &v238);
                    _os_log_impl(&dword_0, v205, v206, "%s.%s: updating selection", v207, 0x16u);
                    swift_arrayDestroy();
                  }

                  v212 = *(v4 + 16);
                  if (v212 == 45 || v212 != v112)
                  {
                    v213 = swift_getKeyPath();
                    __chkstk_darwin(v213);
                    *(&v214 - 2) = v4;
                    *(&v214 - 8) = v112;
                    v238 = v4;
                    sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
                    sub_53A18();
                  }

                  else
                  {
                    *(v4 + 16) = v112;
                  }

                  if (v160)
                  {
                    v160();
                  }

                  goto LABEL_86;
                }

                goto LABEL_128;
              }
            }

            v137 = sub_53C18();
            v138 = sub_54828();
            if (os_log_type_enabled(v137, v138))
            {
              v139 = swift_slowAlloc();
              v140 = swift_slowAlloc();
              v240 = v140;
              *v139 = 136446210;
              v141 = sub_6E88(v112);
              v143 = sub_18710(v141, v142, &v240);

              *(v139 + 4) = v143;
              _os_log_impl(&dword_0, v137, v138, "Cannot link to '%{public}s' as it is not an item in the list.", v139, 0xCu);
              sub_777C(v140);
            }

            if (v218)
            {
              v218();
            }

            if (*(v4 + 16) == 45)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          }

          ++v111;
          v115 = sub_54BD8();

          if (v115)
          {
            goto LABEL_68;
          }
        }

        v116 = sub_53C18();
        v117 = sub_54828();

        if (os_log_type_enabled(v116, v117))
        {
          v118 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          v240 = v119;
          *v118 = 136446210;
          *(v118 + 4) = sub_18710(v89, v90, &v240);
          _os_log_impl(&dword_0, v116, v117, "Cannot find enum for identifier %{public}s", v118, 0xCu);
          sub_777C(v119);
        }

        v120 = v218;
        v244._countAndFlagsBits = 35;
        v244._object = 0xE100000000000000;
        if (sub_54708(v244))
        {
          v240 = v89;
          v241 = v90;
          *&v242 = 35;
          *(&v242 + 1) = 0xE100000000000000;
          v121 = sub_549A8();

          v122 = *(v121 + 16);
          if (v122)
          {
            v123 = (v121 + 16 + 16 * v122);
            v124 = *v123;
            v125 = v123[1];

            sub_4844C(v124, v125);
          }
        }

        if (v120)
        {
          (v120)(v152);
        }

        if (*(v4 + 16) == 45)
        {
          goto LABEL_86;
        }
      }

      else
      {

        v108 = sub_53C18();
        v109 = sub_54828();
        if (os_log_type_enabled(v108, v109))
        {
          v110 = swift_slowAlloc();
          *v110 = 0;
          _os_log_impl(&dword_0, v108, v109, "No first path component (likely linking to root of pane).", v110, 2u);
        }

        if (a2)
        {
          a2();
        }

        if (*(v4 + 16) == 45)
        {
          goto LABEL_86;
        }
      }

LABEL_85:
      v144 = swift_getKeyPath();
      __chkstk_darwin(v144);
      *(&v214 - 2) = v4;
      *(&v214 - 8) = 45;
      v240 = v4;
      sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
      sub_53A18();

LABEL_86:
      sub_48620(v4, a1);
      return;
    }
  }

  else
  {
    sub_47F8(&v242, &qword_793C0, &qword_5A8A8);
  }

  v92 = sub_53C18();
  v93 = sub_54828();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    *v94 = 0;
    _os_log_impl(&dword_0, v92, v93, "No path component.", v94, 2u);
  }

  *&v236[0] = 1953460082;
  *(&v236[0] + 1) = 0xE400000000000000;
  sub_54A58();
  if (*(a1 + 16) && (v95 = sub_1BE7C(&v240), (v96 & 1) != 0))
  {
    sub_CAF4(*(a1 + 56) + 32 * v95, &v242);
  }

  else
  {
    v242 = 0u;
    v243 = 0u;
  }

  sub_1C37C(&v240);
  if (!*(&v243 + 1))
  {
    v97 = sub_47F8(&v242, &qword_793C0, &qword_5A8A8);
    goto LABEL_82;
  }

  v97 = swift_dynamicCast();
  if ((v97 & 1) == 0)
  {
    goto LABEL_82;
  }

  *&v242 = 35;
  *(&v242 + 1) = 0xE100000000000000;
  sub_A700();
  v98 = sub_549A8();

  if (v98[2] != 2)
  {
    goto LABEL_81;
  }

  v100 = v98[6];
  v99 = v98[7];
  swift_bridgeObjectRetain_n();

  v101 = sub_53C18();
  v102 = sub_54828();
  if (!os_log_type_enabled(v101, v102))
  {

    if (!v99)
    {
      goto LABEL_82;
    }

    goto LABEL_80;
  }

  v215 = a1;
  v103 = a2;
  v104 = swift_slowAlloc();
  v105 = swift_slowAlloc();
  v240 = v105;
  *v104 = 136446210;
  if (v99)
  {
    v106 = v105;
    v107 = sub_18710(v100, v99, &v240);

    *(v104 + 4) = v107;
    _os_log_impl(&dword_0, v101, v102, "Found scroll offset string %{public}s", v104, 0xCu);
    sub_777C(v106);

    a2 = v103;
    a1 = v215;
LABEL_80:
    sub_4844C(v100, v99);
LABEL_81:

LABEL_82:
    if (a2)
    {
      (a2)(v97);
    }

    if (*(v4 + 16) == 45)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t sub_4844C(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v5 = result;
  v6 = 0;
  while (v6 != 45)
  {
    v7 = *(&off_6E0F0 + v6 + 32);
    if (sub_6104(v7) == v5 && v8 == a2)
    {

LABEL_10:
      if (qword_76FE8 != -1)
      {
        swift_once();
      }

      v11 = sub_53C38();
      sub_7700(v11, qword_7BC18);
      v12 = sub_53C18();
      v13 = sub_54828();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v20 = v15;
        *v14 = 136446210;
        v16 = sub_6104(v7);
        v18 = sub_18710(v16, v17, &v20);

        *(v14 + 4) = v18;
        _os_log_impl(&dword_0, v12, v13, "Scrolling to offset %{public}s", v14, 0xCu);
        sub_777C(v15);
      }

      v19 = *(v3 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel_scrollToItemSubject);
      v21 = v7;
      return sub_53CF8();
    }

    ++v6;
    v10 = sub_54BD8();

    if (v10)
    {
      goto LABEL_10;
    }
  }

  return result;
}

void sub_48620(uint64_t *a1, uint64_t a2)
{
  if (qword_76FE8 != -1)
  {
    swift_once();
  }

  v4 = sub_53C38();
  sub_7700(v4, qword_7BC18);

  oslog = sub_53C18();
  v5 = sub_54828();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v6 = 136315907;
    v7 = *a1;
    v8 = sub_54D48();
    v10 = sub_18710(v8, v9, &v15);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_18710(0xD00000000000001CLL, 0x800000000005EBA0, &v15);
    *(v6 + 22) = 2160;
    *(v6 + 24) = 1752392040;
    *(v6 + 32) = 2081;
    if (!a2)
    {
      __break(1u);
      return;
    }

    v11 = sub_545D8();
    v13 = sub_18710(v11, v12, &v15);

    *(v6 + 34) = v13;
    _os_log_impl(&dword_0, oslog, v5, "…Complete (%s.%s) url: '%{private,mask.hash}s'", v6, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_48864(uint64_t a1, uint64_t a2)
{
  v2[58] = a1;
  v2[59] = a2;
  v3 = sub_54508();
  v2[60] = v3;
  v4 = *(v3 - 8);
  v2[61] = v4;
  v5 = *(v4 + 64) + 15;
  v2[62] = swift_task_alloc();
  v6 = *(*(sub_44BC(&qword_79398, &qword_5A830) - 8) + 64) + 15;
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v7 = sub_53B58();
  v2[65] = v7;
  v8 = *(v7 - 8);
  v2[66] = v8;
  v9 = *(v8 + 64) + 15;
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v10 = type metadata accessor for PrivacyAndSecuritySettingsDestinationOption();
  v2[70] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v2[71] = swift_task_alloc();
  v12 = sub_53EA8();
  v2[72] = v12;
  v13 = *(v12 - 8);
  v2[73] = v13;
  v14 = *(v13 + 64) + 15;
  v2[74] = swift_task_alloc();
  v2[75] = swift_task_alloc();

  return _swift_task_switch(sub_48A74, 0, 0);
}

uint64_t sub_48A74()
{
  v1 = *(v0 + 472);
  v2 = sub_53868();
  *(v0 + 608) = v2;
  v3 = *(v2 - 8);
  v4 = v3;
  *(v0 + 616) = v3;
  v5 = *(v3 + 64) + 15;
  v6 = swift_task_alloc();
  *(v0 + 624) = v6;
  v7 = *(*(sub_44BC(&qword_793A0, &qword_5A838) - 8) + 64) + 15;
  v8 = swift_task_alloc();
  v9 = sub_539A8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  sub_54578();
  sub_53838();
  (*(v10 + 8))(v12, v9);

  if ((*(v4 + 48))(v8, 1, v2) == 1)
  {
    v13 = *(v0 + 592);
    v14 = *(v0 + 584);
    v15 = *(v0 + 576);
    v17 = *(v0 + 464);
    v16 = *(v0 + 472);
    sub_47F8(v8, &qword_793A0, &qword_5A838);

    sub_54568();
    sub_54598();
    (*(v14 + 8))(v13, v15);
LABEL_22:
    v47 = *(v0 + 600);
    v48 = *(v0 + 592);
    v49 = *(v0 + 568);
    v50 = *(v0 + 552);
    v51 = *(v0 + 544);
    v52 = *(v0 + 536);
    v54 = *(v0 + 504);
    v53 = *(v0 + 512);
    v55 = *(v0 + 496);

    v56 = *(v0 + 8);

    return v56();
  }

  v18 = *(v0 + 600);
  v19 = *(v0 + 472);
  (*(v4 + 32))(v6, v8, v2);

  sub_54568();
  *(v0 + 384) = sub_53848();
  *(v0 + 392) = v20;
  *(v0 + 400) = 47;
  *(v0 + 408) = 0xE100000000000000;
  *(v0 + 632) = sub_A700();
  v21 = sub_549A8();

  v25 = 0;
  v26 = *(v21 + 16);
LABEL_4:
  *(v0 + 640) = _swiftEmptyArrayStorage;
  v27 = (v21 + 40 + 16 * v25);
  while (1)
  {
    if (v26 == v25)
    {

      v34 = _swiftEmptyArrayStorage[2];
      *(v0 + 648) = v34;
      if (!v34)
      {
        v39 = *(v0 + 640);
        goto LABEL_20;
      }

      *(v0 + 656) = 0;
      v35 = *(v0 + 640);
      if (!v35[2])
      {
        goto LABEL_38;
      }

      *(v0 + 664) = v35[5];
      v36 = v35[4];
      swift_bridgeObjectRetain_n();
      v37 = sub_D0C4();
      if (v37 == 41)
      {
        v38 = *(v0 + 640);

LABEL_20:

        v40 = *(v0 + 624);
        v41 = *(v0 + 616);
        v42 = *(v0 + 608);
        v43 = *(v0 + 600);
        v44 = *(v0 + 584);
        v45 = *(v0 + 576);
        v46 = *(v0 + 464);
        sub_54598();
        (*(v44 + 8))(v43, v45);
        (*(v41 + 8))(v40, v42);
LABEL_21:

        goto LABEL_22;
      }

      v58 = v37;
      if (sub_CB74(v37) == 0xD000000000000010 && 0x800000000005AE30 == v59)
      {
      }

      else
      {
        v61 = sub_54BD8();

        if ((v61 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      if (![objc_opt_self() nudityDetectionRowEnabled])
      {
        v65 = *(v0 + 640);
        v66 = *(v0 + 624);
        v67 = *(v0 + 616);
        v68 = *(v0 + 608);
        v69 = *(v0 + 600);
        v70 = *(v0 + 584);
        v71 = *(v0 + 576);
        v72 = *(v0 + 464);

        sub_54598();
        (*(v70 + 8))(v69, v71);
        (*(v67 + 8))(v66, v68);
        goto LABEL_21;
      }

LABEL_33:
      *(v0 + 756) = sub_CB60(v58);
      *(v0 + 672) = sub_547A8();
      *(v0 + 680) = sub_54798();
      v62 = sub_54788();
      v64 = v63;
      isUniquelyReferenced_nonNull_native = sub_490B8;
      v23 = v62;
      v24 = v64;

      return _swift_task_switch(isUniquelyReferenced_nonNull_native, v23, v24);
    }

    if (v25 >= *(v21 + 16))
    {
      break;
    }

    v29 = *(v27 - 1);
    v28 = *v27;
    v27 += 2;
    ++v25;
    v30 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v30 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (v30)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_4DD4C(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v32 = _swiftEmptyArrayStorage[2];
      v31 = _swiftEmptyArrayStorage[3];
      if (v32 >= v31 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_4DD4C((v31 > 1), v32 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v32 + 1;
      v33 = &_swiftEmptyArrayStorage[2 * v32];
      *(v33 + 4) = v29;
      *(v33 + 5) = v28;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return _swift_task_switch(isUniquelyReferenced_nonNull_native, v23, v24);
}

uint64_t sub_490B8()
{
  v1 = *(v0 + 680);
  v2 = *(v0 + 756);

  if (v2 > 7)
  {
    if (v2 != 8)
    {
      if (v2 == 37)
      {
        v3 = sub_51B1C;
        goto LABEL_13;
      }

      if (v2 == 38)
      {
        v3 = sub_49208;
        goto LABEL_13;
      }

      goto LABEL_12;
    }

LABEL_11:
    v4 = objc_opt_self();
    v5 = sub_54638();
    *(v0 + 688) = [v4 applicationWithBundleIdentifier:v5];

    v3 = sub_495DC;
    goto LABEL_13;
  }

  if (v2 == 2 || v2 == 5)
  {
    goto LABEL_11;
  }

LABEL_12:
  v3 = sub_49428;
LABEL_13:

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_49208()
{
  v1 = [objc_allocWithZone(LAContext) init];
  v0[90] = v1;
  sub_E444(0, &qword_78DB0, NSBundle_ptr);
  v2 = sub_548D8();
  if (!v2)
  {
    v2 = [objc_opt_self() mainBundle];
  }

  v3 = v2;
  sub_538D8();

  v4 = sub_54638();
  v0[91] = v4;

  v0[2] = v0;
  v0[7] = v0 + 754;
  v0[3] = sub_49A04;
  v5 = swift_continuation_init();
  v0[25] = sub_44BC(&qword_78D08, &unk_597A0);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_367C8;
  v0[21] = &unk_70748;
  v0[22] = v5;
  [v1 evaluatePolicy:2 localizedReason:v4 reply:{v0 + 18, 0x800000000005E740}];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_49428()
{
  v15 = v0;
  if (qword_76FE8 != -1)
  {
    swift_once();
  }

  v1 = sub_53C38();
  sub_7700(v1, qword_7BC18);
  v2 = sub_53C18();
  v3 = sub_54828();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 756);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = sub_6E88(v4);
    v9 = sub_18710(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v2, v3, "No authorization needed for %s.", v5, 0xCu);
    sub_777C(v6);
  }

  v10 = *(v0 + 672);
  *(v0 + 744) = sub_54798();
  v12 = sub_54788();

  return _swift_task_switch(sub_49BC4, v12, v11);
}

uint64_t sub_495DC()
{
  v15 = v0;
  if (qword_76FE8 != -1)
  {
    swift_once();
  }

  v1 = sub_53C38();
  *(v0 + 696) = sub_7700(v1, qword_7BC18);
  v2 = sub_53C18();
  v3 = sub_54828();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 756);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = sub_6E88(v4);
    v9 = sub_18710(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v2, v3, "App Protection Authorization needed for %s.", v5, 0xCu);
    sub_777C(v6);
  }

  v10 = *(v0 + 688);
  v11 = [objc_opt_self() sharedGuard];
  *(v0 + 704) = v11;
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 755;
  *(v0 + 88) = sub_49844;
  v12 = swift_continuation_init();
  *(v0 + 264) = sub_44BC(&qword_78D08, &unk_597A0);
  *(v0 + 208) = _NSConcreteStackBlock;
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_367C8;
  *(v0 + 232) = &unk_70770;
  *(v0 + 240) = v12;
  [v11 authenticateForSubject:v10 completion:v0 + 208];

  return _swift_continuation_await(v0 + 80);
}

uint64_t sub_49844()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 712) = v3;
  if (v3)
  {
    v4 = *(v1 + 664);
    v5 = *(v1 + 640);

    v6 = sub_4A9C4;
  }

  else
  {
    v6 = sub_49968;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_49968()
{
  v1 = *(v0 + 704);
  sub_3ACCC(*(v0 + 688));

  v2 = *(v0 + 672);
  *(v0 + 744) = sub_54798();
  v4 = sub_54788();

  return _swift_task_switch(sub_49BC4, v4, v3);
}

uint64_t sub_49A04()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 736) = v3;
  if (v3)
  {
    v4 = *(v1 + 664);
    v5 = *(v1 + 640);

    v6 = sub_4AC60;
  }

  else
  {
    v6 = sub_49B28;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_49B28()
{
  v1 = *(v0 + 728);

  v2 = *(v0 + 672);
  *(v0 + 744) = sub_54798();
  v4 = sub_54788();

  return _swift_task_switch(sub_49BC4, v4, v3);
}

uint64_t sub_49BC4()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 568);
  v3 = *(v0 + 756);

  sub_D4BC(v3, v2);

  return _swift_task_switch(sub_49C40, 0, 0);
}

uint64_t sub_49C40()
{
  v168 = v0;
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v4 = *(v0 + 664);
      v5 = *(v0 + 640);
      v6 = *(v0 + 616);
      v159 = *(v0 + 608);
      v162 = *(v0 + 624);
      v7 = *(v0 + 600);
      v8 = *(v0 + 584);
      v157 = *(v0 + 576);
      v9 = *(v0 + 488);
      v10 = *(v0 + 496);
      v11 = *(v0 + 480);
      v12 = *(v0 + 464);

      (*(v9 + 32))(v10, v1, v11);
      sub_54588();
      (*(v9 + 8))(v10, v11);
      (*(v8 + 8))(v7, v157);
      (*(v6 + 8))(v162, v159);
LABEL_45:

      v104 = *(v0 + 600);
      v105 = *(v0 + 592);
      v106 = *(v0 + 568);
      v107 = *(v0 + 552);
      v108 = *(v0 + 544);
      v109 = *(v0 + 536);
      v111 = *(v0 + 504);
      v110 = *(v0 + 512);
      v112 = *(v0 + 496);

      v113 = *(v0 + 8);

      return v113();
    }

    v40 = *(v0 + 664);
    v41 = *(v0 + 600);

    *(v0 + 752) = *v1;
    sub_36574();
    v34 = sub_53E98();
    goto LABEL_38;
  }

  v13 = *(v0 + 512);
  v14 = *(v0 + 480);
  v15 = *(v0 + 488);
  (*(*(v0 + 528) + 16))(*(v0 + 552), v1, *(v0 + 520));
  sub_53B28();
  v16 = *(v15 + 48);
  if (v16(v13, 1, v14) != 1)
  {
    v73 = *(v0 + 552);
    v74 = *(v0 + 504);
    v75 = *(v0 + 480);
    sub_47F8(*(v0 + 512), &qword_79398, &qword_5A830);
    sub_53B28();
    v34 = v16(v74, 1, v75);
    if (v34 != 1)
    {
      v76 = *(v0 + 664);
      v77 = *(v0 + 640);
      v78 = *(v0 + 616);
      v79 = *(v0 + 600);
      v80 = *(v0 + 584);
      v161 = *(v0 + 568);
      v164 = *(v0 + 624);
      v152 = *(v0 + 552);
      v154 = *(v0 + 576);
      v81 = *(v0 + 528);
      v82 = *(v0 + 520);
      v83 = *(v0 + 504);
      v84 = *(v0 + 488);
      v156 = *(v0 + 480);
      v158 = *(v0 + 608);
      v85 = *(v0 + 464);

      sub_54588();
      v86 = *(v81 + 8);
      v86(v152, v82);
      (*(v80 + 8))(v79, v154);
      (*(v78 + 8))(v164, v158);
      (*(v84 + 8))(v83, v156);
      v86(v161, v82);
      goto LABEL_45;
    }

    goto LABEL_78;
  }

  v17 = *(v0 + 664);
  v18 = *(v0 + 640);
  v19 = *(v0 + 568);
  v20 = *(v0 + 544);
  v21 = *(v0 + 528);
  v22 = *(v0 + 520);
  v23 = *(v0 + 512);
  v24 = *(v0 + 656) + 1;
  v149 = *(v21 + 8);
  v149(*(v0 + 552), v22);

  sub_47F8(v23, &qword_79398, &qword_5A830);
  (*(v21 + 32))(v20, v19, v22);
  if (v24 >= *(v18 + 16) || (v25 = *(v0 + 640) + 16 * *(v0 + 656), v27 = *(v25 + 48), v26 = *(v25 + 56), , sub_D0C4() != 41))
  {
    v87 = *(v0 + 600);
    v88 = *(v0 + 544);
    v89 = *(v0 + 520);
    sub_4B704(qword_78D28, &type metadata accessor for PreferencesControllerRecipe);
    sub_53E98();
    v34 = v149(v88, v89);
LABEL_38:
    v90 = *(v0 + 656) + 1;
    if (v90 == *(v0 + 648))
    {
      v91 = *(v0 + 640);
LABEL_43:

LABEL_44:
      v97 = *(v0 + 624);
      v98 = *(v0 + 616);
      v99 = *(v0 + 608);
      v100 = *(v0 + 600);
      v101 = *(v0 + 584);
      v102 = *(v0 + 576);
      v103 = *(v0 + 464);
      sub_54598();
      (*(v101 + 8))(v100, v102);
      (*(v98 + 8))(v97, v99);
      goto LABEL_45;
    }

    *(v0 + 656) = v90;
    v92 = *(v0 + 640);
    if (v90 < *(v92 + 16))
    {
      v93 = v92 + 16 * v90;
      *(v0 + 664) = *(v93 + 40);
      v94 = *(v93 + 32);
      swift_bridgeObjectRetain_n();
      v95 = sub_D0C4();
      if (v95 == 41)
      {
        v96 = *(v0 + 640);

        goto LABEL_43;
      }

      v115 = v95;
      if (sub_CB74(v95) == 0xD000000000000010 && 0x800000000005AE30 == v116)
      {
      }

      else
      {
        v118 = sub_54BD8();

        if ((v118 & 1) == 0)
        {
LABEL_56:
          *(v0 + 756) = sub_CB60(v115);
          *(v0 + 672) = sub_547A8();
          *(v0 + 680) = sub_54798();
          v119 = sub_54788();
          v121 = v120;
          v34 = sub_490B8;
          v35 = v119;
          v36 = v121;

          return _swift_task_switch(v34, v35, v36);
        }
      }

      if (![objc_opt_self() nudityDetectionRowEnabled])
      {
        v122 = *(v0 + 640);
        v123 = *(v0 + 624);
        v124 = *(v0 + 616);
        v125 = *(v0 + 608);
        v126 = *(v0 + 600);
        v127 = *(v0 + 584);
        v128 = *(v0 + 576);
        v129 = *(v0 + 464);

        sub_54598();
        (*(v127 + 8))(v126, v128);
        (*(v124 + 8))(v123, v125);
        goto LABEL_45;
      }

      goto LABEL_56;
    }

LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v28 = *(v0 + 624);
  v29 = sub_53828();
  if (v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = &_swiftEmptyArrayStorage;
  }

  v31 = sub_53818();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64) + 15;
  v34 = swift_task_alloc();
  v37 = v34;
  v163 = v30[2];
  if (!v163)
  {
    countAndFlagsBits = &_swiftEmptyDictionarySingleton;
LABEL_61:
    v130 = *(v0 + 656);
    v131 = *(v0 + 640);

    *(v0 + 753) = 1;
    sub_54A58();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = sub_4DEB8(v165, 0x6574616D696E61, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    v133 = *(v131 + 16);
    if (v133 > v130)
    {
      v134 = countAndFlagsBits;
      v135 = *(v0 + 640);
      v136 = *(v0 + 624);
      v137 = *(v0 + 656) + 1;
      *(v0 + 352) = v135;
      *(v0 + 360) = v135 + 32;
      *(v0 + 368) = v137;
      *(v0 + 376) = (2 * v133) | 1;
      sub_44BC(&qword_793B0, &qword_5A848);
      sub_489C(&qword_793B8, &qword_793B0, &qword_5A848);
      v138 = sub_545F8();
      v140 = v139;

      v141._countAndFlagsBits = sub_53858();
      if (v141._object)
      {
        v165[0]._countAndFlagsBits = 35;
        v165[0]._object = 0xE100000000000000;
        sub_546D8(v141);

        sub_546D8(v165[0]);
      }

      v142 = HIBYTE(v140) & 0xF;
      if ((v140 & 0x2000000000000000) == 0)
      {
        v142 = v138 & 0xFFFFFFFFFFFFLL;
      }

      if (v142)
      {
        *(v0 + 416) = v138;
        *(v0 + 424) = v140;
        sub_54A58();
        v143 = swift_isUniquelyReferenced_nonNull_native();
        v167 = countAndFlagsBits;
        sub_4DEB8(v165, 1752457584, 0xE400000000000000, v143);
        v134 = v167;
      }

      else
      {
      }

      v144 = *(v0 + 600);
      v145 = *(v0 + 544);
      v146 = *(v0 + 536);
      v147 = *(v0 + 520);
      sub_4AF3C(v134);

      sub_53B18();

      sub_4B704(qword_78D28, &type metadata accessor for PreferencesControllerRecipe);
      sub_53E98();
      v149(v146, v147);
      v149(v145, v147);
      goto LABEL_44;
    }

LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    return _swift_task_switch(v34, v35, v36);
  }

  v38 = 0;
  v150 = (v0 + 312);
  v160 = v30 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
  countAndFlagsBits = &_swiftEmptyDictionarySingleton;
  v153 = (v32 + 8);
  v155 = v31;
  v148 = v30;
  v151 = v32;
  while (1)
  {
    if (v38 >= v30[2])
    {
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    (*(v32 + 16))(v37, &v160[*(v32 + 72) * v38], v31);
    v42 = sub_537F8();
    v44 = v43;
    v45 = sub_53808();
    if (!v46 || (v47 = *(v0 + 632), *(v0 + 432) = v45, *(v0 + 440) = v46, v48 = sub_549B8(), v50 = v49, , !v50))
    {
      v59 = sub_1BE04(v42, v44);
      v61 = v60;

      if (v61)
      {
        v165[0]._countAndFlagsBits = countAndFlagsBits;
        v32 = v151;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_C218();
          countAndFlagsBits = v165[0]._countAndFlagsBits;
        }

        v62 = *(countAndFlagsBits[6] + 16 * v59 + 8);

        v63 = countAndFlagsBits[7] + 40 * v59;
        v64 = *v63;
        v65 = *(v63 + 16);
        *(v0 + 304) = *(v63 + 32);
        *(v0 + 272) = v64;
        *(v0 + 288) = v65;
        sub_108C0(v59, countAndFlagsBits);
        v31 = v155;
        (*v153)(v37, v155);
      }

      else
      {
        v31 = v155;
        (*v153)(v37, v155);
        *(v0 + 304) = 0;
        *(v0 + 272) = 0u;
        *(v0 + 288) = 0u;
        v32 = v151;
      }

      v34 = sub_47F8(v0 + 272, &qword_793A8, &qword_5A840);
      goto LABEL_15;
    }

    *(v0 + 448) = v48;
    *(v0 + 456) = v50;
    sub_54A58();
    v51 = v165[1];
    *v150 = v165[0];
    *(v0 + 328) = v51;
    *(v0 + 344) = v166;
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v53 = sub_1BE04(v42, v44);
    v54 = countAndFlagsBits[2];
    v55 = (v35 & 1) == 0;
    v34 = (v54 + v55);
    if (__OFADD__(v54, v55))
    {
      goto LABEL_74;
    }

    v56 = v35;
    if (countAndFlagsBits[3] < v34)
    {
      break;
    }

    if (v52)
    {
      if ((v35 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      sub_C218();
      if ((v56 & 1) == 0)
      {
LABEL_32:
        countAndFlagsBits[(v53 >> 6) + 8] |= 1 << v53;
        v66 = (countAndFlagsBits[6] + 16 * v53);
        *v66 = v42;
        v66[1] = v44;
        v67 = countAndFlagsBits[7] + 40 * v53;
        v68 = *(v0 + 344);
        v69 = *(v0 + 328);
        *v67 = *v150;
        *(v67 + 16) = v69;
        *(v67 + 32) = v68;
        v31 = v155;
        v34 = (*v153)(v37, v155);
        v70 = countAndFlagsBits[2];
        v71 = __OFADD__(v70, 1);
        v72 = v70 + 1;
        if (v71)
        {
          goto LABEL_76;
        }

        countAndFlagsBits[2] = v72;
        goto LABEL_34;
      }
    }

LABEL_30:

    sub_5153C(v150, countAndFlagsBits[7] + 40 * v53);
    v31 = v155;
    v34 = (*v153)(v37, v155);
LABEL_34:
    v30 = v148;
    v32 = v151;
LABEL_15:
    if (v163 == ++v38)
    {
      goto LABEL_61;
    }
  }

  sub_B75C(v34, v52);
  v57 = sub_1BE04(v42, v44);
  if ((v56 & 1) == (v58 & 1))
  {
    v53 = v57;
    if ((v56 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  return sub_54C08();
}

uint64_t sub_4A9C4()
{
  v36 = v0;
  v1 = *(v0 + 712);
  v2 = *(v0 + 704);
  v3 = *(v0 + 696);
  swift_willThrow();

  swift_errorRetain();
  v4 = sub_53C18();
  v5 = sub_54808();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 712);
    v7 = *(v0 + 756);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v35 = v10;
    *v8 = 136315394;
    v11 = sub_6E88(v7);
    v13 = sub_18710(v11, v12, &v35);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&dword_0, v4, v5, "An error occurred while authenticating for item '%s' via AppProtection: %@", v8, 0x16u);
    sub_47F8(v9, &qword_78D10, &qword_59690);

    sub_777C(v10);
  }

  v15 = *(v0 + 712);
  v16 = *(v0 + 688);
  v17 = *(v0 + 624);
  v18 = *(v0 + 616);
  v19 = *(v0 + 608);
  v20 = *(v0 + 600);
  v21 = *(v0 + 584);
  v22 = *(v0 + 576);
  v23 = *(v0 + 464);
  sub_54598();
  sub_3ACCC(v16);

  (*(v21 + 8))(v20, v22);
  (*(v18 + 8))(v17, v19);

  v24 = *(v0 + 600);
  v25 = *(v0 + 592);
  v26 = *(v0 + 568);
  v27 = *(v0 + 552);
  v28 = *(v0 + 544);
  v29 = *(v0 + 536);
  v31 = *(v0 + 504);
  v30 = *(v0 + 512);
  v32 = *(v0 + 496);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_4AC60()
{
  v37 = v0;
  v1 = *(v0 + 736);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  swift_willThrow();

  if (qword_76FE8 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 736);
  v5 = sub_53C38();
  sub_7700(v5, qword_7BC18);
  swift_errorRetain();
  v6 = sub_53C18();
  v7 = sub_54808();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 736);
    v9 = *(v0 + 756);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v36 = v12;
    *v10 = 136315394;
    v13 = sub_6E88(v9);
    v15 = sub_18710(v13, v14, &v36);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v16;
    *v11 = v16;
    _os_log_impl(&dword_0, v6, v7, "An error occurred while authenticating for item '%s' via LocalAuthentication: %@", v10, 0x16u);
    sub_47F8(v11, &qword_78D10, &qword_59690);

    sub_777C(v12);
  }

  v17 = *(v0 + 736);
  v18 = *(v0 + 624);
  v19 = *(v0 + 616);
  v20 = *(v0 + 608);
  v21 = *(v0 + 600);
  v22 = *(v0 + 584);
  v23 = *(v0 + 576);
  v24 = *(v0 + 464);
  sub_54598();

  (*(v22 + 8))(v21, v23);
  (*(v19 + 8))(v18, v20);

  v25 = *(v0 + 600);
  v26 = *(v0 + 592);
  v27 = *(v0 + 568);
  v28 = *(v0 + 552);
  v29 = *(v0 + 544);
  v30 = *(v0 + 536);
  v32 = *(v0 + 504);
  v31 = *(v0 + 512);
  v33 = *(v0 + 496);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_4AF3C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_44BC(&qword_772F8, &qword_57298);
    v2 = sub_54B88();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_CA98(*(a1 + 56) + 40 * v13, v41);
    v39 = v16;
    v40 = v15;
    v36 = v41[0];
    v37 = v41[1];
    v38 = v42;
    v26 = v16;
    v27 = v15;

    swift_dynamicCast();
    v24[0] = v36;
    v24[1] = v37;
    v25 = v38;
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    sub_CB50(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    sub_CB50(v35, v24);
    result = sub_54A38(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v28;
    *(v11 + 16) = v29;
    *(v11 + 32) = v30;
    result = sub_CB50(v24, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_4B228()
{
  v1 = *(*v0 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel_invalidationSubject);

  sub_53CF8();
}

uint64_t sub_4B27C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_3FE58(v4);
}

uint64_t sub_4B2A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_44BC(&qword_77DF0, &unk_57BD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_4B318()
{
  result = qword_792D8;
  if (!qword_792D8)
  {
    sub_E444(255, &qword_792C8, NSRunLoop_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_792D8);
  }

  return result;
}

uint64_t sub_4B374()
{
  v10 = sub_54868();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_54838();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = sub_54498();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9[1] = sub_E444(0, &qword_775E0, OS_dispatch_queue_ptr);
  sub_54488();
  v11 = &_swiftEmptyArrayStorage;
  sub_4B704(&qword_79378, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_44BC(&qword_79380, &qword_5A810);
  sub_489C(&qword_79388, &qword_79380, &qword_5A810);
  sub_549E8();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  result = sub_54898();
  qword_79130 = result;
  return result;
}

unint64_t sub_4B5E8()
{
  result = qword_792E8;
  if (!qword_792E8)
  {
    sub_E444(255, &qword_775E0, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_792E8);
  }

  return result;
}

uint64_t sub_4B650()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_4B694(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  sub_4B83C(*a1);
  return sub_3FACC(v2, v3, v4);
}

uint64_t sub_4B6EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_4B704(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_4B798()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v2[3] = v1;
  v2[4] = v3;
  v2[5] = v4;
  sub_4B83C(v1);
  return sub_4B7F0(v5);
}

uint64_t sub_4B7F0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_4B83C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_4B8E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = *(a1 + 112);
    v51 = *(a1 + 96);
    v52 = v3;
    v53 = *(a1 + 128);
    v4 = *(a1 + 48);
    v47 = *(a1 + 32);
    v48 = v4;
    v5 = *(a1 + 80);
    v49 = *(a1 + 64);
    v50 = v5;
    v6 = *(a2 + 48);
    v54 = *(a2 + 32);
    v55 = v6;
    v7 = *(a2 + 64);
    v8 = *(a2 + 80);
    v9 = *(a2 + 96);
    v10 = *(a2 + 112);
    v60 = *(a2 + 128);
    v58 = v9;
    v59 = v10;
    v56 = v7;
    v57 = v8;
    if (v47 != v54)
    {
      return 0;
    }

    v11 = (a2 + 136);
    v12 = (a1 + 136);
    while (1)
    {
      v13 = v53;
      v14 = BYTE7(v51) >> 6;
      if (v14 > 1)
      {
        break;
      }

      if (v14)
      {
        if (((BYTE7(v58) << 48) & 0xC0000000000000) != 0x40000000000000 || BYTE8(v54) != BYTE8(v47))
        {
          return 0;
        }

        v42 = *(&v52 + 1);
        v44 = v52;
        v40 = v53;
        v38 = v59;
        v18 = v60;
        sub_A650(&v54, v46);
        sub_A650(&v47, v46);
        if ((sub_541B8() & 1) == 0 || (sub_541B8() & 1) == 0)
        {
          goto LABEL_101;
        }

        if (v13 == 255)
        {
          sub_A6AC(&v54);
          sub_A6AC(&v47);
          if (v18 != 255)
          {
            return 0;
          }

          goto LABEL_88;
        }

        if (v18 == 255)
        {
          goto LABEL_101;
        }

        if (v13 <= 1u)
        {
          v20 = *(&v38 + 1);
          v21 = v38;
          if (v13)
          {
            if (v18 != 1)
            {
              goto LABEL_101;
            }

            goto LABEL_83;
          }

          if (v18)
          {
            goto LABEL_101;
          }

          sub_2D070(v38, *(&v38 + 1), 0);
          v24 = sub_54328();
          sub_7CAC(v38, *(&v38 + 1), 0);
        }

        else
        {
          v20 = *(&v38 + 1);
          v21 = v38;
          if (v13 == 2)
          {
            if (v18 != 2)
            {
              goto LABEL_101;
            }
          }

          else
          {
            if (v13 != 3)
            {
              sub_A6AC(&v54);
              sub_A6AC(&v47);
              if (v18 != 4 || v38 != 0)
              {
                return 0;
              }

              goto LABEL_88;
            }

            if (v18 != 3)
            {
              goto LABEL_101;
            }
          }

LABEL_83:
          if (v44 == v21 && v42 == v20)
          {
            sub_A6AC(&v54);
            sub_A6AC(&v47);
            goto LABEL_88;
          }

          LOBYTE(v24) = sub_54BD8();
        }

        sub_A6AC(&v54);
        sub_A6AC(&v47);
        if ((v24 & 1) == 0)
        {
          return 0;
        }

LABEL_88:
        v25 = v18 >> 8;
        if (v40 >> 8 == 2)
        {
          if (v25 != 2)
          {
            return 0;
          }
        }

        else if (v25 == 2 || ((v25 ^ (v40 >> 8)) & 1) != 0)
        {
          return 0;
        }

        goto LABEL_97;
      }

      *&v43 = *(&v50 + 1);
      v15 = v58;
      if (v58 >> 62 || BYTE8(v54) != BYTE8(v47))
      {
        return 0;
      }

      *(&v43 + 1) = v50;
      v45 = v57;
      v16 = v51;
      sub_A650(&v54, v46);
      sub_A650(&v47, v46);
      if ((sub_541B8() & 1) == 0)
      {
        goto LABEL_101;
      }

      if (v16 == 255)
      {
        sub_A6AC(&v54);
        sub_A6AC(&v47);
        if (v15 != 255)
        {
          return 0;
        }

        goto LABEL_97;
      }

      if (v15 == 255)
      {
        goto LABEL_101;
      }

      if (v16 > 1)
      {
        if (v16 == 2)
        {
          if (v15 != 2)
          {
            goto LABEL_101;
          }
        }

        else
        {
          if (v16 != 3)
          {
            sub_A6AC(&v54);
            sub_A6AC(&v47);
            if (v15 != 4 || v45 != 0)
            {
              return 0;
            }

            goto LABEL_97;
          }

          if (v15 != 3)
          {
            goto LABEL_101;
          }
        }

        goto LABEL_66;
      }

      if (v16)
      {
        if (v15 != 1)
        {
          goto LABEL_101;
        }

LABEL_66:
        if (v43 != __PAIR128__(v45, *(&v45 + 1)))
        {
          goto LABEL_94;
        }

LABEL_81:
        sub_A6AC(&v54);
        sub_A6AC(&v47);
        goto LABEL_97;
      }

      if (v15)
      {
        goto LABEL_101;
      }

      sub_2D070(v45, *(&v45 + 1), 0);
      v22 = sub_54328();
      sub_7CAC(v45, *(&v45 + 1), 0);
      sub_A6AC(&v54);
      sub_A6AC(&v47);
      if ((v22 & 1) == 0)
      {
        return 0;
      }

LABEL_97:
      if (!--v2)
      {
        return 1;
      }

      v26 = v12[5];
      v51 = v12[4];
      v52 = v26;
      v27 = v12[1];
      v47 = *v12;
      v48 = v27;
      v28 = v12[3];
      v49 = v12[2];
      v50 = v28;
      v29 = v11[1];
      v54 = *v11;
      v55 = v29;
      v30 = v11[2];
      v31 = v11[3];
      v32 = v11[4];
      v33 = v11[5];
      v34 = *(v11 + 48);
      v11 = (v11 + 104);
      v35 = *(v12 + 48);
      v12 = (v12 + 104);
      v53 = v35;
      v60 = v34;
      v58 = v32;
      v59 = v33;
      v56 = v30;
      v57 = v31;
      if (v47 != v54)
      {
        return 0;
      }
    }

    if (v14 != 2)
    {
      if (v58 >> 62 != 3 || BYTE8(v54) != BYTE8(v47))
      {
        return 0;
      }

      sub_A650(&v54, v46);
      sub_A650(&v47, v46);
      v19 = sub_541B8();
LABEL_95:
      v23 = v19;
LABEL_96:
      sub_A6AC(&v54);
      sub_A6AC(&v47);
      if ((v23 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_97;
    }

    if (((BYTE7(v58) << 48) & 0xC0000000000000) != 0x80000000000000 || BYTE8(v54) != BYTE8(v47))
    {
      return 0;
    }

    *&v41 = *(&v52 + 1);
    *(&v41 + 1) = v52;
    v17 = v53;
    v39 = v60;
    v37 = v59;
    sub_A650(&v54, v46);
    sub_A650(&v47, v46);
    if ((sub_541B8() & 1) == 0 || (sub_541B8() & 1) == 0)
    {
LABEL_101:
      sub_A6AC(&v54);
      sub_A6AC(&v47);
      return 0;
    }

    if (v17 == 255)
    {
      sub_A6AC(&v54);
      sub_A6AC(&v47);
      if (v39 != 255)
      {
        return 0;
      }

      goto LABEL_97;
    }

    if (v39 == 255)
    {
      goto LABEL_101;
    }

    if (v17 <= 1u)
    {
      if (!v17)
      {
        if (v39)
        {
          goto LABEL_101;
        }

        sub_2D070(v37, *(&v37 + 1), 0);
        v23 = sub_54328();
        sub_7CAC(v37, *(&v37 + 1), 0);
        goto LABEL_96;
      }

      if (v39 != 1)
      {
        goto LABEL_101;
      }

      if (v41 != __PAIR128__(v37, *(&v37 + 1)))
      {
        goto LABEL_94;
      }
    }

    else
    {
      if (v17 == 2)
      {
        if (v39 != 2)
        {
          goto LABEL_101;
        }
      }

      else
      {
        if (v17 != 3)
        {
          sub_A6AC(&v54);
          sub_A6AC(&v47);
          if (v39 != 4 || v37 != 0)
          {
            return 0;
          }

          goto LABEL_97;
        }

        if (v39 != 3)
        {
          goto LABEL_101;
        }
      }

      if (v41 != __PAIR128__(v37, *(&v37 + 1)))
      {
LABEL_94:
        v19 = sub_54BD8();
        goto LABEL_95;
      }
    }

    goto LABEL_81;
  }

  return 1;
}

uint64_t sub_4C0FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = *(a1 + 48);
  v82 = *(a1 + 32);
  v83 = v3;
  v4 = *(a1 + 80);
  v84 = *(a1 + 64);
  v85 = v4;
  v64 = a2 + 32;
  v65 = a1 + 32;
  v5 = *(a1 + 96);
  v6 = *(a2 + 80);
  v89 = *(a2 + 64);
  v90 = v6;
  v91 = *(a2 + 96);
  v7 = *(a2 + 32);
  v88 = *(a2 + 48);
  v86 = v5;
  v87 = v7;
  if (v82 != v7)
  {
    return 0;
  }

  v8 = 1;
  v59 = v2;
  while (1)
  {
    v9 = v89;
    v68 = v8;
    if (v84)
    {
      if (!v89)
      {
        return 0;
      }

      v10 = *(&v87 + 1);
      v11 = v88;
      sub_C990(&v82, v77);
      sub_C990(&v87, v77);
      sub_8A1C(v10, v11, SBYTE8(v11), v9);
      LOBYTE(v77[0]) = BYTE8(v11) & 1;
      v12 = sub_541B8();
      sub_84F8(v10, v11, BYTE8(v11) & 1);

      if ((v12 & 1) == 0)
      {
LABEL_122:
        sub_C9EC(&v87);
        sub_C9EC(&v82);
        return 0;
      }
    }

    else
    {
      if (v89)
      {
        return 0;
      }

      sub_C990(&v82, v77);
      result = sub_C990(&v87, v77);
    }

    if (v86)
    {
      if (!v91)
      {
        goto LABEL_122;
      }

      v14 = BYTE8(v85);
      v15 = *(&v89 + 1);
      v16 = v90;
      sub_4088(*(&v89 + 1), v90, BYTE8(v90) & 1);

      LOBYTE(v77[0]) = v14 & 1;
      v17 = sub_541B8();
      sub_84F8(v15, v16, BYTE8(v16) & 1);

      if ((v17 & 1) == 0)
      {
        goto LABEL_122;
      }
    }

    else if (v91)
    {
      goto LABEL_122;
    }

    v18 = *(&v86 + 1);
    v19 = *(&v91 + 1);
    v20 = *(*(&v86 + 1) + 16);
    if (v20 != *(*(&v91 + 1) + 16))
    {
      goto LABEL_122;
    }

    if (v20 && *(&v86 + 1) != *(&v91 + 1))
    {
      break;
    }

LABEL_117:
    sub_C9EC(&v87);
    sub_C9EC(&v82);
    if (v68 == v59)
    {
      return 1;
    }

    v8 = v68 + 1;
    v49 = *(v65 + 80 * v68 + 16);
    v82 = *(v65 + 80 * v68);
    v83 = v49;
    v50 = *(v65 + 80 * v68 + 48);
    v84 = *(v65 + 80 * v68 + 32);
    v85 = v50;
    v51 = *(v65 + 80 * v68 + 64);
    v52 = (v64 + 80 * v68);
    v53 = v52[3];
    v89 = v52[2];
    v90 = v53;
    v91 = v52[4];
    v54 = *v52;
    v88 = v52[1];
    v86 = v51;
    v87 = v54;
    if (v82 != v54)
    {
      return 0;
    }
  }

  if (*(*(&v86 + 1) + 16))
  {
    v21 = 0;
    v22 = *(&v86 + 1) + 32;
    v23 = *(&v91 + 1) + 32;
    v69 = v20 - 1;
    v62 = *(&v91 + 1);
    v63 = *(&v86 + 1);
    while (1)
    {
      v24 = *v22;
      v25 = *(v22 + 32);
      v72[1] = *(v22 + 16);
      v72[2] = v25;
      v26 = *(v22 + 48);
      v27 = *(v22 + 64);
      v28 = *(v22 + 80);
      v76 = *(v22 + 96);
      v74 = v27;
      v75 = v28;
      v73 = v26;
      v72[0] = v24;
      if (v21 >= *(v19 + 16))
      {
        goto LABEL_125;
      }

      v29 = *(v23 + 32);
      v30 = *v23;
      v77[1] = *(v23 + 16);
      v77[2] = v29;
      v77[0] = v30;
      v31 = *(v23 + 48);
      v32 = *(v23 + 64);
      v33 = *(v23 + 80);
      v81 = *(v23 + 96);
      v79 = v32;
      v80 = v33;
      v78 = v31;
      if (LOBYTE(v72[0]) != LOBYTE(v77[0]))
      {
        goto LABEL_122;
      }

      v34 = *(&v73 + 1);
      v35 = v76;
      v36 = BYTE7(v74) >> 6;
      if (v36 > 1)
      {
        break;
      }

      v66 = v74;
      v70 = v21;
      if (v36)
      {
        if (((BYTE7(v79) << 48) & 0xC0000000000000) != 0x40000000000000 || BYTE8(v77[0]) != BYTE8(v72[0]))
        {
          goto LABEL_122;
        }

        *&v58 = *(&v75 + 1);
        *(&v58 + 1) = v75;
        v56 = v80;
        v61 = v81;
        sub_A650(v72, v71);
        sub_A650(v77, v71);
        if ((sub_541B8() & 1) == 0 || (sub_541B8() & 1) == 0)
        {
          goto LABEL_121;
        }

        v41 = v35;
        if (v35 == 255)
        {
          sub_A6AC(v77);
          result = sub_A6AC(v72);
          v19 = v62;
          v18 = v63;
          v42 = v70;
          if (v61 != 255)
          {
            goto LABEL_122;
          }

          goto LABEL_109;
        }

        if (v61 == 255)
        {
          goto LABEL_121;
        }

        if (v35 <= 1u)
        {
          if (v35)
          {
            if (v61 != 1)
            {
              goto LABEL_121;
            }

            goto LABEL_105;
          }

          if (v61)
          {
            goto LABEL_121;
          }

          sub_7C6C(v56, *(&v56 + 1), 0);
          v47 = sub_54328();
          sub_7CAC(v56, *(&v56 + 1), 0);
        }

        else
        {
          if (v35 == 2)
          {
            if (v61 != 2)
            {
              goto LABEL_121;
            }
          }

          else
          {
            if (v35 != 3)
            {
              sub_A6AC(v77);
              result = sub_A6AC(v72);
              v19 = v62;
              v18 = v63;
              v42 = v70;
              v41 = v35;
              if (v61 != 4 || v56 != 0)
              {
                goto LABEL_122;
              }

              goto LABEL_109;
            }

            if (v61 != 3)
            {
              goto LABEL_121;
            }
          }

LABEL_105:
          if (v58 == __PAIR128__(v56, *(&v56 + 1)))
          {
            sub_A6AC(v77);
            result = sub_A6AC(v72);
            v19 = v62;
            v18 = v63;
            v42 = v70;
            v41 = v35;
            goto LABEL_109;
          }

          LOBYTE(v47) = sub_54BD8();
        }

        sub_A6AC(v77);
        result = sub_A6AC(v72);
        v19 = v62;
        v18 = v63;
        v42 = v70;
        v41 = v35;
        if ((v47 & 1) == 0)
        {
          goto LABEL_122;
        }

LABEL_109:
        v48 = v61 >> 8;
        if (v41 >> 8 == 2)
        {
          if (v48 != 2)
          {
            goto LABEL_122;
          }
        }

        else if (v48 == 2 || ((v48 ^ (v41 >> 8)) & 1) != 0)
        {
          goto LABEL_122;
        }

        goto LABEL_114;
      }

      v37 = v79;
      if (v79 >> 62 || BYTE8(v77[0]) != BYTE8(v72[0]))
      {
        goto LABEL_122;
      }

      v38 = v73;
      v60 = *(&v78 + 1);
      v39 = v78;
      sub_A650(v72, v71);
      sub_A650(v77, v71);
      if ((sub_541B8() & 1) == 0)
      {
        goto LABEL_121;
      }

      if (v66 == 255)
      {
        sub_A6AC(v77);
        result = sub_A6AC(v72);
        v40 = v37 == 255;
LABEL_67:
        v19 = v62;
        v18 = v63;
        v42 = v70;
        if (!v40)
        {
          goto LABEL_122;
        }

        goto LABEL_114;
      }

      if (v37 == 255)
      {
        goto LABEL_121;
      }

      if (v66 > 1)
      {
        if (v66 == 2)
        {
          if (v37 != 2)
          {
            goto LABEL_121;
          }
        }

        else
        {
          if (v66 != 3)
          {
            sub_A6AC(v77);
            result = sub_A6AC(v72);
            v19 = v62;
            v18 = v63;
            v42 = v70;
            if (v37 != 4 || __PAIR128__(v60, v39) != 0)
            {
              goto LABEL_122;
            }

            goto LABEL_114;
          }

          if (v37 != 3)
          {
            goto LABEL_121;
          }
        }

        goto LABEL_85;
      }

      if (v66)
      {
        if (v37 != 1)
        {
          goto LABEL_121;
        }

LABEL_85:
        if (v38 != v39 || v34 != v60)
        {
LABEL_101:
          v46 = sub_54BD8();
LABEL_102:
          sub_A6AC(v77);
          result = sub_A6AC(v72);
          v19 = v62;
          v18 = v63;
          v42 = v70;
          if ((v46 & 1) == 0)
          {
            goto LABEL_122;
          }

          goto LABEL_114;
        }

LABEL_100:
        sub_A6AC(v77);
        result = sub_A6AC(v72);
        v19 = v62;
        v18 = v63;
        v42 = v70;
        goto LABEL_114;
      }

      if (v37)
      {
        goto LABEL_121;
      }

      sub_7C6C(v39, v60, 0);
      v45 = sub_54328();
      sub_7CAC(v39, v60, 0);
      sub_A6AC(v77);
      result = sub_A6AC(v72);
      v19 = v62;
      v18 = v63;
      v42 = v70;
      if ((v45 & 1) == 0)
      {
        goto LABEL_122;
      }

LABEL_114:
      if (v69 == v42)
      {
        goto LABEL_117;
      }

      v23 += 104;
      v22 += 104;
      v21 = v42 + 1;
      if (v21 >= *(v18 + 16))
      {
        goto LABEL_124;
      }
    }

    if (v36 != 2)
    {
      if (v79 >> 62 != 3)
      {
        goto LABEL_122;
      }

      if (BYTE8(v77[0]) != BYTE8(v72[0]))
      {
        goto LABEL_122;
      }

      v43 = v21;
      sub_A650(v72, v71);
      sub_A650(v77, v71);
      v44 = sub_541B8();
      sub_A6AC(v77);
      result = sub_A6AC(v72);
      v42 = v43;
      if ((v44 & 1) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_114;
    }

    if (((BYTE7(v79) << 48) & 0xC0000000000000) != 0x80000000000000 || BYTE8(v77[0]) != BYTE8(v72[0]))
    {
      goto LABEL_122;
    }

    *&v57 = *(&v75 + 1);
    *(&v57 + 1) = v75;
    v70 = v21;
    v67 = v81;
    v55 = v80;
    sub_A650(v72, v71);
    sub_A650(v77, v71);
    if ((sub_541B8() & 1) == 0 || (sub_541B8() & 1) == 0)
    {
LABEL_121:
      sub_A6AC(v77);
      sub_A6AC(v72);
      goto LABEL_122;
    }

    if (v35 == 255)
    {
      sub_A6AC(v77);
      result = sub_A6AC(v72);
      v40 = v67 == 255;
      goto LABEL_67;
    }

    if (v67 == 255)
    {
      goto LABEL_121;
    }

    if (v35 <= 1u)
    {
      if (!v35)
      {
        if (v67)
        {
          goto LABEL_121;
        }

        sub_7C6C(v55, *(&v55 + 1), 0);
        v46 = sub_54328();
        sub_7CAC(v55, *(&v55 + 1), 0);
        goto LABEL_102;
      }

      if (v67 != 1)
      {
        goto LABEL_121;
      }
    }

    else if (v35 == 2)
    {
      if (v67 != 2)
      {
        goto LABEL_121;
      }
    }

    else
    {
      if (v35 != 3)
      {
        sub_A6AC(v77);
        result = sub_A6AC(v72);
        v19 = v62;
        v18 = v63;
        v42 = v70;
        if (v67 != 4 || v55 != 0)
        {
          goto LABEL_122;
        }

        goto LABEL_114;
      }

      if (v67 != 3)
      {
        goto LABEL_121;
      }
    }

    if (v57 != __PAIR128__(v55, *(&v55 + 1)))
    {
      goto LABEL_101;
    }

    goto LABEL_100;
  }

LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
  return result;
}

uint64_t sub_4CBA8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v68 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  v69 = v7;
  v71 = result;
  if (v6)
  {
    while (1)
    {
      v8 = __clz(__rbit64(v6));
      v74 = (v6 - 1) & v6;
LABEL_12:
      v11 = v8 | (v3 << 6);
      v12 = *(*(result + 48) + v11);
      v13 = (*(result + 56) + 80 * v11);
      v15 = v13[3];
      v14 = v13[4];
      v16 = v13[2];
      v94 = v13[1];
      v93 = *v13;
      v95 = v16;
      v96 = v15;
      v97 = v14;
      v85 = v15;
      v86 = v94;
      v82 = v16;
      v84 = v93;
      v17 = v14;
      sub_C990(&v93, v88);
      if (!*(&v17 + 1))
      {
        return 1;
      }

      v104 = v84;
      v105 = v86;
      v106 = v82;
      v107 = v85;
      v108 = v17;
      v18 = sub_1C54C(v12);
      if ((v19 & 1) == 0)
      {
        goto LABEL_132;
      }

      v20 = (*(v2 + 56) + 80 * v18);
      v100[0] = *v20;
      v21 = v20[4];
      v23 = v20[1];
      v22 = v20[2];
      v102 = v20[3];
      v103 = v21;
      v100[1] = v23;
      v101 = v22;
      if (LOBYTE(v100[0]) != v104)
      {
        goto LABEL_132;
      }

      v24 = v106;
      if (v101)
      {
        if (!v106)
        {
          goto LABEL_132;
        }

        v25 = *(&v104 + 1);
        v26 = v105;
        sub_C990(v100, &v93);
        sub_8A1C(v25, v26, SBYTE8(v26), v24);
        LOBYTE(v93) = BYTE8(v26) & 1;
        v27 = sub_541B8();
        sub_84F8(v25, v26, BYTE8(v26) & 1);

        if ((v27 & 1) == 0)
        {
          goto LABEL_130;
        }
      }

      else
      {
        if (v106)
        {
          goto LABEL_132;
        }

        result = sub_C990(v100, &v93);
      }

      if (v103)
      {
        if (!v108)
        {
          goto LABEL_131;
        }

        v28 = BYTE8(v102);
        v29 = *(&v106 + 1);
        v30 = v107;
        sub_4088(*(&v106 + 1), v107, BYTE8(v107) & 1);

        LOBYTE(v93) = v28 & 1;
        v31 = sub_541B8();
        sub_84F8(v29, v30, BYTE8(v30) & 1);

        if ((v31 & 1) == 0)
        {
LABEL_130:
          sub_C9EC(&v104);
          v62 = v100;
LABEL_133:
          sub_C9EC(v62);
          return 0;
        }
      }

      else if (v108)
      {
LABEL_131:
        sub_C9EC(v100);
LABEL_132:
        v62 = &v104;
        goto LABEL_133;
      }

      v32 = *(&v103 + 1);
      v33 = *(&v108 + 1);
      v34 = *(*(&v103 + 1) + 16);
      if (v34 != *(*(&v108 + 1) + 16))
      {
        goto LABEL_130;
      }

      if (v34 && *(&v103 + 1) != *(&v108 + 1))
      {
        break;
      }

LABEL_126:
      sub_C9EC(&v104);
      sub_C9EC(v100);
      v2 = a2;
      result = v71;
      v7 = v69;
      v6 = v74;
      if (!v74)
      {
        goto LABEL_7;
      }
    }

    if (*(*(&v103 + 1) + 16))
    {
      v35 = 0;
      v36 = *(&v103 + 1) + 32;
      v37 = *(&v108 + 1) + 32;
      v75 = v34 - 1;
      v76 = *(&v108 + 1);
      v72 = *(&v103 + 1);
      while (1)
      {
        v38 = *v36;
        v39 = *(v36 + 32);
        v88[1] = *(v36 + 16);
        v88[2] = v39;
        v40 = *(v36 + 48);
        v41 = *(v36 + 64);
        v42 = *(v36 + 80);
        v92 = *(v36 + 96);
        v90 = v41;
        v91 = v42;
        v89 = v40;
        v88[0] = v38;
        if (v35 >= *(v33 + 16))
        {
          goto LABEL_137;
        }

        v43 = *(v37 + 32);
        v44 = *v37;
        v94 = *(v37 + 16);
        v95 = v43;
        v93 = v44;
        v45 = *(v37 + 48);
        v46 = *(v37 + 64);
        v47 = *(v37 + 80);
        v99 = *(v37 + 96);
        v97 = v46;
        v98 = v47;
        v96 = v45;
        if (LOBYTE(v88[0]) != v93)
        {
          goto LABEL_130;
        }

        v48 = *(&v89 + 1);
        v49 = BYTE7(v90) >> 6;
        if (v49 > 1)
        {
          break;
        }

        v83 = v90;
        v80 = v89;
        v81 = v35;
        if (v49)
        {
          if (((BYTE7(v97) << 48) & 0xC0000000000000) != 0x40000000000000 || BYTE8(v93) != BYTE8(v88[0]))
          {
            goto LABEL_130;
          }

          *&v67 = *(&v91 + 1);
          *(&v67 + 1) = v91;
          v79 = v92;
          v64 = v98;
          v52 = v99;
          sub_A650(v88, v87);
          sub_A650(&v93, v87);
          if ((sub_541B8() & 1) == 0 || (sub_541B8() & 1) == 0)
          {
            goto LABEL_129;
          }

          if (v79 == 255)
          {
            sub_A6AC(&v93);
            result = sub_A6AC(v88);
            v32 = v72;
            v33 = v76;
            v53 = v81;
            if (v52 != 255)
            {
              goto LABEL_130;
            }

            goto LABEL_118;
          }

          if (v52 == 255)
          {
            goto LABEL_129;
          }

          if (v79 <= 1u)
          {
            if (v79)
            {
              if (v52 != 1)
              {
                goto LABEL_129;
              }

              goto LABEL_114;
            }

            if (v52)
            {
              goto LABEL_129;
            }

            sub_7C6C(v64, *(&v64 + 1), 0);
            v58 = sub_54328();
            sub_7CAC(v64, *(&v64 + 1), 0);
          }

          else
          {
            if (v79 == 2)
            {
              if (v52 != 2)
              {
                goto LABEL_129;
              }
            }

            else
            {
              if (v79 != 3)
              {
                sub_A6AC(&v93);
                result = sub_A6AC(v88);
                v32 = v72;
                v33 = v76;
                v53 = v81;
                if (v52 != 4 || v64 != 0)
                {
                  goto LABEL_130;
                }

                goto LABEL_118;
              }

              if (v52 != 3)
              {
                goto LABEL_129;
              }
            }

LABEL_114:
            if (v67 == __PAIR128__(v64, *(&v64 + 1)))
            {
              sub_A6AC(&v93);
              result = sub_A6AC(v88);
              v32 = v72;
              v33 = v76;
              v53 = v81;
              goto LABEL_118;
            }

            LOBYTE(v58) = sub_54BD8();
          }

          sub_A6AC(&v93);
          result = sub_A6AC(v88);
          v32 = v72;
          v33 = v76;
          v53 = v81;
          if ((v58 & 1) == 0)
          {
            goto LABEL_130;
          }

LABEL_118:
          v61 = v52 >> 8;
          if (v79 >> 8 == 2)
          {
            if (v61 != 2)
            {
              goto LABEL_130;
            }
          }

          else if (v61 == 2 || ((v61 ^ (v79 >> 8)) & 1) != 0)
          {
            goto LABEL_130;
          }

          goto LABEL_123;
        }

        v50 = v97;
        if (v97 >> 62 || BYTE8(v93) != BYTE8(v88[0]))
        {
          goto LABEL_130;
        }

        v77 = *(&v96 + 1);
        v73 = v96;
        sub_A650(v88, v87);
        sub_A650(&v93, v87);
        if ((sub_541B8() & 1) == 0)
        {
          goto LABEL_129;
        }

        if (v83 == 255)
        {
          sub_A6AC(&v93);
          result = sub_A6AC(v88);
          v51 = v50 == 255;
LABEL_76:
          v32 = v72;
          v33 = v76;
          v53 = v81;
          if (!v51)
          {
            goto LABEL_130;
          }

          goto LABEL_123;
        }

        if (v50 == 255)
        {
          goto LABEL_129;
        }

        if (v83 > 1)
        {
          if (v83 == 2)
          {
            if (v50 != 2)
            {
              goto LABEL_129;
            }
          }

          else
          {
            if (v83 != 3)
            {
              sub_A6AC(&v93);
              result = sub_A6AC(v88);
              v32 = v72;
              v33 = v76;
              v53 = v81;
              if (v50 != 4)
              {
                goto LABEL_130;
              }

              v59 = v77;
              v60 = v73;
              goto LABEL_102;
            }

            if (v50 != 3)
            {
              goto LABEL_129;
            }
          }

LABEL_93:
          if (v80 != v73 || v48 != v77)
          {
LABEL_110:
            v57 = sub_54BD8();
LABEL_111:
            sub_A6AC(&v93);
            result = sub_A6AC(v88);
            v32 = v72;
            v33 = v76;
            v53 = v81;
            if ((v57 & 1) == 0)
            {
              goto LABEL_130;
            }

            goto LABEL_123;
          }

LABEL_109:
          sub_A6AC(&v93);
          result = sub_A6AC(v88);
          v32 = v72;
          v33 = v76;
          v53 = v81;
          goto LABEL_123;
        }

        if (v83)
        {
          if (v50 != 1)
          {
            goto LABEL_129;
          }

          goto LABEL_93;
        }

        if (v50)
        {
          goto LABEL_129;
        }

        sub_7C6C(v73, v77, 0);
        v56 = sub_54328();
        sub_7CAC(v73, v77, 0);
        sub_A6AC(&v93);
        result = sub_A6AC(v88);
        v32 = v72;
        v33 = v76;
        v53 = v81;
        if ((v56 & 1) == 0)
        {
          goto LABEL_130;
        }

LABEL_123:
        if (v75 == v53)
        {
          goto LABEL_126;
        }

        v37 += 104;
        v36 += 104;
        v35 = v53 + 1;
        if (v35 >= *(v32 + 16))
        {
          goto LABEL_136;
        }
      }

      if (v49 != 2)
      {
        if (v97 >> 62 != 3)
        {
          goto LABEL_130;
        }

        if (BYTE8(v93) != BYTE8(v88[0]))
        {
          goto LABEL_130;
        }

        v54 = v35;
        sub_A650(v88, v87);
        sub_A650(&v93, v87);
        v55 = sub_541B8();
        sub_A6AC(&v93);
        result = sub_A6AC(v88);
        v53 = v54;
        v33 = v76;
        if ((v55 & 1) == 0)
        {
          goto LABEL_130;
        }

        goto LABEL_123;
      }

      if (((BYTE7(v97) << 48) & 0xC0000000000000) != 0x80000000000000 || BYTE8(v93) != BYTE8(v88[0]))
      {
        goto LABEL_130;
      }

      *&v66 = *(&v91 + 1);
      *(&v66 + 1) = v91;
      v81 = v35;
      v78 = v92;
      v65 = v99;
      v63 = v98;
      sub_A650(v88, v87);
      sub_A650(&v93, v87);
      if ((sub_541B8() & 1) == 0 || (sub_541B8() & 1) == 0)
      {
LABEL_129:
        sub_A6AC(&v93);
        sub_A6AC(v88);
        goto LABEL_130;
      }

      if (v78 == 255)
      {
        sub_A6AC(&v93);
        result = sub_A6AC(v88);
        v51 = v65 == 255;
        goto LABEL_76;
      }

      if (v65 == 255)
      {
        goto LABEL_129;
      }

      if (v78 <= 1u)
      {
        if (!v78)
        {
          if (v65)
          {
            goto LABEL_129;
          }

          sub_7C6C(v63, *(&v63 + 1), 0);
          v57 = sub_54328();
          sub_7CAC(v63, *(&v63 + 1), 0);
          goto LABEL_111;
        }

        if (v65 != 1)
        {
          goto LABEL_129;
        }
      }

      else if (v78 == 2)
      {
        if (v65 != 2)
        {
          goto LABEL_129;
        }
      }

      else
      {
        if (v78 != 3)
        {
          sub_A6AC(&v93);
          result = sub_A6AC(v88);
          v32 = v72;
          v33 = v76;
          v53 = v81;
          if (v65 != 4)
          {
            goto LABEL_130;
          }

          v59 = *(&v63 + 1);
          v60 = v63;
LABEL_102:
          if (v59 | v60)
          {
            goto LABEL_130;
          }

          goto LABEL_123;
        }

        if (v65 != 3)
        {
          goto LABEL_129;
        }
      }

      if (v66 != __PAIR128__(v63, *(&v63 + 1)))
      {
        goto LABEL_110;
      }

      goto LABEL_109;
    }
  }

  else
  {
LABEL_7:
    v9 = v3;
    while (1)
    {
      v3 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v3 >= v7)
      {
        return 1;
      }

      v10 = *(v68 + 8 * v3);
      ++v9;
      if (v10)
      {
        v8 = __clz(__rbit64(v10));
        v74 = (v10 - 1) & v10;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
  return result;
}

uint64_t sub_4D714(uint64_t result, uint64_t a2)
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
  v38 = result;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  for (i = (v5 + 63) >> 6; v7; v3 = v12)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v10 = v9 | (v3 << 6);
LABEL_15:
    v15 = *(*(v38 + 48) + v10);
    v16 = *(v38 + 56) + 104 * v10;
    v18 = *(v16 + 16);
    v17 = *(v16 + 32);
    *v48 = *v16;
    *&v48[16] = v18;
    v19 = *(v16 + 96);
    v21 = *(v16 + 64);
    v20 = *(v16 + 80);
    v22 = *(v16 + 48);
    *&v48[32] = v17;
    *&v48[48] = v22;
    *&v48[64] = v21;
    *&v48[80] = v20;
    *&v48[96] = v19;
    v43 = v22;
    v44 = *&v48[16];
    v40 = v17;
    v41 = *v48;
    v42 = v20;
    v39 = v21;
    sub_A650(v48, v46);
    v24 = v39;
    v23 = v40;
    v25 = v41;
    v12 = v3;
LABEL_16:
    if (*(&v25 + 1) >> 6 == 0xFFFFFFFFLL)
    {
      v26 = vmovn_s64(vcgtq_u64(xmmword_5A590, vzip1q_s64(v24, v23)));
      if (v26.i8[4] & 1) != 0 && (v26.i8[0])
      {
        return 1;
      }
    }

    *v48 = v25;
    *&v48[16] = v44;
    *&v48[32] = v23;
    *&v48[48] = v43;
    *&v48[64] = v24;
    *&v48[80] = v42;
    *&v48[96] = v19;
    v27 = sub_1C54C(v15);
    if ((v28 & 1) == 0)
    {
      goto LABEL_26;
    }

    v29 = *(a2 + 56) + 104 * v27;
    v31 = *(v29 + 16);
    v30 = *(v29 + 32);
    v46[0] = *v29;
    v46[1] = v31;
    v46[2] = v30;
    v33 = *(v29 + 64);
    v32 = *(v29 + 80);
    v34 = *(v29 + 48);
    v47 = *(v29 + 96);
    v46[4] = v33;
    v46[5] = v32;
    v46[3] = v34;
    if (LOBYTE(v46[0]) != v48[0])
    {
LABEL_26:
      sub_A6AC(v48);
      return 0;
    }

    v35 = *(v29 + 56);
    v49[2] = *(v29 + 40);
    v49[3] = v35;
    v50[0] = *(v29 + 72);
    *(v50 + 10) = *(v29 + 82);
    v36 = *(v29 + 24);
    v49[0] = *(v29 + 8);
    v49[1] = v36;
    v51[2] = *&v48[40];
    v51[3] = *&v48[56];
    v52[0] = *&v48[72];
    *(v52 + 10) = *&v48[82];
    v51[0] = *&v48[8];
    v51[1] = *&v48[24];
    sub_A650(v46, v45);
    v37 = sub_78C8(v49, v51);
    sub_A6AC(v48);
    result = sub_A6AC(v46);
    if ((v37 & 1) == 0)
    {
      return 0;
    }
  }

  if (i <= v3 + 1)
  {
    v11 = v3 + 1;
  }

  else
  {
    v11 = i;
  }

  v12 = v11 - 1;
  while (1)
  {
    v13 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v13 >= i)
    {
      v19 = 0;
      v15 = 0;
      v7 = 0;
      v43 = 0u;
      v44 = 0u;
      v25 = xmmword_5A580;
      v23 = 0uLL;
      v24 = 0uLL;
      v42 = 0u;
      goto LABEL_16;
    }

    v14 = *(v4 + 8 * v13);
    ++v3;
    if (v14)
    {
      v7 = (v14 - 1) & v14;
      v10 = __clz(__rbit64(v14)) | (v13 << 6);
      v3 = v13;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_4DA00(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v43 = result + 64;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  v44 = v7;
  v45 = result;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v52 = (v6 - 1) & v6;
LABEL_16:
    v51 = v3;
    v11 = v8 | (v3 << 6);
    v12 = *(*(result + 56) + 8 * v11);
    v13 = *(*(result + 48) + 8 * v11);

    v14 = sub_1BEC0(v13);
    v16 = v15;

    if ((v16 & 1) == 0 || (v17 = *(*(v2 + 56) + 8 * v14), v18 = *(v17 + 16), v18 != *(v12 + 16)))
    {
LABEL_44:

      return 0;
    }

    if (v18 && v17 != v12)
    {
      v19 = v17 + 32;
      v54 = v12 + 32;

      v20 = 0;
      v48 = v2;
      v49 = result;
      v50 = v12;
      v46 = v19;
      v47 = v18;
      while (v20 < *(result + 16))
      {
        if (v20 >= *(v12 + 16))
        {
          goto LABEL_49;
        }

        v21 = *(v19 + 8 * v20);
        v22 = *(v54 + 8 * v20);
        if (v21 != v22)
        {
          if (*(v21 + 16) != *(v22 + 16))
          {

            goto LABEL_44;
          }

          v53 = v20;
          v23 = v21 + 64;
          v24 = 1 << *(v21 + 32);
          if (v24 < 64)
          {
            v25 = ~(-1 << v24);
          }

          else
          {
            v25 = -1;
          }

          v26 = v25 & *(v21 + 64);
          v27 = (v24 + 63) >> 6;

          v28 = 0;
          while (v26)
          {
            v29 = __clz(__rbit64(v26));
            v26 &= v26 - 1;
LABEL_38:
            v32 = v29 | (v28 << 6);
            v33 = *(v21 + 56);
            v34 = v21;
            v35 = (*(v21 + 48) + 16 * v32);
            v36 = *v35;
            v37 = v35[1];
            v38 = *(v33 + 8 * v32);

            v39 = sub_1BE04(v36, v37);
            v41 = v40;

            if (v41)
            {
              v42 = *(*(v22 + 56) + 8 * v39);
              v21 = v34;
              if (v42 == v38)
              {
                continue;
              }
            }

            goto LABEL_44;
          }

          v30 = v28;
          while (1)
          {
            v28 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              break;
            }

            if (v28 >= v27)
            {

              v2 = v48;
              result = v49;
              v12 = v50;
              v19 = v46;
              v18 = v47;
              v20 = v53;
              goto LABEL_22;
            }

            v31 = *(v23 + 8 * v28);
            ++v30;
            if (v31)
            {
              v29 = __clz(__rbit64(v31));
              v26 = (v31 - 1) & v31;
              goto LABEL_38;
            }
          }

          __break(1u);
          goto LABEL_47;
        }

LABEL_22:
        if (++v20 == v18)
        {

          goto LABEL_8;
        }
      }

      goto LABEL_48;
    }

LABEL_8:

    v7 = v44;
    result = v45;
    v3 = v51;
    v6 = v52;
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v43 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
      goto LABEL_16;
    }
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

char *sub_4DD2C(char *a1, int64_t a2, char a3)
{
  result = sub_FAA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_4DD4C(char *a1, int64_t a2, char a3)
{
  result = sub_F994(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_OWORD *sub_4DD6C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1BE7C(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_C074();
      goto LABEL_7;
    }

    sub_B4A4(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_1BE7C(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_CA98(a2, v22);
      return sub_10AC0(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_54C08();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_777C(v17);

  return sub_CB50(a1, v17);
}

uint64_t sub_4DEB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1BE04(a2, a3);
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
      sub_C218();
      v11 = v19;
      goto LABEL_8;
    }

    sub_B75C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1BE04(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_54C08();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 40 * v11;

    return sub_5153C(a1, v23);
  }

  else
  {
    sub_10B3C(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_4E000(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = *v5;
  v9 = v8 + 32 + 16 * result;
  if (v7)
  {
    v10 = *(v8 + 16);
    v11 = __OFSUB__(v10, a2);
    v12 = v10 - a2;
    if (!v11)
    {
      result = v9 + 16 * a3;
      v13 = (v8 + 32 + 16 * a2);
      v14 = 16 * v12;
      v15 = &v13[16 * v12];
      if (result != v13 || result >= v15)
      {
        v17 = a3;
        v18 = a5;
        v19 = a4;
        result = memmove(result, v13, v14);
        a4 = v19;
        a5 = v18;
        a3 = v17;
      }

      v20 = *(v8 + 16);
      v11 = __OFADD__(v20, v7);
      v21 = v20 + v7;
      if (!v11)
      {
        *(v8 + 16) = v21;
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
  if (a3 >= 1)
  {
    *v9 = a4;
    *(v9 + 8) = a5 & 1;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

char *sub_4E0D4(uint64_t a1, _BYTE *a2)
{
  ObjectType = swift_getObjectType();
  v17[3] = type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
  v17[4] = &off_70408;
  v17[0] = a1;
  a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider_id] = 10;
  v5 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider_accessoriesAccessMap;
  *&a2[v5] = sub_50FAC(&_swiftEmptyArrayStorage);
  *&a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider_accessCount] = 0;
  sub_89B8(v17, &a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider_invalidator]);
  v6 = [objc_allocWithZone(DASession) init];
  *&a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider_session] = v6;
  v16.receiver = a2;
  v16.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v16, "init");
  v8 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider_session;
  v9 = *&v7[OBJC_IVAR____TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider_session];
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  aBlock[4] = sub_510E8;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_3EF24;
  aBlock[3] = &unk_70590;
  v11 = _Block_copy(aBlock);
  v12 = v7;
  v13 = v9;

  [v13 setEventHandler:v11];
  _Block_release(v11);

  [*&v7[v8] activate];
  sub_777C(v17);
  return v12;
}

id sub_4E29C(uint64_t a1, _BYTE *a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_44BC(&qword_777B8, &qword_57750);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v21[3] = type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
  v21[4] = &off_70408;
  v21[0] = a1;
  a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_id] = 4;
  *&a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_cancellables] = &_swiftEmptySetSingleton;
  *&a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_installedAppsBundleIdentifiers] = &_swiftEmptySetSingleton;
  v9 = &a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_documentsBundleID];
  *v9 = 0xD000000000000016;
  v9[1] = 0x800000000005EAF0;
  *&a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_appsCount] = 0;
  sub_89B8(v21, &a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_invalidator]);
  v10 = [objc_allocWithZone(FPAccessControlManager) init];
  *&a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_accessManager] = v10;
  v20.receiver = a2;
  v20.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v20, "init");
  v12 = objc_opt_self();
  v13 = v11;
  result = [v12 defaultWorkspace];
  if (result)
  {
    v15 = result;
    v16 = v13;
    [v15 addObserver:v16];

    v17 = sub_547D8();
    (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v16;
    sub_12270(0, 0, v8, &unk_5A800, v18);

    sub_777C(v21);
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_4E4F0(uint64_t a1, _BYTE *a2)
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
  v31[4] = &off_70408;
  a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_id] = 5;
  v6 = &a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_healthKitUIAuthorizationDidUpdateNotification];
  *v6 = 0xD000000000000026;
  v6[1] = 0x800000000005EAC0;
  *&a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_notifyToken] = 0;
  v31[3] = v5;
  v31[0] = a1;
  *&a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_appsCount] = 0;
  *&a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_studiesCount] = 0;
  v7 = &a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_appsAndStudiesString];
  sub_54078();
  LOWORD(v28) = 256;
  *v7 = sub_541D8();
  *(v7 + 1) = v8;
  v7[16] = v9 & 1;
  *(v7 + 3) = v10;
  sub_89B8(v31, &a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_invalidator]);
  v11 = [objc_allocWithZone(HKHealthStore) init];
  v12 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_healthStore;
  *&a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_healthStore] = v11;
  v13 = [objc_allocWithZone(HKSourceListDataSource) initWithHealthStore:v11];
  *&a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_sourceListDataSource] = v13;
  v14 = [objc_allocWithZone(HKAuthorizationStore) initWithHealthStore:*&a2[v12]];
  *&a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_healthAuthorizationStore] = v14;
  v30.receiver = a2;
  v30.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v30, "init");
  v16 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_sourceListDataSource;
  v17 = *&v15[OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_sourceListDataSource];
  v18 = v15;
  [v17 fetchSources];
  [*&v15[v16] registerObserver:v18];
  v20 = *&v18[OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_healthKitUIAuthorizationDidUpdateNotification];
  v19 = *&v18[OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_healthKitUIAuthorizationDidUpdateNotification + 8];
  sub_E444(0, &qword_775E0, OS_dispatch_queue_ptr);

  v21 = sub_54878();
  v22 = swift_allocObject();
  *(v22 + 16) = v18;
  aBlock[4] = sub_51204;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_3EF90;
  aBlock[3] = &unk_706A8;
  v23 = _Block_copy(aBlock);

  v24 = sub_546B8();

  v25 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_notifyToken;
  swift_beginAccess();
  notify_register_dispatch((v24 + 32), &v18[v25], v21, v23);
  swift_endAccess();

  _Block_release(v23);

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v27 = result;
    [result addObserver:v18];

    sub_777C(v31);
    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_4E854(uint64_t a1, _BYTE *a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_44BC(&qword_777B8, &qword_57750);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v17 - v7;
  v19[3] = type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
  v19[4] = &off_70408;
  v19[0] = a1;
  a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_id] = 0;
  v9 = &a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_findMy];
  *v9 = 0xD00000000000002FLL;
  v9[1] = 0x800000000005EB10;
  v10 = &a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_bundleId];
  *v10 = 0x6449656C646E7542;
  v10[1] = 0xE800000000000000;
  v11 = &a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_bundlePath];
  *v11 = 0x6150656C646E7542;
  v11[1] = 0xEA00000000006874;
  *&a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_cancellables] = &_swiftEmptySetSingleton;
  a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_gotLocationState] = 0;
  a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_isServiceEnabled] = 0;
  a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_isStatusBarIconEnabled] = 0;
  *&a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_authorizedAlwaysCount] = 0;
  *&a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_authorizedWhenInUseCount] = 0;
  *&a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_systemServicesCount] = 0;
  *&a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_qualifierCount] = 0;
  sub_89B8(v19, &a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_invalidator]);
  v18.receiver = a2;
  v18.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v18, "init");
  sub_547B8();
  v13 = sub_547D8();
  (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v12;
  v15 = v12;
  sub_18D0C(0, 0, v8, &unk_57850, v14);

  sub_47F8(v8, &qword_777B8, &qword_57750);
  sub_777C(v19);
  return v15;
}

uint64_t sub_4EAEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_44BC(&qword_777B8, &qword_57750);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12[-1] - v6;
  v12[3] = type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
  v12[4] = &off_70408;
  v12[0] = a1;
  *(a2 + 16) = 7;
  *(a2 + 24) = 0;
  sub_89B8(v12, a2 + 40);
  *(a2 + 32) = [objc_allocWithZone(DASession) init];
  v8 = sub_547D8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a2;

  sub_12270(0, 0, v7, &unk_5A7E0, v9);

  sub_777C(v12);
  return a2;
}

uint64_t sub_4EC58(uint64_t a1, uint64_t a2)
{
  v26[3] = type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
  v26[4] = &off_70408;
  v26[0] = a1;
  *(a2 + 16) = 23;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = &_swiftEmptySetSingleton;
  *(a2 + 44) = 0;
  *(a2 + 88) = 0xD00000000000001CLL;
  *(a2 + 96) = 0x800000000005D2C0;
  *(a2 + 104) = 0xD000000000000028;
  *(a2 + 112) = 0x800000000005EA90;
  sub_89B8(v26, a2 + 48);
  sub_E444(0, &qword_775E0, OS_dispatch_queue_ptr);
  v4 = sub_54878();
  v24 = sub_510F0;
  v25 = a2;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_3EF90;
  v23 = &unk_705B8;
  v5 = _Block_copy(&aBlock);

  v6 = sub_546B8();
  swift_beginAccess();
  notify_register_dispatch((v6 + 32), (a2 + 44), v4, v5);
  swift_endAccess();

  _Block_release(v5);

  v7 = *(a2 + 88);
  v8 = *(a2 + 96);
  v9 = sub_54878();
  v24 = sub_510F8;
  v25 = a2;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_3EF90;
  v23 = &unk_705E0;
  v10 = _Block_copy(&aBlock);

  v11 = sub_546B8();
  swift_beginAccess();
  notify_register_dispatch((v11 + 32), (a2 + 40), v9, v10);
  swift_endAccess();

  _Block_release(v10);

  if (&_SRIsDataCollectionEnabled)
  {
    v12 = sub_44BC(&qword_777B8, &qword_57750);
    v13 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v12 - 8);
    v15 = &v19 - v14;
    sub_547B8();
    v16 = sub_547D8();
    (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = a2;

    sub_18D0C(0, 0, v15, &unk_579D0, v17);

    sub_47F8(v15, &qword_777B8, &qword_57750);
    sub_777C(v26);
  }

  else
  {
    sub_777C(v26);
  }

  return a2;
}

uint64_t sub_4F010(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a1;
  v8 = sub_44BC(&qword_79288, &qword_5A6C8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v32 - v10;
  v12 = sub_44BC(&qword_79358, &qword_5A7E8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v32 - v15;
  v17 = sub_44BC(&qword_79360, &unk_5A7F0);
  v18 = *(v17 - 8);
  v32 = v17;
  v33 = v18;
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v32 - v20;
  v37[3] = type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
  v37[4] = &off_70408;
  v37[0] = a3;
  *(a4 + 40) = &_swiftEmptySetSingleton;
  *(a4 + 48) = 0;
  *(a4 + 52) = 0;
  *(a4 + 96) = 0xD00000000000001CLL;
  *(a4 + 104) = 0x800000000005D2C0;
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  *(a4 + 32) = 0;
  sub_89B8(v37, a4 + 56);
  swift_beginAccess();

  sub_44BC(&qword_77DE8, &qword_57BB8);
  v35 = a2;
  sub_53D28();
  swift_endAccess();
  sub_E444(0, &qword_775E0, OS_dispatch_queue_ptr);
  v22 = sub_54878();
  v36 = v22;
  v23 = sub_54858();
  (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
  sub_489C(&qword_79368, &qword_79358, &qword_5A7E8);
  sub_4B5E8();
  sub_53D78();
  sub_47F8(v11, &qword_79288, &qword_5A6C8);
  (*(v13 + 8))(v16, v12);

  swift_allocObject();
  swift_weakInit();
  sub_489C(&qword_79370, &qword_79360, &unk_5A7F0);

  v24 = v32;
  sub_53D98();

  (*(v33 + 8))(v21, v24);
  swift_beginAccess();
  sub_53CB8();
  swift_endAccess();

  if (v34 == 1)
  {
    v25 = sub_548B8();
    v26 = *(v25 - 8);
    v27 = *(v26 + 64);
    __chkstk_darwin(v25);
    v29 = &v32 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = [objc_opt_self() defaultCenter];
    if (qword_76FA8 != -1)
    {
      swift_once();
    }

    sub_548C8();

    swift_allocObject();
    swift_weakInit();

    sub_11EB8();
    sub_53D98();

    (*(v26 + 8))(v29, v25);
    swift_beginAccess();
    sub_53CB8();
    swift_endAccess();

    sub_1ED98();
  }

  else
  {
  }

  sub_777C(v37);
  return a4;
}

uint64_t sub_4F604(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_44BC(&qword_79288, &qword_5A6C8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v28 - v10;
  v12 = sub_44BC(&qword_79358, &qword_5A7E8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v28 - v15;
  v17 = sub_44BC(&qword_79360, &unk_5A7F0);
  v18 = *(v17 - 8);
  v28 = v17;
  v29 = v18;
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v28 - v20;
  v31[3] = type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
  v31[4] = &off_70408;
  v31[0] = a3;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0;
  *(a4 + 112) = 0xD00000000000001CLL;
  *(a4 + 120) = 0x800000000005D2C0;
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  sub_89B8(v31, a4 + 72);
  swift_beginAccess();

  sub_44BC(&qword_77DE8, &qword_57BB8);
  sub_53D28();
  swift_endAccess();
  sub_E444(0, &qword_775E0, OS_dispatch_queue_ptr);
  v22 = sub_54878();
  v30 = v22;
  v23 = sub_54858();
  (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
  sub_489C(&qword_79368, &qword_79358, &qword_5A7E8);
  sub_4B5E8();
  sub_53D78();
  sub_47F8(v11, &qword_79288, &qword_5A6C8);
  (*(v13 + 8))(v16, v12);

  swift_allocObject();
  swift_weakInit();
  sub_489C(&qword_79370, &qword_79360, &unk_5A7F0);
  v24 = v28;
  v25 = sub_53D98();

  (*(v29 + 8))(v21, v24);
  sub_777C(v31);
  v26 = *(a4 + 56);
  *(a4 + 56) = v25;

  return a4;
}

uint64_t sub_4FA00(uint64_t a1, uint64_t a2)
{
  v6[3] = type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
  v6[4] = &off_70408;
  v6[0] = a1;
  *(a2 + 16) = 40;
  *(a2 + 64) = sub_54638();
  *(a2 + 72) = AMFIShouldShowDeveloperModeSettings();
  sub_89B8(v6, a2 + 24);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v4, a2, sub_24344, *(a2 + 64), 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  sub_777C(v6);
  return a2;
}

uint64_t sub_4FAC4(uint64_t a1, uint64_t a2)
{
  v28[3] = type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
  v28[4] = &off_70408;
  v28[0] = a1;
  v26 = a2;
  *(a2 + 64) = &_swiftEmptySetSingleton;
  a2 += 64;
  *(a2 - 48) = 5;
  sub_89B8(v28, a2 - 40);
  v4 = sub_44BC(&qword_79338, &unk_5A7C8);
  v24 = *(v4 - 8);
  v25 = v4;
  v5 = *(v24 + 64);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = sub_548B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() defaultCenter];
  if (qword_76FB8 != -1)
  {
    swift_once();
  }

  sub_548C8();

  v14 = [objc_opt_self() mainRunLoop];
  v27 = v14;
  v15 = sub_44BC(&qword_792C0, &qword_5A730);
  v16 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v15 - 8);
  v18 = &v23 - v17;
  v19 = sub_54968();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_E444(0, &qword_792C8, NSRunLoop_ptr);
  sub_11EB8();
  sub_4B318();
  sub_53D78();
  sub_47F8(v18, &qword_792C0, &qword_5A730);
  (*(v9 + 8))(v12, v8);

  swift_allocObject();
  v20 = v26;
  swift_weakInit();
  sub_489C(&qword_79340, &qword_79338, &unk_5A7C8);
  v21 = v25;
  sub_53D98();

  (*(v24 + 8))(v7, v21);
  swift_beginAccess();
  sub_53CB8();
  swift_endAccess();

  sub_777C(v28);
  return v20;
}

uint64_t sub_4FECC(uint64_t a1, uint64_t a2)
{
  v4 = sub_44BC(&qword_777B8, &qword_57750);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v29 - v6;
  v34[3] = type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
  v34[4] = &off_70408;
  v34[0] = a1;
  *(a2 + 16) = 37;
  *(a2 + 64) = &_swiftEmptySetSingleton;
  v32 = a2 + 64;
  *(a2 + 72) = 0;
  sub_89B8(v34, a2 + 24);
  sub_547B8();
  v8 = sub_547D8();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v9;

  sub_18D0C(0, 0, v7, &unk_5A7D8, v10);

  sub_47F8(v7, &qword_777B8, &qword_57750);
  v11 = sub_44BC(&qword_79338, &unk_5A7C8);
  v30 = *(v11 - 8);
  v31 = v11;
  v12 = *(v30 + 64);
  __chkstk_darwin(v11);
  v14 = &v29 - v13;
  v15 = sub_548B8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [objc_opt_self() defaultCenter];
  if (qword_76FC0 != -1)
  {
    swift_once();
  }

  sub_548C8();

  v21 = [objc_opt_self() mainRunLoop];
  v33 = v21;
  v22 = sub_44BC(&qword_792C0, &qword_5A730);
  v23 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22 - 8);
  v25 = &v29 - v24;
  v26 = sub_54968();
  (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
  sub_E444(0, &qword_792C8, NSRunLoop_ptr);
  sub_11EB8();
  sub_4B318();
  sub_53D78();
  sub_47F8(v25, &qword_792C0, &qword_5A730);
  (*(v16 + 8))(v19, v15);

  swift_allocObject();
  swift_weakInit();

  sub_489C(&qword_79340, &qword_79338, &unk_5A7C8);
  v27 = v31;
  sub_53D98();

  (*(v30 + 8))(v14, v27);
  swift_beginAccess();
  sub_53CB8();
  swift_endAccess();

  sub_777C(v34);
  return a2;
}

uint64_t sub_50408(uint64_t a1, uint64_t a2)
{
  v26[3] = type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
  v26[4] = &off_70408;
  v26[0] = a1;
  *(a2 + 16) = 36;
  *(a2 + 64) = &_swiftEmptySetSingleton;
  sub_89B8(v26, a2 + 24);
  v4 = sub_44BC(&qword_79338, &unk_5A7C8);
  v5 = *(v4 - 8);
  v23 = v4;
  v24 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  v9 = sub_548B8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() defaultCenter];
  sub_548C8();

  v15 = [objc_opt_self() mainRunLoop];
  v25 = v15;
  v16 = sub_44BC(&qword_792C0, &qword_5A730);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v23 - v18;
  v20 = sub_54968();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  sub_E444(0, &qword_792C8, NSRunLoop_ptr);
  sub_11EB8();
  sub_4B318();
  sub_53D78();
  sub_47F8(v19, &qword_792C0, &qword_5A730);
  (*(v10 + 8))(v13, v9);

  swift_allocObject();
  swift_weakInit();
  sub_489C(&qword_79340, &qword_79338, &unk_5A7C8);
  v21 = v23;
  sub_53D98();

  (*(v24 + 8))(v8, v21);
  swift_beginAccess();
  sub_53CB8();
  swift_endAccess();

  sub_777C(v26);
  return a2;
}

uint64_t sub_507D8(uint64_t a1, uint64_t a2)
{
  v28[3] = type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
  v28[4] = &off_70408;
  v28[0] = a1;
  v26 = a2;
  *(a2 + 64) = &_swiftEmptySetSingleton;
  a2 += 64;
  *(a2 - 48) = 38;
  sub_89B8(v28, a2 - 40);
  v4 = sub_44BC(&qword_79338, &unk_5A7C8);
  v24 = *(v4 - 8);
  v25 = v4;
  v5 = *(v24 + 64);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = sub_548B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() defaultCenter];
  if (qword_76FC8 != -1)
  {
    swift_once();
  }

  sub_548C8();

  v14 = [objc_opt_self() mainRunLoop];
  v27 = v14;
  v15 = sub_44BC(&qword_792C0, &qword_5A730);
  v16 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v15 - 8);
  v18 = &v23 - v17;
  v19 = sub_54968();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_E444(0, &qword_792C8, NSRunLoop_ptr);
  sub_11EB8();
  sub_4B318();
  sub_53D78();
  sub_47F8(v18, &qword_792C0, &qword_5A730);
  (*(v9 + 8))(v12, v8);

  swift_allocObject();
  v20 = v26;
  swift_weakInit();
  sub_489C(&qword_79340, &qword_79338, &unk_5A7C8);
  v21 = v25;
  sub_53D98();

  (*(v24 + 8))(v7, v21);
  swift_beginAccess();
  sub_53CB8();
  swift_endAccess();

  sub_777C(v28);
  return v20;
}

uint64_t sub_50BE0(uint64_t *a1)
{
  v1 = *a1;
  v11[3] = v1;
  v11[4] = &off_70408;
  v11[0] = a1;
  type metadata accessor for InputAccessoriesListItemProvider();
  v2 = swift_allocObject();
  v3 = sub_50D68(v11, v1);
  v4 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = (v10 - v5);
  (*(v7 + 16))(v10 - v5);
  v8 = *v6;
  v10[3] = v1;
  v10[4] = &off_70408;
  v10[0] = v8;
  *(v2 + 16) = 41;
  sub_89B8(v10, v2 + 24);
  if (sub_2850())
  {
    sub_53A08();
  }

  sub_777C(v10);
  sub_777C(v11);
  return v2;
}

uint64_t sub_50D68(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_50DB8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_50DD0()
{
  result = qword_79320;
  if (!qword_79320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_79320);
  }

  return result;
}

uint64_t sub_50E38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_14A00;

  return sub_267B4(a1, v4, v5, v6);
}

unint64_t sub_50F04()
{
  result = qword_79348;
  if (!qword_79348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_79348);
  }

  return result;
}

unint64_t sub_50F58()
{
  result = qword_79350;
  if (!qword_79350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_79350);
  }

  return result;
}

unint64_t sub_50FAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_44BC(&qword_772D8, &unk_57280);
    v3 = sub_54B88();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1BE04(v5, v6);
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

uint64_t sub_510B0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_51100()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_51140(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_14A00;

  return sub_1C550(a1, v4, v5, v6);
}

uint64_t sub_51210(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_13F74;

  return sub_11F5C(a1, v4, v5, v6);
}

uint64_t sub_512CC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_5130C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_44BC(&qword_772E0, &qword_5A820);
    v3 = sub_54B88();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1BEC0(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_51404(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_44BC(&qword_79390, &qword_5A818);
    v3 = sub_54B88();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1BE04(v5, v6);
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

uint64_t sub_51500()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 48);
  *(v1 + 48) = *(v0 + 24);
}

uint64_t sub_515D4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_515E4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_5162C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_44BC(&qword_793F0, &qword_5AA60);
    v3 = sub_54B88();
    v4 = a1 + 32;

    while (1)
    {
      sub_4790(v4, &v13, &qword_793F8, &qword_5AA68);
      v5 = v13;
      v6 = v14;
      result = sub_1BE04(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_CB50(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_5175C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_5181C(uint64_t a1)
{
  v2 = type metadata accessor for PrivacyAndSecuritySettingsDestinationOption();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_51878()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 64);
  v5 = *(v2 + 72);
  *(v2 + 64) = v1;
  *(v2 + 72) = v3;
  sub_515D4(v1);
  return sub_515E4(v4);
}

uint64_t sub_518C4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_518FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_51924()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_5194C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 56);
  *(v1 + 56) = *(v0 + 24);
}

unint64_t sub_519B4()
{
  result = qword_793E0;
  if (!qword_793E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_793E0);
  }

  return result;
}

unint64_t sub_51A0C()
{
  result = qword_793E8;
  if (!qword_793E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_793E8);
  }

  return result;
}

id sub_51B54()
{
  type metadata accessor for FindPrivacyAndSecuritySettingsClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_7BBF8 = result;
  return result;
}

uint64_t sub_51BAC()
{
  v0 = sub_53908();
  sub_51C48(v0, qword_7BC00);
  v1 = sub_7700(v0, qword_7BC00);
  *v1 = type metadata accessor for FindPrivacyAndSecuritySettingsClass();
  v2 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t *sub_51C48(uint64_t a1, uint64_t *a2)
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

uint64_t sub_51CF8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_53C38();
  sub_51C48(v3, a2);
  sub_7700(v3, a2);

  return sub_53C28();
}

uint64_t sub_51D80()
{
  v0 = sub_53C38();
  sub_51C48(v0, qword_7BC48);
  sub_7700(v0, qword_7BC48);

  return sub_53C28();
}

BOOL sub_51F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22[1] = a8;
  v8 = sub_53FD8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_53FC8();
  v13 = sub_541A8();
  v15 = v14;
  v16 = *(v9 + 8);
  v16(v12, v8);
  v22[5] = v13;
  v22[6] = v15;
  sub_53FC8();
  v17 = sub_541A8();
  v19 = v18;
  v16(v12, v8);
  v22[2] = v17;
  v22[3] = v19;
  sub_A700();
  v20 = sub_549C8();

  return v20 == -1;
}

unint64_t sub_520A4()
{
  result = qword_794A8;
  if (!qword_794A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_794A8);
  }

  return result;
}

unint64_t sub_52120()
{
  result = qword_79548;
  if (!qword_79548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_79548);
  }

  return result;
}

uint64_t sub_52190(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_547A8();
  v2[3] = sub_54798();
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_52258;

  return sub_48864(a1, a2);
}

uint64_t sub_52258()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_54788();

  return _swift_task_switch(sub_52394, v5, v4);
}

uint64_t sub_52394()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_523F4()
{
  v1 = sub_44BC(&qword_79550, &qword_5ABA8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v8 - v4;
  v6 = *v0;
  type metadata accessor for PrivacyAndSecuritySettingsList();
  sub_525C8();

  sub_545A8();
  sub_526CC();

  sub_54538();
  return (*(v2 + 8))(v5, v1);
}

char *sub_5254C@<X0>(char **a1@<X8>)
{
  v2 = type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_44070();
  *a1 = result;
  return result;
}

uint64_t sub_5258C@<X0>(uint64_t *a1@<X8>)
{

  return sub_3BCD4(a1);
}

unint64_t sub_525C8()
{
  result = qword_79558;
  if (!qword_79558)
  {
    type metadata accessor for PrivacyAndSecuritySettingsList();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_79558);
  }

  return result;
}

uint64_t sub_52620(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_13F74;

  return sub_52190(a1, a2);
}

unint64_t sub_526CC()
{
  result = qword_79560;
  if (!qword_79560)
  {
    sub_4590(&qword_79550, &qword_5ABA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_79560);
  }

  return result;
}

uint64_t sub_52740()
{
  sub_4590(&qword_79550, &qword_5ABA8);
  sub_526CC();
  return swift_getOpaqueTypeConformance2();
}

char *sub_527A4()
{
  v1 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings36PrivacyAndSecuritySettingsController____lazy_storage___privacyAndSecuritySettingsListViewModel;
  if (*(v0 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings36PrivacyAndSecuritySettingsController____lazy_storage___privacyAndSecuritySettingsListViewModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings36PrivacyAndSecuritySettingsController____lazy_storage___privacyAndSecuritySettingsListViewModel);
  }

  else
  {
    v3 = v0;
    v4 = type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    v2 = sub_44070();
    v7 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_52820@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_44BC(&qword_795C0, &qword_5AC28);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings36PrivacyAndSecuritySettingsController____lazy_storage___privacyAndSecuritySettingsList;
  swift_beginAccess();
  sub_53118(v1 + v10, v9);
  v11 = type metadata accessor for PrivacyAndSecuritySettingsList();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return sub_3E388(v9, a1);
  }

  sub_53188(v9);
  sub_527A4();
  sub_3BCD4(a1);
  sub_531F0(a1, v7);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_53254(v7, v1 + v10);
  return swift_endAccess();
}

void sub_529CC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for PrivacyAndSecuritySettingsList();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19.receiver = v1;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, "viewDidLoad");
  sub_52820(v6);
  v7 = objc_allocWithZone(sub_44BC(&qword_795B8, &qword_5AC20));
  v8 = sub_540B8();
  v9 = [v8 view];
  if (!v9)
  {
    v10 = v8;
    goto LABEL_6;
  }

  v10 = v9;
  v11 = [v1 view];
  if (v11)
  {
    v12 = v11;
    [v11 addSubview:v10];

    v13 = [v1 view];
    if (v13)
    {
      v14 = v13;
      [v13 bounds];
      v16 = v15;
      v18 = v17;

      [v10 setFrame:{0.0, 0.0, v16, v18}];
      [v10 setAutoresizingMask:18];
      [v1 addChildViewController:v8];
      [v8 didMoveToParentViewController:v1];

LABEL_6:
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_52F04()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PrivacyAndSecuritySettingsController()
{
  result = qword_795A0;
  if (!qword_795A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_52FDC()
{
  sub_53078();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_53078()
{
  if (!qword_795B0)
  {
    type metadata accessor for PrivacyAndSecuritySettingsList();
    v0 = sub_54998();
    if (!v1)
    {
      atomic_store(v0, &qword_795B0);
    }
  }
}

uint64_t sub_530D0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_53118(uint64_t a1, uint64_t a2)
{
  v4 = sub_44BC(&qword_795C0, &qword_5AC28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_53188(uint64_t a1)
{
  v2 = sub_44BC(&qword_795C0, &qword_5AC28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_531F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivacyAndSecuritySettingsList();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_53254(uint64_t a1, uint64_t a2)
{
  v4 = sub_44BC(&qword_795C0, &qword_5AC28);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_532F0(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_7BB98 == -1)
  {
    if (qword_7BBA0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_537B8();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_7BBA0)
    {
      return _availability_version_check();
    }
  }

  if (qword_7BB90 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_537D0();
    a3 = v10;
    a4 = v9;
    v8 = dword_7BB80 < v11;
    if (dword_7BB80 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_7BB84 > a3)
      {
        return 1;
      }

      if (dword_7BB84 >= a3)
      {
        return dword_7BB88 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_7BB80 < a2;
  if (dword_7BB80 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_53484(uint64_t result)
{
  v1 = qword_7BBA0;
  if (qword_7BBA0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_7BBA0 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_7BB80, &dword_7BB84, &dword_7BB88);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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
    }
  }

  return result;
}