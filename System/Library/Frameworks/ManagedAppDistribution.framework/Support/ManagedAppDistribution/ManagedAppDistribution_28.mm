uint64_t sub_1003EA7B8(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  CanTakeOverManagementStateResult = type metadata accessor for DMCAppsCanTakeOverManagementStateResult();
  v2[13] = CanTakeOverManagementStateResult;
  v2[14] = *(CanTakeOverManagementStateResult - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v4 = sub_1001F0C48(&qword_10077F388);
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v5 = type metadata accessor for DMCAppsScope();
  v2[22] = v5;
  v2[23] = *(v5 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v6 = type metadata accessor for DMCAppsClient();
  v2[26] = v6;
  v2[27] = *(v6 - 8);
  v2[28] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v2[29] = v7;
  v2[30] = *(v7 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();

  return _swift_task_switch(sub_1003EAA54, 0, 0);
}

uint64_t sub_1003EAA54()
{
  static Logger.ddm.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = sub_100625FA0();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] DMC: canTakeOverManagementOfExistingApp", v3, 0xCu);
    sub_1000032A8(v4, &qword_10077F920);
  }

  v6 = v0[35];
  v8 = v0[29];
  v7 = v0[30];
  v9 = v0[24];
  v10 = v0[25];
  v11 = v1;
  v13 = v0[22];
  v12 = v0[23];
  v25 = v0[19];
  v26 = v0[20];
  v14 = v0[11];
  v23 = v0[21];
  v24 = v0[12];

  v15 = *(v7 + 8);
  v0[36] = v15;
  v0[37] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v6, v8);
  if (*(v14 + *(type metadata accessor for DDMDeclaration(0) + 76)))
  {
    v16 = &enum case for DMCAppsScope.user(_:);
  }

  else
  {
    v16 = &enum case for DMCAppsScope.system(_:);
  }

  (*(v12 + 104))(v9, *v16, v13);
  (*(v12 + 32))(v10, v9, v13);
  DMCAppsClient.init(scope:)();
  v17 = DMCAppsClient.organizationName.getter();
  sub_1003E92D4(v14, v17, v18, v24, v23);

  v0[5] = v25;
  v0[6] = swift_getOpaqueTypeConformance2();
  v0[7] = swift_getOpaqueTypeConformance2();
  v0[8] = swift_getOpaqueTypeConformance2();
  v0[9] = swift_getOpaqueTypeConformance2();
  v0[10] = swift_getOpaqueTypeConformance2();
  v19 = sub_10020A748(v0 + 2);
  (*(v26 + 16))(v19, v23, v25);
  v20 = swift_task_alloc();
  v0[38] = v20;
  *v20 = v0;
  v20[1] = sub_1003EAD58;
  v21 = v0[18];

  return DMCAppsClient.canTakeOverManagementOfExistingApp(_:)(v21, v0 + 2);
}

uint64_t sub_1003EAD58()
{
  v1 = *v0;

  sub_10000710C(v1 + 16);

  return _swift_task_switch(sub_1003EAE5C, 0, 0);
}

uint64_t sub_1003EAE5C()
{
  v95 = v0;
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[13];
  v4 = v0[14];
  static Logger.ddm.getter();
  v5 = *(v4 + 16);
  v5(v2, v1, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[36];
  v90 = v0[34];
  v88 = v0[29];
  v10 = v0[17];
  if (v8)
  {
    v82 = v0[36];
    v85 = v5;
    v11 = v0[16];
    v79 = v7;
    v12 = v0[13];
    v13 = v0[14];
    v14 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v94 = v77;
    *v14 = 138412546;
    v15 = sub_100625FA0();
    *(v14 + 4) = v15;
    *v76 = v15;
    *(v14 + 12) = 2082;
    v85(v11, v10, v12);
    v16 = String.init<A>(describing:)();
    v18 = v17;
    v19 = *(v13 + 8);
    v19(v10, v12);
    v5 = v85;
    v20 = sub_1002346CC(v16, v18, &v94);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v6, v79, "[%@] DMC: canTakeOverManagementOfExistingApp -> %{public}s", v14, 0x16u);
    sub_1000032A8(v76, &qword_10077F920);

    sub_10000710C(v77);

    v82(v90, v88);
  }

  else
  {
    v21 = v0[13];
    v22 = v0[14];

    v19 = *(v22 + 8);
    v19(v10, v21);
    v9(v90, v88);
  }

  v24 = v0[14];
  v23 = v0[15];
  v25 = v0[13];
  v5(v23, v0[18], v25);
  v26 = (*(v24 + 88))(v23, v25);
  if (v26 == enum case for DMCAppsCanTakeOverManagementStateResult.failInternalError(_:))
  {
    v27 = v0[15];
    (*(v0[14] + 96))(v27, v0[13]);
    v28 = *v27;
    v29 = v27[1];
    v73 = v28;
    static Logger.ddm.getter();

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    v32 = os_log_type_enabled(v30, v31);
    v86 = v0[36];
    v33 = v0[28];
    v81 = v0[29];
    v83 = v0[31];
    v34 = v0[26];
    v35 = v0[27];
    v37 = v0[20];
    v36 = v0[21];
    v91 = v0[19];
    v78 = v0[13];
    v80 = v0[18];
    if (v32)
    {
      v72 = v0[26];
      v38 = swift_slowAlloc();
      v71 = v36;
      v39 = swift_slowAlloc();
      v70 = v33;
      v40 = swift_slowAlloc();
      v94 = v40;
      *v38 = 138412546;
      v41 = sub_100625FA0();
      *(v38 + 4) = v41;
      *v39 = v41;
      *(v38 + 12) = 2082;
      v42 = sub_1002346CC(v73, v29, &v94);
      v74 = v19;
      v43 = v42;

      *(v38 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v30, v31, "[%@] An internal error ocurred: %{public}s", v38, 0x16u);
      sub_1000032A8(v39, &qword_10077F920);

      sub_10000710C(v40);

      v86(v83, v81);
      v74(v80, v78);
      (*(v37 + 8))(v71, v91);
      (*(v35 + 8))(v70, v72);
    }

    else
    {

      v86(v83, v81);
      v19(v80, v78);
      (*(v37 + 8))(v36, v91);
      (*(v35 + 8))(v33, v34);
    }

LABEL_20:
    v92 = 0;
    goto LABEL_21;
  }

  if (v26 != enum case for DMCAppsCanTakeOverManagementStateResult.proceed(_:))
  {
    if (v26 == enum case for DMCAppsCanTakeOverManagementStateResult.failCannotTakeOverManagement(_:))
    {
      v75 = v19;
      static Logger.ddm.getter();
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *v52 = 138412290;
        v54 = sub_100625FA0();
        *(v52 + 4) = v54;
        *v53 = v54;
        _os_log_impl(&_mh_execute_header, v50, v51, "[%@] Cannot take over management", v52, 0xCu);
        sub_1000032A8(v53, &qword_10077F920);
      }

      v55 = v50;
      v56 = v0[36];
      v57 = v0[33];
    }

    else
    {
      if (v26 != enum case for DMCAppsCanTakeOverManagementStateResult.failSystemApp(_:))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      v75 = v19;
      static Logger.ddm.getter();
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v60 = 138412290;
        v62 = sub_100625FA0();
        *(v60 + 4) = v62;
        *v61 = v62;
        _os_log_impl(&_mh_execute_header, v58, v59, "[%@] Cannot manage system app", v60, 0xCu);
        sub_1000032A8(v61, &qword_10077F920);
      }

      v55 = v58;
      v56 = v0[36];
      v57 = v0[32];
    }

    v63 = v0[29];
    v93 = v0[28];
    v64 = v0[27];
    v65 = v0[20];
    v87 = v0[21];
    v89 = v0[26];
    v66 = v0[18];
    v84 = v0[19];
    v67 = v0[13];

    v56(v57, v63);
    v75(v66, v67);
    (*(v65 + 8))(v87, v84);
    (*(v64 + 8))(v93, v89);
    goto LABEL_20;
  }

  v45 = v0[27];
  v44 = v0[28];
  v46 = v0[26];
  v48 = v0[20];
  v47 = v0[21];
  v49 = v0[19];
  v19(v0[18], v0[13]);
  (*(v48 + 8))(v47, v49);
  (*(v45 + 8))(v44, v46);
  v92 = 1;
LABEL_21:

  v68 = v0[1];

  return v68(v92);
}

uint64_t sub_1003EB708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;
  sub_1001F0C48(&qword_10077F380);
  v3[16] = swift_task_alloc();
  v4 = type metadata accessor for DMCAppsWillDownloadStateResult();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v5 = sub_1001F0C48(&qword_10077F388);
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();
  v6 = type metadata accessor for DMCAppsScope();
  v3[26] = v6;
  v3[27] = *(v6 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v7 = type metadata accessor for DMCAppsClient();
  v3[30] = v7;
  v3[31] = *(v7 - 8);
  v3[32] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v3[33] = v8;
  v3[34] = *(v8 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return _swift_task_switch(sub_1003EB9C8, 0, 0);
}

uint64_t sub_1003EB9C8()
{
  v1 = v0[15];
  static Logger.ddm.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[15];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] DMC: willDownload", v6, 0xCu);
    sub_1000032A8(v7, &qword_10077F920);
  }

  v9 = v0[37];
  v11 = v0[33];
  v10 = v0[34];
  v13 = v0[28];
  v12 = v0[29];
  v14 = v3;
  v15 = v0[26];
  v16 = v0[27];
  v28 = v0[24];
  v26 = v0[25];
  v27 = v0[23];
  v17 = v0[13];

  v18 = *(v10 + 8);
  v0[38] = v18;
  v0[39] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v9, v11);
  if (*(v17 + *(type metadata accessor for DDMDeclaration(0) + 76)))
  {
    v19 = &enum case for DMCAppsScope.user(_:);
  }

  else
  {
    v19 = &enum case for DMCAppsScope.system(_:);
  }

  (*(v16 + 104))(v13, *v19, v15);
  (*(v16 + 32))(v12, v13, v15);
  DMCAppsClient.init(scope:)();
  v20 = DMCAppsClient.organizationName.getter();
  sub_1003E92D4(v17, v20, v21, 0, v26);

  v0[5] = v27;
  v0[6] = swift_getOpaqueTypeConformance2();
  v0[7] = swift_getOpaqueTypeConformance2();
  v0[8] = swift_getOpaqueTypeConformance2();
  v0[9] = swift_getOpaqueTypeConformance2();
  v0[10] = swift_getOpaqueTypeConformance2();
  v22 = sub_10020A748(v0 + 2);
  (*(v28 + 16))(v22, v26, v27);
  v23 = swift_task_alloc();
  v0[40] = v23;
  *v23 = v0;
  v23[1] = sub_1003EBCE4;
  v24 = v0[22];

  return DMCAppsClient.willDownload(_:)(v24, v0 + 2);
}

uint64_t sub_1003EBCE4()
{
  v1 = *v0;

  sub_10000710C(v1 + 16);

  return _swift_task_switch(sub_1003EBDE8, 0, 0);
}

