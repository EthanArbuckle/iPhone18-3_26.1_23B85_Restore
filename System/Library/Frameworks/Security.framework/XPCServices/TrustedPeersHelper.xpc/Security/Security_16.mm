uint64_t sub_1001B4C3C(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a2)
  {
    swift_getErrorValue();
    v5 = sub_1001ADD74(v8, v9);
    if (!isa)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = 0;
  if (a1)
  {
LABEL_3:
    sub_10000200C(0, &unk_10029D6C0, TPPBPeerStableInfoSetting_ptr);
    isa = sub_1002168C4().super.isa;
  }

LABEL_4:
  if (v5)
  {
    v6 = sub_100216144();
  }

  else
  {
    v6 = 0;
  }

  (*(a3 + 16))(a3, isa, v6);
}

uint64_t sub_1001B4D20(void *a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v47 = swift_allocObject();
  *(v47 + 16) = a4;
  _Block_copy(a4);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v7 = sub_100216774();
  sub_100002648(v7, qword_10029DBB0);
  v8 = a1;
  v9 = sub_100216754();
  v10 = sub_100216C54();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = a3;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v48[0] = v13;
    *v12 = 136446210;
    v14 = v8;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v15 = sub_100216994();
    v17 = sub_100005FB0(v15, v16, v48);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "Dumping for %{public}s", v12, 0xCu);
    sub_100006128(v13);

    a3 = v11;
  }

  v18 = objc_autoreleasePoolPush();
  if (a1)
  {
    v46 = v18;
    v19 = *(a3 + 24);
    v20 = v8;
    v21 = [v20 cloudkitContainerName];
    sub_100216974();

    v22 = [v20 octagonContextID];
    sub_100216974();

    v23 = *(v19 + 16);
    __chkstk_darwin(v24, v25);
    type metadata accessor for Container();
    sub_100216CD4();

    v41 = v48[0];
    v42 = swift_allocObject();
    v42[2] = a3;
    v42[3] = v41;
    v42[4] = sub_1001D1C78;
    v42[5] = v47;

    v43 = v41;

    sub_10011B130(a2, sub_1001D18D0, v42);

    objc_autoreleasePoolPop(v46);
  }

  else
  {
    v26 = v18;
    sub_1000561D0();
    swift_allocError();
    *v27 = xmmword_100226AD0;
    *(v27 + 16) = 13;
    swift_willThrow();
    objc_autoreleasePoolPop(v26);
    v28 = v8;
    swift_errorRetain();
    v29 = sub_100216754();
    v30 = sub_100216C74();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 136446466;
      v48[0] = v32;
      v33 = v28;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v34 = sub_100216994();
      v36 = sub_100005FB0(v34, v35, v48);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v37 = sub_100216994();
      v39 = sub_100005FB0(v37, v38, v48);

      *(v31 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v29, v30, "Dumping failed for %{public}s: %{public}s", v31, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v48[2], v48[3]);
    v40 = sub_100216144();
    (a4)[2](a4, v40);
  }
}

uint64_t sub_1001B5284(void *a1, uint64_t a2, void (**a3)(const void *, void, void *))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v49 = a3;
  _Block_copy(a3);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v7 = sub_100216774();
  sub_100002648(v7, qword_10029DBB0);
  v8 = a1;
  v9 = sub_100216754();
  v10 = sub_100216C54();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136446210;
    v51 = a1;
    v13 = v8;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v14 = sub_100216994();
    v16 = sub_100005FB0(v14, v15, aBlock);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "honorIDMSListChanges for %{public}s", v11, 0xCu);
    sub_100006128(v12);
  }

  if (a1)
  {
    v48 = v6;
    v17 = *(a2 + 24);
    v18 = v8;
    v19 = [v18 cloudkitContainerName];
    sub_100216974();

    v20 = [v18 octagonContextID];
    sub_100216974();

    v47 = a2;
    v21 = *(v17 + 16);
    __chkstk_darwin(v22, v23);
    type metadata accessor for Container();
    sub_100216CD4();

    v38 = aBlock[0];
    v39 = swift_allocObject();
    v39[2] = v47;
    v39[3] = v38;
    v39[4] = sub_1001D1BA8;
    v39[5] = v48;
    v40 = *&v38[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v41 = swift_allocObject();
    v41[2] = sub_1001D1844;
    v41[3] = v39;
    v41[4] = v38;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_1001D1850;
    *(v42 + 24) = v41;
    aBlock[4] = sub_1000574B4;
    aBlock[5] = v42;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_1002889E8;
    v43 = _Block_copy(aBlock);
    v44 = v38;

    [v40 performBlockAndWait:v43];
    _Block_release(v43);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v24 = swift_allocError();
    *v25 = xmmword_100226AD0;
    *(v25 + 16) = 13;
    swift_willThrow();
    v26 = v8;
    swift_errorRetain();
    v27 = sub_100216754();
    v28 = sub_100216C74();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v29 = 136446466;
      v51 = 0;
      v30 = v26;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v31 = sub_100216994();
      v33 = sub_100005FB0(v31, v32, aBlock);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2082;
      v51 = v24;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v34 = sub_100216994();
      v36 = sub_100005FB0(v34, v35, aBlock);

      *(v29 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v27, v28, "honorIDMSListChanges failed for %{public}s: %{public}s", v29, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v52, v53);
    v37 = sub_100216144();
    v49[2](v49, 0, v37);
  }

  return result;
}

uint64_t sub_1001B58F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a5;
  _Block_copy(a5);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v9 = sub_100216774();
  sub_100002648(v9, qword_10029DBB0);
  v10 = a1;
  v11 = sub_100216754();
  v12 = sub_100216C54();

  v46 = v8;
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = a4;
    v15 = swift_slowAlloc();
    v47[0] = v15;
    *v13 = 136446210;
    v16 = v10;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v17 = sub_100216994();
    v19 = sub_100005FB0(v17, v18, v47);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "Finding bottleID for %{public}s", v13, 0xCu);
    sub_100006128(v15);
    a4 = v14;
  }

  if (a1)
  {
    v20 = *(a4 + 24);
    v21 = v10;
    v22 = [v21 cloudkitContainerName];
    sub_100216974();

    v23 = [v21 octagonContextID];
    sub_100216974();

    v24 = *(v20 + 16);
    __chkstk_darwin(v25, v26);
    type metadata accessor for Container();
    sub_100216CD4();

    v40 = v47[0];
    v41 = swift_allocObject();
    v41[2] = a4;
    v41[3] = v40;
    v41[4] = sub_1001D1830;
    v41[5] = v46;

    v42 = v40;

    sub_1000557C8(a2, a3, sub_1001D1838, v41);
  }

  else
  {
    sub_1000561D0();
    swift_allocError();
    *v27 = xmmword_100226AD0;
    *(v27 + 16) = 13;
    swift_willThrow();
    v28 = v10;
    swift_errorRetain();
    v29 = sub_100216754();
    v30 = sub_100216C74();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v47[0] = swift_slowAlloc();
      *v31 = 136446466;
      v32 = v28;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v33 = sub_100216994();
      v35 = sub_100005FB0(v33, v34, v47);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v36 = sub_100216994();
      v38 = sub_100005FB0(v36, v37, v47);

      *(v31 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v29, v30, "Finding bottleID failed for %{public}s: %{public}s", v31, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v47[2], v47[3]);
    v39 = sub_100216144();
    (a5)[2](a5, 0, v39);
  }
}

uint64_t sub_1001B5E48(void *a1, uint64_t a2, void (**a3)(const void *, void, void *))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v42 = a3;
  _Block_copy(a3);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v7 = sub_100216774();
  sub_100002648(v7, qword_10029DBB0);
  v8 = a1;
  v9 = sub_100216754();
  v10 = sub_100216C54();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v43[0] = v12;
    *v11 = 136446210;
    v13 = v8;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v14 = sub_100216994();
    v16 = sub_100005FB0(v14, v15, v43);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "Finding deviceNames for %{public}s", v11, 0xCu);
    sub_100006128(v12);
  }

  if (a1)
  {
    v41 = v6;
    v17 = *(a2 + 24);
    v18 = v8;
    v19 = [v18 cloudkitContainerName];
    sub_100216974();

    v20 = [v18 octagonContextID];
    sub_100216974();

    v21 = *(v17 + 16);
    __chkstk_darwin(v22, v23);
    type metadata accessor for Container();
    sub_100216CD4();

    v37 = v43[0];
    v38 = swift_allocObject();
    v38[2] = a2;
    v38[3] = v37;
    v38[4] = sub_1001D181C;
    v38[5] = v41;

    v39 = v37;

    sub_10011E6F8(sub_1001D1824, v38);
  }

  else
  {
    sub_1000561D0();
    swift_allocError();
    *v24 = xmmword_100226AD0;
    *(v24 + 16) = 13;
    swift_willThrow();
    v25 = v8;
    swift_errorRetain();
    v26 = sub_100216754();
    v27 = sub_100216C74();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v43[0] = swift_slowAlloc();
      *v28 = 136446466;
      v29 = v25;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v30 = sub_100216994();
      v32 = sub_100005FB0(v30, v31, v43);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v33 = sub_100216994();
      v35 = sub_100005FB0(v33, v34, v43);

      *(v28 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v26, v27, "Finding deviceNames failed for %{public}s: %{public}s", v28, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v43[2], v43[3]);
    v36 = sub_100216144();
    v42[2](v42, 0, v36);
  }
}

uint64_t sub_1001B6380(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  if (a1)
  {
    v46 = v6;
    v7 = *(a2 + 24);
    _Block_copy(a3);
    v8 = a1;
    v9 = [v8 cloudkitContainerName];
    sub_100216974();

    v10 = [v8 octagonContextID];
    sub_100216974();

    v11 = *(v7 + 16);
    __chkstk_darwin(v12, v13);
    type metadata accessor for Container();
    sub_100216CD4();

    v33 = aBlock[0];
    v34 = swift_allocObject();
    *(v34 + 16) = sub_1001D0904;
    *(v34 + 24) = v46;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v35 = v33;
    v36 = sub_10019C8E0(v35, 0xD000000000000013, 0x800000010023CDC0);

    v37 = swift_allocObject();
    v37[2] = v36;
    v37[3] = sub_1001D1B98;
    v37[4] = v34;
    v38 = *&v35[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v39 = swift_allocObject();
    v39[2] = v35;
    v39[3] = sub_1001D1804;
    v39[4] = v37;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_1001D1810;
    *(v40 + 24) = v39;
    aBlock[4] = sub_1000574B4;
    aBlock[5] = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100288880;
    v41 = _Block_copy(aBlock);
    v42 = v35;

    [v38 performBlockAndWait:v41];

    _Block_release(v41);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v14 = swift_allocError();
    *v15 = xmmword_100226AD0;
    *(v15 + 16) = 13;
    swift_willThrow();
    _Block_copy(a3);
    if (qword_100297538 != -1)
    {
      swift_once();
    }

    v16 = sub_100216774();
    sub_100002648(v16, qword_10029DBB0);
    v17 = 0;
    swift_errorRetain();
    v18 = sub_100216754();
    v19 = sub_100216C74();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v20 = 136446466;
      v48 = 0;
      v21 = v17;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v22 = sub_100216994();
      v24 = sub_100005FB0(v22, v23, aBlock);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      v48 = v14;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v25 = sub_100216994();
      v27 = sub_100005FB0(v25, v26, aBlock);

      *(v20 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v18, v19, "Trust status failed for %{public}s: %{public}s", v20, 0x16u);
      swift_arrayDestroy();
    }

    sub_100019974(_swiftEmptyArrayStorage);
    sub_100019974(_swiftEmptyArrayStorage);
    v28 = objc_allocWithZone(TrustedPeersHelperEgoPeerStatus);
    sub_10000200C(0, &qword_10029D8A8, NSNumber_ptr);
    isa = sub_1002168C4().super.isa;

    v30 = sub_1002168C4().super.isa;

    LOBYTE(v45) = 0;
    v31 = [v28 initWithEgoPeerID:0 egoPeerMachineID:0 status:32 viablePeerCountsByModelID:isa peerCountsByMachineID:v30 isExcluded:0 isLocked:v45];

    swift_getErrorValue();
    sub_1001ADD74(v49, v50);
    v32 = sub_100216144();
    (a3)[2](a3, v31, v32);
  }

  return result;
}

uint64_t sub_1001B6A58(void *a1, uint64_t a2, const void *a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v42 = a3;
  _Block_copy(a3);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v6 = sub_100216774();
  v7 = sub_100002648(v6, qword_10029DBB0);
  v8 = a1;
  v9 = sub_100216754();
  v10 = sub_100216C54();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v43[0] = v12;
    *v11 = 136446210;
    v13 = v8;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v14 = sub_100216994();
    v16 = sub_100005FB0(v14, v15, v43);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "Fetch Trust State for %{public}s", v11, 0xCu);
    sub_100006128(v12);
  }

  if (a1)
  {
    v40 = v5;
    v17 = *(a2 + 24);
    v18 = v8;
    v19 = [v18 cloudkitContainerName];
    sub_100216974();

    v20 = [v18 octagonContextID];
    sub_100216974();

    v21 = *(v17 + 16);
    __chkstk_darwin(v22, v23);
    type metadata accessor for Container();
    sub_100216CD4();

    v37 = v43[0];
    v38 = swift_allocObject();
    *(v38 + 16) = sub_1001D17DC;
    *(v38 + 24) = v40;

    sub_100118CDC(sub_1001D17E4, v38);
  }

  else
  {
    sub_1000561D0();
    swift_allocError();
    *v24 = xmmword_100226AD0;
    *(v24 + 16) = 13;
    swift_willThrow();
    v25 = v8;
    swift_errorRetain();
    v26 = sub_100216754();
    v27 = sub_100216C74();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v43[0] = swift_slowAlloc();
      *v28 = 136446466;
      v29 = v25;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v30 = sub_100216994();
      v32 = sub_100005FB0(v30, v31, v43);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v33 = sub_100216994();
      v35 = sub_100005FB0(v33, v34, v43);

      *(v28 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v26, v27, "Fetch Trust State failed for %{public}s: %{public}s", v28, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v43[2], v43[3]);
    v36 = sub_100216144();
    (*(v42 + 2))(v42, 0, 0, v36);
  }
}

uint64_t sub_1001B6F80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, char a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, char a18, uint64_t a19, void (**a20)(void, void))
{
  v23 = swift_allocObject();
  *(v23 + 16) = a20;
  _Block_copy(a20);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v24 = sub_100216774();
  sub_100002648(v24, qword_10029DBB0);
  v25 = a1;
  v26 = sub_100216754();
  v27 = sub_100216C54();

  v93 = a6;
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = v23;
    v30 = a4;
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v28 = 136446210;
    v98[0] = a1;
    v32 = v25;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v33 = sub_100216994();
    v35 = sub_100005FB0(v33, v34, aBlock);

    *(v28 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v26, v27, "Resetting for %{public}s", v28, 0xCu);
    sub_100006128(v31);
    a4 = v30;
    v23 = v29;
  }

  if (a1)
  {
    v94 = v23;
    v36 = *(a19 + 24);
    v37 = v25;
    v38 = [v37 cloudkitContainerName];
    sub_100216974();

    v39 = [v37 octagonContextID];
    sub_100216974();
    v41 = v40;

    v42 = *(v36 + 16);
    __chkstk_darwin(v43, v44);
    v85 = v41;
    type metadata accessor for Container();
    sub_100216CD4();

    v60 = aBlock[0];
    v61 = swift_allocObject();
    v61[2] = a19;
    v61[3] = v60;
    v95 = v61;
    v61[4] = sub_1001D1C78;
    v61[5] = v94;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();
    v62 = v60;

    v96 = sub_10019C8E0(v62, 0xD0000000000000BBLL, 0x800000010023CD00);
    v86 = v62;

    sub_10001148C(&qword_10029DEB8, &qword_100226B48);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10021D420;
    *(inited + 32) = sub_100216974();
    *(inited + 40) = v64;
    *(inited + 48) = sub_100216B84();
    *(inited + 56) = sub_100216974();
    *(inited + 64) = v65;
    *(inited + 72) = sub_100216B84();
    v66 = sub_100019974(inited);
    swift_setDeallocating();
    sub_10001148C(&qword_10029DEC0, &unk_100226B50);
    swift_arrayDestroy();
    sub_1001AD230(v66);

    v67 = kSecurityRTCEventNameResetTPH;
    sub_1001D0674();
    v69 = v68;
    v70.super.isa = sub_1002168C4().super.isa;

    if (a13)
    {
      v71 = sub_100216964();
    }

    else
    {
      v71 = 0;
    }

    v72 = a17;
    if (a15)
    {
      v73 = sub_100216964();
    }

    else
    {
      v73 = 0;
    }

    v74 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
    if (a17)
    {
      v72 = sub_100216964();
    }

    LOBYTE(v85) = a18 & 1;
    v75 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:v70.super.isa altDSID:v71 flowID:v73 deviceSessionID:v72 eventName:v67 testsAreEnabled:v69 canSendMetrics:v85 category:v74];

    v76 = swift_allocObject();
    v76[2] = v75;
    v76[3] = v96;
    v76[4] = sub_1001D1708;
    v76[5] = v95;
    LODWORD(v98[0]) = 0;
    if (a11 == 1)
    {
      v77 = a10;
      if (a8)
      {
        if (a9)
        {
          v78 = 11;
        }

        else
        {
          v78 = 9;
        }

        if (a10)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (a9)
        {
          v78 = 10;
        }

        else
        {
          v78 = 8;
        }

        if (a10)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      v77 = a10;
      if (a11 != 2)
      {
        goto LABEL_38;
      }

      if (a8)
      {
        if (a9)
        {
          v78 = 19;
        }

        else
        {
          v78 = 17;
        }

        if (a10)
        {
LABEL_25:
          v79 = 4;
LABEL_37:
          LODWORD(v98[0]) = v78 | v79;
LABEL_38:
          v88 = *&v86[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
          v80 = swift_allocObject();
          *(v80 + 16) = a2;
          *(v80 + 24) = a3;
          *(v80 + 32) = a4;
          *(v80 + 40) = a5;
          *(v80 + 48) = v93;
          *(v80 + 56) = a7 & 1;
          *(v80 + 64) = v98;
          *(v80 + 72) = v77 & 1;
          *(v80 + 80) = v86;
          *(v80 + 88) = sub_1001D1788;
          *(v80 + 96) = v76;
          v81 = swift_allocObject();
          *(v81 + 16) = sub_1001D1794;
          *(v81 + 24) = v80;
          aBlock[4] = sub_1000574B4;
          aBlock[5] = v81;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100109050;
          aBlock[3] = &unk_100288740;
          v82 = _Block_copy(aBlock);

          v83 = v86;
          v84 = v75;

          [v88 performBlockAndWait:v82];

          _Block_release(v82);
          LOBYTE(v82) = swift_isEscapingClosureAtFileLocation();

          if (v82)
          {
            __break(1u);
          }

          return result;
        }
      }

      else
      {
        if (a9)
        {
          v78 = 18;
        }

        else
        {
          v78 = 16;
        }

        if (a10)
        {
          goto LABEL_25;
        }
      }
    }

    v79 = 0;
    goto LABEL_37;
  }

  sub_1000561D0();
  v45 = swift_allocError();
  *v46 = xmmword_100226AD0;
  *(v46 + 16) = 13;
  swift_willThrow();
  v47 = v25;
  swift_errorRetain();
  v48 = sub_100216754();
  v49 = sub_100216C74();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v50 = 136446466;
    v98[0] = 0;
    v51 = v47;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v52 = sub_100216994();
    v54 = sub_100005FB0(v52, v53, aBlock);

    *(v50 + 4) = v54;
    *(v50 + 12) = 2082;
    v98[0] = v45;
    swift_errorRetain();
    sub_10001148C(&unk_10029D560, qword_10021D450);
    v55 = sub_100216994();
    v57 = sub_100005FB0(v55, v56, aBlock);

    *(v50 + 14) = v57;
    _os_log_impl(&_mh_execute_header, v48, v49, "Resetting failed for %{public}s: %{public}s", v50, 0x16u);
    swift_arrayDestroy();
  }

  swift_getErrorValue();
  sub_1001ADD74(v98[2], v98[3]);
  v58 = sub_100216144();
  (a20)[2](a20, v58);
}

uint64_t sub_1001B7A64(void *a1, char a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, void (**a14)(void, void))
{
  v17 = swift_allocObject();
  *(v17 + 16) = a14;
  _Block_copy(a14);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v18 = sub_100216774();
  sub_100002648(v18, qword_10029DBB0);
  v19 = a1;
  v20 = sub_100216754();
  v21 = sub_100216C54();

  v79 = a5;
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = v17;
    v24 = a4;
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v22 = 136446210;
    v84 = a1;
    v26 = v19;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v27 = sub_100216994();
    v29 = sub_100005FB0(v27, v28, aBlock);

    *(v22 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v20, v21, "performCKServerUnreadableDataRemoval for %{public}s", v22, 0xCu);
    sub_100006128(v25);
    a4 = v24;
    v17 = v23;
  }

  if (a1)
  {
    v77 = a4;
    v30 = *(a13 + 24);
    v31 = v19;
    v32 = [v31 cloudkitContainerName];
    sub_100216974();

    v33 = [v31 octagonContextID];
    sub_100216974();
    v35 = v34;

    v36 = *(v30 + 16);
    __chkstk_darwin(v37, v38);
    v76 = v35;
    type metadata accessor for Container();
    sub_100216CD4();
    v54 = a9;

    v55 = aBlock[0];
    v56 = swift_allocObject();
    v56[2] = a13;
    v56[3] = v55;
    v56[4] = sub_1001D1C78;
    v56[5] = v17;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();
    v57 = v55;

    v82 = sub_10019C8E0(v57, 0xD00000000000008ELL, 0x800000010023CC50);

    sub_10001148C(&qword_10029DEB8, &qword_100226B48);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10021D420;
    *(inited + 32) = sub_100216974();
    *(inited + 40) = v59;
    *(inited + 48) = sub_100216B84();
    *(inited + 56) = sub_100216974();
    *(inited + 64) = v60;
    *(inited + 72) = sub_100216B84();
    v61 = sub_100019974(inited);
    swift_setDeallocating();
    sub_10001148C(&qword_10029DEC0, &unk_100226B50);
    swift_arrayDestroy();
    sub_1001AD230(v61);

    v62 = kSecurityRTCEventNamePerformCKServerUnreadableDataRemovalTPH;
    sub_1001D0674();
    v81 = v63;
    v64.super.isa = sub_1002168C4().super.isa;

    if (a7)
    {
      v65 = sub_100216964();
    }

    else
    {
      v65 = 0;
    }

    if (a9)
    {
      v54 = sub_100216964();
    }

    v66 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
    if (a11)
    {
      v67 = sub_100216964();
    }

    else
    {
      v67 = 0;
    }

    LOBYTE(v76) = a12 & 1;
    v68 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:v64.super.isa altDSID:v65 flowID:v54 deviceSessionID:v67 eventName:v62 testsAreEnabled:v81 canSendMetrics:v76 category:v66];

    v69 = swift_allocObject();
    v69[2] = v68;
    v69[3] = v82;
    v69[4] = sub_1001D16D8;
    v69[5] = v56;
    v70 = *&v57[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v71 = swift_allocObject();
    *(v71 + 16) = a2 & 1;
    *(v71 + 17) = v77 & 1;
    *(v71 + 18) = v79 & 1;
    *(v71 + 24) = v57;
    *(v71 + 32) = sub_1001D16E4;
    *(v71 + 40) = v69;
    v72 = swift_allocObject();
    *(v72 + 16) = sub_1001D16F0;
    *(v72 + 24) = v71;
    aBlock[4] = sub_1000574B4;
    aBlock[5] = v72;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100288650;
    v73 = _Block_copy(aBlock);
    v74 = v57;
    v75 = v68;

    [v70 performBlockAndWait:v73];

    _Block_release(v73);
    LOBYTE(v73) = swift_isEscapingClosureAtFileLocation();

    if (v73)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v39 = swift_allocError();
    *v40 = xmmword_100226AD0;
    *(v40 + 16) = 13;
    swift_willThrow();
    v41 = v19;
    swift_errorRetain();
    v42 = sub_100216754();
    v43 = sub_100216C74();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v44 = 136446466;
      v84 = 0;
      v45 = v41;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v46 = sub_100216994();
      v48 = sub_100005FB0(v46, v47, aBlock);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2082;
      v84 = v39;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v49 = sub_100216994();
      v51 = sub_100005FB0(v49, v50, aBlock);

      *(v44 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v42, v43, "performCKServerUnreadableDataRemoval failed for %{public}s: %{public}s", v44, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v85, v86);
    v52 = sub_100216144();
    (a14)[2](a14, v52);
  }

  return result;
}

uint64_t sub_1001B843C(void *a1, uint64_t a2, void (**a3)(const void *, void *))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v51 = a3;
  _Block_copy(a3);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v7 = sub_100216774();
  sub_100002648(v7, qword_10029DBB0);
  v8 = a1;
  v9 = sub_100216754();
  v10 = sub_100216C54();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136446210;
    v53 = a1;
    v13 = v8;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v14 = sub_100216994();
    v16 = sub_100005FB0(v14, v15, aBlock);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "Performing local reset for %{public}s", v11, 0xCu);
    sub_100006128(v12);
  }

  if (a1)
  {
    v50 = v6;
    v17 = *(a2 + 24);
    v18 = v8;
    v19 = [v18 cloudkitContainerName];
    sub_100216974();

    v20 = [v18 octagonContextID];
    sub_100216974();

    v21 = *(v17 + 16);
    __chkstk_darwin(v22, v23);
    type metadata accessor for Container();
    sub_100216CD4();

    v38 = aBlock[0];
    v39 = swift_allocObject();
    v39[2] = a2;
    v39[3] = v38;
    v39[4] = sub_1001D1C78;
    v39[5] = v50;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v40 = v38;

    v41 = sub_10019C8E0(v40, 0xD000000000000012, 0x800000010023CC30);
    v42 = swift_allocObject();
    v42[2] = v41;
    v42[3] = sub_1001D1684;
    v42[4] = v39;
    v43 = *&v40[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v44 = swift_allocObject();
    v44[2] = v40;
    v44[3] = sub_1001D16C0;
    v44[4] = v42;
    v45 = swift_allocObject();
    *(v45 + 16) = sub_1001D16CC;
    *(v45 + 24) = v44;
    aBlock[4] = sub_1000574B4;
    aBlock[5] = v45;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100288560;
    v46 = _Block_copy(aBlock);
    v47 = v40;

    [v43 performBlockAndWait:v46];

    _Block_release(v46);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v24 = swift_allocError();
    *v25 = xmmword_100226AD0;
    *(v25 + 16) = 13;
    swift_willThrow();
    v26 = v8;
    swift_errorRetain();
    v27 = sub_100216754();
    v28 = sub_100216C74();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v29 = 136446466;
      v53 = 0;
      v30 = v26;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v31 = sub_100216994();
      v33 = sub_100005FB0(v31, v32, aBlock);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2082;
      v53 = v24;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v34 = sub_100216994();
      v36 = sub_100005FB0(v34, v35, aBlock);

      *(v29 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v27, v28, "Local reset failed for %{public}s: %{public}s", v29, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v54, v55);
    v37 = sub_100216144();
    v51[2](v51, v37);
  }

  return result;
}

