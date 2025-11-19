void sub_100714C40(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v61 = a3;
  v69 = a1;
  v70 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v66 = *(v5 - 8);
  v67 = v5;
  __chkstk_darwin(v5);
  v64 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DispatchQoS();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for WidgetDiskCache();
  v58 = *(v68 - 8);
  __chkstk_darwin(v68);
  v59 = v8;
  v60 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&qword_10118F120);
  v56 = *(v9 - 8);
  v10 = *(v56 + 64);
  __chkstk_darwin(v9 - 8);
  v57 = &v49 - v11;
  v12 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v12 - 8);
  v14 = &v49 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v55 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v49 - v20;
  __chkstk_darwin(v19);
  v23 = &v49 - v22;
  sub_1000089F8(v3, v14, &qword_101183A20);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v24 = v69;
    sub_1000095E8(v14, &qword_101183A20);
    v25 = v70;

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock[0] = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_1000105AC(v24, v25, aBlock);
      _os_log_impl(&_mh_execute_header, v26, v27, "Unable to get widget cache url for saving item named %{public}s", v28, 0xCu);
      sub_10000959C(v29);
    }
  }

  else
  {
    URL.appending(_:)();
    v30 = *(v16 + 8);
    v53 = v16 + 8;
    v54 = v30;
    v30(v14, v15);
    v51 = *(v16 + 32);
    v52 = v23;
    v31 = v21;
    v32 = v15;
    v50 = v15;
    v51(v23, v31, v15);
    v68 = *(v3 + *(v68 + 20));
    v33 = v57;
    sub_1000089F8(v61, v57, &qword_10118F120);
    v34 = v60;
    sub_10072660C(v4, v60, type metadata accessor for WidgetDiskCache);
    v35 = v55;
    (*(v16 + 16))(v55, v23, v32);
    v36 = (*(v56 + 80) + 16) & ~*(v56 + 80);
    v37 = (v10 + *(v58 + 80) + v36) & ~*(v58 + 80);
    v38 = (v59 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = (*(v16 + 80) + v38 + 16) & ~*(v16 + 80);
    v40 = swift_allocObject();
    sub_10003D17C(v33, v40 + v36, &qword_10118F120);
    sub_100726674(v34, v40 + v37, type metadata accessor for WidgetDiskCache);
    v41 = (v40 + v38);
    v42 = v70;
    *v41 = v69;
    v41[1] = v42;
    v43 = v35;
    v44 = v50;
    v51((v40 + v39), v43, v50);
    aBlock[4] = sub_1007262C4;
    aBlock[5] = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010BC910;
    v45 = _Block_copy(aBlock);

    v46 = v62;
    static DispatchQoS.unspecified.getter();
    v71 = &_swiftEmptyArrayStorage;
    sub_100726488(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags);
    sub_10010FC20(&qword_101182970);
    sub_100020674(&qword_101183F70, &qword_101182970);
    v47 = v64;
    v48 = v67;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v45);
    (*(v66 + 8))(v47, v48);
    (*(v63 + 8))(v46, v65);
    v54(v52, v44);
  }
}

void sub_100715450(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  v53 = a3;
  v61 = a1;
  v62 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v5 - 8);
  v59 = v5;
  __chkstk_darwin(v5);
  v56 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DispatchQoS();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v54 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for WidgetDiskCache();
  v51 = *(v60 - 8);
  v8 = *(v51 + 64);
  __chkstk_darwin(v60);
  v52 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v9 - 8);
  v11 = &v47 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v16 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v47 - v18;
  __chkstk_darwin(v17);
  v21 = &v47 - v20;
  v22 = v4;
  sub_1000089F8(v4, v11, &qword_101183A20);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v23 = v61;
    sub_1000095E8(v11, &qword_101183A20);
    v24 = v62;

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v27 = 136446210;
      *(v27 + 4) = sub_1000105AC(v23, v24, aBlock);
      _os_log_impl(&_mh_execute_header, v25, v26, "Unable to get widget cache url for saving item named %{public}s", v27, 0xCu);
      sub_10000959C(v28);
    }
  }

  else
  {
    URL.appending(_:)();
    v29 = v12;
    v49 = *(v13 + 8);
    v50 = v13 + 8;
    v49(v11, v12);
    v30 = *(v13 + 32);
    v48 = v21;
    v30(v21, v19, v29);
    v60 = *(v22 + *(v60 + 20));
    v31 = v22;
    v32 = v52;
    sub_10072660C(v31, v52, type metadata accessor for WidgetDiskCache);
    v33 = v21;
    v34 = v29;
    (*(v13 + 16))(v16, v33, v29);
    v35 = (*(v51 + 80) + 24) & ~*(v51 + 80);
    v36 = (v8 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = (*(v13 + 80) + v36 + 16) & ~*(v13 + 80);
    v38 = swift_allocObject();
    v39 = v53;
    *(v38 + 16) = v53;
    sub_100726674(v32, v38 + v35, type metadata accessor for WidgetDiskCache);
    v40 = (v38 + v36);
    v41 = v62;
    *v40 = v61;
    v40[1] = v41;
    v42 = v34;
    v30((v38 + v37), v16, v34);
    aBlock[4] = sub_1007261B4;
    aBlock[5] = v38;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010BC8C0;
    v43 = _Block_copy(aBlock);
    sub_10069B3BC(v39);

    v44 = v54;
    static DispatchQoS.unspecified.getter();
    v63 = &_swiftEmptyArrayStorage;
    sub_100726488(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags);
    sub_10010FC20(&qword_101182970);
    sub_100020674(&qword_101183F70, &qword_101182970);
    v45 = v56;
    v46 = v59;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v43);
    (*(v58 + 8))(v45, v46);
    (*(v55 + 8))(v44, v57);
    v49(v48, v42);
  }
}

void sub_100715B4C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v61 = a3;
  v69 = a1;
  v70 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v66 = *(v5 - 8);
  v67 = v5;
  __chkstk_darwin(v5);
  v64 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DispatchQoS();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for WidgetDiskCache();
  v58 = *(v68 - 8);
  __chkstk_darwin(v68);
  v59 = v8;
  v60 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&qword_10118F130);
  v56 = *(v9 - 8);
  v10 = *(v56 + 64);
  __chkstk_darwin(v9 - 8);
  v57 = &v49 - v11;
  v12 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v12 - 8);
  v14 = &v49 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v55 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v49 - v20;
  __chkstk_darwin(v19);
  v23 = &v49 - v22;
  sub_1000089F8(v3, v14, &qword_101183A20);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v24 = v69;
    sub_1000095E8(v14, &qword_101183A20);
    v25 = v70;

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock[0] = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_1000105AC(v24, v25, aBlock);
      _os_log_impl(&_mh_execute_header, v26, v27, "Unable to get widget cache url for saving item named %{public}s", v28, 0xCu);
      sub_10000959C(v29);
    }
  }

  else
  {
    URL.appending(_:)();
    v30 = *(v16 + 8);
    v53 = v16 + 8;
    v54 = v30;
    v30(v14, v15);
    v51 = *(v16 + 32);
    v52 = v23;
    v31 = v21;
    v32 = v15;
    v50 = v15;
    v51(v23, v31, v15);
    v68 = *(v3 + *(v68 + 20));
    v33 = v57;
    sub_1000089F8(v61, v57, &qword_10118F130);
    v34 = v60;
    sub_10072660C(v4, v60, type metadata accessor for WidgetDiskCache);
    v35 = v55;
    (*(v16 + 16))(v55, v23, v32);
    v36 = (*(v56 + 80) + 16) & ~*(v56 + 80);
    v37 = (v10 + *(v58 + 80) + v36) & ~*(v58 + 80);
    v38 = (v59 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = (*(v16 + 80) + v38 + 16) & ~*(v16 + 80);
    v40 = swift_allocObject();
    sub_10003D17C(v33, v40 + v36, &qword_10118F130);
    sub_100726674(v34, v40 + v37, type metadata accessor for WidgetDiskCache);
    v41 = (v40 + v38);
    v42 = v70;
    *v41 = v69;
    v41[1] = v42;
    v43 = v35;
    v44 = v50;
    v51((v40 + v39), v43, v50);
    aBlock[4] = sub_1007262EC;
    aBlock[5] = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010BC960;
    v45 = _Block_copy(aBlock);

    v46 = v62;
    static DispatchQoS.unspecified.getter();
    v71 = &_swiftEmptyArrayStorage;
    sub_100726488(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags);
    sub_10010FC20(&qword_101182970);
    sub_100020674(&qword_101183F70, &qword_101182970);
    v47 = v64;
    v48 = v67;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v45);
    (*(v66 + 8))(v47, v48);
    (*(v63 + 8))(v46, v65);
    v54(v52, v44);
  }
}

id sub_10071635C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v72 = a3;
  v73 = a4;
  v74 = a2;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v71 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v64 - v11;
  v13 = sub_10010FC20(&qword_10118DA20);
  __chkstk_darwin(v13 - 8);
  v15 = &v64 - v14;
  v16 = type metadata accessor for WidgetMusicRecommendation(0);
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v69 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v70 = &v64 - v21;
  __chkstk_darwin(v20);
  v23 = &v64 - v22;
  v25 = v24;
  sub_1000089F8(a1, v15, &qword_10118DA20);
  if ((*(v17 + 48))(v15, 1, v25) == 1)
  {
    sub_1000095E8(v15, &qword_10118DA20);
    type metadata accessor for WidgetDiskCache();
    (*(v8 + 16))(v12, a5, v7);
    v26 = v73;

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    v29 = v7;
    if (os_log_type_enabled(v27, v28))
    {
      v30 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v30 = 136446466;
      *(v30 + 4) = sub_1000105AC(v72, v26, &v75);
      *(v30 + 12) = 2082;
      sub_100726488(&qword_1011A4850, &type metadata accessor for URL);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      (*(v8 + 8))(v12, v29);
      v34 = sub_1000105AC(v31, v33, &v75);

      *(v30 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "Nil value set for item named %{public}s, removing file %{public}s", v30, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v8 + 8))(v12, v7);
    }

    v41 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v42);
    v44 = v43;
    v75 = 0;
    v45 = [v41 removeItemAtURL:v43 error:&v75];

    v46 = v75;
    if (v45)
    {

      return v46;
    }

    else
    {
      v74 = v75;
      v48 = v75;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    v68 = a5;
    sub_100726674(v15, v23, type metadata accessor for WidgetMusicRecommendation);
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    sub_100726488(&qword_1011A0300, type metadata accessor for WidgetMusicRecommendation);
    v35 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v37 = v36;

    v38 = v25;
    v39 = v73;
    v67 = v38;
    v40 = v68;
    Data.write(to:options:)();
    v65 = v35;
    v66 = v37;
    type metadata accessor for WidgetDiskCache();
    v49 = v23;
    v50 = v71;
    (*(v8 + 16))(v71, v40, v7);
    v51 = v70;
    sub_10072660C(v49, v70, type metadata accessor for WidgetMusicRecommendation);

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v75 = v74;
      *v54 = 136446722;
      sub_100726488(&qword_1011A4850, &type metadata accessor for URL);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      LODWORD(v68) = v53;
      v56 = v55;
      v58 = v57;
      (*(v8 + 8))(v50, v7);
      v59 = sub_1000105AC(v56, v58, &v75);

      *(v54 + 4) = v59;
      *(v54 + 12) = 2082;
      *(v54 + 14) = sub_1000105AC(v72, v39, &v75);
      *(v54 + 22) = 2082;
      sub_10072660C(v51, v69, type metadata accessor for WidgetMusicRecommendation);
      v60 = String.init<A>(describing:)();
      v62 = v61;
      sub_1007264D0(v51, type metadata accessor for WidgetMusicRecommendation);
      v63 = sub_1000105AC(v60, v62, &v75);

      *(v54 + 24) = v63;
      _os_log_impl(&_mh_execute_header, v52, v68, "Saved cache file %{public}s for item named %{public}s, value %{public}s", v54, 0x20u);
      swift_arrayDestroy();

      sub_10002C064(v65, v66);
    }

    else
    {
      sub_10002C064(v65, v66);

      sub_1007264D0(v51, type metadata accessor for WidgetMusicRecommendation);
      (*(v8 + 8))(v50, v7);
    }

    return sub_1007264D0(v49, type metadata accessor for WidgetMusicRecommendation);
  }
}

void sub_100716D8C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  if (a1)
  {
    v52 = v10;
    v53 = a3;
    v57 = a1;
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    v54 = a1;

    JSONEncoder.init()();
    v16 = sub_10010FC20(&qword_10119B110);
    sub_100722DA4(&qword_10119B118, &qword_10118EEB8);
    v17 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v19 = v18;

    v51 = v16;
    Data.write(to:options:)();
    v49 = v17;
    type metadata accessor for WidgetDiskCache();
    v35 = v52;
    (*(v52 + 16))(v12, a5, v9);
    v36 = v54;

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    v50 = v37;
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v56 = v48;
      *v39 = 136446722;
      sub_100726488(&qword_1011A4850, &type metadata accessor for URL);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      (*(v35 + 8))(v12, v9);
      v43 = sub_1000105AC(v40, v42, &v56);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2082;
      *(v39 + 14) = sub_1000105AC(v53, a4, &v56);
      *(v39 + 22) = 2082;
      v55 = v36;
      v44 = String.init<A>(describing:)();
      v46 = sub_1000105AC(v44, v45, &v56);

      *(v39 + 24) = v46;
      v47 = v50;
      _os_log_impl(&_mh_execute_header, v50, v38, "Saved cache file %{public}s for item named %{public}s, value %{public}s", v39, 0x20u);
      swift_arrayDestroy();

      sub_10002C064(v49, v19);
    }

    else
    {
      sub_10002C064(v49, v19);

      (*(v35 + 8))(v12, v9);
    }
  }

  else
  {
    type metadata accessor for WidgetDiskCache();
    (*(v10 + 16))(v15, a5, v9);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v22 = 136446466;
      *(v22 + 4) = sub_1000105AC(a3, a4, &v57);
      *(v22 + 12) = 2082;
      sub_100726488(&qword_1011A4850, &type metadata accessor for URL);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      (*(v10 + 8))(v15, v9);
      v26 = sub_1000105AC(v23, v25, &v57);

      *(v22 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "Nil value set for item named %{public}s, removing file %{public}s", v22, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v10 + 8))(v15, v9);
    }

    v27 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v28);
    v30 = v29;
    v57 = 0;
    v31 = [v27 removeItemAtURL:v29 error:&v57];

    v32 = v57;
    if (v31)
    {

      v33 = v32;
    }

    else
    {
      v54 = v57;
      v34 = v57;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

id sub_1007175A8(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v72 = a3;
  v73 = a4;
  v74 = a2;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v71 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v64 - v11;
  v13 = sub_10010FC20(&qword_10118F120);
  __chkstk_darwin(v13 - 8);
  v15 = &v64 - v14;
  v16 = type metadata accessor for WidgetMusicItem();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v69 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v70 = &v64 - v21;
  __chkstk_darwin(v20);
  v23 = &v64 - v22;
  v25 = v24;
  sub_1000089F8(a1, v15, &qword_10118F120);
  if ((*(v17 + 48))(v15, 1, v25) == 1)
  {
    sub_1000095E8(v15, &qword_10118F120);
    type metadata accessor for WidgetDiskCache();
    (*(v8 + 16))(v12, a5, v7);
    v26 = v73;

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    v29 = v7;
    if (os_log_type_enabled(v27, v28))
    {
      v30 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v30 = 136446466;
      *(v30 + 4) = sub_1000105AC(v72, v26, &v75);
      *(v30 + 12) = 2082;
      sub_100726488(&qword_1011A4850, &type metadata accessor for URL);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      (*(v8 + 8))(v12, v29);
      v34 = sub_1000105AC(v31, v33, &v75);

      *(v30 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "Nil value set for item named %{public}s, removing file %{public}s", v30, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v8 + 8))(v12, v7);
    }

    v41 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v42);
    v44 = v43;
    v75 = 0;
    v45 = [v41 removeItemAtURL:v43 error:&v75];

    v46 = v75;
    if (v45)
    {

      return v46;
    }

    else
    {
      v74 = v75;
      v48 = v75;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    v68 = a5;
    sub_100726674(v15, v23, type metadata accessor for WidgetMusicItem);
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    sub_100726488(&qword_10118EEB8, type metadata accessor for WidgetMusicItem);
    v35 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v37 = v36;

    v38 = v25;
    v39 = v73;
    v67 = v38;
    v40 = v68;
    Data.write(to:options:)();
    v65 = v35;
    v66 = v37;
    type metadata accessor for WidgetDiskCache();
    v49 = v23;
    v50 = v71;
    (*(v8 + 16))(v71, v40, v7);
    v51 = v70;
    sub_10072660C(v49, v70, type metadata accessor for WidgetMusicItem);

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v75 = v74;
      *v54 = 136446722;
      sub_100726488(&qword_1011A4850, &type metadata accessor for URL);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      LODWORD(v68) = v53;
      v56 = v55;
      v58 = v57;
      (*(v8 + 8))(v50, v7);
      v59 = sub_1000105AC(v56, v58, &v75);

      *(v54 + 4) = v59;
      *(v54 + 12) = 2082;
      *(v54 + 14) = sub_1000105AC(v72, v39, &v75);
      *(v54 + 22) = 2082;
      sub_10072660C(v51, v69, type metadata accessor for WidgetMusicItem);
      v60 = String.init<A>(describing:)();
      v62 = v61;
      sub_1007264D0(v51, type metadata accessor for WidgetMusicItem);
      v63 = sub_1000105AC(v60, v62, &v75);

      *(v54 + 24) = v63;
      _os_log_impl(&_mh_execute_header, v52, v68, "Saved cache file %{public}s for item named %{public}s, value %{public}s", v54, 0x20u);
      swift_arrayDestroy();

      sub_10002C064(v65, v66);
    }

    else
    {
      sub_10002C064(v65, v66);

      sub_1007264D0(v51, type metadata accessor for WidgetMusicItem);
      (*(v8 + 8))(v50, v7);
    }

    return sub_1007264D0(v49, type metadata accessor for WidgetMusicItem);
  }
}

void sub_100717FD8(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v50 = a3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v46 - v13;
  if (a1 == 1)
  {
    type metadata accessor for WidgetDiskCache();
    (*(v9 + 16))(v14, a5, v8);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v17 = 136446466;
      *(v17 + 4) = sub_1000105AC(v50, a4, &v53);
      *(v17 + 12) = 2082;
      sub_100726488(&qword_1011A4850, &type metadata accessor for URL);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      (*(v9 + 8))(v14, v8);
      v21 = sub_1000105AC(v18, v20, &v53);

      *(v17 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Nil value set for item named %{public}s, removing file %{public}s", v17, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v9 + 8))(v14, v8);
    }

    v27 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v28);
    v30 = v29;
    v53 = 0;
    v31 = [v27 removeItemAtURL:v29 error:&v53];

    v32 = v53;
    if (v31)
    {

      v33 = v32;
    }

    else
    {
      v50 = v53;
      v34 = v53;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    v22 = a5;
    v53 = a1;
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    v49 = a1;
    v23 = a1;
    JSONEncoder.init()();
    sub_10041E680();
    v24 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v26 = v25;

    Data.write(to:options:)();
    v47 = v24;
    v48 = v26;
    type metadata accessor for WidgetDiskCache();
    (*(v9 + 16))(v12, v22, v8);
    v35 = v49;
    sub_10069B3BC(v49);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v52 = v46;
      *v38 = 136446722;
      sub_100726488(&qword_1011A4850, &type metadata accessor for URL);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v9 + 8))(v12, v8);
      v42 = sub_1000105AC(v39, v41, &v52);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2082;
      *(v38 + 14) = sub_1000105AC(v50, a4, &v52);
      *(v38 + 22) = 2082;
      v51 = v35;
      v43 = String.init<A>(describing:)();
      v45 = sub_1000105AC(v43, v44, &v52);

      *(v38 + 24) = v45;
      _os_log_impl(&_mh_execute_header, v36, v37, "Saved cache file %{public}s for item named %{public}s, value %{public}s", v38, 0x20u);
      swift_arrayDestroy();

      sub_10002C064(v47, v48);
    }

    else
    {
      sub_10002C064(v47, v48);

      sub_10040DEF8(v35);
      (*(v9 + 8))(v12, v8);
    }

    sub_10040DEF8(v35);
  }
}

id sub_100718784(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v72 = a3;
  v73 = a4;
  v74 = a2;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v71 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v64 - v11;
  v13 = sub_10010FC20(&qword_10118F130);
  __chkstk_darwin(v13 - 8);
  v15 = &v64 - v14;
  v16 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v69 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v70 = &v64 - v21;
  __chkstk_darwin(v20);
  v23 = &v64 - v22;
  v25 = v24;
  sub_1000089F8(a1, v15, &qword_10118F130);
  if ((*(v17 + 48))(v15, 1, v25) == 1)
  {
    sub_1000095E8(v15, &qword_10118F130);
    type metadata accessor for WidgetDiskCache();
    (*(v8 + 16))(v12, a5, v7);
    v26 = v73;

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    v29 = v7;
    if (os_log_type_enabled(v27, v28))
    {
      v30 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v30 = 136446466;
      *(v30 + 4) = sub_1000105AC(v72, v26, &v75);
      *(v30 + 12) = 2082;
      sub_100726488(&qword_1011A4850, &type metadata accessor for URL);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      (*(v8 + 8))(v12, v29);
      v34 = sub_1000105AC(v31, v33, &v75);

      *(v30 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "Nil value set for item named %{public}s, removing file %{public}s", v30, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v8 + 8))(v12, v7);
    }

    v41 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v42);
    v44 = v43;
    v75 = 0;
    v45 = [v41 removeItemAtURL:v43 error:&v75];

    v46 = v75;
    if (v45)
    {

      return v46;
    }

    else
    {
      v74 = v75;
      v48 = v75;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    v68 = a5;
    sub_100726674(v15, v23, type metadata accessor for NowPlayingDataProvider.ItemProgress);
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    sub_100726488(&qword_10118EED0, type metadata accessor for NowPlayingDataProvider.ItemProgress);
    v35 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v37 = v36;

    v38 = v25;
    v39 = v73;
    v67 = v38;
    v40 = v68;
    Data.write(to:options:)();
    v65 = v35;
    v66 = v37;
    type metadata accessor for WidgetDiskCache();
    v49 = v23;
    v50 = v71;
    (*(v8 + 16))(v71, v40, v7);
    v51 = v70;
    sub_10072660C(v49, v70, type metadata accessor for NowPlayingDataProvider.ItemProgress);

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v75 = v74;
      *v54 = 136446722;
      sub_100726488(&qword_1011A4850, &type metadata accessor for URL);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      LODWORD(v68) = v53;
      v56 = v55;
      v58 = v57;
      (*(v8 + 8))(v50, v7);
      v59 = sub_1000105AC(v56, v58, &v75);

      *(v54 + 4) = v59;
      *(v54 + 12) = 2082;
      *(v54 + 14) = sub_1000105AC(v72, v39, &v75);
      *(v54 + 22) = 2082;
      sub_10072660C(v51, v69, type metadata accessor for NowPlayingDataProvider.ItemProgress);
      v60 = String.init<A>(describing:)();
      v62 = v61;
      sub_1007264D0(v51, type metadata accessor for NowPlayingDataProvider.ItemProgress);
      v63 = sub_1000105AC(v60, v62, &v75);

      *(v54 + 24) = v63;
      _os_log_impl(&_mh_execute_header, v52, v68, "Saved cache file %{public}s for item named %{public}s, value %{public}s", v54, 0x20u);
      swift_arrayDestroy();

      sub_10002C064(v65, v66);
    }

    else
    {
      sub_10002C064(v65, v66);

      sub_1007264D0(v51, type metadata accessor for NowPlayingDataProvider.ItemProgress);
      (*(v8 + 8))(v50, v7);
    }

    return sub_1007264D0(v49, type metadata accessor for NowPlayingDataProvider.ItemProgress);
  }
}

uint64_t sub_1007191B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v5 = sub_10010FC20(&qword_1011831B0);
  v3[7] = v5;
  v3[8] = *(v5 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = *(sub_10010FC20(&qword_1011920D8) - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[2] = a3;

  return _swift_task_switch(sub_1007192FC, 0, 0);
}

uint64_t sub_1007192FC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 48);
  v6 = *(v0 + 32);
  (*(*(v0 + 64) + 56))(v1, 1, 1, *(v0 + 56));
  *(v0 + 24) = sub_10059A09C(v1, *(v2 + 16));
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *(v3 + 16) = v0 + 16;
  *(v3 + 24) = v6;
  *(v3 + 40) = v0 + 24;
  sub_10010FC20(&qword_1011A0308);
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = sub_100719450;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_100719450()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1007197A4;
  }

  else
  {
    v2 = sub_100719580;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100719580()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[10];
    v16 = v0[8];
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = _swiftEmptyArrayStorage;
    v6 = *(v3 + 72);
    do
    {
      v7 = v0[11];
      v8 = v0[7];
      sub_1000089F8(v4, v7, &qword_1011920D8);
      v9 = (*(v16 + 48))(v7, 1, v8);
      v10 = v0[11];
      if (v9 == 1)
      {
        sub_1000095E8(v10, &qword_1011920D8);
      }

      else
      {
        sub_10003D17C(v10, v0[9], &qword_1011831B0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_100498F38(0, v5[2] + 1, 1, v5);
        }

        v12 = v5[2];
        v11 = v5[3];
        if (v12 >= v11 >> 1)
        {
          v5 = sub_100498F38(v11 > 1, v12 + 1, 1, v5);
        }

        v13 = v0[9];
        v5[2] = v12 + 1;
        sub_10003D17C(v13, v5 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v12, &qword_1011831B0);
      }

      v4 += v6;
      --v2;
    }

    while (v2);
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
  }

  v14 = v0[1];

  return v14(v5);
}

uint64_t sub_1007197A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100719830(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for WidgetMusicItem();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = *(sub_10010FC20(&qword_10118F120) - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100719964, 0, 0);
}

uint64_t sub_100719964()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  v7 = *(v0 + 24);
  (*(*(v0 + 56) + 56))(v1, 1, 1, *(v0 + 48));
  sub_10010FC20(&qword_1011A0290);
  sub_100020674(&qword_1011A02B0, &qword_1011A0290);
  v3 = dispatch thunk of Collection.count.getter();
  *(v0 + 16) = sub_10059A0B0(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v7;
  *(v4 + 40) = v0 + 16;
  sub_10010FC20(&qword_1011A02B8);
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_100719B10;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_100719B10()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_100719E6C;
  }

  else
  {
    v2 = sub_100719C40;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100719C40()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[9];
    v16 = v0[7];
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v6 = _swiftEmptyArrayStorage;
    do
    {
      v7 = v0[10];
      v8 = v0[6];
      sub_1000089F8(v4, v7, &qword_10118F120);
      v9 = (*(v16 + 48))(v7, 1, v8);
      v10 = v0[10];
      if (v9 == 1)
      {
        sub_1000095E8(v10, &qword_10118F120);
      }

      else
      {
        sub_100726674(v10, v0[8], type metadata accessor for WidgetMusicItem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_10049A030(0, v6[2] + 1, 1, v6);
        }

        v12 = v6[2];
        v11 = v6[3];
        if (v12 >= v11 >> 1)
        {
          v6 = sub_10049A030(v11 > 1, v12 + 1, 1, v6);
        }

        v13 = v0[8];
        v6[2] = v12 + 1;
        sub_100726674(v13, v6 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v12, type metadata accessor for WidgetMusicItem);
      }

      v4 += v5;
      --v2;
    }

    while (v2);
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
  }

  v14 = v0[1];

  return v14(v6);
}