uint64_t sub_1003EBDE8()
{
  v66 = v0;
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[15];
  static Logger.ddm.getter();
  v6 = *(v4 + 16);
  v6(v2, v1, v3);
  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[38];
  v62 = v0[33];
  v64 = v0[36];
  v12 = v0[21];
  if (v10)
  {
    v59 = v0[38];
    v60 = v6;
    v13 = v0[20];
    v14 = v0[17];
    v15 = v0[18];
    v58 = v9;
    v16 = v0[15];
    v17 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v65 = v57;
    *v17 = 138412546;
    *(v17 + 4) = v16;
    *v56 = v16;
    *(v17 + 12) = 2082;
    v60(v13, v12, v14);
    v18 = v16;
    v19 = String.init<A>(describing:)();
    v21 = v20;
    v22 = *(v15 + 8);
    v22(v12, v14);
    v6 = v60;
    v23 = sub_1002346CC(v19, v21, &v65);

    *(v17 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v8, v58, "[%@] DMC: willDownload -> %{public}s", v17, 0x16u);
    sub_1000032A8(v56, &qword_10077F920);

    sub_10000710C(v57);

    v59(v64, v62);
  }

  else
  {
    v24 = v0[17];
    v25 = v0[18];

    v22 = *(v25 + 8);
    v22(v12, v24);
    v11(v64, v62);
  }

  v0[41] = v22;
  v27 = v0[18];
  v26 = v0[19];
  v28 = v0[17];
  v6(v26, v0[22], v28);
  v29 = (*(v27 + 88))(v26, v28);
  if (v29 == enum case for DMCAppsWillDownloadStateResult.failInternalError(_:))
  {
    v30 = v0[19];
    v31 = v0[15];
    (*(v0[18] + 96))(v30, v0[17]);
    v32 = *v30;
    v0[43] = *v30;
    v33 = v30[1];
    v0[44] = v33;
    static Logger.ddm.getter();
    v34 = v31;

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    v37 = os_log_type_enabled(v35, v36);
    v38 = v0[38];
    v39 = v0[35];
    v40 = v0[33];
    if (v37)
    {
      v41 = v0[15];
      v63 = v0[38];
      v42 = swift_slowAlloc();
      v61 = v39;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v65 = v44;
      *v42 = 138412546;
      *(v42 + 4) = v41;
      *v43 = v41;
      *(v42 + 12) = 2082;
      v45 = v41;
      *(v42 + 14) = sub_1002346CC(v32, v33, &v65);
      _os_log_impl(&_mh_execute_header, v35, v36, "[%@] An internal error ocurred: %{public}s", v42, 0x16u);
      sub_1000032A8(v43, &qword_10077F920);

      sub_10000710C(v44);

      v63(v61, v40);
    }

    else
    {

      v38(v39, v40);
    }

    v50 = v0[16];
    v51 = type metadata accessor for ManagedAppStatus.Reason();
    (*(*(v51 - 8) + 56))(v50, 1, 1, v51);
    v52 = swift_task_alloc();
    v0[45] = v52;
    *v52 = v0;
    v52[1] = sub_1003EC4C8;
    v54 = v0[15];
    v53 = v0[16];
    v55 = v0[13];

    return sub_10030B39C(v55, v53, 1, v54);
  }

  else if (v29 == enum case for DMCAppsWillDownloadStateResult.proceed(_:))
  {
    v46 = swift_task_alloc();
    v0[42] = v46;
    *v46 = v0;
    v46[1] = sub_1003EC3CC;
    v47 = v0[15];
    v48 = v0[13];

    return sub_1003079C8(v48, 1, v47);
  }

  else
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

uint64_t sub_1003EC3CC()
{

  return _swift_task_switch(sub_1003ED634, 0, 0);
}

uint64_t sub_1003EC4C8()
{
  v1 = *(*v0 + 128);

  sub_1000032A8(v1, &qword_10077F380);

  return _swift_task_switch(sub_1003ED62C, 0, 0);
}

uint64_t sub_1003EC5F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x657461647075;
  }

  else
  {
    v3 = 0x6C6C6174736E69;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x657461647075;
  }

  else
  {
    v5 = 0x6C6C6174736E69;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1003EC694()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003EC714()
{
  String.hash(into:)();
}

Swift::Int sub_1003EC780()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003EC7FC@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10075A288, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1003EC85C(uint64_t *a1@<X8>)
{
  v2 = 0x6C6C6174736E69;
  if (*v1)
  {
    v2 = 0x657461647075;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1003EC948(void *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  __chkstk_darwin(v4 - 8);
  v79 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001F0C48(&qword_10077E958);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v78 = &v77 - v11;
  __chkstk_darwin(v10);
  v13 = &v77 - v12;
  v14 = type metadata accessor for FilePath();
  v80 = *(v14 - 8);
  v81 = v14;
  v15 = __chkstk_darwin(v14);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v77 - v19;
  __chkstk_darwin(v18);
  v22 = &v77 - v21;
  v23 = type metadata accessor for Logger();
  v82 = *(v23 - 8);
  v83 = v23;
  v24 = __chkstk_darwin(v23);
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v29 = &v77 - v28;
  __chkstk_darwin(v27);
  v31 = &v77 - v30;
  if ([a1 isBeta])
  {
    static Logger.ddm.getter();
    v32 = a2;
    v33 = a1;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v34, v35))
    {
LABEL_5:

      (*(v82 + 8))(v31, v83);
      return 0;
    }

    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v88[0] = v78;
    *v36 = 138412546;
    *(v36 + 4) = v32;
    *v37 = v32;
    *(v36 + 12) = 2082;
    v38 = v32;
    v39 = [v33 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    FilePath.init(_:)();
    v41 = v80;
    v40 = v81;
    result = (*(v80 + 48))(v13, 1, v81);
    if (result != 1)
    {
      (*(v41 + 32))(v22, v13, v40);
      v43 = sub_1004D53C0();
      v45 = v44;
      (*(v41 + 8))(v22, v40);
      v46 = sub_1002346CC(v43, v45, v88);

      *(v36 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v34, v35, "[%@] TestFlight app cannot be managed at path: %{public}s", v36, 0x16u);
      sub_1000032A8(v37, &qword_10077F920);

      sub_10000710C(v78);

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_27;
  }

  if (([a1 isProfileValidated] & 1) == 0)
  {
    sub_10061A948(&v86);
    if (!v87)
    {
      sub_1000032A8(&v86, &unk_10077FA50);
      if (([a1 applicationMissingRequiredSINF] & 1) == 0)
      {
        static Logger.ddm.getter();
        v47 = a2;
        v48 = a1;
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v88[0] = v78;
          *v51 = 138412546;
          *(v51 + 4) = v47;
          v77 = v52;
          *v52 = v47;
          *(v51 + 12) = 2082;
          v53 = v47;
          v54 = [v48 URL];
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          FilePath.init(_:)();
          v55 = v80;
          v56 = v81;
          result = (*(v80 + 48))(v9, 1, v81);
          if (result == 1)
          {
LABEL_28:
            __break(1u);
            return result;
          }

          (*(v55 + 32))(v17, v9, v56);
          v57 = sub_1004D53C0();
          v59 = v58;
          (*(v55 + 8))(v17, v56);
          v60 = sub_1002346CC(v57, v59, v88);

          *(v51 + 14) = v60;
          _os_log_impl(&_mh_execute_header, v49, v50, "[%@] No distributor and not factory, cannot be managed at path: %{public}s", v51, 0x16u);
          sub_1000032A8(v77, &qword_10077F920);

          sub_10000710C(v78);
        }

        (*(v82 + 8))(v26, v83);
        return 0;
      }

      return 1;
    }

    sub_1001DFDBC(&v86, v88);
    sub_10020A980(v88, &v86);
    sub_1001F0C48(&qword_10077E970);
    if (swift_dynamicCast())
    {
      if (v84 == 0xD000000000000012 && 0x80000001006C2DF0 == v85)
      {

LABEL_21:
        sub_10000710C(v88);
        return 1;
      }

      v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v61)
      {
        goto LABEL_21;
      }
    }

    static Logger.ddm.getter();
    v62 = a2;
    v63 = a1;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *&v86 = v77;
      *v66 = 138412546;
      *(v66 + 4) = v62;
      *v67 = v62;
      *(v66 + 12) = 2082;
      v68 = v62;
      v69 = [v63 URL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v70 = v78;
      FilePath.init(_:)();
      v72 = v80;
      v71 = v81;
      result = (*(v80 + 48))(v70, 1, v81);
      if (result == 1)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      (*(v72 + 32))(v20, v70, v71);
      v73 = sub_1004D53C0();
      v75 = v74;
      (*(v72 + 8))(v20, v71);
      v76 = sub_1002346CC(v73, v75, &v86);

      *(v66 + 14) = v76;
      _os_log_impl(&_mh_execute_header, v64, v65, "[%@] Alt-distributed app cannot be managed at path: %{public}s", v66, 0x16u);
      sub_1000032A8(v67, &qword_10077F920);

      sub_10000710C(v77);
    }

    (*(v82 + 8))(v29, v83);
    sub_10000710C(v88);
    return 0;
  }

  return 1;
}

uint64_t sub_1003ED304(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003ED34C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DDMDeclaration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003ED3B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DDMDeclaration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003ED424(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1003ED43C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1003ED498(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_1003ED4E8(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1003ED52C()
{
  result = qword_100783718;
  if (!qword_100783718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783718);
  }

  return result;
}

unint64_t sub_1003ED584()
{
  result = qword_100783720;
  if (!qword_100783720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783720);
  }

  return result;
}

unint64_t sub_1003ED5D8()
{
  result = qword_100783728;
  if (!qword_100783728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783728);
  }

  return result;
}

uint64_t type metadata accessor for DownloadRequest()
{
  result = qword_100783788;
  if (!qword_100783788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003ED6AC()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v1 <= 0x3F)
    {
      type metadata accessor for LogKey();
      if (v2 <= 0x3F)
      {
        sub_10000585C(319, &qword_100782B10);
        if (v3 <= 0x3F)
        {
          sub_10000585C(319, &qword_100783798);
          if (v4 <= 0x3F)
          {
            sub_1003ED828();
            if (v5 <= 0x3F)
            {
              sub_10000585C(319, &qword_1007819E0);
              if (v6 <= 0x3F)
              {
                sub_1003ED88C();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1003ED828()
{
  if (!qword_1007837A0)
  {
    sub_1001F76D0(&qword_10077E970);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1007837A0);
    }
  }
}

unint64_t sub_1003ED88C()
{
  result = qword_1007837A8;
  if (!qword_1007837A8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1007837A8);
  }

  return result;
}

unint64_t sub_1003ED900(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

__n128 sub_1003ED91C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1003ED940(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 80) >> 60) & 3 | (4 * (*(a1 + 88) >> 1));
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1003ED99C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 104) = 0;
    result = 0.0;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 112) = 1;
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
      result = 0.0;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 80) = (-a2 & 3) << 60;
      *(a1 + 88) = (-a2 >> 1) & 0x7FFFFFFE;
      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      return result;
    }

    *(a1 + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003EDA28(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 88) & 1 | (a2 << 62);
    *(result + 80) &= 0xCFFFFFFFFFFFFFFFLL;
    *(result + 88) = v2;
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 96) = 0;
    *(result + 104) = 0;
    *(result + 88) = 0x8000000000000000;
  }

  return result;
}

Swift::Int sub_1003EDA84()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1003EDB94()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1003EDCA8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1003EDDCC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003EDEF0()
{
  v1[2] = v0;
  v2 = type metadata accessor for NWEndpoint();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  type metadata accessor for NetworkPath();
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_1003EE038, 0, 0);
}

uint64_t sub_1003EE038()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];
  v8 = type metadata accessor for DownloadRequest();
  v0[10] = v8;
  v9 = *(v2 + 16);
  v9(v1, v7 + *(v8 + 24), v4);
  v9(v3, v1, v4);
  (*(v6 + 104))(v3, enum case for NWEndpoint.url(_:), v5);
  type metadata accessor for NWParameters();
  static NWParameters.udp.getter();
  type metadata accessor for NWConnection();
  swift_allocObject();
  v10 = NWConnection.init(to:using:)();
  v0[11] = v10;
  v11 = swift_allocObject();
  v0[12] = v11;
  *(v11 + 16) = 0;
  v12 = swift_task_alloc();
  v0[13] = v12;
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  v13 = swift_task_alloc();
  v0[14] = v13;
  v14 = type metadata accessor for NWPath();
  *v13 = v0;
  v13[1] = sub_1003EE21C;
  v15 = v0[9];

  return withCheckedContinuation<A>(isolation:function:_:)(v15, 0, 0, 0xD000000000000025, 0x80000001006CAE40, sub_1003EED98, v12, v14);
}

uint64_t sub_1003EE21C()
{

  return _swift_task_switch(sub_1003EE334, 0, 0);
}

uint64_t sub_1003EE334()
{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v6 = v0[2];
  NWConnection.forceCancel()();

  (*(v4 + 8))(v3, v5);
  v7 = sub_1001EE010(v1, *(v6 + *(v2 + 28) + 8));
  sub_1001F0CF4(v1);

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_1003EE43C()
{
  String.hash(into:)();
}

unint64_t sub_1003EE550@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003EED4C(*a1);
  *a2 = result;
  return result;
}

void sub_1003EE580(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED000064616F6C6ELL;
  v4 = 0x776F642D6F747561;
  v5 = 0xED00006574616470;
  v6 = 0x752D6C61756E616DLL;
  v7 = 0xEA00000000006461;
  v8 = 0x6F6C6E776F646572;
  if (v2 != 4)
  {
    v8 = 0x65726F74736572;
    v7 = 0xE700000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB00000000657461;
  v10 = 0x6470752D6F747561;
  if (v2 != 1)
  {
    v10 = 7959906;
    v9 = 0xE300000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_1003EE660()
{
  result = qword_100783808;
  if (!qword_100783808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783808);
  }

  return result;
}

Swift::Int sub_1003EE744()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  return Hasher._finalize()();
}

Swift::Int sub_1003EE7B4()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  return Hasher._finalize()();
}

uint64_t sub_1003EE7F4()
{
  sub_100272F00(v0, &v2);
  if (v4 > 1u)
  {
    if (v4 == 2)
    {

      sub_1003EE8A4(&v3);
      return 0x64656C696146;
    }

    else
    {
      return 0x64656873696E6946;
    }
  }

  else if (v4)
  {
    sub_10031DDD4(&v2);
    return 0x64656B726150;
  }

  else
  {
    sub_10031DDD4(&v2);
    return 0x646573756150;
  }
}

