uint64_t sub_1009E83AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 296) = a4;
  *(v5 + 304) = a5;
  return _swift_task_switch(sub_1009E83CC, 0, 0);
}

uint64_t sub_1009E83CC()
{
  v1 = *(v0 + 296);
  v2 = OBJC_IVAR____TtC8Freeform17CRLSyncController_syncEngine;
  swift_beginAccess();
  sub_10000BE14(v1 + v2, v0 + 168, &qword_101A0BA28);
  if (*(v0 + 192))
  {
    sub_100050F74((v0 + 168), v0 + 128);
    sub_100020E58((v0 + 128), *(v0 + 152));
    v3 = swift_task_alloc();
    *(v0 + 312) = v3;
    *v3 = v0;
    v3[1] = sub_1009E8578;
    v4 = *(v0 + 304);

    return CKSyncEngine.fetchChanges(_:)(v4);
  }

  else
  {
    sub_10000CAAC(v0 + 168, &qword_101A0BA28);
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v5 = static OS_os_log.dataSync;
    v6 = static os_log_type_t.error.getter();
    sub_100005404(v5, &_mh_execute_header, v6, "Failed to request fetch from SyncEngine because of no SyncEngine exists.", 72, 2, _swiftEmptyArrayStorage);
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1009E8578()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_1009E86EC;
  }

  else
  {
    v2 = sub_1009E868C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009E868C()
{
  sub_100005070(v0 + 128);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1009E86EC()
{
  sub_100005070((v0 + 16));
  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  swift_getErrorValue();
  v3 = Error.publicDescription.getter(v0[30], v0[31]);
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  v6 = sub_1000053B0();
  *(inited + 64) = v6;
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  swift_getErrorValue();
  v7 = Error.fullDescription.getter(v0[33]);
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = v8;
  v9 = static os_log_type_t.error.getter();
  sub_100005404(v1, &_mh_execute_header, v9, "fetchChanges call to SyncEngine failed because of error: %{public}@ %@", 70, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v10 = v0[1];

  return v10();
}

uint64_t sub_1009E889C(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_queue);
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3, v5);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    if (qword_1019F2270 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v33 = static OS_os_log.dataSync;
  v34 = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v11 = inited;
  *(inited + 16) = xmmword_10146BDE0;
  if (*(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v12 = 0x5320646572616853;
  }

  else
  {
    v12 = 0x2065746176697250;
  }

  if (*(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v13 = 0xEC00000065706F63;
  }

  else
  {
    v13 = 0xED000065706F6353;
  }

  *(inited + 56) = &type metadata for String;
  v14 = sub_1000053B0();
  v11[8] = v14;
  v11[4] = v12;
  v11[5] = v13;
  v15 = [a1 zoneID];
  v32 = a1;
  v16 = v15;
  v11[12] = sub_100006370(0, &qword_1019F69D0);
  v11[13] = sub_10000FE24(&unk_101A22DB0, &qword_1019F69D0);
  v11[9] = v16;
  v17 = v33;
  v18 = static os_log_type_t.default.getter();
  sub_100005404(v17, &_mh_execute_header, v18, "<%{public}@> Saved recordZone %{public}@", 40, 2, v11);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v19 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_saveTask);
  if (!v19)
  {
    v24 = swift_initStackObject();
    *(v24 + 16) = xmmword_10146C6B0;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = v14;
    *(v24 + 32) = v12;
    v25 = v24 + 32;
    *(v24 + 40) = v13;
    v26 = static os_log_type_t.default.getter();
    sub_100005404(v17, &_mh_execute_header, v26, "<%{public}@> No save task for successful save. Enqueuing record save", 68, 2, v24);
LABEL_17:
    swift_setDeallocating();
    sub_100005070(v25);
    return sub_1009E52A4();
  }

  v31 = v14;
  v20 = v13;

  v21 = [v32 zoneID];
  sub_1009E9054(v21);

  swift_beginAccess();
  v22 = *(v19 + 40);
  if ((v22 & 0xC000000000000001) != 0)
  {

    v23 = __CocoaSet.count.getter();
  }

  else
  {
    v23 = *(v22 + 16);
  }

  v27 = v31;
  if (!v23)
  {
    v28 = swift_initStackObject();
    *(v28 + 16) = xmmword_10146C6B0;
    *(v28 + 56) = &type metadata for String;
    *(v28 + 64) = v27;
    *(v28 + 32) = v12;
    v25 = v28 + 32;
    *(v28 + 40) = v20;
    v29 = static os_log_type_t.default.getter();
    sub_100005404(v17, &_mh_execute_header, v29, "<%{public}@> Record zones finished saving. Enqueuing record save", 64, 2, v28);

    goto LABEL_17;
  }

  return sub_1009E52A4();
}

void sub_1009E8CF8(void *a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLSyncController_queue);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6, v8);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    if (qword_1019F2270 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v13 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v15 = inited;
  *(inited + 16) = xmmword_10146C4D0;
  if (*(v3 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v16 = 0x5320646572616853;
  }

  else
  {
    v16 = 0x2065746176697250;
  }

  if (*(v3 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v17 = 0xEC00000065706F63;
  }

  else
  {
    v17 = 0xED000065706F6353;
  }

  *(inited + 56) = &type metadata for String;
  v18 = sub_1000053B0();
  v15[8] = v18;
  v15[4] = v16;
  v15[5] = v17;
  v19 = sub_100B6FCD4(a2);
  v15[12] = &type metadata for String;
  v15[13] = v18;
  v15[9] = v19;
  v15[10] = v20;
  v30 = a2;
  type metadata accessor for CKError(0);
  v21 = a2;
  v22 = String.init<A>(reflecting:)();
  v15[17] = &type metadata for String;
  v15[18] = v18;
  v15[14] = v22;
  v15[15] = v23;
  v24 = static os_log_type_t.default.getter();
  sub_100005404(v13, &_mh_execute_header, v24, "<%{public}@> Failed to save recordZone %{public}@ due to error: %{public}@ <%@>", 79, 2, v15);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v25 = [a1 zoneID];
  sub_1009F55E8(v21);

  v30 = v21;
  sub_10002C5F0(&qword_1019F3348, 255, type metadata accessor for CKError);
  _BridgedStoredNSError.code.getter();
  v26 = v29;
  v27 = [a1 zoneID];
  v28 = v27;
  if (v26 == 27)
  {
    sub_1009F6014(v27);
  }

  else
  {
    sub_1009F6578(v27);
  }
}

void sub_1009E9054(void *a1)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_queue);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6, v8);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  v14 = *(v7 + 8);
  v13 = v7 + 8;
  v14(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = 0xED000065706F6353;
  v2 = 0xEC00000065706F63;
  v3 = 0x5320646572616853;
  v4 = 0x2065746176697250;
  if (*(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_saveTask))
  {
    v15 = qword_1019F2270;

    if (v15 == -1)
    {
LABEL_4:
      v16 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      v18 = inited;
      *(inited + 16) = xmmword_10146BDE0;
      if (!*(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
      {
        v3 = v4;
        v2 = v13;
      }

      *(inited + 56) = &type metadata for String;
      v19 = sub_1000053B0();
      v18[8] = v19;
      v18[4] = v3;
      v18[5] = v2;
      v20 = [a1 zoneName];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v18[12] = &type metadata for String;
      v18[13] = v19;
      v18[9] = v21;
      v18[10] = v23;
      v24 = static os_log_type_t.default.getter();
      sub_100005404(v16, &_mh_execute_header, v24, "<%{public}@> Removing zoneID from unsaved zones after success %{public}@", 72, 2, v18);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      swift_beginAccess();
      v25 = sub_100ED80E4(a1);
      swift_endAccess();

      return;
    }

LABEL_17:
    swift_once();
    goto LABEL_4;
  }

  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v26 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0);
  v27 = swift_initStackObject();
  v28 = v27;
  *(v27 + 16) = xmmword_10146C6B0;
  if (*(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v29 = 0x5320646572616853;
  }

  else
  {
    v29 = 0x2065746176697250;
  }

  if (*(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v30 = 0xEC00000065706F63;
  }

  else
  {
    v30 = 0xED000065706F6353;
  }

  *(v27 + 56) = &type metadata for String;
  *(v27 + 64) = sub_1000053B0();
  *(v28 + 32) = v29;
  *(v28 + 40) = v30;
  v31 = static os_log_type_t.error.getter();
  sub_100005404(v26, &_mh_execute_header, v31, "<%{public}@> Could not find active save task for zone save success", 66, 2, v28);
  swift_setDeallocating();
  sub_100005070(v28 + 32);
}

uint64_t sub_1009E9418(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = type metadata accessor for CKSyncEngine.SendChangesOptions.Scope();
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return _swift_task_switch(sub_1009E94E8, 0, 0);
}

uint64_t sub_1009E94E8()
{
  v1 = 0xEC00000065706F63;
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  type metadata accessor for SendChangesContext(0);
  CKSyncEngine.SendChangesOptions.scope.getter();
  (*(v5 + 104))(v3, enum case for CKSyncEngine.SendChangesOptions.Scope.all(_:), v4);
  v6 = static CKSyncEngine.SendChangesOptions.Scope.== infix(_:_:)();
  v7 = *(v5 + 8);
  v7(v3, v4);
  v7(v2, v4);
  if (v6)
  {
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v8 = v0[22];
    v9 = static OS_os_log.dataSync;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    v11 = inited;
    *(inited + 16) = xmmword_10146C6B0;
    if (*(v8 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v12 = 0x5320646572616853;
    }

    else
    {
      v12 = 0x2065746176697250;
    }

    if (!*(v8 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v1 = 0xED000065706F6353;
    }

    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(v11 + 32) = v12;
    *(v11 + 40) = v1;
    v13 = static os_log_type_t.default.getter();
    sub_100005404(v9, &_mh_execute_header, v13, "<%{public}@> Next Record Zone Change Batch is being requested by Sync Engine.", 77, 2, v11);
    swift_setDeallocating();
    sub_100005070(v11 + 32);
    *(swift_task_alloc() + 16) = v8;
    sub_1005B981C(&qword_101A0BA58);
    OS_dispatch_queue.sync<A>(execute:)();
  }

  else
  {
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v14 = v0[22];
    v15 = v0[20];
    v16 = static OS_os_log.dataSync;
    sub_1005B981C(&qword_1019F54E0);
    v17 = swift_initStackObject();
    v18 = v17;
    *(v17 + 16) = xmmword_10146C6B0;
    if (*(v14 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v19 = 0x5320646572616853;
    }

    else
    {
      v19 = 0x2065746176697250;
    }

    if (*(v14 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v20 = 0xEC00000065706F63;
    }

    else
    {
      v20 = 0xED000065706F6353;
    }

    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_1000053B0();
    *(v18 + 32) = v19;
    *(v18 + 40) = v20;
    v21 = static os_log_type_t.default.getter();
    sub_100005404(v16, &_mh_execute_header, v21, "<%{public}@> Ignoring nextRecordZoneChangeBatch event that came in because of push-notification; scope is not .all", 114, 2, v18);
    swift_setDeallocating();
    sub_100005070(v18 + 32);
    v22 = type metadata accessor for CKSyncEngine.RecordZoneChangeBatch();
    (*(*(v22 - 8) + 56))(v15, 1, 1, v22);
  }

  v23 = v0[1];

  return v23();
}

unint64_t sub_1009E98A8@<X0>(uint64_t a1@<X8>)
{
  v171 = a1;
  v2 = sub_1005B981C(&qword_101A0BA30);
  __chkstk_darwin(v2 - 8);
  *&v170 = &v162 - v3;
  v4 = sub_1005B981C(&qword_101A0BA40);
  __chkstk_darwin(v4 - 8);
  v174 = &v162 - v5;
  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v6 = static OS_os_log.dataSync;
  v7 = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v9 = inited;
  v166 = xmmword_10146C6B0;
  *(inited + 16) = xmmword_10146C6B0;
  if (*(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v10 = 0x5320646572616853;
  }

  else
  {
    v10 = 0x2065746176697250;
  }

  if (*(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v11 = 0xEC00000065706F63;
  }

  else
  {
    v11 = 0xED000065706F6353;
  }

  *(inited + 56) = &type metadata for String;
  v12 = sub_1000053B0();
  v9[8] = v12;
  v9[4] = v10;
  v9[5] = v11;
  v13 = static os_log_type_t.default.getter();
  sub_100005404(v6, &_mh_execute_header, v13, "<%{public}@> Generating Record Zone Change Batch.", 49, 2, v9);
  swift_setDeallocating();
  sub_100005070((v9 + 4));
  v14 = v1;
  v15 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_saveTask);
  if (!v15)
  {
    v18 = swift_initStackObject();
    *(v18 + 16) = v166;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = v12;
    *(v18 + 32) = v10;
    *(v18 + 40) = v11;
    v19 = static os_log_type_t.default.getter();
    sub_100005404(v6, &_mh_execute_header, v19, "<%{public}@> There is no outstanding save task. No new record batch to save", 75, 2, v18);
    swift_setDeallocating();
    sub_100005070(v18 + 32);
    v20 = sub_1005B981C(&qword_101A0BA48);
    v21 = v174;
    (*(*(v20 - 8) + 56))(v174, 1, 1, v20);
    v22 = type metadata accessor for CKSyncEngine.RecordZoneChangeBatch();
    (*(*(v22 - 8) + 56))(v171, 1, 1, v22);
    v23 = v21;
    v24 = v14;
    goto LABEL_78;
  }

  v165 = v1;
  v176 = v10;
  v177 = v12;
  v178 = v6;
  v173 = v7;
  v175 = v11;
  swift_beginAccess();
  v16 = v15[5];
  if ((v16 & 0xC000000000000001) != 0)
  {

    v17 = __CocoaSet.count.getter();
  }

  else
  {
    v17 = *(v16 + 16);
  }

  v25 = v176;
  if (v17)
  {
    v26 = swift_initStackObject();
    *(v26 + 16) = xmmword_10146BDE0;
    v27 = v177;
    *(v26 + 56) = &type metadata for String;
    *(v26 + 64) = v27;
    *(v26 + 32) = v25;
    v28 = v174;
    *(v26 + 40) = v175;
    v29 = v15[5];
    *(v26 + 96) = sub_1005B981C(&unk_1019F52B0);
    *(v26 + 104) = sub_10001A2F8(&qword_101A0BA50, &unk_1019F52B0);
    *(v26 + 72) = v29;

    v30 = static os_log_type_t.default.getter();
    sub_100005404(v178, &_mh_execute_header, v30, "<%{public}@> Could not return a batch for saving, task has pending zones to save: %{public}@", 92, 2, v26);

    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v31 = sub_1005B981C(&qword_101A0BA48);
    (*(*(v31 - 8) + 56))(v28, 1, 1, v31);
    v32 = type metadata accessor for CKSyncEngine.RecordZoneChangeBatch();
    (*(*(v32 - 8) + 56))(v171, 1, 1, v32);
    v23 = v28;
    goto LABEL_77;
  }

  if (v15[4])
  {
    v33 = swift_allocObject();
    *(v33 + 16) = v166;
    v34 = v177;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = v34;
    *(v33 + 32) = v25;
    *(v33 + 40) = v175;
    v35 = static os_log_type_t.default.getter();
    sub_100005404(v178, &_mh_execute_header, v35, "<%{public}@> There is an ongoing batch to be saved. Not returning a new batch", 77, 2, v33);

    swift_setDeallocating();
    sub_100005070(v33 + 32);
    swift_deallocClassInstance();
    goto LABEL_18;
  }

  v39 = v15[8];
  v40 = v178;
  v164 = v15;
  if (v39 && (*(v39 + 80) & 1) == 0)
  {
    v41 = *(v39 + 72);

    if (!v41 || (sub_100B50C20() & 1) == 0 && (swift_beginAccess(), v42 = v15[6], v43 = *(*(v39 + 16) + 16), , v44 = v43, v45 = sub_10079DB58(v44, v42), v44, , (v45 & 1) == 0))
    {
      v88 = swift_allocObject();
      *(v88 + 16) = xmmword_10146BDE0;
      *(v88 + 32) = v25;
      v172 = v88 + 32;
      v89 = v177;
      *(v88 + 56) = &type metadata for String;
      *(v88 + 64) = v89;
      *(v88 + 40) = v175;
      v90 = [*(*(v39 + 16) + 16) zoneName];
      v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v93 = v92;

      *(v88 + 96) = &type metadata for String;
      *(v88 + 104) = v89;
      *(v88 + 72) = v91;
      *(v88 + 80) = v93;
      v94 = static os_log_type_t.default.getter();
      v51 = v178;
      sub_100005404(v178, &_mh_execute_header, v94, "<%{public}@> The current batch previously had a recoverable save error. Attempting to save the batch again. Zone ID: %{public}@", 127, 2, v88);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      goto LABEL_42;
    }

    v40 = v178;
  }

  v46 = v165;
  v47 = (v165 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncLogicProvider);
  swift_beginAccess();
  v48 = v47[3];
  v168 = v47;
  v49 = sub_100020E58(v47, v48);
  v50 = sub_1009F4158(*v49, v15);
  if (!v50)
  {
LABEL_38:

    v77 = sub_1005B981C(&qword_101A0BA48);
    v78 = v174;
    (*(*(v77 - 8) + 56))(v174, 1, 1, v77);
    v79 = type metadata accessor for CKSyncEngine.RecordZoneChangeBatch();
    (*(*(v79 - 8) + 56))(v171, 1, 1, v79);
    v23 = v78;
    v24 = v46;
    goto LABEL_78;
  }

  v169 = xmmword_10146BDE0;
  while (1)
  {
    v51 = v40;
    v52 = v15[6];
    v172 = v50;
    v53 = *(*(v50 + 16) + 16);
    if ((v52 & 0xC000000000000001) != 0)
    {

      v54 = v53;
      v55 = __CocoaSet.contains(_:)();

      v56 = v175;
      if ((v55 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    v56 = v175;
    if (!*(v52 + 16))
    {
      goto LABEL_40;
    }

    sub_100006370(0, &qword_1019F69D0);
    v57 = *(v52 + 40);

    v58 = v53;
    v59 = NSObject._rawHashValue(seed:)(v57);
    v60 = -1 << *(v52 + 32);
    v61 = v59 & ~v60;
    if (((*(v52 + 56 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) == 0)
    {
      break;
    }

    v62 = ~v60;
    while (1)
    {
      v63 = *(*(v52 + 48) + 8 * v61);
      v64 = static NSObject.== infix(_:_:)();

      if (v64)
      {
        break;
      }

      v61 = (v61 + 1) & v62;
      if (((*(v52 + 56 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    v51 = v178;
    v56 = v175;
LABEL_37:
    v65 = v172;
    sub_100B510C0();
    v66 = swift_initStackObject();
    *(v66 + 16) = v169;
    v67 = v176;
    v68 = v177;
    *(v66 + 56) = &type metadata for String;
    *(v66 + 64) = v68;
    *(v66 + 32) = v67;
    *(v66 + 40) = v56;
    v69 = [*(*(v65 + 16) + 16) zoneName];
    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v71;

    *(v66 + 96) = &type metadata for String;
    *(v66 + 104) = v68;
    *(v66 + 72) = v70;
    *(v66 + 80) = v72;
    v73 = static os_log_type_t.default.getter();
    v40 = v51;
    sub_100005404(v51, &_mh_execute_header, v73, "<%{public}@> Skipping batch part of a failed zone with ID: %{public}@", 69, 2, v66);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v74 = type metadata accessor for CRLZoneSyncResultScenarios();
    v75 = v170;
    (*(*(v74 - 8) + 56))(v170, 1, 1, v74);
    v46 = v165;
    sub_1009EEDBC(v65, 0, v75);

    sub_10000CAAC(v75, &qword_101A0BA30);
    v76 = sub_100020E58(v168, v168[3]);
    v15 = v164;
    v50 = sub_1009F4158(*v76, v164);
    if (!v50)
    {
      goto LABEL_38;
    }
  }

LABEL_39:

  v51 = v178;
  v56 = v175;
LABEL_40:
  v80 = swift_initStackObject();
  *(v80 + 16) = v169;
  v81 = v176;
  v82 = v177;
  *(v80 + 56) = &type metadata for String;
  *(v80 + 64) = v82;
  *(v80 + 32) = v81;
  *(v80 + 40) = v56;
  v39 = v172;
  v83 = [*(*(v172 + 16) + 16) zoneName];
  v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v86 = v85;

  *(v80 + 96) = &type metadata for String;
  *(v80 + 104) = v82;
  *(v80 + 72) = v84;
  *(v80 + 80) = v86;
  v87 = static os_log_type_t.default.getter();
  sub_100005404(v51, &_mh_execute_header, v87, "<%{public}@> Advancing to next batch. Zone ID: %{public}@", 57, 2, v80);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v15 = v164;
LABEL_42:
  v182 = _swiftEmptyArrayStorage;
  result = sub_100B50D88();
  v96 = result;
  v97 = v39;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v98 = result;
    if (!result)
    {
      goto LABEL_73;
    }

LABEL_44:
    if (v98 < 1)
    {
      __break(1u);
      return result;
    }

    v167 = v96 & 0xC000000000000001;
    swift_beginAccess();
    v99 = 0;
    v163 = _swiftEmptyArrayStorage;
    v170 = xmmword_10146BDE0;
    v172 = v97;
    v168 = v98;
    *&v169 = v96;
    while (1)
    {
      if (v167)
      {
        v105 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v105 = *(v96 + 8 * v99 + 32);
      }

      v106 = v105;
      v107 = *(v97 + 48);
      if ((v107 & 0xC000000000000001) != 0)
      {

        v108 = v106;
        v109 = __CocoaDictionary.lookup(_:)();

        if (v109)
        {
          v179 = v109;
          sub_100006370(0, &unk_101A22DC0);
          swift_dynamicCast();
          v110 = v180;

          v97 = v172;
          if (v110)
          {
            goto LABEL_58;
          }
        }

        else
        {

          v97 = v172;
        }
      }

      else if (*(v107 + 16))
      {

        v111 = sub_1007C8B7C(v106);
        if (v112)
        {
          v110 = *(*(v107 + 56) + 8 * v111);

          if (v110)
          {
LABEL_58:
            v113 = swift_initStackObject();
            *(v113 + 16) = v170;
            v114 = v176;
            v115 = v177;
            *(v113 + 56) = &type metadata for String;
            *(v113 + 64) = v115;
            *(v113 + 32) = v114;
            *(v113 + 40) = v175;
            v180 = 0x203A65707954;
            v181 = 0xE600000000000000;
            v116._countAndFlagsBits = CKRecord.recordType.getter();
            String.append(_:)(v116);

            v117._countAndFlagsBits = 0x203A444920;
            v117._object = 0xE500000000000000;
            String.append(_:)(v117);
            v118 = [v110 recordID];
            v119 = [v118 recordName];

            v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v122 = v121;

            v123._countAndFlagsBits = v120;
            v123._object = v122;
            String.append(_:)(v123);
            v124 = v177;

            v125 = v180;
            v126 = v181;
            *(v113 + 96) = &type metadata for String;
            *(v113 + 104) = v124;
            *(v113 + 72) = v125;
            *(v113 + 80) = v126;
            v127 = static os_log_type_t.default.getter();
            sub_100005404(v178, &_mh_execute_header, v127, "<%{public}@> Adding record %{public}@ to batch save that was previously merged with the server record", 101, 2, v113);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670);
LABEL_69:
            swift_arrayDestroy();
            v148 = v110;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v182 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v182 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v163 = v182;
            v15 = v164;
            v97 = v172;
            goto LABEL_47;
          }
        }

        else
        {
        }
      }

      v128 = *(v97 + 40);
      if ((v128 & 0xC000000000000001) != 0)
      {
        v129 = v106;
        v130 = __CocoaDictionary.lookup(_:)();

        if (v130)
        {
          v179 = v130;
          sub_100006370(0, &unk_101A22DC0);
          swift_dynamicCast();
          v110 = v180;
          if (v180)
          {
            goto LABEL_68;
          }
        }
      }

      else if (*(v128 + 16))
      {
        v131 = sub_1007C8B7C(v106);
        if (v132)
        {
          v110 = *(*(v128 + 56) + 8 * v131);
          if (v110)
          {
LABEL_68:
            v133 = swift_initStackObject();
            *(v133 + 16) = v170;
            v134 = v176;
            v135 = v177;
            *(v133 + 56) = &type metadata for String;
            *(v133 + 64) = v135;
            *(v133 + 32) = v134;
            *(v133 + 40) = v175;
            v180 = 0x203A65707954;
            v181 = 0xE600000000000000;
            v136._countAndFlagsBits = CKRecord.recordType.getter();
            String.append(_:)(v136);

            v137._countAndFlagsBits = 0x203A444920;
            v137._object = 0xE500000000000000;
            String.append(_:)(v137);
            v138 = [v110 recordID];
            v139 = [v138 recordName];

            v140 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v142 = v141;

            v143._countAndFlagsBits = v140;
            v144 = v177;
            v143._object = v142;
            String.append(_:)(v143);

            v145 = v180;
            v146 = v181;
            *(v133 + 96) = &type metadata for String;
            *(v133 + 104) = v144;
            *(v133 + 72) = v145;
            *(v133 + 80) = v146;
            v147 = static os_log_type_t.default.getter();
            sub_100005404(v178, &_mh_execute_header, v147, "<%{public}@> Adding record %{public}@ to batch save from local changes", 70, 2, v133);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670);
            goto LABEL_69;
          }
        }
      }

      v100 = swift_initStackObject();
      *(v100 + 16) = v170;
      v101 = v176;
      v102 = v177;
      *(v100 + 56) = &type metadata for String;
      *(v100 + 64) = v102;
      *(v100 + 32) = v101;
      *(v100 + 40) = v175;
      *(v100 + 96) = sub_100006370(0, &qword_1019F6E98);
      *(v100 + 104) = sub_10000FE24(&qword_101A22E90, &qword_1019F6E98);
      *(v100 + 72) = v106;
      v103 = v106;
      v104 = static os_log_type_t.error.getter();
      sub_100005404(v178, &_mh_execute_header, v104, "<%{public}@> Failed to find a cloud record for record ID %{public}@ for saving the batch", 88, 2, v100);

      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
LABEL_47:
      v99 = (v99 + 1);
      v96 = v169;
      v51 = v178;
      if (v168 == v99)
      {
        goto LABEL_74;
      }
    }
  }

  v98 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v98)
  {
    goto LABEL_44;
  }

LABEL_73:
  v163 = _swiftEmptyArrayStorage;
LABEL_74:

  if (v163 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_80;
    }

LABEL_76:
    v149 = v171;
    CKSyncEngine.RecordZoneChangeBatch.init(recordsToSave:recordIDsToDelete:atomicByZone:)();
    *(v15 + 32) = 1;

    v150 = sub_1005B981C(&qword_101A0BA48);
    v151 = *(v150 + 48);
    v152 = type metadata accessor for CKSyncEngine.RecordZoneChangeBatch();
    v153 = v97;
    v154 = *(v152 - 8);
    v155 = v174;
    (*(v154 + 16))(v174, v149, v152);
    v156 = *(v153 + 16);

    v157 = *(v156 + 16);

    *(v155 + v151) = v157;
    (*(*(v150 - 8) + 56))(v155, 0, 1, v150);
    (*(v154 + 56))(v149, 0, 1, v152);
    v23 = v155;
  }

  else
  {
    if (*((v163 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_76;
    }

LABEL_80:

    v158 = swift_initStackObject();
    *(v158 + 16) = v166;
    v159 = v176;
    v160 = v177;
    *(v158 + 56) = &type metadata for String;
    *(v158 + 64) = v160;
    *(v158 + 32) = v159;
    *(v158 + 40) = v175;
    v161 = static os_log_type_t.default.getter();
    sub_100005404(v51, &_mh_execute_header, v161, "<%{public}@> No records are available to add to a batch save", 60, 2, v158);

    swift_setDeallocating();
    sub_100005070(v158 + 32);
LABEL_18:
    v36 = sub_1005B981C(&qword_101A0BA48);
    v37 = v174;
    (*(*(v36 - 8) + 56))(v174, 1, 1, v36);
    v38 = type metadata accessor for CKSyncEngine.RecordZoneChangeBatch();
    (*(*(v38 - 8) + 56))(v171, 1, 1, v38);
    v23 = v37;
  }

LABEL_77:
  v24 = v165;
LABEL_78:
  sub_1009EAD48(v23, v24);
  return sub_10000CAAC(v174, &qword_101A0BA40);
}

uint64_t sub_1009EAD48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A0BA48);
  v5 = *(*(v4 - 8) + 48);
  if (v5(a1, 1, v4) != 1 || (v6 = *(a2 + OBJC_IVAR____TtC8Freeform17CRLSyncController_saveTask)) == 0 || (*(v6 + 32) & 1) != 0)
  {
LABEL_7:
    result = v5(a1, 1, v4);
    if (result != 1)
    {
      if (qword_1019F2270 != -1)
      {
        swift_once();
      }

      v10 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      v12 = inited;
      *(inited + 16) = xmmword_10146C6B0;
      if (*(a2 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
      {
        v13 = 0x5320646572616853;
      }

      else
      {
        v13 = 0x2065746176697250;
      }

      if (*(a2 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
      {
        v14 = 0xEC00000065706F63;
      }

      else
      {
        v14 = 0xED000065706F6353;
      }

      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(v12 + 32) = v13;
      *(v12 + 40) = v14;
      v15 = static os_log_type_t.default.getter();
      sub_100005404(v10, &_mh_execute_header, v15, "<%{public}@> There is another batch to save in the current save task. Incrementing attempts for save.", 101, 2, v12);
      swift_setDeallocating();
      return sub_100005070(v12 + 32);
    }

    return result;
  }

  swift_beginAccess();
  v7 = *(v6 + 40);
  if ((v7 & 0xC000000000000001) != 0)
  {

    v8 = __CocoaSet.count.getter();

    if (v8)
    {
LABEL_6:

      goto LABEL_7;
    }
  }

  else
  {
    v16 = *(v7 + 16);

    if (v16)
    {
      goto LABEL_6;
    }
  }

  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v17 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0);
  v18 = swift_initStackObject();
  v19 = v18;
  *(v18 + 16) = xmmword_10146C6B0;
  if (*(a2 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v20 = 0x5320646572616853;
  }

  else
  {
    v20 = 0x2065746176697250;
  }

  if (*(a2 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v21 = 0xEC00000065706F63;
  }

  else
  {
    v21 = 0xED000065706F6353;
  }

  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_1000053B0();
  *(v19 + 32) = v20;
  *(v19 + 40) = v21;
  v22 = static os_log_type_t.default.getter();
  sub_100005404(v17, &_mh_execute_header, v22, "<%{public}@> No batch left to save in the current save task. Finishing the save task", 84, 2, v19);
  swift_setDeallocating();
  sub_100005070(v19 + 32);
  sub_1009E4740();
}

uint64_t sub_1009EB0CC(uint64_t a1, uint64_t a2)
{
  v3[25] = a2;
  v3[26] = v2;
  v3[24] = a1;
  Changes = type metadata accessor for CKSyncEngine.FetchChangesOptions.Scope();
  v3[27] = Changes;
  v3[28] = *(Changes - 8);
  v3[29] = swift_task_alloc();
  v5 = type metadata accessor for CKSyncEngine.SyncReason();
  v3[30] = v5;
  v3[31] = *(v5 - 8);
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1009EB1EC, 0, 0);
}

uint64_t sub_1009EB1EC()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  (*(v2 + 16))(v1, v0[25], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for CKSyncEngine.SyncReason.scheduled(_:))
  {
    v5 = v0[26];
    (*(v0[28] + 104))(v0[29], enum case for CKSyncEngine.FetchChangesOptions.Scope.all(_:), v0[27]);
    CKSyncEngine.FetchChangesOptions.init(scope:operationGroup:)();
    sub_100020E58((v5 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncPriorityProvider), *(v5 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncPriorityProvider + 24));
    type metadata accessor for CRLSyncPriorityProvider();
    sub_1006C3518();
    CKSyncEngine.FetchChangesOptions.prioritizedZoneIDs.setter();
    Changes = CKSyncEngine.FetchChangesOptions.defaultZoneConfiguration.modify();
    CKSyncEngine.FetchChangesOptions.ZoneConfiguration.shouldFetchAssetContents.setter();
    Changes(v0 + 20, 0);
  }

  else if (v4 == enum case for CKSyncEngine.SyncReason.manual(_:))
  {
    v8 = v0[24];
    v7 = v0[25];
    v9 = *(type metadata accessor for FetchChangesContext(0) + 20);
    ChangesOptions = type metadata accessor for CKSyncEngine.FetchChangesOptions();
    (*(*(ChangesOptions - 8) + 16))(v8, v7 + v9, ChangesOptions);
  }

  else
  {
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v29 = v0[31];
    v30 = v0[32];
    v11 = v0[30];
    v12 = v0[28];
    v27 = v0[29];
    v28 = v0[27];
    v13 = v0[26];
    v26 = static OS_os_log.dataSync;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    v15 = inited;
    *(inited + 16) = xmmword_10146BDE0;
    if (*(v13 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v16 = 0x5320646572616853;
    }

    else
    {
      v16 = 0x2065746176697250;
    }

    if (*(v13 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v17 = 0xEC00000065706F63;
    }

    else
    {
      v17 = 0xED000065706F6353;
    }

    *(inited + 56) = &type metadata for String;
    v18 = sub_1000053B0();
    v15[8] = v18;
    v15[4] = v16;
    v15[5] = v17;
    sub_10002C5F0(&qword_101A0BA38, 255, &type metadata accessor for CKSyncEngine.SyncReason);
    v19 = v11;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v15[12] = &type metadata for String;
    v15[13] = v18;
    v15[9] = v20;
    v15[10] = v21;
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v26, &_mh_execute_header, v22, "<%{public}@> encountered unknown FetchChangesContext.Reason %@", 62, 2, v15);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    (*(v12 + 104))(v27, enum case for CKSyncEngine.FetchChangesOptions.Scope.all(_:), v28);
    CKSyncEngine.FetchChangesOptions.init(scope:operationGroup:)();
    sub_100020E58((v13 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncPriorityProvider), *(v13 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncPriorityProvider + 24));
    type metadata accessor for CRLSyncPriorityProvider();
    sub_1006C3518();
    CKSyncEngine.FetchChangesOptions.prioritizedZoneIDs.setter();
    v23 = CKSyncEngine.FetchChangesOptions.defaultZoneConfiguration.modify();
    CKSyncEngine.FetchChangesOptions.ZoneConfiguration.shouldFetchAssetContents.setter();
    v23(v0 + 16, 0);
    (*(v29 + 8))(v30, v19);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_1009EB684(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *(type metadata accessor for SyncEvent(0) - 8);
  v2[10] = v3;
  v2[11] = *(v3 + 64);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_1009EB748, 0, 0);
}

uint64_t sub_1009EB748()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = *&v3[OBJC_IVAR____TtC8Freeform17CRLSyncController_queue];
  sub_1009F5EFC(v0[8], v1, type metadata accessor for SyncEvent);
  v5 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  sub_1009F7758(v1, v6 + v5, type metadata accessor for SyncEvent);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1009F5FB0;
  *(v7 + 24) = v6;
  v0[6] = sub_10002AAE0;
  v0[7] = v7;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = *"";
  v0[4] = sub_10002AAB8;
  v0[5] = &unk_101890C98;
  v8 = _Block_copy(v0 + 2);
  v9 = v3;

  dispatch_sync(v4, v8);
  _Block_release(v8);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {

    v11 = v0[1];

    return v11();
  }

  return result;
}

void sub_1009EB92C(void *a1, uint64_t a2)
{
  v46 = a2;
  v3 = type metadata accessor for SyncEvent.DidSendChanges(0);
  __chkstk_darwin(v3 - 8);
  v45 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SyncEvent.WillSendChanges(0);
  __chkstk_darwin(v5 - 8);
  v43 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v7 - 8);
  v44 = v41 - v8;
  v9 = type metadata accessor for SyncEvent(0);
  __chkstk_darwin(v9);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v12 = static OS_os_log.dataSync;
  v41[1] = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v14 = inited;
  *(inited + 16) = xmmword_10146BDE0;
  v47 = a1;
  if (*(a1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v15 = 0x5320646572616853;
  }

  else
  {
    v15 = 0x2065746176697250;
  }

  if (*(a1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v16 = 0xEC00000065706F63;
  }

  else
  {
    v16 = 0xED000065706F6353;
  }

  *(inited + 56) = &type metadata for String;
  v17 = sub_1000053B0();
  v14[8] = v17;
  v41[0] = v15;
  v14[4] = v15;
  v14[5] = v16;
  v18 = v46;
  v19 = SyncEvent.description.getter();
  v14[12] = &type metadata for String;
  v14[13] = v17;
  v14[9] = v19;
  v14[10] = v20;
  v21 = static os_log_type_t.default.getter();
  v42 = v12;
  sub_100005404(v12, &_mh_execute_header, v21, "<%{public}@> Received new SyncEngine event: <%{public}@>", 56, 2, v14);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  sub_1009F5EFC(v18, v11, type metadata accessor for SyncEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload != 9)
      {
        if (EnumCaseMultiPayload == 10)
        {
          v33 = swift_initStackObject();
          *(v33 + 16) = xmmword_10146C6B0;
          *(v33 + 56) = &type metadata for String;
          *(v33 + 64) = v17;
          *(v33 + 32) = v41[0];
          *(v33 + 40) = v16;
          v34 = static os_log_type_t.default.getter();
          sub_100005404(v42, &_mh_execute_header, v34, "<%{public}@> Sync engine started fetching changes from CloudKit", 63, 2, v33);
          swift_setDeallocating();
          sub_100005070(v33 + 32);
          sub_1009F1CE8();
        }

        else
        {
          sub_1009F70A0();
        }

        return;
      }

      v39 = v45;
      sub_1009F7758(v11, v45, type metadata accessor for SyncEvent.DidSendChanges);
      sub_1009F1944();
      v40 = type metadata accessor for SyncEvent.DidSendChanges;
    }

    else
    {
      if (EnumCaseMultiPayload == 6)
      {
        v38 = *v11;
        sub_1009F1310(*v11);

        return;
      }

      if (EnumCaseMultiPayload == 7)
      {
        v31 = *v11;
        v32 = *(v11 + 1);
        sub_1009F6AD8(*v11);

        return;
      }

      v39 = v43;
      sub_1009F7758(v11, v43, type metadata accessor for SyncEvent.WillSendChanges);
      sub_1009F14BC();
      v40 = type metadata accessor for SyncEvent.WillSendChanges;
    }

    sub_10002C420(v39, v40);
    return;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1009ED08C(*v11, *(v11 + 1));
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_1009ED958(*v11, *(v11 + 1), *(v11 + 2), *(v11 + 3));
      }

      else
      {
        sub_1009EE160(*v11, *(v11 + 1), *(v11 + 2), *(v11 + 3));
      }
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v35 = *(v11 + 1);
      v49[0] = *v11;
      v49[1] = v35;
      v50 = *(v11 + 4);
      sub_10000630C(v49, v48);
      v36 = OBJC_IVAR____TtC8Freeform17CRLSyncController_latestFetchedSyncMetadata;
      v37 = v47;
      swift_beginAccess();
      sub_10002C638(v48, v37 + v36, &qword_101A0BA20);
      swift_endAccess();
      sub_1009E5BB8(v49);
      sub_1009F7574(v49);
      return;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v23 = *v11;
      v24 = *(v11 + 1);
      v25 = v11[16];
      v26 = type metadata accessor for TaskPriority();
      v27 = v44;
      (*(*(v26 - 8) + 56))(v44, 1, 1, v26);
      v28 = swift_allocObject();
      *(v28 + 16) = 0;
      *(v28 + 24) = 0;
      *(v28 + 32) = v23;
      *(v28 + 40) = v24;
      *(v28 + 48) = v25;
      v29 = v47;
      *(v28 + 56) = v47;
      v30 = v29;
      sub_10064191C(0, 0, v27, &unk_10148CE58, v28);

      return;
    }

    sub_1009EC5BC(*v11, *(v11 + 1));
  }
}

uint64_t sub_1009EBF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 248) = a5;
  *(v7 + 256) = a7;
  *(v7 + 296) = a6;
  *(v7 + 240) = a4;
  return _swift_task_switch(sub_1009EBFB0, 0, 0);
}

uint64_t sub_1009EBFB0()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 240);
  if (*(v0 + 296))
  {
    if (v1 == 1)
    {
      v3 = 0;
      v4 = *(v0 + 240);
    }

    else
    {
      v4 = *(v0 + 248);
      v6 = v2;
      v3 = v4;
    }

    v5 = v2;
  }

  else
  {
    v4 = *(v0 + 240);
    v3 = v4;
    v5 = *(v0 + 296);
  }

  v7 = *(v0 + 248);
  v8 = v4;
  sub_1007908F4(v2, v7, v1);
  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 256);
  v40 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  v11 = *(v9 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope);
  *(inited + 56) = &type metadata for String;
  v12 = sub_1000053B0();
  v13 = v12;
  v14 = 0x2065746176697250;
  if (v11)
  {
    v14 = 0x5320646572616853;
  }

  v39 = v14;
  *(inited + 32) = v14;
  v15 = 0xED000065706F6353;
  if (v11)
  {
    v15 = 0xEC00000065706F63;
  }

  *(inited + 64) = v12;
  v38 = v15;
  *(inited + 40) = v15;
  v16 = &selRef_canRemoveImageBackground;
  if (v5)
  {
    v17 = [v5 recordName];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = (inited + 72);
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v13;
    if (v20)
    {
      *v21 = v18;
      v16 = &selRef_canRemoveImageBackground;
      goto LABEL_19;
    }

    v16 = &selRef_canRemoveImageBackground;
  }

  else
  {
    v21 = (inited + 72);
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v12;
  }

  *v21 = 7104878;
  v20 = 0xE300000000000000;
LABEL_19:
  *(inited + 80) = v20;
  if (v3)
  {
    v22 = [v3 v16[3]];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = (inited + 112);
    *(inited + 136) = &type metadata for String;
    *(inited + 144) = v13;
    if (v25)
    {
      *v26 = v23;
      goto LABEL_24;
    }
  }

  else
  {
    v26 = (inited + 112);
    *(inited + 136) = &type metadata for String;
    *(inited + 144) = v13;
  }

  *v26 = 7104878;
  v25 = 0xE300000000000000;
LABEL_24:
  *(inited + 120) = v25;
  v27 = static os_log_type_t.default.getter();
  sub_100005404(v40, &_mh_execute_header, v27, "<%{public}@> Received account changed notification. From %@ to %@", 65, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  if (!v5)
  {
    v29 = 0;
    v31 = 0;
    v32 = v3;
    v30 = v3;
    if (!v3)
    {
      goto LABEL_29;
    }

LABEL_33:

LABEL_34:
    *(v0 + 264) = v29;
    *(v0 + 272) = v30;
    *(v0 + 280) = *(*(v0 + 256) + OBJC_IVAR____TtC8Freeform17CRLSyncController_accountChangeObserverManager);

    v37 = swift_task_alloc();
    *(v0 + 288) = v37;
    *v37 = v0;
    v37[1] = sub_1009EC440;

    return sub_1009E0184(v5, v3);
  }

  if (!v3)
  {
    v30 = 0;
    v32 = v5;
    v29 = v5;
    goto LABEL_33;
  }

  sub_100006370(0, &qword_1019F6E98);
  v28 = static NSObject.== infix(_:_:)();

  v29 = v5;
  v30 = v3;
  v31 = v5;
  if ((v28 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_29:
  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_10146C6B0;
  *(v33 + 56) = &type metadata for String;
  *(v33 + 64) = v13;
  *(v33 + 32) = v39;
  *(v33 + 40) = v38;
  v34 = static os_log_type_t.error.getter();
  sub_100005404(v40, &_mh_execute_header, v34, "<%{public}@> Unexpected account change state. Both old and new user records are same", 84, 2, v33);

  swift_setDeallocating();
  sub_100005070(v33 + 32);
  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_1009EC440()
{

  return _swift_task_switch(sub_1009EC558, 0, 0);
}

uint64_t sub_1009EC558()
{
  v1 = *(v0 + 264);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1009EC5BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    if (*(v108 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v4 = 0x5320646572616853;
    }

    else
    {
      v4 = 0x2065746176697250;
    }

    v5 = 0xED000065706F6353;
    if (*(v108 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v5 = 0xEC00000065706F63;
    }

    v102 = v5;
    v104 = v4;
    do
    {
      v6 = qword_1019F2270;
      v7 = *v3;
      if (v6 != -1)
      {
        swift_once();
      }

      v106 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      *(inited + 56) = &type metadata for String;
      v9 = sub_1000053B0();
      *(inited + 64) = v9;
      *(inited + 32) = v104;
      *(inited + 40) = v102;
      v10 = [v7 zoneName];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v9;
      *(inited + 72) = v11;
      *(inited + 80) = v13;
      v14 = static os_log_type_t.default.getter();
      sub_100005404(v106, &_mh_execute_header, v14, "<%{public}@> zoneWithIDWasModified name: %{public}@", 51, 2, inited);

      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      ++v3;
      --v2;
    }

    while (v2);
  }

  v15 = *(a2 + 16);
  if (!v15)
  {
    return;
  }

  v107 = v15 - 1;
  v103 = OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope;
  v16 = (a2 + 40);
  v101 = OBJC_IVAR____TtC8Freeform17CRLSyncController_fetchedRecords;
  while (1)
  {
    v105 = v16;
    v17 = *v16;
    v18 = qword_1019F2270;
    v19 = *(v16 - 1);
    if (!v17)
    {
      if (v18 != -1)
      {
        swift_once();
      }

      v98 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0);
      v41 = swift_initStackObject();
      v42 = v41;
      *(v41 + 16) = xmmword_10146BDE0;
      if (*(v108 + v103))
      {
        v43 = 0x5320646572616853;
      }

      else
      {
        v43 = 0x2065746176697250;
      }

      if (*(v108 + v103))
      {
        v44 = 0xEC00000065706F63;
      }

      else
      {
        v44 = 0xED000065706F6353;
      }

      *(v41 + 56) = &type metadata for String;
      v45 = sub_1000053B0();
      v42[8] = v45;
      v42[4] = v43;
      v42[5] = v44;
      v46 = [v19 zoneName];
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v42[12] = &type metadata for String;
      v42[13] = v45;
      v42[9] = v47;
      v42[10] = v49;
      v50 = static os_log_type_t.default.getter();
      sub_100005404(v98, &_mh_execute_header, v50, "<%{public}@> zoneWithIDWasDeleted name: %{public}@", 50, 2, v42);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      swift_beginAccess();
      v30 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = *(v108 + v101);
      v54 = sub_1007C8A78(v30);
      v55 = v52[2];
      v56 = (v53 & 1) == 0;
      v57 = v55 + v56;
      if (__OFADD__(v55, v56))
      {
        goto LABEL_77;
      }

      v58 = v53;
      if (v52[3] >= v57)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100AA9D1C();
        }
      }

      else
      {
        sub_100A92A18(v57, isUniquelyReferenced_nonNull_native);
        sub_100006370(0, &qword_1019F69D0);
        v59 = sub_1007C8A78(v30);
        if ((v58 & 1) != (v60 & 1))
        {
          goto LABEL_81;
        }

        v54 = v59;
      }

      *(v108 + v101) = v52;
      if (v58)
      {
        v81 = 32 * v54;
      }

      else
      {
        v52[(v54 >> 6) + 8] |= 1 << v54;
        *(v52[6] + 8 * v54) = v30;
        v81 = 32 * v54;
        v86 = v52[7] + 32 * v54;
        *v86 = v30;
        *(v86 + 8) = _swiftEmptyArrayStorage;
        *(v86 + 16) = _swiftEmptyArrayStorage;
        *(v86 + 24) = 0;
        *(v86 + 26) = 0;
        v87 = v52[2];
        v37 = __OFADD__(v87, 1);
        v88 = v87 + 1;
        if (v37)
        {
          goto LABEL_80;
        }

        v52[2] = v88;
        v89 = v30;
      }

      *(v52[7] + v81 + 24) = 1;
      goto LABEL_72;
    }

    if (v17 == 1)
    {
      break;
    }

    if (v18 != -1)
    {
      swift_once();
    }

    v99 = static OS_os_log.dataSync;
    sub_1005B981C(&qword_1019F54E0);
    v61 = swift_initStackObject();
    v62 = v61;
    *(v61 + 16) = xmmword_10146BDE0;
    if (*(v108 + v103))
    {
      v63 = 0x5320646572616853;
    }

    else
    {
      v63 = 0x2065746176697250;
    }

    if (*(v108 + v103))
    {
      v64 = 0xEC00000065706F63;
    }

    else
    {
      v64 = 0xED000065706F6353;
    }

    *(v61 + 56) = &type metadata for String;
    v65 = sub_1000053B0();
    v62[8] = v65;
    v62[4] = v63;
    v62[5] = v64;
    v66 = [v19 zoneName];
    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;

    v62[12] = &type metadata for String;
    v62[13] = v65;
    v62[9] = v67;
    v62[10] = v69;
    v70 = static os_log_type_t.default.getter();
    sub_100005404(v99, &_mh_execute_header, v70, "<%{public}@> zoneWithIDWasDeletedDueToUserEncryptedDataReset name: %{public}@", 77, 2, v62);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    swift_beginAccess();
    v30 = v19;
    v71 = swift_isUniquelyReferenced_nonNull_native();
    v72 = *(v108 + v101);
    v73 = sub_1007C8A78(v30);
    v75 = v72[2];
    v76 = (v74 & 1) == 0;
    v37 = __OFADD__(v75, v76);
    v77 = v75 + v76;
    if (v37)
    {
      goto LABEL_76;
    }

    v78 = v74;
    if (v72[3] >= v77)
    {
      if ((v71 & 1) == 0)
      {
        v96 = v73;
        sub_100AA9D1C();
        v73 = v96;
      }
    }

    else
    {
      sub_100A92A18(v77, v71);
      sub_100006370(0, &qword_1019F69D0);
      v73 = sub_1007C8A78(v30);
      if ((v78 & 1) != (v79 & 1))
      {
        goto LABEL_81;
      }
    }

    *(v108 + v101) = v72;
    if (v78)
    {
      v90 = 32 * v73;
    }

    else
    {
      v72[(v73 >> 6) + 8] |= 1 << v73;
      *(v72[6] + 8 * v73) = v30;
      v90 = 32 * v73;
      v91 = v72[7] + 32 * v73;
      *v91 = v30;
      *(v91 + 8) = _swiftEmptyArrayStorage;
      *(v91 + 16) = _swiftEmptyArrayStorage;
      *(v91 + 24) = 0;
      *(v91 + 26) = 0;
      v92 = v72[2];
      v37 = __OFADD__(v92, 1);
      v93 = v92 + 1;
      if (v37)
      {
        goto LABEL_78;
      }

      v72[2] = v93;
      v94 = v30;
    }

    *(v72[7] + v90 + 26) = 1;
LABEL_72:
    swift_endAccess();

    if (!v107)
    {
      return;
    }

    v16 = v105 + 2;
    --v107;
  }

  if (v18 != -1)
  {
    swift_once();
  }

  v97 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0);
  v20 = swift_initStackObject();
  v21 = v20;
  *(v20 + 16) = xmmword_10146BDE0;
  if (*(v108 + v103))
  {
    v22 = 0x5320646572616853;
  }

  else
  {
    v22 = 0x2065746176697250;
  }

  if (*(v108 + v103))
  {
    v23 = 0xEC00000065706F63;
  }

  else
  {
    v23 = 0xED000065706F6353;
  }

  *(v20 + 56) = &type metadata for String;
  v24 = sub_1000053B0();
  v21[8] = v24;
  v21[4] = v22;
  v21[5] = v23;
  v25 = [v19 zoneName];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v21[12] = &type metadata for String;
  v21[13] = v24;
  v21[9] = v26;
  v21[10] = v28;
  v29 = static os_log_type_t.default.getter();
  sub_100005404(v97, &_mh_execute_header, v29, "<%{public}@> zoneWithIDWasPurged name: %{public}@", 49, 2, v21);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  swift_beginAccess();
  v30 = v19;
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *(v108 + v101);
  v33 = sub_1007C8A78(v30);
  v35 = v32[2];
  v36 = (v34 & 1) == 0;
  v37 = __OFADD__(v35, v36);
  v38 = v35 + v36;
  if (!v37)
  {
    v39 = v34;
    if (v32[3] >= v38)
    {
      if ((v31 & 1) == 0)
      {
        v95 = v33;
        sub_100AA9D1C();
        v33 = v95;
      }
    }

    else
    {
      sub_100A92A18(v38, v31);
      sub_100006370(0, &qword_1019F69D0);
      v33 = sub_1007C8A78(v30);
      if ((v39 & 1) != (v40 & 1))
      {
        goto LABEL_81;
      }
    }

    *(v108 + v101) = v32;
    if (v39)
    {
      v80 = 32 * v33;
    }

    else
    {
      v32[(v33 >> 6) + 8] |= 1 << v33;
      *(v32[6] + 8 * v33) = v30;
      v80 = 32 * v33;
      v82 = v32[7] + 32 * v33;
      *v82 = v30;
      *(v82 + 8) = _swiftEmptyArrayStorage;
      *(v82 + 16) = _swiftEmptyArrayStorage;
      *(v82 + 24) = 0;
      *(v82 + 26) = 0;
      v83 = v32[2];
      v37 = __OFADD__(v83, 1);
      v84 = v83 + 1;
      if (v37)
      {
        goto LABEL_79;
      }

      v32[2] = v84;
      v85 = v30;
    }

    *(v32[7] + v80 + 25) = 1;
    goto LABEL_72;
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1009ED08C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v44 = type metadata accessor for DispatchPredicate();
  v6 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = (a1 + 32);
    do
    {
      v10 = *v9++;
      v11 = v10;
      sub_1009ED4C4(v11);

      --v8;
    }

    while (v8);
  }

  v12 = *(a2 + 16);
  if (v12)
  {
    v41 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLSyncController_queue);
    v13 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope);
    v40 = *(v6 + 104);
    v42 = v6 + 104;
    v39 = (v6 + 8);
    v14 = v13 == 0;
    v15 = 0x2065746176697250;
    if (!v14)
    {
      v15 = 0x5320646572616853;
    }

    v36 = v15;
    v16 = 0xED000065706F6353;
    v35 = OBJC_IVAR____TtC8Freeform17CRLSyncController_fetchedRecords;
    v38 = enum case for DispatchPredicate.onQueue(_:);
    if (!v14)
    {
      v16 = 0xEC00000065706F63;
    }

    v34 = v16;
    v17 = (a2 + 48);
    v33 = xmmword_10146C4D0;
    v37 = v3;
    while (1)
    {
      v18 = *(v17 - 2);
      v19 = *(v17 - 1);
      v20 = *v17;
      v21 = v43;
      v22 = v41;
      *v43 = v41;
      v23 = v44;
      v40(v21, v38, v44);
      v24 = v18;

      v25 = v22;
      LOBYTE(v22) = _dispatchPreconditionTest(_:)();
      (*v39)(v21, v23);
      if ((v22 & 1) == 0)
      {
        break;
      }

      v47 = v12;
      if (qword_1019F2270 != -1)
      {
        swift_once();
      }

      v45 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = v33;
      *(inited + 56) = &type metadata for String;
      v27 = sub_1000053B0();
      *(inited + 32) = v36;
      *(inited + 40) = v34;
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v27;
      *(inited + 64) = v27;
      *(inited + 72) = v19;
      v46 = v19;
      *(inited + 80) = v20;

      v28 = [v24 recordName];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      *(inited + 136) = &type metadata for String;
      *(inited + 144) = v27;
      *(inited + 112) = v29;
      *(inited + 120) = v31;
      v32 = static os_log_type_t.default.getter();
      sub_100005404(v45, &_mh_execute_header, v32, "<%{public}@> SyncEngine fetched changed deleted record with type: %{public}@ id: %{public}@", 91, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      swift_beginAccess();
      sub_100ADEA78(v24, v46, v20);
      swift_endAccess();

      v17 += 3;
      v12 = v47 - 1;
      if (v47 == 1)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1009ED4C4(void *a1)
{
  v3 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v3);
  v5 = &v43 - v4;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (&v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_queue);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6, v8);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    v45 = v3;
    if (qword_1019F2270 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v44 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  v43 = v1;
  v14 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope);
  *(inited + 56) = &type metadata for String;
  v15 = sub_1000053B0();
  v16 = v15;
  v17 = 0x2065746176697250;
  if (v14)
  {
    v17 = 0x5320646572616853;
  }

  *(inited + 32) = v17;
  v18 = 0xED000065706F6353;
  if (v14)
  {
    v18 = 0xEC00000065706F63;
  }

  *(inited + 64) = v15;
  *(inited + 40) = v18;
  v19 = CKRecord.recordType.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v16;
  *(inited + 72) = v19;
  *(inited + 80) = v20;
  v21 = [a1 recordID];
  v22 = [v21 recordName];

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  *(inited + 136) = &type metadata for String;
  *(inited + 144) = v16;
  *(inited + 112) = v23;
  *(inited + 120) = v25;
  v26 = [a1 recordChangeTag];
  if (v26)
  {
    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v46 = v28;
  v47 = v30;
  sub_1005B981C(&unk_1019F6C70);
  v31 = String.init<A>(describing:)();
  *(inited + 176) = &type metadata for String;
  *(inited + 184) = v16;
  *(inited + 152) = v31;
  *(inited + 160) = v32;
  v33 = [a1 modificationDate];
  if (v33)
  {
    v34 = v33;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  v36 = type metadata accessor for Date();
  (*(*(v36 - 8) + 56))(v5, v35, 1, v36);
  v37 = String.init<A>(describing:)();
  *(inited + 216) = &type metadata for String;
  *(inited + 224) = v16;
  *(inited + 192) = v37;
  *(inited + 200) = v38;
  v39 = static os_log_type_t.default.getter();
  sub_100005404(v44, &_mh_execute_header, v39, "<%{public}@> SyncEngine fetched changed record with type: %{public}@ id: %{public}@ recordChangeTag: %{public}@ modificationDate: %@", 132, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v40 = [a1 recordID];
  v41 = [v40 zoneID];

  sub_1009E9054(v41);
  swift_beginAccess();
  sub_100ADDF48(a1);
  return swift_endAccess();
}

uint64_t sub_1009ED958(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a1 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  if (v9 < 1)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  for (i = 0; i != v9; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v11 = *(a1 + 8 * i + 32);
    }

    v12 = v11;
    sub_1009E889C(v11);
  }

LABEL_10:
  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = (a2 + 40);
    do
    {
      v15 = *v14;
      v16 = *(v14 - 1);
      v17 = v15;
      sub_1009E8CF8(v16, v17);

      v14 += 2;
      --v13;
    }

    while (v13);
  }

  if (a3 >> 62)
  {
    goto LABEL_38;
  }

  v18 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v81 = v4;
  if (!v18)
  {
LABEL_39:
    v52 = 1 << *(a4 + 32);
    v53 = -1;
    if (v52 < 64)
    {
      v53 = ~(-1 << v52);
    }

    v54 = v53 & *(a4 + 64);
    v83 = OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope;
    v55 = (v52 + 63) >> 6;

    v5 = 0;
    if (v54)
    {
      goto LABEL_46;
    }

    while (1)
    {
      v56 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v56 >= v55)
      {
      }

      v54 = *(a4 + 64 + 8 * v56);
      ++v5;
      if (v54)
      {
        v5 = v56;
        do
        {
LABEL_46:
          v57 = (v5 << 9) | (8 * __clz(__rbit64(v54)));
          v58 = *(*(a4 + 56) + v57);
          v59 = qword_1019F2270;
          v60 = *(*(a4 + 48) + v57);
          v87 = v58;
          if (v59 != -1)
          {
            swift_once();
          }

          v54 &= v54 - 1;
          v86 = static OS_os_log.dataSync;
          sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          v62 = inited;
          *(inited + 16) = xmmword_10146C4D0;
          if (*(v81 + v83))
          {
            v63 = 0x5320646572616853;
          }

          else
          {
            v63 = 0x2065746176697250;
          }

          if (*(v81 + v83))
          {
            v64 = 0xEC00000065706F63;
          }

          else
          {
            v64 = 0xED000065706F6353;
          }

          *(inited + 56) = &type metadata for String;
          v65 = sub_1000053B0();
          v62[8] = v65;
          v62[4] = v63;
          v62[5] = v64;
          v66 = [v60 zoneName];
          v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v85 = v60;
          v69 = v68;

          v62[12] = &type metadata for String;
          v62[13] = v65;
          v62[9] = v67;
          v62[10] = v69;
          type metadata accessor for CKError(0);
          sub_10002C5F0(&qword_1019F31E0, 255, type metadata accessor for CKError);
          v70 = Error.localizedDescription.getter();
          v62[17] = &type metadata for String;
          v62[18] = v65;
          v62[14] = v70;
          v62[15] = v71;
          v72 = static os_log_type_t.error.getter();
          sub_100005404(v86, &_mh_execute_header, v72, "<%{public}@> Zone apparently failed to be deleted as part of client save. This is unexpected! This will go unhandled. zoneID: %{public}@ error: %@", 146, 2, v62);

          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
        }

        while (v54);
      }
    }

    __break(1u);
    goto LABEL_58;
  }

  while (v18 >= 1)
  {
    v19 = 0;
    v20 = 0x5320646572616853;
    if (!*(v4 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v20 = 0x2065746176697250;
    }

    v79 = v20;
    v80 = a3 & 0xC000000000000001;
    v21 = 0xED000065706F6353;
    if (*(v4 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v21 = 0xEC00000065706F63;
    }

    v77 = v21;
    v75 = v18;
    v76 = a3;
    v78 = OBJC_IVAR____TtC8Freeform17CRLSyncController_fetchedRecords;
    while (1)
    {
      if (v80)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v22 = *(a3 + 8 * v19 + 32);
      }

      v23 = v22;
      v82 = v19;
      if (qword_1019F2270 != -1)
      {
        swift_once();
      }

      v24 = static OS_os_log.dataSync;
      v84 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0);
      v25 = swift_initStackObject();
      *(v25 + 16) = xmmword_10146BDE0;
      *(v25 + 56) = &type metadata for String;
      v26 = sub_1000053B0();
      *(v25 + 64) = v26;
      *(v25 + 32) = v79;
      *(v25 + 40) = v77;
      v27 = [v23 zoneName];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      *(v25 + 96) = &type metadata for String;
      *(v25 + 104) = v26;
      *(v25 + 72) = v28;
      *(v25 + 80) = v30;
      v31 = static os_log_type_t.error.getter();
      sub_100005404(v24, &_mh_execute_header, v31, "<%{public}@> Zone apparently deleted as part of client save. This is unexpected! Handling anyway. zoneID: %{public}@", 116, 2, v25);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v32 = swift_initStackObject();
      *(v32 + 16) = xmmword_10146BDE0;
      *(v32 + 56) = &type metadata for String;
      *(v32 + 64) = v26;
      *(v32 + 32) = v79;
      *(v32 + 40) = v77;
      v33 = [v23 zoneName];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      a3 = v35;

      *(v32 + 96) = &type metadata for String;
      *(v32 + 104) = v26;
      *(v32 + 72) = v34;
      *(v32 + 80) = a3;
      v36 = static os_log_type_t.default.getter();
      sub_100005404(v84, &_mh_execute_header, v36, "<%{public}@> zoneWithIDWasDeleted name: %{public}@", 50, 2, v32);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_beginAccess();
      v5 = v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v4 = *(v81 + v78);
      v38 = sub_1007C8A78(v5);
      v40 = v4[2];
      v41 = (v39 & 1) == 0;
      v42 = __OFADD__(v40, v41);
      v43 = v40 + v41;
      if (v42)
      {
        break;
      }

      v44 = v39;
      if (v4[3] >= v43)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v51 = v38;
          sub_100AA9D1C();
          v38 = v51;
        }
      }

      else
      {
        sub_100A92A18(v43, isUniquelyReferenced_nonNull_native);
        sub_100006370(0, &qword_1019F69D0);
        v38 = sub_1007C8A78(v5);
        if ((v44 & 1) != (v45 & 1))
        {
          goto LABEL_60;
        }
      }

      *(v81 + v78) = v4;
      v46 = 32 * v38;
      if ((v44 & 1) == 0)
      {
        v4[(v38 >> 6) + 8] |= 1 << v38;
        *(v4[6] + 8 * v38) = v5;
        v47 = v4[7] + v46;
        *v47 = v5;
        *(v47 + 8) = _swiftEmptyArrayStorage;
        *(v47 + 16) = _swiftEmptyArrayStorage;
        *(v47 + 24) = 0;
        *(v47 + 26) = 0;
        v48 = v4[2];
        v42 = __OFADD__(v48, 1);
        v49 = v48 + 1;
        if (v42)
        {
          goto LABEL_37;
        }

        v4[2] = v49;
        v50 = v5;
      }

      v19 = v82 + 1;
      *(v4[7] + v46 + 24) = 1;
      swift_endAccess();

      a3 = v76;
      if (v75 == v82 + 1)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    v18 = _CocoaArrayWrapper.endIndex.getter();
    v81 = v4;
    if (!v18)
    {
      goto LABEL_39;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1009EE160(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a1 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  if (v7 < 1)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  for (i = 0; i != v7; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(a1 + 8 * i + 32);
    }

    v10 = v9;
    sub_1009E5CCC(v9);
  }

LABEL_10:
  v84 = a3;
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = (a2 + 40);
    v13 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      v19 = *v12;
      v20 = *(v12 - 1);
      v21 = v19;
      sub_1009E6450(v20, v21);
      type metadata accessor for CKError(0);
      sub_10002C5F0(&qword_1019F3348, 255, type metadata accessor for CKError);
      _BridgedStoredNSError.code.getter();
      if (v13[2] && (v22 = sub_1007CF108(), (v23 & 1) != 0))
      {
        v24 = *(v13[7] + 16 * v22);
        _BridgedStoredNSError.code.getter();
        if (__OFADD__(v24, 1))
        {
          __break(1u);
          goto LABEL_35;
        }

        v14 = v21;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v89 = v13;
        v16 = v24 + 1;
        v17 = v14;
        v18 = v90;
      }

      else
      {
        _BridgedStoredNSError.code.getter();
        v14 = v21;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v89 = v13;
        v16 = 1;
        v17 = v14;
        v18 = v90;
      }

      sub_100A9FA7C(v16, v17, v18, isUniquelyReferenced_nonNull_native);

      v13 = v89;
      v12 += 2;
      if (!--v11)
      {
        goto LABEL_19;
      }
    }
  }

  v13 = _swiftEmptyDictionarySingleton;
LABEL_19:
  v25 = v84;
  if (!(v84 >> 62))
  {
    v86 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v86)
    {
      goto LABEL_21;
    }

LABEL_36:
    v41 = a4 + 64;
    v42 = 1 << *(a4 + 32);
    v43 = -1;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    v44 = v43 & *(a4 + 64);
    v79 = OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope;
    v45 = (v42 + 63) >> 6;

    v46 = 0;
    if (v44)
    {
      goto LABEL_43;
    }

    while (1)
    {
      v47 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        __break(1u);
        goto LABEL_66;
      }

      if (v47 >= v45)
      {
        break;
      }

      v44 = *(v41 + 8 * v47);
      ++v46;
      if (v44)
      {
        v46 = v47;
        do
        {
LABEL_43:
          v48 = (v46 << 9) | (8 * __clz(__rbit64(v44)));
          v49 = *(*(a4 + 56) + v48);
          v50 = qword_1019F2270;
          v51 = *(*(a4 + 48) + v48);
          v87 = v49;
          if (v50 != -1)
          {
            swift_once();
          }

          v44 &= v44 - 1;
          v85 = static OS_os_log.dataSync;
          sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          v53 = inited;
          *(inited + 16) = xmmword_10146C4D0;
          if (*(v88 + v79))
          {
            v54 = 0x5320646572616853;
          }

          else
          {
            v54 = 0x2065746176697250;
          }

          if (*(v88 + v79))
          {
            v55 = 0xEC00000065706F63;
          }

          else
          {
            v55 = 0xED000065706F6353;
          }

          *(inited + 56) = &type metadata for String;
          v56 = sub_1000053B0();
          v53[8] = v56;
          v53[4] = v54;
          v53[5] = v55;
          v57 = [v51 recordName];
          v82 = v51;
          v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v60 = v59;

          v53[12] = &type metadata for String;
          v53[13] = v56;
          v53[9] = v58;
          v53[10] = v60;
          type metadata accessor for CKError(0);
          sub_10002C5F0(&qword_1019F31E0, 255, type metadata accessor for CKError);
          v61 = Error.localizedDescription.getter();
          v53[17] = &type metadata for String;
          v53[18] = v56;
          v53[14] = v61;
          v53[15] = v62;
          v63 = static os_log_type_t.error.getter();
          sub_100005404(v85, &_mh_execute_header, v63, "<%{public}@> Record apparently failed to be deleted as part of client save. This is unexpected! This will go unhandled. recordID: %{public}@ error: %@", 150, 2, v53);

          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          v41 = a4 + 64;
        }

        while (v44);
      }
    }

    v64 = 1 << *(v13 + 32);
    v65 = -1;
    if (v64 < 64)
    {
      v65 = ~(-1 << v64);
    }

    v66 = v65 & v13[8];
    v67 = (v64 + 63) >> 6;

    v68 = 0;
    v69 = 0;
    v70 = 0;
    if (!v66)
    {
      goto LABEL_58;
    }

    do
    {
LABEL_56:
      while (1)
      {
        v71 = __clz(__rbit64(v66));
        v66 &= v66 - 1;
        v72 = v71 | (v70 << 6);
        v73 = v13[7];
        v74 = *(v73 + 16 * v72);
        if (v68 < v74)
        {
          break;
        }

        if (!v66)
        {
          goto LABEL_58;
        }
      }

      v76 = *(v73 + 16 * v72 + 8);

      v68 = v74;
      v69 = v76;
    }

    while (v66);
LABEL_58:
    while (1)
    {
      v75 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        break;
      }

      if (v75 >= v67)
      {

        sub_1009EE97C(v69);

        return;
      }

      v66 = v13[v75 + 8];
      ++v70;
      if (v66)
      {
        v70 = v75;
        goto LABEL_56;
      }
    }

LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

LABEL_35:
  v39 = v25;
  v40 = _CocoaArrayWrapper.endIndex.getter();
  v25 = v39;
  v86 = v40;
  if (!v40)
  {
    goto LABEL_36;
  }

LABEL_21:
  if (v86 >= 1)
  {
    v26 = 0;
    v27 = 0x5320646572616853;
    if (!*(v88 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v27 = 0x2065746176697250;
    }

    v80 = v27;
    v81 = v25 & 0xC000000000000001;
    v28 = 0xED000065706F6353;
    if (*(v88 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v28 = 0xEC00000065706F63;
    }

    v78 = v28;
    v83 = v13;
    do
    {
      if (v81)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v29 = *(v25 + 8 * v26 + 32);
      }

      v30 = v29;
      if (qword_1019F2270 != -1)
      {
        swift_once();
      }

      ++v26;
      v31 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0);
      v32 = swift_initStackObject();
      *(v32 + 16) = xmmword_10146BDE0;
      *(v32 + 56) = &type metadata for String;
      v33 = sub_1000053B0();
      *(v32 + 64) = v33;
      *(v32 + 32) = v80;
      *(v32 + 40) = v78;
      v34 = [v30 recordName];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      *(v32 + 96) = &type metadata for String;
      *(v32 + 104) = v33;
      *(v32 + 72) = v35;
      *(v32 + 80) = v37;
      v38 = static os_log_type_t.error.getter();
      sub_100005404(v31, &_mh_execute_header, v38, "<%{public}@> Record apparently deleted as part of client save. This is unexpected! This will go unhandled. recordID: %{public}@", 127, 2, v32);

      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v25 = v84;
      v13 = v83;
    }

    while (v86 != v26);
    goto LABEL_36;
  }

LABEL_68:
  __break(1u);
}

uint64_t sub_1009EE97C(void *a1)
{
  v3 = sub_1005B981C(&qword_101A0BA30);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_queue);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6, v8);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v10, v6);
  if (v11)
  {
    v14 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_saveTask);
    if (v14)
    {
      *(v14 + 32) = 0;
      v15 = *(v14 + 64);
      if (v15)
      {
        if (a1)
        {

          v16 = a1;
          sub_1009F076C(v15, v16);
        }

        else
        {
          v17 = type metadata accessor for CRLZoneSyncResultScenarios();
          (*(*(v17 - 8) + 56))(v5, 1, 1, v17);

          sub_1009EEDBC(v18, 1, v5);

          sub_10000CAAC(v5, &qword_101A0BA30);
        }
      }
    }

    return sub_1009EEBAC(v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1009EEBAC(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_saveTask);
  if (v2)
  {
    swift_beginAccess();
    v3 = *(v2 + 40);

    if ((v3 & 0xC000000000000001) == 0)
    {
LABEL_10:
      if (!*(v3 + 16))
      {
        goto LABEL_11;
      }

LABEL_7:
      sub_1009E4E48(v3);

      return sub_1009E52A4();
    }
  }

  else if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_1005BFFC4(_swiftEmptyArrayStorage);
    v3 = v4;
    if ((v4 & 0xC000000000000001) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = _swiftEmptySetSingleton;
    if ((_swiftEmptySetSingleton & 0xC000000000000001) == 0)
    {
      goto LABEL_10;
    }
  }

  if (__CocoaSet.count.getter())
  {
    goto LABEL_7;
  }

LABEL_11:

  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v5 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v7 = inited;
  *(inited + 16) = xmmword_10146C6B0;
  if (*(a1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v8 = 0x5320646572616853;
  }

  else
  {
    v8 = 0x2065746176697250;
  }

  if (*(a1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v9 = 0xEC00000065706F63;
  }

  else
  {
    v9 = 0xED000065706F6353;
  }

  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(v7 + 32) = v8;
  *(v7 + 40) = v9;
  v10 = static os_log_type_t.default.getter();
  sub_100005404(v5, &_mh_execute_header, v10, "<%{public}@> No pending zones to save, saving record zones", 58, 2, v7);
  swift_setDeallocating();
  sub_100005070(v7 + 32);
  return sub_1009E52A4();
}

uint64_t sub_1009EEDBC(uint64_t a1, char a2, unint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = (&v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v4 + OBJC_IVAR____TtC8Freeform17CRLSyncController_queue);
  *v12 = v13;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8, v10);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    swift_once();
LABEL_11:
    v19 = 0xEC00000065706F63;
    v20 = 0x5320646572616853;
    v21 = static OS_os_log.dataSync;
    v125 = sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    v23 = inited;
    v124 = xmmword_10146BDE0;
    *(inited + 16) = xmmword_10146BDE0;
    if (!*(v4 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v20 = 0x2065746176697250;
      v19 = 0xED000065706F6353;
    }

    *(inited + 56) = &type metadata for String;
    *&v123 = sub_1000053B0();
    v23[8] = v123;
    v23[4] = v20;
    v23[5] = v19;
    swift_beginAccess();
    v24 = *(*(a1 + 64) + 16);
    v23[12] = &type metadata for Int;
    v23[13] = &protocol witness table for Int;
    v23[9] = v24;
    v25 = static os_log_type_t.default.getter();
    v126 = v21;
    sub_100005404(v21, &_mh_execute_header, v25, "<%{public}@> Processing %d save results", 39, 2, v23);
    swift_setDeallocating();
    v122 = sub_1005B981C(&unk_1019F5670);
    v26 = swift_arrayDestroy();
    v131 = _swiftEmptyDictionarySingleton;
    v130 = _swiftEmptyArrayStorage;
    __chkstk_darwin(v26);
    *(&v113 - 4) = a3;
    *(&v113 - 3) = &v130;
    *(&v113 - 2) = &v131;

    v28 = sub_100DCE4F0(v27, sub_1009EFB78, 0, sub_1009F5A0C, (&v113 - 6), sub_1009F06F4);

    v29 = *(v4 + OBJC_IVAR____TtC8Freeform17CRLSyncController_dataSource);
    sub_100EA364C();
    if (v28 >> 62)
    {
      v30 = _CocoaArrayWrapper.endIndex.getter();
      if (!v30)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v30)
      {
        goto LABEL_78;
      }
    }

    if (v30 < 1)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v31 = 0;
    v127 = v28 & 0xC000000000000001;
    do
    {
      if (v127)
      {
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v33 = v32;
      }

      else
      {
        v33 = *(v28 + 8 * v31 + 32);
      }

      v34 = *(v29 + 24);
      __chkstk_darwin(v32);
      *(&v113 - 4) = v35;
      *(&v113 - 3) = v33;
      *(&v113 - 16) = v34;
      OS_dispatch_queue.sync<A>(execute:)();

      ++v31;
    }

    while (v30 != v31);
LABEL_78:

    v4 = *(v29 + 16);
    v107 = *(v29 + 24);
    v108 = *(v4 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
    v109 = swift_allocObject();
    *(v109 + 16) = v4;
    *(v109 + 24) = v107;
    v110 = swift_allocObject();
    *(v110 + 16) = sub_1009F5D28;
    *(v110 + 24) = v109;
    v129[4] = sub_10002AAE4;
    v129[5] = v110;
    v129[0] = _NSConcreteStackBlock;
    v129[1] = *"";
    v129[2] = sub_10002AAB8;
    v129[3] = &unk_101890C20;
    v111 = _Block_copy(v129);
    v112 = v4;

    dispatch_sync(v108, v111);
    _Block_release(v111);
    LOBYTE(v108) = swift_isEscapingClosureAtFileLocation();

    if ((v108 & 1) == 0)
    {
      sub_100BF4340(v131);
    }

    __break(1u);
    goto LABEL_81;
  }

  if (a2)
  {
    v15 = *(*(a1 + 16) + 16);
    sub_1009E9054(v15);

    v16 = *(v4 + OBJC_IVAR____TtC8Freeform17CRLSyncController_saveTask);
    if (v16)
    {
      *(a1 + 80) = 1;
LABEL_9:
      v121 = v16;

      goto LABEL_10;
    }

LABEL_22:
    if (qword_1019F2270 == -1)
    {
LABEL_23:
      v36 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0);
      v37 = swift_initStackObject();
      v38 = v37;
      *(v37 + 16) = xmmword_10146C6B0;
      if (*(v4 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
      {
        v39 = 0x5320646572616853;
      }

      else
      {
        v39 = 0x2065746176697250;
      }

      if (*(v4 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
      {
        v40 = 0xEC00000065706F63;
      }

      else
      {
        v40 = 0xED000065706F6353;
      }

      *(v37 + 56) = &type metadata for String;
      *(v37 + 64) = sub_1000053B0();
      *(v38 + 32) = v39;
      *(v38 + 40) = v40;
      v41 = static os_log_type_t.error.getter();
      sub_100005404(v36, &_mh_execute_header, v41, "<%{public}@> Could not find active save task for handling finishSavingBatch", 75, 2, v38);
      swift_setDeallocating();
      return sub_100005070(v38 + 32);
    }

LABEL_82:
    swift_once();
    goto LABEL_23;
  }

  v16 = *(v4 + OBJC_IVAR____TtC8Freeform17CRLSyncController_saveTask);
  if (!v16)
  {
    goto LABEL_22;
  }

  *(a1 + 80) = 1;
  if ((*(a1 + 25) & 1) == 0)
  {
    goto LABEL_9;
  }

  v17 = *(a1 + 24);
  v121 = v16;
  if (v17 == 1)
  {
    v18 = *(*(a1 + 16) + 16);
    swift_beginAccess();

    sub_100E71568(v132, v18);
    swift_endAccess();
  }

  else
  {
  }

  v118 = *(a1 + 32);
  if (v118 >> 62)
  {
LABEL_85:
    v43 = _CocoaArrayWrapper.endIndex.getter();
    if (v43)
    {
      goto LABEL_33;
    }

LABEL_10:
    if (qword_1019F2270 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_76;
  }

  v43 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v43)
  {
    goto LABEL_10;
  }

LABEL_33:
  v114 = a3;
  v115 = v4;
  v44 = *(a1 + 16);
  v4 = v118;
  v45 = v118 & 0xC000000000000001;
  swift_beginAccess();
  a3 = 0;
  v127 = v4 & 0xFFFFFFFFFFFFFF8;
  v123 = xmmword_101478600;
  v122 = v43;
  v125 = v4 & 0xC000000000000001;
  v126 = v44;
  v119 = a1;
  while (1)
  {
    if (v45)
    {
      v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (a3 >= *(v127 + 16))
      {
        goto LABEL_73;
      }

      v46 = *(v4 + 8 * a3 + 32);
    }

    v47 = v46;
    v48 = a3 + 1;
    if (__OFADD__(a3, 1))
    {
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v49 = *(v44 + 24);
    if (!*(v49 + 16))
    {
      goto LABEL_35;
    }

    v50 = sub_1007C8B7C(v47);
    if ((v51 & 1) == 0)
    {

LABEL_35:

      goto LABEL_36;
    }

    v52 = (*(v49 + 56) + 16 * v50);
    v53 = *v52;
    v128 = v52[1];
    swift_unknownObjectRetain();

    v54 = *(a1 + 64);
    if (*(v54 + 16))
    {
      break;
    }

LABEL_52:
    swift_beginAccess();
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v132[0] = *(a1 + 64);
    v72 = v132[0];
    *(a1 + 64) = 0x8000000000000000;
    v73 = sub_1007C8B7C(v47);
    v75 = v72[2];
    v76 = (v74 & 1) == 0;
    v77 = __OFADD__(v75, v76);
    v78 = v75 + v76;
    if (v77)
    {
      goto LABEL_75;
    }

    v79 = v74;
    if (v72[3] >= v78)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v106 = v73;
        sub_100AAA428();
        v73 = v106;
      }
    }

    else
    {
      sub_100A939F4(v78, isUniquelyReferenced_nonNull_native);
      v73 = sub_1007C8B7C(v47);
      if ((v79 & 1) != (v80 & 1))
      {
        goto LABEL_88;
      }
    }

    v44 = v126;
    v81 = v128 | 0x8000000000000000;
    v82 = v132[0];
    if (v79)
    {
      v83 = (*(v132[0] + 7) + 40 * v73);
      v84 = *v83;
      v85 = v83[1];
      v86 = v83[2];
      v87 = v83[3];
      v88 = v83[4];
      *v83 = v53;
      v83[1] = v81;
      *(v83 + 1) = v123;
      v83[4] = 0;
      sub_1009F5D34(v84, v85, v86, v87, v88);
    }

    else
    {
      *(v132[0] + (v73 >> 6) + 8) |= 1 << v73;
      *(v82[6] + 8 * v73) = v47;
      v89 = v82[7] + 40 * v73;
      *v89 = v53;
      *(v89 + 8) = v81;
      *(v89 + 16) = v123;
      *(v89 + 32) = 0;
      v90 = v82[2];
      v77 = __OFADD__(v90, 1);
      v91 = v90 + 1;
      if (v77)
      {
        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v82[2] = v91;
    }

    *(a1 + 64) = v82;
    swift_endAccess();
    swift_unknownObjectRelease();
    v43 = v122;
    v45 = v125;
LABEL_36:
    ++a3;
    if (v48 == v43)
    {
      a3 = v114;
      v4 = v115;
      goto LABEL_10;
    }
  }

  v55 = sub_1007C8B7C(v47);
  if ((v56 & 1) == 0)
  {

    goto LABEL_52;
  }

  *&v124 = v53;
  v57 = (*(v54 + 56) + 40 * v55);
  v58 = v57[1];
  a1 = v57[2];
  v59 = v57[3];
  v60 = v57[4];
  v120 = *v57;
  sub_1009F5E18(v120, v58, a1, v59, v60);

  if ((v58 & 0x8000000000000000) != 0)
  {
    swift_unknownObjectRelease();
    sub_1009F5D34(v120, v58, a1, v59, v60);

    v45 = v125;
    v44 = v126;
    v4 = v118;
    a1 = v119;
    goto LABEL_36;
  }

  v116 = v60;
  v117 = v59;
  v61 = v119;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v4 = swift_isUniquelyReferenced_nonNull_native();
  v132[0] = *(v61 + 64);
  v62 = v132[0];
  *(v61 + 64) = 0x8000000000000000;
  v64 = sub_1007C8B7C(v47);
  v65 = v62[2];
  v66 = (v63 & 1) == 0;
  v67 = v65 + v66;
  if (__OFADD__(v65, v66))
  {
    goto LABEL_84;
  }

  v68 = v63;
  if (v62[3] >= v67)
  {
    if ((v4 & 1) == 0)
    {
      sub_100AAA428();
    }
  }

  else
  {
    sub_100A939F4(v67, v4);
    v69 = sub_1007C8B7C(v47);
    if ((v68 & 1) != (v70 & 1))
    {
      goto LABEL_88;
    }

    v64 = v69;
  }

  v92 = v128 | 0x8000000000000000;
  v93 = v132[0];
  if (v68)
  {
    v94 = (*(v132[0] + 7) + 40 * v64);
    v95 = *v94;
    v96 = v94[1];
    v97 = v94[2];
    v98 = v94[3];
    v99 = v94[4];
    *v94 = v124;
    v94[1] = v92;
    *(v94 + 1) = v123;
    v94[4] = 0;
    sub_1009F5D34(v95, v96, v97, v98, v99);

LABEL_70:
    v43 = v122;
    v44 = v126;
    v104 = v119;
    v103 = v120;
    *(v119 + 64) = v93;
    swift_endAccess();
    v105 = a1;
    a1 = v104;
    sub_1009F5D34(v103, v58, v105, v117, v116);
    swift_unknownObjectRelease();
    v45 = v125;
    v4 = v118;
    goto LABEL_36;
  }

  *(v132[0] + (v64 >> 6) + 8) |= 1 << v64;
  *(v93[6] + 8 * v64) = v47;
  v100 = v93[7] + 40 * v64;
  *v100 = v124;
  *(v100 + 8) = v92;
  *(v100 + 16) = v123;
  *(v100 + 32) = 0;
  v101 = v93[2];
  v77 = __OFADD__(v101, 1);
  v102 = v101 + 1;
  if (!v77)
  {
    v93[2] = v102;
    goto LABEL_70;
  }

  __break(1u);
LABEL_88:
  sub_100006370(0, &qword_1019F6E98);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1009EFB78(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *a1;
  sub_1009F5E18(v3, v4, v5, v6, v7);

  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
}

void sub_1009EFBEC(uint64_t *a1@<X0>, uint64_t a2@<X1>, void **a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  v115 = a4;
  v110 = a3;
  v107 = a5;
  v106 = sub_1005B981C(&qword_101A0BA08);
  __chkstk_darwin(v106);
  v105 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v104 = &v97 - v9;
  v10 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v10 - 8);
  v103 = &v97 - v11;
  v12 = type metadata accessor for CRLZoneSyncResultScenarios();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v98 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1005B981C(&qword_101A0BA30);
  __chkstk_darwin(v15 - 8);
  v102 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v101 = &v97 - v18;
  __chkstk_darwin(v19);
  v21 = &v97 - v20;
  __chkstk_darwin(v22);
  v24 = &v97 - v23;
  __chkstk_darwin(v25);
  v27 = &v97 - v26;
  __chkstk_darwin(v28);
  v30 = &v97 - v29;
  __chkstk_darwin(v31);
  v33 = &v97 - v32;
  v35 = *a1;
  v34 = a1[1];
  v97 = a1[2];
  v99 = *(a1 + 24);
  v111 = v34 >> 62;
  v109 = v34;
  if (v34 >> 62)
  {
    v36 = v34 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v36 = v34;
  }

  ObjectType = swift_getObjectType();
  v114 = v35;
  v117 = v35;
  v38 = (*(*(v36 + 8) + 8))(ObjectType);
  v113 = [v38 zoneID];

  sub_10000BE14(a2, v33, &qword_101A0BA30);
  v108 = v13;
  v39 = *(v13 + 48);
  if (v39(v33, 1, v12) == 1)
  {
    sub_10000CAAC(v33, &qword_101A0BA30);
    v112 = 0;
  }

  else
  {
    v112 = *v33;
    sub_10002C420(v33, type metadata accessor for CRLZoneSyncResultScenarios);
  }

  sub_10000BE14(a2, v30, &qword_101A0BA30);
  if (v39(v30, 1, v12) == 1)
  {
    sub_10000CAAC(v30, &qword_101A0BA30);
    v40 = 0;
  }

  else
  {
    v40 = v30[1];
    sub_10002C420(v30, type metadata accessor for CRLZoneSyncResultScenarios);
  }

  sub_10000BE14(a2, v27, &qword_101A0BA30);
  if (v39(v27, 1, v12) == 1)
  {
    sub_10000CAAC(v27, &qword_101A0BA30);
    v100 = 0;
  }

  else
  {
    v100 = v27[2];
    sub_10002C420(v27, type metadata accessor for CRLZoneSyncResultScenarios);
  }

  sub_10000BE14(a2, v24, &qword_101A0BA30);
  if (v39(v24, 1, v12) == 1)
  {
    sub_10000CAAC(v24, &qword_101A0BA30);
    v41 = 0;
    v42 = v111;
    if (v111)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v41 = v24[3];
    sub_10002C420(v24, type metadata accessor for CRLZoneSyncResultScenarios);
    v42 = v111;
    if (v111)
    {
LABEL_15:
      v43 = v40;
      if (v42 == 1)
      {
        v44 = v110;
        v45 = v109 & 0x3FFFFFFFFFFFFFFFLL;
        v46 = *v110;
        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v44 = v46;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v46 = sub_100B383E4(0, v46[2] + 1, 1, v46);
          *v110 = v46;
        }

        v49 = v46[2];
        v48 = v46[3];
        if (v49 >= v48 >> 1)
        {
          v46 = sub_100B383E4((v48 > 1), v49 + 1, 1, v46);
          *v110 = v46;
        }

        v46[2] = v49 + 1;
        v50 = &v46[2 * v49];
        v50[4] = v114;
        v50[5] = v45;
        v112 = 1;
      }

      else if (!v99)
      {
        v117 = v97;
        type metadata accessor for CKError(0);
        sub_10002C5F0(&qword_1019F3348, 255, type metadata accessor for CKError);
        _BridgedStoredNSError.code.getter();
        if (v116 == 25)
        {
          v43 = 1;
        }

        else if (v116 == 18)
        {
          v41 = 1;
        }
      }

      goto LABEL_28;
    }
  }

  v43 = v40;
  v51 = v110;
  v52 = *v110;
  swift_unknownObjectRetain();
  v53 = swift_isUniquelyReferenced_nonNull_native();
  *v51 = v52;
  if ((v53 & 1) == 0)
  {
    v52 = sub_100B383E4(0, v52[2] + 1, 1, v52);
    *v110 = v52;
  }

  v55 = v52[2];
  v54 = v52[3];
  if (v55 >= v54 >> 1)
  {
    v52 = sub_100B383E4((v54 > 1), v55 + 1, 1, v52);
    *v110 = v52;
  }

  v52[2] = v55 + 1;
  v56 = &v52[2 * v55];
  v57 = v109;
  v56[4] = v114;
  v56[5] = v57;
LABEL_28:
  v58 = *v115;
  if (*(*v115 + 16) && (v59 = sub_1007C8A78(v113), (v60 & 1) != 0))
  {
    v61 = *(v58 + 56) + *(v108 + 72) * v59;
    v62 = v101;
    sub_1009F5EFC(v61, v101, type metadata accessor for CRLZoneSyncResultScenarios);
    v63 = 0;
  }

  else
  {
    v63 = 1;
    v62 = v101;
  }

  v64 = *(v108 + 56);
  (v64)(v62, v63, 1, v12);
  if (v39(v62, 1, v12))
  {
    sub_10000CAAC(v62, &qword_101A0BA30);
  }

  else
  {
    v65 = v98;
    sub_1009F5EFC(v62, v98, type metadata accessor for CRLZoneSyncResultScenarios);
    sub_10000CAAC(v62, &qword_101A0BA30);
    v66 = *v65;
    sub_10002C420(v65, type metadata accessor for CRLZoneSyncResultScenarios);
    v112 |= v66;
  }

  v67 = *v115;
  v68 = *(*v115 + 16);
  LODWORD(v99) = v41;
  if (v68 && (v69 = sub_1007C8A78(v113), (v70 & 1) != 0))
  {
    v71 = *(v67 + 56) + *(v108 + 72) * v69;
    v72 = v102;
    sub_1009F5EFC(v71, v102, type metadata accessor for CRLZoneSyncResultScenarios);
    v73 = 0;
  }

  else
  {
    v73 = 1;
    v72 = v102;
  }

  (v64)(v72, v73, 1, v12);
  v74 = v12;
  v75 = v39(v72, 1, v12);
  v101 = v64;
  if (v75)
  {
    sub_10000CAAC(v72, &qword_101A0BA30);
    v76 = v43;
  }

  else
  {
    v77 = v98;
    sub_1009F5EFC(v72, v98, type metadata accessor for CRLZoneSyncResultScenarios);
    sub_10000CAAC(v72, &qword_101A0BA30);
    v78 = *(v77 + 1);
    sub_10002C420(v77, type metadata accessor for CRLZoneSyncResultScenarios);
    v76 = v78 | v43;
  }

  v79 = *v110;
  v80 = type metadata accessor for Date();
  v81 = v103;
  (*(*(v80 - 8) + 56))(v103, 1, 1, v80);
  v82 = v104;
  *v104 = 0;
  v83 = v106;
  sub_10003DFF8(v81, v82 + *(v106 + 48), &qword_101A0A320);
  *v21 = v112 & 1;
  v21[1] = v76 & 1;
  v21[2] = v100;
  *(v21 + 3) = v99;
  v84 = v105;
  sub_10003DFF8(v82, v105, &qword_101A0BA08);
  v85 = *(v83 + 48);
  v86 = &v21[*(v74 + 36)];
  *v86 = *v84;
  sub_10003DFF8(&v84[v85], &v86[v85], &qword_101A0A320);
  *&v21[*(v74 + 40)] = v79;
  (v101)(v21, 0, 1, v74);

  v87 = v113;
  sub_100BC3D70(v21, v87);
  v88 = v114;
  v89 = v109;
  if (v111)
  {
    v89 = v109 & 0x3FFFFFFFFFFFFFFFLL;
  }

  v90 = swift_getObjectType();
  v117 = v88;
  v91 = *(v89 + 32);
  v92 = *(v91 + 8);
  swift_unknownObjectRetain();
  v93 = v92(v90, v91);
  v95 = v94;
  swift_unknownObjectRelease();

  v96 = v107;
  *v107 = v93;
  v96[1] = v95;
}

uint64_t sub_1009F06F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  if (v3 >> 62)
  {
    v4 = v3 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = *(a1 + 8);
  }

  ObjectType = swift_getObjectType();
  result = (*(*(v4 + 32) + 16))(ObjectType);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_1009F076C(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = sub_1005B981C(&qword_101A0BA30);
  __chkstk_darwin(v7 - 8);
  v9 = &v84 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 1);
  v12 = __chkstk_darwin(v10);
  v14 = (&v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v4 + OBJC_IVAR____TtC8Freeform17CRLSyncController_queue);
  *v14 = v15;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10, v12);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_60:
    swift_once();
    goto LABEL_6;
  }

  v3 = 0x5320646572616853;
  *(a1 + 72) = a2;
  v10 = a2;

  if ((sub_100B50C20() & 1) == 0)
  {
    goto LABEL_13;
  }

  v17 = *(v4 + OBJC_IVAR____TtC8Freeform17CRLSyncController_saveTask);
  if (v17)
  {
    *(v17 + 56) = 1;
  }

  v84 = a1;
  v85 = v9;
  if (qword_1019F2270 != -1)
  {
    goto LABEL_60;
  }

LABEL_6:
  v18 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v20 = inited;
  *(inited + 16) = xmmword_10146C4D0;
  v21 = *(v4 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope) == 0;
  v22 = v4;
  if (*(v4 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v23 = v3;
  }

  else
  {
    v23 = 0x2065746176697250;
  }

  if (v21)
  {
    v24 = 0xED000065706F6353;
  }

  else
  {
    v24 = 0xEC00000065706F63;
  }

  *(inited + 56) = &type metadata for String;
  v25 = sub_1000053B0();
  v20[8] = v25;
  v20[4] = v23;
  v20[5] = v24;
  v26 = sub_100B6FCD4(v10);
  v20[12] = &type metadata for String;
  v20[13] = v25;
  v20[9] = v26;
  v20[10] = v27;
  v89 = v10;
  type metadata accessor for CKError(0);
  v28 = v10;
  v4 = v22;
  v29 = String.init<A>(reflecting:)();
  v20[17] = &type metadata for String;
  v20[18] = v25;
  v3 = 0x5320646572616853;
  v20[14] = v29;
  v20[15] = v30;
  v31 = static os_log_type_t.default.getter();
  sub_100005404(v18, &_mh_execute_header, v31, "<%{public}@> Encountered unrecoverable batch error <%{public}@> <%@>", 70, 2, v20);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  a1 = v84;
  v9 = v85;
LABEL_13:
  v89 = v10;
  type metadata accessor for CKError(0);
  sub_10002C5F0(&qword_1019F3348, 255, type metadata accessor for CKError);
  _BridgedStoredNSError.code.getter();
  if (v88 == 23)
  {
    v32 = 0;
  }

  else
  {
    v87 = v10;
    _BridgedStoredNSError.code.getter();
    v32 = (v86 < 0x25) & (0x1000A002D8uLL >> v86);
  }

  v33 = *(a1 + 16);
  v34 = *(v33 + 16);
  sub_1009F55E8(v10);

  if (sub_100B50C20())
  {
    if (*(a1 + 25) == 1)
    {
      if (qword_1019F2270 != -1)
      {
        swift_once();
      }

      v35 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0);
      v36 = swift_initStackObject();
      *(v36 + 16) = xmmword_10146C6B0;
      v37 = *(v4 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope);
      *(v36 + 56) = &type metadata for String;
      v38 = sub_1000053B0();
      v39 = 0x2065746176697250;
      if (v37)
      {
        v39 = 0x5320646572616853;
      }

      *(v36 + 32) = v39;
      v40 = v36 + 32;
      v41 = 0xED000065706F6353;
      if (v37)
      {
        v41 = 0xEC00000065706F63;
      }

      *(v36 + 64) = v38;
      *(v36 + 40) = v41;
      v42 = static os_log_type_t.default.getter();
      v43 = "<%{public}@> An atomic batch has failed to save and we cannot retry the save. Finishing the save operation on the batch";
      v44 = v35;
      v45 = 119;
    }

    else
    {
      if (qword_1019F2270 != -1)
      {
        swift_once();
      }

      v56 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0);
      v36 = swift_initStackObject();
      *(v36 + 16) = xmmword_10146C6B0;
      v57 = *(v4 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope);
      *(v36 + 56) = &type metadata for String;
      v58 = sub_1000053B0();
      v59 = 0x2065746176697250;
      if (v57)
      {
        v59 = 0x5320646572616853;
      }

      *(v36 + 32) = v59;
      v40 = v36 + 32;
      v60 = 0xED000065706F6353;
      if (v57)
      {
        v60 = 0xEC00000065706F63;
      }

      *(v36 + 64) = v58;
      *(v36 + 40) = v60;
      v42 = static os_log_type_t.default.getter();
      v43 = "<%{public}@> A non-atomic batch has failed to save and we cannot retry the save. Finishing the save operation on the batch";
      v44 = v56;
      v45 = 122;
    }

    sub_100005404(v44, &_mh_execute_header, v42, v43, v45, 2, v36);
    swift_setDeallocating();
    sub_100005070(v40);
    v61 = type metadata accessor for CRLZoneSyncResultScenarios();
    (*(*(v61 - 8) + 56))(v9, 1, 1, v61);
    sub_1009EEDBC(a1, 0, v9);
    v55 = v9;
    return sub_10000CAAC(v55, &qword_101A0BA30);
  }

  if (v32)
  {
    v85 = v9;
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v46 = static OS_os_log.dataSync;
    sub_1005B981C(&qword_1019F54E0);
    v47 = swift_initStackObject();
    v48 = v47;
    *(v47 + 16) = xmmword_10146BDE0;
    if (*(v4 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v49 = 0xEC00000065706F63;
    }

    else
    {
      v3 = 0x2065746176697250;
      v49 = 0xED000065706F6353;
    }

    *(v47 + 56) = &type metadata for String;
    *(v47 + 64) = sub_1000053B0();
    v48[4] = v3;
    v48[5] = v49;
    v50 = *(v33 + 16);
    v48[12] = sub_100006370(0, &qword_1019F69D0);
    v48[13] = sub_10000FE24(&unk_101A22DB0, &qword_1019F69D0);
    v48[9] = v50;
    v51 = v50;
    v52 = static os_log_type_t.default.getter();
    sub_100005404(v46, &_mh_execute_header, v52, "<%{public}@> Batch cannot be saved because it encounteredThrottlingErrorForAllZones. ZoneID:<%{public}@>", 104, 2, v48);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v53 = type metadata accessor for CRLZoneSyncResultScenarios();
    v54 = v85;
    (*(*(v53 - 8) + 56))(v85, 1, 1, v53);
    sub_1009EEDBC(a1, 0, v54);
    v55 = v54;
    return sub_10000CAAC(v55, &qword_101A0BA30);
  }

  v63 = sub_100B50D88();
  if (v63 >> 62)
  {
    v64 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v64)
  {
    v77 = v9;
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v78 = static OS_os_log.dataSync;
    sub_1005B981C(&qword_1019F54E0);
    v79 = swift_initStackObject();
    v80 = v79;
    *(v79 + 16) = xmmword_10146C6B0;
    if (*(v4 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v81 = 0xEC00000065706F63;
    }

    else
    {
      v3 = 0x2065746176697250;
      v81 = 0xED000065706F6353;
    }

    *(v79 + 56) = &type metadata for String;
    *(v79 + 64) = sub_1000053B0();
    *(v80 + 32) = v3;
    *(v80 + 40) = v81;
    v82 = static os_log_type_t.default.getter();
    sub_100005404(v78, &_mh_execute_header, v82, "<%{public}@> A failed batch save should not be attempted again because all failures have been resolved locally and there is no need to sync them back to server", 159, 2, v80);
    swift_setDeallocating();
    sub_100005070(v80 + 32);
    v83 = type metadata accessor for CRLZoneSyncResultScenarios();
    (*(*(v83 - 8) + 56))(v77, 1, 1, v83);
    sub_1009EEDBC(a1, 1, v77);
    v55 = v77;
    return sub_10000CAAC(v55, &qword_101A0BA30);
  }

  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v65 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0);
  v66 = swift_initStackObject();
  v67 = v66;
  *(v66 + 16) = xmmword_10146C4D0;
  if (*(v4 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v68 = 0x5320646572616853;
  }

  else
  {
    v68 = 0x2065746176697250;
  }

  if (*(v4 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v69 = 0xEC00000065706F63;
  }

  else
  {
    v69 = 0xED000065706F6353;
  }

  *(v66 + 56) = &type metadata for String;
  v70 = sub_1000053B0();
  *(v67 + 64) = v70;
  *(v67 + 32) = v68;
  *(v67 + 40) = v69;
  v71 = [*(v33 + 16) zoneName];
  v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v74 = v73;

  *(v67 + 96) = &type metadata for String;
  *(v67 + 104) = v70;
  *(v67 + 72) = v72;
  *(v67 + 80) = v74;
  v75 = *(a1 + 25);
  *(v67 + 136) = &type metadata for Bool;
  *(v67 + 144) = &protocol witness table for Bool;
  *(v67 + 112) = v75;
  v76 = static os_log_type_t.default.getter();
  sub_100005404(v65, &_mh_execute_header, v76, "<%{public}@> Saving a batch is failed but the save failure is recoverable. In our next attempt, we will retry the save if there are any outstanding records for saving. Zone id: %{public}@, isAtomic: %d", 201, 2, v67);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  return swift_arrayDestroy();
}

uint64_t sub_1009F1310(void *a1)
{
  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v3 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v5 = inited;
  *(inited + 16) = xmmword_10146BDE0;
  if (*(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v6 = 0x5320646572616853;
  }

  else
  {
    v6 = 0x2065746176697250;
  }

  if (*(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v7 = 0xEC00000065706F63;
  }

  else
  {
    v7 = 0xED000065706F6353;
  }

  *(inited + 56) = &type metadata for String;
  v8 = sub_1000053B0();
  v5[8] = v8;
  v5[4] = v6;
  v5[5] = v7;
  v9 = [a1 zoneName];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v5[12] = &type metadata for String;
  v5[13] = v8;
  v5[9] = v10;
  v5[10] = v12;
  v13 = static os_log_type_t.default.getter();
  sub_100005404(v3, &_mh_execute_header, v13, "<%{public}@> Sync engine started fetching record zone changes from CloudKit for zone: %{public}@", 96, 2, v5);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  return swift_arrayDestroy();
}

uint64_t sub_1009F14BC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v33[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for CKSyncEngine.SendChangesOptions.Scope();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v33[-v11];
  type metadata accessor for SendChangesContext(0);
  CKSyncEngine.SendChangesOptions.scope.getter();
  (*(v7 + 104))(v9, enum case for CKSyncEngine.SendChangesOptions.Scope.all(_:), v6);
  v13 = static CKSyncEngine.SendChangesOptions.Scope.== infix(_:_:)();
  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v12, v6);
  if (v13)
  {
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.dataSync;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    v17 = inited;
    *(inited + 16) = xmmword_10146C6B0;
    if (*(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v18 = 0x5320646572616853;
    }

    else
    {
      v18 = 0x2065746176697250;
    }

    if (*(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v19 = 0xEC00000065706F63;
    }

    else
    {
      v19 = 0xED000065706F6353;
    }

    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(v17 + 32) = v18;
    *(v17 + 40) = v19;
    v20 = static os_log_type_t.default.getter();
    sub_100005404(v15, &_mh_execute_header, v20, "<%{public}@> Sync engine will send changes to CloudKit", 54, 2, v17);
    swift_setDeallocating();
    sub_100005070(v17 + 32);
    v21 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_queue);
    *v5 = v21;
    (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
    v22 = v21;
    LOBYTE(v21) = _dispatchPreconditionTest(_:)();
    result = (*(v3 + 8))(v5, v2);
    if (v21)
    {
      v24 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_ongoingSendCounter);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
      }

      else
      {
        *(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_ongoingSendCounter) = v26;
      }

      return result;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (qword_1019F2270 != -1)
  {
LABEL_22:
    swift_once();
  }

  v27 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0);
  v28 = swift_initStackObject();
  v29 = v28;
  *(v28 + 16) = xmmword_10146C6B0;
  if (*(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v30 = 0x5320646572616853;
  }

  else
  {
    v30 = 0x2065746176697250;
  }

  if (*(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v31 = 0xEC00000065706F63;
  }

  else
  {
    v31 = 0xED000065706F6353;
  }

  *(v28 + 56) = &type metadata for String;
  *(v28 + 64) = sub_1000053B0();
  *(v29 + 32) = v30;
  *(v29 + 40) = v31;
  v32 = static os_log_type_t.default.getter();
  sub_100005404(v27, &_mh_execute_header, v32, "<%{public}@> Ignoring WillSendChanges event that came in because of push-notification; scope is not .all", 104, 2, v29);
  swift_setDeallocating();
  return sub_100005070(v29 + 32);
}

void sub_1009F1944()
{
  v1 = v0;
  v2 = type metadata accessor for CKSyncEngine.SendChangesOptions.Scope();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v26[-v7];
  type metadata accessor for SendChangesContext(0);
  CKSyncEngine.SendChangesOptions.scope.getter();
  (*(v3 + 104))(v5, enum case for CKSyncEngine.SendChangesOptions.Scope.all(_:), v2);
  v9 = static CKSyncEngine.SendChangesOptions.Scope.== infix(_:_:)();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  if (v9)
  {
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v11 = static OS_os_log.dataSync;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    v13 = inited;
    *(inited + 16) = xmmword_10146BDE0;
    if (*(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v14 = 0x5320646572616853;
    }

    else
    {
      v14 = 0x2065746176697250;
    }

    if (*(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v15 = 0xEC00000065706F63;
    }

    else
    {
      v15 = 0xED000065706F6353;
    }

    *(inited + 56) = &type metadata for String;
    v16 = sub_1000053B0();
    v13[8] = v16;
    v13[4] = v14;
    v13[5] = v15;
    v17 = CKSyncEngine.SyncReason.description.getter();
    v13[12] = &type metadata for String;
    v13[13] = v16;
    v13[9] = v17;
    v13[10] = v18;
    v19 = static os_log_type_t.default.getter();
    sub_100005404(v11, &_mh_execute_header, v19, "<%{public}@> Sync engine did send changes to CloudKit for reason %{public}@", 75, 2, v13);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    sub_1009F2354();
  }

  else
  {
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v20 = static OS_os_log.dataSync;
    sub_1005B981C(&qword_1019F54E0);
    v21 = swift_initStackObject();
    v22 = v21;
    *(v21 + 16) = xmmword_10146C6B0;
    if (*(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v23 = 0x5320646572616853;
    }

    else
    {
      v23 = 0x2065746176697250;
    }

    if (*(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v24 = 0xEC00000065706F63;
    }

    else
    {
      v24 = 0xED000065706F6353;
    }

    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = sub_1000053B0();
    *(v22 + 32) = v23;
    *(v22 + 40) = v24;
    v25 = static os_log_type_t.default.getter();
    sub_100005404(v20, &_mh_execute_header, v25, "<%{public}@> Ignoring DidSendChanges event that came in because of push-notification; scope is not .all", 103, 2, v22);
    swift_setDeallocating();
    sub_100005070(v22 + 32);
  }
}

uint64_t sub_1009F1CE8()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[OBJC_IVAR____TtC8Freeform17CRLSyncController_queue];
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1, v3);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v9 = OBJC_IVAR____TtC8Freeform17CRLSyncController_ongoingFetchCounter;
    if (!*&v0[OBJC_IVAR____TtC8Freeform17CRLSyncController_ongoingFetchCounter])
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        sub_100EA824C(v0);
        result = swift_unknownObjectRelease();
      }
    }

    v10 = *&v0[v9];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (!v11)
    {
      *&v0[v9] = v12;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1009F1E50()
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v0[OBJC_IVAR____TtC8Freeform17CRLSyncController_queue];
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3, v5);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = OBJC_IVAR____TtC8Freeform17CRLSyncController_ongoingFetchCounter;
  v10 = *&v0[OBJC_IVAR____TtC8Freeform17CRLSyncController_ongoingFetchCounter];
  if (v10 > 0)
  {
    goto LABEL_5;
  }

  v33 = v0;
  v32 = objc_opt_self();
  LODWORD(v0) = [v32 _atomicIncrementAssertCount];
  v34 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v34);
  StaticString.description.getter();
  v7 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v11 = String._bridgeToObjectiveC()();

  v12 = [v11 lastPathComponent];

  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v13;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v14 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v0;
    v16 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v16;
    v17 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v17;
    *(inited + 72) = v7;
    *(inited + 136) = &type metadata for String;
    v18 = sub_1000053B0();
    *(inited + 112) = v1;
    *(inited + 120) = v2;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v18;
    *(inited + 152) = 1566;
    v19 = v34;
    *(inited + 216) = v16;
    *(inited + 224) = v17;
    *(inited + 192) = v19;
    v20 = v7;
    v21 = v19;
    v22 = static os_log_type_t.error.getter();
    v2 = &_mh_execute_header;
    sub_100005404(v14, &_mh_execute_header, v22, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v23, "SyncController ongoing fetch counter is negative, which is invalid. A fetch finished but we did not expect one to be ongoing.", 125, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v24 = swift_allocObject();
    v24[2] = 8;
    v24[3] = 0;
    v24[4] = 0;
    v24[5] = 0;
    v25 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v1 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v7 = v27;
    v28 = String._bridgeToObjectiveC()();

    [v32 handleFailureInFunction:v26 file:v1 lineNumber:1566 isFatal:0 format:v28 args:v25];

    v0 = v33;
    v10 = *&v33[v3];
LABEL_5:
    v29 = __OFSUB__(v10, 1);
    v30 = v10 - 1;
    if (!v29)
    {
      break;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    swift_once();
  }

  *&v0[v3] = v30 & ~(v30 >> 63);
  if (v30 <= 0)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100EA78E4(v0);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1009F2354()
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLSyncController_queue);
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3, v5);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = OBJC_IVAR____TtC8Freeform17CRLSyncController_ongoingSendCounter;
  v10 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLSyncController_ongoingSendCounter);
  if (v10 > 0)
  {
    goto LABEL_5;
  }

  v33 = v0;
  v32 = objc_opt_self();
  LODWORD(v0) = [v32 _atomicIncrementAssertCount];
  v34 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v34);
  StaticString.description.getter();
  v7 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v11 = String._bridgeToObjectiveC()();

  v12 = [v11 lastPathComponent];

  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v13;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v14 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v0;
    v16 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v16;
    v17 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v17;
    *(inited + 72) = v7;
    *(inited + 136) = &type metadata for String;
    v18 = sub_1000053B0();
    *(inited + 112) = v1;
    *(inited + 120) = v2;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v18;
    *(inited + 152) = 1581;
    v19 = v34;
    *(inited + 216) = v16;
    *(inited + 224) = v17;
    *(inited + 192) = v19;
    v20 = v7;
    v21 = v19;
    v22 = static os_log_type_t.error.getter();
    v2 = &_mh_execute_header;
    sub_100005404(v14, &_mh_execute_header, v22, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v23, "SyncController ongoing send counter is negative, which is invalid. A send finished but we did not expect one to be ongoing.", 123, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v24 = swift_allocObject();
    v24[2] = 8;
    v24[3] = 0;
    v24[4] = 0;
    v24[5] = 0;
    v25 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v1 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v7 = v27;
    v28 = String._bridgeToObjectiveC()();

    [v32 handleFailureInFunction:v26 file:v1 lineNumber:1581 isFatal:0 format:v28 args:v25];

    v0 = v33;
    v10 = *(v33 + v3);
LABEL_5:
    v29 = __OFSUB__(v10, 1);
    v30 = v10 - 1;
    if (!v29)
    {
      break;
    }

LABEL_8:
    __break(1u);
LABEL_9:
    swift_once();
  }

  *(v0 + v3) = v30 & ~(v30 >> 63);
}

id sub_1009F2854()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLSyncController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1009F29D8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D4C8;

  return sub_1009EB684(a1);
}

uint64_t sub_1009F2A6C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002D4C8;

  return sub_1009E9418(a1, a2);
}

uint64_t sub_1009F2B14(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002D4C8;

  return sub_1009EB0CC(a1, a2);
}

uint64_t sub_1009F2BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  WitnessTable = swift_getWitnessTable();
  *v6 = v3;
  v6[1] = sub_10002D3D4;

  return sub_100792838(a1, a3, WitnessTable);
}

uint64_t sub_1009F2C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  WitnessTable = swift_getWitnessTable();
  *v9 = v4;
  v9[1] = sub_10002D4C8;

  return sub_10078FE4C(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_1009F2D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  WitnessTable = swift_getWitnessTable();
  *v9 = v4;
  v9[1] = sub_10002D4C8;

  return sub_100790210(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_1009F2E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10067F520;

  return CKSyncEngineDelegate.shouldFetchChanges(zoneID:syncEngine:)(a1, a2, a3, a4);
}

uint64_t sub_1009F2F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10067F520;

  return CKSyncEngineDelegate.relatedApplicationBundleIdentifiers(zoneIDs:recordIDs:syncEngine:)(a1, a2, a3, a4, a5);
}

uint64_t sub_1009F2FE4(uint64_t a1, uint64_t a2)
{
  result = sub_10002C5F0(&qword_101A0B9F8, a2, type metadata accessor for CRLSyncController);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1009F303C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10000BF4C(a1, a2, v4);
}

uint64_t sub_1009F30B4(uint64_t a1, void *a2)
{
  v109 = type metadata accessor for CRLBoardSyncLogicProvider();
  v110 = &off_1018A8500;
  v108[0] = a1;
  swift_beginAccess();
  v5 = a2[4];
  if (v5 >> 62)
  {
    goto LABEL_120;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_121:

    v87 = 0;
    goto LABEL_122;
  }

LABEL_3:
  v6 = _swiftEmptyArrayStorage;
  v107 = _swiftEmptyArrayStorage;

  v96 = 0;
  v95 = 0;
  v7 = "invalid nil found when unwrapping value";
  v98 = a2;
  while (2)
  {
    v99 = v6;
    v100 = v6 & 0xFFFFFFFFFFFFFF8;
    v102 = v6 >> 62;
    while (1)
    {
      v8 = a2[4];
      if (v8 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_109;
        }
      }

      else if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_109;
      }

      if (v102)
      {
        v75 = _CocoaArrayWrapper.endIndex.getter();
        v10 = v75 + 1;
        if (__OFADD__(v75, 1))
        {
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
          goto LABEL_108;
        }
      }

      else
      {
        v9 = *(v100 + 16);
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_104;
        }
      }

      if (v10 >= 101)
      {
        goto LABEL_109;
      }

      v11 = a2[4];
      if ((v11 & 0xC000000000000001) != 0)
      {

        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_105;
        }

        v12 = *(v11 + 32);
      }

      v13 = a2[3];
      v105 = v12;
      if (!*(v13 + 16) || (v14 = sub_1007C8B7C(v12), (v15 & 1) == 0))
      {
        v104 = objc_opt_self();
        v50 = [v104 _atomicIncrementAssertCount];
        v106[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v106);
        StaticString.description.getter();
        v51 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v52 = String._bridgeToObjectiveC()();

        v53 = [v52 lastPathComponent];

        v54 = v7;
        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v58 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v50;
        v60 = sub_100006370(0, &qword_1019F4D30);
        *(inited + 96) = v60;
        v61 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
        *(inited + 104) = v61;
        *(inited + 72) = v51;
        *(inited + 136) = &type metadata for String;
        v62 = sub_1000053B0();
        *(inited + 112) = v55;
        *(inited + 120) = v57;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 144) = v62;
        *(inited + 152) = 100;
        v63 = v106[0];
        *(inited + 216) = v60;
        *(inited + 224) = v61;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 192) = v63;
        v64 = v51;
        v65 = v63;
        v66 = static os_log_type_t.error.getter();
        sub_100005404(v58, &_mh_execute_header, v66, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v67 = static os_log_type_t.error.getter();
        sub_100005404(v58, &_mh_execute_header, v67, v54, 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v68 = swift_allocObject();
        v68[2] = 8;
        v68[3] = 0;
        v68[4] = 0;
        v68[5] = 0;
        v69 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v2 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v70 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v71 = String._bridgeToObjectiveC()();

        [v104 handleFailureInFunction:v2 file:v70 lineNumber:100 isFatal:0 format:v71 args:v69];

        a2 = v98;
        swift_beginAccess();
        v72 = v98[4];
        v6 = v72 >> 62;
        v7 = v54;
        if (v72 >> 62)
        {
          if (v72 < 0)
          {
            v2 = v98[4];
          }

          else
          {
            v2 = v72 & 0xFFFFFFFFFFFFFF8;
          }

          result = _CocoaArrayWrapper.endIndex.getter();
          if (!result)
          {
            goto LABEL_132;
          }

          result = _CocoaArrayWrapper.endIndex.getter();
          if (!result)
          {
            goto LABEL_133;
          }
        }

        else if (!*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_106;
        }

        if ((v72 & 0xC000000000000001) != 0)
        {
          v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v6)
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (!*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_107;
          }

          v48 = *(v72 + 32);
          if (!v6)
          {
LABEL_38:
            if (!*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_114:
              __break(1u);
LABEL_115:
              __break(1u);
LABEL_116:
              __break(1u);
LABEL_117:
              __break(1u);
LABEL_118:
              __break(1u);
LABEL_119:
              __break(1u);
LABEL_120:
              if (!_CocoaArrayWrapper.endIndex.getter())
              {
                goto LABEL_121;
              }

              goto LABEL_3;
            }

            goto LABEL_6;
          }
        }

        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_114;
        }

LABEL_6:
        sub_10067D90C(0, 1);
        swift_endAccess();
        v6 = v99;
        goto LABEL_7;
      }

      v16 = *(*(v13 + 56) + 16 * v14 + 8);
      sub_100020E58(v108, v109);
      v17 = swift_unknownObjectRetain();
      v18 = sub_100EEDB58(v17, v16);
      if (v18)
      {
        break;
      }

      v97 = objc_opt_self();
      v19 = [v97 _atomicIncrementAssertCount];
      v106[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v106);
      StaticString.description.getter();
      v20 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v21 = String._bridgeToObjectiveC()();

      v22 = [v21 lastPathComponent];

      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = v7;
      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v27 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v28 = swift_initStackObject();
      *(v28 + 16) = xmmword_10146CA70;
      *(v28 + 56) = &type metadata for Int32;
      *(v28 + 64) = &protocol witness table for Int32;
      *(v28 + 32) = v19;
      v29 = sub_100006370(0, &qword_1019F4D30);
      *(v28 + 96) = v29;
      v30 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
      *(v28 + 104) = v30;
      *(v28 + 72) = v20;
      *(v28 + 136) = &type metadata for String;
      v31 = sub_1000053B0();
      *(v28 + 112) = v23;
      *(v28 + 120) = v25;
      *(v28 + 176) = &type metadata for UInt;
      *(v28 + 144) = v31;
      *(v28 + 152) = 105;
      v32 = v106[0];
      *(v28 + 216) = v29;
      *(v28 + 224) = v30;
      *(v28 + 184) = &protocol witness table for UInt;
      *(v28 + 192) = v32;
      v33 = v20;
      v34 = v32;
      v35 = static os_log_type_t.error.getter();
      sub_100005404(v27, &_mh_execute_header, v35, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v28);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v36 = static os_log_type_t.error.getter();
      sub_100005404(v27, &_mh_execute_header, v36, v26, 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v37 = swift_allocObject();
      v37[2] = 8;
      v37[3] = 0;
      v37[4] = 0;
      v37[5] = 0;
      v38 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v39 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v40 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v41 = String._bridgeToObjectiveC()();

      [v97 handleFailureInFunction:v39 file:v40 lineNumber:105 isFatal:0 format:v41 args:v38];

      v7 = v26;
      if (qword_1019F2270 != -1)
      {
        swift_once();
      }

      v42 = static OS_os_log.dataSync;
      v43 = swift_initStackObject();
      *(v43 + 16) = xmmword_10146C6B0;
      *(v43 + 56) = sub_100006370(0, &qword_1019F6E98);
      *(v43 + 64) = sub_10000FE24(&qword_101A22E90, &qword_1019F6E98);
      *(v43 + 32) = v105;
      v44 = v105;
      v45 = static os_log_type_t.error.getter();
      sub_100005404(v42, &_mh_execute_header, v45, "Failed to create cloud record from local record for ID %{public}@", 65, 2, v43);
      swift_setDeallocating();
      sub_100005070(v43 + 32);
      a2 = v98;
      swift_beginAccess();
      v46 = v98[4];
      v2 = v46 >> 62;
      if (v46 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        v6 = v99;
        if (!result)
        {
          goto LABEL_134;
        }

        result = _CocoaArrayWrapper.endIndex.getter();
        if (!result)
        {
          goto LABEL_135;
        }
      }

      else
      {
        v6 = v99;
        if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_115;
        }
      }

      if ((v46 & 0xC000000000000001) != 0)
      {
        v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_116;
        }

        v47 = *(v46 + 32);
      }

      v48 = v47;
      if (v2)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_118;
        }

        if (_CocoaArrayWrapper.endIndex.getter() < 1)
        {
          goto LABEL_119;
        }

        v49 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v49 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v49)
        {
          goto LABEL_118;
        }
      }

      v73 = v49 - 1;
      if (__OFSUB__(v49, 1))
      {
        goto LABEL_117;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v98[4] = v46;
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v2)
        {
LABEL_49:
          _CocoaArrayWrapper.endIndex.getter();
        }

