uint64_t sub_1001F973C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1001F97AC(uint64_t result, uint64_t a2)
{
  v4 = *(v2 + 56);
  if (v4)
  {
    if (!a2)
    {
      goto LABEL_11;
    }

    v5 = result;
    result = *(v2 + 48);
    if (result != v5 || v4 != a2)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        goto LABEL_11;
      }
    }

LABEL_10:
    if (*(v2 + 64))
    {
      return result;
    }

    goto LABEL_11;
  }

  if (!a2)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (*(v2 + 32))
  {
    *(v2 + 40) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    return Subject<>.send()();
  }

  return result;
}

void sub_1001F987C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(v2 + 56);
  if (v5)
  {
    if (!a2)
    {
      goto LABEL_11;
    }

    v6 = *(v2 + 48) == a1 && v5 == a2;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (a2)
  {
    goto LABEL_11;
  }

  if (*(v2 + 64))
  {
    return;
  }

LABEL_11:
  if (*(v2 + 64) == 1)
  {
    if (qword_100353A20 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000F53C(v7, qword_100381CB0);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v10 = 136446466;

      sub_1000040A8(&qword_1003566A0);
      v11 = String.init<A>(describing:)();
      v13 = sub_10017C9E8(v11, v12, &v25);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2082;

      v14 = String.init<A>(describing:)();
      v16 = sub_10017C9E8(v14, v15, &v25);

      *(v10 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "Current country changed from: %{public}s to: %{public}s", v10, 0x16u);
      swift_arrayDestroy();
    }

    if (*(v3 + 32))
    {
LABEL_17:
      *(v3 + 41) = 1;
      return;
    }
  }

  else
  {
    if (qword_100353A20 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000F53C(v17, qword_100381CB0);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v25 = v21;
      *v20 = 136446210;

      sub_1000040A8(&qword_1003566A0);
      v22 = String.init<A>(describing:)();
      v24 = sub_10017C9E8(v22, v23, &v25);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Current country initialized with: %{public}s", v20, 0xCu);
      sub_100008964(v21);
    }

    *(v3 + 64) = 1;
    if (*(v3 + 32))
    {
      goto LABEL_17;
    }
  }

  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF00, &unk_100365610);
  Subject<>.send()();
}

uint64_t sub_1001F9C6C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1001F9CD8()
{
  v1 = v0;
  sub_1000040A8(&qword_100361B48);
  swift_allocObject();
  *(v0 + 48) = PassthroughSubject.init()();
  sub_1000040A8(&unk_100365610);
  swift_allocObject();
  *(v0 + 56) = PassthroughSubject.init()();
  v2 = OBJC_IVAR____TtC8SOSBuddy21ConnectionClosedModel__connectionClosed;
  v3 = type metadata accessor for ConnectionClosed(0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  swift_allocObject();
  *(v1 + 16) = PassthroughSubject.init()();
  swift_allocObject();
  *(v1 + 24) = PassthroughSubject.init()();
  return v1;
}

uint64_t sub_1001F9DE8()
{

  return sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy21ConnectionClosedModel__connectionClosed, &qword_100356510);
}

uint64_t sub_1001F9E2C()
{

  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy21ConnectionClosedModel__connectionClosed, &qword_100356510);

  return swift_deallocClassInstance();
}

void sub_1001F9F04()
{
  sub_1001EC5E4(319, &qword_10035E320, type metadata accessor for ConnectionClosed);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1001F9FC0()
{
  if (*(*(v0 + 144) + 32) && (!*(v0 + 64) || *(v0 + 56) != 5))
  {
    type metadata accessor for PreventSuspensionAssertion();
    swift_allocObject();
    sub_1000E13E0(0xD000000000000011, 0x8000000100294FD0, 0xD000000000000023, 0x80000001002A4160);
    if (*(v0 + 64))
    {
      goto LABEL_5;
    }

LABEL_7:
    v1 = 0;
    goto LABEL_8;
  }

  if (!*(v0 + 64))
  {
    goto LABEL_7;
  }

LABEL_5:
  v1 = *(v0 + 56) == 5;
LABEL_8:
  sub_1000E17A4(v1);
  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF00, &unk_100365610);
  Subject<>.send()();

  PassthroughSubject.send(_:)();
}

uint64_t sub_1001FA118(uint64_t a1)
{
  v2 = *(v1 + 104);
  v54[2] = *(v1 + 88);
  v54[3] = v2;
  v54[4] = *(v1 + 120);
  v55 = *(v1 + 136);
  v3 = *(v1 + 72);
  v54[0] = *(v1 + 56);
  v54[1] = v3;
  v4 = v54[0];
  v5 = *(v1 + 88);
  v6 = *(v1 + 120);
  v49 = *(v1 + 104);
  v50 = v6;
  v51 = *(v1 + 136);
  v47 = *(v1 + 72);
  v48 = v5;
  v8 = *a1;
  v7 = *(a1 + 8);
  if (*(&v54[0] + 1))
  {
    if (v7)
    {
      *&v26 = *a1;
      *(&v26 + 1) = v7;
      v9 = *(a1 + 64);
      v29 = *(a1 + 48);
      v30 = v9;
      v31 = *(a1 + 80);
      v10 = *(a1 + 32);
      v27 = *(a1 + 16);
      v28 = v10;
      v39 = v31;
      v37 = v29;
      v38 = v9;
      v35 = v27;
      v36 = v10;
      v34 = v26;
      v11 = *(v1 + 88);
      v12 = *(v1 + 120);
      v52[3] = *(v1 + 104);
      v52[4] = v12;
      v53 = *(v1 + 136);
      v52[1] = *(v1 + 72);
      v52[2] = v11;
      v52[0] = v54[0];
      v14 = sub_10001F4B0(v52, &v34);
      sub_100006C20(v54, v32, &unk_10035CEF0);
      sub_100006C20(a1, v32, &unk_10035CEF0);
      sub_100008FA0(&v26, &unk_10035CEF0);
      v32[0] = v4;
      v32[3] = v49;
      v32[4] = v50;
      v33 = v51;
      v32[2] = v48;
      v32[1] = v47;
      result = sub_100008FA0(v32, &unk_10035CEF0);
      if (v14)
      {
        return result;
      }

      if (*(v1 + 32))
      {
        goto LABEL_5;
      }

LABEL_8:
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      return Subject<>.send()();
    }

LABEL_7:
    v34 = v54[0];
    v16 = *(v1 + 88);
    v17 = *(v1 + 120);
    v37 = *(v1 + 104);
    v38 = v17;
    v18 = *(v1 + 136);
    v35 = *(v1 + 72);
    v36 = v16;
    v39 = v18;
    v40 = v8;
    v19 = *(a1 + 80);
    v41 = v7;
    v46 = v19;
    v20 = *(a1 + 64);
    v44 = *(a1 + 48);
    v45 = v20;
    v21 = *(a1 + 32);
    v42 = *(a1 + 16);
    v43 = v21;
    sub_100006C20(v54, v52, &unk_10035CEF0);
    sub_100006C20(a1, v52, &unk_10035CEF0);
    result = sub_100008FA0(&v34, &qword_10035A098);
    if (*(v1 + 32))
    {
LABEL_5:
      *(v1 + 40) = 1;
      return result;
    }

    goto LABEL_8;
  }

  if (v7)
  {
    goto LABEL_7;
  }

  v34 = *&v54[0];
  v23 = *(v1 + 88);
  v24 = *(v1 + 120);
  v37 = *(v1 + 104);
  v38 = v24;
  v39 = *(v1 + 136);
  v35 = *(v1 + 72);
  v36 = v23;
  sub_100006C20(v54, v52, &unk_10035CEF0);
  sub_100006C20(a1, v52, &unk_10035CEF0);
  return sub_100008FA0(&v34, &unk_10035CEF0);
}

void sub_1001FA41C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000040A8(&qword_100356518);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v50 - v8;
  v10 = *(v1 + 56);
  v11 = *(v1 + 104);
  v85[2] = *(v1 + 88);
  v85[3] = v11;
  v85[4] = *(v1 + 120);
  v86 = *(v1 + 136);
  v12 = *(v1 + 72);
  v85[0] = v10;
  v85[1] = v12;
  v13 = v10;
  v14 = *(v1 + 88);
  v15 = *(v1 + 120);
  v54 = *(v1 + 104);
  v55 = v15;
  v56 = *(v1 + 136);
  v52 = *(v1 + 72);
  v53 = v14;
  v17 = *a1;
  v16 = *(a1 + 8);
  if (!*(&v13 + 1))
  {
    if (!v16)
    {
      v70 = v13;
      v48 = *(v1 + 88);
      v49 = *(v1 + 120);
      v73 = *(v1 + 104);
      v74 = v49;
      v75 = *(v1 + 136);
      v71 = *(v1 + 72);
      v72 = v48;
      sub_100006C20(v85, v83, &unk_10035CEF0);
      sub_100006C20(a1, v83, &unk_10035CEF0);
      sub_100008FA0(&v70, &unk_10035CEF0);
      return;
    }

    goto LABEL_6;
  }

  if (!v16)
  {
LABEL_6:
    v21 = *(v1 + 88);
    v22 = *(v1 + 120);
    v73 = *(v1 + 104);
    v74 = v22;
    v71 = *(v1 + 72);
    v72 = v21;
    v23 = *(a1 + 48);
    v81 = *(a1 + 64);
    v80 = v23;
    v24 = *(a1 + 16);
    v79 = *(a1 + 32);
    v70 = v13;
    v75 = *(v1 + 136);
    v76 = v17;
    v25 = *(a1 + 80);
    v77 = v16;
    v82 = v25;
    v78 = v24;
    sub_100006C20(v85, v83, &unk_10035CEF0);
    sub_100006C20(a1, v83, &unk_10035CEF0);
    sub_100008FA0(&v70, &qword_10035A098);
LABEL_7:
    if (qword_100353A20 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000F53C(v26, qword_100381CB0);
    sub_100006C20(a1, &v64, &unk_10035CEF0);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    sub_100008FA0(a1, &unk_10035CEF0);

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v51 = v7;
      v63 = v30;
      *v29 = 136446466;
      v31 = *(a1 + 48);
      v66 = *(a1 + 32);
      v67 = v31;
      v68 = *(a1 + 64);
      v69 = *(a1 + 80);
      v32 = *(a1 + 16);
      v64 = *a1;
      v65 = v32;
      v50 = v9;
      sub_100006C20(a1, &v57, &unk_10035CEF0);
      sub_1000040A8(&unk_10035CEF0);
      v33 = String.init<A>(describing:)();
      v35 = sub_10017C9E8(v33, v34, &v63);

      *(v29 + 4) = v35;
      *(v29 + 12) = 2082;
      v36 = *(v2 + 104);
      v66 = *(v2 + 88);
      v67 = v36;
      v68 = *(v2 + 120);
      v69 = *(v2 + 136);
      v37 = *(v2 + 72);
      v64 = *(v2 + 56);
      v65 = v37;
      v38 = *(v2 + 104);
      v59 = *(v2 + 88);
      v60 = v38;
      v61 = *(v2 + 120);
      v62 = *(v2 + 136);
      v39 = *(v2 + 72);
      v57 = *(v2 + 56);
      v58 = v39;
      v9 = v50;
      sub_100006C20(&v64, &v52, &unk_10035CEF0);
      v40 = String.init<A>(describing:)();
      v42 = sub_10017C9E8(v40, v41, &v63);

      *(v29 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v27, v28, "Stewie state changed from: %{public}s to: %{public}s", v29, 0x16u);
      swift_arrayDestroy();
      v7 = v51;
    }

    if (*(v2 + 64) && (*(v2 + 56) != 5 || (v43 = *(v2 + 144), v43[4]) || (v44 = v43[2], v45 = v43[3], type metadata accessor for PreventSuspensionAssertion(), swift_allocObject(), , v43[4] = sub_1000E13E0(0xD000000000000011, 0x8000000100294FD0, v44, v45), , *(v2 + 64))) && !*(*(v2 + 88) + 16))
    {
      v46 = type metadata accessor for DispatchTime();
      (*(*(v46 - 8) + 56))(v9, 1, 1, v46);
      v47 = OBJC_IVAR____TtC8SOSBuddy11StewieModel__exitRequestPendingAt;
      swift_beginAccess();
      sub_100006C20(v2 + v47, v7, &qword_100356518);
      sub_1001FAB24(v9);
      swift_beginAccess();
      sub_10017E5D8(v9, v2 + v47, &qword_100356518);
      swift_endAccess();
      sub_1001FAED8(v7);
      sub_100008FA0(v7, &qword_100356518);
      sub_100008FA0(v9, &qword_100356518);
      if (*(v2 + 32))
      {
        goto LABEL_17;
      }
    }

    else if (*(v2 + 32))
    {
LABEL_17:
      *(v2 + 41) = 1;
      return;
    }

    sub_1001F9FC0();
    return;
  }

  *&v57 = *a1;
  *(&v57 + 1) = v16;
  v18 = *(a1 + 64);
  v60 = *(a1 + 48);
  v61 = v18;
  v62 = *(a1 + 80);
  v19 = *(a1 + 32);
  v58 = *(a1 + 16);
  v59 = v19;
  v75 = v62;
  v73 = v60;
  v74 = v18;
  v71 = v58;
  v72 = v19;
  v70 = v57;
  v83[2] = *(v1 + 88);
  v83[3] = *(v1 + 104);
  v83[4] = *(v1 + 120);
  v84 = *(v1 + 136);
  v83[1] = *(v1 + 72);
  v83[0] = v13;
  v20 = sub_10001F4B0(v83, &v70);
  sub_100006C20(v85, &v64, &unk_10035CEF0);
  sub_100006C20(a1, &v64, &unk_10035CEF0);
  sub_100008FA0(&v57, &unk_10035CEF0);
  v64 = v13;
  v67 = v54;
  v68 = v55;
  v69 = v56;
  v65 = v52;
  v66 = v53;
  sub_100008FA0(&v64, &unk_10035CEF0);
  if (!v20)
  {
    goto LABEL_7;
  }
}

uint64_t sub_1001FAB24(uint64_t a1)
{
  v3 = type metadata accessor for DispatchTime();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v20 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000040A8(&qword_100356518);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000040A8(&qword_100367C08);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v13 = OBJC_IVAR____TtC8SOSBuddy11StewieModel__exitRequestPendingAt;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_100006C20(v1 + v13, v12, &qword_100356518);
  sub_100006C20(a1, &v12[v14], &qword_100356518);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) == 1)
  {
    if (v15(&v12[v14], 1, v3) == 1)
    {
      return sub_100008FA0(v12, &qword_100356518);
    }
  }

  else
  {
    sub_100006C20(v12, v8, &qword_100356518);
    if (v15(&v12[v14], 1, v3) != 1)
    {
      v17 = v20;
      (*(v4 + 32))(v20, &v12[v14], v3);
      sub_1002042C0(&qword_100367C10, &type metadata accessor for DispatchTime);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v4 + 8);
      v19(v17, v3);
      v19(v8, v3);
      result = sub_100008FA0(v12, &qword_100356518);
      if (v18)
      {
        return result;
      }

      goto LABEL_7;
    }

    (*(v4 + 8))(v8, v3);
  }

  result = sub_100008FA0(v12, &qword_100367C08);
LABEL_7:
  if (*(v1 + 32))
  {
    *(v1 + 40) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    return Subject<>.send()();
  }

  return result;
}

void sub_1001FAED8(uint64_t a1)
{
  v3 = type metadata accessor for DispatchTime();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1000040A8(&qword_100356518);
  v6 = __chkstk_darwin(v40);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v43 = &v36 - v9;
  __chkstk_darwin(v8);
  v11 = &v36 - v10;
  v12 = sub_1000040A8(&qword_100367C08);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v36 - v14;
  v16 = OBJC_IVAR____TtC8SOSBuddy11StewieModel__exitRequestPendingAt;
  swift_beginAccess();
  v17 = *(v13 + 56);
  v38 = v16;
  v42 = v1;
  sub_100006C20(v1 + v16, v15, &qword_100356518);
  v41 = a1;
  sub_100006C20(a1, &v15[v17], &qword_100356518);
  v18 = *(v4 + 48);
  if (v18(v15, 1, v3) == 1)
  {
    if (v18(&v15[v17], 1, v3) == 1)
    {
      sub_100008FA0(v15, &qword_100356518);
      return;
    }
  }

  else
  {
    sub_100006C20(v15, v11, &qword_100356518);
    if (v18(&v15[v17], 1, v3) != 1)
    {
      v33 = v37;
      (*(v4 + 32))(v37, &v15[v17], v3);
      sub_1002042C0(&qword_100367C10, &type metadata accessor for DispatchTime);
      v34 = dispatch thunk of static Equatable.== infix(_:_:)();
      v35 = *(v4 + 8);
      v35(v33, v3);
      v35(v11, v3);
      sub_100008FA0(v15, &qword_100356518);
      v19 = v42;
      v20 = v43;
      if (v34)
      {
        return;
      }

      goto LABEL_7;
    }

    (*(v4 + 8))(v11, v3);
  }

  sub_100008FA0(v15, &qword_100367C08);
  v19 = v42;
  v20 = v43;
LABEL_7:
  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000F53C(v21, qword_100381CB0);
  sub_100006C20(v41, v20, &qword_100356518);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44 = v43;
    *v24 = 136446466;
    v25 = v39;
    sub_100006C20(v20, v39, &qword_100356518);
    LODWORD(v42) = v23;
    v26 = String.init<A>(describing:)();
    v28 = v27;
    sub_100008FA0(v20, &qword_100356518);
    v29 = sub_10017C9E8(v26, v28, &v44);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2082;
    sub_100006C20(v19 + v38, v25, &qword_100356518);
    v30 = String.init<A>(describing:)();
    v32 = sub_10017C9E8(v30, v31, &v44);

    *(v24 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v22, v42, "_exitRequestPendingAt changed from: %{public}s to: %{public}s", v24, 0x16u);
    swift_arrayDestroy();

    if (*(v19 + 32))
    {
LABEL_11:
      *(v19 + 41) = 1;
      return;
    }
  }

  else
  {

    sub_100008FA0(v20, &qword_100356518);
    if (*(v19 + 32))
    {
      goto LABEL_11;
    }
  }

  sub_1001F9FC0();
}

uint64_t sub_1001FB4A4()
{
  v1 = v0;
  sub_1000040A8(&qword_100361940);
  swift_allocObject();
  *(v0 + 48) = PassthroughSubject.init()();
  type metadata accessor for PreventSuspension();
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0;
  v2 = swift_allocObject();
  v2[3] = 0x80000001002A4870;
  v2[4] = 0;
  v2[2] = 0xD00000000000001FLL;
  *(v0 + 144) = v2;
  v3 = OBJC_IVAR____TtC8SOSBuddy11StewieModel__exitRequestPendingAt;
  v4 = type metadata accessor for DispatchTime();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  sub_1000040A8(&unk_100365610);
  swift_allocObject();
  *(v1 + 16) = PassthroughSubject.init()();
  swift_allocObject();
  *(v1 + 24) = PassthroughSubject.init()();
  return v1;
}

uint64_t sub_1001FB5EC()
{

  sub_10008A6A8(*(v0 + 56), *(v0 + 64));

  return sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy11StewieModel__exitRequestPendingAt, &qword_100356518);
}

uint64_t sub_1001FB65C()
{

  sub_10008A6A8(*(v0 + 56), *(v0 + 64));

  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy11StewieModel__exitRequestPendingAt, &qword_100356518);

  return swift_deallocClassInstance();
}