uint64_t sub_1003EE8A4(uint64_t a1)
{
  v2 = sub_1001F0C48(&qword_10077E968);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003EE90C(uint64_t a1)
{
  v2 = type metadata accessor for URLError.Code();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  v9 = type metadata accessor for URLError();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  v26 = a1;
  swift_errorRetain();
  sub_1001F0C48(&unk_10077F940);
  if (swift_dynamicCast())
  {
    (*(v10 + 32))(v13, v15, v9);
    sub_1003EEDA0(&qword_100783820, &type metadata accessor for URLError);
    _BridgedStoredNSError.code.getter();
    static URLError.Code.networkConnectionLost.getter();
    sub_1003EEDA0(&qword_100783828, &type metadata accessor for URLError.Code);
    v16 = dispatch thunk of static Equatable.== infix(_:_:)();
    v17 = v3 + 8;
    v18 = *(v3 + 8);
    v25 = v17;
    v18(v6, v2);
    if (v16)
    {

      v18(v8, v2);
      (*(v10 + 8))(v13, v9);
      v19 = 1;
    }

    else
    {
      v24 = v10;
      static URLError.Code.notConnectedToInternet.getter();
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v18(v6, v2);
      if (v21)
      {

        v18(v8, v2);
        (*(v24 + 8))(v13, v9);
        v19 = 2;
      }

      else
      {
        static URLError.Code.timedOut.getter();
        v22 = dispatch thunk of static Equatable.== infix(_:_:)();
        v18(v6, v2);
        v18(v8, v2);
        if (v22)
        {
          (*(v24 + 8))(v13, v9);

          v19 = 3;
        }

        else
        {
          v19 = URLError._nsError.getter();

          (*(v24 + 8))(v13, v9);
        }
      }
    }
  }

  else
  {
    v19 = a1;
  }

  return v19;
}

unint64_t sub_1003EED4C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10075A2D8, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1003EEDA0(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_1003EEDE8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1003EEE14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003EEE5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003EEEC8(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t getEnumTagSinglePayload for HTTPError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for HTTPError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1003EEF70(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

__n128 sub_1003EEF98(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1003EEFBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 73))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 72);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003EEFF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_1003EF048(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 72) = a2;
  return result;
}

uint64_t sub_1003EF088()
{
  v1 = *(v0 + 24);
  if (v1 <= 1)
  {
    if (*(v0 + 24))
    {
      return 0x64656C696166;
    }

    else
    {
      return 0x6574656C706D6F63;
    }
  }

  else if (v1 == 2)
  {
    return 0x73736572676F7270;
  }

  else if (v1 == 3)
  {
    return 0x6C6F686563616C70;
  }

  else
  {
    v3 = *v0;
    if (v0[1] | v0[2] | *v0)
    {
      if (v3 == 1 && *(v0 + 1) == 0)
      {
        return 0x646573756170;
      }

      else if (v3 == 2 && *(v0 + 1) == 0)
      {
        return 0x64656D75736572;
      }

      else
      {
        return 0x697469726F697270;
      }
    }

    else
    {
      return 0x64656C65636E6163;
    }
  }
}

void sub_1003EF1B0()
{
  ObjectType = swift_getObjectType();
  v30 = sub_1001F0C48(&qword_100783A38);
  v1 = *(v30 - 8);
  __chkstk_darwin(v30);
  v3 = &ObjectType - v2;
  v4 = sub_1001F0C48(&unk_100783A00);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &ObjectType - v6;
  v29 = sub_1001F0C48(&qword_1007839F8);
  v8 = *(v29 - 8);
  __chkstk_darwin(v29);
  v10 = &ObjectType - v9;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_1001F6C18(_swiftEmptyArrayStorage);
    v11 = v27;
  }

  else
  {
    v11 = &_swiftEmptySetSingleton;
  }

  v12 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserver_observers;
  sub_1001F0C48(&unk_100783A40);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = v11;
  *&v0[v12] = v13;
  v14 = v30;
  (*(v1 + 104))(v3, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v30);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v1 + 8))(v3, v14);
  (*(v8 + 32))(&v0[OBJC_IVAR____TtC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserver_stream], v10, v29);
  v15 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserver_continuation;
  (*(v5 + 32))(&v0[OBJC_IVAR____TtC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserver_continuation], v7, v4);
  v16 = *(v5 + 16);
  v16(v7, &v0[v15], v4);
  v17 = type metadata accessor for InstallCoordinationInstallObserver.Delegate(0);
  v18 = objc_allocWithZone(v17);
  v16(&v18[OBJC_IVAR____TtCC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserverP33_B8C0BD49E46B9356C2E4FA5F73F7501B8Delegate_continuation], v7, v4);
  v32.receiver = v18;
  v32.super_class = v17;
  v19 = objc_msgSendSuper2(&v32, "init");
  (*(v5 + 8))(v7, v4);
  *&v0[OBJC_IVAR____TtC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserver_delegate] = v19;
  sub_1001F0C48(&qword_10077E640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006A2450;
  v21 = v19;
  *(inited + 32) = UInt._bridgeToObjectiveC()();
  sub_1001F6EE4(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v22 = objc_allocWithZone(IXAppInstallObserver);
  v23 = v21;
  v24 = String._bridgeToObjectiveC()();
  sub_1003F9BE0();
  sub_1003F9C4C(&qword_100783A58, sub_1003F9BE0);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v26 = [v22 initWithMachServiceName:v24 forClients:isa delegate:v23];

  if (v26)
  {
    *&v0[OBJC_IVAR____TtC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserver_installObserver] = v26;
    v31.receiver = v0;
    v31.super_class = ObjectType;
    objc_msgSendSuper2(&v31, "init");
  }

  else
  {
    __break(1u);
  }
}

void sub_1003EF6B4(void *a1)
{
  v2 = v1;
  v4 = sub_1001F0C48(&unk_100783A00);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.restore.getter();
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = v2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v28 = v8;
    v18 = v17;
    *v16 = 138412290;
    *(v16 + 4) = v12;
    *v17 = v12;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "Began observing coordinator: %@", v16, 0xCu);
    sub_1000032A8(v18, &qword_10077F920);
    v8 = v28;

    v2 = v29;
  }

  (*(v9 + 8))(v11, v8);
  v20 = *(v5 + 16);
  v20(v7, v2 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserver_continuation, v4);
  v21 = type metadata accessor for InstallCoordinationInstallObserver.Observer(0);
  v22 = objc_allocWithZone(v21);
  *&v22[OBJC_IVAR____TtCC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserverP33_B8C0BD49E46B9356C2E4FA5F73F7501B8Observer_coordinator] = v12;
  v20(&v22[OBJC_IVAR____TtCC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserverP33_B8C0BD49E46B9356C2E4FA5F73F7501B8Observer_continuation], v7, v4);
  v30.receiver = v22;
  v30.super_class = v21;
  v23 = v12;
  v24 = objc_msgSendSuper2(&v30, "init");
  [v23 setObserver:v24];
  v25 = (*(v5 + 8))(v7, v4);
  v26 = *(v2 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserver_observers);
  __chkstk_darwin(v25);
  *(&v27 - 2) = v24;
  os_unfair_lock_lock(v26 + 6);
  sub_1003F0FE0();
  os_unfair_lock_unlock(v26 + 6);
}

void sub_1003EF9FC(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a1;
  v20 = a2;
  sub_100209E44(sub_1003F9C2C, v19, v8);
  if (v9)
  {
    v10 = v9;
    static Logger.restore.getter();
    v11 = v10;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = *&v11[OBJC_IVAR____TtCC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserverP33_B8C0BD49E46B9356C2E4FA5F73F7501B8Observer_coordinator];
      *(v14 + 4) = v16;
      *v15 = v16;
      v17 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "Stopped observing coordinator: %@", v14, 0xCu);
      sub_1000032A8(v15, &qword_10077F920);
    }

    (*(v5 + 8))(v7, v4);
    v18 = sub_1004FD00C(v11);
  }
}

uint64_t sub_1003EFC04(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(*a1 + OBJC_IVAR____TtCC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserverP33_B8C0BD49E46B9356C2E4FA5F73F7501B8Observer_coordinator) uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  return v7 & 1;
}

void sub_1003EFE3C()
{
  v1 = *v0;
  sub_1001F0C48(&qword_1007839F8);
  AsyncStream.makeAsyncIterator()();
}

uint64_t sub_1003F01A8(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  sub_100323B90(a1, v19);
  if (!v20)
  {
    sub_1000032A8(v19, &qword_100783A30);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v14 = 0;
    return v14 & 1;
  }

  v11 = v18;
  v12 = [*&v18[OBJC_IVAR____TtCC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserverP33_B8C0BD49E46B9356C2E4FA5F73F7501B8Observer_coordinator] uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = [*(v2 + OBJC_IVAR____TtCC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserverP33_B8C0BD49E46B9356C2E4FA5F73F7501B8Observer_coordinator) uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = static UUID.== infix(_:_:)();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v10, v4);
  return v14 & 1;
}

void sub_1003F065C()
{
  sub_100009B90(319, &qword_100783898, &type metadata accessor for AsyncStream.Continuation);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

BOOL sub_1003F088C(void *a1)
{
  v2 = [a1 domain];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if ([a1 code] == 3)
  {
    return 1;
  }

LABEL_10:
  v10 = [a1 domain];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (v11 == 0xD000000000000020 && 0x80000001006CB070 == v13)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v14 & 1) == 0)
    {
      return result;
    }
  }

  return [a1 code] == 1;
}

uint64_t sub_1003F0A98(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_1001F0C48(&unk_100783A20);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - v9;
  v11 = a3;
  v12 = a1;
  v13 = [v11 identity];
  v16[0] = a3;
  v16[1] = v13;
  v16[3] = 0;
  v16[4] = 0;
  v16[2] = a4;
  v17 = 4;
  v14 = v11;
  sub_1001F0C48(&unk_100783A00);
  AsyncStream.Continuation.yield(_:)();

  return (*(v8 + 8))(v10, v7);
}