LABEL_50:
        v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v98[4] = v46;
        goto LABEL_51;
      }

      if (v2)
      {
        goto LABEL_49;
      }

      if (v73 > *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_50;
      }

LABEL_51:
      sub_10067D7F0(0, 1, 0);
      v98[4] = v46;
      swift_endAccess();
      swift_unknownObjectRelease();
LABEL_7:
    }

    v2 = v18;
    result = [v18 size];
    if (result < 0)
    {
      __break(1u);
      goto LABEL_126;
    }

    v77 = __CFADD__(result, v95);
    v95 += result;
    if (v77)
    {
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v102)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_77;
      }

LABEL_76:
      if (v95 <= 0x180000)
      {
        goto LABEL_77;
      }

LABEL_108:

      swift_unknownObjectRelease();
LABEL_109:
      sub_100006370(0, &qword_1019F54D0);
      if (qword_1019F25F8 != -1)
      {
        swift_once();
      }

      v86 = static NSObject.== infix(_:_:)();
      type metadata accessor for CRLSyncRecordSaveBatch();
      swift_allocObject();

      v87 = sub_100B5149C(v6, a2, v96 & 1, (v86 & 1) == 0);

      v88 = a2[5];
      v89 = __OFADD__(v88, 1);
      v90 = v88 + 1;
      if (v89)
      {
        __break(1u);
      }

      else
      {
        a2[5] = v90;
        if (qword_1019F2270 == -1)
        {
LABEL_113:
          v91 = static OS_os_log.dataSync;
          sub_1005B981C(&qword_1019F54E0);
          v92 = swift_initStackObject();
          *(v92 + 16) = xmmword_10146C6B0;
          v93 = a2[5];
          *(v92 + 56) = &type metadata for Int;
          *(v92 + 64) = &protocol witness table for Int;
          *(v92 + 32) = v93;
          v94 = static os_log_type_t.default.getter();
          sub_100005404(v91, &_mh_execute_header, v94, "Formed new batch #%d for save task.", 35, 2, v92);
          swift_setDeallocating();
          sub_100005070(v92 + 32);
LABEL_122:
          sub_100005070(v108);
          return v87;
        }
      }

      swift_once();
      goto LABEL_113;
    }

    if (*(v100 + 16))
    {
      goto LABEL_76;
    }