void sub_1001FB760()
{
  sub_1001EC5E4(319, &qword_100362DE0, &type metadata accessor for DispatchTime);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1001FB828()
{
  v1 = OBJC_IVAR____TtCC8SOSBuddy23ServicePredictionsModel7Request_requestedAt;
  v2 = type metadata accessor for DispatchTime();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100008FA0(v0 + OBJC_IVAR____TtCC8SOSBuddy23ServicePredictionsModel7Request_responseReceivedAt, &qword_100356518);

  return swift_deallocClassInstance();
}

uint64_t sub_1001FB8F4()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1000040A8(&qword_100367BB0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v14[-v9];
  static Date.now.getter();
  v11 = *(v0 + 72);
  v15 = *(v0 + 56);
  v16[0] = v11;
  *(v16 + 9) = *(v0 + 81);
  v12 = OBJC_IVAR____TtC8SOSBuddy23ServicePredictionsModel__skimmerPrediction;
  swift_beginAccess();
  sub_100006C20(v0 + v12, v8, &qword_100367BB0);
  sub_1001FBB24(v4, &v15, v8, v10);
  sub_100008FA0(v8, &qword_100367BB0);
  (*(v2 + 8))(v4, v1);
  sub_100006C20(v0 + v12, v8, &qword_100367BB0);
  sub_1001FE5B4(v10);
  swift_beginAccess();
  sub_10017E5D8(v10, v0 + v12, &qword_100367BB0);
  swift_endAccess();
  sub_1001FE9CC(v8);
  sub_100008FA0(v8, &qword_100367BB0);
  return sub_100008FA0(v10, &qword_100367BB0);
}

void sub_1001FBB24(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v131 = a3;
  v134 = a1;
  v130 = type metadata accessor for TargetTracks.TimePoint(0);
  v132 = *(v130 - 8);
  v7 = __chkstk_darwin(v130);
  v125 = v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v128 = v115 - v10;
  v11 = __chkstk_darwin(v9);
  v124 = v115 - v12;
  __chkstk_darwin(v11);
  v126 = v115 - v13;
  v133 = type metadata accessor for Date();
  v129 = *(v133 - 8);
  v14 = __chkstk_darwin(v133);
  v127 = v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v115 - v16;
  v18 = sub_1000040A8(&qword_100367BB0);
  __chkstk_darwin(v18 - 8);
  v20 = v115 - v19;
  v21 = type metadata accessor for ServicePredictionsModel.SkimmerPrediction(0);
  v135 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000040A8(&qword_100361B80);
  __chkstk_darwin(v24 - 8);
  v26 = v115 - v25;
  v27 = type metadata accessor for TargetTracks(0);
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  if ((a2[5] & 1) == 0)
  {
    v123 = a4;
    if (a2[2] > 0.436332313)
    {
      v30 = *(v135 + 56);
      v31 = v123;
      goto LABEL_5;
    }

    v122 = v115 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = *a2;
    v33 = OBJC_IVAR____TtC8SOSBuddy23ServicePredictionsModel__targetTracks;
    swift_beginAccess();
    sub_100006C20(v4 + v33, v26, &qword_100361B80);
    if ((*(v28 + 48))(v26, 1, v27) == 1)
    {
      sub_100008FA0(v26, &qword_100361B80);
      (*(v135 + 56))(v123, 1, 1, v21);
      return;
    }

    v121 = *&v32;
    v34 = v122;
    sub_100204258(v26, v122, type metadata accessor for TargetTracks);
    sub_1002042C0(&qword_10035E408, &type metadata accessor for Date);
    v35 = v133;
    if (dispatch thunk of static Comparable.< infix(_:_:)() & 1) != 0 || (dispatch thunk of static Comparable.< infix(_:_:)())
    {
      (*(v135 + 56))(v123, 1, 1, v21);
LABEL_13:
      v36 = v34;
LABEL_14:
      sub_10020321C(v36, type metadata accessor for TargetTracks);
      return;
    }

    sub_100006C20(v131, v20, &qword_100367BB0);
    if ((*(v135 + 48))(v20, 1, v21) == 1)
    {
      v131 = v21;
      v37 = sub_100008FA0(v20, &qword_100367BB0);
    }

    else
    {
      sub_100204258(v20, v23, type metadata accessor for ServicePredictionsModel.SkimmerPrediction);
      if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
      {
        if (v121 == *&v23[*(v21 + 20)] || (v99 = &v23[*(v21 + 24)], (v99[24] & 1) == 0) && v121 == *v99)
        {
          v57 = v123;
          sub_100204258(v23, v123, type metadata accessor for ServicePredictionsModel.SkimmerPrediction);
          (*(v135 + 56))(v57, 0, 1, v21);
LABEL_63:
          v36 = v122;
          goto LABEL_14;
        }
      }

      v131 = v21;
      v37 = sub_10020321C(v23, type metadata accessor for ServicePredictionsModel.SkimmerPrediction);
    }

    v34 = v122;
    __chkstk_darwin(v37);
    v38 = v134;
    v115[-2] = v134;
    v120 = v39;
    v40 = sub_1001DDFD0(sub_100204308, &v115[-4], v39, type metadata accessor for TargetTracks.TimePoint);
    if (v41)
    {
      (*(v135 + 56))(v123, 1, 1, v131);
      goto LABEL_13;
    }

    v115[1] = 0;
    v42 = v40;
    v43 = v121;
    if (qword_100353A20 != -1)
    {
LABEL_71:
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    v45 = sub_10000F53C(v44, qword_100381CB0);
    v46 = v129;
    v47 = *(v129 + 16);
    v117 = v129 + 16;
    v116 = v47;
    v47(v17, v38, v35);
    v118 = v45;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v136[0] = v51;
      *v50 = 134349314;
      *(v50 + 4) = v43;
      *(v50 + 12) = 2082;
      sub_1002042C0(&qword_100356198, &type metadata accessor for Date);
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v46;
      v55 = v54;
      v119 = *(v53 + 8);
      v119(v17, v35);
      v56 = sub_10017C9E8(v52, v55, v136);

      *(v50 + 14) = v56;
      _os_log_impl(&_mh_execute_header, v48, v49, "Skimmer prediction for target: %{public}lld at: %{public}s", v50, 0x16u);
      sub_100008964(v51);
    }

    else
    {

      v119 = *(v46 + 8);
      v119(v17, v35);
    }

    v58 = v128;
    v59 = v126;
    v17 = v120;
    v60 = *(v120 + 2);
    if (v60 < v42)
    {
      __break(1u);
    }

    else
    {
      v61 = v42;
      if (v42 != v60)
      {
        v62 = &v120[(*(v132 + 80) + 32) & ~*(v132 + 80)];
        v63 = v42;
        while (2)
        {
          if (v63 >= v60)
          {
            goto LABEL_74;
          }

          if (v61 < 0)
          {
LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

          if (v63 >= *(v17 + 2))
          {
LABEL_76:
            __break(1u);
            return;
          }

          v64 = v63 + 1;
          sub_1002031B4(&v62[*(v132 + 72) * v63], v59, type metadata accessor for TargetTracks.TimePoint);
          v65 = *(v59 + *(v130 + 20));
          v66 = (v65 + 32);
          v67 = *(v65 + 16) + 1;
          do
          {
            if (!--v67)
            {
              sub_10020321C(v59, type metadata accessor for TargetTracks.TimePoint);
              v61 = v42;
              goto LABEL_40;
            }

            v68 = (v66 + 3);
            v69 = *v66;
            v66 += 3;
          }

          while (v69 != v43);
          v70 = *(v68 - 1);
          if (v70 * 57.2957795 > 25.0)
          {
            v103 = *(v68 - 2);
            v104 = v124;
            sub_1002031B4(v59, v124, type metadata accessor for TargetTracks.TimePoint);
            v105 = Logger.logObject.getter();
            v106 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v105, v106))
            {
              v107 = swift_slowAlloc();
              v108 = swift_slowAlloc();
              v136[0] = v108;
              *v107 = 136446466;
              sub_1002042C0(&qword_100356198, &type metadata accessor for Date);
              v109 = dispatch thunk of CustomStringConvertible.description.getter();
              v111 = v110;
              sub_10020321C(v104, type metadata accessor for TargetTracks.TimePoint);
              v112 = sub_10017C9E8(v109, v111, v136);

              *(v107 + 4) = v112;
              *(v107 + 12) = 2050;
              *(v107 + 14) = v70 * 57.2957795;
              _os_log_impl(&_mh_execute_header, v105, v106, "Current target is rising at: %{public}s to: %{public}f", v107, 0x16u);
              sub_100008964(v108);
              v59 = v126;
            }

            else
            {

              sub_10020321C(v104, type metadata accessor for TargetTracks.TimePoint);
            }

            v75 = v123;
            v116(v123, v59, v35);
            sub_10020321C(v59, type metadata accessor for TargetTracks.TimePoint);
            v76 = v131;
            v113 = v121;
            *(v75 + *(v131 + 20)) = v121;
            v114 = v75 + *(v76 + 24);
            *v114 = v113;
            *(v114 + 8) = v103;
            *(v114 + 16) = v70;
            *(v114 + 24) = 0;
LABEL_45:
            (*(v135 + 56))(v75, 0, 1, v76);
            goto LABEL_63;
          }

          sub_10020321C(v59, type metadata accessor for TargetTracks.TimePoint);
          v63 = v64;
          v61 = v42;
          if (v64 != v60)
          {
            continue;
          }

          break;
        }
      }

LABEL_40:
      v71 = *(v17 + 2);
      if (v71 >= v61)
      {
        if (v61 != v71)
        {
          v38 = v129 + 8;
          v35 = 0x4092C00000000000;
          v78 = v61;
          while (1)
          {
            if (v61 < 0)
            {
              __break(1u);
LABEL_70:
              __break(1u);
              goto LABEL_71;
            }

            if (v78 >= *(v17 + 2))
            {
              goto LABEL_70;
            }

            sub_1002031B4(&v17[((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v78], v58, type metadata accessor for TargetTracks.TimePoint);
            v79 = v127;
            static Date.+ infix(_:_:)();
            v80 = static Date.> infix(_:_:)();
            v119(v79, v133);
            if (v80)
            {
              sub_10020321C(v58, type metadata accessor for TargetTracks.TimePoint);
              goto LABEL_42;
            }

            v81 = *(v58 + *(v130 + 20));
            v82 = *(v81 + 16);
            if (v82)
            {
              break;
            }

LABEL_47:
            ++v78;
            sub_10020321C(v58, type metadata accessor for TargetTracks.TimePoint);
            v17 = v120;
            v61 = v42;
            if (v78 == v71)
            {
              goto LABEL_42;
            }
          }

          v83 = (v81 + 48);
          while (1)
          {
            v84 = *(v83 - 2);
            if (v84 != v43)
            {
              v85 = *v83;
              if (*v83 > 0.436332313)
              {
                break;
              }
            }

            v83 += 3;
            if (!--v82)
            {
              goto LABEL_47;
            }
          }

          v86 = *(v83 - 1);
          v87 = v125;
          sub_1002031B4(v58, v125, type metadata accessor for TargetTracks.TimePoint);
          v88 = Logger.logObject.getter();
          v89 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v88, v89))
          {
            v90 = swift_slowAlloc();
            v91 = swift_slowAlloc();
            v136[0] = v91;
            *v90 = 134349570;
            *(v90 + 4) = v85 * 57.2957795;
            *(v90 + 12) = 2050;
            *(v90 + 14) = v84;
            *(v90 + 22) = 2082;
            sub_1002042C0(&qword_100356198, &type metadata accessor for Date);
            v92 = v133;
            v93 = dispatch thunk of CustomStringConvertible.description.getter();
            v94 = v87;
            v96 = v95;
            sub_10020321C(v94, type metadata accessor for TargetTracks.TimePoint);
            v97 = sub_10017C9E8(v93, v96, v136);

            *(v90 + 24) = v97;
            _os_log_impl(&_mh_execute_header, v88, v89, "Higher pass of: %{public}f for target: %{public}lld is available at: %{public}s", v90, 0x20u);
            sub_100008964(v91);

            v98 = v123;
          }

          else
          {

            sub_10020321C(v87, type metadata accessor for TargetTracks.TimePoint);
            v98 = v123;
            v92 = v133;
          }

          v100 = v131;
          v101 = v128;
          v116(v98, v128, v92);
          sub_10020321C(v101, type metadata accessor for TargetTracks.TimePoint);
          *(v98 + *(v100 + 20)) = v121;
          v102 = v98 + *(v100 + 24);
          *v102 = v84;
          *(v102 + 8) = v86;
          *(v102 + 16) = v85;
          *(v102 + 24) = 0;
          (*(v135 + 56))(v98, 0, 1, v100);
          goto LABEL_63;
        }

LABEL_42:
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          *v74 = 0;
          _os_log_impl(&_mh_execute_header, v72, v73, "No better service suggestions found", v74, 2u);
        }

        v75 = v123;
        static Date.+ infix(_:_:)();
        v76 = v131;
        *(v75 + *(v131 + 20)) = v121;
        v77 = v75 + *(v76 + 24);
        *v77 = 0;
        *(v77 + 8) = 0;
        *(v77 + 16) = 0;
        *(v77 + 24) = 1;
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v30 = *(v135 + 56);
  v31 = a4;
LABEL_5:

  v30(v31, 1, 1, v21);
}

uint64_t sub_1001FCC78()
{
  v1 = sub_1000040A8(&qword_100356518);
  __chkstk_darwin(v1 - 8);
  v3 = &v43 - v2;
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v7 = __chkstk_darwin(v6);
  v9 = &v43 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v43 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v43 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v43 - v17;
  result = __chkstk_darwin(v16);
  v22 = &v43 - v21;
  if ((*(v0 + 96) & 1) != 0 || *(v0 + 72) > 0.436332313)
  {
    return result;
  }

  v46 = v20;
  v23 = *(v0 + 104);
  if (!v23)
  {
    (*(v5 + 56))(v3, 1, 1, v4);
    goto LABEL_10;
  }

  v45 = v9;
  v24 = OBJC_IVAR____TtCC8SOSBuddy23ServicePredictionsModel7Request_responseReceivedAt;
  swift_beginAccess();
  v25 = v23 + v24;
  v9 = v45;
  sub_100006C20(v25, v3, &qword_100356518);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
LABEL_10:
    sub_100008FA0(v3, &qword_100356518);
    v31 = v46;
    goto LABEL_11;
  }

  v44 = v0;
  (*(v5 + 32))(v22, v3, v4);
  static DispatchTime.now()();
  v26 = DispatchTime.uptimeNanoseconds.getter();
  if (DispatchTime.uptimeNanoseconds.getter() >= v26)
  {
    v42 = *(v5 + 8);
    v42(v18, v4);
    return (v42)(v22, v4);
  }

  v27 = DispatchTime.uptimeNanoseconds.getter();
  v28 = DispatchTime.uptimeNanoseconds.getter();
  v29 = *(v5 + 8);
  v29(v18, v4);
  result = (v29)(v22, v4);
  v30 = v27 - v28;
  if (v27 < v28)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v0 = v44;
  v9 = v45;
  v31 = v46;
  if (v30 <= 0x8BEE6439FFLL)
  {
    return result;
  }

LABEL_11:
  v32 = *(v0 + 104);
  if (!v32)
  {
LABEL_15:
    static DispatchTime.now()();
    type metadata accessor for ServicePredictionsModel.Request(0);
    v40 = swift_allocObject();
    (*(v5 + 56))(v40 + OBJC_IVAR____TtCC8SOSBuddy23ServicePredictionsModel7Request_responseReceivedAt, 1, 1, v4);
    (*(v5 + 32))(v40 + OBJC_IVAR____TtCC8SOSBuddy23ServicePredictionsModel7Request_requestedAt, v31, v4);
    *(v40 + OBJC_IVAR____TtCC8SOSBuddy23ServicePredictionsModel7Request_model) = v0;
    *(v0 + 104) = v40;
    swift_retain_n();

    swift_weakInit();

    PassthroughSubject.send(_:)();

    return sub_100204338(v47);
  }

  v33 = v0;
  (*(v5 + 16))(v12, v32 + OBJC_IVAR____TtCC8SOSBuddy23ServicePredictionsModel7Request_requestedAt, v4);
  (*(v5 + 32))(v15, v12, v4);
  static DispatchTime.now()();
  v34 = DispatchTime.uptimeNanoseconds.getter();
  if (DispatchTime.uptimeNanoseconds.getter() >= v34)
  {
    v41 = *(v5 + 8);
    v41(v9, v4);
    return (v41)(v15, v4);
  }

  v35 = DispatchTime.uptimeNanoseconds.getter();
  v36 = DispatchTime.uptimeNanoseconds.getter();
  v37 = v9;
  v38 = *(v5 + 8);
  v38(v37, v4);
  result = (v38)(v15, v4);
  v39 = v35 - v36;
  if (v35 < v36)
  {
    __break(1u);
    goto LABEL_21;
  }

  v0 = v33;
  v31 = v46;
  if (v39 > 0x8BEE6439FFLL)
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1001FD1B0(uint64_t a1)
{
  v3 = type metadata accessor for TargetTracks(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v20 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000040A8(&qword_100361B80);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000040A8(&qword_100367BD0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v13 = OBJC_IVAR____TtC8SOSBuddy23ServicePredictionsModel__targetTracks;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_100006C20(v1 + v13, v12, &qword_100361B80);
  sub_100006C20(a1, &v12[v14], &qword_100361B80);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) == 1)
  {
    if (v15(&v12[v14], 1, v3) == 1)
    {
      return sub_100008FA0(v12, &qword_100361B80);
    }

    goto LABEL_6;
  }

  sub_100006C20(v12, v8, &qword_100361B80);
  if (v15(&v12[v14], 1, v3) == 1)
  {
    sub_10020321C(v8, type metadata accessor for TargetTracks);
LABEL_6:
    v17 = &qword_100367BD0;
    goto LABEL_13;
  }

  v18 = v20;
  sub_100204258(&v12[v14], v20, type metadata accessor for TargetTracks);
  if (static Date.== infix(_:_:)() & 1) != 0 && (static Date.== infix(_:_:)())
  {
    v19 = sub_100202890(*&v8[*(v3 + 24)], *(v18 + *(v3 + 24)));
    sub_10020321C(v18, type metadata accessor for TargetTracks);
    sub_10020321C(v8, type metadata accessor for TargetTracks);
    result = sub_100008FA0(v12, &qword_100361B80);
    if (v19)
    {
      return result;
    }

    if (!*(v1 + 32))
    {
      goto LABEL_14;
    }

LABEL_11:
    *(v1 + 40) = 1;
    return result;
  }

  sub_10020321C(v18, type metadata accessor for TargetTracks);
  sub_10020321C(v8, type metadata accessor for TargetTracks);
  v17 = &qword_100361B80;
LABEL_13:
  result = sub_100008FA0(v12, v17);
  if (*(v1 + 32))
  {
    goto LABEL_11;
  }

LABEL_14:
  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF00, &unk_100365610);
  return Subject<>.send()();
}

uint64_t sub_1001FD588(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  v3 = type metadata accessor for TargetTracks(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000040A8(&qword_100361B80);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = sub_1000040A8(&qword_100367BD0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v30 - v11;
  v13 = OBJC_IVAR____TtC8SOSBuddy23ServicePredictionsModel__targetTracks;
  swift_beginAccess();
  v14 = *(v10 + 56);
  v15 = v2 + v13;
  v16 = v2;
  v17 = v32;
  sub_100006C20(v15, v12, &qword_100361B80);
  sub_100006C20(v17, &v12[v14], &qword_100361B80);
  v18 = *(v4 + 48);
  if (v18(v12, 1, v3) == 1)
  {
    if (v18(&v12[v14], 1, v3) == 1)
    {
      return sub_100008FA0(v12, &qword_100361B80);
    }

    goto LABEL_6;
  }

  sub_100006C20(v12, v8, &qword_100361B80);
  if (v18(&v12[v14], 1, v3) == 1)
  {
    sub_10020321C(v8, type metadata accessor for TargetTracks);
LABEL_6:
    v20 = &qword_100367BD0;
LABEL_12:
    sub_100008FA0(v12, v20);
    goto LABEL_13;
  }

  v21 = &v12[v14];
  v22 = v31;
  sub_100204258(v21, v31, type metadata accessor for TargetTracks);
  if ((static Date.== infix(_:_:)() & 1) == 0 || (static Date.== infix(_:_:)() & 1) == 0)
  {
    sub_10020321C(v22, type metadata accessor for TargetTracks);
    sub_10020321C(v8, type metadata accessor for TargetTracks);
    v20 = &qword_100361B80;
    goto LABEL_12;
  }

  v23 = sub_100202890(*&v8[*(v3 + 24)], *(v22 + *(v3 + 24)));
  sub_10020321C(v22, type metadata accessor for TargetTracks);
  sub_10020321C(v8, type metadata accessor for TargetTracks);
  result = sub_100008FA0(v12, &qword_100361B80);
  if (v23)
  {
    return result;
  }

LABEL_13:
  if (v18(v17, 1, v3) == 1)
  {
    if (qword_100353A20 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000F53C(v24, qword_100381CB0);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_23;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "targetTracks changed from: nil to:";
  }

  else
  {
    if (qword_100353A20 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000F53C(v29, qword_100381CB0);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_23;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "targetTracks changed to:";
  }

  _os_log_impl(&_mh_execute_header, v25, v26, v28, v27, 2u);

LABEL_23:

  sub_1001FDAD0();
  result = sub_1001FB8F4();
  if (*(v16 + 32))
  {
    *(v16 + 41) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    return Subject<>.send()();
  }

  return result;
}

void sub_1001FDAD0()
{
  v77 = type metadata accessor for TargetTracks.TimePoint(0);
  v79 = *(v77 - 8);
  v1 = __chkstk_darwin(v77);
  v76 = &v71 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v78 = &v71 - v3;
  v4 = sub_1000040A8(&qword_100361B80);
  __chkstk_darwin(v4 - 8);
  v6 = &v71 - v5;
  v7 = type metadata accessor for TargetTracks(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v71 - v13;
  __chkstk_darwin(v12);
  v16 = &v71 - v15;
  v17 = OBJC_IVAR____TtC8SOSBuddy23ServicePredictionsModel__targetTracks;
  swift_beginAccess();
  sub_100006C20(v0 + v17, v6, &qword_100361B80);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100008FA0(v6, &qword_100361B80);
    if (qword_100353A20 == -1)
    {
LABEL_3:
      v18 = type metadata accessor for Logger();
      sub_10000F53C(v18, qword_100381CB0);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "nil", v21, 2u);
      }

      return;
    }

LABEL_40:
    swift_once();
    goto LABEL_3;
  }

  sub_100204258(v6, v16, type metadata accessor for TargetTracks);
  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = sub_10000F53C(v22, qword_100381CB0);
  sub_1002031B4(v16, v14, type metadata accessor for TargetTracks);
  sub_1002031B4(v16, v11, type metadata accessor for TargetTracks);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  v26 = os_log_type_enabled(v24, v25);
  v82 = v23;
  if (v26)
  {
    v27 = swift_slowAlloc();
    *&v84 = swift_slowAlloc();
    v85 = v84;
    *v27 = 136446466;
    type metadata accessor for Date();
    sub_1002042C0(&qword_100356198, &type metadata accessor for Date);
    LODWORD(v83) = v25;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    *&v81 = v24;
    v30 = v29;
    sub_10020321C(v14, type metadata accessor for TargetTracks);
    v31 = sub_10017C9E8(v28, v30, &v85);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2082;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    sub_10020321C(v11, type metadata accessor for TargetTracks);
    v35 = sub_10017C9E8(v32, v34, &v85);

    *(v27 + 14) = v35;
    v36 = v81;
    _os_log_impl(&_mh_execute_header, v81, v83, "  validFrom: %{public}s, expiresAt: %{public}s, tracks: [", v27, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10020321C(v11, type metadata accessor for TargetTracks);
    sub_10020321C(v14, type metadata accessor for TargetTracks);
  }

  v38 = *(v7 + 24);
  v72 = v16;
  v75 = *&v16[v38];
  v39 = v78;
  v73 = *(v75 + 16);
  if (v73)
  {
    v40 = 0;
    v74 = v75 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
    v83 = "Unexpected target elevation: ";
    *&v37 = 136446210;
    v81 = v37;
    v84 = xmmword_1002811A0;
    while (v40 < *(v75 + 16))
    {
      v41 = *(v79 + 72);
      v80 = v40;
      sub_1002031B4(v74 + v41 * v40, v39, type metadata accessor for TargetTracks.TimePoint);
      v42 = v76;
      sub_1002031B4(v39, v76, type metadata accessor for TargetTracks.TimePoint);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v85 = v46;
        *v45 = v81;
        type metadata accessor for Date();
        sub_1002042C0(&qword_100356198, &type metadata accessor for Date);
        v47 = dispatch thunk of CustomStringConvertible.description.getter();
        v49 = v48;
        sub_10020321C(v42, type metadata accessor for TargetTracks.TimePoint);
        v50 = sub_10017C9E8(v47, v49, &v85);

        *(v45 + 4) = v50;
        _os_log_impl(&_mh_execute_header, v43, v44, "    at: %{public}s, targets:", v45, 0xCu);
        sub_100008964(v46);
      }

      else
      {

        sub_10020321C(v42, type metadata accessor for TargetTracks.TimePoint);
      }

      v51 = *(v39 + *(v77 + 20));
      v52 = *(v51 + 16);
      if (v52)
      {
        v53 = (v51 + 48);
        while (1)
        {
          v57 = *(v53 - 2);
          v59 = *(v53 - 1);
          v58 = *v53;
          sub_1000040A8(&qword_100355E48);
          v60 = swift_allocObject();
          *(v60 + 16) = v84;
          *(v60 + 56) = &type metadata for Int64;
          *(v60 + 64) = &protocol witness table for Int64;
          *(v60 + 32) = v57;
          v61 = v59 * 57.2957795;
          if (COERCE__INT64(fabs(v59 * 57.2957795)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            break;
          }

          if (v61 <= -9.22337204e18)
          {
            goto LABEL_34;
          }

          if (v61 >= 9.22337204e18)
          {
            goto LABEL_35;
          }

          *(v60 + 96) = &type metadata for Int;
          *(v60 + 104) = &protocol witness table for Int;
          *(v60 + 72) = v61;
          v62 = v58 * 57.2957795;
          if (COERCE__INT64(fabs(v58 * 57.2957795)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_36;
          }

          if (v62 <= -9.22337204e18)
          {
            goto LABEL_37;
          }

          if (v62 >= 9.22337204e18)
          {
            goto LABEL_38;
          }

          *(v60 + 136) = &type metadata for Int;
          *(v60 + 144) = &protocol witness table for Int;
          *(v60 + 112) = v62;
          v63 = String.init(format:_:)();
          v65 = v64;
          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v66, v67))
          {
            v54 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            v85 = v55;
            *v54 = v81;
            v56 = sub_10017C9E8(v63, v65, &v85);

            *(v54 + 4) = v56;
            _os_log_impl(&_mh_execute_header, v66, v67, "      %{public}s,", v54, 0xCu);
            sub_100008964(v55);
          }

          else
          {
          }

          v53 += 3;
          if (!--v52)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        break;
      }

LABEL_13:
      v40 = v80 + 1;
      v39 = v78;
      sub_10020321C(v78, type metadata accessor for TargetTracks.TimePoint);
      if (v40 == v73)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

LABEL_30:
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&_mh_execute_header, v68, v69, "  ]", v70, 2u);
  }

  sub_10020321C(v72, type metadata accessor for TargetTracks);
}

uint64_t sub_1001FE5B4(uint64_t a1)
{
  v3 = type metadata accessor for ServicePredictionsModel.SkimmerPrediction(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v25 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000040A8(&qword_100367BB0);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_1000040A8(&qword_100367BC8);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v25 - v11;
  v13 = OBJC_IVAR____TtC8SOSBuddy23ServicePredictionsModel__skimmerPrediction;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_100006C20(v1 + v13, v12, &qword_100367BB0);
  sub_100006C20(a1, &v12[v14], &qword_100367BB0);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) == 1)
  {
    if (v15(&v12[v14], 1, v3) == 1)
    {
      return sub_100008FA0(v12, &qword_100367BB0);
    }

    goto LABEL_6;
  }

  sub_100006C20(v12, v8, &qword_100367BB0);
  if (v15(&v12[v14], 1, v3) == 1)
  {
    sub_10020321C(v8, type metadata accessor for ServicePredictionsModel.SkimmerPrediction);
LABEL_6:
    v17 = &qword_100367BC8;
    goto LABEL_20;
  }

  v18 = v25;
  sub_100204258(&v12[v14], v25, type metadata accessor for ServicePredictionsModel.SkimmerPrediction);
  if ((static Date.== infix(_:_:)() & 1) != 0 && *&v8[*(v3 + 20)] == *(v18 + *(v3 + 20)))
  {
    v19 = *(v3 + 24);
    v20 = &v8[v19];
    v21 = v8[v19 + 24];
    v22 = v18 + v19;
    v23 = *(v22 + 24);
    if (v21)
    {
      goto LABEL_10;
    }

    if (*v20 == *v22)
    {
      v24 = *(v22 + 24);
    }

    else
    {
      v24 = 1;
    }

    if (v24 & 1) == 0 && (static Angle.== infix(_:_:)())
    {
      v23 = static Angle.== infix(_:_:)();
LABEL_10:
      sub_10020321C(v18, type metadata accessor for ServicePredictionsModel.SkimmerPrediction);
      if (v23)
      {
        sub_10020321C(v8, type metadata accessor for ServicePredictionsModel.SkimmerPrediction);
        return sub_100008FA0(v12, &qword_100367BB0);
      }

      goto LABEL_19;
    }
  }

  sub_10020321C(v18, type metadata accessor for ServicePredictionsModel.SkimmerPrediction);
LABEL_19:
  sub_10020321C(v8, type metadata accessor for ServicePredictionsModel.SkimmerPrediction);
  v17 = &qword_100367BB0;
LABEL_20:
  result = sub_100008FA0(v12, v17);
  if (*(v1 + 32))
  {
    *(v1 + 40) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    return Subject<>.send()();
  }

  return result;
}

void sub_1001FE9CC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ServicePredictionsModel.SkimmerPrediction(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v45 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1000040A8(&qword_100367BB0);
  v7 = __chkstk_darwin(v48);
  v47 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v50 = &v45 - v10;
  __chkstk_darwin(v9);
  v12 = &v45 - v11;
  v13 = sub_1000040A8(&qword_100367BC8);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v45 - v15;
  v17 = OBJC_IVAR____TtC8SOSBuddy23ServicePredictionsModel__skimmerPrediction;
  swift_beginAccess();
  v18 = *(v14 + 56);
  v46 = v17;
  v49 = v2;
  sub_100006C20(v2 + v17, v16, &qword_100367BB0);
  sub_100006C20(a1, &v16[v18], &qword_100367BB0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    v20 = v19(&v16[v18], 1, v4);
    v21 = v50;
    if (v20 == 1)
    {
LABEL_3:
      sub_100008FA0(v16, &qword_100367BB0);
      return;
    }

    goto LABEL_6;
  }

  sub_100006C20(v16, v12, &qword_100367BB0);
  v22 = v19(&v16[v18], 1, v4);
  v21 = v50;
  v23 = v12;
  if (v22 == 1)
  {
    sub_10020321C(v12, type metadata accessor for ServicePredictionsModel.SkimmerPrediction);
LABEL_6:
    sub_100008FA0(v16, &qword_100367BC8);
    v24 = v49;
    goto LABEL_20;
  }

  v25 = v45;
  sub_100204258(&v16[v18], v45, type metadata accessor for ServicePredictionsModel.SkimmerPrediction);
  v26 = static Date.== infix(_:_:)();
  v24 = v49;
  if ((v26 & 1) != 0 && *(v23 + *(v4 + 20)) == *(v25 + *(v4 + 20)))
  {
    v27 = *(v4 + 24);
    v28 = (v23 + v27);
    v29 = *(v23 + v27 + 24);
    v30 = v25 + v27;
    v31 = *(v30 + 24);
    if (v29)
    {
      goto LABEL_10;
    }

    if (*v28 == *v30)
    {
      v32 = *(v30 + 24);
    }

    else
    {
      v32 = 1;
    }

    if (v32 & 1) == 0 && (static Angle.== infix(_:_:)())
    {
      v31 = static Angle.== infix(_:_:)();
LABEL_10:
      sub_10020321C(v25, type metadata accessor for ServicePredictionsModel.SkimmerPrediction);
      if (v31)
      {
        sub_10020321C(v23, type metadata accessor for ServicePredictionsModel.SkimmerPrediction);
        goto LABEL_3;
      }

      goto LABEL_19;
    }
  }

  sub_10020321C(v25, type metadata accessor for ServicePredictionsModel.SkimmerPrediction);
LABEL_19:
  sub_10020321C(v23, type metadata accessor for ServicePredictionsModel.SkimmerPrediction);
  sub_100008FA0(v16, &qword_100367BB0);
LABEL_20:
  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_10000F53C(v33, qword_100381CB0);
  sub_100006C20(a1, v21, &qword_100367BB0);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v51 = v50;
    *v36 = 136446466;
    v37 = v47;
    sub_100006C20(v21, v47, &qword_100367BB0);
    LODWORD(v49) = v35;
    v38 = String.init<A>(describing:)();
    v40 = v39;
    sub_100008FA0(v21, &qword_100367BB0);
    v41 = sub_10017C9E8(v38, v40, &v51);

    *(v36 + 4) = v41;
    *(v36 + 12) = 2082;
    sub_100006C20(v24 + v46, v37, &qword_100367BB0);
    v42 = String.init<A>(describing:)();
    v44 = sub_10017C9E8(v42, v43, &v51);

    *(v36 + 14) = v44;
    _os_log_impl(&_mh_execute_header, v34, v49, "_skimmer changed from: %{public}s to: %{public}s", v36, 0x16u);
    swift_arrayDestroy();

    if (*(v24 + 32))
    {
LABEL_24:
      *(v24 + 41) = 1;
      return;
    }
  }

  else
  {

    sub_100008FA0(v21, &qword_100367BB0);
    if (*(v24 + 32))
    {
      goto LABEL_24;
    }
  }

  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF00, &unk_100365610);
  Subject<>.send()();
}

uint64_t sub_1001FF068()
{
  v1 = v0;
  sub_1000040A8(&qword_100361B68);
  swift_allocObject();
  *(v0 + 48) = PassthroughSubject.init()();
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 96) = 1;
  *(v0 + 104) = 0;
  v2 = OBJC_IVAR____TtC8SOSBuddy23ServicePredictionsModel__targetTracks;
  v3 = type metadata accessor for TargetTracks(0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC8SOSBuddy23ServicePredictionsModel__skimmerPrediction;
  v5 = type metadata accessor for ServicePredictionsModel.SkimmerPrediction(0);
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  sub_1000040A8(&unk_100365610);
  swift_allocObject();
  *(v1 + 16) = PassthroughSubject.init()();
  swift_allocObject();
  *(v1 + 24) = PassthroughSubject.init()();
  return v1;
}

uint64_t sub_1001FF1C0()
{

  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy23ServicePredictionsModel__targetTracks, &qword_100361B80);
  return sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy23ServicePredictionsModel__skimmerPrediction, &qword_100367BB0);
}