uint64_t sub_100719E6C()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_100719EF8()
{
  type metadata accessor for RecentlyPlayedWidgetDataProvider(0);
  swift_allocObject();
  result = sub_10071A3F4();
  qword_1012194C0 = result;
  return result;
}

uint64_t sub_100719F58()
{
  *(v0 + 56) = OBJC_IVAR____TtC5Music32RecentlyPlayedWidgetDataProvider_logger;
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "UPDATE ITEMS", v3, 2u);
  }

  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_10071A070;

  return sub_10071A7CC();
}

uint64_t sub_10071A070(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_10071A25C;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_10071A198;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10071A198()
{
  v1 = v0[10];
  v2 = v0[6];
  sub_1007228EC(v1);
  v3 = *(v2 + 16) + OBJC_IVAR____TtCC5Music32RecentlyPlayedWidgetDataProviderP33_23E5867D7557CCAE0A35FCF9C1439AE75Cache__items;
  swift_beginAccess();
  v4 = sub_10010FC20(&qword_1011A0288);
  sub_100714544(*(v3 + *(v4 + 44)), *(v3 + *(v4 + 44) + 8), v1);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_10071A25C()
{
  v12 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[9];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v0[5] = v3;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v6 = String.init<A>(describing:)();
    v8 = sub_1000105AC(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Not updating cache - error=%{public}s", v4, 0xCu);
    sub_10000959C(v5);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

id sub_10071A3F4()
{
  v1 = v0;
  v2 = type metadata accessor for MusicDataRequest.ExecutionMethod();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RecentlyPlayedWidgetDataProvider.Cache(0);
  v6 = swift_allocObject();
  v7 = v6 + OBJC_IVAR____TtCC5Music32RecentlyPlayedWidgetDataProviderP33_23E5867D7557CCAE0A35FCF9C1439AE75Cache__items;
  sub_10050352C(0x796C746E65636552, 0xEE00646579616C50, (v6 + OBJC_IVAR____TtCC5Music32RecentlyPlayedWidgetDataProviderP33_23E5867D7557CCAE0A35FCF9C1439AE75Cache__items));
  v8 = (v7 + *(sub_10010FC20(&qword_1011A0288) + 44));
  *v8 = 0x736D657469;
  v8[1] = 0xE500000000000000;
  *(v0 + 16) = v6;
  static Logger.music(_:)();
  (*(v3 + 104))(v5, enum case for MusicDataRequest.ExecutionMethod.firstParty(_:), v2);
  static MusicDataRequest.preferredExecutionMethod.setter();
  v9 = [objc_opt_self() processInfo];
  v10 = [v9 processName];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (v11 == 0x646957636973754DLL && v13 == 0xEC00000073746567)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      return v1;
    }
  }

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "running in widget process, disabling fallback cache", v17, 2u);
  }

  v18 = [objc_opt_self() defaultMediaLibrary];
  if ([v18 artworkDataSource])
  {
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      [v19 setUsesFallbackCache:0];
    }

    swift_unknownObjectRelease();
  }

  result = [objc_opt_self() sharedStoreArtworkDataSource];
  if (result)
  {
    v21 = result;
    [result setUsesFallbackCache:0];

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10071A758()
{
  sub_1000095E8(v0 + OBJC_IVAR____TtCC5Music32RecentlyPlayedWidgetDataProviderP33_23E5867D7557CCAE0A35FCF9C1439AE75Cache__items, &qword_1011A0288);

  return swift_deallocClassInstance();
}

id sub_10071A7EC()
{
  v1 = [objc_opt_self() processInfo];
  v2 = [v1 processName];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (v3 == 0x636973754DLL && v5 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  *(v0 + 48) = v7 & 1;
  if (qword_10117F570 != -1)
  {
    swift_once();
  }

  if (qword_101218A18)
  {
    v8 = qword_101218A18;
    v9 = sub_100311FE0();
    v10 = (v9 == 2) | v9;
    v11 = sub_100311FE8();

    v12 = v11 | v10;
    if (v11 == 2)
    {
      v12 = v10;
    }
  }

  else
  {
    v12 = 1;
  }

  *(v0 + 49) = v12 & 1;
  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v14 = result;
    *(v0 + 50) = [result hasProperNetworkConditionsToShowCloudMedia];

    v15 = swift_task_alloc();
    *(v0 + 24) = v15;
    *v15 = v0;
    v15[1] = sub_10071AA08;

    return sub_100712698();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10071AA08(char a1)
{
  *(*v1 + 51) = a1;

  return _swift_task_switch(sub_10071AB08, 0, 0);
}

uint64_t sub_10071AB08()
{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 51);
    v4 = *(v0 + 50);
    v5 = *(v0 + 49);
    v6 = *(v0 + 48);
    v7 = swift_slowAlloc();
    *v7 = 67240960;
    *(v7 + 4) = v6;
    *(v7 + 8) = 1026;
    *(v7 + 10) = v5;
    *(v7 + 14) = 1026;
    *(v7 + 16) = v4;
    *(v7 + 20) = 1026;
    *(v7 + 22) = v3;
    _os_log_impl(&_mh_execute_header, v1, v2, "FETCH ITEMS: isMusicProcess: %{BOOL,public}d, areRemoteQueriesEnabled: %{BOOL,public}d, canShowCloudMedia: %{BOOL,public}d, canPlayCatalogContent: %{BOOL,public}d", v7, 0x1Au);
  }

  v8 = *(v0 + 51);
  v9 = *(v0 + 50);
  v10 = *(v0 + 49);
  v11 = *(v0 + 48);

  if (v11 != 1 || v10 == 0 || v9 == 0 || v8 == 0)
  {
    v15 = swift_task_alloc();
    *(v0 + 40) = v15;
    *v15 = v0;
    v15[1] = sub_10071AE68;

    return sub_10071CAE8();
  }

  else
  {
    v17 = swift_task_alloc();
    *(v0 + 32) = v17;
    *v17 = v0;
    v17[1] = sub_10071ACFC;

    return sub_10071AF68();
  }
}

uint64_t sub_10071ACFC(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;

  if (a1)
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }

  else
  {
    v7 = swift_task_alloc();
    *(v3 + 40) = v7;
    *v7 = v4;
    v7[1] = sub_10071AE68;

    return sub_10071CAE8();
  }
}

uint64_t sub_10071AE68(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_10071AF68()
{
  v1[3] = v0;
  v2 = sub_10010FC20(&qword_1011A0290);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_10010FC20(&qword_1011A0298);
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = type metadata accessor for MusicDataRequest.Source();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_1011A02A0);
  v1[13] = v5;
  v1[14] = *(v5 - 8);
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_10071B160, 0, 0);
}

uint64_t sub_10071B160()
{
  v0[16] = OBJC_IVAR____TtC5Music32RecentlyPlayedWidgetDataProvider_logger;
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "FETCH REMOTE ITEMS", v3, 2u);
  }

  v4 = v0[12];
  v5 = v0[10];
  v6 = v0[11];

  type metadata accessor for RecentlyPlayedMusicItem();
  sub_100726488(&qword_1011A02A8, &type metadata accessor for RecentlyPlayedMusicItem);
  MusicRecentlyPlayedRequest.init()();
  (*(v6 + 104))(v4, enum case for MusicDataRequest.Source.widgets(_:), v5);
  MusicRecentlyPlayedRequest.source.setter();
  MusicRecentlyPlayedRequest.limit.setter();
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_10071B334;
  v8 = v0[13];
  v9 = v0[9];

  return MusicRecentlyPlayedRequest.response()(v9, v8);
}

uint64_t sub_10071B334()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_10071B754;
  }

  else
  {
    v2 = sub_10071B448;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10071B448()
{
  MusicRecentlyPlayedResponse.items.getter();
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_10071B510;

  return sub_100719830(&unk_100EDF748, 0);
}

uint64_t sub_10071B510(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {
    v7 = v4[5];
    v6 = v4[6];
    v8 = v4[4];
    v4[20] = a1;
    (*(v7 + 8))(v6, v8);

    return _swift_task_switch(sub_10071B664, 0, 0);
  }
}

uint64_t sub_10071B664()
{
  v1 = v0[20];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  sub_1007228EC(v1);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8(v1);
}

uint64_t sub_10071B754()
{
  v18 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[18];
    v4 = v0[14];
    v16 = v0[15];
    v5 = v0[13];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000105AC(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "FETCH REMOTE ITEMS ERROR %{public}s", v6, 0xCu);
    sub_10000959C(v7);

    (*(v4 + 8))(v16, v5);
  }

  else
  {
    v12 = v0[14];
    v11 = v0[15];
    v13 = v0[13];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v0[1];

  return v14(0);
}

uint64_t sub_10071B968(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for RecentlyPlayedMusicItem();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10071BA28, 0, 0);
}

uint64_t sub_10071BA28()
{
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_10071BAD8;
  v2 = v0[6];
  v3 = v0[2];

  return sub_10071BBEC(v3, v2);
}

uint64_t sub_10071BAD8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10071BBEC(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  sub_10010FC20(&qword_101188C20);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v3 = type metadata accessor for MusicSiriRepresentation();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  type metadata accessor for ArtworkImage.Placeholder(0);
  v2[15] = swift_task_alloc();
  sub_10010FC20(&unk_101188920);
  v2[16] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  v5 = type metadata accessor for Station();
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();
  v6 = type metadata accessor for Playlist();
  v2[23] = v6;
  v2[24] = *(v6 - 8);
  v2[25] = swift_task_alloc();
  v7 = type metadata accessor for Album();
  v2[26] = v7;
  v2[27] = *(v7 - 8);
  v2[28] = swift_task_alloc();
  v8 = type metadata accessor for RecentlyPlayedMusicItem();
  v2[29] = v8;
  v2[30] = *(v8 - 8);
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_10071BF20, 0, 0);
}

uint64_t sub_10071BF20()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);
  (*(v2 + 16))(v1, *(v0 + 72), v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for RecentlyPlayedMusicItem.album(_:))
  {
    v5 = *(v0 + 248);
    v6 = *(v0 + 224);
    v7 = *(v0 + 208);
    v8 = *(v0 + 216);
    (*(*(v0 + 240) + 96))(v5, *(v0 + 232));
    (*(v8 + 32))(v6, v5, v7);
    v9 = Album.id.getter();
    v11 = v10;
    v12 = Album.catalogID.getter();
LABEL_5:
    v16 = v12;
    v17 = v13;
    (*(v8 + 8))(v6, v7);
    goto LABEL_10;
  }

  if (v4 == enum case for RecentlyPlayedMusicItem.playlist(_:))
  {
    v14 = *(v0 + 248);
    v8 = *(v0 + 192);
    v6 = *(v0 + 200);
    v7 = *(v0 + 184);
    (*(*(v0 + 240) + 96))(v14, *(v0 + 232));
    (*(v8 + 32))(v6, v14, v7);
    v9 = Playlist.id.getter();
    v11 = v15;
    v12 = Playlist.catalogID.getter();
    goto LABEL_5;
  }

  v19 = *(v0 + 240);
  v18 = *(v0 + 248);
  v20 = *(v0 + 232);
  if (v4 == enum case for RecentlyPlayedMusicItem.station(_:))
  {
    v22 = *(v0 + 168);
    v21 = *(v0 + 176);
    v23 = *(v0 + 160);
    (*(v19 + 96))(*(v0 + 248), *(v0 + 232));
    (*(v22 + 32))(v21, v18, v23);
    v9 = Station.id.getter();
    v11 = v24;
    (*(v22 + 8))(v21, v23);
  }

  else
  {
    v9 = RecentlyPlayedMusicItem.id.getter();
    v11 = v25;
    (*(v19 + 8))(v18, v20);
  }

  v16 = 0;
  v17 = 0;
LABEL_10:
  *(v0 + 16) = v9;
  *(v0 + 24) = v11;
  *(v0 + 256) = v16;
  *(v0 + 264) = v17;
  v26 = *(v0 + 152);
  v27 = *(v0 + 128);
  *(v0 + 32) = RecentlyPlayedMusicItem.title.getter();
  *(v0 + 40) = v28;
  *(v0 + 48) = RecentlyPlayedMusicItem.subtitle.getter();
  *(v0 + 56) = v29;
  sub_100722E40(v26);
  RecentlyPlayedMusicItem.artwork.getter();
  v30 = type metadata accessor for Artwork();
  *(v0 + 272) = v30;
  v31 = *(v30 - 8);
  *(v0 + 280) = v31;
  if ((*(v31 + 48))(v27, 1, v30) == 1)
  {
    sub_1000095E8(*(v0 + 128), &unk_101188920);
    *(v0 + 304) = 0;
    v32 = *(v0 + 32);
    v33 = *(v0 + 40);
    v34 = *(v0 + 16);
    v35 = *(v0 + 24);
    v37 = *(v0 + 112);
    v36 = *(v0 + 120);
    v38 = *(v0 + 96);
    v39 = *(v0 + 104);
    *(v0 + 312) = vextq_s8(*(v0 + 48), *(v0 + 48), 8uLL);
    *(v0 + 328) = v33;
    *(v0 + 336) = v32;
    *(v0 + 344) = v35;
    *(v0 + 352) = v34;
    sub_100723634(v36);
    RecentlyPlayedMusicItem.siriRepresentation.getter();
    *(v0 + 360) = MusicSiriRepresentation.id.getter();
    *(v0 + 368) = v40;
    (*(v39 + 8))(v37, v38);
    *(v0 + 376) = sub_100723968();
    v41 = swift_task_alloc();
    *(v0 + 384) = v41;
    *v41 = v0;
    v41[1] = sub_10071C614;

    return sub_100713278();
  }

  else
  {
    if (*DeviceCapabilities.deviceType.unsafeMutableAddressor() == 2)
    {
      v43 = 140.0;
    }

    else
    {
      v43 = 125.0;
    }

    v44 = swift_task_alloc();
    *(v0 + 288) = v44;
    *v44 = v0;
    v44[1] = sub_10071C38C;

    return sub_1005F1854(v43);
  }
}

uint64_t sub_10071C38C(uint64_t a1)
{
  v2 = *(*v1 + 280);
  v3 = *(*v1 + 272);
  v4 = *(*v1 + 128);
  *(*v1 + 296) = a1;

  (*(v2 + 8))(v4, v3);

  return _swift_task_switch(sub_10071C4EC, 0, 0);
}

uint64_t sub_10071C4EC()
{
  *(v0 + 304) = *(v0 + 296);
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);
  *(v0 + 312) = vextq_s8(*(v0 + 48), *(v0 + 48), 8uLL);
  *(v0 + 328) = v2;
  *(v0 + 336) = v1;
  *(v0 + 344) = v4;
  *(v0 + 352) = v3;
  sub_100723634(v5);
  RecentlyPlayedMusicItem.siriRepresentation.getter();
  *(v0 + 360) = MusicSiriRepresentation.id.getter();
  *(v0 + 368) = v9;
  (*(v8 + 8))(v6, v7);
  *(v0 + 376) = sub_100723968();
  v10 = swift_task_alloc();
  *(v0 + 384) = v10;
  *v10 = v0;
  v10[1] = sub_10071C614;

  return sub_100713278();
}

uint64_t sub_10071C614(char a1)
{
  *(*v1 + 392) = a1;

  return _swift_task_switch(sub_10071C714, 0, 0);
}