uint64_t sub_1001B8B3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void (**a20)(void, void, void))
{
  v25 = swift_allocObject();
  *(v25 + 16) = a20;
  _Block_copy(a20);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v89 = sub_100216774();
  sub_100002648(v89, qword_10029DBB0);
  v26 = a1;

  v27 = sub_100216754();
  v28 = sub_100216C54();

  v96 = a1;
  v92 = a7;
  v93 = a2;
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v29 = 136446466;
    v103[0] = a1;
    v30 = v26;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v31 = sub_100216994();
    v33 = sub_100005FB0(v31, v32, &aBlock);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2082;
    v34 = sub_100216BC4();
    v36 = sub_100005FB0(v34, v35, &aBlock);

    *(v29 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v27, v28, "Setting allowed machineIDs for %{public}s to %{public}s", v29, 0x16u);
    swift_arrayDestroy();
  }

  if (a1)
  {
    v87 = a4;
    v88 = a5;
    v37 = *(a19 + 24);
    v38 = v26;
    v39 = [v38 cloudkitContainerName];
    sub_100216974();

    v40 = [v38 octagonContextID];
    sub_100216974();

    v41 = *(v37 + 16);
    __chkstk_darwin(v42, v43);
    type metadata accessor for Container();
    sub_100216CD4();

    v59 = aBlock;
    v60 = swift_allocObject();
    v60[2] = a19;
    v60[3] = v59;
    v60[4] = sub_1001D1BB0;
    v60[5] = v25;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();
    v61 = v59;

    v62 = sub_10019C8E0(v61, 0xD0000000000000E7, 0x800000010023DAF0);
    v86 = v61;

    v63 = swift_allocObject();
    v63[2] = v62;
    v63[3] = sub_1001D160C;
    v85 = v63;
    v63[4] = v60;
    v64 = qword_100297540;

    if (v64 != -1)
    {
      swift_once();
    }

    v65 = a17;
    v66 = a15;
    v67 = a11;
    sub_100002648(v89, qword_10029E728);

    v68 = sub_100216754();
    v69 = sub_100216C94();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v103[0] = swift_slowAlloc();
      *v70 = 136446466;
      v71 = sub_100216BC4();
      v73 = sub_100005FB0(v71, v72, v103);

      *(v70 + 4) = v73;
      *(v70 + 12) = 2082;
      v74 = v92;
      aBlock = v92;
      v98 = a8;

      sub_10001148C(&qword_10029D698, &unk_100226590);
      v75 = sub_100216994();
      v77 = sub_100005FB0(v75, v76, v103);
      v65 = a17;

      *(v70 + 14) = v77;
      v66 = a15;
      _os_log_impl(&_mh_execute_header, v68, v69, "Setting allowed machine IDs: %{public}s, version %{public}s", v70, 0x16u);
      swift_arrayDestroy();

      v67 = a11;

      v78 = a8;
      v79 = v93;
    }

    else
    {

      v78 = a8;
      v79 = v93;
      v74 = v92;
    }

    v90 = *&v86[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v80 = swift_allocObject();
    *(v80 + 16) = v86;
    *(v80 + 24) = a3;
    *(v80 + 32) = v87;
    *(v80 + 40) = v88;
    *(v80 + 48) = v79;
    *(v80 + 56) = v66;
    *(v80 + 64) = a16;
    *(v80 + 72) = a13;
    *(v80 + 80) = a14;
    *(v80 + 88) = a9;
    *(v80 + 96) = a10;
    *(v80 + 104) = v67;
    *(v80 + 112) = a12;
    *(v80 + 120) = v65;
    *(v80 + 128) = a18;
    *(v80 + 136) = a6 & 1;
    *(v80 + 144) = v74;
    *(v80 + 152) = v78;
    *(v80 + 160) = sub_1001D1618;
    *(v80 + 168) = v85;
    v81 = swift_allocObject();
    *(v81 + 16) = sub_1001D1624;
    *(v81 + 24) = v80;
    v101 = sub_1000574B4;
    v102 = v81;
    aBlock = _NSConcreteStackBlock;
    v98 = 1107296256;
    v99 = sub_100109050;
    v100 = &unk_100288470;
    v82 = _Block_copy(&aBlock);

    v83 = v86;

    [v90 performBlockAndWait:v82];

    _Block_release(v82);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v44 = swift_allocError();
    *v45 = xmmword_100226AD0;
    *(v45 + 16) = 13;
    swift_willThrow();
    v46 = v26;
    swift_errorRetain();
    v47 = sub_100216754();
    v48 = sub_100216C74();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v49 = 136446466;
      v103[0] = v96;
      v50 = v46;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v51 = sub_100216994();
      v53 = sub_100005FB0(v51, v52, &aBlock);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2082;
      v103[0] = v44;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v54 = sub_100216994();
      v56 = sub_100005FB0(v54, v55, &aBlock);

      *(v49 + 14) = v56;
      _os_log_impl(&_mh_execute_header, v47, v48, "Setting allowed machineIDs failed for %{public}s: %{public}s", v49, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v103[2], v103[3]);
    v57 = sub_100216144();
    (a20)[2](a20, 0, v57);
  }

  return result;
}

uint64_t sub_1001B9634(void *a1, uint64_t a2, void (**a3)(const void *, void *))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v51 = a3;
  _Block_copy(a3);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v7 = sub_100216774();
  sub_100002648(v7, qword_10029DBB0);
  v8 = a1;
  v9 = sub_100216754();
  v10 = sub_100216C54();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136446210;
    v53 = a1;
    v13 = v8;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v14 = sub_100216994();
    v16 = sub_100005FB0(v14, v15, aBlock);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "Marking MID list as expired for %{public}s", v11, 0xCu);
    sub_100006128(v12);
  }

  if (a1)
  {
    v50 = v6;
    v17 = *(a2 + 24);
    v18 = v8;
    v19 = [v18 cloudkitContainerName];
    sub_100216974();

    v20 = [v18 octagonContextID];
    sub_100216974();

    v21 = *(v17 + 16);
    __chkstk_darwin(v22, v23);
    type metadata accessor for Container();
    sub_100216CD4();

    v38 = aBlock[0];
    v39 = swift_allocObject();
    v39[2] = a2;
    v39[3] = v38;
    v39[4] = sub_1001D1C78;
    v39[5] = v50;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v40 = v38;

    v41 = sub_10019C8E0(v40, 0xD000000000000028, 0x800000010023DAA0);
    v42 = swift_allocObject();
    v42[2] = v41;
    v42[3] = sub_1001D15E8;
    v42[4] = v39;
    v43 = *&v40[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v44 = swift_allocObject();
    v44[2] = v40;
    v44[3] = sub_1001D15F4;
    v44[4] = v42;
    v45 = swift_allocObject();
    *(v45 + 16) = sub_1001D1600;
    *(v45 + 24) = v44;
    aBlock[4] = sub_1000574B4;
    aBlock[5] = v45;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100288380;
    v46 = _Block_copy(aBlock);
    v47 = v40;

    [v43 performBlockAndWait:v46];

    _Block_release(v46);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v24 = swift_allocError();
    *v25 = xmmword_100226AD0;
    *(v25 + 16) = 13;
    swift_willThrow();
    v26 = v8;
    swift_errorRetain();
    v27 = sub_100216754();
    v28 = sub_100216C74();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v29 = 136446466;
      v53 = 0;
      v30 = v26;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v31 = sub_100216994();
      v33 = sub_100005FB0(v31, v32, aBlock);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2082;
      v53 = v24;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v34 = sub_100216994();
      v36 = sub_100005FB0(v34, v35, aBlock);

      *(v29 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v27, v28, "Marking MID list as expired failed for %{public}s: %{public}s", v29, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v54, v55);
    v37 = sub_100216144();
    v51[2](v51, v37);
  }

  return result;
}

uint64_t sub_1001B9D34(void *a1, uint64_t a2, void (**a3)(const void *, void, void *))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v42 = a3;
  _Block_copy(a3);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v7 = sub_100216774();
  sub_100002648(v7, qword_10029DBB0);
  v8 = a1;
  v9 = sub_100216754();
  v10 = sub_100216C54();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v43[0] = v12;
    *v11 = 136446210;
    v13 = v8;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v14 = sub_100216994();
    v16 = sub_100005FB0(v14, v15, v43);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "Fetching allowed machineIDs for %{public}s", v11, 0xCu);
    sub_100006128(v12);
  }

  if (a1)
  {
    v41 = v6;
    v17 = *(a2 + 24);
    v18 = v8;
    v19 = [v18 cloudkitContainerName];
    sub_100216974();

    v20 = [v18 octagonContextID];
    sub_100216974();

    v21 = *(v17 + 16);
    __chkstk_darwin(v22, v23);
    type metadata accessor for Container();
    sub_100216CD4();

    v37 = v43[0];
    v38 = swift_allocObject();
    v38[2] = a2;
    v38[3] = v37;
    v38[4] = sub_1001D15D4;
    v38[5] = v41;

    v39 = v37;

    sub_1001E6708(sub_1001D15DC, v38);
  }

  else
  {
    sub_1000561D0();
    swift_allocError();
    *v24 = xmmword_100226AD0;
    *(v24 + 16) = 13;
    swift_willThrow();
    v25 = v8;
    swift_errorRetain();
    v26 = sub_100216754();
    v27 = sub_100216C74();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v43[0] = swift_slowAlloc();
      *v28 = 136446466;
      v29 = v25;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v30 = sub_100216994();
      v32 = sub_100005FB0(v30, v31, v43);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v33 = sub_100216994();
      v35 = sub_100005FB0(v33, v34, v43);

      *(v28 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v26, v27, "Fetching allowed machineIDs failed for %{public}s: %{public}s", v28, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v43[2], v43[3]);
    v36 = sub_100216144();
    v42[2](v42, 0, v36);
  }
}

uint64_t sub_1001BA26C(void *a1, uint64_t a2, void (**a3)(const void *, void, void *))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v42 = a3;
  _Block_copy(a3);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v6 = sub_100216774();
  v7 = sub_100002648(v6, qword_10029DBB0);
  v8 = a1;
  v9 = sub_100216754();
  v10 = sub_100216C54();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v43[0] = v12;
    *v11 = 136446210;
    v13 = v8;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v14 = sub_100216994();
    v16 = sub_100005FB0(v14, v15, v43);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "retrieving epoch for %{public}s", v11, 0xCu);
    sub_100006128(v12);
  }

  if (a1)
  {
    v40 = v5;
    v17 = *(a2 + 24);
    v18 = v8;
    v19 = [v18 cloudkitContainerName];
    sub_100216974();

    v20 = [v18 octagonContextID];
    sub_100216974();

    v21 = *(v17 + 16);
    __chkstk_darwin(v22, v23);
    type metadata accessor for Container();
    sub_100216CD4();

    v37 = v43[0];
    v38 = swift_allocObject();
    *(v38 + 16) = sub_1001D1BAC;
    *(v38 + 24) = v40;

    sub_100126A3C(sub_1001D15B4, v38);
  }

  else
  {
    sub_1000561D0();
    swift_allocError();
    *v24 = xmmword_100226AD0;
    *(v24 + 16) = 13;
    swift_willThrow();
    v25 = v8;
    swift_errorRetain();
    v26 = sub_100216754();
    v27 = sub_100216C74();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v43[0] = swift_slowAlloc();
      *v28 = 136446466;
      v29 = v25;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v30 = sub_100216994();
      v32 = sub_100005FB0(v30, v31, v43);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v33 = sub_100216994();
      v35 = sub_100005FB0(v33, v34, v43);

      *(v28 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v26, v27, "Epoch retrieval failed for %{public}s: %{public}s", v28, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v43[2], v43[3]);
    v36 = sub_100216144();
    v42[2](v42, 0, v36);
  }
}

void sub_1001BA790(void *a1, void *a2, uint64_t a3, char *a4, void *a5, uint64_t a6, unint64_t a7, char *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, char *a15, void *a16, unint64_t a17, int a18, void *a19, void *a20, void *a21, char *a22, uint64_t a23, unint64_t a24, uint64_t a25, void *aBlock)
{
  v28 = aBlock;
  _Block_copy(aBlock);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v29 = sub_100216774();
  sub_100002648(v29, qword_10029DBB0);
  v30 = a1;
  v31 = sub_100216754();
  v32 = sub_100216C54();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v67[0] = v34;
    *v33 = 136446210;
    v35 = v30;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v36 = sub_100216994();
    v38 = sub_100005FB0(v36, v37, v67);

    *(v33 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v31, v32, "Preparing new identity for %{public}s", v33, 0xCu);
    sub_100006128(v34);
  }

  if (a1)
  {
    v39 = *(a25 + 24);
    v40 = v30;
    v41 = [v40 cloudkitContainerName];
    sub_100216974();

    v42 = [v40 octagonContextID];
    sub_100216974();

    v43 = *(v39 + 16);
    __chkstk_darwin(v44, v45);
    type metadata accessor for Container();
    sub_100216CD4();

    v59 = v67[0];
    v28 = aBlock;
    _Block_copy(aBlock);

    v60 = v59;
    sub_1001A19A8(a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, v60, a25, v60, aBlock);
    _Block_release(aBlock);
  }

  else
  {
    sub_1000561D0();
    swift_allocError();
    *v46 = xmmword_100226AD0;
    *(v46 + 16) = 13;
    swift_willThrow();
    v47 = v30;
    swift_errorRetain();
    v48 = sub_100216754();
    v49 = sub_100216C74();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v67[0] = swift_slowAlloc();
      *v50 = 136446466;
      v51 = v47;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v52 = sub_100216994();
      v54 = sub_100005FB0(v52, v53, v67);

      *(v50 + 4) = v54;
      *(v50 + 12) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v55 = sub_100216994();
      v57 = sub_100005FB0(v55, v56, v67);

      *(v50 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v48, v49, "Prepare failed for %{public}s: %{public}s", v50, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v67[2], v67[3]);
    v58 = sub_100216144();
    (*(aBlock + 2))(aBlock, 0, 0, 0, 0, 0, 0, v58);
  }

  _Block_release(v28);
}

uint64_t sub_1001BAD7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, void *a15, void *a16, uint64_t a17, void (**a18)(void, void, void, void, void, void, void, void, void, void))
{
  v20 = swift_allocObject();
  *(v20 + 16) = a18;
  _Block_copy(a18);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v21 = sub_100216774();
  sub_100002648(v21, qword_10029DBB0);
  v22 = a1;
  v23 = sub_100216754();
  v24 = sub_100216C54();

  v76 = v20;
  if (os_log_type_enabled(v23, v24))
  {
    v25 = a7;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v26 = 136446210;
    v78 = a1;
    v28 = v22;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v29 = sub_100216994();
    v31 = sub_100005FB0(v29, v30, aBlock);

    *(v26 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v23, v24, "Preparing new identity for inheritance peer %{public}s", v26, 0xCu);
    sub_100006128(v27);

    a7 = v25;
  }

  if (a1)
  {
    v68 = a7;
    v32 = *(a17 + 24);
    v33 = v22;
    v34 = [v33 cloudkitContainerName];
    sub_100216974();

    v35 = [v33 octagonContextID];
    sub_100216974();

    v36 = *(v32 + 16);
    __chkstk_darwin(v37, v38);
    type metadata accessor for Container();
    sub_100216CD4();

    v53 = aBlock[0];
    v54 = swift_allocObject();
    v54[2] = a17;
    v54[3] = v53;
    v54[4] = sub_1001D148C;
    v54[5] = v76;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();
    v55 = v53;

    v67 = sub_10019C8E0(v55, 0xD0000000000000FDLL, 0x800000010023CA30);

    v56 = swift_allocObject();
    v56[2] = v67;
    v56[3] = sub_1001D14C8;
    v56[4] = v54;
    v57 = swift_allocObject();
    *(v57 + 16) = sub_1001D1510;
    *(v57 + 24) = v56;
    *(v57 + 32) = a16;
    *(v57 + 40) = v55;
    *(v57 + 48) = a2;
    *(v57 + 56) = a3;
    *(v57 + 64) = a4;
    *(v57 + 72) = a5;
    *(v57 + 80) = a12;
    *(v57 + 88) = a14;
    *(v57 + 96) = a13;
    *(v57 + 104) = a15;
    *(v57 + 112) = a6;
    *(v57 + 120) = v68;
    *(v57 + 128) = a8;
    *(v57 + 136) = a9;
    *(v57 + 144) = a10;
    *(v57 + 152) = a11;
    v73 = *&v55[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v58 = swift_allocObject();
    v58[2] = v55;
    v58[3] = sub_1001D1558;
    v58[4] = v57;
    v59 = swift_allocObject();
    *(v59 + 16) = sub_1001ACE84;
    *(v59 + 24) = v58;
    aBlock[4] = sub_1000574B4;
    aBlock[5] = v59;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_1002881F0;
    v60 = _Block_copy(aBlock);

    v61 = v55;

    v62 = a16;

    v63 = a12;

    v64 = a15;

    [v73 performBlockAndWait:v60];
    _Block_release(v60);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v39 = swift_allocError();
    *v40 = xmmword_100226AD0;
    *(v40 + 16) = 13;
    swift_willThrow();
    v41 = v22;
    swift_errorRetain();
    v42 = sub_100216754();
    v43 = sub_100216C74();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v44 = 136446466;
      v78 = 0;
      v45 = v41;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v46 = sub_100216994();
      v48 = sub_100005FB0(v46, v47, aBlock);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2082;
      v78 = v39;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v49 = sub_100216994();
      v51 = sub_100005FB0(v49, v50, aBlock);

      *(v44 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v42, v43, "prepareInheritancePeer failed for %{public}s: %{public}s", v44, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v79, v80);
    v52 = sub_100216144();
    (a18)[2](a18, 0, 0, 0, 0, 0, 0, 0, 0, v52);
  }

  return result;
}

uint64_t sub_1001BB65C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void (**a13)(void, void, void, void, void))
{
  v15 = swift_allocObject();
  *(v15 + 16) = a13;
  _Block_copy(a13);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v16 = sub_100216774();
  sub_100002648(v16, qword_10029DBB0);
  v17 = a1;
  v18 = sub_100216754();
  v19 = sub_100216C54();

  v67 = a1;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    aBlock[0] = v21;
    *v20 = 136446210;
    v69 = a1;
    v22 = v17;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v23 = sub_100216994();
    v25 = sub_100005FB0(v23, v24, aBlock);

    *(v20 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v18, v19, "Establishing %{public}s", v20, 0xCu);
    sub_100006128(v21);
  }

  if (a1)
  {
    v59 = a8;
    v66 = v15;
    v26 = *(a12 + 24);
    v27 = v17;
    v28 = [v27 cloudkitContainerName];
    sub_100216974();

    v29 = [v27 octagonContextID];
    sub_100216974();

    v30 = *(v26 + 16);
    __chkstk_darwin(v31, v32);
    type metadata accessor for Container();
    sub_100216CD4();

    v47 = aBlock[0];
    v48 = swift_allocObject();
    v48[2] = a12;
    v48[3] = v47;
    v48[4] = sub_1001D1C54;
    v48[5] = v66;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();
    v49 = v47;

    v57 = sub_10019C8E0(v49, 0xD000000000000062, 0x800000010023C990);

    v50 = swift_allocObject();
    v50[2] = v57;
    v50[3] = sub_1001D140C;
    v50[4] = v48;
    v58 = *&v49[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v51 = swift_allocObject();
    *(v51 + 16) = v49;
    *(v51 + 24) = a2;
    *(v51 + 32) = a3;
    *(v51 + 40) = a4;
    *(v51 + 48) = a5;
    *(v51 + 56) = a6;
    *(v51 + 64) = a7;
    *(v51 + 72) = v59;
    *(v51 + 80) = a9;
    *(v51 + 88) = a10;
    *(v51 + 96) = a11 & 1;
    *(v51 + 104) = sub_1001D1438;
    *(v51 + 112) = v50;
    v52 = swift_allocObject();
    *(v52 + 16) = sub_1001D1444;
    *(v52 + 24) = v51;
    aBlock[4] = sub_1000574B4;
    aBlock[5] = v52;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_1002880D8;
    v53 = _Block_copy(aBlock);

    v54 = v49;

    [v58 performBlockAndWait:v53];

    _Block_release(v53);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v33 = swift_allocError();
    *v34 = xmmword_100226AD0;
    *(v34 + 16) = 13;
    swift_willThrow();
    v35 = v17;
    swift_errorRetain();
    v36 = sub_100216754();
    v37 = sub_100216C74();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v38 = 136446466;
      v69 = v67;
      v39 = v35;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v40 = sub_100216994();
      v42 = sub_100005FB0(v40, v41, aBlock);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2082;
      v69 = v33;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v43 = sub_100216994();
      v45 = sub_100005FB0(v43, v44, aBlock);

      *(v38 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v36, v37, "Establishing failed for %{public}s: %{public}s", v38, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v70, v71);
    v46 = sub_100216144();
    (a13)[2](a13, 0, 0, 0, v46);
  }

  return result;
}

uint64_t sub_1001BBE44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, void (**a19)(void, void, void, void))
{
  v22 = swift_allocObject();
  *(v22 + 16) = a19;
  _Block_copy(a19);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v23 = sub_100216774();
  sub_100002648(v23, qword_10029DBB0);
  v24 = a1;
  v25 = sub_100216754();
  v26 = sub_100216C54();

  v76 = a8;
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v27 = 136446210;
    v79 = a1;
    v29 = v24;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v30 = sub_100216994();
    v32 = sub_100005FB0(v30, v31, aBlock);

    *(v27 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v25, v26, "Vouching %{public}s", v27, 0xCu);
    sub_100006128(v28);
  }

  if (a1)
  {
    v69 = a7;
    v77 = v22;
    v33 = *(a18 + 24);
    v34 = v24;
    v35 = [v34 cloudkitContainerName];
    sub_100216974();

    v36 = [v34 octagonContextID];
    sub_100216974();

    v37 = *(v33 + 16);
    __chkstk_darwin(v38, v39);
    type metadata accessor for Container();
    sub_100216CD4();

    v54 = aBlock[0];
    v55 = [v34 altDSID];
    v66 = sub_100216974();
    v65 = v56;

    v57 = swift_allocObject();
    v57[2] = a18;
    v57[3] = v54;
    v57[4] = sub_1001D136C;
    v57[5] = v77;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();
    v58 = v54;

    v64 = sub_10019C8E0(v58, 0xD000000000000083, 0x800000010023C900);

    v59 = swift_allocObject();
    v59[2] = v64;
    v59[3] = sub_1001D1374;
    v59[4] = v57;
    v68 = *&v58[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v60 = swift_allocObject();
    *(v60 + 16) = v58;
    *(v60 + 24) = sub_1001D13A0;
    *(v60 + 32) = v59;
    *(v60 + 40) = a2;
    *(v60 + 48) = a3;
    *(v60 + 56) = a4;
    *(v60 + 64) = a5;
    *(v60 + 72) = a6;
    *(v60 + 80) = v69;
    *(v60 + 88) = v76;
    *(v60 + 96) = a9;
    *(v60 + 104) = a10;
    *(v60 + 112) = a11;
    *(v60 + 120) = v66;
    *(v60 + 128) = v65;
    *(v60 + 136) = a13;
    *(v60 + 144) = a14;
    *(v60 + 152) = a15;
    *(v60 + 160) = a16;
    *(v60 + 168) = a17 & 1;
    *(v60 + 176) = a12;
    v61 = swift_allocObject();
    *(v61 + 16) = sub_1001D13AC;
    *(v61 + 24) = v60;
    aBlock[4] = sub_1000574B4;
    aBlock[5] = v61;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100287FE8;
    v67 = _Block_copy(aBlock);
    v71 = v58;

    sub_100012558(a4, a5);
    sub_100012558(a6, v69);
    sub_100012558(v76, a9);
    sub_100012558(a10, a11);

    [v68 performBlockAndWait:{v67, v64}];

    _Block_release(v67);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v40 = swift_allocError();
    *v41 = xmmword_100226AD0;
    *(v41 + 16) = 13;
    swift_willThrow();
    v42 = v24;
    swift_errorRetain();
    v43 = sub_100216754();
    v44 = sub_100216C74();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v45 = 136446466;
      v79 = 0;
      v46 = v42;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v47 = sub_100216994();
      v49 = sub_100005FB0(v47, v48, aBlock);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2082;
      v79 = v40;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v50 = sub_100216994();
      v52 = sub_100005FB0(v50, v51, aBlock);

      *(v45 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v43, v44, "Vouching failed for %{public}s: %{public}s", v45, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v80, v81);
    v53 = sub_100216144();
    (a19)[2](a19, 0, 0, v53);
  }

  return result;
}

uint64_t sub_1001BC758(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, void (**a12)(void, void, void, void, void))
{
  v14 = swift_allocObject();
  *(v14 + 16) = a12;
  _Block_copy(a12);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v15 = sub_100216774();
  sub_100002648(v15, qword_10029DBB0);
  v16 = a1;
  v17 = sub_100216754();
  v18 = sub_100216C54();

  v67 = v14;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = a7;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    aBlock[0] = v21;
    *v20 = 136446210;
    v69 = a1;
    v22 = v16;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v23 = sub_100216994();
    v25 = a1;
    v26 = sub_100005FB0(v23, v24, aBlock);

    *(v20 + 4) = v26;
    a1 = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "Preflight Vouch With Bottle %{public}s", v20, 0xCu);
    sub_100006128(v21);

    a7 = v19;
  }

  if (a1)
  {
    v60 = a7;
    v27 = *(a11 + 24);
    v28 = v16;
    v29 = [v28 cloudkitContainerName];
    sub_100216974();

    v30 = [v28 octagonContextID];
    sub_100216974();

    v31 = *(v27 + 16);
    __chkstk_darwin(v32, v33);
    type metadata accessor for Container();
    sub_100216CD4();

    v48 = aBlock[0];
    v49 = swift_allocObject();
    v49[2] = a11;
    v49[3] = v48;
    v49[4] = sub_1001D12E8;
    v49[5] = v67;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();
    v50 = v48;

    v58 = sub_10019C8E0(v50, 0xD000000000000057, 0x8000000100238870);

    v51 = swift_allocObject();
    v51[2] = v58;
    v51[3] = sub_1001D12F0;
    v51[4] = v49;
    v59 = *&v50[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v52 = swift_allocObject();
    *(v52 + 16) = a4;
    *(v52 + 24) = a5;
    *(v52 + 32) = a6;
    *(v52 + 40) = v60;
    *(v52 + 48) = a8;
    *(v52 + 56) = a9;
    *(v52 + 64) = a10 & 1;
    *(v52 + 72) = v50;
    *(v52 + 80) = a2;
    *(v52 + 88) = a3;
    *(v52 + 96) = sub_1001D131C;
    *(v52 + 104) = v51;
    v53 = swift_allocObject();
    *(v53 + 16) = sub_1001D1328;
    *(v53 + 24) = v52;
    aBlock[4] = sub_1000574B4;
    aBlock[5] = v53;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100287EF8;
    v54 = _Block_copy(aBlock);

    v55 = v50;

    [v59 performBlockAndWait:v54];

    _Block_release(v54);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v34 = swift_allocError();
    *v35 = xmmword_100226AD0;
    *(v35 + 16) = 13;
    swift_willThrow();
    v36 = v16;
    swift_errorRetain();
    v37 = sub_100216754();
    v38 = sub_100216C74();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v39 = 136446466;
      v69 = 0;
      v40 = v36;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v41 = sub_100216994();
      v43 = sub_100005FB0(v41, v42, aBlock);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2082;
      v69 = v34;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v44 = sub_100216994();
      v46 = sub_100005FB0(v44, v45, aBlock);

      *(v39 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v37, v38, "Preflighting Vouch With Bottle failed for %{public}s: %{public}s", v39, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v70, v71);
    v47 = sub_100216144();
    (a12)[2](a12, 0, 0, 0, v47);
  }

  return result;
}