uint64_t sub_1001FF224()
{

  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy23ServicePredictionsModel__targetTracks, &qword_100361B80);
  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy23ServicePredictionsModel__skimmerPrediction, &qword_100367BB0);

  return swift_deallocClassInstance();
}

void sub_1001FF31C()
{
  sub_1001EC5E4(319, &qword_100367620, type metadata accessor for TargetTracks);
  if (v0 <= 0x3F)
  {
    sub_1001EC5E4(319, &unk_100367628, type metadata accessor for ServicePredictionsModel.SkimmerPrediction);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1001FF488()
{
  type metadata accessor for DispatchTime();
  if (v0 <= 0x3F)
  {
    sub_1001EC5E4(319, &qword_100362DE0, &type metadata accessor for DispatchTime);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1001FF580()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1001FF600(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001FF680(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1001FF6F0()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_1001FF77C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001FF77C()
{
  if (!qword_1003679A0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1003679A0);
    }
  }
}

uint64_t sub_1001FF7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ConnectionClosed(0);
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

uint64_t sub_1001FF8B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ConnectionClosed(0);
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

uint64_t sub_1001FF988()
{
  result = type metadata accessor for ConnectionClosed(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PreventSuspensionAssertion();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001FFA1C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1001FFA64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001FFAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for TransmissionProgress(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1001FFBF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for TransmissionProgress(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1001FFD00()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TransmissionProgress(319);
    if (v2 <= 0x3F)
    {
      result = sub_10001D630(319, &qword_100356B50);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1001FFDC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransmissionProgress(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001FFE40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransmissionProgress(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1001FFEB0()
{
  result = type metadata accessor for TransmissionProgress(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1001FFF70()
{
  result = qword_100367B98;
  if (!qword_100367B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100367B98);
  }

  return result;
}

unint64_t sub_1001FFFC8()
{
  result = qword_100367BA0;
  if (!qword_100367BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100367BA0);
  }

  return result;
}

unint64_t sub_100200020()
{
  result = qword_100367BA8;
  if (!qword_100367BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100367BA8);
  }

  return result;
}

uint64_t sub_100200074()
{
  sub_100201ABC();
  swift_beginAccess();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  *(v0 + 96) = xmmword_100279380;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  sub_100026380(v1, v2);
  *(v0 + 122) = 2;
  v3 = *(v0 + 123);
  if (*(v0 + 123) != 2)
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  *(v0 + 123) = 2;
  sub_1002006DC(v3);
  v4 = *(v0 + 136);
  sub_100201ABC();
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  *(v0 + 96) = xmmword_100279380;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  sub_100026380(v5, v6);
  if (*(v0 + 136) != 2)
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  *(v0 + 136) = 2;
  return sub_100201278(v4);
}

uint64_t sub_100200214()
{
  sub_100201D90(sub_1000269BC, sub_1000269B8, sub_10020068C);
  swift_beginAccess();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  *(v0 + 96) = xmmword_100279380;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  sub_100026380(v1, v2);
  *(v0 + 121) = 2;
  v3 = *(v0 + 122);
  if (v3 != 2)
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  *(v0 + 122) = 2;
  sub_1002009B0(v3);
  v4 = *(v0 + 136);
  sub_100201D90(sub_1000269BC, sub_1000269B8, sub_10020068C);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  *(v0 + 96) = xmmword_100279380;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  sub_100026380(v5, v6);
  if (*(v0 + 136) != 2)
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  *(v0 + 136) = 2;
  return sub_10020154C(v4);
}

uint64_t sub_100200428()
{
  sub_100201D90(sub_1000269BC, sub_1000269B8, sub_10020068C);
  swift_beginAccess();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  *(v0 + 96) = xmmword_100279380;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  sub_100026380(v1, v2);
  *(v0 + 121) = 2;
  v3 = *(v0 + 122);
  if (v3 != 9)
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  *(v0 + 122) = 9;
  sub_100200C70(v3);
  v4 = *(v0 + 136);
  sub_100201D90(sub_1000269BC, sub_1000269B8, sub_10020068C);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  *(v0 + 96) = xmmword_100279380;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  sub_100026380(v5, v6);
  if (*(v0 + 136) != 9)
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  *(v0 + 136) = 9;
  return sub_10020180C(v4);
}

uint64_t sub_1002006DC(uint64_t result)
{
  v2 = v1;
  v19 = result;
  v3 = *(v1 + 123);
  if (*(v1 + 123) == 2)
  {
    if (result == 2)
    {
      return result;
    }
  }

  else if (result != 2 && ((v3 ^ result) & 1) == 0 && ((result & 0x100) == 0) != (v3 & 0x100) >> 8)
  {
    return result;
  }

  v4 = *(v1 + 128);
  v5 = __CFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_15;
  }

  *(v1 + 128) = v6;
  if (qword_100353A10 != -1)
  {
LABEL_15:
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381C80);
  swift_retain_n();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v10 = 136446978;
    *(v10 + 4) = sub_10017C9E8(v2[8], v2[9], &v18);
    *(v10 + 12) = 2082;
    sub_1000040A8(&qword_100356098);
    v11 = String.init<A>(describing:)();
    v13 = sub_10017C9E8(v11, v12, &v18);

    *(v10 + 14) = v13;
    *(v10 + 22) = 2082;
    v14 = String.init<A>(describing:)();
    v16 = sub_10017C9E8(v14, v15, &v18);

    *(v10 + 24) = v16;
    *(v10 + 32) = 2048;
    v17 = v2[16];

    *(v10 + 34) = v17;

    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s state changed from: %{public}s to: %{public}s (generation = %llu)", v10, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF00, &unk_100365610);
  Subject<>.send()();
  return PassthroughSubject.send(_:)();
}

uint64_t sub_1002009B0(uint64_t result)
{
  v2 = v1;
  v19 = result;
  v3 = *(v1 + 122);
  if (v3 == 2)
  {
    if (result == 2)
    {
      return result;
    }
  }

  else if (result != 2 && ((v3 ^ result) & 1) == 0)
  {
    return result;
  }

  v4 = *(v1 + 128);
  v5 = __CFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_14;
  }

  *(v1 + 128) = v6;
  if (qword_100353A10 != -1)
  {
LABEL_14:
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381C80);
  swift_retain_n();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v10 = 136446978;
    *(v10 + 4) = sub_10017C9E8(v2[8], v2[9], &v18);
    *(v10 + 12) = 2082;
    sub_1000040A8(&unk_1003655D0);
    v11 = String.init<A>(describing:)();
    v13 = sub_10017C9E8(v11, v12, &v18);

    *(v10 + 14) = v13;
    *(v10 + 22) = 2082;
    v14 = String.init<A>(describing:)();
    v16 = sub_10017C9E8(v14, v15, &v18);

    *(v10 + 24) = v16;
    *(v10 + 32) = 2048;
    v17 = v2[16];

    *(v10 + 34) = v17;

    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s state changed from: %{public}s to: %{public}s (generation = %llu)", v10, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF00, &unk_100365610);
  Subject<>.send()();
  return PassthroughSubject.send(_:)();
}

uint64_t sub_100200C70(uint64_t result)
{
  v2 = v1;
  v19 = result;
  v3 = *(v1 + 122);
  if (v3 == 9)
  {
    if (result == 9)
    {
      return result;
    }
  }

  else if (v3 == result)
  {
    return result;
  }

  v4 = *(v1 + 128);
  v5 = __CFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_13;
  }

  *(v1 + 128) = v6;
  if (qword_100353A10 != -1)
  {
LABEL_13:
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381C80);
  swift_retain_n();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v10 = 136446978;
    *(v10 + 4) = sub_10017C9E8(v2[8], v2[9], &v18);
    *(v10 + 12) = 2082;
    sub_1000040A8(&qword_1003560B8);
    v11 = String.init<A>(describing:)();
    v13 = sub_10017C9E8(v11, v12, &v18);

    *(v10 + 14) = v13;
    *(v10 + 22) = 2082;
    v14 = String.init<A>(describing:)();
    v16 = sub_10017C9E8(v14, v15, &v18);

    *(v10 + 24) = v16;
    *(v10 + 32) = 2048;
    v17 = v2[16];

    *(v10 + 34) = v17;

    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s state changed from: %{public}s to: %{public}s (generation = %llu)", v10, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF00, &unk_100365610);
  Subject<>.send()();
  return PassthroughSubject.send(_:)();
}

uint64_t sub_100200F20(int a1)
{
  sub_100201ABC();
  swift_beginAccess();
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  *(v1 + 96) = xmmword_100279380;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  result = sub_100026380(v3, v4);
  v6 = *(v1 + 136);
  if (*(v1 + 136) == 2)
  {
    if (a1 == 2)
    {
      return result;
    }

LABEL_7:
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    return Subject<>.send()();
  }

  if (a1 == 2 || ((v6 ^ a1) & 1) != 0 || ((a1 & 0x100) == 0) == (v6 & 0x100) >> 8)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100201028(int a1)
{
  sub_100201D90(sub_1000269BC, sub_1000269B8, sub_10020068C);
  swift_beginAccess();
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  *(v1 + 96) = xmmword_100279380;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  result = sub_100026380(v3, v4);
  v6 = *(v1 + 136);
  if (v6 == 2)
  {
    if (a1 == 2)
    {
      return result;
    }

LABEL_6:
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    return Subject<>.send()();
  }

  if (a1 == 2 || ((v6 ^ a1) & 1) != 0)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100201158(unsigned __int8 a1)
{
  v2 = a1;
  sub_100201D90(sub_1000269BC, sub_1000269B8, sub_10020068C);
  swift_beginAccess();
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  *(v1 + 96) = xmmword_100279380;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  result = sub_100026380(v3, v4);
  v6 = *(v1 + 136);
  if (v6 != 9)
  {
    if (v6 == v2)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (v2 != 9)
  {
LABEL_5:
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    return Subject<>.send()();
  }

  return result;
}

uint64_t sub_100201278(uint64_t result)
{
  v2 = v1;
  v19 = result;
  v3 = *(v1 + 136);
  if (*(v1 + 136) == 2)
  {
    if (result == 2)
    {
      return result;
    }
  }

  else if (result != 2 && ((v3 ^ result) & 1) == 0 && ((result & 0x100) == 0) != (v3 & 0x100) >> 8)
  {
    return result;
  }

  v4 = *(v1 + 144);
  v5 = __CFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_15;
  }

  *(v1 + 144) = v6;
  if (qword_100353A10 != -1)
  {
LABEL_15:
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381C80);
  swift_retain_n();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v10 = 136446978;
    *(v10 + 4) = sub_10017C9E8(v2[8], v2[9], &v18);
    *(v10 + 12) = 2082;
    sub_1000040A8(&qword_100356098);
    v11 = String.init<A>(describing:)();
    v13 = sub_10017C9E8(v11, v12, &v18);

    *(v10 + 14) = v13;
    *(v10 + 22) = 2082;
    v14 = String.init<A>(describing:)();
    v16 = sub_10017C9E8(v14, v15, &v18);

    *(v10 + 24) = v16;
    *(v10 + 32) = 2048;
    v17 = v2[18];

    *(v10 + 34) = v17;

    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s (with hysteresis) state changed from: %{public}s to: %{public}s (generation = %llu)", v10, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF00, &unk_100365610);
  Subject<>.send()();
  return PassthroughSubject.send(_:)();
}

uint64_t sub_10020154C(uint64_t result)
{
  v2 = v1;
  v19 = result;
  v3 = *(v1 + 136);
  if (v3 == 2)
  {
    if (result == 2)
    {
      return result;
    }
  }

  else if (result != 2 && ((v3 ^ result) & 1) == 0)
  {
    return result;
  }

  v4 = *(v1 + 144);
  v5 = __CFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_14;
  }

  *(v1 + 144) = v6;
  if (qword_100353A10 != -1)
  {
LABEL_14:
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381C80);
  swift_retain_n();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v10 = 136446978;
    *(v10 + 4) = sub_10017C9E8(v2[8], v2[9], &v18);
    *(v10 + 12) = 2082;
    sub_1000040A8(&unk_1003655D0);
    v11 = String.init<A>(describing:)();
    v13 = sub_10017C9E8(v11, v12, &v18);

    *(v10 + 14) = v13;
    *(v10 + 22) = 2082;
    v14 = String.init<A>(describing:)();
    v16 = sub_10017C9E8(v14, v15, &v18);

    *(v10 + 24) = v16;
    *(v10 + 32) = 2048;
    v17 = v2[18];

    *(v10 + 34) = v17;

    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s (with hysteresis) state changed from: %{public}s to: %{public}s (generation = %llu)", v10, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF00, &unk_100365610);
  Subject<>.send()();
  return PassthroughSubject.send(_:)();
}

uint64_t sub_10020180C(uint64_t result)
{
  v2 = v1;
  v19 = result;
  v3 = *(v1 + 136);
  if (v3 == 9)
  {
    if (result == 9)
    {
      return result;
    }
  }

  else if (v3 == result)
  {
    return result;
  }

  v4 = *(v1 + 144);
  v5 = __CFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_13;
  }

  *(v1 + 144) = v6;
  if (qword_100353A10 != -1)
  {
LABEL_13:
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381C80);
  swift_retain_n();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v10 = 136446978;
    *(v10 + 4) = sub_10017C9E8(v2[8], v2[9], &v18);
    *(v10 + 12) = 2082;
    sub_1000040A8(&qword_1003560B8);
    v11 = String.init<A>(describing:)();
    v13 = sub_10017C9E8(v11, v12, &v18);

    *(v10 + 14) = v13;
    *(v10 + 22) = 2082;
    v14 = String.init<A>(describing:)();
    v16 = sub_10017C9E8(v14, v15, &v18);

    *(v10 + 24) = v16;
    *(v10 + 32) = 2048;
    v17 = v2[18];

    *(v10 + 34) = v17;

    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s (with hysteresis) state changed from: %{public}s to: %{public}s (generation = %llu)", v10, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF00, &unk_100365610);
  Subject<>.send()();
  return PassthroughSubject.send(_:)();
}

void sub_100201ABC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v19[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_7;
  }

  swift_beginAccess();
  v7 = v1[13];
  if (v7 == 1)
  {
    return;
  }

  v8 = v1[12];
  sub_100026394(v8, v1[13]);
  swift_unknownObjectRetain();
  sub_100026380(v8, v7);
  if (!v7)
  {
    return;
  }

  swift_unknownObjectRelease();
  v9 = sub_10020063C();
  v12 = *(v10 + 8);
  v11 = (v10 + 8);
  if (v12 != 1)
  {
    *v11 = 0;
    v11[1] = 0;
    swift_unknownObjectRelease();
  }

  (v9)(v19, 0);
  if (qword_100353A10 != -1)
  {
    goto LABEL_12;
  }

LABEL_7:
  v13 = type metadata accessor for Logger();
  sub_10000F53C(v13, qword_100381C80);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19[0] = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_10017C9E8(v1[8], v1[9], v19);
    _os_log_impl(&_mh_execute_header, v14, v15, "Deleted %{public}s hysteresis event", v16, 0xCu);
    sub_100008964(v17);
  }
}

void sub_100201D90(void (*a1)(uint64_t, void, uint64_t, uint64_t), void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a3)(uint64_t *))
{
  v7 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v27[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10);
  *v11 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v12 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_7;
  }

  swift_beginAccess();
  v13 = *(v7 + 104);
  if (v13 == 1)
  {
    return;
  }

  v14 = *(v7 + 112);
  v15 = *(v7 + 96);
  v16 = *(v7 + 120);
  a1(v15, *(v7 + 104), v14, v16);
  swift_unknownObjectRetain();
  a2(v15, v13, v14, v16);
  if (!v13)
  {
    return;
  }

  swift_unknownObjectRelease();
  v17 = a3(v27);
  v20 = *(v18 + 8);
  v19 = (v18 + 8);
  if (v20 != 1)
  {
    *v19 = 0;
    v19[1] = 0;
    swift_unknownObjectRelease();
  }

  v17(v27, 0);
  if (qword_100353A10 != -1)
  {
    goto LABEL_12;
  }

LABEL_7:
  v21 = type metadata accessor for Logger();
  sub_10000F53C(v21, qword_100381C80);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27[0] = v25;
    *v24 = 136446210;
    *(v24 + 4) = sub_10017C9E8(*(v7 + 64), *(v7 + 72), v27);
    _os_log_impl(&_mh_execute_header, v22, v23, "Deleted %{public}s hysteresis event", v24, 0xCu);
    sub_100008964(v25);
  }
}

uint64_t sub_100202084(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_100202114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v57 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000040A8(&qword_100356188);
  v8 = __chkstk_darwin(v7 - 8);
  v59 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v52 - v10;
  v65 = sub_1000040A8(&qword_10035E3D0);
  v12 = __chkstk_darwin(v65);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v60 = &v52 - v15;
  v58 = type metadata accessor for ServiceOutages.Outage(0);
  v16 = __chkstk_darwin(v58);
  v67 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v64 = &v52 - v19;
  v20 = *(a1 + 16);
  if (v20 != *(a2 + 16))
  {
    return 0;
  }

  if (!v20 || a1 == a2)
  {
    return 1;
  }

  v21 = *(a1 + 16);
  v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v23 = a1 + v22;
  v24 = a2 + v22;
  v63 = (v5 + 48);
  v54 = (v5 + 32);
  v55 = v14;
  v56 = (v5 + 8);
  v25 = *(v18 + 72);
  v52 = v11;
  v53 = v25;
  v26 = v60;
  v27 = v64;
  v28 = v21;
  v66 = v4;
  while (1)
  {
    result = sub_1002031B4(v23, v27, type metadata accessor for ServiceOutages.Outage);
    if (!v28)
    {
      break;
    }

    v61 = v28;
    v30 = v67;
    sub_1002031B4(v24, v67, type metadata accessor for ServiceOutages.Outage);
    v31 = *(v65 + 48);
    v32 = v27;
    sub_100006C20(v27, v26, &qword_100356188);
    sub_100006C20(v30, v26 + v31, &qword_100356188);
    v33 = *v63;
    v34 = (*v63)(v26, 1, v4);
    v62 = v24;
    if (v34 == 1)
    {
      if (v33(v26 + v31, 1, v4) != 1)
      {
        goto LABEL_23;
      }

      sub_100008FA0(v26, &qword_100356188);
      v4 = v66;
    }

    else
    {
      v35 = v52;
      sub_100006C20(v26, v52, &qword_100356188);
      if (v33(v26 + v31, 1, v4) == 1)
      {
        v51 = v35;
        goto LABEL_21;
      }

      v36 = v26 + v31;
      v37 = v57;
      (*v54)(v57, v36, v4);
      sub_1002042C0(&unk_10035C9E0, &type metadata accessor for Date);
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      v4 = v66;
      v39 = v38;
      v40 = *v56;
      v41 = v37;
      v26 = v60;
      (*v56)(v41, v66);
      v40(v35, v4);
      sub_100008FA0(v26, &qword_100356188);
      v32 = v64;
      if ((v39 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v42 = *(v58 + 20);
    v43 = *(v65 + 48);
    v44 = v55;
    sub_100006C20(v32 + v42, v55, &qword_100356188);
    sub_100006C20(v67 + v42, v44 + v43, &qword_100356188);
    if (v33(v44, 1, v4) == 1)
    {
      if (v33(v44 + v43, 1, v4) != 1)
      {
        v26 = v44;
        v32 = v64;
        goto LABEL_23;
      }

      sub_100008FA0(v44, &qword_100356188);
      sub_10020321C(v67, type metadata accessor for ServiceOutages.Outage);
      v27 = v64;
      sub_10020321C(v64, type metadata accessor for ServiceOutages.Outage);
    }

    else
    {
      sub_100006C20(v44, v59, &qword_100356188);
      if (v33(v44 + v43, 1, v4) == 1)
      {
        v51 = v59;
        v26 = v44;
LABEL_21:
        v32 = v64;
        (*v56)(v51, v4);
LABEL_23:
        sub_100008FA0(v26, &qword_10035E3D0);
LABEL_24:
        sub_10020321C(v67, type metadata accessor for ServiceOutages.Outage);
        sub_10020321C(v32, type metadata accessor for ServiceOutages.Outage);
        return 0;
      }

      v45 = v57;
      (*v54)(v57, v44 + v43, v4);
      sub_1002042C0(&unk_10035C9E0, &type metadata accessor for Date);
      v46 = v59;
      v47 = dispatch thunk of static Equatable.== infix(_:_:)();
      v4 = v66;
      v48 = v47;
      v49 = *v56;
      v50 = v45;
      v26 = v60;
      (*v56)(v50, v66);
      v49(v46, v4);
      sub_100008FA0(v44, &qword_100356188);
      sub_10020321C(v67, type metadata accessor for ServiceOutages.Outage);
      v27 = v64;
      sub_10020321C(v64, type metadata accessor for ServiceOutages.Outage);
      if ((v48 & 1) == 0)
      {
        return 0;
      }
    }

    v24 = v62 + v53;
    v23 += v53;
    v28 = v61 - 1;
    if (v61 == 1)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100202890(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TargetTracks.TimePoint(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v11 = &v26 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v13 = 0;
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = a1 + v14;
  v28 = v8;
  v29 = a2 + v14;
  v16 = *(v9 + 72);
  v26 = v16;
  v27 = v15;
  while (1)
  {
    result = sub_1002031B4(v15 + v16 * v13, v11, type metadata accessor for TargetTracks.TimePoint);
    if (v13 == v12)
    {
      break;
    }

    sub_1002031B4(v29 + v16 * v13, v7, type metadata accessor for TargetTracks.TimePoint);
    result = static Date.== infix(_:_:)();
    if ((result & 1) == 0 || (v18 = *(v28 + 20), v19 = *&v11[v18], v20 = *&v7[v18], v21 = *(v19 + 16), v21 != *(v20 + 16)))
    {
LABEL_22:
      sub_10020321C(v7, type metadata accessor for TargetTracks.TimePoint);
      sub_10020321C(v11, type metadata accessor for TargetTracks.TimePoint);
      return 0;
    }

    if (v21)
    {
      v22 = v19 == v20;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = 0;
      v24 = v19 + 48;
      v25 = v20 + 48;
      while (v23 < *(v19 + 16))
      {
        if (v23 >= *(v20 + 16))
        {
          goto LABEL_26;
        }

        if (*(v24 - 16) != *(v25 - 16))
        {
          goto LABEL_22;
        }

        if ((static Angle.== infix(_:_:)() & 1) == 0)
        {
          goto LABEL_22;
        }

        result = static Angle.== infix(_:_:)();
        if ((result & 1) == 0)
        {
          goto LABEL_22;
        }

        ++v23;
        v24 += 24;
        v25 += 24;
        if (v21 == v23)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
      break;
    }

LABEL_5:
    ++v13;
    sub_10020321C(v7, type metadata accessor for TargetTracks.TimePoint);
    sub_10020321C(v11, type metadata accessor for TargetTracks.TimePoint);
    result = 1;
    v16 = v26;
    v15 = v27;
    if (v13 == v12)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100202B38(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = a1 + 48;
    for (i = a2 + 48; *(v3 - 16) == *(i - 16) && (static Angle.== infix(_:_:)() & 1) != 0 && (static Angle.== infix(_:_:)() & 1) != 0; i += 24)
    {
      v3 += 24;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_100202BDC(void *a1, void *a2)
{
  v2 = a1[2];
  if (v2 == a2[2])
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = a1 + 4;
    v4 = a2 + 4;
    v5 = a1[4];
    v6 = a2[4];
    v7 = *(v5 + 16);
    if (v7 == *(v6 + 16))
    {
      v8 = a1 + 5;
      v9 = a2 + 5;
      for (i = 1; ; ++i)
      {
        v11 = *v8;
        v12 = *v9;

        if (v7)
        {
          if (v5 != v6)
          {
            break;
          }
        }

LABEL_16:
        v15 = sub_1001DDE34(v11, v12);

        if ((v15 & 1) == 0)
        {
          return 0;
        }

        if (i == v2)
        {
          return 1;
        }

        v16 = &v3[2 * i];
        v5 = *v16;
        v17 = &v4[2 * i];
        v6 = *v17;
        v7 = *(*v16 + 16);
        if (v7 != *(*v17 + 16))
        {
          return 0;
        }

        v8 = v16 + 1;
        v9 = v17 + 1;
      }

      v13 = 0;
      while (1)
      {
        v14 = *(v5 + v13 + 32) == *(v6 + v13 + 32) && *(v5 + v13 + 40) == *(v6 + v13 + 40);
        if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          break;
        }

        v13 += 16;
        if (!--v7)
        {
          goto LABEL_16;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_100202D78(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 64);
    for (i = (a2 + 64); *(v3 - 4) == *(i - 4) && *(v3 - 24) == *(i - 24); i += 5)
    {
      v6 = *(v3 - 2);
      v7 = *(i - 2);
      if (v6)
      {
        if (!v7)
        {
          return 0;
        }

        v8 = *(v3 - 1);
        v9 = *v3;
        v11 = *(i - 1);
        v10 = *i;
        v12 = *(v6 + 16) == *(v7 + 16) && *(v6 + 24) == *(v7 + 24);
        if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }

        if (v9)
        {
          if (!v10 || (v8 != v11 || v9 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          if (v10)
          {
            sub_1000C70B0(v7);

            return 0;
          }

          sub_1000C70B0(v7);
        }
      }

      else if (v7)
      {
        return 0;
      }

      v3 += 5;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_100202EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, char a9)
{
  sub_1000040A8(&unk_100365610);
  swift_allocObject();
  *(a6 + 16) = PassthroughSubject.init()();
  swift_allocObject();
  *(a6 + 24) = PassthroughSubject.init()();
  sub_1000040A8(a7);
  swift_allocObject();
  *(a6 + 32) = PassthroughSubject.init()();
  swift_allocObject();
  v15 = PassthroughSubject.init()();
  *(a6 + 120) = 512;
  *(a6 + 96) = xmmword_100279380;
  *(a6 + 112) = 0;
  *(a6 + 122) = a9;
  *(a6 + 128) = 0;
  *(a6 + 136) = a9;
  *(a6 + 144) = 0;
  *(a6 + 40) = v15;
  *(a6 + 48) = a1;
  *(a6 + 56) = &off_100339838;
  *(a6 + 64) = a2;
  *(a6 + 72) = a3;
  *(a6 + 80) = a4;
  *(a6 + 88) = a5;
  return a6;
}

uint64_t sub_100202FFC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v9 = v4 == v6 && v5 == v7;
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = *(a1 + 72);
  v11 = *(a2 + 72);
  if (v10)
  {
    if (!v11 || (sub_100202084(v10, v11) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = *(a1 + 104);
  v13 = *(a2 + 104);
  if (!v12)
  {
    if (!v13)
    {
      goto LABEL_21;
    }

    return 0;
  }

  if (!v13 || (*(a1 + 96) != *(a2 + 96) || v12 != v13) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v14 = *(a1 + 48);
  v15 = *(a1 + 64);
  v16 = *(a2 + 48);
  v17 = *(a2 + 64);
  if (sub_1001DDE34(v14, v16))
  {
    return v15 ^ v17 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100203108(uint64_t a1, uint64_t a2)
{
  if (static Date.== infix(_:_:)())
  {
    v4 = type metadata accessor for ServicePredictionsModel.SkimmerPrediction(0);
    if (*(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20)))
    {
      v5 = *(v4 + 24);
      v6 = (a1 + v5);
      v7 = *(a1 + v5 + 24);
      v8 = a2 + v5;
      v9 = *(v8 + 24);
      if (v7)
      {
        if (*(v8 + 24))
        {
          return 1;
        }
      }

      else
      {
        if (*v6 != *v8)
        {
          v9 = 1;
        }

        if (v9 & 1) == 0 && (static Angle.== infix(_:_:)() & 1) != 0 && (static Angle.== infix(_:_:)())
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1002031B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10020321C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10020327C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000040A8(&qword_100356518);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v40 - v11;
  __chkstk_darwin(v10);
  v14 = &v40 - v13;
  v15 = v1[10];
  if (!v15)
  {
    v1[14] = 0;

    (*(v3 + 56))(v9, 1, 1, v2);
    v26 = OBJC_IVAR____TtCC8SOSBuddy21GuidanceMessagesModel13NudgeMessages__lastProducedExtraDetailsAt;
    swift_beginAccess();
    sub_1000C6F74(v9, v1 + v26, &qword_100356518);
    goto LABEL_6;
  }

  v41 = v5;
  v42 = v9;
  v44 = v15;
  v16 = v1[11];
  v17 = OBJC_IVAR____TtCC8SOSBuddy21GuidanceMessagesModel13NudgeMessages__lastProducedExtraDetailsAt;
  swift_beginAccess();
  sub_100006C20(v1 + v17, v14, &qword_100356518);
  v18 = *(v3 + 48);
  v19 = v18(v14, 1, v2);
  v45 = v2;
  v20 = v19;
  v43 = v16;

  v21 = sub_100008FA0(v14, &qword_100356518);
  v22 = v20 == 1;
  v23 = v45;
  if (v22)
  {
LABEL_4:
    v24 = v44;
    v1[14] = v44(v21);

    v25 = v42;
    static DispatchTime.now()();
    sub_1000949F4(v24);
    (*(v3 + 56))(v25, 0, 1, v23);
    swift_beginAccess();
    sub_1000C6F74(v25, v1 + v17, &qword_100356518);
LABEL_6:
    swift_endAccess();
    return v1[14];
  }

  v27 = v3;
  v28 = v41;
  static DispatchTime.now()();
  sub_100006C20(v1 + v17, v12, &qword_100356518);
  result = v18(v12, 1, v23);
  if (result == 1)
  {
    goto LABEL_16;
  }

  v30 = DispatchTime.uptimeNanoseconds.getter();
  if (DispatchTime.uptimeNanoseconds.getter() >= v30)
  {
    v38 = *(v27 + 8);
    v39 = v45;
    v38(v28, v45);
    v38(v12, v39);
LABEL_14:
    sub_1000949F4(v44);
    return v1[14];
  }

  v31 = DispatchTime.uptimeNanoseconds.getter();
  v32 = DispatchTime.uptimeNanoseconds.getter();
  v33 = *(v27 + 8);
  v34 = v28;
  v35 = v45;
  result = v33(v34, v45);
  v36 = v31 >= v32;
  v37 = v31 - v32;
  if (v36)
  {
    v21 = v33(v12, v35);
    v23 = v35;
    v3 = v27;
    if (v37 < 0x3BAA0C40)
    {
      goto LABEL_14;
    }

    goto LABEL_4;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_100203690(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_1003638A8);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  sub_100006C20(a1, &v24 - v6, &qword_1003638A8);
  v8 = type metadata accessor for DeviceOrientationError(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v7, 1, v8) == 1)
  {
    sub_100008FA0(v7, &qword_1003638A8);
  }

  else
  {
    v10 = sub_1001938F8();
    v12 = v11;
    sub_10020321C(v7, type metadata accessor for DeviceOrientationError);
    if (v12)
    {
      goto LABEL_5;
    }
  }

  v10 = 0;
  v12 = 0xE000000000000000;
LABEL_5:
  sub_100006C20(a1, v4, &qword_1003638A8);
  if (v9(v4, 1, v8) == 1)
  {
    sub_100008FA0(v4, &qword_1003638A8);
  }

  else
  {
    v13 = sub_1001937BC();
    v15 = v14;
    sub_10020321C(v4, type metadata accessor for DeviceOrientationError);
    if (v15)
    {
      goto LABEL_9;
    }
  }

  v13 = 0;
  v15 = 0xE000000000000000;
LABEL_9:
  v16 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v16 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v17 = sub_100234028(&off_100323988);
    type metadata accessor for GuidanceMessagesModel.NudgeMessages(0);
    swift_allocObject();
    v18 = sub_1001F3E88(v10, v12, v10, v12, v13, v15, v17, 0, 1);
  }

  else
  {

    v19 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v19 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (!v19)
    {

      return 0;
    }

    v20 = sub_100234028(&off_100323960);
    type metadata accessor for GuidanceMessagesModel.NudgeMessages(0);
    v18 = swift_allocObject();
    *(v18 + 112) = 0;
    v21 = OBJC_IVAR____TtCC8SOSBuddy21GuidanceMessagesModel13NudgeMessages__lastProducedExtraDetailsAt;
    v22 = type metadata accessor for DispatchTime();
    (*(*(v22 - 8) + 56))(v18 + v21, 1, 1, v22);
    *(v18 + 16) = v13;
    *(v18 + 24) = v15;
    *(v18 + 32) = v13;
    *(v18 + 40) = v15;
    *(v18 + 72) = 0u;
    *(v18 + 88) = 0u;
    *(v18 + 104) = 0;
    *(v18 + 48) = v20;
    *(v18 + 56) = 0;
    *(v18 + 64) = 1;
  }

  return v18;
}

uint64_t *sub_1002039DC(uint64_t *result, double a2)
{
  v2 = round(a2);
  if (v2 <= 30.0)
  {
    v12 = *result;

    return v12;
  }

  v3 = floor(v2 + 0.5);
  v4 = v3 - floor(v3 / 60.0) * 60.0;
  v5 = 0.0;
  if (v4 > 30.0)
  {
    v5 = 60.0;
  }

  v6 = floor((v3 - v4 + v5) / 60.0);
  v7 = floor(v6 / 60.0);
  v8 = v6 - v7 * 60.0;
  if (v8 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v7 < 9.22337204e18)
  {
    v9 = v8;
    v10 = v7;
    if (v7 <= 0)
    {
      sub_1000040A8(&qword_100355E48);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_100279160;
      *(v13 + 56) = &type metadata for Int64;
      *(v13 + 64) = &protocol witness table for Int64;
      *(v13 + 32) = v9;
    }

    else
    {
      sub_1000040A8(&qword_100355E48);
      v11 = swift_allocObject();
      if (v9 <= 0)
      {
        *(v11 + 16) = xmmword_100279160;
        *(v11 + 56) = &type metadata for Int64;
        *(v11 + 64) = &protocol witness table for Int64;
        *(v11 + 32) = v10;
      }

      else
      {
        *(v11 + 16) = xmmword_100279170;
        *(v11 + 56) = &type metadata for Int64;
        *(v11 + 64) = &protocol witness table for Int64;
        *(v11 + 32) = v10;
        *(v11 + 96) = &type metadata for Int64;
        *(v11 + 104) = &protocol witness table for Int64;
        *(v11 + 72) = v9;
      }
    }

    v12 = static String.localizedStringWithFormat(_:_:)();

    return v12;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_100203C2C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = result + 64;
    v3 = 1 << *(result + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(result + 64);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    v19 = _swiftEmptyArrayStorage;
    while (v5)
    {
LABEL_10:
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = (v7 << 9) | (8 * v9);
      v11 = *(*(v1 + 56) + v10);
      if (*(v11 + 16))
      {
        v12 = *(*(v1 + 48) + v10);

        v13 = [v12 integerValue];
        v21 = &_swiftEmptySetSingleton;
        if (v13)
        {
          sub_1000FC914(&v20, 0);
        }

        if ((v13 & 8) != 0)
        {
          sub_1000FC914(&v20, 1);
        }

        if ((v13 & 4) != 0)
        {
          sub_1000FC914(&v20, 2);
        }

        if ((v13 & 2) != 0)
        {
          sub_1000FC914(&v20, 3);
        }

        if ((v13 & 0x30) != 0)
        {
          sub_1000FC914(&v20, 4);
        }

        if ((v13 & 0x20) != 0)
        {
          sub_1000FC914(&v20, 5);
        }

        v14 = v21;
        if (v21[2])
        {

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_10017C5B8(0, *(v19 + 2) + 1, 1, v19);
            v19 = result;
          }

          v15 = v19;
          v17 = *(v19 + 2);
          v16 = *(v19 + 3);
          if (v17 >= v16 >> 1)
          {
            result = sub_10017C5B8((v16 > 1), v17 + 1, 1, v19);
            v15 = result;
          }

          *(v15 + 2) = v17 + 1;
          v19 = v15;
          v18 = &v15[16 * v17];
          *(v18 + 4) = v11;
          *(v18 + 5) = v14;
        }

        else
        {
        }
      }
    }

    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v6)
      {

        return v19;
      }

      v5 = *(v2 + 8 * v8);
      ++v7;
      if (v5)
      {
        v7 = v8;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100203EC8(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 3)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 4)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

uint64_t sub_100203F24(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 3)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

uint64_t sub_100203F70(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a3 & 1) != 0 || (a5)
  {
    return 0;
  }

  v32[1] = v8;
  v32[2] = v7;
  v32[11] = v5;
  v32[12] = v6;
  v10.i64[0] = a1;
  v10.i64[1] = a2;
  v31 = v10;
  if (*&a4 < 0.0 || *&a4 > 6.28318531)
  {
    if (qword_100353A40 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000F53C(v12, qword_100381D10);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v32[0] = v16;
      *v15 = 136446210;
      v17 = String.init<A>(describing:)();
      v19 = sub_10017C9E8(v17, v18, v32);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "Unexpected target heading value %{public}s", v15, 0xCu);
      sub_100008964(v16);
    }
  }

  sub_100203F24(&off_100323B18);
  v20 = vmulq_f32(v31, xmmword_100278430);
  v21 = vnegq_f32(v20);
  v22 = vtrn2q_s32(v20, vtrn1q_s32(v20, v21));
  v24 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v20, v21, 8uLL), *v23.f32, 1), vextq_s8(v22, v22, 8uLL), v23.f32[0]);
  v25 = vrev64q_s32(v20);
  v25.i32[0] = v21.i32[1];
  v25.i32[3] = v21.i32[2];
  v26 = vmlaq_laneq_f32(v24, v25, v23, 2);
  v27 = vnegq_f32(v26);
  v28 = vtrn2q_s32(v26, vtrn1q_s32(v26, v27));
  v29 = vrev64q_s32(v26);
  v29.i32[0] = v27.i32[1];
  v29.i32[3] = v27.i32[2];
  v28.i64[0] = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v26, v31, 3), v29, v31, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v26, v27, 8uLL), *v31.f32, 1), vextq_s8(v28, v28, 8uLL), v31.f32[0])).u64[0];
  atan2f(-*&v28.i32[1], *v28.i32);
  v32[0] = a4;
  Angle.animatableData.getter();
  Angle.animatableData.getter();
  Angle.animatableData.setter();
  v30 = *v32;
  if (*v32 < 0.0 || *v32 >= 6.28318531)
  {
    v30 = *v32 - floor(*v32 / 6.28318531) * 6.28318531;
  }

  if (v30 > 3.14159265)
  {
    *v32 = v30;
    Angle.animatableData.getter();
    Angle.animatableData.getter();
    Angle.animatableData.setter();
    v30 = *v32;
  }

  return *&v30;
}

uint64_t sub_100204258(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002042C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100204368()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002043A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100204430()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100204470()
{
  v1 = *(type metadata accessor for ServicePredictionsModel.SkimmerPrediction(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_100204548()
{
  type metadata accessor for ServicePredictionsModel.SkimmerPrediction(0);

  return sub_1001F6754();
}

uint64_t sub_100204618()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

unint64_t sub_1002047BC()
{
  result = qword_100367D00;
  if (!qword_100367D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100367D00);
  }

  return result;
}

uint64_t sub_1002048C0(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_100367D08);
  __chkstk_darwin(v2);
  v4 = &v14 - v3;
  v5 = static VerticalAlignment.center.getter();
  v23 = 1;
  sub_100204B48(a1, &v16);
  v28 = v20;
  v29[0] = v21[0];
  *(v29 + 9) = *(v21 + 9);
  v24 = v16;
  v25 = v17;
  v26 = v18;
  v27 = v19;
  v30[0] = v16;
  v30[1] = v17;
  v30[2] = v18;
  v30[3] = v19;
  v30[4] = v20;
  v31[0] = v21[0];
  *(v31 + 9) = *(v21 + 9);
  sub_100006C20(&v24, &v15, &qword_100367D10);
  sub_100008FA0(v30, &qword_100367D10);
  *(&v22[3] + 7) = v27;
  *(&v22[4] + 7) = v28;
  *(&v22[5] + 7) = v29[0];
  v22[6] = *(v29 + 9);
  *(v22 + 7) = v24;
  *(&v22[1] + 7) = v25;
  *(&v22[2] + 7) = v26;
  v6 = v23;
  v7 = OBJC_IVAR____TtC8SOSBuddy20TryOutTranscriptItem_id;
  v8 = *(sub_1000040A8(&qword_100367D18) + 52);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 16))(&v4[v8], a1 + v7, v9);
  v10 = v22[2];
  *(v4 + 65) = v22[3];
  v11 = v22[5];
  *(v4 + 81) = v22[4];
  *(v4 + 97) = v11;
  *(v4 + 113) = v22[6];
  v12 = v22[1];
  *(v4 + 17) = v22[0];
  *(v4 + 33) = v12;
  *v4 = v5;
  *(v4 + 1) = 0;
  v4[16] = v6;
  *(v4 + 49) = v10;
  *&v16 = static Color.clear.getter();
  *&v4[*(v2 + 36)] = AnyView.init<A>(_:)();
  static VerticalEdge.Set.all.getter();
  sub_1002078F0();
  View.listRowSeparator(_:edges:)();
  return sub_100008FA0(v4, &qword_100367D08);
}

uint64_t sub_100204B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC8SOSBuddy26TryOutTranscriptStatusItem_content + 8);
  v34 = *(a1 + OBJC_IVAR____TtC8SOSBuddy26TryOutTranscriptStatusItem_content);
  v35 = v3;
  sub_100031770();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  static Font.caption.getter();
  v9 = Text.font(_:)();
  v11 = v10;
  v13 = v12;

  sub_1000317C4(v4, v6, v8 & 1);

  if (qword_100353980 != -1)
  {
    swift_once();
  }

  v14 = Text.foregroundColor(_:)();
  v16 = v15;
  v18 = v17;
  v25 = v19;

  sub_1000317C4(v9, v11, v13 & 1);

  v20 = static Edge.Set.all.getter();
  v28 = 1;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  LOBYTE(v32) = v18 & 1;
  *(&v32 + 1) = *v30;
  DWORD1(v32) = *&v30[3];
  *(&v32 + 1) = v25;
  v33[0] = v20;
  *&v33[4] = *&v29[3];
  *&v33[1] = *v29;
  *&v33[8] = xmmword_10028FCF0;
  *&v33[24] = xmmword_10028FCF0;
  v33[40] = 0;
  *&v27[7] = v31;
  *&v27[64] = *&v33[25];
  *&v27[55] = *&v33[16];
  *&v27[39] = *v33;
  *&v27[23] = v32;
  v26[80] = 1;
  *a2 = 0;
  *(a2 + 8) = 1;
  v21 = *&v27[16];
  *(a2 + 9) = *v27;
  v22 = *&v27[32];
  v23 = *&v27[48];
  *(a2 + 73) = *&v27[64];
  *(a2 + 57) = v23;
  *(a2 + 41) = v22;
  *(a2 + 25) = v21;
  *(a2 + 96) = 0;
  *(a2 + 104) = 1;
  v34 = v14;
  v35 = v16;
  v36 = v18 & 1;
  *&v37[3] = *&v30[3];
  *v37 = *v30;
  v38 = v25;
  v39 = v20;
  *&v40[3] = *&v29[3];
  *v40 = *v29;
  v41 = xmmword_10028FCF0;
  v42 = xmmword_10028FCF0;
  v43 = 0;
  sub_100006C20(&v31, v26, &qword_100357918);
  return sub_100008FA0(&v34, &qword_100357918);
}

uint64_t sub_100204DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_lastConsecutiveMessage);
  v5 = static VerticalAlignment.center.getter();
  type metadata accessor for UIMetrics();
  sub_10003BDC8();

  EnvironmentObject.init()();
  *v14 = a1;
  sub_1002079D4();
  sub_100207A28();
  _ConditionalContent<>.init(storage:)();
  v6 = sub_1001AE178();
  v8 = v7;
  v23 = 1;
  v22 = BYTE8(v18);
  static Color.clear.getter();
  v14[0] = 1;
  *&v14[8] = v17;
  *&v14[24] = v18;
  LOBYTE(v15) = BYTE8(v18);
  *(&v15 + 1) = v6;
  *&v16 = v8;
  *(&v16 + 1) = AnyView.init<A>(_:)();
  static VerticalEdge.Set.all.getter();
  sub_1000040A8(&qword_100367D50);
  sub_100207A7C();
  View.listRowSeparator(_:edges:)();
  v19 = *&v14[16];
  v20 = v15;
  v21 = v16;
  v17 = v5;
  v18 = *v14;
  sub_100008FA0(&v17, &qword_100367D50);
  v9 = a2 + *(sub_1000040A8(&qword_100367D70) + 36);
  if (v4)
  {
    v10 = 0x4028000000000000;
  }

  else
  {
    v10 = 0x4000000000000000;
  }

  *(v9 + 32) = 0;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  v11 = static Edge.Set.all.getter();
  result = sub_1000040A8(&qword_100367D78);
  v13 = a2 + *(result + 36);
  *v13 = v11;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = v10;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0;
  return result;
}

uint64_t sub_100205020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v3 = type metadata accessor for BubblePath.CornerStyle();
  v27 = *(v3 - 8);
  v28 = v3;
  __chkstk_darwin(v3);
  v26 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BubblePath.TailStyle();
  v22 = *(v5 - 8);
  v23 = v5;
  __chkstk_darwin(v5);
  v25 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BubblePath.Configuration();
  __chkstk_darwin(v7 - 8);
  v24 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BubbleViewConfiguration.BackgroundType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for BubbleViewConfiguration.Style();
  __chkstk_darwin(v13 - 8);
  static BubbleViewConfiguration.defaultSentBlue.getter();
  v14 = sub_1000040A8(&qword_100367E20);
  v15 = *(v14 + 48);
  v16 = *(v14 + 64);
  if (qword_100353978 != -1)
  {
    swift_once();
  }

  v17 = qword_100381BE8;
  v12[3] = &type metadata for Color;
  v12[4] = &protocol witness table for Color;
  *v12 = v17;
  v18 = type metadata accessor for BubbleViewConfiguration.Stroke();
  (*(*(v18 - 8) + 56))(v12 + v15, 1, 1, v18);
  *(v12 + v16) = 0;
  (*(v10 + 104))(v12, enum case for BubbleViewConfiguration.BackgroundType.style(_:), v9);

  v19 = static Color.white.getter();
  v31 = &type metadata for Color;
  v32 = &protocol witness table for Color;
  v30 = v19;
  BubbleViewConfiguration.Style.init(background:foreground:)();
  result = BubbleViewConfiguration.style.setter();
  if ((*(v29 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_lastConsecutiveMessage) & 1) == 0)
  {
    (*(v22 + 104))(v25, enum case for BubblePath.TailStyle.pill(_:), v23);
    platformSpecificValue<A>(_:default:iOS:macOS:watchOS:visionOS:)();
    (*(v27 + 104))(v26, enum case for BubblePath.CornerStyle.continuous(_:), v28);
    BubblePath.Configuration.init(radius:tailStyle:cornerStyle:)();
    return BubbleViewConfiguration.pathConfiguration.setter();
  }

  return result;
}

uint64_t sub_100205490@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1000040A8(&qword_100367DC8);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  if (a1)
  {
    v14 = a1[9];
    v15 = a1[10];
    sub_1000088DC(a1 + 6, v14);
    (*(v15 + 56))(v30, v14, v15);
    sub_1000088DC(v30, v30[3]);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v16 = v33;
    v17 = v34;
    v18 = v35;
    v19 = v36;
    v28 = v38;
    v29 = v37;
    sub_100008964(v30);
    LOBYTE(v30[0]) = 1;
    v32 = v17;
    v31 = v19;
    *v13 = static HorizontalAlignment.trailing.getter();
    *(v13 + 1) = 0;
    v13[16] = 0;
    v20 = sub_1000040A8(&qword_100367DD0);
    sub_1002056FC(a1, a2, a3, &v13[*(v20 + 44)]);
    v21 = v30[0];
    v22 = v32;
    v23 = v31;
    sub_100006C20(v13, v10, &qword_100367DC8);
    *a4 = 0;
    *(a4 + 8) = 1;
    *(a4 + 16) = 0;
    *(a4 + 24) = v21;
    *(a4 + 32) = v16;
    *(a4 + 40) = v22;
    *(a4 + 48) = v18;
    *(a4 + 56) = v23;
    v24 = v28;
    *(a4 + 64) = v29;
    *(a4 + 72) = v24;
    v25 = sub_1000040A8(&qword_100367DD8);
    sub_100006C20(v10, a4 + *(v25 + 64), &qword_100367DC8);
    sub_100008FA0(v13, &qword_100367DC8);
    return sub_100008FA0(v10, &qword_100367DC8);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10003BDC8();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002056FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1000040A8(&qword_100367DE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  *v13 = static HorizontalAlignment.trailing.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = sub_1000040A8(&qword_100367DE8);
  sub_100205AB0(a1, a2, a3, &v13[*(v14 + 44)]);
  v15 = *(a3 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_status);
  v44 = a4;
  if (v15 == 1)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      v46 = 0;
      v47 = 0;
      v42 = 0;
      v43 = 0;
      v40 = 0;
      v41 = 0;
      v38 = 0;
      v39 = 0;
      v37 = 0;
      v45 = 0;
      v36 = 0;
      v17 = 0;
      goto LABEL_6;
    }
  }

  v47 = static HorizontalAlignment.leading.getter();
  v53 = 1;
  sub_100205CF0(&v49);
  v55 = v50;
  v56 = v51;
  v57[0] = v52[0];
  *(v57 + 9) = *(v52 + 9);
  v54 = v49;
  v61 = v50;
  v62 = v51;
  *v63 = v52[0];
  *&v63[9] = *(v52 + 9);
  v60 = v49;
  sub_100006C20(&v54, &v48, &qword_100357918);
  sub_100008FA0(&v60, &qword_100357918);
  v42 = *(&v54 + 1);
  v43 = v54;
  v40 = *(&v55 + 1);
  v41 = v55;
  v38 = *(&v56 + 1);
  v39 = v56;
  v37 = *(&v57[0] + 1);
  v45 = *&v57[1];
  v46 = *&v57[0];
  v36 = BYTE8(v57[1]);
  v17 = v53;
LABEL_6:
  v34 = v17;
  v35 = v10;
  sub_100006C20(v13, v10, &qword_100367DE0);
  v18 = v10;
  v19 = v44;
  sub_100006C20(v18, v44, &qword_100367DE0);
  v20 = v19 + *(sub_1000040A8(&qword_100367DF0) + 48);
  v44 = v13;
  v54 = v47;
  v22 = v42;
  v21 = v43;
  *&v55 = v17;
  *(&v55 + 1) = v43;
  v23 = v40;
  v24 = v41;
  *&v56 = v42;
  *(&v56 + 1) = v41;
  v26 = v38;
  v25 = v39;
  *&v57[0] = v40;
  *(&v57[0] + 1) = v39;
  *&v57[1] = v38;
  *(&v57[1] + 1) = v46;
  v27 = v37;
  *&v58 = v37;
  *(&v58 + 1) = v45;
  v28 = v36;
  v59 = v36;
  *(v20 + 96) = v36;
  v29 = v55;
  *v20 = v54;
  *(v20 + 16) = v29;
  v30 = v57[0];
  *(v20 + 32) = v56;
  *(v20 + 48) = v30;
  v31 = v58;
  *(v20 + 64) = v57[1];
  *(v20 + 80) = v31;
  sub_100006C20(&v54, &v60, &qword_100367DF8);
  sub_100008FA0(v44, &qword_100367DE0);
  v60 = v47;
  *&v61 = v34;
  *(&v61 + 1) = v21;
  *&v62 = v22;
  *(&v62 + 1) = v24;
  *v63 = v23;
  *&v63[8] = v25;
  *&v63[16] = v26;
  *&v63[24] = v46;
  v64 = v27;
  v65 = v45;
  v66 = v28;
  sub_100008FA0(&v60, &qword_100367DF8);
  return sub_100008FA0(v35, &qword_100367DE0);
}

uint64_t sub_100205AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21[1] = a4;
  v7 = type metadata accessor for BubbleViewConfiguration();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_content;
  v12 = *(a3 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_content + 32);
  if (v12 == 1)
  {
    v13 = static HorizontalAlignment.leading.getter();
  }

  else
  {
    v13 = static HorizontalAlignment.trailing.getter();
  }

  v33 = 0;
  v14 = *v11;
  v15 = *(v11 + 24);
  v28 = v13;
  LOBYTE(v29) = 0;
  *(&v29 + 1) = v14;
  v30[0] = *(v11 + 8);
  *&v30[1] = v15;
  BYTE8(v30[1]) = v12;

  LOBYTE(v15) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v22 = v28;
  v23 = v29;
  v24[0] = v30[0];
  *(v24 + 9) = *(v30 + 9);
  v27 = 0;
  LOBYTE(v25) = v15;
  *(&v25 + 1) = v16;
  *&v26[0] = v17;
  *(&v26[0] + 1) = v18;
  *&v26[1] = v19;
  BYTE8(v26[1]) = 0;
  sub_100006C20(&v28, v31, &qword_100367E00);
  sub_100205020(a1, a2, a3);
  sub_1000040A8(&qword_100367E08);
  sub_100207F10();
  View.bubble(configuration:)();
  sub_100008FA0(&v28, &qword_100367E00);
  (*(v8 + 8))(v10, v7);
  v31[4] = v25;
  v32[0] = v26[0];
  *(v32 + 9) = *(v26 + 9);
  v31[0] = v22;
  v31[1] = v23;
  v31[2] = v24[0];
  v31[3] = v24[1];
  return sub_100008FA0(v31, &qword_100367E08);
}

uint64_t sub_100205CF0@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v28._object = 0x80000001002A4AB0;
  v3._countAndFlagsBits = 1953391955;
  v3._object = 0xE400000000000000;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0xD000000000000029;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v28);

  sub_100031770();
  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  static Font.caption.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v10 = Text.font(_:)();
  v12 = v11;
  v14 = v13;

  sub_1000317C4(v5, v7, v9 & 1);

  if (qword_100353980 != -1)
  {
    swift_once();
  }

  v15 = Text.foregroundColor(_:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_1000317C4(v10, v12, v14 & 1);

  v22 = static Edge.Set.all.getter();
  result = EdgeInsets.init(_all:)();
  *a1 = v15;
  *(a1 + 8) = v17;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v21;
  *(a1 + 32) = v22;
  *(a1 + 40) = v24;
  *(a1 + 48) = v25;
  *(a1 + 56) = v26;
  *(a1 + 64) = v27;
  *(a1 + 72) = 0;
  return result;
}

void *sub_100205F04@<X0>(void *a1@<X8>)
{
  if (*(v1 + 32))
  {
    LocalizedStringKey.init(stringLiteral:)();
    v2 = Text.init(_:tableName:bundle:comment:)();
    v4 = v3;
    v6 = v5;
    static Font.body.getter();
    Font.bold()();

    v7 = Text.font(_:)();
    v9 = v8;
    v11 = v10;
    v13 = v12;

    sub_1000317C4(v2, v4, v6 & 1);

    LOBYTE(v2) = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    *&v102 = v7;
    *(&v102 + 1) = v9;
    LOBYTE(v103) = v11 & 1;
    *(&v103 + 1) = v13;
    LOBYTE(v104) = v2;
    *(&v104 + 1) = v14;
    *v105 = v15;
    *&v105[8] = v16;
    *&v105[16] = v17;
    v105[24] = 0;
    LocalizedStringKey.init(stringLiteral:)();
    v18 = Text.init(_:tableName:bundle:comment:)();
    v20 = v19;
    v22 = v21;
    static Font.body.getter();
    Font.bold()();

    v87 = Text.font(_:)();
    v90 = v23;
    v91 = v24;
    v85 = v25;

    sub_1000317C4(v18, v20, v22 & 1);

    LocalizedStringKey.init(stringLiteral:)();
    v26 = Text.init(_:tableName:bundle:comment:)();
    v28 = v27;
    v30 = v29;
    static Font.body.getter();
    v31 = Text.font(_:)();
    v33 = v32;
    LOBYTE(v13) = v34;
    v36 = v35;

    sub_1000317C4(v26, v28, v30 & 1);

    LOBYTE(v26) = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(__dst[0]) = v13 & 1;
    LOBYTE(__src[0]) = 0;
    *&v106 = v31;
    *(&v106 + 1) = v33;
    LOBYTE(v107) = v13 & 1;
    *(&v107 + 1) = v36;
    LOBYTE(v108) = v26;
    *(&v108 + 1) = v37;
    *v109 = v38;
    *&v109[8] = v39;
    *&v109[16] = v40;
    v109[24] = 0;
    LocalizedStringKey.init(stringLiteral:)();
    v41 = Text.init(_:tableName:bundle:comment:)();
    v43 = v42;
    LOBYTE(v7) = v44;
    static Font.body.getter();
    Font.bold()();

    v45 = Text.font(_:)();
    v89 = v46;
    LOBYTE(v31) = v47;
    v86 = v48;

    sub_1000317C4(v41, v43, v7 & 1);

    LocalizedStringKey.init(stringLiteral:)();
    v49 = Text.init(_:tableName:bundle:comment:)();
    v51 = v50;
    LOBYTE(v2) = v52;
    static Font.body.getter();
    v83 = Text.font(_:)();
    v84 = v53;
    v88 = v54;
    LOBYTE(v41) = v55;

    sub_1000317C4(v49, v51, v2 & 1);

    v100 = v104;
    *v101 = *v105;
    *&v101[9] = *&v105[9];
    v98 = v102;
    v99 = v103;
    v96 = v108;
    *v97 = *v109;
    *&v97[9] = *&v109[9];
    v94 = v106;
    v95 = v107;
    *(v111 + 9) = *&v105[9];
    v110[2] = v104;
    v111[0] = *v105;
    v110[0] = v102;
    v110[1] = v103;
    *&v124[9] = *&v105[9];
    *v124 = *v105;
    v123 = v104;
    v121 = v102;
    v122 = v103;
    *(v116 + 9) = *&v109[9];
    v115 = v108;
    v116[0] = *v109;
    v113 = v106;
    v114 = v107;
    *(v120 + 9) = *&v109[9];
    v119 = v108;
    v120[0] = *v109;
    v117 = v106;
    v118 = v107;
    sub_100006C20(&v102, __dst, &qword_100357918);
    sub_1001B3BD8(v87, v90, v85 & 1);

    sub_100006C20(&v106, __dst, &qword_100357918);
    sub_1001B3BD8(v45, v89, v31 & 1);

    sub_1001B3BD8(v83, v88, v41 & 1);

    sub_100006C20(v110, __dst, &qword_100357918);
    sub_1001B3BD8(v87, v90, v85 & 1);

    sub_100006C20(&v113, __dst, &qword_100357918);
    sub_1001B3BD8(v45, v89, v31 & 1);

    sub_1001B3BD8(v83, v88, v41 & 1);

    sub_1000317C4(v83, v88, v41 & 1);

    sub_1000317C4(v45, v89, v31 & 1);

    v127 = v96;
    v128[0] = *v97;
    *(v128 + 9) = *&v97[9];
    v126 = v95;
    v125 = v94;
    sub_100008FA0(&v125, &qword_100357918);
    sub_1000317C4(v87, v90, v85 & 1);

    v132 = v100;
    *v133 = *v101;
    *&v133[9] = *&v101[9];
    v131 = v99;
    v130 = v98;
    sub_100008FA0(&v130, &qword_100357918);
    __src[2] = v123;
    __src[3] = *v124;
    __src[4] = *&v124[16];
    __src[1] = v122;
    __src[0] = v121;
    *&__src[5] = v87;
    *(&__src[5] + 1) = v90;
    LOBYTE(__src[6]) = v85 & 1;
    *(&__src[6] + 1) = v91;
    *(&__src[10] + 9) = *(v120 + 9);
    __src[10] = v120[0];
    __src[9] = v119;
    __src[7] = v117;
    __src[8] = v118;
    *&__src[12] = v45;
    *(&__src[12] + 1) = v89;
    LOBYTE(__src[13]) = v31 & 1;
    *(&__src[13] + 1) = v86;
    *&__src[14] = v83;
    *(&__src[14] + 1) = v88;
    LOBYTE(__src[15]) = v41 & 1;
    *(&__src[15] + 1) = v84;
    sub_100031830(__src);
    memcpy(__dst, __src, 0x101uLL);
    sub_1000040A8(&qword_100367E68);
    sub_1000040A8(&qword_100367E70);
    sub_100009274(&qword_100367E78, &qword_100367E68);
    sub_100009274(&qword_100367E80, &qword_100367E70);
    _ConditionalContent<>.init(storage:)();
    sub_1000317C4(v83, v88, v41 & 1);

    sub_1000317C4(v45, v89, v31 & 1);

    sub_100008FA0(&v106, &qword_100357918);
    sub_1000317C4(v87, v90, v85 & 1);

    sub_100008FA0(&v102, &qword_100357918);
  }

  else
  {
    v57 = *(v1 + 8);
    v56 = *(v1 + 16);
    v58 = *(v1 + 24);
    if (v57)
    {
      v92 = *(v1 + 16);
      __dst[0] = *v1;
      __dst[1] = v57;
      sub_100031770();

      v59 = Text.init<A>(_:)();
      v61 = v60;
      v63 = v62;
      static Font.headline.getter();
      Font.bold()();

      v64 = Text.font(_:)();
      v66 = v65;
      v68 = v67;
      v70 = v69;

      sub_1000317C4(v59, v61, v63 & 1);

      LOBYTE(v59) = static Edge.Set.bottom.getter();
      EdgeInsets.init(_all:)();
      LOBYTE(__dst[0]) = v68 & 1;
      LOBYTE(__src[0]) = 0;
      *&v130 = v64;
      *(&v130 + 1) = v66;
      LOBYTE(v131) = v68 & 1;
      v56 = v92;
      *(&v131 + 1) = v70;
      LOBYTE(v132) = v59;
      *(&v132 + 1) = v72;
      *v133 = v73;
      *&v133[8] = v74;
    }

    else
    {
      *v133 = 0u;
      v132 = 0u;
      v131 = 0u;
      v130 = 0u;
      v71 = 0;
    }

    *&v133[16] = v71;
    v133[24] = 0;
    __dst[0] = v56;
    __dst[1] = v58;
    sub_100031770();

    v75 = Text.init<A>(_:)();
    v77 = v76;
    v79 = v78;
    v115 = v132;
    v116[0] = *v133;
    *(v116 + 9) = *&v133[9];
    *(v120 + 9) = *&v133[9];
    v119 = v132;
    v120[0] = *v133;
    v113 = v130;
    v114 = v131;
    v117 = v130;
    v118 = v131;
    *&v124[9] = *&v133[9];
    *v124 = *v133;
    v123 = v132;
    v121 = v130;
    v122 = v131;
    v81 = v80 & 1;
    LOBYTE(v106) = v80 & 1;
    sub_100006C20(&v130, __dst, &qword_100367E60);
    sub_1001B3BD8(v75, v77, v81);

    sub_100006C20(&v117, __dst, &qword_100367E60);
    sub_1001B3BD8(v75, v77, v81);

    sub_1000317C4(v75, v77, v81);

    v127 = v115;
    v128[0] = v116[0];
    *(v128 + 9) = *(v116 + 9);
    v126 = v114;
    v125 = v113;
    sub_100008FA0(&v125, &qword_100367E60);
    __src[2] = v123;
    __src[3] = *v124;
    __src[4] = *&v124[16];
    __src[1] = v122;
    __src[0] = v121;
    *&__src[5] = v75;
    *(&__src[5] + 1) = v77;
    LOBYTE(__src[6]) = v81;
    DWORD1(__src[6]) = *(v110 + 3);
    *(&__src[6] + 1) = v110[0];
    *(&__src[6] + 1) = v79;
    sub_100031BF8(__src);
    memcpy(__dst, __src, 0x101uLL);
    sub_1000040A8(&qword_100367E68);
    sub_1000040A8(&qword_100367E70);
    sub_100009274(&qword_100367E78, &qword_100367E68);
    sub_100009274(&qword_100367E80, &qword_100367E70);
    _ConditionalContent<>.init(storage:)();
    sub_100008FA0(&v130, &qword_100367E60);
    sub_1000317C4(v75, v77, v81);
  }

  memcpy(__dst, v112, 0x101uLL);
  return memcpy(a1, __dst, 0x101uLL);
}

uint64_t sub_100206C04@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = sub_1000040A8(&qword_100367E28);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  *v10 = static HorizontalAlignment.leading.getter();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v11 = &v10[*(sub_1000040A8(&qword_100367E30) + 44)];
  *v11 = static HorizontalAlignment.leading.getter();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12 = sub_1000040A8(&qword_100367DE8);
  sub_100206EA8(a2, &v11[*(v12 + 44)]);
  if (a1)
  {
    v13 = a1[9];
    v14 = a1[10];
    sub_1000088DC(a1 + 6, v13);
    (*(v14 + 56))(v30, v13, v14);
    sub_1000088DC(v30, v30[3]);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v15 = v34;
    v27 = v35;
    v28 = v33;
    v16 = v36;
    v17 = v37;
    v18 = v38;
    sub_100008964(v30);
    LOBYTE(v30[0]) = 1;
    v32 = v15;
    v31 = v16;
    sub_100006C20(v10, v7, &qword_100367E28);
    v19 = v30[0];
    LOBYTE(v14) = v32;
    v20 = v31;
    v21 = v29;
    sub_100006C20(v7, v29, &qword_100367E28);
    v22 = sub_1000040A8(&qword_100367E38);
    v23 = v21 + *(v22 + 48);
    *v23 = 0;
    *(v23 + 8) = v19;
    v24 = v27;
    *(v23 + 16) = v28;
    *(v23 + 24) = v14;
    *(v23 + 32) = v24;
    *(v23 + 40) = v20;
    *(v23 + 48) = v17;
    *(v23 + 56) = v18;
    v25 = v21 + *(v22 + 64);
    *v25 = 0;
    *(v25 + 8) = 1;
    sub_100008FA0(v10, &qword_100367E28);
    return sub_100008FA0(v7, &qword_100367E28);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10003BDC8();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100206EA8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for BubblePath.CornerStyle();
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for BubblePath.TailStyle();
  v5 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BubblePath.Configuration();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for BubbleViewConfiguration();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  v16 = static HorizontalAlignment.leading.getter();
  v39 = 0;
  v17 = *(a1 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_content);
  v18 = *(a1 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_content + 24);
  v19 = *(a1 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_content + 32);
  v40 = v16;
  LOBYTE(v41) = 0;
  *(&v41 + 1) = v17;
  *v42 = *(a1 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_content + 8);
  *&v42[16] = v18;
  v42[24] = v19;

  LOBYTE(v18) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v33 = v40;
  v34 = v41;
  v35[0] = *v42;
  *(v35 + 9) = *&v42[9];
  v38 = 0;
  LOBYTE(v36) = v18;
  *(&v36 + 1) = v20;
  *&v37[0] = v21;
  *(&v37[0] + 1) = v22;
  *&v37[1] = v23;
  BYTE8(v37[1]) = 0;
  sub_100006C20(&v40, v31, &qword_100367E00);
  static BubbleViewConfiguration.defaultReceivedGray.getter();
  if ((*(a1 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_lastConsecutiveMessage) & 1) == 0)
  {
    (*(v5 + 104))(v7, enum case for BubblePath.TailStyle.pill(_:), v26);
    platformSpecificValue<A>(_:default:iOS:macOS:watchOS:visionOS:)();
    (*(v28 + 104))(v27, enum case for BubblePath.CornerStyle.continuous(_:), v29);
    BubblePath.Configuration.init(radius:tailStyle:cornerStyle:)();
    BubbleViewConfiguration.pathConfiguration.setter();
  }

  (*(v10 + 32))(v15, v12, v9);
  sub_1000040A8(&qword_100367E08);
  sub_100207F10();
  View.bubble(configuration:)();
  sub_100008FA0(&v40, &qword_100367E00);
  (*(v10 + 8))(v15, v9);
  v31[4] = v36;
  v32[0] = v37[0];
  *(v32 + 9) = *(v37 + 9);
  v31[0] = v33;
  v31[1] = v34;
  v31[2] = v35[0];
  v31[3] = v35[1];
  return sub_100008FA0(v31, &qword_100367E08);
}

uint64_t sub_10020735C(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_100367D80);
  __chkstk_darwin(v2);
  v4 = &v15 - v3;
  v5 = static VerticalAlignment.top.getter();
  v25 = 1;
  sub_10020760C(a1, &v17);
  v30 = v21;
  v31 = v22;
  v32[0] = v23[0];
  *(v32 + 9) = *(v23 + 9);
  v26 = v17;
  v27 = v18;
  v28 = v19;
  v29 = v20;
  v33[0] = v17;
  v33[1] = v18;
  v33[2] = v19;
  v33[3] = v20;
  v33[4] = v21;
  v33[5] = v22;
  v34[0] = v23[0];
  *(v34 + 9) = *(v23 + 9);
  sub_100006C20(&v26, &v16, &qword_100367D88);
  sub_100008FA0(v33, &qword_100367D88);
  *(&v24[4] + 7) = v30;
  *(&v24[5] + 7) = v31;
  *(&v24[6] + 7) = v32[0];
  v24[7] = *(v32 + 9);
  *(v24 + 7) = v26;
  *(&v24[1] + 7) = v27;
  *(&v24[2] + 7) = v28;
  *(&v24[3] + 7) = v29;
  v6 = v25;
  v7 = OBJC_IVAR____TtC8SOSBuddy20TryOutTranscriptItem_id;
  v8 = *(sub_1000040A8(&qword_100367D90) + 52);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 16))(&v4[v8], a1 + v7, v9);
  v10 = v24[5];
  *(v4 + 81) = v24[4];
  *(v4 + 97) = v10;
  v11 = v24[7];
  *(v4 + 113) = v24[6];
  *(v4 + 129) = v11;
  v12 = v24[1];
  *(v4 + 17) = v24[0];
  *(v4 + 33) = v12;
  v13 = v24[3];
  *(v4 + 49) = v24[2];
  *v4 = v5;
  *(v4 + 1) = 0;
  v4[16] = v6;
  *(v4 + 65) = v13;
  *&v17 = static Color.clear.getter();
  *&v4[*(v2 + 36)] = AnyView.init<A>(_:)();
  static VerticalEdge.Set.all.getter();
  sub_100207B60();
  View.listRowSeparator(_:edges:)();
  return sub_100008FA0(v4, &qword_100367D80);
}

uint64_t sub_10020760C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000040A8(&qword_100354FC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v27 = static HorizontalAlignment.center.getter();
  v26 = Image.init(systemName:)();
  v7 = *(a1 + OBJC_IVAR____TtC8SOSBuddy26TryOutTranscriptFooterItem_content);
  v8 = *(a1 + OBJC_IVAR____TtC8SOSBuddy26TryOutTranscriptFooterItem_content + 8);
  v32 = v7;
  v33 = v8;
  sub_100031770();

  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  v14 = type metadata accessor for Font.Design();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  static Font.system(size:weight:design:)();
  sub_100008FA0(v6, &qword_100354FC0);
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v15 = Text.font(_:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_1000317C4(v9, v11, v13 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v32) = 1;
  v31 = 1;
  v30 = 1;
  v19 &= 1u;
  v29 = v19;
  v28 = 1;
  *a2 = 0;
  *(a2 + 8) = 1;
  v23 = v26;
  *(a2 + 16) = v27;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 40) = v23;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  *(a2 + 64) = v15;
  *(a2 + 72) = v17;
  *(a2 + 80) = v19;
  *(a2 + 88) = v21;
  *(a2 + 96) = KeyPath;
  *(a2 + 104) = 1;
  *(a2 + 112) = 0;
  *(a2 + 120) = 1;

  sub_1001B3BD8(v15, v17, v19);

  sub_1000317C4(v15, v17, v19);
}

unint64_t sub_1002078F0()
{
  result = qword_100367D20;
  if (!qword_100367D20)
  {
    sub_100008CF0(&qword_100367D08);
    sub_100009274(&qword_100367D28, &qword_100367D18);
    sub_100009274(&qword_100367D30, &qword_100367D38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100367D20);
  }

  return result;
}

unint64_t sub_1002079D4()
{
  result = qword_100367D40;
  if (!qword_100367D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100367D40);
  }

  return result;
}

unint64_t sub_100207A28()
{
  result = qword_100367D48;
  if (!qword_100367D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100367D48);
  }

  return result;
}

unint64_t sub_100207A7C()
{
  result = qword_100367D58;
  if (!qword_100367D58)
  {
    sub_100008CF0(&qword_100367D50);
    sub_100009274(&qword_100367D60, &qword_100367D68);
    sub_100009274(&qword_100367D30, &qword_100367D38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100367D58);
  }

  return result;
}

unint64_t sub_100207B60()
{
  result = qword_100367D98;
  if (!qword_100367D98)
  {
    sub_100008CF0(&qword_100367D80);
    sub_100009274(&qword_100367DA0, &qword_100367D90);
    sub_100009274(&qword_100367D30, &qword_100367D38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100367D98);
  }

  return result;
}

unint64_t sub_100207CCC()
{
  result = qword_100367DA8;
  if (!qword_100367DA8)
  {
    sub_100008CF0(&qword_100367D78);
    sub_100207D58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100367DA8);
  }

  return result;
}