uint64_t sub_10071C714()
{
  v34 = *(v0 + 392);
  v33 = *(v0 + 376);
  v31 = *(v0 + 360);
  v32 = *(v0 + 368);
  v29 = *(v0 + 344);
  v30 = *(v0 + 352);
  v25 = *(v0 + 328);
  v26 = *(v0 + 336);
  v23 = *(v0 + 312);
  v24 = *(v0 + 320);
  v38 = *(v0 + 304);
  v27 = *(v0 + 256);
  v28 = *(v0 + 264);
  v36 = *(v0 + 240);
  v37 = *(v0 + 232);
  v1 = *(v0 + 144);
  v22 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 64);
  v35 = *(v0 + 72);
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);
  v8(v4, 1, 1, v7);
  v8(v5, 1, 1, v7);
  v9 = type metadata accessor for WidgetMusicItem();
  v10 = v9[25];
  *&v6[v10] = 0;
  *&v6[v9[26]] = _swiftEmptyArrayStorage;
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 2) = v26;
  *(v6 + 3) = v25;
  *(v6 + 4) = v24;
  *(v6 + 5) = v23;
  (*(v1 + 16))(&v6[v9[7]], v22, v2);
  sub_10072660C(v3, &v6[v9[23]], type metadata accessor for ArtworkImage.Placeholder);
  *&v6[v9[24]] = 0x3FF0000000000000;
  v6[v9[8]] = 8;
  v11 = &v6[v9[9]];
  *v11 = v30;
  *(v11 + 1) = v29;
  v12 = &v6[v9[10]];
  *v12 = v27;
  *(v12 + 1) = v28;
  v13 = &v6[v9[11]];
  *v13 = v31;
  *(v13 + 1) = v32;
  v14 = &v6[v9[12]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v6[v9[13]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v6[v9[14]];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v6[v9[15]] = v33;
  v6[v9[16]] = v34;
  sub_1000089F8(v4, &v6[v9[17]], &qword_101188C20);
  sub_1000089F8(v5, &v6[v9[18]], &qword_101188C20);
  v17 = &v6[v9[19]];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v6[v9[20]] = _swiftEmptyArrayStorage;
  v18 = &v6[v9[21]];
  *v18 = 0;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  v18[24] = 1;
  v19 = &v6[v9[22]];
  *v19 = 0;
  *(v19 + 1) = 0;
  *(v19 + 2) = 0;
  v19[24] = 1;
  sub_10043975C(_swiftEmptyArrayStorage);
  (*(v36 + 8))(v35, v37);
  sub_1000095E8(v5, &qword_101188C20);
  sub_1000095E8(v4, &qword_101188C20);
  sub_1007264D0(v3, type metadata accessor for ArtworkImage.Placeholder);
  (*(v1 + 8))(v22, v2);
  *&v6[v10] = v38;

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10071CAE8()
{
  v1[14] = v0;
  v1[15] = *(type metadata accessor for WidgetMusicItem() - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v2 = type metadata accessor for Date();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = sub_10010FC20(&qword_10118F0F0);
  v1[25] = swift_task_alloc();
  sub_10010FC20(&qword_101188C20);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v3 = type metadata accessor for Playlist();
  v1[28] = v3;
  v1[29] = *(v3 - 8);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v4 = type metadata accessor for Album();
  v1[34] = v4;
  v1[35] = *(v4 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_101181AC0);
  v1[40] = v5;
  v1[41] = *(v5 - 8);
  v1[42] = swift_task_alloc();
  v6 = sub_10010FC20(&qword_101181BE8);
  v1[43] = v6;
  v1[44] = *(v6 - 8);
  v1[45] = swift_task_alloc();
  v7 = sub_10010FC20(&qword_101181AC8);
  v1[46] = v7;
  v1[47] = *(v7 - 8);
  v1[48] = swift_task_alloc();
  v8 = sub_10010FC20(&unk_1011929A0);
  v1[49] = v8;
  v1[50] = *(v8 - 8);
  v1[51] = swift_task_alloc();
  v9 = sub_10010FC20(&qword_1011815C0);
  v1[52] = v9;
  v1[53] = *(v9 - 8);
  v1[54] = swift_task_alloc();
  v10 = sub_10010FC20(&qword_101181B20);
  v1[55] = v10;
  v1[56] = *(v10 - 8);
  v1[57] = swift_task_alloc();

  return _swift_task_switch(sub_10071D020, 0, 0);
}

uint64_t sub_10071D020()
{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "FETCH LOCAL ITEMS", v3, 2u);
  }

  MusicLibraryRequest.init()();
  MusicLibraryRequest.wantsDetailedLibraryResponse.setter();
  swift_getKeyPath();
  MusicLibraryRequest.sort<A>(by:ascending:)();

  MusicLibraryRequest.limit.setter();
  v4 = swift_task_alloc();
  v0[58] = v4;
  *v4 = v0;
  v4[1] = sub_10071D1A0;
  v5 = v0[55];
  v6 = v0[51];

  return MusicLibraryRequest.response()(v6, v5);
}

uint64_t sub_10071D1A0()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_10072099C;
  }

  else
  {
    v2 = sub_10071D2B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10071D2B4()
{
  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[49];
  MusicLibraryResponse.items.getter();
  (*(v2 + 8))(v1, v3);
  MusicLibraryRequest.init()();
  MusicLibraryRequest.wantsDetailedLibraryResponse.setter();
  swift_getKeyPath();
  MusicLibraryRequest.sort<A>(by:ascending:)();

  MusicLibraryRequest.limit.setter();
  v4 = swift_task_alloc();
  v0[60] = v4;
  *v4 = v0;
  v4[1] = sub_10071D3EC;
  v5 = v0[46];
  v6 = v0[42];

  return MusicLibraryRequest.response()(v6, v5);
}

uint64_t sub_10071D3EC()
{
  *(*v1 + 488) = v0;

  if (v0)
  {
    v2 = sub_100720B4C;
  }

  else
  {
    v2 = sub_10071D500;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10071D500()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 320);
  MusicLibraryResponse.items.getter();
  (*(v2 + 8))(v1, v3);
  sub_100020674(&unk_10118C140, &qword_1011815C0);
  v4 = dispatch thunk of Collection.count.getter();
  if (v4)
  {
    v5 = v4;
    sub_10066CC30(0, v4 & ~(v4 >> 63), 0);
    result = dispatch thunk of Collection.startIndex.getter();
    if (v5 < 0)
    {
      __break(1u);
      goto LABEL_59;
    }

    v7 = *(v0 + 280);
    do
    {
      v8 = *(v0 + 312);
      v9 = dispatch thunk of Collection.subscript.read();
      (*(v7 + 16))(v8);
      v9(v0 + 16, 0);
      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_10066CC30(v10 > 1, v11 + 1, 1);
      }

      v12 = *(v0 + 312);
      v13 = *(v0 + 272);
      _swiftEmptyArrayStorage[2] = v11 + 1;
      (*(v7 + 32))(_swiftEmptyArrayStorage + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11, v12, v13);
      dispatch thunk of Collection.formIndex(after:)();
      --v5;
    }

    while (v5);
  }

  sub_100020674(&unk_10118C130, &qword_101181BE8);
  v14 = dispatch thunk of Collection.count.getter();
  if (!v14)
  {
    goto LABEL_13;
  }

  v15 = v14;
  sub_10066CBEC(0, v14 & ~(v14 >> 63), 0);
  result = dispatch thunk of Collection.startIndex.getter();
  if (v15 < 0)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v16 = *(v0 + 232);
  do
  {
    v17 = *(v0 + 264);
    v18 = dispatch thunk of Collection.subscript.read();
    (*(v16 + 16))(v17);
    v18(v0 + 48, 0);
    v20 = _swiftEmptyArrayStorage[2];
    v19 = _swiftEmptyArrayStorage[3];
    if (v20 >= v19 >> 1)
    {
      sub_10066CBEC(v19 > 1, v20 + 1, 1);
    }

    v21 = *(v0 + 264);
    v22 = *(v0 + 224);
    _swiftEmptyArrayStorage[2] = v20 + 1;
    (*(v16 + 32))(_swiftEmptyArrayStorage + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v20, v21, v22);
    dispatch thunk of Collection.formIndex(after:)();
    --v15;
  }

  while (v15);
LABEL_13:
  v23 = *(v0 + 280);
  *(v0 + 560) = _swiftEmptyArrayStorage;
  *(v0 + 496) = _swiftEmptyArrayStorage;
  *(v0 + 504) = _swiftEmptyArrayStorage;
  if (!_swiftEmptyArrayStorage[2] || _swiftEmptyArrayStorage[2] > 5uLL)
  {
LABEL_23:
    v38 = *(v0 + 448);
    v39 = *(v0 + 456);
    v72 = *(v0 + 432);
    v73 = *(v0 + 440);
    v40 = *(v0 + 424);
    v41 = *(v0 + 376);
    v70 = *(v0 + 384);
    v71 = *(v0 + 416);
    v42 = *(v0 + 360);
    v69 = *(v0 + 368);
    v44 = *(v0 + 344);
    v43 = *(v0 + 352);

    sub_1007228EC(v45);
    (*(v43 + 8))(v42, v44);
    (*(v41 + 8))(v70, v69);
    (*(v40 + 8))(v72, v71);
    (*(v38 + 8))(v39, v73);

    v46 = *(v0 + 8);

    return v46(_swiftEmptyArrayStorage);
  }

  v24 = *(v0 + 304);
  v25 = *(v0 + 272);
  (*(v23 + 16))(v24, _swiftEmptyArrayStorage + ((*(v23 + 80) + 32) & ~*(v23 + 80)), v25);
  Album.lastPlayedDate.getter();
  (*(v23 + 8))(v24, v25);
  *(v0 + 520) = &_swiftEmptyArrayStorage[2];
  *(v0 + 512) = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage[2])
  {
    v26 = *(v0 + 256);
    v28 = *(v0 + 224);
    v27 = *(v0 + 232);
    (*(v27 + 16))(v26, _swiftEmptyArrayStorage + ((*(v27 + 80) + 32) & ~*(v27 + 80)), v28);
    Playlist.lastPlayedDate.getter();
    (*(v27 + 8))(v26, v28);
  }

  else
  {
    (*(*(v0 + 168) + 56))(*(v0 + 208), 1, 1, *(v0 + 160));
  }

  v30 = *(v0 + 208);
  v29 = *(v0 + 216);
  v31 = *(v0 + 200);
  v33 = *(v0 + 160);
  v32 = *(v0 + 168);
  v34 = *(*(v0 + 192) + 48);
  *(v0 + 600) = v34;
  sub_10003D17C(v29, v31, &qword_101188C20);
  sub_10003D17C(v30, v31 + v34, &qword_101188C20);
  v35 = *(v32 + 48);
  LODWORD(v33) = v35(v31, 1, v33);
  v36 = *(v0 + 160);
  result = v35(v31 + v34, 1, v36);
  if (v33 == 1)
  {
    v37 = result == 1;
    result = _swiftEmptyArrayStorage;
    if (!v37)
    {
      if (_swiftEmptyArrayStorage[2])
      {
        (*(*(v0 + 232) + 16))(*(v0 + 240), _swiftEmptyArrayStorage + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
        result = _swiftEmptyArrayStorage;
        v53 = _swiftEmptyArrayStorage[2];
        if (v53)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v55 = _swiftEmptyArrayStorage;
          *(v0 + 96) = _swiftEmptyArrayStorage;
          if (!isUniquelyReferenced_nonNull_native || (v53 - 1) > _swiftEmptyArrayStorage[3] >> 1)
          {
            v55 = sub_10049A07C(isUniquelyReferenced_nonNull_native, v53, 1, _swiftEmptyArrayStorage);
            *(v0 + 96) = v55;
          }

          *(v0 + 584) = v55;
          sub_1003BE48C(0, 1, 0);
          v56 = swift_task_alloc();
          *(v0 + 592) = v56;
          *v56 = v0;
          v56[1] = sub_10071FF78;
          v57 = *(v0 + 240);
          v58 = *(v0 + 128);
LABEL_46:

          return sub_100720D34(v58, v57);
        }

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    goto LABEL_23;
  }

  if (result == 1)
  {
    if (_swiftEmptyArrayStorage[2])
    {
      (*(*(v0 + 280) + 16))(*(v0 + 288), _swiftEmptyArrayStorage + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
      result = _swiftEmptyArrayStorage;
      v47 = _swiftEmptyArrayStorage[2];
      if (!v47)
      {
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v48 = swift_isUniquelyReferenced_nonNull_native();
      v49 = _swiftEmptyArrayStorage;
      *(v0 + 80) = _swiftEmptyArrayStorage;
      if (!v48 || (v47 - 1) > _swiftEmptyArrayStorage[3] >> 1)
      {
        v49 = sub_10049935C(v48, v47, 1, _swiftEmptyArrayStorage);
        *(v0 + 80) = v49;
      }

      *(v0 + 568) = v49;
      sub_1003BE4A4(0, 1, 0);
      v50 = swift_task_alloc();
      *(v0 + 576) = v50;
      *v50 = v0;
      v50[1] = sub_10071F554;
      v51 = *(v0 + 288);
      v52 = *(v0 + 136);
      goto LABEL_55;
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v59 = *(v0 + 176);
  v60 = *(*(v0 + 168) + 32);
  v60(*(v0 + 184), *(v0 + 200), v36);
  v60(v59, v31 + v34, v36);
  result = static Date.< infix(_:_:)();
  if (result)
  {
    if (_swiftEmptyArrayStorage[2])
    {
      (*(*(v0 + 232) + 16))(*(v0 + 248), _swiftEmptyArrayStorage + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
      result = _swiftEmptyArrayStorage;
      v61 = _swiftEmptyArrayStorage[2];
      if (v61)
      {
        v62 = swift_isUniquelyReferenced_nonNull_native();
        v63 = _swiftEmptyArrayStorage;
        *(v0 + 96) = _swiftEmptyArrayStorage;
        if (!v62 || (v61 - 1) > _swiftEmptyArrayStorage[3] >> 1)
        {
          v63 = sub_10049A07C(v62, v61, 1, _swiftEmptyArrayStorage);
          *(v0 + 96) = v63;
        }

        *(v0 + 528) = v63;
        sub_1003BE48C(0, 1, 0);
        v64 = swift_task_alloc();
        *(v0 + 536) = v64;
        *v64 = v0;
        v64[1] = sub_10071E0E0;
        v57 = *(v0 + 248);
        v58 = *(v0 + 152);
        goto LABEL_46;
      }

      goto LABEL_66;
    }

    goto LABEL_64;
  }

  if (!_swiftEmptyArrayStorage[2])
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  (*(*(v0 + 280) + 16))(*(v0 + 296), _swiftEmptyArrayStorage + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
  result = _swiftEmptyArrayStorage;
  v65 = _swiftEmptyArrayStorage[2];
  if (!v65)
  {
LABEL_67:
    __break(1u);
    return result;
  }

  v66 = swift_isUniquelyReferenced_nonNull_native();
  v67 = _swiftEmptyArrayStorage;
  *(v0 + 80) = _swiftEmptyArrayStorage;
  if (!v66 || (v65 - 1) > _swiftEmptyArrayStorage[3] >> 1)
  {
    v67 = sub_10049935C(v66, v65, 1, _swiftEmptyArrayStorage);
    *(v0 + 80) = v67;
  }

  *(v0 + 544) = v67;
  sub_1003BE4A4(0, 1, 0);
  v68 = swift_task_alloc();
  *(v0 + 552) = v68;
  *v68 = v0;
  v68[1] = sub_10071EB1C;
  v51 = *(v0 + 296);
  v52 = *(v0 + 144);
LABEL_55:

  return sub_100721B1C(v52, v51);
}

uint64_t sub_10071E0E0()
{

  return _swift_task_switch(sub_10071E1DC, 0, 0);
}

uint64_t sub_10071E1DC()
{
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v1 = *(v0 + 496);
  }

  else
  {
    v1 = sub_10049A030(0, **(v0 + 520) + 1, 1, *(v0 + 496));
  }

  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_10049A030(v2 > 1, v3 + 1, 1, v1);
  }

  v4 = *(v0 + 184);
  v5 = *(v0 + 160);
  v6 = *(v0 + 152);
  v7 = *(v0 + 120);
  v8 = *(*(v0 + 168) + 8);
  v8(*(v0 + 176), v5);
  v8(v4, v5);
  v1[2] = v3 + 1;
  v9 = v1 + 2;
  sub_100726674(v6, v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v3, type metadata accessor for WidgetMusicItem);
  v10 = *(v0 + 528);
  v11 = *(v0 + 504);
  *(v0 + 560) = v10;
  *(v0 + 496) = v1;
  if (v11[2])
  {
    if (*v9 <= 5uLL)
    {
      v12 = *(v0 + 304);
      v13 = *(v0 + 272);
      v14 = *(v0 + 280);
      v62 = v11;
      (*(v14 + 16))(v12, v11 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v13);
      Album.lastPlayedDate.getter();
      (*(v14 + 8))(v12, v13);
      goto LABEL_11;
    }

LABEL_17:
    v28 = *(v0 + 448);
    v29 = *(v0 + 456);
    v60 = *(v0 + 432);
    v61 = *(v0 + 440);
    v30 = *(v0 + 424);
    v31 = *(v0 + 376);
    v58 = *(v0 + 384);
    v59 = *(v0 + 416);
    v32 = *(v0 + 360);
    v57 = *(v0 + 368);
    v34 = *(v0 + 344);
    v33 = *(v0 + 352);

    sub_1007228EC(v35);
    (*(v33 + 8))(v32, v34);
    (*(v31 + 8))(v58, v57);
    (*(v30 + 8))(v60, v59);
    (*(v28 + 8))(v29, v61);

    v36 = *(v0 + 8);

    return v36(v1);
  }

  if (!v10[2] || *v9 > 5uLL)
  {
    goto LABEL_17;
  }

  v62 = v11;
  (*(*(v0 + 168) + 56))(*(v0 + 216), 1, 1, *(v0 + 160));
  v10 = *(v0 + 560);
LABEL_11:
  *(v0 + 520) = v9;
  *(v0 + 512) = v10;
  if (v10[2])
  {
    v15 = *(v0 + 256);
    v17 = *(v0 + 224);
    v16 = *(v0 + 232);
    (*(v16 + 16))(v15, v10 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v17);
    Playlist.lastPlayedDate.getter();
    (*(v16 + 8))(v15, v17);
  }

  else
  {
    (*(*(v0 + 168) + 56))(*(v0 + 208), 1, 1, *(v0 + 160));
  }

  v19 = *(v0 + 208);
  v18 = *(v0 + 216);
  v20 = *(v0 + 200);
  v21 = *(v0 + 160);
  v22 = *(v0 + 168);
  v23 = *(*(v0 + 192) + 48);
  *(v0 + 600) = v23;
  sub_10003D17C(v18, v20, &qword_101188C20);
  sub_10003D17C(v19, v20 + v23, &qword_101188C20);
  v24 = *(v22 + 48);
  LODWORD(v21) = v24(v20, 1, v21);
  v25 = *(v0 + 160);
  result = v24(v20 + v23, 1, v25);
  if (v21 == 1)
  {
    v27 = result == 1;
    result = v62;
    if (!v27)
    {
      if (v10[2])
      {
        result = (*(*(v0 + 232) + 16))(*(v0 + 240), v10 + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
        v43 = v10[2];
        if (v43)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 96) = v10;
          if (!isUniquelyReferenced_nonNull_native || (v43 - 1) > v10[3] >> 1)
          {
            v10 = sub_10049A07C(isUniquelyReferenced_nonNull_native, v43, 1, v10);
            *(v0 + 96) = v10;
          }

          *(v0 + 584) = v10;
          sub_1003BE48C(0, 1, 0);
          v45 = swift_task_alloc();
          *(v0 + 592) = v45;
          *v45 = v0;
          v45[1] = sub_10071FF78;
          v46 = *(v0 + 240);
          v47 = *(v0 + 128);
LABEL_40:

          return sub_100720D34(v47, v46);
        }

        goto LABEL_56;
      }

      goto LABEL_54;
    }

    goto LABEL_17;
  }

  if (result == 1)
  {
    if (!v62[2])
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    result = (*(*(v0 + 280) + 16))(*(v0 + 288), v62 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
    v37 = v62[2];
    if (!v37)
    {
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v38 = swift_isUniquelyReferenced_nonNull_native();
    v39 = v62;
    *(v0 + 80) = v62;
    if (!v38 || (v37 - 1) > v62[3] >> 1)
    {
      v39 = sub_10049935C(v38, v37, 1, v62);
      *(v0 + 80) = v39;
    }

    *(v0 + 568) = v39;
    sub_1003BE4A4(0, 1, 0);
    v40 = swift_task_alloc();
    *(v0 + 576) = v40;
    *v40 = v0;
    v40[1] = sub_10071F554;
    v41 = *(v0 + 288);
    v42 = *(v0 + 136);
  }

  else
  {
    v48 = *(v0 + 176);
    v49 = *(*(v0 + 168) + 32);
    v49(*(v0 + 184), *(v0 + 200), v25);
    v49(v48, v20 + v23, v25);
    result = static Date.< infix(_:_:)();
    if (result)
    {
      if (v10[2])
      {
        result = (*(*(v0 + 232) + 16))(*(v0 + 248), v10 + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
        v50 = v10[2];
        if (v50)
        {
          v51 = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 96) = v10;
          if (!v51 || (v50 - 1) > v10[3] >> 1)
          {
            v10 = sub_10049A07C(v51, v50, 1, v10);
            *(v0 + 96) = v10;
          }

          *(v0 + 528) = v10;
          sub_1003BE48C(0, 1, 0);
          v52 = swift_task_alloc();
          *(v0 + 536) = v52;
          *v52 = v0;
          v52[1] = sub_10071E0E0;
          v46 = *(v0 + 248);
          v47 = *(v0 + 152);
          goto LABEL_40;
        }

        goto LABEL_59;
      }

      goto LABEL_57;
    }

    if (!v62[2])
    {
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    result = (*(*(v0 + 280) + 16))(*(v0 + 296), v62 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
    v53 = v62[2];
    if (!v53)
    {
LABEL_60:
      __break(1u);
      return result;
    }

    v54 = swift_isUniquelyReferenced_nonNull_native();
    v55 = v62;
    *(v0 + 80) = v62;
    if (!v54 || (v53 - 1) > v62[3] >> 1)
    {
      v55 = sub_10049935C(v54, v53, 1, v62);
      *(v0 + 80) = v55;
    }

    *(v0 + 544) = v55;
    sub_1003BE4A4(0, 1, 0);
    v56 = swift_task_alloc();
    *(v0 + 552) = v56;
    *v56 = v0;
    v56[1] = sub_10071EB1C;
    v41 = *(v0 + 296);
    v42 = *(v0 + 144);
  }

  return sub_100721B1C(v42, v41);
}

uint64_t sub_10071EB1C()
{

  return _swift_task_switch(sub_10071EC18, 0, 0);
}

uint64_t sub_10071EC18()
{
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v1 = *(v0 + 496);
  }

  else
  {
    v1 = sub_10049A030(0, **(v0 + 520) + 1, 1, *(v0 + 496));
  }

  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_10049A030(v2 > 1, v3 + 1, 1, v1);
  }

  v4 = *(v0 + 184);
  v5 = *(v0 + 160);
  v6 = *(v0 + 144);
  v7 = *(v0 + 120);
  v8 = *(*(v0 + 168) + 8);
  v8(*(v0 + 176), v5);
  v8(v4, v5);
  v1[2] = v3 + 1;
  v9 = v1 + 2;
  sub_100726674(v6, v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v3, type metadata accessor for WidgetMusicItem);
  v10 = *(v0 + 560);
  v11 = *(v0 + 544);
  v12 = *(v0 + 512);
  *(v0 + 496) = v1;
  *(v0 + 504) = v11;
  if (v11[2])
  {
    if (*v9 <= 5uLL)
    {
      v13 = *(v0 + 304);
      v14 = *(v0 + 272);
      v15 = *(v0 + 280);
      v63 = v11;
      (*(v15 + 16))(v13, v11 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v14);
      Album.lastPlayedDate.getter();
      (*(v15 + 8))(v13, v14);
      goto LABEL_11;
    }

LABEL_17:
    v29 = *(v0 + 448);
    v61 = *(v0 + 440);
    v62 = *(v0 + 456);
    v30 = *(v0 + 424);
    v59 = *(v0 + 416);
    v60 = *(v0 + 432);
    v31 = *(v0 + 376);
    v32 = *(v0 + 360);
    v57 = *(v0 + 368);
    v58 = *(v0 + 384);
    v33 = *(v0 + 344);
    v34 = *(v0 + 352);

    sub_1007228EC(v35);
    (*(v34 + 8))(v32, v33);
    (*(v31 + 8))(v58, v57);
    (*(v30 + 8))(v60, v59);
    (*(v29 + 8))(v62, v61);

    v36 = *(v0 + 8);

    return v36(v1);
  }

  if (!*(v10 + 16) || *v9 > 5uLL)
  {
    goto LABEL_17;
  }

  v63 = v11;
  (*(*(v0 + 168) + 56))(*(v0 + 216), 1, 1, *(v0 + 160));
  v12 = *(v0 + 560);
LABEL_11:
  *(v0 + 520) = v9;
  *(v0 + 512) = v12;
  if (v12[2])
  {
    v16 = *(v0 + 256);
    v18 = *(v0 + 224);
    v17 = *(v0 + 232);
    (*(v17 + 16))(v16, v12 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v18);
    Playlist.lastPlayedDate.getter();
    (*(v17 + 8))(v16, v18);
  }

  else
  {
    (*(*(v0 + 168) + 56))(*(v0 + 208), 1, 1, *(v0 + 160));
  }

  v20 = *(v0 + 208);
  v19 = *(v0 + 216);
  v21 = *(v0 + 200);
  v22 = *(v0 + 160);
  v23 = *(v0 + 168);
  v24 = *(*(v0 + 192) + 48);
  *(v0 + 600) = v24;
  sub_10003D17C(v19, v21, &qword_101188C20);
  sub_10003D17C(v20, v21 + v24, &qword_101188C20);
  v25 = *(v23 + 48);
  LODWORD(v22) = v25(v21, 1, v22);
  v26 = *(v0 + 160);
  result = v25(v21 + v24, 1, v26);
  if (v22 == 1)
  {
    v28 = result == 1;
    result = v63;
    if (!v28)
    {
      if (v12[2])
      {
        result = (*(*(v0 + 232) + 16))(*(v0 + 240), v12 + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
        v43 = v12[2];
        if (v43)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 96) = v12;
          if (!isUniquelyReferenced_nonNull_native || (v43 - 1) > v12[3] >> 1)
          {
            v12 = sub_10049A07C(isUniquelyReferenced_nonNull_native, v43, 1, v12);
            *(v0 + 96) = v12;
          }

          *(v0 + 584) = v12;
          sub_1003BE48C(0, 1, 0);
          v45 = swift_task_alloc();
          *(v0 + 592) = v45;
          *v45 = v0;
          v45[1] = sub_10071FF78;
          v46 = *(v0 + 240);
          v47 = *(v0 + 128);
LABEL_40:

          return sub_100720D34(v47, v46);
        }

        goto LABEL_56;
      }

      goto LABEL_54;
    }

    goto LABEL_17;
  }

  if (result == 1)
  {
    if (!v63[2])
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    result = (*(*(v0 + 280) + 16))(*(v0 + 288), v63 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
    v37 = v63[2];
    if (!v37)
    {
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v38 = swift_isUniquelyReferenced_nonNull_native();
    v39 = v63;
    *(v0 + 80) = v63;
    if (!v38 || (v37 - 1) > v63[3] >> 1)
    {
      v39 = sub_10049935C(v38, v37, 1, v63);
      *(v0 + 80) = v39;
    }

    *(v0 + 568) = v39;
    sub_1003BE4A4(0, 1, 0);
    v40 = swift_task_alloc();
    *(v0 + 576) = v40;
    *v40 = v0;
    v40[1] = sub_10071F554;
    v41 = *(v0 + 288);
    v42 = *(v0 + 136);
  }

  else
  {
    v48 = *(v0 + 176);
    v49 = *(*(v0 + 168) + 32);
    v49(*(v0 + 184), *(v0 + 200), v26);
    v49(v48, v21 + v24, v26);
    result = static Date.< infix(_:_:)();
    if (result)
    {
      if (v12[2])
      {
        result = (*(*(v0 + 232) + 16))(*(v0 + 248), v12 + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
        v50 = v12[2];
        if (v50)
        {
          v51 = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 96) = v12;
          if (!v51 || (v50 - 1) > v12[3] >> 1)
          {
            v12 = sub_10049A07C(v51, v50, 1, v12);
            *(v0 + 96) = v12;
          }

          *(v0 + 528) = v12;
          sub_1003BE48C(0, 1, 0);
          v52 = swift_task_alloc();
          *(v0 + 536) = v52;
          *v52 = v0;
          v52[1] = sub_10071E0E0;
          v46 = *(v0 + 248);
          v47 = *(v0 + 152);
          goto LABEL_40;
        }

        goto LABEL_59;
      }

      goto LABEL_57;
    }

    if (!v63[2])
    {
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    result = (*(*(v0 + 280) + 16))(*(v0 + 296), v63 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
    v53 = v63[2];
    if (!v53)
    {
LABEL_60:
      __break(1u);
      return result;
    }

    v54 = swift_isUniquelyReferenced_nonNull_native();
    v55 = v63;
    *(v0 + 80) = v63;
    if (!v54 || (v53 - 1) > v63[3] >> 1)
    {
      v55 = sub_10049935C(v54, v53, 1, v63);
      *(v0 + 80) = v55;
    }

    *(v0 + 544) = v55;
    sub_1003BE4A4(0, 1, 0);
    v56 = swift_task_alloc();
    *(v0 + 552) = v56;
    *v56 = v0;
    v56[1] = sub_10071EB1C;
    v41 = *(v0 + 296);
    v42 = *(v0 + 144);
  }

  return sub_100721B1C(v42, v41);
}

uint64_t sub_10071F554()
{

  return _swift_task_switch(sub_10071F650, 0, 0);
}

uint64_t sub_10071F650()
{
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v1 = *(v0 + 496);
  }

  else
  {
    v1 = sub_10049A030(0, **(v0 + 520) + 1, 1, *(v0 + 496));
  }

  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_10049A030(v2 > 1, v3 + 1, 1, v1);
  }

  v4 = *(v0 + 200);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  v7 = *(v0 + 136);
  v8 = *(v0 + 120);
  v1[2] = v3 + 1;
  v9 = v1 + 2;
  sub_100726674(v7, v1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v3, type metadata accessor for WidgetMusicItem);
  (*(v6 + 8))(v4, v5);
  v10 = *(v0 + 568);
  v11 = *(v0 + 512);
  *(v0 + 496) = v1;
  *(v0 + 504) = v10;
  if (v10[2])
  {
    if (*v9 <= 5uLL)
    {
      v12 = *(v0 + 304);
      v13 = *(v0 + 272);
      v14 = *(v0 + 280);
      v62 = v10;
      (*(v14 + 16))(v12, v10 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v13);
      Album.lastPlayedDate.getter();
      (*(v14 + 8))(v12, v13);
      goto LABEL_11;
    }

LABEL_17:
    v28 = *(v0 + 448);
    v29 = *(v0 + 456);
    v60 = *(v0 + 432);
    v61 = *(v0 + 440);
    v30 = *(v0 + 424);
    v31 = *(v0 + 376);
    v58 = *(v0 + 384);
    v59 = *(v0 + 416);
    v32 = *(v0 + 360);
    v57 = *(v0 + 368);
    v33 = *(v0 + 344);
    v34 = *(v0 + 352);

    sub_1007228EC(v35);
    (*(v34 + 8))(v32, v33);
    (*(v31 + 8))(v58, v57);
    (*(v30 + 8))(v60, v59);
    (*(v28 + 8))(v29, v61);

    v36 = *(v0 + 8);

    return v36(v1);
  }

  if (!*(*(v0 + 560) + 16) || *v9 > 5uLL)
  {
    goto LABEL_17;
  }

  v62 = v10;
  (*(*(v0 + 168) + 56))(*(v0 + 216), 1, 1, *(v0 + 160));
  v11 = *(v0 + 560);
LABEL_11:
  *(v0 + 520) = v9;
  *(v0 + 512) = v11;
  if (v11[2])
  {
    v15 = *(v0 + 256);
    v16 = *(v0 + 224);
    v17 = *(v0 + 232);
    (*(v17 + 16))(v15, v11 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v16);
    Playlist.lastPlayedDate.getter();
    (*(v17 + 8))(v15, v16);
  }

  else
  {
    (*(*(v0 + 168) + 56))(*(v0 + 208), 1, 1, *(v0 + 160));
  }

  v19 = *(v0 + 208);
  v18 = *(v0 + 216);
  v20 = *(v0 + 200);
  v21 = *(v0 + 160);
  v22 = *(v0 + 168);
  v23 = *(*(v0 + 192) + 48);
  *(v0 + 600) = v23;
  sub_10003D17C(v18, v20, &qword_101188C20);
  sub_10003D17C(v19, v20 + v23, &qword_101188C20);
  v24 = *(v22 + 48);
  LODWORD(v21) = v24(v20, 1, v21);
  v25 = *(v0 + 160);
  result = v24(v20 + v23, 1, v25);
  if (v21 == 1)
  {
    v27 = result == 1;
    result = v62;
    if (!v27)
    {
      if (v11[2])
      {
        result = (*(*(v0 + 232) + 16))(*(v0 + 240), v11 + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
        v43 = v11[2];
        if (v43)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 96) = v11;
          if (!isUniquelyReferenced_nonNull_native || (v43 - 1) > v11[3] >> 1)
          {
            v11 = sub_10049A07C(isUniquelyReferenced_nonNull_native, v43, 1, v11);
            *(v0 + 96) = v11;
          }

          *(v0 + 584) = v11;
          sub_1003BE48C(0, 1, 0);
          v45 = swift_task_alloc();
          *(v0 + 592) = v45;
          *v45 = v0;
          v45[1] = sub_10071FF78;
          v46 = *(v0 + 240);
          v47 = *(v0 + 128);
LABEL_40:

          return sub_100720D34(v47, v46);
        }

        goto LABEL_56;
      }

      goto LABEL_54;
    }

    goto LABEL_17;
  }

  if (result == 1)
  {
    if (!v62[2])
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    result = (*(*(v0 + 280) + 16))(*(v0 + 288), v62 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
    v37 = v62[2];
    if (!v37)
    {
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v38 = swift_isUniquelyReferenced_nonNull_native();
    v39 = v62;
    *(v0 + 80) = v62;
    if (!v38 || (v37 - 1) > v62[3] >> 1)
    {
      v39 = sub_10049935C(v38, v37, 1, v62);
      *(v0 + 80) = v39;
    }

    *(v0 + 568) = v39;
    sub_1003BE4A4(0, 1, 0);
    v40 = swift_task_alloc();
    *(v0 + 576) = v40;
    *v40 = v0;
    v40[1] = sub_10071F554;
    v41 = *(v0 + 288);
    v42 = *(v0 + 136);
  }

  else
  {
    v48 = *(v0 + 176);
    v49 = *(*(v0 + 168) + 32);
    v49(*(v0 + 184), *(v0 + 200), v25);
    v49(v48, v20 + v23, v25);
    result = static Date.< infix(_:_:)();
    if (result)
    {
      if (v11[2])
      {
        result = (*(*(v0 + 232) + 16))(*(v0 + 248), v11 + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
        v50 = v11[2];
        if (v50)
        {
          v51 = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 96) = v11;
          if (!v51 || (v50 - 1) > v11[3] >> 1)
          {
            v11 = sub_10049A07C(v51, v50, 1, v11);
            *(v0 + 96) = v11;
          }

          *(v0 + 528) = v11;
          sub_1003BE48C(0, 1, 0);
          v52 = swift_task_alloc();
          *(v0 + 536) = v52;
          *v52 = v0;
          v52[1] = sub_10071E0E0;
          v46 = *(v0 + 248);
          v47 = *(v0 + 152);
          goto LABEL_40;
        }

        goto LABEL_59;
      }

      goto LABEL_57;
    }

    if (!v62[2])
    {
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    result = (*(*(v0 + 280) + 16))(*(v0 + 296), v62 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
    v53 = v62[2];
    if (!v53)
    {
LABEL_60:
      __break(1u);
      return result;
    }

    v54 = swift_isUniquelyReferenced_nonNull_native();
    v55 = v62;
    *(v0 + 80) = v62;
    if (!v54 || (v53 - 1) > v62[3] >> 1)
    {
      v55 = sub_10049935C(v54, v53, 1, v62);
      *(v0 + 80) = v55;
    }

    *(v0 + 544) = v55;
    sub_1003BE4A4(0, 1, 0);
    v56 = swift_task_alloc();
    *(v0 + 552) = v56;
    *v56 = v0;
    v56[1] = sub_10071EB1C;
    v41 = *(v0 + 296);
    v42 = *(v0 + 144);
  }

  return sub_100721B1C(v42, v41);
}

uint64_t sub_10071FF78()
{

  return _swift_task_switch(sub_100720074, 0, 0);
}

uint64_t sub_100720074()
{
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v1 = *(v0 + 496);
  }

  else
  {
    v1 = sub_10049A030(0, **(v0 + 520) + 1, 1, *(v0 + 496));
  }

  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_10049A030(v2 > 1, v3 + 1, 1, v1);
  }

  v4 = *(v0 + 600);
  v5 = *(v0 + 200);
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  v1[2] = v3 + 1;
  v8 = v1 + 2;
  sub_100726674(v6, v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v3, type metadata accessor for WidgetMusicItem);
  sub_1000095E8(v5 + v4, &qword_101188C20);
  v9 = *(v0 + 584);
  v10 = *(v0 + 504);
  *(v0 + 560) = v9;
  *(v0 + 496) = v1;
  if (v10[2])
  {
    if (*v8 <= 5uLL)
    {
      v11 = *(v0 + 304);
      v12 = *(v0 + 272);
      v13 = *(v0 + 280);
      v61 = v10;
      (*(v13 + 16))(v11, v10 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v12);
      Album.lastPlayedDate.getter();
      (*(v13 + 8))(v11, v12);
      goto LABEL_11;
    }

LABEL_17:
    v27 = *(v0 + 448);
    v28 = *(v0 + 456);
    v59 = *(v0 + 432);
    v60 = *(v0 + 440);
    v29 = *(v0 + 424);
    v30 = *(v0 + 376);
    v57 = *(v0 + 384);
    v58 = *(v0 + 416);
    v31 = *(v0 + 360);
    v56 = *(v0 + 368);
    v33 = *(v0 + 344);
    v32 = *(v0 + 352);

    sub_1007228EC(v34);
    (*(v32 + 8))(v31, v33);
    (*(v30 + 8))(v57, v56);
    (*(v29 + 8))(v59, v58);
    (*(v27 + 8))(v28, v60);

    v35 = *(v0 + 8);

    return v35(v1);
  }

  if (!v9[2] || *v8 > 5uLL)
  {
    goto LABEL_17;
  }

  v61 = v10;
  (*(*(v0 + 168) + 56))(*(v0 + 216), 1, 1, *(v0 + 160));
  v9 = *(v0 + 560);
LABEL_11:
  *(v0 + 520) = v8;
  *(v0 + 512) = v9;
  if (v9[2])
  {
    v14 = *(v0 + 256);
    v16 = *(v0 + 224);
    v15 = *(v0 + 232);
    (*(v15 + 16))(v14, v9 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v16);
    Playlist.lastPlayedDate.getter();
    (*(v15 + 8))(v14, v16);
  }

  else
  {
    (*(*(v0 + 168) + 56))(*(v0 + 208), 1, 1, *(v0 + 160));
  }

  v18 = *(v0 + 208);
  v17 = *(v0 + 216);
  v19 = *(v0 + 200);
  v20 = *(v0 + 160);
  v21 = *(v0 + 168);
  v22 = *(*(v0 + 192) + 48);
  *(v0 + 600) = v22;
  sub_10003D17C(v17, v19, &qword_101188C20);
  sub_10003D17C(v18, v19 + v22, &qword_101188C20);
  v23 = *(v21 + 48);
  LODWORD(v20) = v23(v19, 1, v20);
  v24 = *(v0 + 160);
  result = v23(v19 + v22, 1, v24);
  if (v20 == 1)
  {
    v26 = result == 1;
    result = v61;
    if (!v26)
    {
      if (v9[2])
      {
        result = (*(*(v0 + 232) + 16))(*(v0 + 240), v9 + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
        v42 = v9[2];
        if (v42)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 96) = v9;
          if (!isUniquelyReferenced_nonNull_native || (v42 - 1) > v9[3] >> 1)
          {
            v9 = sub_10049A07C(isUniquelyReferenced_nonNull_native, v42, 1, v9);
            *(v0 + 96) = v9;
          }

          *(v0 + 584) = v9;
          sub_1003BE48C(0, 1, 0);
          v44 = swift_task_alloc();
          *(v0 + 592) = v44;
          *v44 = v0;
          v44[1] = sub_10071FF78;
          v45 = *(v0 + 240);
          v46 = *(v0 + 128);
LABEL_40:

          return sub_100720D34(v46, v45);
        }

        goto LABEL_56;
      }

      goto LABEL_54;
    }

    goto LABEL_17;
  }

  if (result == 1)
  {
    if (!v61[2])
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    result = (*(*(v0 + 280) + 16))(*(v0 + 288), v61 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
    v36 = v61[2];
    if (!v36)
    {
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v37 = swift_isUniquelyReferenced_nonNull_native();
    v38 = v61;
    *(v0 + 80) = v61;
    if (!v37 || (v36 - 1) > v61[3] >> 1)
    {
      v38 = sub_10049935C(v37, v36, 1, v61);
      *(v0 + 80) = v38;
    }

    *(v0 + 568) = v38;
    sub_1003BE4A4(0, 1, 0);
    v39 = swift_task_alloc();
    *(v0 + 576) = v39;
    *v39 = v0;
    v39[1] = sub_10071F554;
    v40 = *(v0 + 288);
    v41 = *(v0 + 136);
  }

  else
  {
    v47 = *(v0 + 176);
    v48 = *(*(v0 + 168) + 32);
    v48(*(v0 + 184), *(v0 + 200), v24);
    v48(v47, v19 + v22, v24);
    result = static Date.< infix(_:_:)();
    if (result)
    {
      if (v9[2])
      {
        result = (*(*(v0 + 232) + 16))(*(v0 + 248), v9 + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
        v49 = v9[2];
        if (v49)
        {
          v50 = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 96) = v9;
          if (!v50 || (v49 - 1) > v9[3] >> 1)
          {
            v9 = sub_10049A07C(v50, v49, 1, v9);
            *(v0 + 96) = v9;
          }

          *(v0 + 528) = v9;
          sub_1003BE48C(0, 1, 0);
          v51 = swift_task_alloc();
          *(v0 + 536) = v51;
          *v51 = v0;
          v51[1] = sub_10071E0E0;
          v45 = *(v0 + 248);
          v46 = *(v0 + 152);
          goto LABEL_40;
        }

        goto LABEL_59;
      }

      goto LABEL_57;
    }

    if (!v61[2])
    {
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    result = (*(*(v0 + 280) + 16))(*(v0 + 296), v61 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
    v52 = v61[2];
    if (!v52)
    {
LABEL_60:
      __break(1u);
      return result;
    }

    v53 = swift_isUniquelyReferenced_nonNull_native();
    v54 = v61;
    *(v0 + 80) = v61;
    if (!v53 || (v52 - 1) > v61[3] >> 1)
    {
      v54 = sub_10049935C(v53, v52, 1, v61);
      *(v0 + 80) = v54;
    }

    *(v0 + 544) = v54;
    sub_1003BE4A4(0, 1, 0);
    v55 = swift_task_alloc();
    *(v0 + 552) = v55;
    *v55 = v0;
    v55[1] = sub_10071EB1C;
    v40 = *(v0 + 296);
    v41 = *(v0 + 144);
  }

  return sub_100721B1C(v41, v40);
}

uint64_t sub_10072099C()
{
  (*(v0[56] + 8))(v0[57], v0[55]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100720B4C()
{
  v2 = v0[53];
  v1 = v0[54];
  v3 = v0[52];
  (*(v0[47] + 8))(v0[48], v0[46]);
  (*(v2 + 8))(v1, v3);
  (*(v0[56] + 8))(v0[57], v0[55]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100720D34(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  sub_10010FC20(&qword_101188C20);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  sub_10010FC20(&qword_1011831D0);
  v2[10] = swift_task_alloc();
  sub_10010FC20(&unk_10118D2F0);
  v2[11] = swift_task_alloc();
  v3 = type metadata accessor for MusicSiriRepresentation();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  type metadata accessor for ArtworkImage.Placeholder(0);
  v2[15] = swift_task_alloc();
  sub_10010FC20(&unk_101188920);
  v2[16] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_100720F68, 0, 0);
}

uint64_t sub_100720F68()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  *(v0 + 16) = Playlist.name.getter();
  *(v0 + 24) = v3;
  *(v0 + 32) = Playlist.curatorName.getter();
  *(v0 + 40) = v4;
  v5 = Playlist.id.getter();
  sub_100734E88(v5, v6, v1);

  Playlist.artwork.getter();
  v7 = type metadata accessor for Artwork();
  *(v0 + 160) = v7;
  v8 = *(v7 - 8);
  *(v0 + 168) = v8;
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    sub_1000095E8(*(v0 + 128), &unk_101188920);
    *(v0 + 192) = 0;
    v9 = *(v0 + 16);
    v10 = *(v0 + 24);
    v11 = *(v0 + 112);
    v12 = *(v0 + 120);
    v13 = *(v0 + 96);
    v14 = *(v0 + 104);
    v15 = *(v0 + 80);
    v16 = *(v0 + 88);
    *(v0 + 200) = vextq_s8(*(v0 + 32), *(v0 + 32), 8uLL);
    *(v0 + 216) = v10;
    *(v0 + 224) = v9;
    Playlist.variant.getter();
    v17 = sub_10010FC20(&unk_101182950);
    (*(*(v17 - 8) + 56))(v12, 0, 11, v17);
    *(v0 + 232) = Playlist.id.getter();
    *(v0 + 240) = v18;
    *(v0 + 248) = Playlist.catalogID.getter();
    *(v0 + 256) = v19;
    Playlist.siriRepresentation.getter();
    *(v0 + 264) = MusicSiriRepresentation.id.getter();
    *(v0 + 272) = v20;
    (*(v14 + 8))(v11, v13);
    sub_10010FC20(&qword_10118F128);
    v21 = swift_allocObject();
    *(v0 + 280) = v21;
    *(v21 + 16) = xmmword_100EBDC20;
    Playlist.contentRating.getter();
    *(v21 + 32) = TextBadge.init(for:isPlayable:)(v16, 1);
    Playlist.favoriteStatus.getter();
    v22 = type metadata accessor for MusicFavoriteStatus();
    (*(*(v22 - 8) + 56))(v15, 0, 1, v22);
    *(v21 + 33) = TextBadge.init(for:)(v15);
    v23 = swift_task_alloc();
    *(v0 + 288) = v23;
    *v23 = v0;
    v23[1] = sub_100721660;

    return sub_100712CA4();
  }

  else
  {
    if (*DeviceCapabilities.deviceType.unsafeMutableAddressor() == 2)
    {
      v25 = 140.0;
    }

    else
    {
      v25 = 125.0;
    }

    v26 = swift_task_alloc();
    *(v0 + 176) = v26;
    *v26 = v0;
    v26[1] = sub_1007212DC;

    return sub_1005F1854(v25);
  }
}

uint64_t sub_1007212DC(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 128);
  *(*v1 + 184) = a1;

  (*(v2 + 8))(v4, v3);

  return _swift_task_switch(sub_10072143C, 0, 0);
}

uint64_t sub_10072143C()
{
  *(v0 + 192) = *(v0 + 184);
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  *(v0 + 200) = vextq_s8(*(v0 + 32), *(v0 + 32), 8uLL);
  *(v0 + 216) = v2;
  *(v0 + 224) = v1;
  Playlist.variant.getter();
  v9 = sub_10010FC20(&unk_101182950);
  (*(*(v9 - 8) + 56))(v4, 0, 11, v9);
  *(v0 + 232) = Playlist.id.getter();
  *(v0 + 240) = v10;
  *(v0 + 248) = Playlist.catalogID.getter();
  *(v0 + 256) = v11;
  Playlist.siriRepresentation.getter();
  *(v0 + 264) = MusicSiriRepresentation.id.getter();
  *(v0 + 272) = v12;
  (*(v6 + 8))(v3, v5);
  sub_10010FC20(&qword_10118F128);
  v13 = swift_allocObject();
  *(v0 + 280) = v13;
  *(v13 + 16) = xmmword_100EBDC20;
  Playlist.contentRating.getter();
  *(v13 + 32) = TextBadge.init(for:isPlayable:)(v8, 1);
  Playlist.favoriteStatus.getter();
  v14 = type metadata accessor for MusicFavoriteStatus();
  (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  *(v13 + 33) = TextBadge.init(for:)(v7);
  v15 = swift_task_alloc();
  *(v0 + 288) = v15;
  *v15 = v0;
  v15[1] = sub_100721660;

  return sub_100712CA4();
}

uint64_t sub_100721660(char a1)
{
  *(*v1 + 296) = a1;

  return _swift_task_switch(sub_100721760, 0, 0);
}

uint64_t sub_100721760()
{
  v34 = *(v0 + 296);
  v32 = *(v0 + 272);
  v33 = *(v0 + 280);
  v30 = *(v0 + 256);
  v31 = *(v0 + 264);
  v28 = *(v0 + 240);
  v29 = *(v0 + 248);
  v27 = *(v0 + 232);
  v24 = *(v0 + 216);
  v25 = *(v0 + 224);
  v22 = *(v0 + 200);
  v23 = *(v0 + 208);
  v37 = *(v0 + 192);
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v26 = *(v0 + 120);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 48);
  v36 = *(v0 + 56);
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);
  v8(v5, 1, 1, v7);
  v8(v4, 1, 1, v7);
  v9 = type metadata accessor for WidgetMusicItem();
  v35 = v9[25];
  *&v6[v35] = 0;
  *&v6[v9[26]] = _swiftEmptyArrayStorage;
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 2) = v25;
  *(v6 + 3) = v24;
  *(v6 + 4) = v23;
  *(v6 + 5) = v22;
  (*(v2 + 16))(&v6[v9[7]], v1, v3);
  sub_10072660C(v26, &v6[v9[23]], type metadata accessor for ArtworkImage.Placeholder);
  *&v6[v9[24]] = 0x3FF0000000000000;
  v6[v9[8]] = 8;
  v10 = &v6[v9[9]];
  *v10 = v27;
  *(v10 + 1) = v28;
  v11 = &v6[v9[10]];
  *v11 = v29;
  *(v11 + 1) = v30;
  v12 = &v6[v9[11]];
  *v12 = v31;
  *(v12 + 1) = v32;
  v13 = &v6[v9[12]];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v6[v9[13]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v6[v9[14]];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v6[v9[15]] = v33;
  v6[v9[16]] = v34;
  sub_1000089F8(v5, &v6[v9[17]], &qword_101188C20);
  sub_1000089F8(v4, &v6[v9[18]], &qword_101188C20);
  v16 = &v6[v9[19]];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v6[v9[20]] = _swiftEmptyArrayStorage;
  v17 = &v6[v9[21]];
  *v17 = 0;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  v17[24] = 1;
  v18 = &v6[v9[22]];
  *v18 = 0;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  v18[24] = 1;
  sub_10043975C(_swiftEmptyArrayStorage);
  v19 = type metadata accessor for Playlist();
  (*(*(v19 - 8) + 8))(v36, v19);
  sub_1000095E8(v4, &qword_101188C20);
  sub_1000095E8(v5, &qword_101188C20);
  sub_1007264D0(v26, type metadata accessor for ArtworkImage.Placeholder);
  (*(v2 + 8))(v1, v3);
  *&v6[v35] = v37;

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100721B1C(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  sub_10010FC20(&qword_101188C20);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  sub_10010FC20(&qword_1011831D0);
  v2[10] = swift_task_alloc();
  sub_10010FC20(&unk_10118D2F0);
  v2[11] = swift_task_alloc();
  v3 = type metadata accessor for MusicSiriRepresentation();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  type metadata accessor for ArtworkImage.Placeholder(0);
  v2[15] = swift_task_alloc();
  sub_10010FC20(&unk_101188920);
  v2[16] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_100721D50, 0, 0);
}

uint64_t sub_100721D50()
{
  v1 = v0[19];
  v2 = v0[16];
  v0[2] = Album.title.getter();
  v0[3] = v3;
  v0[4] = Album.artistName.getter();
  v0[5] = v4;
  v5 = Album.id.getter();
  sub_100734E88(v5, v6, v1);

  Album.artwork.getter();
  v7 = type metadata accessor for Artwork();
  v0[20] = v7;
  v8 = *(v7 - 8);
  v0[21] = v8;
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    sub_1000095E8(v0[16], &unk_101188920);
    v9 = v0[4];
    v10 = v0[5];
    v11 = v0[2];
    v12 = v0[3];
    v14 = v0[14];
    v13 = v0[15];
    v15 = v0[12];
    v16 = v0[13];
    v17 = v0[10];
    v18 = v0[11];
    v0[24] = 0;
    v0[25] = v10;
    v0[26] = v9;
    v0[27] = v12;
    v0[28] = v11;
    v19 = sub_10010FC20(&unk_101182950);
    (*(*(v19 - 8) + 56))(v13, 1, 11, v19);
    v0[29] = Album.id.getter();
    v0[30] = v20;
    v0[31] = Album.catalogID.getter();
    v0[32] = v21;
    Album.siriRepresentation.getter();
    v0[33] = MusicSiriRepresentation.id.getter();
    v0[34] = v22;
    (*(v16 + 8))(v14, v15);
    sub_10010FC20(&qword_10118F128);
    v23 = swift_allocObject();
    v0[35] = v23;
    *(v23 + 16) = xmmword_100EBDC20;
    Album.contentRating.getter();
    *(v23 + 32) = TextBadge.init(for:isPlayable:)(v18, 1);
    Album.favoriteStatus.getter();
    v24 = type metadata accessor for MusicFavoriteStatus();
    (*(*(v24 - 8) + 56))(v17, 0, 1, v24);
    *(v23 + 33) = TextBadge.init(for:)(v17);
    v25 = swift_task_alloc();
    v0[36] = v25;
    *v25 = v0;
    v25[1] = sub_100722430;

    return sub_100713030();
  }

  else
  {
    if (*DeviceCapabilities.deviceType.unsafeMutableAddressor() == 2)
    {
      v27 = 140.0;
    }

    else
    {
      v27 = 125.0;
    }

    v28 = swift_task_alloc();
    v0[22] = v28;
    *v28 = v0;
    v28[1] = sub_1007220BC;

    return sub_1005F1854(v27);
  }
}

uint64_t sub_1007220BC(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 128);
  *(*v1 + 184) = a1;

  (*(v2 + 8))(v4, v3);

  return _swift_task_switch(sub_10072221C, 0, 0);
}

uint64_t sub_10072221C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[12];
  v8 = v0[13];
  v9 = v0[10];
  v10 = v0[11];
  v0[24] = v0[23];
  v0[25] = v2;
  v0[26] = v1;
  v0[27] = v4;
  v0[28] = v3;
  v11 = sub_10010FC20(&unk_101182950);
  (*(*(v11 - 8) + 56))(v5, 1, 11, v11);
  v0[29] = Album.id.getter();
  v0[30] = v12;
  v0[31] = Album.catalogID.getter();
  v0[32] = v13;
  Album.siriRepresentation.getter();
  v0[33] = MusicSiriRepresentation.id.getter();
  v0[34] = v14;
  (*(v8 + 8))(v6, v7);
  sub_10010FC20(&qword_10118F128);
  v15 = swift_allocObject();
  v0[35] = v15;
  *(v15 + 16) = xmmword_100EBDC20;
  Album.contentRating.getter();
  *(v15 + 32) = TextBadge.init(for:isPlayable:)(v10, 1);
  Album.favoriteStatus.getter();
  v16 = type metadata accessor for MusicFavoriteStatus();
  (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
  *(v15 + 33) = TextBadge.init(for:)(v9);
  v17 = swift_task_alloc();
  v0[36] = v17;
  *v17 = v0;
  v17[1] = sub_100722430;

  return sub_100713030();
}

uint64_t sub_100722430(char a1)
{
  *(*v1 + 296) = a1;

  return _swift_task_switch(sub_100722530, 0, 0);
}

uint64_t sub_100722530()
{
  v34 = *(v0 + 296);
  v32 = *(v0 + 272);
  v33 = *(v0 + 280);
  v30 = *(v0 + 256);
  v31 = *(v0 + 264);
  v28 = *(v0 + 240);
  v29 = *(v0 + 248);
  v27 = *(v0 + 232);
  v24 = *(v0 + 216);
  v25 = *(v0 + 224);
  v22 = *(v0 + 200);
  v23 = *(v0 + 208);
  v37 = *(v0 + 192);
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v26 = *(v0 + 120);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 48);
  v36 = *(v0 + 56);
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);
  v8(v5, 1, 1, v7);
  v8(v4, 1, 1, v7);
  v9 = type metadata accessor for WidgetMusicItem();
  v35 = v9[25];
  *&v6[v35] = 0;
  *&v6[v9[26]] = _swiftEmptyArrayStorage;
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 2) = v25;
  *(v6 + 3) = v24;
  *(v6 + 4) = v23;
  *(v6 + 5) = v22;
  (*(v2 + 16))(&v6[v9[7]], v1, v3);
  sub_10072660C(v26, &v6[v9[23]], type metadata accessor for ArtworkImage.Placeholder);
  *&v6[v9[24]] = 0x3FF0000000000000;
  v6[v9[8]] = 8;
  v10 = &v6[v9[9]];
  *v10 = v27;
  *(v10 + 1) = v28;
  v11 = &v6[v9[10]];
  *v11 = v29;
  *(v11 + 1) = v30;
  v12 = &v6[v9[11]];
  *v12 = v31;
  *(v12 + 1) = v32;
  v13 = &v6[v9[12]];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v6[v9[13]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v6[v9[14]];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v6[v9[15]] = v33;
  v6[v9[16]] = v34;
  sub_1000089F8(v5, &v6[v9[17]], &qword_101188C20);
  sub_1000089F8(v4, &v6[v9[18]], &qword_101188C20);
  v16 = &v6[v9[19]];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v6[v9[20]] = _swiftEmptyArrayStorage;
  v17 = &v6[v9[21]];
  *v17 = 0;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  v17[24] = 1;
  v18 = &v6[v9[22]];
  *v18 = 0;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  v18[24] = 1;
  sub_10043975C(_swiftEmptyArrayStorage);
  v19 = type metadata accessor for Album();
  (*(*(v19 - 8) + 8))(v36, v19);
  sub_1000095E8(v4, &qword_101188C20);
  sub_1000095E8(v5, &qword_101188C20);
  sub_1007264D0(v26, type metadata accessor for ArtworkImage.Placeholder);
  (*(v2 + 8))(v1, v3);
  *&v6[v35] = v37;

  v20 = *(v0 + 8);

  return v20();
}

void sub_1007228EC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for WidgetMusicItem() - 8;
  v6 = __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    v6.n128_u64[0] = 136446210;
    v21 = v6;
    v22 = v11;
    v23 = OBJC_IVAR____TtC5Music32RecentlyPlayedWidgetDataProvider_logger;
    do
    {
      sub_10072660C(v10, v8, type metadata accessor for WidgetMusicItem);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v24 = v13;
        *v12 = v21.n128_u32[0];
        v14 = sub_100439864();
        v15 = v2;
        v17 = v16;
        sub_1007264D0(v8, type metadata accessor for WidgetMusicItem);
        v18 = sub_1000105AC(v14, v17, &v24);
        v2 = v15;

        *(v12 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v19, v20, "ITEM %{public}s", v12, 0xCu);
        sub_10000959C(v13);

        v11 = v22;
      }

      else
      {

        sub_1007264D0(v8, type metadata accessor for WidgetMusicItem);
      }

      v10 += v11;
      --v9;
    }

    while (v9);
  }
}

uint64_t sub_100722B2C()
{

  v1 = OBJC_IVAR____TtC5Music32RecentlyPlayedWidgetDataProvider_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_100722C20()
{
  sub_100722CB0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100722CB0()
{
  if (!qword_1011A01F0)
  {
    sub_1001109D0(&qword_10119B110);
    sub_100722DA4(&qword_10119B138, &qword_10118EEB0);
    sub_100722DA4(&qword_10119B118, &qword_10118EEB8);
    v0 = type metadata accessor for FileBacked();
    if (!v1)
    {
      atomic_store(v0, &qword_1011A01F0);
    }
  }
}

uint64_t sub_100722DA4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(&qword_10119B110);
    sub_100726488(a2, type metadata accessor for WidgetMusicItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100722E40@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v1 = type metadata accessor for Station();
  v52 = *(v1 - 8);
  v53 = v1;
  __chkstk_darwin(v1);
  v51 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Playlist();
  v54 = *(v3 - 8);
  v55 = v3;
  __chkstk_darwin(v3);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v6 - 8);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = &v48 - v10;
  __chkstk_darwin(v11);
  v50 = &v48 - v12;
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  __chkstk_darwin(v16);
  v18 = &v48 - v17;
  v19 = type metadata accessor for Album();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for RecentlyPlayedMusicItem();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v27, v57, v23, v25);
  v28 = (*(v24 + 88))(v27, v23);
  if (v28 == enum case for RecentlyPlayedMusicItem.album(_:))
  {
    (*(v24 + 96))(v27, v23);
    (*(v20 + 32))(v22, v27, v19);
    Album.url.getter();
    v29 = type metadata accessor for URL();
    v30 = *(v29 - 8);
    v31 = *(v30 + 48);
    if (v31(v18, 1, v29) == 1)
    {
      v32 = Album.id.getter();
      sub_100734D0C(v32, v33, v56);

      (*(v20 + 8))(v22, v19);
      result = v31(v18, 1, v29);
      if (result != 1)
      {
        return sub_1000095E8(v18, &qword_101183A20);
      }
    }

    else
    {
      (*(v20 + 8))(v22, v19);
      return (*(v30 + 32))(v56, v18, v29);
    }

    return result;
  }

  if (v28 == enum case for RecentlyPlayedMusicItem.playlist(_:))
  {
    (*(v24 + 96))(v27, v23);
    v36 = v54;
    v35 = v55;
    (*(v54 + 32))(v5, v27, v55);
    Playlist.url.getter();
    v37 = type metadata accessor for URL();
    v38 = *(v37 - 8);
    v39 = *(v38 + 48);
    if (v39(v15, 1, v37) == 1)
    {
      v40 = Playlist.id.getter();
      sub_100734E88(v40, v41, v56);

      (*(v36 + 8))(v5, v35);
      goto LABEL_13;
    }

    (*(v36 + 8))(v5, v35);
    return (*(v38 + 32))(v56, v15, v37);
  }

  if (v28 != enum case for RecentlyPlayedMusicItem.station(_:))
  {
    URL.init(string:)();
    v46 = type metadata accessor for URL();
    v47 = *(v46 - 8);
    result = (*(v47 + 48))(v8, 1, v46);
    if (result != 1)
    {
      (*(v47 + 32))(v56, v8, v46);
      return (*(v24 + 8))(v27, v23);
    }

    __break(1u);
    goto LABEL_22;
  }

  (*(v24 + 96))(v27, v23);
  v43 = v51;
  v42 = v52;
  v44 = v53;
  (*(v52 + 32))(v51, v27, v53);
  v15 = v50;
  Station.url.getter();
  v37 = type metadata accessor for URL();
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  if (v39(v15, 1, v37) != 1)
  {
    (*(v42 + 8))(v43, v44);
    return (*(v38 + 32))(v56, v15, v37);
  }

  v45 = v49;
  URL.init(string:)();
  result = (v39)(v45, 1, v37);
  if (result == 1)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  (*(v42 + 8))(v43, v44);
  (*(v38 + 32))(v56, v45, v37);
LABEL_13:
  result = (v39)(v15, 1, v37);
  if (result != 1)
  {
    return sub_1000095E8(v15, &qword_101183A20);
  }

  return result;
}

uint64_t sub_100723634@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Playlist();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RecentlyPlayedMusicItem();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v2, v8, v10);
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 == enum case for RecentlyPlayedMusicItem.album(_:))
  {
    v14 = sub_10010FC20(&unk_101182950);
    (*(*(v14 - 8) + 56))(a1, 1, 11, v14);
    return (*(v9 + 8))(v12, v8);
  }

  else if (v13 == enum case for RecentlyPlayedMusicItem.playlist(_:))
  {
    (*(v9 + 96))(v12, v8);
    (*(v5 + 32))(v7, v12, v4);
    Playlist.variant.getter();
    (*(v5 + 8))(v7, v4);
    v16 = sub_10010FC20(&unk_101182950);
    return (*(*(v16 - 8) + 56))(a1, 0, 11, v16);
  }

  else
  {
    v17 = enum case for RecentlyPlayedMusicItem.station(_:);
    v18 = v13;
    v19 = sub_10010FC20(&unk_101182950);
    if (v18 == v17)
    {
      v20 = 9;
    }

    else
    {
      v20 = 1;
    }

    (*(*(v19 - 8) + 56))(a1, v20, 11, v19);
    return (*(v9 + 8))(v12, v8);
  }
}