void sub_1001BCF38(void *a1, char *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, unsigned __int8 a15, uint64_t a16, char *a17)
{
  v145 = a7;
  v146 = a8;
  v143 = a6;
  v147 = a4;
  v142 = a2;
  PolicyDocumentsRequest = type metadata accessor for FetchPolicyDocumentsRequest(0);
  v20 = *(*(PolicyDocumentsRequest - 8) + 64);
  __chkstk_darwin(PolicyDocumentsRequest, v21);
  v140 = &v121[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = swift_allocObject();
  *(v23 + 16) = a17;
  v149 = a17;
  _Block_copy(a17);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v24 = sub_100216774();
  v25 = sub_100002648(v24, qword_10029DBB0);
  v26 = a1;
  v148 = v25;
  v27 = sub_100216754();
  v28 = sub_100216C54();

  v29 = os_log_type_enabled(v27, v28);
  v150 = a1;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock = v31;
    *v30 = 136446210;
    v157 = a1;
    v32 = v26;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v33 = sub_100216994();
    v35 = sub_100005FB0(v33, v34, &aBlock);

    *(v30 + 4) = v35;
    a1 = v150;
    _os_log_impl(&_mh_execute_header, v27, v28, "Vouching With Bottle %{public}s", v30, 0xCu);
    sub_100006128(v31);
  }

  if (a1)
  {
    v141 = a5;
    v138 = a3;
    v144 = v23;
    v137 = a16;
    v36 = *(a16 + 24);
    v37 = v26;
    v38 = [v37 cloudkitContainerName];
    v39 = sub_100216974();
    v41 = v40;

    v42 = [v37 octagonContextID];
    v43 = sub_100216974();
    v45 = v44;

    v46 = *(v36 + 16);
    __chkstk_darwin(v47, v48);
    *&v121[-48] = v36;
    *&v121[-40] = v39;
    *&v121[-32] = v41;
    *&v121[-24] = v43;
    *&v121[-16] = v45;
    *&v121[-8] = v37;
    type metadata accessor for Container();
    sub_100216CD4();

    v63 = aBlock;
    v64 = swift_allocObject();
    v64[2] = v137;
    v64[3] = v63;
    v65 = v144;
    v64[4] = sub_1001D1B94;
    v64[5] = v65;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();
    v66 = v63;

    v67 = sub_10019C8E0(v66, 0xD00000000000006BLL, 0x800000010023C890);

    v68 = swift_allocObject();
    v68[2] = v67;
    v68[3] = sub_1001D11AC;
    v68[4] = v64;
    v133 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc;
    v69 = *&v66[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v71 = __chkstk_darwin(v68, v70);
    *&v121[-32] = v66;
    *&v121[-24] = sub_1001D11E0;
    *&v121[-16] = v71;
    swift_retain_n();
    swift_retain_n();
    sub_10001148C(&qword_100297E70, &unk_10021DAB0);
    sub_100216D34();
    v72 = aBlock;
    if (!aBlock)
    {

      return;
    }

    v126 = 0;
    LODWORD(v137) = a15;
    v150 = a14;
    v148 = a12;
    v134 = aBlock;
    v73 = swift_allocObject();
    v149 = v66;
    v74 = v73;
    v73[2] = v67;
    v73[3] = sub_1001D11AC;
    v73[4] = v64;
    v75 = swift_allocObject();
    *(v75 + 16) = sub_1001D1AFC;
    *(v75 + 24) = v74;
    *(v75 + 32) = v149;
    *(v75 + 40) = a9;
    v123 = a9;
    *(v75 + 48) = a10;
    *(v75 + 56) = a11;
    v124 = a11;
    *(v75 + 64) = a12;
    *(v75 + 72) = a13;
    v125 = a13;
    *(v75 + 80) = v150;
    v122 = v137 & 1;
    *(v75 + 88) = v137 & 1;
    v76 = v138;
    *(v75 + 96) = v142;
    *(v75 + 104) = v76;
    v77 = v147;
    v78 = v141;
    *(v75 + 112) = v147;
    *(v75 + 120) = v78;
    v135 = v68;
    v79 = v145;
    *(v75 + 128) = v143;
    *(v75 + 136) = v79;
    v128 = v75;
    *(v75 + 144) = v146;
    v80 = swift_allocObject();
    v129 = v80;
    *(v80 + 16) = v72;
    v81 = (v80 + 16);
    v137 = swift_allocObject();

    v82 = v149;

    v83 = v77;
    v84 = v141;
    sub_100012558(v83, v141);

    v85 = v82;
    v131 = v67;

    v136 = v64;

    v132 = a10;

    sub_100012558(v147, v84);

    v130 = v74;

    v86 = sub_100019440(_swiftEmptyArrayStorage);
    v87 = v137;
    *(v137 + 16) = v86;
    v88 = v133;
    v89 = *&v149[v133];
    v90 = swift_allocObject();
    v90[2] = v81;
    v90[3] = v85;
    v90[4] = v87 + 16;
    v91 = swift_allocObject();
    *(v91 + 16) = sub_100056F54;
    *(v91 + 24) = v90;
    v155 = sub_1000574B4;
    v156 = v91;
    aBlock = _NSConcreteStackBlock;
    v152 = 1107296256;
    v153 = sub_100109050;
    v154 = &unk_100287D40;
    v92 = _Block_copy(&aBlock);
    v93 = v85;

    [v89 performBlockAndWait:v92];
    _Block_release(v92);
    LOBYTE(v85) = swift_isEscapingClosureAtFileLocation();

    if (v85)
    {
      __break(1u);
    }

    else
    {
      v96 = *v81;
      if ((*v81 & 0xC000000000000001) != 0)
      {
        if (v96 < 0)
        {
          v97 = *v81;
        }

        v98 = *v81;

        v99 = sub_100216ED4();
      }

      else
      {
        v99 = *(v96 + 16);
      }

      v100 = v136;
      v127 = v90;
      if (v99)
      {
        __chkstk_darwin(v94, v95);
        *&v121[-16] = v81;
        sub_1001D0854(&qword_100297E78, type metadata accessor for FetchPolicyDocumentsRequest);
        v101 = v140;
        sub_100216654();
        v102 = *&v93[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
        v149 = *&v93[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
        sub_100006484(&v93[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v149);
        v103 = swift_allocObject();
        v103[2] = v93;
        v103[3] = sub_1001D122C;
        v104 = v129;
        v103[4] = v128;
        v103[5] = v104;
        v103[6] = v137;
        v105 = *(v102 + 16);
        v106 = *(v105 + 80);
        v107 = v93;

        v106(v101, sub_100056F7C, v103, v149, v105);

        sub_1001D1288(v101, type metadata accessor for FetchPolicyDocumentsRequest);

LABEL_22:
        sub_100002BF0(v147, v141);

        return;
      }

      v140 = *(v137 + 16);
      v108 = swift_allocObject();
      v108[2] = v131;
      v108[3] = sub_1001D11AC;
      v108[4] = v100;
      v149 = *&v149[v88];
      v109 = swift_allocObject();
      v110 = v132;
      *(v109 + 16) = v123;
      *(v109 + 24) = v110;
      v111 = v148;
      *(v109 + 32) = v124;
      *(v109 + 40) = v111;
      v112 = v150;
      *(v109 + 48) = v125;
      *(v109 + 56) = v112;
      *(v109 + 64) = v122;
      v113 = v142;
      *(v109 + 72) = v93;
      *(v109 + 80) = v113;
      *(v109 + 88) = v138;
      *(v109 + 96) = sub_1001D1AFC;
      v115 = v146;
      v114 = v147;
      *(v109 + 104) = v108;
      *(v109 + 112) = v114;
      v116 = v141;
      v117 = v143;
      *(v109 + 120) = v141;
      *(v109 + 128) = v117;
      *(v109 + 136) = v145;
      *(v109 + 144) = v115;
      v118 = swift_allocObject();
      *(v118 + 16) = sub_1001AA680;
      *(v118 + 24) = v109;
      v155 = sub_1000574B4;
      v156 = v118;
      aBlock = _NSConcreteStackBlock;
      v152 = 1107296256;
      v153 = sub_100109050;
      v154 = &unk_100287E08;
      v119 = _Block_copy(&aBlock);
      v143 = v156;
      swift_retain_n();
      swift_retain_n();
      v142 = v93;
      v120 = v93;

      sub_100012558(v147, v116);

      [v149 performBlockAndWait:v119];
      _Block_release(v119);
      LOBYTE(v110) = swift_isEscapingClosureAtFileLocation();

      if ((v110 & 1) == 0)
      {

        v93 = v142;
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
    sub_1000561D0();
    v49 = swift_allocError();
    *v50 = xmmword_100226AD0;
    *(v50 + 16) = 13;
    swift_willThrow();
    v51 = v26;
    swift_errorRetain();
    v52 = sub_100216754();
    v53 = sub_100216C74();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v54 = 136446466;
      v157 = v150;
      v55 = v51;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v56 = sub_100216994();
      v58 = sub_100005FB0(v56, v57, &aBlock);

      *(v54 + 4) = v58;
      *(v54 + 12) = 2082;
      v157 = v49;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v59 = sub_100216994();
      v61 = sub_100005FB0(v59, v60, &aBlock);

      *(v54 + 14) = v61;
      _os_log_impl(&_mh_execute_header, v52, v53, "Vouching with Bottle failed for %{public}s: %{public}s", v54, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v158, v159);
    v62 = sub_100216144();
    (*(v149 + 2))(v149, 0, 0, 0, 0, v62);
  }
}

uint64_t sub_1001BDFD0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a7;
  v61 = a7;
  _Block_copy(a7);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v13 = sub_100216774();
  sub_100002648(v13, qword_10029DBB0);
  v14 = a1;
  v15 = sub_100216754();
  v16 = sub_100216C54();

  v59 = a6;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136446210;
    v65 = a1;
    v19 = v14;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v20 = sub_100216994();
    v22 = sub_100005FB0(v20, v21, aBlock);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "Preflight Vouch With RecoveryKey %{public}s", v17, 0xCu);
    sub_100006128(v18);

    a6 = v59;
  }

  if (a1)
  {
    v54 = a3;
    v55 = a5;
    v58 = v12;
    v23 = *(a6 + 24);
    v24 = v14;
    v25 = [v24 cloudkitContainerName];
    sub_100216974();

    v26 = [v24 octagonContextID];
    sub_100216974();

    v27 = *(v23 + 16);
    __chkstk_darwin(v28, v29);
    type metadata accessor for Container();
    sub_100216CD4();

    v44 = aBlock[0];
    v45 = swift_allocObject();
    v45[2] = v59;
    v45[3] = v44;
    v45[4] = sub_1001D1C50;
    v45[5] = v58;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();
    v46 = v44;

    v62 = sub_10019C8E0(v46, 0xD000000000000036, 0x8000000100238C90);

    v47 = swift_allocObject();
    v47[2] = v62;
    v47[3] = sub_1001D1160;
    v47[4] = v45;
    v48 = swift_allocObject();
    v48[2] = sub_1001D116C;
    v48[3] = v47;
    v48[4] = v46;
    v48[5] = a2;
    v48[6] = v54;
    v48[7] = a4;
    v48[8] = v55;
    v63 = *&v46[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v49 = swift_allocObject();
    *(v49 + 16) = 0;
    *(v49 + 24) = v46;
    *(v49 + 32) = sub_1001D1178;
    *(v49 + 40) = v48;
    v50 = swift_allocObject();
    *(v50 + 16) = sub_1001ACE7C;
    *(v50 + 24) = v49;
    aBlock[4] = sub_1000574B4;
    aBlock[5] = v50;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100287BB0;
    v51 = _Block_copy(aBlock);
    v60 = v46;

    [v63 performBlockAndWait:v51];
    _Block_release(v51);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v30 = swift_allocError();
    *v31 = xmmword_100226AD0;
    *(v31 + 16) = 13;
    swift_willThrow();
    v32 = v14;
    swift_errorRetain();
    v33 = sub_100216754();
    v34 = sub_100216C74();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v35 = 136446466;
      v65 = 0;
      v36 = v32;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v37 = sub_100216994();
      v39 = sub_100005FB0(v37, v38, aBlock);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2082;
      v65 = v30;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v40 = sub_100216994();
      v42 = sub_100005FB0(v40, v41, aBlock);

      *(v35 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v33, v34, "Preflighting Vouch With RecoveryKey failed for %{public}s: %{public}s", v35, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v66, v67);
    v43 = sub_100216144();
    (*(v61 + 2))(v61, 0, 0, v43);
  }

  return result;
}

uint64_t sub_1001BE7B0(void *a1, void *a2, uint64_t a3, void (**a4)(void, void, void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  _Block_copy(a4);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v9 = sub_100216774();
  sub_100002648(v9, qword_10029DBB0);
  v10 = a1;
  v11 = sub_100216754();
  v12 = sub_100216C54();

  v58 = v8;
  if (os_log_type_enabled(v11, v12))
  {
    v13 = a2;
    v14 = a3;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136446210;
    v60 = a1;
    v17 = v10;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v18 = sub_100216994();
    v20 = sub_100005FB0(v18, v19, aBlock);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "Preflight Vouch With CustodianRecoveryKey %{public}s", v15, 0xCu);
    sub_100006128(v16);

    a3 = v14;
    a2 = v13;
  }

  if (a1)
  {
    v55 = a2;
    v21 = *(a3 + 24);
    v22 = v10;
    v23 = [v22 cloudkitContainerName];
    v54 = a3;
    sub_100216974();

    v24 = [v22 octagonContextID];
    sub_100216974();

    v25 = *(v21 + 16);
    __chkstk_darwin(v26, v27);
    type metadata accessor for Container();
    sub_100216CD4();

    v42 = aBlock[0];
    v43 = swift_allocObject();
    v43[2] = v54;
    v43[3] = v42;
    v43[4] = sub_1001D1134;
    v43[5] = v58;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();
    v44 = v42;

    v56 = sub_10019C8E0(v44, 0xD000000000000032, 0x8000000100238C50);

    v45 = swift_allocObject();
    v45[2] = v56;
    v45[3] = sub_1001D113C;
    v45[4] = v43;
    v46 = swift_allocObject();
    v46[2] = sub_1001D1148;
    v46[3] = v45;
    v46[4] = v44;
    v46[5] = v55;
    v57 = *&v44[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v47 = swift_allocObject();
    v47[2] = v44;
    v47[3] = sub_1001D1154;
    v47[4] = v46;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_1001ACE84;
    *(v48 + 24) = v47;
    aBlock[4] = sub_1000574B4;
    aBlock[5] = v48;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100287A98;
    v49 = _Block_copy(aBlock);
    v50 = v44;

    v51 = v55;

    [v57 performBlockAndWait:v49];
    _Block_release(v49);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v28 = swift_allocError();
    *v29 = xmmword_100226AD0;
    *(v29 + 16) = 13;
    swift_willThrow();
    v30 = v10;
    swift_errorRetain();
    v31 = sub_100216754();
    v32 = sub_100216C74();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v33 = 136446466;
      v60 = a1;
      v34 = v30;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v35 = sub_100216994();
      v37 = sub_100005FB0(v35, v36, aBlock);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2082;
      v60 = v28;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v38 = sub_100216994();
      v40 = sub_100005FB0(v38, v39, aBlock);

      *(v33 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v31, v32, "Preflighting Vouch With CustodianRecoveryKey failed for %{public}s: %{public}s", v33, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v61, v62);
    v41 = sub_100216144();
    (a4)[2](a4, 0, 0, v41);
  }

  return result;
}

uint64_t sub_1001BEF3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (**a8)(void, void, void, void, void, void))
{
  v12 = swift_allocObject();
  *(v12 + 16) = a8;
  _Block_copy(a8);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v13 = sub_100216774();
  sub_100002648(v13, qword_10029DBB0);
  v14 = a1;
  v15 = sub_100216754();
  v16 = sub_100216C54();

  v64 = v12;
  v61 = a7;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136446210;
    v66 = a1;
    v19 = v14;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v20 = sub_100216994();
    v22 = a6;
    v23 = a1;
    v24 = sub_100005FB0(v20, v21, aBlock);

    *(v17 + 4) = v24;
    a1 = v23;
    a6 = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "Vouching With Recovery Key %{public}s", v17, 0xCu);
    sub_100006128(v18);

    a7 = v61;
  }

  if (a1)
  {
    v55 = a6;
    v25 = *(a7 + 24);
    v26 = v14;
    v27 = [v26 cloudkitContainerName];
    sub_100216974();

    v28 = [v26 octagonContextID];
    sub_100216974();

    v29 = *(v25 + 16);
    __chkstk_darwin(v30, v31);
    type metadata accessor for Container();
    sub_100216CD4();

    v46 = aBlock[0];
    v47 = swift_allocObject();
    v47[2] = v61;
    v47[3] = v46;
    v47[4] = sub_1001D1B94;
    v47[5] = v64;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();
    v48 = v46;

    v62 = sub_10019C8E0(v48, 0xD000000000000037, 0x800000010023C850);

    v49 = swift_allocObject();
    v49[2] = v62;
    v49[3] = sub_1001D10C0;
    v49[4] = v47;
    v63 = *&v48[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v50 = swift_allocObject();
    v50[2] = v48;
    v50[3] = sub_1001D10F4;
    v50[4] = v49;
    v50[5] = a2;
    v50[6] = a3;
    v50[7] = a4;
    v50[8] = a5;
    v50[9] = v55;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_1001D1120;
    *(v51 + 24) = v50;
    aBlock[4] = sub_1000574B4;
    aBlock[5] = v51;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100287980;
    v52 = _Block_copy(aBlock);
    v58 = v48;

    [v63 performBlockAndWait:v52];

    _Block_release(v52);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v32 = swift_allocError();
    *v33 = xmmword_100226AD0;
    *(v33 + 16) = 13;
    swift_willThrow();
    v34 = v14;
    swift_errorRetain();
    v35 = sub_100216754();
    v36 = sub_100216C74();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v37 = 136446466;
      v66 = 0;
      v38 = v34;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v39 = sub_100216994();
      v41 = sub_100005FB0(v39, v40, aBlock);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2082;
      v66 = v32;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v42 = sub_100216994();
      v44 = sub_100005FB0(v42, v43, aBlock);

      *(v37 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v35, v36, "Vouching with Recovery Key failed for %{public}s: %{public}s", v37, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v67, v68);
    v45 = sub_100216144();
    (a8)[2](a8, 0, 0, 0, 0, v45);
  }

  return result;
}

uint64_t sub_1001BF6C8(void *a1, void *a2, uint64_t a3, uint64_t a4, void (**a5)(void, void, void, void))
{
  v9 = swift_allocObject();
  *(v9 + 16) = a5;
  _Block_copy(a5);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v10 = sub_100216774();
  sub_100002648(v10, qword_10029DBB0);
  v11 = a1;
  v12 = sub_100216754();
  v13 = sub_100216C54();

  v57 = v9;
  v55 = a4;
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136446210;
    v59 = a1;
    v16 = v11;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v17 = sub_100216994();
    v19 = sub_100005FB0(v17, v18, aBlock);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "Recovering TLKShares for Inheritor %{public}s", v14, 0xCu);
    sub_100006128(v15);

    a4 = v55;
  }

  if (a1)
  {
    v53 = a3;
    v20 = *(a4 + 24);
    v21 = v11;
    v22 = [v21 cloudkitContainerName];
    sub_100216974();

    v23 = [v21 octagonContextID];
    sub_100216974();

    v24 = *(v20 + 16);
    __chkstk_darwin(v25, v26);
    type metadata accessor for Container();
    sub_100216CD4();

    v41 = aBlock[0];
    v42 = swift_allocObject();
    v42[2] = v55;
    v42[3] = v41;
    v42[4] = sub_1001D0FFC;
    v42[5] = v57;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v43 = v41;

    v44 = sub_10019C8E0(v43, 0xD000000000000032, 0x800000010023C810);
    v45 = swift_allocObject();
    v45[2] = v44;
    v45[3] = sub_1001D1028;
    v45[4] = v42;
    v56 = *&v43[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v46 = swift_allocObject();
    v46[2] = v43;
    v46[3] = sub_1001D1034;
    v46[4] = v45;
    v46[5] = a2;
    v46[6] = v53;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_1001D1090;
    *(v47 + 24) = v46;
    aBlock[4] = sub_1000574B4;
    aBlock[5] = v47;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100287890;
    v48 = _Block_copy(aBlock);
    v49 = v43;

    v50 = a2;

    [v56 performBlockAndWait:v48];

    _Block_release(v48);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v27 = swift_allocError();
    *v28 = xmmword_100226AD0;
    *(v28 + 16) = 13;
    swift_willThrow();
    v29 = v11;
    swift_errorRetain();
    v30 = sub_100216754();
    v31 = sub_100216C74();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v32 = 136446466;
      v59 = 0;
      v33 = v29;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v34 = sub_100216994();
      v36 = sub_100005FB0(v34, v35, aBlock);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2082;
      v59 = v27;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v37 = sub_100216994();
      v39 = sub_100005FB0(v37, v38, aBlock);

      *(v32 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v30, v31, "Recovering TLKShares for Inheritor failed for %{public}s: %{public}s", v32, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v60, v61);
    v40 = sub_100216144();
    (a5)[2](a5, 0, 0, v40);
  }

  return result;
}

uint64_t sub_1001BFE18(void *a1, void *a2, uint64_t a3, uint64_t a4, void (**a5)(void, void, void, void, void, void))
{
  v9 = swift_allocObject();
  *(v9 + 16) = a5;
  _Block_copy(a5);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v10 = sub_100216774();
  sub_100002648(v10, qword_10029DBB0);
  v11 = a1;
  v12 = sub_100216754();
  v13 = sub_100216C54();

  v57 = v9;
  v55 = a4;
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136446210;
    v59 = a1;
    v16 = v11;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v17 = sub_100216994();
    v19 = sub_100005FB0(v17, v18, aBlock);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "Vouching With Custodian Recovery Key %{public}s", v14, 0xCu);
    sub_100006128(v15);

    a4 = v55;
  }

  if (a1)
  {
    v53 = a3;
    v20 = *(a4 + 24);
    v21 = v11;
    v22 = [v21 cloudkitContainerName];
    sub_100216974();

    v23 = [v21 octagonContextID];
    sub_100216974();

    v24 = *(v20 + 16);
    __chkstk_darwin(v25, v26);
    type metadata accessor for Container();
    sub_100216CD4();

    v41 = aBlock[0];
    v42 = swift_allocObject();
    v42[2] = v55;
    v42[3] = v41;
    v42[4] = sub_1001D1B94;
    v42[5] = v57;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v43 = v41;

    v44 = sub_10019C8E0(v43, 0xD000000000000033, 0x800000010023C7D0);
    v45 = swift_allocObject();
    v45[2] = v44;
    v45[3] = sub_1001D0F84;
    v45[4] = v42;
    v56 = *&v43[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v46 = swift_allocObject();
    v46[2] = v43;
    v46[3] = sub_1001D0FB8;
    v46[4] = v45;
    v46[5] = a2;
    v46[6] = v53;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_1001D0FE4;
    *(v47 + 24) = v46;
    aBlock[4] = sub_1000574B4;
    aBlock[5] = v47;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_1002877A0;
    v48 = _Block_copy(aBlock);
    v49 = v43;

    v50 = a2;

    [v56 performBlockAndWait:v48];

    _Block_release(v48);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v27 = swift_allocError();
    *v28 = xmmword_100226AD0;
    *(v28 + 16) = 13;
    swift_willThrow();
    v29 = v11;
    swift_errorRetain();
    v30 = sub_100216754();
    v31 = sub_100216C74();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v32 = 136446466;
      v59 = 0;
      v33 = v29;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v34 = sub_100216994();
      v36 = sub_100005FB0(v34, v35, aBlock);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2082;
      v59 = v27;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v37 = sub_100216994();
      v39 = sub_100005FB0(v37, v38, aBlock);

      *(v32 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v30, v31, "Vouching with Custodian Recovery Key failed for %{public}s: %{public}s", v32, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v60, v61);
    v40 = sub_100216144();
    (a5)[2](a5, 0, 0, 0, 0, v40);
  }

  return result;
}

uint64_t sub_1001C0570(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void, void, void, void, void, void))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a6;
  _Block_copy(a6);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v11 = sub_100216774();
  sub_100002648(v11, qword_10029DBB0);
  v12 = a1;
  v13 = sub_100216754();
  v14 = sub_100216C54();

  v60 = v10;
  v58 = a5;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136446210;
    v62 = a1;
    v17 = v12;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v18 = sub_100216994();
    v20 = a4;
    v21 = a1;
    v22 = sub_100005FB0(v18, v19, aBlock);

    *(v15 + 4) = v22;
    a1 = v21;
    a4 = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "Vouching With Reroll %{public}s", v15, 0xCu);
    sub_100006128(v16);

    a5 = v58;
  }

  if (a1)
  {
    v55 = a4;
    v23 = *(a5 + 24);
    v24 = v12;
    v25 = [v24 cloudkitContainerName];
    sub_100216974();

    v26 = [v24 octagonContextID];
    sub_100216974();

    v27 = *(v23 + 16);
    __chkstk_darwin(v28, v29);
    type metadata accessor for Container();
    sub_100216CD4();

    v44 = aBlock[0];
    v45 = swift_allocObject();
    v45[2] = v58;
    v45[3] = v44;
    v45[4] = sub_1001D0F0C;
    v45[5] = v60;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v46 = v44;

    v47 = sub_10019C8E0(v46, 0xD00000000000002BLL, 0x800000010023C7A0);
    v48 = swift_allocObject();
    v48[2] = v47;
    v48[3] = sub_1001D0F14;
    v48[4] = v45;
    v59 = *&v46[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v49 = swift_allocObject();
    v49[2] = v46;
    v49[3] = sub_1001D0F48;
    v49[4] = v48;
    v49[5] = a2;
    v49[6] = a3;
    v49[7] = v55;
    v50 = swift_allocObject();
    *(v50 + 16) = sub_1001D0F74;
    *(v50 + 24) = v49;
    aBlock[4] = sub_1000574B4;
    aBlock[5] = v50;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_1002876B0;
    v51 = _Block_copy(aBlock);
    v52 = v46;

    [v59 performBlockAndWait:v51];

    _Block_release(v51);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v30 = swift_allocError();
    *v31 = xmmword_100226AD0;
    *(v31 + 16) = 13;
    swift_willThrow();
    v32 = v12;
    swift_errorRetain();
    v33 = sub_100216754();
    v34 = sub_100216C74();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v35 = 136446466;
      v62 = 0;
      v36 = v32;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v37 = sub_100216994();
      v39 = sub_100005FB0(v37, v38, aBlock);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2082;
      v62 = v30;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v40 = sub_100216994();
      v42 = sub_100005FB0(v40, v41, aBlock);

      *(v35 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v33, v34, "Vouching with Reroll failed for %{public}s: %{public}s", v35, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v63, v64);
    v43 = sub_100216144();
    (a6)[2](a6, 0, 0, 0, 0, v43);
  }

  return result;
}