unint64_t sub_100207D58()
{
  result = qword_100367DB0;
  if (!qword_100367DB0)
  {
    sub_100008CF0(&qword_100367D70);
    sub_100008CF0(&qword_100367D50);
    sub_100207A7C();
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100367DB8, &qword_100367DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100367DB0);
  }

  return result;
}

uint64_t sub_100207E74(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  sub_100008CF0(a2);
  a4();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100207F10()
{
  result = qword_100367E10;
  if (!qword_100367E10)
  {
    sub_100008CF0(&qword_100367E08);
    sub_100009274(&qword_100367E18, &qword_100367E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100367E10);
  }

  return result;
}

unint64_t sub_100208080()
{
  result = qword_100367E88;
  if (!qword_100367E88)
  {
    sub_100008CF0(&qword_100367E90);
    sub_100009274(&qword_100367E78, &qword_100367E68);
    sub_100009274(&qword_100367E80, &qword_100367E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100367E88);
  }

  return result;
}

uint64_t sub_10020817C()
{
  sub_1000040A8(&qword_10035DBF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100279160;
  v1 = [objc_opt_self() mainBundle];
  v6._object = 0x80000001002A2C60;
  v2._countAndFlagsBits = 1954047310;
  v2._object = 0xE400000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0xD000000000000050;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v6);

  *(v0 + 32) = v4;
  *(v0 + 48) = 3;
  return v0;
}

uint64_t sub_10020834C@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v9._object = 0x80000001002A2C60;
  v3._countAndFlagsBits = 1954047310;
  v3._object = 0xE400000000000000;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD000000000000050;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v9);

  v5 = type metadata accessor for WelcomeAction();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, 1, 1, v5);
}