void *sub_100723968()
{
  v1 = v0;
  v2 = type metadata accessor for Station();
  v34 = *(v2 - 8);
  v35 = v2;
  __chkstk_darwin(v2);
  v33 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Playlist();
  v36 = *(v4 - 8);
  v37 = v4;
  __chkstk_darwin(v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_1011831D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - v8;
  v10 = sub_10010FC20(&unk_10118D2F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v32 - v11;
  v13 = type metadata accessor for Album();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for RecentlyPlayedMusicItem();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, v1, v17, v19);
  v22 = (*(v18 + 88))(v21, v17);
  if (v22 == enum case for RecentlyPlayedMusicItem.album(_:))
  {
    (*(v18 + 96))(v21, v17);
    (*(v14 + 32))(v16, v21, v13);
    sub_10010FC20(&qword_10118F128);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100EBDC20;
    Album.contentRating.getter();
    *(v23 + 32) = TextBadge.init(for:isPlayable:)(v12, 1);
    Album.favoriteStatus.getter();
    v24 = type metadata accessor for MusicFavoriteStatus();
    (*(*(v24 - 8) + 56))(v9, 0, 1, v24);
    *(v23 + 33) = TextBadge.init(for:)(v9);
    (*(v14 + 8))(v16, v13);
  }

  else if (v22 == enum case for RecentlyPlayedMusicItem.playlist(_:))
  {
    (*(v18 + 96))(v21, v17);
    v26 = v36;
    v25 = v37;
    (*(v36 + 32))(v6, v21, v37);
    sub_10010FC20(&qword_10118F128);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100EBDC20;
    Playlist.contentRating.getter();
    *(v23 + 32) = TextBadge.init(for:isPlayable:)(v12, 1);
    Playlist.favoriteStatus.getter();
    v27 = type metadata accessor for MusicFavoriteStatus();
    (*(*(v27 - 8) + 56))(v9, 0, 1, v27);
    *(v23 + 33) = TextBadge.init(for:)(v9);
    (*(v26 + 8))(v6, v25);
  }

  else if (v22 == enum case for RecentlyPlayedMusicItem.station(_:))
  {
    (*(v18 + 96))(v21, v17);
    v28 = v33;
    v29 = v34;
    v30 = v35;
    (*(v34 + 32))(v33, v21, v35);
    sub_10010FC20(&qword_10118F128);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100EBC6B0;
    Station.contentRating.getter();
    *(v23 + 32) = TextBadge.init(for:isPlayable:)(v12, 1);
    (*(v29 + 8))(v28, v30);
  }

  else
  {
    (*(v18 + 8))(v21, v17);
    return _swiftEmptyArrayStorage;
  }

  return v23;
}

uint64_t sub_100723F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[10] = a2;
  v6[15] = *(sub_10010FC20(&qword_1011920D8) - 8);
  v6[16] = swift_task_alloc();
  sub_10010FC20(&qword_1011A0310);
  v6[17] = swift_task_alloc();
  v7 = sub_10010FC20(&qword_1011A0318);
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();
  v8 = *(type metadata accessor for DragDropToFolder(0) - 8);
  v6[21] = v8;
  v6[22] = *(v8 + 64);
  v6[23] = swift_task_alloc();
  sub_10010FC20(&unk_101181520);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v9 = sub_10010FC20(&qword_1011A0320);
  v6[26] = v9;
  v6[27] = *(v9 - 8);
  v6[28] = swift_task_alloc();
  sub_10010FC20(&qword_1011A0328);
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();

  return _swift_task_switch(sub_10072420C, 0, 0);
}