void sub_1001C0CC8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void (**a15)(void, void, void, void, void))
{
  v18 = swift_allocObject();
  *(v18 + 16) = a15;
  _Block_copy(a15);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v19 = sub_100216774();
  sub_100002648(v19, qword_10029DBB0);
  v20 = a1;
  v21 = sub_100216754();
  v22 = sub_100216C54();

  v96 = a7;
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v23 = 136446210;
    v102 = a1;
    v25 = v20;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v26 = sub_100216994();
    v28 = sub_100005FB0(v26, v27, aBlock);

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "Joining %{public}s", v23, 0xCu);
    sub_100006128(v24);
  }

  if (a1)
  {
    v90 = a6;
    v97 = v18;
    v29 = *(a14 + 24);
    v30 = v20;
    v31 = [v30 cloudkitContainerName];
    sub_100216974();

    v32 = [v30 octagonContextID];
    sub_100216974();
    v34 = v33;

    v35 = *(v29 + 16);
    __chkstk_darwin(v36, v37);
    v79 = v34;
    type metadata accessor for Container();
    sub_100216CD4();

    v52 = aBlock[0];
    v53 = [v30 altDSID];
    v54 = sub_100216974();
    v56 = v55;

    v57 = swift_allocObject();
    *(v57 + 16) = sub_1001D1C54;
    *(v57 + 24) = v97;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v58 = v52;
    v59 = sub_10019C8E0(v58, 0xD000000000000074, 0x800000010023C6E0);
    v84 = v58;

    v60 = swift_allocObject();
    v60[2] = v59;
    v60[3] = sub_1001D1BB8;
    v88 = v60;
    v60[4] = v57;
    v61 = kSecurityRTCEventNameJoinWithVoucherInTPH;

    v62 = v61;
    sub_1001D0674();
    v64 = v63;
    v86 = v54;
    v89 = v56;
    v65 = sub_100216964();
    if (a10)
    {
      v66 = sub_100216964();
    }

    else
    {
      v66 = 0;
    }

    v67 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
    if (a12)
    {
      v68 = sub_100216964();
    }

    else
    {
      v68 = 0;
    }

    LOBYTE(v79) = a13 & 1;
    v83 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:0 altDSID:v65 flowID:v66 deviceSessionID:v68 eventName:v62 testsAreEnabled:v64 canSendMetrics:v79 category:v67];

    v69 = kSecurityRTCEventNameFetchAndPersistChanges;
    sub_1001D0674();
    v71 = v70;
    v72 = sub_100216964();
    if (a10)
    {
      v73 = sub_100216964();
      if (a12)
      {
LABEL_18:
        v74 = sub_100216964();
        goto LABEL_21;
      }
    }

    else
    {
      v73 = 0;
      if (a12)
      {
        goto LABEL_18;
      }
    }

    v74 = 0;
LABEL_21:
    LOBYTE(v80) = a13 & 1;
    v82 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:0 altDSID:v72 flowID:v73 deviceSessionID:v74 eventName:v69 testsAreEnabled:v71 canSendMetrics:v80 category:v67];

    v75 = swift_allocObject();
    *(v75 + 16) = v82;
    *(v75 + 24) = v83;
    *(v75 + 32) = sub_1001D0E9C;
    *(v75 + 40) = v88;
    *(v75 + 48) = v86;
    *(v75 + 56) = v89;
    *(v75 + 64) = a9;
    *(v75 + 72) = a10;
    *(v75 + 80) = a11;
    *(v75 + 88) = a12;
    *(v75 + 96) = a13 & 1;
    *(v75 + 104) = v84;
    *(v75 + 112) = a2;
    *(v75 + 120) = a3;
    *(v75 + 128) = a4;
    *(v75 + 136) = a5;
    *(v75 + 144) = a8;
    *(v75 + 152) = v90;
    *(v75 + 160) = v96;
    v87 = *&v84[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v76 = swift_allocObject();
    *(v76 + 16) = 0;
    *(v76 + 24) = v84;
    *(v76 + 32) = sub_1001D0EA8;
    *(v76 + 40) = v75;
    v77 = swift_allocObject();
    *(v77 + 16) = sub_1001ACE7C;
    *(v77 + 24) = v76;
    aBlock[4] = sub_1000574B4;
    v101 = v77;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_1002875C0;
    v78 = _Block_copy(aBlock);
    v81 = v101;

    v85 = v84;
    v99 = v82;
    v98 = v83;

    sub_100012558(a2, a3);
    sub_100012558(a4, a5);

    [v87 performBlockAndWait:{v78, v81}];
    _Block_release(v78);
    LOBYTE(v78) = swift_isEscapingClosureAtFileLocation();

    if (v78)
    {
      __break(1u);
    }

    else
    {
    }

    return;
  }

  sub_1000561D0();
  v38 = swift_allocError();
  *v39 = xmmword_100226AD0;
  *(v39 + 16) = 13;
  swift_willThrow();
  v40 = v20;
  swift_errorRetain();
  v41 = sub_100216754();
  v42 = sub_100216C74();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v43 = 136446466;
    v102 = 0;
    v44 = v40;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v45 = sub_100216994();
    v47 = sub_100005FB0(v45, v46, aBlock);

    *(v43 + 4) = v47;
    *(v43 + 12) = 2082;
    v102 = v38;
    swift_errorRetain();
    sub_10001148C(&unk_10029D560, qword_10021D450);
    v48 = sub_100216994();
    v50 = sub_100005FB0(v48, v49, aBlock);

    *(v43 + 14) = v50;
    _os_log_impl(&_mh_execute_header, v41, v42, "Joining failed for %{public}s: %{public}s", v43, 0x16u);
    swift_arrayDestroy();
  }

  swift_getErrorValue();
  sub_1001ADD74(v103, v104);
  v51 = sub_100216144();
  (a15)[2](a15, 0, 0, 0, v51);
}

uint64_t sub_1001C178C(void *a1, uint64_t a2, uint64_t a3, void (**a4)(const void *, void, void *))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v57 = a4;
  _Block_copy(a4);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v9 = sub_100216774();
  sub_100002648(v9, qword_10029DBB0);
  v10 = a1;
  v11 = sub_100216754();
  v12 = sub_100216C54();

  v58 = v10;
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136446210;
    v61 = a1;
    v15 = v10;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v16 = sub_100216994();
    v18 = v8;
    v19 = a2;
    v20 = a3;
    v21 = sub_100005FB0(v16, v17, aBlock);

    *(v13 + 4) = v21;
    a3 = v20;
    a2 = v19;
    v8 = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "Attempting to preflight a preapproved join for %{public}s", v13, 0xCu);
    sub_100006128(v14);
  }

  if (a1)
  {
    v55 = a2;
    v56 = v8;
    v22 = *(a3 + 24);
    v23 = v58;
    v24 = [v23 cloudkitContainerName];
    sub_100216974();

    v25 = [v23 octagonContextID];
    sub_100216974();

    v26 = *(v22 + 16);
    __chkstk_darwin(v27, v28);
    type metadata accessor for Container();
    sub_100216CD4();

    v43 = aBlock[0];
    v44 = swift_allocObject();
    *(v44 + 16) = sub_1001D1BB0;
    *(v44 + 24) = v56;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v45 = v43;
    v46 = sub_10019C8E0(v45, 0xD000000000000030, 0x800000010023C6A0);

    v47 = swift_allocObject();
    v47[2] = v46;
    v47[3] = sub_1001D1B9C;
    v47[4] = v44;
    v48 = swift_allocObject();
    v48[2] = sub_1001D0E84;
    v48[3] = v47;
    v48[4] = v45;
    v48[5] = v55;
    v59 = *&v45[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v49 = swift_allocObject();
    *(v49 + 16) = 0;
    *(v49 + 24) = v45;
    *(v49 + 32) = sub_1001D0E90;
    *(v49 + 40) = v48;
    v50 = swift_allocObject();
    *(v50 + 16) = sub_1001ACE7C;
    *(v50 + 24) = v49;
    aBlock[4] = sub_1000574B4;
    aBlock[5] = v50;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_1002874A8;
    v51 = _Block_copy(aBlock);

    v52 = v45;

    [v59 performBlockAndWait:v51];
    _Block_release(v51);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v29 = swift_allocError();
    *v30 = xmmword_100226AD0;
    *(v30 + 16) = 13;
    swift_willThrow();
    v31 = v58;
    swift_errorRetain();
    v32 = sub_100216754();
    v33 = sub_100216C74();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v34 = 136446466;
      v61 = 0;
      v35 = v31;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v36 = sub_100216994();
      v38 = sub_100005FB0(v36, v37, aBlock);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2082;
      v61 = v29;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v39 = sub_100216994();
      v41 = sub_100005FB0(v39, v40, aBlock);

      *(v34 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v32, v33, "preflightPreapprovedJoin failed for %{public}s: %{public}s", v34, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v62, v63);
    v42 = sub_100216144();
    v57[2](v57, 0, v42);
  }

  return result;
}

uint64_t sub_1001C1F04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void (**a13)(void, void, void, void, void))
{
  v16 = swift_allocObject();
  *(v16 + 16) = a13;
  _Block_copy(a13);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v17 = sub_100216774();
  sub_100002648(v17, qword_10029DBB0);
  v18 = a1;
  v19 = sub_100216754();
  v20 = sub_100216C54();

  v69 = v16;
  if (os_log_type_enabled(v19, v20))
  {
    v21 = a6;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v22 = 136446210;
    v71 = a1;
    v24 = v18;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v25 = sub_100216994();
    v27 = a1;
    v28 = sub_100005FB0(v25, v26, aBlock);

    *(v22 + 4) = v28;
    a1 = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, "Attempting a preapproved join for %{public}s", v22, 0xCu);
    sub_100006128(v23);

    a6 = v21;
  }

  if (a1)
  {
    v61 = a1;
    v29 = *(a12 + 24);
    v30 = v18;
    v31 = [v30 cloudkitContainerName];
    sub_100216974();

    v32 = [v30 octagonContextID];
    sub_100216974();

    v33 = *(v29 + 16);
    __chkstk_darwin(v34, v35);
    type metadata accessor for Container();
    sub_100216CD4();

    v50 = aBlock[0];
    v51 = swift_allocObject();
    *(v51 + 16) = sub_1001D0E08;
    *(v51 + 24) = v69;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v52 = v50;
    v62 = sub_10019C8E0(v52, 0xD000000000000068, 0x800000010023C630);

    v53 = swift_allocObject();
    v53[2] = v62;
    v53[3] = sub_1001D0E10;
    v53[4] = v51;
    v54 = swift_allocObject();
    *(v54 + 16) = sub_1001D0E2C;
    *(v54 + 24) = v53;
    *(v54 + 32) = v52;
    *(v54 + 40) = a2;
    *(v54 + 48) = a3;
    *(v54 + 56) = a4;
    *(v54 + 64) = a5;
    *(v54 + 72) = a6;
    *(v54 + 80) = a7;
    *(v54 + 88) = a8;
    *(v54 + 96) = a9;
    *(v54 + 104) = a10;
    *(v54 + 112) = a11 & 1;
    v68 = *&v52[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v55 = swift_allocObject();
    v55[2] = v52;
    v55[3] = sub_1001D0E38;
    v55[4] = v54;
    v56 = swift_allocObject();
    *(v56 + 16) = sub_1001ACE84;
    *(v56 + 24) = v55;
    aBlock[4] = sub_1000574B4;
    aBlock[5] = v56;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100287390;
    v57 = _Block_copy(aBlock);

    v58 = v52;

    [v68 performBlockAndWait:{v57, v62}];
    _Block_release(v57);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v36 = swift_allocError();
    *v37 = xmmword_100226AD0;
    *(v37 + 16) = 13;
    swift_willThrow();
    v38 = v18;
    swift_errorRetain();
    v39 = sub_100216754();
    v40 = sub_100216C74();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v41 = 136446466;
      v71 = 0;
      v42 = v38;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v43 = sub_100216994();
      v45 = sub_100005FB0(v43, v44, aBlock);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2082;
      v71 = v36;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v46 = sub_100216994();
      v48 = sub_100005FB0(v46, v47, aBlock);

      *(v41 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v39, v40, "attemptPreapprovedJoin failed for %{public}s: %{public}s", v41, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v72, v73);
    v49 = sub_100216144();
    (a13)[2](a13, 0, 0, 0, v49);
  }

  return result;
}

uint64_t sub_1001C2714(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11, __int128 a12, void *a13, uint64_t a14, void (**a15)(void, void, void, void))
{
  v18 = swift_allocObject();
  *(v18 + 16) = a15;
  _Block_copy(a15);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v19 = sub_100216774();
  sub_100002648(v19, qword_10029DBB0);
  v20 = a1;
  v21 = sub_100216754();
  v22 = sub_100216C54();

  v83 = v18;
  v84 = v20;
  if (os_log_type_enabled(v21, v22))
  {
    v23 = a6;
    v24 = a8;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v87 = v26;
    *v25 = 136446210;
    v85[0] = a1;
    v27 = v20;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v28 = sub_100216994();
    v30 = a1;
    v31 = sub_100005FB0(v28, v29, &v87);

    *(v25 + 4) = v31;
    a1 = v30;
    _os_log_impl(&_mh_execute_header, v21, v22, "Updating %{public}s", v25, 0xCu);
    sub_100006128(v26);

    a8 = v24;
    a6 = v23;
  }

  if (!a1)
  {
    sub_1000561D0();
    v39 = swift_allocError();
    *v40 = xmmword_100226AD0;
    *(v40 + 16) = 13;
    swift_willThrow();
LABEL_8:
    v41 = v84;
    swift_errorRetain();
    v42 = sub_100216754();
    v43 = sub_100216C74();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *&v87 = swift_slowAlloc();
      *v44 = 136446466;
      v45 = v41;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v46 = sub_100216994();
      v48 = sub_100005FB0(v46, v47, &v87);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2082;
      v85[0] = v39;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v49 = sub_100216994();
      v51 = sub_100005FB0(v49, v50, &v87);

      *(v44 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v42, v43, "update failed for %{public}s: %{public}s", v44, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v94, v95);
    v52 = sub_100216144();
    (a15)[2](a15, 0, 0, v52);
  }

  v75 = a6;
  v32 = *(a14 + 24);
  v33 = v84;
  v34 = [v33 cloudkitContainerName];
  sub_100216974();

  v35 = [v33 octagonContextID];
  sub_100216974();

  v36 = *(v32 + 16);
  __chkstk_darwin(v37, v38);
  type metadata accessor for Container();
  sub_100216CD4();

  v54 = v87;
  if (a11)
  {
    v55 = [a11 intValue];
    v56 = v55;
    if (v55 - 1 >= 3)
    {
      v57 = v55;
      sub_1000561D0();
      v39 = swift_allocError();
      *v58 = v57;
      *(v58 + 8) = 0;
      *(v58 + 16) = 7;
      swift_willThrow();

      goto LABEL_8;
    }
  }

  else
  {
    v56 = 0;
  }

  if (a9)
  {
    v73 = [a9 unsignedLongLongValue];
  }

  else
  {
    v73 = 0;
  }

  v59 = swift_allocObject();
  *(v59 + 16) = sub_1001D0C00;
  *(v59 + 24) = v83;
  type metadata accessor for Container.SemaphoreWrapper();
  swift_allocObject();

  v60 = v54;
  v74 = sub_10019C8E0(v60, 0xD0000000000000A1, 0x800000010023C560);

  v61 = swift_allocObject();
  v61[2] = v74;
  v61[3] = sub_1001D0D2C;
  v61[4] = v59;
  *&v87 = a3;
  *(&v87 + 1) = a4;
  *&v88 = a5;
  *(&v88 + 1) = v75;
  *&v89 = a7;
  *(&v89 + 1) = a8;
  *&v90 = v73;
  BYTE8(v90) = a9 == 0;
  *&v91 = a10;
  DWORD2(v91) = v56;
  BYTE12(v91) = a11 == 0;
  v92 = a12;
  v93 = a13;
  v62 = swift_allocObject();
  v63 = v89;
  *(v62 + 88) = v90;
  v64 = v92;
  *(v62 + 104) = v91;
  *(v62 + 120) = v64;
  v65 = v88;
  *(v62 + 40) = v87;
  *(v62 + 56) = v65;
  *(v62 + 16) = sub_1001D0D4C;
  *(v62 + 24) = v61;
  *(v62 + 32) = v60;
  *(v62 + 136) = v93;
  *(v62 + 72) = v63;
  *(v62 + 144) = 0;
  v79 = *&v60[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v66 = swift_allocObject();
  *(v66 + 16) = a2 & 1;
  *(v66 + 24) = v60;
  *(v66 + 32) = sub_1001A9BF8;
  *(v66 + 40) = v62;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_1001ACE7C;
  *(v67 + 24) = v66;
  v86[4] = sub_1000574B4;
  v86[5] = v67;
  v86[0] = _NSConcreteStackBlock;
  v86[1] = 1107296256;
  v86[2] = sub_100109050;
  v86[3] = &unk_100287278;
  v68 = _Block_copy(v86);
  v69 = v60;
  sub_1001D0D58(&v87, v85);
  v81 = v69;
  sub_1001D0D58(&v87, v85);
  v70 = a13;

  v71 = a12;
  v72 = *(&a12 + 1);

  [v79 performBlockAndWait:v68];
  _Block_release(v68);
  LOBYTE(v68) = swift_isEscapingClosureAtFileLocation();

  sub_1001D0DB4(&v87);
  sub_1001D0DB4(&v87);

  if ((v68 & 1) == 0)
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_1001C3050(void *a1, uint64_t a2, uint64_t a3, void (**a4)(const void *, void, void *))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v56 = a4;
  _Block_copy(a4);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v9 = sub_100216774();
  sub_100002648(v9, qword_10029DBB0);
  v10 = a1;
  v11 = sub_100216754();
  v12 = sub_100216C54();

  v57 = v10;
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136446210;
    v60 = a1;
    v15 = v10;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v16 = sub_100216994();
    v18 = v8;
    v19 = a2;
    v20 = a3;
    v21 = sub_100005FB0(v16, v17, aBlock);

    *(v13 + 4) = v21;
    a3 = v20;
    a2 = v19;
    v8 = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "setPreapprovedKeys %{public}s", v13, 0xCu);
    sub_100006128(v14);
  }

  if (a1)
  {
    v54 = a2;
    v55 = v8;
    v22 = *(a3 + 24);
    v23 = v57;
    v24 = [v23 cloudkitContainerName];
    sub_100216974();

    v25 = [v23 octagonContextID];
    sub_100216974();

    v26 = *(v22 + 16);
    __chkstk_darwin(v27, v28);
    type metadata accessor for Container();
    sub_100216CD4();

    v43 = aBlock[0];
    v44 = swift_allocObject();
    *(v44 + 16) = sub_1001D1BAC;
    *(v44 + 24) = v55;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v45 = v43;
    v46 = sub_10019C8E0(v45, 0xD00000000000001BLL, 0x800000010023C540);

    v47 = swift_allocObject();
    v47[2] = v46;
    v47[3] = sub_1001D1B98;
    v47[4] = v44;
    v58 = *&v45[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v48 = swift_allocObject();
    v48[2] = v54;
    v48[3] = v45;
    v48[4] = sub_1001D0D14;
    v48[5] = v47;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_1001D0D20;
    *(v49 + 24) = v48;
    aBlock[4] = sub_1000574B4;
    aBlock[5] = v49;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100287160;
    v50 = _Block_copy(aBlock);
    v51 = v45;

    [v58 performBlockAndWait:v50];

    _Block_release(v50);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v29 = swift_allocError();
    *v30 = xmmword_100226AD0;
    *(v30 + 16) = 13;
    swift_willThrow();
    v31 = v57;
    swift_errorRetain();
    v32 = sub_100216754();
    v33 = sub_100216C74();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v34 = 136446466;
      v60 = 0;
      v35 = v31;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v36 = sub_100216994();
      v38 = sub_100005FB0(v36, v37, aBlock);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2082;
      v60 = v29;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v39 = sub_100216994();
      v41 = sub_100005FB0(v39, v40, aBlock);

      *(v34 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v32, v33, "setPreapprovedKeys failed for %{public}s: %{public}s", v34, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v61, v62);
    v42 = sub_100216144();
    v56[2](v56, 0, v42);
  }

  return result;
}

uint64_t sub_1001C3780(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void, void))
{
  v7 = swift_allocObject();
  *(v7 + 16) = a5;
  _Block_copy(a5);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029DBB0);
  v9 = a1;
  v10 = sub_100216754();
  v11 = sub_100216C54();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v45[0] = v13;
    *v12 = 136446210;
    v14 = v9;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v15 = sub_100216994();
    v17 = sub_100005FB0(v15, v16, v45);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "Updating TLKs for %{public}s", v12, 0xCu);
    sub_100006128(v13);
  }

  if (a1)
  {
    v43 = v7;
    v18 = *(a4 + 24);
    v19 = v9;
    v20 = [v19 cloudkitContainerName];
    sub_100216974();

    v21 = [v19 octagonContextID];
    sub_100216974();

    v22 = *(v18 + 16);
    __chkstk_darwin(v23, v24);
    type metadata accessor for Container();
    sub_100216CD4();

    v38 = v45[0];
    v39 = swift_allocObject();
    *(v39 + 16) = sub_1001D1BB4;
    *(v39 + 24) = v43;

    sub_10016BF00(a2, a3, sub_1001D0CF4, v39);
  }

  else
  {
    sub_1000561D0();
    swift_allocError();
    *v25 = xmmword_100226AD0;
    *(v25 + 16) = 13;
    swift_willThrow();
    v26 = v9;
    swift_errorRetain();
    v27 = sub_100216754();
    v28 = sub_100216C74();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v45[0] = swift_slowAlloc();
      *v29 = 136446466;
      v30 = v26;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v31 = sub_100216994();
      v33 = sub_100005FB0(v31, v32, v45);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v34 = sub_100216994();
      v36 = sub_100005FB0(v34, v35, v45);

      *(v29 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v27, v28, "updateTLKs failed for %{public}s: %{public}s", v29, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v45[2], v45[3]);
    v37 = sub_100216144();
    (a5)[2](a5, 0, v37);
  }
}

uint64_t sub_1001C3CB0(void *a1, uint64_t a2, void (**a3)(const void *, void *))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v50 = a3;
  _Block_copy(a3);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v6 = sub_100216774();
  sub_100002648(v6, qword_10029DBB0);
  v7 = a1;
  v8 = sub_100216754();
  v9 = sub_100216C54();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock[0] = v11;
    *v10 = 136446210;
    v53 = a1;
    v12 = v7;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v13 = sub_100216994();
    v15 = sub_100005FB0(v13, v14, aBlock);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "Departing %{public}s", v10, 0xCu);
    sub_100006128(v11);
  }

  if (a1)
  {
    v48 = v5;
    v16 = *(a2 + 24);
    v17 = v7;
    v18 = [v17 cloudkitContainerName];
    sub_100216974();

    v19 = [v17 octagonContextID];
    sub_100216974();

    v20 = *(v16 + 16);
    __chkstk_darwin(v21, v22);
    type metadata accessor for Container();
    sub_100216CD4();

    v37 = aBlock[0];
    v38 = swift_allocObject();
    *(v38 + 16) = sub_1001D1C78;
    *(v38 + 24) = v48;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v39 = v37;
    v40 = sub_10019C8E0(v39, 0xD00000000000001FLL, 0x800000010023C520);

    v41 = swift_allocObject();
    v41[2] = v40;
    v41[3] = sub_1001D1C74;
    v41[4] = v38;
    v51 = *&v39[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v42 = swift_allocObject();
    v42[2] = v39;
    v42[3] = sub_1001D0CDC;
    v42[4] = v41;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_1001D0CE8;
    *(v43 + 24) = v42;
    aBlock[4] = sub_1000574B4;
    aBlock[5] = v43;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100287020;
    v44 = _Block_copy(aBlock);
    v45 = v39;

    [v51 performBlockAndWait:v44];

    _Block_release(v44);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v23 = swift_allocError();
    *v24 = xmmword_100226AD0;
    *(v24 + 16) = 13;
    swift_willThrow();
    v25 = v7;
    swift_errorRetain();
    v26 = sub_100216754();
    v27 = sub_100216C74();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v28 = 136446466;
      v53 = 0;
      v29 = v25;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v30 = sub_100216994();
      v32 = sub_100005FB0(v30, v31, aBlock);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2082;
      v53 = v23;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v33 = sub_100216994();
      v35 = sub_100005FB0(v33, v34, aBlock);

      *(v28 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v26, v27, "departByDistrustingSelf failed for %{public}s: %{public}s", v28, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v54, v55);
    v36 = sub_100216144();
    v50[2](v50, v36);
  }

  return result;
}