LABEL_77:
    ObjectType = swift_getObjectType();
    v103 = (*(v16 + 48))(ObjectType, v16);
    v79 = v2;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v6 = v107;
    result = swift_beginAccess();
    v80 = a2[4];
    v81 = v80 >> 62;
    if (v80 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (!result)
      {
        goto LABEL_137;
      }

      result = _CocoaArrayWrapper.endIndex.getter();
      a2 = v98;
      if (!result)
      {
        goto LABEL_136;
      }

LABEL_81:
      if ((v80 & 0xC000000000000001) != 0)
      {
        v82 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_128;
        }

        v82 = *(v80 + 32);
      }

      v101 = v82;
      if (v81)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        if (!result)
        {
          goto LABEL_130;
        }

        result = _CocoaArrayWrapper.endIndex.getter();
        if (result < 1)
        {
          goto LABEL_131;
        }

        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!result)
        {
          goto LABEL_130;
        }
      }

      v83 = result - 1;
      if (__OFSUB__(result, 1))
      {
        goto LABEL_129;
      }

      v84 = swift_isUniquelyReferenced_nonNull_bridgeObject();
      a2[4] = v80;
      if (v84)
      {
        if (!v81)
        {
          if (v83 <= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v85 = v96;
            v2 = v103;
LABEL_99:
            v96 = v2 | v85;
            sub_10067D7F0(0, 1, 0);
            a2[4] = v80;
            swift_endAccess();

            swift_unknownObjectRelease();
            continue;
          }

LABEL_98:
          v2 = v103;
          v80 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          a2[4] = v80;
          v85 = v96;
          goto LABEL_99;
        }
      }

      else if (!v81)
      {
        goto LABEL_98;
      }

      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_98;
    }

    break;
  }

  if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_81;
  }

LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
  return result;
}

uint64_t sub_1009F4158(uint64_t a1, void *a2)
{
  v43 = type metadata accessor for CRLBoardSyncLogicProvider();
  v44 = &off_1018A8500;
  v42[0] = a1;
  v4 = a2[8];
  if (v4)
  {
    v5 = *(*(v4 + 16) + 16);
    swift_beginAccess();
    v6 = a2[2];

    v7 = v5;

    v8 = sub_1009DFFF0(v7, v6);

    if (v8)
    {
      swift_beginAccess();
      v9 = a2[6];

      v10 = sub_10079DB58(v7, v9);

      if (v10)
      {
      }

      else
      {
        v11 = sub_100020E58(v42, v43);
        v12 = sub_1009F30B4(*v11, v8);

        if (v12)
        {
LABEL_8:
          a2[8] = v12;

LABEL_65:

          sub_100005070(v42);
          return v12;
        }
      }
    }

    else
    {
    }
  }

  else
  {
  }

  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  while (1)
  {
    v13 = a2[3];
    if (v13 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_64:
        v12 = 0;
        a2[8] = 0;
        goto LABEL_65;
      }
    }

    else if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_64;
    }

    result = swift_beginAccess();
    v15 = a2[3];
    v16 = v15 >> 62;
    if (!(v15 >> 62))
    {
      break;
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_72;
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_73;
    }