uint64_t sub_10072420C()
{
  v2 = 0;
  v3 = *(v1 + 216);
  v38 = *(v1 + 168);
  v39 = *(v1 + 208);
  v36 = (v3 + 48);
  v37 = (v3 + 56);
  v4 = *(*(v1 + 88) + 16);
  v35 = v4;
  while (1)
  {
    if (v2 == v4)
    {
      v5 = 1;
      v6 = v4;
    }

    else
    {
      if (v2 >= v4)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v6 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_22;
      }

      v8 = *(v1 + 224);
      v7 = *(v1 + 232);
      v9 = *(v1 + 88) + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v2;
      v10 = *(v39 + 48);
      *v8 = v2;
      sub_10072660C(v9, v8 + v10, type metadata accessor for DragDropToFolder);
      sub_10003D17C(v8, v7, &qword_1011A0320);
      v5 = 0;
    }

    v12 = *(v1 + 232);
    v11 = *(v1 + 240);
    v13 = *(v1 + 208);
    (*v37)(v12, v5, 1, v13);
    sub_10003D17C(v12, v11, &qword_1011A0328);
    if ((*v36)(v11, 1, v13) == 1)
    {
      break;
    }

    v14 = *(v1 + 240);
    v15 = *(v1 + 200);
    v42 = *(v1 + 192);
    v43 = v6;
    v16 = *(v1 + 184);
    v17 = *(v1 + 104);
    v40 = *v14;
    v41 = *(v1 + 96);
    v18 = *(v39 + 48);
    v19 = type metadata accessor for TaskPriority();
    v20 = *(v19 - 8);
    (*(v20 + 56))(v15, 1, 1, v19);
    sub_100726674(v14 + v18, v16, type metadata accessor for DragDropToFolder);
    v21 = (*(v38 + 80) + 56) & ~*(v38 + 80);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v40;
    v22[5] = v41;
    v22[6] = v17;
    sub_100726674(v16, v22 + v21, type metadata accessor for DragDropToFolder);
    sub_1000089F8(v15, v42, &unk_101181520);
    LODWORD(v16) = (*(v20 + 48))(v42, 1, v19);

    v23 = *(v1 + 192);
    if (v16 == 1)
    {
      sub_1000095E8(*(v1 + 192), &unk_101181520);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v20 + 8))(v23, v19);
    }

    if (v22[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v24 = dispatch thunk of Actor.unownedExecutor.getter();
      v26 = v25;
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v4 = v35;
    v2 = v43;
    v27 = **(v1 + 80);

    sub_10010FC20(&qword_1011A0308);
    v28 = v26 | v24;
    if (v26 | v24)
    {
      v28 = v1 + 16;
      *(v1 + 16) = 0;
      *(v1 + 24) = 0;
      *(v1 + 32) = v24;
      *(v1 + 40) = v26;
    }

    v0 = *(v1 + 200);
    *(v1 + 48) = 1;
    *(v1 + 56) = v28;
    *(v1 + 64) = v27;
    swift_task_create();

    sub_1000095E8(v0, &unk_101181520);
  }

  v29 = *(v1 + 112);
  *(v1 + 248) = sub_10010FC20(&qword_1011A0308);
  sub_10010FC20(&qword_1011824A0);
  ThrowingTaskGroup.makeAsyncIterator()();
  v0 = *v29;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v29 = v0;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_18;
  }

LABEL_23:
  v0 = sub_1005014F8(v0);
LABEL_18:
  **(v1 + 112) = v0;
  v31 = swift_task_alloc();
  *(v1 + 256) = v31;
  *v31 = v1;
  v31[1] = sub_100724710;
  v32 = *(v1 + 136);
  v33 = *(v1 + 144);

  return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v32, 0, 0, v33, v1 + 72);
}

uint64_t sub_100724710()
{

  if (v0)
  {
    v1 = sub_100724AD4;
  }

  else
  {
    v1 = sub_100724820;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100724820()
{
  v1 = v0[31];
  v2 = v0[17];
  if ((*(*(v1 - 8) + 48))(v2, 1, v1) != 1)
  {
    v5 = v0[16];
    v6 = v0[14];
    v7 = *v2;
    sub_10003D17C(v2 + *(v1 + 48), v5, &qword_1011831B0);
    v8 = sub_10010FC20(&qword_1011831B0);
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
    v9 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v16 = v0[14];
      isUniquelyReferenced_nonNull_native = sub_1005014F8(v9);
      v9 = isUniquelyReferenced_nonNull_native;
      *v16 = isUniquelyReferenced_nonNull_native;
      if ((v7 & 0x8000000000000000) == 0)
      {
LABEL_7:
        if (v7 < v9[2])
        {
          sub_10006B010(v0[16], v9 + ((*(v0[15] + 80) + 32) & ~*(v0[15] + 80)) + *(v0[15] + 72) * v7, &qword_1011920D8);
          v15 = swift_task_alloc();
          v0[32] = v15;
          *v15 = v0;
          v15[1] = sub_100724710;
          isUniquelyReferenced_nonNull_native = v0[17];
          v13 = v0[18];
          v14 = v0 + 9;
          v11 = 0;
          v12 = 0;

          return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v11, v12, v13, v14);
        }

LABEL_13:
        __break(1u);
        return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v11, v12, v13, v14);
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  (*(v0[19] + 8))(v0[20], v0[18]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100724AD4()
{
  (*(v0[19] + 8))(v0[20], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100724BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[16] = a3;
  v6[17] = a4;
  v6[15] = a2;
  v6[20] = *(sub_10010FC20(&qword_10118F120) - 8);
  v6[21] = swift_task_alloc();
  sub_10010FC20(&qword_1011A02C0);
  v6[22] = swift_task_alloc();
  v7 = sub_10010FC20(&qword_1011A02C8);
  v6[23] = v7;
  v6[24] = *(v7 - 8);
  v6[25] = swift_task_alloc();
  sub_10010FC20(&unk_101181520);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v8 = sub_10010FC20(&qword_1011A02D0);
  v6[28] = v8;
  v6[29] = *(v8 - 8);
  v6[30] = swift_task_alloc();
  v9 = type metadata accessor for RecentlyPlayedMusicItem();
  v6[31] = v9;
  v10 = *(v9 - 8);
  v6[32] = v10;
  v6[33] = *(v10 + 64);
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  sub_10010FC20(&qword_1011A02D8);
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v11 = sub_10010FC20(&qword_1011A0290);
  v6[38] = v11;
  v6[39] = *(v11 - 8);
  v6[40] = swift_task_alloc();
  sub_10010FC20(&qword_1011A02E0);
  v6[41] = swift_task_alloc();
  v6[42] = sub_10010FC20(&qword_1011A02E8);
  v6[43] = swift_task_alloc();

  return _swift_task_switch(sub_100724F7C, 0, 0);
}

uint64_t sub_100724F7C()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = *(v0 + 320);
  v4 = *(v0 + 328);
  v5 = *(v0 + 304);
  v6 = *(v0 + 312);
  v7 = *(v0 + 256);
  v8 = *(v0 + 232);
  v55 = *(v0 + 224);
  (*(v6 + 16))(v4, *(v0 + 128), v5);
  (*(v6 + 32))(v3, v4, v5);
  sub_100020674(&qword_1011A02F0, &qword_1011A0290);
  dispatch thunk of Sequence.makeIterator()();
  v46 = *(v1 + 36);
  *(v2 + v46) = 0;
  v47 = (v7 + 16);
  v50 = v7;
  v54 = (v7 + 32);
  v9 = *(sub_10010FC20(&qword_1011A02F8) + 36);
  v52 = (v8 + 48);
  v53 = (v8 + 56);
  v51 = 0;
  sub_100020674(&qword_1011A02B0, &qword_1011A0290);
  v48 = v2;
  v49 = v9;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*(v2 + v9) == *(v0 + 104))
    {
      v11 = 1;
    }

    else
    {
      v12 = *(v0 + 280);
      v13 = *(v0 + 240);
      v14 = *(v0 + 248);
      v15 = dispatch thunk of Collection.subscript.read();
      (*v47)(v12);
      v15(v0 + 16, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v16 = *(v55 + 48);
      *v13 = v51;
      (*v54)(&v13[v16], v12, v14);
      v17 = (v51 + 1);
      if (__OFADD__(v51, 1))
      {
        __break(1u);
        goto LABEL_21;
      }

      v18 = *(v0 + 288);
      v19 = *(v0 + 240);
      ++v51;
      *(v2 + v46) = v17;
      sub_10003D17C(v19, v18, &qword_1011A02D0);
      v11 = 0;
    }

    v20 = *(v0 + 288);
    v21 = *(v0 + 296);
    v22 = *(v0 + 224);
    (*v53)(v20, v11, 1, v22);
    sub_10003D17C(v20, v21, &qword_1011A02D8);
    if ((*v52)(v21, 1, v22) == 1)
    {
      break;
    }

    v23 = *(v0 + 296);
    v24 = *(v0 + 272);
    v25 = *(v0 + 248);
    v26 = *(v0 + 216);
    v56 = v25;
    v57 = v26;
    v27 = *(v0 + 144);
    v59 = *(v0 + 136);
    v60 = *(v0 + 208);
    v58 = *v23;
    v28 = *(v55 + 48);
    v29 = type metadata accessor for TaskPriority();
    v30 = *(v29 - 8);
    (*(v30 + 56))(v26, 1, 1, v29);
    v31 = *(v50 + 32);
    v31(v24, v23 + v28, v25);
    v32 = (*(v50 + 80) + 56) & ~*(v50 + 80);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v58;
    v33[5] = v59;
    v33[6] = v27;
    v31(v33 + v32, v24, v56);
    sub_1000089F8(v57, v60, &unk_101181520);
    LODWORD(v28) = (*(v30 + 48))(v60, 1, v29);

    v34 = *(v0 + 208);
    if (v28 == 1)
    {
      sub_1000095E8(*(v0 + 208), &unk_101181520);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v30 + 8))(v34, v29);
    }

    v9 = v49;
    if (v33[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v35 = dispatch thunk of Actor.unownedExecutor.getter();
      v37 = v36;
      swift_unknownObjectRelease();
    }

    else
    {
      v35 = 0;
      v37 = 0;
    }

    v2 = v48;
    v38 = **(v0 + 120);

    sub_10010FC20(&qword_1011A02B8);
    v39 = v37 | v35;
    if (v37 | v35)
    {
      v39 = v0 + 48;
      *(v0 + 48) = 0;
      *(v0 + 56) = 0;
      *(v0 + 64) = v35;
      *(v0 + 72) = v37;
    }

    v10 = *(v0 + 216);
    *(v0 + 80) = 1;
    *(v0 + 88) = v39;
    *(v0 + 96) = v38;
    swift_task_create();

    sub_1000095E8(v10, &unk_101181520);
  }

  v40 = *(v0 + 152);
  sub_1000095E8(*(v0 + 344), &qword_1011A02E8);
  *(v0 + 352) = sub_10010FC20(&qword_1011A02B8);
  sub_10010FC20(&qword_1011824A0);
  ThrowingTaskGroup.makeAsyncIterator()();
  v17 = *v40;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v40 = v17;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_17;
  }

LABEL_21:
  v17 = sub_100501534(v17);
LABEL_17:
  **(v0 + 152) = v17;
  v42 = swift_task_alloc();
  *(v0 + 360) = v42;
  *v42 = v0;
  v42[1] = sub_100725618;
  v43 = *(v0 + 176);
  v44 = *(v0 + 184);

  return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v43, 0, 0, v44, v0 + 112);
}

uint64_t sub_100725618()
{

  if (v0)
  {
    v1 = sub_100725A04;
  }

  else
  {
    v1 = sub_100725728;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100725728()
{
  v1 = v0[44];
  v2 = v0[22];
  if ((*(*(v1 - 8) + 48))(v2, 1, v1) != 1)
  {
    v5 = v0[21];
    v6 = v0[19];
    v7 = *v2;
    sub_100726674(v2 + *(v1 + 48), v5, type metadata accessor for WidgetMusicItem);
    v8 = type metadata accessor for WidgetMusicItem();
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
    v9 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v16 = v0[19];
      isUniquelyReferenced_nonNull_native = sub_100501534(v9);
      v9 = isUniquelyReferenced_nonNull_native;
      *v16 = isUniquelyReferenced_nonNull_native;
      if ((v7 & 0x8000000000000000) == 0)
      {
LABEL_7:
        if (v7 < v9[2])
        {
          sub_10006B010(v0[21], v9 + ((*(v0[20] + 80) + 32) & ~*(v0[20] + 80)) + *(v0[20] + 72) * v7, &qword_10118F120);
          v15 = swift_task_alloc();
          v0[45] = v15;
          *v15 = v0;
          v15[1] = sub_100725618;
          isUniquelyReferenced_nonNull_native = v0[22];
          v13 = v0[23];
          v14 = v0 + 14;
          v11 = 0;
          v12 = 0;

          return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v11, v12, v13, v14);
        }

LABEL_13:
        __break(1u);
        return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v11, v12, v13, v14);
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  (*(v0[24] + 8))(v0[25], v0[23]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100725A04()
{
  (*(v0[24] + 8))(v0[25], v0[23]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100725B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return _swift_task_switch(sub_100725B5C, 0, 0);
}

uint64_t sub_100725B5C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = *(sub_10010FC20(&qword_1011A0308) + 48);
  *v3 = v1;
  v8 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_10072680C;
  v6 = v0[6];

  return v8(&v3[v4], v6);
}

uint64_t sub_100725C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return _swift_task_switch(sub_100725CA4, 0, 0);
}

uint64_t sub_100725CA4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = *(sub_10010FC20(&qword_1011A02B8) + 48);
  *v3 = v1;
  v8 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_100725DC4;
  v6 = v0[6];

  return v8(&v3[v4], v6);
}

uint64_t sub_100725DC4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100725EB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a3;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_10002F3F4;

  return sub_100723F4C(a1, a2, v12, a4, a5, a6);
}

uint64_t sub_100725FA0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10002F3F4;

  return sub_100724BD0(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_10072607C(uint64_t a1)
{
  v4 = *(type metadata accessor for RecentlyPlayedMusicItem() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100008F30;

  return sub_100725C7C(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_1007261CC(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for WidgetDiskCache() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for URL() - 8);
  v6 = *(v1 + v4);
  v7 = *(v1 + v4 + 8);
  v8 = *(v1 + 16);
  v9 = v1 + ((v4 + *(v5 + 80) + 16) & ~*(v5 + 80));

  return a1(v8, v1 + v3, v6, v7, v9);
}

uint64_t sub_100726314(uint64_t *a1, uint64_t a2, uint64_t (*a3)(unint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_10010FC20(a1) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for WidgetDiskCache() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for URL() - 8);
  v11 = *(v3 + v9);
  v12 = *(v3 + v9 + 8);
  v13 = v3 + ((v9 + *(v10 + 80) + 16) & ~*(v10 + 80));

  return a3(v3 + v5, v3 + v8, v11, v12, v13);
}

uint64_t sub_100726488(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1007264D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100726530(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100008F30;

  return sub_100725EB8(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_10072660C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100726674(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007266DC(uint64_t a1)
{
  v4 = *(type metadata accessor for DragDropToFolder(0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100008F30;

  return sub_100725B34(a1, v6, v7, v8, v9, v10, v1 + v5);
}

void sub_100726828(void *a1)
{
  v3 = OBJC_IVAR____TtC5Music12VolumeSlider_route;
  v4 = *(v1 + OBJC_IVAR____TtC5Music12VolumeSlider_route);
  if (v4)
  {
    if (a1)
    {
      sub_100009F78(0, &unk_1011A0470);
      v5 = v4;
      v6 = a1;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        return;
      }

      v4 = *(v1 + v3);
    }
  }

  else
  {
    if (!a1)
    {
      return;
    }

    v4 = 0;
  }

  v12 = [objc_allocWithZone(MPVolumeControllerRouteDataSource) initWithGroupRoute:v4 outputDeviceRoute:0];
  *(v1 + OBJC_IVAR____TtC5Music12VolumeSlider_ignoreAnimationForVolumeEvents) = 1;
  v8 = [objc_allocWithZone(MPVolumeController) initWithDataSource:v12];
  v9 = OBJC_IVAR____TtC5Music12VolumeSlider_volumeController;
  v10 = *(v1 + OBJC_IVAR____TtC5Music12VolumeSlider_volumeController);
  *(v1 + OBJC_IVAR____TtC5Music12VolumeSlider_volumeController) = v8;
  v11 = v8;

  [v11 setDelegate:v1];
  [*(v1 + v9) updateVolumeValue];
  sub_100727300(0);
}

char *sub_1007269A0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC5Music12VolumeSlider_volumeController;
  v11 = [objc_allocWithZone(MPVolumeControllerSystemDataSource) init];
  v12 = [objc_allocWithZone(MPVolumeController) initWithDataSource:v11];

  *&v5[v10] = v12;
  v5[OBJC_IVAR____TtC5Music12VolumeSlider_isTracking] = 0;
  v5[OBJC_IVAR____TtC5Music12VolumeSlider_ignoreAnimationForVolumeEvents] = 0;
  v13 = OBJC_IVAR____TtC5Music12VolumeSlider_elapsedTrackColor;
  v14 = objc_opt_self();
  *&v5[v13] = [v14 whiteColor];
  v15 = OBJC_IVAR____TtC5Music12VolumeSlider_remainingTrackColor;
  *&v5[v15] = [v14 systemFillColor];
  v16 = OBJC_IVAR____TtC5Music12VolumeSlider_trackingColor;
  v17 = UIColor.MusicTint.normal.unsafeMutableAddressor();
  v18 = *v17;
  *&v5[v16] = *v17;
  v19 = OBJC_IVAR____TtC5Music12VolumeSlider_slider;
  v20 = objc_allocWithZone(UISlider);
  v21 = v18;
  v22 = [v20 init];
  v23 = UIView.forAutolayout.getter();

  *&v5[v19] = v23;
  v24 = OBJC_IVAR____TtC5Music12VolumeSlider_trackLayoutGuide;
  *&v5[v24] = [objc_allocWithZone(UILayoutGuide) init];
  *&v5[OBJC_IVAR____TtC5Music12VolumeSlider_route] = 0;
  v25 = &v5[OBJC_IVAR____TtC5Music12VolumeSlider_volumeChangeHandler];
  v26 = type metadata accessor for VolumeSlider();
  *v25 = 0;
  v25[1] = 0;
  v81.receiver = v5;
  v81.super_class = v26;
  v27 = objc_msgSendSuper2(&v81, "initWithFrame:", a1, a2, a3, a4);
  v28 = *&v27[OBJC_IVAR____TtC5Music12VolumeSlider_volumeController];
  v29 = v27;
  [v28 setDelegate:v29];
  sub_100727300(0);
  v80 = [objc_allocWithZone(_UISliderFluidConfiguration) init];
  [v80 setDelegate:v29];
  v30 = *SliderView.Specs.expandedBarHeight.unsafeMutableAddressor();
  v79 = SliderView.Specs.barHeight.unsafeMutableAddressor();
  [v80 setExpansionFactor:v30 / *v79];
  [v80 setStretchLimit:*SliderView.Specs.stretchLimit.unsafeMutableAddressor()];
  v31 = OBJC_IVAR____TtC5Music12VolumeSlider_slider;
  [*&v29[OBJC_IVAR____TtC5Music12VolumeSlider_slider] _setSliderConfiguration:v80];
  [*&v29[v31] setMinimumValue:0.0];
  LODWORD(v32) = 1.0;
  [*&v29[v31] setMaximumValue:v32];
  v33 = *&v29[v31];
  v34 = sub_1007282A8();
  v35 = v33;
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaControls, v34))
  {
    v36 = 111;
  }

  else
  {
    v36 = 110;
  }

  [v35 _setSliderStyle:v36];

  v37 = *&v29[v31];
  v38 = objc_opt_self();
  v39 = v37;
  v40 = [v38 configurationWithPointSize:14.0];
  v41 = String._bridgeToObjectiveC()();
  v42 = objc_opt_self();
  v43 = [v42 systemImageNamed:v41 withConfiguration:v40];

  [v39 setMinimumValueImage:v43];
  v44 = *&v29[v31];
  v45 = [v38 configurationWithPointSize:14.0];
  v46 = String._bridgeToObjectiveC()();
  v47 = [v42 systemImageNamed:v46 withConfiguration:v45];

  [v44 setMaximumValueImage:v47];
  [*&v29[v31] addTarget:v29 action:"sliderDidChangeValue:" forControlEvents:4096];
  v48 = v29;
  v49 = *&v29[v31];
  v50 = v48;
  [v50 addSubview:v49];
  v51 = OBJC_IVAR____TtC5Music12VolumeSlider_trackLayoutGuide;
  [v50 addLayoutGuide:*&v50[OBJC_IVAR____TtC5Music12VolumeSlider_trackLayoutGuide]];
  v78 = objc_opt_self();
  sub_10010FC20(&qword_101183990);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_100EBEEA0;
  v53 = [*&v29[v31] leadingAnchor];
  v54 = [v50 leadingAnchor];
  v55 = [v53 constraintEqualToAnchor:v54];

  *(v52 + 32) = v55;
  v56 = [*&v29[v31] trailingAnchor];
  v57 = [v50 trailingAnchor];

  v58 = [v56 constraintEqualToAnchor:v57];
  *(v52 + 40) = v58;
  v59 = [*&v29[v31] topAnchor];
  v60 = [v50 topAnchor];

  v61 = [v59 constraintEqualToAnchor:v60];
  *(v52 + 48) = v61;
  v62 = [*&v29[v31] bottomAnchor];
  v63 = [v50 bottomAnchor];

  v64 = [v62 constraintEqualToAnchor:v63];
  *(v52 + 56) = v64;
  v65 = [*&v50[v51] leadingAnchor];
  v66 = [v50 leadingAnchor];

  v67 = [v65 constraintEqualToAnchor:v66];
  *(v52 + 64) = v67;
  v68 = [*&v50[v51] trailingAnchor];
  v69 = [v50 trailingAnchor];

  v70 = [v68 constraintEqualToAnchor:v69];
  *(v52 + 72) = v70;
  v71 = [*&v50[v51] centerYAnchor];
  v72 = [v50 centerYAnchor];

  v73 = [v71 constraintEqualToAnchor:v72];
  *(v52 + 80) = v73;
  v74 = [*&v50[v51] heightAnchor];
  v75 = [v74 constraintEqualToConstant:*v79];

  *(v52 + 88) = v75;
  sub_100009F78(0, &qword_1011838A0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v78 activateConstraints:isa];

  return v50;
}

void sub_10072720C()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for VolumeSlider();
  objc_msgSendSuper2(&v4, "didMoveToWindow");
  v1 = [v0 window];
  if (v1)
  {

    v2 = &selRef_addVolumeDisplay_;
  }

  else
  {
    v2 = &selRef_removeVolumeDisplay_;
  }

  v3 = [objc_opt_self() sharedInstance];
  [v3 *v2];
}

id sub_100727300(char a1)
{
  v3 = OBJC_IVAR____TtC5Music12VolumeSlider_volumeController;
  v4 = [*(v1 + OBJC_IVAR____TtC5Music12VolumeSlider_volumeController) isVolumeControlAvailable];
  [*(v1 + v3) volumeValue];
  v6 = v5;
  v7 = OBJC_IVAR____TtC5Music12VolumeSlider_slider;
  [*(v1 + OBJC_IVAR____TtC5Music12VolumeSlider_slider) value];
  v9 = vabds_f32(*&v8, v6);
  if (*(v1 + OBJC_IVAR____TtC5Music12VolumeSlider_ignoreAnimationForVolumeEvents) == 1)
  {
    if (v9 <= 0.00000011921)
    {
      goto LABEL_6;
    }

    a1 = 0;
    *(v1 + OBJC_IVAR____TtC5Music12VolumeSlider_ignoreAnimationForVolumeEvents) = 0;
  }

  else if (v9 <= 0.00000011921)
  {
    goto LABEL_6;
  }

  *&v8 = v6;
  [*(v1 + v7) setValue:a1 & 1 animated:v8];
LABEL_6:
  [*(v1 + v7) setEnabled:v4];
  v10 = *(v1 + v7);

  return [v10 _setMinimumTrackVisible:v4 withDuration:0.0];
}

void sub_100727400(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC5Music12VolumeSlider_volumeController);
  [a1 value];
  [v3 setVolume:? withNotificationDelay:?];

  v4 = *(v1 + OBJC_IVAR____TtC5Music12VolumeSlider_volumeChangeHandler);
  if (v4)
  {

    v4(v5);

    sub_100020438(v4);
  }
}

id sub_10072751C()
{
  v1 = OBJC_IVAR____TtC5Music12VolumeSlider_slider;
  if (*(v0 + OBJC_IVAR____TtC5Music12VolumeSlider_isTracking))
  {
    v2 = &OBJC_IVAR____TtC5Music12VolumeSlider_trackingColor;
  }

  else
  {
    v2 = &OBJC_IVAR____TtC5Music12VolumeSlider_elapsedTrackColor;
  }

  [*(v0 + OBJC_IVAR____TtC5Music12VolumeSlider_slider) setMinimumTrackTintColor:*(v0 + *v2)];
  v3 = *(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC5Music12VolumeSlider_remainingTrackColor);

  return [v3 setMaximumTrackTintColor:v4];
}

id sub_1007275A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VolumeSlider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100727944(char *a1)
{
  v2 = SliderView.Specs.expandedTransform.unsafeMutableAddressor();
  v3 = *(v2 + 1);
  v4 = *(v2 + 2);
  v12[0] = *v2;
  v12[1] = v3;
  v12[2] = v4;
  [a1 setTransform:v12];
  v5 = *&a1[OBJC_IVAR____TtC5Music12VolumeSlider_slider];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 labelColor];
  [v7 setTintColor:v8];

  v9 = OBJC_IVAR____TtC5Music12VolumeSlider_slider;
  if (a1[OBJC_IVAR____TtC5Music12VolumeSlider_isTracking])
  {
    v10 = &OBJC_IVAR____TtC5Music12VolumeSlider_trackingColor;
  }

  else
  {
    v10 = &OBJC_IVAR____TtC5Music12VolumeSlider_elapsedTrackColor;
  }

  [*&a1[OBJC_IVAR____TtC5Music12VolumeSlider_slider] setMinimumTrackTintColor:*&a1[*v10]];
  return [*&a1[v9] setMaximumTrackTintColor:*&a1[OBJC_IVAR____TtC5Music12VolumeSlider_remainingTrackColor]];
}

uint64_t sub_100727BBC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5Music12VolumeSlider_isTracking;
  v2[OBJC_IVAR____TtC5Music12VolumeSlider_isTracking] = 0;
  v5 = *&v2[OBJC_IVAR____TtC5Music12VolumeSlider_volumeController];
  [a1 value];
  [v5 setVolume:? withNotificationDelay:?];

  v6 = *&v2[OBJC_IVAR____TtC5Music12VolumeSlider_volumeChangeHandler];
  if (v6)
  {

    v6(v7);
    sub_100020438(v6);
  }

  v8 = v2[v4];
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  if (v8)
  {
    v10 = 26.5;
  }

  else
  {
    v10 = 40.0;
  }

  if (v8)
  {
    v11 = 288.0;
  }

  else
  {
    v11 = 500.0;
  }

  if (v8)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 2.0;
  }

  v13 = objc_opt_self();
  v17[4] = sub_100727F0C;
  v17[5] = v9;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10002BC98;
  v17[3] = &unk_1010BCA28;
  v14 = _Block_copy(v17);
  v15 = v2;

  [v13 _animateUsingSpringWithDuration:2 delay:v14 options:0 mass:1.0 stiffness:0.0 damping:v12 initialVelocity:v11 animations:v10 completion:0.0];
  _Block_release(v14);
}

id sub_100727DB4(char *a1)
{
  v5[0] = 0x3FF0000000000000;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = 0x3FF0000000000000;
  v5[4] = 0;
  v5[5] = 0;
  [a1 setTransform:v5];
  [*&a1[OBJC_IVAR____TtC5Music12VolumeSlider_slider] setTintColor:0];
  v2 = OBJC_IVAR____TtC5Music12VolumeSlider_slider;
  if (a1[OBJC_IVAR____TtC5Music12VolumeSlider_isTracking])
  {
    v3 = &OBJC_IVAR____TtC5Music12VolumeSlider_trackingColor;
  }

  else
  {
    v3 = &OBJC_IVAR____TtC5Music12VolumeSlider_elapsedTrackColor;
  }

  [*&a1[OBJC_IVAR____TtC5Music12VolumeSlider_slider] setMinimumTrackTintColor:*&a1[*v3]];
  return [*&a1[v2] setMaximumTrackTintColor:*&a1[OBJC_IVAR____TtC5Music12VolumeSlider_remainingTrackColor]];
}

void sub_100727F14()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Music12VolumeSlider_volumeController;
  v3 = [objc_allocWithZone(MPVolumeControllerSystemDataSource) init];
  v4 = [objc_allocWithZone(MPVolumeController) initWithDataSource:v3];

  *(v1 + v2) = v4;
  *(v1 + OBJC_IVAR____TtC5Music12VolumeSlider_isTracking) = 0;
  *(v1 + OBJC_IVAR____TtC5Music12VolumeSlider_ignoreAnimationForVolumeEvents) = 0;
  v5 = OBJC_IVAR____TtC5Music12VolumeSlider_elapsedTrackColor;
  v6 = objc_opt_self();
  *(v1 + v5) = [v6 whiteColor];
  v7 = OBJC_IVAR____TtC5Music12VolumeSlider_remainingTrackColor;
  *(v1 + v7) = [v6 systemFillColor];
  v8 = OBJC_IVAR____TtC5Music12VolumeSlider_trackingColor;
  v9 = UIColor.MusicTint.normal.unsafeMutableAddressor();
  v10 = *v9;
  *(v1 + v8) = *v9;
  v11 = OBJC_IVAR____TtC5Music12VolumeSlider_slider;
  v12 = objc_allocWithZone(UISlider);
  v13 = v10;
  v14 = [v12 init];
  v15 = UIView.forAutolayout.getter();

  *(v1 + v11) = v15;
  v16 = OBJC_IVAR____TtC5Music12VolumeSlider_trackLayoutGuide;
  *(v1 + v16) = [objc_allocWithZone(UILayoutGuide) init];
  *(v1 + OBJC_IVAR____TtC5Music12VolumeSlider_route) = 0;
  v17 = (v1 + OBJC_IVAR____TtC5Music12VolumeSlider_volumeChangeHandler);
  *v17 = 0;
  v17[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1007280C4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Music12VolumeSlider_isTracking;
  v0[OBJC_IVAR____TtC5Music12VolumeSlider_isTracking] = 1;
  v3 = *&v0[OBJC_IVAR____TtC5Music12VolumeSlider_volumeChangeHandler];
  if (v3)
  {

    v3(v4);
    sub_100020438(v3);
    v5 = v0[v2];
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    if ((v5 & 1) == 0)
    {
      v7 = 0x4044000000000000;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    v5 = 1;
  }

  v7 = 0x403A800000000000;
LABEL_6:
  v8 = *&v7;
  if (v5)
  {
    v9 = 288.0;
  }

  else
  {
    v9 = 500.0;
  }

  if (v5)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = 2.0;
  }

  v11 = objc_opt_self();
  v15[4] = sub_1007282A0;
  v15[5] = v6;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_10002BC98;
  v15[3] = &unk_1010BCA78;
  v12 = _Block_copy(v15);
  v13 = v1;

  [v11 _animateUsingSpringWithDuration:2 delay:v12 options:0 mass:1.0 stiffness:0.0 damping:v10 initialVelocity:v9 animations:v8 completion:0.0];
  _Block_release(v12);
}

unint64_t sub_1007282A8()
{
  result = qword_1011A0468;
  if (!qword_1011A0468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0468);
  }

  return result;
}