uint64_t sub_1001C43A4(void *a1, uint64_t a2, uint64_t a3, void (**a4)(const void *, void *))
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  v54 = a4;
  _Block_copy(a4);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029DBB0);
  v9 = a1;

  v10 = sub_100216754();
  v11 = sub_100216C54();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v12 = 136446466;
    v13 = sub_100216BC4();
    v15 = sub_100005FB0(v13, v14, aBlock);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2082;
    v57 = a1;
    v16 = v9;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v17 = sub_100216994();
    v19 = sub_100005FB0(v17, v18, aBlock);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "Distrusting %{public}s in %{public}s", v12, 0x16u);
    swift_arrayDestroy();
  }

  if (a1)
  {
    v52 = v7;
    v20 = *(a3 + 24);
    v21 = v9;
    v22 = [v21 cloudkitContainerName];
    sub_100216974();

    v23 = [v21 octagonContextID];
    sub_100216974();

    v24 = *(v20 + 16);
    __chkstk_darwin(v25, v26);
    type metadata accessor for Container();
    sub_100216CD4();

    v41 = aBlock[0];
    v42 = swift_allocObject();
    *(v42 + 16) = sub_1001D1C78;
    *(v42 + 24) = v52;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v43 = v41;
    v44 = sub_10019C8E0(v43, 0xD000000000000018, 0x800000010023C500);

    v45 = swift_allocObject();
    v45[2] = v44;
    v45[3] = sub_1001D1C74;
    v45[4] = v42;
    v55 = *&v43[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v46 = swift_allocObject();
    v46[2] = v43;
    v46[3] = sub_1001D0CC4;
    v46[4] = v45;
    v46[5] = a2;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_1001D0CD0;
    *(v47 + 24) = v46;
    aBlock[4] = sub_1000574B4;
    aBlock[5] = v47;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100286F30;
    v48 = _Block_copy(aBlock);

    v49 = v43;

    [v55 performBlockAndWait:v48];

    _Block_release(v48);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v27 = swift_allocError();
    *v28 = xmmword_100226AD0;
    *(v28 + 16) = 13;
    swift_willThrow();
    v29 = v9;
    swift_errorRetain();
    v30 = sub_100216754();
    v31 = sub_100216C74();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v32 = 136446466;
      v57 = 0;
      v33 = v29;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v34 = sub_100216994();
      v36 = sub_100005FB0(v34, v35, aBlock);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2082;
      v57 = v27;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v37 = sub_100216994();
      v39 = sub_100005FB0(v37, v38, aBlock);

      *(v32 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v30, v31, "distrustPeerIDs failed for %{public}s: %{public}s", v32, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v58, v59);
    v40 = sub_100216144();
    v54[2](v54, v40);
  }

  return result;
}

uint64_t sub_1001C4B0C(void *a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v52 = swift_allocObject();
  *(v52 + 16) = a4;
  _Block_copy(a4);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v6 = sub_100216774();
  sub_100002648(v6, qword_10029DBB0);
  v7 = a1;

  v8 = sub_100216754();
  v9 = sub_100216C94();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v10 = 136446466;
    v11 = sub_100216BC4();
    v13 = sub_100005FB0(v11, v12, aBlock);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;
    v54 = a1;
    v14 = v7;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v15 = sub_100216994();
    v17 = sub_100005FB0(v15, v16, aBlock);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "Dropping %{public}s in %{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  if (a1)
  {
    v18 = *(a3 + 24);
    v19 = v7;
    v20 = [v19 cloudkitContainerName];
    sub_100216974();

    v21 = [v19 octagonContextID];
    sub_100216974();

    v22 = *(v18 + 16);
    __chkstk_darwin(v23, v24);
    type metadata accessor for Container();
    sub_100216CD4();

    v38 = aBlock[0];
    v39 = swift_allocObject();
    *(v39 + 16) = sub_1001D1C78;
    *(v39 + 24) = v52;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v40 = v38;
    v41 = sub_10019C8E0(v40, 0xD000000000000014, 0x800000010023C4E0);

    v42 = swift_allocObject();
    v42[2] = v41;
    v42[3] = sub_1001D0C90;
    v42[4] = v39;
    v51 = *&v40[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v43 = swift_allocObject();
    v43[2] = v40;
    v43[3] = sub_1001D0CAC;
    v43[4] = v42;
    v43[5] = a2;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_1001D0CB8;
    *(v44 + 24) = v43;
    aBlock[4] = sub_1000574B4;
    aBlock[5] = v44;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100286E40;
    v45 = _Block_copy(aBlock);

    v46 = v40;

    [v51 performBlockAndWait:v45];

    _Block_release(v45);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    swift_allocError();
    *v25 = xmmword_100226AD0;
    *(v25 + 16) = 13;
    swift_willThrow();
    v26 = v7;
    swift_errorRetain();
    v27 = sub_100216754();
    v28 = sub_100216C74();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock[0] = v31;
      *v29 = 136446466;
      v54 = 0;
      v32 = v26;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v33 = sub_100216994();
      v35 = sub_100005FB0(v33, v34, aBlock);

      *(v29 + 4) = v35;
      *(v29 + 12) = 2114;
      swift_errorRetain();
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 14) = v36;
      *v30 = v36;
      _os_log_impl(&_mh_execute_header, v27, v28, "dropPeerIDs failed for %{public}s: %{public}@", v29, 0x16u);
      sub_1000114D4(v30, &qword_10029D580, &unk_10021CCC0);

      sub_100006128(v31);
    }

    swift_getErrorValue();
    sub_1001ADD74(v55, v56);
    v37 = sub_100216144();
    (a4)[2](a4, v37);
  }

  return result;
}

uint64_t sub_1001C525C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8)
{
  v60 = swift_allocObject();
  *(v60 + 16) = a8;
  v59 = a8;
  _Block_copy(a8);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v58 = sub_100216774();
  sub_100002648(v58, qword_10029DBB0);
  v13 = a1;
  v14 = sub_100216754();
  v15 = sub_100216C54();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v61[0] = v17;
    *v16 = 136446466;
    v18 = v13;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v19 = sub_100216994();
    v21 = sub_100005FB0(v19, v20, v61);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2050;
    *(v16 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v14, v15, "fetchViableBottles in %{public}s from source (%{public}ld)", v16, 0x16u);
    sub_100006128(v17);
  }

  if (a1)
  {
    v54 = a4;
    v22 = *(a7 + 24);
    v23 = v13;
    v24 = [v23 cloudkitContainerName];
    sub_100216974();

    v25 = [v23 octagonContextID];
    sub_100216974();

    v26 = *(v22 + 16);
    __chkstk_darwin(v27, v28);
    type metadata accessor for Container();
    sub_100216CD4();

    v42 = v61[0];
    v43 = swift_allocObject();
    *(v43 + 16) = sub_1001D0C78;
    *(v43 + 24) = v60;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v44 = v42;
    v45 = sub_10019C8E0(v44, 0xD000000000000036, 0x800000010023C4A0);

    v46 = swift_allocObject();
    v46[2] = v45;
    v46[3] = sub_1001D1C70;
    v46[4] = v43;
    v47 = qword_100297520;

    if (v47 != -1)
    {
      swift_once();
    }

    sub_100002648(v58, qword_10029D160);
    v48 = sub_100216754();
    v49 = sub_100216C54();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 134217984;
      *(v50 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v48, v49, "beginning a fetchViableBottles from source %ld", v50, 0xCu);
    }

    if (a2 == 2)
    {
      sub_10014E26C(a3, v54, a5, a6, sub_1001D0C80, v46);
    }

    else
    {
      if (a2 != 1)
      {
        v51 = swift_allocObject();
        v51[2] = sub_1001D0C80;
        v51[3] = v46;
        v51[4] = v44;
        v51[5] = a3;
        v51[6] = v54;
        v51[7] = a5;
        v51[8] = a6;

        v52 = v44;

        sub_10014CAC0(1, sub_100057254, v51);

        goto LABEL_20;
      }

      sub_10014CAC0(0, sub_1001D0C80, v46);
    }

LABEL_20:
  }

  sub_1000561D0();
  swift_allocError();
  *v29 = xmmword_100226AD0;
  *(v29 + 16) = 13;
  swift_willThrow();
  v30 = v13;
  swift_errorRetain();
  v31 = sub_100216754();
  v32 = sub_100216C74();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v61[0] = swift_slowAlloc();
    *v33 = 136446466;
    v34 = v30;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v35 = sub_100216994();
    v37 = sub_100005FB0(v35, v36, v61);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2082;
    swift_errorRetain();
    sub_10001148C(&unk_10029D560, qword_10021D450);
    v38 = sub_100216994();
    v40 = sub_100005FB0(v38, v39, v61);

    *(v33 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v31, v32, "fetchViableBottles failed for %{public}s: %{public}s", v33, 0x16u);
    swift_arrayDestroy();
  }

  swift_getErrorValue();
  sub_1001ADD74(v61[2], v61[3]);
  v41 = sub_100216144();
  (*(v59 + 2))(v59, 0, 0, v41);
}

uint64_t sub_1001C59F8(void *a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v33 = swift_allocObject();
  *(v33 + 16) = a4;
  _Block_copy(a4);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v7 = sub_100216774();
  sub_100002648(v7, qword_10029DBB0);
  v8 = a1;
  v9 = sub_100216754();
  v10 = sub_100216C54();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v34[0] = v12;
    *v11 = 136446466;
    v13 = v8;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v14 = sub_100216994();
    v16 = sub_100005FB0(v14, v15, v34);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2050;
    *(v11 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v9, v10, "fetchViableEscrowRecords in %{public}s from source (%{public}ld)", v11, 0x16u);
    sub_100006128(v12);
  }

  if (a1)
  {
    v17 = *(a3 + 24);
    v18 = v8;
    v19 = [v18 cloudkitContainerName];
    sub_100216974();

    v20 = [v18 octagonContextID];
    sub_100216974();

    v21 = *(v17 + 16);
    __chkstk_darwin(v22, v23);
    type metadata accessor for Container();
    sub_100216CD4();

    v26 = v34[0];
    v27 = swift_allocObject();
    *(v27 + 16) = sub_1001D0C60;
    *(v27 + 24) = v33;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v28 = v26;
    v29 = sub_10019C8E0(v28, 0xD00000000000001ELL, 0x800000010023D900);

    v30 = swift_allocObject();
    v30[2] = v29;
    v30[3] = sub_1001D1BA4;
    v30[4] = v27;

    sub_10014C66C(a2, sub_1001D0C68, v30);
  }

  else
  {
    sub_1000561D0();
    swift_allocError();
    *v24 = xmmword_100226AD0;
    *(v24 + 16) = 13;
    swift_willThrow();
    swift_getErrorValue();
    sub_1001ADD74(v34[2], v34[3]);
    v25 = sub_100216144();
    (a4)[2](a4, 0, v25);
  }
}

uint64_t sub_1001C5E58(void *a1, uint64_t a2, const void *a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v42 = a3;
  _Block_copy(a3);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v6 = sub_100216774();
  v7 = sub_100002648(v6, qword_10029DBB0);
  v8 = a1;
  v9 = sub_100216754();
  v10 = sub_100216C54();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v43[0] = v12;
    *v11 = 136446210;
    v13 = v8;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v14 = sub_100216994();
    v16 = sub_100005FB0(v14, v15, v43);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "fetchEscrowContents in %{public}s", v11, 0xCu);
    sub_100006128(v12);
  }

  if (a1)
  {
    v40 = v5;
    v17 = *(a2 + 24);
    v18 = v8;
    v19 = [v18 cloudkitContainerName];
    sub_100216974();

    v20 = [v18 octagonContextID];
    sub_100216974();

    v21 = *(v17 + 16);
    __chkstk_darwin(v22, v23);
    type metadata accessor for Container();
    sub_100216CD4();

    v37 = v43[0];
    v38 = swift_allocObject();
    *(v38 + 16) = sub_1001D0C30;
    *(v38 + 24) = v40;

    sub_100148428(sub_1001D0C38, v38);
  }

  else
  {
    sub_1000561D0();
    swift_allocError();
    *v24 = xmmword_100226AD0;
    *(v24 + 16) = 13;
    swift_willThrow();
    v25 = v8;
    swift_errorRetain();
    v26 = sub_100216754();
    v27 = sub_100216C74();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v43[0] = swift_slowAlloc();
      *v28 = 136446466;
      v29 = v25;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v30 = sub_100216994();
      v32 = sub_100005FB0(v30, v31, v43);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v33 = sub_100216994();
      v35 = sub_100005FB0(v33, v34, v43);

      *(v28 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v26, v27, "fetchEscrowContents failed for %{public}s: %{public}s", v28, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v43[2], v43[3]);
    v36 = sub_100216144();
    (*(v42 + 2))(v42, 0, 0, 0, v36);
  }
}

uint64_t sub_1001C6384(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void (**a6)(void, void, void, void))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a6;
  _Block_copy(a6);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v11 = sub_100216774();
  sub_100002648(v11, qword_10029DBB0);
  v12 = a1;
  v13 = sub_100216754();
  v14 = sub_100216C54();

  v58 = a1;
  v60 = v10;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = a3;
    v17 = a5;
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v15 = 136446210;
    v62 = a1;
    v19 = v12;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v20 = sub_100216994();
    v22 = sub_100005FB0(v20, v21, aBlock);

    *(v15 + 4) = v22;
    a1 = v58;
    _os_log_impl(&_mh_execute_header, v13, v14, "Fetching policy+views for %{public}s", v15, 0xCu);
    sub_100006128(v18);
    a5 = v17;
    a3 = v16;
  }

  if (a1)
  {
    v55 = a3;
    v23 = *(a5 + 24);
    v24 = v12;
    v25 = [v24 cloudkitContainerName];
    sub_100216974();

    v26 = [v24 octagonContextID];
    sub_100216974();

    v27 = *(v23 + 16);
    __chkstk_darwin(v28, v29);
    type metadata accessor for Container();
    sub_100216CD4();

    v44 = aBlock[0];
    v45 = swift_allocObject();
    *(v45 + 16) = sub_1001D0C00;
    *(v45 + 24) = v60;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v46 = v44;
    v47 = sub_10019C8E0(v46, 0xD00000000000003DLL, 0x800000010023C460);

    v48 = swift_allocObject();
    v48[2] = v47;
    v48[3] = sub_1001D0C08;
    v48[4] = v45;
    v59 = *&v46[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v49 = swift_allocObject();
    *(v49 + 16) = v46;
    *(v49 + 24) = a2;
    *(v49 + 32) = v55;
    *(v49 + 40) = sub_1001D0C10;
    *(v49 + 48) = v48;
    *(v49 + 56) = a4 & 1;
    v50 = swift_allocObject();
    *(v50 + 16) = sub_1001D0C1C;
    *(v50 + 24) = v49;
    aBlock[4] = sub_1000574B4;
    aBlock[5] = v50;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100286BE8;
    v51 = _Block_copy(aBlock);

    v52 = v46;

    [v59 performBlockAndWait:v51];

    _Block_release(v51);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v30 = swift_allocError();
    *v31 = xmmword_100226AD0;
    *(v31 + 16) = 13;
    swift_willThrow();
    v32 = v12;
    swift_errorRetain();
    v33 = sub_100216754();
    v34 = sub_100216C74();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v35 = 136446466;
      v62 = v58;
      v36 = v32;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v37 = sub_100216994();
      v39 = sub_100005FB0(v37, v38, aBlock);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2082;
      v62 = v30;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v40 = sub_100216994();
      v42 = sub_100005FB0(v40, v41, aBlock);

      *(v35 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v33, v34, "fetchCurrentPolicy failed for %{public}s: %{public}s", v35, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v63, v64);
    v43 = sub_100216144();
    (a6)[2](a6, 0, 0, v43);
  }

  return result;
}

uint64_t sub_1001C6AC8(void *a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  _Block_copy(a4);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029DBB0);
  v9 = a1;

  v10 = sub_100216754();
  v11 = sub_100216C54();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v47[0] = swift_slowAlloc();
    *v12 = 136446466;
    v13 = v9;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v14 = sub_100216994();
    v16 = sub_100005FB0(v14, v15, v47);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
    sub_10006094C();
    v17 = sub_100216BC4();
    v19 = sub_100005FB0(v17, v18, v47);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "Fetching policy documents %{public}s with versions: %{public}s", v12, 0x16u);
    swift_arrayDestroy();
  }

  if (a1)
  {
    v45 = a2;
    v20 = *(a3 + 24);
    v21 = v9;
    v22 = [v21 cloudkitContainerName];
    sub_100216974();

    v23 = [v21 octagonContextID];
    sub_100216974();

    v24 = *(v20 + 16);
    __chkstk_darwin(v25, v26);
    type metadata accessor for Container();
    sub_100216CD4();

    v40 = v47[0];
    v41 = swift_allocObject();
    v41[2] = sub_1001D0BF8;
    v41[3] = v7;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v42 = v40;
    v43 = sub_10019C8E0(v42, 0xD000000000000025, 0x800000010023C430);

    sub_1001A7A80(v45, v42, v43, sub_1001D1BA0, v41);
  }

  else
  {
    sub_1000561D0();
    swift_allocError();
    *v27 = xmmword_100226AD0;
    *(v27 + 16) = 13;
    swift_willThrow();
    v28 = v9;
    swift_errorRetain();
    v29 = sub_100216754();
    v30 = sub_100216C74();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v47[0] = swift_slowAlloc();
      *v31 = 136446466;
      v32 = v28;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v33 = sub_100216994();
      v35 = sub_100005FB0(v33, v34, v47);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v36 = sub_100216994();
      v38 = sub_100005FB0(v36, v37, v47);

      *(v31 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v29, v30, "fetchPolicyDocuments failed for %{public}s: %{public}s", v31, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v47[2], v47[3]);
    v39 = sub_100216144();
    (a4)[2](a4, 0, v39);
  }
}

uint64_t sub_1001C70DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, const void *a12)
{
  v84[3] = a6;
  v84[4] = a8;
  v85 = a5;
  v86 = a7;
  v84[2] = a4;
  v89 = a2;
  RecoverableTLKSharesRequest = type metadata accessor for FetchRecoverableTLKSharesRequest(0);
  v14 = *(*(RecoverableTLKSharesRequest - 8) + 64);
  __chkstk_darwin(RecoverableTLKSharesRequest, v15);
  v17 = v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a12;
  v91 = a12;
  _Block_copy(a12);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v19 = sub_100216774();
  v20 = sub_100002648(v19, qword_10029DBB0);

  v21 = a1;
  v90 = v20;
  v22 = sub_100216754();
  v23 = sub_100216C54();

  v24 = os_log_type_enabled(v22, v23);
  v92 = v18;
  v87 = a3;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v94[0] = swift_slowAlloc();
    *v25 = 136446466;
    v93[0] = a1;
    v26 = v21;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v27 = sub_100216994();
    v29 = sub_100005FB0(v27, v28, v94);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    v93[0] = v89;
    v93[1] = a3;

    sub_10001148C(&qword_10029D698, &unk_100226590);
    v30 = sub_100216994();
    v32 = sub_100005FB0(v30, v31, v94);

    *(v25 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v22, v23, "Fetching recoverable TLKShares %{public}s with peerID filter: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
  }

  if (a1)
  {
    v84[0] = v17;
    v84[1] = a1;
    v33 = *(a11 + 24);
    v34 = v21;
    v35 = [v34 cloudkitContainerName];
    v36 = sub_100216974();
    v38 = v37;

    v39 = [v34 octagonContextID];
    v40 = sub_100216974();
    v42 = v41;

    v43 = *(v33 + 16);
    __chkstk_darwin(v44, v45);
    v84[-6] = v33;
    v84[-5] = v36;
    v84[-4] = v38;
    v84[-3] = v40;
    v82 = v42;
    v83 = v34;
    type metadata accessor for Container();
    sub_100216CD4();

    v91 = v93[0];
    v60 = swift_allocObject();
    *(v60 + 16) = sub_1001D1BB4;
    *(v60 + 24) = v92;
    v61 = kSecurityRTCEventNameFetchRecoverableTLKShares;

    v62 = v61;
    sub_1001D0674();
    v64 = v63;
    if (v85)
    {
      v65 = sub_100216964();
    }

    else
    {
      v65 = 0;
    }

    if (v86)
    {
      v66 = sub_100216964();
    }

    else
    {
      v66 = 0;
    }

    v67 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
    if (a9)
    {
      v68 = sub_100216964();
    }

    else
    {
      v68 = 0;
    }

    v69 = objc_allocWithZone(AAFAnalyticsEventSecurity);
    LOBYTE(v82) = a10 & 1;
    v70 = [v69 initWithKeychainCircleMetrics:0 altDSID:v65 flowID:v66 deviceSessionID:v68 eventName:v62 testsAreEnabled:v64 canSendMetrics:v82 category:v67];

    __chkstk_darwin(v71, v72);
    v82 = v89;
    v83 = v87;
    sub_1001D0854(&unk_10029D960, type metadata accessor for FetchRecoverableTLKSharesRequest);
    v73 = v84[0];
    sub_100216654();
    v74 = v91;
    v75 = *(v91 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24);
    v76 = *(v91 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32);
    sub_100006484((v91 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish), v75);
    v77 = swift_allocObject();
    v77[2] = v70;
    v77[3] = sub_1001D1BA4;
    v77[4] = v60;
    v78 = *(v76 + 16);
    v79 = *(v78 + 72);
    v80 = v70;

    v79(v73, sub_1001D0BEC, v77, v75, v78);

    sub_1001D1288(v73, type metadata accessor for FetchRecoverableTLKSharesRequest);
  }

  else
  {
    sub_1000561D0();
    v46 = swift_allocError();
    *v47 = xmmword_100226AD0;
    *(v47 + 16) = 13;
    swift_willThrow();
    v48 = v21;
    swift_errorRetain();
    v49 = sub_100216754();
    v50 = sub_100216C74();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v93[0] = swift_slowAlloc();
      *v51 = 136446466;
      v94[0] = 0;
      v52 = v48;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v53 = sub_100216994();
      v55 = sub_100005FB0(v53, v54, v93);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2082;
      v94[0] = v46;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v56 = sub_100216994();
      v58 = sub_100005FB0(v56, v57, v93);

      *(v51 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v49, v50, "fetchRecoverableTLKShares failed for %{public}s: %{public}s", v51, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v94[2], v94[3]);
    v59 = sub_100216144();
    (*(v91 + 16))(v91, 0, v59);
  }
}

uint64_t sub_1001C790C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (**a8)(const void *, void, void *))
{
  v12 = swift_allocObject();
  *(v12 + 16) = a8;
  v52 = a8;
  _Block_copy(a8);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v13 = sub_100216774();
  sub_100002648(v13, qword_10029DBB0);
  v14 = a1;
  v15 = sub_100216754();
  v16 = sub_100216C54();

  v53 = v12;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = a6;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v54[0] = v19;
    *v18 = 136446210;
    v20 = v14;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v21 = sub_100216994();
    v23 = sub_100005FB0(v21, v22, v54);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "SetRecoveryKey for %{public}s", v18, 0xCu);
    sub_100006128(v19);

    a6 = v17;
  }

  if (a1)
  {
    v24 = *(a7 + 24);
    v25 = v14;
    v26 = [v25 cloudkitContainerName];
    sub_100216974();

    v27 = [v25 octagonContextID];
    sub_100216974();

    v28 = *(v24 + 16);
    __chkstk_darwin(v29, v30);
    type metadata accessor for Container();
    sub_100216CD4();

    v44 = v54[0];
    v45 = swift_allocObject();
    v45[2] = a7;
    v45[3] = v44;
    v45[4] = sub_1001D0BBC;
    v45[5] = v53;

    v46 = v44;

    sub_10012EA7C(a2, a3, a4, a5, a6, sub_1001D0BC4, v45);
  }

  else
  {
    sub_1000561D0();
    swift_allocError();
    *v31 = xmmword_100226AD0;
    *(v31 + 16) = 13;
    swift_willThrow();
    v32 = v14;
    swift_errorRetain();
    v33 = sub_100216754();
    v34 = sub_100216C74();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v54[0] = swift_slowAlloc();
      *v35 = 136446466;
      v36 = v32;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v37 = sub_100216994();
      v39 = sub_100005FB0(v37, v38, v54);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v40 = sub_100216994();
      v42 = sub_100005FB0(v40, v41, v54);

      *(v35 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v33, v34, "SetRecoveryKey failed for %{public}s: %{public}s", v35, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v54[2], v54[3]);
    v43 = sub_100216144();
    v52[2](v52, 0, v43);
  }
}

uint64_t sub_1001C7E70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t (*a9)(uint64_t a1, uint64_t a2, uint64_t a3), char *a10)
{
  v100 = a8;
  v94 = a7;
  v98 = a2;
  v99 = a4;
  v101 = a3;
  v97 = sub_1002163D4();
  v96 = *(v97 - 8);
  v13 = *(v96 + 64);
  __chkstk_darwin(v97, v14);
  v93 = v15;
  v95 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a10;
  v105 = a10;
  _Block_copy(a10);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v92 = sub_100216774();
  v17 = sub_100002648(v92, qword_10029DBB0);
  v18 = a1;
  v104 = v17;
  v19 = sub_100216754();
  v20 = sub_100216C54();

  v21 = os_log_type_enabled(v19, v20);
  v102 = a6;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v22 = 136446210;
    v107 = a1;
    v24 = v18;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v25 = sub_100216994();
    v27 = v16;
    v28 = a5;
    v29 = a1;
    v30 = sub_100005FB0(v25, v26, aBlock);

    *(v22 + 4) = v30;
    a1 = v29;
    a5 = v28;
    v16 = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, "CreateCustodianRecoveryKey for %{public}s", v22, 0xCu);
    sub_100006128(v23);
  }

  if (a1)
  {
    v91 = a1;
    v90 = a5;
    v103 = v16;
    v89 = a9;
    v31 = *(a9 + 3);
    v32 = v18;
    v33 = [v32 cloudkitContainerName];
    v34 = sub_100216974();
    v36 = v35;

    v37 = [v32 octagonContextID];
    v38 = sub_100216974();
    v40 = v39;

    v41 = *(v31 + 2);
    __chkstk_darwin(v42, v43);
    *(&v89 - 6) = v31;
    *(&v89 - 5) = v34;
    *(&v89 - 4) = v36;
    *(&v89 - 3) = v38;
    *(&v89 - 2) = v40;
    *(&v89 - 1) = v32;
    type metadata accessor for Container();
    sub_100216CD4();

    v59 = aBlock[0];
    v60 = swift_allocObject();
    v60[2] = v89;
    v60[3] = v59;
    v61 = v103;
    v60[4] = sub_1001D0AA8;
    v60[5] = v61;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();
    v62 = v59;

    v63 = sub_10019C8E0(v62, 0xD000000000000046, 0x800000010023C3E0);

    v64 = swift_allocObject();
    *(v64 + 2) = v63;
    *(v64 + 3) = sub_1001D0AD4;
    v89 = v64;
    *(v64 + 4) = v60;
    v65 = qword_100297520;
    v91 = v63;

    v104 = v60;

    if (v65 != -1)
    {
      swift_once();
    }

    sub_100002648(v92, qword_10029D160);
    v66 = sub_100216754();
    v67 = sub_100216C54();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v66, v67, "beginning a createCustodianRecoveryKey", v68, 2u);
    }

    v92 = *&v62[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v105 = v62;
    v69 = v96;
    v70 = v95;
    v71 = v97;
    (*(v96 + 16))(v95, v94, v97);
    v72 = (*(v69 + 80) + 24) & ~*(v69 + 80);
    v73 = (v93 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
    v74 = (v73 + 23) & 0xFFFFFFFFFFFFFFF8;
    v75 = (v74 + 23) & 0xFFFFFFFFFFFFFFF8;
    v76 = (v75 + 19) & 0xFFFFFFFFFFFFFFF8;
    v77 = swift_allocObject();
    *(v77 + 16) = v105;
    (*(v69 + 32))(v77 + v72, v70, v71);
    v78 = (v77 + v73);
    v79 = v89;
    *v78 = sub_1001D0AE0;
    v78[1] = v79;
    v80 = (v77 + v74);
    v81 = v99;
    v82 = v101;
    *v80 = v98;
    v80[1] = v82;
    v83 = (v77 + v75);
    v84 = v90;
    *v83 = v81;
    v83[1] = v84;
    *(v77 + v76) = v100;
    *(v77 + ((v76 + 11) & 0xFFFFFFFFFFFFFFF8)) = v102;
    v85 = swift_allocObject();
    *(v85 + 16) = sub_1001D0AEC;
    *(v85 + 24) = v77;
    aBlock[4] = sub_1000574B4;
    aBlock[5] = v85;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_1002869E0;
    v86 = _Block_copy(aBlock);
    v87 = v105;

    [v92 performBlockAndWait:v86];

    _Block_release(v86);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v44 = swift_allocError();
    *v45 = xmmword_100226AD0;
    *(v45 + 16) = 13;
    swift_willThrow();
    v46 = v18;
    swift_errorRetain();
    v47 = sub_100216754();
    v48 = sub_100216C74();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v49 = 136446466;
      v107 = 0;
      v50 = v46;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v51 = sub_100216994();
      v53 = sub_100005FB0(v51, v52, aBlock);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2082;
      v107 = v44;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v54 = sub_100216994();
      v56 = sub_100005FB0(v54, v55, aBlock);

      *(v49 + 14) = v56;
      _os_log_impl(&_mh_execute_header, v47, v48, "CreateCustodianRecoveryKey failed for %{public}s: %{public}s", v49, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v108, v109);
    v57 = sub_100216144();
    (*(v105 + 2))(v105, 0, 0, v57);
  }

  return result;
}