unint64_t sub_100208460()
{
  result = qword_100367E98;
  if (!qword_100367E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100367E98);
  }

  return result;
}

unint64_t sub_100208504(uint64_t a1)
{
  result = sub_10020852C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10020852C()
{
  result = qword_100367EA0;
  if (!qword_100367EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100367EA0);
  }

  return result;
}

uint64_t sub_100208580(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1002085DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

double sub_100208664@<D0>(uint64_t a1@<X8>)
{
  v54 = *v1;
  sub_1000040A8(&qword_100363A18);
  State.projectedValue.getter();
  v49 = *(v1 + 25);
  v50 = *(v1 + 24);
  v3 = *(v1 + 4);
  type metadata accessor for AlertAppearanceModel();
  sub_100208B1C(&qword_10035B5C0, type metadata accessor for AlertAppearanceModel);
  v4 = EnvironmentObject.init()();
  v47 = v5;
  v48 = v4;
  type metadata accessor for AppPropertiesModel();
  sub_100208B1C(&qword_10035B6A0, type metadata accessor for AppPropertiesModel);
  v6 = EnvironmentObject.init()();
  v45 = v7;
  v46 = v6;
  type metadata accessor for ConnectionModel(0);
  sub_100208B1C(&qword_100354F88, type metadata accessor for ConnectionModel);
  v8 = EnvironmentObject.init()();
  v43 = v9;
  v44 = v8;
  type metadata accessor for ConnectivityModel();
  sub_100208B1C(&qword_100354F78, type metadata accessor for ConnectivityModel);
  v10 = EnvironmentObject.init()();
  v41 = v11;
  v42 = v10;
  type metadata accessor for GeoLocationModel();
  sub_100208B1C(&qword_10035F1D0, type metadata accessor for GeoLocationModel);
  v12 = EnvironmentObject.init()();
  v39 = v13;
  v40 = v12;
  type metadata accessor for GuidanceMessagesModel();
  sub_100208B1C(&qword_100357820, type metadata accessor for GuidanceMessagesModel);
  v14 = EnvironmentObject.init()();
  v37 = v15;
  v38 = v14;
  type metadata accessor for GuidanceModel(0);
  sub_100208B1C(&qword_100354F80, type metadata accessor for GuidanceModel);
  v16 = EnvironmentObject.init()();
  v35 = v17;
  v36 = v16;
  type metadata accessor for PartnerModel();
  sub_100208B1C(&qword_1003561A8, type metadata accessor for PartnerModel);
  v18 = EnvironmentObject.init()();
  v33 = v19;
  v34 = v18;
  type metadata accessor for StewieModel(0);
  sub_100208B1C(&qword_1003561B8, type metadata accessor for StewieModel);
  v20 = EnvironmentObject.init()();
  v22 = v21;
  type metadata accessor for TimeZoneModel();
  sub_100208B1C(&qword_10035F220, type metadata accessor for TimeZoneModel);
  v23 = EnvironmentObject.init()();
  v25 = v24;
  type metadata accessor for TryOutModel();
  sub_100208B1C(&qword_100357990, type metadata accessor for TryOutModel);
  v26 = EnvironmentObject.init()();
  v28 = v27;
  type metadata accessor for UIMetrics();
  sub_100208B1C(&qword_100354D40, type metadata accessor for UIMetrics);
  v29 = EnvironmentObject.init()();
  v31 = v30;
  State.wrappedValue.getter();
  *a1 = v48;
  *(a1 + 8) = v47;
  *(a1 + 16) = v46;
  *(a1 + 24) = v45;
  *(a1 + 32) = v44;
  *(a1 + 40) = v43;
  *(a1 + 48) = v42;
  *(a1 + 56) = v41;
  *(a1 + 64) = v40;
  *(a1 + 72) = v39;
  *(a1 + 80) = v38;
  *(a1 + 88) = v37;
  *(a1 + 96) = v36;
  *(a1 + 104) = v35;
  *(a1 + 112) = v34;
  *(a1 + 120) = v33;
  *(a1 + 128) = v20;
  *(a1 + 136) = v22;
  *(a1 + 144) = v23;
  *(a1 + 152) = v25;
  *(a1 + 160) = v26;
  *(a1 + 168) = v28;
  *(a1 + 176) = v29;
  *(a1 + 184) = v31;
  *(a1 + 192) = v51;
  *(a1 + 208) = v52;
  *(a1 + 216) = v53;
  *(a1 + 217) = v50;
  *(a1 + 218) = v49;
  *(a1 + 224) = v3;
  *(a1 + 232) = xmmword_100290300;
  result = 0.1;
  *(a1 + 248) = xmmword_100290310;
  *(a1 + 264) = v54;
  *(a1 + 272) = BYTE8(v54);
  *(a1 + 273) = 1;
  return result;
}

uint64_t sub_100208B1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100208B78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 264))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 200);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100208BC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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
      *(result + 200) = (a2 - 1);
      return result;
    }

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100208C54()
{
  result = qword_100367EA8;
  if (!qword_100367EA8)
  {
    sub_100008CF0(&qword_100367EB0);
    sub_100208CF8();
    sub_100208DF0(&qword_100367EE0, &qword_100367EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100367EA8);
  }

  return result;
}