uint64_t type metadata accessor for VibrancyModifier()
{
  result = qword_1011A04D8;
  if (!qword_1011A04D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100728378()
{
  sub_1007283E4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1007283E4()
{
  if (!qword_1011878B0)
  {
    type metadata accessor for ColorScheme();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1011878B0);
    }
  }
}

uint64_t sub_100728458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v34 = a1;
  v3 = type metadata accessor for EnvironmentValues();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&unk_10118F250);
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  v9 = type metadata accessor for ColorScheme();
  v32 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BlendMode();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v29 - v17;
  sub_1007288A4(v2, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v32;
    (*(v32 + 32))(v11, v8, v9);
    v20 = v19;
  }

  else
  {
    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v30 + 8))(v5, v31);
    v20 = v32;
  }

  v22 = (*(v20 + 88))(v11, v9);
  if (v22 == enum case for ColorScheme.light(_:))
  {
    (*(v13 + 104))(v15, enum case for BlendMode.plusDarker(_:), v12);
  }

  else
  {
    v23 = *(v13 + 104);
    if (v22 == enum case for ColorScheme.dark(_:))
    {
      v23(v15, enum case for BlendMode.plusLighter(_:), v12);
    }

    else
    {
      v23(v15, enum case for BlendMode.normal(_:), v12);
      (*(v20 + 8))(v11, v9);
    }
  }

  v24 = *(v13 + 32);
  v24(v18, v15, v12);
  v25 = sub_10010FC20(&qword_1011A0510);
  v26 = v33;
  v24((v33 + *(v25 + 36)), v18, v12);
  v27 = sub_10010FC20(&qword_1011A0518);
  return (*(*(v27 - 8) + 16))(v26, v34, v27);
}

uint64_t sub_1007288A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_10118F250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100728914()
{
  result = qword_1011A0520;
  if (!qword_1011A0520)
  {
    sub_1001109D0(&qword_1011A0510);
    sub_1007289A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0520);
  }

  return result;
}

unint64_t sub_1007289A0()
{
  result = qword_1011A0528;
  if (!qword_1011A0528)
  {
    sub_1001109D0(&qword_1011A0518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0528);
  }

  return result;
}

uint64_t sub_100728A30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1004530DC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = &unk_100EDFA20;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_100030444(v4);
}

uint64_t sub_100728AEC(uint64_t a1, unsigned __int8 *a2, int *a3)
{
  v8 = (a3 + *a3);
  v5 = *a2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10002F3F4;

  return v8(a1, v5);
}

uint64_t sub_100728BF0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = &unk_100EE2BB0;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100030444(v1);
  sub_1004530DC();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_100020438(v4);
}

uint64_t sub_100728D1C(uint64_t a1, char a2, int *a3)
{
  *(v3 + 24) = a2;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10002F3F4;

  return v7(a1, v3 + 24);
}

uint64_t sub_100728E24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1004530DC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
}

__n128 sub_100728ECC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1004530DC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 56);
  *a2 = *(v3 + 40);
  *(a2 + 16) = v4;
  *(a2 + 32) = *(v3 + 72);
  result = *(v3 + 81);
  *(a2 + 41) = result;
  return result;
}

uint64_t sub_100728F58(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v4[0] = a1[2];
  *(v4 + 9) = *(a1 + 41);
  return sub_100452A3C(v3);
}

uint64_t sub_100728FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_1004530DC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(a1 + 32);

  v5 = static Edge.Set.horizontal.getter();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(a1 + 66) << 16;
  v8 = 0uLL;
  v9 = 0uLL;
  if (v7 != 0x20000)
  {
    result = EdgeInsets.init(_all:)();
    *(&v8 + 1) = v10;
    *(&v9 + 1) = v11;
  }

  *a2 = v4;
  *(a2 + 8) = sub_100729A48;
  *(a2 + 16) = a1;
  *(a2 + 24) = v5;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  *(a2 + 64) = v7 == 0x20000;
  return result;
}

uint64_t sub_1007290C8(char a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  *(v9 + 32) = a2;
  *(v9 + 40) = a1;
  sub_1001F4CB8(0, 0, v6, &unk_100EDF9E0, v9);
}

uint64_t sub_1007291F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 272) = a5;
  *(v5 + 144) = a4;
  sub_10010FC20(&unk_101181520);
  *(v5 + 152) = swift_task_alloc();
  sub_10010FC20(&qword_1011848A0);
  *(v5 + 160) = swift_task_alloc();
  v6 = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v5 + 168) = v6;
  v7 = *(v6 - 8);
  *(v5 + 176) = v7;
  *(v5 + 184) = *(v7 + 64);
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = type metadata accessor for MainActor();
  *(v5 + 224) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 232) = v9;
  *(v5 + 240) = v8;

  return _swift_task_switch(sub_100729380, v9, v8);
}

uint64_t sub_100729380()
{
  v1 = *(v0 + 144);
  swift_getKeyPath();
  *(v0 + 136) = v1;
  sub_1004530DC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 16);
  *(v0 + 248) = v2;
  if (v2)
  {
    *(v0 + 256) = *(*(v0 + 144) + 24);

    v11 = (v2 + *v2);
    v3 = swift_task_alloc();
    *(v0 + 264) = v3;
    *v3 = v0;
    v3[1] = sub_100729584;
    v4 = *(v0 + 160);
    v5 = *(v0 + 272);

    return v11(v4, v5);
  }

  else
  {
    v7 = *(v0 + 168);
    v8 = *(v0 + 176);
    v9 = *(v0 + 160);

    (*(v8 + 56))(v9, 1, 1, v7);
    sub_10042EF7C(*(v0 + 160));

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_100729584()
{
  v1 = *v0;
  v2 = *(*v0 + 248);

  sub_100020438(v2);
  v3 = *(v1 + 240);
  v4 = *(v1 + 232);

  return _swift_task_switch(sub_1007296E0, v4, v3);
}

uint64_t sub_1007296E0()
{
  v33 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10042EF7C(*(v0 + 160));
  }

  else
  {
    v4 = *(v0 + 272);
    sub_1001DFD58(*(v0 + 160), *(v0 + 208));
    _StringGuts.grow(_:)(16);

    strcpy(v32, "SearchHeader: ");
    HIBYTE(v32[1]) = -18;
    v5 = "PlayIntentButton.sing";
    v6 = 0xD000000000000018;
    if (v4 != 1)
    {
      v6 = 0xD000000000000015;
      v5 = "Header.PlaybackControls: ";
    }

    if (v4)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0xD000000000000015;
    }

    if (v4)
    {
      v8 = v5;
    }

    else
    {
      v8 = "PlayIntentButton.shuffle";
    }

    v9 = *(v0 + 208);
    v10 = *(v0 + 168);
    v11 = v8 | 0x8000000000000000;
    String.append(_:)(*&v7);

    v13 = v32[0];
    v12 = v32[1];
    v14 = v9 + *(v10 + 32);
    if (*(v14 + 24))
    {
      sub_100008FE4(v14, v0 + 56);
      v16 = *(v0 + 80);
      v15 = *(v0 + 88);
      sub_10000954C((v0 + 56), v16);
      *(v0 + 120) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 128) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 96) = v13;
      *(v0 + 104) = v12;

      v17 = Player.CommandIssuer.appending(_:)(v0 + 96, v16, v15);
      v19 = v18;
      sub_10000959C(v0 + 96);
      sub_10000959C(v0 + 56);
      *(v0 + 40) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 48) = &protocol witness table for Player.CommandIssuerIdentity;
      if (v19)
      {

        v13 = v17;
        v12 = v19;
      }
    }

    else
    {
      *(v0 + 40) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 48) = &protocol witness table for Player.CommandIssuerIdentity;
    }

    v20 = *(v0 + 208);
    v22 = *(v0 + 192);
    v21 = *(v0 + 200);
    v23 = *(v0 + 176);
    v24 = *(v0 + 152);
    *(v0 + 16) = v13;
    *(v0 + 24) = v12;
    v25 = *(v0 + 272);
    sub_1003F8500(v0 + 16, v14);
    PlaybackIntentDescriptor.configure(for:)(v25);
    sub_1001DFCE4(v20, v21);
    v26 = type metadata accessor for TaskPriority();
    (*(*(v26 - 8) + 56))(v24, 1, 1, v26);
    sub_1001DFCE4(v21, v22);
    v27 = static MainActor.shared.getter();
    v28 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v27;
    *(v29 + 24) = &protocol witness table for MainActor;
    sub_1001DFD58(v22, v29 + v28);
    sub_1001F4F78(0, 0, v24, &unk_100ECA700, v29);

    sub_100188CDC(v21);
    sub_100188CDC(v20);
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_100729A50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1007291F4(a1, v4, v5, v6, v7);
}

uint64_t sub_100729B34(uint64_t a1, unsigned __int8 *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008F30;

  return sub_100728AEC(a1, a2, v6);
}

uint64_t sub_100729BFC()
{
  ObjectType = swift_getObjectType();
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 connectedScenes];
  sub_100062364();
  sub_100061F5C();
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100061FC4(v3);
  v5 = v4;

  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_14:

    goto LABEL_15;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = sub_1007E90D4(0, v5);
    goto LABEL_6;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v5 + 32);
LABEL_6:
    v8 = v7;

    v9 = [v8 delegate];

    if (v9 && (v18 = v9, sub_10010FC20(&unk_101184050), sub_10010FC20(&unk_101184EB0), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v20 + 1))
      {
        v10 = *(*sub_10000954C(&v19, *(&v20 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

        sub_10000959C(&v19);
        if (v10)
        {
          return v10;
        }

LABEL_15:
        if (qword_10117F6D0 != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        sub_1000060E4(v11, qword_101218C28);
        v12 = Logger.logObject.getter();
        v10 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v12, v10))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v18 = v14;
          *&v19 = ObjectType;
          *v13 = 136315138;
          swift_getMetatypeMetadata();
          v15 = String.init<A>(describing:)();
          v17 = sub_1000105AC(v15, v16, &v18);

          *(v13 + 4) = v17;
          _os_log_impl(&_mh_execute_header, v12, v10, "%s cannot obtain AppInterfaceContext", v13, 0xCu);
          sub_10000959C(v14);
        }

        sub_100729F5C();
        swift_allocError();
        swift_willThrow();
        return v10;
      }
    }

    else
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
    }

    sub_10069180C(&v19);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

unint64_t sub_100729F5C()
{
  result = qword_1011A0538;
  if (!qword_1011A0538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0538);
  }

  return result;
}

unint64_t sub_100729FC4()
{
  result = qword_1011A0540;
  if (!qword_1011A0540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0540);
  }

  return result;
}

uint64_t sub_10072A018(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  ObjectType = swift_getObjectType();
  v4 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v4 - 8);
  v6 = &ObjectType - v5;
  v7 = sub_10010FC20(&qword_1011A0580);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &ObjectType - v9;
  sub_10010FC20(&qword_1011A0588);
  v11 = swift_allocBox();
  v13 = v12;
  v14 = sub_10010FC20(&qword_1011A0590);
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_10010FC20(&qword_1011A0598);
  v15 = swift_allocBox();
  v28 = v13;
  (*(v8 + 104))(v10, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v7);
  AsyncStream.init(_:bufferingPolicy:_:)();
  v16 = [objc_opt_self() defaultCenter];
  v17 = MPCJinglePlayActivityReportingControllerDidFlushEventsNotification;
  aBlock[4] = sub_10072B360;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10072A6A4;
  aBlock[3] = &unk_1010BCC20;
  v18 = _Block_copy(aBlock);

  v19 = [v16 addObserverForName:v17 object:0 queue:0 usingBlock:v18];
  _Block_release(v18);
  swift_unknownObjectRelease();

  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v2;
  v21[5] = v11;
  v22 = ObjectType;
  v23 = v27;
  v21[6] = v15;
  v21[7] = v23;
  v21[8] = a2;
  v21[9] = v22;

  v24 = v2;

  sub_1001F4CB8(0, 0, v6, &unk_100EDFB68, v21);
}

uint64_t sub_10072A3D8(uint64_t a1, uint64_t a2)
{
  sub_1000095E8(a2, &qword_1011A0588);
  v4 = sub_10010FC20(&qword_1011A0590);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_10072A4B4()
{
  v0 = sub_10010FC20(&qword_1011A0590);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - v2;
  v4 = sub_10010FC20(&qword_1011A05B8);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = swift_projectBox();
  swift_beginAccess();
  v8 = 1;
  if (!(*(v1 + 48))(v7, 1, v0))
  {
    (*(v1 + 16))(v3, v7, v0);
    AsyncStream.Continuation.yield<A>()();
    (*(v1 + 8))(v3, v0);
    v8 = 0;
  }

  v9 = sub_10010FC20(&qword_1011A05C0);
  (*(*(v9 - 8) + 56))(v6, v8, 1, v9);
  return sub_1000095E8(v6, &qword_1011A05B8);
}

uint64_t sub_10072A6A4(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10072A798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a4;
  v8[7] = a5;
  v9 = sub_10010FC20(&qword_1011A0598);
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();
  v8[13] = sub_10010FC20(&qword_1011A05A0);
  v8[14] = swift_task_alloc();
  v8[15] = sub_10010FC20(&qword_1011A05A8);
  v8[16] = swift_task_alloc();
  type metadata accessor for PushNotificationObserver.RegisteredHandler();
  v8[17] = swift_task_alloc();
  v8[18] = swift_projectBox();

  return _swift_task_switch(sub_10072A920, 0, 0);
}

uint64_t sub_10072A920()
{
  v1 = *((swift_isaMask & **(v0[6] + OBJC_IVAR____TtC5Music22RecentlyPlayedObserver_pushObserver)) + 0x70);

  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_10072AA94;
  v3 = v0[17];
  v4 = v0[7];

  return v6(v3, 0xD000000000000016, 0x8000000100E560F0, sub_10072B454, v4);
}

uint64_t sub_10072AA94()
{
  v1 = *(*v0 + 136);

  sub_10072B45C(v1);

  return _swift_task_switch(sub_10072ABC8, 0, 0);
}

uint64_t sub_10072ABC8()
{
  v1 = v0[18];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  swift_beginAccess();
  (*(v4 + 16))(v3, v1, v5);
  static Duration.seconds(_:)();
  sub_10072B4B8();
  AsyncSequence._throttle(for:latest:)();
  (*(v4 + 8))(v3, v5);
  _AsyncThrottleSequence.makeAsyncIterator()();
  sub_1000095E8(v2, &qword_1011A05A0);
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_10072AD38;
  v7 = v0[15];

  return _AsyncThrottleSequence.Iterator.next()(v0 + 22, v7);
}

uint64_t sub_10072AD38()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_10072AFA4;
  }

  else
  {
    *(v2 + 177) = *(v2 + 176);
    v3 = sub_10072AE54;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10072AE70()
{
  if (*(v0 + 177) == 1)
  {
    sub_1000095E8(*(v0 + 128), &qword_1011A05A8);

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    (*(v0 + 64))();
    v3 = swift_task_alloc();
    *(v0 + 160) = v3;
    *v3 = v0;
    v3[1] = sub_10072AD38;
    v4 = *(v0 + 120);

    return _AsyncThrottleSequence.Iterator.next()(v0 + 176, v4);
  }
}

uint64_t sub_10072AFA4()
{
  *(v0 + 40) = *(v0 + 168);
  sub_10010FC20(&qword_1011824A0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_10072B030()
{
  v0 = sub_10010FC20(&qword_1011A0590);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - v2;
  v4 = sub_10010FC20(&qword_1011A05B8);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = swift_projectBox();
  swift_beginAccess();
  v8 = 1;
  if (!(*(v1 + 48))(v7, 1, v0))
  {
    (*(v1 + 16))(v3, v7, v0);
    AsyncStream.Continuation.yield<A>()();
    (*(v1 + 8))(v3, v0);
    v8 = 0;
  }

  v9 = sub_10010FC20(&qword_1011A05C0);
  (*(*(v9 - 8) + 56))(v6, v8, 1, v9);
  return sub_1000095E8(v6, &qword_1011A05B8);
}

uint64_t sub_10072B368(uint64_t a1)
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
  v11[1] = sub_10002F3F4;

  return sub_10072A798(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10072B45C(uint64_t a1)
{
  v2 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10072B4B8()
{
  result = qword_1011A05B0;
  if (!qword_1011A05B0)
  {
    sub_1001109D0(&qword_1011A0598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A05B0);
  }

  return result;
}

uint64_t sub_10072B51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a3;
  v28 = a2;
  v8 = type metadata accessor for URL();
  v27 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v12 - 8);
  v14 = &v25 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, a1, v8);
  type metadata accessor for MainActor();

  v16 = a5;
  sub_100030444(a4);
  v17 = static MainActor.shared.getter();
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(v20 + 24) = &protocol witness table for MainActor;
  (*(v9 + 32))(v20 + v18, v11, v27);
  v21 = (v20 + v19);
  v22 = v26;
  *v21 = v28;
  v21[1] = v22;
  v23 = (v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v23 = a4;
  v23[1] = v16;
  sub_1001F4CB8(0, 0, v14, &unk_100EDFBA0, v20);
}

uint64_t sub_10072B770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[34] = a7;
  v8[35] = a8;
  v8[32] = a5;
  v8[33] = a6;
  v8[31] = a4;
  v9 = type metadata accessor for Logger();
  v8[36] = v9;
  v8[37] = *(v9 - 8);
  v8[38] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[39] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[40] = v11;
  v8[41] = v10;

  return _swift_task_switch(sub_10072B86C, v11, v10);
}

uint64_t sub_10072B86C()
{
  (*(v0 + 256))();
  if (*(v0 + 144) == 1)
  {
    sub_10072C178(v0 + 80);
    Strong = 0;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_10012BA6C(v0 + 80);
  }

  *(v0 + 336) = Strong;
  v2 = swift_task_alloc();
  *(v0 + 344) = v2;
  *v2 = v0;
  v2[1] = sub_10072B948;
  v3 = *(v0 + 248);

  return static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:)(v3, Strong);
}

uint64_t sub_10072B948()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = *(v2 + 320);
    v4 = *(v2 + 328);
    v5 = sub_10072BAE4;
  }

  else
  {

    v3 = *(v2 + 320);
    v4 = *(v2 + 328);
    v5 = sub_10072BA64;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10072BA64()
{
  v1 = v0[34];

  if (v1)
  {
    (v0[34])(v0[31]);
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_10072BAE4()
{
  v27 = v0;
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 288);

  v4 = Logger.classicalBridge.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 352);
    v9 = *(v0 + 296);
    v8 = *(v0 + 304);
    v10 = *(v0 + 288);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136446210;
    *(v0 + 240) = v7;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v13 = String.init<A>(describing:)();
    v15 = sub_1000105AC(v13, v14, &v26);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to open in Apple Classical with error=%{public}s. Opening URL instead.", v11, 0xCu);
    sub_10000959C(v12);

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v17 = *(v0 + 296);
    v16 = *(v0 + 304);
    v18 = *(v0 + 288);

    (*(v17 + 8))(v16, v18);
  }

  v19 = [objc_opt_self() sharedApplication];
  *(v0 + 360) = v19;
  URL._bridgeToObjectiveC()(v20);
  v22 = v21;
  *(v0 + 368) = v21;
  sub_10010CD7C(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_10072C1E0();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *(v0 + 376) = isa;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 384;
  *(v0 + 24) = sub_10072BE18;
  v24 = swift_continuation_init();
  *(v0 + 232) = sub_10010FC20(&qword_1011A05C8);
  *(v0 + 176) = _NSConcreteStackBlock;
  *(v0 + 184) = 1107296256;
  *(v0 + 192) = sub_10072BFC8;
  *(v0 + 200) = &unk_1010BCC98;
  *(v0 + 208) = v24;
  [v19 openURL:v22 options:isa completionHandler:v0 + 176];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10072BE18()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 320);

  return _swift_task_switch(sub_10072BF20, v2, v1);
}