uint64_t sub_1001C8834(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v73 = a2;
  v7 = sub_1002163D4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v72 = v11;
  v74 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  v77 = a4;
  _Block_copy(a4);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v13 = sub_100216774();
  v14 = sub_100002648(v13, qword_10029DBB0);
  v15 = a1;
  v76 = v14;
  v16 = sub_100216754();
  v17 = sub_100216C54();

  v18 = os_log_type_enabled(v16, v17);
  v78 = v12;
  v75 = a3;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v19 = 136446210;
    v80 = a1;
    v21 = v15;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v22 = sub_100216994();
    v24 = sub_100005FB0(v22, v23, aBlock);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "RemoveCustodianRecoveryKey for %{public}s", v19, 0xCu);
    sub_100006128(v20);

    a3 = v75;
  }

  if (a1)
  {
    v71 = a1;
    v69 = v8;
    v70 = v7;
    v25 = *(a3 + 24);
    v26 = v15;
    v27 = [v26 cloudkitContainerName];
    v28 = sub_100216974();
    v30 = v29;

    v31 = [v26 octagonContextID];
    v32 = sub_100216974();
    v34 = v33;

    v35 = *(v25 + 16);
    __chkstk_darwin(v36, v37);
    *(&v68 - 6) = v25;
    *(&v68 - 5) = v28;
    *(&v68 - 4) = v30;
    *(&v68 - 3) = v32;
    *(&v68 - 2) = v34;
    *(&v68 - 1) = v26;
    type metadata accessor for Container();
    sub_100216CD4();

    v52 = aBlock[0];
    v53 = swift_allocObject();
    v53[2] = v75;
    v53[3] = v52;
    v54 = v78;
    v53[4] = sub_1001D1C78;
    v53[5] = v54;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v55 = v52;

    v56 = sub_10019C8E0(v55, 0xD000000000000027, 0x800000010023C3B0);
    v57 = swift_allocObject();
    v57[2] = v56;
    v57[3] = sub_1001D0A28;
    v57[4] = v53;
    v77 = *&v55[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v58 = v69;
    v59 = v74;
    v60 = v70;
    (*(v69 + 16))(v74, v73, v70);
    v61 = (*(v58 + 80) + 40) & ~*(v58 + 80);
    v62 = swift_allocObject();
    *(v62 + 2) = v55;
    *(v62 + 3) = sub_1001D0A34;
    *(v62 + 4) = v57;
    (*(v58 + 32))(&v62[v61], v59, v60);
    v63 = swift_allocObject();
    *(v63 + 16) = sub_1001D0A40;
    *(v63 + 24) = v62;
    aBlock[4] = sub_1000574B4;
    aBlock[5] = v63;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_1002868F0;
    v64 = _Block_copy(aBlock);
    v65 = v55;

    [v77 performBlockAndWait:v64];

    _Block_release(v64);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v38 = swift_allocError();
    *v39 = xmmword_100226AD0;
    *(v39 + 16) = 13;
    swift_willThrow();
    v40 = v15;
    swift_errorRetain();
    v41 = sub_100216754();
    v42 = sub_100216C74();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v43 = 136446466;
      v80 = 0;
      v44 = v40;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v45 = sub_100216994();
      v47 = sub_100005FB0(v45, v46, aBlock);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2082;
      v80 = v38;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v48 = sub_100216994();
      v50 = sub_100005FB0(v48, v49, aBlock);

      *(v43 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v41, v42, "RemoveCustodianRecoveryKey failed for %{public}s: %{public}s", v43, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v81, v82);
    v51 = sub_100216144();
    (*(v77 + 2))(v77, v51);
  }

  return result;
}

uint64_t sub_1001C9040(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v75 = a2;
  v7 = sub_1002163D4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v74 = v11;
  v76 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  v79 = a4;
  _Block_copy(a4);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v13 = sub_100216774();
  v14 = sub_100002648(v13, qword_10029DBB0);
  v15 = a1;
  v78 = v14;
  v16 = sub_100216754();
  v17 = sub_100216C54();

  v18 = os_log_type_enabled(v16, v17);
  v80 = v12;
  v77 = a3;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v19 = 136446210;
    v82 = a1;
    v21 = v15;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v22 = sub_100216994();
    v24 = sub_100005FB0(v22, v23, aBlock);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "FindCustodianRecoveryKey for %{public}s", v19, 0xCu);
    sub_100006128(v20);

    a3 = v77;
  }

  if (a1)
  {
    v73 = a1;
    v71 = v8;
    v72 = v7;
    v25 = *(a3 + 24);
    v26 = v15;
    v27 = [v26 cloudkitContainerName];
    v28 = sub_100216974();
    v30 = v29;

    v31 = [v26 octagonContextID];
    v32 = sub_100216974();
    v34 = v33;

    v35 = *(v25 + 16);
    __chkstk_darwin(v36, v37);
    *(&v70 - 6) = v25;
    *(&v70 - 5) = v28;
    *(&v70 - 4) = v30;
    *(&v70 - 3) = v32;
    *(&v70 - 2) = v34;
    *(&v70 - 1) = v26;
    type metadata accessor for Container();
    sub_100216CD4();

    v52 = aBlock[0];
    v53 = swift_allocObject();
    v53[2] = v77;
    v53[3] = v52;
    v54 = v80;
    v53[4] = sub_1001D1BAC;
    v53[5] = v54;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v55 = v52;

    v56 = sub_10019C8E0(v55, 0xD000000000000025, 0x800000010023C380);
    v57 = swift_allocObject();
    *(v57 + 2) = v56;
    *(v57 + 3) = sub_1001D097C;
    *(v57 + 4) = v53;
    v79 = *&v55[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v58 = v71;
    v59 = v76;
    v60 = v72;
    (*(v71 + 16))(v76, v75, v72);
    v61 = (*(v58 + 80) + 24) & ~*(v58 + 80);
    v62 = (v74 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v63 = swift_allocObject();
    *(v63 + 16) = v55;
    (*(v58 + 32))(v63 + v61, v59, v60);
    v64 = (v63 + v62);
    *v64 = sub_1001D0988;
    v64[1] = v57;
    v65 = swift_allocObject();
    *(v65 + 16) = sub_1001D0994;
    *(v65 + 24) = v63;
    aBlock[4] = sub_1000574B4;
    aBlock[5] = v65;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100286800;
    v66 = _Block_copy(aBlock);
    v67 = v55;

    [v79 performBlockAndWait:v66];

    _Block_release(v66);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v38 = swift_allocError();
    *v39 = xmmword_100226AD0;
    *(v39 + 16) = 13;
    swift_willThrow();
    v40 = v15;
    swift_errorRetain();
    v41 = sub_100216754();
    v42 = sub_100216C74();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v43 = 136446466;
      v82 = 0;
      v44 = v40;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v45 = sub_100216994();
      v47 = sub_100005FB0(v45, v46, aBlock);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2082;
      v82 = v38;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v48 = sub_100216994();
      v50 = sub_100005FB0(v48, v49, aBlock);

      *(v43 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v41, v42, "FindCustodianRecoveryKey failed for %{public}s: %{public}s", v43, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v83, v84);
    v51 = sub_100216144();
    (*(v79 + 2))(v79, 0, v51);
  }

  return result;
}

uint64_t sub_1001C9860(void *a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a11;
  _Block_copy(a11);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v13 = sub_100216774();
  sub_100002648(v13, qword_10029DBB0);
  v14 = a1;
  v15 = sub_100216754();
  v16 = sub_100216C54();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    aBlock[0] = v46;
    *v17 = 136446210;
    v18 = v14;
    v19 = [v18 description];
    v20 = v12;
    v21 = sub_100216974();
    v23 = v22;

    v24 = v21;
    v12 = v20;
    v25 = sub_100005FB0(v24, v23, aBlock);

    *(v17 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, "Escrow Check for %{public}s", v17, 0xCu);
    sub_100006128(v46);
  }

  v26 = *(a10 + 24);
  v27 = v14;
  v28 = [v27 cloudkitContainerName];
  sub_100216974();

  v29 = [v27 octagonContextID];
  sub_100216974();

  v30 = *(v26 + 16);
  __chkstk_darwin(v31, v32);
  type metadata accessor for Container();
  sub_100216CD4();

  v33 = aBlock[0];
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1001D0904;
  *(v34 + 24) = v12;
  v35 = v34;
  type metadata accessor for Container.SemaphoreWrapper();
  swift_allocObject();

  v36 = v33;
  v45 = sub_10019C8E0(v36, 0xD000000000000074, 0x800000010023C300);

  v37 = [objc_allocWithZone(OTEscrowCheckCallResult) init];
  [v37 setNeedsReenroll:0];
  [v37 setOctagonTrusted:0];
  [v37 setSecureTermsNeeded:0];
  [v37 setRepairReason:0];
  [v37 setRepairDisabled:0];
  v38 = swift_allocObject();
  v38[2] = v45;
  v38[3] = sub_1001D1B98;
  v38[4] = v35;
  v54 = *&v36[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v39 = swift_allocObject();
  *(v39 + 16) = v36;
  *(v39 + 24) = v37;
  *(v39 + 32) = sub_1001D0920;
  *(v39 + 40) = v38;
  *(v39 + 48) = a6;
  *(v39 + 56) = a7;
  *(v39 + 64) = a8;
  *(v39 + 72) = a9;
  *(v39 + 80) = a3;
  *(v39 + 88) = a5 & 1;
  *(v39 + 96) = a4;
  *(v39 + 104) = a2 & 1;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_1001D092C;
  *(v40 + 24) = v39;
  aBlock[4] = sub_1000574B4;
  aBlock[5] = v40;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100109050;
  aBlock[3] = &unk_100286710;
  v41 = _Block_copy(aBlock);

  v42 = v36;

  v43 = v37;

  [v54 performBlockAndWait:v41];

  _Block_release(v41);
  LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

  if (v41)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001CA02C(void *a1, char a2, char a3, char a4, char a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void (**a13)(void, void, void))
{
  v18 = swift_allocObject();
  *(v18 + 16) = a13;
  _Block_copy(a13);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v77 = sub_100216774();
  sub_100002648(v77, qword_10029DBB0);
  v19 = a1;
  v20 = sub_100216754();
  v21 = sub_100216C54();

  v82 = a7;
  v79 = a3;
  v80 = a5;
  v81 = a2;
  v86 = v19;
  if (os_log_type_enabled(v20, v21))
  {
    v22 = a1;
    v23 = v18;
    v24 = a3;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = a5;
    v28 = v26;
    aBlock[0] = v26;
    *v25 = 67110402;
    *(v25 + 4) = a2 & 1;
    *(v25 + 8) = 1024;
    v29 = v24 & 1;
    v18 = v23;
    a1 = v22;
    *(v25 + 10) = v29;
    *(v25 + 14) = 1024;
    *(v25 + 16) = a4 & 1;
    *(v25 + 20) = 1024;
    *(v25 + 22) = v27 & 1;
    *(v25 + 26) = 1024;
    *(v25 + 28) = a6 & 1;
    *(v25 + 32) = 2082;
    v88 = v22;
    v30 = v19;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v31 = sub_100216994();
    v33 = sub_100005FB0(v31, v32, aBlock);

    *(v25 + 34) = v33;
    _os_log_impl(&_mh_execute_header, v20, v21, "Health Check! requiring escrow check? %{BOOL}d, %{BOOL}d, %{BOOL}d, %{BOOL}d, %{BOOL}d for %{public}s", v25, 0x2Au);
    sub_100006128(v28);
  }

  if (a1)
  {
    v34 = *(a12 + 24);
    v35 = v86;
    v36 = [v35 cloudkitContainerName];
    sub_100216974();

    v37 = [v35 octagonContextID];
    sub_100216974();

    v38 = *(v34 + 16);
    __chkstk_darwin(v39, v40);
    type metadata accessor for Container();
    sub_100216CD4();

    v56 = aBlock[0];
    v57 = swift_allocObject();
    *(v57 + 16) = sub_1001D1BAC;
    *(v57 + 24) = v18;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v58 = v56;
    v59 = sub_10019C8E0(v58, 0xD00000000000008ELL, 0x800000010023C270);
    v76 = v58;

    v60 = swift_allocObject();
    v60[2] = v59;
    v60[3] = sub_1001D1B98;
    v60[4] = v57;
    v61 = qword_100297520;

    if (v61 != -1)
    {
      swift_once();
    }

    sub_100002648(v77, qword_10029D160);
    v62 = a7;

    v63 = sub_100216754();
    v64 = sub_100216C54();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      aBlock[0] = v66;
      *v65 = 67109634;
      *(v65 + 4) = v81 & 1;
      *(v65 + 8) = 1024;
      v67 = v79;
      *(v65 + 10) = v79 & 1;
      *(v65 + 14) = 2082;
      v68 = sub_100216B34();
      v70 = sub_100005FB0(v68, v69, aBlock);

      *(v65 + 16) = v70;
      v62 = v82;
      _os_log_impl(&_mh_execute_header, v63, v64, "requestHealthCheck requiring escrow check: %{BOOL}d, %{BOOL}d, knownFederations: %{public}s", v65, 0x18u);
      sub_100006128(v66);
    }

    else
    {

      v67 = v79;
    }

    v71 = a4;
    v84 = *&v76[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v72 = swift_allocObject();
    *(v72 + 16) = v76;
    *(v72 + 24) = sub_1001D089C;
    *(v72 + 32) = v60;
    *(v72 + 40) = a8;
    *(v72 + 48) = a9;
    *(v72 + 56) = a10;
    *(v72 + 64) = a11;
    *(v72 + 72) = v81 & 1;
    *(v72 + 80) = v62;
    *(v72 + 88) = v67 & 1;
    *(v72 + 89) = v71 & 1;
    *(v72 + 90) = v80 & 1;
    *(v72 + 91) = a6 & 1;
    v73 = swift_allocObject();
    *(v73 + 16) = sub_1001D08A8;
    *(v73 + 24) = v72;
    aBlock[4] = sub_1000574B4;
    aBlock[5] = v73;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100286620;
    v74 = _Block_copy(aBlock);

    v75 = v76;

    [v84 performBlockAndWait:v74];

    _Block_release(v74);
    LOBYTE(v74) = swift_isEscapingClosureAtFileLocation();

    if (v74)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v41 = swift_allocError();
    *v42 = xmmword_100226AD0;
    *(v42 + 16) = 13;
    swift_willThrow();
    v43 = v86;
    swift_errorRetain();
    v44 = sub_100216754();
    v45 = sub_100216C74();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v46 = 136446466;
      v88 = 0;
      v47 = v43;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v48 = sub_100216994();
      v50 = sub_100005FB0(v48, v49, aBlock);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2082;
      v88 = v41;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v51 = sub_100216994();
      v53 = sub_100005FB0(v51, v52, aBlock);

      *(v46 + 14) = v53;
      _os_log_impl(&_mh_execute_header, v44, v45, "Health Check! failed for %{public}s: %{public}s", v46, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v89, v90);
    v54 = sub_100216144();
    (a13)[2](a13, 0, v54);
  }

  return result;
}

uint64_t sub_1001CA9D4(char *a1, void *a2, void (**a3)(const void *, void, void *))
{
  v78 = a2;
  SupportAppInfoRequest = type metadata accessor for GetSupportAppInfoRequest(0);
  v5 = *(*(SupportAppInfoRequest - 8) + 64);
  __chkstk_darwin(SupportAppInfoRequest, v6);
  v8 = v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v76 = v73 - v12;
  v13 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v74 = v73 - v16;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  v79 = a3;
  _Block_copy(a3);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v18 = sub_100216774();
  v19 = sub_100002648(v18, qword_10029DBB0);
  v20 = a1;
  v21 = sub_100216754();
  v22 = sub_100216C54();

  v23 = os_log_type_enabled(v21, v22);
  v80 = a1;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v81 = a1;
    v82[0] = v25;
    *v24 = 136446210;
    v26 = v20;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v27 = sub_100216994();
    v29 = sub_100005FB0(v27, v28, v82);

    *(v24 + 4) = v29;
    a1 = v80;
    _os_log_impl(&_mh_execute_header, v21, v22, "getSupportAppInfo for %{public}s", v24, 0xCu);
    sub_100006128(v25);
  }

  if (a1)
  {
    v73[0] = v8;
    v73[1] = v19;
    v77 = v17;
    v30 = v78[3];
    v31 = v20;
    v32 = [v31 cloudkitContainerName];
    v33 = sub_100216974();
    v35 = v34;

    v36 = [v31 octagonContextID];
    v37 = sub_100216974();
    v39 = v38;

    v40 = *(v30 + 16);
    __chkstk_darwin(v41, v42);
    v73[-6] = v30;
    v73[-5] = v33;
    v73[-4] = v35;
    v73[-3] = v37;
    v73[-2] = v39;
    v73[-1] = v31;
    type metadata accessor for Container();
    sub_100216CD4();

    v58 = v82[0];
    v59 = swift_allocObject();
    v60 = v77;
    *(v59 + 16) = sub_1001D07F4;
    *(v59 + 24) = v60;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v61 = v58;
    v62 = sub_10019C8E0(v61, 0xD000000000000019, 0x800000010023C250);

    v80 = v61;
    v63 = swift_allocObject();
    v63[2] = v62;
    v63[3] = sub_1001D07FC;
    v63[4] = v59;
    v64 = sub_100006484(&v61[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], *&v61[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24]);
    v65 = type metadata accessor for Metrics(0);
    v66 = v74;
    (*(*(v65 - 8) + 56))(v74, 1, 1, v65);
    v67 = type metadata accessor for AccountInfo(0);
    v68 = v76;
    (*(*(v67 - 8) + 56))(v76, 1, 1, v67);
    v69 = swift_allocObject();
    v78 = v73;
    *(v69 + 16) = sub_1001D081C;
    *(v69 + 24) = v63;
    v79 = *v64;
    __chkstk_darwin(v69, v70);
    v73[-4] = v66;
    v73[-3] = v68;
    v73[-2] = 0;
    LOBYTE(v73[-1]) = 1;
    sub_1001D0854(&qword_100298F80, type metadata accessor for GetSupportAppInfoRequest);

    v71 = v73[0];
    sub_100216654();
    RetryingCKCodeService.getSupportAppInfo(_:completion:)(v71, sub_1001D0828, v69);

    sub_1001D1288(v71, type metadata accessor for GetSupportAppInfoRequest);
    sub_1000114D4(v68, &unk_10029D6F0, &qword_100226B40);
    sub_1000114D4(v66, &qword_100297FE0, &unk_10021E7F0);
  }

  else
  {
    sub_1000561D0();
    v43 = swift_allocError();
    *v44 = xmmword_100226AD0;
    *(v44 + 16) = 13;
    swift_willThrow();
    v45 = v20;
    swift_errorRetain();
    v46 = sub_100216754();
    v47 = sub_100216C74();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 136446466;
      v81 = v80;
      v82[0] = v49;
      v50 = v45;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v51 = sub_100216994();
      v53 = sub_100005FB0(v51, v52, v82);

      *(v48 + 4) = v53;
      *(v48 + 12) = 2082;
      v81 = v43;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v54 = sub_100216994();
      v56 = sub_100005FB0(v54, v55, v82);

      *(v48 + 14) = v56;
      _os_log_impl(&_mh_execute_header, v46, v47, "getSupportInfo failed for %{public}s: %{public}s", v48, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v82[2], v82[3]);
    v57 = sub_100216144();
    v79[2](v79, 0, v57);
  }
}

uint64_t sub_1001CB270(void *a1, uint64_t a2, void (**a3)(const void *, void *))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v42 = a3;
  _Block_copy(a3);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v6 = sub_100216774();
  v7 = sub_100002648(v6, qword_10029DBB0);
  v8 = a1;
  v9 = sub_100216754();
  v10 = sub_100216C54();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v43[0] = v12;
    *v11 = 136446210;
    v13 = v8;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v14 = sub_100216994();
    v16 = sub_100005FB0(v14, v15, v43);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "removeEscrowCache for %{public}s", v11, 0xCu);
    sub_100006128(v12);
  }

  if (a1)
  {
    v40 = v5;
    v17 = *(a2 + 24);
    v18 = v8;
    v19 = [v18 cloudkitContainerName];
    sub_100216974();

    v20 = [v18 octagonContextID];
    sub_100216974();

    v21 = *(v17 + 16);
    __chkstk_darwin(v22, v23);
    type metadata accessor for Container();
    sub_100216CD4();

    v37 = v43[0];
    v38 = swift_allocObject();
    *(v38 + 16) = sub_1001D1C78;
    *(v38 + 24) = v40;

    sub_10014BE74(sub_1001D1C74, v38);
  }

  else
  {
    sub_1000561D0();
    swift_allocError();
    *v24 = xmmword_100226AD0;
    *(v24 + 16) = 13;
    swift_willThrow();
    v25 = v8;
    swift_errorRetain();
    v26 = sub_100216754();
    v27 = sub_100216C74();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v43[0] = swift_slowAlloc();
      *v28 = 136446466;
      v29 = v25;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v30 = sub_100216994();
      v32 = sub_100005FB0(v30, v31, v43);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v33 = sub_100216994();
      v35 = sub_100005FB0(v33, v34, v43);

      *(v28 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v26, v27, "removeEscrowCache failed for %{public}s: %{public}s", v28, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v43[2], v43[3]);
    v36 = sub_100216144();
    v42[2](v42, v36);
  }
}