void sub_1003F0E0C()
{
  sub_100009B90(319, &qword_100783898, &type metadata accessor for AsyncStream.Continuation);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1003F0EB8(uint64_t a1)
{
  if ((*(a1 + 24) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 24) & 7;
  }
}

uint64_t sub_1003F0ED4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1003F0F1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1003F0F7C()
{
  result = qword_1007839E8;
  if (!qword_1007839E8)
  {
    sub_1001F76D0(&qword_1007839F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007839E8);
  }

  return result;
}

uint64_t sub_1003F1030(uint64_t result, uint64_t a2)
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
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v33 = a2 + 56;
  v29 = result + 56;
  v30 = result;
  v28 = v8;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v9 = __clz(__rbit64(v7));
    v31 = (v7 - 1) & v7;
LABEL_13:
    v12 = (*(result + 48) + 32 * (v9 | (v3 << 6)));
    v14 = *v12;
    v13 = v12[1];
    v16 = v12[2];
    v15 = v12[3];
    Hasher.init(_seed:)();

    String.hash(into:)();
    if (v15)
    {
      Hasher._combine(_:)(1u);
      v17 = v16;
      String.hash(into:)();
    }

    else
    {
      v17 = v16;
      Hasher._combine(_:)(0);
    }

    v18 = Hasher._finalize()();
    v19 = -1 << *(v2 + 32);
    v20 = v18 & ~v19;
    if (((*(v33 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
LABEL_36:

      return 0;
    }

    v21 = ~v19;
    v22 = *(a2 + 48);
    while (1)
    {
      v23 = (v22 + 32 * v20);
      v25 = v23[2];
      v24 = v23[3];
      v26 = *v23 == v14 && v23[1] == v13;
      if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_19;
      }

      if (v24)
      {
        break;
      }

      if (!v15)
      {
        goto LABEL_33;
      }

LABEL_19:
      v20 = (v20 + 1) & v21;
      if (((*(v33 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    if (!v15)
    {
      goto LABEL_19;
    }

    v27 = v25 == v17 && v24 == v15;
    if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_33:

    v4 = v29;
    result = v30;
    v7 = v31;
    v2 = a2;
    v8 = v28;
  }

  while (v31);
LABEL_8:
  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v31 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003F12A0(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
      if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_1003F57D4(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_1003F144C(_BYTE *a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  Hasher.init(_seed:)();
  v7 = a2 & 1;
  ManagedAppDeclaration.ManagementScope.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while ((static ManagedAppDeclaration.ManagementScope.== infix(_:_:)() & 1) == 0)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v7) = *(*(v6 + 48) + v10);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_1003F59BC(v7, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v14;
    result = 1;
  }

  *a1 = v7;
  return result;
}

uint64_t sub_1003F155C(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1003F5B14(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1003F16AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *v4;
  Hasher.init(_seed:)();
  v28 = a2;
  v9 = a4 & 1;
  StoreAppIdentifier.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v25 = a4;
    v13 = ~v11;
    while (1)
    {
      v14 = *(v8 + 48) + 24 * v12;
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = *(v14 + 16);
      sub_1001DFDA4(*v14, v16, v17);
      v18 = static StoreAppIdentifier.== infix(_:_:)();
      sub_1001DFEBC(v15, v16, v17);
      if (v18)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1001DFEBC(v28, a3, v25 & 1);
    v21 = *(v8 + 48) + 24 * v12;
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    *a1 = *v21;
    *(a1 + 8) = v23;
    *(a1 + 16) = v24;
    sub_1001DFDA4(v22, v23, v24);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v26;
    sub_1001DFDA4(v28, a3, v9);
    sub_1003F5C94(v28, a3, v9, v12, isUniquelyReferenced_nonNull_native);
    *v26 = v29;
    *a1 = v28;
    *(a1 + 8) = a3;
    *(a1 + 16) = v9;
    return 1;
  }
}

uint64_t sub_1003F1870(Swift::Int *a1, Swift::Int a2, Swift::Int a3, Swift::Int a4, Swift::Int a5)
{
  v10 = *v5;
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (a5)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v11 = Hasher._finalize()();
  v12 = v10 + 56;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_22:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v29;

    sub_1003F5E60(a2, a3, a4, a5, v14, isUniquelyReferenced_nonNull_native);
    *v29 = v31;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }

  v15 = ~v13;
  v28 = v10;
  v16 = *(v10 + 48);
  while (1)
  {
    v17 = (v16 + 32 * v14);
    v19 = v17[2];
    v18 = v17[3];
    v20 = *v17 == a2 && v17[1] == a3;
    if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_7;
    }

    if (v18)
    {
      break;
    }

    if (!a5)
    {
      goto LABEL_21;
    }

LABEL_7:
    v14 = (v14 + 1) & v15;
    if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if (!a5)
  {
    goto LABEL_7;
  }

  v21 = v19 == a4 && v18 == a5;
  if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_21:

  v22 = (*(v28 + 48) + 32 * v14);
  v23 = v22[1];
  v25 = v22[2];
  v24 = v22[3];
  *a1 = *v22;
  a1[1] = v23;
  a1[2] = v25;
  a1[3] = v24;

  return 0;
}

uint64_t sub_1003F1A70(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for MessageRegistration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1003F9C4C(&qword_100783A98, &type metadata accessor for MessageRegistration);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1003F9C4C(&qword_100783AA0, &type metadata accessor for MessageRegistration);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1003F6054(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1003F1D50(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a3 & 1);
  sub_1003F98D4(v20, a2);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_10:
    v13 = a3 & 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20[0] = *v3;

    sub_1003F62F8(v15, v13, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v20[0];
    *a1 = a2;
    *(a1 + 8) = v13;
    return 1;
  }

  v10 = ~v8;
  while (1)
  {
    if (*(*(v6 + 48) + 16 * v9 + 8))
    {
      if ((a3 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if (a3)
    {
      goto LABEL_4;
    }

    v12 = sub_1003F1030(v11, a2);

    if (v12)
    {
      break;
    }

LABEL_4:
    v9 = (v9 + 1) & v10;
    if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v17 = *(v6 + 48) + 16 * v9;
  v18 = *v17;
  LOBYTE(v17) = *(v17 + 8);
  *a1 = v18;
  *(a1 + 8) = v17;

  return 0;
}

uint64_t sub_1003F1EE0(__int128 *a1, __int128 *a2)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  v5 = *a2;
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  v8 = *(a2 + 3);
  v9 = *(a2 + 4);
  v10 = *(a2 + 40);
  String.hash(into:)();
  v49 = v7;
  Hasher._combine(_:)(v7);
  v48 = v8;
  Hasher._combine(_:)(v8);
  v47 = v9;
  Hasher._combine(_:)(v9);
  v40 = a2;
  v12 = *(a2 + 6);
  v11 = *(a2 + 7);
  v42 = v10;
  Hasher._combine(_:)(v10 & 1);
  v45 = v11;
  v46 = v12;
  String.hash(into:)();
  v13 = Hasher._finalize()();
  v14 = -1 << *(v4 + 32);
  v15 = v13 & ~v14;
  v44 = v4 + 56;
  if ((*(v4 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v43 = ~v14;
    v38 = v4;
    v16 = *(v4 + 48);
    while (1)
    {
      v17 = v16 + (v15 << 6);
      v19 = *(v17 + 16);
      v18 = *(v17 + 24);
      v20 = *(v17 + 32);
      v21 = *(v17 + 40);
      v22 = *(v17 + 48);
      v23 = *(v17 + 56);
      v24 = *v17 == v5 && *(v17 + 8) == v6;
      if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v25 = v19 == v49 && v18 == v48;
        v26 = v25 && v20 == v47;
        if (v26 && ((v21 ^ v42) & 1) == 0)
        {
          v27 = v22 == v46 && v23 == v45;
          if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }
        }
      }

      v15 = (v15 + 1) & v43;
      if (((*(v44 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    sub_1001F7250(v40);
    v28 = (*(v38 + 48) + (v15 << 6));
    v29 = *v28;
    v30 = v28[1];
    v31 = v28[3];
    v51[2] = v28[2];
    v51[3] = v31;
    v51[0] = v29;
    v51[1] = v30;
    v32 = v28[1];
    *a1 = *v28;
    a1[1] = v32;
    v33 = v28[3];
    a1[2] = v28[2];
    a1[3] = v33;
    sub_1001F71F4(v51, v50);
    return 0;
  }

  else
  {
LABEL_24:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50[0] = *v39;
    sub_1001F71F4(v40, v51);
    sub_1003F64AC(v40, v15, isUniquelyReferenced_nonNull_native);
    *v39 = v50[0];
    v36 = v40[1];
    *a1 = *v40;
    a1[1] = v36;
    v37 = v40[3];
    a1[2] = v40[2];
    a1[3] = v37;
    return 1;
  }
}

uint64_t sub_1003F2150(_BYTE *a1, Swift::Int a2)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  sub_1005ADE10(a2);
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
LABEL_85:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v20;
    sub_1003F6708(a2, v7, isUniquelyReferenced_nonNull_native);
    *v20 = v22;
    result = 1;
    goto LABEL_88;
  }

  v8 = ~v6;
  while (2)
  {
    v9 = 0xED0000726574656DLL;
    v10 = 0x6F72656C65636361;
    switch(*(*(v4 + 48) + v7))
    {
      case 1:
        v9 = 0xE500000000000000;
        v10 = 0x74696B7261;
        break;
      case 2:
        v9 = 0xE500000000000000;
        v10 = 0x37766D7261;
        break;
      case 3:
        v9 = 0xE500000000000000;
        v10 = 0x34366D7261;
        break;
      case 4:
        v10 = 0x75636F466F747561;
        v9 = 0xEF6172656D614373;
        break;
      case 5:
        v10 = 0x746F6F7465756C62;
        v9 = 0xEB00000000454C68;
        break;
      case 6:
        v10 = 0x6C466172656D6163;
        v9 = 0xEB00000000687361;
        break;
      case 7:
        v10 = 0xD000000000000011;
        v9 = 0x80000001006C2E50;
        break;
      case 8:
        v9 = 0xE700000000000000;
        v10 = 0x74696B656D6167;
        break;
      case 9:
        v10 = 7565415;
        v9 = 0xE300000000000000;
        break;
      case 0xA:
        v10 = 0x706F63736F727967;
        v9 = 0xE900000000000065;
        break;
      case 0xB:
        v10 = 0x696B68746C616568;
        v9 = 0xE900000000000074;
        break;
      case 0xC:
        v10 = 0xD000000000000010;
        v9 = 0x80000001006C2E90;
        break;
      case 0xD:
        v10 = 0x6D6F74656E67616DLL;
        v9 = 0xEC00000072657465;
        break;
      case 0xE:
        v9 = 0xE500000000000000;
        v10 = 0x6C6174656DLL;
        break;
      case 0xF:
        v10 = 0x6F68706F7263696DLL;
        v9 = 0xEA0000000000656ELL;
        break;
      case 0x10:
        v9 = 0xE300000000000000;
        v10 = 6514286;
        break;
      case 0x11:
        v10 = 0x73656C676E65706FLL;
        v9 = 0xE900000000000031;
        break;
      case 0x12:
        v9 = 0xE900000000000032;
        goto LABEL_29;
      case 0x13:
        v9 = 0xE900000000000033;
LABEL_29:
        v10 = 0x73656C676E65706FLL;
        break;
      case 0x14:
        v10 = 0x65506F5472656570;
        v9 = 0xEA00000000007265;
        break;
      case 0x15:
        v9 = 0xE300000000000000;
        v10 = 7564659;
        break;
      case 0x16:
        v11 = 0x436C6C697473;
        goto LABEL_27;
      case 0x17:
        v10 = 0x6E6F6870656C6574;
        v9 = 0xE900000000000079;
        break;
      case 0x18:
        v11 = 0x436F65646976;
LABEL_27:
        v10 = v11 & 0xFFFFFFFFFFFFLL | 0x6D61000000000000;
        v9 = 0xEB00000000617265;
        break;
      case 0x19:
        v9 = 0xE400000000000000;
        v10 = 1768319351;
        break;
      default:
        break;
    }

    v12 = 0x6F72656C65636361;
    v13 = 0xED0000726574656DLL;
    switch(a2)
    {
      case 1:
        v13 = 0xE500000000000000;
        if (v10 == 0x74696B7261)
        {
          goto LABEL_79;
        }

        goto LABEL_80;
      case 2:
        v13 = 0xE500000000000000;
        if (v10 != 0x37766D7261)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      case 3:
        v13 = 0xE500000000000000;
        if (v10 != 0x34366D7261)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      case 4:
        v13 = 0xEF6172656D614373;
        if (v10 != 0x75636F466F747561)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      case 5:
        v15 = 0x746F6F7465756C62;
        v16 = 4541544;
        goto LABEL_75;
      case 6:
        v15 = 0x6C466172656D6163;
        v16 = 6845281;
        goto LABEL_75;
      case 7:
        v13 = 0x80000001006C2E50;
        if (v10 != 0xD000000000000011)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      case 8:
        v13 = 0xE700000000000000;
        if (v10 != 0x74696B656D6167)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      case 9:
        v13 = 0xE300000000000000;
        if (v10 != 7565415)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      case 10:
        v13 = 0xE900000000000065;
        if (v10 != 0x706F63736F727967)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      case 11:
        v13 = 0xE900000000000074;
        if (v10 != 0x696B68746C616568)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      case 12:
        v13 = 0x80000001006C2E90;
        if (v10 != 0xD000000000000010)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      case 13:
        v13 = 0xEC00000072657465;
        if (v10 != 0x6D6F74656E67616DLL)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      case 14:
        v13 = 0xE500000000000000;
        if (v10 != 0x6C6174656DLL)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      case 15:
        v13 = 0xEA0000000000656ELL;
        if (v10 != 0x6F68706F7263696DLL)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      case 16:
        v13 = 0xE300000000000000;
        if (v10 != 6514286)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      case 17:
        v13 = 0xE900000000000031;
        if (v10 != 0x73656C676E65706FLL)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      case 18:
        v13 = 0xE900000000000032;
        if (v10 != 0x73656C676E65706FLL)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      case 19:
        v13 = 0xE900000000000033;
        v12 = 0x73656C676E65706FLL;
        goto LABEL_78;
      case 20:
        v13 = 0xEA00000000007265;
        if (v10 != 0x65506F5472656570)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      case 21:
        v13 = 0xE300000000000000;
        if (v10 != 7564659)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      case 22:
        v14 = 0x436C6C697473;
        goto LABEL_74;
      case 23:
        v13 = 0xE900000000000079;
        if (v10 != 0x6E6F6870656C6574)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      case 24:
        v14 = 0x436F65646976;
LABEL_74:
        v15 = v14 & 0xFFFFFFFFFFFFLL | 0x6D61000000000000;
        v16 = 6386277;
LABEL_75:
        v13 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v10 != v15)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      case 25:
        v13 = 0xE400000000000000;
        if (v10 != 1768319351)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      default:
LABEL_78:
        if (v10 != v12)
        {
          goto LABEL_80;
        }

LABEL_79:
        if (v9 != v13)
        {
LABEL_80:
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v17)
          {
            goto LABEL_87;
          }

          v7 = (v7 + 1) & v8;
          if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
          {
            goto LABEL_85;
          }

          continue;
        }

LABEL_87:
        result = 0;
        LOBYTE(a2) = *(*(v4 + 48) + v7);
LABEL_88:
        *a1 = a2;
        return result;
    }
  }
}

uint64_t sub_1003F28DC(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for InstallCoordinationInstallObserver.Observer(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1003F3178(v7, result + 1);
    if (v19[3] <= v19[2])
    {
      sub_1003F4A7C();
    }

    v18 = v8;
    sub_1003F5750(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for InstallCoordinationInstallObserver.Observer(0);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_1003F6ED8(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

uint64_t sub_1003F2AF4(Swift::UInt *a1, Swift::UInt a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1003F7038(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1003F2BF0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1003F9C4C(&qword_100781FF8, &type metadata accessor for UUID);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1003F9C4C(&qword_100783AC0, &type metadata accessor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1003F7184(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1003F2ED0(uint64_t a1, Swift::UInt64 *a2)
{
  v22 = a1;
  v4 = type metadata accessor for DownloadRequest();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  Hasher.init(_seed:)();
  v21 = a2;
  v9 = *a2;
  Hasher._combine(_:)(*a2);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v5 + 72);
    while (1)
    {
      sub_10031DF08(*(v8 + 48) + v14 * v12, v7);
      v15 = *v7;
      sub_100272F5C(v7);
      if (v15 == v9)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_100272F5C(v21);
    sub_10031DF08(*(v8 + 48) + v14 * v12, v22);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v21;
    sub_10031DF08(v21, v7);
    v23 = *v2;
    sub_1003F7428(v7, v12, isUniquelyReferenced_nonNull_native);
    v18 = v22;
    *v2 = v23;
    sub_100273394(v17, v18);
    return 1;
  }
}

uint64_t sub_1003F3098(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = static Hasher._hash(seed:_:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1003F763C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

Swift::Int sub_1003F3178(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1001F0C48(&unk_100783A10);
    v2 = static _SetStorage.convert(_:capacity:)();
    v14 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for InstallCoordinationInstallObserver.Observer(0);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1003F4A7C();
        }

        v2 = v14;
        result = NSObject._rawHashValue(seed:)(*(v14 + 40));
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_1003F3358()
{
  v1 = v0;
  v2 = *v0;
  sub_1001F0C48(&qword_10077E928);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v17 = Hasher._finalize()();

      v18 = -1 << *(v4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero(v6, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v26;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1003F35D4()
{
  v1 = v0;
  v2 = *v0;
  sub_1001F0C48(&unk_100783A70);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      ManagedAppDeclaration.ManagementScope.hash(into:)();
      result = Hasher._finalize()();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1003F3824()
{
  v1 = v0;
  v2 = *v0;
  sub_1001F0C48(&qword_100783A60);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1003F3A84()
{
  v1 = v0;
  v2 = *v0;
  sub_1001F0C48(&qword_100783A68);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v29 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 24 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      Hasher.init(_seed:)();
      StoreAppIdentifier.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 24 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
      ++*(v4 + 16);
      v2 = v29;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v2 + 32);
    if (v28 >= 64)
    {
      bzero(v6, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v28;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1003F3CFC()
{
  v1 = v0;
  v2 = *v0;
  sub_1001F0C48(&qword_10077E940);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v31 = v0;
    v32 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 32 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      v21 = v17[3];
      Hasher.init(_seed:)();
      v33 = v19;
      String.hash(into:)();
      if (v21)
      {
        Hasher._combine(_:)(1u);
        v22 = v20;
        String.hash(into:)();
      }

      else
      {
        v22 = v20;
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v23 = -1 << *(v4 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v11 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v11 + 8 * v25);
          if (v29 != -1)
          {
            v12 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v24) & ~*(v11 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 32 * v12);
      *v13 = v18;
      v13[1] = v33;
      v13[2] = v22;
      v13[3] = v21;
      ++*(v4 + 16);
      v2 = v32;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v2 + 32);
    if (v30 >= 64)
    {
      bzero(v6, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v30;
    }

    v1 = v31;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1003F3FA8()
{
  v1 = v0;
  v35 = type metadata accessor for MessageRegistration();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1001F0C48(&qword_100783AA8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1003F9C4C(&qword_100783A98, &type metadata accessor for MessageRegistration);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

unint64_t sub_1003F4304()
{
  v1 = v0;
  v2 = *v0;
  sub_1001F0C48(&qword_100783A90);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    for (i = result + 56; v9; ++*(v4 + 16))
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v15 = *(v2 + 48) + 16 * (v12 | (v5 << 6));
      v16 = *v15;
      v17 = *(v15 + 8);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      sub_1003F98D4(v20, v16);
      Hasher._finalize()();
      result = _HashTable.nextHole(atOrAfter:)();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v18 = *(v4 + 48) + 16 * result;
      *v18 = v16;
      *(v18 + 8) = v17;
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v19 = 1 << *(v2 + 32);
    if (v19 >= 64)
    {
      bzero((v2 + 56), ((v19 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v19;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

Swift::Int sub_1003F4504()
{
  v1 = v0;
  v2 = *v0;
  sub_1001F0C48(&qword_10077E948);
  v3 = static _SetStorage.resize(original:capacity:move:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v37 = (v2 + 56);
    v38 = v2;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v35 = v0;
    v36 = (v6 + 63) >> 6;
    v9 = v3 + 56;
    v39 = v3;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v40 = (v8 - 1) & v8;
LABEL_15:
      v16 = *(v2 + 48) + ((v12 | (v5 << 6)) << 6);
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = *(v16 + 16);
      v20 = *(v16 + 24);
      v21 = *(v16 + 32);
      v22 = *(v16 + 40);
      *v41 = *(v16 + 41);
      *&v41[3] = *(v16 + 44);
      v23 = *(v16 + 48);
      v24 = *(v16 + 56);
      Hasher.init(_seed:)();
      String.hash(into:)();
      Hasher._combine(_:)(v19);
      Hasher._combine(_:)(v20);
      Hasher._combine(_:)(v21);
      Hasher._combine(_:)(v22 & 1);
      String.hash(into:)();
      result = Hasher._finalize()();
      v4 = v39;
      v25 = -1 << *(v39 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v9 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v9 + 8 * v27);
          if (v31 != -1)
          {
            v10 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v10 = __clz(__rbit64((-1 << v26) & ~*(v9 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v9 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      v11 = *(v39 + 48) + (v10 << 6);
      *v11 = v17;
      *(v11 + 8) = v18;
      *(v11 + 16) = v19;
      *(v11 + 24) = v20;
      *(v11 + 32) = v21;
      *(v11 + 40) = v22;
      *(v11 + 41) = *v41;
      *(v11 + 44) = *&v41[3];
      *(v11 + 48) = v23;
      *(v11 + 56) = v24;
      ++*(v39 + 16);
      v2 = v38;
      v8 = v40;
    }

    v13 = v5;
    result = v37;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v36)
      {
        break;
      }

      v15 = v37[v5];
      ++v13;
      if (v15)
      {
        v12 = __clz(__rbit64(v15));
        v40 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v32 = 1 << *(v2 + 32);
    if (v32 >= 64)
    {
      v33 = v4;
      bzero(v37, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      v4 = v33;
    }

    else
    {
      *v37 = -1 << v32;
    }

    v1 = v35;
    *(v2 + 16) = 0;
  }

  v34 = v4;

  *v1 = v34;
  return result;
}

uint64_t sub_1003F4810()
{
  v1 = v0;
  v2 = *v0;
  sub_1001F0C48(&unk_100783A80);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      sub_1005ADE10(v16);
      String.hash(into:)();

      result = Hasher._finalize()();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1003F4A7C()
{
  v1 = v0;
  v2 = *v0;
  sub_1001F0C48(&unk_100783A10);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v4 + 40));
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1003F4CA4()
{
  v1 = v0;
  v2 = *v0;
  sub_1001F0C48(&qword_100783AB0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      result = Hasher._finalize()();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1003F4EF4()
{
  v1 = v0;
  v35 = type metadata accessor for UUID();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1001F0C48(&qword_100783AC8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1003F9C4C(&qword_100781FF8, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1003F5250()
{
  v1 = v0;
  v2 = type metadata accessor for DownloadRequest();
  v30 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *v0;
  sub_1001F0C48(&unk_100783AD0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v30 + 72);
      sub_100273394(*(v5 + 48) + v19 * (v16 | (v8 << 6)), v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(*v4);
      result = Hasher._finalize()();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_100273394(v4, *(v7 + 48) + v15 * v19);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v1 = v29;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_1003F552C()
{
  v1 = v0;
  v2 = *v0;
  sub_1001F0C48(&qword_100783AB8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = static Hasher._hash(seed:_:)();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1003F5750(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

uint64_t sub_1003F57D4(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_1003F3358();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1004FB868();
      goto LABEL_16;
    }

    sub_1003F775C();
  }

  v9 = *v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v10 = Hasher._finalize()();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for URLResourceKey(0);
    do
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
      if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_1003F59BC(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1003F35D4();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1004FB9B8();
      goto LABEL_12;
    }

    sub_1003F79B0();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  ManagedAppDeclaration.ManagementScope.hash(into:)();
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      result = static ManagedAppDeclaration.ManagementScope.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v5 & 1;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_1003F5B14(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1003F3824();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1004FBAF8();
      goto LABEL_16;
    }

    sub_1003F7BD0();
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_1003F5C94(Swift::Int result, uint64_t a2, char a3, unint64_t a4, char a5)
{
  v8 = result;
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a5 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a5)
  {
    sub_1003F3A84();
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_1004FBC54();
      goto LABEL_12;
    }

    sub_1003F7E08();
  }

  v11 = *v5;
  Hasher.init(_seed:)();
  StoreAppIdentifier.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v11 + 32);
  a4 = result & ~v12;
  if ((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v13 = ~v12;
    do
    {
      v14 = *(v11 + 48) + 24 * a4;
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = *(v14 + 16);
      sub_1001DFDA4(*v14, v16, v17);
      v18 = static StoreAppIdentifier.== infix(_:_:)();
      result = sub_1001DFEBC(v15, v16, v17);
      if (v18)
      {
        goto LABEL_15;
      }

      a4 = (a4 + 1) & v13;
    }

    while (((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_12:
  v19 = *v24;
  *(*v24 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v20 = *(v19 + 48) + 24 * a4;
  *v20 = v8;
  *(v20 + 8) = a2;
  *(v20 + 16) = a3 & 1;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v19 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_1003F5E60(Swift::Int result, Swift::Int a2, Swift::Int a3, Swift::Int a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_28;
  }

  if (a6)
  {
    sub_1003F3CFC();
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_1004FBDBC();
      goto LABEL_28;
    }

    sub_1003F8060();
  }

  v14 = *v6;
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (a4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  result = Hasher._finalize()();
  v15 = v14 + 56;
  v16 = -1 << *(v14 + 32);
  a5 = result & ~v16;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v17 = ~v16;
    v18 = *(v14 + 48);
    do
    {
      v19 = (v18 + 32 * a5);
      result = *v19;
      v21 = v19[2];
      v20 = v19[3];
      v22 = *v19 == v11 && v19[1] == a2;
      if (v22 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        if (v20)
        {
          if (a4)
          {
            v23 = v21 == a3 && v20 == a4;
            if (v23 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
            {
LABEL_27:
              result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              break;
            }
          }
        }

        else if (!a4)
        {
          goto LABEL_27;
        }
      }

      a5 = (a5 + 1) & v17;
    }

    while (((*(v15 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_28:
  v24 = *v29;
  *(*v29 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v25 = (*(v24 + 48) + 32 * a5);
  *v25 = v11;
  v25[1] = a2;
  v25[2] = a3;
  v25[3] = a4;
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v28;
  }

  return result;
}

uint64_t sub_1003F6054(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for MessageRegistration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1003F3FA8();
  }

  else
  {
    if (v11 > v10)
    {
      sub_1004FBF28();
      goto LABEL_12;
    }

    sub_1003F82FC();
  }

  v12 = *v3;
  sub_1003F9C4C(&qword_100783A98, &type metadata accessor for MessageRegistration);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1003F9C4C(&qword_100783AA0, &type metadata accessor for MessageRegistration);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_1003F62F8(Swift::Int result, char a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1003F4304();
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_1004FBF50();
        goto LABEL_17;
      }

      sub_1003F8618();
    }

    v10 = *v4;
    Hasher.init(_seed:)();
    Hasher._combine(_:)(a2 & 1);
    sub_1003F98D4(v20, v7);
    result = Hasher._finalize()();
    v11 = -1 << *(v10 + 32);
    a3 = result & ~v11;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v12 = ~v11;
      do
      {
        if (*(*(v10 + 48) + 16 * a3 + 8))
        {
          if (a2)
          {
            goto LABEL_10;
          }
        }

        else if ((a2 & 1) == 0)
        {
LABEL_10:

          v14 = sub_1003F1030(v13, v7);

          if (v14)
          {
            goto LABEL_20;
          }
        }

        a3 = (a3 + 1) & v12;
      }

      while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_17:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = *(v15 + 48) + 16 * a3;
  *v16 = v7;
  *(v16 + 8) = a2 & 1;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
LABEL_20:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v15 + 16) = v19;
  }

  return result;
}

Swift::Int sub_1003F64AC(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v38 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_31;
  }

  if (a3)
  {
    sub_1003F4504();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1004FC0B4();
      goto LABEL_31;
    }

    sub_1003F87E0();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  v9 = *(v5 + 8);
  v10 = *(v5 + 16);
  v11 = *(v5 + 24);
  v12 = *(v5 + 32);
  v13 = *(v5 + 40);
  v46 = *v5;
  String.hash(into:)();
  v42 = v10;
  Hasher._combine(_:)(v10);
  v41 = v11;
  Hasher._combine(_:)(v11);
  v40 = v12;
  Hasher._combine(_:)(v12);
  v15 = *(v5 + 48);
  v14 = *(v5 + 56);
  v39 = v13;
  Hasher._combine(_:)(v13 & 1);
  v44 = v14;
  v45 = v15;
  String.hash(into:)();
  result = Hasher._finalize()();
  v16 = -1 << *(v8 + 32);
  a2 = result & ~v16;
  v43 = v8 + 56;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v18 = *(v8 + 48);
    while (1)
    {
      v19 = v18 + (a2 << 6);
      result = *v19;
      v20 = *(v19 + 16);
      v21 = *(v19 + 24);
      v22 = *(v19 + 32);
      v23 = *(v19 + 40);
      v25 = *(v19 + 48);
      v24 = *(v19 + 56);
      v26 = *v19 == v46 && *(v19 + 8) == v9;
      if (v26 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        v27 = v20 == v42 && v21 == v41;
        v28 = v27 && v22 == v40;
        if (v28 && ((v23 ^ v39) & 1) == 0)
        {
          if (v25 == v45 && v24 == v44)
          {
            break;
          }

          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if (result)
          {
            break;
          }
        }
      }

      a2 = (a2 + 1) & v17;
      if (((*(v43 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

LABEL_31:
  v30 = *v37;
  *(*v37 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v31 = (*(v30 + 48) + (a2 << 6));
  v32 = v38[1];
  *v31 = *v38;
  v31[1] = v32;
  v33 = v38[3];
  v31[2] = v38[2];
  v31[3] = v33;
  v34 = *(v30 + 16);
  v35 = __OFADD__(v34, 1);
  v36 = v34 + 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v30 + 16) = v36;
  }

  return result;
}

Swift::Int sub_1003F6708(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1003F4810();
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_1004FC238();
        goto LABEL_92;
      }

      sub_1003F8AAC();
    }

    v8 = *v3;
    Hasher.init(_seed:)();
    sub_1005ADE10(v5);
    String.hash(into:)();

    result = Hasher._finalize()();
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v10 = ~v9;
      while (2)
      {
        v11 = 0xED0000726574656DLL;
        v12 = 0x6F72656C65636361;
        switch(*(*(v8 + 48) + a2))
        {
          case 1:
            v11 = 0xE500000000000000;
            v12 = 0x74696B7261;
            break;
          case 2:
            v11 = 0xE500000000000000;
            v12 = 0x37766D7261;
            break;
          case 3:
            v11 = 0xE500000000000000;
            v12 = 0x34366D7261;
            break;
          case 4:
            v12 = 0x75636F466F747561;
            v11 = 0xEF6172656D614373;
            break;
          case 5:
            v12 = 0x746F6F7465756C62;
            v11 = 0xEB00000000454C68;
            break;
          case 6:
            v12 = 0x6C466172656D6163;
            v11 = 0xEB00000000687361;
            break;
          case 7:
            v12 = 0xD000000000000011;
            v11 = 0x80000001006C2E50;
            break;
          case 8:
            v11 = 0xE700000000000000;
            v12 = 0x74696B656D6167;
            break;
          case 9:
            v12 = 7565415;
            v11 = 0xE300000000000000;
            break;
          case 0xA:
            v11 = 0xE900000000000065;
            v12 = 0x706F63736F727967;
            break;
          case 0xB:
            v11 = 0xE900000000000074;
            v12 = 0x696B68746C616568;
            break;
          case 0xC:
            v12 = 0xD000000000000010;
            v11 = 0x80000001006C2E90;
            break;
          case 0xD:
            v12 = 0x6D6F74656E67616DLL;
            v11 = 0xEC00000072657465;
            break;
          case 0xE:
            v11 = 0xE500000000000000;
            v12 = 0x6C6174656DLL;
            break;
          case 0xF:
            v12 = 0x6F68706F7263696DLL;
            v11 = 0xEA0000000000656ELL;
            break;
          case 0x10:
            v11 = 0xE300000000000000;
            v12 = 6514286;
            break;
          case 0x11:
            v12 = 0x73656C676E65706FLL;
            v11 = 0xE900000000000031;
            break;
          case 0x12:
            v11 = 0xE900000000000032;
            goto LABEL_36;
          case 0x13:
            v11 = 0xE900000000000033;
LABEL_36:
            v12 = 0x73656C676E65706FLL;
            break;
          case 0x14:
            v11 = 0xEA00000000007265;
            v12 = 0x65506F5472656570;
            break;
          case 0x15:
            v11 = 0xE300000000000000;
            v12 = 7564659;
            break;
          case 0x16:
            v13 = 0x436C6C697473;
            goto LABEL_34;
          case 0x17:
            v11 = 0xE900000000000079;
            v12 = 0x6E6F6870656C6574;
            break;
          case 0x18:
            v13 = 0x436F65646976;
LABEL_34:
            v12 = v13 & 0xFFFFFFFFFFFFLL | 0x6D61000000000000;
            v11 = 0xEB00000000617265;
            break;
          case 0x19:
            v11 = 0xE400000000000000;
            v12 = 1768319351;
            break;
          default:
            break;
        }

        v14 = 0x6F72656C65636361;
        v15 = 0xED0000726574656DLL;
        switch(v5)
        {
          case 1:
            v15 = 0xE500000000000000;
            if (v12 == 0x74696B7261)
            {
              goto LABEL_86;
            }

            goto LABEL_87;
          case 2:
            v15 = 0xE500000000000000;
            if (v12 != 0x37766D7261)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          case 3:
            v15 = 0xE500000000000000;
            if (v12 != 0x34366D7261)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          case 4:
            v15 = 0xEF6172656D614373;
            if (v12 != 0x75636F466F747561)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          case 5:
            v17 = 0x746F6F7465756C62;
            v18 = 4541544;
            goto LABEL_82;
          case 6:
            v17 = 0x6C466172656D6163;
            v18 = 6845281;
            goto LABEL_82;
          case 7:
            v15 = 0x80000001006C2E50;
            if (v12 != 0xD000000000000011)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          case 8:
            v15 = 0xE700000000000000;
            if (v12 != 0x74696B656D6167)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          case 9:
            v15 = 0xE300000000000000;
            if (v12 != 7565415)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          case 10:
            v15 = 0xE900000000000065;
            if (v12 != 0x706F63736F727967)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          case 11:
            v15 = 0xE900000000000074;
            if (v12 != 0x696B68746C616568)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          case 12:
            v15 = 0x80000001006C2E90;
            if (v12 != 0xD000000000000010)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          case 13:
            v15 = 0xEC00000072657465;
            if (v12 != 0x6D6F74656E67616DLL)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          case 14:
            v15 = 0xE500000000000000;
            if (v12 != 0x6C6174656DLL)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          case 15:
            v15 = 0xEA0000000000656ELL;
            if (v12 != 0x6F68706F7263696DLL)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          case 16:
            v15 = 0xE300000000000000;
            if (v12 != 6514286)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          case 17:
            v15 = 0xE900000000000031;
            if (v12 != 0x73656C676E65706FLL)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          case 18:
            v15 = 0xE900000000000032;
            if (v12 != 0x73656C676E65706FLL)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          case 19:
            v15 = 0xE900000000000033;
            v14 = 0x73656C676E65706FLL;
            goto LABEL_85;
          case 20:
            v15 = 0xEA00000000007265;
            if (v12 != 0x65506F5472656570)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          case 21:
            v15 = 0xE300000000000000;
            if (v12 != 7564659)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          case 22:
            v16 = 0x436C6C697473;
            goto LABEL_81;
          case 23:
            v15 = 0xE900000000000079;
            if (v12 != 0x6E6F6870656C6574)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          case 24:
            v16 = 0x436F65646976;
LABEL_81:
            v17 = v16 & 0xFFFFFFFFFFFFLL | 0x6D61000000000000;
            v18 = 6386277;
LABEL_82:
            v15 = v18 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            if (v12 != v17)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          case 25:
            v15 = 0xE400000000000000;
            if (v12 != 1768319351)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          default:
LABEL_85:
            if (v12 != v14)
            {
              goto LABEL_87;
            }

LABEL_86:
            if (v11 == v15)
            {
              goto LABEL_95;
            }

LABEL_87:
            v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v19)
            {
              goto LABEL_96;
            }

            a2 = (a2 + 1) & v10;
            if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_92:
  v20 = *v24;
  *(*v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + a2) = v5;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_95:

LABEL_96:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v23;
  }

  return result;
}

void sub_1003F6ED8(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1003F4A7C();
  }

  else
  {
    if (v7 > v6)
    {
      sub_1004FC378();
      goto LABEL_12;
    }

    sub_1003F8CE8();
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for InstallCoordinationInstallObserver.Observer(0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Int sub_1003F7038(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1003F4CA4();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1004FC4C8();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1003F8EFC();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1003F7184(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1003F4EF4();
  }

  else
  {
    if (v11 > v10)
    {
      sub_1004FC608();
      goto LABEL_12;
    }

    sub_1003F911C();
  }

  v12 = *v3;
  sub_1003F9C4C(&qword_100781FF8, &type metadata accessor for UUID);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1003F9C4C(&qword_100783AC0, &type metadata accessor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1003F7428(Swift::UInt64 *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for DownloadRequest();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  v30 = a1;
  if (v14 > v13 && (a3 & 1) != 0)
  {
LABEL_13:
    v15 = v9;
    goto LABEL_14;
  }

  if (a3)
  {
    v29 = v10;
    sub_1003F5250();
    goto LABEL_8;
  }

  if (v14 <= v13)
  {
    v29 = v10;
    sub_1003F9438();
LABEL_8:
    v16 = *v4;
    Hasher.init(_seed:)();
    v17 = *a1;
    Hasher._combine(_:)(*a1);
    v18 = Hasher._finalize()();
    v19 = -1 << *(v16 + 32);
    a2 = v18 & ~v19;
    if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v20 = ~v19;
      v15 = v9;
      v21 = *(v9 + 72);
      while (1)
      {
        sub_10031DF08(*(v16 + 48) + v21 * a2, v12);
        v22 = *v12;
        sub_100272F5C(v12);
        if (v22 == v17)
        {
          goto LABEL_17;
        }

        a2 = (a2 + 1) & v20;
        if (((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    goto LABEL_13;
  }

  v15 = v9;
  sub_1004FC868();
LABEL_14:
  v23 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100273394(v30, *(v23 + 48) + *(v15 + 72) * a2);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_17:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1003F763C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1003F552C();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1004FCA60();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1003F96E4();
  }

  v8 = *v3;
  result = static Hasher._hash(seed:_:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1003F775C()
{
  v1 = v0;
  v2 = *v0;
  sub_1001F0C48(&qword_10077E928);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v17 = v16;
      String.hash(into:)();
      v18 = Hasher._finalize()();

      v19 = -1 << *(v4 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v17;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v26;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1003F79B0()
{
  v1 = v0;
  v2 = *v0;
  sub_1001F0C48(&unk_100783A70);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      Hasher.init(_seed:)();
      ManagedAppDeclaration.ManagementScope.hash(into:)();
      result = Hasher._finalize()();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1003F7BD0()
{
  v1 = v0;
  v2 = *v0;
  sub_1001F0C48(&qword_100783A60);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1003F7E08()
{
  v1 = v0;
  v2 = *v0;
  sub_1001F0C48(&qword_100783A68);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v28 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 24 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      Hasher.init(_seed:)();
      sub_1001DFDA4(v18, v19, v20);
      StoreAppIdentifier.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 24 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
      ++*(v4 + 16);
      v2 = v28;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v16 = *(v6 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1003F8060()
{
  v1 = v0;
  v2 = *v0;
  sub_1001F0C48(&qword_10077E940);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v30 = v1;
    v31 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v33 = (v9 - 1) & v9;
LABEL_15:
      v17 = (*(v2 + 48) + 32 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      v21 = v17[3];
      Hasher.init(_seed:)();

      v32 = v18;
      String.hash(into:)();
      if (v21)
      {
        Hasher._combine(_:)(1u);
        v22 = v20;
        String.hash(into:)();
      }

      else
      {
        v22 = v20;
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v23 = -1 << *(v4 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v11 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v11 + 8 * v25);
          if (v29 != -1)
          {
            v12 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v24) & ~*(v11 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 32 * v12);
      v2 = v31;
      *v13 = v32;
      v13[1] = v19;
      v13[2] = v22;
      v13[3] = v21;
      ++*(v4 + 16);
      v9 = v33;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v30;
        goto LABEL_29;
      }

      v16 = *(v6 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v33 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1003F82FC()
{
  v1 = v0;
  v32 = type metadata accessor for MessageRegistration();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1001F0C48(&qword_100783AA8);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1003F9C4C(&qword_100783A98, &type metadata accessor for MessageRegistration);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

unint64_t sub_1003F8618()
{
  v1 = *v0;
  sub_1001F0C48(&qword_100783A90);
  result = static _SetStorage.resize(original:capacity:move:)();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v1 + 56);
    v8 = (v5 + 63) >> 6;
    for (i = result + 56; v7; ++*(v3 + 16))
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v13 = *(v1 + 48) + 16 * (v10 | (v4 << 6));
      v14 = *v13;
      v15 = *(v13 + 8);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v15);

      sub_1003F98D4(v18, v14);
      Hasher._finalize()();
      result = _HashTable.nextHole(atOrAfter:)();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v16 = *(v3 + 48) + 16 * result;
      *v16 = v14;
      *(v16 + 8) = v15;
    }

    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        goto LABEL_14;
      }

      v12 = *(v1 + 56 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    *v17 = v3;
  }

  return result;
}

uint64_t sub_1003F87E0()
{
  v1 = v0;
  v2 = *v0;
  sub_1001F0C48(&qword_10077E948);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v34 = v1;
    v35 = result;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    v36 = v2;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v37 = (v9 - 1) & v9;
LABEL_15:
      v20 = (*(v2 + 48) + ((v17 | (v5 << 6)) << 6));
      v22 = *v20;
      v21 = v20[1];
      v23 = v20[3];
      v41 = v20[2];
      v42 = v23;
      v39 = v22;
      v40 = v21;
      Hasher.init(_seed:)();
      v24 = v40;
      v25 = v41;
      v26 = BYTE8(v41);
      sub_1001F71F4(&v39, v38);
      String.hash(into:)();
      Hasher._combine(_:)(v24);
      Hasher._combine(_:)(*(&v24 + 1));
      Hasher._combine(_:)(v25);
      Hasher._combine(_:)(v26);
      String.hash(into:)();
      result = Hasher._finalize()();
      v4 = v35;
      v27 = -1 << *(v35 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v11 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v2 = v36;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v11 + 8 * v29);
          if (v33 != -1)
          {
            v12 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v28) & ~*(v11 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v2 = v36;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v35 + 48) + (v12 << 6));
      v14 = v39;
      v15 = v40;
      v16 = v42;
      v13[2] = v41;
      v13[3] = v16;
      *v13 = v14;
      v13[1] = v15;
      ++*(v35 + 16);
      v9 = v37;
    }

    v18 = v5;
    while (1)
    {
      v5 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v34;
        goto LABEL_26;
      }

      v19 = *(v6 + 8 * v5);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v37 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1003F8AAC()
{
  v1 = v0;
  v2 = *v0;
  sub_1001F0C48(&unk_100783A80);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      Hasher.init(_seed:)();
      sub_1005ADE10(v15);
      String.hash(into:)();

      result = Hasher._finalize()();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1003F8CE8()
{
  v1 = v0;
  v2 = *v0;
  sub_1001F0C48(&unk_100783A10);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v24 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(v4 + 40);
      v16 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = NSObject._rawHashValue(seed:)(v15);
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v10 + 8 * v19);
          if (v23 != -1)
          {
            v11 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v16;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v24;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1003F8EFC()
{
  v1 = v0;
  v2 = *v0;
  sub_1001F0C48(&qword_100783AB0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v15);
      result = Hasher._finalize()();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1003F911C()
{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1001F0C48(&qword_100783AC8);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1003F9C4C(&qword_100781FF8, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1003F9438()
{
  v1 = v0;
  v2 = type metadata accessor for DownloadRequest();
  v28 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = (&v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *v0;
  sub_1001F0C48(&unk_100783AD0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v28 + 72);
      sub_10031DF08(*(v5 + 48) + v18 * (v15 | (v8 << 6)), v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(*v4);
      result = Hasher._finalize()();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = sub_100273394(v4, *(v7 + 48) + v14 * v18);
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_1003F96E4()
{
  v1 = v0;
  v2 = *v0;
  sub_1001F0C48(&qword_100783AB8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = static Hasher._hash(seed:_:)();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

void sub_1003F98D4(uint64_t a1, uint64_t a2)
{
  Hasher._finalize()();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  while (v5)
  {
LABEL_11:
    v11 = *(*(a2 + 48) + ((v8 << 11) | (32 * __clz(__rbit64(v5)))) + 24);
    Hasher.init(_seed:)();

    String.hash(into:)();
    if (v11)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v5 &= v5 - 1;
    v9 = Hasher._finalize()();

    v7 ^= v9;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      Hasher._combine(_:)(v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1003F9A64(void *a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&unk_100783A20);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - v6;
  v8 = _convertErrorToNSError(_:)();
  v9 = sub_1003F088C(v8);

  v10 = [a1 identity];
  v14[0] = a1;
  v14[1] = v10;
  v16 = 0;
  v17 = 0;
  if (v9)
  {
    v15 = 0;
    v18 = 4;
    v11 = a1;
  }

  else
  {
    v15 = a2;
    v18 = 1;
    v12 = a1;
    swift_errorRetain();
  }

  sub_1001F0C48(&unk_100783A00);
  AsyncStream.Continuation.yield(_:)();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1003F9BE0()
{
  result = qword_100783A50;
  if (!qword_100783A50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100783A50);
  }

  return result;
}

uint64_t sub_1003F9C4C(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_1003F9C94(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1003F9CA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 25))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 24);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1003F9CF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1003F9D38(uint64_t result, unsigned int a2)
{
  v2 = a2 - 4;
  if (a2 >= 4)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_1003F9D68(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v13 = v8;
    v9 = a1(&v13);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_1003F9E84(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for DownloadRequest() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_1003F9F70(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1003FA05C;

  return v5();
}

uint64_t sub_1003FA05C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

void sub_1003FA170(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100006D8C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_1001F0C48(&qword_10077EC98);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (a2)
    {
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_1001F0C48(&qword_10077EC98);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1003FA244(uint64_t a1)
{
  v2[94] = v1;
  v2[93] = a1;
  type metadata accessor for MediaAPIMetadata();
  v2[95] = swift_task_alloc();
  sub_1001F0C48(&qword_100783C38);
  v2[96] = swift_task_alloc();
  v3 = type metadata accessor for ADPPreflightResultingMetadata(0);
  v2[97] = v3;
  v2[98] = *(v3 - 8);
  v2[99] = swift_task_alloc();
  v2[100] = type metadata accessor for ADPPreflightTask(0);
  v2[101] = swift_task_alloc();
  sub_1001F0C48(&qword_100783C40);
  v2[102] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809D0);
  v2[103] = swift_task_alloc();
  v4 = type metadata accessor for ProgressCache.Progress();
  v2[104] = v4;
  v2[105] = *(v4 - 8);
  v2[106] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[107] = v5;
  v2[108] = *(v5 - 8);
  v2[109] = swift_task_alloc();
  v2[110] = swift_task_alloc();
  v2[111] = swift_task_alloc();
  v2[112] = swift_task_alloc();
  v2[113] = swift_task_alloc();
  v2[114] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v2[115] = v6;
  v2[116] = *(v6 - 8);
  v2[117] = swift_task_alloc();
  v7 = type metadata accessor for ADP();
  v2[118] = v7;
  v2[119] = *(v7 - 8);
  v2[120] = swift_task_alloc();
  v2[121] = swift_task_alloc();
  v2[122] = swift_task_alloc();
  v2[123] = swift_task_alloc();
  v2[124] = swift_task_alloc();
  sub_1001F0C48(&unk_100780380);
  v2[125] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v2[126] = v8;
  v2[127] = *(v8 - 8);
  v2[128] = swift_task_alloc();
  v2[129] = swift_task_alloc();
  v2[130] = swift_task_alloc();
  v2[131] = swift_task_alloc();
  v2[132] = swift_task_alloc();
  v2[133] = swift_task_alloc();
  v2[134] = swift_task_alloc();
  v2[135] = swift_task_alloc();
  v2[136] = swift_task_alloc();
  v9 = type metadata accessor for AppInstallRequestType();
  v2[137] = v9;
  v2[138] = *(v9 - 8);
  v2[139] = swift_task_alloc();
  v2[140] = swift_task_alloc();

  return _swift_task_switch(sub_1003FA744, v1, 0);
}

uint64_t sub_1003FA744()
{
  v1 = v0[140];
  v2 = v0[139];
  v3 = v0[138];
  v4 = v0[137];
  v5 = *(v0[94] + 112);
  v0[141] = v5;
  v6 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage;
  v0[142] = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage;
  v30 = v5;
  v7 = *(v5 + v6);
  v8 = *(*v7 + class metadata base offset for ManagedBuffer + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v7 + v9));
  v10 = type metadata accessor for ADPInstallConfiguration.Storage(0);
  v0[143] = v10;
  v11 = *(v3 + 16);
  v11(v1, v7 + *(v10 + 28) + v8, v4);
  os_unfair_lock_unlock((v7 + v9));
  v11(v2, v1, v4);
  v12 = (*(v3 + 88))(v2, v4);
  if (v12 != enum case for AppInstallRequestType.automaticInstall(_:))
  {
    if (v12 == enum case for AppInstallRequestType.install(_:))
    {
      goto LABEL_9;
    }

    if (v12 == enum case for AppInstallRequestType.automaticUpdate(_:))
    {
      goto LABEL_2;
    }

    if (v12 == enum case for AppInstallRequestType.update(_:) || v12 == enum case for AppInstallRequestType.promotion(_:))
    {
LABEL_9:
      (*(v0[138] + 8))(v0[140], v0[137]);
      goto LABEL_10;
    }

    if (v12 != enum case for AppInstallRequestType.restore(_:) && v12 != enum case for AppInstallRequestType.deviceVPP(_:) && v12 != enum case for AppInstallRequestType.deviceVPPUpdate(_:) && v12 != enum case for AppInstallRequestType.userVPP(_:) && v12 != enum case for AppInstallRequestType.userVPPUpdate(_:) && v12 != enum case for AppInstallRequestType.upp(_:) && v12 != enum case for AppInstallRequestType.restoreUpdate(_:))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }
  }

LABEL_2:
  v13 = v0[93];
  (*(v0[138] + 8))(v0[140], v0[137]);
  sub_100006D8C(v13, v13[3]);

  v14 = sub_10042A954();

  if (!v14)
  {
    static Logger.install.getter();

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = *(v30 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey);
      *(v17 + 4) = v19;
      *v18 = v19;
      v20 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "[%@] Blocking automatic installation, device has not been unlocked", v17, 0xCu);
      sub_1000032A8(v18, &qword_10077F920);
    }

    v21 = v0[136];
    v22 = v0[127];
    v23 = v0[126];

    (*(v22 + 8))(v21, v23);
    type metadata accessor for InternalError();
    sub_100428444(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v24 = v0[1];

    return v24();
  }

LABEL_10:
  sub_10020A980(v30 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_bag, (v0 + 50));
  v27 = v0[53];
  v26 = v0[54];
  v28 = sub_100006D8C(v0 + 50, v27);
  v29 = swift_task_alloc();
  v0[144] = v29;
  *v29 = v0;
  v29[1] = sub_1003FAE48;

  return (sub_100519B04)(v28, v27, v26);
}

uint64_t sub_1003FAE48(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 752);
  *(v2 + 1489) = a1;

  sub_10000710C(v2 + 400);

  return _swift_task_switch(sub_1003FAF68, v3, 0);
}

id sub_1003FAF68()
{
  if (*(v0 + 1489) != 1)
  {
    type metadata accessor for InternalError();
    sub_100428444(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v29 = *(v0 + 8);

    return v29();
  }

  v1 = *(v0 + 752);
  v2 = *(v1 + 152);
  v3 = *(v1 + 136);
  *(v0 + 1456) = *(v1 + 120);
  *(v0 + 1472) = v3;
  *(v0 + 1488) = v2;
  if ((sub_10027B898(v0 + 1456) & 1) == 0)
  {
    static Logger.install.getter();

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = *(v0 + 1128);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      v35 = *(v32 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey);
      *(v33 + 4) = v35;
      *v34 = v35;
      v36 = v35;
      _os_log_impl(&_mh_execute_header, v30, v31, "[%@] Failing early due to no feature eligibility", v33, 0xCu);
      sub_1000032A8(v34, &qword_10077F920);
    }

    v37 = *(v0 + 1024);
    v38 = *(v0 + 1016);
    v39 = *(v0 + 1008);
    v40 = *(v0 + 752);
    v41 = *(v0 + 744);

    (*(v38 + 8))(v37, v39);
    *(v40 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_shouldShowAlertOnInstallFailure) = 0;
    v42 = v41[3];
    v43 = v41[7];
    v44 = sub_100006D8C(v41, v42);
    v45 = swift_task_alloc();
    *(v0 + 1432) = v45;
    *v45 = v0;
    v45[1] = sub_1003FEA0C;
    v46 = *(v0 + 752);

    return sub_100420C70(v44, v46, v42, v43);
  }

  v4 = *(v0 + 1136);
  v5 = *(v0 + 1128);
  v6 = *(v0 + 744);
  v7 = *(*sub_100006D8C(v6, v6[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device + 108);
  v8 = *(v5 + v4);
  v9 = *(*v8 + class metadata base offset for ManagedBuffer + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v10));
  sub_10020A980(v8 + v9, v0 + 440);
  os_unfair_lock_unlock((v8 + v10));
  sub_1001F0C48(&qword_10077E970);
  if (swift_dynamicCast())
  {

    result = [objc_opt_self() sharedConnection];
    if (result)
    {
      v12 = result;
      v13 = [result isWebDistributionAppInstallationAllowed];

      if ((v13 & 1) == 0)
      {
        static Logger.install.getter();

        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = *(v0 + 1128);
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          *v17 = 138412290;
          v19 = *(v16 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey);
          *(v17 + 4) = v19;
          *v18 = v19;
          v20 = v19;
          _os_log_impl(&_mh_execute_header, v14, v15, "[%@] Failing early due to web distribution being restricted", v17, 0xCu);
          sub_1000032A8(v18, &qword_10077F920);
        }

        v21 = *(v0 + 1080);
        v22 = *(v0 + 1016);
        v23 = *(v0 + 1008);
        v24 = *(v0 + 752);
        v25 = *(v0 + 744);

        (*(v22 + 8))(v21, v23);
        *(v24 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_shouldShowAlertOnInstallFailure) = 0;
        v26 = *(*sub_100006D8C(v25, v6[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_localizer);
        *(v0 + 1160) = v26;
        v106 = sub_1004A45A0;

        v27 = swift_task_alloc();
        *(v0 + 1168) = v27;
        *v27 = v0;
        v28 = sub_1003FBEAC;
LABEL_34:
        v27[1] = v28;

        return v106(v26, v7);
      }

      goto LABEL_20;
    }

    __break(1u);
LABEL_50:
    __break(1u);
    return result;
  }

  v47 = *(*(v0 + 1128) + *(v0 + 1136));
  v48 = *(*v47 + class metadata base offset for ManagedBuffer + 16);
  v49 = (*(*v47 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v47 + v49));
  sub_10020A980(v47 + v48, v0 + 480);
  os_unfair_lock_unlock((v47 + v49));
  if (swift_dynamicCast())
  {
    result = [objc_opt_self() sharedConnection];
    if (result)
    {
      v50 = result;
      v51 = String._bridgeToObjectiveC()();

      v52 = [v50 isMarketplaceAllowed:v51];

      if ((v52 & 1) == 0)
      {
        static Logger.install.getter();

        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = *(v0 + 1128);
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          *v75 = 138412290;
          v77 = *(v74 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey);
          *(v75 + 4) = v77;
          *v76 = v77;
          v78 = v77;
          _os_log_impl(&_mh_execute_header, v72, v73, "[%@] Failing early due to marketplace distribution being restricted", v75, 0xCu);
          sub_1000032A8(v76, &qword_10077F920);
        }

        v79 = *(v0 + 1072);
        v80 = *(v0 + 1016);
        v81 = *(v0 + 1008);
        v82 = *(v0 + 752);
        v83 = *(v0 + 744);

        (*(v80 + 8))(v79, v81);
        *(v82 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_shouldShowAlertOnInstallFailure) = 0;
        v26 = *(*sub_100006D8C(v83, v6[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_localizer);
        *(v0 + 1184) = v26;
        v106 = sub_1004A3E18;

        v27 = swift_task_alloc();
        *(v0 + 1192) = v27;
        *v27 = v0;
        v28 = sub_1003FC334;
        goto LABEL_34;
      }

      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_20:
  sub_100402B78();
  v62 = *(v0 + 1128);
  if ((*(v62 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_itemIDFromButtonConfiguration + 8) & 1) == 0)
  {
    sub_10038A554(*(v62 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_itemIDFromButtonConfiguration));
    v62 = *(v0 + 1128);
  }

  v63 = *(v62 + *(v0 + 1136));
  v64 = *(*v63 + class metadata base offset for ManagedBuffer + 16);
  v65 = (*(*v63 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v63 + v65));
  sub_10020A980(v63 + v64, v0 + 520);
  os_unfair_lock_unlock((v63 + v65));
  if (swift_dynamicCast() & 1) == 0 || (v66 = *(v0 + 1136), v67 = *(v0 + 1128), , v68 = *(v67 + v66), v69 = v68 + *(*v68 + class metadata base offset for ManagedBuffer + 16), v70 = (*(*v68 + 48) + 3) & 0x1FFFFFFFCLL, os_unfair_lock_lock((v68 + v70)), LOBYTE(v69) = *(v69 + 48), os_unfair_lock_unlock((v68 + v70)), (v69))
  {
    v71 = swift_task_alloc();
    *(v0 + 1224) = v71;
    *v71 = v0;
    v71[1] = sub_1003FC980;

    return sub_100405278();
  }

  v84 = *(*(v0 + 1128) + *(v0 + 1136));
  v85 = *(v0 + 1144);
  v86 = *(*v84 + class metadata base offset for ManagedBuffer + 16);
  v87 = (*(*v84 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v84 + v87));
  v88 = (v84 + *(v85 + 32) + v86);
  v90 = *v88;
  v89 = v88[1];

  os_unfair_lock_unlock((v84 + v87));
  if (v89)
  {
    v91 = HIBYTE(v89) & 0xF;
    if ((v89 & 0x2000000000000000) == 0)
    {
      v91 = v90 & 0xFFFFFFFFFFFFLL;
    }

    if (v91)
    {
      sub_1005A9F58(v90, v89, (v0 + 224));
      v104 = swift_task_alloc();
      *(v0 + 1208) = v104;
      *v104 = v0;
      v104[1] = sub_1003FC7BC;
      v105 = *(v0 + 744);

      return sub_1004032C8(v0 + 224, v105);
    }
  }

  static Logger.install.getter();

  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v92, v93))
  {
    v94 = *(v0 + 1128);
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    *v95 = 138412290;
    v97 = *(v94 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey);
    *(v95 + 4) = v97;
    *v96 = v97;
    v98 = v97;
    _os_log_impl(&_mh_execute_header, v92, v93, "[%@] Missing required install verification token", v95, 0xCu);
    sub_1000032A8(v96, &qword_10077F920);
  }

  v99 = *(v0 + 1064);
  v100 = *(v0 + 1016);
  v101 = *(v0 + 1008);

  (*(v100 + 8))(v99, v101);
  type metadata accessor for InternalError();
  sub_100428444(&qword_10077F900, type metadata accessor for InternalError);
  v102 = swift_allocError();
  *v103 = 0xD00000000000002BLL;
  v103[1] = 0x80000001006C4550;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  *(v0 + 1440) = v102;
  v53 = *(v0 + 744);
  v54 = v53[3];
  v55 = v53[6];
  v56 = v53[8];
  v57 = v53[9];
  v58 = v53[10];
  v59 = sub_100006D8C(v53, v54);
  swift_errorRetain();
  v60 = swift_task_alloc();
  *(v0 + 1448) = v60;
  *v60 = v0;
  v60[1] = sub_1003FEDA4;
  v61 = *(v0 + 752);

  return sub_10041F4B4(v102, v59, v61, v54, v55, v56, v57, v58);
}

uint64_t sub_1003FBEAC(uint64_t a1)
{
  v2 = *(*v1 + 752);
  *(*v1 + 1176) = a1;

  return _swift_task_switch(sub_1003FBFE0, v2, 0);
}

uint64_t sub_1003FBFE0()
{
  v1 = v0[147];
  v2 = v0[125];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_1004F8A04(0xD000000000000021, 0x80000001006CB390, v2, &unk_1006AA410, v4);

  sub_1000032A8(v2, &unk_100780380);
  type metadata accessor for InternalError();
  sub_100428444(&qword_10077F900, type metadata accessor for InternalError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1003FC334(uint64_t a1)
{
  v2 = *(*v1 + 752);
  *(*v1 + 1200) = a1;

  return _swift_task_switch(sub_1003FC468, v2, 0);
}

uint64_t sub_1003FC468()
{
  v1 = v0[150];
  v2 = v0[125];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_1004F8A04(0xD000000000000029, 0x80000001006CB360, v2, &unk_1006AA408, v4);

  sub_1000032A8(v2, &unk_100780380);
  type metadata accessor for InternalError();
  sub_100428444(&qword_10077F900, type metadata accessor for InternalError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1003FC7BC()
{
  v2 = *v1;
  *(*v1 + 1216) = v0;

  v3 = *(v2 + 752);
  if (v0)
  {
    v4 = sub_1003FF0F8;
  }

  else
  {
    v4 = sub_1003FC8E8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003FC8E8()
{
  sub_10020AD3C(v0 + 224);
  v1 = swift_task_alloc();
  *(v0 + 1224) = v1;
  *v1 = v0;
  v1[1] = sub_1003FC980;

  return sub_100405278();
}

uint64_t sub_1003FC980()
{
  v2 = *v1;
  *(*v1 + 1232) = v0;

  v3 = *(v2 + 752);
  if (v0)
  {
    v4 = sub_1003FF1F4;
  }

  else
  {
    v4 = sub_1003FCAAC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003FCAAC()
{
  v1 = v0[142];
  v2 = v0[141];
  sub_10038A774();
  v3 = *(v2 + v1);
  v4 = v3 + *(*v3 + class metadata base offset for ManagedBuffer + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  v6 = *(v4 + 40);
  v0[155] = v6;

  os_unfair_lock_unlock((v3 + v5));
  if (v6)
  {
    v7 = v0[142];
    v8 = v0[141];
    (*(v0[116] + 16))(v0[117], v8 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_url, v0[115]);
    v9 = *(v8 + v7);
    v10 = *(*v9 + class metadata base offset for ManagedBuffer + 16);
    v11 = (*(*v9 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v9 + v11));
    sub_10020A980(v9 + v10, (v0 + 70));
    os_unfair_lock_unlock((v9 + v11));
    v12 = *(v8 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_accountID);
    v13 = *(v8 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_accountID + 8);
    v0[156] = v13;
    v14 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey;
    v0[157] = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey;
    v15 = *(v8 + v14);
    v0[158] = v15;

    v16 = v15;
    v17 = swift_task_alloc();
    v0[159] = v17;
    *v17 = v0;
    v17[1] = sub_1003FCEF0;
    v18 = v0[124];
    v19 = v0[117];

    return sub_100338A04(v18, v19, v6, (v0 + 70), v12, v13, v16);
  }

  else
  {
    static Logger.install.getter();

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = v0[94];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = *(v23 + 160);
      *(v24 + 4) = v26;
      *v25 = v26;
      v27 = v26;
      _os_log_impl(&_mh_execute_header, v21, v22, "[%@] No agent available, failing", v24, 0xCu);
      sub_1000032A8(v25, &qword_10077F920);
    }

    v28 = v0[129];
    v29 = v0[127];
    v30 = v0[126];

    (*(v29 + 8))(v28, v30);
    type metadata accessor for InternalError();
    sub_100428444(&qword_10077F900, type metadata accessor for InternalError);
    v31 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v0[180] = v31;
    v32 = v0[93];
    v33 = v32[3];
    v34 = v32[6];
    v35 = v32[8];
    v36 = v32[9];
    v37 = v32[10];
    v38 = sub_100006D8C(v32, v33);
    swift_errorRetain();
    v39 = swift_task_alloc();
    v0[181] = v39;
    *v39 = v0;
    v39[1] = sub_1003FEDA4;
    v40 = v0[94];

    return sub_10041F4B4(v31, v38, v40, v33, v34, v35, v36, v37);
  }
}

uint64_t sub_1003FCEF0()
{
  v2 = *v1;
  *(v2 + 1280) = v0;

  v3 = *(v2 + 936);
  v4 = *(v2 + 928);
  v5 = *(v2 + 920);
  v6 = *(v2 + 752);

  sub_10000710C(v2 + 560);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_1003FF2E8;
  }

  else
  {
    v7 = sub_1003FD0C0;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1003FD0C0()
{
  v61 = v0;
  v1 = *(v0 + 992);
  v2 = *(v0 + 984);
  v55 = *(v0 + 976);
  v57 = *(v0 + 968);
  v3 = *(v0 + 944);
  v4 = *(v0 + 752);
  sub_1001F0C48(&qword_100784460);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006A4050;
  v6 = *(v4 + 160);
  v7 = LogKey.description.getter();
  v9 = v8;

  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  v54 = v3;
  v10 = *(v3 + 24);
  *(v0 + 1492) = v10;
  v11 = v1 + v10;
  v12 = *(v1 + v10 + 24);
  *(v0 + 1288) = v12;
  v13 = *(v11 + 32);
  *(v0 + 1296) = v13;
  *(v5 + 48) = v12;
  *(v5 + 56) = v13;
  v59 = v11;
  v14 = *(v11 + 16);
  *(v0 + 1304) = v14;
  *(v0 + 736) = v14;

  *(v5 + 64) = dispatch thunk of CustomStringConvertible.description.getter();
  *(v5 + 72) = v15;
  v16 = objc_allocWithZone(type metadata accessor for LogKey());
  v17 = LogKey.init(strings:)();
  v18 = *(v4 + 160);
  *(v4 + 160) = v17;

  static Logger.install.getter();
  sub_100428E08(v1, v2, type metadata accessor for ADP);
  sub_100428E08(v1, v55, type metadata accessor for ADP);
  sub_100428E08(v1, v57, type metadata accessor for ADP);

  v19 = Logger.logObject.getter();
  LOBYTE(v6) = static os_log_type_t.default.getter();

  v58 = v6;
  v20 = os_log_type_enabled(v19, v6);
  v21 = *(v0 + 1056);
  v22 = *(v0 + 1016);
  v23 = *(v0 + 1008);
  v24 = *(v0 + 984);
  v25 = *(v0 + 976);
  v26 = *(v0 + 968);
  if (v20)
  {
    v56 = *(v0 + 1056);
    v27 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v60 = v52;
    *v27 = 138413058;
    v28 = *(v4 + 160);
    *(v27 + 4) = v28;
    *v51 = v28;
    *(v27 + 12) = 2082;
    v29 = v24 + *(v54 + 24);
    v53 = v23;
    v30 = *(v29 + 24);
    v31 = *(v29 + 32);
    v32 = v28;

    sub_100429090(v24, type metadata accessor for ADP);
    v33 = sub_1002346CC(v30, v31, &v60);

    *(v27 + 14) = v33;
    *(v27 + 22) = 2050;
    v34 = *(v25 + *(v54 + 24) + 16);
    sub_100429090(v25, type metadata accessor for ADP);
    *(v27 + 24) = v34;
    *(v27 + 32) = 2050;
    v35 = *(v26 + *(v54 + 24) + 8);
    sub_100429090(v26, type metadata accessor for ADP);
    *(v27 + 34) = v35;
    _os_log_impl(&_mh_execute_header, v19, v58, "[%@] Bundle ID: %{public}s Item ID: %{public}llu Version ID: %{public}llu", v27, 0x2Au);
    sub_1000032A8(v51, &qword_10077F920);

    sub_10000710C(v52);

    (*(v22 + 8))(v56, v53);
  }

  else
  {
    sub_100429090(*(v0 + 968), type metadata accessor for ADP);
    sub_100429090(v25, type metadata accessor for ADP);

    sub_100429090(v24, type metadata accessor for ADP);
    (*(v22 + 8))(v21, v23);
  }

  v36 = *(v0 + 1136);
  v37 = *(v0 + 1128);
  v38 = *(v0 + 912);
  v39 = *(v0 + 864);
  v40 = *(v0 + 856);
  v41 = *(*sub_100006D8C(*(v0 + 744), *(*(v0 + 744) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_progressCache);
  *(v0 + 1312) = v41;
  v42 = *(v37 + v36);
  v43 = *(*v42 + class metadata base offset for ManagedBuffer + 16);
  v44 = (*(*v42 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v42 + v44));
  sub_10020A980(v42 + v43, v0 + 600);
  os_unfair_lock_unlock((v42 + v44));
  v45 = *(v0 + 624);
  sub_100006D8C((v0 + 600), v45);
  *(v0 + 1320) = sub_10056D600(v45);
  *(v0 + 1328) = v46;
  *(v0 + 1490) = v47;
  *(v0 + 1336) = *(v59 + 8);
  v48 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_id;
  *(v0 + 1344) = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_id;
  v49 = *(v39 + 16);
  *(v0 + 1352) = v49;
  *(v0 + 1360) = (v39 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v49(v38, v37 + v48, v40);

  return _swift_task_switch(sub_1003FD5D4, v41, 0);
}

uint64_t sub_1003FD5D4()
{
  v57 = v0;
  v52 = *(v0 + 1352);
  v40 = *(v0 + 1328);
  v42 = *(v0 + 1336);
  v1 = *(v0 + 1320);
  v2 = *(v0 + 1304);
  v3 = *(v0 + 1296);
  v4 = *(v0 + 1288);
  v43 = *(v0 + 904);
  v46 = *(v0 + 856);
  v49 = *(v0 + 912);
  v5 = *(v0 + 848);
  v6 = *(v0 + 1490) & 1;
  v7 = *(*(v0 + 832) + 24);
  v8 = enum case for AppState.waiting(_:);
  v9 = type metadata accessor for AppState();
  (*(*(v9 - 8) + 104))(v5 + v7, v8, v9);
  *v5 = v4;
  *(v5 + 8) = v3;
  *(v5 + 16) = v2;
  *(v5 + 24) = 0;
  *(v5 + 32) = v1;
  *(v5 + 40) = v40;
  *(v5 + 48) = v6;
  *(v5 + 56) = v42;
  *(v5 + 64) = 0;

  static Logger.progress.getter();
  v52(v43, v49, v46);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v41 = *(v0 + 1288);
    v44 = *(v0 + 1296);
    v47 = *(v0 + 1016);
    v50 = *(v0 + 1008);
    v53 = *(v0 + 1048);
    v12 = *(v0 + 904);
    v13 = *(v0 + 864);
    v14 = *(v0 + 856);
    v15 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v15 = 136446466;
    sub_100428444(&qword_100789F60, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v19 = *(v13 + 8);
    v55 = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v19(v12, v14);
    v20 = sub_1002346CC(v16, v18, &v56);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_1002346CC(v41, v44, &v56);
    _os_log_impl(&_mh_execute_header, v10, v11, "[ProgressCache] Starting progress for %{public}s (%{public}s)", v15, 0x16u);
    swift_arrayDestroy();

    (*(v47 + 8))(v53, v50);
  }

  else
  {
    v21 = *(v0 + 1048);
    v22 = *(v0 + 1016);
    v23 = *(v0 + 1008);
    v24 = *(v0 + 904);
    v25 = *(v0 + 864);
    v26 = *(v0 + 856);

    v19 = *(v25 + 8);
    v55 = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v19(v24, v26);
    (*(v22 + 8))(v21, v23);
  }

  *(v0 + 1368) = v19;
  v27 = *(v0 + 1352);
  v48 = *(v0 + 912);
  v51 = v19;
  v28 = *(v0 + 896);
  v29 = *(v0 + 848);
  v45 = *(v0 + 856);
  v30 = *(v0 + 840);
  v31 = *(v0 + 832);
  v32 = *(v0 + 824);
  v54 = *(v0 + 752);
  v27(v28);
  sub_100428E08(v29, v32, type metadata accessor for ProgressCache.Progress);
  (*(v30 + 56))(v32, 0, 1, v31);
  swift_beginAccess();
  sub_1005B7A24(v32, v28);
  swift_endAccess();
  sub_1001F0C48(&unk_100780A70);
  v33 = (sub_1001F0C48(&qword_100786FA0) - 8);
  v34 = (*(*v33 + 80) + 32) & ~*(*v33 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_10069E680;
  v36 = v35 + v34;
  v37 = v33[14];
  (v27)(v36, v48, v45);
  sub_100428E08(v29, v36 + v37, type metadata accessor for ProgressCache.Progress);
  v38 = sub_100528E5C(v35);
  swift_setDeallocating();
  sub_1000032A8(v36, &qword_100786FA0);
  swift_deallocClassInstance();
  sub_1003868C0(v38);

  sub_100429090(v29, type metadata accessor for ProgressCache.Progress);
  *(v0 + 1376) = v55;
  v51(v48, v45);
  sub_10000710C(v0 + 600);

  return _swift_task_switch(sub_1003FDB50, v54, 0);
}