unint64_t sub_100208CF8()
{
  result = qword_100367EB8;
  if (!qword_100367EB8)
  {
    sub_100008CF0(&qword_100367EC0);
    sub_100208D9C();
    sub_100208DF0(&qword_100367ED0, &qword_100367ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100367EB8);
  }

  return result;
}

unint64_t sub_100208D9C()
{
  result = qword_100367EC8;
  if (!qword_100367EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100367EC8);
  }

  return result;
}

uint64_t sub_100208DF0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100008CF0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100208E44()
{
  v82 = xmmword_100368260;
  v83[0] = unk_100368270;
  *(v83 + 9) = unk_100368279;
  v78 = xmmword_100368220;
  v79 = unk_100368230;
  v80 = xmmword_100368240;
  v81 = unk_100368250;
  v1 = *(v0 + 176);
  if (v1)
  {
    v74 = 0;
    v73 = 0;

    v2 = sub_100209534();
    v63 = v3;
    v64 = v2;
    v65 = v4;
    *v68 = *(v0 + 192);
    *&v68[9] = *(v0 + 201);
    sub_1000040A8(&qword_100357980);
    Binding.projectedValue.getter();
    v50 = v70;
    v51 = v69;
    v49 = v71;
    v48 = v72;
    v5 = swift_allocObject();
    memcpy((v5 + 16), v0, 0x108uLL);
    v6 = swift_allocObject();
    memcpy((v6 + 16), v0, 0x108uLL);
    v47 = type metadata accessor for ConnectionAssistantViewController();
    v7 = objc_allocWithZone(v47);
    v8 = OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__displayMetrics;
    type metadata accessor for ConnectionAssistantDisplayState();
    swift_allocObject();
    sub_10020A6F0(v0, v68);
    sub_10020A6F0(v0, v68);
    *&v7[v8] = sub_100014F5C();
    v7[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__locationAnimationFinished] = 0;
    v9 = &v7[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__animateToLocation];
    *v9 = 0;
    *(v9 + 1) = 0;
    v9[16] = 2;
    *&v7[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__innerShadowView] = 0;
    *&v7[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__displayLink] = 0;
    *&v7[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__locationAssertion] = 0;
    *&v7[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__offsetRotationProgress] = 0;
    v10 = &v7[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__offsetRotationProgressPending];
    *v10 = 0;
    v10[8] = 1;
    v11 = &v7[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__obstructedAreaAtTheTop];
    *v11 = 0u;
    v11[1] = 0u;
    v12 = &v7[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__topInset];
    *v12 = 0u;
    *(v12 + 1) = 0u;
    v12[32] = 0;
    v13 = &v7[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__metrics];
    *v13 = 0;
    *(v13 + 1) = *&v68[3];
    *(v13 + 1) = *v68;
    *(v13 + 1) = 0xC046800000000000;
    *(v13 + 2) = 0xC04C000000000000;
    v13[24] = 0;
    *(v13 + 7) = *(&v69 + 3);
    *(v13 + 25) = v69;
    *(v13 + 2) = xmmword_100290320;
    *(v13 + 6) = 0xC04C000000000000;
    *(v13 + 7) = 0xC050000000000000;
    v13[64] = 0;
    v14 = *v77;
    *(v13 + 17) = *&v77[3];
    *(v13 + 65) = v14;
    *(v13 + 9) = 0x3FE3333333333333;
    v13[80] = 1;
    v15 = *v76;
    *(v13 + 21) = *&v76[3];
    *(v13 + 81) = v15;
    *(v13 + 11) = 0x3FE4CCCCCCCCCCCDLL;
    v13[96] = 1;
    v16 = *v75;
    *(v13 + 25) = *&v75[3];
    *(v13 + 97) = v16;
    *(v13 + 104) = xmmword_100290330;
    v17 = &v7[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__earthDiameter];
    v18 = v83[0];
    v17[4] = v82;
    v17[5] = v18;
    *(v17 + 89) = *(v83 + 9);
    v19 = v79;
    *v17 = v78;
    v17[1] = v19;
    v20 = v81;
    v17[2] = v80;
    v17[3] = v20;
    *&v7[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__uiMetrics] = v1;
    v21 = &v7[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__locationAssertionProducer];
    *v21 = sub_10020A624;
    v21[1] = v5;
    v22 = &v7[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__viewDidLoadCallback];
    *v22 = sub_10020A6CC;
    v22[1] = v6;
    v23 = qword_100353990;
    v52 = v1;

    if (v23 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for ExplorerGuidanceState();
    v25 = sub_10000F53C(v24, qword_100381C30);
    v26 = *(v25 + 8);
    v61 = *(v25 + 16);
    v62 = *v25;
    v59 = *(v25 + 18);
    v60 = *(v25 + 17);
    v28 = *(v25 + 24);
    v27 = *(v25 + 32);
    v30 = *(v25 + 40);
    v29 = *(v25 + 48);
    v31 = *(v25 + 64);
    v57 = *(v25 + 72);
    v58 = *(v25 + 56);
    v55 = *(v25 + 81);
    v56 = *(v25 + 80);
    v53 = *(v25 + 83);
    v54 = *(v25 + 82);
    v32 = &v7[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__guidanceState];
    sub_100006C20(v25 + v24[15], &v7[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__guidanceState + v24[15]], &qword_100354FD8);
    v33 = *(v25 + v24[16]);
    *v32 = v62;
    *(v32 + 1) = v26;
    v32[16] = v61;
    v32[17] = v60;
    v32[18] = v59;
    *(v32 + 3) = v28;
    *(v32 + 4) = v27;
    *(v32 + 5) = v30;
    *(v32 + 6) = v29;
    *(v32 + 7) = v58;
    *(v32 + 8) = v31;
    *(v32 + 9) = v57;
    v32[80] = v56;
    v32[81] = v55;
    v32[82] = v54;
    v32[83] = v53;
    v32[v24[16]] = v33;
    v34 = &v32[v24[17]];
    *v34 = v64;
    *(v34 + 1) = v63;
    v34[16] = v65;
    v7[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__skipLocationAnimation] = v65 != 2;

    v35 = MTLCreateSystemDefaultDevice();
    if (v35)
    {
      v36 = v35;
      v37 = objc_allocWithZone(type metadata accessor for ConnectionAssistantEarthViewController());
      *&v7[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__earthViewController] = sub_10004B00C(1, v36);
      v38 = objc_allocWithZone(type metadata accessor for ConnectionAssistantConnectionViewController());

      *&v7[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__connectionViewController] = sub_10004A16C(v52, v51, v50, v49, v48);
      v67.receiver = v7;
      v67.super_class = v47;
      v39 = objc_msgSendSuper2(&v67, "initWithNibName:bundle:", 0, 0);
      v40 = type metadata accessor for WeakCADisplayLinkTarget();
      v41 = objc_allocWithZone(v40);
      *&v41[OBJC_IVAR____TtC8SOSBuddy23WeakCADisplayLinkTarget__target + 8] = 0;
      *(swift_unknownObjectWeakInit() + 8) = &off_100329898;
      swift_unknownObjectWeakAssign();
      v66.receiver = v41;
      v66.super_class = v40;
      v42 = v39;
      v43 = objc_msgSendSuper2(&v66, "init");
      v44 = [objc_opt_self() displayLinkWithTarget:v43 selector:"updateFrom:"];

      v45 = *&v42[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__displayLink];
      *&v42[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__displayLink] = v44;

      return v42;
    }

    __break(1u);
  }

  type metadata accessor for UIMetrics();
  sub_100208B1C(&qword_100354D40, type metadata accessor for UIMetrics);
  EnvironmentObject.error()();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_100209534()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000040A8(&qword_100359D90);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - v6;
  v8 = type metadata accessor for TimeZone();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v0[14];
  if (!v13)
  {
    type metadata accessor for PartnerModel();
    v23 = &qword_1003561A8;
    for (i = type metadata accessor for PartnerModel; ; i = type metadata accessor for TimeZoneModel)
    {
LABEL_21:
      sub_100208B1C(v23, i);
      EnvironmentObject.error()();
      __break(1u);
LABEL_22:
      type metadata accessor for TimeZoneModel();
      v23 = &qword_10035F220;
    }
  }

  v14 = *(v13 + 72);
  if (v14 != 2 && (v14 & 1) != 0 || !*(v13 + 56))
  {
    goto LABEL_8;
  }

  v15 = v0[8];
  if (!v15)
  {
LABEL_19:
    type metadata accessor for GeoLocationModel();
    v23 = &qword_10035F1D0;
    i = type metadata accessor for GeoLocationModel;
    goto LABEL_21;
  }

  v16 = *(v15 + 48);
  if (v16 == 2 || (v16 & 1) != 0)
  {
LABEL_8:
    v17 = v0[8];
    if (v17)
    {
      if (*(v17 + 72))
      {
        return 0;
      }

      else
      {
        return *(v17 + 56);
      }
    }

    goto LABEL_19;
  }

  v19 = v0[18];
  if (!v19)
  {
    goto LABEL_22;
  }

  v20 = v10;
  v21 = OBJC_IVAR____TtC8SOSBuddy13TimeZoneModel__timeZone;
  swift_beginAccess();
  sub_100006C20(v19 + v21, v7, &qword_100359D90);
  v22 = *(v9 + 48);
  if (v22(v7, 1, v20) == 1)
  {

    static TimeZone.autoupdatingCurrent.getter();
    if (v22(v7, 1, v20) != 1)
    {
      sub_10020A5B8(v7);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v7, v20);
  }

  Date.init()();
  TimeZone.secondsFromGMT(for:)();

  (*(v2 + 8))(v4, v1);
  (*(v9 + 8))(v12, v20);
  return 0x4051800000000000;
}

uint64_t sub_100209928(uint64_t a1)
{
  if (*(a1 + 64))
  {
    type metadata accessor for GeoLocationModel.LocationAssertion();
    swift_allocObject();

    v2 = sub_100018CD8(v1, 0x726373206C6C7546, 0xEB000000006E6565);

    return v2;
  }

  else
  {
    type metadata accessor for GeoLocationModel();
    sub_100208B1C(&qword_10035F1D0, type metadata accessor for GeoLocationModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void *sub_1002099E4(uint64_t a1)
{
  v3 = type metadata accessor for ExplorerGuidanceState();
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10024AC7C(v1[28], v1[29], v1[30], v1[31], v1[32]);
  if (v6 == *(a1 + OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__offsetRotationProgress))
  {
LABEL_6:
    sub_100209B08(v5);
    sub_100070678(v5);
    return sub_10004ACF0(v5);
  }

  result = *(a1 + OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__displayLink);
  if (result)
  {
    [result preferredFrameRateRange];
    if ((static CAFrameRateRange.== infix(_:_:)() & 1) == 0)
    {
      v8 = a1 + OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__offsetRotationProgressPending;
      *v8 = v6;
      *(v8 + 8) = 0;
      sub_10006F9EC();
    }

    sub_10006FDB4(v6);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_100209B08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000040A8(&qword_100354FD8);
  __chkstk_darwin(v4 - 8);
  v6 = &v79[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v79[-v8];
  v10 = v1[14];
  if (!v10)
  {
    type metadata accessor for PartnerModel();
    v75 = &qword_1003561A8;
    v76 = type metadata accessor for PartnerModel;
    goto LABEL_73;
  }

  v11 = *(v10 + 72);
  if (v11 == 2 || (v11 & 1) == 0)
  {
    v12 = *(v10 + 56);
    if (v12)
    {
      v13 = v1[2];
      if (v13)
      {
        v14 = *(v10 + 48);
        v15 = *(v13 + 80);
        if (v15 != 2 && (v15 & 1) != 0)
        {
          v16 = 1;
LABEL_21:
          v22 = type metadata accessor for TransmissionProgress(0);
          (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
          v23 = v1[16];
          if (v23)
          {
            if (*(v23 + 64))
            {
              v24 = sub_100071A54(3, *(v23 + 88));
            }

            else
            {
              v24 = 0;
            }

            v25 = sub_100209534();
            v27 = v26;
            v29 = v28;
            *a1 = v16;
            *(a1 + 8) = &_swiftEmptySetSingleton;
            *(a1 + 16) = 256;
            *(a1 + 18) = 0;
            *(a1 + 24) = v14;
            *(a1 + 32) = v12;
            v30 = type metadata accessor for ExplorerGuidanceState();
            *(a1 + 40) = 0u;
            *(a1 + 56) = 0u;
            *(a1 + 68) = 0u;
            v31 = a1 + v30[15];
            v32 = v9;
LABEL_56:
            result = sub_10020A548(v32, v31);
            *(a1 + v30[16]) = v24 & 1;
            v74 = a1 + v30[17];
            *v74 = v25;
            *(v74 + 8) = v27;
            *(v74 + 16) = v29;
            return result;
          }

          type metadata accessor for StewieModel(0);
          v77 = &qword_1003561B8;
          v78 = type metadata accessor for StewieModel;
          goto LABEL_68;
        }

        if (*v1)
        {
          v16 = 0;
          goto LABEL_21;
        }

        type metadata accessor for AlertAppearanceModel();
        v77 = &qword_10035B5C0;
        v78 = type metadata accessor for AlertAppearanceModel;
      }

      else
      {
        type metadata accessor for AppPropertiesModel();
        v77 = &qword_10035B6A0;
        v78 = type metadata accessor for AppPropertiesModel;
      }

LABEL_68:
      sub_100208B1C(v77, v78);

LABEL_71:
      EnvironmentObject.error()();
      __break(1u);
      goto LABEL_72;
    }
  }

  v17 = v1[16];
  if (!v17)
  {
    type metadata accessor for StewieModel(0);
    v75 = &qword_1003561B8;
    v76 = type metadata accessor for StewieModel;
    goto LABEL_73;
  }

  v18 = *(v17 + 64);
  if (v18)
  {
    LOBYTE(v18) = *(*(v17 + 88) + 16) == 0;
  }

  v19 = v1[20];
  if (!v19)
  {
    type metadata accessor for TryOutModel();
    sub_100208B1C(&qword_100357990, type metadata accessor for TryOutModel);
LABEL_70:

    goto LABEL_71;
  }

  v20 = *(v19 + 56);
  if (!*(v19 + 56) || v20 >> 9 > 0x7E || (v20 & 0xC000) != 0x4000 || (v21 = *(v19 + 72), v21 == 2))
  {
    if ((v18 & 1) == 0)
    {
      LOBYTE(v21) = 0;
      goto LABEL_28;
    }

LABEL_27:
    v33 = v1[16];

    v34 = 0;
    v35 = 0;
    object = 0;
    countAndFlagsBits = 0;
    v87 = 0;
    v88 = 0;
    v89 = 2;
    v90 = 9;
    goto LABEL_36;
  }

  if (v18)
  {
    goto LABEL_27;
  }

LABEL_28:
  v36 = v1[6];
  if (!v36)
  {
    type metadata accessor for ConnectivityModel();
    sub_100208B1C(&qword_100354F78, type metadata accessor for ConnectivityModel);

    goto LABEL_70;
  }

  v37 = *(*(v36 + 48) + 136);
  v89 = *(v36 + 56);
  v90 = v37;

  sub_1001DE5B8();
  v87 = v39;
  v88 = v38;

  if (v21)
  {
    v40 = objc_opt_self();
    v41 = [v40 mainBundle];
    v91._object = 0x80000001002A4E40;
    v42._countAndFlagsBits = 0x6D6F43206F6D6544;
    v42._object = 0xED00006574656C70;
    v91._countAndFlagsBits = 0xD000000000000056;
    v43._countAndFlagsBits = 0;
    v43._object = 0xE000000000000000;
    v44 = NSLocalizedString(_:tableName:bundle:value:comment:)(v42, 0, v41, v43, v91);
    object = v44._object;
    countAndFlagsBits = v44._countAndFlagsBits;

    v45 = [v40 mainBundle];
    v92._object = 0x80000001002A4ED0;
    v46._object = 0x80000001002A4EA0;
    v92._countAndFlagsBits = 0xD000000000000055;
    v46._countAndFlagsBits = 0xD000000000000025;
    v47._countAndFlagsBits = 0;
    v47._object = 0xE000000000000000;
    v48 = NSLocalizedString(_:tableName:bundle:value:comment:)(v46, 0, v45, v47, v92);
    v34 = v48._countAndFlagsBits;
    v35 = v48._object;

    v33 = v17;
  }

  else
  {
    v49 = v2[10];
    if (!v49)
    {
LABEL_72:
      type metadata accessor for GuidanceMessagesModel();
      v75 = &qword_100357820;
      v76 = type metadata accessor for GuidanceMessagesModel;
      goto LABEL_73;
    }

    v50 = *(v49 + 48);
    v33 = v17;
    if (v50)
    {
      v51 = *(v50 + 32);
      object = *(v50 + 40);
      countAndFlagsBits = v51;
    }

    else
    {
      object = 0xE000000000000000;
      countAndFlagsBits = 0;
    }

    sub_1001DE260();
    v34 = v52;
    v35 = v53;
  }

LABEL_36:
  v54 = v2[2];
  if (v54)
  {
    v55 = *(v54 + 80);
    if (v55 == 2 || (v55 & 1) == 0)
    {
      if (!*v2)
      {
        type metadata accessor for AlertAppearanceModel();
        v75 = &qword_10035B5C0;
        v76 = type metadata accessor for AlertAppearanceModel;
        goto LABEL_73;
      }

      v56 = 0;
    }

    else
    {
      v56 = 1;
    }

    v57 = v2[12];
    if (v57)
    {
      v58 = *(v57 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__suggestedActions);
      v59 = v2[6];
      if (v59)
      {
        v60 = *(v57 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInSilencePeriodNow);
        v83 = v35;
        v84 = v34;
        v82 = v56;
        if (v60 != 2 && (v60 & 1) != 0 || (v61 = *(v57 + 58), v61 != 2) && (v61 & 1) != 0 || (*(v57 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__correctedTargetRelativeBearing + 24) & 1) != 0)
        {
          v81 = 0;
          v80 = 1;
        }

        else
        {
          v80 = 0;
          v81 = *(v57 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__correctedTargetRelativeBearing);
        }

        v62 = *(v59 + 57);
        v63 = *(v19 + OBJC_IVAR____TtC8SOSBuddy11TryOutModel__preparingDemoBlock);

        if (v2[4])
        {

          v64 = v6;
          sub_1001DDADC(v6);

          if (*(v33 + 64))
          {
            v24 = sub_100071A54(3, *(v33 + 88));
          }

          else
          {
            v24 = 0;
          }

          v65 = v62 ^ 1;
          v66 = *(v2 + 217);
          v25 = sub_100209534();
          v27 = v67;
          v29 = v68;
          *a1 = v82;
          *(a1 + 8) = v58;
          v69 = v89;
          *(a1 + 16) = v90;
          *(a1 + 17) = v65;
          *(a1 + 18) = v69;
          v70 = v87;
          *(a1 + 24) = v88;
          *(a1 + 32) = v70;
          v71 = object;
          *(a1 + 40) = countAndFlagsBits;
          *(a1 + 48) = v71;
          v72 = v83;
          *(a1 + 56) = v84;
          *(a1 + 64) = v72;
          *(a1 + 72) = v81;
          *(a1 + 80) = v80;
          *(a1 + 81) = v63 != 0;
          *(a1 + 82) = v66;
          v30 = type metadata accessor for ExplorerGuidanceState();
          v31 = a1 + v30[15];
          v32 = v64;
          goto LABEL_56;
        }
      }

      else
      {
        type metadata accessor for ConnectivityModel();
        sub_100208B1C(&qword_100354F78, type metadata accessor for ConnectivityModel);

        EnvironmentObject.error()();
        __break(1u);
      }

      type metadata accessor for ConnectionModel(0);
      v75 = &qword_100354F88;
      v76 = type metadata accessor for ConnectionModel;
    }

    else
    {
      type metadata accessor for GuidanceModel(0);
      v75 = &qword_100354F80;
      v76 = type metadata accessor for GuidanceModel;
    }
  }

  else
  {
    type metadata accessor for AppPropertiesModel();
    v75 = &qword_10035B6A0;
    v76 = type metadata accessor for AppPropertiesModel;
  }

LABEL_73:
  sub_100208B1C(v75, v76);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10020A454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10020A728();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10020A4B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10020A728();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10020A51C()
{
  sub_10020A728();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_10020A548(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100354FD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10020A5B8(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_100359D90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10020A62C()
{

  return _swift_deallocObject(v0, 280, 7);
}

unint64_t sub_10020A728()
{
  result = qword_100367EF0;
  if (!qword_100367EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100367EF0);
  }

  return result;
}

uint64_t CTStewieConnectionAssistantEventType.debugDescription.getter(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 > 6)
    {
      if (a1 == 7)
      {
        return 0x6944726566666F2ELL;
      }

      if (a1 == 8)
      {
        return 0x6341726566666F2ELL;
      }
    }

    else
    {
      if (a1 == 4)
      {
        return 0x746978652ELL;
      }

      if (a1 == 6)
      {
        return 0x73736553646E652ELL;
      }
    }

    goto LABEL_19;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x6E776F6E6B6E752ELL;
    }

    if (a1 == 1)
    {
      return 0x68636E75616C2ELL;
    }

LABEL_19:
    v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v2);

    return 0x756C61567761722ELL;
  }

  if (a1 == 2)
  {
    return 0x747365757165722ELL;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t CTStewieExitReason.debugDescription.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x6E776F6E6B6E752ELL;
    }

    if (a1 == 1)
    {
      return 0x716552726573752ELL;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x794D646E69662ELL;
      case 3:
        return 0x74754F7972742ELL;
      case 4:
        return 0x6967617373656D2ELL;
    }
  }

  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return 0x756C61567761722ELL;
}

uint64_t sub_10020AA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000040A8(&qword_100357460);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100006C20(a3, v25 - v10, &qword_100357460);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100008FA0(v11, &qword_100357460);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
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

double ConnectionAssistantRendererEarthOutline.__allocating_init(device:)(uint64_t a1)
{
  v2 = swift_allocObject();
  result = 0.0;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 65) = 0u;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 88) = 0;
  *(v2 + 112) = 1;
  *(v2 + 16) = a1;
  return result;
}

uint64_t sub_10020ADC8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x746E65726170;
  if (v2 != 1)
  {
    v4 = 0x616E6964726F6F63;
    v3 = 0xEB00000000736574;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701667182;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x746E65726170;
  if (*a2 != 1)
  {
    v8 = 0x616E6964726F6F63;
    v7 = 0xEB00000000736574;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701667182;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10020AECC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10020AF6C()
{
  String.hash(into:)();
}

Swift::Int sub_10020AFF8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10020B094@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10020EA98(*a1);
  *a2 = result;
  return result;
}

void sub_10020B0C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x746E65726170;
  if (v2 != 1)
  {
    v5 = 0x616E6964726F6F63;
    v4 = 0xEB00000000736574;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701667182;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10020B120()
{
  v1 = 0x746E65726170;
  if (*v0 != 1)
  {
    v1 = 0x616E6964726F6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

unint64_t sub_10020B178@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10020EA98(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10020B1AC(uint64_t a1)
{
  v2 = sub_10020E854();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10020B1E8(uint64_t a1)
{
  v2 = sub_10020E854();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10020B224(void *a1)
{
  v3 = v1;
  v5 = sub_1000040A8(&qword_100368168);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - v7;
  v3[4] = 0;
  v3[5] = 0;
  v3[7] = _swiftEmptyArrayStorage;
  v9 = a1[3];
  v32 = a1;
  sub_1000088DC(a1, v9);
  sub_10020E854();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {

    type metadata accessor for ConnectionAssistantRendererEarthOutline.Shapes.Shape();
    swift_deallocPartialClassInstance();
LABEL_4:
    sub_100008964(v32);
    return v3;
  }

  v31 = v6;
  LOBYTE(v34[0]) = 0;
  v3[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v3[3] = v10;
  LOBYTE(v34[0]) = 1;
  v3[4] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v3[5] = v11;

  v33 = 2;
  KeyedDecodingContainer.nestedUnkeyedContainer(forKey:)();
  sub_1000088DC(v34, v35);
  v13 = dispatch thunk of UnkeyedDecodingContainer.count.getter() / 2;
  if (v14)
  {
    v13 = 0;
  }

  if (_swiftEmptyArrayStorage[2] <= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = _swiftEmptyArrayStorage[2];
  }

  v16 = sub_10017C6C4(0, v15, 0, _swiftEmptyArrayStorage);
  while (1)
  {
    sub_1000088DC(v34, v35);
    result = dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter();
    if (result)
    {
      break;
    }

    sub_100022834(v34, v35);
    dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v18 = v17;
    sub_100022834(v34, v35);
    dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v21 = *(v16 + 2);
    v20 = *(v16 + 3);
    v22 = v21 + 1;
    if (v21 >= v20 >> 1)
    {
      v30 = v21 + 1;
      v29 = v19;
      v24 = sub_10017C6C4((v20 > 1), v21 + 1, 1, v16);
      v22 = v30;
      v19 = v29;
      v16 = v24;
    }

    *(v16 + 2) = v22;
    v23 = &v16[16 * v21];
    *(v23 + 4) = v18;
    *(v23 + 5) = v19;
  }

  v25 = *(v16 + 2);
  if (v25)
  {
    v26 = v25 - 1;
    v27 = &v16[16 * v26 + 32];
    v28 = v31;
    if (*(v16 + 4) == *v27 && *(v16 + 5) == v27[1])
    {
      *(v16 + 2) = v26;
    }

    (*(v28 + 8))(v8, v5);
    v3[6] = v16;
    sub_100008964(v34);
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_10020B60C(void *a1)
{
  v3 = v1;
  v5 = sub_1000040A8(&qword_1003681C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_1000088DC(a1, a1[3]);
  sub_10020E854();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16[0] = 0;

  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    v16[0] = 1;

    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = v6;

    v18 = 2;
    KeyedEncodingContainer.nestedUnkeyedContainer(forKey:)();
    v9 = *(*(v3 + 48) + 16);

    v15 = result;
    v11 = result + 40;
    v12 = -1;
    while (1)
    {
      if (v12 - v9 == -1)
      {
        (*(v14 + 8))(v8, v5);

        return sub_100008964(v16);
      }

      if (++v12 >= *(v15 + 16))
      {
        break;
      }

      sub_100022834(v16, v17);
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      v11 += 16;
      sub_100022834(v16, v17);
      result = dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10020B8B4(double a1, double a2)
{
  v3 = v2;
  Mutable = CGPathCreateMutable();
  v7 = *(v2 + 48);
  if (*(v7 + 16))
  {
    v8 = (*(v7 + 40) + 180.0) / 360.0 * a1;
    v28 = 0x3FF0000000000000;
    v29 = 0;
    v30 = 0;
    v31 = 0x3FF0000000000000;
    v32 = 0;
    v33 = 0;
    v9 = v8;
    CGMutablePathRef.move(to:transform:)();
    v10 = *(v2 + 48);
    v11 = *(v10 + 16);
    if (v11 >= 2)
    {
      v22 = 0x3FF0000000000000;
      v23 = 0;
      v24 = 0;
      v25 = 0x3FF0000000000000;
      v26 = 0;
      v27 = 0;

      v12 = v11 - 1;
      v13 = (v10 + 56);
      v14 = v9;
      do
      {
        v15 = (*v13 + 180.0) / 360.0 * a1;
        if (a1 * 0.5 <= vabdd_f64(v15, v14))
        {
          CGMutablePathRef.addLine(to:transform:)();
          CGMutablePathRef.addLine(to:transform:)();
        }

        CGMutablePathRef.addLine(to:transform:)();
        v13 += 2;
        v14 = v15;
        --v12;
      }

      while (v12);
    }
  }

  CGPathCloseSubpath(Mutable);
  result = swift_beginAccess();
  v17 = *(v3 + 56);
  if (!(v17 >> 62))
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_10;
    }

    return Mutable;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v18 = result;
  if (!result)
  {
    return Mutable;
  }

LABEL_10:
  transform.a = 1.0;
  transform.b = 0.0;
  transform.c = 0.0;
  transform.d = 1.0;
  transform.tx = 0.0;
  transform.ty = 0.0;
  if (v18 >= 1)
  {

    v19 = 0;
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      ++v19;
      v20 = sub_10020B8B4(a1, a2);
      CGMutablePathRef.addPath(_:transform:)(v20, &transform);
    }

    while (v18 != v19);

    return Mutable;
  }

  __break(1u);
  return result;
}

uint64_t sub_10020BBB0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10020BC00@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ConnectionAssistantRendererEarthOutline.Shapes.Shape();
  swift_allocObject();
  result = sub_10020B224(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

Swift::Int sub_10020BC84()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10020BCE8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10020BD34@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100323BE0, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_10020BDB4@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100323C18, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10020BE18(uint64_t a1)
{
  v2 = sub_10020F130();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10020BE54(uint64_t a1)
{
  v2 = sub_10020F130();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10020BE90(void *a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_1003681A8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_1000088DC(a1, a1[3]);
  sub_10020F130();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_1000040A8(&qword_100368188);
  sub_10020F184(&qword_1003681B0, &qword_1003681B8);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10020C024@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10020ED60(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10020C08C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[3];
  v5 = v3[4];
  v6 = v3[5];
  v7 = v3[6];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return sub_1000231A8(v4, v5);
}

uint64_t sub_10020C0E0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[3];
  v8 = v6[4];
  v6[3] = v2;
  v6[4] = v3;
  v6[5] = v4;
  v6[6] = v5;
  sub_1000231A8(v2, v3);
  return sub_100022B28(v7, v8);
}

uint64_t ConnectionAssistantRendererEarthOutline.buffers.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  sub_1000231A8(v1, *(v0 + 32));
  return v1;
}

uint64_t sub_10020C1E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[7];
  v5 = v3[8];
  v6 = v3[9];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return sub_10020C35C(v4);
}

uint64_t sub_10020C23C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  swift_beginAccess();
  v6 = v5[7];
  v5[7] = v2;
  v5[8] = v3;
  v5[9] = v4;
  sub_10020C35C(v2);
  return sub_10020E6C8(v6);
}

uint64_t ConnectionAssistantRendererEarthOutline.textures.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  sub_10020C35C(v1);
  return v1;
}

uint64_t ConnectionAssistantRendererEarthOutline.init(device:)(uint64_t a1)
{
  *(v1 + 65) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  *(v1 + 88) = 0;
  *(v1 + 112) = 1;
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_10020C35C(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    return swift_unknownObjectRetain();
  }

  return result;
}

void ConnectionAssistantRendererEarthOutline.loadTexturesIfNecessary(in:)(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = sub_1000040A8(&qword_100357460);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  if (v4[10])
  {
    return;
  }

  if (v4[14])
  {
    goto LABEL_14;
  }

  v12 = v4[11];
  v13 = __OFSUB__(a1, v12);
  v14 = a1 - v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_19;
  }

  v15 = v4[12];
  if (v14 < 0)
  {
    v13 = __OFSUB__(0, v14);
    v14 = -v14;
    if (v13)
    {
      goto LABEL_20;
    }
  }

  v13 = __OFSUB__(a2, v15);
  v16 = a2 - v15;
  if (v13)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  if (v16 < 0)
  {
    v13 = __OFSUB__(0, v16);
    v16 = -v16;
    if (v13)
    {
      goto LABEL_21;
    }
  }

  if (a2 / 2 < v16 || a1 / 2 < v14)
  {
LABEL_14:
    if (a1)
    {
      if (a2)
      {
        *(v4 + 80) = 1;
        static TaskPriority.userInitiated.getter();
        v18 = type metadata accessor for TaskPriority();
        (*(*(v18 - 8) + 56))(v11, 0, 1, v18);
        v19 = swift_allocObject();
        swift_weakInit();
        v20 = swift_allocObject();
        *(v20 + 16) = 0;
        *(v20 + 24) = 0;
        *(v20 + 32) = v19;
        *(v20 + 40) = a1;
        *(v20 + 48) = a2;
        *(v20 + 56) = a3;
        *(v20 + 64) = v8;
        sub_10020AA80(0, 0, v11, &unk_100290610, v20);

        sub_100008FA0(v11, &qword_100357460);
      }
    }
  }
}

uint64_t sub_10020C5B8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10020C5F0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 248) = a8;
  *(v8 + 240) = a1;
  *(v8 + 224) = a6;
  *(v8 + 232) = a7;
  *(v8 + 216) = a5;
  v9 = type metadata accessor for DispatchTime();
  *(v8 + 256) = v9;
  *(v8 + 264) = *(v9 - 8);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();

  return (_swift_task_switch)(sub_10020C6D4, 0, 0);
}

uint64_t sub_10020C6D4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 37) = Strong;
  if (Strong)
  {
    v2 = Strong;
    static DispatchTime.now()();
    v3 = *(v2 + 16);
    *(v0 + 38) = v3;
    swift_unknownObjectRetain();
    v4 = swift_task_alloc();
    *(v0 + 39) = v4;
    *v4 = v0;
    v4[1] = sub_10020C818;
    v5 = v0[30];
    v6 = *(v0 + 28);
    v7 = *(v0 + 29);

    return sub_10020D4C4((v0 + 9), v3, v6, v7, v5);
  }

  else
  {

    v9 = *(v0 + 1);

    return v9();
  }
}

uint64_t sub_10020C818()
{
  v2 = *v1;
  v3 = *v1;
  v3[40] = v0;
  *(v3 + 41) = *(v3 + 9);
  v3[43] = v2[11];
  v3[44] = v2[12];
  *(v3 + 45) = *(v3 + 13);
  v3[47] = v2[15];

  if (v0)
  {
    v4 = sub_10020CDD4;
  }

  else
  {
    swift_unknownObjectRelease();
    v4 = sub_10020C99C;
  }

  return (_swift_task_switch)(v4, 0, 0);
}

uint64_t sub_10020C99C()
{
  if (qword_100353AD8 != -1)
  {
    swift_once();
  }

  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[32];
  v4 = v0[33];
  v5 = type metadata accessor for Logger();
  sub_10000F53C(v5, qword_100381ED8);
  (*(v4 + 16))(v1, v2, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    static DispatchTime.now()();
    v9 = DispatchTime.uptimeNanoseconds.getter();
    if (DispatchTime.uptimeNanoseconds.getter() >= v9)
    {
      v15 = *(v0[33] + 8);
      v15(v0[34], v0[32]);
      v19 = 0;
    }

    else
    {
      v10 = v0[34];
      v11 = v0[32];
      v12 = v0[33];
      v13 = DispatchTime.uptimeNanoseconds.getter();
      v14 = DispatchTime.uptimeNanoseconds.getter();
      v15 = *(v12 + 8);
      v16 = v15(v10, v11);
      v19 = v13 - v14;
      if (v13 < v14)
      {
        __break(1u);
        return (_swift_task_switch)(v16, v17, v18);
      }
    }

    v20 = v19;
    v15(v0[35], v0[32]);
    *(v8 + 4) = v20 / 0xF4240;
    _os_log_impl(&_mh_execute_header, v6, v7, "Created outline texture asynchronously in %llu ms", v8, 0xCu);
  }

  else
  {
    (*(v0[33] + 8))(v0[35], v0[32]);
  }

  swift_weakInit();
  type metadata accessor for MainActor();
  v0[48] = static MainActor.shared.getter();
  v21 = dispatch thunk of Actor.unownedExecutor.getter();
  v23 = v22;
  v16 = sub_10020CC20;
  v17 = v21;
  v18 = v23;

  return (_swift_task_switch)(v16, v17, v18);
}

uint64_t sub_10020CC20()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    *(v0 + 16) = *(v0 + 328);
    v1 = *(v0 + 376);
    v2 = *(v0 + 360);
    v3 = *(v0 + 240);
    v4 = *(v0 + 224);
    v5 = *(v0 + 232);
    *(v0 + 32) = *(v0 + 344);
    *(v0 + 48) = v2;
    *(v0 + 64) = v1;
    sub_10020DB84((v0 + 16), v4, v5, v3);
  }

  swift_weakDestroy();

  return (_swift_task_switch)(sub_10020CCF4, 0, 0);
}

uint64_t sub_10020CCF4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v1 = v0[36];
  v2 = v0[32];
  v3 = v0[33];
  sub_10020D234(v1);

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10020CDD4()
{
  swift_unknownObjectRelease();
  if (qword_100353AD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381ED8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to create outline textures: %@", v4, 0xCu);
    sub_100008FA0(v5, &qword_100359B00);
  }

  swift_weakInit();
  type metadata accessor for MainActor();
  *(v0 + 392) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_10020CFB4, v8, v7);
}

uint64_t sub_10020CFB4()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 240);
    v3 = *(v0 + 224);
    *(Strong + 80) = 0;
    *(Strong + 88) = v3;
    *(Strong + 104) = v2;
    *(Strong + 112) = 0;
  }

  swift_weakDestroy();

  return (_swift_task_switch)(sub_10020D060, 0, 0);
}

uint64_t sub_10020D060()
{

  v1 = v0[36];
  v2 = v0[32];
  v3 = v0[33];
  sub_10020D234(v1);

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10020D114()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10020D154(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = v1[7];
  v10 = *(v1 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000490DC;

  return sub_10020C5F0(v9, a1, v4, v5, v6, v7, v8, v10);
}

void sub_10020D234(uint64_t a1)
{
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  if (qword_100353AD8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000F53C(v9, qword_100381ED8);
  (*(v3 + 16))(v8, a1, v2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v10, v11))
  {
    (*(v3 + 8))(v8, v2);
LABEL_10:

    return;
  }

  v12 = swift_slowAlloc();
  *v12 = 134217984;
  static DispatchTime.now()();
  v13 = DispatchTime.uptimeNanoseconds.getter();
  if (DispatchTime.uptimeNanoseconds.getter() >= v13)
  {
    v16 = *(v3 + 8);
    v16(v5, v2);
    v17 = 0;
LABEL_9:
    v18 = v17;
    v16(v8, v2);
    *(v12 + 4) = v18 / 0xF4240;
    _os_log_impl(&_mh_execute_header, v10, v11, "Done handling outline texture asynchronously in %llu ms", v12, 0xCu);

    goto LABEL_10;
  }

  v14 = DispatchTime.uptimeNanoseconds.getter();
  v15 = DispatchTime.uptimeNanoseconds.getter();
  v16 = *(v3 + 8);
  v16(v5, v2);
  v17 = v14 - v15;
  if (v14 >= v15)
  {
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_10020D4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v6 + 64) = v5;
  *(v6 + 56) = a5;
  *(v6 + 40) = a3;
  *(v6 + 48) = a4;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  v7 = type metadata accessor for URL();
  *(v6 + 72) = v7;
  *(v6 + 80) = *(v7 - 8);
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 96) = swift_task_alloc();

  return (_swift_task_switch)(sub_10020D59C, 0, 0);
}

uint64_t sub_10020D59C()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 URLForResource:v3 withExtension:v4];

  if (v5)
  {
    v7 = *(v0 + 11);
    v6 = *(v0 + 12);
    v8 = *(v0 + 9);
    v9 = *(v0 + 10);
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v9 + 32))(v6, v7, v8);
    *(v0 + 13) = Data.init(contentsOf:options:)();
    *(v0 + 14) = v10;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_10020F44C();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v14 = *(v0 + 2);
    *(v0 + 15) = v14;
    v15 = swift_task_alloc();
    *(v0 + 16) = v15;
    *v15 = v0;
    v15[1] = sub_10020D85C;
    v16 = v0[7];
    v17 = *(v0 + 5);
    v18 = *(v0 + 6);
    v19 = *(v0 + 4);

    return sub_10020F4A0(v14, v17, v18, v19, v16);
  }

  else
  {
    sub_10020F3F8();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();

    v12 = *(v0 + 1);

    return v12();
  }
}