LABEL_16:
    if ((v15 & 0xC000000000000001) != 0)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_67;
      }

      v17 = *(v15 + 32);
    }

    v18 = v17;
    if (v16)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (!result)
      {
        goto LABEL_70;
      }

      result = _CocoaArrayWrapper.endIndex.getter();
      if (result < 1)
      {
        goto LABEL_71;
      }

      result = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_70;
      }
    }

    v19 = result - 1;
    if (__OFSUB__(result, 1))
    {
      goto LABEL_68;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    a2[3] = v15;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v16)
      {
        v21 = v15 & 0xFFFFFFFFFFFFFF8;
        if (v19 <= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

LABEL_31:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_32;
    }

    if (v16)
    {
      goto LABEL_31;
    }

LABEL_32:
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    a2[3] = v15;
    v21 = v15 & 0xFFFFFFFFFFFFFF8;
LABEL_33:

    if (v15 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (__OFSUB__(result, 1))
      {
        goto LABEL_74;
      }

      memmove((v21 + 32), (v21 + 40), 8 * (result - 1));
      result = _CocoaArrayWrapper.endIndex.getter();
      v23 = result - 1;
      if (__OFSUB__(result, 1))
      {
        goto LABEL_69;
      }
    }

    else
    {
      v22 = *(v21 + 16);
      result = memmove((v21 + 32), (v21 + 40), 8 * v22 - 8);
      v23 = v22 - 1;
      if (__OFSUB__(v22, 1))
      {
        goto LABEL_69;
      }
    }

    *(v21 + 16) = v23;
    a2[3] = v15;
    swift_endAccess();
    v24 = a2[2];
    if ((v24 & 0xC000000000000001) != 0)
    {

      v25 = v18;
      v26 = __CocoaDictionary.lookup(_:)();

      if (!v26)
      {
        goto LABEL_10;
      }

      type metadata accessor for CRLSyncRecordGroup();
      swift_dynamicCast();
      v27 = v41;
    }

    else
    {
      if (!*(v24 + 16))
      {
        goto LABEL_11;
      }

      v28 = sub_1007C8A78(v18);
      if ((v29 & 1) == 0)
      {
LABEL_10:

        goto LABEL_11;
      }

      v27 = *(*(v24 + 56) + 8 * v28);
    }

    if (v27)
    {
      v30 = a2[6];
      if ((v30 & 0xC000000000000001) != 0)
      {
        v31 = v18;

        v32 = __CocoaSet.contains(_:)();

        if (v32)
        {
        }

        else
        {
LABEL_51:
          v40 = sub_100020E58(v42, v43);
          v12 = sub_1009F30B4(*v40, v27);

          if (v12)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
        if (!*(v30 + 16))
        {
          goto LABEL_51;
        }

        sub_100006370(0, &qword_1019F69D0);
        v33 = *(v30 + 40);

        v34 = NSObject._rawHashValue(seed:)(v33);
        v35 = -1 << *(v30 + 32);
        v36 = v34 & ~v35;
        if (((*(v30 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
        {
LABEL_50:

          goto LABEL_51;
        }

        v37 = ~v35;
        while (1)
        {
          v38 = *(*(v30 + 48) + 8 * v36);
          v39 = static NSObject.== infix(_:_:)();

          if (v39)
          {
            break;
          }

          v36 = (v36 + 1) & v37;
          if (((*(v30 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
          {
            goto LABEL_50;
          }
        }
      }
    }

    else
    {
LABEL_11:
    }
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
  return result;
}

uint64_t sub_1009F4740()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v1 == v3;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1009F47A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A0BA60);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BE14(v4, &v13, &qword_101A2F5D0);
      v5 = v13;
      v6 = v14;
      result = sub_1009F303C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000BF3C(&v15, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1009F48F4(unint64_t a1, uint64_t a2, uint64_t a3)
{

  v5 = a1;
  v33 = a3;
  *(a3 + 16) = &_swiftEmptyDictionarySingleton;
  v6 = a3 + 16;
  *(v6 + 8) = &_swiftEmptyArrayStorage;
  *(v6 + 16) = 0;
  *(v6 + 24) = &_swiftEmptySetSingleton;
  *(v6 + 32) = &_swiftEmptySetSingleton;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v5 = v31)
  {
    v8 = 0;
    v35 = i;
    v36 = v5 & 0xC000000000000001;
    v34 = v5 & 0xFFFFFFFFFFFFFF8;
    v9 = v5;
    while (v36)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_31;
      }

LABEL_10:
      v12 = *(v10 + 16);
      swift_beginAccess();
      v13 = *v6;
      if ((*v6 & 0xC000000000000001) != 0)
      {
        if (v13 < 0)
        {
          v14 = *v6;
        }

        else
        {
          v14 = v13 & 0xFFFFFFFFFFFFFF8;
        }

        v15 = __CocoaDictionary.count.getter();
        v5 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_33;
        }

        *v6 = sub_100E8DB9C(v14, v5);
      }

      else
      {
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v6;
      v37 = *v6;
      *v6 = 0x8000000000000000;
      v18 = sub_1007C8A78(v12);
      v19 = *(v17 + 16);
      v20 = (v5 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        goto LABEL_32;
      }

      v23 = v5;
      if (*(v17 + 24) < v22)
      {
        sub_100A92794(v22, isUniquelyReferenced_nonNull_native);
        v18 = sub_1007C8A78(v12);
        if ((v23 & 1) != (v5 & 1))
        {
          sub_100006370(0, &qword_1019F69D0);
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

LABEL_22:
        v24 = v37;
        if (v23)
        {
          goto LABEL_23;
        }

        goto LABEL_25;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_22;
      }

      v25 = v18;
      sub_100AA9BA4();
      v18 = v25;
      v24 = v37;
      if (v23)
      {
LABEL_23:
        *(v24[7] + 8 * v18) = v10;

        goto LABEL_27;
      }

LABEL_25:
      v24[(v18 >> 6) + 8] |= 1 << v18;
      *(v24[6] + 8 * v18) = v12;
      *(v24[7] + 8 * v18) = v10;
      v26 = v24[2];
      v21 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v21)
      {
        goto LABEL_34;
      }

      v24[2] = v27;
      v28 = v12;
LABEL_27:
      *v6 = v24;
      swift_endAccess();
      v29 = *(v10 + 16);
      swift_beginAccess();
      v30 = v29;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v6 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v6 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      ++v8;
      v5 = v9;
      if (v11 == v35)
      {
        return v33;
      }
    }

    if (v8 >= *(v34 + 16))
    {
      goto LABEL_35;
    }

    v10 = *(v5 + 8 * v8 + 32);

    v11 = v8 + 1;
    if (!__OFADD__(v8, 1))
    {
      goto LABEL_10;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    v31 = v5;
    i = _CocoaArrayWrapper.endIndex.getter();
  }

  return v33;
}

uint64_t sub_1009F4C48(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLSyncController_queue);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6, v8);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  v14 = *(v7 + 8);
  v13 = (v7 + 8);
  v14(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v13 = [a2 recordID];
  v89 = sub_100B51038(v13);
  if (!v89)
  {
    if (qword_1019F2270 == -1)
    {
LABEL_21:
      v52 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      v54 = inited;
      *(inited + 16) = xmmword_10146BDE0;
      if (*(v3 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
      {
        v55 = 0x5320646572616853;
      }

      else
      {
        v55 = 0x2065746176697250;
      }

      if (*(v3 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
      {
        v56 = 0xEC00000065706F63;
      }

      else
      {
        v56 = 0xED000065706F6353;
      }

      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      v54[4] = v55;
      v54[5] = v56;
      v54[12] = sub_100006370(0, &qword_1019F6E98);
      v54[13] = sub_10000FE24(&qword_101A22E90, &qword_1019F6E98);
      v54[9] = v13;
      v57 = v13;
      v58 = static os_log_type_t.error.getter();
      sub_100005404(v52, &_mh_execute_header, v58, "<%{public}@> Failed to find the local change to merge into the remote change for %{public}@.", 92, 2, v54);

      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      return swift_arrayDestroy();
    }

LABEL_43:
    swift_once();
    goto LABEL_21;
  }

  v16 = v15;
  v88 = v13;
  v17 = (v3 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncLogicProvider);
  v18 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncLogicProvider + 24);
  v19 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncLogicProvider + 32);
  sub_100020E58((v3 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncLogicProvider), v18);
  v20 = (*(*(v19 + 16) + 8))(a2, v18);
  if (!v20)
  {
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v87 = static OS_os_log.dataSync;
    sub_1005B981C(&qword_1019F54E0);
    v59 = swift_initStackObject();
    v60 = v59;
    *(v59 + 16) = xmmword_10146BDE0;
    if (*(v3 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v61 = 0x5320646572616853;
    }

    else
    {
      v61 = 0x2065746176697250;
    }

    if (*(v3 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v62 = 0xEC00000065706F63;
    }

    else
    {
      v62 = 0xED000065706F6353;
    }

    *(v59 + 56) = &type metadata for String;
    v63 = sub_1000053B0();
    v86 = v63;
    v60[4] = v61;
    v60[8] = v63;
    v60[5] = v62;
    v92 = 0x203A65707954;
    v93 = 0xE600000000000000;
    v64._countAndFlagsBits = CKRecord.recordType.getter();
    String.append(_:)(v64);

    v65._countAndFlagsBits = 0x203A444920;
    v65._object = 0xE500000000000000;
    String.append(_:)(v65);
    v66 = [a2 recordID];
    v67 = [v66 recordName];

    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v69;

    v71._countAndFlagsBits = v68;
    v71._object = v70;
    String.append(_:)(v71);

    v72 = v92;
    v73 = v93;
    v74 = v86;
    v60[12] = &type metadata for String;
    v60[13] = v74;
    v60[9] = v72;
    v60[10] = v73;
    v75 = static os_log_type_t.error.getter();
    sub_100005404(v87, &_mh_execute_header, v75, "<%{public}@> Failed to convert server's record to CRLSyncRemoteRecord %{public}@", 80, 2, v60);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v92 = v89;
    v93 = v16 | 0x8000000000000000;
    v94 = a2;
    v95 = xmmword_101482150;
    swift_beginAccess();
    v76 = a2;
    swift_unknownObjectRetain_n();
    v77 = v76;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90 = *(a1 + 64);
    *(a1 + 64) = 0x8000000000000000;
    v79 = v88;
    sub_100A9F750(&v92, v88, isUniquelyReferenced_nonNull_native);

    *(a1 + 64) = v90;
    swift_endAccess();

    return swift_unknownObjectRelease_n();
  }

  v22 = v20;
  v23 = v21;
  sub_100020E58(v17, v17[3]);
  v24 = sub_100EEC328();
  if (!v24)
  {
LABEL_38:
    v92 = v89;
    v93 = v16 | 0x4000000000000000;
    v94 = v22;
    v95 = v23;
    swift_beginAccess();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v80 = swift_isUniquelyReferenced_nonNull_native();
    v90 = *(a1 + 64);
    *(a1 + 64) = 0x8000000000000000;
    v81 = v88;
    sub_100A9F750(&v92, v88, v80);

    *(a1 + 64) = v90;
    swift_endAccess();
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  v26 = v24;
  v27 = v25;
  ObjectType = swift_getObjectType();
  if (((*(v27 + 40))(ObjectType, v27) & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_38;
  }

  sub_100020E58(v17, v17[3]);
  v85[1] = v26;
  sub_100EECE0C(v26, v27, a2);
  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v87 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0);
  v29 = swift_initStackObject();
  v30 = v29;
  *(v29 + 16) = xmmword_10146BDE0;
  if (*(v3 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v31 = 0x5320646572616853;
  }

  else
  {
    v31 = 0x2065746176697250;
  }

  if (*(v3 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v32 = 0xEC00000065706F63;
  }

  else
  {
    v32 = 0xED000065706F6353;
  }

  *(v29 + 56) = &type metadata for String;
  v33 = sub_1000053B0();
  v86 = v33;
  v30[4] = v31;
  v30[8] = v33;
  v30[5] = v32;
  v92 = 0x203A65707954;
  v93 = 0xE600000000000000;
  v34._countAndFlagsBits = CKRecord.recordType.getter();
  String.append(_:)(v34);

  v35._countAndFlagsBits = 0x203A444920;
  v35._object = 0xE500000000000000;
  String.append(_:)(v35);
  v36 = [a2 recordID];
  v37 = [v36 recordName];

  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  v41._countAndFlagsBits = v38;
  v41._object = v40;
  String.append(_:)(v41);

  v42 = v92;
  v43 = v93;
  v44 = v86;
  v30[12] = &type metadata for String;
  v30[13] = v44;
  v30[9] = v42;
  v30[10] = v43;
  v45 = static os_log_type_t.default.getter();
  sub_100005404(v87, &_mh_execute_header, v45, "<%{public}@> Resolved conflict for record %{public}@", 52, 2, v30);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  swift_beginAccess();
  v46 = *(a1 + 48);
  if ((v46 & 0xC000000000000001) == 0)
  {
    v48 = v88;
    v82 = v88;
    v83 = a2;
    goto LABEL_40;
  }

  if (v46 < 0)
  {
    v47 = *(a1 + 48);
  }

  else
  {
    v47 = v46 & 0xFFFFFFFFFFFFFF8;
  }

  v48 = v88;
  v49 = v88;
  v50 = a2;
  result = __CocoaDictionary.count.getter();
  if (!__OFADD__(result, 1))
  {
    *(a1 + 48) = sub_100E8DDD0(v47, result + 1);
LABEL_40:
    v84 = swift_isUniquelyReferenced_nonNull_native();
    v91 = *(a1 + 48);
    sub_100A9F8E0(a2, v48, v84);
    *(a1 + 48) = v91;

    swift_endAccess();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

uint64_t sub_1009F55E8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLSyncController_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v11 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLSyncController_saveTask);
  if (!v11)
  {
    if (qword_1019F2270 == -1)
    {
LABEL_17:
      v19 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      v21 = inited;
      *(inited + 16) = xmmword_10146C6B0;
      if (*(v2 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
      {
        v22 = 0x5320646572616853;
      }

      else
      {
        v22 = 0x2065746176697250;
      }

      if (*(v2 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
      {
        v23 = 0xEC00000065706F63;
      }

      else
      {
        v23 = 0xED000065706F6353;
      }

      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(v21 + 32) = v22;
      *(v21 + 40) = v23;
      v24 = static os_log_type_t.error.getter();
      sub_100005404(v19, &_mh_execute_header, v24, "<%{public}@> Could not find active save task for handling failure", 65, 2, v21);
      swift_setDeallocating();
      return sub_100005070(v21 + 32);
    }

LABEL_25:
    swift_once();
    goto LABEL_17;
  }

  v29 = a1;
  type metadata accessor for CKError(0);
  sub_10002C5F0(&qword_1019F3348, 255, type metadata accessor for CKError);

  _BridgedStoredNSError.code.getter();
  if (v28 != 23)
  {
    v27 = a1;
    _BridgedStoredNSError.code.getter();
    if (v26 <= 0x24 && ((1 << v26) & 0x1000A002D8) != 0)
    {
      if (qword_1019F2270 != -1)
      {
        swift_once();
      }

      v12 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0);
      v13 = swift_initStackObject();
      v14 = v13;
      *(v13 + 16) = xmmword_10146C6B0;
      if (*(v2 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
      {
        v15 = 0x5320646572616853;
      }

      else
      {
        v15 = 0x2065746176697250;
      }

      if (*(v2 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
      {
        v16 = 0xEC00000065706F63;
      }

      else
      {
        v16 = 0xED000065706F6353;
      }

      *(v13 + 56) = &type metadata for String;
      *(v13 + 64) = sub_1000053B0();
      *(v14 + 32) = v15;
      *(v14 + 40) = v16;
      v17 = static os_log_type_t.error.getter();
      sub_100005404(v12, &_mh_execute_header, v17, "<%{public}@> encounteredThrottlingErrorForAllZones", 50, 2, v14);
      swift_setDeallocating();
      sub_100005070(v14 + 32);
      *(v11 + 57) = 1;
    }
  }
}

void sub_1009F5A18(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_queue);
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3, v5);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_7;
  }

  v10 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_saveTask);
  if (v10)
  {
    swift_beginAccess();
    v11 = *(v10 + 48);
    v12 = *(a1 + 16);
    v13 = *(v12 + 16);

    v14 = v13;
    v15 = sub_10079DB58(v14, v11);

    if (v15 & 1) != 0 || (*(a1 + 56))
    {
    }

    else
    {
      v22 = *(v12 + 16);
      swift_beginAccess();
      sub_100E71568(&v24, v22);
      swift_endAccess();
    }

    return;
  }

  if (qword_1019F2270 != -1)
  {
    goto LABEL_16;
  }

LABEL_7:
  v16 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v18 = inited;
  *(inited + 16) = xmmword_10146C6B0;
  if (*(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v19 = 0x5320646572616853;
  }

  else
  {
    v19 = 0x2065746176697250;
  }

  if (*(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v20 = 0xEC00000065706F63;
  }

  else
  {
    v20 = 0xED000065706F6353;
  }

  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  v21 = static os_log_type_t.error.getter();
  sub_100005404(v16, &_mh_execute_header, v21, "<%{public}@> Could not find active save task for handling zone-not-found error", 78, 2, v18);
  swift_setDeallocating();
  sub_100005070(v18 + 32);
}

void sub_1009F5D34(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, void *a5)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 == 2)
    {
      swift_unknownObjectRelease();

      sub_1009F5E04(a3, a4);
    }
  }

  else if (v7)
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    sub_100025870(a3, a4);
  }
}

void sub_1009F5E04(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

void sub_1009F5E18(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, void *a5)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 == 2)
    {
      swift_unknownObjectRetain();

      sub_1009F5EE8(a3, a4);
    }
  }

  else if (v7)
  {
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
  }

  else
  {
    swift_unknownObjectRetain();
    sub_100024E84(a3, a4);

    v8 = a5;
  }
}

id sub_1009F5EE8(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

uint64_t sub_1009F5EFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1009F5F64(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return;
    }

    a1 = a2;
  }
}

void sub_1009F5FB0()
{
  v1 = *(type metadata accessor for SyncEvent(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1009EB92C(v2, v3);
}

uint64_t sub_1009F6014(void *a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&qword_101A0BA30);
  __chkstk_darwin(v4 - 8);
  v6 = v39 - v5;
  v7 = sub_1005B981C(&qword_101A0BA08);
  __chkstk_darwin(v7);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v39 - v11;
  v13 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v13 - 8);
  v15 = v39 - v14;
  v16 = type metadata accessor for CRLZoneSyncResultScenarios();
  __chkstk_darwin(v16);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLSyncController_saveTask);
  if (v20)
  {
    v40 = v17;
    v41 = v7;
    v42 = v6;
    *(v20 + 56) = 1;
    swift_beginAccess();
    v21 = a1;

    sub_100E71568(&v43, v21);
    swift_endAccess();

    swift_beginAccess();
    v22 = sub_100ED80E4(v21);
    swift_endAccess();

    v23 = *(v20 + 64);
    if (v23)
    {
      v39[1] = v2;
      sub_100006370(0, &qword_1019F54D0);
      v24 = *(*(v23 + 16) + 16);

      v25 = v24;
      v26 = static NSObject.== infix(_:_:)();

      if (v26)
      {
        v27 = type metadata accessor for Date();
        (*(*(v27 - 8) + 56))(v15, 1, 1, v27);
        *v12 = 0;
        v28 = v41;
        sub_10003DFF8(v15, &v12[*(v41 + 48)], &qword_101A0A320);
        *v19 = 0x10000;
        v19[4] = 0;
        sub_10003DFF8(v12, v9, &qword_101A0BA08);
        v29 = *(v28 + 48);
        v30 = &v19[*(v16 + 36)];
        *v30 = *v9;
        sub_10003DFF8(&v9[v29], &v30[v29], &qword_101A0A320);
        *&v19[*(v16 + 40)] = _swiftEmptyArrayStorage;
        v31 = v42;
        sub_1009F5EFC(v19, v42, type metadata accessor for CRLZoneSyncResultScenarios);
        (*(v40 + 56))(v31, 0, 1, v16);
        sub_1009EEDBC(v23, 0, v31);

        sub_10000CAAC(v31, &qword_101A0BA30);
        sub_10002C420(v19, type metadata accessor for CRLZoneSyncResultScenarios);
      }

      else
      {
      }
    }

    sub_1009E52A4();
  }

  else
  {
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v32 = static OS_os_log.dataSync;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    v34 = inited;
    *(inited + 16) = xmmword_10146C6B0;
    if (*(v2 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v35 = 0x5320646572616853;
    }

    else
    {
      v35 = 0x2065746176697250;
    }

    if (*(v2 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v36 = 0xEC00000065706F63;
    }

    else
    {
      v36 = 0xED000065706F6353;
    }

    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(v34 + 32) = v35;
    *(v34 + 40) = v36;
    v37 = static os_log_type_t.error.getter();
    sub_100005404(v32, &_mh_execute_header, v37, "<%{public}@> Could not find active save task for handling zone save failure", 75, 2, v34);
    swift_setDeallocating();
    return sub_100005070(v34 + 32);
  }
}

uint64_t sub_1009F6578(void *a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&qword_101A0BA30);
  __chkstk_darwin(v4 - 8);
  v6 = v39 - v5;
  v7 = sub_1005B981C(&qword_101A0BA08);
  __chkstk_darwin(v7);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v39 - v11;
  v13 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v13 - 8);
  v15 = v39 - v14;
  v16 = type metadata accessor for CRLZoneSyncResultScenarios();
  __chkstk_darwin(v16);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLSyncController_saveTask);
  if (v20)
  {
    v40 = v17;
    v41 = v7;
    v42 = v6;
    *(v20 + 56) = 1;
    swift_beginAccess();
    v21 = a1;

    sub_100E71568(&v43, v21);
    swift_endAccess();

    swift_beginAccess();
    v22 = sub_100ED80E4(v21);
    swift_endAccess();

    v23 = *(v20 + 64);
    if (v23)
    {
      v39[1] = v2;
      sub_100006370(0, &qword_1019F54D0);
      v24 = *(*(v23 + 16) + 16);

      v25 = v24;
      v26 = static NSObject.== infix(_:_:)();

      if (v26)
      {
        v27 = type metadata accessor for Date();
        (*(*(v27 - 8) + 56))(v15, 1, 1, v27);
        *v12 = 0;
        v28 = v41;
        sub_10003DFF8(v15, &v12[*(v41 + 48)], &qword_101A0A320);
        *v19 = 0;
        v19[4] = 0;
        sub_10003DFF8(v12, v9, &qword_101A0BA08);
        v29 = *(v28 + 48);
        v30 = &v19[*(v16 + 36)];
        *v30 = *v9;
        sub_10003DFF8(&v9[v29], &v30[v29], &qword_101A0A320);
        *&v19[*(v16 + 40)] = _swiftEmptyArrayStorage;
        v31 = v42;
        sub_1009F5EFC(v19, v42, type metadata accessor for CRLZoneSyncResultScenarios);
        (*(v40 + 56))(v31, 0, 1, v16);
        sub_1009EEDBC(v23, 0, v31);

        sub_10000CAAC(v31, &qword_101A0BA30);
        sub_10002C420(v19, type metadata accessor for CRLZoneSyncResultScenarios);
      }

      else
      {
      }
    }

    sub_1009E52A4();
  }

  else
  {
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v32 = static OS_os_log.dataSync;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    v34 = inited;
    *(inited + 16) = xmmword_10146C6B0;
    if (*(v2 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v35 = 0x5320646572616853;
    }

    else
    {
      v35 = 0x2065746176697250;
    }

    if (*(v2 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v36 = 0xEC00000065706F63;
    }

    else
    {
      v36 = 0xED000065706F6353;
    }

    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(v34 + 32) = v35;
    *(v34 + 40) = v36;
    v37 = static os_log_type_t.error.getter();
    sub_100005404(v32, &_mh_execute_header, v37, "<%{public}@> Could not find active save task for handling zone save failure", 75, 2, v34);
    swift_setDeallocating();
    return sub_100005070(v34 + 32);
  }
}

uint64_t sub_1009F6AD8(void *a1)
{
  v48 = sub_1005B981C(&qword_101A0BA08);
  __chkstk_darwin(v48);
  v47 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v46 = &v44 - v5;
  v6 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v6 - 8);
  v45 = &v44 - v7;
  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v8 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v10 = inited;
  *(inited + 16) = xmmword_10146BDE0;
  if (*(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v11 = 0x5320646572616853;
  }

  else
  {
    v11 = 0x2065746176697250;
  }

  if (*(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v12 = 0xEC00000065706F63;
  }

  else
  {
    v12 = 0xED000065706F6353;
  }

  *(inited + 56) = &type metadata for String;
  v13 = sub_1000053B0();
  v10[8] = v13;
  v10[4] = v11;
  v10[5] = v12;
  v14 = a1;
  v15 = [v14 zoneName];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v10[12] = &type metadata for String;
  v10[13] = v13;
  v10[9] = v16;
  v10[10] = v18;
  v19 = static os_log_type_t.default.getter();
  sub_100005404(v8, &_mh_execute_header, v19, "<%{public}@> Sync engine stopped fetching record zone changes from CloudKit for zone: %{public}@", 96, 2, v10);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v20 = *(*(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_dataSource) + 16);
  v21 = *&v20[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  v22 = swift_allocObject();
  *(v22 + 16) = v14;
  *(v22 + 24) = v20;
  *(v22 + 32) = 0;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1009F75C8;
  *(v23 + 24) = v22;
  aBlock[4] = sub_10002AAE0;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10002AAB8;
  aBlock[3] = &unk_101890D38;
  v24 = _Block_copy(aBlock);
  v25 = v14;
  v26 = v20;

  dispatch_sync(v21, v24);
  _Block_release(v24);
  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

  if (v24)
  {
    __break(1u);
  }

  else
  {
    sub_1005B981C(&qword_101A0BA10);
    v28 = (sub_1005B981C(&qword_101A0BA18) - 8);
    v29 = (*(*v28 + 80) + 32) & ~*(*v28 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_10146C6B0;
    v31 = v30 + v29;
    v32 = v30 + v29 + v28[14];
    *(v30 + v29) = v25;
    v33 = type metadata accessor for Date();
    v34 = v45;
    (*(*(v33 - 8) + 56))(v45, 1, 1, v33);
    v35 = v46;
    *v46 = 0;
    v36 = v48;
    sub_10003DFF8(v34, &v35[*(v48 + 48)], &qword_101A0A320);
    *v32 = 1;
    *(v32 + 1) = 0;
    v37 = v35;
    v38 = v47;
    sub_10003DFF8(v37, v47, &qword_101A0BA08);
    v39 = *v38;
    v40 = *(v36 + 48);
    v41 = type metadata accessor for CRLZoneSyncResultScenarios();
    v42 = (v32 + *(v41 + 36));
    *v42 = v39;
    sub_10003DFF8(&v38[v40], &v42[v40], &qword_101A0A320);
    *(v32 + *(v41 + 40)) = _swiftEmptyArrayStorage;
    v43 = sub_100BD7B1C(v30);
    swift_setDeallocating();
    sub_10000CAAC(v31, &qword_101A0BA18);
    swift_deallocClassInstance();
    sub_100BF3BF4(v43, 0);
  }

  return result;
}

void sub_1009F70A0()
{
  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v3 = inited;
  *(inited + 16) = xmmword_10146C6B0;
  if (*(v0 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v4 = 0x5320646572616853;
  }

  else
  {
    v4 = 0x2065746176697250;
  }

  if (*(v0 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v5 = 0xEC00000065706F63;
  }

  else
  {
    v5 = 0xED000065706F6353;
  }

  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v6 = static os_log_type_t.default.getter();
  sub_100005404(v1, &_mh_execute_header, v6, "<%{public}@> Sync engine stopped fetching changes from CloudKit", 63, 2, v3);
  swift_setDeallocating();
  sub_100005070(v3 + 32);
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLSyncController_dataSource);
  v8 = *(v7 + 16);
  v9 = *&v8[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = 1;
  *(v10 + 24) = v8;
  *(v10 + 32) = 0;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1009F7A08;
  *(v11 + 24) = v10;
  v25 = sub_10002AAE0;
  v26 = v11;
  aBlock = _NSConcreteStackBlock;
  v22 = *"";
  v23 = sub_10002AAB8;
  v24 = &unk_101890DB0;
  v12 = _Block_copy(&aBlock);
  v13 = v8;

  dispatch_sync(v9, v12);
  _Block_release(v12);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else if (qword_1019F2870 == -1)
  {
    goto LABEL_11;
  }

  swift_once();
LABEL_11:
  v14 = qword_101AD8E40;
  v15 = *(v7 + 16);
  v16 = *&v15[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = v15;
  *(v17 + 32) = 0;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1009F7A08;
  *(v18 + 24) = v17;
  v25 = sub_10002AAE0;
  v26 = v18;
  aBlock = _NSConcreteStackBlock;
  v22 = *"";
  v23 = sub_10002AAB8;
  v24 = &unk_101890E28;
  v19 = _Block_copy(&aBlock);
  sub_1009F761C(v14);
  v20 = v15;

  dispatch_sync(v16, v19);
  _Block_release(v19);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    sub_1009F1E50();
  }
}

uint64_t sub_1009F749C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D3D4;

  return sub_1009EBF88(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1009F75D4()
{
  v1 = *(v0 + 16);
  if (v1 >= 2)
  {
  }

  return _swift_deallocObject(v0, 33, 7);
}

id sub_1009F761C(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_1009F7658(uint64_t a1)
{
  v4 = *(type metadata accessor for CKSyncEngine.FetchChangesOptions() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_1009E83AC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1009F7758(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1009F77C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLZoneSyncResultScenarios();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1009F7824(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D3D4;

  return sub_1009E1118(a1, v4, v5, v1 + 32, v6, v7, v8);
}

uint64_t sub_1009F78F8(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

id sub_1009F7A0C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = objc_allocWithZone(type metadata accessor for CRLPreinsertionAssetWrapper());

  swift_unknownObjectRetain();
  sub_100024E98(a1, a2);
  return sub_100CF051C(a1, a2, a3, a4, v4);
}

id sub_1009F7AA0(uint64_t a1)
{
  v3 = [v1 store];
  v4 = *&v3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
  os_unfair_lock_lock(*(v4 + 16));
  v5 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
  v6 = *&v3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  if (v6)
  {
    v7 = *&v3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  }

  else
  {
    v20 = type metadata accessor for CRLAssetManager();
    v8 = objc_allocWithZone(v20);
    swift_unknownObjectWeakInit();
    v9 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
    type metadata accessor for CRLUnfairLock();
    v10 = swift_allocObject();
    v11 = v3;
    v12 = swift_slowAlloc();
    *v12 = 0;
    *(v10 + 16) = v12;
    atomic_thread_fence(memory_order_acq_rel);
    *&v8[v9] = v10;
    *&v8[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
    v13 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
    *&v8[v13] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
    *&v8[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
    swift_unknownObjectWeakAssign();
    v21.receiver = v8;
    v21.super_class = v20;
    v14 = objc_msgSendSuper2(&v21, "init");

    v15 = *&v3[v5];
    *&v3[v5] = v14;
    v7 = v14;

    v6 = 0;
  }

  v16 = *(v4 + 16);
  v17 = v6;
  os_unfair_lock_unlock(v16);

  v18 = sub_100C81464(a1, v1, v7);
  return v18;
}

id sub_1009F7C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLPreinsertionAssetWrapper();
  (*(v8 + 16))(v10, a1, v7);

  swift_unknownObjectRetain();
  return sub_100CF5584(v10, a2, a3, v3, v11);
}

uint64_t sub_1009F7D94(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v3 = result;
    goto LABEL_10;
  }

  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v1 = v3;
  return result;
}

uint64_t sub_1009F7E30()
{
  v0 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v0 - 8);
  v41 = &v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v37 = &v35 - v3;
  v4 = type metadata accessor for CRLProto_Data(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v40 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  __chkstk_darwin(v10);
  v12 = (&v35 - v11);
  v13 = type metadata accessor for CRLProto_ChunkedRealTimeMessage(0);
  __chkstk_darwin(v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[8] = 0;
  *v15 = 0;
  UnknownStorage.init()();
  v16 = *(v13 + 32);
  v17 = *(v5 + 56);
  v45 = v17;
  v17(&v15[v16], 1, 1, v4);
  v42 = v13;
  v38 = *(v13 + 36);
  v17(&v15[v38], 1, 1, v4);
  v44 = xmmword_10146F370;
  *v12 = xmmword_10146F370;
  UnknownStorage.init()();
  sub_1009DCE5C(&v15[v16]);
  sub_100683F6C(v12, &v15[v16]);
  v46 = v5 + 56;
  v17(&v15[v16], 0, 1, v4);
  v18 = v37;
  v19 = UUID.crl_data()();
  v36 = v20;
  sub_10084DD24(&v15[v16], v18);
  v21 = *(v5 + 48);
  v22 = v21(v18, 1, v4);
  v39 = v5 + 48;
  v43 = v21;
  if (v22 == 1)
  {
    *v9 = v44;
    UnknownStorage.init()();
    if (v21(v18, 1, v4) != 1)
    {
      sub_1009DCE5C(v18);
    }
  }

  else
  {
    sub_100683F6C(v18, v9);
  }

  sub_10002640C(*v9, *(v9 + 1));
  v23 = v36;
  *v9 = v19;
  *(v9 + 1) = v23;
  sub_1009DCE5C(&v15[v16]);
  sub_100683F6C(v9, &v15[v16]);
  v24 = v45;
  v45(&v15[v16], 0, 1, v4);
  v25 = v47;
  v26 = *(v47 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_lastIndex);
  *v15 = *(v47 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_index);
  *(v15 + 1) = v26;
  v15[8] = *(v25 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_encrypted);
  *v12 = v44;
  UnknownStorage.init()();
  v27 = v38;
  sub_1009DCE5C(&v15[v38]);
  sub_100683F6C(v12, &v15[v27]);
  v24(&v15[v27], 0, 1, v4);
  v28 = v25 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_data;
  v29 = *(v25 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_data);
  v30 = *(v28 + 8);
  v31 = v41;
  sub_10084DD24(&v15[v27], v41);
  if (v43(v31, 1, v4) == 1)
  {
    v32 = v40;
    *v40 = v44;
    sub_100024E98(v29, v30);
    UnknownStorage.init()();
    if (v43(v31, 1, v4) != 1)
    {
      sub_1009DCE5C(v31);
    }
  }

  else
  {
    v32 = v40;
    sub_100683F6C(v31, v40);
    sub_100024E98(v29, v30);
  }

  sub_10002640C(*v32, *(v32 + 1));
  *v32 = v29;
  *(v32 + 1) = v30;
  sub_1009DCE5C(&v15[v27]);
  sub_100683F6C(v32, &v15[v27]);
  v45(&v15[v27], 0, 1, v4);
  sub_1009FA00C(&qword_101A0BB88, type metadata accessor for CRLProto_ChunkedRealTimeMessage);
  v33 = Message.serializedData(partial:)();
  sub_1009FA054(v15, type metadata accessor for CRLProto_ChunkedRealTimeMessage);
  return v33;
}

uint64_t sub_1009F838C()
{
  v1 = *v0;
  v2 = 0x44496E69616863;
  v3 = 0x65646E497473616CLL;
  v4 = 0x6574707972636E65;
  if (v1 != 3)
  {
    v4 = 1635017060;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7865646E69;
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

uint64_t sub_1009F8428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1009FA1CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1009F8450(uint64_t a1)
{
  v2 = sub_1009F8D80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009F848C(uint64_t a1)
{
  v2 = sub_1009F8D80();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1009F84C8()
{
  v1 = OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_chainID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10002640C(*(v0 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_data), *(v0 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_data + 8));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRLChunkedRealTimeMessage()
{
  result = qword_101A0BAB0;
  if (!qword_101A0BAB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1009F85CC()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_1009F8680(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A0BB70);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_100020E58(a1, a1[3]);
  sub_1009F8D80();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  type metadata accessor for UUID();
  sub_1009FA00C(&qword_1019F43C0, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = *(v3 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_data + 8);
    v12 = *(v3 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_data);
    v13 = v9;
    v11[15] = 4;
    sub_100024E98(v12, v9);
    sub_1006D63D4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10002640C(v12, v13);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1009F8920(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v15 = *(v4 - 8);
  __chkstk_darwin(v4);
  v17 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1005B981C(&qword_101A0BB60);
  v6 = *(v18 - 8);
  __chkstk_darwin(v18);
  v8 = &v14 - v7;
  sub_100020E58(a1, a1[3]);
  sub_1009F8D80();
  v16 = v8;
  v9 = v19;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v9)
  {
    swift_deallocPartialClassInstance();
    v13 = a1;
  }

  else
  {
    v10 = v15;
    v19 = a1;
    LOBYTE(v20) = 0;
    sub_1009FA00C(&qword_1019F43A8, &type metadata accessor for UUID);
    v11 = v16;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v10 + 32))(v2 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_chainID, v17, v4);
    LOBYTE(v20) = 1;
    *(v2 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_index) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v20) = 2;
    *(v2 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_lastIndex) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v20) = 3;
    *(v2 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_encrypted) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v21 = 4;
    sub_1006D6258();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v11, v18);
    *(v2 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_data) = v20;
    v13 = v19;
  }

  sub_100005070(v13);
  return v2;
}

uint64_t sub_1009F8CF8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_1009F8920(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_1009F8D80()
{
  result = qword_101A0BB68;
  if (!qword_101A0BB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0BB68);
  }

  return result;
}

uint64_t sub_1009F8DD4(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 1)
  {
    goto LABEL_16;
  }

  v4 = result;
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v8 = *(a2 + 16);
      v7 = *(a2 + 24);
      v13 = __OFSUB__(v7, v8);
      v6 = v7 - v8;
      if (v13)
      {
        __break(1u);
        goto LABEL_9;
      }
    }

    else
    {
      v6 = 0;
    }

LABEL_12:
    v9 = ceilf(v6 / result);
    if ((LODWORD(v9) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      if (v9 <= -9.2234e18)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      if (v9 >= 9.2234e18)
      {
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v10 = v9;
      if (v9 == 1)
      {
LABEL_16:
        sub_1005B981C(&qword_101A0BB80);
        v11 = swift_allocObject();
        *(v11 + 1) = xmmword_10146C6B0;
        v11[4] = a2;
        v11[5] = a3;
        sub_100024E98(a2, a3);
        return v11;
      }

      if (v10 < 0)
      {
        goto LABEL_41;
      }

      if (!v10)
      {
        return _swiftEmptyArrayStorage;
      }

      v12 = 0;
      v11 = _swiftEmptyArrayStorage;
      while (1)
      {
        v13 = __OFSUB__(v6, v4);
        v14 = v6 - v4;
        if (v6 >= v4)
        {
          v6 = v4;
        }

        if (v13)
        {
          break;
        }

        result = v12 * v4;
        if ((v12 * v4) >> 64 != (v12 * v4) >> 63)
        {
          goto LABEL_35;
        }

        if (__OFADD__(result, v6))
        {
          goto LABEL_36;
        }

        if (result + v6 < result)
        {
          goto LABEL_37;
        }

        v15 = Data.subdata(in:)();
        v17 = v16;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100B3718C(0, v11[2] + 1, 1, v11);
          v11 = result;
        }

        v19 = v11[2];
        v18 = v11[3];
        if (v19 >= v18 >> 1)
        {
          result = sub_100B3718C((v18 > 1), v19 + 1, 1, v11);
          v11 = result;
        }

        ++v12;
        v11[2] = v19 + 1;
        v20 = &v11[2 * v19];
        v20[4] = v15;
        v20[5] = v17;
        v6 = v14;
        if (v10 == v12)
        {
          return v11;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
    }

    __break(1u);
    goto LABEL_39;
  }

  if (!v5)
  {
    v6 = BYTE6(a3);
    goto LABEL_12;
  }

LABEL_9:
  LODWORD(v6) = HIDWORD(a2) - a2;
  if (!__OFSUB__(HIDWORD(a2), a2))
  {
    v6 = v6;
    goto LABEL_12;
  }

LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1009F9010@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1009F9240(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1009F93D0(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_10002640C(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1009F9010(v13, a3, a4, &v12);
  v10 = v4;
  sub_10002640C(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1009F93D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_1009F9010(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1009F9488(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_100024E98(a3, a4);
          return sub_1009F9240(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1009F95F0(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0 || *(a1 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_index) != *(a2 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_index) || *(a1 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_lastIndex) != *(a2 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_lastIndex) || *(a1 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_encrypted) != *(a2 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_encrypted))
  {
    return 0;
  }

  v5 = *(a1 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_data);
  v6 = *(a1 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_data + 8);
  v7 = *(a2 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_data);
  v8 = *(a2 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_data + 8);

  return sub_1009F9488(v5, v6, v7, v8);
}

uint64_t sub_1009F96AC(uint64_t a1, unint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v4 - 8);
  v52 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v56 = &v48 - v7;
  v55 = type metadata accessor for CRLProto_Data(0);
  v57 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = (&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v11 = (&v48 - v10);
  v12 = type metadata accessor for UUID();
  v53 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v48 - v16;
  v18 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v18 - 8);
  v19 = type metadata accessor for CRLProto_ChunkedRealTimeMessage(0);
  __chkstk_darwin(v19);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  sub_100024E98(a1, a2);
  BinaryDecodingOptions.init()();
  sub_1009FA00C(&qword_101A0BB88, type metadata accessor for CRLProto_ChunkedRealTimeMessage);
  v22 = v61;
  Message.init(serializedData:extensions:partial:options:)();
  if (v22)
  {
    v23 = a1;
    v24 = a2;
LABEL_9:
    sub_10002640C(v23, v24);
    return v17;
  }

  v61 = 0;
  v50 = v14;
  v51 = v17;
  v49 = v12;
  v25 = v56;
  sub_10084DD24(&v21[*(v19 + 32)], v56);
  v27 = v57 + 48;
  v26 = *(v57 + 48);
  v28 = v55;
  v29 = v26(v25, 1, v55);
  v48 = v26;
  v57 = v27;
  if (v29 == 1)
  {
    *v11 = xmmword_10146F370;
    UnknownStorage.init()();
    v17 = v28;
    if (v26(v56, 1, v28) != 1)
    {
      sub_1009DCE5C(v56);
    }
  }

  else
  {
    v17 = v28;
    sub_100683F6C(v56, v11);
  }

  v30 = *v11;
  v31 = v11[1];
  sub_100024E98(*v11, v31);
  sub_1009FA054(v11, type metadata accessor for CRLProto_Data);
  v32 = v61;
  result = UUID.init(crl_data:)(v30, v31);
  if (v32)
  {
    sub_1009FA054(v21, type metadata accessor for CRLProto_ChunkedRealTimeMessage);
    v23 = a1;
    v24 = a2;
    goto LABEL_9;
  }

  v61 = 0;
  if (HIWORD(*v21))
  {
    __break(1u);
  }

  else
  {
    LODWORD(v56) = *v21;
    v34 = *(v21 + 1);
    v35 = v54;
    if (!HIWORD(v34))
    {
      LODWORD(v55) = v21[8];
      v36 = &v21[*(v19 + 36)];
      v37 = v52;
      sub_10084DD24(v36, v52);
      v38 = v48;
      if (v48(v37, 1, v17) == 1)
      {
        *v35 = xmmword_10146F370;
        UnknownStorage.init()();
        sub_10002640C(a1, a2);
        sub_1009FA054(v21, type metadata accessor for CRLProto_ChunkedRealTimeMessage);
        v39 = v38(v37, 1, v17);
        v40 = v50;
        if (v39 != 1)
        {
          sub_1009DCE5C(v37);
        }
      }

      else
      {
        sub_10002640C(a1, a2);
        sub_1009FA054(v21, type metadata accessor for CRLProto_ChunkedRealTimeMessage);
        sub_100683F6C(v37, v35);
        v40 = v50;
      }

      v41 = *v35;
      v42 = v35[1];
      sub_100024E98(*v35, v42);
      sub_1009FA054(v35, type metadata accessor for CRLProto_Data);
      v43 = *(v53 + 32);
      v44 = v49;
      v43(v40, v51, v49);
      type metadata accessor for CRLChunkedRealTimeMessage();
      v45 = swift_allocObject();
      v46 = v40;
      v17 = v45;
      v43((v45 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_chainID), v46, v44);
      *&v17[OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_index] = v56;
      *&v17[OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_lastIndex] = v34;
      v17[OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_encrypted] = v55;
      v47 = &v17[OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_data];
      *v47 = v41;
      *(v47 + 1) = v42;
      return v17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1009F9CD0(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v33 = &v26 - v14;
  v15 = sub_1009F8DD4(a4, a1, a2);
  v16 = *(v15 + 16);
  if (v16 >> 16)
  {

    sub_1009F9FB8();
    swift_allocError();
    *v17 = 2;
    return swift_willThrow();
  }

  else
  {
    v19 = v15;
    v34 = _swiftEmptyArrayStorage;
    result = sub_1009F7D94(v16);
    if (v16)
    {
      v28 = v4;
      v32 = v16;
      v31 = v16 - 1;
      UUID.init()();
      v20 = 0;
      v26 = v19;
      v27 = v10;
      v30 = *(v10 + 16);
      v29 = a3 & 1;
      v21 = (v19 + 40);
      do
      {
        v30(v12, v33, v9);
        v22 = *(v21 - 1);
        v23 = *v21;
        type metadata accessor for CRLChunkedRealTimeMessage();
        v24 = swift_allocObject();
        (*(v10 + 32))(v24 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_chainID, v12, v9);
        *(v24 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_index) = v20;
        *(v24 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_lastIndex) = v31;
        *(v24 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_encrypted) = v29;
        v25 = (v24 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_data);
        *v25 = v22;
        v25[1] = v23;
        sub_100024E98(v22, v23);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        ++v20;
        v21 += 2;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      while (v32 != v20);

      (*(v27 + 8))(v33, v9);
      return v34;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_1009F9FB8()
{
  result = qword_101A0BB78;
  if (!qword_101A0BB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0BB78);
  }

  return result;
}

uint64_t sub_1009FA00C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1009FA054(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1009FA0C8()
{
  result = qword_101A0BB90;
  if (!qword_101A0BB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0BB90);
  }

  return result;
}

unint64_t sub_1009FA120()
{
  result = qword_101A0BB98;
  if (!qword_101A0BB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0BB98);
  }

  return result;
}

unint64_t sub_1009FA178()
{
  result = qword_101A0BBA0;
  if (!qword_101A0BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0BBA0);
  }

  return result;
}

uint64_t sub_1009FA1CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496E69616863 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65646E497473616CLL && a2 == 0xE900000000000078 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574707972636E65 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
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

uint64_t sub_1009FA388(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&qword_1019FB750);
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = v20 - v6;
  v8 = [*(v1 + 16) objectForKey:{a1, v5}];
  if (v8)
  {
    v9 = v8;
    swift_beginAccess();
    sub_10000BE14(v9 + 64, &v21, &unk_101A08DE0);
    if (*(&v22 + 1))
    {
      sub_10000630C(&v21, v20);
      sub_10000CAAC(&v21, &unk_101A08DE0);
      sub_100020E58(v20, v20[3]);
      dispatch thunk of Cancellable.cancel()();
      sub_100005070(v20);
    }

    else
    {
      sub_10000CAAC(&v21, &unk_101A08DE0);
    }

    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    swift_beginAccess();
    sub_10002C638(&v21, v9 + 64, &unk_101A08DE0);
    swift_endAccess();
    [*(v1 + 16) removeObjectForKey:a1];
    dispatch thunk of __ServiceLocator.sceneService.getter();
    sub_100020E58(&v21, *(&v22 + 1));
    dispatch thunk of __SceneService.remove(scene:)();
    sub_100005070(&v21);
    if (![*(v1 + 16) count])
    {
      sub_1009FC0D0();
      v17 = type metadata accessor for TaskPriority();
      (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
      type metadata accessor for MainActor();

      v18 = static MainActor.shared.getter();
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = &protocol witness table for MainActor;
      v19[4] = v2;
      sub_100796D54(0, 0, v7, &unk_10148D300, v19);
    }
  }

  else
  {
    if (qword_1019F21E0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlThreeDimensionalObjects;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    UUID.uuidString.getter();
    String.index(_:offsetBy:)();
    String.subscript.getter();

    v12 = static String._fromSubstring(_:)();
    v14 = v13;

    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v12;
    *(inited + 40) = v14;
    v15 = static os_log_type_t.debug.getter();
    sub_100005404(v10, &_mh_execute_header, v15, "(CoreRE) [%{public}@] Cannot remove unknown client.", 51, 2, inited);
    swift_setDeallocating();
    return sub_100005070(inited + 32);
  }
}

uint64_t sub_1009FA790(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  v6 = static OS_os_log.crlThreeDimensionalObjects;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  UUID.uuidString.getter();
  String.index(_:offsetBy:)();
  String.subscript.getter();
  v8 = v6;

  v9 = static String._fromSubstring(_:)();
  v11 = v10;

  *(inited + 56) = &type metadata for String;
  v12 = sub_1000053B0();
  *(inited + 64) = v12;
  *(inited + 32) = v9;
  *(inited + 40) = v11;
  v13 = static os_log_type_t.debug.getter();
  v31 = v8;
  sub_100005404(v8, &_mh_execute_header, v13, "(CoreRE) [%{public}@] Adding new client.", 40, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  strcpy(v40, "ClientScene-");
  BYTE5(v40[1]) = 0;
  HIWORD(v40[1]) = -5120;
  type metadata accessor for UUID();
  sub_10006217C(&qword_101A02180, &type metadata accessor for UUID);
  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  v15 = v40[16];
  sub_1009FB6B4(v40[0], v40[1]);

  String.utf8CString.getter();

  RESceneCreate();

  RESceneSetRequiresAnchoring();
  type metadata accessor for Scene();
  v16 = static Scene.fromCore(_:)();
  RERelease();
  dispatch thunk of __ServiceLocator.sceneService.getter();
  sub_100020E58(v40, v40[3]);
  dispatch thunk of __SceneService.append(scene:)();
  sub_100005070(v40);
  _s11ClientSceneCMa();
  swift_allocObject();

  v17 = sub_100CEF9B0(a1, v16, a2, a3, a4 & 1, a5);
  v18 = v15[3];
  _s6CoreREO19SceneRenderingStateCMa(0);
  swift_allocObject();
  swift_unknownObjectRetain();

  v19 = sub_1009FCE34(v18, v17);
  if (v37)
  {
  }

  else
  {
    v36 = v12;
    v20 = v19;
    if (!v15[12])
    {
      sub_1009FB7AC();
    }

    if ((dispatch thunk of __Engine.isRunning.getter() & 1) == 0)
    {
      dispatch thunk of __Engine.__start()();
    }

    v21 = v15[2];

    [v21 setObject:v20 forKey:v17];
    type metadata accessor for SceneEvents.Update();
    v39 = 0;
    memset(v38, 0, sizeof(v38));
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    swift_weakInit();

    v24 = swift_allocObject();
    *(v24 + 16) = v22;
    *(v24 + 24) = v23;
    Scene.subscribe<A>(to:on:_:)();

    sub_10000CAAC(v38, &qword_101A0BFF8);
    swift_beginAccess();
    sub_10002C638(v40, v20 + 64, &unk_101A08DE0);
    swift_endAccess();
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_10146C6B0;
    UUID.uuidString.getter();
    String.index(_:offsetBy:)();
    String.subscript.getter();

    v26 = static String._fromSubstring(_:)();
    v28 = v27;

    *(v25 + 56) = &type metadata for String;
    *(v25 + 64) = v36;
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    v29 = static os_log_type_t.debug.getter();
    sub_100005404(v31, &_mh_execute_header, v29, "(CoreRE) [%{public}@] Added new client.", 39, 2, v25);

    swift_setDeallocating();
    sub_100005070(v25 + 32);
  }

  return v17;
}

uint64_t sub_1009FAD90()
{
  _s6CoreREO6EngineCMa();
  swift_allocObject();
  result = sub_1009FADCC();
  qword_101AD6F00 = result;
  return result;
}

uint64_t sub_1009FADCC()
{
  v1 = v0;
  v2 = type metadata accessor for __EngineServiceMaskRef();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for __Engine.Configuration();
  v18 = *(v6 - 8);
  v19 = v6;
  __chkstk_darwin(v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
  *(v0 + 48) = 0u;
  v10 = v0 + 48;
  *(v0 + 16) = v9;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0;
  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  v11 = static OS_os_log.crlThreeDimensionalObjects;
  v12 = static os_log_type_t.debug.getter();
  sub_100005404(v11, &_mh_execute_header, v12, "(CoreRE) Loading CoreRE.Engine.", 31, 2, _swiftEmptyArrayStorage);
  __Engine.Configuration.init()();
  __Engine.Configuration.__createServices.getter();
  type metadata accessor for REEngineServiceMask(0);
  v14 = v13;
  __EngineServiceMaskRef.__as<A>(_:)();
  v15 = *(v3 + 8);
  v15(v5, v2);
  v24 = v14;
  LODWORD(v23[0]) = v25 & 0xFFFFDF3F;
  static __EngineServiceMaskRef.__fromCore(_:)();
  sub_100005070(v23);
  __Engine.Configuration.__createServices.setter();
  __Engine.Configuration.__updateServices.getter();
  __EngineServiceMaskRef.__as<A>(_:)();
  v15(v5, v2);
  v25 = v23[0];
  v24 = v14;
  LODWORD(v23[0]) &= 0xFFFFDF3F;
  static __EngineServiceMaskRef.__fromCore(_:)();
  sub_100005070(v23);
  __Engine.Configuration.__updateServices.setter();
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.__createSharedIfNeeded(with:)();
  v1[5] = static __ServiceLocator.shared.getter();

  v16 = dispatch thunk of __ServiceLocator.engine.getter();

  v1[4] = v16;

  dispatch thunk of __ServiceLocator.renderService.getter();

  sub_100020E58(v23, v24);
  v1[3] = dispatch thunk of __RenderService.device.getter();
  sub_100005070(v23);
  dispatch thunk of __ServiceLocator.eventService.getter();
  sub_100020E58(v22, v22[3]);
  type metadata accessor for EngineRenderEvent();
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  swift_allocObject();
  swift_weakInit();
  EventService.subscribe<A>(to:on:componentType:_:)();

  sub_10000CAAC(v20, &qword_101A0BFF8);
  swift_beginAccess();
  sub_10002C638(v23, v10, &unk_101A08DE0);
  swift_endAccess();
  sub_100005070(v22);
  dispatch thunk of __ServiceLocator.coreServiceLocator.getter();
  result = REServiceLocatorGetECSService();
  if (result)
  {
    REECSManagerAddDefaultSystems();
    (*(v18 + 8))(v8, v19);
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1009FB240()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1009FB298();
  }

  return result;
}

uint64_t sub_1009FB298()
{
  v1 = v0;
  v2 = type metadata accessor for NSFastEnumerationIterator();
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of __ServiceLocator.coreServiceLocator.getter();
  result = REServiceLocatorGetEngine();
  if (!result)
  {
    return result;
  }

  result = REServiceLocatorGetRenderManager();
  if (!result || !*(v0 + 96))
  {
    return result;
  }

  v36 = *(v0 + 96);
  v37 = result;
  v6 = *(v0 + 88);
  v7 = __CFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    goto LABEL_20;
  }

  *(v0 + 88) = v8;
  REEngineGetCurrentTime();
  RenderFrameSettings = RERenderManagerCreateRenderFrameSettings();
  RERenderFrameSettingsSetTotalTime();
  v10 = [*(v0 + 16) objectEnumerator];
  if (!v10)
  {
    v10 = [objc_allocWithZone(NSEnumerator) init];
  }

  NSEnumerator.makeIterator()();

  NSFastEnumerationIterator.next()();
  if (!v57)
  {
LABEL_15:
    (*(v38 + 8))(v4, v39);
    RERenderManagerCreateRenderFrameWorkload();
    RERenderFrameWorkloadConfigure();
    RERenderGraphEmitterAssetExecute();
    RERenderFrameWorkloadCommit();
    RERelease();
    return RERelease();
  }

  while (1)
  {
    sub_10000BF3C(&v56, v55);
    _s6CoreREO19SceneRenderingStateCMa(0);
    if (!swift_dynamicCast())
    {
      (*(v38 + 8))(v4, v39);
      return RERelease();
    }

    v11 = v46;
    if (*(v46 + 256) == 1)
    {
      break;
    }

LABEL_10:
    NSFastEnumerationIterator.next()();
    if (!v57)
    {
      goto LABEL_15;
    }
  }

  v12 = v1;
  v45 = *(v1 + 88);
  v13 = *(v46 + 16);
  v14 = v13 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_configuration;
  v15 = *(v13 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_configuration);
  v44 = *(v13 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_configuration + 16);
  v16 = *(v13 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_configuration + 64);
  v17 = *(v13 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_sceneDescription);
  v42 = *(v13 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_sceneDescription + 16);
  v43 = v17;
  v18 = *(v13 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_sceneDescription + 32);
  v19 = *(v13 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_sceneDescription + 40);
  v20 = RenderFrameSettings;
  v21 = *(v13 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_sceneDescription + 48);

  v22 = *(v14 + 32);
  v40 = *(v14 + 48);
  v41 = v22;
  v23 = sub_100CEE500();
  LODWORD(v46) = v15;
  v47 = v44;
  v48 = v41;
  v49 = v40;
  *&v50 = v16;
  v51 = v43;
  v52 = v42;
  *&v53 = v18;
  BYTE8(v53) = v19;
  *&v54 = v21;
  *(&v54 + 1) = v23;
  RenderFrameSettings = v20;
  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v46, v24);
  v25 = *(v11 + 240);
  v55[7] = *(v11 + 224);
  v55[8] = v25;
  v26 = *(v11 + 208);
  v27 = *(v11 + 160);
  v55[2] = *(v11 + 144);
  v55[3] = v27;
  v28 = *(v11 + 176);
  v55[5] = *(v11 + 192);
  v55[6] = v26;
  v55[4] = v28;
  v29 = *(v11 + 128);
  v55[0] = *(v11 + 112);
  v55[1] = v29;
  v30 = v47;
  *(v11 + 112) = v46;
  *(v11 + 128) = v30;
  v31 = v53;
  *(v11 + 208) = v52;
  *(v11 + 224) = v31;
  *(v11 + 240) = v54;
  v32 = v49;
  *(v11 + 144) = v48;
  *(v11 + 160) = v32;
  v33 = v51;
  *(v11 + 176) = v50;
  *(v11 + 192) = v33;
  sub_10000CAAC(v55, &qword_101A0C000);
  result = RERenderFrameSettingsAddGpuSignalEvent();
  v34 = *(v11 + 264);
  v7 = __CFADD__(v34, 1);
  v35 = v34 + 1;
  if (!v7)
  {
    *(v11 + 264) = v35;

    v1 = v12;
    goto LABEL_10;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void sub_1009FB64C()
{
  v0 = [objc_opt_self() currentCapabilities];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 isMetalCapable];

    byte_101AD6F08 = v2 ^ 1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1009FB6B4(uint64_t a1, uint64_t a2)
{
  if (sub_1009FC76C(a1, a2, v2))
  {
    v5 = 1;
    while (1)
    {

      v6._countAndFlagsBits = 45;
      v6._object = 0xE100000000000000;
      String.append(_:)(v6);
      v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v7);

      if ((sub_1009FC76C(a1, a2, v2) & 1) == 0)
      {
        break;
      }

      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
  }

  return a1;
}

void sub_1009FB7AC()
{
  if (*(v0 + 96))
  {
    v1 = objc_opt_self();
    v2 = [v1 _atomicIncrementAssertCount];
    v26[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v26);
    StaticString.description.getter();
    v3 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    v5 = [v4 lastPathComponent];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v2;
    v11 = sub_1005CF000();
    *(inited + 96) = v11;
    v12 = sub_10006217C(&qword_1019F52E0, sub_1005CF000);
    *(inited + 104) = v12;
    *(inited + 72) = v3;
    *(inited + 136) = &type metadata for String;
    v13 = sub_1000053B0();
    *(inited + 112) = v6;
    *(inited + 120) = v8;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v13;
    *(inited + 152) = 257;
    v14 = v26[0];
    *(inited + 216) = v11;
    *(inited + 224) = v12;
    *(inited + 192) = v14;
    v15 = v3;
    v16 = v14;
    v17 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v17, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v18, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v19 = swift_allocObject();
    v19[2] = 8;
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
    v20 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    [v1 handleFailureInFunction:v21 file:v22 lineNumber:257 isFatal:0 format:v23 args:v20];
  }

  else
  {
    dispatch thunk of __ServiceLocator.assetService.getter();
    sub_100020E58(v26, v27);
    dispatch thunk of __REAssetService.__handle.getter();
    sub_100005070(v26);
    AssetHandle = REAssetManagerCreateAssetHandle();
    if (AssetHandle)
    {
      v25 = AssetHandle;
      REAssetHandleLoadNow();
      dispatch thunk of __ServiceLocator.renderService.getter();
      sub_100020E58(v26, v27);
      dispatch thunk of __RenderService.__coreRenderManager.getter();
      sub_100005070(v26);
      RERenderGraphEmitterAssetRegisterProviders();
      *(v0 + 96) = v25;
    }

    else
    {
      __break(1u);
    }
  }
}