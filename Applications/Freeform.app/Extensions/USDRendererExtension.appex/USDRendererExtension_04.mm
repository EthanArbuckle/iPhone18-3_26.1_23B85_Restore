uint64_t sub_10006E9D0()
{
  v1 = v0[50];
  v2 = v0[47];
  v3 = v0[43];
  v4 = v0[44];

  (*(v4 + 8))(v2, v3);
  sub_100078C70(v1, type metadata accessor for CRLUSDRendering.SurfaceRequest.Item);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10006EB60()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[50];
  v4 = v0[47];
  v5 = v0[43];
  v6 = v0[44];

  (*(v6 + 8))(v4, v5);
  sub_100078C70(v3, type metadata accessor for CRLUSDRendering.SurfaceRequest.Item);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10006ED40(uint64_t a1)
{
  v14 = a1;
  v1 = sub_10002A958(&qword_1000D88E0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - v3;
  v5 = sub_10008A798();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10008A7A8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10008A788();
  sub_10008A7B8();
  (*(v2 + 16))(v4, v14, v1);
  v10 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v11 = swift_allocObject();
  (*(v2 + 32))(v11 + v10, v4, v1);
  sub_10008A828();
  (*(v7 + 8))(v9, v6);
}

uint64_t sub_10006F0D0(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  v3 = sub_100089DA8();
  v2[36] = v3;
  v2[37] = *(v3 - 8);
  v2[38] = swift_task_alloc();
  v4 = sub_100089CD8();
  v2[39] = v4;
  v2[40] = *(v4 - 8);
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = _s19RealityBackendStateOMa();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  sub_10008ACE8();
  v2[47] = sub_10008ACD8();
  v6 = sub_10008AC88();
  v2[48] = v6;
  v2[49] = v5;

  return _swift_task_switch(sub_10006F274, v6, v5);
}

uint64_t sub_10006F274()
{
  v47 = v0;
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[35];
  v4 = OBJC_IVAR____TtCO20USDRendererExtension15CRLUSDRendering22RealitySnapshotBackend_backendState;
  swift_beginAccess();
  sub_100078F30(v3 + v4, v2, _s19RealityBackendStateOMa);
  sub_100078C08(v2, v1, _s19RealityBackendStateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_100078C70(v0[45], _s19RealityBackendStateOMa);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v18 = v0[45];

      sub_100078C70(v18, _s19RealityBackendStateOMa);
      goto LABEL_14;
    }

    (*(v0[40] + 8))(v0[45], v0[39]);
  }

  v6 = v0[35];
  sub_10008A618();

  sub_100089EE8();

  sub_10008A6C8();
  sub_100089F78();

  v7 = [objc_opt_self() defaultManager];
  v8 = CRLAppGroupIdentifier();
  if (!v8)
  {
    __break(1u);
    return Entity.write(to:)(v8);
  }

  v9 = v8;
  v10 = [v7 containerURLForSecurityApplicationGroupIdentifier:v8];

  if (v10)
  {
    v45 = v6;
    v12 = v0[40];
    v11 = v0[41];
    v13 = v0[38];
    v44 = v0[39];
    v14 = v0[36];
    v15 = v0[37];
    sub_100089CA8();

    sub_100089D98();
    sub_100089D58();
    (*(v15 + 8))(v13, v14);
    sub_100089C78();

    sub_100089C88();
    v16 = *(v12 + 8);
    v0[50] = v16;
    v0[51] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v11, v44);
    v0[52] = *(v45 + 24);

    v17 = swift_task_alloc();
    v0[53] = v17;
    *v17 = v0;
    v17[1] = sub_10006F9A0;
    v8 = v0[42];

    return Entity.write(to:)(v8);
  }

  v19 = objc_opt_self();
  v20 = [v19 _atomicIncrementAssertCount];
  v46 = [objc_allocWithZone(NSString) init];
  sub_10005FBCC(_swiftEmptyArrayStorage, &v46);
  sub_10008AEC8();
  v21 = sub_10008AB08();

  sub_10008AEC8();
  v22 = sub_10008AB08();

  v23 = [v22 lastPathComponent];

  v24 = sub_10008AB38();
  v26 = v25;

  if (qword_1000D6008 != -1)
  {
    swift_once();
  }

  v27 = static OS_os_log.crlAssert;
  sub_10002A958(&qword_1000D6C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000A6480;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v20;
  v29 = sub_100078E84(0, &qword_1000D8560);
  *(inited + 96) = v29;
  v30 = sub_100078E1C();
  *(inited + 104) = v30;
  *(inited + 72) = v21;
  *(inited + 136) = &type metadata for String;
  v31 = sub_1000536C0();
  *(inited + 112) = v24;
  *(inited + 120) = v26;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v31;
  *(inited + 152) = 399;
  v32 = v46;
  *(inited + 216) = v29;
  *(inited + 224) = v30;
  *(inited + 192) = v32;
  v33 = v21;
  v34 = v32;
  v35 = sub_10008AE18();
  sub_100035474(v27, &_mh_execute_header, v35, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_10002A958(&qword_1000D8570);
  swift_arrayDestroy();
  v36 = sub_10008AE18();
  sub_100035474(v27, &_mh_execute_header, v36, "Unable to get containerURL for CRLAppGroupIdentifier()", 54, 2, _swiftEmptyArrayStorage);

  sub_10008AF68();
  v37 = swift_allocObject();
  v37[2] = 8;
  v37[3] = 0;
  v37[4] = 0;
  v37[5] = 0;
  v38 = sub_10008AF58();
  sub_10008AEC8();
  v39 = sub_10008AB08();

  sub_10008AEC8();
  v40 = sub_10008AB08();

  sub_10008AEC8();
  v41 = sub_10008AB08();

  [v19 handleFailureInFunction:v39 file:v40 lineNumber:399 isFatal:0 format:v41 args:v38];

LABEL_14:
  (*(v0[40] + 56))(v0[34], 1, 1, v0[39]);

  v42 = v0[1];

  return v42();
}

uint64_t sub_10006F9A0()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  v3 = *(v2 + 392);
  v4 = *(v2 + 384);
  if (v0)
  {
    v5 = sub_10006FC08;
  }

  else
  {
    v5 = sub_10006FAF8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10006FAF8()
{
  v1 = v0[50];
  v2 = v0[42];
  v3 = v0[43];
  v4 = v0[39];
  v5 = v0[40];
  v6 = v0[34];

  v1(v3, v4);
  (*(v5 + 32))(v6, v2, v4);
  (*(v0[40] + 56))(v0[34], 0, 1, v0[39]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10006FC08()
{
  v1 = v0[50];
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[39];

  v1(v3, v4);
  v1(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10006FCE8(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  v2[31] = _s19RealityBackendStateOMa();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = sub_10008ACE8();
  v2[36] = sub_10008ACD8();
  v4 = sub_10008AC88();
  v2[37] = v4;
  v2[38] = v3;

  return _swift_task_switch(sub_10006FDCC, v4, v3);
}

uint64_t sub_10006FDCC()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 240);
  v3 = OBJC_IVAR____TtCO20USDRendererExtension15CRLUSDRendering22RealitySnapshotBackend_backendState;
  *(v0 + 312) = OBJC_IVAR____TtCO20USDRendererExtension15CRLUSDRendering22RealitySnapshotBackend_backendState;
  swift_beginAccess();
  sub_100078F30(v2 + v3, v1, _s19RealityBackendStateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) < 2)
  {
    sub_100078C70(*(v0 + 272), _s19RealityBackendStateOMa);
LABEL_7:
    v8 = swift_task_alloc();
    *(v0 + 320) = v8;
    *v8 = v0;
    v8[1] = sub_10006FF70;
    v9 = *(v0 + 232);

    return sub_10006AEB0(v9);
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_7;
  }

  v5 = *(v0 + 232);
  *(v0 + 16) = *(v5 + *(type metadata accessor for CRLUSDRendering.SceneRequest(0) + 20) + 16);
  *(v0 + 336) = sub_10008ACD8();
  v7 = sub_10008AC88();

  return _swift_task_switch(sub_1000700F4, v7, v6);
}

uint64_t sub_10006FF70()
{
  v2 = *v1;
  v2[41] = v0;

  if (v0)
  {
    v3 = v2[37];
    v4 = v2[38];

    return _swift_task_switch(sub_100070780, v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[43] = v5;
    *v5 = v2;
    v5[1] = sub_100070320;

    return sub_100076E34();
  }
}

uint64_t sub_1000700F4()
{
  v1 = v0[39];
  v2 = v0[33];
  v3 = v0[30];

  sub_100078F30(v3 + v1, v2, _s19RealityBackendStateOMa);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_100078C70(v0[33], _s19RealityBackendStateOMa);
  }

  else
  {
    v4 = v0[33];
    v5 = sub_100089CD8();
    (*(*(v5 - 8) + 8))(v4, v5);
    sub_10008A618();

    sub_100089F18();
  }

  v6 = v0[37];
  v7 = v0[38];

  return _swift_task_switch(sub_100070240, v6, v7);
}

uint64_t sub_100070240()
{
  v1 = *(v0 + 272);
  v2 = sub_100089CD8();
  (*(*(v2 - 8) + 8))(v1, v2);
  v3 = swift_task_alloc();
  *(v0 + 344) = v3;
  *v3 = v0;
  v3[1] = sub_100070320;

  return sub_100076E34();
}

uint64_t sub_100070320(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  *(*v4 + 352) = v3;

  if (v3)
  {
    v9 = *(v8 + 296);
    v10 = *(v8 + 304);
    v11 = sub_100070578;
  }

  else
  {
    *(v8 + 376) = a3;
    *(v8 + 360) = a2;
    *(v8 + 368) = a1;
    v9 = *(v8 + 296);
    v10 = *(v8 + 304);
    v11 = sub_10007045C;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_10007045C()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);

  sub_10008A618();
  swift_allocObject();
  *(v3 + 24) = sub_10008A608();

  *(v3 + 16) = 0;

  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_100078ECC(v2, v3 + v1);
  swift_endAccess();
  v4 = *(v0 + 360);
  v5 = *(v0 + 368);
  v6 = *(v0 + 376);

  v7 = *(v0 + 8);

  return v7(v5, v4, v6 & 1);
}

uint64_t sub_100070578()
{
  v1 = v0[39];
  v2 = v0[32];
  v3 = v0[30];

  sub_10008A618();
  swift_allocObject();
  *(v3 + 24) = sub_10008A608();

  *(v3 + 16) = 0;

  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_100078ECC(v2, v3 + v1);
  swift_endAccess();
  if (qword_1000D6128 != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.crlThreeDimensionalObjects;
  sub_10002A958(&qword_1000D6C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000A64C0;
  swift_getErrorValue();
  v6 = sub_10008B208();
  v8 = v7;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000536C0();
  *(inited + 32) = v6;
  *(inited + 40) = v8;
  v9 = sub_10008AE18();
  sub_100035474(v4, &_mh_execute_header, v9, "Failed to create snapshot: %{public}@", 37, 2, inited);

  swift_setDeallocating();
  sub_10002E85C(inited + 32);

  v10 = v0[1];

  return v10(0, 0, 1);
}

uint64_t sub_100070780()
{
  v1 = v0[39];
  v2 = v0[32];
  v3 = v0[30];

  sub_10008A618();
  swift_allocObject();
  *(v3 + 24) = sub_10008A608();

  *(v3 + 16) = 0;

  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_100078ECC(v2, v3 + v1);
  swift_endAccess();
  if (qword_1000D6128 != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.crlThreeDimensionalObjects;
  sub_10002A958(&qword_1000D6C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000A64C0;
  swift_getErrorValue();
  v6 = sub_10008B208();
  v8 = v7;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000536C0();
  *(inited + 32) = v6;
  *(inited + 40) = v8;
  v9 = sub_10008AE18();
  sub_100035474(v4, &_mh_execute_header, v9, "Failed to create snapshot: %{public}@", 37, 2, inited);

  swift_setDeallocating();
  sub_10002E85C(inited + 32);

  v10 = v0[1];

  return v10(0, 0, 1);
}

uint64_t sub_100070988(uint64_t a1)
{
  v2[30] = a1;
  v2[31] = v1;
  v2[32] = _s19RealityBackendStateOMa();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  sub_10008ACE8();
  v2[35] = sub_10008ACD8();
  v4 = sub_10008AC88();
  v2[36] = v4;
  v2[37] = v3;

  return _swift_task_switch(sub_100070A5C, v4, v3);
}

uint64_t sub_100070A5C()
{
  v1 = v0[34];
  v2 = v0[31];
  v3 = OBJC_IVAR____TtCO20USDRendererExtension15CRLUSDRendering22RealitySnapshotBackend_backendState;
  v0[38] = OBJC_IVAR____TtCO20USDRendererExtension15CRLUSDRendering22RealitySnapshotBackend_backendState;
  swift_beginAccess();
  sub_100078F30(v2 + v3, v1, _s19RealityBackendStateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_100078C70(v0[34], _s19RealityBackendStateOMa);
    }

    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    v5 = v0[34];
    v6 = sub_100089CD8();
    (*(*(v6 - 8) + 8))(v5, v6);
LABEL_6:
    v7 = swift_task_alloc();
    v0[39] = v7;
    *v7 = v0;
    v7[1] = sub_100070C48;
    v8 = v0[30];

    return sub_10006BBC0(v8);
  }

  sub_100078C70(v0[34], _s19RealityBackendStateOMa);
  v10 = swift_task_alloc();
  v0[41] = v10;
  *v10 = v0;
  v10[1] = sub_100070DCC;
  v11 = v0[30];

  return sub_10006C23C(v11);
}

uint64_t sub_100070C48()
{
  v2 = *v1;
  v2[40] = v0;

  if (v0)
  {
    v3 = v2[36];
    v4 = v2[37];

    return _swift_task_switch(sub_1000715B0, v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[43] = v5;
    *v5 = v2;
    v5[1] = sub_100070F9C;

    return sub_100076E34();
  }
}

uint64_t sub_100070DCC()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = *(v2 + 288);
    v4 = *(v2 + 296);
    v5 = sub_1000713BC;
  }

  else
  {

    v3 = *(v2 + 288);
    v4 = *(v2 + 296);
    v5 = sub_100070EF8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100070EF8()
{
  v1 = swift_task_alloc();
  *(v0 + 344) = v1;
  *v1 = v0;
  v1[1] = sub_100070F9C;

  return sub_100076E34();
}

uint64_t sub_100070F9C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 352) = v1;

  if (v1)
  {
    v5 = v4[36];
    v6 = v4[37];
    v7 = sub_1000711C8;
  }

  else
  {
    v4[45] = a1;
    v5 = v4[36];
    v6 = v4[37];
    v7 = sub_1000710C4;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1000710C4()
{
  v1 = v0[38];
  v2 = v0[33];
  v3 = v0[31];

  sub_10008A618();
  swift_allocObject();
  *(v3 + 24) = sub_10008A608();

  *(v3 + 16) = 0;

  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_100078ECC(v2, v3 + v1);
  swift_endAccess();
  v4 = v0[45];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1000711C8()
{
  v1 = v0[38];
  v2 = v0[33];
  v3 = v0[31];

  sub_10008A618();
  swift_allocObject();
  *(v3 + 24) = sub_10008A608();

  *(v3 + 16) = 0;

  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_100078ECC(v2, v3 + v1);
  swift_endAccess();
  if (qword_1000D6128 != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.crlThreeDimensionalObjects;
  sub_10002A958(&qword_1000D6C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000A64C0;
  swift_getErrorValue();
  v6 = sub_10008B208();
  v8 = v7;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000536C0();
  *(inited + 32) = v6;
  *(inited + 40) = v8;
  v9 = sub_10008AE18();
  sub_100035474(v4, &_mh_execute_header, v9, "Failed to create snapshot: %{public}@", 37, 2, inited);

  swift_setDeallocating();
  sub_10002E85C(inited + 32);

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_1000713BC()
{
  v1 = v0[38];
  v2 = v0[33];
  v3 = v0[31];

  sub_10008A618();
  swift_allocObject();
  *(v3 + 24) = sub_10008A608();

  *(v3 + 16) = 0;

  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_100078ECC(v2, v3 + v1);
  swift_endAccess();
  if (qword_1000D6128 != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.crlThreeDimensionalObjects;
  sub_10002A958(&qword_1000D6C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000A64C0;
  swift_getErrorValue();
  v6 = sub_10008B208();
  v8 = v7;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000536C0();
  *(inited + 32) = v6;
  *(inited + 40) = v8;
  v9 = sub_10008AE18();
  sub_100035474(v4, &_mh_execute_header, v9, "Failed to create snapshot: %{public}@", 37, 2, inited);

  swift_setDeallocating();
  sub_10002E85C(inited + 32);

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_1000715B0()
{
  v1 = v0[38];
  v2 = v0[33];
  v3 = v0[31];

  sub_10008A618();
  swift_allocObject();
  *(v3 + 24) = sub_10008A608();

  *(v3 + 16) = 0;

  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_100078ECC(v2, v3 + v1);
  swift_endAccess();
  if (qword_1000D6128 != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.crlThreeDimensionalObjects;
  sub_10002A958(&qword_1000D6C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000A64C0;
  swift_getErrorValue();
  v6 = sub_10008B208();
  v8 = v7;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000536C0();
  *(inited + 32) = v6;
  *(inited + 40) = v8;
  v9 = sub_10008AE18();
  sub_100035474(v4, &_mh_execute_header, v9, "Failed to create snapshot: %{public}@", 37, 2, inited);

  swift_setDeallocating();
  sub_10002E85C(inited + 32);

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_1000717A4(uint64_t a1, uint64_t a2)
{
  v3[74] = v2;
  v3[73] = a2;
  v3[72] = a1;
  v3[75] = _s19RealityBackendStateOMa();
  v3[76] = swift_task_alloc();
  v3[77] = sub_10008ACE8();
  v3[78] = sub_10008ACD8();
  v5 = swift_task_alloc();
  v3[79] = v5;
  *v5 = v3;
  v5[1] = sub_10007189C;

  return sub_10006C23C(a2);
}

uint64_t sub_10007189C(uint64_t a1)
{
  v3 = *v2;
  v3[80] = a1;
  v3[81] = v1;

  v4 = sub_10008AC88();
  if (v1)
  {
    v6 = sub_1000727B0;
  }

  else
  {
    v3[82] = v4;
    v3[83] = v5;
    v6 = sub_100071A10;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100071A10()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  v4 = *(v3 + 80);
  v6 = *(v3 + 32);
  v5 = *(v3 + 48);
  v1[4] = *(v3 + 64);
  v1[5] = v4;
  v1[2] = v6;
  v1[3] = v5;
  v7 = *(v3 + 144);
  v9 = *(v3 + 96);
  v8 = *(v3 + 112);
  v1[8] = *(v3 + 128);
  v1[9] = v7;
  v1[6] = v9;
  v1[7] = v8;
  v10 = *(v3 + 16);
  *v1 = *v3;
  v1[1] = v10;
  swift_storeEnumTagMultiPayload();
  v11 = OBJC_IVAR____TtCO20USDRendererExtension15CRLUSDRendering22RealitySnapshotBackend_backendState;
  *(v0 + 672) = OBJC_IVAR____TtCO20USDRendererExtension15CRLUSDRendering22RealitySnapshotBackend_backendState;
  swift_beginAccess();
  sub_100047790(v3, v0 + 16);
  sub_100078ECC(v1, v2 + v11);
  swift_endAccess();
  v12 = *(v3 + 152);
  if (v12)
  {
    if (v12 == 1)
    {
      v13 = v0 + 248;
      v14 = *(v0 + 584);
      v15 = *(v14 + 136);
      v16 = *(v14 + 120);
      *(v0 + 248) = *(v14 + 104);
      *(v0 + 264) = v16;
      *(v0 + 280) = v15;
      v17 = swift_task_alloc();
      *(v0 + 720) = v17;
      *v17 = v0;
      v18 = sub_100072574;
LABEL_4:
      v17[1] = v18;
      v19 = *(v0 + 640);
      v20 = *(v0 + 576);

      return sub_100072E5C(v20, v19, v13);
    }

    if (v12 == 2)
    {
      v35 = swift_task_alloc();
      *(v0 + 680) = v35;
      *v35 = v0;
      v36 = sub_100071ED0;
LABEL_14:
      v35[1] = v36;
      v37 = *(v0 + 576);

      return sub_10006F0D0(v37);
    }

    __break(1u);
LABEL_21:
    swift_once();
    goto LABEL_9;
  }

  v22 = *(v0 + 648);
  v23 = sub_1000779A8(*(v0 + 584));
  if (!v22)
  {
    if ((v23 & 1) == 0)
    {
      v13 = v0 + 288;
      v38 = *(v0 + 584);
      v39 = *(v38 + 136);
      v40 = *(v38 + 120);
      *(v0 + 288) = *(v38 + 104);
      *(v0 + 304) = v40;
      *(v0 + 320) = v39;
      v17 = swift_task_alloc();
      *(v0 + 712) = v17;
      *v17 = v0;
      v18 = sub_100072240;
      goto LABEL_4;
    }

    v35 = swift_task_alloc();
    *(v0 + 696) = v35;
    *v35 = v0;
    v36 = sub_10007200C;
    goto LABEL_14;
  }

  v24 = *(v0 + 608);
  v25 = *(v0 + 592);

  sub_10008A618();
  swift_allocObject();
  *(v25 + 24) = sub_10008A608();

  *(v25 + 16) = 0;

  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_100078ECC(v24, v2 + v11);
  swift_endAccess();
  if (qword_1000D6128 != -1)
  {
    goto LABEL_21;
  }

LABEL_9:
  v26 = *(v0 + 576);
  v27 = static OS_os_log.crlThreeDimensionalObjects;
  sub_10002A958(&qword_1000D6C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000A64C0;
  swift_getErrorValue();
  v29 = sub_10008B208();
  v31 = v30;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000536C0();
  *(inited + 32) = v29;
  *(inited + 40) = v31;
  v32 = sub_10008AE18();
  sub_100035474(v27, &_mh_execute_header, v32, "Failed to export model: %{public}@", 34, 2, inited);

  swift_setDeallocating();
  sub_10002E85C(inited + 32);
  v33 = sub_100089CD8();
  (*(*(v33 - 8) + 56))(v26, 1, 1, v33);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_100071ED0()
{
  v2 = *v1;
  *(*v1 + 688) = v0;

  v3 = *(v2 + 664);
  v4 = *(v2 + 656);
  if (v0)
  {
    v5 = sub_100072C24;
  }

  else
  {
    v5 = sub_10007247C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10007200C()
{
  v2 = *v1;
  *(*v1 + 704) = v0;

  v3 = *(v2 + 664);
  v4 = *(v2 + 656);
  if (v0)
  {
    v5 = sub_1000729EC;
  }

  else
  {
    v5 = sub_100072148;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100072148()
{
  v1 = v0[84];
  v2 = v0[76];
  v3 = v0[74];

  sub_10008A618();
  swift_allocObject();
  *(v3 + 24) = sub_10008A608();

  *(v3 + 16) = 0;

  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_100078ECC(v2, v3 + v1);
  swift_endAccess();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100072240()
{
  v1 = *v0;

  v2 = *(v1 + 664);
  v3 = *(v1 + 656);

  return _swift_task_switch(sub_100072384, v3, v2);
}

uint64_t sub_100072384()
{
  v1 = v0[84];
  v2 = v0[76];
  v3 = v0[74];

  sub_10008A618();
  swift_allocObject();
  *(v3 + 24) = sub_10008A608();

  *(v3 + 16) = 0;

  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_100078ECC(v2, v3 + v1);
  swift_endAccess();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10007247C()
{
  v1 = v0[84];
  v2 = v0[76];
  v3 = v0[74];

  sub_10008A618();
  swift_allocObject();
  *(v3 + 24) = sub_10008A608();

  *(v3 + 16) = 0;

  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_100078ECC(v2, v3 + v1);
  swift_endAccess();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100072574()
{
  v1 = *v0;

  v2 = *(v1 + 664);
  v3 = *(v1 + 656);

  return _swift_task_switch(sub_1000726B8, v3, v2);
}

uint64_t sub_1000726B8()
{
  v1 = v0[84];
  v2 = v0[76];
  v3 = v0[74];

  sub_10008A618();
  swift_allocObject();
  *(v3 + 24) = sub_10008A608();

  *(v3 + 16) = 0;

  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_100078ECC(v2, v3 + v1);
  swift_endAccess();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000727B0()
{
  v1 = v0[76];
  v2 = v0[74];

  sub_10008A618();
  swift_allocObject();
  *(v2 + 24) = sub_10008A608();

  *(v2 + 16) = 0;

  swift_storeEnumTagMultiPayload();
  v3 = OBJC_IVAR____TtCO20USDRendererExtension15CRLUSDRendering22RealitySnapshotBackend_backendState;
  swift_beginAccess();
  sub_100078ECC(v1, v2 + v3);
  swift_endAccess();
  if (qword_1000D6128 != -1)
  {
    swift_once();
  }

  v4 = v0[72];
  v5 = static OS_os_log.crlThreeDimensionalObjects;
  sub_10002A958(&qword_1000D6C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000A64C0;
  swift_getErrorValue();
  v7 = sub_10008B208();
  v9 = v8;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000536C0();
  *(inited + 32) = v7;
  *(inited + 40) = v9;
  v10 = sub_10008AE18();
  sub_100035474(v5, &_mh_execute_header, v10, "Failed to export model: %{public}@", 34, 2, inited);

  swift_setDeallocating();
  sub_10002E85C(inited + 32);
  v11 = sub_100089CD8();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000729EC()
{
  v1 = v0[84];
  v2 = v0[76];
  v3 = v0[74];

  sub_10008A618();
  swift_allocObject();
  *(v3 + 24) = sub_10008A608();

  *(v3 + 16) = 0;

  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_100078ECC(v2, v3 + v1);
  swift_endAccess();
  if (qword_1000D6128 != -1)
  {
    swift_once();
  }

  v4 = v0[72];
  v5 = static OS_os_log.crlThreeDimensionalObjects;
  sub_10002A958(&qword_1000D6C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000A64C0;
  swift_getErrorValue();
  v7 = sub_10008B208();
  v9 = v8;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000536C0();
  *(inited + 32) = v7;
  *(inited + 40) = v9;
  v10 = sub_10008AE18();
  sub_100035474(v5, &_mh_execute_header, v10, "Failed to export model: %{public}@", 34, 2, inited);

  swift_setDeallocating();
  sub_10002E85C(inited + 32);
  v11 = sub_100089CD8();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100072C24()
{
  v1 = v0[84];
  v2 = v0[76];
  v3 = v0[74];

  sub_10008A618();
  swift_allocObject();
  *(v3 + 24) = sub_10008A608();

  *(v3 + 16) = 0;

  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_100078ECC(v2, v3 + v1);
  swift_endAccess();
  if (qword_1000D6128 != -1)
  {
    swift_once();
  }

  v4 = v0[72];
  v5 = static OS_os_log.crlThreeDimensionalObjects;
  sub_10002A958(&qword_1000D6C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000A64C0;
  swift_getErrorValue();
  v7 = sub_10008B208();
  v9 = v8;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000536C0();
  *(inited + 32) = v7;
  *(inited + 40) = v9;
  v10 = sub_10008AE18();
  sub_100035474(v5, &_mh_execute_header, v10, "Failed to export model: %{public}@", 34, 2, inited);

  swift_setDeallocating();
  sub_10002E85C(inited + 32);
  v11 = sub_100089CD8();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100072E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[54] = a3;
  v4[55] = v3;
  v4[52] = a1;
  v4[53] = a2;
  v5 = sub_100089DA8();
  v4[56] = v5;
  v4[57] = *(v5 - 8);
  v4[58] = swift_task_alloc();
  sub_10002A958(&qword_1000D6728);
  v4[59] = swift_task_alloc();
  v6 = sub_100089CD8();
  v4[60] = v6;
  v4[61] = *(v6 - 8);
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();
  v4[68] = type metadata accessor for CRLUSDRendering.SurfaceRequest.Item(0);
  v4[69] = swift_task_alloc();
  v7 = sub_10002A958(&qword_1000D7328);
  v4[70] = v7;
  v4[71] = *(v7 - 8);
  v4[72] = swift_task_alloc();
  v4[73] = _s19RealityBackendStateOMa();
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();
  sub_10008ACE8();
  v4[76] = sub_10008ACD8();
  v9 = sub_10008AC88();

  return _swift_task_switch(sub_10007312C, v9, v8);
}

id sub_10007312C()
{
  v121 = v0;
  v1 = v0[75];
  v2 = v0[74];
  v3 = v0[55];
  v4 = OBJC_IVAR____TtCO20USDRendererExtension15CRLUSDRendering22RealitySnapshotBackend_backendState;
  swift_beginAccess();
  sub_100078F30(v3 + v4, v1, _s19RealityBackendStateOMa);
  sub_100078C08(v1, v2, _s19RealityBackendStateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_100078C70(v0[74], _s19RealityBackendStateOMa);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v64 = v0[74];
      v65 = v0[60];
      v66 = v0[61];
      v67 = v0[52];

      sub_100078C70(v64, _s19RealityBackendStateOMa);
      (*(v66 + 56))(v67, 1, 1, v65);
      goto LABEL_24;
    }

    (*(v0[61] + 8))(v0[74], v0[60]);
  }

  v6 = v0[53];
  sub_10008A618();

  sub_100089F28();

  sub_100089DF8();
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = v0[71];
    v108 = v0[68];
    v10 = v0[61];
    v11 = v0[53] + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v104 = *(v9 + 72);
    v106 = (v10 + 56);
    v107 = (v10 + 16);
    v105 = (v10 + 32);
    v7.i32[1] = 0;
    v103 = v7;
    v102 = (v10 + 8);
    do
    {
      v116 = v8;
      v12 = v0[72];
      v13 = v0[69];
      v15 = v0[59];
      v14 = v0[60];
      sub_100078B98(v11, v12);
      sub_100078C08(v12, v13, type metadata accessor for CRLUSDRendering.SurfaceRequest.Item);
      v16 = v13 + *(v108 + 20);
      LOBYTE(v120[0].f64[0]) = 0;
      type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
      (*v107)(v15, v16, v14);
      (*v106)(v15, 0, 1, v14);
      sub_100089C68();
      v17 = v0[69];
      v18 = v0[67];
      v19 = v0[66];
      v20 = v0[65];
      v21 = v0[60];
      sub_10002E21C(v0[59], &qword_1000D6728);
      v22 = *v105;
      (*v105)(v19, v20, v21);
      v22(v18, v19, v21);
      v23 = objc_allocWithZone(CRLUSDExporterItem);
      sub_100089C58(v24);
      v26 = v25;
      v27 = [v23 initWithURL:v25];

      if (*v17)
      {
        if (*v17 != 1)
        {
          __break(1u);
LABEL_28:
          swift_once();
LABEL_23:
          v92 = v0[60];
          v93 = v0[61];
          v94 = v0[52];
          v95 = static OS_os_log.crlThreeDimensionalObjects;
          sub_10002A958(&qword_1000D6C70);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1000A64C0;
          swift_getErrorValue();
          v97 = sub_10008B208();
          v99 = v98;
          *(inited + 56) = &type metadata for String;
          *(inited + 64) = sub_1000536C0();
          *(inited + 32) = v97;
          *(inited + 40) = v99;
          v100 = sub_10008AE18();
          sub_100035474(v95, &_mh_execute_header, v100, "Failed to export to USDZ: %{public}@", 36, 2, inited);

          swift_setDeallocating();
          sub_10002E85C(inited + 32);
          (*(v93 + 56))(v94, 1, 1, v92);
          goto LABEL_24;
        }

        [v27 setType:0];
      }

      else
      {
        v28 = v0[69];
        [v27 setType:1];
        [v27 setSize:{*(v28 + *(v108 + 24)), *(v28 + *(v108 + 24) + 8)}];
      }

      sub_100089F48();

      sub_10008A6B8();
      v110 = v29;
      [v27 setScale:?];
      LODWORD(v30) = vsub_f32(v110, v103).u32[0];
      HIDWORD(v30) = vadd_f32(v110, v103).i32[1];
      v31 = [v27 setTranslation:v30];
      sub_10008ADF8(v32, v31);
      v111 = v34;
      v114 = v33;
      v35 = sub_10008AE48();
      v119[0] = v114;
      v119[1] = v111;
      sub_100078CD0(v119, v35, v120);
      [v27 setRotation:COERCE_DOUBLE(vcvt_f32_f64(v120[0]))];
      v36 = v27;
      sub_10008AC38();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10008AC58();
      }

      v37 = v0[69];
      v38 = v0[67];
      v39 = v0[60];
      sub_10008AC78();

      (*v102)(v38, v39);
      sub_100078C70(v37, type metadata accessor for CRLUSDRendering.SurfaceRequest.Item);
      v11 += v104;
      v8 = v116 - 1;
    }

    while (v116 != 1);
  }

  v40 = [objc_opt_self() defaultManager];
  result = CRLAppGroupIdentifier();
  if (result)
  {
    v42 = result;

    v43 = [v40 containerURLForSecurityApplicationGroupIdentifier:v42];

    if (v43)
    {
      v44 = v0[62];
      v112 = v0[61];
      v117 = v0[60];
      v46 = v0[57];
      v45 = v0[58];
      v47 = v0[56];
      v48 = v0[54];
      sub_100089CA8();

      sub_100089D98();
      sub_100089D58();
      (*(v46 + 8))(v45, v47);
      sub_100089C78();

      sub_100089C88();
      v49 = *(v112 + 8);
      v49(v44, v117);
      v50 = objc_allocWithZone(CRLUSDExporterRequest);
      sub_100078E84(0, &qword_1000D88E8);
      isa = sub_10008AC48().super.isa;

      v52 = [v50 initWithItems:isa];

      [v52 setSurfaceScale:v48[7]];
      [v52 setShowBasePlate:*v48];
      [v52 setBasePlateSize:{*(v48 + 1), v48[6]}];
      v53 = objc_opt_self();
      sub_100089C58(v54);
      v56 = v55;
      v0[51] = 0;
      LODWORD(v53) = [v53 exportUsdzWithRequest:v52 andDestUrl:v55 andError:v0 + 51];

      v57 = v0[51];
      v58 = v0[63];
      v59 = v0[64];
      if (!v53)
      {
        v90 = v0[60];
        v91 = v57;
        sub_100089BE8();

        swift_willThrow();
        v49(v58, v90);
        v49(v59, v90);
        if (qword_1000D6128 != -1)
        {
          goto LABEL_28;
        }

        goto LABEL_23;
      }

      v60 = v0[60];
      v61 = v0[61];
      v62 = v0[52];
      v63 = v57;
      v49(v59, v60);

      (*(v61 + 32))(v62, v58, v60);
      (*(v61 + 56))(v62, 0, 1, v60);
    }

    else
    {
      v118 = objc_opt_self();
      v68 = [v118 _atomicIncrementAssertCount];
      *&v120[0].f64[0] = [objc_allocWithZone(NSString) init];
      sub_10005FBCC(_swiftEmptyArrayStorage, v120);
      sub_10008AEC8();
      v69 = sub_10008AB08();

      sub_10008AEC8();
      v70 = sub_10008AB08();

      v71 = [v70 lastPathComponent];

      v72 = sub_10008AB38();
      v74 = v73;

      if (qword_1000D6008 != -1)
      {
        swift_once();
      }

      v109 = v0[61];
      v115 = v0[60];
      v113 = v0[52];
      v75 = static OS_os_log.crlAssert;
      sub_10002A958(&qword_1000D6C70);
      v76 = swift_initStackObject();
      *(v76 + 16) = xmmword_1000A6480;
      *(v76 + 56) = &type metadata for Int32;
      *(v76 + 64) = &protocol witness table for Int32;
      *(v76 + 32) = v68;
      v77 = sub_100078E84(0, &qword_1000D8560);
      *(v76 + 96) = v77;
      v78 = sub_100078E1C();
      *(v76 + 104) = v78;
      *(v76 + 72) = v69;
      *(v76 + 136) = &type metadata for String;
      v79 = sub_1000536C0();
      *(v76 + 112) = v72;
      *(v76 + 120) = v74;
      *(v76 + 176) = &type metadata for UInt;
      *(v76 + 184) = &protocol witness table for UInt;
      *(v76 + 144) = v79;
      *(v76 + 152) = 577;
      v80 = v120[0].f64[0];
      *(v76 + 216) = v77;
      *(v76 + 224) = v78;
      *(v76 + 192) = v80;
      v81 = v69;
      v82 = *&v80;
      v83 = sub_10008AE18();
      sub_100035474(v75, &_mh_execute_header, v83, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v76);
      swift_setDeallocating();
      sub_10002A958(&qword_1000D8570);
      swift_arrayDestroy();
      v84 = sub_10008AE18();
      sub_100035474(v75, &_mh_execute_header, v84, "Unable to get containerURL for CRLAppGroupIdentifier()", 54, 2, _swiftEmptyArrayStorage);

      sub_10008AF68();
      v85 = swift_allocObject();
      v85[2] = 8;
      v85[3] = 0;
      v85[4] = 0;
      v85[5] = 0;
      v86 = sub_10008AF58();
      sub_10008AEC8();
      v87 = sub_10008AB08();

      sub_10008AEC8();
      v88 = sub_10008AB08();

      sub_10008AEC8();
      v89 = sub_10008AB08();

      [v118 handleFailureInFunction:v87 file:v88 lineNumber:577 isFatal:0 format:v89 args:v86];

      (*(v109 + 56))(v113, 1, 1, v115);
    }

LABEL_24:

    v101 = v0[1];

    return v101();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100074000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_100089C38();
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v32 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002A958(&qword_1000D6728);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v30 - v9;
  v11 = sub_100089CD8();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v30 - v17;
  __chkstk_darwin(v16);
  v35 = &v30 - v19;
  v38 = 0;
  type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  (*(v12 + 16))(v10, a1, v11);
  v36 = *(v12 + 56);
  v36(v10, 0, 1, v11);
  sub_100089C68();
  v31 = v8;
  sub_10002E21C(v10, &qword_1000D6728);
  v20 = *(v12 + 32);
  v20(v18, v15, v11);
  v21 = v35;
  v20(v35, v18, v11);
  if (sub_100089C18())
  {
    v22 = objc_opt_self();
    sub_100089CB8();
    v23 = sub_10008AB08();

    v24 = [v22 compressModel:v23];

    v25 = v36;
    if (v24)
    {
      sub_10008AB38();

      v25(v31, 1, 1, v11);
      (*(v33 + 104))(v32, enum case for URL.DirectoryHint.inferFromPath(_:), v34);
      v26 = v37;
      sub_100089CC8();
      (*(v12 + 8))(v21, v11);
      v27 = v26;
      v28 = 0;
    }

    else
    {
      (*(v12 + 8))(v21, v11);
      v28 = 1;
      v27 = v37;
    }
  }

  else
  {
    (*(v12 + 8))(v21, v11);
    v28 = 1;
    v25 = v36;
    v27 = v37;
  }

  return (v25)(v27, v28, 1, v11);
}

uint64_t sub_10007444C()
{

  sub_100078C70(v0 + OBJC_IVAR____TtCO20USDRendererExtension15CRLUSDRendering22RealitySnapshotBackend_backendState, _s19RealityBackendStateOMa);
  v1 = OBJC_IVAR____TtCO20USDRendererExtension15CRLUSDRendering22RealitySnapshotBackend_uuid;
  v2 = sub_100089DA8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10007451C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO20USDRendererExtension15CRLUSDRendering22RealitySnapshotBackend_uuid;
  v4 = sub_100089DA8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100074594(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002F13C;

  return sub_10006AEB0(a1);
}

uint64_t sub_100074628(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100027728;

  return sub_10006B990(a1);
}

uint64_t sub_1000746BC()
{
  sub_10008ACE8();
  *(v0 + 16) = sub_10008ACD8();
  v2 = sub_10008AC88();

  return _swift_task_switch(sub_100074750, v2, v1);
}

uint64_t sub_100074750()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000747B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000533C0;

  return sub_100076E34();
}

uint64_t sub_100074854(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000748E8;

  return sub_100070988(a1);
}

uint64_t sub_1000748E8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1000749E8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100053904;

  return sub_1000717A4(a1, a2);
}

uint64_t sub_100074A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v14;
  v8[4] = a6;
  v8[5] = a7;
  v8[3] = a4;
  v9 = sub_10008A958();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();
  v8[11] = type metadata accessor for CRLUSDRendering.SceneRequest(0);
  v8[12] = swift_task_alloc();
  sub_10008ACE8();
  v8[13] = sub_10008ACD8();
  v11 = sub_10008AC88();
  v8[14] = v11;
  v8[15] = v10;

  return _swift_task_switch(sub_100074BC4, v11, v10);
}

uint64_t sub_100074BC4()
{
  if (qword_1000D5FD8 != -1)
  {
    swift_once();
  }

  sub_100078830(&qword_1000D67D0, type metadata accessor for CRLUSDRendering.SceneRequest);
  sub_100089B18();
  v0[16] = 0;
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_100074D94;
  v2 = v0[12];

  return sub_10006FCE8(v2);
}

uint64_t sub_100074D94(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 96);
  *(v5 + 144) = a1;
  *(v5 + 152) = a2;
  *(v5 + 160) = a3;

  sub_100078C70(v6, type metadata accessor for CRLUSDRendering.SceneRequest);
  v7 = *(v4 + 120);
  v8 = *(v4 + 112);

  return _swift_task_switch(sub_100074EF8, v8, v7);
}

uint64_t sub_100074EF8()
{
  v1 = *(v0 + 144);

  if (!v1)
  {
    (*(v0 + 48))(0, 0xF000000000000000, 0, 0xF000000000000000, 0);
    goto LABEL_13;
  }

  v2 = *(v0 + 144);
  Mutable = CFDataCreateMutable(0, 0);
  if (!Mutable)
  {
    goto LABEL_11;
  }

  v4 = Mutable;
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = *(v0 + 64);
  sub_10008A948();
  sub_10008A938();
  (*(v6 + 8))(v5, v7);
  v8 = sub_10008AB08();

  v9 = CGImageDestinationCreateWithData(v4, v8, 1uLL, 0);

  if (!v9)
  {
    v9 = v4;
LABEL_10:

LABEL_11:
    sub_10002ACC4();
    v17 = swift_allocError();
    *v18 = 0xD000000000000019;
    *(v18 + 8) = 0x80000001000A1FE0;
    *(v18 + 16) = 0;
    swift_willThrow();

    goto LABEL_12;
  }

  CGImageDestinationAddImage(v9, v2, 0);
  if (!CGImageDestinationFinalize(v9))
  {

    goto LABEL_10;
  }

  v10 = *(v0 + 160);
  v11 = v4;
  v12 = sub_100089D08();
  v14 = v13;

  if ((v10 & 1) == 0)
  {
    v26 = v11;
    *(v0 + 16) = *(v0 + 152);
    if (qword_1000D5FD0 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 128);
    sub_10002DC98();
    v23 = sub_100089B28();
    if (!v22)
    {
      v15 = v23;
      v16 = v24;
      goto LABEL_21;
    }

    v17 = v22;

    sub_10002AC1C(v12, v14);
LABEL_12:
    v19 = *(v0 + 48);
    swift_errorRetain();
    v19(0, 0xF000000000000000, 0, 0xF000000000000000, v17);

    goto LABEL_13;
  }

  v15 = 0;
  v16 = 0xF000000000000000;
LABEL_21:
  v25 = *(v0 + 48);
  sub_10002AC70(v12, v14);
  v25(v12, v14, v15, v16, 0);

  sub_10002AC1C(v12, v14);
  sub_10002AC1C(v12, v14);

  sub_10002AC08(v15, v16);
LABEL_13:

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100075228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[45] = a8;
  v8[46] = v14;
  v8[43] = a6;
  v8[44] = a7;
  v8[42] = a4;
  v9 = sub_10008A958();
  v8[47] = v9;
  v8[48] = *(v9 - 8);
  v8[49] = swift_task_alloc();
  sub_10008ACE8();
  v8[50] = sub_10008ACD8();
  v11 = sub_10008AC88();
  v8[51] = v11;
  v8[52] = v10;

  return _swift_task_switch(sub_10007532C, v11, v10);
}

uint64_t sub_10007532C()
{
  if (qword_1000D5FD8 != -1)
  {
    swift_once();
  }

  sub_10002D9B8();
  sub_100089B18();
  v1 = *(v0 + 288);
  *(v0 + 112) = *(v0 + 272);
  *(v0 + 128) = v1;
  v2 = *(v0 + 320);
  *(v0 + 144) = *(v0 + 304);
  *(v0 + 160) = v2;
  v3 = *(v0 + 224);
  *(v0 + 48) = *(v0 + 208);
  *(v0 + 64) = v3;
  v4 = *(v0 + 256);
  *(v0 + 80) = *(v0 + 240);
  *(v0 + 96) = v4;
  v5 = *(v0 + 192);
  *(v0 + 16) = *(v0 + 176);
  *(v0 + 32) = v5;
  v6 = swift_task_alloc();
  *(v0 + 424) = v6;
  *v6 = v0;
  v6[1] = sub_1000754D0;

  return sub_100070988(v0 + 16);
}

uint64_t sub_1000754D0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 432) = a1;

  sub_10002DA0C(v3 + 16);
  v4 = *(v2 + 416);
  v5 = *(v2 + 408);

  return _swift_task_switch(sub_100075608, v5, v4);
}

uint64_t sub_100075608()
{
  v1 = v0[54];

  if (v1)
  {
    v2 = v0[54];
    Mutable = CFDataCreateMutable(0, 0);
    if (Mutable)
    {
      v4 = Mutable;
      v6 = v0[48];
      v5 = v0[49];
      v7 = v0[47];
      sub_10008A948();
      sub_10008A938();
      (*(v6 + 8))(v5, v7);
      v8 = sub_10008AB08();

      v9 = CGImageDestinationCreateWithData(v4, v8, 1uLL, 0);

      if (v9)
      {
        CGImageDestinationAddImage(v9, v2, 0);
        if (CGImageDestinationFinalize(v9))
        {
          v10 = v0[45];
          v11 = v4;
          v12 = sub_100089D08();
          v14 = v13;

          sub_10002AC70(v12, v14);
          v10(v12, v14, 0);
          sub_10002AC1C(v12, v14);
          sub_10002AC1C(v12, v14);

          goto LABEL_11;
        }
      }

      else
      {
        v9 = v4;
      }
    }

    sub_10002ACC4();
    v15 = swift_allocError();
    *v16 = 0xD000000000000019;
    *(v16 + 8) = 0x80000001000A1FE0;
    *(v16 + 16) = 0;
    swift_willThrow();

    v17 = v0[45];
    swift_errorRetain();
    v17(0, 0xF000000000000000, v15);
  }

  else
  {
    (v0[45])(0, 0xF000000000000000, 0);
  }

LABEL_11:

  v18 = v0[1];

  return v18();
}

void sub_10007587C(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = _Block_copy(aBlock);
  v15 = a3;
  v19 = a1;
  v16 = sub_100089D08();
  v18 = v17;

  _Block_copy(v14);
  sub_100078220(v16, v18, v19, v14, a5, a6, a7, a8);
  _Block_release(v14);
  _Block_release(v14);
  sub_10002AC1C(v16, v18);
}

uint64_t sub_10007595C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[45] = a8;
  v8[46] = v14;
  v8[43] = a6;
  v8[44] = a7;
  v8[42] = a4;
  v8[47] = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  v8[48] = swift_task_alloc();
  v8[49] = swift_task_alloc();
  sub_10002A958(&qword_1000D6728);
  v8[50] = swift_task_alloc();
  v8[51] = swift_task_alloc();
  v9 = sub_100089CD8();
  v8[52] = v9;
  v8[53] = *(v9 - 8);
  v8[54] = swift_task_alloc();
  v8[55] = swift_task_alloc();
  sub_10008ACE8();
  v8[56] = sub_10008ACD8();
  v11 = sub_10008AC88();
  v8[57] = v11;
  v8[58] = v10;

  return _swift_task_switch(sub_100075AEC, v11, v10);
}

uint64_t sub_100075AEC()
{
  if (qword_1000D5FD8 != -1)
  {
    swift_once();
  }

  sub_10002D9B8();
  sub_100089B18();
  *(v0 + 472) = 0;
  v1 = *(v0 + 288);
  *(v0 + 112) = *(v0 + 272);
  *(v0 + 128) = v1;
  v2 = *(v0 + 320);
  *(v0 + 144) = *(v0 + 304);
  *(v0 + 160) = v2;
  v3 = *(v0 + 224);
  *(v0 + 48) = *(v0 + 208);
  *(v0 + 64) = v3;
  v4 = *(v0 + 256);
  *(v0 + 80) = *(v0 + 240);
  *(v0 + 96) = v4;
  v5 = *(v0 + 192);
  *(v0 + 16) = *(v0 + 176);
  *(v0 + 32) = v5;
  v6 = swift_task_alloc();
  *(v0 + 480) = v6;
  *v6 = v0;
  v6[1] = sub_100075CD4;
  v7 = *(v0 + 408);

  return sub_1000717A4(v7, v0 + 16);
}

uint64_t sub_100075CD4()
{
  v1 = *v0;

  sub_10002DA0C(v1 + 16);
  v2 = *(v1 + 464);
  v3 = *(v1 + 456);

  return _swift_task_switch(sub_100075E00, v3, v2);
}

uint64_t sub_100075E00()
{
  v1 = v0[52];
  v2 = v0[53];
  v3 = v0[51];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[45];
    sub_10002E21C(v0[51], &qword_1000D6728);
    v4(0, 0xF000000000000000, 0);
  }

  else
  {
    v5 = v0[59];
    v6 = v0[54];
    v7 = v0[55];
    v8 = v0[52];
    v9 = v0[53];
    v10 = v0[50];
    v11 = v0[48];
    (*(v9 + 32))(v7, v0[51], v8);
    v12 = *(v9 + 16);
    v12(v6, v7, v8);
    v12(v11, v6, v8);
    v12(v10, v6, v8);
    (*(v9 + 56))(v10, 0, 1, v8);
    v13 = sub_100089C28();
    if (v5)
    {
      v15 = v0[54];
      v16 = v0[55];
      v17 = v0[52];
      v18 = v0[53];
      v19 = v0[48];
      sub_10002E21C(v0[50], &qword_1000D6728);
      v20 = *(v18 + 8);
      v20(v15, v17);
      v20(v16, v17);
      v20(v19, v17);
      v35 = v0[45];
      swift_errorRetain();
      v35(0, 0xF000000000000000, v5);
    }

    else
    {
      v21 = v13;
      v22 = v14;
      v24 = v0[53];
      v23 = v0[54];
      v25 = v0[52];
      v26 = v0[49];
      v28 = v0[47];
      v27 = v0[48];
      sub_10002E21C(v0[50], &qword_1000D6728);
      v29 = v25;
      v30 = *(v24 + 8);
      v30(v23, v29);
      v31 = (v27 + *(v28 + 20));
      *v31 = v21;
      v31[1] = v22;
      sub_100078C08(v27, v26, type metadata accessor for CRLUSDRendering.BookmarkableURL);
      if (qword_1000D5FD0 != -1)
      {
        swift_once();
      }

      sub_100078830(&qword_1000D67A0, type metadata accessor for CRLUSDRendering.BookmarkableURL);
      v32 = sub_100089B28();
      v33 = v0[55];
      v34 = v0[52];
      v38 = v0[45];
      v39 = v32;
      v40 = v30;
      v42 = v41;
      sub_100078C70(v0[49], type metadata accessor for CRLUSDRendering.BookmarkableURL);
      sub_10002AC70(v39, v42);
      v38(v39, v42, 0);
      sub_10002AC1C(v39, v42);
      sub_10002AC1C(v39, v42);
      v40(v33, v34);
    }
  }

  v36 = v0[1];

  return v36();
}

uint64_t sub_100076258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a5;
  v8[3] = a6;
  v8[6] = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  v8[7] = swift_task_alloc();
  v8[8] = swift_task_alloc();
  v8[9] = type metadata accessor for CRLUSDRendering.CompressionRequest(0);
  v8[10] = swift_task_alloc();
  sub_10002A958(&qword_1000D6728);
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  v9 = sub_100089CD8();
  v8[13] = v9;
  v8[14] = *(v9 - 8);
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000763D8, 0, 0);
}

uint64_t sub_1000763D8()
{
  if (qword_1000D5FD8 != -1)
  {
    swift_once();
  }

  sub_100078830(&qword_1000D6798, type metadata accessor for CRLUSDRendering.CompressionRequest);
  sub_100089B18();
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[10];
  _s22RealitySnapshotBackendCMa();
  sub_100074000(v4, v3);
  sub_100078C70(v4, type metadata accessor for CRLUSDRendering.CompressionRequest);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[4];
    sub_10002E21C(v0[12], &qword_1000D6728);
    v5(0, 0xF000000000000000, 0);
  }

  else
  {
    v6 = v0[16];
    v8 = v0[14];
    v7 = v0[15];
    v9 = v0[13];
    v10 = v0[11];
    v31 = v0[7];
    (*(v8 + 32))(v6, v0[12], v9);
    v11 = *(v8 + 16);
    v11(v7, v6, v9);
    v11(v31, v7, v9);
    v11(v10, v7, v9);
    (*(v8 + 56))(v10, 0, 1, v9);
    v12 = sub_100089C28();
    v14 = v13;
    v15 = v0[14];
    v16 = v0[13];
    v17 = v0[7];
    v30 = v0[15];
    v32 = v0[8];
    v18 = v0[6];
    sub_10002E21C(v0[11], &qword_1000D6728);
    v19 = *(v15 + 8);
    v19(v30, v16);
    v20 = (v17 + *(v18 + 20));
    *v20 = v12;
    v20[1] = v14;
    sub_100078C08(v17, v32, type metadata accessor for CRLUSDRendering.BookmarkableURL);
    if (qword_1000D5FD0 != -1)
    {
      swift_once();
    }

    sub_100078830(&qword_1000D67A0, type metadata accessor for CRLUSDRendering.BookmarkableURL);
    v21 = sub_100089B28();
    v24 = v0[16];
    v25 = v0[13];
    v26 = v0[4];
    v27 = v21;
    v29 = v28;
    sub_100078C70(v0[8], type metadata accessor for CRLUSDRendering.BookmarkableURL);
    sub_10002AC70(v27, v29);
    v26(v27, v29, 0);
    sub_10002AC1C(v27, v29);
    sub_10002AC1C(v27, v29);
    v19(v24, v25);
  }

  v22 = v0[1];

  return v22();
}

void sub_1000768D8(void *a1, int a2, void *a3, void *aBlock, void (*a5)(uint64_t, unint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  v9 = a3;
  v13 = a1;
  v10 = sub_100089D08();
  v12 = v11;

  _Block_copy(v8);
  a5(v10, v12, v13, v8);
  _Block_release(v8);
  _Block_release(v8);
  sub_10002AC1C(v10, v12);
}

uint64_t _s22RealitySnapshotBackendCMa()
{
  result = qword_1000D86E8;
  if (!qword_1000D86E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100076A3C()
{
  result = _s19RealityBackendStateOMa();
  if (v1 <= 0x3F)
  {
    result = sub_100089DA8();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

CGImageRef sub_100076B64(void *a1)
{
  v3 = [a1 width];
  v4 = [a1 height];
  if ((v3 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v5 = v4;
  v1 = v4 * 4 * v3;
  if ((v4 * (4 * v3)) >> 64 != v1 >> 63)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v1 < 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v1)
  {
    v6 = sub_10008AC68();
    v6[2] = v1;
    bzero(v6 + 4, v1);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  sub_10007776C(v3, v5, &v23);
  [a1 getBytes:v6 + 4 bytesPerRow:4 * v3 fromRegion:&v23 mipmapLevel:0];
  v7 = [a1 width];
  v8 = [a1 height];
  if ((v7 - 0x2000000000000000) >> 62 != 3)
  {
    goto LABEL_30;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v8)
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
LABEL_32:
      __break(1u);
LABEL_33:
      swift_once();
LABEL_23:
      v21 = static OS_os_log.crlThreeDimensionalObjects;
      v22 = sub_10008AE18();
      sub_100035474(v21, &_mh_execute_header, v22, "Could not create CGImage from data!", 35, 2, _swiftEmptyArrayStorage);

      return 0;
    }

    v9 = 0;
    v10 = 4 * v7;
    v11 = 35;
LABEL_12:
    if ((v9 * v10) >> 64 == (v9 * v10) >> 63)
    {
      ++v9;
      v12 = 0x2000000000000001;
      v13 = v7;
      v14 = v11;
      do
      {
        if (!v13)
        {
          v11 += v10;
          if (v9 != v8)
          {
            goto LABEL_12;
          }

          goto LABEL_19;
        }

        if (!--v12)
        {
          __break(1u);
          goto LABEL_26;
        }

        v15 = *(v6 + v14);
        v14 += 4;
        --v13;
      }

      while (v15 != 255);
      v1 = [objc_allocWithZone(NSData) initWithBytes:v6 + 4 length:v1];

      v16 = CGDataProviderCreateWithCFData(v1);
      if (v16)
      {
        v17 = v16;
        DeviceRGB = CGColorSpaceCreateDeviceRGB();
        v19 = CGImageCreate(v3, v5, 8uLL, 0x20uLL, 4 * v3, DeviceRGB, 3u, v17, 0, 1, kCGRenderingIntentDefault);

        return v19;
      }

      if (qword_1000D6128 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_33;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_19:

  return 0;
}

uint64_t sub_100076E34()
{
  v1[19] = v0;
  v1[20] = _s19RealityBackendStateOMa();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = sub_10008ACE8();
  v1[24] = sub_10008ACD8();
  v3 = sub_10008AC88();
  v1[25] = v3;
  v1[26] = v2;

  return _swift_task_switch(sub_100076F0C, v3, v2);
}

uint64_t sub_100076F0C()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[19];
  v4 = OBJC_IVAR____TtCO20USDRendererExtension15CRLUSDRendering22RealitySnapshotBackend_backendState;
  swift_beginAccess();
  sub_100078F30(v3 + v4, v2, _s19RealityBackendStateOMa);
  sub_100078C08(v2, v1, _s19RealityBackendStateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_100078C70(v0[21], _s19RealityBackendStateOMa);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v29 = v0[21];

      sub_100078C70(v29, _s19RealityBackendStateOMa);
      goto LABEL_20;
    }

    v6 = v0[21];
    v7 = sub_100089CD8();
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  v8 = v0[19];
  v9 = *(v8 + 16);
  v0[27] = v9;
  if (!v9)
  {

    goto LABEL_20;
  }

  v10 = objc_allocWithZone(MTLTextureDescriptor);

  v11 = [v10 init];
  v0[28] = v11;
  v19 = *(v8 + 32);
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v20 = v11;
  v21 = v0[19];
  v11 = [v11 setWidth:v19];
  v22 = *(v21 + 40);
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    return withCheckedContinuation<A>(isolation:function:_:)(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  [v20 setHeight:v22];
  [v20 setPixelFormat:71];
  [v20 setSampleCount:1];
  [v20 setUsage:5];
  v23 = MTLCreateSystemDefaultDevice();
  if (v23)
  {
    v24 = [v23 newTextureWithDescriptor:v20];
    v0[29] = v24;
    swift_unknownObjectRelease();
    if (v24)
    {
      v0[30] = 0;
      v25 = v0[29];
      v26 = v0[27];
      v27 = sub_10008ACD8();
      v0[31] = v27;
      v28 = swift_task_alloc();
      v0[32] = v28;
      *(v28 + 16) = v25;
      *(v28 + 24) = v26;
      v11 = swift_task_alloc();
      v0[33] = v11;
      *v11 = v0;
      v11[1] = sub_100077304;
      v13 = &protocol witness table for MainActor;
      v16 = sub_100077764;
      v15 = 0x80000001000A1D20;
      v18 = &type metadata for () + 8;
      v12 = v27;
      v14 = 0xD000000000000011;
      v17 = v28;

      return withCheckedContinuation<A>(isolation:function:_:)(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

LABEL_20:

  v30 = v0[1];

  return v30(0, 0, 1);
}

uint64_t sub_100077304()
{
  v1 = *v0;

  v2 = *(v1 + 208);
  v3 = *(v1 + 200);

  return _swift_task_switch(sub_100077464, v3, v2);
}

uint64_t sub_100077464()
{
  v1 = sub_100076B64(*(v0 + 232));
  v2 = v1;
  v3 = v2;
  if (v1)
  {

LABEL_4:

    if (qword_1000D6128 != -1)
    {
      swift_once();
    }

    v4 = static OS_os_log.crlThreeDimensionalObjects;
    sub_10002A958(&qword_1000D6C70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000A64B0;
    if (v1)
    {
      Width = CGImageGetWidth(v3);
      *(inited + 56) = &type metadata for Int;
      *(inited + 64) = &protocol witness table for Int;
      *(inited + 32) = Width;
      Height = CGImageGetHeight(v3);
    }

    else
    {
      Height = 0;
      *(inited + 56) = &type metadata for Int;
      *(inited + 64) = &protocol witness table for Int;
      *(inited + 32) = 0;
    }

    v8 = *(v0 + 224);
    v9 = *(v0 + 152);
    *(inited + 96) = &type metadata for Int;
    *(inited + 104) = &protocol witness table for Int;
    *(inited + 72) = Height;
    v10 = sub_10008AE08();
    sub_100035474(v4, &_mh_execute_header, v10, "RealityRenderer snapshot completed: %ix%i", 41, 2, inited);
    swift_unknownObjectRelease();

    swift_setDeallocating();
    sub_10002A958(&qword_1000D8570);
    swift_arrayDestroy();
    v11 = *(v9 + OBJC_IVAR____TtCO20USDRendererExtension15CRLUSDRendering22RealitySnapshotBackend_compression);
    v12 = *(v9 + OBJC_IVAR____TtCO20USDRendererExtension15CRLUSDRendering22RealitySnapshotBackend_compression + 8);

    v13 = *(v0 + 8);

    return v13(v1, v11, v12);
  }

  if (*(v0 + 240) == 4)
  {
    goto LABEL_4;
  }

  ++*(v0 + 240);
  v15 = *(v0 + 232);
  v16 = *(v0 + 216);
  v17 = sub_10008ACD8();
  *(v0 + 248) = v17;
  v18 = swift_task_alloc();
  *(v0 + 256) = v18;
  *(v18 + 16) = v15;
  *(v18 + 24) = v16;
  v19 = swift_task_alloc();
  *(v0 + 264) = v19;
  *v19 = v0;
  v19[1] = sub_100077304;

  return withCheckedContinuation<A>(isolation:function:_:)(v19, v17, &protocol witness table for MainActor, 0xD000000000000011, 0x80000001000A1D20, sub_100077764, v18, &type metadata for () + 8);
}

uint64_t sub_10007776C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = result;
  a3[4] = a2;
  a3[5] = 1;
  return result;
}

uint64_t sub_100077780()
{
  v1 = sub_10002A958(&qword_1000D88E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100077880(double a1, double a2, float a3)
{
  v3 = a2 * 0.5;
  v4.f32[0] = a1;
  v5.f64[0] = 0.0;
  v5.f64[1] = v3;
  v4.f32[1] = a3 + 0.001;
  v30 = 0.0;
  v31 = 0;
  v29 = v5;
  v28[0] = vcvtq_f64_f32(v4);
  v28[1] = COERCE_UNSIGNED_INT64(a3);
  sub_100079078(&v29, v28, &v20);
  v6 = v20;
  v7 = v21;
  v8 = v22;
  v9 = v23;
  v10 = v24;
  v11 = v25;
  v12 = v26;
  v13 = v27;
  sub_1000790A8(&v20, &v29);
  v14.n128_u64[0] = vcvt_f32_f64(v29);
  *&v15 = v30;
  v14.n128_u64[1] = v15;
  v19 = v14;
  v22 = v8;
  v23 = v9;
  v20 = v6;
  v21 = v7;
  v26 = v12;
  v27 = v13;
  v24 = v10;
  v25 = v11;
  sub_1000790D4(&v20, &v29);
  v17.n128_u64[0] = vcvt_f32_f64(v29);
  *&v16 = v30;
  v17.n128_u64[1] = v16;

  return BoundingBox.init(min:max:)(v19, v17);
}

uint64_t sub_1000779A8(uint64_t a1)
{
  v3 = sub_10002A958(&qword_1000D6728);
  __chkstk_darwin(v3 - 8);
  v55 = &v45 - v4;
  v5 = sub_100089CD8();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v53 = &v45 - v11;
  __chkstk_darwin(v10);
  v57 = &v45 - v12;
  v54 = type metadata accessor for CRLUSDRendering.SurfaceRequest.Item(0);
  __chkstk_darwin(v54);
  v15 = (&v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(a1 + 144);
  v17 = *(v16 + 16);
  if (v17)
  {
    v58 = v1;
    v18 = v16 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v51 = (v6 + 56);
    v52 = (v6 + 16);
    v48 = (v6 + 32);
    v50 = (v6 + 8);
    v19 = *(v13 + 72);
    v49 = (&v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v56 = v5;
    v47 = v9;
    v46 = v19;
    while (1)
    {
      sub_100078F30(v18, v15, type metadata accessor for CRLUSDRendering.SurfaceRequest.Item);
      if (*v15)
      {
        if (*v15 != 1)
        {
          __break(1u);
          goto LABEL_19;
        }

        v21 = v15 + *(v54 + 20);
        v59 = 0;
        type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
        v22 = v55;
        v23 = v21;
        v24 = v56;
        (*v52)(v55, v23, v56);
        (*v51)(v22, 0, 1, v24);
        v25 = v58;
        sub_100089C68();
        v58 = v25;
        if (v25)
        {
          sub_10002E21C(v22, &qword_1000D6728);
          swift_getErrorValue();
          v40 = sub_10008B208();
          v42 = v41;
          sub_10002ACC4();
          swift_allocError();
          *v43 = v40;
          *(v43 + 8) = v42;
          *(v43 + 16) = 1;
          swift_willThrow();

          sub_100078C70(v15, type metadata accessor for CRLUSDRendering.SurfaceRequest.Item);
          return v39 & 1;
        }

        sub_10002E21C(v22, &qword_1000D6728);
        v26 = v24;
        v27 = *v48;
        v28 = v53;
        (*v48)(v53, v9, v26);
        v27(v57, v28, v26);
        sub_100089C48();
        v29 = sub_10008AB68();
        v31 = v30;

        if (v29 == 0x7974696C616572 && v31 == 0xE700000000000000)
        {

LABEL_12:
          if (qword_1000D6128 == -1)
          {
LABEL_13:
            v32 = static OS_os_log.crlThreeDimensionalObjects;
            sub_10002A958(&qword_1000D6C70);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1000A64C0;
            v34 = v57;
            v35 = sub_100089CB8();
            v37 = v36;
            *(inited + 56) = &type metadata for String;
            *(inited + 64) = sub_1000536C0();
            *(inited + 32) = v35;
            *(inited + 40) = v37;
            v38 = sub_10008AE28();
            sub_100035474(v32, &_mh_execute_header, v38, "requestContainsRealityFiles: %{public}@", 39, 2, inited);
            swift_setDeallocating();
            sub_10002E85C(inited + 32);
            (*v50)(v34, v56);
            sub_100078C70(v49, type metadata accessor for CRLUSDRendering.SurfaceRequest.Item);
            v39 = 1;
            return v39 & 1;
          }

LABEL_19:
          swift_once();
          goto LABEL_13;
        }

        v20 = sub_10008B158();

        if (v20)
        {
          goto LABEL_12;
        }

        (*v50)(v57, v56);
        v9 = v47;
        v15 = v49;
        v19 = v46;
      }

      sub_100078C70(v15, type metadata accessor for CRLUSDRendering.SurfaceRequest.Item);
      v18 += v19;
      if (!--v17)
      {
        v39 = 0;
        return v39 & 1;
      }
    }
  }

  v39 = 0;
  return v39 & 1;
}

uint64_t sub_100077FBC(uint64_t a1, unint64_t a2, void *a3, void (**a4)(void, void, void, void))
{
  v8 = sub_10002A958(&qword_1000D6780);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = sub_10008AD08();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
    sub_10008ACE8();
    _Block_copy(a4);

    v15 = a3;
    sub_10002AC70(a1, a2);

    v16 = sub_10008ACD8();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = &protocol witness table for MainActor;
    v17[4] = v13;
    v17[5] = v15;
    v17[6] = a1;
    v17[7] = a2;
    v17[8] = sub_10002DB54;
    v17[9] = v11;
    sub_10004BA04(0, 0, v10, &unk_1000AA810, v17);
  }

  else
  {
    sub_10002D714();
    swift_allocError();
    *v19 = xmmword_1000A5430;
    _Block_copy(a4);
    v20 = sub_100089BD8();
    (a4)[2](a4, 0, 0, v20);
  }
}

uint64_t sub_100078220(uint64_t a1, unint64_t a2, void *a3, void (**a4)(void, void, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = sub_10002A958(&qword_1000D6780);
  __chkstk_darwin(v14 - 8);
  v16 = &v27 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = sub_10008AD08();
    (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
    sub_10008ACE8();
    v28 = a8;
    _Block_copy(a4);

    v21 = a3;
    sub_10002AC70(a1, a2);

    v22 = sub_10008ACD8();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = &protocol witness table for MainActor;
    v23[4] = v19;
    v23[5] = v21;
    v23[6] = a1;
    v23[7] = a2;
    v23[8] = a7;
    v23[9] = v17;
    sub_10004BA04(0, 0, v16, v28, v23);
  }

  else
  {
    sub_10002D714();
    swift_allocError();
    *v25 = xmmword_1000A5430;
    _Block_copy(a4);
    v26 = sub_100089BD8();
    (a4)[2](a4, 0, v26);
  }
}

uint64_t sub_10007847C(uint64_t a1, unint64_t a2, void *a3, void (**a4)(void, void, void))
{
  v8 = sub_10002A958(&qword_1000D6780);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  if (swift_weakLoadStrong())
  {
    v12 = sub_10008AD08();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = a3;
    v13[5] = a1;
    v13[6] = a2;
    v13[7] = sub_10002D70C;
    v13[8] = v11;
    _Block_copy(a4);
    v14 = a3;
    sub_10002AC70(a1, a2);

    sub_100084C58(0, 0, v10, &unk_1000AA7E0, v13);

    sub_10002E21C(v10, &qword_1000D6780);
  }

  else
  {
    sub_10002D714();
    swift_allocError();
    *v16 = xmmword_1000A5430;
    _Block_copy(a4);
    v17 = sub_100089BD8();
    (a4)[2](a4, 0, v17);
  }
}

uint64_t sub_1000786CC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100078704()
{
  swift_unknownObjectRelease();

  sub_10002AC1C(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100078754(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002F13C;

  return sub_100076258(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100078830(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10007887C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002F13C;

  return sub_10007595C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100078968(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100027728;

  return sub_100075228(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100078A54()
{
  swift_unknownObjectRelease();

  sub_10002AC1C(*(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100078AAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002F13C;

  return sub_100074A90(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100078B98(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002A958(&qword_1000D7328);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100078C08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100078C70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100078CD0(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  _Q1 = *a1;
  if (a2 == 2)
  {
    v6 = *a1;
    _Q1.i64[0] = *(a1 + 16);
  }

  else if (a2 == 1)
  {
    v6 = vextq_s8(_Q1, *(a1 + 16), 8uLL);
  }

  else
  {
    v6 = 0uLL;
    _Q1.i64[0] = 0;
  }

  v7 = *(a1 + 24);
  v25 = v6;
  _D9 = v6.f64[1];
  _V4.D[1] = v7;
  __asm { FMLA            D0, D1, V4.D[1] }

  v26 = *_Q1.i64;
  *&v15 = atan2(_D0 + _D0, (vmulq_f64(v6, v6).f64[0] + *_Q1.i64 * *_Q1.i64) * -2.0 + 1.0);
  v24 = v15;
  v16 = v7 * v25.f64[0] - _D9 * v26 + v7 * v25.f64[0] - _D9 * v26;
  if (v16 > 1.0)
  {
    v16 = 1.0;
  }

  if (v16 < -1.0)
  {
    v16 = -1.0;
  }

  v23 = asin(v16);
  _V2.D[1] = v25.f64[1];
  _V4.D[1] = v7;
  __asm { FMLA            D0, D9, V4.D[1] }

  *&_D0 = _D0 + _D0;
  __asm { FMLA            D1, D9, V2.D[1] }

  *&_D1 = _D1 * -2.0 + 1.0;
  *&v21 = atan2f(*&_D0, *&_D1);
  if (a2 == 2)
  {
    *v22.i64 = v23;
    v22.i64[1] = v21;
    v21 = v24;
  }

  else if (a2 == 1)
  {
    v22.i64[0] = v24;
    *&v22.i64[1] = v23;
  }

  else
  {
    v22 = vdupq_n_s64(0x7FF8000000000000uLL);
    *&v21 = 0x7FF8000000000000;
  }

  *a3 = v22;
  *(a3 + 16) = v21;
  *(a3 + 32) = a2;
}

unint64_t sub_100078E1C()
{
  result = qword_1000D8980;
  if (!qword_1000D8980)
  {
    sub_100078E84(255, &qword_1000D8560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8980);
  }

  return result;
}

uint64_t sub_100078E84(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100078ECC(uint64_t a1, uint64_t a2)
{
  v4 = _s19RealityBackendStateOMa();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100078F30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_100078F98(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
}

uint64_t sub_100078FA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002A958(&qword_1000D7328);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *sub_100079014(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

float64x2_t sub_100079078@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v3 = a2[1];
  __asm { FMOV            V4.2D, #-0.5 }

  v10 = *&vaddq_f64(a1[1], vmulq_f64(v3, _Q4));
  result = vaddq_f64(*a1, vmulq_f64(*a2, _Q4));
  *a3 = result;
  *(a3 + 16) = v10;
  *(a3 + 32) = v4;
  *(a3 + 48) = v3.f64[0];
  return result;
}

float64x2_t sub_1000790A8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *&vaddq_f64(*(a1 + 16), vminnmq_f64(*(a1 + 48), 0));
  result = vaddq_f64(*a1, vminnmq_f64(*(a1 + 32), 0));
  *a2 = result;
  *(a2 + 16) = v2;
  return result;
}

float64x2_t sub_1000790D4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *&vaddq_f64(*(a1 + 16), vmaxnmq_f64(*(a1 + 48), 0));
  result = vaddq_f64(*a1, vmaxnmq_f64(*(a1 + 32), 0));
  *a2 = result;
  *(a2 + 16) = v2;
  return result;
}

id sub_100079114()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = &v0[OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_textureData];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v0[OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_hasDrawnFrame] = 0;
  v4 = OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_frameNumber;
  v12 = 0;
  sub_10002A958(&qword_1000D79A8);
  swift_allocObject();
  *&v0[v4] = sub_10008A9E8();
  v5 = &v0[OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_metalContext];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v0[OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_signalState];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 2;
  sub_100078E84(0, &unk_1000D8990);
  v7 = sub_10008AE38();
  v8 = [objc_allocWithZone(MTLSharedEventListener) initWithDispatchQueue:v7];

  *&v1[OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_listener] = v8;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "init");
  [v9 setBackgroundColor:0];
  [v9 setOpaque:0];

  return v9;
}

void sub_1000792C0()
{
  v1 = (v0 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_textureData);
  v2 = *(v0 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_textureData);
  if (v2)
  {
    v4 = v1[2];
    v3 = v1[3];
    v5 = v1[1];
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v6 = v3;
    v7 = [v2 device];
    v8 = *(v0 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_metalContext);
    if (v8)
    {
      v9 = *(v0 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_metalContext + 8);
      swift_unknownObjectRetain();
      if (v7 == v8)
      {
        goto LABEL_7;
      }

      swift_unknownObjectRelease();
    }

    v10 = [v7 newCommandQueue];
    if (v10)
    {
      v9 = v10;
LABEL_7:
      swift_unknownObjectRetain();
      sub_10002FA14(v7);

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_10007A8D8(v7, v9);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v11 = [v4 signaledValue];
      v12 = __CFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        __break(1u);
      }

      else
      {
        sub_10007A9B8(v13, v5);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease_n();
      }

      return;
    }

    sub_10007A8D8(0, 0);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {

    sub_10007A8D8(0, 0);
  }
}

uint64_t sub_1000794CC(id a1, id a2)
{
  if (a1 == a2)
  {
LABEL_17:
    v10 = 1;
    return v10 & 1;
  }

  v4 = [a2 label];
  if (v4)
  {

    v5 = [a1 label];
    if (v5)
    {
      v6 = v5;
      v7 = sub_10008AB38();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v11 = [a2 label];
    if (v11)
    {
      v12 = v11;
      v13 = sub_10008AB38();
      v15 = v14;

      if (v9)
      {
        if (v15)
        {
          if (v7 == v13 && v9 == v15)
          {

            v10 = 1;
          }

          else
          {
            v10 = sub_10008B158();
          }

          goto LABEL_19;
        }

        goto LABEL_14;
      }

      if (v15)
      {
        v10 = 0;
        goto LABEL_19;
      }
    }

    else if (v9)
    {
LABEL_14:
      v10 = 0;
LABEL_19:

      return v10 & 1;
    }

    goto LABEL_17;
  }

  v10 = 0;
  return v10 & 1;
}

void sub_100079610(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100079680(a1, a2);
  }
}

uint64_t sub_100079680(uint64_t result, unint64_t a2)
{
  v3 = v2 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_signalState;
  if (!*(v2 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_signalState + 16))
  {
    v4 = result;
    v7 = *v3;
    v6 = *(v3 + 8);
    swift_unknownObjectRetain();
    if ((sub_1000794CC(v4, v6) & 1) != 0 && v7 <= a2)
    {
      v8 = a2;
      v9 = *v3;
      v10 = *(v3 + 8);
      *v3 = v8;
      *(v3 + 8) = v4;
      v11 = *(v3 + 16);
      *(v3 + 16) = 1;
      v12 = v8;
      swift_unknownObjectRetain();
      sub_10007AB3C(v9, v10, v11);
      sub_100079D10(v12);
    }

    return sub_10007AB3C(v7, v6, 0);
  }

  return result;
}

uint64_t sub_100079CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);

  v5 = swift_unknownObjectRetain();
  v4(v5, a3);

  return swift_unknownObjectRelease();
}

id sub_100079D10(id result)
{
  v3 = &v1[OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_textureData];
  v4 = *&v1[OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_textureData];
  if (!v4)
  {
    return result;
  }

  v5 = v1;
  v49 = result;
  v6 = v2;
  v8 = *(v3 + 2);
  v7 = *(v3 + 3);
  v9 = *(v3 + 1);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v10 = v7;
  v11 = [v9 signaledValue];
  if (v11 < [v8 signaledValue] || (v12 = *&v5[OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_metalContext]) == 0)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  v13 = *&v5[OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_metalContext + 8];
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  [v5 bounds];
  v15 = v14;
  v17 = v16;
  [v5 contentsScale];
  v19 = v15 * v18;
  if (qword_1000D6270 != -1)
  {
    v40 = v18;
    swift_once();
    v18 = v40;
  }

  if (v19 > qword_1000E3728)
  {
    v19 = qword_1000E3728;
  }

  v20 = v17 * v18;
  if (v20 <= qword_1000E3728)
  {
    v21 = v20;
  }

  else
  {
    v21 = qword_1000E3728;
  }

  [v5 drawableSize];
  if (v23 != v19 || v22 != v21)
  {
    [v5 setDrawableSize:{v19, v21}];
  }

  v39 = [v5 nextDrawable];
  if (!v39)
  {
LABEL_26:
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  v25 = [v13 commandBuffer];
  if (!v25)
  {
    swift_unknownObjectRelease();
    goto LABEL_26;
  }

  v37 = v25;
  v36 = [v9 signaledValue];
  v26 = [v39 texture];
  v27 = [swift_unknownObjectRetain() width];
  v38 = v26;
  if (v27 != [v26 width] || (v28 = objc_msgSend(v4, "height"), v28 != objc_msgSend(v26, "height")))
  {
    sub_10002FA14(v12);
    if (v6)
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
LABEL_31:
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease_n();
    }

    sub_10002F23C(v4, v26, v37);

LABEL_30:
    [v37 encodeSignalEvent:v8 value:v36];
    [v37 presentDrawable:v39];
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = swift_allocObject();
    v34 = v49;
    v33[2] = v32;
    v33[3] = v34;
    v33[4] = v36;
    v47 = sub_10007ABE4;
    v48 = v33;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v45 = sub_10007A704;
    v46 = &unk_1000C6B08;
    v35 = _Block_copy(&aBlock);

    [v37 addCompletedHandler:v35];
    _Block_release(v35);
    [v37 commit];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_31;
  }

  result = [v37 blitCommandEncoder];
  if (result)
  {
    v29 = result;
    sub_10007ABF0([v4 width], objc_msgSend(v4, "height"), objc_msgSend(v4, "depth"), &aBlock);
    v30 = v45;
    v31 = aBlock;
    aBlock = 0uLL;
    v45 = 0;
    v42 = v31;
    v43 = v30;
    memset(v41, 0, sizeof(v41));
    [v29 copyFromTexture:v4 sourceSlice:0 sourceLevel:0 sourceOrigin:&aBlock sourceSize:&v42 toTexture:v38 destinationSlice:0 destinationLevel:0 destinationOrigin:v41];
    [v29 endEncoding];
    swift_unknownObjectRelease();
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

void sub_10007A2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10002A958(&qword_1000D6780);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = sub_10008AD08();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    sub_10008ACE8();
    v12 = v10;
    v13 = sub_10008ACD8();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = &protocol witness table for MainActor;
    v14[4] = v12;
    v14[5] = a3;
    v14[6] = a4;
    sub_10004BA04(0, 0, v8, &unk_1000AA8F0, v14);
  }
}

uint64_t sub_10007A444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_10008ACE8();
  v6[5] = sub_10008ACD8();
  v8 = sub_10008AC88();

  return _swift_task_switch(sub_10007A4E0, v8, v7);
}

uint64_t sub_10007A4E0()
{
  v1 = v0[4];
  v2 = v0[3];

  sub_10007A558(v2, v1);
  v3 = v0[1];

  return v3();
}

unint64_t sub_10007A558(unint64_t result, uint64_t a2)
{
  v3 = v2 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_textureData;
  if (*(v2 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_textureData))
  {
    v4 = v2;
    v5 = result;
    v6 = *(v3 + 24);
    v7 = *(v3 + 8);
    *(v2 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_hasDrawnFrame) = 1;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v8 = v6;
    sub_10008A9A8();
    v9 = v2 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_signalState;
    v10 = *(v2 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_signalState);
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    if (v12 == 1)
    {
      swift_unknownObjectRetain();
      if (v10 == v5)
      {
        if (sub_1000794CC(v7, v11))
        {
          v13 = *v9;
          v14 = *(v9 + 8);
          *v9 = 0;
          *(v9 + 8) = 0;
          v15 = *(v9 + 16);
          *(v9 + 16) = 2;
          sub_10007AB3C(v13, v14, v15);
          result = a2 + 1;
          if (a2 == -1)
          {
            __break(1u);
            return result;
          }

          sub_10007A9B8(result, v7);
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v16 = v5;
      }

      else
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v16 = v10;
      }

      v17 = v11;
      v18 = 1;
    }

    else
    {
      sub_10007AD04(*(v4 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_signalState), *(v4 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_signalState + 8), *(v4 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_signalState + 16));

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v16 = v10;
      v17 = v11;
      v18 = v12;
    }

    return sub_10007AB3C(v16, v17, v18);
  }

  return result;
}

uint64_t sub_10007A704(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_10007A8AC(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

void sub_10007A8D8(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_metalContext];
  v4 = *&v2[OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_metalContext];
  *v3 = a1;
  v3[1] = a2;
  sub_10007AD1C(a1);
  sub_10007AD5C(v4);
  v5 = *v3;
  if (*v3)
  {
    swift_unknownObjectRetain();
  }

  [v2 setDevice:v5];
  swift_unknownObjectRelease();
  [v2 setFramebufferOnly:0];
  [v2 setPixelFormat:81];
  v6 = CGColorSpaceCreateWithName(kCGColorSpaceDisplayP3);
  [v2 setColorspace:v6];
}

void sub_10007A9B8(unint64_t a1, void *a2)
{
  v5 = v2 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_signalState;
  v6 = *(v2 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_signalState + 16);
  if (*(v2 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_signalState + 16))
  {
    if (v6 == 1)
    {
      return;
    }

    goto LABEL_7;
  }

  v7 = *v5;
  v8 = *(v5 + 8);
  swift_unknownObjectRetain();
  v9 = sub_1000794CC(a2, v8);
  sub_10007AB3C(v7, v8, 0);
  if ((v9 & 1) == 0 || v7 > a1)
  {
    LOBYTE(v6) = *(v5 + 16);
LABEL_7:
    v10 = *v5;
    v11 = *(v5 + 8);
    *v5 = a1;
    *(v5 + 8) = a2;
    *(v5 + 16) = 0;
    swift_unknownObjectRetain();
    sub_10007AB3C(v10, v11, v6);
    v12 = *(v2 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_listener);
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15[4] = sub_10007AB8C;
    v15[5] = v13;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_100079CA8;
    v15[3] = &unk_1000C6AB8;
    v14 = _Block_copy(v15);

    [a2 notifyListener:v12 atValue:a1 block:v14];
    _Block_release(v14);
  }
}

uint64_t sub_10007AB3C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10007AB54()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007AB94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10007ABAC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10007ABF0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_10007ABFC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10007AC3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100027728;

  return sub_10007A444(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10007AD04(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_10007AD1C(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRetain();

    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_10007AD5C(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRelease();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10007AD9C()
{
  v1 = (v0 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_textureData);
  *v1 = 0u;
  v1[1] = 0u;
  *(v0 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_hasDrawnFrame) = 0;
  v2 = OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_frameNumber;
  sub_10002A958(&qword_1000D79A8);
  swift_allocObject();
  *(v0 + v2) = sub_10008A9E8();
  v3 = (v0 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_metalContext);
  *v3 = 0;
  v3[1] = 0;
  v4 = v0 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_signalState;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 2;
  sub_10008AF88();
  __break(1u);
}

const char *sub_10007AE90(char a1)
{
  result = "AdoptTipsNext";
  switch(a1)
  {
    case 1:
      result = "AppAnalytics";
      break;
    case 2:
      result = "AppIntents";
      break;
    case 3:
      result = "AppIntentsSettings";
      break;
    case 4:
      result = "BatteriesIncluded";
      break;
    case 5:
      result = "BetterPencilSelection";
      break;
    case 6:
      result = "ChangeShape";
      break;
    case 7:
      result = "CloudQuotaMessaging";
      break;
    case 8:
      result = "ContentLanguageCopyPaste";
      break;
    case 9:
      result = "DrawingDataDetectors";
      break;
    case 10:
      result = "EasierConnectionLines";
      break;
    case 11:
      result = "FileImportExport";
      break;
    case 12:
      result = "PKDrawingExport";
      break;
    case 13:
      result = "Follow";
      break;
    case 14:
      result = "GenerativePlayground";
      break;
    case 15:
      result = "MathPaper";
      break;
    case 16:
      result = "MagicLists";
      break;
    case 17:
      result = "MacMediaReplacer";
      break;
    case 18:
      result = "MediaLibrary";
      break;
    case 19:
      result = "PlaceholderImages";
      break;
    case 20:
      result = "Scenes";
      break;
    case 21:
      result = "SendACopy";
      break;
    case 22:
      result = "SignOutRedesign";
      break;
    case 23:
      result = "SnapToGrid";
      break;
    case 24:
      result = "Stencils";
      break;
    case 25:
      result = "VerticalTextBoxAlignment";
      break;
    case 26:
      result = "AllowMinRequiredVersionForGoodEnoughFidelityToSaveToCloudKit";
      break;
    case 27:
      result = "UseSandboxEnvironment";
      break;
    case 28:
      result = "Spatial";
      break;
    case 29:
      result = "InlineQuickLook";
      break;
    default:
      return result;
  }

  return result;
}

const char *sub_10007B1D8()
{
  if (*v0)
  {
    return "DrawingDataDetectors";
  }

  else
  {
    return "MathPaper";
  }
}

uint64_t sub_10007B3B0(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v10 = &type metadata for CRLPencilAndPaperFeatureFlags;
  v11 = sub_10007BBA8();
  v9[0] = a3;
  v6 = sub_10008A708();
  sub_10002E85C(v9);
  if (v6)
  {
    v10 = &type metadata for CRLFeatureFlags;
    v11 = sub_10007BB00();
    v9[0] = a4;
    v7 = sub_10008A708();
    sub_10002E85C(v9);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_10007B484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a3;
  v8 = a4();
  v4 = sub_10008A708();
  sub_10002E85C(v6);
  return v4 & 1;
}

uint64_t sub_10007B514(uint64_t a1, uint64_t a2, char a3)
{
  v7 = &type metadata for CRLFeatureFlags;
  v8 = sub_10007BB00();
  v6[0] = a3;
  v4 = sub_10008A708();
  sub_10002E85C(v6);
  return v4 & 1;
}

id sub_10007B5C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLFeatureFlagGroup();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10007B620()
{
  v6 = &type metadata for CRLPencilAndPaperFeatureFlags;
  v7 = sub_10007BBA8();
  v5[0] = 0;
  v0 = sub_10008A708();
  sub_10002E85C(v5);
  if ((v0 & 1) == 0)
  {
    return 0;
  }

  v6 = &type metadata for CRLFeatureFlags;
  v7 = sub_10007BB00();
  v5[0] = 15;
  v1 = sub_10008A708();
  sub_10002E85C(v5);
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  if (qword_1000D6260 != -1)
  {
    swift_once();
  }

  v2 = qword_1000D8600;
  v3 = OBJC_IVAR____TtC20USDRendererExtension38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed;
  swift_beginAccess();
  return *(v2 + v3);
}

uint64_t sub_10007B70C()
{
  v0 = sub_10008A728();
  v22 = *(v0 - 8);
  v23 = v0;
  v1 = __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v21 - v4;
  v6 = sub_10008A738();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002A958(&qword_1000D89C8);
  __chkstk_darwin(v10 - 8);
  v12 = &v21 - v11;
  v13 = sub_10008A768();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, enum case for OSEligibilityDomain.aiLabeling(_:), v6);
  sub_10008A758();
  (*(v7 + 8))(v9, v6);
  (*(v14 + 56))(v12, 0, 1, v13);
  (*(v14 + 32))(v16, v12, v13);
  sub_10008A748();
  v18 = v22;
  v17 = v23;
  (*(v22 + 104))(v3, enum case for OSEligibilityAnswer.eligible(_:), v23);
  LOBYTE(v6) = sub_10008A718();
  v19 = *(v18 + 8);
  v19(v3, v17);
  v19(v5, v17);
  (*(v14 + 8))(v16, v13);
  return v6 & 1;
}

uint64_t sub_10007BA98(uint64_t a1)
{
  v2 = sub_10002A958(&qword_1000D89C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10007BB00()
{
  result = qword_1000D89D0;
  if (!qword_1000D89D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D89D0);
  }

  return result;
}

unint64_t sub_10007BB54()
{
  result = qword_1000D89D8;
  if (!qword_1000D89D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D89D8);
  }

  return result;
}

unint64_t sub_10007BBA8()
{
  result = qword_1000D89E0;
  if (!qword_1000D89E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D89E0);
  }

  return result;
}

unint64_t sub_10007BBFC()
{
  result = qword_1000D89E8;
  if (!qword_1000D89E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D89E8);
  }

  return result;
}

unint64_t sub_10007BC50()
{
  result = qword_1000D89F0;
  if (!qword_1000D89F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D89F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRLFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRLFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10007BE38()
{
  result = qword_1000D89F8;
  if (!qword_1000D89F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D89F8);
  }

  return result;
}

unint64_t sub_10007BE90()
{
  result = qword_1000D8A00;
  if (!qword_1000D8A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8A00);
  }

  return result;
}

unint64_t sub_10007BEE8()
{
  result = qword_1000D8A08;
  if (!qword_1000D8A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8A08);
  }

  return result;
}

unint64_t sub_10007BF40()
{
  result = qword_1000D8A10;
  if (!qword_1000D8A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8A10);
  }

  return result;
}

unint64_t sub_10007BF98()
{
  result = qword_1000D8A18;
  if (!qword_1000D8A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8A18);
  }

  return result;
}

unint64_t sub_10007C0B0()
{
  result = qword_1000D8A20;
  if (!qword_1000D8A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8A20);
  }

  return result;
}

unint64_t sub_10007C108()
{
  result = qword_1000D8A28;
  if (!qword_1000D8A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8A28);
  }

  return result;
}

unint64_t sub_10007C160()
{
  result = qword_1000D8A30;
  if (!qword_1000D8A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8A30);
  }

  return result;
}

unint64_t sub_10007C1B8()
{
  result = qword_1000D8A38;
  if (!qword_1000D8A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8A38);
  }

  return result;
}

id sub_10007C280()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLGenerativePlaygroundAvailabilityHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t CRLWeakWrapper.init(_:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t CRLWeakWrapper.value.setter()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*CRLWeakWrapper.value.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_10007C3B4;
}

uint64_t sub_10007C3B4()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

BOOL static CRLWeakWrapper.== infix(_:_:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v1)
    {
      v2 = v1;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return Strong == v2;
    }
  }

  else if (!v1)
  {
    return 1;
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_10007C464()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10007C4A0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10007C4C0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_10007C500(uint64_t a1, uint64_t a2)
{
  v5 = sub_10002A958(&qword_1000D85D8);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = _s6CoreREO19SceneRenderingStateC15SnapshotRequestVMa(0);
  __chkstk_darwin(v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_10002E21C(a1, &qword_1000D85D8);
    sub_10007F8B8(a2, v7);
    v12 = sub_100089DA8();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_10002E21C(v7, &qword_1000D85D8);
  }

  else
  {
    sub_100068A1C(a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_100067060(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_100089DA8();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_10007C70C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*a1)
  {
    v5 = *(a1 + 40);
    v21 = *a1;
    v22 = *(a1 + 8);
    v23 = *(a1 + 24);
    v24 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_100067248(&v21, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_100089DA8();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_10003FAA8(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_100067ED4();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_100089DA8();
      v16 = *(v15 - 8);
      v19 = *(v16 + 8);
      v19(v14 + *(v16 + 72) * v11, v15);

      swift_unknownObjectRelease();

      sub_10007FD84(v11, v13);
      result = (v19)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v17 = sub_100089DA8();
      v18 = *(*(v17 - 8) + 8);

      return v18(a2, v17);
    }
  }

  return result;
}

uint64_t sub_10007C938(uint64_t a1, uint64_t a2)
{
  sub_10008AF68();
  v3 = swift_allocObject();
  v3[2] = 8;
  v3[3] = 0;
  v4 = v3 + 3;
  v3[4] = 0;
  v3[5] = 0;
  v5 = *(a1 + 16);
  if (!v5)
  {
LABEL_26:
    v23 = sub_10008AF58();
    CRLSetCrashReporterInfov(a2, v23);
  }

  v6 = 0;
  v7 = a1 + 32;
  while (1)
  {
    sub_10002E7C4((v7 + 40 * v6), *(v7 + 40 * v6 + 24));
    result = sub_10008B2E8();
    v9 = *v4;
    v10 = *(result + 16);
    v11 = __OFADD__(*v4, v10);
    v12 = *v4 + v10;
    if (v11)
    {
      break;
    }

    v13 = v3[4];
    if (v13 >= v12)
    {
      goto LABEL_18;
    }

    if (v13 + 0x4000000000000000 < 0)
    {
      goto LABEL_31;
    }

    v14 = v3[5];
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    v3[4] = v12;
    if ((v12 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_32;
    }

    v15 = result;
    v16 = swift_slowAlloc();
    v17 = v16;
    v3[5] = v16;
    if (v14)
    {
      if (v16 != v14 || v16 >= &v14[8 * v9])
      {
        memmove(v16, v14, 8 * v9);
      }

      sub_10008AF48();
      result = v15;
LABEL_18:
      v17 = v3[5];
      if (!v17)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    result = v15;
    if (!v17)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v19 = *(result + 16);
    if (v19)
    {
      v20 = (result + 32);
      v21 = *v4;
      while (1)
      {
        v22 = *v20++;
        *&v17[8 * v21] = v22;
        v21 = *v4 + 1;
        if (__OFADD__(*v4, 1))
        {
          break;
        }

        *v4 = v21;
        if (!--v19)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v6 == v5)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10007CB70()
{
  sub_10002A958(&qword_1000D8C90);
  sub_100080CAC(&qword_1000D8C98);
  sub_100080124();
  return sub_10008A6E8();
}

uint64_t sub_10007CC1C(void *a1)
{
  v2 = v1;
  type metadata accessor for CRLUSDRenderingExtension.APIEndpointCoordinator.APIEndpoint();
  swift_allocObject();
  v4 = a1;
  sub_10008057C(v4);

  swift_beginAccess();

  sub_10008AC38();
  if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10008AC58();
  }

  sub_10008AC78();
  swift_endAccess();

  return 1;
}

uint64_t sub_10007CD00(void *a1)
{
  if (qword_1000D6268 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  sub_10007CC1C(a1);
  return 1;
}

uint64_t sub_10007CD68()
{
  type metadata accessor for CRLUSDRenderingExtension.APIEndpointCoordinator();
  result = swift_allocObject();
  *(result + 16) = _swiftEmptyArrayStorage;
  qword_1000E3720 = result;
  return result;
}

uint64_t sub_10007CDA0()
{
  v1 = sub_100089DA8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v5 = *(v0 + 16);
  if (v5 >> 62)
  {
    result = sub_10008AF98();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v7 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_22;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
LABEL_22:

    v8 = sub_10008AED8();

    goto LABEL_8;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_29;
  }

  v8 = *(v5 + 8 * v7 + 32);

LABEL_8:
  result = (*(v2 + 16))(v4, v8 + OBJC_IVAR____TtCCV20USDRendererExtension24CRLUSDRenderingExtension22APIEndpointCoordinatorP33_16A498A59AE630C2B6A999A1E566D34011APIEndpoint_uuid, v1);
  v0 = *(v0 + 16);
  if (!(v0 >> 62))
  {
    v9 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = sub_10008AF98();
  v9 = result;
  if (result)
  {
LABEL_10:
    if (v9 >= 1)
    {
      v12 = v1;

      for (i = 0; i != v9; ++i)
      {
        if ((v0 & 0xC000000000000001) != 0)
        {
          v11 = sub_10008AED8();
        }

        else
        {
          v11 = *(v0 + 8 * i + 32);
        }

        if ((sub_100089D78() & 1) == 0)
        {
          [*(v11 + 16) invalidate];
        }
      }

      v1 = v12;
      return (*(v2 + 8))(v4, v1);
    }

LABEL_29:
    __break(1u);
    return result;
  }

LABEL_25:

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_10007D01C(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = sub_10008AF98();
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
      v8 = sub_10008AED8();
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

uint64_t sub_10007D138(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1000800A8(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_10007D1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  sub_10008ACE8();
  *(v4 + 72) = sub_10008ACD8();
  v6 = sub_10008AC88();

  return _swift_task_switch(sub_10007D260, v6, v5);
}

uint64_t sub_10007D260()
{

  if (qword_1000D6268 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = qword_1000E3720;
  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;

  v5 = sub_10007D01C(sub_10008126C, v4, v3);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    swift_beginAccess();
    sub_10007D138(v5);
    swift_endAccess();
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10007D3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100089DA8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = sub_10002A958(&qword_1000D6780);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_10008AD08();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v6 + 16))(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  sub_10008ACE8();
  v12 = sub_10008ACD8();
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = &protocol witness table for MainActor;
  (*(v6 + 32))(v14 + v13, &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_10004BA04(0, 0, v10, a3, v14);
}

uint64_t sub_10007D598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  sub_10008ACE8();
  *(v4 + 72) = sub_10008ACD8();
  v6 = sub_10008AC88();

  return _swift_task_switch(sub_10007D630, v6, v5);
}

uint64_t sub_10007D630()
{

  if (qword_1000D6268 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = qword_1000E3720;
  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;

  v5 = sub_10007D01C(sub_100081060, v4, v3);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    swift_beginAccess();
    sub_10007D138(v5);
    swift_endAccess();
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10007D780()
{
  [*(v0 + 16) invalidate];

  v1 = OBJC_IVAR____TtCCV20USDRendererExtension24CRLUSDRenderingExtension22APIEndpointCoordinatorP33_16A498A59AE630C2B6A999A1E566D34011APIEndpoint_uuid;
  v2 = sub_100089DA8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10007D8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v13;
  v8[8] = v14;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  sub_10008ACE8();
  v8[9] = sub_10008ACD8();
  v10 = sub_10008AC88();

  return _swift_task_switch(sub_10007D980, v10, v9);
}

uint64_t sub_10007D980()
{
  v1 = v0[8];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];

  sub_10007DA20(v6, v5, v4, v3, v2, v1);
  v7 = v0[1];

  return v7();
}

uint64_t sub_10007DA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v7 = v6;
  v120 = a6;
  v121 = a5;
  v126 = a4;
  v11 = sub_10002A958(&qword_1000D6780);
  __chkstk_darwin(v11 - 8);
  v125 = v116 - v12;
  v13 = sub_10002A958(&qword_1000D67D8);
  __chkstk_darwin(v13 - 8);
  v15 = v116 - v14;
  v16 = sub_100089DA8();
  v17 = *(v16 - 1);
  v18 = __chkstk_darwin(v16);
  v119 = v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = v116 - v20;
  sub_100089D48();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10002E21C(v15, &qword_1000D67D8);
    sub_10002A958(&qword_1000D6C70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000A64C0;
    *(inited + 56) = &type metadata for String;
    v57 = sub_1000536C0();
    *(inited + 32) = a1;
    v126 = inited + 32;
    *(inited + 64) = v57;
    *(inited + 40) = a2;
    v58 = objc_opt_self();

    v125 = v58;
    LODWORD(v59) = [v58 _atomicIncrementAssertCount];
    *&v129 = [objc_allocWithZone(NSString) init];
    sub_10005FBCC(inited, &v129);
    sub_10008AEC8();
    v60 = sub_10008AB08();

    sub_10008AEC8();
    v61 = sub_10008AB08();

    v62 = [v61 lastPathComponent];

    v63 = sub_10008AB38();
    v65 = v64;

    if (qword_1000D6008 != -1)
    {
      goto LABEL_43;
    }

    while (1)
    {
      v66 = static OS_os_log.crlAssert;
      v67 = swift_initStackObject();
      *(v67 + 16) = xmmword_1000A6480;
      *(v67 + 56) = &type metadata for Int32;
      *(v67 + 64) = &protocol witness table for Int32;
      *(v67 + 32) = v59;
      v68 = sub_1000659E8();
      *(v67 + 96) = v68;
      v69 = sub_10008027C(&qword_1000D8980, sub_1000659E8);
      *(v67 + 72) = v60;
      *(v67 + 136) = &type metadata for String;
      *(v67 + 144) = v57;
      *(v67 + 104) = v69;
      *(v67 + 112) = v63;
      *(v67 + 120) = v65;
      *(v67 + 176) = &type metadata for UInt;
      *(v67 + 184) = &protocol witness table for UInt;
      *(v67 + 152) = 210;
      v70 = v129;
      *(v67 + 216) = v68;
      *(v67 + 224) = v69;
      *(v67 + 192) = v70;
      v71 = v60;
      v72 = v70;
      v73 = sub_10008AE18();
      sub_100035474(v66, &_mh_execute_header, v73, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v67);

      v74 = sub_10008AE18();
      sub_100035474(v66, &_mh_execute_header, v74, "Expected valid UUID string, got: %{public}@", 43, 2, inited);

      sub_10007C938(inited, "Expected valid UUID string, got: %{public}@");
      sub_10008AF68();
      v57 = swift_allocObject();
      v57[2] = 8;
      v57[3] = 0;
      v60 = v57 + 3;
      v57[4] = 0;
      v57[5] = 0;
      v75 = *(inited + 16);
      if (!v75)
      {
        goto LABEL_49;
      }

      v63 = 0;
      v65 = 40;
      while (1)
      {
        v76 = (v126 + 40 * v63);
        v59 = v76[4];
        inited = sub_10002E7C4(v76, v76[3]);
        v77 = sub_10008B2E8();
        v78 = *v60;
        v79 = *(v77 + 16);
        v80 = __OFADD__(*v60, v79);
        v81 = *v60 + v79;
        if (v80)
        {
          goto LABEL_40;
        }

        v82 = v77;
        inited = v57[4];
        if (inited >= v81)
        {
          goto LABEL_32;
        }

        if (inited + 0x4000000000000000 < 0)
        {
          goto LABEL_41;
        }

        v59 = v57[5];
        if (2 * inited > v81)
        {
          v81 = 2 * inited;
        }

        v57[4] = v81;
        if ((v81 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_42;
        }

        v83 = swift_slowAlloc();
        v57[5] = v83;
        if (v59)
        {
          if (v83 != v59 || v83 >= &v59[8 * v78])
          {
            memmove(v83, v59, 8 * v78);
          }

          inited = v57;
          sub_10008AF48();
LABEL_32:
          v83 = v57[5];
        }

        if (!v83)
        {
          goto LABEL_48;
        }

        v85 = *(v82 + 16);
        if (v85)
        {
          break;
        }

LABEL_17:

        if (++v63 == v75)
        {
          goto LABEL_49;
        }
      }

      v86 = (v82 + 32);
      v87 = *v60;
      while (1)
      {
        v88 = *v86++;
        *&v83[8 * v87] = v88;
        v87 = *v60 + 1;
        if (__OFADD__(*v60, 1))
        {
          break;
        }

        *v60 = v87;
        if (!--v85)
        {
          goto LABEL_17;
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
      swift_once();
    }
  }

  (*(v17 + 32))(v21, v15, v16);
  v22 = OBJC_IVAR____TtCCV20USDRendererExtension24CRLUSDRenderingExtension22APIEndpointCoordinatorP33_16A498A59AE630C2B6A999A1E566D34011APIEndpoint_coreREInstances;
  swift_beginAccess();
  v23 = *(*(v7 + v22) + 16);
  v122 = v21;
  if (v23 && (sub_10003FAA8(v21), (v24 & 1) != 0))
  {
    swift_endAccess();
    v25 = sub_100089D58();
    v123 = v26;
    v124 = v25;
    v27 = sub_10008AD08();
    v28 = v125;
    (*(*(v27 - 8) + 56))(v125, 1, 1, v27);
    v29 = swift_allocObject();
    swift_weakInit();
    sub_10008ACE8();

    v30 = sub_10008ACD8();
    v31 = swift_allocObject();
    v31[2] = v30;
    v31[3] = &protocol witness table for MainActor;
    v32 = v123;
    v33 = v124;
    v31[4] = v29;
    v31[5] = v33;
    v31[6] = v32;

    sub_10004BD04(0, 0, v28, &unk_1000AB128, v31);
  }

  else
  {
    swift_endAccess();
  }

  v128 = &OBJC_PROTOCOL___NSXPCProxyCreating;
  v34 = swift_dynamicCastObjCProtocolConditional();
  if (!v34)
  {
    v89 = objc_opt_self();
    v90 = [v89 _atomicIncrementAssertCount];
    *&v129 = [objc_allocWithZone(NSString) init];
    sub_10005FBCC(_swiftEmptyArrayStorage, &v129);
    sub_10008AEC8();
    v91 = sub_10008AB08();

    sub_10008AEC8();
    v92 = sub_10008AB08();

    v93 = [v92 lastPathComponent];

    v94 = sub_10008AB38();
    v96 = v95;

    if (qword_1000D6008 != -1)
    {
      swift_once();
    }

    v97 = static OS_os_log.crlAssert;
    sub_10002A958(&qword_1000D6C70);
    v98 = swift_initStackObject();
    *(v98 + 16) = xmmword_1000A6480;
    *(v98 + 56) = &type metadata for Int32;
    *(v98 + 64) = &protocol witness table for Int32;
    *(v98 + 32) = v90;
    v99 = sub_1000659E8();
    *(v98 + 96) = v99;
    v100 = sub_10008027C(&qword_1000D8980, sub_1000659E8);
    *(v98 + 104) = v100;
    *(v98 + 72) = v91;
    *(v98 + 136) = &type metadata for String;
    v101 = sub_1000536C0();
    *(v98 + 112) = v94;
    *(v98 + 120) = v96;
    *(v98 + 176) = &type metadata for UInt;
    *(v98 + 184) = &protocol witness table for UInt;
    *(v98 + 144) = v101;
    *(v98 + 152) = 221;
    v102 = v129;
    *(v98 + 216) = v99;
    *(v98 + 224) = v100;
    *(v98 + 192) = v102;
    v103 = v91;
    v104 = v102;
    v105 = sub_10008AE18();
    sub_100035474(v97, &_mh_execute_header, v105, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v98);

    v106 = sub_10008AE18();
    sub_100035474(v97, &_mh_execute_header, v106, "Expected XPC proxy for delegate argument.", 41, 2, _swiftEmptyArrayStorage);

    sub_10007C938(_swiftEmptyArrayStorage, "Expected XPC proxy for delegate argument.");
    sub_10008AF68();
    v107 = swift_allocObject();
    v107[2] = 8;
    v107[3] = 0;
    v107[4] = 0;
    v107[5] = 0;
    v108 = sub_10008AF58();
    sub_10008AEC8();
    v109 = sub_10008AB08();

    sub_10008AEC8();
    v110 = sub_10008AB08();

    sub_10008AEC8();
    v111 = sub_10008AB08();

    [v89 handleFailureInFunction:v109 file:v110 lineNumber:221 isFatal:1 format:v111 args:v108];

    while (1)
    {
      CRLCrashBreakpoint();
      sub_10008AF88();
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      v112 = sub_10008AF58();
      sub_10008AEC8();
      v113 = sub_10008AB08();

      sub_10008AEC8();
      v114 = sub_10008AB08();

      sub_10008AEC8();
      v115 = sub_10008AB08();

      [v125 handleFailureInFunction:v113 file:v114 lineNumber:210 isFatal:1 format:v115 args:v112];
    }
  }

  v35 = v34;
  v117 = v22;
  v118 = v7;
  v124 = v17;
  v125 = v16;
  v36 = qword_1000D6128;
  swift_unknownObjectRetain();
  v123 = a3;
  if (v36 != -1)
  {
    swift_once();
  }

  v37 = static OS_os_log.crlThreeDimensionalObjects;
  sub_10002A958(&qword_1000D6C70);
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_1000A64C0;
  v39 = v122;
  sub_100089D58();
  sub_10008ABA8();
  sub_10008ABD8();

  v40 = sub_10008AB88();
  v42 = v41;

  *(v38 + 56) = &type metadata for String;
  *(v38 + 64) = sub_1000536C0();
  *(v38 + 32) = v40;
  *(v38 + 40) = v42;
  v43 = sub_10008AE08();
  sub_100035474(v37, &_mh_execute_header, v43, "(AppEx:CoreRE) connected: %{public}@", 36, 2, v38);
  swift_setDeallocating();
  sub_10002E85C(v38 + 32);
  v44 = v119;
  (*(v124 + 16))(v119, v39, v125);
  swift_unknownObjectRetain();
  sub_10008091C(v44, v35, v126, &v129);
  v45 = v129;
  v46 = v130;
  v47 = v131;
  v48 = v117;
  v49 = v118;
  swift_beginAccess();
  v119 = v45;

  v116[1] = *(&v45 + 1);

  v116[0] = v46;

  swift_unknownObjectRetain();

  v50 = v47;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v127 = *(v49 + v48);
  *(v49 + v48) = 0x8000000000000000;
  v52 = v39;
  sub_100067248(&v129, v39, isUniquelyReferenced_nonNull_native);
  *(v49 + v48) = v127;
  swift_endAccess();
  v53 = v50;
  v121();

  if ((v126 & 8) != 0)
  {
    v55 = v125;
    if (qword_1000D6268 != -1)
    {
      swift_once();
    }

    sub_10007CDA0();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    return (*(v124 + 8))(v122, v55);
  }

  else
  {
    (*(v124 + 8))(v52, v125);

    swift_unknownObjectRelease();

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_10007EB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  sub_10008ACE8();
  v6[9] = sub_10008ACD8();
  v8 = sub_10008AC88();

  return _swift_task_switch(sub_10007EBB0, v8, v7);
}

uint64_t sub_10007EBB0()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_10007EC58(*(v0 + 56), *(v0 + 64));
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10007EC58(uint64_t a1, char *a2)
{
  v4 = sub_10002A958(&qword_1000D67D8);
  __chkstk_darwin(v4 - 8);
  v6 = &v51 - v5;
  v7 = sub_100089DA8();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v51 - v12;
  sub_100089D48();
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v11, v13, v7);
    memset(v54, 0, 48);
    swift_beginAccess();
    sub_10007C70C(v54, v11);
    swift_endAccess();
    return (*(v8 + 8))(v13, v7);
  }

  sub_10002E21C(v6, &qword_1000D67D8);
  sub_10002A958(&qword_1000D6C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000A64C0;
  v16 = &type metadata for String;
  *(inited + 56) = &type metadata for String;
  v17 = sub_1000536C0();
  *(inited + 32) = a1;
  v53 = inited + 32;
  *(inited + 64) = v17;
  *(inited + 40) = a2;
  v18 = objc_opt_self();

  v52 = v18;
  LODWORD(a2) = [v18 _atomicIncrementAssertCount];
  v54[0] = [objc_allocWithZone(NSString) init];
  sub_10005FBCC(inited, v54);
  sub_10008AEC8();
  v19 = sub_10008AB08();

  sub_10008AEC8();
  v20 = sub_10008AB08();

  v21 = [v20 lastPathComponent];

  v22 = sub_10008AB38();
  v24 = v23;

  if (qword_1000D6008 != -1)
  {
LABEL_32:
    swift_once();
  }

  v25 = static OS_os_log.crlAssert;
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_1000A6480;
  *(v26 + 56) = &type metadata for Int32;
  *(v26 + 64) = &protocol witness table for Int32;
  *(v26 + 32) = a2;
  v27 = sub_1000659E8();
  *(v26 + 96) = v27;
  v28 = sub_10008027C(&qword_1000D8980, sub_1000659E8);
  *(v26 + 72) = v19;
  *(v26 + 136) = v16;
  *(v26 + 144) = v17;
  *(v26 + 104) = v28;
  *(v26 + 112) = v22;
  *(v26 + 120) = v24;
  *(v26 + 176) = &type metadata for UInt;
  *(v26 + 184) = &protocol witness table for UInt;
  *(v26 + 152) = 248;
  v29 = v54[0];
  *(v26 + 216) = v27;
  *(v26 + 224) = v28;
  *(v26 + 192) = v29;
  v30 = v19;
  v31 = v29;
  v32 = sub_10008AE18();
  sub_100035474(v25, &_mh_execute_header, v32, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v26);

  v33 = sub_10008AE18();
  sub_100035474(v25, &_mh_execute_header, v33, "Expected valid UUID string, got: %{public}@", 43, 2, inited);

  sub_10007C938(inited, "Expected valid UUID string, got: %{public}@");
  sub_10008AF68();
  v17 = swift_allocObject();
  v17[2] = 8;
  v17[3] = 0;
  v24 = v17 + 3;
  v17[4] = 0;
  v17[5] = 0;
  v19 = *(inited + 16);
  if (v19)
  {
    v34 = 0;
    v22 = 40;
    while (1)
    {
      v35 = (v53 + 40 * v34);
      a2 = v35[4];
      inited = sub_10002E7C4(v35, v35[3]);
      v36 = sub_10008B2E8();
      v16 = *v24;
      v37 = *(v36 + 16);
      v38 = __OFADD__(*v24, v37);
      v39 = *v24 + v37;
      if (v38)
      {
        goto LABEL_29;
      }

      v40 = v36;
      inited = v17[4];
      if (inited >= v39)
      {
        goto LABEL_21;
      }

      if (inited + 0x4000000000000000 < 0)
      {
        goto LABEL_30;
      }

      a2 = v17[5];
      if (2 * inited > v39)
      {
        v39 = 2 * inited;
      }

      v17[4] = v39;
      if ((v39 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_31;
      }

      v41 = swift_slowAlloc();
      v17[5] = v41;
      if (a2)
      {
        break;
      }

LABEL_22:
      if (!v41)
      {
        __break(1u);
        goto LABEL_34;
      }

      v43 = *(v40 + 16);
      if (v43)
      {
        v44 = (v40 + 32);
        v45 = *v24;
        while (1)
        {
          v46 = *v44++;
          *&v41[8 * v45] = v46;
          v45 = *v24 + 1;
          if (__OFADD__(*v24, 1))
          {
            break;
          }

          *v24 = v45;
          if (!--v43)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

LABEL_6:

      if (++v34 == v19)
      {
        goto LABEL_34;
      }
    }

    if (v41 != a2 || v41 >= &a2[8 * v16])
    {
      memmove(v41, a2, 8 * v16);
    }

    inited = v17;
    sub_10008AF48();
LABEL_21:
    v41 = v17[5];
    goto LABEL_22;
  }

LABEL_34:
  v47 = sub_10008AF58();
  sub_10008AEC8();
  v48 = sub_10008AB08();

  sub_10008AEC8();
  v49 = sub_10008AB08();

  sub_10008AEC8();
  v50 = sub_10008AB08();

  [v52 handleFailureInFunction:v48 file:v49 lineNumber:248 isFatal:1 format:v50 args:v47];

  CRLCrashBreakpoint();
  result = sub_10008AF88();
  __break(1u);
  return result;
}

uint64_t sub_10007F520()
{

  return swift_deallocClassInstance();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10007F5EC();
  sub_10008A928();
  return 0;
}

unint64_t sub_10007F5EC()
{
  result = qword_1000D8AE8;
  if (!qword_1000D8AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8AE8);
  }

  return result;
}

uint64_t type metadata accessor for CRLUSDRenderingExtension.APIEndpointCoordinator.APIEndpoint()
{
  result = qword_1000D8BC8;
  if (!qword_1000D8BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007F6B8()
{
  result = sub_100089DA8();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 sub_10007F764(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10007F778(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10007F7C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10007F848(uint64_t a1)
{
  result = sub_10007F5EC();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10007F8B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_10003FAA8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100067BD0();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_100089DA8();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = _s6CoreREO19SceneRenderingStateC15SnapshotRequestVMa(0);
    v20 = *(v13 - 8);
    sub_100068A1C(v12 + *(v20 + 72) * v7, a2);
    sub_10007FA40(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = _s6CoreREO19SceneRenderingStateC15SnapshotRequestVMa(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

unint64_t sub_10007FA40(int64_t a1, uint64_t a2)
{
  v4 = sub_100089DA8();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_10008AEA8();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_10008027C(&qword_1000D7308, &type metadata accessor for UUID);
      v22 = sub_10008AAD8();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(_s6CoreREO19SceneRenderingStateC15SnapshotRequestVMa(0) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10007FD84(int64_t a1, uint64_t a2)
{
  v42 = sub_100089DA8();
  v4 = *(v42 - 8);
  result = __chkstk_darwin(v42);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v43 = v6;
    v12 = sub_10008AEA8();
    v13 = v42;
    v6 = v43;
    v14 = v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v39 = (v12 + 1) & v11;
    v40 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    v38 = a2 + 64;
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v41;
      v21 = v14;
      v22 = v15;
      v40(v41, *(v6 + 48) + v17 * v10, v13);
      sub_10008027C(&qword_1000D7308, &type metadata accessor for UUID);
      v23 = sub_10008AAD8();
      result = (*v37)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v39)
      {
        if (v24 >= v39 && a1 >= v24)
        {
LABEL_15:
          v6 = v43;
          v27 = *(v43 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v43;
            v17 = v18;
            v14 = v21;
            v8 = v38;
          }

          else
          {
            v8 = v38;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v43;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 48 * a1);
          v30 = (v28 + 48 * v10);
          if (a1 != v10 || v29 >= v30 + 3)
          {
            v31 = *v30;
            v32 = v30[2];
            v29[1] = v30[1];
            v29[2] = v32;
            *v29 = v31;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v39 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v38;
      v17 = v18;
      v6 = v43;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(v6 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v35;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_1000800A8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_10008AF98();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0, a1);
}

unint64_t sub_100080124()
{
  result = qword_1000D8CA0[0];
  if (!qword_1000D8CA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000D8CA0);
  }

  return result;
}

uint64_t sub_100080178()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000801B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F13C;

  return sub_10007EB14(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10008027C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000802C4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100080310()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100080368(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002F13C;

  return sub_10007D8D4(a1, v12, v4, v5, v6, v7, v8, v9);
}

id sub_10008045C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v6 = &a4[OBJC_IVAR____TtCO20USDRendererExtension29CRLUSDRendererExtensionShared26AsyncRendererReceiverProxy_renderer];
  *&a4[OBJC_IVAR____TtCO20USDRendererExtension29CRLUSDRendererExtensionShared26AsyncRendererReceiverProxy_renderer + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = &a4[OBJC_IVAR____TtCO20USDRendererExtension29CRLUSDRendererExtensionShared26AsyncRendererReceiverProxy_surfaceRenderer];
  *&a4[OBJC_IVAR____TtCO20USDRendererExtension29CRLUSDRendererExtensionShared26AsyncRendererReceiverProxy_surfaceRenderer + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = &a4[OBJC_IVAR____TtCO20USDRendererExtension29CRLUSDRendererExtensionShared26AsyncRendererReceiverProxy_compressor];
  *&a4[OBJC_IVAR____TtCO20USDRendererExtension29CRLUSDRendererExtensionShared26AsyncRendererReceiverProxy_compressor + 8] = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 1) = &off_1000C5F18;
  swift_unknownObjectWeakAssign();

  *(v7 + 1) = &off_1000C7620;
  swift_unknownObjectWeakAssign();

  *(v8 + 1) = &off_1000C7498;
  swift_unknownObjectWeakAssign();

  v10.receiver = a4;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "init");
}

uint64_t sub_10008057C(void *a1)
{
  v2 = v1;
  v4 = sub_100089DA8();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v7;
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = OBJC_IVAR____TtCCV20USDRendererExtension24CRLUSDRenderingExtension22APIEndpointCoordinatorP33_16A498A59AE630C2B6A999A1E566D34011APIEndpoint_coreREInstances;
  *(v2 + v11) = sub_10004247C(_swiftEmptyArrayStorage);
  *(v2 + 16) = a1;
  v12 = a1;
  sub_100089D98();
  v13 = *(v5 + 16);
  v13(v2 + OBJC_IVAR____TtCCV20USDRendererExtension24CRLUSDRenderingExtension22APIEndpointCoordinatorP33_16A498A59AE630C2B6A999A1E566D34011APIEndpoint_uuid, v10, v4);
  v28 = v2;
  [v12 setExportedObject:v2];
  if (qword_1000D5FF0 != -1)
  {
    swift_once();
  }

  [v12 setExportedInterface:qword_1000E3428];
  v13(v8, v10, v4);
  v25 = v12;
  v26 = v13;
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = v4;
  v16 = swift_allocObject();
  v27 = v5;
  v24 = v10;
  v17 = *(v5 + 32);
  v17(v16 + v14, v8, v15);
  v34 = sub_100080E18;
  v35 = v16;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_1000647FC;
  v33 = &unk_1000C7120;
  v18 = _Block_copy(&aBlock);

  [v12 setInterruptionHandler:v18];
  _Block_release(v18);
  v19 = v24;
  v26(v8, v24, v15);
  v20 = swift_allocObject();
  v17(v20 + v14, v8, v15);
  v34 = sub_100080ED8;
  v35 = v20;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_1000647FC;
  v33 = &unk_1000C7170;
  v21 = _Block_copy(&aBlock);

  v22 = v25;
  [v25 setInvalidationHandler:v21];
  _Block_release(v21);
  [v22 resume];
  (*(v27 + 8))(v19, v15);
  return v28;
}

uint64_t sub_10008091C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_10002A958(&qword_1000D67D8);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  type metadata accessor for CRLUSDRendererExtensionShared.RendererDelegateSenderProxy();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  v12 = sub_100089DA8();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v10, a1, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  _s10RepBackendCMa();
  swift_allocObject();
  swift_unknownObjectRetain();

  v14 = sub_10004C018(v10, v11, &off_1000C3E80, a3);
  _s14SurfaceBackendCMa();
  v15 = swift_allocObject();
  _s18CompressionBackendCMa();
  v16 = swift_allocObject();
  v17 = objc_allocWithZone(type metadata accessor for CRLUSDRendererExtensionShared.AsyncRendererReceiverProxy());

  v18 = sub_10008045C(v14, v15, v16, v17);
  result = (*(v13 + 8))(a1, v12);
  *a4 = v14;
  a4[1] = v15;
  a4[2] = v16;
  a4[3] = a2;
  a4[4] = v11;
  a4[5] = v18;
  return result;
}

uint64_t sub_100080B28()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100080BA0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100080BDC(uint64_t *a1, int a2)
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

uint64_t sub_100080C24(uint64_t result, int a2, int a3)
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

uint64_t sub_100080CAC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10002AD9C(&qword_1000D8C90);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100080CFC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100080D54(uint64_t a1)
{
  result = sub_100080D7C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100080D7C()
{
  result = qword_1000D8D30;
  if (!qword_1000D8D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8D30);
  }

  return result;
}

uint64_t sub_100080E38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100080E50()
{
  v1 = sub_100089DA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100080F70(uint64_t a1)
{
  v4 = *(sub_100089DA8() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100027728;

  return sub_10007D598(a1, v6, v7, v1 + v5);
}

uint64_t sub_1000810A0()
{
  v1 = sub_100089DA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100081164(uint64_t a1)
{
  v4 = *(sub_100089DA8() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F13C;

  return sub_10007D1C8(a1, v6, v7, v1 + v5);
}

double sub_1000812D4(float32x4_t a1, float32x4_t a2)
{
  v2 = vmulq_f32(a1, a2);
  if ((v2.f32[2] + vaddv_f32(*v2.f32)) >= 0.0)
  {
    v34 = vaddq_f32(a1, a2);
    v35 = vmulq_f32(v34, v34);
    *&v36 = v35.f32[2] + vaddv_f32(*v35.f32);
    *v35.f32 = vrsqrte_f32(v36);
    *v35.f32 = vmul_f32(*v35.f32, vrsqrts_f32(v36, vmul_f32(*v35.f32, *v35.f32)));
    v37 = vmulq_n_f32(v34, vmul_f32(*v35.f32, vrsqrts_f32(v36, vmul_f32(*v35.f32, *v35.f32))).f32[0]);
    v38 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL), vnegq_f32(a1)), v37, vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL));
    v33 = vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL).u64[0];
  }

  else
  {
    v4 = vmulq_f32(a1, a1);
    v3 = vaddv_f32(*v4.f32);
    v4.i32[1] = 0;
    *&v5 = v4.f32[2] + v3;
    v6 = vrsqrte_f32(COERCE_UNSIGNED_INT(v4.f32[2] + v3));
    v7 = vmul_f32(v6, vrsqrts_f32(v5, vmul_f32(v6, v6)));
    v8 = vmulq_n_f32(a1, vmul_f32(v7, vrsqrts_f32(v5, vmul_f32(v7, v7))).f32[0]);
    v9 = vmulq_f32(a2, a2);
    *&v10 = v9.f32[2] + vaddv_f32(*v9.f32);
    *v9.f32 = vrsqrte_f32(v10);
    *v9.f32 = vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32)));
    v11 = vaddq_f32(v8, vmulq_n_f32(a2, vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32))).f32[0]));
    v12 = vmulq_f32(v11, v11);
    v13 = v12.f32[2] + vaddv_f32(*v12.f32);
    if (v13 <= 1.4211e-14)
    {
      v39 = vabsq_f32(a1);
      v40 = v39.f32[1];
      v41 = v39.f32[2];
      if (v39.f32[0] > v39.f32[1] || v39.f32[0] > v39.f32[2])
      {
        v42 = vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL);
        if (v40 <= v41)
        {
          v43 = vmulq_f32(a1, xmmword_1000AB320);
          v44 = xmmword_1000AB330;
        }

        else
        {
          v43 = vmulq_f32(a1, xmmword_1000AB340);
          v44 = xmmword_1000AA650;
        }
      }

      else
      {
        v42 = vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL);
        v43 = vmulq_f32(a1, xmmword_1000AA640);
        v44 = xmmword_1000AB310;
      }

      v45 = vmlaq_f32(v43, v44, v42);
      v46 = vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL);
      v47 = vmulq_f32(v45, v45);
      *&v48 = v47.f32[1] + (v47.f32[2] + v47.f32[0]);
      *v47.f32 = vrsqrte_f32(v48);
      *v47.f32 = vmul_f32(*v47.f32, vrsqrts_f32(v48, vmul_f32(*v47.f32, *v47.f32)));
      v33 = vmulq_n_f32(v46, vmul_f32(*v47.f32, vrsqrts_f32(v48, vmul_f32(*v47.f32, *v47.f32))).f32[0]).u64[0];
    }

    else
    {
      v14 = v13;
      v15 = vrsqrte_f32(LODWORD(v13));
      v16 = vmul_f32(v15, vrsqrts_f32(LODWORD(v14), vmul_f32(v15, v15)));
      v17 = vmulq_n_f32(v11, vmul_f32(v16, vrsqrts_f32(LODWORD(v14), vmul_f32(v16, v16))).f32[0]);
      v18 = vaddq_f32(a1, v17);
      v19 = vmulq_f32(v18, v18);
      *&v20 = v19.f32[2] + vaddv_f32(*v19.f32);
      *v19.f32 = vrsqrte_f32(v20);
      *v19.f32 = vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32)));
      v21 = vmulq_n_f32(v18, vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32))).f32[0]);
      v22 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), vnegq_f32(a1)), v21, vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL));
      v23 = vmulq_f32(v21, a1);
      v24 = vaddq_f32(a2, v17);
      v25 = vmulq_f32(v24, v24);
      v4.f32[0] = v25.f32[2] + vaddv_f32(*v25.f32);
      *v25.f32 = vrsqrte_f32(*v4.f32);
      *v25.f32 = vmul_f32(*v25.f32, vrsqrts_f32(*v4.f32, vmul_f32(*v25.f32, *v25.f32)));
      v26 = vmulq_n_f32(v24, vmul_f32(*v25.f32, vrsqrts_f32(*v4.f32, vmul_f32(*v25.f32, *v25.f32))).f32[0]);
      v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), vnegq_f32(v17)), v26, vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL));
      v28 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
      v29 = vmulq_f32(v17, v26);
      v28.f32[3] = v29.f32[2] + vaddv_f32(*v29.f32);
      v30 = vnegq_f32(v28);
      v31 = vtrn2q_s32(v28, vtrn1q_s32(v28, v30));
      v32 = vrev64q_s32(v28);
      v32.i32[0] = v30.i32[1];
      v32.i32[3] = v30.i32[2];
      v33 = vaddq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, v23.f32[2] + vaddv_f32(*v23.f32)), v32, *v22.f32, 1), vmlaq_laneq_f32(vmulq_n_f32(vextq_s8(v28, v30, 8uLL), v22.f32[0]), vextq_s8(v31, v31, 8uLL), v22, 2)).u64[0];
    }
  }

  return *&v33;
}

float CRL3DRotation.angle.getter(float32x4_t a1)
{
  v1 = vmulq_f32(a1, a1);
  v2 = atan2f(sqrtf(v1.f32[2] + vaddv_f32(*v1.f32)), a1.f32[3]);
  return v2 + v2;
}

double CRL3DRotation.axis.getter(float32x4_t a1)
{
  v1 = vmulq_f32(a1, a1);
  *&v2 = v1.f32[2] + vaddv_f32(*v1.f32);
  *v1.f32 = vrsqrte_f32(v2);
  *v1.f32 = vmul_f32(*v1.f32, vrsqrts_f32(v2, vmul_f32(*v1.f32, *v1.f32)));
  *&result = vmulq_n_f32(a1, vmul_f32(*v1.f32, vrsqrts_f32(v2, vmul_f32(*v1.f32, *v1.f32))).f32[0]).u64[0];
  return result;
}

__n128 CRL3DRotation.imag.setter(__n128 result)
{
  result.n128_u32[3] = v1->n128_u32[3];
  *v1 = result;
  return result;
}

__n128 (*CRL3DRotation.imag.modify(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *v1;
  *v3 = *v1;
  *(v3 + 16) = v4;
  return sub_10008171C;
}

__n128 sub_10008171C(void **a1)
{
  v1 = *a1;
  v2 = *v1;
  HIDWORD(v2) = v1[7];
  **(v1 + 4) = v2;
  free(v1);
  return result;
}

__n128 (*CRL3DRotation.real.modify(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x20uLL);
  }

  *a1 = v3;
  *(v3 + 16) = v1;
  v4 = *v1;
  *v3 = *v1;
  *(v3 + 24) = HIDWORD(v4);
  return sub_1000817BC;
}

__n128 sub_1000817BC(void **a1)
{
  v1 = *a1;
  v2 = *v1;
  HIDWORD(v2) = v1[6];
  **(v1 + 2) = v2;
  free(v1);
  return result;
}

double CRL3DRotation.inverse.getter(float32x4_t a1)
{
  v1 = vmulq_f32(a1, xmmword_1000AB350);
  v2 = vmulq_f32(a1, a1);
  *v2.i8 = vadd_f32(*v2.i8, *&vextq_s8(v2, v2, 8uLL));
  v2.i32[0] = vadd_f32(*v2.i8, vdup_lane_s32(*v2.i8, 1)).u32[0];
  v3 = vrecpe_f32(v2.u32[0]);
  v4 = vmul_f32(v3, vrecps_f32(v2.u32[0], v3));
  *&result = vmulq_n_f32(v1, vmul_f32(v4, vrecps_f32(v2.u32[0], v4)).f32[0]).u64[0];
  return result;
}

double CRL3DRotation.normalized.getter(float32x4_t a1)
{
  v1 = vmulq_f32(a1, a1);
  v2 = vadd_f32(*v1.i8, *&vextq_s8(v1, v1, 8uLL));
  if (vaddv_f32(v2) == 0.0)
  {
    return 0.0;
  }

  v4 = vadd_f32(v2, vdup_lane_s32(v2, 1)).u32[0];
  v5 = vrsqrte_f32(v4);
  v6 = vmul_f32(v5, vrsqrts_f32(v4, vmul_f32(v5, v5)));
  *&result = vmulq_n_f32(a1, vmul_f32(v6, vrsqrts_f32(v4, vmul_f32(v6, v6))).f32[0]).u64[0];
  return result;
}

void (*CRL3DRotation.vector.modify(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x18uLL);
  }

  *a1 = v3;
  *(v3 + 16) = v1;
  *v3 = *v1;
  return sub_1000818F8;
}

void sub_1000818F8(void **a1)
{
  v1 = *a1;
  *v1[2] = *v1;
  free(v1);
}

uint64_t sub_100081910(__n128 *a1, __n128 *a2)
{
  v10 = *a2;
  v2 = CRL3DRotation.rawValue.getter(*a1);
  v4 = v3;
  v5 = CRL3DRotation.rawValue.getter(v10);
  v7 = v6;
  v8 = sub_10004185C(v2, v4, v5, v6);
  sub_10002AC1C(v5, v7);
  sub_10002AC1C(v2, v4);
  return v8 & 1;
}

uint64_t CRL3DRotation.encode(to:)(void *a1, __n128 a2)
{
  v9 = a2;
  v3 = sub_10002A958(&qword_1000D8D38);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  sub_10002E7C4(a1, a1[3]);
  sub_100083060();
  sub_10008B328();
  v10 = CRL3DRotation.rawValue.getter(v9);
  v11 = v7;
  sub_100047538();
  sub_10008B128();
  sub_10002AC1C(v10, v11);
  return (*(v4 + 8))(v6, v3);
}

uint64_t CRL3DRotation.rawValue.getter(__n128 a1)
{
  v3[0] = sub_10004B9A0(a1.n128_u32[0]);
  v3[1] = sub_10004B9A0(a1.n128_u32[1]);
  v3[2] = sub_10004B9A0(a1.n128_u32[2]);
  v3[3] = sub_10004B9A0(a1.n128_u32[3]);
  return sub_100081D90(v3, &v4);
}

uint64_t sub_100081BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_10008B158();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100081C40(uint64_t a1)
{
  v2 = sub_100083060();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100081C7C(uint64_t a1)
{
  v2 = sub_100083060();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100081CB8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_100082E70(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void CRL3DRotation.hash(into:)(__n128 a1)
{
  if (a1.n128_f32[0] == 0.0)
  {
    v1 = 0.0;
  }

  else
  {
    v1 = a1.n128_f32[0];
  }

  sub_10008B298(LODWORD(v1));
  v2 = a1.n128_f32[1];
  if (a1.n128_f32[1] == 0.0)
  {
    v2 = 0.0;
  }

  sub_10008B298(LODWORD(v2));
  v3 = a1.n128_f32[2];
  if (a1.n128_f32[2] == 0.0)
  {
    v3 = 0.0;
  }

  sub_10008B298(LODWORD(v3));
  v4 = a1.n128_f32[3];
  if (a1.n128_f32[3] == 0.0)
  {
    v4 = 0.0;
  }

  sub_10008B298(LODWORD(v4));
}

uint64_t sub_100081D90(uint64_t a1, uint64_t a2)
{
  v8[3] = &type metadata for UnsafeRawBufferPointer;
  v8[4] = &protocol witness table for UnsafeRawBufferPointer;
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_10002E7C4(v8, &type metadata for UnsafeRawBufferPointer);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_1000823A4(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_1000824E0(v3, v4);
    }

    else
    {
      v6 = sub_10008245C(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_10002E85C(v8);
  return v6;
}

uint64_t sub_100081E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10008255C(*a1, *(a1 + 8));
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

uint64_t sub_100081E84@<X0>(uint64_t *a1@<X8>)
{
  result = CRL3DRotation.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_100081EB0()
{
  v2 = *v0;
  sub_10008B268();
  CRL3DRotation.hash(into:)(v2);
  return sub_10008B2C8();
}

Swift::Int sub_100081F04()
{
  v2 = *v0;
  sub_10008B268();
  CRL3DRotation.hash(into:)(v2);
  return sub_10008B2C8();
}

__n128 sub_100081F4C@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_100081F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100083338();
  v7 = sub_100083110();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100081FD4()
{
  sub_100083338();
  sub_1000832E4();
  return sub_10008AA68();
}

uint64_t sub_100082040()
{
  sub_100083338();
  sub_1000832E4();
  return sub_10008AA78();
}

uint64_t sub_10008209C(uint64_t a1)
{
  v2 = sub_100083338();
  v3 = sub_1000832E4();

  return CRValue<>.minEncodingVersion.getter(a1, v2, v3, &protocol witness table for Data);
}

uint64_t sub_100082158(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000832E4();

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for Data);
}

double static CRL3DRotation.* infix(_:_:)(float32x4_t a1, float32x4_t a2)
{
  v2 = vnegq_f32(a2);
  v3 = vtrn2q_s32(a2, vtrn1q_s32(a2, v2));
  v4 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(a2, v2, 8uLL), *a1.f32, 1), vextq_s8(v3, v3, 8uLL), a1.f32[0]);
  v5 = vrev64q_s32(a2);
  v5.i32[0] = v2.i32[1];
  v5.i32[3] = v2.i32[2];
  *&result = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(a2, a1, 3), v5, a1, 2), v4).u64[0];
  return result;
}

float32x4_t static CRL3DRotation.*= infix(_:_:)(float32x4_t *a1, float a2)
{
  result = vmulq_n_f32(*a1, a2);
  *a1 = result;
  return result;
}

float32x4_t static CRL3DRotation.*= infix(_:_:)(float32x2_t *a1, float32x4_t a2)
{
  v2 = vnegq_f32(a2);
  v3 = vtrn2q_s32(a2, vtrn1q_s32(a2, v2));
  v4 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(a2, v2, 8uLL), *a1, 1), vextq_s8(v3, v3, 8uLL), COERCE_FLOAT(*a1->f32));
  v5 = vrev64q_s32(a2);
  v5.i32[0] = v2.i32[1];
  v5.i32[3] = v2.i32[2];
  result = vaddq_f32(v4, vmlaq_laneq_f32(vmulq_laneq_f32(a2, *a1->f32, 3), v5, *a1->f32, 2));
  *a1->f32 = result;
  return result;
}

float32x4_t static CRL3DRotation.+= infix(_:_:)(float32x4_t *a1, float32x4_t a2)
{
  result = vaddq_f32(*a1, a2);
  *a1 = result;
  return result;
}

float32x4_t static CRL3DRotation.-= infix(_:_:)(float32x4_t *a1, float32x4_t a2)
{
  result = vsubq_f32(*a1, a2);
  *a1 = result;
  return result;
}

double static CRL3DRotation./ infix(_:_:)(float32x4_t a1, float32x4_t a2)
{
  v2 = vmulq_f32(a2, xmmword_1000AB350);
  v3 = vmulq_f32(a2, a2);
  *v3.i8 = vadd_f32(*v3.i8, *&vextq_s8(v3, v3, 8uLL));
  v3.i32[0] = vadd_f32(*v3.i8, vdup_lane_s32(*v3.i8, 1)).u32[0];
  v4 = vrecpe_f32(v3.u32[0]);
  v5 = vmul_f32(v4, vrecps_f32(v3.u32[0], v4));
  v6 = vmulq_n_f32(v2, vmul_f32(v5, vrecps_f32(v3.u32[0], v5)).f32[0]);
  v7 = vnegq_f32(v6);
  v8 = vtrn2q_s32(v6, vtrn1q_s32(v6, v7));
  v9 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v6, v7, 8uLL), *a1.f32, 1), vextq_s8(v8, v8, 8uLL), a1.f32[0]);
  v10 = vrev64q_s32(v6);
  v10.i32[0] = v7.i32[1];
  v10.i32[3] = v7.i32[2];
  *&result = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v6, a1, 3), v10, a1, 2), v9).u64[0];
  return result;
}

float32x4_t static CRL3DRotation./= infix(_:_:)(float32x4_t *a1, int32x2_t a2)
{
  result = vdivq_f32(*a1, vdupq_lane_s32(a2, 0));
  *a1 = result;
  return result;
}

float32x4_t static CRL3DRotation./= infix(_:_:)(float32x2_t *a1, float32x4_t a2)
{
  v2 = vmulq_f32(a2, xmmword_1000AB350);
  v3 = vmulq_f32(a2, a2);
  *v3.i8 = vadd_f32(*v3.i8, *&vextq_s8(v3, v3, 8uLL));
  v3.i32[0] = vadd_f32(*v3.i8, vdup_lane_s32(*v3.i8, 1)).u32[0];
  v4 = vrecpe_f32(v3.u32[0]);
  v5 = vmul_f32(v4, vrecps_f32(v3.u32[0], v4));
  v6 = vmulq_n_f32(v2, vmul_f32(v5, vrecps_f32(v3.u32[0], v5)).f32[0]);
  v7 = vnegq_f32(v6);
  v8 = vtrn2q_s32(v6, vtrn1q_s32(v6, v7));
  v9 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v6, v7, 8uLL), *a1, 1), vextq_s8(v8, v8, 8uLL), COERCE_FLOAT(*a1->f32));
  v10 = vrev64q_s32(v6);
  v10.i32[0] = v7.i32[1];
  v10.i32[3] = v7.i32[2];
  result = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v6, *a1->f32, 3), v10, *a1->f32, 2), v9);
  *a1->f32 = result;
  return result;
}

uint64_t sub_1000823A4(_BYTE *__src, _BYTE *a2)
{
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
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_10008245C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_100089B98();
  swift_allocObject();
  result = sub_100089B58();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1000824E0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_100089B98();
  swift_allocObject();
  result = sub_100089B58();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_100089CE8();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_10008255C(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = (a2 >> 62);
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      v4 = 0;
      goto LABEL_11;
    }

    v6 = *(a1 + 16);
    v5 = *(a1 + 24);
    v4 = v5 - v6;
    if (!__OFSUB__(v5, v6))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v3)
  {
    v4 = BYTE6(a2);
    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v4 = HIDWORD(a1) - a1;
LABEL_11:
  sub_10002A958(&qword_1000D6C70);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1000A64C0;
  __src = &type metadata for Int;
  sub_10002A958(&qword_1000D8D88);
  sub_10008AB58();
  v9 = v8;
  v10 = sub_10008AB08();

  v11 = sub_1000659E8();
  inited[7] = v11;
  v12 = sub_100078E1C();
  inited[4] = v10;
  v13 = (inited + 4);
  inited[8] = v12;
  if (v4 == 16)
  {
    goto LABEL_38;
  }

  v14 = v12;
  v67 = v2;
  v66 = objc_opt_self();
  v68 = [v66 _atomicIncrementAssertCount];
  __src = [objc_allocWithZone(NSString) init];
  sub_10005FBCC(inited, &__src);
  sub_10008AEC8();
  v2 = sub_10008AB08();

  sub_10008AEC8();
  v15 = sub_10008AB08();

  v16 = [v15 lastPathComponent];

  v9 = sub_10008AB38();
  v4 = v17;

  if (qword_1000D6008 != -1)
  {
LABEL_83:
    swift_once();
  }

  v18 = static OS_os_log.crlAssert;
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1000A6480;
  *(v19 + 56) = &type metadata for Int32;
  *(v19 + 64) = &protocol witness table for Int32;
  *(v19 + 32) = v68;
  *(v19 + 96) = v11;
  *(v19 + 104) = v14;
  *(v19 + 72) = v2;
  *(v19 + 136) = &type metadata for String;
  v20 = sub_1000536C0();
  *(v19 + 112) = v9;
  *(v19 + 120) = v4;
  *(v19 + 176) = &type metadata for UInt;
  *(v19 + 184) = &protocol witness table for UInt;
  *(v19 + 144) = v20;
  *(v19 + 152) = 147;
  v21 = __src;
  *(v19 + 216) = v11;
  *(v19 + 224) = v14;
  *(v19 + 192) = v21;
  v22 = v2;
  v23 = v21;
  v24 = sub_10008AE18();
  sub_100035474(v18, &_mh_execute_header, v24, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v19);
  swift_setDeallocating();
  sub_10002A958(&qword_1000D8570);
  swift_arrayDestroy();
  v25 = sub_10008AE18();
  sub_100035474(v18, &_mh_execute_header, v25, "expected equality between two values of type %{public}@", 55, 2, inited);

  sub_10008AF68();
  v4 = swift_allocObject();
  *(v4 + 16) = 8;
  *(v4 + 24) = 0;
  v3 = (v4 + 24);
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  v68 = inited;
  v14 = inited[2];
  if (!v14)
  {
LABEL_42:
    v40 = sub_10008AF58();
    sub_10008AEC8();
    v41 = sub_10008AB08();

    sub_10008AEC8();
    v42 = sub_10008AB08();

    sub_10008AEC8();
    v43 = sub_10008AB08();

    [v66 handleFailureInFunction:v41 file:v42 lineNumber:147 isFatal:0 format:v43 args:v40];

    sub_10002AC1C(a1, v67);
    swift_setDeallocating();
    swift_arrayDestroy();
    return 0;
  }

  v2 = 0;
  v11 = 40;
  while (1)
  {
    v26 = (v13 + 40 * v2);
    v9 = v26[3];
    sub_10002E7C4(v26, v9);
    v27 = sub_10008B2E8();
    v28 = *v3;
    v29 = *(v27 + 16);
    v30 = __OFADD__(*v3, v29);
    v31 = *v3 + v29;
    if (v30)
    {
      goto LABEL_80;
    }

    v9 = *(v4 + 32);
    if (v9 >= v31)
    {
      goto LABEL_30;
    }

    if (v9 + 0x4000000000000000 < 0)
    {
      goto LABEL_81;
    }

    v32 = *(v4 + 40);
    if (2 * v9 > v31)
    {
      v31 = 2 * v9;
    }

    *(v4 + 32) = v31;
    if ((v31 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_82;
    }

    inited = v27;
    v33 = swift_slowAlloc();
    v34 = v33;
    *(v4 + 40) = v33;
    if (!v32)
    {
      break;
    }

    if (v33 != v32 || v33 >= &v32[8 * v28])
    {
      memmove(v33, v32, 8 * v28);
    }

    sub_10008AF48();
    v27 = inited;
LABEL_30:
    v34 = *(v4 + 40);
    if (!v34)
    {
      goto LABEL_37;
    }

LABEL_31:
    v36 = *(v27 + 16);
    if (v36)
    {
      v37 = (v27 + 32);
      v38 = *v3;
      do
      {
        v39 = *v37++;
        *&v34[8 * v38] = v39;
        v38 = *v3 + 1;
        if (__OFADD__(*v3, 1))
        {
          goto LABEL_65;
        }

        *v3 = v38;
      }

      while (--v36);
    }

    if (++v2 == v14)
    {
      goto LABEL_42;
    }
  }

  v27 = inited;
  if (v34)
  {
    goto LABEL_31;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  swift_setDeallocating();
  sub_10002E85C(v13);
  v28 = _swiftEmptyArrayStorage;
  v14 = a1;
  if (v3 <= 1)
  {
    if (!v3)
    {
      __src = a1;
      v72 = v2;
      v73 = BYTE2(v2);
      v74 = BYTE3(v2);
      v75 = BYTE4(v2);
      v9 = (v2 >> 50) & 0x3F;
      v76 = BYTE5(v2);
      if (v9)
      {
        inited = sub_100083E94((v2 >> 50) & 0x3F, 0);
        memcpy(inited + 4, &__src, 4 * v9);
        goto LABEL_68;
      }

LABEL_67:
      inited = _swiftEmptyArrayStorage;
      goto LABEL_68;
    }

LABEL_55:
    if (a1 >> 32 >= a1)
    {
      v53 = sub_100089B68();
      if (!v53)
      {
        goto LABEL_66;
      }

      v54 = v53;
      v55 = sub_100089B88();
      if (!__OFSUB__(a1, v55))
      {
        v9 = a1 - v55 + v54;
        v56 = sub_100089B78();
        if (!v9)
        {
          goto LABEL_67;
        }

        v57 = v56 >= (a1 >> 32) - a1 ? (a1 >> 32) - a1 : v56;
        if ((v57 + 3) < 7)
        {
          goto LABEL_67;
        }

        v58 = v57 / 4;
        inited = sub_100083E94(v57 / 4, 0);
        sub_100083F18(inited + 4, v58, v9, v58);
        if (v59 == v58)
        {
          goto LABEL_68;
        }

        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        sub_100089B78();
        goto LABEL_67;
      }

LABEL_91:
      __break(1u);
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  inited = _swiftEmptyArrayStorage;
  if (v3 != 2)
  {
    goto LABEL_68;
  }

  v45 = *(a1 + 16);
  v46 = *(a1 + 24);
  v9 = sub_100089B68();
  if (v9)
  {
    v47 = sub_100089B88();
    if (__OFSUB__(v45, v47))
    {
      goto LABEL_90;
    }

    v9 += v45 - v47;
  }

  v30 = __OFSUB__(v46, v45);
  v48 = v46 - v45;
  if (v30)
  {
    goto LABEL_89;
  }

  v49 = sub_100089B78();
  if (!v9)
  {
    goto LABEL_67;
  }

  v50 = v49 >= v48 ? v48 : v49;
  if ((v50 + 3) < 7)
  {
    goto LABEL_67;
  }

  v51 = v50 / 4;
  inited = sub_100083E94(v50 / 4, 0);
  sub_100083F18(inited + 4, v51, v9, v51);
  if (v52 != v51)
  {
    __break(1u);
    goto LABEL_55;
  }

LABEL_68:
  v13 = inited[2];
  if (!v13)
  {

    v61 = _swiftEmptyArrayStorage;
    v65 = _swiftEmptyArrayStorage[2];
    if (v65)
    {
      goto LABEL_74;
    }

LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  __src = v28;
  sub_10005CFC0(0, v13, 0);
  v60 = 32;
  v61 = __src;
  do
  {
    v62 = sub_10004B9A0(*(inited + v60));
    __src = v61;
    v64 = v61[2];
    v63 = v61[3];
    v9 = v64 + 1;
    if (v64 >= v63 >> 1)
    {
      v11 = v62;
      sub_10005CFC0((v63 > 1), v64 + 1, 1);
      LODWORD(v62) = v11;
      v61 = __src;
    }

    v61[2] = v9;
    *(v61 + v64 + 8) = v62;
    v60 += 4;
    --v13;
  }

  while (v13);

  v65 = v61[2];
  if (!v65)
  {
    goto LABEL_79;
  }

LABEL_74:
  if (v65 == 1)
  {
    __break(1u);
    goto LABEL_85;
  }

  if (v65 < 3)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v65 == 3)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v69 = v61[4];

  sub_10002AC1C(v14, v2);
  return v69;
}

uint64_t sub_100082E70(void *a1)
{
  v3 = sub_10002A958(&qword_1000D8D90);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - v5;
  sub_10002E7C4(a1, a1[3]);
  sub_100083060();
  sub_10008B308();
  if (v1)
  {
    return sub_10002E85C(a1);
  }

  sub_10004749C();
  sub_10008B088();
  v7 = v15;
  v8 = v16;
  sub_10002AC70(v15, v16);
  v9 = sub_10008255C(v7, v8);
  if (v11)
  {
    sub_10008338C();
    swift_allocError();
    swift_willThrow();
    sub_10002AC1C(v7, v8);
    (*(v4 + 8))(v6, v3);
    return sub_10002E85C(a1);
  }

  *&v13 = v9;
  *(&v13 + 1) = v10;
  v14 = v13;
  (*(v4 + 8))(v6, v3);
  sub_10002AC1C(v7, v8);
  return sub_10002E85C(a1);
}

unint64_t sub_100083060()
{
  result = qword_1000D8D40;
  if (!qword_1000D8D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8D40);
  }

  return result;
}

unint64_t sub_1000830B8()
{
  result = qword_1000D8D48;
  if (!qword_1000D8D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8D48);
  }

  return result;
}

unint64_t sub_100083110()
{
  result = qword_1000D8D50;
  if (!qword_1000D8D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8D50);
  }

  return result;
}

unint64_t sub_100083168()
{
  result = qword_1000D8D58;
  if (!qword_1000D8D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8D58);
  }

  return result;
}

unint64_t sub_1000831E0()
{
  result = qword_1000D8D60;
  if (!qword_1000D8D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8D60);
  }

  return result;
}

unint64_t sub_100083238()
{
  result = qword_1000D8D68;
  if (!qword_1000D8D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8D68);
  }

  return result;
}

unint64_t sub_100083290()
{
  result = qword_1000D8D70;
  if (!qword_1000D8D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8D70);
  }

  return result;
}

unint64_t sub_1000832E4()
{
  result = qword_1000D8D78;
  if (!qword_1000D8D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8D78);
  }

  return result;
}

unint64_t sub_100083338()
{
  result = qword_1000D8D80;
  if (!qword_1000D8D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8D80);
  }

  return result;
}

unint64_t sub_10008338C()
{
  result = qword_1000D8D98;
  if (!qword_1000D8D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8D98);
  }

  return result;
}

unint64_t sub_1000833F4()
{
  result = qword_1000D8DA0;
  if (!qword_1000D8DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8DA0);
  }

  return result;
}

uint64_t sub_100083474(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v9[0] = sub_10004B9A0(a1.n128_u32[0]);
  v9[1] = sub_10004B9A0(a1.n128_u32[1]);
  v9[2] = sub_10004B9A0(a1.n128_u32[2]);
  v9[3] = sub_10004B9A0(a1.n128_u32[3]);
  v9[4] = sub_10004B9A0(a2.n128_u32[0]);
  v9[5] = sub_10004B9A0(a2.n128_u32[1]);
  v9[6] = sub_10004B9A0(a2.n128_u32[2]);
  v9[7] = sub_10004B9A0(a2.n128_u32[3]);
  v9[8] = sub_10004B9A0(a3.n128_u32[0]);
  v9[9] = sub_10004B9A0(a3.n128_u32[1]);
  v9[10] = sub_10004B9A0(a3.n128_u32[2]);
  v9[11] = sub_10004B9A0(a3.n128_u32[3]);
  v9[12] = sub_10004B9A0(a4.n128_u32[0]);
  v9[13] = sub_10004B9A0(a4.n128_u32[1]);
  v9[14] = sub_10004B9A0(a4.n128_u32[2]);
  v9[15] = sub_10004B9A0(a4.n128_u32[3]);
  return sub_100081D90(v9, &v10);
}

__n128 sub_1000835AC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100083F88(*a1, *(a1 + 8), v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1000835FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100083474(*v1, v1[1], v1[2], v1[3]);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_10008362C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  sub_10008B268();
  CRL3DRotation.hash(into:)(v2);
  CRL3DRotation.hash(into:)(v3);
  CRL3DRotation.hash(into:)(v4);
  CRL3DRotation.hash(into:)(v5);
  return sub_10008B2C8();
}

void sub_1000836A4()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  CRL3DRotation.hash(into:)(*v0);
  CRL3DRotation.hash(into:)(v1);
  CRL3DRotation.hash(into:)(v2);

  CRL3DRotation.hash(into:)(v3);
}

Swift::Int sub_100083710()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  sub_10008B268();
  CRL3DRotation.hash(into:)(v2);
  CRL3DRotation.hash(into:)(v3);
  CRL3DRotation.hash(into:)(v4);
  CRL3DRotation.hash(into:)(v5);
  return sub_10008B2C8();
}

__n128 sub_100083784@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_100083798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000843AC();
  v7 = sub_100083DE8();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100083808()
{
  sub_1000843AC();
  sub_100084400();
  return sub_10008AA68();
}

uint64_t sub_100083874()
{
  sub_1000843AC();
  sub_100084400();
  return sub_10008AA78();
}

uint64_t sub_1000838D0(uint64_t a1)
{
  v2 = sub_1000843AC();
  v3 = sub_100084400();

  return CRValue<>.minEncodingVersion.getter(a1, v2, v3, &protocol witness table for Data);
}

uint64_t sub_100083988(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084400();

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for Data);
}

unint64_t sub_1000839DC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100084598(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100083A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100084454(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_100083A5C@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100084598(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100083A84(uint64_t a1)
{
  v2 = sub_100084828();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100083AC0(uint64_t a1)
{
  v2 = sub_100084828();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100083AFC(void *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = a2;
  v7 = sub_10002A958(&qword_1000D8DE8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_10002E7C4(a1, a1[3]);
  sub_100084828();
  sub_10008B328();
  v16 = v15;
  v17 = 0;
  sub_10002A958(&qword_1000D6C80);
  sub_100048A5C(&qword_1000D6C88);
  sub_10008B128();
  if (v5)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v16 = v14;
  v17 = 1;
  sub_10008B128();
  v16 = v13;
  v17 = 2;
  sub_10008B128();
  v16 = v12;
  v17 = 3;
  sub_10008B128();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100083D3C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_1000845A8(a1);
  if (!v2)
  {
    *a2 = v5;
    a2[1] = v6;
    a2[2] = v7;
    a2[3] = v8;
  }

  return result;
}

unint64_t sub_100083D90()
{
  result = qword_1000D8DA8;
  if (!qword_1000D8DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8DA8);
  }

  return result;
}

unint64_t sub_100083DE8()
{
  result = qword_1000D8DB0;
  if (!qword_1000D8DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8DB0);
  }

  return result;
}

unint64_t sub_100083E40()
{
  result = qword_1000D8DB8;
  if (!qword_1000D8DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8DB8);
  }

  return result;
}

void *sub_100083E94(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10002A958(&qword_1000D8DC0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

char *sub_100083F18(void *a1, uint64_t a2, char *__src, uint64_t a4)
{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, 4 * v5);
    v4 += 4 * v5;
  }

  return v4;
}

uint64_t sub_100083F88@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_19;
    }

    v7 = *(a1 + 16);
    v6 = *(a1 + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (v8)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    if (v9 != 64)
    {
      goto LABEL_19;
    }

LABEL_8:
    if (v5 != 2)
    {
      if (v5 != 1)
      {
        __src = a1;
        v12 = a1;
        v55 = a2;
        v56 = BYTE2(a2);
        v57 = BYTE3(a2);
        v58 = BYTE4(a2);
        v37 = (a2 >> 50) & 0x3F;
        v59 = BYTE5(a2);
        if (v37)
        {
          v33 = sub_100083E94((a2 >> 50) & 0x3F, 0);
          v35 = 4 * v37;
          v34 = v33 + 4;
          p_src = &__src;
          goto LABEL_34;
        }

LABEL_40:
        v33 = _swiftEmptyArrayStorage;
        v38 = _swiftEmptyArrayStorage[2];
        if (!v38)
        {
          goto LABEL_35;
        }

        goto LABEL_41;
      }

      v10 = a1;
      v11 = (a1 >> 32) - a1;
      if (a1 >> 32 < a1)
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v12 = a1;
      v13 = sub_100089B68();
      if (v13)
      {
        v14 = v13;
        v15 = sub_100089B88();
        if (__OFSUB__(v10, v15))
        {
          goto LABEL_60;
        }

        v16 = (v10 - v15 + v14);
        v17 = sub_100089B78();
        if (!v16)
        {
          goto LABEL_40;
        }

        if (v17 >= v11)
        {
          v18 = v11;
        }

        else
        {
          v18 = v17;
        }

        goto LABEL_27;
      }

LABEL_39:
      sub_100089B78();
      goto LABEL_40;
    }

    v25 = *(a1 + 16);
    v26 = *(a1 + 24);
    v12 = a1;
    v27 = sub_100089B68();
    if (v27)
    {
      v28 = v27;
      v29 = sub_100089B88();
      if (__OFSUB__(v25, v29))
      {
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
      }

      v16 = (v25 - v29 + v28);
      v30 = v26 - v25;
      if (!__OFSUB__(v26, v25))
      {
        goto LABEL_23;
      }
    }

    else
    {
      v16 = 0;
      v30 = v26 - v25;
      if (!__OFSUB__(v26, v25))
      {
LABEL_23:
        v31 = sub_100089B78();
        if (!v16)
        {
          goto LABEL_40;
        }

        if (v31 >= v30)
        {
          v18 = v30;
        }

        else
        {
          v18 = v31;
        }

LABEL_27:
        if ((v18 + 3) >= 7)
        {
          if (v18 >= 0)
          {
            v32 = v18;
          }

          else
          {
            v32 = v18 + 3;
          }

          v33 = sub_100083E94(v32 >> 2, 0);
          v34 = v33 + 4;
          v35 = v32 & 0xFFFFFFFFFFFFFFFCLL;
          p_src = v16;
LABEL_34:
          memcpy(v34, p_src, v35);
          v38 = v33[2];
          if (!v38)
          {
LABEL_35:

            v39 = _swiftEmptyArrayStorage;
            goto LABEL_46;
          }

LABEL_41:
          __src = _swiftEmptyArrayStorage;
          sub_10005CFC0(0, v38, 0);
          v40 = 32;
          v39 = __src;
          do
          {
            v41 = sub_10004B9A0(*(v33 + v40));
            __src = v39;
            v43 = v39[2];
            v42 = v39[3];
            if (v43 >= v42 >> 1)
            {
              v44 = v41;
              sub_10005CFC0((v42 > 1), v43 + 1, 1);
              v41 = v44;
              v39 = __src;
            }

            v39[2] = v43 + 1;
            *(v39 + v43 + 8) = v41;
            v40 += 4;
            --v38;
          }

          while (v38);

LABEL_46:
          v45 = v39[2];
          if (v45 < 4)
          {
            __break(1u);
          }

          else
          {
            sub_10005E6B8((v39 + 4), 0, 9uLL);
            if (v45 >= 8)
            {
              v53 = v46;
              sub_10005E6B8((v39 + 4), 4, 0x11uLL);
              if (v45 >= 0xC)
              {
                v52 = v47;
                sub_10005E6B8((v39 + 4), 8, 0x19uLL);
                if (v45 >= 0x10)
                {
                  v51 = v48;
                  sub_10005E6B8((v39 + 4), 12, 0x21uLL);
                  v50 = v49;

                  result = sub_10002AC1C(v12, a2);
                  v24 = v50;
                  v23 = v51;
                  v20 = 0;
                  v22 = v52;
                  v21 = v53;
                  goto LABEL_51;
                }

                goto LABEL_55;
              }

LABEL_54:
              __break(1u);
LABEL_55:
              __break(1u);
              goto LABEL_56;
            }
          }

          __break(1u);
          goto LABEL_54;
        }

        goto LABEL_40;
      }
    }

    __break(1u);
    goto LABEL_39;
  }

  if (!v5)
  {
    if (BYTE6(a2) != 64)
    {
      goto LABEL_19;
    }

    goto LABEL_8;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (HIDWORD(a1) - a1 == 64)
  {
    goto LABEL_8;
  }

LABEL_19:
  result = sub_10002AC1C(a1, a2);
  v20 = 1;
  v21 = 0uLL;
  v22 = 0uLL;
  v23 = 0uLL;
  v24 = 0uLL;
LABEL_51:
  *a3 = v21;
  *(a3 + 16) = v22;
  *(a3 + 32) = v23;
  *(a3 + 48) = v24;
  *(a3 + 64) = v20;
  return result;
}

unint64_t sub_1000843AC()
{
  result = qword_1000D8DC8;
  if (!qword_1000D8DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8DC8);
  }

  return result;
}

unint64_t sub_100084400()
{
  result = qword_1000D8DD0;
  if (!qword_1000D8DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8DD0);
  }

  return result;
}

uint64_t sub_100084454(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12387 && a2 == 0xE200000000000000;
  if (v3 || (sub_10008B158() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12643 && a2 == 0xE200000000000000 || (sub_10008B158() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 12899 && a2 == 0xE200000000000000 || (sub_10008B158() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 13155 && a2 == 0xE200000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_10008B158();

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

unint64_t sub_100084598(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_1000845A8(void *a1)
{
  v3 = sub_10002A958(&qword_1000D8DD8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v8 - v5;
  sub_10002E7C4(a1, a1[3]);
  sub_100084828();
  sub_10008B308();
  if (!v1)
  {
    sub_10002A958(&qword_1000D6C80);
    v9 = 0;
    sub_100048A5C(&qword_1000D7350);
    sub_10008B088();
    v8[3] = v10;
    v9 = 1;
    sub_10008B088();
    v8[2] = v10;
    v9 = 2;
    sub_10008B088();
    v8[1] = v10;
    v9 = 3;
    sub_10008B088();
    (*(v4 + 8))(v6, v3);
    v8[0] = v10;
  }

  return sub_10002E85C(a1);
}

unint64_t sub_100084828()
{
  result = qword_1000D8DE0;
  if (!qword_1000D8DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8DE0);
  }

  return result;
}

unint64_t sub_1000848A0()
{
  result = qword_1000D8DF0;
  if (!qword_1000D8DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8DF0);
  }

  return result;
}

unint64_t sub_1000848F8()
{
  result = qword_1000D8DF8;
  if (!qword_1000D8DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8DF8);
  }

  return result;
}

unint64_t sub_100084950()
{
  result = qword_1000D8E00;
  if (!qword_1000D8E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8E00);
  }

  return result;
}

uint64_t sub_1000849A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10002A958(&qword_1000D6780);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100085750(a3, v25 - v10);
  v12 = sub_10008AD08();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000856E8(v11);
  }

  else
  {
    sub_10008ACF8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10008AC88();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10008AB78() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_10002A958(&qword_1000D6728);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_10002A958(&qword_1000D6728);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100084C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10002A958(&qword_1000D6780);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100085750(a3, v25 - v10);
  v12 = sub_10008AD08();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000856E8(v11);
  }

  else
  {
    sub_10008ACF8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10008AC88();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10008AB78() + 32;
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

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

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

uint64_t sub_100084EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100084F18, 0, 0);
}

uint64_t sub_100084F18()
{
  v1 = v0[2];
  v2 = v0[3];
  _s22RealitySnapshotBackendCMa();
  sub_100074000(v2, v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_100084FC4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(type metadata accessor for CRLUSDRendering.CompressionRequest(0) - 8);
  v2[4] = v3;
  v2[5] = *(v3 + 64);
  v2[6] = swift_task_alloc();
  sub_10002A958(&qword_1000D6780);
  v2[7] = swift_task_alloc();
  sub_10008ACE8();
  v2[8] = sub_10008ACD8();
  v5 = sub_10008AC88();
  v2[9] = v5;
  v2[10] = v4;

  return _swift_task_switch(sub_1000850F4, v5, v4);
}

uint64_t sub_1000850F4()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[3];
  v5 = sub_10008AD08();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_100085438(v4, v1);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_100085594(v1, v7 + v6);
  v8 = sub_1000849A4(0, 0, v2, &unk_1000ABB80, v7);
  v0[11] = v8;
  sub_1000856E8(v2);
  v9 = swift_task_alloc();
  v0[12] = v9;
  v10 = sub_10002A958(&qword_1000D6728);
  *v9 = v0;
  v9[1] = sub_10008527C;
  v11 = v0[2];

  return Task<>.value.getter(v11, v8, v10);
}

uint64_t sub_10008527C()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_1000853C0, v3, v2);
}

uint64_t sub_1000853C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100085438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLUSDRendering.CompressionRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008549C()
{
  v1 = *(type metadata accessor for CRLUSDRendering.CompressionRequest(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  v5 = sub_100089CD8();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  sub_10002AC1C(*(v0 + v3 + *(v6 + 20)), *(v0 + v3 + *(v6 + 20) + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100085594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLUSDRendering.CompressionRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000855F8(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLUSDRendering.CompressionRequest(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100027728;

  return sub_100084EF8(a1, v6, v7, v1 + v5);
}

uint64_t sub_1000856E8(uint64_t a1)
{
  v2 = sub_10002A958(&qword_1000D6780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100085750(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002A958(&qword_1000D6780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000857C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002F13C;

  return sub_10005380C(a1, v4);
}

uint64_t sub_100085878(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100027728;

  return sub_10005380C(a1, v4);
}

uint64_t sub_100085930()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100085974()
{
  result = MTLCreateSystemDefaultDevice();
  if (!result)
  {
    goto LABEL_7;
  }

  v1 = swift_dynamicCastObjCProtocolConditional();
  if (!v1)
  {
    result = swift_unknownObjectRelease();
LABEL_7:
    v4 = 4096;
    goto LABEL_8;
  }

  v2 = v1;
  swift_unknownObjectRetain();
  v3 = [v2 maxTextureWidth2D];
  result = swift_unknownObjectRelease_n();
  v4 = 4096;
  if (v3 < 4096)
  {
    v4 = v3;
  }

LABEL_8:
  qword_1000E3728 = v4;
  return result;
}

uint64_t sub_100085BD0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100085C18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100085C68(double *a1, uint64_t a2)
{
  v3 = a1[8];
  v4 = a1[4];
  v5 = v3 * v4;
  if (v5 <= -9.2234e18)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v5 >= 9.2234e18)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v6 = a1[5];
  v7 = v3 * v6;
  if ((LODWORD(v5) & 0x7FFFFFFFu) > 0x7F7FFFFF || (LODWORD(v7) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_25;
  }

  if (v7 <= -9.2234e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v7 < 9.2234e18)
  {
    v2 = v5;
    a2 = v7;
    if (qword_1000D6270 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  v13 = a2;
  swift_once();
  a2 = v13;
LABEL_8:
  result = qword_1000E3728;
  if (qword_1000E3728 >= v2 && qword_1000E3728 >= a2)
  {
    return v2;
  }

  if (v2 != a2)
  {
    v10 = qword_1000E3728;
    if (a2 >= v2)
    {
      v12 = (v2 / a2) * v10;
      if ((LODWORD(v12) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        if (v12 > -9.2234e18)
        {
          if (v12 < 9.2234e18)
          {
            return v12;
          }

          goto LABEL_34;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v11 = (a2 / v2) * v10;
      if ((LODWORD(v11) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        if (v11 > -9.2234e18)
        {
          if (v11 < 9.2234e18)
          {
            return result;
          }

          goto LABEL_33;
        }

        goto LABEL_31;
      }

      __break(1u);
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  return result;
}

id sub_100085E48(uint64_t a1, id a2)
{
  v2 = [a2 newSharedTextureWithDescriptor:a1];
  if (v2)
  {
    v3 = _s19SharedTextureHandleCMa();
    v4 = objc_allocWithZone(v3);
    v5 = [swift_unknownObjectRetain() newSharedTextureHandle];
    if (v5)
    {
      *&v4[OBJC_IVAR___CRLUSDRenderingCoreRESharedTextureHandle_handle] = v5;
      v7.receiver = v4;
      v7.super_class = v3;
      objc_msgSendSuper2(&v7, "init");
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease_n();
      swift_deallocPartialClassInstance();
      return 0;
    }
  }

  return v2;
}

void *sub_100085F1C(void *a1, id a2, void *a3, void *a4)
{
  v10 = sub_100089DA8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100085E48(a2, a1);
  if (!v14)
  {
    goto LABEL_15;
  }

  v5 = v14;
  v32 = v15;
  if (!a3)
  {
    v28 = [a1 newSharedEvent];
    if (!v28)
    {
      swift_unknownObjectRelease();

      goto LABEL_15;
    }

    v29 = a2;
    if (a4)
    {
      v27 = v4;
      swift_unknownObjectRetain();
      v26 = a4;
LABEL_11:
      swift_unknownObjectRetain();
      sub_100089D98();
      v18 = sub_100089D58();
      v20 = v19;
      (*(v11 + 8))(v13, v10);
      v30 = 0x72657265646E6572;
      v31 = 0xE90000000000003ALL;
      v33._countAndFlagsBits = v18;
      v33._object = v20;
      sub_10008ABB8(v33);
      v21 = sub_10008AB08();

      [v28 setLabel:v21];

      v16 = &off_1000D2000;
      v30 = 0x6579616C70736964;
      v31 = 0xEA00000000003A72;
      v34._countAndFlagsBits = v18;
      v34._object = v20;
      sub_10008ABB8(v34);

      v22 = sub_10008AB08();

      [v26 setLabel:v22];

      goto LABEL_12;
    }

LABEL_9:
    swift_unknownObjectRetain();
    v17 = [a1 newSharedEvent];
    if (v17)
    {
      v26 = v17;
      v27 = v4;
      goto LABEL_11;
    }

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    a2 = v29;
LABEL_15:
    sub_10002ACC4();
    swift_allocError();
    *v24 = 0xD00000000000001ELL;
    *(v24 + 8) = 0x80000001000A4EF0;
    *(v24 + 16) = 5;
    swift_willThrow();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v5;
  }

  v29 = a2;
  if (!a4)
  {
    v28 = a3;
    goto LABEL_9;
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v16 = &off_1000D2000;
LABEL_12:
  v23 = sub_10008AB08();
  [v5 v16[299]];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v5;
}

unint64_t sub_100086290()
{
  result = qword_1000D9058;
  if (!qword_1000D9058)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000D9058);
  }

  return result;
}

uint64_t _s19RealityBackendStateOMa()
{
  result = qword_1000D9130;
  if (!qword_1000D9130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100086388()
{
  sub_1000863FC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1000863FC()
{
  if (!qword_1000D9140)
  {
    sub_100089CD8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000D9140);
    }
  }
}

uint64_t sub_10008646C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100086B40(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_1000864B0()
{
  result = qword_1000D9170;
  if (!qword_1000D9170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9170);
  }

  return result;
}

unint64_t sub_100086508()
{
  result = qword_1000D9178;
  if (!qword_1000D9178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9178);
  }

  return result;
}

unint64_t sub_100086560()
{
  result = qword_1000D9180;
  if (!qword_1000D9180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9180);
  }

  return result;
}

unint64_t sub_1000865B8()
{
  result = qword_1000D9188;
  if (!qword_1000D9188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9188);
  }

  return result;
}

uint64_t sub_10008660C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100089CD8();
  v49 = *(v4 - 8);
  v50 = v4;
  __chkstk_darwin(v4);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s19RealityBackendStateOMa();
  v8 = __chkstk_darwin(v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = (&v49 - v12);
  __chkstk_darwin(v11);
  v15 = &v49 - v14;
  v16 = sub_10002A958(&qword_1000D9190);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v49 - v18;
  v20 = &v49 + *(v17 + 56) - v18;
  sub_100086B78(a1, &v49 - v18);
  sub_100086B78(a2, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_100086B78(v19, v10);
      v25 = *v10;
      v26 = *(v10 + 1);
      v27 = v10[16];
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_10002C83C(v25, v26, v27);
        goto LABEL_17;
      }

      v28 = *v20;
      v29 = *(v20 + 1);
      v30 = v20[16];
      v31 = sub_100041318(v25, v26, v27, v28, v29, v30);
      sub_10002C83C(v25, v26, v27);
      sub_10002C83C(v28, v29, v30);
      goto LABEL_20;
    }

    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_100086B78(v19, v15);
      v22 = *(sub_10002A958(&qword_1000D8910) + 48);
      v23 = *&v15[v22 + 48];
      v53 = *&v15[v22 + 32];
      v54 = v23;
      *&v55 = *&v15[v22 + 64];
      v24 = *&v15[v22 + 16];
      v51 = *&v15[v22];
      v52 = v24;
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v49 + 8))(v15, v50);
LABEL_17:
        sub_100086BDC(v19);
LABEL_29:
        v31 = 0;
        return v31 & 1;
      }

      v42 = *&v20[v22 + 48];
      v63 = *&v20[v22 + 32];
      v64 = v42;
      *&v65 = *&v20[v22 + 64];
      v43 = *&v20[v22 + 16];
      v61 = *&v20[v22];
      v62 = v43;
      v45 = v49;
      v44 = v50;
      (*(v49 + 32))(v6, v20, v50);
      v46 = sub_100089C98();
      v47 = *(v45 + 8);
      v47(v6, v44);
      v47(v15, v44);
      if (v46)
      {
        v31 = sub_100041E00(&v51, &v61);
LABEL_20:
        sub_100086C44(v19);
        return v31 & 1;
      }

LABEL_28:
      sub_100086C44(v19);
      goto LABEL_29;
    }

    sub_100086B78(v19, v13);
    v32 = v13[7];
    v67 = v13[6];
    v68 = v32;
    v33 = v13[9];
    v69 = v13[8];
    v70 = v33;
    v34 = v13[3];
    v63 = v13[2];
    v64 = v34;
    v35 = v13[5];
    v65 = v13[4];
    v66 = v35;
    v36 = v13[1];
    v61 = *v13;
    v62 = v36;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_10002DA0C(&v61);
      goto LABEL_17;
    }

    v37 = *(v20 + 7);
    v57 = *(v20 + 6);
    v58 = v37;
    v38 = *(v20 + 9);
    v59 = *(v20 + 8);
    v60 = v38;
    v39 = *(v20 + 3);
    v53 = *(v20 + 2);
    v54 = v39;
    v40 = *(v20 + 5);
    v55 = *(v20 + 4);
    v56 = v40;
    v41 = *(v20 + 1);
    v51 = *v20;
    v52 = v41;
    v71[0] = v61;
    v72 = v62;
    v73 = v63;
    v74 = v64;
    v75 = v65;
    v76[0] = v51;
    v77 = v41;
    v78 = v53;
    v79 = v54;
    v80 = v55;
    if (!sub_100041E00(v71, v76) || (v81.origin.x = *(&v65 + 1), *&v81.origin.y = v66, *&v81.size.height = v67, v82.origin.x = *(&v55 + 1), *&v82.origin.y = v56, *&v82.size.height = v57, !CGRectEqualToRect(v81, v82)) || BYTE8(v67) != BYTE8(v57) || *&v68 != *&v58 || *(&v68 + 1) != *(&v58 + 1) || *&v69 != *&v59 || *(&v69 + 1) != *(&v59 + 1) || *(&v69 + 2) != *(&v59 + 2) || (sub_10003F328(v70, v60) & 1) == 0)
    {
      sub_10002DA0C(&v51);
      sub_10002DA0C(&v61);
      goto LABEL_28;
    }

    sub_10002DA0C(&v61);
    sub_10002DA0C(&v51);
    if (*(&v70 + 1) != *(&v60 + 1))
    {
      goto LABEL_28;
    }
  }

  sub_100086C44(v19);
  v31 = 1;
  return v31 & 1;
}

uint64_t sub_100086B40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_100086B78(uint64_t a1, uint64_t a2)
{
  v4 = _s19RealityBackendStateOMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100086BDC(uint64_t a1)
{
  v2 = sub_10002A958(&qword_1000D9190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100086C44(uint64_t a1)
{
  v2 = _s19RealityBackendStateOMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100086CA4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_10008ACE8();
  v2[4] = sub_10008ACD8();
  v4 = sub_10008AC88();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_100086D3C, v4, v3);
}

uint64_t sub_100086D3C()
{
  _s22RealitySnapshotBackendCMa();
  v1 = swift_allocObject();
  v0[7] = v1;
  v1[2] = 0;
  sub_10008A618();
  swift_allocObject();
  v2 = sub_10008A608();
  v1[4] = 0;
  v1[5] = 0;
  v1[3] = v2;
  v3 = v1 + OBJC_IVAR____TtCO20USDRendererExtension15CRLUSDRendering22RealitySnapshotBackend_compression;
  *v3 = 0;
  v3[8] = 1;
  sub_100089D98();
  *(v1 + OBJC_IVAR____TtCO20USDRendererExtension15CRLUSDRendering22RealitySnapshotBackend_flags) = 1;
  _s19RealityBackendStateOMa();
  swift_storeEnumTagMultiPayload();
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_100086E74;
  v5 = v0[2];
  v6 = v0[3];

  return sub_1000717A4(v5, v6);
}

uint64_t sub_100086E74()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_100086F94, v3, v2);
}

uint64_t sub_100086F94()
{
  v1 = *(v0 + 56);

  swift_setDeallocating();

  sub_100086C44(v1 + OBJC_IVAR____TtCO20USDRendererExtension15CRLUSDRendering22RealitySnapshotBackend_backendState);
  v2 = OBJC_IVAR____TtCO20USDRendererExtension15CRLUSDRendering22RealitySnapshotBackend_uuid;
  v3 = sub_100089DA8();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  swift_deallocClassInstance();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000870C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10008716C;

  return sub_10008730C(a1);
}

uint64_t sub_10008716C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_10008726C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100027728;

  return sub_100086CA4(a1, a2);
}

uint64_t sub_10008730C(uint64_t a1)
{
  v1[2] = a1;
  sub_10008ACE8();
  v1[3] = sub_10008ACD8();
  v3 = sub_10008AC88();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_1000873A4, v3, v2);
}

uint64_t sub_1000873A4()
{
  _s22RealitySnapshotBackendCMa();
  v1 = swift_allocObject();
  v0[6] = v1;
  v1[2] = 0;
  sub_10008A618();
  swift_allocObject();
  v2 = sub_10008A608();
  v1[4] = 0;
  v1[5] = 0;
  v1[3] = v2;
  v3 = v1 + OBJC_IVAR____TtCO20USDRendererExtension15CRLUSDRendering22RealitySnapshotBackend_compression;
  *v3 = 0;
  v3[8] = 1;
  sub_100089D98();
  *(v1 + OBJC_IVAR____TtCO20USDRendererExtension15CRLUSDRendering22RealitySnapshotBackend_flags) = 1;
  _s19RealityBackendStateOMa();
  swift_storeEnumTagMultiPayload();
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1000874DC;
  v5 = v0[2];

  return sub_100070988(v5);
}

uint64_t sub_1000874DC(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 64) = a1;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);

  return _swift_task_switch(sub_100087604, v4, v3);
}

uint64_t sub_100087604()
{
  v1 = v0[6];

  swift_setDeallocating();

  sub_100086C44(v1 + OBJC_IVAR____TtCO20USDRendererExtension15CRLUSDRendering22RealitySnapshotBackend_backendState);
  v2 = OBJC_IVAR____TtCO20USDRendererExtension15CRLUSDRendering22RealitySnapshotBackend_uuid;
  v3 = sub_100089DA8();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  swift_deallocClassInstance();
  v4 = v0[1];
  v5 = v0[8];

  return v4(v5);
}

void sub_100087764()
{
  sub_100002C8C();
  v3 = "NSString *CRLAppGroupIdentifier()_block_invoke";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBundleUtilities.m";
  v6 = 1024;
  sub_100002C78();
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d App group identifier (%@) has unexpected prefix.", v2, 0x2Cu);
}

void sub_100087834(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_100002C60();
  sub_100002CA0(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, v9);
}

void sub_1000878EC()
{
  sub_1000085F8();
  sub_100008644();
  sub_10000860C();
  sub_100008628(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_1000879AC(void *a1)
{
  v2 = a1;
  v3 = [sub_10000861C() packedBacktraceString];
  sub_100002C60();
  sub_100002CA0(&_mh_execute_header, v4, v5, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v6, v7, v8, v9, v10);
}

void sub_100087A60()
{
  sub_1000085F8();
  sub_100008644();
  sub_10000860C();
  sub_100008628(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_100087B48()
{
  sub_1000085F8();
  sub_100008644();
  sub_10000860C();
  sub_100008628(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_100087CA8(uint64_t a1, int a2)
{
  v4[0] = 67110146;
  v4[1] = a2;
  v5 = 2082;
  sub_100008644();
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSString_CRLAdditions.m";
  v7 = 1024;
  v8 = 1342;
  v9 = 2112;
  v10 = v2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unable to make a string out of data with UTI %@", v4, 0x2Cu);
}

void sub_100087E08(int a1, pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter *this)
{
  if (!this)
  {
    return;
  }

  v3 = *(this + 2);
  if (v3 < 0)
  {
    if (v3 == -2)
    {
      v5 = 4294967294;
    }

    else
    {
      v5 = *(this + 2);
      atomic_compare_exchange_strong_explicit(this + 2, &v5, v3 + 1, memory_order_release, memory_order_relaxed);
      if (v5 == v3)
      {
        if (v3 != -1)
        {
          return;
        }

        goto LABEL_4;
      }
    }

    if ((pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter::_RemoveRefMaybeLocked(this, v5) & 1) == 0)
    {
      return;
    }

    goto LABEL_4;
  }

  if (atomic_fetch_add_explicit(this + 2, 0xFFFFFFFF, memory_order_release) != 1)
  {
    return;
  }

LABEL_4:
  v4 = *(*this + 8);

  v4(this);
}

uint64_t sub_100087EC8(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    v2 = *(result + 8);
    if (v2 < 0)
    {
      if (v2 == -1)
      {
        return pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter::_AddRefMaybeLocked();
      }

      v3 = *(result + 8);
      atomic_compare_exchange_strong_explicit((result + 8), &v3, v2 - 1, memory_order_relaxed, memory_order_relaxed);
      if (v3 != v2)
      {
        return pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter::_AddRefMaybeLocked();
      }
    }

    else
    {
      atomic_fetch_add_explicit((result + 8), 1u, memory_order_relaxed);
    }
  }

  return result;
}

void sub_100088004(void *a1, uint8_t *buf, int a3, os_log_t log)
{
  *buf = 67109378;
  *(buf + 1) = a3;
  *(buf + 4) = 2114;
  *(buf + 10) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
}

uint64_t sub_1000883E0(uint64_t a1)
{
  v2 = j__strrchr("/AppleInternal/Library/BuildRoots/4~B_w5ugB0cWO2QulcgZa4ZXN9Wn2ujMQpX1I70JA/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/weakPtrFacade.h", 47);
  *a1 = sub_10000F9C8("/AppleInternal/Library/BuildRoots/4~B_w5ugB0cWO2QulcgZa4ZXN9Wn2ujMQpX1I70JA/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/weakPtrFacade.h", v2, 0x2Fu);
  *(a1 + 8) = "operator->";
  *(a1 + 16) = 186;
  *(a1 + 24) = "DataType *pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr, pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->() const [PtrTemplate = pxrInternal__aapl__pxrReserved__::TfWeakPtr, Type = pxrInternal__aapl__pxrReserved__::SdfLayer]";
  *(a1 + 32) = 0;
  v3 = pxrInternal__aapl__pxrReserved__::Tf_PostNullSmartPtrDereferenceFatalError();
  return sub_100088454(v3);
}

uint64_t sub_100088454(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = sub_100012FF4(result);
    if (v2)
    {
      sub_100013008();
      return (*(v3 + 8))(v4, v5);
    }
  }

  return result;
}

uint64_t sub_1000884A4(void *a1, uint64_t a2)
{
  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  result = *(a2 + 8);
  if (result)
  {
    result = sub_100012FF4(result);
    if (v3)
    {
      sub_100013008();
      return (*(v4 + 8))(v5, v6);
    }
  }

  return result;
}

uint64_t sub_10008850C(uint64_t a1)
{
  sub_10001304C(a1);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  result = *(v1 + 8);
  if (result)
  {
    result = sub_100012FF4(result);
    if (v4)
    {
      sub_100013008();
      return (*(v5 + 8))();
    }
  }

  return result;
}

uint64_t *sub_10008856C(uint64_t *result, uint64_t *a2, void *a3)
{
  *a3 = &off_1000C2D90 + 1;
  result[1] = &off_1000C2D90 + 1;
  v3 = *a2;
  *result = *a2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *result &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

uint64_t *sub_1000885B0(uint64_t *result, uint64_t a2, uint64_t *a3)
{
  result[1] = a2;
  v3 = *a3;
  *result = *a3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *result &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

uint64_t sub_10008860C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000F728(a1);
  result = *(a3 + 8);
  if (result)
  {
    result = sub_100012FF4(result);
    if (v5)
    {
      sub_100013008();
      return (*(v6 + 8))();
    }
  }

  return result;
}

uint64_t sub_100088688(uint64_t a1)
{
  sub_10001304C(a1);
  if ((*v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  result = *(v1 + 8);
  if (result)
  {
    result = sub_100012FF4(result);
    if (v4)
    {
      sub_100013008();
      return (*(v5 + 8))();
    }
  }

  return result;
}

uint64_t *sub_1000886F0(uint64_t *result, uint64_t *a2)
{
  result[1] = &off_1000C2D90 + 1;
  v2 = *a2;
  *result = *a2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *result &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

void sub_100088810(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error creating directory: %@", buf, 0xCu);
}

void sub_100088890()
{
  sub_100013014();
  sub_10001303C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100088A3C()
{
  sub_100013014();
  sub_10001303C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100088AE0()
{
  sub_100013014();
  v3 = 1026;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Success inspecting USDZ %{public}@, result %{public}i", v2, 0x12u);
}

uint64_t sub_100088B64(uint64_t a1)
{
  result = sub_100012FF4(a1);
  if (v2)
  {
    sub_100013008();
    return (*(v3 + 8))(v4, v5);
  }

  return result;
}

uint64_t sub_100088BAC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100012FF4(a1);
  if (v4)
  {
    (*(*v3 + 8))(v3);
  }

  result = *a2;
  if (*a2)
  {
    result = sub_100012FF4(result);
    if (v4)
    {
      sub_100013008();
      return (*(v6 + 8))();
    }
  }

  return result;
}

atomic_ullong *sub_100088C28(atomic_ullong *result, atomic_ullong **a2)
{
  if (atomic_fetch_add_explicit(result, 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
  {
    __dmb(9u);
    result = *a2;
    v2 = (*a2)[1];
    if (v2)
    {
      return v2();
    }
  }

  return result;
}

void sub_100088C78()
{
  sub_1000085F8();
  v3 = "[CRLMetalDeviceCapabilities initWithDevice:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMetalDeviceCapabilities.m";
  v6 = 1024;
  v7 = 20;
  v8 = v0;
  v9 = "device";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_100088D64()
{
  sub_1000085F8();
  v3 = "[CRLMetalDeviceCapabilities supportsGPUFamily:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMetalDeviceCapabilities.m";
  v6 = 1024;
  v7 = 62;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Can't compare iOS to macOS GPUs.", v2, 0x22u);
}

void sub_100088E40(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "+[NSError(CRLAdditions) crl_errorWithCode:userInfo:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSError_CRLAdditions.m";
  v7 = 1024;
  v8 = 40;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad error code", v2, 0x22u);
}

void sub_100088F14(void *a1, int a2)
{
  v3 = a1;
  v4 = +[CRLAssertionHandler packedBacktraceString];
  v5[0] = 67109378;
  v5[1] = a2;
  v6 = 2114;
  v7 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, 0x12u);
}

void sub_100088FEC(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "+[CRLImage crl_quickInspectorImageNamed:isPrivateImage:isBundledImage:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLImage.m";
  v7 = 1024;
  v8 = 715;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, 0x22u);
}

void sub_100089160()
{
  sub_1000085F8();
  sub_10001AD5C();
  sub_10001AD70(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unknown platform!", v2, v3, v4, v5, v6);
}

void sub_100089224()
{
  sub_1000085F8();
  sub_10001AD5C();
  sub_10001AD70(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unknown platform!", v2, v3, v4, v5, v6);
}

void sub_1000892E8()
{
  sub_1000085F8();
  sub_10001AD5C();
  sub_10001AD70(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Shouldn't be asking for the maximum Metal texture size on a device that doesn't support Metal.", v2, v3, v4, v5, v6);
}

void sub_1000893AC()
{
  sub_1000085F8();
  v3 = "[CRLCapabilities metalCapabilitiesForDevice:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLCapabilities.m";
  v6 = 1024;
  v7 = 438;
  v8 = v0;
  v9 = "device";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10008952C(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert Assertion backtrace: >>%{public}@<<", &v3, 0xCu);
}

void sub_1000895EC(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = 134218242;
  v5 = CRLDynamicBaseAddress();
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert Assertion backtrace. Load address 0x%0llx, Backtrace:\n%{public}@", &v4, 0x16u);
}

void sub_1000896CC()
{
  sub_1000085F8();
  v2 = "[CRLTemporaryDirectory path]";
  sub_10001AD5C();
  v3 = 71;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Directory has already been removed", v1, 0x22u);
}

void sub_1000897B0(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v3 = *a2;
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to remove CRLTemporaryDirectory. Error: %@, path: %@", &v4, 0x16u);
}

void sub_100089850()
{
  sub_1000085F8();
  v2 = "[CRLTemporaryDirectory removeDirectory]";
  sub_10001AD5C();
  v3 = 92;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Directory has already been removed", v1, 0x22u);
}

void sub_100089934()
{
  sub_1000085F8();
  v3 = "[CRLTemporaryDirectory _createDirectoryWithSignature:subdirectory:error:]_block_invoke";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLTemporaryDirectory.m";
  v6 = 1024;
  v7 = 114;
  v8 = v0;
  v9 = "secretSubdirectoryNameBase";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_100089A70(void *a1)
{
  v2 = a1;
  v3 = [sub_10000861C() packedBacktraceString];
  sub_100002C60();
  sub_10001DEEC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  CurrentTokenRange = _CFStringTokenizerGetCurrentTokenRange(tokenizer);
  length = CurrentTokenRange.length;
  location = CurrentTokenRange.location;
  result.length = length;
  result.location = location;
  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::SdfAssetPath>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::GfVec3f>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::TfToken>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<int>>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<float>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<int>()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}