uint64_t sub_10020D85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[17] = a1;
  v5[18] = a2;
  v5[19] = a3;
  v5[20] = v3;

  if (v3)
  {

    v6 = sub_10020DAE8;
  }

  else
  {
    v6 = sub_10020D97C;
  }

  return (_swift_task_switch)(v6, 0, 0);
}

uint64_t sub_10020D97C()
{
  v1 = *(v0 + 160);
  v2 = sub_10021069C(*(v0 + 120), *(v0 + 32));
  v6 = *(v0 + 144);
  v7 = *(v0 + 152);
  v8 = *(v0 + 136);
  v9 = *(v0 + 112);
  v10 = *(v0 + 104);
  if (v1)
  {
    (*(*(v0 + 80) + 8))(*(v0 + 96), *(v0 + 72));
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_10000F4E8(v10, v9);
  }

  else
  {
    v12 = v4;
    v15 = v2;
    v16 = v5;
    v17 = v3;
    v13 = *(v0 + 24);
    (*(*(v0 + 80) + 8))(*(v0 + 96), *(v0 + 72));
    sub_10000F4E8(v10, v9);

    *v13 = v8;
    v13[1] = v6;
    v13[2] = v7;
    v13[3] = v15;
    v13[4] = v17;
    v13[5] = v12;
    v13[6] = v16;
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10020DAE8()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  sub_10000F4E8(v0[13], v0[14]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t *sub_10020DB84(uint64_t *result, uint64_t a2, uint64_t a3, double a4)
{
  v5 = *result;
  v6 = result[1];
  v7 = result[2];
  v8 = result[4];
  v9 = result[6];
  *(v4 + 80) = 0;
  *(v4 + 88) = a2;
  *(v4 + 96) = a3;
  *(v4 + 104) = a4;
  *(v4 + 112) = 0;
  if (v5)
  {
    v10 = result[5];
    v11 = result[3];
    sub_100006C20(result, v15, &unk_1003681C8);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_beginAccess();
    v12 = *(v4 + 56);
    *(v4 + 56) = v5;
    *(v4 + 64) = v6;
    *(v4 + 72) = v7;
    sub_10020E6C8(v12);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_beginAccess();
    v13 = *(v4 + 24);
    v14 = *(v4 + 32);
    *(v4 + 24) = v11;
    *(v4 + 32) = v8;
    *(v4 + 40) = v10;
    *(v4 + 48) = v9;
    return sub_100022B28(v13, v14);
  }

  return result;
}

void sub_10020DC84(void *a1, unint64_t a2, double a3, double a4, CGFloat a5, double a6, double a7)
{
  v89 = a7;
  v96 = type metadata accessor for CGPathFillRule();
  v13 = *(v96 - 8);
  __chkstk_darwin(v96);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  GenericRGB = CGColorCreateGenericRGB(1.0, 0.0, 0.0, 1.0);
  v90 = CGColorCreateGenericRGB(0.0, 1.0, 0.0, 1.0);
  v97 = CGColorCreateGenericRGB(0.0, 0.0, 1.0, 1.0);
  if (a2 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_18:

    return;
  }

  v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v16 >= 1)
  {
    v17 = 0;
    v18 = a2 & 0xC000000000000001;
    v19 = -a3;
    v20 = -a4;
    v94 = enum case for CGPathFillRule.evenOdd(_:);
    v92 = (v13 + 8);
    v93 = (v13 + 104);
    v86 = v89 * 0.125;
    v87 = v89 * 0.0625;
    v85 = v89 * 0.25;
    v84 = v89 * 0.5;
    v88 = a2;
    v95 = a2 & 0xC000000000000001;
    while (1)
    {
      if (v18)
      {
        if (!*(specialized _ArrayBuffer._getElementSlowPath(_:)() + 40))
        {
          goto LABEL_11;
        }
      }

      else
      {
        v21 = *(a2 + 8 * v17 + 32);

        if (!*(v21 + 40))
        {
LABEL_11:
          v22 = sub_10020B8B4(a3, a4);
          v23 = [a1 CGContext];
          CGContextSaveGState(v23);

          v24 = [a1 CGContext];
          CGContextSetBlendMode(v24, kCGBlendModePlusLighter);

          v25 = [a1 CGContext];
          v26 = v25;
          if (a5 == 0.0)
          {
            CGContextSetFillColorWithColor(v25, v97);

            v27 = [a1 CGContext];
            CGContextAddPath(v27, v22);

            v28 = [a1 CGContext];
            v29 = v96;
            (*v93)(v15, v94, v96);
            CGContextRef.fillPath(using:)();

            (*v92)(v15, v29);
            v30 = [a1 CGContext];
            CGContextTranslateCTM(v30, v19, v20);

            if (a6 != 0.0)
            {
              goto LABEL_13;
            }
          }

          else
          {
            CGContextTranslateCTM(v25, v19, v20);

            v78 = [a1 CGContext];
            v103.width = a3;
            v103.height = a4;
            CGContextSetShadowWithColor(v78, v103, a5, v97);

            v79 = [a1 CGContext];
            CGContextSetFillColorWithColor(v79, GenericRGB);

            v80 = [a1 CGContext];
            CGContextAddPath(v80, v22);

            v81 = [a1 CGContext];
            v82 = v96;
            (*v93)(v15, v94, v96);
            CGContextRef.fillPath(using:)();

            (*v92)(v15, v82);
            if (a6 != 0.0)
            {
LABEL_13:
              v31 = [a1 CGContext];
              v98.width = a3;
              v98.height = a4;
              v32 = v20;
              v33 = v19;
              v34 = v87;
              v35 = v90;
              CGContextSetShadowWithColor(v31, v98, v87, v90);

              v36 = [a1 CGContext];
              v37 = v34;
              v19 = v33;
              v20 = v32;
              CGContextSetLineWidth(v36, v37);

              v38 = [a1 CGContext];
              CGContextSetLineJoin(v38, kCGLineJoinBevel);

              v39 = [a1 CGContext];
              v40 = GenericRGB;
              CGContextSetStrokeColorWithColor(v39, GenericRGB);

              v41 = [a1 CGContext];
              CGContextSetAlpha(v41, a6 * 0.2);

              v42 = [a1 CGContext];
              CGContextAddPath(v42, v22);

              v43 = [a1 CGContext];
              CGContextStrokePath(v43);

              v44 = [a1 CGContext];
              v99.width = a3;
              v99.height = a4;
              v45 = v86;
              CGContextSetShadowWithColor(v44, v99, v86, v35);

              v46 = [a1 CGContext];
              CGContextSetLineWidth(v46, v45);

              v47 = [a1 CGContext];
              CGContextSetLineJoin(v47, kCGLineJoinBevel);

              v48 = [a1 CGContext];
              CGContextSetStrokeColorWithColor(v48, v40);

              v49 = [a1 CGContext];
              CGContextSetAlpha(v49, a6 * 0.2);

              v50 = [a1 CGContext];
              CGContextAddPath(v50, v22);

              v51 = [a1 CGContext];
              CGContextStrokePath(v51);

              v52 = [a1 CGContext];
              v100.width = a3;
              v100.height = a4;
              v53 = v85;
              CGContextSetShadowWithColor(v52, v100, v85, v35);

              v54 = [a1 CGContext];
              CGContextSetLineWidth(v54, v53);

              v55 = [a1 CGContext];
              CGContextSetLineJoin(v55, kCGLineJoinBevel);

              v56 = [a1 CGContext];
              CGContextSetStrokeColorWithColor(v56, v40);

              v57 = [a1 CGContext];
              CGContextSetAlpha(v57, a6 * 0.2);

              v58 = [a1 CGContext];
              CGContextAddPath(v58, v22);

              v59 = [a1 CGContext];
              CGContextStrokePath(v59);

              v60 = [a1 CGContext];
              v101.width = a3;
              v101.height = a4;
              v61 = v84;
              CGContextSetShadowWithColor(v60, v101, v84, v35);

              v62 = [a1 CGContext];
              CGContextSetLineWidth(v62, v61);

              v63 = [a1 CGContext];
              CGContextSetLineJoin(v63, kCGLineJoinBevel);

              v64 = [a1 CGContext];
              CGContextSetStrokeColorWithColor(v64, v40);

              v65 = [a1 CGContext];
              CGContextSetAlpha(v65, a6 * 0.2);

              v66 = [a1 CGContext];
              CGContextAddPath(v66, v22);

              v67 = [a1 CGContext];
              CGContextStrokePath(v67);

              v68 = [a1 CGContext];
              v102.width = a3;
              v102.height = a4;
              v69 = v89;
              v70 = v35;
              a2 = v88;
              CGContextSetShadowWithColor(v68, v102, v89, v70);

              v71 = [a1 CGContext];
              CGContextSetLineWidth(v71, v69);

              v72 = [a1 CGContext];
              CGContextSetLineJoin(v72, kCGLineJoinBevel);

              v73 = [a1 CGContext];
              CGContextSetStrokeColorWithColor(v73, v40);

              v74 = [a1 CGContext];
              CGContextSetAlpha(v74, a6 * 0.2);

              v75 = [a1 CGContext];
              CGContextAddPath(v75, v22);

              v76 = [a1 CGContext];
              CGContextStrokePath(v76);
            }
          }

          v77 = [a1 CGContext];
          CGContextRestoreGState(v77);

          v18 = v95;
          goto LABEL_6;
        }
      }

LABEL_6:
      if (v16 == ++v17)
      {
        goto LABEL_18;
      }
    }
  }

  __break(1u);
}

uint64_t *ConnectionAssistantRendererEarthOutline.deinit()
{
  swift_unknownObjectRelease();
  sub_100022B28(v0[3], v0[4]);
  sub_10020E6C8(v0[7]);
  return v0;
}

uint64_t sub_10020E6C8(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ConnectionAssistantRendererEarthOutline.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  sub_100022B28(v0[3], v0[4]);
  sub_10020E6C8(v0[7]);

  return swift_deallocClassInstance();
}

unint64_t sub_10020E768()
{
  result = qword_100367EF8;
  if (!qword_100367EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100367EF8);
  }

  return result;
}

unint64_t sub_10020E854()
{
  result = qword_100368170;
  if (!qword_100368170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368170);
  }

  return result;
}