uint64_t sub_1001CB790(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, uint64_t a9, void (**a10)(void, void))
{
  v79 = a7;
  v80 = a8;
  v78 = a6;
  v76 = a4;
  v77 = a5;
  v74 = a2;
  v75 = a3;
  v81 = type metadata accessor for ResetAccountCDPContentsRequest(0);
  v11 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81, v12);
  v14 = v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a10;
  _Block_copy(a10);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v16 = sub_100216774();
  v17 = sub_100002648(v16, qword_10029DBB0);
  v18 = a1;
  v83 = v17;
  v19 = sub_100216754();
  v20 = sub_100216C54();

  v21 = os_log_type_enabled(v19, v20);
  v84 = a1;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v85 = a1;
    v86[0] = v23;
    *v22 = 136446210;
    v24 = v18;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v25 = sub_100216994();
    v27 = sub_100005FB0(v25, v26, v86);
    a1 = v84;

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, "resetAccountCDPContents for %{public}s", v22, 0xCu);
    sub_100006128(v23);
  }

  if (a1)
  {
    v73[0] = v14;
    v73[1] = a10;
    v82 = v15;
    v28 = *(a9 + 24);
    v29 = v18;
    v30 = [v29 cloudkitContainerName];
    v31 = sub_100216974();
    v33 = v32;

    v34 = [v29 octagonContextID];
    v35 = sub_100216974();
    v37 = v36;

    v38 = *(v28 + 16);
    __chkstk_darwin(v39, v40);
    v73[-6] = v28;
    v73[-5] = v31;
    v73[-4] = v33;
    v73[-3] = v35;
    v73[-2] = v37;
    v73[-1] = v29;
    type metadata accessor for Container();
    sub_100216CD4();

    v56 = v86[0];
    v57 = swift_allocObject();
    v58 = v82;
    *(v57 + 16) = sub_1001D1C78;
    *(v57 + 24) = v58;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v59 = v56;
    v60 = sub_10019C8E0(v59, 0xD00000000000006BLL, 0x800000010023C1E0);

    v61 = swift_allocObject();
    v83 = v60;
    v84 = v57;
    v61[2] = v60;
    v61[3] = sub_1001D1C74;
    v61[4] = v57;
    __chkstk_darwin(v61, v62);
    v63 = v75;
    v73[-6] = v74;
    v73[-5] = v63;
    v64 = v77;
    v73[-4] = v76;
    v73[-3] = v64;
    LOBYTE(v73[-2]) = v78 & 1;
    BYTE1(v73[-2]) = v79 & 1;
    BYTE2(v73[-2]) = v80 & 1;
    sub_1001D0854(&qword_100298FA8, type metadata accessor for ResetAccountCDPContentsRequest);

    v65 = v73[0];
    sub_100216654();
    v66 = *&v59[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
    v67 = *&v59[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
    sub_100006484(&v59[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v66);
    v68 = swift_allocObject();
    v68[2] = v59;
    v68[3] = sub_1001D07B0;
    v68[4] = v61;
    v69 = *(v67 + 16);
    v70 = *(v69 + 112);
    v71 = v59;

    v70(v65, sub_1001D07E8, v68, v66, v69);

    sub_1001D1288(v65, type metadata accessor for ResetAccountCDPContentsRequest);
  }

  else
  {
    sub_1000561D0();
    v41 = swift_allocError();
    *v42 = xmmword_100226AD0;
    *(v42 + 16) = 13;
    swift_willThrow();
    v43 = v18;
    swift_errorRetain();
    v44 = sub_100216754();
    v45 = sub_100216C74();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 136446466;
      v85 = v84;
      v86[0] = v47;
      v48 = v43;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v49 = sub_100216994();
      v51 = sub_100005FB0(v49, v50, v86);

      *(v46 + 4) = v51;
      *(v46 + 12) = 2082;
      v85 = v41;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v52 = sub_100216994();
      v54 = sub_100005FB0(v52, v53, v86);

      *(v46 + 14) = v54;
      _os_log_impl(&_mh_execute_header, v44, v45, "resetAccountCDPContents failed for %{public}s: %{public}s", v46, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v86[2], v86[3]);
    v55 = sub_100216144();
    (a10)[2](a10, v55);
  }
}

void sub_1001CBF18(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, void (**a11)(void, void, void))
{
  v13 = a11;
  v14 = swift_allocObject();
  *(v14 + 16) = a11;
  _Block_copy(a11);
  _Block_copy(a11);
  _Block_copy(a11);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v15 = sub_100216774();
  sub_100002648(v15, qword_10029DBB0);
  v16 = a1;
  v17 = sub_100216754();
  v18 = sub_100216C54();

  v88 = v14;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock = v20;
    *v19 = 136446210;
    v96[0] = a1;
    v21 = v16;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v22 = sub_100216994();
    v24 = sub_100005FB0(v22, v23, &aBlock);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "fetchAccountSettings for %{public}s", v19, 0xCu);
    sub_100006128(v20);
  }

  if (!a1)
  {
    sub_1000561D0();
    v34 = swift_allocError();
    *v35 = xmmword_100226AD0;
    *(v35 + 16) = 13;
    swift_willThrow();
    v36 = v16;
    swift_errorRetain();
    v37 = sub_100216754();
    v38 = sub_100216C74();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v39 = 136446466;
      v96[0] = 0;
      v40 = v36;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v41 = sub_100216994();
      v43 = sub_100005FB0(v41, v42, &aBlock);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2082;
      v96[0] = v34;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v44 = sub_100216994();
      v46 = sub_100005FB0(v44, v45, &aBlock);

      *(v39 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v37, v38, "fetchAccountSettings failed for %{public}s: %{public}s", v39, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v96[2], v96[3]);
    v47 = sub_100216144();
    (a11)[2](a11, 0, v47);

    goto LABEL_10;
  }

  v81 = a2;
  v25 = *(a10 + 24);
  v26 = v16;
  v27 = [v26 cloudkitContainerName];
  sub_100216974();

  v28 = [v26 octagonContextID];
  sub_100216974();
  v30 = v29;

  v31 = *(v25 + 16);
  __chkstk_darwin(v32, v33);
  v80 = v30;
  type metadata accessor for Container();
  sub_100216CD4();

  v49 = aBlock;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_1001D0634;
  *(v50 + 24) = v88;
  type metadata accessor for Container.SemaphoreWrapper();
  swift_allocObject();
  swift_retain_n();
  v51 = v49;
  v52 = sub_10019C8E0(v51, 0xD000000000000055, 0x800000010023C180);

  v53 = swift_allocObject();
  v54 = v53;
  v53[2] = v52;
  v53[3] = sub_1001D063C;
  v53[4] = v50;
  if ((v81 & 1) == 0)
  {
    v95 = 0;
    v96[0] = 0;
    v59 = *&v51[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v60 = swift_allocObject();
    v60[2] = v51;
    v60[3] = v96;
    v60[4] = &v95;
    v61 = swift_allocObject();
    *(v61 + 16) = sub_1001D0668;
    *(v61 + 24) = v60;
    v93 = sub_1000574B4;
    v94 = v61;
    aBlock = _NSConcreteStackBlock;
    v90 = 1107296256;
    v91 = sub_100109050;
    v92 = &unk_100286288;
    v62 = _Block_copy(&aBlock);
    v87 = v51;

    v63 = v52;

    [v59 performBlockAndWait:v62];
    _Block_release(v62);
    LOBYTE(v62) = swift_isEscapingClosureAtFileLocation();

    if (v62)
    {
      __break(1u);
      goto LABEL_36;
    }

    v64 = v95;
    if (v95)
    {
      swift_errorRetain();
      v13 = a11;
      _Block_copy(a11);

      swift_errorRetain();
      sub_1001A7F5C(0, v64, v63, a11);
      _Block_release(a11);
    }

    else
    {
      v79 = v96[0];
      if (!v96[0])
      {
        v86 = sub_1001D0668;
        goto LABEL_14;
      }

      v13 = a11;
      _Block_copy(a11);

      sub_1001A7F5C(v79, 0, v63, a11);
      _Block_release(a11);
    }

LABEL_10:
    _Block_release(v13);
    v48 = v13;
LABEL_11:
    _Block_release(v48);
    return;
  }

  v86 = 0;
LABEL_14:
  v55 = kSecurityRTCEventNameFetchAccountWideSettingsTPH;
  sub_1001D0674();
  v57 = v56;
  if (a4)
  {
    v58 = sub_100216964();
  }

  else
  {
    v58 = 0;
  }

  if (a6)
  {
    v65 = sub_100216964();
  }

  else
  {
    v65 = 0;
  }

  v66 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (a8)
  {
    v67 = sub_100216964();
  }

  else
  {
    v67 = 0;
  }

  LOBYTE(v80) = a9 & 1;
  v68 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:0 altDSID:v58 flowID:v65 deviceSessionID:v67 eventName:v55 testsAreEnabled:v57 canSendMetrics:v80 category:v66];

  v69 = swift_allocObject();
  v69[2] = v68;
  v69[3] = sub_1001D065C;
  v69[4] = v54;
  v69[5] = v51;
  v85 = *&v51[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  if (v81)
  {
    v70 = swift_allocObject();
    *(v70 + 16) = 0;
    *(v70 + 24) = v51;
    *(v70 + 32) = sub_1001D07A4;
    *(v70 + 40) = v69;
    v71 = swift_allocObject();
    *(v71 + 16) = sub_1001ACE7C;
    *(v71 + 24) = v70;
    v93 = sub_1000574B4;
    v94 = v71;
    aBlock = _NSConcreteStackBlock;
    v90 = 1107296256;
    v91 = sub_100109050;
    v92 = &unk_1002863A0;
    v72 = _Block_copy(&aBlock);
    v51 = v51;
    v73 = v68;

    [v85 performBlockAndWait:v72];
    _Block_release(v72);
    LOBYTE(v72) = swift_isEscapingClosureAtFileLocation();

    sub_100186C6C(v86);
    if ((v72 & 1) == 0)
    {
LABEL_30:

      _Block_release(a11);
      v48 = a11;
      goto LABEL_11;
    }

    __break(1u);
  }

  v74 = swift_allocObject();
  v74[2] = v51;
  v74[3] = sub_1001D07A4;
  v74[4] = v69;
  v75 = swift_allocObject();
  *(v75 + 16) = sub_1001ABA14;
  *(v75 + 24) = v74;
  v93 = sub_1000574B4;
  v94 = v75;
  aBlock = _NSConcreteStackBlock;
  v90 = 1107296256;
  v91 = sub_100109050;
  v92 = &unk_100286328;
  v76 = _Block_copy(&aBlock);
  v77 = v51;
  v78 = v68;

  [v85 performBlockAndWait:v76];
  _Block_release(v76);
  LOBYTE(v76) = swift_isEscapingClosureAtFileLocation();

  sub_100186C6C(v86);
  if ((v76 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_36:
  __break(1u);
}

uint64_t sub_1001CCC24(void *a1, uint64_t a2, void (**a3)(const void *, void, void *))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v53 = a3;
  _Block_copy(a3);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v7 = sub_100216774();
  sub_100002648(v7, qword_10029DBB0);
  v8 = a1;
  v9 = sub_100216754();
  v10 = sub_100216C54();

  v54 = v8;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136446210;
    v57 = a1;
    v13 = v8;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v14 = sub_100216994();
    v16 = v6;
    v17 = a2;
    v18 = sub_100005FB0(v14, v15, aBlock);

    *(v11 + 4) = v18;
    a2 = v17;
    v6 = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "isRecoveryKeySet for %{public}s", v11, 0xCu);
    sub_100006128(v12);
  }

  if (a1)
  {
    v52 = v6;
    v19 = *(a2 + 24);
    v20 = v54;
    v21 = [v20 cloudkitContainerName];
    sub_100216974();

    v22 = [v20 octagonContextID];
    sub_100216974();

    v23 = *(v19 + 16);
    __chkstk_darwin(v24, v25);
    type metadata accessor for Container();
    sub_100216CD4();

    v40 = aBlock[0];
    v41 = swift_allocObject();
    *(v41 + 16) = sub_1001D1BB0;
    *(v41 + 24) = v52;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v42 = v40;
    v43 = sub_10019C8E0(v42, 0xD000000000000018, 0x800000010023C160);

    v44 = swift_allocObject();
    v44[2] = v43;
    v44[3] = sub_1001D0600;
    v44[4] = v41;
    v45 = swift_allocObject();
    v45[2] = sub_1001D061C;
    v45[3] = v44;
    v45[4] = v42;
    v55 = *&v42[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    *(v46 + 24) = v42;
    *(v46 + 32) = sub_1001D0628;
    *(v46 + 40) = v45;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_1001ACE7C;
    *(v47 + 24) = v46;
    aBlock[4] = sub_1000574B4;
    aBlock[5] = v47;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100286198;
    v48 = _Block_copy(aBlock);
    v49 = v42;

    [v55 performBlockAndWait:v48];
    _Block_release(v48);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v26 = swift_allocError();
    *v27 = xmmword_100226AD0;
    *(v27 + 16) = 13;
    swift_willThrow();
    v28 = v54;
    swift_errorRetain();
    v29 = sub_100216754();
    v30 = sub_100216C74();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v31 = 136446466;
      v57 = 0;
      v32 = v28;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v33 = sub_100216994();
      v35 = sub_100005FB0(v33, v34, aBlock);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2082;
      v57 = v26;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v36 = sub_100216994();
      v38 = sub_100005FB0(v36, v37, aBlock);

      *(v31 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v29, v30, "isRecoveryKeySet failed for %{public}s: %{public}s", v31, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v58, v59);
    v39 = sub_100216144();
    v53[2](v53, 0, v39);
  }

  return result;
}

uint64_t sub_1001CD37C(void *a1, uint64_t a2, void (**a3)(const void *, void, void *))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v42 = a3;
  _Block_copy(a3);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v6 = sub_100216774();
  v7 = sub_100002648(v6, qword_10029DBB0);
  v8 = a1;
  v9 = sub_100216754();
  v10 = sub_100216C54();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v43[0] = v12;
    *v11 = 136446210;
    v13 = v8;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v14 = sub_100216994();
    v16 = sub_100005FB0(v14, v15, v43);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "removeRecoveryKey for %{public}s", v11, 0xCu);
    sub_100006128(v12);
  }

  if (a1)
  {
    v40 = v5;
    v17 = *(a2 + 24);
    v18 = v8;
    v19 = [v18 cloudkitContainerName];
    sub_100216974();

    v20 = [v18 octagonContextID];
    sub_100216974();

    v21 = *(v17 + 16);
    __chkstk_darwin(v22, v23);
    type metadata accessor for Container();
    sub_100216CD4();

    v37 = v43[0];
    v38 = swift_allocObject();
    *(v38 + 16) = sub_1001D1BB0;
    *(v38 + 24) = v40;

    sub_10017BFB0(sub_1001D1B9C, v38);
  }

  else
  {
    sub_1000561D0();
    swift_allocError();
    *v24 = xmmword_100226AD0;
    *(v24 + 16) = 13;
    swift_willThrow();
    v25 = v8;
    swift_errorRetain();
    v26 = sub_100216754();
    v27 = sub_100216C74();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v43[0] = swift_slowAlloc();
      *v28 = 136446466;
      v29 = v25;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v30 = sub_100216994();
      v32 = sub_100005FB0(v30, v31, v43);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v33 = sub_100216994();
      v35 = sub_100005FB0(v33, v34, v43);

      *(v28 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v26, v27, "removeRecoveryKey failed for %{public}s: %{public}s", v28, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v43[2], v43[3]);
    v36 = sub_100216144();
    v42[2](v42, 0, v36);
  }
}

uint64_t sub_1001CD8A0(void *a1, uint64_t a2, void (**a3)(const void *, void *))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v42 = a3;
  _Block_copy(a3);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v6 = sub_100216774();
  v7 = sub_100002648(v6, qword_10029DBB0);
  v8 = a1;
  v9 = sub_100216754();
  v10 = sub_100216C54();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v43[0] = v12;
    *v11 = 136446210;
    v13 = v8;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v14 = sub_100216994();
    v16 = sub_100005FB0(v14, v15, v43);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "performATOPRVActions for %{public}s", v11, 0xCu);
    sub_100006128(v12);
  }

  if (a1)
  {
    v40 = v5;
    v17 = *(a2 + 24);
    v18 = v8;
    v19 = [v18 cloudkitContainerName];
    sub_100216974();

    v20 = [v18 octagonContextID];
    sub_100216974();

    v21 = *(v17 + 16);
    __chkstk_darwin(v22, v23);
    type metadata accessor for Container();
    sub_100216CD4();

    v37 = v43[0];
    v38 = swift_allocObject();
    *(v38 + 16) = sub_1001A9270;
    *(v38 + 24) = v40;

    sub_10017F5C8(sub_1001D1C74, v38);
  }

  else
  {
    sub_1000561D0();
    swift_allocError();
    *v24 = xmmword_100226AD0;
    *(v24 + 16) = 13;
    swift_willThrow();
    v25 = v8;
    swift_errorRetain();
    v26 = sub_100216754();
    v27 = sub_100216C74();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v43[0] = swift_slowAlloc();
      *v28 = 136446466;
      v29 = v25;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v30 = sub_100216994();
      v32 = sub_100005FB0(v30, v31, v43);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v33 = sub_100216994();
      v35 = sub_100005FB0(v33, v34, v43);

      *(v28 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v26, v27, "performATOPRVActions failed for %{public}s: %{public}s", v28, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v43[2], v43[3]);
    v36 = sub_100216144();
    v42[2](v42, v36);
  }
}

void sub_1001CDDC0(void *a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, void *aBlock)
{
  _Block_copy(aBlock);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029DBB0);
  v9 = a1;

  v10 = sub_100216754();
  v11 = sub_100216C54();

  v43 = aBlock;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v44[0] = swift_slowAlloc();
    *v12 = 136446466;
    v13 = v9;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v14 = sub_100216994();
    v16 = a3;
    v17 = sub_100005FB0(v14, v15, v44);

    *(v12 + 4) = v17;
    a3 = v16;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_100005FB0(a2, v16, v44);
    _os_log_impl(&_mh_execute_header, v10, v11, "testSemaphore for %{public}s: %{public}s", v12, 0x16u);
    swift_arrayDestroy();
  }

  if (a1)
  {
    v40 = a3;
    v18 = *(a4 + 24);
    v19 = v9;
    v20 = [v19 cloudkitContainerName];
    sub_100216974();

    v21 = [v19 octagonContextID];
    sub_100216974();

    v22 = *(v18 + 16);
    __chkstk_darwin(v23, v24);
    type metadata accessor for Container();
    sub_100216CD4();

    v38 = v44[0];
    v39 = v43;
    _Block_copy(v43);
    sub_1001A864C(a2, v40, v38, v43);
    _Block_release(v43);
  }

  else
  {
    sub_1000561D0();
    swift_allocError();
    *v25 = xmmword_100226AD0;
    *(v25 + 16) = 13;
    swift_willThrow();
    v26 = v9;
    swift_errorRetain();
    v27 = sub_100216754();
    v28 = sub_100216C74();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v44[0] = v31;
      *v29 = 136446466;
      v32 = v26;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v33 = sub_100216994();
      v35 = sub_100005FB0(v33, v34, v44);

      *(v29 + 4) = v35;
      *(v29 + 12) = 2114;
      swift_errorRetain();
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 14) = v36;
      *v30 = v36;
      _os_log_impl(&_mh_execute_header, v27, v28, "testSemaphore failed for %{public}s: %{public}@", v29, 0x16u);
      sub_1000114D4(v30, &qword_10029D580, &unk_10021CCC0);

      sub_100006128(v31);
    }

    v39 = v43;
    swift_getErrorValue();
    sub_1001ADD74(v44[2], v44[3]);
    v37 = sub_100216144();
    (v39)[2](v39, v37);
  }

  _Block_release(v39);
}

uint64_t sub_1001CE2CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (**a7)(void, void, void))
{
  v11 = swift_allocObject();
  *(v11 + 16) = a7;
  _Block_copy(a7);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v12 = sub_100216774();
  sub_100002648(v12, qword_10029DBB0);
  v13 = a1;
  v14 = sub_100216754();
  v15 = sub_100216C54();

  v62 = v11;
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v55 = a6;
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136446210;
    v64 = a1;
    v18 = v13;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v19 = sub_100216994();
    v21 = a5;
    v22 = sub_100005FB0(v19, v20, aBlock);

    *(v16 + 4) = v22;
    a5 = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "preflightRecoverOctagon for %{public}s", v16, 0xCu);
    sub_100006128(v17);
    a6 = v55;
  }

  if (a1)
  {
    v54 = a5;
    v23 = *(a6 + 24);
    v24 = v13;
    v25 = [v24 cloudkitContainerName];
    sub_100216974();

    v26 = [v24 octagonContextID];
    sub_100216974();

    v27 = *(v23 + 16);
    __chkstk_darwin(v28, v29);
    type metadata accessor for Container();
    sub_100216CD4();

    v44 = aBlock[0];
    v45 = swift_allocObject();
    *(v45 + 16) = sub_1001D1BB0;
    *(v45 + 24) = v62;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v46 = v44;
    v56 = sub_10019C8E0(v46, 0xD00000000000003FLL, 0x8000000100238C10);

    v47 = swift_allocObject();
    v47[2] = v56;
    v47[3] = sub_1001D1B9C;
    v47[4] = v45;
    v48 = swift_allocObject();
    v48[2] = sub_1001D05C4;
    v48[3] = v47;
    v48[4] = v46;
    v48[5] = a2;
    v48[6] = a3;
    v48[7] = a4;
    v48[8] = v54;
    v61 = *&v46[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v49 = swift_allocObject();
    *(v49 + 16) = 0;
    *(v49 + 24) = v46;
    *(v49 + 32) = sub_1001D05D0;
    *(v49 + 40) = v48;
    v50 = swift_allocObject();
    *(v50 + 16) = sub_100056B20;
    *(v50 + 24) = v49;
    aBlock[4] = sub_100056B30;
    aBlock[5] = v50;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100285FE0;
    v51 = _Block_copy(aBlock);
    v59 = v46;

    [v61 performBlockAndWait:v51];
    _Block_release(v51);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v30 = swift_allocError();
    *v31 = xmmword_100226AD0;
    *(v31 + 16) = 13;
    swift_willThrow();
    v32 = v13;
    swift_errorRetain();
    v33 = sub_100216754();
    v34 = sub_100216C74();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v35 = 136446466;
      v64 = 0;
      v36 = v32;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v37 = sub_100216994();
      v39 = sub_100005FB0(v37, v38, aBlock);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2082;
      v64 = v30;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v40 = sub_100216994();
      v42 = sub_100005FB0(v40, v41, aBlock);

      *(v35 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v33, v34, "preflightRecoverOctagon failed for %{public}s: %{public}s", v35, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v65, v66);
    v43 = sub_100216144();
    (a7)[2](a7, 0, v43);
  }

  return result;
}

uint64_t sub_1001CEA60(void *a1, uint64_t a2, void (**a3)(const void *, void, void *))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v42 = a3;
  _Block_copy(a3);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v6 = sub_100216774();
  v7 = sub_100002648(v6, qword_10029DBB0);
  v8 = a1;
  v9 = sub_100216754();
  v10 = sub_100216C54();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v43[0] = v12;
    *v11 = 136446210;
    v13 = v8;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v14 = sub_100216994();
    v16 = sub_100005FB0(v14, v15, v43);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "fetchTrustedPeerCount for %{public}s", v11, 0xCu);
    sub_100006128(v12);
  }

  if (a1)
  {
    v40 = v5;
    v17 = *(a2 + 24);
    v18 = v8;
    v19 = [v18 cloudkitContainerName];
    sub_100216974();

    v20 = [v18 octagonContextID];
    sub_100216974();

    v21 = *(v17 + 16);
    __chkstk_darwin(v22, v23);
    type metadata accessor for Container();
    sub_100216CD4();

    v37 = v43[0];
    v38 = swift_allocObject();
    *(v38 + 16) = sub_1001D1BAC;
    *(v38 + 24) = v40;

    sub_100161264(sub_1001D1B98, v38);
  }

  else
  {
    sub_1000561D0();
    swift_allocError();
    *v24 = xmmword_100226AD0;
    *(v24 + 16) = 13;
    swift_willThrow();
    v25 = v8;
    swift_errorRetain();
    v26 = sub_100216754();
    v27 = sub_100216C74();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v43[0] = swift_slowAlloc();
      *v28 = 136446466;
      v29 = v25;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v30 = sub_100216994();
      v32 = sub_100005FB0(v30, v31, v43);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v33 = sub_100216994();
      v35 = sub_100005FB0(v33, v34, v43);

      *(v28 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v26, v27, "fetchTrustedPeerCount failed for %{public}s: %{public}s", v28, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v43[2], v43[3]);
    v36 = sub_100216144();
    v42[2](v42, 0, v36);
  }
}

uint64_t sub_1001CEF84(void *a1, uint64_t a2, void (**a3)(const void *, void, void *))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v42 = a3;
  _Block_copy(a3);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v6 = sub_100216774();
  v7 = sub_100002648(v6, qword_10029DBB0);
  v8 = a1;
  v9 = sub_100216754();
  v10 = sub_100216C54();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v43[0] = v12;
    *v11 = 136446210;
    v13 = v8;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v14 = sub_100216994();
    v16 = sub_100005FB0(v14, v15, v43);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "fetchTrustedFullPeerCount for %{public}s", v11, 0xCu);
    sub_100006128(v12);
  }

  if (a1)
  {
    v40 = v5;
    v17 = *(a2 + 24);
    v18 = v8;
    v19 = [v18 cloudkitContainerName];
    sub_100216974();

    v20 = [v18 octagonContextID];
    sub_100216974();

    v21 = *(v17 + 16);
    __chkstk_darwin(v22, v23);
    type metadata accessor for Container();
    sub_100216CD4();

    v37 = v43[0];
    v38 = swift_allocObject();
    *(v38 + 16) = sub_1001D1BAC;
    *(v38 + 24) = v40;

    sub_1001616AC(sub_1001D05A4, v38);
  }

  else
  {
    sub_1000561D0();
    swift_allocError();
    *v24 = xmmword_100226AD0;
    *(v24 + 16) = 13;
    swift_willThrow();
    v25 = v8;
    swift_errorRetain();
    v26 = sub_100216754();
    v27 = sub_100216C74();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v43[0] = swift_slowAlloc();
      *v28 = 136446466;
      v29 = v25;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v30 = sub_100216994();
      v32 = sub_100005FB0(v30, v31, v43);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v33 = sub_100216994();
      v35 = sub_100005FB0(v33, v34, v43);

      *(v28 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v26, v27, "fetchTrustedFullPeerCount failed for %{public}s: %{public}s", v28, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v43[2], v43[3]);
    v36 = sub_100216144();
    v42[2](v42, 0, v36);
  }
}

uint64_t sub_1001CF4A8(void *a1, uint64_t a2, void (**a3)(const void *, void, void *))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v42 = a3;
  _Block_copy(a3);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v6 = sub_100216774();
  v7 = sub_100002648(v6, qword_10029DBB0);
  v8 = a1;
  v9 = sub_100216754();
  v10 = sub_100216C54();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v43[0] = v12;
    *v11 = 136446210;
    v13 = v8;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v14 = sub_100216994();
    v16 = sub_100005FB0(v14, v15, v43);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "octagonContainsDistrustedRecoveryKeys for %{public}s", v11, 0xCu);
    sub_100006128(v12);
  }

  if (a1)
  {
    v40 = v5;
    v17 = *(a2 + 24);
    v18 = v8;
    v19 = [v18 cloudkitContainerName];
    sub_100216974();

    v20 = [v18 octagonContextID];
    sub_100216974();

    v21 = *(v17 + 16);
    __chkstk_darwin(v22, v23);
    type metadata accessor for Container();
    sub_100216CD4();

    v37 = v43[0];
    v38 = swift_allocObject();
    *(v38 + 16) = sub_1001D059C;
    *(v38 + 24) = v40;

    sub_100161E50(sub_1001D1B9C, v38);
  }

  else
  {
    sub_1000561D0();
    swift_allocError();
    *v24 = xmmword_100226AD0;
    *(v24 + 16) = 13;
    swift_willThrow();
    v25 = v8;
    swift_errorRetain();
    v26 = sub_100216754();
    v27 = sub_100216C74();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v43[0] = swift_slowAlloc();
      *v28 = 136446466;
      v29 = v25;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v30 = sub_100216994();
      v32 = sub_100005FB0(v30, v31, v43);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v33 = sub_100216994();
      v35 = sub_100005FB0(v33, v34, v43);

      *(v28 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v26, v27, "octagonContainsDistrustedRecoveryKeys failed for %{public}s: %{public}s", v28, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v43[2], v43[3]);
    v36 = sub_100216144();
    v42[2](v42, 0, v36);
  }
}

uint64_t sub_1001CF9CC(void *a1, unint64_t a2, uint64_t a3, void (**a4)(const void *, Class, Class, void *))
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  v45 = a4;
  _Block_copy(a4);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029DBB0);
  v9 = a1;
  v10 = sub_100216754();
  v11 = sub_100216C54();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v46[0] = v13;
    *v12 = 136446210;
    v14 = v9;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v15 = sub_100216994();
    v17 = sub_100005FB0(v15, v16, v46);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "fetchCurrentItem for %{public}s", v12, 0xCu);
    sub_100006128(v13);
  }

  if (a1)
  {
    v44 = v7;
    v18 = *(a3 + 24);
    v19 = v9;
    v20 = [v19 cloudkitContainerName];
    sub_100216974();

    v21 = [v19 octagonContextID];
    sub_100216974();

    v22 = *(v18 + 16);
    __chkstk_darwin(v23, v24);
    type metadata accessor for Container();
    sub_100216CD4();

    v40 = v46[0];
    v41 = swift_allocObject();
    *(v41 + 16) = sub_1001D0550;
    *(v41 + 24) = v44;

    sub_10017FD2C(a2, sub_1001D057C, v41);
  }

  else
  {
    sub_1000561D0();
    swift_allocError();
    *v25 = xmmword_100226AD0;
    *(v25 + 16) = 13;
    swift_willThrow();
    v26 = v9;
    swift_errorRetain();
    v27 = sub_100216754();
    v28 = sub_100216C74();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v46[0] = swift_slowAlloc();
      *v29 = 136446466;
      v30 = v26;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v31 = sub_100216994();
      v33 = sub_100005FB0(v31, v32, v46);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v34 = sub_100216994();
      v36 = sub_100005FB0(v34, v35, v46);

      *(v29 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v27, v28, "fetchCurrentItem failed for %{public}s: %{public}s", v29, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v46[2], v46[3]);
    sub_10000200C(0, &qword_10029DEA8, off_100275030);
    isa = sub_100216B14().super.isa;
    sub_10000200C(0, &qword_100297F68, CKRecord_ptr);
    v38 = sub_100216B14().super.isa;
    v39 = sub_100216144();
    v45[2](v45, isa, v38, v39);
  }
}