uint64_t sub_10072BF20()
{
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[45];
  v4 = v0[34];

  if (v4)
  {
    (v0[34])(v0[31]);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_10072BFC8(uint64_t a1, char a2)
{
  **(*(*sub_10000954C((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return swift_continuation_resume();
}

uint64_t sub_10072C024(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = *(v1 + v8 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_10002F3F4;

  return sub_10072B770(a1, v9, v10, v1 + v6, v12, v13, v14, v15);
}

uint64_t sub_10072C178(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_1011845E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10072C1E0()
{
  result = qword_10118A3E0;
  if (!qword_10118A3E0)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118A3E0);
  }

  return result;
}

uint64_t _s12AddMusicCellVMa()
{
  result = qword_1011A0628;
  if (!qword_1011A0628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10072C2AC()
{
  sub_100117C38();
  if (v0 <= 0x3F)
  {
    sub_100237820();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10072C35C@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v69 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v68 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for AccessibilityTraits();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for AccessibilityChildBehavior();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DynamicTypeSize();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v53 - v13;
  v15 = sub_10010FC20(&qword_1011A0668);
  __chkstk_darwin(v15 - 8);
  v17 = &v53 - v16;
  v53 = sub_10010FC20(&qword_1011A0670);
  __chkstk_darwin(v53);
  v19 = &v53 - v18;
  v54 = sub_10010FC20(&qword_1011A0678);
  __chkstk_darwin(v54);
  v21 = &v53 - v20;
  v56 = sub_10010FC20(&qword_1011A0680);
  __chkstk_darwin(v56);
  v23 = &v53 - v22;
  v58 = sub_10010FC20(&qword_1011A0688);
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = &v53 - v24;
  v59 = sub_10010FC20(&qword_1011A0690);
  __chkstk_darwin(v59);
  v60 = &v53 - v25;
  *v17 = static VerticalAlignment.center.getter();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v26 = sub_10010FC20(&qword_1011A0698);
  sub_10072CCE0(v1, &v17[*(v26 + 44)]);
  _s12AddMusicCellVMa();
  v64 = v1;
  sub_10056CABC(v14);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0 == 1)
  {
    (*(v9 + 8))(v14, v8);
  }

  else
  {
    (*(v9 + 104))(v11, enum case for DynamicTypeSize.accessibility3(_:), v8);
    static DynamicTypeSize.< infix(_:_:)();
    v27 = *(v9 + 8);
    v27(v11, v8);
    DynamicTypeSize.isAccessibilitySize.getter();
    v27(v14, v8);
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_10003D17C(v17, v19, &qword_1011A0668);
  v28 = &v19[*(v53 + 36)];
  v29 = v74;
  *v28 = v73;
  *(v28 + 1) = v29;
  *(v28 + 2) = v75;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v19, v21, &qword_1011A0670);
  v30 = &v21[*(v54 + 36)];
  v31 = v81;
  *(v30 + 4) = v80;
  *(v30 + 5) = v31;
  *(v30 + 6) = v82;
  v32 = v77;
  *v30 = v76;
  *(v30 + 1) = v32;
  v33 = v79;
  *(v30 + 2) = v78;
  *(v30 + 3) = v33;
  v34 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_10003D17C(v21, v23, &qword_1011A0678);
  v43 = v56;
  v44 = &v23[*(v56 + 36)];
  *v44 = v34;
  *(v44 + 1) = v36;
  *(v44 + 2) = v38;
  *(v44 + 3) = v40;
  *(v44 + 4) = v42;
  v44[40] = 0;
  v45 = v61;
  static AccessibilityChildBehavior.combine.getter();
  v46 = sub_10072DF08();
  v47 = v55;
  View.accessibilityElement(children:)();
  (*(v62 + 8))(v45, v63);
  sub_1000095E8(v23, &qword_1011A0680);
  v48 = v65;
  static AccessibilityTraits.isButton.getter();
  v71 = v43;
  v72 = v46;
  swift_getOpaqueTypeConformance2();
  v49 = v60;
  v50 = v58;
  View.accessibilityAddTraits(_:)();
  (*(v66 + 8))(v48, v67);
  (*(v57 + 8))(v47, v50);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v71 = String.init(localized:table:bundle:locale:comment:)();
  v72 = v51;
  sub_100009838();
  ModifiedContent<>.accessibilityLabel<A>(_:)();

  return sub_1000095E8(v49, &qword_1011A0690);
}

uint64_t sub_10072CCE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v144 = a1;
  v139 = a2;
  v2 = sub_10010FC20(&unk_101184290);
  __chkstk_darwin(v2 - 8);
  v138 = &v115 - v3;
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v135 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v134 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for DynamicTypeSize();
  v142 = *(v131 - 8);
  __chkstk_darwin(v131);
  v9 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v132 = &v115 - v11;
  __chkstk_darwin(v12);
  v133 = &v115 - v13;
  __chkstk_darwin(v14);
  v126 = &v115 - v15;
  __chkstk_darwin(v16);
  v118 = &v115 - v17;
  __chkstk_darwin(v18);
  v116 = &v115 - v19;
  v20 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v20);
  v22 = (&v115 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_10010FC20(&qword_10118E408);
  __chkstk_darwin(v23);
  v25 = &v115 - v24;
  v26 = sub_10010FC20(&qword_1011A06C0);
  v140 = *(v26 - 8);
  __chkstk_darwin(v26);
  v28 = &v115 - v27;
  v121 = sub_10010FC20(&qword_1011A06C8);
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v141 = &v115 - v29;
  v119 = sub_10010FC20(&qword_1011A06D0);
  __chkstk_darwin(v119);
  v122 = &v115 - v30;
  v127 = sub_10010FC20(&qword_1011A06D8);
  __chkstk_darwin(v127);
  v129 = &v115 - v31;
  v130 = sub_10010FC20(&qword_1011A06E0);
  v128 = *(v130 - 8);
  __chkstk_darwin(v130);
  v125 = &v115 - v32;
  v124 = sub_10010FC20(&qword_1011A06E8);
  __chkstk_darwin(v124);
  v136 = &v115 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v123 = &v115 - v35;
  __chkstk_darwin(v36);
  v143 = &v115 - v37;
  if (qword_10117FC80 != -1)
  {
    swift_once();
  }

  v137 = v9;
  if (byte_1012194F0)
  {
    v38 = Int.seconds.getter(5);
  }

  else
  {
    v38 = *&xmmword_1012194E0;
  }

  v39 = *(v20 + 20);
  v40 = enum case for RoundedCornerStyle.continuous(_:);
  v41 = type metadata accessor for RoundedCornerStyle();
  (*(*(v41 - 8) + 104))(v22 + v39, v40, v41);
  *v22 = v38;
  v22[1] = v38;
  if (qword_10117FC78 != -1)
  {
    swift_once();
  }

  v42 = qword_1012194D0;
  KeyPath = swift_getKeyPath();
  sub_10072E0D8(v22, v25);
  v44 = &v25[*(v23 + 36)];
  *v44 = KeyPath;
  v44[1] = v42;
  v45 = sub_100596AA8();

  View.corner(_:)();
  sub_1000095E8(v25, &qword_10118E408);
  Border.artwork.unsafeMutableAddressor();

  v149 = v23;
  v150 = v45;
  swift_getOpaqueTypeConformance2();
  View.border(_:corner:)();

  (*(v140 + 8))(v28, v26);
  v117 = _s12AddMusicCellVMa();
  v46 = *(v117 + 24);
  v47 = v116;
  sub_10056CABC(v116);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  v48 = v142;
  v140 = v46;
  if (byte_10119CDC0 == 1)
  {
    v54 = *(v142 + 1);
    v115 = (v142 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v53 = v131;
    v54(v47, v131);
    v49 = v126;
    sub_10056CABC(v126);
    v54(v49, v53);
    LODWORD(v116) = enum case for DynamicTypeSize.accessibility3(_:);
    v52 = v118;
  }

  else
  {
    v50 = enum case for DynamicTypeSize.accessibility3(_:);
    v51 = *(v142 + 13);
    v52 = v118;
    v53 = v131;
    v51(v118, enum case for DynamicTypeSize.accessibility3(_:), v131);
    static DynamicTypeSize.< infix(_:_:)();
    v54 = *(v142 + 1);
    v115 = (v142 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v54(v52, v53);
    v54(v47, v53);
    v55 = v126;
    sub_10056CABC(v126);
    LODWORD(v116) = v50;
    v51(v52, v50, v53);
    v48 = v142;
    static DynamicTypeSize.< infix(_:_:)();
    v54(v52, v53);
    v54(v55, v53);
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v56 = v122;
  (*(v120 + 32))(v122, v141, v121);
  v57 = (v56 + *(v119 + 36));
  v58 = v166;
  *v57 = v165;
  v57[1] = v58;
  v57[2] = v167;
  v59 = static Alignment.center.getter();
  v61 = v60;
  v62 = v129;
  v63 = &v129[*(v127 + 36)];
  sub_10072DD6C();
  v64 = &v63[*(sub_10010FC20(&qword_1011A06F0) + 36)];
  *v64 = v59;
  v64[1] = v61;
  sub_10003D17C(v56, v62, &qword_1011A06D0);
  sub_10056CABC(v52);
  v65 = *(v48 + 13);
  v66 = v132;
  v67 = v116;
  v65(v132, v116, v53);
  LOBYTE(v59) = static DynamicTypeSize.< infix(_:_:)();
  v54(v66, v53);
  v54(v52, v53);
  if (v59)
  {
    v68 = enum case for DynamicTypeSize.large(_:);
  }

  else
  {
    v68 = v67;
  }

  v69 = v133;
  v65(v133, v68, v53);
  sub_10072E13C();
  v70 = v125;
  View.dynamicTypeSize(_:)();
  v142 = v54;
  v54(v69, v53);
  sub_1000095E8(v62, &qword_1011A06D8);
  v71 = static HorizontalAlignment.listRowSeparatorLeading.getter();
  v72 = v123;
  (*(v128 + 32))(v123, v70, v130);
  v73 = (v72 + *(v124 + 36));
  *v73 = v71;
  v73[1] = sub_10072DE6C;
  v73[2] = 0;
  sub_10003D17C(v72, v143, &qword_1011A06E8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v149 = String.init(localized:table:bundle:locale:comment:)();
  v150 = v74;
  sub_100009838();
  v75 = Text.init<A>(_:)();
  v77 = v76;
  v79 = v78;
  v141 = v80;
  v81 = *(v144 + 8);
  v82 = v138;
  sub_10056CAE4(v138);
  v83 = v137;
  sub_10056CABC(v137);
  if (sub_10068D124(v82, v83, v81))
  {
    static Font.callout.getter();
  }

  else
  {
    static Font.body.getter();
  }

  v142(v83, v53);
  sub_1000095E8(v82, &unk_101184290);
  v84 = Text.font(_:)();
  v86 = v85;
  v88 = v87;

  sub_10011895C(v75, v77, v79 & 1);

  static Color.primary.getter();
  v89 = Text.foregroundColor(_:)();
  v91 = v90;
  v93 = v92;
  v95 = v94;

  sub_10011895C(v84, v86, v88 & 1);

  v96 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v98 = v97;
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v164 = v93 & 1;
  v161 = 0;
  v105 = v143;
  v106 = v136;
  sub_1000A4CE0(v143, v136);
  v107 = v139;
  sub_1000A4CE0(v106, v139);
  v108 = sub_10010FC20(&qword_1011A0710);
  v109 = (v107 + *(v108 + 48));
  *&v145 = v89;
  *(&v145 + 1) = v91;
  LOBYTE(v146) = v93 & 1;
  *(&v146 + 1) = *v163;
  DWORD1(v146) = *&v163[3];
  *(&v146 + 1) = v95;
  LOBYTE(v147) = v96;
  *(&v147 + 1) = *v162;
  DWORD1(v147) = *&v162[3];
  *(&v147 + 1) = v98;
  *v148 = v100;
  *&v148[8] = v102;
  *&v148[16] = v104;
  v148[24] = 0;
  v110 = v145;
  v111 = v146;
  *(v109 + 57) = *&v148[9];
  v112 = *v148;
  v109[2] = v147;
  v109[3] = v112;
  *v109 = v110;
  v109[1] = v111;
  v113 = v107 + *(v108 + 64);
  *v113 = 0;
  *(v113 + 8) = 1;
  sub_10072E300(&v145, &v149);
  sub_1000095E8(v105, &qword_1011A06E8);
  v149 = v89;
  v150 = v91;
  v151 = v93 & 1;
  *v152 = *v163;
  *&v152[3] = *&v163[3];
  v153 = v95;
  v154 = v96;
  *v155 = *v162;
  *&v155[3] = *&v162[3];
  v156 = v98;
  v157 = v100;
  v158 = v102;
  v159 = v104;
  v160 = 0;
  sub_1000095E8(&v149, &qword_10117FF50);
  return sub_1000095E8(v106, &qword_1011A06E8);
}

uint64_t sub_10072DD6C()
{
  Image.init(systemName:)();
  static Color.accentColor.getter();
  swift_getKeyPath();
  static Font.title3.getter();
  swift_getKeyPath();
  static Font.Weight.semibold.getter();
  sub_10010FC20(&qword_101196750);
  sub_1005963C0();
  View.fontWeight(_:)();
}

uint64_t sub_10072DE94()
{
  v0 = [objc_opt_self() tertiarySystemFillColor];
  result = Color.init(_:)();
  qword_1012194D0 = result;
  return result;
}

__n128 sub_10072DED4()
{
  v0 = Corner.small.unsafeMutableAddressor();
  v1 = v0[1].n128_i8[0];
  result = *v0;
  xmmword_1012194E0 = *v0;
  byte_1012194F0 = v1;
  return result;
}

unint64_t sub_10072DF08()
{
  result = qword_1011A06A0;
  if (!qword_1011A06A0)
  {
    sub_1001109D0(&qword_1011A0680);
    sub_10072DF94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A06A0);
  }

  return result;
}

unint64_t sub_10072DF94()
{
  result = qword_1011A06A8;
  if (!qword_1011A06A8)
  {
    sub_1001109D0(&qword_1011A0678);
    sub_10072E020();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A06A8);
  }

  return result;
}

unint64_t sub_10072E020()
{
  result = qword_1011A06B0;
  if (!qword_1011A06B0)
  {
    sub_1001109D0(&qword_1011A0670);
    sub_100020674(&qword_1011A06B8, &qword_1011A0668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A06B0);
  }

  return result;
}

uint64_t sub_10072E0D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10072E13C()
{
  result = qword_1011A06F8;
  if (!qword_1011A06F8)
  {
    sub_1001109D0(&qword_1011A06D8);
    sub_10072E1F4();
    sub_100020674(&qword_1011A0708, &qword_1011A06F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A06F8);
  }

  return result;
}

unint64_t sub_10072E1F4()
{
  result = qword_1011A0700;
  if (!qword_1011A0700)
  {
    sub_1001109D0(&qword_1011A06D0);
    sub_1001109D0(&qword_1011A06C0);
    sub_1001109D0(&qword_10118E408);
    sub_100596AA8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0700);
  }

  return result;
}

uint64_t sub_10072E300(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_10117FF50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10072E370()
{
  result = qword_1011A0718;
  if (!qword_1011A0718)
  {
    sub_1001109D0(&qword_1011A0690);
    sub_1001109D0(&qword_1011A0680);
    sub_10072DF08();
    swift_getOpaqueTypeConformance2();
    sub_10072E468(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0718);
  }

  return result;
}

uint64_t sub_10072E468(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10072E4B0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v8 - 8);
  v10 = aBlock - v9;
  sub_1000089F8(a1, aBlock - v9, &qword_101183A20);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v14 = 0;
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    URL._bridgeToObjectiveC()(v13);
    v14 = v15;
    (*(v12 + 8))(v10, v11);
  }

  if (a2)
  {
    aBlock[4] = a2;
    aBlock[5] = a3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1005C3688;
    aBlock[3] = &unk_1010BCCC0;
    a2 = _Block_copy(aBlock);
  }

  [a4 openURL:v14 withCompletionHandler:a2];
  _Block_release(a2);
}

uint64_t sub_10072E678()
{
  v1[10] = v0;
  type metadata accessor for Locale();
  v1[11] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v1[12] = swift_task_alloc();
  v1[13] = type metadata accessor for StorySharingController.ShareData(0);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = type metadata accessor for MainActor();
  v1[17] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[18] = v3;
  v1[19] = v2;

  return _swift_task_switch(sub_10072E7A8, v3, v2);
}

uint64_t sub_10072E7A8()
{
  v1 = static MainActor.shared.getter();
  *(v0 + 160) = v1;
  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(sub_10072E83C, v2, v4);
}

uint64_t sub_10072E83C()
{
  v1 = v0 + 2;
  v2 = v0[14];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_10072E934;
  v4 = swift_continuation_init();
  v5 = *(v3 + OBJC_IVAR____TtC5Music22StorySharingController_shareDataBuilder);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v5(sub_100730B9C, v6);

  return _swift_continuation_await(v1);
}

uint64_t sub_10072E934()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    swift_willThrow();

    v3 = v1[18];
    v4 = v1[19];
    v5 = sub_10072EC84;
  }

  else
  {
    v6 = v1[14];
    v7 = v1[15];

    sub_100730BA4(v6, v7);
    v3 = v1[18];
    v4 = v1[19];
    v5 = sub_10072EA8C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10072EA8C()
{
  v1 = (*(v0 + 80) + OBJC_IVAR____TtC5Music22StorySharingController_artworkSize);
  v2 = *v1;
  v3 = v1[1];
  v4 = swift_task_alloc();
  *(v0 + 176) = v4;
  *v4 = v0;
  v4[1] = sub_10072EB40;

  return sub_1007300FC(v2, v3);
}

uint64_t sub_10072EB40(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 184) = a1;
  *(v4 + 192) = v1;

  v5 = *(v3 + 152);
  v6 = *(v3 + 144);
  if (v1)
  {
    v7 = sub_10072F278;
  }

  else
  {
    v7 = sub_10072EE9C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10072EC84()
{

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v1 = String._bridgeToObjectiveC()();

  v2 = [objc_opt_self() alertControllerWithTitle:0 message:v1 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v3 = String._bridgeToObjectiveC()();

  v4 = [objc_opt_self() actionWithTitle:v3 style:1 handler:0];

  [v2 addAction:v4];
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v2, 1, 1, 0, 0);
  swift_willThrow();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10072EE9C()
{
  v1 = v0[10];
  v2 = OBJC_IVAR____TtC5Music22StorySharingController_renderer;
  v0[25] = OBJC_IVAR____TtC5Music22StorySharingController_renderer;
  v3 = (v1 + v2);
  v0[26] = *v3;
  v4 = v3[1];
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 24);
  swift_unknownObjectRetain();
  v10 = (v6 + *v6);
  v7 = swift_task_alloc();
  v0[27] = v7;
  *v7 = v0;
  v7[1] = sub_10072EFF4;
  v8 = v0[23];

  return v10(v8, ObjectType, v4);
}

uint64_t sub_10072EFF4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 224) = v1;

  swift_unknownObjectRelease();
  if (v1)
  {
    v5 = v4[18];
    v6 = v4[19];
    v7 = sub_10072F49C;
  }

  else
  {
    v4[29] = a1;
    v5 = v4[18];
    v6 = v4[19];
    v7 = sub_10072F138;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10072F138()
{
  v1 = v0[29];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[15];
  v12 = v0[13];
  v5 = v0[10];

  v6 = *(v5 + v2 + 8);
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 32);
  swift_unknownObjectRetain();
  v9 = v8(v3, ObjectType, v6);
  swift_unknownObjectRelease();
  sub_10072F8F4(v1, v9, v4, v4 + *(v12 + 20));

  sub_100730C08(v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10072F278()
{
  v1 = *(v0 + 120);

  sub_100730C08(v1);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v2 = String._bridgeToObjectiveC()();

  v3 = [objc_opt_self() alertControllerWithTitle:0 message:v2 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v4 = String._bridgeToObjectiveC()();

  v5 = [objc_opt_self() actionWithTitle:v4 style:1 handler:0];

  [v3 addAction:v5];
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v3, 1, 1, 0, 0);
  swift_willThrow();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10072F49C()
{
  v1 = v0[23];
  v2 = v0[15];

  sub_100730C08(v2);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v3 = String._bridgeToObjectiveC()();

  v4 = [objc_opt_self() alertControllerWithTitle:0 message:v3 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v5 = String._bridgeToObjectiveC()();

  v6 = [objc_opt_self() actionWithTitle:v5 style:1 handler:0];

  [v4 addAction:v6];
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v4, 1, 1, 0, 0);
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_10072F6C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101194C20);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for StorySharingController.ShareData(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  sub_1000089F8(a1, v6, &qword_101194C20);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000095E8(v6, &qword_101194C20);
    sub_100730C64();
    v14 = swift_allocError();
    sub_10010FC20(&qword_1011824A0);
    swift_allocError();
    *v15 = v14;
    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    sub_100730BA4(v6, v13);
    sub_100730CB8(v13, v10);
    sub_100730BA4(v10, *(*(a2 + 64) + 40));
    swift_continuation_throwingResume();
    return sub_100730C08(v13);
  }
}

uint64_t sub_10072F8F4(UIImage *a1, UIImage *a2, uint64_t a3, uint64_t a4)
{
  v67 = a4;
  *&v76 = a3;
  v69 = a2;
  v68 = a1;
  v5 = 0xD000000000000026;
  v72 = type metadata accessor for Date();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v7 - 8);
  v74 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v66 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v66 - v17;
  v75 = v4;
  v19 = *(v4 + 16);
  v20 = sub_10044B4CC(*(v4 + 16));
  v77 = v13;
  if (v19 > 1)
  {
    if (v19 != 2)
    {
      goto LABEL_8;
    }

    v21 = "redSticker.backgroundVideo";
  }

  else if (v19)
  {
    v5 = 0xD000000000000025;
    v21 = "aredSticker.contentURL";
  }

  else
  {
    v21 = "ativekit.attachmentURL";
  }

  v22 = URL.absoluteString.getter();
  v81 = &type metadata for String;
  *&v80 = v22;
  *(&v80 + 1) = v23;
  sub_100016270(&v80, v79);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v78 = v20;
  sub_1006C5E68(v79, v5, v21 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);

  v13 = v77;
  v20 = v78;
LABEL_8:
  if (sub_10044C064(v19))
  {
    sub_1000089F8(v67, v11, &qword_101183A20);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_1000095E8(v11, &qword_101183A20);
    }

    else
    {
      (*(v13 + 32))(v18, v11, v12);
      if ((v19 - 1) > 2)
      {
        v25 = URL.absoluteString.getter();
        v81 = &type metadata for String;
        *&v80 = v25;
        *(&v80 + 1) = v26;
        sub_100016270(&v80, v79);
        v27 = swift_isUniquelyReferenced_nonNull_native();
        v78 = v20;
        sub_1006C5E68(v79, 0xD000000000000026, 0x8000000100E561B0, v27);
        (*(v13 + 8))(v18, v12);
        v20 = v78;
      }

      else
      {
        (*(v13 + 8))(v18, v12);
      }
    }
  }

  v28 = UIImagePNGRepresentation(v68);
  if (v28)
  {
    v29 = v28;
    v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = sub_10044BA2C(v19);
    v35 = v34;
    v81 = &type metadata for Data;
    *&v80 = v30;
    *(&v80 + 1) = v32;
    sub_100016270(&v80, v79);
    sub_10002BC44(v30, v32);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v20;
    sub_1006C5E68(v79, v33, v35, v36);
    sub_10002C064(v30, v32);

    v20 = v78;
  }

  v37 = UIImagePNGRepresentation(v69);
  v73 = v12;
  if (v37)
  {
    v38 = v37;
    v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v42 = sub_10044BAA0(v19);
    v44 = v43;
    v81 = &type metadata for Data;
    *&v80 = v39;
    *(&v80 + 1) = v41;
    sub_100016270(&v80, v79);
    sub_10002BC44(v39, v41);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v20;
    sub_1006C5E68(v79, v42, v44, v45);
    sub_10002C064(v39, v41);

    v20 = v78;
  }

  v46 = v75;
  v47 = *(v75 + OBJC_IVAR____TtC5Music22StorySharingController_renderer + 8);
  ObjectType = swift_getObjectType();
  v49 = *(v47 + 16);
  swift_unknownObjectRetain();
  v50 = v49(ObjectType, v47);
  v52 = v51;
  swift_unknownObjectRelease();
  sub_10044C294(v76, v50, v52, v19, v15);

  v53 = [objc_opt_self() generalPasteboard];
  sub_10010FC20(&unk_1011927C0);
  v54 = swift_allocObject();
  v76 = xmmword_100EBC6B0;
  *(v54 + 16) = xmmword_100EBC6B0;
  *(v54 + 32) = v20;
  sub_10010FC20(&qword_101197BD0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_10010FC20(&qword_101197BD8);
  inited = swift_initStackObject();
  *(inited + 16) = v76;
  *(inited + 32) = UIPasteboardOptionExpirationDate;
  v57 = UIPasteboardOptionExpirationDate;
  v58 = v70;
  Date.init()();
  v59 = v72;
  *(inited + 64) = v72;
  sub_10001C8B8((inited + 40));
  Date.addingTimeInterval(_:)();
  (*(v71 + 8))(v58, v59);
  sub_10010D62C(inited);
  swift_setDeallocating();
  sub_1000095E8(inited + 32, &unk_101180460);
  type metadata accessor for OptionsKey(0);
  sub_100730B44();
  v60 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v53 setItems:isa options:v60];

  v61 = *(v46 + OBJC_IVAR____TtC5Music22StorySharingController_openURL);
  v62 = v77;
  v63 = v74;
  v64 = v73;
  (*(v77 + 16))(v74, v15, v73);
  (*(v62 + 56))(v63, 0, 1, v64);

  v61(v63, 0, 0);

  sub_1000095E8(v63, &qword_101183A20);
  return (*(v62 + 8))(v15, v64);
}

uint64_t sub_1007300FC(double a1, double a2)
{
  *(v3 + 32) = v2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_10010FC20(&unk_101195200);
  *(v3 + 40) = swift_task_alloc();
  sub_10010FC20(&unk_101184060);
  *(v3 + 48) = swift_task_alloc();
  sub_10010FC20(&unk_101188920);
  *(v3 + 56) = swift_task_alloc();
  v4 = type metadata accessor for Artwork();
  *(v3 + 64) = v4;
  *(v3 + 72) = *(v4 - 8);
  *(v3 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_100730268, 0, 0);
}

uint64_t sub_100730268()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  sub_1000089F8(v0[4] + OBJC_IVAR____TtC5Music22StorySharingController_artwork, v3, &unk_101188920);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(v0[7], &unk_101188920);
    sub_100730AF0();
    swift_allocError();
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }

  else
  {
    v7 = v0[5];
    v6 = v0[6];
    (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
    v8 = [objc_opt_self() currentTraitCollection];
    [v8 displayScale];
    v10 = v9;

    v11 = type metadata accessor for Artwork.CropStyle();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v12 = type metadata accessor for Artwork.ImageFormat();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    v13 = swift_task_alloc();
    v0[11] = v13;
    *v13 = v0;
    v13[1] = sub_1007304F4;
    v15 = v0[5];
    v16 = v0[6];
    v17.n128_u64[0] = v0[2];
    v18.n128_u64[0] = v0[3];

    v14.n128_f64[0] = 1.0 / v10;
    return Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(v16, v15, 0, 0, v17, v18, v14);
  }
}

uint64_t sub_1007304F4(uint64_t a1)
{
  v4 = *v2;
  v4[12] = v1;

  v5 = v4[6];
  v6 = v4[5];
  if (v1)
  {
    sub_1000095E8(v6, &unk_101195200);
    sub_1000095E8(v5, &unk_101184060);
    v7 = sub_100730748;
  }

  else
  {
    v4[13] = a1;
    sub_1000095E8(v6, &unk_101195200);
    sub_1000095E8(v5, &unk_101184060);
    v7 = sub_1007306A0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1007306A0()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];
  v2 = v0[13];

  return v1(v2);
}

uint64_t sub_100730748()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1007307EC()
{
  sub_1000095E8(v0 + OBJC_IVAR____TtC5Music22StorySharingController_artwork, &unk_101188920);
  sub_10012BA6C(v0 + OBJC_IVAR____TtC5Music22StorySharingController_presentationSource);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1007308D0()
{
  sub_100730A9C(319, &qword_1011A4570, &type metadata accessor for Artwork);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1007309FC()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_100730A9C(319, &qword_1011814C0, &type metadata accessor for URL);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100730A9C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_100730AF0()
{
  result = qword_1011A0900;
  if (!qword_1011A0900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0900);
  }

  return result;
}

unint64_t sub_100730B44()
{
  result = qword_1011808E8;
  if (!qword_1011808E8)
  {
    type metadata accessor for OptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011808E8);
  }

  return result;
}

uint64_t sub_100730BA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorySharingController.ShareData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100730C08(uint64_t a1)
{
  v2 = type metadata accessor for StorySharingController.ShareData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100730C64()
{
  result = qword_1011A0908;
  if (!qword_1011A0908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0908);
  }

  return result;
}

uint64_t sub_100730CB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorySharingController.ShareData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100730D40()
{
  result = qword_1011A0910;
  if (!qword_1011A0910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0910);
  }

  return result;
}

unint64_t sub_100730D98()
{
  result = qword_1011A0918;
  if (!qword_1011A0918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0918);
  }

  return result;
}

uint64_t type metadata accessor for Uber()
{
  result = qword_1011A0980;
  if (!qword_1011A0980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100730E7C()
{
  _s13ConfigurationCMa_0();
  if (v0 <= 0x3F)
  {
    sub_100730F78(319, &unk_1011954D0, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100730F78(319, &unk_1011A0990, &type metadata accessor for MotionViewStateObserver, &type metadata accessor for LazyState);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100730F78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100731068@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_10073411C(&qword_101194F28, _s13ConfigurationCMa_0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *a2;
  swift_beginAccess();
  return sub_1000089F8(v7 + v8, a4, a3);
}

uint64_t sub_100731174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = sub_10010FC20(a5);
  __chkstk_darwin(v10 - 8);
  v12 = &v14 - v11;
  sub_1000089F8(a1, &v14 - v11, a5);
  return a7(v12);
}

double sub_100731220@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10073411C(&qword_101194F28, _s13ConfigurationCMa_0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + OBJC_IVAR____TtCV5Music4Uber13Configuration__frameHeight);
  *a2 = result;
  return result;
}

uint64_t sub_1007312F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10073411C(&qword_101194F28, _s13ConfigurationCMa_0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtCV5Music4Uber13Configuration__accessibilityArtworkLabel + 8);
  *a2 = *(v3 + OBJC_IVAR____TtCV5Music4Uber13Configuration__accessibilityArtworkLabel);
  a2[1] = v4;
}

uint64_t sub_1007313B0()
{
  swift_getKeyPath();
  sub_10073411C(&qword_101194F28, _s13ConfigurationCMa_0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100731480@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10073411C(&qword_101194F28, _s13ConfigurationCMa_0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtCV5Music4Uber13Configuration__artworkUsedChanged);
  v5 = *(v3 + OBJC_IVAR____TtCV5Music4Uber13Configuration__artworkUsedChanged + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1004303F0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_100030444(v4);
}

uint64_t sub_100731578(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_100733E3C;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100030444(v1);
  sub_10073411C(&qword_101194F28, _s13ConfigurationCMa_0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_100020438(v4);
}

uint64_t sub_1007316D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v105 = a1;
  v3 = type metadata accessor for Uber();
  v99 = *(v3 - 8);
  __chkstk_darwin(v3);
  v100 = v4;
  v101 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MotionViewStateObserver.State();
  v103 = *(v5 - 8);
  v104 = v5;
  __chkstk_darwin(v5);
  v102 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessibilityTraits();
  v95 = *(v7 - 8);
  v96 = v7;
  __chkstk_darwin(v7);
  v94 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for AccessibilityChildBehavior();
  v87 = *(v89 - 8);
  __chkstk_darwin(v89);
  v82 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for LayoutDirection();
  v10 = *(v79 - 8);
  __chkstk_darwin(v79);
  v78 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v72 - v13;
  v86 = sub_10010FC20(&qword_1011A09C8);
  v83 = *(v86 - 8);
  __chkstk_darwin(v86);
  v81 = &v72 - v15;
  v85 = sub_10010FC20(&qword_1011A09D0);
  __chkstk_darwin(v85);
  v88 = &v72 - v16;
  v93 = sub_10010FC20(&qword_1011A09D8);
  __chkstk_darwin(v93);
  v92 = &v72 - v17;
  v97 = sub_10010FC20(&qword_1011A09E0);
  __chkstk_darwin(v97);
  v98 = &v72 - v18;
  v19 = *v2;
  v80 = v3;
  v20 = v2 + *(v3 + 24);
  v84 = v19;

  v90 = sub_10010FC20(&qword_1011A0920);
  v91 = v20;
  LazyState.wrappedValue.getter();
  v77 = v107[0];
  KeyPath = swift_getKeyPath();
  v21 = static Alignment.center.getter();
  v23 = v22;
  v24 = sub_1007321F8();
  if (v24)
  {

    v25 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    v34 = v25;
    v35 = 256;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v27 = 0;
    v29 = 0;
    v31 = 0;
    v33 = 0;
  }

  *&v115 = v24;
  *(&v115 + 1) = v35;
  *&v116 = v34;
  *(&v116 + 1) = v27;
  *&v117 = v29;
  *(&v117 + 1) = v31;
  *&v118 = v33;
  BYTE8(v118) = 0;
  *&v124[23] = v116;
  *&v124[39] = v117;
  *&v119 = v21;
  *(&v119 + 1) = v23;
  *&v124[55] = v118;
  *&v124[71] = v119;
  v125 = 0;
  *&v124[7] = v115;
  v120[0] = v24;
  v120[1] = v35;
  v120[2] = v34;
  v120[3] = v27;
  v120[4] = v29;
  v120[5] = v31;
  v120[6] = v33;
  v121 = 0;
  v122 = v21;
  v123 = v23;
  sub_1000089F8(&v115, v107, &qword_1011A09E8);
  sub_1000095E8(v120, &qword_1011A09E8);
  v75 = v125;
  static Alignment.top.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v36 = static Alignment.center.getter();
  v73 = v37;
  v74 = v36;
  v38 = sub_100732850();
  v39 = v14;
  sub_10056CF64(v14);
  v40 = v78;
  v41 = v79;
  (*(v10 + 104))(v78, enum case for LayoutDirection.rightToLeft(_:), v79);
  v42 = static LayoutDirection.== infix(_:_:)();
  v80 = v2;
  v43 = *(v10 + 8);
  v43(v40, v41);
  v43(v39, v41);
  if (v42)
  {
    v44 = -1.0;
  }

  else
  {
    v44 = 1.0;
  }

  static UnitPoint.center.getter();
  v45 = v84;
  *v106 = v84;
  *&v106[8] = v77;
  *&v106[16] = KeyPath;
  v106[24] = v75;
  *&v106[57] = *&v124[32];
  *&v106[73] = *&v124[48];
  *&v106[89] = *&v124[64];
  *&v106[104] = *&v124[79];
  *&v106[25] = *v124;
  *&v106[41] = *&v124[16];
  *&v106[128] = v109;
  *&v106[144] = v110;
  *&v106[112] = v108;
  *&v106[192] = v113;
  *&v106[208] = v114;
  *&v106[160] = v111;
  *&v106[176] = v112;
  *&v106[224] = v38;
  *&v106[232] = v74;
  *&v106[240] = v73;
  *&v106[248] = v44;
  *&v106[256] = 0x3FF0000000000000;
  *&v106[264] = v46;
  *&v106[272] = v47;
  v48 = v82;
  static AccessibilityChildBehavior.ignore.getter();
  v49 = sub_10010FC20(&qword_1011A09F0);
  v50 = sub_10073383C();
  v51 = v81;
  View.accessibilityElement(children:)();
  (*(v87 + 8))(v48, v89);
  memcpy(v107, v106, sizeof(v107));
  sub_1000095E8(v107, &qword_1011A09F0);
  v52 = v94;
  static AccessibilityTraits.isImage.getter();
  *v106 = v49;
  *&v106[8] = v50;
  swift_getOpaqueTypeConformance2();
  v53 = v88;
  v54 = v86;
  View.accessibilityAddTraits(_:)();
  (*(v95 + 8))(v52, v96);
  (*(v83 + 8))(v51, v54);
  v55 = AccessibilityIdentifier.containerDetailHeaderArtwork.unsafeMutableAddressor();
  v56 = *v55;
  v57 = v55[1];
  v58 = v55[2];
  v59 = v55[3];
  v60 = sub_100733B18();

  v61 = v92;
  View.accessibilityIdentifier(_:)(v56, v57, v58, v59, v85, v60);

  sub_1000095E8(v53, &qword_1011A09D0);
  swift_getKeyPath();
  *v106 = v45;
  sub_10073411C(&qword_101194F28, _s13ConfigurationCMa_0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v62 = *(v45 + OBJC_IVAR____TtCV5Music4Uber13Configuration__accessibilityArtworkLabel);
  v63 = *(v45 + OBJC_IVAR____TtCV5Music4Uber13Configuration__accessibilityArtworkLabel + 8);
  v64 = sub_100733C10();

  v65 = v98;
  View.accessibilityLabel(_:)(v62, v63, v93, v64);

  sub_1000095E8(v61, &qword_1011A09D8);
  LazyState.wrappedValue.getter();
  v66 = v102;
  dispatch thunk of MotionViewStateObserver.state.getter();

  v67 = v101;
  sub_100733CF4(v80, v101);
  v68 = (*(v99 + 80) + 16) & ~*(v99 + 80);
  v69 = swift_allocObject();
  sub_100733D58(v67, v69 + v68);
  sub_100733C40(&qword_1011A0A60, &qword_1011A09E0, &unk_100EDFFA8, sub_100733C10);
  sub_10073411C(&qword_1011A0A68, &type metadata accessor for MotionViewStateObserver.State);
  v70 = v104;
  View.onChange<A>(of:initial:_:)();

  (*(v103 + 8))(v66, v70);
  return sub_1000095E8(v65, &qword_1011A09E0);
}

uint64_t sub_1007321F8()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v2 - 8);
  *&v52 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v50 - v5;
  __chkstk_darwin(v7);
  v9 = &v50 - v8;
  v10 = sub_10010FC20(&qword_1011A0A70);
  __chkstk_darwin(v10 - 8);
  v51 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v50 - v13;
  __chkstk_darwin(v15);
  v17 = &v50 - v16;
  sub_100732D38(v9);
  v18 = type metadata accessor for Artwork();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (v20(v9, 1, v18) == 1)
  {
    sub_1000095E8(v9, &unk_101188920);
  }

  else
  {
    v50 = v0;
    Artwork.gradient.getter();
    (*(v19 + 8))(v9, v18);
    v21 = type metadata accessor for Artwork.Gradient();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v17, 1, v21) == 1)
    {
      sub_1000095E8(v17, &qword_1011A0A70);
      v1 = v50;
    }

    else
    {
      v23 = Artwork.Gradient.isDisabled.getter();
      (*(v22 + 8))(v17, v21);
      v1 = v50;
      if (v23)
      {
        return 0;
      }
    }
  }

  result = sub_100732850();
  if (result)
  {
    v25 = result;
    sub_100732D38(v6);
    if (v20(v6, 1, v18) == 1)
    {
      v26 = &unk_101188920;
      v27 = v6;
    }

    else
    {
      Artwork.gradient.getter();
      (*(v19 + 8))(v6, v18);
      v28 = type metadata accessor for Artwork.Gradient();
      v29 = *(v28 - 8);
      if ((*(v29 + 48))(v14, 1, v28) != 1)
      {
        v31 = COERCE_DOUBLE(Artwork.Gradient.y1.getter());
        v50 = v25;
        v33 = v32;
        (*(v29 + 8))(v14, v28);
        v34 = (v33 & 1) == 0;
        v25 = v50;
        if (v34)
        {
          v30 = v31;
        }

        else
        {
          v30 = 0.0;
        }

LABEL_16:
        v35 = v52;
        sub_100732D38(v52);
        v36 = v1;
        if (v20(v35, 1, v18) == 1)
        {
          v37 = &unk_101188920;
          v38 = v35;
        }

        else
        {
          v39 = v51;
          Artwork.gradient.getter();
          (*(v19 + 8))(v35, v18);
          v40 = type metadata accessor for Artwork.Gradient();
          v41 = *(v40 - 8);
          if ((*(v41 + 48))(v39, 1, v40) != 1)
          {
            v44 = COERCE_DOUBLE(Artwork.Gradient.y2.getter());
            v42 = v45;
            (*(v41 + 8))(v39, v40);
            v43 = v44;
            goto LABEL_22;
          }

          v37 = &qword_1011A0A70;
          v38 = v39;
        }

        sub_1000095E8(v38, v37);
        v42 = 1;
        v43 = 0.0;
LABEL_22:
        v46 = *v36;
        swift_getKeyPath();
        v53 = v46;
        sub_10073411C(&qword_101194F28, _s13ConfigurationCMa_0);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v47 = *(v46 + OBJC_IVAR____TtCV5Music4Uber13Configuration__frameHeight);
        sub_10010FC20(&qword_1011A0A78);
        v48 = swift_allocObject();
        v52 = xmmword_100EBDC20;
        *(v48 + 16) = xmmword_100EBDC20;
        *(v48 + 32) = static Color.clear.getter();
        *(v48 + 40) = v25;
        sub_10010FC20(&qword_101191EF8);
        v49 = swift_allocObject();
        *(v49 + 16) = v52;
        if (v42)
        {
          v43 = 250.0 / v47;
        }

        *(v49 + 32) = 1.0 - v43;
        *(v49 + 36) = 1.0 - v30;
        return AnyGradient.init(colors:locations:interpolations:)();
      }

      v26 = &qword_1011A0A70;
      v27 = v14;
    }

    sub_1000095E8(v27, v26);
    v30 = 0.0;
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100732850()
{
  v0 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v0 - 8);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v19 - v4;
  v6 = sub_10010FC20(&qword_1011A0A70);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  sub_100732D38(v5);
  v9 = type metadata accessor for Artwork();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v5, 1, v9) == 1)
  {
    v12 = &unk_101188920;
    v13 = v5;
  }

  else
  {
    Artwork.gradient.getter();
    (*(v10 + 8))(v5, v9);
    v14 = type metadata accessor for Artwork.Gradient();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v8, 1, v14) != 1)
    {
      v18 = Artwork.Gradient.color.getter();
      (*(v15 + 8))(v8, v14);
      if (v18)
      {
        return Color.init(cgColor:)();
      }

      goto LABEL_6;
    }

    v12 = &qword_1011A0A70;
    v13 = v8;
  }

  sub_1000095E8(v13, v12);
LABEL_6:
  sub_100732D38(v2);
  if (v11(v2, 1, v9) == 1)
  {
    sub_1000095E8(v2, &unk_101188920);
    return 0;
  }

  v16 = Artwork.backgroundColor.getter();
  (*(v10 + 8))(v2, v9);
  if (!v16)
  {
    return 0;
  }

  return Color.init(cgColor:)();
}

uint64_t sub_100732B10(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = type metadata accessor for Artwork();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100732D38(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1000095E8(v6, &unk_101188920);
  }

  (*(v8 + 32))(v10, v6, v7);
  v12 = *a3;
  swift_getKeyPath();
  v14[1] = v12;
  sub_10073411C(&qword_101194F28, _s13ConfigurationCMa_0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v12 + OBJC_IVAR____TtCV5Music4Uber13Configuration__artworkUsedChanged);
  if (v13)
  {

    v13(v10);
    sub_100020438(v13);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100732D38@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for VideoArtwork();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_101192950);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for MotionViewStateObserver.State();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Uber();
  sub_10010FC20(&qword_1011A0920);
  LazyState.wrappedValue.getter();
  dispatch thunk of MotionViewStateObserver.state.getter();

  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == enum case for MotionViewStateObserver.State.fallback(_:))
  {
    v15 = *v1;
    swift_getKeyPath();
    v25 = v15;
    sub_10073411C(&qword_101194F28, _s13ConfigurationCMa_0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v16 = OBJC_IVAR____TtCV5Music4Uber13Configuration__staticArtwork;
    swift_beginAccess();
    return sub_1000089F8(v15 + v16, a1, &unk_101188920);
  }

  else
  {
    v18 = *v1;
    if (v14 == enum case for MotionViewStateObserver.State.previewFrame(_:) || v14 == enum case for MotionViewStateObserver.State.motion(_:))
    {
      swift_getKeyPath();
      v25 = v18;
      sub_10073411C(&qword_101194F28, _s13ConfigurationCMa_0);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v20 = OBJC_IVAR____TtCV5Music4Uber13Configuration__motionArtwork;
      swift_beginAccess();
      sub_1000089F8(v18 + v20, v9, &unk_101192950);
      if ((*(v4 + 48))(v9, 1, v3))
      {
        sub_1000095E8(v9, &unk_101192950);
        v21 = type metadata accessor for Artwork();
        return (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
      }

      else
      {
        (*(v4 + 16))(v6, v9, v3);
        sub_1000095E8(v9, &unk_101192950);
        VideoArtwork.previewFrame.getter();
        (*(v4 + 8))(v6, v3);
        v23 = type metadata accessor for Artwork();
        return (*(*(v23 - 8) + 56))(a1, 0, 1, v23);
      }
    }

    else
    {
      swift_getKeyPath();
      v25 = v18;
      sub_10073411C(&qword_101194F28, _s13ConfigurationCMa_0);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v22 = OBJC_IVAR____TtCV5Music4Uber13Configuration__staticArtwork;
      swift_beginAccess();
      sub_1000089F8(v18 + v22, a1, &unk_101188920);
      return (*(v11 + 8))(v13, v10);
    }
  }
}

uint64_t sub_100733274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v44 = a4;
  v45 = a3;
  v43 = type metadata accessor for EnvironmentValues();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v41 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  *&v48 = a1;
  sub_10073411C(&qword_101194F28, _s13ConfigurationCMa_0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = OBJC_IVAR____TtCV5Music4Uber13Configuration__motionArtwork;
  swift_beginAccess();
  sub_1000089F8(a1 + v9, a5, &unk_101192950);
  swift_getKeyPath();
  *&v48 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = OBJC_IVAR____TtCV5Music4Uber13Configuration__staticArtwork;
  swift_beginAccess();
  v11 = type metadata accessor for ArtworkMotionView();
  sub_1000089F8(a1 + v10, a5 + v11[5], &unk_101188920);
  v12 = v11[6];
  v13 = type metadata accessor for Artwork.CropStyle();
  (*(*(v13 - 8) + 56))(a5 + v12, 1, 1, v13);
  swift_getKeyPath();
  *&v48 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = OBJC_IVAR____TtCV5Music4Uber13Configuration__artworkWidth;
  v15 = *(a1 + OBJC_IVAR____TtCV5Music4Uber13Configuration__artworkWidth);
  swift_getKeyPath();
  *&v48 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(v15, 0, COERCE__INT64(*(a1 + v14) * 4.0 / 3.0), 0, 0, 1, 2, &v46);
  v16 = v11[8];
  v17 = type metadata accessor for ArtworkImage.Placeholder(0);
  (*(*(v17 - 8) + 56))(a5 + v16, 1, 1, v17);
  v18 = v11[9];
  v19 = enum case for ArtworkImage.ReusePolicy.notReusableForDistinctItems(_:);
  v20 = type metadata accessor for ArtworkImage.ReusePolicy();
  (*(*(v20 - 8) + 104))(a5 + v18, v19, v20);
  v21 = (a5 + v11[7]);
  v22 = v47[0];
  *v21 = v46;
  v21[1] = v22;
  *(v21 + 26) = *(v47 + 10);
  *(a5 + v11[10]) = 1;
  *(a5 + v11[11]) = a2;
  v23 = a5 + *(sub_10010FC20(&qword_1011A0A80) + 36);
  *v23 = 0;
  *(v23 + 8) = 257;
  swift_getKeyPath();
  *&v48 = a1;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v24 = (a5 + *(sub_10010FC20(&qword_1011A0A88) + 36));
  v25 = v49;
  *v24 = v48;
  v24[1] = v25;
  v24[2] = v50;
  v26 = static Edge.Set.top.getter();
  if ((v44 & 1) == 0)
  {
    v27 = v45;

    static os_log_type_t.fault.getter();
    v28 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v29 = v41;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000D8F20(v27, 0);
    (*(v42 + 8))(v29, v43);
  }

  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  result = sub_10010FC20(&qword_1011A0A90);
  v39 = a5 + *(result + 36);
  *v39 = v26;
  *(v39 + 8) = v31;
  *(v39 + 16) = v33;
  *(v39 + 24) = v35;
  *(v39 + 32) = v37;
  *(v39 + 40) = 0;
  return result;
}

uint64_t sub_1007337FC@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.pixelLength.getter();
  *a1 = v3;
  return result;
}

unint64_t sub_10073383C()
{
  result = qword_1011A09F8;
  if (!qword_1011A09F8)
  {
    sub_1001109D0(&qword_1011A09F0);
    sub_1007338C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A09F8);
  }

  return result;
}

unint64_t sub_1007338C8()
{
  result = qword_1011A0A00;
  if (!qword_1011A0A00)
  {
    sub_1001109D0(&qword_1011A0A08);
    sub_100733980();
    sub_100020674(&unk_1011A1880, &qword_1011A0A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0A00);
  }

  return result;
}

unint64_t sub_100733980()
{
  result = qword_1011A0A10;
  if (!qword_1011A0A10)
  {
    sub_1001109D0(&qword_1011A0A18);
    sub_100733A0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0A10);
  }

  return result;
}