uint64_t sub_10020E8A8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10020E9A0;

  return v6(a1);
}

uint64_t sub_10020E9A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_10020EA98(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100323B78, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void *sub_10020EAE4(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_24:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
      goto LABEL_3;
    }

    return _swiftEmptyDictionarySingleton;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return _swiftEmptyDictionarySingleton;
  }

LABEL_3:
  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v6 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v5 = *(a1 + 8 * i + 32);

      v6 = i + 1;
      if (__OFADD__(i, 1))
      {
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    v23 = v6;
    v8 = *(v5 + 16);
    v7 = *(v5 + 24);

    v10 = sub_100186A08(v8, v7);
    v11 = _swiftEmptyDictionarySingleton[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      goto LABEL_22;
    }

    v14 = v9;
    if (_swiftEmptyDictionarySingleton[3] < v13)
    {
      break;
    }

LABEL_15:
    if (v14)
    {

      v4 = (_swiftEmptyDictionarySingleton[7] + 8 * v10);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
      sub_1000040A8(&qword_1003681A0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_100281610;
      *(v17 + 32) = v5;
      _swiftEmptyDictionarySingleton[(v10 >> 6) + 8] |= 1 << v10;
      v18 = (_swiftEmptyDictionarySingleton[6] + 16 * v10);
      *v18 = v8;
      v18[1] = v7;
      *(_swiftEmptyDictionarySingleton[7] + 8 * v10) = v17;
      v19 = _swiftEmptyDictionarySingleton[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_23;
      }

      _swiftEmptyDictionarySingleton[2] = v21;
    }

    if (v23 == v2)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  sub_100090614(v13, 1);
  v15 = sub_100186A08(v8, v7);
  if ((v14 & 1) == (v16 & 1))
  {
    v10 = v15;
    goto LABEL_15;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10020ED60(void *a1)
{
  v3 = sub_1000040A8(&qword_100368178);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - v5;
  sub_1000088DC(a1, a1[3]);
  sub_10020F130();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100008964(a1);
    return v3;
  }

  sub_1000040A8(&qword_100368188);
  sub_10020F184(&qword_100368190, &qword_100368198);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v6;
  v22 = v4;
  v23 = v3;
  v25 = a1;
  v3 = v24;

  v9 = sub_10020EAE4(v8);

  v20[1] = 0;
  if (v3 >> 62)
  {
LABEL_28:
    result = _CocoaArrayWrapper.endIndex.getter();
    v10 = result;
    if (result)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

  v10 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
LABEL_29:

    (*(v22 + 8))(v21, v23);
    sub_100008964(v25);
    return v3;
  }

LABEL_7:
  if (v10 >= 1)
  {
    v11 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v13 = *(v12 + 40);
        if (!v13)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v12 = *(v3 + 8 * v11 + 32);

        v13 = *(v12 + 40);
        if (!v13)
        {
          goto LABEL_10;
        }
      }

      if (!v9[2])
      {
        goto LABEL_10;
      }

      v14 = *(v12 + 32);

      v15 = sub_100186A08(v14, v13);
      v17 = v16;

      if ((v17 & 1) == 0)
      {
        goto LABEL_10;
      }

      v18 = *(v9[7] + 8 * v15);
      if (v18 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_10;
        }
      }

      else if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_10;
      }

      if ((v18 & 0xC000000000000001) != 0)
      {

        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_28;
        }

        v19 = *(v18 + 32);
      }

      swift_beginAccess();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v19 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v19 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

LABEL_10:
      ++v11;

      if (v10 == v11)
      {
        goto LABEL_29;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10020F130()
{
  result = qword_100368180;
  if (!qword_100368180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368180);
  }

  return result;
}

uint64_t sub_10020F184(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100008CF0(&qword_100368188);
    sub_10020F20C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10020F20C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ConnectionAssistantRendererEarthOutline.Shapes.Shape();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10020F250()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10020F288(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100049248;

  return sub_10020E8A8(a1, v4);
}

uint64_t sub_10020F340(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000490DC;

  return sub_10020E8A8(a1, v4);
}

unint64_t sub_10020F3F8()
{
  result = qword_1003681D8;
  if (!qword_1003681D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003681D8);
  }

  return result;
}

unint64_t sub_10020F44C()
{
  result = qword_1003681E0;
  if (!qword_1003681E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003681E0);
  }

  return result;
}

uint64_t sub_10020F4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 328) = a4;
  *(v5 + 320) = a5;
  *(v5 + 304) = a2;
  *(v5 + 312) = a3;
  *(v5 + 296) = a1;
  return (_swift_task_switch)(sub_10020F4CC, 0, 0);
}

uint64_t sub_10020F4CC()
{
  v1 = *(v0 + 39);
  v2 = v0[40];
  v3 = *(v0 + 37);
  v4 = *(v0 + 38);
  v23 = [objc_allocWithZone(MTKTextureLoader) initWithDevice:*(v0 + 41)];
  *(v0 + 42) = v23;
  v5 = v4;
  if (v4 <= v1)
  {
    v5 = v1;
  }

  v6 = v5 * 0.125;
  v7 = v5 * 0.5 * 0.125;
  v8 = v5 * 0.125 * 0.01;
  v9 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  *(v0 + 43) = v9;
  [v9 setScale:v2];
  [v9 setOpaque:1];
  v10 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v9 format:{v6, v7}];
  *(v0 + 44) = v10;
  v11 = swift_allocObject();
  *(v0 + 45) = v11;
  *(v11 + 16) = v6;
  *(v11 + 24) = v7;
  *(v11 + 32) = v3;
  *(v11 + 40) = xmmword_10027F380;
  *(v11 + 56) = v8;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100210BE8;
  *(v12 + 24) = v11;
  *(v0 + 30) = sub_10008B7D4;
  *(v0 + 31) = v12;
  *(v0 + 26) = _NSConcreteStackBlock;
  *(v0 + 27) = 1107296256;
  *(v0 + 28) = sub_10008B6F4;
  *(v0 + 29) = &unk_1003386B8;
  v13 = _Block_copy(v0 + 26);

  v14 = [v10 imageWithActions:v13];
  *(v0 + 46) = v14;
  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
    return _swift_continuation_await(v15);
  }

  v16 = [v14 CGImage];
  *(v0 + 47) = v16;
  if (v16)
  {
    v17 = v16;
    *(v0 + 2) = v0;
    *(v0 + 7) = v0 + 36;
    *(v0 + 3) = sub_10020F8C0;
    v18 = swift_continuation_init();
    v19 = sub_1000040A8(&qword_100357488);
    *(v0 + 48) = v19;
    *(v0 + 33) = v19;
    *(v0 + 26) = _NSConcreteStackBlock;
    *(v0 + 27) = 1107296256;
    *(v0 + 28) = sub_1000477F0;
    *(v0 + 29) = &unk_1003386E0;
    *(v0 + 30) = v18;
    [v23 newTextureWithCGImage:v17 options:0 completionHandler:v0 + 26];
    v15 = (v0 + 2);

    return _swift_continuation_await(v15);
  }

  sub_10020F3F8();
  swift_allocError();
  *v20 = 2;
  swift_willThrow();

  v21 = *(v0 + 1);

  return v21();
}

uint64_t sub_10020F8C0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 392) = v1;
  if (v1)
  {
    v2 = sub_10020FED0;
  }

  else
  {
    v2 = sub_10020F9D0;
  }

  return (_swift_task_switch)(v2, 0, 0);
}

uint64_t sub_10020F9D0()
{
  v2 = *(v0 + 46);
  v1 = *(v0 + 47);
  v3 = *(v0 + 44);
  v4 = *(v0 + 39);
  v5 = v0[40];
  v6 = *(v0 + 37);
  v7 = *(v0 + 38);

  if (v7 > v4)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  v9 = v8 * 0.5;
  v0[50] = v0[36];

  v10 = v8 * 0.0625;
  v11 = v9 * 0.0625;
  v12 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  *(v0 + 51) = v12;
  [v12 setScale:v5];
  [v12 setOpaque:1];
  v13 = objc_allocWithZone(UIGraphicsImageRenderer);
  v0[34] = v10;
  v0[35] = v11;
  v14 = [v13 initWithSize:v12 format:{v10, v11}];
  *(v0 + 52) = v14;
  v15 = swift_allocObject();
  *(v0 + 53) = v15;
  *(v15 + 16) = v10;
  *(v15 + 24) = v11;
  *(v15 + 32) = v6;
  *(v15 + 40) = v10 * 0.004;
  *(v15 + 48) = 0;
  *(v15 + 56) = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_100210EB8;
  *(v16 + 24) = v15;
  *(v0 + 30) = sub_100210EBC;
  *(v0 + 31) = v16;
  *(v0 + 26) = _NSConcreteStackBlock;
  *(v0 + 27) = 1107296256;
  *(v0 + 28) = sub_10008B6F4;
  *(v0 + 29) = &unk_100338758;
  v17 = _Block_copy(v0 + 26);

  v18 = [v14 imageWithActions:v17];
  *(v0 + 54) = v18;
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    return _swift_continuation_await(v20);
  }

  v21 = [v18 CGImage];
  *(v0 + 55) = v21;
  if (v21)
  {
    v22 = v21;
    v23 = *(v0 + 48);
    v24 = *(v0 + 42);
    *(v0 + 10) = v0;
    *(v0 + 15) = v0 + 36;
    *(v0 + 11) = sub_10020FDC0;
    v25 = swift_continuation_init();
    *(v0 + 33) = v23;
    *(v0 + 26) = _NSConcreteStackBlock;
    *(v0 + 27) = 1107296256;
    *(v0 + 28) = sub_1000477F0;
    *(v0 + 29) = &unk_100338780;
    *(v0 + 30) = v25;
    [v24 newTextureWithCGImage:v22 options:0 completionHandler:v0 + 26];
    v20 = (v0 + 10);

    return _swift_continuation_await(v20);
  }

  sub_10020F3F8();
  swift_allocError();
  *v26 = 2;
  swift_willThrow();

  v27 = *(v0 + 42);
  swift_unknownObjectRelease();

  v28 = *(v0 + 1);

  return v28();
}

uint64_t sub_10020FDC0()
{
  v1 = *(*v0 + 112);
  *(*v0 + 448) = v1;
  if (v1)
  {
    v2 = sub_100210490;
  }

  else
  {
    v2 = sub_10020FF78;
  }

  return (_swift_task_switch)(v2, 0, 0);
}

uint64_t sub_10020FED0()
{
  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  v3 = *(v0 + 352);
  v4 = *(v0 + 344);
  swift_willThrow();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10020FF78()
{
  v2 = *(v0 + 54);
  v1 = *(v0 + 55);
  v3 = *(v0 + 52);
  v4 = v0[34];
  v5 = v0[35];
  v7 = *(v0 + 39);
  v6 = v0[40];
  v8 = *(v0 + 37);
  v9 = *(v0 + 38);

  v10 = v9;
  if (v9 <= v7)
  {
    v10 = v7;
  }

  v11 = v10 * 0.5 * 0.0625;
  v12 = v10 * 0.0625;
  v0[57] = v0[36];

  v13 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  *(v0 + 58) = v13;
  [v13 setScale:v6];
  [v13 setOpaque:1];
  v14 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v13 format:{v4, v5}];
  *(v0 + 59) = v14;
  v15 = swift_allocObject();
  *(v0 + 60) = v15;
  *(v15 + 16) = v12;
  *(v15 + 24) = v11;
  *(v15 + 32) = v8;
  *(v15 + 40) = v12 * 0.012;
  *(v15 + 48) = 0;
  *(v15 + 56) = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_100210EB8;
  *(v16 + 24) = v15;
  *(v0 + 30) = sub_100210EBC;
  *(v0 + 31) = v16;
  *(v0 + 26) = _NSConcreteStackBlock;
  *(v0 + 27) = 1107296256;
  *(v0 + 28) = sub_10008B6F4;
  *(v0 + 29) = &unk_1003387F8;
  v17 = _Block_copy(v0 + 26);

  v18 = [v14 imageWithActions:v17];
  *(v0 + 61) = v18;
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    return _swift_continuation_await(v20);
  }

  v21 = [v18 CGImage];
  *(v0 + 62) = v21;
  if (v21)
  {
    v22 = v21;
    v23 = *(v0 + 48);
    v24 = *(v0 + 42);
    *(v0 + 18) = v0;
    *(v0 + 23) = v0 + 36;
    *(v0 + 19) = sub_100210380;
    v25 = swift_continuation_init();
    *(v0 + 33) = v23;
    *(v0 + 26) = _NSConcreteStackBlock;
    *(v0 + 27) = 1107296256;
    *(v0 + 28) = sub_1000477F0;
    *(v0 + 29) = &unk_100338820;
    *(v0 + 30) = v25;
    [v24 newTextureWithCGImage:v22 options:0 completionHandler:v0 + 26];
    v20 = (v0 + 18);

    return _swift_continuation_await(v20);
  }

  sub_10020F3F8();
  swift_allocError();
  *v26 = 2;
  swift_willThrow();

  v27 = *(v0 + 42);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v28 = *(v0 + 1);

  return v28();
}

uint64_t sub_100210380()
{
  v1 = *(*v0 + 176);
  *(*v0 + 504) = v1;
  if (v1)
  {
    v2 = sub_1002105E4;
  }

  else
  {
    v2 = sub_10021053C;
  }

  return (_swift_task_switch)(v2, 0, 0);
}

uint64_t sub_100210490()
{
  v1 = v0[55];
  v2 = v0[54];
  v4 = v0[51];
  v3 = v0[52];
  swift_willThrow();

  v5 = v0[42];
  swift_unknownObjectRelease();

  v6 = v0[1];

  return v6();
}

uint64_t sub_10021053C()
{
  v2 = *(v0 + 488);
  v1 = *(v0 + 496);
  v3 = *(v0 + 472);
  v4 = *(v0 + 336);

  v5 = *(v0 + 288);

  v6 = *(v0 + 8);
  v7 = *(v0 + 456);
  v8 = *(v0 + 400);

  return v6(v8, v7, v5);
}

uint64_t sub_1002105E4()
{
  v1 = v0[62];
  v2 = v0[61];
  v4 = v0[58];
  v3 = v0[59];
  swift_willThrow();

  v5 = v0[42];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v6 = v0[1];

  return v6();
}

char *sub_10021069C(unint64_t a1, void *a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  result = sub_10017C8E4(0, v4, 0, _swiftEmptyArrayStorage);
  v6 = result;
  v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v53 = a2;
  if (v7)
  {
    while (v7 >= 1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = 0;
        v9 = 0;
        while (1)
        {
          v10 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 48);

          swift_unknownObjectRelease();
          a2 = *(v10 + 16);

          v11 = __OFADD__(v8, a2);
          v8 += a2;
          if (v11)
          {
            break;
          }

          if (v7 == ++v9)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
      }

      else
      {
        v8 = 0;
        v12 = v3 + 32;
        v13 = v7;
        while (1)
        {
          v14 = *(*(*v12 + 48) + 16);
          v11 = __OFADD__(v8, v14);
          v8 += v14;
          if (v11)
          {
            break;
          }

          v12 += 8;
          if (!--v13)
          {
            goto LABEL_17;
          }
        }
      }

      __break(1u);
LABEL_15:
      v4 = _CocoaArrayWrapper.endIndex.getter();
      v6 = sub_10017C8E4(0, v4 & ~(v4 >> 63), 0, _swiftEmptyArrayStorage);
      result = _CocoaArrayWrapper.endIndex.getter();
      v7 = result;
      v53 = a2;
      if (!result)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_69;
  }

LABEL_16:
  v8 = 0;
LABEL_17:
  if (__OFADD__(v8, v4))
  {
    goto LABEL_66;
  }

  v52 = v4;
  result = sub_10017C7C8(0, (v8 + v4) & ~((v8 + v4) >> 63), 0, _swiftEmptyArrayStorage);
  v15 = result;
  v55 = v3 & 0xC000000000000001;
  v57 = v7;
  if (v7)
  {
    v16 = 0;
    v54 = v3 & 0xFFFFFFFFFFFFFF8;
    v56 = v3;
    do
    {
      v17 = v15;
      v18 = v16;
      while (1)
      {
        if (v55)
        {
          result = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v19 = result;
          v16 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_60;
          }
        }

        else
        {
          if (v18 >= *(v54 + 16))
          {
            goto LABEL_61;
          }

          v19 = *(v56 + 8 * v18 + 32);

          v16 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
            goto LABEL_64;
          }
        }

        v20 = v17;
        v21 = *(v17 + 2);
        if (HIDWORD(v21))
        {
          goto LABEL_62;
        }

        v22 = *(*(v19 + 6) + 16);
        if (HIDWORD(v22))
        {
          goto LABEL_63;
        }

        v24 = *(v6 + 2);
        v23 = *(v6 + 3);
        if (v24 >= v23 >> 1)
        {
          result = sub_10017C8E4((v23 > 1), v24 + 1, 1, v6);
          v20 = v17;
          v6 = result;
        }

        *(v6 + 2) = v24 + 1;
        v25 = &v6[8 * v24];
        *(v25 + 8) = v21;
        *(v25 + 9) = v22;
        v26 = *(v19 + 6);
        v27 = *(v26 + 16);
        if (v27)
        {
          break;
        }

        ++v18;
        v7 = v57;
        if (v16 == v57)
        {
          v15 = v17;
          v3 = v56;
          goto LABEL_40;
        }
      }

      if (v18 > 0xFF)
      {
        goto LABEL_70;
      }

      v28 = *(v20 + 2);
      v29 = 12 * v28;
      v30 = 32;
      do
      {
        v31 = *(v26 + v30);
        v32 = *(v20 + 3);
        v33 = v28 + 1;
        if (v28 >= v32 >> 1)
        {
          v51 = *(v26 + v30);
          v35 = sub_10017C7C8((v32 > 1), v28 + 1, 1, v20);
          v31 = v51;
          v20 = v35;
        }

        *(v20 + 2) = v33;
        v34 = &v20[v29];
        v34[32] = v18;
        *(v34 + 36) = vcvt_f32_f64(v31);
        v29 += 12;
        v30 += 16;
        v28 = v33;
        --v27;
      }

      while (v27);

      v15 = v20;
      v7 = v57;
      v3 = v56;
    }

    while (v16 != v57);
  }

LABEL_40:
  v36 = *(v6 + 2);
  if (v36 >> 60)
  {
    goto LABEL_67;
  }

  v37 = v6 + 32;
  v38 = v15;
  result = [v53 newBufferWithBytes:v37 length:8 * v36 options:0];
  if ((*(v38 + 2) * 12) >> 64 != (12 * *(v38 + 2)) >> 63)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v39 = result;
  v40 = [v53 newBufferWithBytes:v38 + 32 length:? options:?];

  if (v40)
  {
    v41 = v39 == 0;
  }

  else
  {
    v41 = 1;
  }

  if (v41)
  {
    sub_10020F3F8();
    swift_allocError();
    *v42 = 0;
    swift_willThrow();

    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  if (!v7)
  {
LABEL_59:

    return v52;
  }

  if (v7 >= 1)
  {
    v43 = v3;
    if (v55)
    {
      v44 = 0;
      v45 = 0;
      while (1)
      {
        v46 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 48);

        swift_unknownObjectRelease();
        v47 = *(v46 + 16);

        v11 = __OFADD__(v44, v47);
        v44 += v47;
        if (v11)
        {
          break;
        }

        if (v57 == ++v45)
        {
          goto LABEL_59;
        }
      }

LABEL_64:
      __break(1u);
    }

    else
    {
      v48 = 0;
      v49 = v43 + 32;
      while (1)
      {
        v50 = *(*(*v49 + 48) + 16);
        v11 = __OFADD__(v48, v50);
        v48 += v50;
        if (v11)
        {
          break;
        }

        v49 += 8;
        if (!--v7)
        {
          goto LABEL_59;
        }
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

LABEL_71:
  __break(1u);
  return result;
}