uint64_t sub_1001CFF68(void *a1, unint64_t a2, uint64_t a3, void (**a4)(const void *, Class, Class, void *))
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  v45 = a4;
  _Block_copy(a4);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029DBB0);
  v9 = a1;
  v10 = sub_100216754();
  v11 = sub_100216C54();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v46[0] = v13;
    *v12 = 136446210;
    v14 = v9;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v15 = sub_100216994();
    v17 = sub_100005FB0(v15, v16, v46);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "fetchPCSIdentityByPublicKey for %{public}s", v12, 0xCu);
    sub_100006128(v13);
  }

  if (a1)
  {
    v44 = v7;
    v18 = *(a3 + 24);
    v19 = v9;
    v20 = [v19 cloudkitContainerName];
    sub_100216974();

    v21 = [v19 octagonContextID];
    sub_100216974();

    v22 = *(v18 + 16);
    __chkstk_darwin(v23, v24);
    type metadata accessor for Container();
    sub_100216CD4();

    v40 = v46[0];
    v41 = swift_allocObject();
    *(v41 + 16) = sub_1001D0504;
    *(v41 + 24) = v44;

    sub_1001810B8(a2, sub_1001D0548, v41);
  }

  else
  {
    sub_1000561D0();
    swift_allocError();
    *v25 = xmmword_100226AD0;
    *(v25 + 16) = 13;
    swift_willThrow();
    v26 = v9;
    swift_errorRetain();
    v27 = sub_100216754();
    v28 = sub_100216C74();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v46[0] = swift_slowAlloc();
      *v29 = 136446466;
      v30 = v26;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v31 = sub_100216994();
      v33 = sub_100005FB0(v31, v32, v46);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v34 = sub_100216994();
      v36 = sub_100005FB0(v34, v35, v46);

      *(v29 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v27, v28, "fetchPCSIdentityByPublicKey failed for %{public}s: %{public}s", v29, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v46[2], v46[3]);
    sub_10000200C(0, &qword_10029DE78, off_100275040);
    isa = sub_100216B14().super.isa;
    sub_10000200C(0, &qword_100297F68, CKRecord_ptr);
    v38 = sub_100216B14().super.isa;
    v39 = sub_100216144();
    v45[2](v45, isa, v38, v39);
  }
}

uint64_t sub_1001D05E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1001D0674()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = off_1002AF890;
  v7 = off_1002AF890;
  if (!off_1002AF890)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1001D1904;
    v3[3] = &unk_10027F138;
    v3[4] = &v4;
    sub_1001D1904(v3);
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    v0();
  }

  else
  {
    v1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"_Bool soft_MetricsOverrideTestsAreEnabled(void)"];
    [v1 handleFailureInFunction:v2 file:@"TrustedPeersHelper-Bridging-Header.h" lineNumber:89 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1001D078C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001D0854(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1001D0994()
{
  v1 = *(sub_1002163D4() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  sub_100137598(v3, v0 + v2, v5);
}

void sub_1001D0A40()
{
  v1 = *(sub_1002163D4() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  sub_100136644(v2, v3, v4, v5);
}

void sub_1001D0AEC()
{
  v1 = *(sub_1002163D4() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100132674(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + v5 + 8), *(v0 + ((v5 + 19) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v5 + 19) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1001D1040()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001D1288(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001D1740()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001D1880(void (*a1)(void))
{
  a1(*(v1 + 16));

  v2 = *(v1 + 40);

  return _swift_deallocObject(v1, 48, 7);
}

void *sub_1001D1904(void *a1)
{
  v5[0] = 0;
  if (!qword_1002AF898)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_1001D1A88;
    v5[4] = &unk_10027F170;
    v5[5] = v5;
    v6 = off_100288A60;
    v7 = 0;
    qword_1002AF898 = _sl_dlopen();
  }

  v2 = qword_1002AF898;
  if (!qword_1002AF898)
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"void *KeychainCircleLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"TrustedPeersHelper-Bridging-Header.h" lineNumber:86 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "MetricsOverrideTestsAreEnabled");
  *(*(a1[4] + 8) + 24) = result;
  off_1002AF890 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t sub_1001D1A88(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1002AF898 = result;
  return result;
}

uint64_t sub_1001D1CCC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v7 = sub_10001148C(a2, a3);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v15 - v10;
  v12 = objc_allocWithZone(v3);
  sub_100019C6C(a1, v11, a2, a3);
  v13 = sub_100216404();
  sub_1000114D4(a1, a2, a3);
  return v13;
}

uint64_t CuttlefishAPI.FetchViableBottlesOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = sub_10001148C(&qword_1002984B8, &unk_100226B90);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v11 - v6;
  v8 = objc_allocWithZone(v1);
  sub_100019C6C(a1, v7, &qword_1002984B8, &unk_100226B90);
  v9 = sub_100216404();
  sub_1000114D4(a1, &qword_1002984B8, &unk_100226B90);
  return v9;
}

uint64_t CuttlefishAPI.FetchPolicyDocumentsOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = sub_10001148C(&qword_1002984A8, &qword_10021DF18);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v11 - v6;
  v8 = objc_allocWithZone(v1);
  sub_100019C6C(a1, v7, &qword_1002984A8, &qword_10021DF18);
  v9 = sub_100216404();
  sub_1000114D4(a1, &qword_1002984A8, &qword_10021DF18);
  return v9;
}

uint64_t CuttlefishAPI.GetSupportAppInfoOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = sub_10001148C(&qword_100298478, &unk_100226BB0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v11 - v6;
  v8 = objc_allocWithZone(v1);
  sub_100019C6C(a1, v7, &qword_100298478, &unk_100226BB0);
  v9 = sub_100216404();
  sub_1000114D4(a1, &qword_100298478, &unk_100226BB0);
  return v9;
}

uint64_t CuttlefishAPI.ResetAccountCdpcontentsOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = sub_10001148C(&qword_100298468, &qword_10021DED8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v11 - v6;
  v8 = objc_allocWithZone(v1);
  sub_100019C6C(a1, v7, &qword_100298468, &qword_10021DED8);
  v9 = sub_100216404();
  sub_1000114D4(a1, &qword_100298468, &qword_10021DED8);
  return v9;
}

uint64_t CuttlefishAPI.AddCustodianRecoveryKeyOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = sub_10001148C(&qword_100298458, &unk_100226BC0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v11 - v6;
  v8 = objc_allocWithZone(v1);
  sub_100019C6C(a1, v7, &qword_100298458, &unk_100226BC0);
  v9 = sub_100216404();
  sub_1000114D4(a1, &qword_100298458, &unk_100226BC0);
  return v9;
}

uint64_t CuttlefishAPI.FetchRecoverableTlksharesOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = sub_10001148C(&qword_100298448, &qword_10021DEB8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v11 - v6;
  v8 = objc_allocWithZone(v1);
  sub_100019C6C(a1, v7, &qword_100298448, &qword_10021DEB8);
  v9 = sub_100216404();
  sub_1000114D4(a1, &qword_100298448, &qword_10021DEB8);
  return v9;
}

uint64_t CuttlefishAPI.RemoveRecoveryKeyOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = sub_10001148C(&qword_100298438, &unk_100226BD0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v11 - v6;
  v8 = objc_allocWithZone(v1);
  sub_100019C6C(a1, v7, &qword_100298438, &unk_100226BD0);
  v9 = sub_100216404();
  sub_1000114D4(a1, &qword_100298438, &unk_100226BD0);
  return v9;
}

uint64_t CuttlefishAPI.PerformAtoprvactionsOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = sub_10001148C(&qword_100298428, &qword_10021DE98);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v11 - v6;
  v8 = objc_allocWithZone(v1);
  sub_100019C6C(a1, v7, &qword_100298428, &qword_10021DE98);
  v9 = sub_100216404();
  sub_1000114D4(a1, &qword_100298428, &qword_10021DE98);
  return v9;
}

uint64_t CuttlefishAPI.FetchCurrentItemOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = sub_10001148C(&qword_100298418, &unk_100226BE0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v11 - v6;
  v8 = objc_allocWithZone(v1);
  sub_100019C6C(a1, v7, &qword_100298418, &unk_100226BE0);
  v9 = sub_100216404();
  sub_1000114D4(a1, &qword_100298418, &unk_100226BE0);
  return v9;
}

uint64_t CuttlefishAPI.FetchPcsidentityByPublicKeyOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = sub_10001148C(&qword_100298408, &qword_10021DE78);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v11 - v6;
  v8 = objc_allocWithZone(v1);
  sub_100019C6C(a1, v7, &qword_100298408, &qword_10021DE78);
  v9 = sub_100216404();
  sub_1000114D4(a1, &qword_100298408, &qword_10021DE78);
  return v9;
}

uint64_t CuttlefishAPI.PerformCkserverUnreadableDataRemovalOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = sub_10001148C(&qword_1002983F8, &qword_100226BF0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v11 - v6;
  v8 = objc_allocWithZone(v1);
  sub_100019C6C(a1, v7, &qword_1002983F8, &qword_100226BF0);
  v9 = sub_100216404();
  sub_1000114D4(a1, &qword_1002983F8, &qword_100226BF0);
  return v9;
}

uint64_t CuttlefishAPIAsync.updateTrust(changeToken:peerID:stableInfoAndSig:dynamicInfoAndSig:tlkShares:viewKeys:trustedDevicesVersion:metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v27 = a7;
  v28 = a8;
  v31 = a13;
  v29 = a11;
  v30 = a12;
  v26 = a9;
  updated = type metadata accessor for UpdateTrustRequest(0);
  v21 = *(*(updated - 8) + 64);
  __chkstk_darwin(updated, v22);
  v24 = &v26 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v37 = a6;
  v38 = v27;
  v39 = v28;
  v40 = a9;
  v41 = a10;
  sub_1001D63AC(&qword_100298D60, type metadata accessor for UpdateTrustRequest);
  sub_100216654();
  (*(a14 + 32))(v24, v29, v30, v31, a14);
  return sub_1001E32F4(v24, type metadata accessor for UpdateTrustRequest);
}

uint64_t CuttlefishAPIAsync.getSupportAppInfo(metrics:accountInfo:page:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  SupportAppInfoRequest = type metadata accessor for GetSupportAppInfoRequest(0);
  v17 = *(*(SupportAppInfoRequest - 8) + 64);
  __chkstk_darwin(SupportAppInfoRequest, v18);
  v20 = v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[4] = a1;
  v22[5] = a2;
  v22[6] = a3;
  v23 = a4 & 1;
  sub_1001D63AC(&qword_100298F80, type metadata accessor for GetSupportAppInfoRequest);
  sub_100216654();
  (*(a8 + 104))(v20, a5, a6, a7, a8);
  return sub_1001E32F4(v20, type metadata accessor for GetSupportAppInfoRequest);
}

uint64_t CuttlefishAPIAsync.performAtoprvactions(metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for PerformATOPRVActionsRequest(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12, v14);
  v16 = &v18[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = a1;
  v20 = a2;
  sub_1001D63AC(&unk_10029D9D0, type metadata accessor for PerformATOPRVActionsRequest);
  sub_100216654();
  (*(a6 + 128))(v16, a3, a4, a5, a6);
  return sub_1001E32F4(v16, type metadata accessor for PerformATOPRVActionsRequest);
}

uint64_t sub_1001D2D54(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = sub_10001148C(a2, a3);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  sub_100019C6C(a1, &v12 - v9, a2, a3);
  v10 = sub_100216404();
  sub_1000114D4(a1, a2, a3);
  return v10;
}

uint64_t CuttlefishAPI.AddCustodianRecoveryKeyOperation.init(request:)(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298458, &unk_100226BC0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  sub_100019C6C(a1, &v8 - v5, &qword_100298458, &unk_100226BC0);
  v6 = sub_100216404();
  sub_1000114D4(a1, &qword_100298458, &unk_100226BC0);
  return v6;
}

uint64_t CuttlefishAPI.FetchViableBottlesOperation.init(request:)(uint64_t a1)
{
  v2 = sub_10001148C(&qword_1002984B8, &unk_100226B90);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  sub_100019C6C(a1, &v8 - v5, &qword_1002984B8, &unk_100226B90);
  v6 = sub_100216404();
  sub_1000114D4(a1, &qword_1002984B8, &unk_100226B90);
  return v6;
}

uint64_t CuttlefishAPI.FetchRecoverableTlksharesOperation.init(request:)(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298448, &qword_10021DEB8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  sub_100019C6C(a1, &v8 - v5, &qword_100298448, &qword_10021DEB8);
  v6 = sub_100216404();
  sub_1000114D4(a1, &qword_100298448, &qword_10021DEB8);
  return v6;
}

uint64_t CuttlefishAPI.FetchPolicyDocumentsOperation.init(request:)(uint64_t a1)
{
  v2 = sub_10001148C(&qword_1002984A8, &qword_10021DF18);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  sub_100019C6C(a1, &v8 - v5, &qword_1002984A8, &qword_10021DF18);
  v6 = sub_100216404();
  sub_1000114D4(a1, &qword_1002984A8, &qword_10021DF18);
  return v6;
}

uint64_t CuttlefishAPI.GetSupportAppInfoOperation.init(request:)(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298478, &unk_100226BB0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  sub_100019C6C(a1, &v8 - v5, &qword_100298478, &unk_100226BB0);
  v6 = sub_100216404();
  sub_1000114D4(a1, &qword_100298478, &unk_100226BB0);
  return v6;
}

uint64_t CuttlefishAPI.ResetAccountCdpcontentsOperation.init(request:)(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298468, &qword_10021DED8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  sub_100019C6C(a1, &v8 - v5, &qword_100298468, &qword_10021DED8);
  v6 = sub_100216404();
  sub_1000114D4(a1, &qword_100298468, &qword_10021DED8);
  return v6;
}

uint64_t CuttlefishAPI.RemoveRecoveryKeyOperation.init(request:)(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298438, &unk_100226BD0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  sub_100019C6C(a1, &v8 - v5, &qword_100298438, &unk_100226BD0);
  v6 = sub_100216404();
  sub_1000114D4(a1, &qword_100298438, &unk_100226BD0);
  return v6;
}

uint64_t CuttlefishAPI.PerformAtoprvactionsOperation.init(request:)(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298428, &qword_10021DE98);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  sub_100019C6C(a1, &v8 - v5, &qword_100298428, &qword_10021DE98);
  v6 = sub_100216404();
  sub_1000114D4(a1, &qword_100298428, &qword_10021DE98);
  return v6;
}

uint64_t CuttlefishAPI.FetchPcsidentityByPublicKeyOperation.init(request:)(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298408, &qword_10021DE78);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  sub_100019C6C(a1, &v8 - v5, &qword_100298408, &qword_10021DE78);
  v6 = sub_100216404();
  sub_1000114D4(a1, &qword_100298408, &qword_10021DE78);
  return v6;
}

uint64_t CuttlefishAPI.FetchCurrentItemOperation.init(request:)(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298418, &unk_100226BE0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  sub_100019C6C(a1, &v8 - v5, &qword_100298418, &unk_100226BE0);
  v6 = sub_100216404();
  sub_1000114D4(a1, &qword_100298418, &unk_100226BE0);
  return v6;
}

uint64_t CuttlefishAPI.PerformCkserverUnreadableDataRemovalOperation.init(request:)(uint64_t a1)
{
  v2 = sub_10001148C(&qword_1002983F8, &qword_100226BF0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  sub_100019C6C(a1, &v8 - v5, &qword_1002983F8, &qword_100226BF0);
  v6 = sub_100216404();
  sub_1000114D4(a1, &qword_1002983F8, &qword_100226BF0);
  return v6;
}

id _s18TrustedPeersHelper13CuttlefishAPIO14ResetOperationCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t CuttlefishAPIAsync.reset(resetReason:idmsTargetContext:idmsCuttlefishPassword:testingNotifyIdms:accountInfo:metrics:isDbrv2:completion:)(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v27 = a7;
  v30 = a12;
  v31 = a11;
  v28 = a8;
  v29 = a14;
  v20 = type metadata accessor for ResetRequest(0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20, v22);
  v24 = &v26 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  v34 = a2 & 0x1FF;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v39 = v27;
  v40 = v28;
  v41 = a9;
  v42 = a10;
  sub_1001D63AC(&qword_100298CE0, type metadata accessor for ResetRequest);
  sub_100216654();
  (*(v29 + 8))(v24, v31, v30, v32);
  return sub_1001E32F4(v24, type metadata accessor for ResetRequest);
}

uint64_t CuttlefishAPIAsync.establish(peer:bottle:viewKeys:tlkShares:metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v24 = a8;
  v23 = a7;
  v16 = type metadata accessor for EstablishRequest(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16, v18);
  v20 = &v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  sub_1001D63AC(&unk_10029D920, type metadata accessor for EstablishRequest);
  sub_100216654();
  (*(a10 + 16))(v20, v23, v24, a9, a10);
  return sub_1001E32F4(v20, type metadata accessor for EstablishRequest);
}

uint64_t CuttlefishAPIAsync.joinWithVoucher(changeToken:peer:bottle:tlkShares:viewKeys:trustedDevicesVersion:metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v25 = a7;
  v26 = a8;
  v29 = a12;
  v27 = a10;
  v28 = a11;
  v19 = type metadata accessor for JoinWithVoucherRequest(0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19, v21);
  v23 = &v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v36 = v25;
  v37 = v26;
  v38 = a9;
  sub_1001D63AC(&unk_10029D870, type metadata accessor for JoinWithVoucherRequest);
  sub_100216654();
  (*(a13 + 24))(v23, v27, v28, v29, a13);
  return sub_1001E32F4(v23, type metadata accessor for JoinWithVoucherRequest);
}

uint64_t CuttlefishAPIAsync.setRecoveryKey(changeToken:peerID:recoverySigningPubKey:recoveryEncryptionPubKey:stableInfoAndSig:tlkShares:metrics:accountInfo:viewKeys:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v29 = a8;
  v32 = a13;
  v33 = a14;
  v30 = a15;
  v31 = a12;
  v28[1] = a10;
  v28[0] = a9;
  v22 = type metadata accessor for SetRecoveryKeyRequest(0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22, v24);
  v26 = v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  v35 = a2;
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v39 = a6;
  v40 = a7;
  v41 = v29;
  v42 = a9;
  v43 = a10;
  v44 = a11;
  sub_1001D63AC(&qword_100298D90, type metadata accessor for SetRecoveryKeyRequest);
  sub_100216654();
  (*(v30 + 40))(v26, v31, v32, v33);
  return sub_1001E32F4(v26, type metadata accessor for SetRecoveryKeyRequest);
}

uint64_t CuttlefishAPIAsync.addCustodianRecoveryKey(changeToken:peerID:peer:stableInfoAndSig:tlkShares:dynamicInfoAndSig:metrics:accountInfo:viewKeys:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v27 = a7;
  v28 = a8;
  v31 = a13;
  v29 = a11;
  v30 = a12;
  v26 = a9;
  v20 = type metadata accessor for AddCustodianRecoveryKeyRequest(0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20, v22);
  v24 = &v26 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v37 = a6;
  v38 = v27;
  v39 = v28;
  v40 = a9;
  v41 = a10;
  sub_1001D63AC(&qword_100298E10, type metadata accessor for AddCustodianRecoveryKeyRequest);
  sub_100216654();
  (*(a14 + 48))(v24, v29, v30, v31, a14);
  return sub_1001E32F4(v24, type metadata accessor for AddCustodianRecoveryKeyRequest);
}

uint64_t CuttlefishAPIAsync.fetchChanges(changeToken:metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ChangesRequest = type metadata accessor for FetchChangesRequest(0);
  v17 = *(*(ChangesRequest - 8) + 64);
  __chkstk_darwin(ChangesRequest, v18);
  v20 = v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[4] = a1;
  v22[5] = a2;
  v22[6] = a3;
  v22[7] = a4;
  sub_1001D63AC(&unk_10029DA40, type metadata accessor for FetchChangesRequest);
  sub_100216654();
  (*(a8 + 56))(v20, a5, a6, a7, a8);
  return sub_1001E32F4(v20, type metadata accessor for FetchChangesRequest);
}

uint64_t CuttlefishAPIAsync.fetchViableBottles(filterRequest:metrics:accountInfo:completion:)(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ViableBottlesRequest = type metadata accessor for FetchViableBottlesRequest(0);
  v17 = *(*(ViableBottlesRequest - 8) + 64);
  __chkstk_darwin(ViableBottlesRequest, v18);
  v20 = v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[4] = a1;
  v23 = a2 & 0x1FF;
  v24 = a3;
  v25 = a4;
  sub_1001D63AC(&unk_10029DA60, type metadata accessor for FetchViableBottlesRequest);
  sub_100216654();
  (*(a8 + 64))(v20, a5, a6, a7, a8);
  return sub_1001E32F4(v20, type metadata accessor for FetchViableBottlesRequest);
}

uint64_t CuttlefishAPIAsync.fetchRecoverableTlkshares(peerID:metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  RecoverableTLKSharesRequest = type metadata accessor for FetchRecoverableTLKSharesRequest(0);
  v17 = *(*(RecoverableTLKSharesRequest - 8) + 64);
  __chkstk_darwin(RecoverableTLKSharesRequest, v18);
  v20 = v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[4] = a1;
  v22[5] = a2;
  v22[6] = a3;
  v22[7] = a4;
  sub_1001D63AC(&unk_10029D960, type metadata accessor for FetchRecoverableTLKSharesRequest);
  sub_100216654();
  (*(a8 + 72))(v20, a5, a6, a7, a8);
  return sub_1001E32F4(v20, type metadata accessor for FetchRecoverableTLKSharesRequest);
}

uint64_t sub_1001D4850(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v50 = a6;
  v46 = a4;
  v47 = a5;
  v45 = a2;
  v8 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v43 - v11;
  v13 = type metadata accessor for AccountInfo(0);
  v48 = *(v13 - 8);
  v49 = v13;
  v14 = *(v48 + 64);
  v16 = __chkstk_darwin(v13, v15);
  v44 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v18);
  v20 = &v43 - v19;
  v21 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8, v23);
  v25 = &v43 - v24;
  v26 = type metadata accessor for Metrics(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v30 = __chkstk_darwin(v26, v29);
  v32 = &v43 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30, v33);
  v35 = &v43 - v34;
  if (a3)
  {
    v36 = *(a1 + 1);

    *a1 = v45;
    *(a1 + 1) = a3;
  }

  sub_100019C6C(v46, v25, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_1000114D4(v25, &qword_100297FE0, &unk_10021E7F0);
  }

  else
  {
    sub_1001E3224(v25, v35, type metadata accessor for Metrics);
    sub_1001E3224(v35, v32, type metadata accessor for Metrics);
    v37 = *(v50(0) + 24);
    sub_1000114D4(&a1[v37], &qword_100297FE0, &unk_10021E7F0);
    sub_1001E3224(v32, &a1[v37], type metadata accessor for Metrics);
    (*(v27 + 56))(&a1[v37], 0, 1, v26);
  }

  sub_100019C6C(v47, v12, &unk_10029D6F0, &qword_100226B40);
  v39 = v48;
  v38 = v49;
  if ((*(v48 + 48))(v12, 1, v49) == 1)
  {
    return sub_1000114D4(v12, &unk_10029D6F0, &qword_100226B40);
  }

  sub_1001E3224(v12, v20, type metadata accessor for AccountInfo);
  v41 = v44;
  sub_1001E3224(v20, v44, type metadata accessor for AccountInfo);
  v42 = *(v50(0) + 28);
  sub_1000114D4(&a1[v42], &unk_10029D6F0, &qword_100226B40);
  sub_1001E3224(v41, &a1[v42], type metadata accessor for AccountInfo);
  return (*(v39 + 56))(&a1[v42], 0, 1, v38);
}

uint64_t CuttlefishAPIAsync.fetchPolicyDocuments(keys:metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  PolicyDocumentsRequest = type metadata accessor for FetchPolicyDocumentsRequest(0);
  v15 = *(*(PolicyDocumentsRequest - 8) + 64);
  __chkstk_darwin(PolicyDocumentsRequest, v16);
  v18 = &v20[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = a1;
  v22 = a2;
  v23 = a3;
  sub_1001D63AC(&qword_100297E78, type metadata accessor for FetchPolicyDocumentsRequest);
  sub_100216654();
  (*(a7 + 80))(v18, a4, a5, a6, a7);
  return sub_1001E32F4(v18, type metadata accessor for FetchPolicyDocumentsRequest);
}

uint64_t CuttlefishAPIAsync.getRepairAction(peerID:requiresEscrowCheck:knownFederations:performCleanup:metrics:accountInfo:performDanglingPeerCleanup:updateIdms:performCaesarPeerCleanup:completion:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, int a8, __int16 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v26 = a8;
  v25 = a7;
  v27 = a11;
  v28 = a10;
  v29 = a12;
  RepairActionRequest = type metadata accessor for GetRepairActionRequest(0);
  v20 = *(*(RepairActionRequest - 8) + 64);
  __chkstk_darwin(RepairActionRequest, v21);
  v23 = &v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v36 = v25;
  v37 = v26;
  v38 = a9;
  sub_1001D63AC(&unk_10029D710, type metadata accessor for GetRepairActionRequest);
  sub_100216654();
  (*(a13 + 88))(v23, v28, v27, v29, a13);
  return sub_1001E32F4(v23, type metadata accessor for GetRepairActionRequest);
}

uint64_t CuttlefishAPIAsync.getEscrowCheck(peerID:isBackgroundCheck:passcodeGeneration:knownFederations:metrics:accountInfo:disableWithError:disableRepair:requiresEscrowCheck:completion:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v26 = a7;
  v27 = a8;
  v29 = a11;
  v30 = a10;
  v28 = a13;
  v19 = type metadata accessor for GetEscrowCheckRequest(0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19, v21);
  v23 = &v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v36 = a5 & 1;
  v37 = a6;
  v38 = v26;
  v39 = v27;
  v40 = a9;
  v41 = *(&a9 + 1);
  sub_1001D63AC(&qword_100298F00, type metadata accessor for GetEscrowCheckRequest);
  sub_100216654();
  (*(v28 + 96))(v23, v30, v29, v31);
  return sub_1001E32F4(v23, type metadata accessor for GetEscrowCheckRequest);
}