unint64_t sub_100733A0C()
{
  result = qword_1011A0A20;
  if (!qword_1011A0A20)
  {
    sub_1001109D0(&qword_1011A0A28);
    sub_100733AC4();
    sub_100020674(&qword_1011A0A38, &qword_1011A09E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0A20);
  }

  return result;
}

unint64_t sub_100733AC4()
{
  result = qword_1011A0A30;
  if (!qword_1011A0A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0A30);
  }

  return result;
}

unint64_t sub_100733B18()
{
  result = qword_1011A0A48;
  if (!qword_1011A0A48)
  {
    sub_1001109D0(&qword_1011A09D0);
    sub_1001109D0(&qword_1011A09F0);
    sub_10073383C();
    swift_getOpaqueTypeConformance2();
    sub_10073411C(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0A48);
  }

  return result;
}

uint64_t sub_100733C40(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2);
    a4();
    sub_10073411C(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100733CF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Uber();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100733D58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Uber();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100733DBC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Uber() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_100732B10(a1, a2, v6);
}

uint64_t sub_100733E90(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_100733ED8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100733F48()
{
  result = qword_1011A0A98;
  if (!qword_1011A0A98)
  {
    sub_1001109D0(&qword_1011A0A90);
    sub_100733FD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0A98);
  }

  return result;
}

unint64_t sub_100733FD4()
{
  result = qword_1011A0AA0;
  if (!qword_1011A0AA0)
  {
    sub_1001109D0(&qword_1011A0A88);
    sub_100734060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0AA0);
  }

  return result;
}

unint64_t sub_100734060()
{
  result = qword_1011A0AA8;
  if (!qword_1011A0AA8)
  {
    sub_1001109D0(&qword_1011A0A80);
    sub_10073411C(&qword_101190498, type metadata accessor for ArtworkMotionView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0AA8);
  }

  return result;
}

uint64_t sub_10073411C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100734164()
{
  v0 = type metadata accessor for URLQueryItem();
  v46 = *(v0 - 8);
  v1 = __chkstk_darwin(v0);
  v48 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v5 = &v37 - v4;
  v6 = __chkstk_darwin(v3);
  v49 = &v37 - v7;
  __chkstk_darwin(v6);
  v9 = &v37 - v8;
  v10 = sub_10010FC20(&qword_101194980);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for URLComponents();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000095E8(v12, &qword_101194980);
    return 0;
  }

  (*(v14 + 32))(v16, v12, v13);
  result = URLComponents.queryItems.getter();
  if (!result)
  {
    (*(v14 + 8))(v16, v13);
    return 0;
  }

  v39 = v16;
  v40 = v14;
  v41 = v13;
  v37 = v9;
  v38 = v5;
  v18 = result;
  v45 = *(result + 16);
  if (v45)
  {
    v19 = 0;
    v44 = v46 + 16;
    v42 = (v46 + 8);
    v47 = (v46 + 32);
    v20 = _swiftEmptyArrayStorage;
    v43 = v0;
    while (1)
    {
      if (v19 >= *(v18 + 16))
      {
        __break(1u);
        return result;
      }

      v21 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v22 = *(v46 + 72);
      (*(v46 + 16))(v49, v18 + v21 + v22 * v19, v0);
      if (URLQueryItem.name.getter() == 0x7542656372756F73 && v23 == 0xEE006449656C646ELL)
      {
        break;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v24)
      {
        goto LABEL_13;
      }

      result = (*v42)(v49, v0);
LABEL_7:
      if (v45 == ++v19)
      {
        goto LABEL_20;
      }
    }

LABEL_13:
    v25 = v18;
    v26 = *v47;
    (*v47)(v48, v49, v0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10066CAA4(0, v20[2] + 1, 1);
      v20 = v50;
    }

    v29 = v20[2];
    v28 = v20[3];
    if (v29 >= v28 >> 1)
    {
      sub_10066CAA4(v28 > 1, v29 + 1, 1);
      v20 = v50;
    }

    v20[2] = v29 + 1;
    v30 = v20 + v21 + v29 * v22;
    v0 = v43;
    result = (v26)(v30, v48, v43);
    v18 = v25;
    goto LABEL_7;
  }

  v20 = _swiftEmptyArrayStorage;
LABEL_20:

  if (!v20[2])
  {
    (*(v40 + 8))(v39, v41);

    return 0;
  }

  v31 = v46;
  v32 = v38;
  (*(v46 + 16))(v38, v20 + ((*(v31 + 80) + 32) & ~*(v31 + 80)), v0);

  v33 = v37;
  (*(v31 + 32))(v37, v32, v0);
  v34 = URLQueryItem.value.getter();
  v36 = v35;
  (*(v31 + 8))(v33, v0);
  (*(v40 + 8))(v39, v41);
  if (v36)
  {
    return v34;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007346B4@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v59 = type metadata accessor for URLQueryItem();
  v1 = *(v59 - 8);
  v2 = __chkstk_darwin(v59);
  v61 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v48 - v4;
  v6 = sub_10010FC20(&qword_101194980);
  __chkstk_darwin(v6 - 8);
  v8 = &v48 - v7;
  v9 = type metadata accessor for URLComponents();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10010FC20(&qword_101183A20);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v55 = &v48 - v18;
  __chkstk_darwin(v17);
  v20 = &v48 - v19;
  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v56 = v20;
  v24 = v20;
  v25 = v58;
  v23(v24, 1, 1, v21);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    (*(v10 + 32))(v12, v8, v9);
    result = URLComponents.queryItems.getter();
    v27 = v10;
    if (!result)
    {
      (*(v10 + 8))(v12, v9);
      goto LABEL_19;
    }

    v28 = result;
    v49 = v12;
    v50 = v27;
    v51 = v9;
    v52 = v22;
    v53 = v21;
    v54 = v16;
    v64 = *(result + 16);
    if (!v64)
    {
      v30 = _swiftEmptyArrayStorage;
LABEL_21:

      v43 = v49;
      if (!v30[2])
      {
      }

      v44 = v50;
      URLComponents.queryItems.setter();
      v45 = v55;
      URLComponents.url.getter();
      (*(v44 + 8))(v43, v51);
      v46 = v56;
      sub_1000095E8(v56, &qword_101183A20);
      sub_100027998(v45, v46);
      v41 = v46;
      v42 = v57;
      v25 = v58;
      v21 = v53;
      v16 = v54;
      v22 = v52;
      goto LABEL_24;
    }

    v29 = 0;
    v60 = (v1 + 32);
    v62 = (v1 + 8);
    v63 = v1 + 16;
    v30 = _swiftEmptyArrayStorage;
    v31 = v59;
    while (1)
    {
      if (v29 >= *(v28 + 16))
      {
        __break(1u);
        return result;
      }

      v32 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v33 = *(v1 + 72);
      (*(v1 + 16))(v5, v28 + v32 + v33 * v29, v31);
      if (URLQueryItem.name.getter() == 0x7542656372756F73 && v34 == 0xEE006449656C646ELL)
      {
      }

      else
      {
        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v35 & 1) == 0)
        {
          v36 = *v60;
          (*v60)(v61, v5, v31);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v65 = v30;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10066CAA4(0, v30[2] + 1, 1);
            v30 = v65;
          }

          v39 = v30[2];
          v38 = v30[3];
          if (v39 >= v38 >> 1)
          {
            sub_10066CAA4(v38 > 1, v39 + 1, 1);
            v30 = v65;
          }

          v30[2] = v39 + 1;
          v40 = v30 + v32 + v39 * v33;
          v31 = v59;
          result = v36(v40, v61, v59);
          goto LABEL_8;
        }
      }

      result = (*v62)(v5, v31);
LABEL_8:
      if (v64 == ++v29)
      {
        goto LABEL_21;
      }
    }
  }

  sub_1000095E8(v8, &qword_101194980);
LABEL_19:
  v41 = v56;
  v42 = v57;
LABEL_24:
  sub_100027998(v41, v16);
  v47 = *(v22 + 48);
  if (v47(v16, 1, v21) != 1)
  {
    return (*(v22 + 32))(v42, v16, v21);
  }

  (*(v22 + 16))(v42, v25, v21);
  result = (v47)(v16, 1, v21);
  if (result != 1)
  {
    return sub_1000095E8(v16, &qword_101183A20);
  }

  return result;
}