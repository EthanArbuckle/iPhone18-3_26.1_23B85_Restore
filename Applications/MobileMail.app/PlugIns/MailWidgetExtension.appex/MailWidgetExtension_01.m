id sub_100020F5C()
{
  sub_10001DE64();
  isa = sub_10007D998().super.isa;
  v2 = [swift_getObjCClassFromMetadata() andPredicateWithSubpredicates:isa];
  _objc_release(isa);

  return v2;
}

uint64_t sub_100021054()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  swift_unknownObjectRetain();
  swift_endAccess();
  return v2;
}

uint64_t sub_1000210A4(uint64_t a1)
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_100021104()
{
  swift_beginAccess();
  v2 = *(v0 + 24);

  swift_endAccess();
  return v2;
}

uint64_t sub_100021154(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;

  swift_endAccess();
}

uint64_t sub_1000211B4()
{
  swift_beginAccess();
  v2 = *(v0 + 32);

  swift_endAccess();
  return v2;
}

uint64_t sub_100021204(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;

  swift_endAccess();
}

uint64_t sub_1000212C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectRetain();
  v4[2] = a1;

  v4[3] = a2;
  sub_1000094DC(&qword_10009B0D0, &qword_10007F5F8);
  v10 = sub_10007DEC8();
  v9 = v5;

  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *v9 = sub_100023B50;
  v9[1] = v6;
  sub_100006FD4();
  v4[4] = v10;

  swift_unknownObjectRelease();
  return v14;
}

uint64_t sub_100021444()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];

  sub_10000A480(v0 + 4);
  return v4;
}

uint64_t sub_1000214CC()
{
  v2 = sub_10007CEF8();
  sub_100001F90(v2, qword_10009B030);
  sub_10000202C(v2, qword_10009B030);
  v0 = type metadata accessor for MailStatusDataSource();
  return sub_100016180(v0, v0);
}

uint64_t sub_100021534()
{
  if (qword_10009A618 != -1)
  {
    swift_once();
  }

  v0 = sub_10007CEF8();
  return sub_10000202C(v0, qword_10009B030);
}

uint64_t sub_1000215A0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100021534();
  v1 = sub_10007CEF8();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

void *sub_10002160C()
{
  v2 = *(v0 + OBJC_IVAR____TtC19MailWidgetExtension20MailStatusDataSource_messageRepository);
  _objc_retain(v2);
  return v2;
}

uint64_t sub_100021654()
{
  v2 = (v0 + OBJC_IVAR____TtC19MailWidgetExtension20MailStatusDataSource_state);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1000216BC(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR____TtC19MailWidgetExtension20MailStatusDataSource_state);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_100021740()
{
  v2 = (v0 + OBJC_IVAR____TtC19MailWidgetExtension20MailStatusDataSource_debouncers);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1000217A8(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR____TtC19MailWidgetExtension20MailStatusDataSource_debouncers);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

char *sub_10002182C(void *a1)
{
  ObjectType = swift_getObjectType();
  v9 = a1;
  v10 = v1;
  v3 = OBJC_IVAR____TtC19MailWidgetExtension20MailStatusDataSource_state;
  sub_1000094DC(&qword_10009B0D8, &qword_10007F600);
  sub_10007DEC8();
  sub_1000094DC(&unk_10009BB40, &qword_10007F5B0);
  type metadata accessor for MailStatusDataSource.State();
  sub_100021A14();
  *&v1[v3] = sub_10007D7E8();
  v4 = OBJC_IVAR____TtC19MailWidgetExtension20MailStatusDataSource_debouncers;
  sub_1000094DC(&qword_10009B0E0, &qword_10007F608);
  sub_10007DEC8();
  sub_100022774();
  *&v10[v4] = sub_10007D7E8();
  _objc_retain(a1);
  *&v10[OBJC_IVAR____TtC19MailWidgetExtension20MailStatusDataSource_messageRepository] = a1;
  v8.receiver = v10;
  v8.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v8, "init");
  _objc_retain(v7);
  v10 = v7;
  _objc_release(a1);
  _objc_release(v10);
  return v7;
}

unint64_t sub_100021A14()
{
  v2 = qword_10009B078;
  if (!qword_10009B078)
  {
    sub_100009860(&unk_10009BB40, &qword_10007F5B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B078);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100021ADC(uint64_t a1, void *a2)
{
  v78 = a2;
  v77 = a1;
  v76 = 0;
  v101 = 0;
  v100 = 0;
  v75 = 0;
  v94 = 0;
  v79 = sub_10007CEF8();
  v80 = *(v79 - 8);
  v81 = v80;
  v82 = *(v80 + 64);
  v2 = __chkstk_darwin(v77);
  v84 = (v82 + 15) & 0xFFFFFFFFFFFFFFF0;
  v83 = &v17 - v84;
  v3 = __chkstk_darwin(v2);
  v85 = &v17 - v84;
  v86 = v3 + 16;
  v101 = v3 + 16;
  v100 = v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v72 = Strong;
    v5 = Strong;
    sub_100012FD8(&Strong);
    swift_endAccess();
    v6 = v78;
    v66 = &v72[OBJC_IVAR____TtC19MailWidgetExtension20MailStatusDataSource_debouncers];
    v71 = &v89;
    v67 = 0;
    swift_beginAccess();
    v68 = *v66;
    v87 = v78;
    v69 = sub_1000094DC(&unk_10009BB40, &qword_10007F5B0);
    v70 = sub_100022774();
    sub_100021A14();
    sub_10007D7F8();

    v73 = v88;
    swift_endAccess();

    v74 = v73;
  }

  else
  {
    sub_100012FD8(&Strong);
    swift_endAccess();
    v74 = 0;
  }

  v65 = v74;
  if (v74)
  {
    v64 = v65;
    v9 = v83;
    v53 = v65;
    v94 = v65;
    v10 = sub_100021534();
    (*(v81 + 16))(v9, v10, v79);
    v57 = sub_10007CED8();
    v54 = v57;
    v56 = sub_10007DBB8();
    v55 = v56;
    sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v58 = sub_10007DEC8();
    if (os_log_type_enabled(v57, v56))
    {
      v12 = v75;
      v44 = sub_10007DC88();
      v40 = v44;
      v41 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v42 = 0;
      v45 = sub_10000742C(0);
      v43 = v45;
      v46 = sub_10000742C(v42);
      v93[0] = v44;
      v92 = v45;
      v91 = v46;
      v47 = 0;
      v48 = v93;
      sub_100007480(0, v93);
      sub_100007480(v47, v48);
      v90 = v58;
      v49 = &v17;
      __chkstk_darwin(&v17);
      v50 = &v17 - 6;
      *(&v17 - 4) = v13;
      *(&v17 - 3) = &v92;
      *(&v17 - 2) = &v91;
      v51 = sub_1000094DC(&qword_10009BB70, &qword_10007EE20);
      sub_1000097D8();
      sub_10007D948();
      v52 = v12;
      if (v12)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v54, v55, "Timeout! No count received", v40, 2u);
        v38 = 0;
        sub_1000074E0(v43);
        sub_1000074E0(v46);
        sub_10007DC68();

        v39 = v52;
      }
    }

    else
    {

      v39 = v75;
    }

    v37 = v39;

    (*(v81 + 8))(v83, v79);
    memset(&v93[1], 0, 32);
    v36 = 0;
    v34 = 0;
    [v53 debounceResult:?];
    swift_unknownObjectRelease();

    return v37;
  }

  else
  {
    v7 = v85;
    v8 = sub_100021534();
    (*(v81 + 16))(v7, v8, v79);
    v62 = sub_10007CED8();
    v59 = v62;
    v61 = sub_10007DBA8();
    v60 = v61;
    sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v63 = sub_10007DEC8();
    if (os_log_type_enabled(v62, v61))
    {
      v14 = v75;
      v25 = sub_10007DC88();
      v21 = v25;
      v22 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v23 = 0;
      v26 = sub_10000742C(0);
      v24 = v26;
      v27 = sub_10000742C(v23);
      v98 = v25;
      v97 = v26;
      v96 = v27;
      v28 = 0;
      v29 = &v98;
      sub_100007480(0, &v98);
      sub_100007480(v28, v29);
      v95 = v63;
      v30 = &v17;
      __chkstk_darwin(&v17);
      v31 = &v17 - 6;
      *(&v17 - 4) = v15;
      *(&v17 - 3) = &v97;
      *(&v17 - 2) = &v96;
      v32 = sub_1000094DC(&qword_10009BB70, &qword_10007EE20);
      sub_1000097D8();
      sub_10007D948();
      v33 = v14;
      if (v14)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v59, v60, "No debouncer for query", v21, 2u);
        v19 = 0;
        sub_1000074E0(v24);
        sub_1000074E0(v27);
        sub_10007DC68();

        v20 = v33;
      }
    }

    else
    {

      v20 = v75;
    }

    v18 = v20;

    (*(v81 + 8))(v85, v79);
    return v18;
  }
}

uint64_t sub_1000226B0()
{
  v1 = *(v0 + 16);

  _objc_release(*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_100022710(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_100022774()
{
  v2 = qword_10009B080;
  if (!qword_10009B080)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009B080);
    return ObjCClassMetadata;
  }

  return v2;
}

void sub_1000227D8(uint64_t a1, uint64_t a2, void *a3)
{
  v72 = a1;
  v71 = a2;
  v70 = a3;
  v63 = sub_100024E60;
  v64 = sub_100024F00;
  v65 = sub_100009484;
  v66 = sub_100009410;
  v67 = sub_100009410;
  v68 = sub_1000094D0;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v69 = 0;
  v80 = 0;
  v81 = 0;
  v73 = sub_10007CEF8();
  v74 = *(v73 - 8);
  v75 = v73 - 8;
  v76 = (*(v74 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v77 = v23 - v76;
  v91 = __chkstk_darwin(v72);
  v90 = v3 + 16;
  v89 = v4;
  sub_100024D7C(v91, v88);
  if (v88[3])
  {
    if (swift_dynamicCast())
    {
      v59 = v78;
      v60 = 0;
    }

    else
    {
      v59 = 0;
      v60 = 1;
    }

    v57 = v60;
    v58 = v59;
    if (v60)
    {
      v54 = 0;
      v55 = 0;
      v56 = 1;
      goto LABEL_10;
    }

    v61 = v58;
    v62 = v57;
  }

  else
  {
    sub_100024D24(v88);
    v61 = 0;
    v62 = 1;
  }

  v54 = v61;
  v55 = v62 & 1;
  v56 = 0;
LABEL_10:
  v52 = v55;
  v53 = v54;
  if (v56)
  {
    v5 = v77;
    v6 = sub_100021534();
    (*(v74 + 16))(v5, v6, v73);
    sub_100024D7C(v72, v87);
    v39 = 7;
    v7 = swift_allocObject();
    v37 = v7;
    *(v7 + 16) = v87[0];
    *(v7 + 32) = v87[1];
    v48 = sub_10007CED8();
    v49 = sub_10007DBB8();
    v36 = 17;
    v42 = swift_allocObject();
    *(v42 + 16) = 32;
    v43 = swift_allocObject();
    *(v43 + 16) = 8;
    v38 = 32;
    v8 = swift_allocObject();
    v9 = v37;
    v40 = v8;
    *(v8 + 16) = v63;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v40;
    v41 = v10;
    *(v10 + 16) = v64;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v41;
    v45 = v12;
    *(v12 + 16) = v65;
    *(v12 + 24) = v13;
    v47 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v44 = sub_10007DEC8();
    v46 = v14;

    v15 = v42;
    v16 = v46;
    *v46 = v66;
    v16[1] = v15;

    v17 = v43;
    v18 = v46;
    v46[2] = v67;
    v18[3] = v17;

    v19 = v45;
    v20 = v46;
    v46[4] = v68;
    v20[5] = v19;
    sub_100006FD4();

    if (os_log_type_enabled(v48, v49))
    {
      v22 = v69;
      v24 = sub_10007DC88();
      v23[2] = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v25 = sub_10000742C(0);
      v26 = sub_10000742C(1);
      v27 = &v86;
      v86 = v24;
      v28 = &v85;
      v85 = v25;
      v29 = &v84;
      v84 = v26;
      sub_100007480(2, &v86);
      sub_100007480(1, v27);
      v82 = v66;
      v83 = v42;
      sub_100007494(&v82, v27, v28, v29);
      v30 = v22;
      if (v22)
      {

        __break(1u);
      }

      else
      {
        v82 = v67;
        v83 = v43;
        sub_100007494(&v82, &v86, &v85, &v84);
        v23[0] = 0;
        v82 = v68;
        v83 = v45;
        sub_100007494(&v82, &v86, &v85, &v84);
        _os_log_impl(&_mh_execute_header, v48, v49, "Debouncer received unexpected result. Expected Optional<Int> received %s", v24, 0xCu);
        sub_1000074E0(v25);
        sub_1000074E0(v26);
        sub_10007DC68();
      }
    }

    else
    {
    }

    _objc_release(v48);
    (*(v74 + 8))(v77, v73);
  }

  else
  {
    v50 = v53;
    v51 = v52;
    v33 = v52;
    v34 = v53;
    v80 = v53;
    v81 = v52 & 1;
    v35 = v71 + 16;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v79 = Strong;
    if (Strong)
    {
      v31 = &v79;
      v32 = v79;
      _objc_retain(v79);
      sub_100012FD8(v31);
      swift_endAccess();
      sub_100023260(v70, v34, v33 & 1);
      _objc_release(v32);
    }

    else
    {
      sub_100012FD8(&v79);
      swift_endAccess();
    }
  }
}

uint64_t sub_1000231D8()
{
  v1 = *(v0 + 16);

  _objc_release(*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_100023260(void *a1, uint64_t a2, int a3)
{
  v73 = a3;
  v74 = a2;
  v80 = a1;
  v81 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v71 = 0;
  v101 = 0;
  v92[1] = 0;
  v92[0] = 0;
  v87 = 0;
  v86 = 0;
  v72 = a3;
  v75 = sub_10007CEF8();
  v76 = *(v75 - 8);
  v77 = v76;
  v4 = *(v76 + 64);
  v5 = __chkstk_darwin(v80);
  v78 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v5;
  v109 = v7;
  v110 = v8 & 1;
  v108 = v3;
  v9 = v5;
  v79 = (v3 + OBJC_IVAR____TtC19MailWidgetExtension20MailStatusDataSource_state);
  swift_beginAccess();
  v82 = *v79;
  v106 = v80;
  v83 = sub_1000094DC(&unk_10009BB40, &qword_10007F5B0);
  v84 = type metadata accessor for MailStatusDataSource.State();
  sub_100021A14();
  sub_10007D7F8();

  v85 = v107;
  if (v107)
  {
    v70 = v85;
    v65 = v85;
    v101 = v85;
    swift_endAccess();
    v10 = v80;
    v64 = 0;
    v100 = 0;
    v99 = v80;
    v57 = 33;
    v56 = &v98;
    swift_beginAccess();
    sub_1000094DC(&qword_10009B0B0, &unk_10007F5C8);
    sub_10007D808();
    swift_endAccess();
    v11 = v80;
    v97 = v64;
    v96 = v80;
    v58 = &v95;
    swift_beginAccess();
    sub_1000094DC(&qword_10009B090, &unk_10007F5B8);
    sub_10007D808();
    swift_endAccess();
    v63 = 32;
    v59 = &v94;
    swift_beginAccess();
    v60 = v65[3];

    swift_endAccess();
    sub_10007D648();

    v61 = &v93;
    swift_beginAccess();
    v62 = v65[2];
    swift_unknownObjectRetain();
    swift_endAccess();
    swift_getObjectType();
    [v62 cancel];
    swift_unknownObjectRelease();
    v66 = &v91;
    swift_beginAccess();
    v67 = v65[4];

    swift_endAccess();
    v90 = v67;
    v68 = sub_1000094DC(&unk_10009B0B8, &qword_10007F5D8);
    sub_1000248C8();
    sub_10007DB68();
    for (i = v71; ; i = v42)
    {
      v53 = i;
      sub_1000094DC(&qword_10009B0F0, qword_10007F610);
      sub_10007DD88();
      v54 = v88;
      v55 = v89;
      if (v88)
      {
        v51 = v54;
        v52 = v55;
        v48 = v55;
        v47 = v54;
        v12 = swift_allocObject();
        v13 = v48;
        *(v12 + 16) = v47;
        *(v12 + 24) = v13;
        v49 = sub_100024990;
        v50 = v12;
      }

      else
      {
        v49 = 0;
        v50 = 0;
      }

      v45 = v50;
      v46 = v49;
      if (!v49)
      {
        break;
      }

      v43 = v46;
      v44 = v45;
      v41 = v45;
      v40 = v46;
      v42 = v53;
      v86 = v46;
      v87 = v45;

      v40(v74, v72 & 1);
    }

    sub_10000A480(v92);

    return v53;
  }

  else
  {
    v14 = v78;
    swift_endAccess();
    v15 = sub_100021534();
    (*(v77 + 16))(v14, v15, v75);
    v37 = sub_10007CED8();
    v34 = v37;
    v36 = sub_10007DBB8();
    v35 = v36;
    sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v38 = sub_10007DEC8();
    if (os_log_type_enabled(v37, v36))
    {
      v16 = v71;
      v25 = sub_10007DC88();
      v21 = v25;
      v22 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v23 = 0;
      v26 = sub_10000742C(0);
      v24 = v26;
      v27 = sub_10000742C(v23);
      v105 = v25;
      v104 = v26;
      v103 = v27;
      v28 = 0;
      v29 = &v105;
      sub_100007480(0, &v105);
      sub_100007480(v28, v29);
      v102 = v38;
      v30 = v19;
      __chkstk_darwin(v19);
      v31 = &v19[-6];
      v19[-4] = v17;
      v19[-3] = &v104;
      v19[-2] = &v103;
      v32 = sub_1000094DC(&qword_10009BB70, &qword_10007EE20);
      sub_1000097D8();
      sub_10007D948();
      v33 = v16;
      if (v16)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v34, v35, "Query completed but there is no state…", v21, 2u);
        v19[1] = 0;
        sub_1000074E0(v24);
        sub_1000074E0(v27);
        sub_10007DC68();

        v20 = v33;
      }
    }

    else
    {

      v20 = v71;
    }

    v19[0] = v20;

    (*(v77 + 8))(v78, v75);
    return v19[0];
  }
}

unint64_t sub_100023AAC()
{
  v2 = qword_10009B0A0;
  if (!qword_10009B0A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009B0A0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_100023B10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100023BC4(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

void sub_100023C9C(uint64_t a1, void *a2, uint64_t a3)
{
  v51 = a1;
  v60 = a2;
  v52 = a3;
  v58 = 0;
  v45 = sub_1000249E8;
  v46 = sub_100024AE4;
  v47 = sub_100009410;
  v48 = sub_100009410;
  v49 = sub_100024CB4;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v50 = 0;
  v67 = 0;
  v61 = 0;
  v53 = sub_10007CEF8();
  v54 = *(v53 - 8);
  v55 = v53 - 8;
  v56 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v60);
  v57 = v21 - v56;
  v78 = v5;
  v77 = v4;
  v76 = v6;
  v75 = v3;
  _objc_retain(v4);
  v59 = (v3 + OBJC_IVAR____TtC19MailWidgetExtension20MailStatusDataSource_debouncers);
  swift_beginAccess();
  v62 = *v59;
  v65 = &v73;
  v73 = v60;
  v63 = sub_1000094DC(&unk_10009BB40, &qword_10007F5B0);
  v64 = sub_100022774();
  sub_100021A14();
  sub_10007D7F8();
  _objc_release(v73);
  v66 = v74;
  if (v74)
  {
    v44 = v66;
    v43 = v66;
    v67 = v66;
    swift_endAccess();
    isa = sub_10007DAC8().super.super.isa;
    [v43 debounceResult:?];
    swift_unknownObjectRelease();
    _objc_release(v43);
  }

  else
  {
    v7 = v57;
    swift_endAccess();
    v8 = sub_100021534();
    (*(v54 + 16))(v7, v8, v53);
    _objc_retain(v60);
    v31 = 7;
    v32 = swift_allocObject();
    *(v32 + 16) = v60;
    v40 = sub_10007CED8();
    v41 = sub_10007DBB8();
    v29 = 17;
    v34 = swift_allocObject();
    *(v34 + 16) = 64;
    v35 = swift_allocObject();
    *(v35 + 16) = 8;
    v30 = 32;
    v9 = swift_allocObject();
    v10 = v32;
    v33 = v9;
    *(v9 + 16) = v45;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v33;
    v37 = v11;
    *(v11 + 16) = v46;
    *(v11 + 24) = v12;
    v39 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v36 = sub_10007DEC8();
    v38 = v13;

    v14 = v34;
    v15 = v38;
    *v38 = v47;
    v15[1] = v14;

    v16 = v35;
    v17 = v38;
    v38[2] = v48;
    v17[3] = v16;

    v18 = v37;
    v19 = v38;
    v38[4] = v49;
    v19[5] = v18;
    sub_100006FD4();

    if (os_log_type_enabled(v40, v41))
    {
      v20 = v50;
      v22 = sub_10007DC88();
      v21[3] = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v23 = sub_10000742C(1);
      v24 = sub_10000742C(0);
      v25 = &v72;
      v72 = v22;
      v26 = &v71;
      v71 = v23;
      v27 = &v70;
      v70 = v24;
      sub_100007480(2, &v72);
      sub_100007480(1, v25);
      v68 = v47;
      v69 = v34;
      sub_100007494(&v68, v25, v26, v27);
      v28 = v20;
      if (v20)
      {

        __break(1u);
      }

      else
      {
        v68 = v48;
        v69 = v35;
        sub_100007494(&v68, &v72, &v71, &v70);
        v21[1] = 0;
        v68 = v49;
        v69 = v37;
        sub_100007494(&v68, &v72, &v71, &v70);
        _os_log_impl(&_mh_execute_header, v40, v41, "Missing debouncer for query:%@", v22, 0xCu);
        sub_1000074E0(v23);
        sub_1000074E0(v24);
        sub_10007DC68();
      }
    }

    else
    {
    }

    _objc_release(v40);
    (*(v54 + 8))(v57, v53);
  }
}

id sub_1000245B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_10001D110();
  v16.super.isa = sub_10007D998().super.isa;
  if (a6)
  {
    v10 = sub_10007D858();

    v6 = [v13 initWithTargetClass:ObjCClassFromMetadata predicate:a2 sortDescriptors:v16.super.isa queryOptions:a4 label:v10];
  }

  else
  {
    v6 = [v13 initWithTargetClass:ObjCClassFromMetadata predicate:a2 sortDescriptors:v16.super.isa queryOptions:a4 label:0];
  }

  v9 = v6;
  _objc_release(v8);
  _objc_release(v16.super.isa);

  _objc_release(a2);
  return v9;
}

id sub_1000246D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v17 = a3;
  v18 = a4;
  aBlock = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = 0;
  v15 = sub_10002479C;
  v16 = &unk_100092F20;
  v9 = _Block_copy(&aBlock);
  v11 = [v8 initWithTimeInterval:a1 scheduler:a2 startAfter:a5 block:?];
  _Block_release(v9);

  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_10002479C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  if (a2)
  {
    v7[3] = swift_getObjectType();
    v7[0] = a2;
    v2 = sub_100024D60(v7, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  v4(v2);
  sub_100024D24(v8);
}

uint64_t sub_100024860()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_1000248C8()
{
  v2 = qword_10009B0E8;
  if (!qword_10009B0E8)
  {
    sub_100009860(&unk_10009B0B8, &qword_10007F5D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B0E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100024950()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100024AA4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void sub_100024AF0(uint64_t *a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = a4();
  v7 = *a1;
  _objc_retain(v8);
  sub_10007DCA8();
  if (v8)
  {
    _objc_release(v8);
  }

  *a1 = v7 + 8;
  v4 = *a2;
  if (*a2)
  {
    _objc_retain(v8);
    *v4 = v8;
    _objc_release(v8);
    *a2 = v4 + 1;
  }

  else
  {
    _objc_release(v8);
  }
}

uint64_t sub_100024C74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100024CC0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t *sub_100024D24(uint64_t *a1)
{
  if (a1[3])
  {
    sub_10000A914(a1);
  }

  return a1;
}

__n128 sub_100024D60(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_100024D7C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 24);
    *(a2 + 24) = v2;
    (**(v2 - 8))();
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  return a2;
}

uint64_t sub_100024E0C()
{
  if (*(v0 + 40))
  {
    sub_10000A914((v2 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_100024EC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100024F0C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100024F4C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void *sub_100024F8C(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

uint64_t sub_100024FF8()
{
  v1 = sub_10007CEF8();
  sub_100001F90(v1, qword_10009B2A0);
  sub_10000202C(v1, qword_10009B2A0);
  return sub_100016180(&unk_100093708, &unk_100093708);
}

uint64_t sub_100025054()
{
  if (qword_10009A620 != -1)
  {
    swift_once();
  }

  v0 = sub_10007CEF8();
  return sub_10000202C(v0, qword_10009B2A0);
}

uint64_t sub_1000250C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100025054();
  v1 = sub_10007CEF8();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100025144(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

void *sub_1000251B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v12 = a2;
  v9 = a1;
  v15 = 0;
  v14 = 0;
  v11 = 0;
  v7 = (*(*(type metadata accessor for Mailbox() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v10 = &v6 - v7;
  v8 = (*(*(type metadata accessor for Snapshot() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v11);
  v13 = (&v6 - v8);
  v15 = v9;
  v14 = v2;
  sub_1000252D4(v3, v4);
  sub_100074910(v10, 1, v11, 0, v13);
  return sub_10001F5C0(v13, v12);
}

uint64_t *sub_1000252D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v9 = 0;
  v8 = 0;
  v13 = a1;
  v12 = v2;
  sub_100025144(v2, v11);
  memcpy(__dst, v11, sizeof(__dst));
  _objc_retain(a1);
  if (a1)
  {
    _objc_retain(a1);
    sub_1000165A0(a1, a2);
    _objc_release(a1);
  }

  else
  {
    v4 = sub_10007D898("Intent is nil", 0xDuLL, 1);
    sub_100028D28(v4, v5, __dst, a2);
  }

  result = __dst;
  sub_1000297BC(__dst);
  return result;
}

uint64_t sub_100025554(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a1;
  v73 = a2;
  v59 = a3;
  v60 = a4;
  v71 = sub_1000298B0;
  v83 = sub_10002CB08;
  v85 = sub_100009484;
  v88 = sub_10002CCB0;
  v90 = sub_1000134D0;
  v92 = sub_10001351C;
  v96 = sub_100013568;
  v98 = sub_100009410;
  v100 = sub_100009410;
  v102 = sub_1000094D0;
  v104 = sub_100009410;
  v106 = sub_100009410;
  v109 = sub_1000135B4;
  v55 = sub_10002D440;
  v124 = 0;
  v123 = 0;
  v121 = 0;
  v122 = 0;
  v120 = 0;
  v56 = 0;
  v57 = 0;
  v80 = sub_10007D798();
  v68 = *(v80 - 8);
  v69 = v80 - 8;
  v67 = v68;
  v77 = v68[8];
  v58 = (v77 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v79 = v46 - v58;
  v66 = sub_10007CEF8();
  v64 = *(v66 - 8);
  v65 = v66 - 8;
  v62 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v61);
  v5 = v46 - v62;
  v63 = v46 - v62;
  v124 = v4;
  v123 = v6;
  v121 = v7;
  v122 = v8;
  v120 = v9;
  v10 = sub_100025054();
  (*(v64 + 16))(v5, v10, v66);
  v75 = v68[2];
  v74 = v68 + 2;
  v75(v79, v73, v80);
  v76 = *(v67 + 20);
  v70 = (v76 + 16) & ~v76;
  v94 = 7;
  v72 = swift_allocObject();
  v82 = v68[4];
  v81 = v68 + 4;
  v82(v72 + v70, v79, v80);

  v93 = 32;
  v11 = swift_allocObject();
  v12 = v72;
  v84 = v11;
  *(v11 + 16) = v71;
  *(v11 + 24) = v12;

  v75(v79, v73, v80);
  v78 = (v76 + 16) & ~v76;
  v89 = swift_allocObject();
  v82(v89 + v78, v79, v80);
  v113 = sub_10007CED8();
  v114 = sub_10007DBC8();
  v87 = 17;
  v99 = swift_allocObject();
  *(v99 + 16) = 32;
  v101 = swift_allocObject();
  *(v101 + 16) = 8;
  v13 = swift_allocObject();
  v14 = v84;
  v86 = v13;
  *(v13 + 16) = v83;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v86;
  v103 = v15;
  *(v15 + 16) = v85;
  *(v15 + 24) = v16;
  v105 = swift_allocObject();
  *(v105 + 16) = 0;
  v107 = swift_allocObject();
  *(v107 + 16) = 4;
  v17 = swift_allocObject();
  v18 = v89;
  v91 = v17;
  *(v17 + 16) = v88;
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  v20 = v91;
  v95 = v19;
  *(v19 + 16) = v90;
  *(v19 + 24) = v20;
  v21 = swift_allocObject();
  v22 = v95;
  v97 = v21;
  *(v21 + 16) = v92;
  *(v21 + 24) = v22;
  v23 = swift_allocObject();
  v24 = v97;
  v110 = v23;
  *(v23 + 16) = v96;
  *(v23 + 24) = v24;
  v112 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
  v108 = sub_10007DEC8();
  v111 = v25;

  v26 = v99;
  v27 = v111;
  *v111 = v98;
  v27[1] = v26;

  v28 = v101;
  v29 = v111;
  v111[2] = v100;
  v29[3] = v28;

  v30 = v103;
  v31 = v111;
  v111[4] = v102;
  v31[5] = v30;

  v32 = v105;
  v33 = v111;
  v111[6] = v104;
  v33[7] = v32;

  v34 = v107;
  v35 = v111;
  v111[8] = v106;
  v35[9] = v34;

  v36 = v110;
  v37 = v111;
  v111[10] = v109;
  v37[11] = v36;
  sub_100006FD4();

  if (os_log_type_enabled(v113, v114))
  {
    v38 = v56;
    v47 = sub_10007DC88();
    v46[6] = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
    v48 = sub_10000742C(0);
    v49 = sub_10000742C(1);
    v51 = &v119;
    v119 = v47;
    v52 = &v118;
    v118 = v48;
    v53 = &v117;
    v117 = v49;
    v50 = 2;
    sub_100007480(2, &v119);
    sub_100007480(v50, v51);
    v115 = v98;
    v116 = v99;
    sub_100007494(&v115, v51, v52, v53);
    v54 = v38;
    if (v38)
    {

      __break(1u);
    }

    else
    {
      v115 = v100;
      v116 = v101;
      sub_100007494(&v115, &v119, &v118, &v117);
      v46[4] = 0;
      v115 = v102;
      v116 = v103;
      sub_100007494(&v115, &v119, &v118, &v117);
      v46[3] = 0;
      v115 = v104;
      v116 = v105;
      sub_100007494(&v115, &v119, &v118, &v117);
      v46[2] = 0;
      v115 = v106;
      v116 = v107;
      sub_100007494(&v115, &v119, &v118, &v117);
      v46[1] = 0;
      v115 = v109;
      v116 = v110;
      sub_100007494(&v115, &v119, &v118, &v117);
      _os_log_impl(&_mh_execute_header, v113, v114, "Get snapshot for family: %s, is preview: %{BOOL}d", v47, 0x12u);
      sub_1000074E0(v48);
      sub_1000074E0(v49);
      sub_10007DC68();
    }
  }

  else
  {
  }

  _objc_release(v113);
  (*(v64 + 8))(v63, v66);

  v39 = swift_allocObject();
  v40 = v60;
  v41 = v73;
  v42 = v55;
  v43 = v39;
  v44 = v61;
  v46[0] = v43;
  *(v43 + 16) = v59;
  *(v43 + 24) = v40;
  sub_100026C98(v44, v41, v42, v43);
}

uint64_t sub_1000262F0(void *a1, void (*a2)(void *), uint64_t a3)
{
  v40 = a1;
  v34 = a2;
  v33 = a3;
  v46 = sub_10002F050;
  v50 = sub_100009484;
  v52 = sub_100009410;
  v54 = sub_100009410;
  v57 = sub_1000094D0;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  v29 = 0;
  v30 = 0;
  v31 = *(type metadata accessor for MailEntry() - 8);
  v41 = v31;
  v42 = *(v31 + 64);
  v32 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v44 = (v21 - v32);
  v39 = sub_10007CEF8();
  v37 = *(v39 - 8);
  v38 = v39 - 8;
  v35 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v40);
  v4 = v21 - v35;
  v36 = v21 - v35;
  v70 = v3;
  v68 = v5;
  v69 = v6;
  v7 = sub_100025054();
  (*(v37 + 16))(v4, v7, v39);
  sub_10001EE14(v40, v44);
  v43 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v48 = 7;
  v49 = swift_allocObject();
  sub_10001F7F0(v44, v49 + v43);
  v61 = sub_10007CED8();
  v62 = sub_10007DBC8();
  v45 = 17;
  v53 = swift_allocObject();
  *(v53 + 16) = 34;
  v55 = swift_allocObject();
  *(v55 + 16) = 8;
  v47 = 32;
  v8 = swift_allocObject();
  v9 = v49;
  v51 = v8;
  *(v8 + 16) = v46;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v51;
  v58 = v10;
  *(v10 + 16) = v50;
  *(v10 + 24) = v11;
  v60 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
  v56 = sub_10007DEC8();
  v59 = v12;

  v13 = v53;
  v14 = v59;
  *v59 = v52;
  v14[1] = v13;

  v15 = v55;
  v16 = v59;
  v59[2] = v54;
  v16[3] = v15;

  v17 = v58;
  v18 = v59;
  v59[4] = v57;
  v18[5] = v17;
  sub_100006FD4();

  if (os_log_type_enabled(v61, v62))
  {
    v19 = v29;
    v22 = sub_10007DC88();
    v21[2] = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
    v23 = sub_10000742C(0);
    v24 = sub_10000742C(1);
    v25 = &v67;
    v67 = v22;
    v26 = &v66;
    v66 = v23;
    v27 = &v65;
    v65 = v24;
    sub_100007480(2, &v67);
    sub_100007480(1, v25);
    v63 = v52;
    v64 = v53;
    sub_100007494(&v63, v25, v26, v27);
    v28 = v19;
    if (v19)
    {

      __break(1u);
    }

    else
    {
      v63 = v54;
      v64 = v55;
      sub_100007494(&v63, &v67, &v66, &v65);
      v21[0] = 0;
      v63 = v57;
      v64 = v58;
      sub_100007494(&v63, &v67, &v66, &v65);
      _os_log_impl(&_mh_execute_header, v61, v62, "Get snapshot completed with relvance: %{public}s", v22, 0xCu);
      sub_1000074E0(v23);
      sub_1000074E0(v24);
      sub_10007DC68();
    }
  }

  else
  {
  }

  _objc_release(v61);
  (*(v37 + 8))(v36, v39);

  v34(v40);
}

uint64_t sub_100026A20(uint64_t a1)
{
  v12 = a1;
  v1 = sub_1000094DC(&qword_10009AF88, &unk_10007F7B0);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v16 = v5 - v8;
  v9 = 0;
  v15 = sub_10007D768();
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v10 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v11 = v5 - v10;
  v2 = type metadata accessor for MailEntry();
  sub_10001E604((v12 + *(v2 + 20)), v16);
  v17 = *(v13 + 48);
  v18 = v13 + 48;
  if (v17(v16, 1, v15) == 1)
  {
    v6 = sub_100076054();
    v7 = &v19;
    swift_beginAccess();
    (*(v13 + 16))(v11, v6, v15);
    swift_endAccess();
    if (v17(v16, 1, v15) != 1)
    {
      sub_10002F18C(v16);
    }
  }

  else
  {
    (*(v13 + 32))(v11, v16, v15);
  }

  v5[0] = sub_1000760C0();
  v5[1] = v3;
  (*(v13 + 8))(v11, v15);
  return v5[0];
}

void sub_100026C98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a1;
  v13 = a2;
  v11 = a3;
  v12 = a4;
  v10 = v4;
  _objc_retain(a1);
  sub_100025144(v4, v9);

  v7 = swift_allocObject();
  memcpy(v7 + 2, v9, 0x28uLL);
  v7[7] = a3;
  v7[8] = a4;
  sub_100028A6C(a1, sub_10002D494, v7);

  _objc_release(a1);
}

uint64_t sub_100026D94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a1;
  v73 = a2;
  v59 = a3;
  v60 = a4;
  v71 = sub_1000298B0;
  v83 = sub_10002CB08;
  v85 = sub_100009484;
  v88 = sub_10002CCB0;
  v90 = sub_1000134D0;
  v92 = sub_10001351C;
  v96 = sub_100013568;
  v98 = sub_100009410;
  v100 = sub_100009410;
  v102 = sub_1000094D0;
  v104 = sub_100009410;
  v106 = sub_100009410;
  v109 = sub_1000135B4;
  v55 = sub_10002D8EC;
  v124 = 0;
  v123 = 0;
  v121 = 0;
  v122 = 0;
  v120 = 0;
  v56 = 0;
  v57 = 0;
  v80 = sub_10007D798();
  v68 = *(v80 - 8);
  v69 = v80 - 8;
  v67 = v68;
  v77 = v68[8];
  v58 = (v77 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v79 = v46 - v58;
  v66 = sub_10007CEF8();
  v64 = *(v66 - 8);
  v65 = v66 - 8;
  v62 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v61);
  v5 = v46 - v62;
  v63 = v46 - v62;
  v124 = v4;
  v123 = v6;
  v121 = v7;
  v122 = v8;
  v120 = v9;
  v10 = sub_100025054();
  (*(v64 + 16))(v5, v10, v66);
  v75 = v68[2];
  v74 = v68 + 2;
  v75(v79, v73, v80);
  v76 = *(v67 + 20);
  v70 = (v76 + 16) & ~v76;
  v94 = 7;
  v72 = swift_allocObject();
  v82 = v68[4];
  v81 = v68 + 4;
  v82(v72 + v70, v79, v80);

  v93 = 32;
  v11 = swift_allocObject();
  v12 = v72;
  v84 = v11;
  *(v11 + 16) = v71;
  *(v11 + 24) = v12;

  v75(v79, v73, v80);
  v78 = (v76 + 16) & ~v76;
  v89 = swift_allocObject();
  v82(v89 + v78, v79, v80);
  v113 = sub_10007CED8();
  v114 = sub_10007DBC8();
  v87 = 17;
  v99 = swift_allocObject();
  *(v99 + 16) = 32;
  v101 = swift_allocObject();
  *(v101 + 16) = 8;
  v13 = swift_allocObject();
  v14 = v84;
  v86 = v13;
  *(v13 + 16) = v83;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v86;
  v103 = v15;
  *(v15 + 16) = v85;
  *(v15 + 24) = v16;
  v105 = swift_allocObject();
  *(v105 + 16) = 0;
  v107 = swift_allocObject();
  *(v107 + 16) = 4;
  v17 = swift_allocObject();
  v18 = v89;
  v91 = v17;
  *(v17 + 16) = v88;
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  v20 = v91;
  v95 = v19;
  *(v19 + 16) = v90;
  *(v19 + 24) = v20;
  v21 = swift_allocObject();
  v22 = v95;
  v97 = v21;
  *(v21 + 16) = v92;
  *(v21 + 24) = v22;
  v23 = swift_allocObject();
  v24 = v97;
  v110 = v23;
  *(v23 + 16) = v96;
  *(v23 + 24) = v24;
  v112 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
  v108 = sub_10007DEC8();
  v111 = v25;

  v26 = v99;
  v27 = v111;
  *v111 = v98;
  v27[1] = v26;

  v28 = v101;
  v29 = v111;
  v111[2] = v100;
  v29[3] = v28;

  v30 = v103;
  v31 = v111;
  v111[4] = v102;
  v31[5] = v30;

  v32 = v105;
  v33 = v111;
  v111[6] = v104;
  v33[7] = v32;

  v34 = v107;
  v35 = v111;
  v111[8] = v106;
  v35[9] = v34;

  v36 = v110;
  v37 = v111;
  v111[10] = v109;
  v37[11] = v36;
  sub_100006FD4();

  if (os_log_type_enabled(v113, v114))
  {
    v38 = v56;
    v47 = sub_10007DC88();
    v46[6] = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
    v48 = sub_10000742C(0);
    v49 = sub_10000742C(1);
    v51 = &v119;
    v119 = v47;
    v52 = &v118;
    v118 = v48;
    v53 = &v117;
    v117 = v49;
    v50 = 2;
    sub_100007480(2, &v119);
    sub_100007480(v50, v51);
    v115 = v98;
    v116 = v99;
    sub_100007494(&v115, v51, v52, v53);
    v54 = v38;
    if (v38)
    {

      __break(1u);
    }

    else
    {
      v115 = v100;
      v116 = v101;
      sub_100007494(&v115, &v119, &v118, &v117);
      v46[4] = 0;
      v115 = v102;
      v116 = v103;
      sub_100007494(&v115, &v119, &v118, &v117);
      v46[3] = 0;
      v115 = v104;
      v116 = v105;
      sub_100007494(&v115, &v119, &v118, &v117);
      v46[2] = 0;
      v115 = v106;
      v116 = v107;
      sub_100007494(&v115, &v119, &v118, &v117);
      v46[1] = 0;
      v115 = v109;
      v116 = v110;
      sub_100007494(&v115, &v119, &v118, &v117);
      _os_log_impl(&_mh_execute_header, v113, v114, "Get timeline for family: %s, is preview: %{BOOL}d", v47, 0x12u);
      sub_1000074E0(v48);
      sub_1000074E0(v49);
      sub_10007DC68();
    }
  }

  else
  {
  }

  _objc_release(v113);
  (*(v64 + 8))(v63, v66);

  v39 = swift_allocObject();
  v40 = v60;
  v41 = v73;
  v42 = v55;
  v43 = v39;
  v44 = v61;
  v46[0] = v43;
  *(v43 + 16) = v59;
  *(v43 + 24) = v40;
  sub_100026C98(v44, v41, v42, v43);
}

uint64_t sub_100027AE4(void *a1, void (*a2)(char *), uint64_t a3)
{
  v51 = a1;
  v45 = a2;
  v44 = a3;
  v57 = sub_10002F050;
  v61 = sub_100009484;
  v63 = sub_100009410;
  v65 = sub_100009410;
  v68 = sub_1000094D0;
  v81 = 0;
  v79 = 0;
  v80 = 0;
  v32 = 0;
  v40 = 0;
  v3 = sub_10007D708();
  v33 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v34 = v24 - v33;
  v35 = sub_1000094DC(&unk_10009B2D0, &qword_10007F7A8);
  v36 = *(v35 - 8);
  v37 = v35 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v40);
  v39 = v24 - v38;
  v41 = type metadata accessor for MailEntry();
  v42 = *(v41 - 8);
  v52 = v42;
  v53 = *(v42 + 64);
  v43 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v40);
  v55 = (v24 - v43);
  v50 = sub_10007CEF8();
  v48 = *(v50 - 8);
  v49 = v50 - 8;
  v46 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v51);
  v5 = v24 - v46;
  v47 = v24 - v46;
  v81 = v4;
  v79 = v6;
  v80 = v7;
  v8 = sub_100025054();
  (*(v48 + 16))(v5, v8, v50);
  sub_10001EE14(v51, v55);
  v54 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v59 = 7;
  v60 = swift_allocObject();
  sub_10001F7F0(v55, v60 + v54);
  v72 = sub_10007CED8();
  v73 = sub_10007DBC8();
  v56 = 17;
  v64 = swift_allocObject();
  *(v64 + 16) = 34;
  v66 = swift_allocObject();
  *(v66 + 16) = 8;
  v58 = 32;
  v9 = swift_allocObject();
  v10 = v60;
  v62 = v9;
  *(v9 + 16) = v57;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v62;
  v69 = v11;
  *(v11 + 16) = v61;
  *(v11 + 24) = v12;
  v71 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
  v67 = sub_10007DEC8();
  v70 = v13;

  v14 = v64;
  v15 = v70;
  *v70 = v63;
  v15[1] = v14;

  v16 = v66;
  v17 = v70;
  v70[2] = v65;
  v17[3] = v16;

  v18 = v69;
  v19 = v70;
  v70[4] = v68;
  v19[5] = v18;
  sub_100006FD4();

  if (os_log_type_enabled(v72, v73))
  {
    v20 = v32;
    v25 = sub_10007DC88();
    v24[4] = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
    v26 = sub_10000742C(0);
    v27 = sub_10000742C(1);
    v28 = &v78;
    v78 = v25;
    v29 = &v77;
    v77 = v26;
    v30 = &v76;
    v76 = v27;
    sub_100007480(2, &v78);
    sub_100007480(1, v28);
    v74 = v63;
    v75 = v64;
    sub_100007494(&v74, v28, v29, v30);
    v31 = v20;
    if (v20)
    {

      __break(1u);
    }

    else
    {
      v74 = v65;
      v75 = v66;
      sub_100007494(&v74, &v78, &v77, &v76);
      v24[2] = 0;
      v74 = v68;
      v75 = v69;
      sub_100007494(&v74, &v78, &v77, &v76);
      _os_log_impl(&_mh_execute_header, v72, v73, "Get timeline completed with relvance: %{public}s", v25, 0xCu);
      sub_1000074E0(v26);
      sub_1000074E0(v27);
      sub_10007DC68();
    }
  }

  else
  {
  }

  _objc_release(v72);
  (*(v48 + 8))(v47, v50);

  v24[0] = sub_10007DEC8();
  sub_10001EE14(v51, v21);
  v22 = v24[0];
  sub_100006FD4();
  v24[1] = v22;
  sub_10007D6F8();
  sub_10002E490();
  sub_10007D7A8();
  v45(v39);
  (*(v36 + 8))(v39, v35);
}

uint64_t sub_1000283C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a1;
  v14 = a2;
  v19 = a3;
  v20 = a4;
  v23 = sub_10002F3D4;
  v35 = 0;
  v34 = 0;
  v32 = 0;
  v33 = 0;
  v15 = *(type metadata accessor for Mailbox() - 8);
  v17 = v15;
  v18 = *(v15 + 64);
  v16 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v14);
  v22 = (&v14 - v16);
  v35 = v5;
  v34 = v4;
  v32 = v6;
  v33 = v7;
  v28 = v29;
  sub_100025144(v4, v29);
  v24 = v30;
  v25 = v31;
  sub_100024F8C(v28, v30);

  sub_10000DFBC(v26, v22);
  v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v8 = swift_allocObject();
  v9 = v20;
  v10 = v21;
  v11 = v8;
  v12 = v22;
  v27 = v11;
  *(v11 + 16) = v19;
  *(v11 + 24) = v9;
  sub_10000E380(v12, v11 + v10);
  (*(v25 + 16))(v26, 0, v23, v27, v24);

  return sub_10000A914(v28);
}

uint64_t *sub_1000285AC(unint64_t a1, uint64_t a2, int a3, void (*a4)(void *), uint64_t a5, void *a6)
{
  v42 = a4;
  v43 = a5;
  v44 = a6;
  v61 = 0;
  memset(v62, 0, 11);
  v59 = 0;
  v60 = 0;
  v58 = 0;
  v54 = 0;
  v52 = 0;
  v53 = 0;
  v51 = 0;
  v62[2] = a1;
  v62[3] = a2;
  v63 = a3;
  v46 = a1;
  v47 = a2;
  v48 = a3;
  v45 = BYTE2(a3);
  v39 = 0;
  v37 = (*(*(type metadata accessor for Mailbox() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v38 = (&v15 - v37);
  v40 = (*(*(type metadata accessor for Snapshot() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v39);
  v41 = (&v15 - v40);
  v6 = type metadata accessor for MailEntry();
  v7 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v49 = (&v15 - v8);
  v61 = v46;
  v62[0] = v47;
  LOWORD(v62[1]) = v48;
  BYTE2(v62[1]) = v9 & 1;
  v59 = v10;
  v60 = v11;
  v58 = v12;
  if (v9)
  {
    v55 = 1;
    v56 = 0;
    v57 = 0;
    v22 = 1;
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v33 = v46;
    v34 = v47;
    v35 = v48;
    v36 = v48 >> 8;
    v30 = v48 >> 8;
    v29 = v48;
    v28 = v47;
    v31 = v46;

    v54 = v31;
    v52 = v28;
    v53 = v29 & 1;
    v51 = v30 & 1;
    v50 = v31;
    v32 = sub_1000094DC(&qword_10009AC30, &qword_10007F260);
    sub_1000142C8();
    v13 = sub_10007DB58();
    if (v13)
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
    }

    else
    {

      v25 = v31;
      v26 = v28;
      v27 = v29 & 1 | ((v30 & 1) << 8);
    }

    v21 = v27;
    v20 = v26;
    v19 = v25;
    sub_10002F4F8(v25);
    v55 = v19;
    v56 = v20;
    v57 = v21;

    v22 = v19;
    v23 = v20;
    v24 = v21;
  }

  v18 = v24;
  v17 = v23;
  v16 = v22;

  sub_10000DFBC(v44, v38);
  sub_100074910(v38, v16, v17, v18, v41);
  sub_10001F5C0(v41, v49);
  v42(v49);
  sub_10001F380(v49);

  return sub_10002F4A4(&v55);
}

void *sub_100028A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v26 = a2;
  v27 = a3;
  v31 = sub_10002DAD8;
  v45 = 0;
  v44 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v17 = *(type metadata accessor for Mailbox() - 8);
  v21 = v17;
  v22 = *(v17 + 64);
  v18 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v16);
  v24 = (&v16 - v18);
  v19 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v36 = (&v16 - v19);
  v45 = &v16 - v19;
  v44 = v6;
  v42 = v7;
  v43 = v8;
  v41 = v3;
  sub_1000252D4(v6, (&v16 - v19));
  v35 = v38;
  sub_100025144(v20, v38);
  v32 = v39;
  v33 = v40;
  sub_100024F8C(v35, v39);
  sub_10000DFBC(v36, v24);

  v29 = v37;
  sub_100025144(v20, v37);
  v23 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v25 = (v23 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v25 + 23) & 0xFFFFFFFFFFFFFFF8;
  v30 = 40;
  v34 = swift_allocObject();
  sub_10000E380(v24, v34 + v23);
  v9 = v27;
  v10 = v28;
  v11 = v29;
  v12 = v30;
  v13 = v34;
  v14 = (v34 + v25);
  *v14 = v26;
  v14[1] = v9;
  memcpy((v13 + v10), v11, v12);
  (*(v33 + 32))(v31, v34, v32);

  sub_10000A914(v35);
  return sub_100014DA0(v36);
}

void *sub_100028D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v45 = a4;
  v56 = a1;
  v57 = a2;
  v47 = a3;
  v60 = sub_100013124;
  v62 = sub_100009484;
  v66 = sub_10002F994;
  v70 = sub_100009484;
  v72 = sub_100009410;
  v74 = sub_100009410;
  v76 = sub_1000094D0;
  v78 = sub_100009410;
  v80 = sub_100009410;
  v83 = sub_1000094D0;
  v99 = 0;
  v100 = 0;
  v98 = 0;
  v94 = 0;
  v46 = 0;
  v55 = sub_10007CEF8();
  v53 = *(v55 - 8);
  v54 = v55 - 8;
  v48 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v47);
  v51 = v36 - v48;
  v99 = v5;
  v100 = v6;
  v98 = v4;
  v52 = v95;
  sub_100025144(v4, v95);
  v50 = v96;
  v49 = v97;
  sub_100024F8C(v52, v96);
  v7 = (*(v49 + 8))(v50);
  v8 = v51;
  v59 = v7;
  v58 = 1;
  v94 = v7 & 1;
  sub_10000A914(v52);
  v9 = sub_100025054();
  (*(v53 + 16))(v8, v9, v55);

  v67 = 32;
  v68 = 7;
  v10 = swift_allocObject();
  v11 = v57;
  v61 = v10;
  *(v10 + 16) = v56;
  *(v10 + 24) = v11;
  v64 = 17;
  v69 = swift_allocObject();
  *(v69 + 16) = v59 & v58;
  v87 = sub_10007CED8();
  v88 = sub_10007DBB8();
  v73 = swift_allocObject();
  *(v73 + 16) = 34;
  v75 = swift_allocObject();
  v65 = 8;
  *(v75 + 16) = 8;
  v12 = swift_allocObject();
  v13 = v61;
  v63 = v12;
  *(v12 + 16) = v60;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v63;
  v77 = v14;
  *(v14 + 16) = v62;
  *(v14 + 24) = v15;
  v79 = swift_allocObject();
  *(v79 + 16) = 32;
  v81 = swift_allocObject();
  *(v81 + 16) = v65;
  v16 = swift_allocObject();
  v17 = v69;
  v71 = v16;
  *(v16 + 16) = v66;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v71;
  v84 = v18;
  *(v18 + 16) = v70;
  *(v18 + 24) = v19;
  v86 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
  v82 = sub_10007DEC8();
  v85 = v20;

  v21 = v73;
  v22 = v85;
  *v85 = v72;
  v22[1] = v21;

  v23 = v75;
  v24 = v85;
  v85[2] = v74;
  v24[3] = v23;

  v25 = v77;
  v26 = v85;
  v85[4] = v76;
  v26[5] = v25;

  v27 = v79;
  v28 = v85;
  v85[6] = v78;
  v28[7] = v27;

  v29 = v81;
  v30 = v85;
  v85[8] = v80;
  v30[9] = v29;

  v31 = v84;
  v32 = v85;
  v85[10] = v83;
  v32[11] = v31;
  sub_100006FD4();

  if (os_log_type_enabled(v87, v88))
  {
    v33 = v46;
    v37 = sub_10007DC88();
    v36[6] = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
    v38 = sub_10000742C(0);
    v39 = sub_10000742C(2);
    v41 = &v93;
    v93 = v37;
    v42 = &v92;
    v92 = v38;
    v43 = &v91;
    v91 = v39;
    v40 = 2;
    sub_100007480(2, &v93);
    sub_100007480(v40, v41);
    v89 = v72;
    v90 = v73;
    sub_100007494(&v89, v41, v42, v43);
    v44 = v33;
    if (v33)
    {

      __break(1u);
    }

    else
    {
      v89 = v74;
      v90 = v75;
      sub_100007494(&v89, &v93, &v92, &v91);
      v36[4] = 0;
      v89 = v76;
      v90 = v77;
      sub_100007494(&v89, &v93, &v92, &v91);
      v36[3] = 0;
      v89 = v78;
      v90 = v79;
      sub_100007494(&v89, &v93, &v92, &v91);
      v36[2] = 0;
      v89 = v80;
      v90 = v81;
      sub_100007494(&v89, &v93, &v92, &v91);
      v36[1] = 0;
      v89 = v83;
      v90 = v84;
      sub_100007494(&v89, &v93, &v92, &v91);
      _os_log_impl(&_mh_execute_header, v87, v88, "%{public}s, fallback to %s", v37, 0x16u);
      sub_1000074E0(v38);
      sub_1000074E0(v39);
      sub_10007DC68();
    }
  }

  else
  {
  }

  _objc_release(v87);
  (*(v53 + 8))(v51, v55);
  if (v59)
  {
    v34 = sub_100019A70();
  }

  else
  {
    v34 = sub_100019C40();
  }

  return sub_10000DFBC(v34, v45);
}

uint64_t sub_1000297E4()
{
  v3 = *(sub_10007D798() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_1000298B0()
{
  v1 = sub_10007D798();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  return sub_1000262A4();
}

uint64_t sub_100029924(char a1)
{
  if (a1)
  {
    return sub_10007D898("'VIP'", 5uLL, 1);
  }

  else
  {
    return sub_10007D898("'All Inboxes'", 0xDuLL, 1);
  }
}

uint64_t sub_1000299A0(uint64_t a1, int a2, void *a3, void (*a4)(void *), uint64_t a5, uint64_t a6)
{
  v112 = a1;
  v111 = a2;
  v107 = a3;
  v108 = a4;
  v109 = a5;
  v110 = a6;
  v96 = sub_10002EC8C;
  v97 = sub_10000A754;
  v98 = sub_100009410;
  v99 = sub_100009410;
  v100 = sub_10000A7A0;
  v101 = sub_100013E8C;
  v102 = sub_100009484;
  v103 = sub_100009410;
  v104 = sub_100009410;
  v105 = sub_1000094D0;
  v136 = 0;
  v137 = 0;
  v135 = 0;
  v133 = 0;
  v134 = 0;
  v132 = 0;
  v131 = 0;
  v106 = 0;
  v125 = 0;
  v113 = sub_10007CEF8();
  v114 = *(v113 - 8);
  v115 = v113 - 8;
  v116 = (*(v114 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v112);
  v117 = v43 - v116;
  v118 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v6);
  v119 = v43 - v118;
  v136 = v8;
  v137 = v9 & 1;
  v135 = v10;
  v133 = v11;
  v134 = v12;
  v132 = v13;
  if (v9)
  {
    v94 = v112;
    v29 = v117;
    v54 = v112;
    swift_errorRetain();
    v131 = v54;
    v30 = sub_100025054();
    (*(v114 + 16))(v29, v30, v113);
    swift_errorRetain();
    v57 = 7;
    v58 = swift_allocObject();
    *(v58 + 16) = v54;
    v66 = sub_10007CED8();
    v67 = sub_10007DBB8();
    v55 = 17;
    v60 = swift_allocObject();
    *(v60 + 16) = 32;
    v61 = swift_allocObject();
    *(v61 + 16) = 8;
    v56 = 32;
    v31 = swift_allocObject();
    v32 = v58;
    v59 = v31;
    *(v31 + 16) = v101;
    *(v31 + 24) = v32;
    v33 = swift_allocObject();
    v34 = v59;
    v63 = v33;
    *(v33 + 16) = v102;
    *(v33 + 24) = v34;
    v65 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v62 = sub_10007DEC8();
    v64 = v35;

    v36 = v60;
    v37 = v64;
    *v64 = v103;
    v37[1] = v36;

    v38 = v61;
    v39 = v64;
    v64[2] = v104;
    v39[3] = v38;

    v40 = v63;
    v41 = v64;
    v64[4] = v105;
    v41[5] = v40;
    sub_100006FD4();

    if (os_log_type_enabled(v66, v67))
    {
      v42 = v106;
      v47 = sub_10007DC88();
      v46 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v48 = sub_10000742C(0);
      v49 = sub_10000742C(1);
      v50 = &v130;
      v130 = v47;
      v51 = &v129;
      v129 = v48;
      v52 = &v128;
      v128 = v49;
      sub_100007480(2, &v130);
      sub_100007480(1, v50);
      v126 = v103;
      v127 = v60;
      sub_100007494(&v126, v50, v51, v52);
      v53 = v42;
      if (v42)
      {

        __break(1u);
      }

      else
      {
        v126 = v104;
        v127 = v61;
        sub_100007494(&v126, &v130, &v129, &v128);
        v45 = 0;
        v126 = v105;
        v127 = v63;
        sub_100007494(&v126, &v130, &v129, &v128);
        _os_log_impl(&_mh_execute_header, v66, v67, "Failed to get excluded accounts. %s", v47, 0xCu);
        sub_1000074E0(v48);
        sub_1000074E0(v49);
        sub_10007DC68();
      }
    }

    else
    {
    }

    _objc_release(v66);
    (*(v114 + 8))(v117, v113);
    v43[1] = &type metadata for String;
    sub_10007DEC8();
    v44 = sub_10007DA88();
    sub_10002A8E4(v107, v44, v108, v109);
  }

  else
  {
    v95 = v112;
    v14 = v119;
    v80 = v112;

    v125 = v80;
    v15 = sub_100025054();
    (*(v114 + 16))(v14, v15, v113);

    v83 = 7;
    v84 = swift_allocObject();
    *(v84 + 16) = v80;
    v92 = sub_10007CED8();
    v93 = sub_10007DBC8();
    v81 = 17;
    v86 = swift_allocObject();
    *(v86 + 16) = 0;
    v87 = swift_allocObject();
    *(v87 + 16) = 8;
    v82 = 32;
    v16 = swift_allocObject();
    v17 = v84;
    v85 = v16;
    *(v16 + 16) = v96;
    *(v16 + 24) = v17;
    v18 = swift_allocObject();
    v19 = v85;
    v89 = v18;
    *(v18 + 16) = v97;
    *(v18 + 24) = v19;
    v91 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v88 = sub_10007DEC8();
    v90 = v20;

    v21 = v86;
    v22 = v90;
    *v90 = v98;
    v22[1] = v21;

    v23 = v87;
    v24 = v90;
    v90[2] = v99;
    v24[3] = v23;

    v25 = v89;
    v26 = v90;
    v90[4] = v100;
    v26[5] = v25;
    sub_100006FD4();

    if (os_log_type_enabled(v92, v93))
    {
      v27 = v106;
      v73 = sub_10007DC88();
      v71 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v72 = 0;
      v74 = sub_10000742C(0);
      v75 = sub_10000742C(v72);
      v76 = &v124;
      v124 = v73;
      v77 = &v123;
      v123 = v74;
      v78 = &v122;
      v122 = v75;
      sub_100007480(0, &v124);
      sub_100007480(1, v76);
      v120 = v98;
      v121 = v86;
      sub_100007494(&v120, v76, v77, v78);
      v79 = v27;
      if (v27)
      {

        __break(1u);
      }

      else
      {
        v120 = v99;
        v121 = v87;
        sub_100007494(&v120, &v124, &v123, &v122);
        v70 = 0;
        v120 = v100;
        v121 = v89;
        sub_100007494(&v120, &v124, &v123, &v122);
        _os_log_impl(&_mh_execute_header, v92, v93, "Received %ld focused accounts", v73, 0xCu);
        v69 = 0;
        sub_1000074E0(v74);
        sub_1000074E0(v75);
        sub_10007DC68();
      }
    }

    else
    {
    }

    _objc_release(v92);
    (*(v114 + 8))(v119, v113);
    if (sub_10007DAA8())
    {
      v68 = sub_100018CB4();
    }

    else
    {
      v68 = 0;
    }

    if (v68)
    {

      v108(v107);
    }

    else
    {
      sub_10002A8E4(v107, v80, v108, v109);
    }
  }
}

uint64_t sub_10002A8E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v117 = a1;
  v120 = a2;
  v118 = a3;
  v119 = a4;
  v99 = sub_100013124;
  v100 = sub_100009484;
  v101 = sub_1000132FC;
  v102 = sub_100009484;
  v103 = sub_100009410;
  v104 = sub_100009410;
  v105 = sub_1000094D0;
  v106 = sub_100009410;
  v107 = sub_100009410;
  v108 = sub_1000094D0;
  v109 = sub_10002E0C8;
  v143 = 0;
  v142 = 0;
  v140 = 0;
  v141 = 0;
  v139 = 0;
  v134 = 0;
  v135 = 0;
  v110 = 0;
  v111 = 0;
  v112 = *(type metadata accessor for Mailbox() - 8);
  v113 = v112;
  v114 = *(v112 + 64);
  v115 = (v114 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v116 = (&v47 - v115);
  v121 = sub_10007CEF8();
  v122 = *(v121 - 8);
  v123 = v121 - 8;
  v124 = (*(v122 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v120);
  v125 = &v47 - v124;
  v143 = v6;
  v142 = v5;
  v140 = v7;
  v141 = v8;
  v139 = v4;
  if (sub_10007DAA8())
  {
    v96 = sub_10007D898("Mailbox is invalid", 0x12uLL, 1);
  }

  else
  {
    v10 = sub_10007DEB8();
    v93 = &v137;
    v137 = v10;
    v138 = v11;
    v91 = 1;
    v144._countAndFlagsBits = sub_10007D898("Update mailbox for ", 0x13uLL, 1);
    object = v144._object;
    sub_10007DEA8(v144);

    v136 = sub_10007DA98();
    sub_10007DE88();
    v145._countAndFlagsBits = sub_10007D898(" focused accounts", 0x11uLL, v91 & 1);
    v92 = v145._object;
    sub_10007DEA8(v145);

    v95 = v137;
    v94 = v138;

    sub_1000099C8(v93);
    v96 = sub_10007D888();
  }

  v97 = v9;
  v12 = v125;
  v67 = v9;
  v66 = v96;
  v134 = v96;
  v135 = v9;
  v13 = sub_100025054();
  (*(v122 + 16))(v12, v13, v121);

  v75 = 32;
  v76 = 7;
  v14 = swift_allocObject();
  v15 = v67;
  v16 = v116;
  v17 = v14;
  v18 = v117;
  v70 = v17;
  *(v17 + 16) = v66;
  *(v17 + 24) = v15;
  sub_10000DFBC(v18, v16);
  v68 = *(v113 + 80);
  v69 = (v68 + 16) & ~v68;
  v77 = swift_allocObject();
  sub_10000E380(v116, v77 + v69);
  v88 = sub_10007CED8();
  v89 = sub_10007DBC8();
  v73 = 17;
  v79 = swift_allocObject();
  v72 = 34;
  *(v79 + 16) = 34;
  v80 = swift_allocObject();
  v74 = 8;
  *(v80 + 16) = 8;
  v19 = swift_allocObject();
  v20 = v70;
  v71 = v19;
  *(v19 + 16) = v99;
  *(v19 + 24) = v20;
  v21 = swift_allocObject();
  v22 = v71;
  v81 = v21;
  *(v21 + 16) = v100;
  *(v21 + 24) = v22;
  v82 = swift_allocObject();
  *(v82 + 16) = v72;
  v83 = swift_allocObject();
  *(v83 + 16) = v74;
  v23 = swift_allocObject();
  v24 = v77;
  v78 = v23;
  *(v23 + 16) = v101;
  *(v23 + 24) = v24;
  v25 = swift_allocObject();
  v26 = v78;
  v85 = v25;
  *(v25 + 16) = v102;
  *(v25 + 24) = v26;
  v87 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
  v84 = sub_10007DEC8();
  v86 = v27;

  v28 = v79;
  v29 = v86;
  *v86 = v103;
  v29[1] = v28;

  v30 = v80;
  v31 = v86;
  v86[2] = v104;
  v31[3] = v30;

  v32 = v81;
  v33 = v86;
  v86[4] = v105;
  v33[5] = v32;

  v34 = v82;
  v35 = v86;
  v86[6] = v106;
  v35[7] = v34;

  v36 = v83;
  v37 = v86;
  v86[8] = v107;
  v37[9] = v36;

  v38 = v85;
  v39 = v86;
  v86[10] = v108;
  v39[11] = v38;
  sub_100006FD4();

  if (os_log_type_enabled(v88, v89))
  {
    v40 = v110;
    v58 = sub_10007DC88();
    v57 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
    v59 = sub_10000742C(0);
    v60 = sub_10000742C(2);
    v62 = &v130;
    v130 = v58;
    v63 = &v129;
    v129 = v59;
    v64 = &v128;
    v128 = v60;
    v61 = 2;
    sub_100007480(2, &v130);
    sub_100007480(v61, v62);
    v126 = v103;
    v127 = v79;
    sub_100007494(&v126, v62, v63, v64);
    v65 = v40;
    if (v40)
    {

      __break(1u);
    }

    else
    {
      v126 = v104;
      v127 = v80;
      sub_100007494(&v126, &v130, &v129, &v128);
      v56 = 0;
      v126 = v105;
      v127 = v81;
      sub_100007494(&v126, &v130, &v129, &v128);
      v55 = 0;
      v126 = v106;
      v127 = v82;
      sub_100007494(&v126, &v130, &v129, &v128);
      v54 = 0;
      v126 = v107;
      v127 = v83;
      sub_100007494(&v126, &v130, &v129, &v128);
      v53 = 0;
      v126 = v108;
      v127 = v85;
      sub_100007494(&v126, &v130, &v129, &v128);
      _os_log_impl(&_mh_execute_header, v88, v89, "%{public}s, mailbox: %{public}s", v58, 0x16u);
      sub_1000074E0(v59);
      sub_1000074E0(v60);
      sub_10007DC68();
    }
  }

  else
  {
  }

  _objc_release(v88);
  (*(v122 + 8))(v125, v121);
  v52 = v131;
  sub_100025144(v98, v131);
  v49 = v132;
  v50 = v133;
  sub_100024F8C(v52, v132);

  sub_10000DFBC(v117, v116);
  v48 = (v68 + 32) & ~v68;
  v41 = swift_allocObject();
  v42 = v119;
  v43 = v48;
  v44 = v41;
  v45 = v116;
  v51 = v44;
  *(v44 + 16) = v118;
  *(v44 + 24) = v42;
  sub_10000E380(v45, v44 + v43);
  (*(v50 + 24))(v117, v120, v109, v51, v49);

  sub_10000A914(v52);
}

void *sub_10002B78C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v115 = a1;
  v112 = a2;
  v113 = a3;
  v114 = a4;
  v86 = sub_100013E8C;
  v87 = sub_100009484;
  v88 = sub_100009410;
  v89 = sub_100009410;
  v90 = sub_1000094D0;
  v91 = sub_1000132FC;
  v92 = sub_100009484;
  v93 = sub_100009410;
  v94 = sub_100009410;
  v95 = sub_1000094D0;
  v133 = 0;
  v131 = 0;
  v132 = 0;
  v130 = 0;
  v129 = 0;
  v96 = 0;
  v134 = 0;
  v97 = 0;
  v98 = sub_10007CEF8();
  v99 = *(v98 - 8);
  v100 = v98 - 8;
  v101 = (*(v99 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(0);
  v102 = v41 - v101;
  v103 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v104 = v41 - v103;
  v6 = type metadata accessor for Mailbox();
  v105 = *(v6 - 8);
  v106 = v105;
  v107 = *(v105 + 64);
  v108 = (v107 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v109 = (v41 - v108);
  v110 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v41 - v108);
  v111 = v41 - v110;
  v134 = v41 - v110;
  v117 = sub_1000094DC(&qword_10009AEC8, " P");
  v116 = (*(*(v117 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v115);
  v118 = (v41 - v116);
  v133 = v8;
  v131 = v9;
  v132 = v10;
  v130 = v11;
  sub_10002E54C(v8, (v41 - v116));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = v102;
    v49 = *v118;
    v129 = v49;
    v28 = sub_100025054();
    (*(v99 + 16))(v27, v28, v98);
    swift_errorRetain();
    v52 = 7;
    v53 = swift_allocObject();
    *(v53 + 16) = v49;
    v61 = sub_10007CED8();
    v62 = sub_10007DBB8();
    v50 = 17;
    v55 = swift_allocObject();
    *(v55 + 16) = 34;
    v56 = swift_allocObject();
    *(v56 + 16) = 8;
    v51 = 32;
    v29 = swift_allocObject();
    v30 = v53;
    v54 = v29;
    *(v29 + 16) = v86;
    *(v29 + 24) = v30;
    v31 = swift_allocObject();
    v32 = v54;
    v58 = v31;
    *(v31 + 16) = v87;
    *(v31 + 24) = v32;
    v60 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v57 = sub_10007DEC8();
    v59 = v33;

    v34 = v55;
    v35 = v59;
    *v59 = v88;
    v35[1] = v34;

    v36 = v56;
    v37 = v59;
    v59[2] = v89;
    v37[3] = v36;

    v38 = v58;
    v39 = v59;
    v59[4] = v90;
    v39[5] = v38;
    sub_100006FD4();

    if (os_log_type_enabled(v61, v62))
    {
      v40 = v96;
      v42 = sub_10007DC88();
      v41[1] = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v43 = sub_10000742C(0);
      v44 = sub_10000742C(1);
      v45 = &v128;
      v128 = v42;
      v46 = &v127;
      v127 = v43;
      v47 = &v126;
      v126 = v44;
      sub_100007480(2, &v128);
      sub_100007480(1, v45);
      v124 = v88;
      v125 = v55;
      sub_100007494(&v124, v45, v46, v47);
      v48 = v40;
      if (v40)
      {

        __break(1u);
      }

      else
      {
        v124 = v89;
        v125 = v56;
        sub_100007494(&v124, &v128, &v127, &v126);
        v41[0] = 0;
        v124 = v90;
        v125 = v58;
        sub_100007494(&v124, &v128, &v127, &v126);
        _os_log_impl(&_mh_execute_header, v61, v62, "Failed to update mailbox: %{public}s", v42, 0xCu);
        sub_1000074E0(v43);
        sub_1000074E0(v44);
        sub_10007DC68();
      }
    }

    else
    {
    }

    _objc_release(v61);
    (*(v99 + 8))(v102, v98);

    v112(v114);
  }

  else
  {
    v12 = v104;
    sub_10000E380(v118, v111);
    v134 = v111;
    v13 = sub_100025054();
    (*(v99 + 16))(v12, v13, v98);
    sub_10000DFBC(v111, v109);
    v72 = (*(v106 + 80) + 16) & ~*(v106 + 80);
    v75 = 7;
    v76 = swift_allocObject();
    sub_10000E380(v109, v76 + v72);
    v84 = sub_10007CED8();
    v85 = sub_10007DBC8();
    v73 = 17;
    v78 = swift_allocObject();
    *(v78 + 16) = 34;
    v79 = swift_allocObject();
    *(v79 + 16) = 8;
    v74 = 32;
    v14 = swift_allocObject();
    v15 = v76;
    v77 = v14;
    *(v14 + 16) = v91;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v77;
    v81 = v16;
    *(v16 + 16) = v92;
    *(v16 + 24) = v17;
    v83 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v80 = sub_10007DEC8();
    v82 = v18;

    v19 = v78;
    v20 = v82;
    *v82 = v93;
    v20[1] = v19;

    v21 = v79;
    v22 = v82;
    v82[2] = v94;
    v22[3] = v21;

    v23 = v81;
    v24 = v82;
    v82[4] = v95;
    v24[5] = v23;
    sub_100006FD4();

    if (os_log_type_enabled(v84, v85))
    {
      v25 = v96;
      v65 = sub_10007DC88();
      v64 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v66 = sub_10000742C(0);
      v67 = sub_10000742C(1);
      v68 = &v123;
      v123 = v65;
      v69 = &v122;
      v122 = v66;
      v70 = &v121;
      v121 = v67;
      sub_100007480(2, &v123);
      sub_100007480(1, v68);
      v119 = v93;
      v120 = v78;
      sub_100007494(&v119, v68, v69, v70);
      v71 = v25;
      if (v25)
      {

        __break(1u);
      }

      else
      {
        v119 = v94;
        v120 = v79;
        sub_100007494(&v119, &v123, &v122, &v121);
        v63 = 0;
        v119 = v95;
        v120 = v81;
        sub_100007494(&v119, &v123, &v122, &v121);
        _os_log_impl(&_mh_execute_header, v84, v85, "Successfully updated mailbox: %{public}s", v65, 0xCu);
        sub_1000074E0(v66);
        sub_1000074E0(v67);
        sub_10007DC68();
      }
    }

    else
    {
    }

    _objc_release(v84);
    (*(v99 + 8))(v104, v98);

    v112(v111);

    return sub_100014DA0(v111);
  }
}

uint64_t sub_10002C778(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_100025554(a1, a2, a3, a4);
}

uint64_t sub_10002C7C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_100026D94(a1, a2, a3, a4);
}

uint64_t sub_10002C818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = async function pointer to IntentTimelineProvider.relevances()[1];
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_10002C8DC;

  return IntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_10002C8DC()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_10002CA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = async function pointer to IntentTimelineProvider.relevance()[1];
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_10002C8DC;

  return IntentTimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_10002CAC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10002CB08()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_10007D6D8();
  v1 = sub_10002CB64();

  return sub_100007548(v5, v3, v4, v1);
}

unint64_t sub_10002CB64()
{
  v2 = qword_10009B2C0;
  if (!qword_10009B2C0)
  {
    sub_10007D6D8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B2C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10002CBE4()
{
  v3 = *(sub_10007D798() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_10002CCB0()
{
  v1 = *(sub_10007D798() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1000262C8();
}

uint64_t sub_10002CD6C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10002CDAC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10002CE44(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  v24 = a6;
  v26 = a1;
  v20 = 0;
  v30 = a6;
  v21 = *(a6 - 8);
  v22 = v21;
  v7 = *(v21 + 64);
  __chkstk_darwin(0);
  v23 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9();
  v27 = sub_10007DD98() >> 3;
  v28 = *v26;
  v29 = v28;
  if (v27 < 0)
  {
    result = sub_10007DDC8();
    __break(1u);
  }

  else
  {
    v19 = v28 + v27;
    v18 = &v18;
    v10 = __chkstk_darwin(v23);
    v16 = v29;
    v17 = v11;
    sub_10002D080(v10, sub_10002F8F8, v15, v12, &type metadata for Never, &type metadata for () + 8, v13, &type metadata for ());
    (*(v22 + 8))(v23, v24);
    result = v18;
    *v26 = v19;
  }

  return result;
}

uint64_t sub_10002D080@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v11[2] = a8;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v17 = a7;
  v18 = "Fatal error";
  v19 = "UnsafeRawBufferPointer with negative count";
  v20 = "Swift/UnsafeRawBufferPointer.swift";
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v21 = *(a5 - 8);
  v22 = a5 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v24 = v11 - v23;
  v25 = *(*(v8 - 8) + 64);
  if (v25 < 0)
  {
    result = sub_10007DDC8();
    __break(1u);
  }

  else
  {
    v9 = v16;
    result = v13(v12, v12 + v25, v24);
    v11[1] = v9;
    if (v9)
    {
      return (*(v21 + 32))(v17, v24, v15);
    }
  }

  return result;
}

uint64_t sub_10002D29C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10002D304()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10002D344@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_10002D380()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10002D3C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10002D400()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10002D44C()
{
  sub_10000A914((v0 + 16));
  v1 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_10002D4A4()
{
  v3 = *(sub_10007D798() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_10002D570()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10002D5B0()
{
  v3 = *(sub_10007D798() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_10002D6D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10002D714()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10002D7AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10002D7EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10002D82C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10002D86C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10002D8AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10002D8F8()
{
  v11 = type metadata accessor for Mailbox();
  v1 = *(*(v11 - 8) + 80);
  v12 = (v1 + 16) & ~v1;
  v13 = (v12 + *(*(v11 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v2 = *(v0 + v12 + 8);

  v3 = *(v0 + v12 + 16);

  if (*(v0 + v12 + 32) > 5uLL)
  {
    v4 = *(v10 + v12 + 32);
  }

  v7 = v10 + v12 + *(v11 + 28);
  v8 = sub_10007CD98();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v7, 1))
  {
    (*(v9 + 8))(v7, v8);
  }

  v5 = *(v10 + v13 + 8);

  sub_10000A914((v10 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)));
  return swift_deallocObject();
}

uint64_t sub_10002DAD8(uint64_t a1, char a2)
{
  v12 = *(type metadata accessor for Mailbox() - 8);
  v3 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v4 = (v3 + *(v12 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = v2 + v4;
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_1000299A0(a1, a2 & 1, (v2 + v3), v7, v8, v2 + v5);
}

uint64_t sub_10002DBA4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10002DBE4()
{
  v10 = type metadata accessor for Mailbox();
  v1 = *(*(v10 - 8) + 80);
  v11 = (v1 + 16) & ~v1;
  v12 = v11 + *(*(v10 - 8) + 64);
  v2 = *(v0 + v11 + 8);

  v3 = *(v0 + v11 + 16);

  if (*(v0 + v11 + 32) > 5uLL)
  {
    v4 = *(v9 + v11 + 32);
  }

  v6 = v9 + v11 + *(v10 + 28);
  v7 = sub_10007CD98();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v6, 1))
  {
    (*(v8 + 8))(v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_10002DDD0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10002DE10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10002DEA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10002DEE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10002DF28()
{
  v11 = type metadata accessor for Mailbox();
  v1 = *(*(v11 - 8) + 80);
  v13 = (v1 + 32) & ~v1;
  v12 = v13 + *(*(v11 - 8) + 64);
  v2 = *(v0 + 24);

  v3 = *(v0 + v13 + 8);

  v4 = *(v0 + v13 + 16);

  if (*(v0 + v13 + 32) > 5uLL)
  {
    v5 = *(v10 + v13 + 32);
  }

  v7 = v10 + v13 + *(v11 + 28);
  v8 = sub_10007CD98();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v7, 1))
  {
    (*(v9 + 8))(v7, v8);
  }

  return swift_deallocObject();
}

void *sub_10002E0C8(uint64_t a1)
{
  v2 = type metadata accessor for Mailbox();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80));

  return sub_10002B78C(a1, v3, v4, v5);
}

uint64_t sub_10002E178(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 24)))
      {
        v3 = *(a1 + 24);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10002E290(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_10002E490()
{
  v2 = qword_10009B2C8;
  if (!qword_10009B2C8)
  {
    type metadata accessor for MailEntry();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B2C8);
    return WitnessTable;
  }

  return v2;
}

void *sub_10002E54C(void *a1, void *a2)
{
  sub_1000094DC(&qword_10009AEC8, " P");
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *a1;
    swift_errorRetain();
    *a2 = v5;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    *a2 = *a1;
    v11 = a1[1];

    a2[1] = v11;
    v12 = a1[2];

    a2[2] = v12;
    if (a1[4] > 5uLL)
    {
      a2[3] = a1[3];
      v10 = a1[4];

      a2[4] = v10;
    }

    else
    {
      *(a2 + 3) = *(a1 + 3);
    }

    v2 = type metadata accessor for Mailbox();
    __dst = a2 + *(v2 + 28);
    __src = a1 + *(v2 + 28);
    v8 = sub_10007CD98();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(__src, 1))
    {
      v3 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
      memcpy(__dst, __src, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v9 + 16))(__dst, __src, v8);
      (*(v9 + 56))(__dst, 0, 1, v8);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_10002E7B0()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_10002E848()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10002E888()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10002E8C8()
{
  v10 = type metadata accessor for Mailbox();
  v1 = *(*(v10 - 8) + 80);
  v11 = (v1 + 16) & ~v1;
  v12 = v11 + *(*(v10 - 8) + 64);
  v2 = *(v0 + v11 + 8);

  v3 = *(v0 + v11 + 16);

  if (*(v0 + v11 + 32) > 5uLL)
  {
    v4 = *(v9 + v11 + 32);
  }

  v6 = v9 + v11 + *(v10 + 28);
  v7 = sub_10007CD98();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v6, 1))
  {
    (*(v8 + 8))(v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_10002EAB4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10002EAF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10002EB34()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_10002EBCC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10002EC0C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10002EC4C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_10002ECEC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10002ED2C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10002ED6C()
{
  v17 = type metadata accessor for MailEntry();
  v1 = *(*(v17 - 8) + 80);
  v18 = (v1 + 16) & ~v1;
  v19 = v18 + *(*(v17 - 8) + 64);
  v2 = *(v0 + v18 + 8);

  v3 = *(v0 + v18 + 16);

  if (*(v0 + v18 + 32) > 5uLL)
  {
    v4 = *(v16 + v18 + 32);
  }

  v13 = v16 + v18 + *(type metadata accessor for Mailbox() + 28);
  v14 = sub_10007CD98();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v13, 1))
  {
    (*(v15 + 8))(v13, v14);
  }

  v12 = (v16 + v18 + *(type metadata accessor for Snapshot() + 20));
  if (*v12 >= 2)
  {
    v5 = *v12;
  }

  v9 = v16 + v18 + *(v17 + 20);
  v10 = sub_10007D768();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v9, 1))
  {
    (*(v11 + 8))(v9, v10);
  }

  v8 = v16 + v18 + *(v17 + 24);
  v6 = sub_10007CE28();
  (*(*(v6 - 8) + 8))(v8);
  return swift_deallocObject();
}

uint64_t sub_10002F050()
{
  v1 = *(type metadata accessor for MailEntry() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100026A20(v2);
}

uint64_t sub_10002F10C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10002F14C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10002F18C(uint64_t a1)
{
  v3 = sub_10007D768();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_10002F234()
{
  v11 = type metadata accessor for Mailbox();
  v1 = *(*(v11 - 8) + 80);
  v13 = (v1 + 32) & ~v1;
  v12 = v13 + *(*(v11 - 8) + 64);
  v2 = *(v0 + 24);

  v3 = *(v0 + v13 + 8);

  v4 = *(v0 + v13 + 16);

  if (*(v0 + v13 + 32) > 5uLL)
  {
    v5 = *(v10 + v13 + 32);
  }

  v7 = v10 + v13 + *(v11 + 28);
  v8 = sub_10007CD98();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v7, 1))
  {
    (*(v9 + 8))(v7, v8);
  }

  return swift_deallocObject();
}

uint64_t *sub_10002F3D4(unint64_t a1, uint64_t a2, int a3)
{
  LOWORD(v11) = a3;
  BYTE2(v11) = BYTE2(a3) & 1;
  v4 = type metadata accessor for Mailbox();
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = (v3 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)));

  return sub_1000285AC(a1, a2, v11, v5, v6, v7);
}

uint64_t *sub_10002F4A4(uint64_t *a1)
{
  if (*a1 >= 2)
  {
    v1 = *a1;
  }

  return a1;
}

unint64_t sub_10002F4F8(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_10002F53C()
{
  v17 = type metadata accessor for MailEntry();
  v1 = *(*(v17 - 8) + 80);
  v18 = (v1 + 16) & ~v1;
  v19 = v18 + *(*(v17 - 8) + 64);
  v2 = *(v0 + v18 + 8);

  v3 = *(v0 + v18 + 16);

  if (*(v0 + v18 + 32) > 5uLL)
  {
    v4 = *(v16 + v18 + 32);
  }

  v13 = v16 + v18 + *(type metadata accessor for Mailbox() + 28);
  v14 = sub_10007CD98();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v13, 1))
  {
    (*(v15 + 8))(v13, v14);
  }

  v12 = (v16 + v18 + *(type metadata accessor for Snapshot() + 20));
  if (*v12 >= 2)
  {
    v5 = *v12;
  }

  v9 = v16 + v18 + *(v17 + 20);
  v10 = sub_10007D768();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v9, 1))
  {
    (*(v11 + 8))(v9, v10);
  }

  v8 = v16 + v18 + *(v17 + 24);
  v6 = sub_10007CE28();
  (*(*(v6 - 8) + 8))(v8);
  return swift_deallocObject();
}

uint64_t sub_10002F878()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10002F8B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10002F8F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10002D058();
}

uint64_t sub_10002F928()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10002F9F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10002FA38()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10002FAD0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10002FB10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

id sub_10002FB50()
{
  sub_10002FC64();
  v2 = [objc_opt_self() defaultProvider];
  v3 = [objc_opt_self() sharedManager];
  if (v3)
  {
    v1 = v3;
  }

  else
  {
    sub_10007DDA8();
    __break(1u);
  }

  result = sub_10002FCC8(v2, v1);
  qword_10009B2E0 = result;
  return result;
}

unint64_t sub_10002FC64()
{
  v2 = qword_10009B2E8;
  if (!qword_10009B2E8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009B2E8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t *sub_10002FD10()
{
  if (qword_10009A628 != -1)
  {
    swift_once();
  }

  return &qword_10009B2E0;
}

void *sub_10002FD70()
{
  v1 = *sub_10002FD10();
  _objc_retain(v1);
  return v1;
}

char *sub_10002FDA8@<X0>(void *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v83 = a3;
  v107 = a1;
  v97 = a2;
  v120 = 0;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v110 = 0;
  v98 = 0;
  v84 = (*(*(sub_10007CE28() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v85 = &v17 - v84;
  v86 = sub_10007CD98();
  v87 = *(v86 - 8);
  v88 = v86 - 8;
  v89 = (*(v87 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v86);
  v90 = &v17 - v89;
  v91 = (*(*(sub_1000094DC(&qword_10009B2F0, &qword_10007F530) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v98);
  v92 = &v17 - v91;
  v93 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v94 = &v17 - v93;
  v95 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v96 = &v17 - v95;
  v120 = &v17 - v95;
  v99 = type metadata accessor for Message();
  v100 = *(v99 - 8);
  v101 = v99 - 8;
  v103 = *(v100 + 64);
  v102 = (v103 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v98);
  v104 = &v17 - v102;
  v105 = (v103 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v106 = &v17 - v105;
  v119 = &v17 - v105;
  v118 = v8;
  v117 = v9;
  sub_100030D58();
  _objc_retain(v107);
  v108 = sub_100030DBC(v107);
  v116 = v108;
  v109 = [v108 waitForResult];
  v115 = v109;
  _objc_retain(v109);
  if (v109)
  {
    v82 = v109;
    v80 = v109;
    v10 = [v109 publicMessageURL];
    v81 = v10;
    if (v10)
    {
      v79 = v81;
      v78 = v81;
      sub_10007CD88();
      (*(v87 + 32))(v94, v90, v86);
      (*(v87 + 56))(v94, 0, 1, v86);
      _objc_release(v78);
    }

    else
    {
      (*(v87 + 56))(v94, 1, 1, v86);
    }

    sub_100017ED4(v94, v96);
    _objc_release(v80);
  }

  else
  {
    (*(v87 + 56))(v96, 1, 1, v86);
  }

  v113 = 0;
  v114 = 1;
  _objc_retain(v107);
  v77 = [v107 category];
  if (v77)
  {
    v76 = v77;
    v72 = v77;
    v110 = v77;
    _objc_release(v107);
    [v72 type];
    v73 = MUIBucketFromEMCategoryType();
    v113 = v73;
    v114 = 0;
    _objc_release(v72);
    v74 = v73;
    v75 = 0;
  }

  else
  {
    _objc_release(v107);
    v74 = 0;
    v75 = 1;
  }

  v60 = v75;
  v61 = v74;
  v62 = [v107 objectID];
  v63 = [v62 globalMessageID];
  _objc_release(v62);
  v112[1] = v63;
  v64 = sub_10007D918();
  v65 = v11;
  v70 = *sub_10002FD10();
  _objc_retain(v70);
  _objc_retain(v107);
  v68 = [v107 senderList];
  v66 = sub_1000094DC(&unk_10009B360, &unk_10007F7C0);
  v67 = sub_10007D9A8();
  isa = sub_10007D998().super.isa;
  _objc_release(v107);

  _objc_release(v68);
  v71 = [v70 stringFromEmailAddressList:isa preferFullDisplayName:0];
  _objc_release(isa);
  _objc_release(v70);
  if (v71)
  {
    v59 = v71;
    v54 = v71;
    v55 = sub_10007D868();
    v56 = v12;
    _objc_release(v54);
    v57 = v55;
    v58 = v56;
  }

  else
  {
    v57 = 0;
    v58 = 0;
  }

  v49 = v58;
  v50 = v57;
  v51 = objc_opt_self();
  _objc_retain(v107);
  v52 = [v107 subject];
  _objc_release(v107);
  v53 = [v51 subjectStringForDisplayForSubject:v52];
  _objc_release(v52);
  if (v53)
  {
    v48 = v53;
    v43 = v53;
    v44 = sub_10007D868();
    v45 = v13;
    _objc_release(v43);
    v46 = v44;
    v47 = v45;
  }

  else
  {
    v46 = 0;
    v47 = 0;
  }

  v40 = v47;
  v41 = v46;
  _objc_retain(v107);
  v42 = [v107 summary];
  if (v42)
  {
    v39 = v42;
    v34 = v42;
    v35 = sub_10007D868();
    v36 = v14;
    _objc_release(v34);
    v37 = v35;
    v38 = v36;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v25 = v38;
  v26 = v37;
  _objc_release(v107);
  _objc_retain(v107);
  v27 = [v107 date];
  sub_10007CE08();
  _objc_release(v107);
  _objc_retain(v107);
  v28 = [v107 isVIP];
  _objc_release(v107);
  _objc_retain(v107);
  v29 = [v107 flags];
  _objc_release(v107);
  v30 = [v29 read];
  _objc_release(v29);
  v31 = v30 ^ 1;
  _objc_retain(v107);
  v32 = [v107 hasAttachments];
  _objc_release(v107);
  _objc_retain(v107);
  v33 = [v107 isBlocked];
  _objc_release(v107);
  if (sub_10001A44C())
  {
    _objc_retain(v107);
    v112[0] = [v107 category];
    if (v112[0])
    {
      v21 = v112;
      v22 = v112[0];
      _objc_retain(v112[0]);
      sub_100012FD8(v21);
      _objc_release(v107);
      v23 = [v22 isHighImpact];
      _objc_release(v22);
      v24 = v23;
    }

    else
    {
      sub_100012FD8(v112);
      _objc_release(v107);
      v24 = 2;
    }

    v111 = v24;
    if (v24 == 2)
    {
      v20 = 0;
    }

    else
    {
      v20 = v111;
    }

    v19 = v20;
  }

  else
  {
    v19 = 0;
  }

  v15 = v85;
  v17 = v19;
  sub_10001AB30(v96, v92);
  v18 = 1;
  sub_1000318B8(v64, v65, v50, v49, v41, v40, v26, v25, v104, v15, v28, v31 & 1, v32, v33, v61, v60 & 1, v17 & 1, v92);
  _objc_release(v27);
  sub_100030DFC(v104, v106);
  sub_100017FFC(v96);
  _objc_release(v109);
  _objc_release(v108);
  sub_1000143D8(v106, v83);
  (*(v100 + 56))(v83, 0, v18, v99);
  sub_100014DA0(v97);
  _objc_release(v107);
  return sub_100014700(v106);
}

unint64_t sub_100030D58()
{
  v2 = qword_10009B2F8;
  if (!qword_10009B2F8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009B2F8);
    return ObjCClassMetadata;
  }

  return v2;
}

char *sub_100030DFC(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  *(a2 + 2) = *(a1 + 2);
  *(a2 + 3) = *(a1 + 3);
  v9 = type metadata accessor for Message();
  v7 = v9[8];
  v2 = sub_10007CE28();
  (*(*(v2 - 8) + 32))(&a2[v7], &a1[v7]);
  a2[v9[9]] = a1[v9[9]];
  a2[v9[10]] = a1[v9[10]];
  a2[v9[11]] = a1[v9[11]];
  a2[v9[12]] = a1[v9[12]];
  v3 = v9[13];
  v4 = &a2[v3];
  *v4 = *&a1[v3];
  v4[8] = a1[v3 + 8];
  a2[v9[14]] = a1[v9[14]];
  v10 = v9[15];
  v12 = sub_10007CD98();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(&a1[v10], 1))
  {
    v5 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    memcpy(&a2[v10], &a1[v10], *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v13 + 32))();
    (*(v13 + 56))(&a2[v10], 0, 1, v12);
  }

  return a2;
}

id sub_1000310B8(uint64_t a1, void *a2)
{
  v5 = [v2 initWithUserProfileProvider:? addressBookManager:?];
  _objc_release(a2);
  swift_unknownObjectRelease();
  return v5;
}

id sub_100031118(void *a1)
{
  v4 = [v1 initWithMessage:?];
  _objc_release(a1);
  return v4;
}

uint64_t sub_100031168()
{
  v69 = 0;
  v68 = 0;
  v1 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
  v17 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v59 = &v10 - v17;
  v57 = 0;
  v47 = sub_10007CE28();
  v44 = *(v47 - 8);
  v45 = v47 - 8;
  v18 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v47);
  v46 = &v10 - v18;
  v69 = v0;
  v19 = [objc_opt_self() currentDevice];
  v35 = [v19 isInternal];
  v58 = 1;
  v68 = v35 & 1;
  _objc_release(v19);
  v20 = 7;
  v2 = sub_10007DEB8();
  v52 = &v66;
  v66 = v2;
  v67 = v3;
  v70._countAndFlagsBits = sub_10007D898("sender:", v20, v58 & 1);
  object = v70._object;
  sub_10007DEA8(v70);

  v22 = *(v54 + 2);
  v23 = *(v54 + 3);

  v24 = sub_100033054(v22, v23, v35);
  v25 = v4;

  v26 = v65;
  v65[0] = v24;
  v65[1] = v25;
  v39 = &type metadata for String;
  v40 = &protocol witness table for String;
  v41 = &protocol witness table for String;
  sub_10007DE98();
  sub_1000099C8(v26);
  v53 = 10;
  v71._countAndFlagsBits = sub_10007D898(", subject:", 0xAuLL, v58 & 1);
  v27 = v71._object;
  sub_10007DEA8(v71);

  v28 = *(v54 + 4);
  v29 = *(v54 + 5);

  v30 = sub_100033054(v28, v29, v35);
  v31 = v5;

  v32 = v64;
  v64[0] = v30;
  v64[1] = v31;
  sub_10007DE98();
  sub_1000099C8(v32);
  v72._countAndFlagsBits = sub_10007D898(", summary:", v53, v58 & 1);
  v33 = v72._object;
  sub_10007DEA8(v72);

  v34 = *(v54 + 6);
  v36 = *(v54 + 7);

  v37 = sub_100033054(v34, v36, v35);
  v38 = v6;

  v42 = v63;
  v63[0] = v37;
  v63[1] = v38;
  sub_10007DE98();
  sub_1000099C8(v42);
  v73._countAndFlagsBits = sub_10007D898(", dateReceived: ", 0x10uLL, v58 & 1);
  v43 = v73._object;
  sub_10007DEA8(v73);

  v56 = type metadata accessor for Message();
  (*(v44 + 16))(v46, &v54[v56[8]], v47);
  sub_1000076C8();
  sub_10007DE88();
  (*(v44 + 8))(v46, v47);
  v74._countAndFlagsBits = sub_10007D898(", isVIP: ", 9uLL, v58 & 1);
  v48 = v74._object;
  sub_10007DEA8(v74);

  v62 = v54[v56[9]];
  v50 = &type metadata for Bool;
  v51 = &protocol witness table for Bool;
  sub_10007DE88();
  v75._countAndFlagsBits = sub_10007D898(", isUnread: ", 0xCuLL, v58 & 1);
  v49 = v75._object;
  sub_10007DEA8(v75);

  v61 = v54[v56[10]];
  sub_10007DE88();
  v76._countAndFlagsBits = sub_10007D898(", hasURL: ", v53, v58 & 1);
  v55 = v76._object;
  sub_10007DEA8(v76);
  v7 = v54;

  sub_10001AB30(v7 + v56[15], v59);
  v8 = sub_10007CD98();
  v16 = (*(*(v8 - 8) + 48))(v59, v58) != 1;
  v10 = v16;
  sub_100017FFC(v59);
  v11 = 1;
  v60 = v10;
  v13 = &v66;
  sub_10007DE88();
  v77._countAndFlagsBits = sub_10007D898("", 0, v11 & 1);
  v12 = v77._object;
  sub_10007DEA8(v77);

  v15 = v66;
  v14 = v67;

  sub_1000099C8(v13);
  return sub_10007D888();
}

void *sub_1000318B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, char a11, char a12, char a13, char a14, uint64_t a15, char a16, char a17, const void *a18)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  *(a9 + 7) = a8;
  v22 = type metadata accessor for Message();
  v21 = v22[8];
  v18 = sub_10007CE28();
  (*(*(v18 - 8) + 32))(&a9[v21], a10);
  a9[v22[9]] = a11;
  a9[v22[10]] = a12;
  a9[v22[11]] = a13;
  a9[v22[12]] = a14;
  v19 = &a9[v22[13]];
  *v19 = a15;
  v19[8] = a16 & 1;
  a9[v22[14]] = a17;
  return sub_100017ED4(a18, &a9[v22[15]]);
}

uint64_t sub_100031A40()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return v2;
}

uint64_t sub_100031A78()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  return v2;
}

uint64_t sub_100031AB0()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  return v2;
}

uint64_t sub_100031AE8@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for Message() + 32);
  v2 = sub_10007CE28();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_100031C10()
{
  v1 = (v0 + *(type metadata accessor for Message() + 52));
  result = *v1;
  v3 = v1[1] & 1;
  return result;
}

uint64_t sub_100031CA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000195D4();
  *a1 = result;
  a1[1] = v2;
  return result;
}

id sub_100031CD4()
{
  result = sub_100031CF4();
  qword_10009B370 = result;
  return result;
}

id sub_100031CF4()
{
  sub_100033C74();
  v1 = sub_10000BA08();
  [v1 setDateStyle:1];
  [v1 setTimeStyle:0];
  [v1 setDoesRelativeDateFormatting:1];
  return v1;
}

uint64_t *sub_100031D80()
{
  if (qword_10009A630 != -1)
  {
    swift_once();
  }

  return &qword_10009B370;
}

void *sub_100031DE0()
{
  v1 = *sub_100031D80();
  _objc_retain(v1);
  return v1;
}

id sub_100031E18()
{
  result = sub_100031E38();
  qword_10009B378 = result;
  return result;
}

id sub_100031E38()
{
  sub_100033C74();
  v1 = sub_10000BA08();
  [v1 setDateStyle:0];
  [v1 setTimeStyle:1];
  return v1;
}

uint64_t *sub_100031EAC()
{
  if (qword_10009A638 != -1)
  {
    swift_once();
  }

  return &qword_10009B378;
}

void *sub_100031F0C()
{
  v1 = *sub_100031EAC();
  _objc_retain(v1);
  return v1;
}

uint64_t sub_100031F44()
{
  v37 = 0;
  v21 = 0;
  v28 = sub_10007CE28();
  v26 = *(v28 - 8);
  v27 = v28 - 8;
  v19 = (v26[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v29 = &v6 - v19;
  v35 = sub_10007CEA8();
  v32 = *(v35 - 8);
  v33 = v35 - 8;
  v20 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v35);
  v34 = &v6 - v20;
  v37 = v0;
  sub_10007CE88();
  v23 = type metadata accessor for Message();
  v1 = *(v23 + 32);
  v24 = v26[2];
  v25 = v26 + 2;
  v24(v29, v22 + v1, v28);
  v36 = sub_10007CE68();
  v30 = v26[1];
  v31 = v26 + 1;
  v30(v29, v28);
  (*(v32 + 8))(v34, v35);
  v2 = v29;
  if (v36)
  {
    v13 = *sub_100031EAC();
    _objc_retain(v13);
    v24(v2, v22 + *(v23 + 32), v28);
    isa = sub_10007CDC8().super.isa;
    v30(v29, v28);
    v14 = [v13 stringFromDate:isa];
    _objc_release(isa);
    _objc_release(v13);
    v15 = sub_10007D868();
    v16 = v3;
    _objc_release(v14);
    v17 = v15;
    v18 = v16;
  }

  else
  {
    v8 = *sub_100031D80();
    _objc_retain(v8);
    v24(v2, v22 + *(v23 + 32), v28);
    v7 = sub_10007CDC8().super.isa;
    v30(v29, v28);
    v9 = [v8 stringFromDate:v7];
    _objc_release(v7);
    _objc_release(v8);
    v10 = sub_10007D868();
    v11 = v4;
    _objc_release(v9);
    v17 = v10;
    v18 = v11;
  }

  return v17;
}

BOOL sub_10003230C(void *a1, uint64_t *a2)
{
  v81 = a1;
  v89 = a2;
  v119 = 0;
  v118 = 0;
  v74 = 0;
  v64 = sub_10007CD98();
  v65 = *(v64 - 8);
  v66 = v64 - 8;
  v67 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v64);
  v68 = &v16 - v67;
  v69 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v16 - v67);
  v70 = &v16 - v69;
  v71 = sub_1000094DC(&qword_10009B448, &qword_10007F878);
  v72 = (*(*(v71 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v71);
  v73 = &v16 - v72;
  v75 = (*(*(sub_1000094DC(&qword_10009B2F0, &qword_10007F530) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v74);
  v76 = &v16 - v75;
  v77 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v78 = &v16 - v77;
  v79 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v80 = &v16 - v79;
  v82 = sub_10007CE28();
  v83 = *(v82 - 8);
  v84 = v82 - 8;
  v85 = (v83[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v81);
  v86 = &v16 - v85;
  v87 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = __chkstk_darwin(v7);
  v88 = &v16 - v87;
  v119 = v9;
  v118 = v10;
  v90 = *v9;
  v93 = v9[1];

  v91 = *v89;
  v92 = v89[1];

  v94 = sub_10007D8A8();

  if ((v94 & 1) == 0)
  {
    return 0;
  }

  v61 = v81[2];
  v62 = v81[3];

  v63 = *(v89 + 1);

  v116[0] = v61;
  v116[1] = v62;
  v117 = v63;
  if (v62)
  {
    sub_100033C34(v116, &v97);
    if (*(&v117 + 1))
    {
      v58 = &v96;
      v96 = v97;
      v57 = &v95;
      v95 = v117;
      v59 = sub_10007D8A8();
      sub_1000099C8(v57);
      sub_1000099C8(v58);
      sub_1000099C8(v116);
      v60 = v59;
      goto LABEL_8;
    }

    sub_1000099C8(&v97);
    goto LABEL_10;
  }

  if (*(&v117 + 1))
  {
LABEL_10:
    sub_1000339D0(v116);
    v60 = 0;
    goto LABEL_8;
  }

  sub_1000099C8(v116);
  v60 = 1;
LABEL_8:
  v56 = v60;

  if (v56)
  {
    v53 = v81[4];
    v54 = v81[5];

    v55 = *(v89 + 2);

    v114[0] = v53;
    v114[1] = v54;
    v115 = v55;
    if (v54)
    {
      sub_100033C34(v114, &v100);
      if (*(&v115 + 1))
      {
        v50 = &v99;
        v99 = v100;
        v49 = &v98;
        v98 = v115;
        v51 = sub_10007D8A8();
        sub_1000099C8(v49);
        sub_1000099C8(v50);
        sub_1000099C8(v114);
        v52 = v51;
        goto LABEL_18;
      }

      sub_1000099C8(&v100);
    }

    else if (!*(&v115 + 1))
    {
      sub_1000099C8(v114);
      v52 = 1;
LABEL_18:
      v48 = v52;

      if ((v48 & 1) == 0)
      {
        return 0;
      }

      v45 = v81[6];
      v46 = v81[7];

      v47 = *(v89 + 3);

      v112[0] = v45;
      v112[1] = v46;
      v113 = v47;
      if (v46)
      {
        sub_100033C34(v112, &v103);
        if (*(&v113 + 1))
        {
          v42 = &v102;
          v102 = v103;
          v41 = &v101;
          v101 = v113;
          v43 = sub_10007D8A8();
          sub_1000099C8(v41);
          sub_1000099C8(v42);
          sub_1000099C8(v112);
          v44 = v43;
          goto LABEL_28;
        }

        sub_1000099C8(&v103);
      }

      else if (!*(&v113 + 1))
      {
        sub_1000099C8(v112);
        v44 = 1;
LABEL_28:
        v40 = v44;

        if ((v40 & 1) == 0)
        {
          return 0;
        }

        v34 = type metadata accessor for Message();
        v11 = v81 + v34[8];
        v36 = v83[2];
        v35 = v83 + 2;
        v36(v88, v11, v82);
        v36(v86, v89 + v34[8], v82);
        v39 = sub_10007CDF8();
        v38 = v83[1];
        v37 = v83 + 1;
        v38(v86, v82);
        v38(v88, v82);
        if ((v39 & 1) == 0)
        {
          return 0;
        }

        if ((*(v81 + v34[9]) & 1) != (*(v89 + v34[9]) & 1))
        {
          return 0;
        }

        if ((*(v81 + v34[10]) & 1) != (*(v89 + v34[10]) & 1))
        {
          return 0;
        }

        if ((*(v81 + v34[11]) & 1) != (*(v89 + v34[11]) & 1))
        {
          return 0;
        }

        if ((*(v81 + v34[12]) & 1) != (*(v89 + v34[12]) & 1))
        {
          return 0;
        }

        v12 = v81 + v34[13];
        v32 = *v12;
        v33 = v12[8];
        v13 = v89 + v34[13];
        v14 = *v13;
        LOBYTE(v13) = *(v13 + 8);
        v108 = v32;
        v109 = v33 & 1;
        v110 = v14;
        v111 = v13 & 1;
        if (v33)
        {
          if (v111)
          {
            v31 = 1;
LABEL_43:
            if ((v31 & 1) == 0)
            {
              return 0;
            }

            if ((*(v81 + v34[14]) & 1) != (*(v89 + v34[14]) & 1))
            {
              return 0;
            }

            sub_10001AB30(v81 + v34[15], v80);
            sub_10001AB30(v89 + v34[15], v78);
            v25 = &v73[*(v71 + 48)];
            sub_10001AB30(v80, v73);
            sub_10001AB30(v78, v25);
            v26 = *(v65 + 48);
            v27 = v65 + 48;
            if (v26(v73, 1, v64) == 1)
            {
              if (v26(v25, 1, v64) != 1)
              {
                goto LABEL_55;
              }

              sub_100017FFC(v73);
              v24 = 1;
            }

            else
            {
              sub_10001AB30(v73, v76);
              if (v26(v25, 1, v64) == 1)
              {
                (*(v65 + 8))(v76, v64);
LABEL_55:
                sub_100033A08(v73);
                v24 = 0;
                goto LABEL_54;
              }

              v20 = *(v65 + 32);
              v19 = v65 + 32;
              v20(v70, v76, v64);
              v20(v68, v25, v64);
              sub_100033B34();
              v23 = sub_10007D848();
              v22 = *(v65 + 8);
              v21 = v65 + 8;
              v22(v68, v64);
              v22(v70, v64);
              sub_100017FFC(v73);
              v24 = v23;
            }

LABEL_54:
            v18 = v24;
            sub_100017FFC(v78);
            sub_100017FFC(v80);
            return (v18 & 1) != 0;
          }
        }

        else
        {
          v106 = v32;
          v107 = v33 & 1;
          if ((v111 & 1) == 0)
          {
            v30 = &v105;
            v105 = v106;
            v28 = &v104;
            v104 = v110;
            v29 = type metadata accessor for MUIBucket();
            sub_100033BB4();
            v31 = sub_10007D848();
            goto LABEL_43;
          }
        }

        v31 = 0;
        goto LABEL_43;
      }

      sub_1000339D0(v112);
      v44 = 0;
      goto LABEL_28;
    }

    sub_1000339D0(v114);
    v52 = 0;
    goto LABEL_18;
  }

  return 0;
}

uint64_t sub_100033054(uint64_t a1, uint64_t a2, char a3)
{

  if (!a2)
  {
    return sub_10007D898("<nil>", 5uLL, 1);
  }

  if (a3)
  {
    v8 = objc_opt_self();

    v9 = sub_10007D858();

    v10 = [v8 partiallyRedactedStringForString:v9 maximumUnredactedLength:3];
    _objc_release(v9);
    v11 = sub_10007D868();
    _objc_release(v10);
    v12 = v11;
  }

  else
  {
    v4 = objc_opt_self();

    v5 = sub_10007D858();

    v6 = [v4 fullyRedactedStringForString:v5];
    _objc_release(v5);
    v7 = sub_10007D868();
    _objc_release(v6);
    v12 = v7;
  }

  return v12;
}

uint64_t type metadata accessor for Message()
{
  v1 = qword_10009B3D8;
  if (!qword_10009B3D8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_100033378(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v7 = -1;
    if (*(a1 + 8) < &_mh_execute_header)
    {
      v7 = *(a1 + 8);
    }

    return (v7 + 1);
  }

  else
  {
    v5 = sub_10007CE28();
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(a1 + *(a3 + 32), a2, v5);
    }

    else
    {
      v4 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
      if (a2 == *(*(v4 - 8) + 84))
      {
        return (*(*(v4 - 8) + 48))(a1 + *(a3 + 60), a2, v4);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return v6;
}

uint64_t sub_10003355C(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = a2 - 1;
  }

  else
  {
    v4 = sub_10007CE28();
    if (a3 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 56))(v5 + *(a4 + 32), a2, a2, v4);
    }

    else
    {
      result = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
      if (a3 == *(*(result - 8) + 84))
      {
        return (*(*(result - 8) + 56))(v5 + *(a4 + 60), a2, a2, result);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1000336F0()
{
  v5 = sub_100033894();
  if (v0 <= 0x3F)
  {
    v5 = sub_10007CE28();
    if (v1 <= 0x3F)
    {
      v5 = sub_100033928();
      if (v2 <= 0x3F)
      {
        v5 = sub_10001B0DC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v5;
}

uint64_t sub_100033894()
{
  v4 = qword_10009B3E8;
  if (!qword_10009B3E8)
  {
    v3 = sub_10007DC98();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_10009B3E8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_100033928()
{
  v4 = qword_10009B3F0;
  if (!qword_10009B3F0)
  {
    type metadata accessor for MUIBucket();
    v3 = sub_10007DC98();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_10009B3F0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1000339D0(uint64_t a1)
{
  v1 = *(a1 + 8);

  v2 = *(a1 + 24);

  return a1;
}

uint64_t sub_100033A08(uint64_t a1)
{
  v4 = sub_10007CD98();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!(v6)(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  v2 = a1 + *(sub_1000094DC(&qword_10009B448, &qword_10007F878) + 48);
  if (!v6())
  {
    (*(v5 + 8))(v2, v4);
  }

  return a1;
}

unint64_t sub_100033B34()
{
  v2 = qword_10009B450;
  if (!qword_10009B450)
  {
    sub_10007CD98();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B450);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100033BB4()
{
  v2 = qword_10009B458;
  if (!qword_10009B458)
  {
    type metadata accessor for MUIBucket();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B458);
    return WitnessTable;
  }

  return v2;
}

void *sub_100033C34(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

unint64_t sub_100033C74()
{
  v2 = qword_10009B460;
  if (!qword_10009B460)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009B460);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t *sub_100033CD8@<X0>(uint64_t a1@<X8>)
{
  v4 = a1;
  v7 = 0;
  v5 = sub_1000094DC(&qword_10009B470, &qword_10007F880);
  v3 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = (&v2 - v3);
  v7 = __chkstk_darwin(v2);
  sub_100033D98(v7, (&v2 - v3));
  sub_10007CF08();
  return sub_100033E6C(v6);
}

void *sub_100033D98(uint64_t *a1, void *a2)
{
  sub_1000094DC(&qword_10009B478, &qword_10007FC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_10007D6A8();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t *sub_100033E6C(uint64_t *a1)
{
  sub_1000094DC(&qword_10009B478, &qword_10007FC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_10007D6A8();
    (*(*(v2 - 8) + 8))(a1);
  }

  else
  {
    v1 = *a1;
  }

  return a1;
}

uint64_t *sub_100033F28(uint64_t *a1)
{
  v5 = a1;
  v3[0] = (*(*(sub_1000094DC(&qword_10009B470, &qword_10007F880) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v5);
  v4 = (v3 - v3[0]);
  sub_100033D98(v1, (v3 - v3[0]));
  sub_100033FCC(v4, v3[1]);
  return sub_100033E6C(v5);
}

uint64_t *sub_100033FCC(uint64_t *a1, uint64_t *a2)
{
  if (a2 != a1)
  {
    sub_100033E6C(a2);
    v4 = sub_1000094DC(&qword_10009B478, &qword_10007FC90);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_10007D6A8();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

uint64_t type metadata accessor for MessageListHeaderView()
{
  v1 = qword_10009B5D0;
  if (!qword_10009B5D0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

id sub_100034164()
{
  result = sub_100034184();
  qword_10009B468 = result;
  return result;
}

id sub_100034184()
{
  sub_10003F8C0();
  v1 = sub_10000BA08();
  [v1 setNumberStyle:1];
  [v1 setUsesSignificantDigits:0];
  return v1;
}

uint64_t *sub_1000341F8()
{
  if (qword_10009A640 != -1)
  {
    swift_once();
  }

  return &qword_10009B468;
}

void *sub_100034258()
{
  v1 = *sub_1000341F8();
  _objc_retain(v1);
  return v1;
}

uint64_t sub_100034290()
{
  v2 = *(v0 + *(type metadata accessor for MessageListHeaderView() + 24));

  return v2;
}

uint64_t sub_1000342C8()
{
  v36 = 0;
  v28 = 0;
  v25 = (*(*(type metadata accessor for Mailbox() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(0);
  v26 = (&v16 - v25);
  v27 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v34 = (&v16 - v27);
  v29 = (*(*(type metadata accessor for Snapshot() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v28);
  v30 = (&v16 - v29);
  v31 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v33 = (&v16 - v31);
  v36 = v0;
  v32 = type metadata accessor for MessageListHeaderView();
  sub_10001E2CC((v0 + *(v32 + 20)), v33);
  sub_10000DFBC(v33, v34);
  sub_10001F234(v33);
  v5 = v34[3];
  v35 = v34[4];
  sub_100014D28(v5, v35);
  sub_100014DA0(v34);
  if (v35)
  {
    switch(v35)
    {
      case 1uLL:
        v9 = v26;
        sub_10001E2CC((v24 + *(v32 + 20)), v30);
        sub_10000DFBC(v30, v9);
        sub_10001F234(v30);
        v16 = sub_10001A44C();
        sub_100014DA0(v26);
        if (v16)
        {
          v21 = sub_10007D898("person.2", 8uLL, 1);
        }

        else
        {
          v21 = sub_10007D898("tray", 4uLL, 1);
        }

        v22 = v10;
        break;
      case 2uLL:
        v21 = sub_10007D898("flag", 4uLL, 1);
        v22 = v11;
        break;
      case 3uLL:
        v21 = sub_10007D898("envelope.badge", 0xEuLL, 1);
        v22 = v12;
        break;
      case 4uLL:
        v21 = sub_10007D898("star.fill", 9uLL, 1);
        v22 = v13;
        break;
      case 5uLL:
        v21 = sub_10007D898("calendar", 8uLL, 1);
        v22 = v14;
        break;
      default:
        v23 = v35;
        v18 = v35;
        v19 = sub_10007D898("folder", 6uLL, 1);
        v20 = v6;

        v21 = v19;
        v22 = v20;
        break;
    }
  }

  else
  {
    v7 = v26;
    sub_10001E2CC((v24 + *(v32 + 20)), v30);
    sub_10000DFBC(v30, v7);
    sub_10001F234(v30);
    v17 = sub_10001A44C();
    sub_100014DA0(v26);
    if (v17)
    {
      v21 = sub_10007D898("person.2", 8uLL, 1);
    }

    else
    {
      v21 = sub_10007D898("tray.2", 6uLL, 1);
    }

    v22 = v8;
  }

  return v21;
}

uint64_t sub_1000346FC()
{
  v12 = 0;
  v8 = 0;
  v4 = (*(*(type metadata accessor for Mailbox() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v7 = (&v3 - v4);
  v5 = (*(*(type metadata accessor for Snapshot() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v6 = (&v3 - v5);
  v12 = v0;
  v1 = type metadata accessor for MessageListHeaderView();
  sub_10001E2CC((v0 + *(v1 + 20)), v6);
  sub_10000DFBC(v6, v7);
  sub_10001F234(v6);
  v10 = v7[3];
  v9 = v7[4];
  sub_100014D28(v10, v9);
  sub_100014DA0(v7);
  v11 = sub_1000191C0(v10, v9, v8, 4uLL);
  sub_100014D64(v10, v9);
  if (v11)
  {
    return sub_10007D478();
  }

  else
  {
    return sub_10007D438();
  }
}

uint64_t sub_100034874@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v24 = sub_1000094DC(&qword_10009B480, &qword_10007F888);
  v25 = (*(*(v24 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v24);
  v26 = v14 - v25;
  v27 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14 - v25);
  v28 = v14 - v27;
  v29 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14 - v27);
  v30 = v14 - v29;
  v66 = v14 - v29;
  v31 = sub_1000094DC(&qword_10009B488, &qword_10007F890);
  v32 = *(v31 - 8);
  v33 = v31 - 8;
  v34 = (v32[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v31);
  v35 = v14 - v34;
  v36 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14 - v34);
  v37 = v14 - v36;
  v38 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14 - v36);
  v39 = v14 - v38;
  v65 = v14 - v38;
  v6 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
  v40 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v59 = v14 - v40;
  v47 = 0;
  v54 = type metadata accessor for Mailbox();
  v41 = (*(*(v54 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v47);
  v55 = (v14 - v41);
  v42 = (*(*(type metadata accessor for Snapshot() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v47);
  v53 = (v14 - v42);
  v58 = sub_10007CD98();
  v56 = *(v58 - 8);
  v57 = v58 - 8;
  v43 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v58);
  v44 = v14 - v43;
  v45 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14 - v43);
  v46 = v14 - v45;
  v64 = v14 - v45;
  v48 = sub_1000094DC(&qword_10009B490, &qword_10007F898);
  v49 = (*(*(v48 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v47);
  v50 = v14 - v49;
  v51 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v52 = v14 - v51;
  v63 = v14 - v51;
  v62 = v1;
  v10 = type metadata accessor for MessageListHeaderView();
  sub_10001E2CC((v1 + *(v10 + 20)), v53);
  sub_10000DFBC(v53, v55);
  sub_10001F234(v53);
  sub_10001AB30(v55 + *(v54 + 28), v59);
  sub_100014DA0(v55);
  if ((*(v56 + 48))(v59, 1, v58) == 1)
  {
    sub_100017FFC(v59);
    sub_100035360(v28);
    v14[0] = sub_10003554C();
    sub_1000354E8(v28, v24, v30);
    sub_1000355D4(v28);
    v61 = v28;
    sub_100035B28(v30, v26);
    sub_1000354E8(v26, v24, v28);
    sub_1000355D4(v26);
    sub_100035B28(v28, v26);
    v12 = sub_1000366E8();
    sub_1000365F0(v26, v31, v24, v12, v14[0], v50);
    sub_1000355D4(v26);
    sub_100036770(v50, v52);
    sub_1000355D4(v28);
    sub_1000355D4(v30);
  }

  else
  {
    (*(v56 + 32))(v46, v59, v58);
    (*(v56 + 16))(v44, v46, v58);
    v16 = sub_1000351FC(v23);
    v18 = v11;

    v17 = sub_10003554C();
    sub_10007D288();

    v19 = sub_1000366E8();
    sub_1000354E8(v37, v31, v39);
    v20 = v32[1];
    v21 = v32 + 1;
    v20(v37, v31);
    v60 = v37;
    v15 = v32[2];
    v14[1] = (v32 + 2);
    v15(v35, v39, v31);
    sub_1000354E8(v35, v31, v37);
    v20(v35, v31);
    v15(v35, v37, v31);
    sub_1000364F8(v35, v31, v24, v19, v17, v50);
    v20(v35, v31);
    sub_100036770(v50, v52);
    v20(v37, v31);
    v20(v39, v31);
    (*(v56 + 8))(v46, v58);
  }

  sub_100036FCC(v52, v50);
  sub_1000379B0();
  sub_1000354E8(v50, v48, v22);
  sub_100037A58(v50);
  return sub_100037A58(v52);
}

uint64_t (*sub_1000351FC(uint64_t a1))@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  v10 = sub_10003F84C;
  v11 = 0;
  v3 = *(type metadata accessor for MessageListHeaderView() - 8);
  v5 = v3;
  v6 = *(v3 + 64);
  v4 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = &v2 - v4;
  v11 = __chkstk_darwin(v2);
  sub_10003EF94(v11, (&v2 - v4));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_10003F5B4(v8, (v9 + v7));
  return v10;
}

uint64_t sub_100035360@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v7 = sub_100039F18;
  v19 = 0;
  v18 = 0;
  v12 = sub_1000094DC(&qword_10009B480, &qword_10007F888);
  v5 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v14 = &v4 - v5;
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v4 - v5);
  v15 = &v4 - v6;
  v19 = &v4 - v6;
  v18 = v1;
  v10 = sub_10007D0F8();
  v8 = &v16;
  v17 = v1;
  v9 = sub_1000094DC(&qword_10009B530, &qword_10007F920);
  sub_100039F20();
  sub_10007D538();
  v13 = sub_10003554C();
  sub_1000354E8(v14, v12, v15);
  sub_1000355D4(v14);
  sub_100035B28(v15, v14);
  sub_1000354E8(v14, v12, v11);
  sub_1000355D4(v14);
  return sub_1000355D4(v15);
}

unint64_t sub_10003554C()
{
  v2 = qword_10009B498;
  if (!qword_10009B498)
  {
    sub_100009860(&qword_10009B480, &qword_10007F888);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B498);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1000355D4(uint64_t a1)
{
  v31 = *(sub_1000094DC(&qword_10009B4A0, &qword_10007F8A0) + 44);
  v1 = *(a1 + v31);

  v32 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
  v34 = (a1 + v31 + *(v32 + 36));
  v2 = *v34;

  v33 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
  v35 = *(v33 + 28);
  v36 = sub_10007D4D8();
  v37 = *(*(v36 - 8) + 8);
  v37(v34 + v35);
  v38 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
  v39 = (a1 + v31 + *(v38 + 36));
  v3 = *v39;

  v4 = v39[1];

  v40 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
  v41 = (a1 + v31 + *(v40 + 36));
  v5 = *v41;

  v6 = v41[1];

  v42 = *(sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8) + 36);
  v44 = (a1 + v31 + v42);
  v7 = *v44;

  v43 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
  v45 = *(v43 + 28);
  v46 = sub_10007D168();
  v47 = *(v46 - 8);
  v48 = *(v47 + 48);
  if (!(v48)(v44 + v45, 1))
  {
    (*(v47 + 8))(a1 + v31 + v42 + v45, v46);
  }

  v27 = sub_1000094DC(&qword_10009B4D8, &qword_10007F8D8);
  v26 = a1 + v31 + v27[12];
  v8 = sub_1000094DC(&qword_10009B4E0, &qword_10007F8E0);
  (*(*(v8 - 8) + 8))(v26);
  v28 = (a1 + v31 + v27[20]);
  v29 = sub_1000094DC(&qword_10009B4E8, &qword_10007F8E8);
  if (!(*(*(v29 - 8) + 48))(v28, 1))
  {
    v9 = *v28;

    v21 = (v28 + *(v32 + 36));
    v10 = *v21;

    (v37)(v21 + *(v33 + 28), v36);
    v22 = (v28 + *(v38 + 36));
    v11 = *v22;

    v12 = v22[1];

    v23 = (v28 + *(v40 + 36));
    v13 = *v23;

    v14 = v23[1];

    v15 = *(v28 + *(sub_1000094DC(&qword_10009B4F0, &qword_10007F8F0) + 36));

    v24 = (v28 + *(v29 + 36));
    v16 = *v24;

    v25 = v24 + *(v43 + 28);
    if (!v48())
    {
      (*(v47 + 8))(v25, v46);
    }
  }

  v18 = a1 + v31 + v27[24];
  v19 = sub_1000094DC(&qword_10009B4F8, &qword_10007F8F8);
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v18, 1))
  {
    (*(v20 + 8))(v18, v19);
  }

  return a1;
}

uint64_t sub_100035B28(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v42 = *(sub_1000094DC(&qword_10009B4A0, &qword_10007F8A0) + 44);
  v43 = *(a1 + v42);

  v63 = a2 + v42;
  *(a2 + v42) = v43;
  v44 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
  v45 = *(v44 + 36);
  v49 = (a1 + v42 + v45);
  v46 = *v49;

  *(v63 + v45) = v46;
  v47 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
  v48 = *(v47 + 28);
  v50 = sub_10007D4D8();
  v51 = *(*(v50 - 8) + 16);
  v51(a2 + v42 + v45 + v48, v49 + v48);
  v52 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
  v53 = *(v52 + 36);
  v55 = (a1 + v42 + v53);
  v54 = *v55;

  *(v63 + v53) = v54;
  v56 = v55[1];

  *(a2 + v42 + v53 + 8) = v56;
  v57 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
  v58 = *(v57 + 36);
  v60 = (a1 + v42 + v58);
  v59 = *v60;

  *(v63 + v58) = v59;
  v61 = v60[1];

  *(a2 + v42 + v58 + 8) = v61;
  v62 = *(sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8) + 36);
  v67 = (a1 + v42 + v62);
  v64 = *v67;

  *(v63 + v62) = v64;
  v65 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
  v66 = *(v65 + 28);
  v68 = sub_10007D168();
  v69 = *(v68 - 8);
  v70 = *(v69 + 48);
  if ((v70)(v67 + v66, 1))
  {
    v2 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
    memcpy((a2 + v42 + v62 + v66), (a1 + v42 + v62 + v66), *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v69 + 16))();
    (*(v69 + 56))(a2 + v42 + v62 + v66, 0, 1, v68);
  }

  v35 = sub_1000094DC(&qword_10009B4D8, &qword_10007F8D8);
  v34 = a2 + v42 + v35[12];
  v33 = a1 + v42 + v35[12];
  v3 = sub_1000094DC(&qword_10009B4E0, &qword_10007F8E0);
  (*(*(v3 - 8) + 16))(v34, v33);
  v4 = a2 + v42 + v35[16];
  v5 = a1 + v42 + v35[16];
  *v4 = *v5;
  *(v4 + 8) = *(v5 + 8);
  v36 = (a2 + v42 + v35[20]);
  v37 = (a1 + v42 + v35[20]);
  v38 = sub_1000094DC(&qword_10009B4E8, &qword_10007F8E8);
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v37, 1))
  {
    v7 = sub_1000094DC(&qword_10009B508, &qword_10007F908);
    memcpy(v36, v37, *(*(v7 - 8) + 64));
  }

  else
  {
    v14 = *v37;

    *v36 = v14;
    v16 = (v36 + *(v44 + 36));
    v17 = (v37 + *(v44 + 36));
    v15 = *v17;

    *v16 = v15;
    (v51)(v16 + *(v47 + 28), v17 + *(v47 + 28), v50);
    v20 = (v36 + *(v52 + 36));
    v19 = (v37 + *(v52 + 36));
    v18 = *v19;

    *v20 = v18;
    v21 = v19[1];

    v20[1] = v21;
    v24 = (v36 + *(v57 + 36));
    v23 = (v37 + *(v57 + 36));
    v22 = *v23;

    *v24 = v22;
    v25 = v23[1];

    v24[1] = v25;
    v26 = *(sub_1000094DC(&qword_10009B4F0, &qword_10007F8F0) + 36);
    v27 = *(v37 + v26);

    *(v36 + v26) = v27;
    v29 = (v36 + *(v38 + 36));
    v30 = (v37 + *(v38 + 36));
    v28 = *v30;

    *v29 = v28;
    __dst = v29 + *(v65 + 28);
    __src = v30 + *(v65 + 28);
    if (v70())
    {
      v6 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
      memcpy(__dst, __src, *(*(v6 - 8) + 64));
    }

    else
    {
      (*(v69 + 16))(__dst, __src, v68);
      (*(v69 + 56))(__dst, 0, 1, v68);
    }

    (*(v39 + 56))(v36, 0, 1, v38);
  }

  v10 = (a2 + v42 + v35[24]);
  v11 = (a1 + v42 + v35[24]);
  v12 = sub_1000094DC(&qword_10009B4F8, &qword_10007F8F8);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1))
  {
    v8 = sub_1000094DC(&qword_10009B510, &qword_10007F910);
    memcpy(v10, v11, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v13 + 16))(v10, v11, v12);
    (*(v13 + 56))(v10, 0, 1, v12);
  }

  return a2;
}

uint64_t sub_1000364F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a6;
  v8[1] = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v18 = a2;
  v17 = a3;
  v10 = sub_10007D1C8();
  v9 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v12 = v8 - v9;
  (*(*(v6 - 8) + 16))();
  swift_storeEnumTagMultiPayload();
  return sub_10007D1D8();
}

uint64_t sub_1000365F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a6;
  v8[1] = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v18 = a2;
  v17 = a3;
  v10 = sub_10007D1C8();
  v9 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v12 = v8 - v9;
  (*(*(v6 - 8) + 16))();
  swift_storeEnumTagMultiPayload();
  return sub_10007D1D8();
}

unint64_t sub_1000366E8()
{
  v2 = qword_10009B518;
  if (!qword_10009B518)
  {
    sub_100009860(&qword_10009B488, &qword_10007F890);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B518);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100036770(uint64_t a1, uint64_t a2)
{
  sub_1000094DC(&qword_10009B520, &qword_10007F918);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v3 = sub_1000094DC(&qword_10009B4A0, &qword_10007F8A0);
    v39 = (a2 + *(v3 + 44));
    v40 = (a1 + *(v3 + 44));
    *v39 = *v40;
    v29 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
    v30 = (v39 + *(v29 + 36));
    v31 = (v40 + *(v29 + 36));
    *v30 = *v31;
    v32 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
    v34 = v30 + *(v32 + 28);
    v33 = v31 + *(v32 + 28);
    v35 = sub_10007D4D8();
    v36 = *(*(v35 - 8) + 32);
    v36(v34, v33);
    v37 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
    *(v39 + *(v37 + 36)) = *(v40 + *(v37 + 36));
    v38 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
    *(v39 + *(v38 + 36)) = *(v40 + *(v38 + 36));
    v4 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
    v41 = (v39 + *(v4 + 36));
    v42 = (v40 + *(v4 + 36));
    *v41 = *v42;
    v43 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
    v44 = v41 + *(v43 + 28);
    v45 = v42 + *(v43 + 28);
    v46 = sub_10007D168();
    v47 = *(v46 - 8);
    v48 = *(v47 + 48);
    if ((v48)(v45, 1))
    {
      v5 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
      memcpy(v44, v45, *(*(v5 - 8) + 64));
    }

    else
    {
      (*(v47 + 32))(v44, v45, v46);
      (*(v47 + 56))(v44, 0, 1, v46);
    }

    v24 = sub_1000094DC(&qword_10009B4D8, &qword_10007F8D8);
    v23 = v39 + v24[12];
    v22 = v40 + v24[12];
    v6 = sub_1000094DC(&qword_10009B4E0, &qword_10007F8E0);
    (*(*(v6 - 8) + 32))(v23, v22);
    v7 = v39 + v24[16];
    v8 = v40 + v24[16];
    *v7 = *v8;
    v7[8] = v8[8];
    v25 = (v39 + v24[20]);
    v26 = (v40 + v24[20]);
    v27 = sub_1000094DC(&qword_10009B4E8, &qword_10007F8E8);
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v26, 1))
    {
      v13 = sub_1000094DC(&qword_10009B508, &qword_10007F908);
      memcpy(v25, v26, *(*(v13 - 8) + 64));
    }

    else
    {
      *v25 = *v26;
      v9 = *(v29 + 36);
      *(v25 + v9) = *(v26 + v9);
      (v36)(v25 + v9 + *(v32 + 28), v26 + v9 + *(v32 + 28), v35);
      *(v25 + *(v37 + 36)) = *(v26 + *(v37 + 36));
      *(v25 + *(v38 + 36)) = *(v26 + *(v38 + 36));
      v10 = sub_1000094DC(&qword_10009B4F0, &qword_10007F8F0);
      *(v25 + *(v10 + 36)) = *(v26 + *(v10 + 36));
      v11 = *(v27 + 36);
      *(v25 + v11) = *(v26 + v11);
      __dst = v25 + v11 + *(v43 + 28);
      __src = v26 + v11 + *(v43 + 28);
      if (v48())
      {
        v12 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
        memcpy(__dst, __src, *(*(v12 - 8) + 64));
      }

      else
      {
        (*(v47 + 32))(__dst, __src, v46);
        (*(v47 + 56))(__dst, 0, 1, v46);
      }

      (*(v28 + 56))(v25, 0, 1, v27);
    }

    v16 = v39 + v24[24];
    v17 = v40 + v24[24];
    v18 = sub_1000094DC(&qword_10009B4F8, &qword_10007F8F8);
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v17, 1))
    {
      v14 = sub_1000094DC(&qword_10009B510, &qword_10007F910);
      memcpy(v16, v17, *(*(v14 - 8) + 64));
    }

    else
    {
      (*(v19 + 32))(v16, v17, v18);
      (*(v19 + 56))(v16, 0, 1, v18);
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v2 = sub_1000094DC(&qword_10009B488, &qword_10007F890);
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_100036FCC(uint64_t a1, uint64_t a2)
{
  sub_1000094DC(&qword_10009B520, &qword_10007F918);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v3 = sub_1000094DC(&qword_10009B4A0, &qword_10007F8A0);
    v63 = (a2 + *(v3 + 44));
    v64 = (a1 + *(v3 + 44));
    v43 = *v64;

    *v63 = v43;
    v44 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
    v46 = (v63 + *(v44 + 36));
    v47 = (v64 + *(v44 + 36));
    v45 = *v47;

    *v46 = v45;
    v48 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
    v50 = v46 + *(v48 + 28);
    v49 = v47 + *(v48 + 28);
    v51 = sub_10007D4D8();
    v52 = *(*(v51 - 8) + 16);
    v52(v50, v49);
    v53 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
    v56 = (v63 + *(v53 + 36));
    v55 = (v64 + *(v53 + 36));
    v54 = *v55;

    *v56 = v54;
    v57 = v55[1];

    v56[1] = v57;
    v58 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
    v61 = (v63 + *(v58 + 36));
    v60 = (v64 + *(v58 + 36));
    v59 = *v60;

    *v61 = v59;
    v62 = v60[1];

    v61[1] = v62;
    v4 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
    v66 = (v63 + *(v4 + 36));
    v67 = (v64 + *(v4 + 36));
    v65 = *v67;

    *v66 = v65;
    v68 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
    v69 = v66 + *(v68 + 28);
    v70 = v67 + *(v68 + 28);
    v71 = sub_10007D168();
    v72 = *(v71 - 8);
    v73 = *(v72 + 48);
    if ((v73)(v70, 1))
    {
      v5 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
      memcpy(v69, v70, *(*(v5 - 8) + 64));
    }

    else
    {
      (*(v72 + 16))(v69, v70, v71);
      (*(v72 + 56))(v69, 0, 1, v71);
    }

    v38 = sub_1000094DC(&qword_10009B4D8, &qword_10007F8D8);
    v37 = v63 + v38[12];
    v36 = v64 + v38[12];
    v6 = sub_1000094DC(&qword_10009B4E0, &qword_10007F8E0);
    (*(*(v6 - 8) + 16))(v37, v36);
    v7 = v63 + v38[16];
    v8 = v64 + v38[16];
    *v7 = *v8;
    v7[8] = v8[8];
    v39 = (v63 + v38[20]);
    v40 = (v64 + v38[20]);
    v41 = sub_1000094DC(&qword_10009B4E8, &qword_10007F8E8);
    v42 = *(v41 - 8);
    if ((*(v42 + 48))(v40, 1))
    {
      v10 = sub_1000094DC(&qword_10009B508, &qword_10007F908);
      memcpy(v39, v40, *(*(v10 - 8) + 64));
    }

    else
    {
      v17 = *v40;

      *v39 = v17;
      v19 = (v39 + *(v44 + 36));
      v20 = (v40 + *(v44 + 36));
      v18 = *v20;

      *v19 = v18;
      (v52)(v19 + *(v48 + 28), v20 + *(v48 + 28), v51);
      v23 = (v39 + *(v53 + 36));
      v22 = (v40 + *(v53 + 36));
      v21 = *v22;

      *v23 = v21;
      v24 = v22[1];

      v23[1] = v24;
      v27 = (v39 + *(v58 + 36));
      v26 = (v40 + *(v58 + 36));
      v25 = *v26;

      *v27 = v25;
      v28 = v26[1];

      v27[1] = v28;
      v29 = *(sub_1000094DC(&qword_10009B4F0, &qword_10007F8F0) + 36);
      v30 = *(v40 + v29);

      *(v39 + v29) = v30;
      v32 = (v39 + *(v41 + 36));
      v33 = (v40 + *(v41 + 36));
      v31 = *v33;

      *v32 = v31;
      __dst = v32 + *(v68 + 28);
      __src = v33 + *(v68 + 28);
      if (v73())
      {
        v9 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
        memcpy(__dst, __src, *(*(v9 - 8) + 64));
      }

      else
      {
        (*(v72 + 16))(__dst, __src, v71);
        (*(v72 + 56))(__dst, 0, 1, v71);
      }

      (*(v42 + 56))(v39, 0, 1, v41);
    }

    v13 = v63 + v38[24];
    v14 = v64 + v38[24];
    v15 = sub_1000094DC(&qword_10009B4F8, &qword_10007F8F8);
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v14, 1))
    {
      v11 = sub_1000094DC(&qword_10009B510, &qword_10007F910);
      memcpy(v13, v14, *(*(v11 - 8) + 64));
    }

    else
    {
      (*(v16 + 16))(v13, v14, v15);
      (*(v16 + 56))(v13, 0, 1, v15);
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v2 = sub_1000094DC(&qword_10009B488, &qword_10007F890);
    (*(*(v2 - 8) + 16))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

unint64_t sub_1000379B0()
{
  v2 = qword_10009B528;
  if (!qword_10009B528)
  {
    sub_100009860(&qword_10009B490, &qword_10007F898);
    sub_1000366E8();
    sub_10003554C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B528);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100037A58(uint64_t a1)
{
  sub_1000094DC(&qword_10009B520, &qword_10007F918);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = (a1 + *(sub_1000094DC(&qword_10009B4A0, &qword_10007F8A0) + 44));
    v2 = *v41;

    v31 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
    v32 = (v41 + *(v31 + 36));
    v3 = *v32;

    v33 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
    v34 = v32 + *(v33 + 28);
    v35 = sub_10007D4D8();
    v36 = *(*(v35 - 8) + 8);
    v36(v34);
    v37 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
    v38 = (v41 + *(v37 + 36));
    v4 = *v38;

    v5 = v38[1];

    v39 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
    v40 = (v41 + *(v39 + 36));
    v6 = *v40;

    v7 = v40[1];

    v42 = (v41 + *(sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8) + 36));
    v8 = *v42;

    v43 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
    v44 = v42 + *(v43 + 28);
    v45 = sub_10007D168();
    v46 = *(v45 - 8);
    v47 = *(v46 + 48);
    if (!(v47)(v44, 1))
    {
      (*(v46 + 8))(v44, v45);
    }

    v28 = sub_1000094DC(&qword_10009B4D8, &qword_10007F8D8);
    v27 = v41 + v28[12];
    v9 = sub_1000094DC(&qword_10009B4E0, &qword_10007F8E0);
    (*(*(v9 - 8) + 8))(v27);
    v29 = (v41 + v28[20]);
    v30 = sub_1000094DC(&qword_10009B4E8, &qword_10007F8E8);
    if (!(*(*(v30 - 8) + 48))(v29, 1))
    {
      v10 = *v29;

      v22 = (v29 + *(v31 + 36));
      v11 = *v22;

      (v36)(v22 + *(v33 + 28), v35);
      v23 = (v29 + *(v37 + 36));
      v12 = *v23;

      v13 = v23[1];

      v24 = (v29 + *(v39 + 36));
      v14 = *v24;

      v15 = v24[1];

      v16 = *(v29 + *(sub_1000094DC(&qword_10009B4F0, &qword_10007F8F0) + 36));

      v25 = (v29 + *(v30 + 36));
      v17 = *v25;

      v26 = v25 + *(v43 + 28);
      if (!v47())
      {
        (*(v46 + 8))(v26, v45);
      }
    }

    v19 = v41 + v28[24];
    v20 = sub_1000094DC(&qword_10009B4F8, &qword_10007F8F8);
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v19, 1))
    {
      (*(v21 + 8))(v19, v20);
    }
  }

  else
  {
    v1 = sub_1000094DC(&qword_10009B488, &qword_10007F890);
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

char *sub_100037FEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a2;
  v250 = a1;
  v135 = &opaque type descriptor for <<opaque return type of View.widgetAccentable(_:)>>;
  v334 = 0;
  v333 = 0;
  v332 = 0;
  v331 = 0;
  v330 = 0;
  v329 = 0;
  v328 = 0;
  v327 = 0;
  v300 = 0;
  v301 = 0;
  v292 = 0;
  v290 = 0;
  v291 = 0;
  v262 = 0;
  v232 = 0;
  v136 = sub_10007D068();
  v137 = *(v136 - 8);
  v138 = v136 - 8;
  v139 = (*(v137 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v136);
  v140 = v55 - v139;
  v141 = sub_1000094DC(&qword_10009B630, &qword_10007FB78);
  v142 = (*(*(v141 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v141);
  v143 = v55 - v142;
  v144 = sub_1000094DC(&qword_10009B4F8, &qword_10007F8F8);
  v145 = *(v144 - 8);
  v146 = v144 - 8;
  v147 = (*(v145 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v144);
  v148 = v55 - v147;
  v149 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v55 - v147);
  v150 = v55 - v149;
  v151 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v55 - v149);
  v152 = v55 - v151;
  v334 = v55 - v151;
  v153 = sub_1000094DC(&qword_10009B510, &qword_10007F910);
  v154 = (*(*(v153 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v232);
  v155 = v55 - v154;
  v156 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v5);
  v157 = v55 - v156;
  v158 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v159 = v55 - v158;
  v333 = v55 - v158;
  v160 = sub_10007CFE8();
  v161 = *(v160 - 8);
  v162 = v160 - 8;
  v163 = (*(v161 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v160);
  v164 = v55 - v163;
  v165 = sub_1000094DC(&qword_10009B4F0, &qword_10007F8F0);
  v166 = (*(*(v165 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v165);
  v167 = (v55 - v166);
  v168 = sub_1000094DC(&qword_10009B4E8, &qword_10007F8E8);
  v169 = *(v168 - 8);
  v170 = v168 - 8;
  v171 = (*(v169 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v168);
  v172 = v55 - v171;
  v173 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = __chkstk_darwin(v55 - v171);
  v174 = v55 - v173;
  v332 = v55 - v173;
  v175 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v176 = v55 - v175;
  v177 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v55 - v175);
  v178 = v55 - v177;
  v331 = v55 - v177;
  v179 = sub_1000094DC(&qword_10009B508, &qword_10007F908);
  v180 = (*(*(v179 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = __chkstk_darwin(v232);
  v181 = v55 - v180;
  v182 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = __chkstk_darwin(v13);
  v183 = (v55 - v182);
  v184 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v15);
  v185 = (v55 - v184);
  v330 = v55 - v184;
  v186 = (*(*(type metadata accessor for Mailbox() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v232);
  v187 = (v55 - v186);
  v188 = type metadata accessor for Snapshot();
  v189 = (*(*(v188 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = __chkstk_darwin(v188);
  v190 = (v55 - v189);
  v191 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17);
  v192 = (v55 - v191);
  v193 = sub_1000094DC(&qword_10009B4E0, &qword_10007F8E0);
  v194 = *(v193 - 8);
  v195 = v193 - 8;
  v196 = (*(v194 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = __chkstk_darwin(v232);
  v197 = v55 - v196;
  v198 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v199 = v55 - v198;
  v329 = v55 - v198;
  v257 = sub_10007D6A8();
  v253 = *(v257 - 8);
  v254 = v257 - 8;
  v200 = (*(v253 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v257);
  v255 = v55 - v200;
  v201 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v55 - v200);
  v256 = v55 - v201;
  v202 = (*(*(sub_1000094DC(&qword_10009B500, &qword_10007F900) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = __chkstk_darwin(v232);
  v203 = v55 - v202;
  v204 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v205 = v55 - v204;
  v238 = sub_10007D248();
  v236 = *(v238 - 8);
  v237 = v238 - 8;
  v206 = (v236[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v232);
  v239 = v55 - v206;
  v228 = sub_10007D4D8();
  v225 = *(v228 - 8);
  v226 = v228 - 8;
  v207 = (v225[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v228);
  v227 = v55 - v207;
  v243 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
  v208 = (*(*(v243 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v243);
  v246 = (v55 - v208);
  v248 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
  v209 = (*(*(v248 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v248);
  v210 = (v55 - v209);
  v211 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v55 - v209);
  v252 = (v55 - v211);
  v212 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
  v213 = (*(*(v212 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v212);
  v214 = (v55 - v213);
  v215 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v55 - v213);
  v247 = (v55 - v215);
  v216 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
  v217 = (*(*(v216 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v216);
  v218 = v55 - v217;
  v219 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v55 - v217);
  v220 = v55 - v219;
  v221 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v55 - v219);
  v222 = v55 - v221;
  v328 = v55 - v221;
  v327 = a1;
  sub_1000342C8();
  v28 = sub_10007D4C8();
  v231 = &v326;
  v326 = v28;
  v223 = v225[13];
  v224 = v225 + 13;
  v223(v227, enum case for Image.Scale.medium(_:), v228);
  sub_10007D318();
  v229 = v225[1];
  v230 = v225 + 1;
  v229(v227, v228);
  sub_10001DFF8(v231);
  v233 = type metadata accessor for MessageListHeaderView();
  v242 = *(v250 + *(v233 + 24));

  v234 = v236[13];
  v235 = v236 + 13;
  v234(v239, enum case for Font.Leading.tight(_:), v238);
  v245 = sub_10007D258();
  v240 = v236[1];
  v241 = v236 + 1;
  v240(v239, v238);

  v244 = sub_10003C198();
  sub_10007D3D8();

  sub_10003C2C4(v246);
  v251 = sub_1000346FC();
  v249 = sub_10003C37C();
  sub_10007D388();

  sub_10003C4AC(v252);
  sub_100033CD8(v256);
  sub_10007D698();
  v260 = sub_10007D688();
  v259 = *(v253 + 8);
  v258 = v253 + 8;
  v259(v255, v257);
  v259(v256, v257);
  if (v260)
  {
    sub_10007D158();
  }

  else
  {
    sub_10007D148();
  }

  v29 = sub_10007D168();
  (*(*(v29 - 8) + 56))(v205, 0, 1);
  v108 = sub_10003C5A0();
  sub_10007D3B8();
  v30 = v187;
  sub_10003C6D0(v205);
  sub_10003C778(v247);
  v109 = sub_10003C8A8();
  sub_1000354E8(v220, v216, v222);
  sub_10003C9D8(v220);
  sub_10001E2CC((v250 + *(v233 + 20)), v192);
  sub_10000DFBC(v192, v30);
  sub_10001F234(v192);
  v111 = sub_100019CD8();
  v110 = v31;
  sub_100014DA0(v187);
  v112 = v318;
  v318[0] = v111;
  v318[1] = v110;
  v113 = sub_10003CBFC();
  v314 = sub_10007D2C8();
  v315 = v32;
  v316 = v33;
  v317 = v34;
  v114 = v311;
  v311[0] = v314;
  v311[1] = v32;
  v129 = 1;
  v312 = v33 & 1;
  v313 = v34;
  v125 = 1;
  sub_10007D428();
  sub_10003CC74(v114);
  v118 = v305;
  v305[0] = v318[2];
  v305[1] = v318[3];
  v306 = v319 & 1 & v129;
  v307 = v320;
  v308 = v321;
  v309 = v322;
  v310 = v323 & 1 & v129;
  v115 = *(v250 + *(v233 + 24));

  sub_10007D228();
  v117 = sub_10007D238();

  v116 = sub_1000094DC(&qword_10009B690, &unk_10007FB90);
  sub_10003CD00();
  v119 = &v324;
  sub_10007D3D8();

  sub_10003CE2C(v118);
  v120 = __dst;
  v121 = 72;
  memcpy(__dst, v119, sizeof(__dst));
  v122 = v304;
  memcpy(v304, __dst, sizeof(v304));
  v123 = sub_1000094DC(&qword_10009B6B0, &unk_10007FBA0);
  v124 = sub_10003CE80();
  sub_10003F924();
  sub_10007D2D8();
  sub_10003CF28(v122);
  v302 = v123;
  v303 = v124;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000354E8(v197, v193, v199);
  v127 = *(v194 + 8);
  v128 = v194 + 8;
  v127(v197, v193);
  v298 = sub_10007D548();
  v299 = v35 & 1 & v129;
  sub_1000354E8(&v298, &type metadata for Spacer, &v300);
  sub_10001E2CC((v250 + *(v233 + 20)), v192);
  v36 = v192 + *(v188 + 20);
  v132 = *v36;
  v130 = *(v36 + 1);
  v131 = *(v36 + 8);
  sub_10002F4F8(v132);
  sub_10001F234(v192);
  v133 = sub_100074974(v132, v130, v131);
  sub_10003CF94(v132);
  if (v133)
  {
    sub_10007D898("moon.fill", 9uLL, 1);
    v37 = sub_10007D4C8();
    v104 = &v261;
    v261 = v37;
    v223(v227, enum case for Image.Scale.medium(_:), v228);
    sub_10007D318();
    v229(v227, v228);
    sub_10001DFF8(v104);
    v105 = *(v250 + *(v233 + 24));

    v234(v239, enum case for Font.Leading.tight(_:), v238);
    v106 = sub_10007D258();
    v240(v239, v238);

    sub_10007D3D8();

    sub_10003C2C4(v246);
    sub_100033CD8(v256);
    sub_10007D698();
    v107 = sub_10007D688();
    v259(v255, v257);
    v259(v256, v257);
    if (v107)
    {
      v38 = [objc_opt_self() systemIndigoColor];
      v103 = sub_10007D4A8();
    }

    else
    {
      v103 = sub_10007D488();
    }

    v101 = v103;
    sub_10007D388();

    sub_10003C4AC(v210);
    sub_10003F93C();
    v39 = sub_10003E670();
    sub_10003F954(v164, v212, v160, v108, v39, v167);
    (*(v161 + 8))(v164, v160);
    sub_10003C778(v214);
    sub_100033CD8(v256);
    sub_10007D698();
    v102 = sub_10007D688();
    v259(v255, v257);
    v259(v256, v257);
    if (v102)
    {
      sub_10007D158();
    }

    else
    {
      sub_10007D148();
    }

    v40 = sub_10007D168();
    (*(*(v40 - 8) + 56))(v203, 0, 1);
    sub_10003D080();
    sub_10007D3B8();
    sub_10003C6D0(v203);
    sub_10003E6F0(v167);
    v100 = sub_10003CFD8();
    sub_1000354E8(v176, v168, v178);
    sub_10003E848(v176);
    sub_10003EA94(v178, v172);
    sub_1000354E8(v172, v168, v174);
    sub_10003E848(v172);
    sub_10003EA94(v174, v181);
    (*(v169 + 56))(v181, 0, 1, v168);
    sub_100059804(v181, v168, v183);
    sub_10003D1B0(v181);
    sub_10003D420(v183, v185);
    sub_10003E848(v174);
    sub_10003E848(v178);
  }

  else
  {
    (*(v169 + 56))(v181, 1, 1, v168);
    sub_10003CFD8();
    sub_100059804(v181, v168, v183);
    sub_10003D1B0(v181);
    sub_10003D420(v183, v185);
  }

  sub_10001E2CC((v250 + *(v233 + 20)), v190);
  v41 = v190 + *(v188 + 20);
  v98 = *v41;
  v96 = *(v41 + 1);
  v97 = *(v41 + 8);
  sub_10002F4F8(v98);
  sub_10001F234(v190);
  v99 = sub_1000749FC(v98, v96);
  if (v42)
  {
    sub_10003CF94(v98);
LABEL_22:
    (*(v145 + 56))(v155, 1, 1, v144);
    v53 = sub_10003D7C0();
    v297[5] = v141;
    v297[6] = v53;
    swift_getOpaqueTypeConformance2();
    sub_100059804(v155, v144, v157);
    sub_10003D8EC(v155);
    sub_10003D9A0(v157, v159);
    goto LABEL_23;
  }

  v95 = v99;
  v94 = v99;
  v292 = v99;
  sub_10003CF94(v98);
  if (v94 <= 0)
  {
    goto LABEL_22;
  }

  v92 = *sub_1000341F8();
  _objc_retain(v92);
  isa = sub_10007DAC8().super.super.isa;
  v93 = [v92 stringForObjectValue:?];
  swift_unknownObjectRelease();
  _objc_release(v92);
  if (v93)
  {
    v90 = v93;
    v85 = v93;
    v86 = sub_10007D868();
    v87 = v43;
    _objc_release(v85);
    v88 = v86;
    v89 = v87;
  }

  else
  {
    v88 = 0;
    v89 = 0;
  }

  v83 = v89;
  v84 = v88;
  if (!v89)
  {
    goto LABEL_22;
  }

  v81 = v84;
  v82 = v83;
  v60 = v83;
  v59 = v84;
  v290 = v84;
  v291 = v83;

  v288 = v59;
  v289 = v60;
  v284 = sub_10007D2C8();
  v285 = v44;
  v286 = v45;
  v287 = v46;
  v62 = v284;
  v63 = v44;
  v64 = v45;
  v65 = v46;
  v61 = *(v250 + *(v233 + 24));

  v280 = v62;
  v281 = v63;
  v74 = 1;
  v282 = v64 & 1;
  v283 = v65;
  v276 = sub_10007D2A8();
  v277 = v47;
  v278 = v48;
  v279 = v49;
  v67 = v276;
  v68 = v47;
  v69 = v48;
  v70 = v49;

  sub_10003CCBC(v62, v63, v64 & 1);

  v66 = sub_10007D498();
  v272 = v67;
  v273 = v68;
  v274 = v69 & 1 & v74;
  v275 = v70;
  v268 = sub_10007D298();
  v269 = v50;
  v270 = v51;
  v271 = v52;
  v71 = v268;
  v72 = v50;
  v73 = v51;
  v75 = v52;

  sub_10003CCBC(v67, v68, v69 & 1);

  v76 = v265;
  v265[0] = v71;
  v265[1] = v72;
  v266 = v73 & 1 & v74;
  v267 = v75;
  sub_100039FA8();
  sub_10007D058();
  sub_100039FB4();
  (*(v137 + 8))(v140, v136);
  sub_10003CC74(v76);
  v77 = sub_10003D7C0();
  sub_10003F924();
  sub_10007D2D8();
  sub_10003E59C(v143);
  v263 = v141;
  v264 = v77;
  v78 = swift_getOpaqueTypeConformance2();
  sub_1000354E8(v150, v144, v152);
  v79 = *(v145 + 8);
  v80 = v145 + 8;
  v79(v150, v144);
  v262 = v150;
  v58 = *(v145 + 16);
  v57 = v145 + 16;
  v58(v148, v152, v144);
  sub_1000354E8(v148, v144, v150);
  v79(v148, v144);
  v58(v155, v150, v144);
  (*(v145 + 56))(v155, 0, 1, v144);
  sub_100059804(v155, v144, v157);
  sub_10003D8EC(v155);
  sub_10003D9A0(v157, v159);
  v79(v150, v144);
  v79(v152, v144);

LABEL_23:
  sub_10003DAD4(v222, v218);
  v56 = v297;
  v297[0] = v218;
  (*(v194 + 16))(v197, v199, v193);
  v297[1] = v197;
  v295 = v300;
  v296 = v301;
  v297[2] = &v295;
  sub_10003DE84(v185, v183);
  v297[3] = v183;
  sub_10003E2E8(v159, v157);
  v297[4] = v157;
  v55[0] = v294;
  v294[0] = v216;
  v294[1] = v193;
  v294[2] = &type metadata for Spacer;
  v294[3] = v179;
  v294[4] = v153;
  v55[1] = v293;
  v293[0] = v109;
  v293[1] = OpaqueTypeConformance2;
  v293[2] = &protocol witness table for Spacer;
  v293[3] = sub_10003E41C();
  v293[4] = sub_10003E4B4();
  sub_10003A014(v56, 5uLL, v55[0], v134);
  sub_10003D8EC(v157);
  sub_10003D1B0(v183);
  v127(v197, v193);
  sub_10003C9D8(v218);
  sub_10003D8EC(v159);
  sub_10003D1B0(v185);
  v127(v199, v193);
  return sub_10003C9D8(v222);
}

unint64_t sub_100039F20()
{
  v2 = qword_10009B538;
  if (!qword_10009B538)
  {
    sub_100009860(&qword_10009B530, &qword_10007F920);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B538);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100039FB4()
{
  swift_getKeyPath();
  sub_10007D348();
}

uint64_t *sub_10003A014@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a3;
  v25 = a2;
  v26 = a1;
  v27 = a4;
  v28 = a3 & 0xFFFFFFFFFFFFFFFELL;
  if (a2 == 1)
  {
    TupleTypeMetadata = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    v23 = 0;
  }

  else
  {
    v19 = &v9;
    __chkstk_darwin(&v9);
    v20 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; ; i = v5 + 1)
    {
      v18 = i;
      if (i >= v25)
      {
        break;
      }

      v5 = v18;
      *&v20[8 * v18] = *((v24 & 0xFFFFFFFFFFFFFFFELL) + 8 * v18);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v23 = v6;
  }

  v14 = TupleTypeMetadata;
  v16 = *(*(TupleTypeMetadata - 8) + 64);
  v15 = &v9;
  __chkstk_darwin(&v9);
  v17 = &v9 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7)
  {
    for (j = 0; ; j = v9)
    {
      v11 = j;
      v12 = *((v24 & 0xFFFFFFFFFFFFFFFELL) + 8 * j);
      v10 = v25 == 1 ? 0 : *(v14 + 16 * v11 + 32);
      (*(*(v12 - 8) + 16))(&v17[v10], *(v26 + 8 * v11));
      v9 = v11 + 1;
      if (v11 + 1 == v25)
      {
        break;
      }
    }
  }

  sub_10007D5C8();
  return v15;
}

uint64_t sub_10003A2A4@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  sub_10003C0C4(a1, a3);
  v5 = type metadata accessor for MessageListHeaderView();
  sub_10001EB30(a2, &a3[*(v5 + 20)]);
  v6 = *(v5 + 24);
  result = sub_10007D268();
  *&a3[v6] = result;
  return result;
}

uint64_t *sub_10003A378@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v67 = 0;
  v66 = 0;
  v1 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
  v23 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v24 = &v14 - v23;
  v37 = 0;
  v44 = sub_10007D6D8();
  v42 = *(v44 - 8);
  v43 = v44 - 8;
  v25 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v37);
  v47 = &v14 - v25;
  v54 = sub_10007D6C8();
  v51 = *(v54 - 8);
  v52 = v54 - 8;
  v26 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v54);
  v53 = &v14 - v26;
  v27 = (*(*(sub_1000094DC(&qword_10009B470, &qword_10007F880) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v37);
  v40 = &v14 - v27;
  v28 = (*(*(type metadata accessor for Mailbox() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v37);
  v39 = (&v14 - v28);
  v29 = (*(*(type metadata accessor for Snapshot() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v37);
  v41 = &v14 - v29;
  v48 = type metadata accessor for MessageListHeaderView();
  v30 = (*(*(v48 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v48);
  v2 = &v14 - v30;
  v57 = (&v14 - v30);
  v59 = sub_1000094DC(&qword_10009B540, &qword_10007F958);
  v31 = (*(*(v59 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v59);
  v32 = (&v14 - v31);
  v33 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v14 - v31);
  v34 = (&v14 - v33);
  v35 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v14 - v33);
  v61 = (&v14 - v35);
  v36 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v14 - v35);
  v58 = (&v14 - v36);
  v67 = &v14 - v36;
  v6 = sub_100019A70();
  sub_10000DFBC(v6, v39);
  v38 = type metadata accessor for Message();
  v7 = sub_10007DEC8();
  sub_100074910(v39, v7, 8, 0, v41);
  sub_10003A270();
  sub_10003A2A4(v40, v41, v2);
  v45 = *(v42 + 104);
  v46 = v42 + 104;
  v45(v47, enum case for WidgetFamily.systemSmall(_:), v44);
  sub_10007D6B8();
  v49 = sub_10003AEC8();
  v50 = sub_10003AF48();
  sub_10007D378();
  v55 = *(v51 + 8);
  v56 = v51 + 8;
  v55(v53, v54);
  sub_10003AFC8(v57);
  v60 = sub_10003B1BC();
  sub_1000354E8(v61, v59, v58);
  sub_10003B2EC(v61);
  v66 = v61;
  v8 = v57;
  v14 = 5;
  v15 = 1;
  v16 = sub_10007D898("INBOX", 5uLL, 1);
  v17 = v9;
  v18 = sub_10007D898("Inbox", v14, v15 & 1);
  v19 = v10;
  v20 = 0;
  v11 = sub_10007CD98();
  (*(*(v11 - 8) + 56))(v24, v15);
  sub_100019764(v16, v17, v20, v18, v19, v24, v39);
  v12 = sub_10007DEC8();
  sub_100074910(v39, v12, 8, 256, v41);
  sub_10003A270();
  sub_10003A2A4(v40, v41, v8);
  v45(v47, enum case for WidgetFamily.systemSmall(_:), v44);
  sub_10007D6B8();
  sub_10007D378();
  v55(v53, v54);
  sub_10003AFC8(v57);
  sub_1000354E8(v34, v59, v61);
  sub_10003B2EC(v34);
  sub_10003B51C(v58, v34);
  v21 = v65;
  v65[0] = v34;
  sub_10003B51C(v61, v32);
  v65[1] = v32;
  v64[0] = v59;
  v64[1] = v59;
  v62 = v60;
  v63 = v60;
  sub_10003A014(v21, 2uLL, v64, v22);
  sub_10003B2EC(v32);
  sub_10003B2EC(v34);
  sub_10003B2EC(v61);
  return sub_10003B2EC(v58);
}

uint64_t sub_10003AC50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v5 = a1;
  v3[1] = 0;
  v11 = sub_10007D6A8();
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v10 = v3 - v4;
  v14 = sub_10007D0E8();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v6 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14);
  v15 = v3 - v6;
  (*(v12 + 16))(v3 - v6);
  sub_10007D0C8();
  (*(v7 + 32))(v9, v10, v11);
  return (*(v12 + 8))(v15, v14);
}

uint64_t sub_10003ADF8(uint64_t a1)
{
  v3 = a1;
  v1 = sub_10007D6A8();
  v5 = *(v1 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v6 = &v3 - v4;
  (*(v5 + 16))(&v3 - v4);
  return sub_10007D0D8();
}

unint64_t sub_10003AEC8()
{
  v2 = qword_10009B548;
  if (!qword_10009B548)
  {
    type metadata accessor for MessageListHeaderView();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B548);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10003AF48()
{
  v2 = qword_10009B550;
  if (!qword_10009B550)
  {
    sub_10007D6C8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B550);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_10003AFC8(uint64_t *a1)
{
  sub_1000094DC(&qword_10009B478, &qword_10007FC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_10007D6A8();
    (*(*(v2 - 8) + 8))(a1);
  }

  else
  {
    v1 = *a1;
  }

  v13 = type metadata accessor for MessageListHeaderView();
  v14 = (a1 + *(v13 + 20));
  v3 = v14[1];

  v4 = v14[2];

  if (v14[4] > 5uLL)
  {
    v5 = v14[4];
  }

  v10 = v14 + *(type metadata accessor for Mailbox() + 28);
  v11 = sub_10007CD98();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v10, 1))
  {
    (*(v12 + 8))(v10, v11);
  }

  v9 = (v14 + *(type metadata accessor for Snapshot() + 20));
  if (*v9 >= 2)
  {
    v6 = *v9;
  }

  v7 = *(a1 + *(v13 + 24));

  return a1;
}

unint64_t sub_10003B1BC()
{
  v2 = qword_10009B558;
  if (!qword_10009B558)
  {
    sub_100009860(&qword_10009B540, &qword_10007F958);
    sub_10003AEC8();
    sub_10003B264();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B558);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10003B264()
{
  v2 = qword_10009B560;
  if (!qword_10009B560)
  {
    sub_100009860(&qword_10009B568, &unk_10007F960);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B560);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_10003B2EC(uint64_t *a1)
{
  sub_1000094DC(&qword_10009B478, &qword_10007FC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_10007D6A8();
    (*(*(v2 - 8) + 8))(a1);
  }

  else
  {
    v1 = *a1;
  }

  v14 = type metadata accessor for MessageListHeaderView();
  v15 = (a1 + *(v14 + 20));
  v3 = v15[1];

  v4 = v15[2];

  if (v15[4] > 5uLL)
  {
    v5 = v15[4];
  }

  v11 = v15 + *(type metadata accessor for Mailbox() + 28);
  v12 = sub_10007CD98();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v11, 1))
  {
    (*(v13 + 8))(v11, v12);
  }

  v10 = (v15 + *(type metadata accessor for Snapshot() + 20));
  if (*v10 >= 2)
  {
    v6 = *v10;
  }

  v7 = *(a1 + *(v14 + 24));

  v9 = (a1 + *(sub_1000094DC(&qword_10009B540, &qword_10007F958) + 36));
  if (v9[3])
  {
    sub_10000A914(v9);
  }

  return a1;
}

void *sub_10003B51C(uint64_t *a1, void *a2)
{
  sub_1000094DC(&qword_10009B478, &qword_10007FC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_10007D6A8();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v26 = *a1;

    *a2 = v26;
  }

  swift_storeEnumTagMultiPayload();
  v21 = type metadata accessor for MessageListHeaderView();
  v23 = (a2 + *(v21 + 20));
  v25 = (a1 + *(v21 + 20));
  *v23 = *v25;
  v22 = v25[1];

  v23[1] = v22;
  v24 = v25[2];

  v23[2] = v24;
  if (v25[4] > 5uLL)
  {
    v23[3] = v25[3];
    v20 = v25[4];

    v23[4] = v20;
  }

  else
  {
    *(v23 + 3) = *(v25 + 3);
  }

  v3 = type metadata accessor for Mailbox();
  __dst = v23 + *(v3 + 28);
  __src = v25 + *(v3 + 28);
  v18 = sub_10007CD98();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(__src, 1))
  {
    v4 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v19 + 16))(__dst, __src, v18);
    (*(v19 + 56))(__dst, 0, 1, v18);
  }

  v5 = type metadata accessor for Snapshot();
  v14 = v23 + *(v5 + 20);
  v15 = v25 + *(v5 + 20);
  if (*v15 < 2uLL)
  {
    *v14 = *v15;
    *(v14 + 8) = *(v15 + 8);
  }

  else
  {
    v13 = *v15;

    *v14 = v13;
    *(v14 + 1) = *(v15 + 1);
    v14[16] = v15[16];
    v14[17] = v15[17];
  }

  v9 = *(v21 + 24);
  v10 = *(a1 + v9);

  *(a2 + v9) = v10;
  v6 = sub_1000094DC(&qword_10009B540, &qword_10007F958);
  v11 = (a2 + *(v6 + 36));
  v12 = (a1 + *(v6 + 36));
  if (v12[3])
  {
    v7 = v12[3];
    v11[3] = v7;
    v11[4] = v12[4];
    (**(v7 - 8))();
  }

  else
  {
    memcpy(v11, v12, 0x28uLL);
  }

  return a2;
}

unint64_t sub_10003B950()
{
  v2 = qword_10009B570;
  if (!qword_10009B570)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B570);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10003B9F4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v10 = sub_1000094DC(&qword_10009B470, &qword_10007F880);
  if (a2 == *(*(v10 - 8) + 84))
  {
    return (*(*(v10 - 8) + 48))(a1, a2, v10);
  }

  else
  {
    v5 = type metadata accessor for Snapshot();
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(a1 + *(a3 + 20), a2, v5);
    }

    else if (a2 == 0x7FFFFFFF)
    {
      v4 = -1;
      if (*(a1 + *(a3 + 24)) < &_mh_execute_header)
      {
        v4 = *(a1 + *(a3 + 24));
      }

      return (v4 + 1);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

uint64_t sub_10003BBD8(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v9 = sub_1000094DC(&qword_10009B470, &qword_10007F880);
  if (a3 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 56))(a1, a2, a2, v9);
  }

  result = type metadata accessor for Snapshot();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1 + *(a4 + 20), a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10003BD6C()
{
  v3 = sub_10003BE48();
  if (v0 <= 0x3F)
  {
    v3 = type metadata accessor for Snapshot();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_10003BE48()
{
  v4 = qword_10009B5E0;
  if (!qword_10009B5E0)
  {
    sub_10007D6A8();
    v3 = sub_10007CF18();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_10009B5E0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_10003BF40()
{
  v2 = qword_10009B618;
  if (!qword_10009B618)
  {
    sub_100009860(&qword_10009B620, "dU");
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B618);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10003BFE0()
{
  v2 = qword_10009B628;
  if (!qword_10009B628)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B628);
    return WitnessTable;
  }

  return v2;
}

void *sub_10003C0C4(const void *a1, void *a2)
{
  v6 = sub_1000094DC(&qword_10009B478, &qword_10007FC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_10007D6A8();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  return a2;
}

unint64_t sub_10003C198()
{
  v2 = qword_10009B638;
  if (!qword_10009B638)
  {
    sub_100009860(&qword_10009B4A8, &qword_10007F8A8);
    sub_10003C23C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B638);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10003C23C()
{
  v2 = qword_10009B640;
  if (!qword_10009B640)
  {
    sub_100009860(&qword_10009B4B0, &unk_10007F8B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B640);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_10003C2C4(uint64_t *a1)
{
  v1 = *a1;

  v5 = a1 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36);
  v2 = *v5;

  v6 = *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
  v3 = sub_10007D4D8();
  (*(*(v3 - 8) + 8))(&v5[v6]);
  return a1;
}

unint64_t sub_10003C37C()
{
  v2 = qword_10009B648;
  if (!qword_10009B648)
  {
    sub_100009860(&qword_10009B4B8, &unk_100080370);
    sub_10003C198();
    sub_10003C424();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B648);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10003C424()
{
  v2 = qword_10009B650;
  if (!qword_10009B650)
  {
    sub_100009860(&qword_10009B658, &unk_10007FB80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B650);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_10003C4AC(uint64_t *a1)
{
  v1 = *a1;

  v7 = a1 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36);
  v2 = *v7;

  v8 = *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
  v3 = sub_10007D4D8();
  (*(*(v3 - 8) + 8))(&v7[v8]);
  v9 = (a1 + *(sub_1000094DC(&qword_10009B4B8, &unk_100080370) + 36));
  v4 = *v9;

  v5 = v9[1];

  return a1;
}

unint64_t sub_10003C5A0()
{
  v2 = qword_10009B660;
  if (!qword_10009B660)
  {
    sub_100009860(&qword_10009B4C0, &qword_10007F8C0);
    sub_10003C37C();
    sub_10003C648();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B660);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10003C648()
{
  v2 = qword_10009B668;
  if (!qword_10009B668)
  {
    sub_100009860(&qword_10009B670, &qword_100080380);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B668);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10003C6D0(uint64_t a1)
{
  v3 = sub_10007D168();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t *sub_10003C778(uint64_t *a1)
{
  v1 = *a1;

  v9 = a1 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36);
  v2 = *v9;

  v10 = *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
  v3 = sub_10007D4D8();
  (*(*(v3 - 8) + 8))(&v9[v10]);
  v11 = (a1 + *(sub_1000094DC(&qword_10009B4B8, &unk_100080370) + 36));
  v4 = *v11;

  v5 = v11[1];

  v12 = (a1 + *(sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0) + 36));
  v6 = *v12;

  v7 = v12[1];

  return a1;
}

unint64_t sub_10003C8A8()
{
  v2 = qword_10009B678;
  if (!qword_10009B678)
  {
    sub_100009860(&qword_10009B4C8, &qword_10007F8C8);
    sub_10003C5A0();
    sub_10003C950();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B678);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10003C950()
{
  v2 = qword_10009B680;
  if (!qword_10009B680)
  {
    sub_100009860(&qword_10009B4D0, &qword_10007F8D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B680);
    return WitnessTable;
  }

  return v2;
}

char *sub_10003C9D8(char *a1)
{
  v1 = *a1;

  v10 = &a1[*(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36)];
  v2 = *v10;

  v11 = *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
  v3 = sub_10007D4D8();
  (*(*(v3 - 8) + 8))(&v10[v11]);
  v12 = &a1[*(sub_1000094DC(&qword_10009B4B8, &unk_100080370) + 36)];
  v4 = *v12;

  v5 = *(v12 + 1);

  v13 = &a1[*(sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0) + 36)];
  v6 = *v13;

  v7 = *(v13 + 1);

  v15 = *(sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8) + 36);
  v8 = *&a1[v15];

  v16 = *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
  v17 = sub_10007D168();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(&a1[v15 + v16], 1))
  {
    (*(v18 + 8))(&a1[v15 + v16], v17);
  }

  return a1;
}

unint64_t sub_10003CBFC()
{
  v2 = qword_10009B688;
  if (!qword_10009B688)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B688);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10003CC74(uint64_t a1)
{
  sub_10003CCBC(*a1, *(a1 + 8), *(a1 + 16) & 1);
  v1 = *(a1 + 24);

  return a1;
}

uint64_t sub_10003CCBC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10003CD00()
{
  v2 = qword_10009B698;
  if (!qword_10009B698)
  {
    sub_100009860(&qword_10009B690, &unk_10007FB90);
    sub_10003CDA4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B698);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10003CDA4()
{
  v2 = qword_10009B6A0;
  if (!qword_10009B6A0)
  {
    sub_100009860(&qword_10009B6A8, &qword_1000803A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B6A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10003CE2C(uint64_t a1)
{
  sub_10003CCBC(*a1, *(a1 + 8), *(a1 + 16) & 1);
  v1 = *(a1 + 24);

  v2 = *(a1 + 32);

  return a1;
}

unint64_t sub_10003CE80()
{
  v2 = qword_10009B6B8;
  if (!qword_10009B6B8)
  {
    sub_100009860(&qword_10009B6B0, &unk_10007FBA0);
    sub_10003CD00();
    sub_10003C424();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B6B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10003CF28(uint64_t a1)
{
  sub_10003CCBC(*a1, *(a1 + 8), *(a1 + 16) & 1);
  v1 = *(a1 + 24);

  v2 = *(a1 + 32);

  v3 = *(a1 + 56);

  v4 = *(a1 + 64);

  return a1;
}

unint64_t sub_10003CF94(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_10003CFD8()
{
  v2 = qword_10009B6C0;
  if (!qword_10009B6C0)
  {
    sub_100009860(&qword_10009B4E8, &qword_10007F8E8);
    sub_10003D080();
    sub_10003C950();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B6C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10003D080()
{
  v2 = qword_10009B6C8;
  if (!qword_10009B6C8)
  {
    sub_100009860(&qword_10009B4F0, &qword_10007F8F0);
    sub_10003C5A0();
    sub_10003D128();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B6C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10003D128()
{
  v2 = qword_10009B6D0;
  if (!qword_10009B6D0)
  {
    sub_100009860(&qword_10009B6D8, &qword_10007FE30);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B6D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_10003D1B0(uint64_t *a1)
{
  v20 = sub_1000094DC(&qword_10009B4E8, &qword_10007F8E8);
  if (!(*(*(v20 - 8) + 48))(a1, 1))
  {
    v1 = *a1;

    v11 = (a1 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36));
    v2 = *v11;

    v12 = v11 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
    v3 = sub_10007D4D8();
    (*(*(v3 - 8) + 8))(v12);
    v13 = (a1 + *(sub_1000094DC(&qword_10009B4B8, &unk_100080370) + 36));
    v4 = *v13;

    v5 = v13[1];

    v14 = (a1 + *(sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0) + 36));
    v6 = *v14;

    v7 = v14[1];

    v8 = *(a1 + *(sub_1000094DC(&qword_10009B4F0, &qword_10007F8F0) + 36));

    v15 = (a1 + *(v20 + 36));
    v9 = *v15;

    v16 = v15 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
    v17 = sub_10007D168();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v16, 1))
    {
      (*(v18 + 8))(v16, v17);
    }
  }

  return a1;
}

void *sub_10003D420(void *a1, void *a2)
{
  v24 = sub_1000094DC(&qword_10009B4E8, &qword_10007F8E8);
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(a1, 1))
  {
    v10 = sub_1000094DC(&qword_10009B508, &qword_10007F908);
    memcpy(a2, a1, *(*(v10 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v2 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
    v12 = (a2 + *(v2 + 36));
    v13 = (a1 + *(v2 + 36));
    *v12 = *v13;
    v3 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
    v15 = v12 + *(v3 + 28);
    v14 = v13 + *(v3 + 28);
    v4 = sub_10007D4D8();
    (*(*(v4 - 8) + 32))(v15, v14);
    v5 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
    *(a2 + *(v5 + 36)) = *(a1 + *(v5 + 36));
    v6 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
    *(a2 + *(v6 + 36)) = *(a1 + *(v6 + 36));
    v7 = sub_1000094DC(&qword_10009B4F0, &qword_10007F8F0);
    *(a2 + *(v7 + 36)) = *(a1 + *(v7 + 36));
    v16 = (a2 + *(v24 + 36));
    v17 = (a1 + *(v24 + 36));
    *v16 = *v17;
    v8 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
    __dst = v16 + *(v8 + 28);
    __src = v17 + *(v8 + 28);
    v20 = sub_10007D168();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(__src, 1))
    {
      v9 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
      memcpy(__dst, __src, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v21 + 32))(__dst, __src, v20);
      (*(v21 + 56))(__dst, 0, 1, v20);
    }

    (*(v25 + 56))(a2, 0, 1, v24);
  }

  return a2;
}

unint64_t sub_10003D7C0()
{
  v2 = qword_10009B6E0;
  if (!qword_10009B6E0)
  {
    sub_100009860(&qword_10009B630, &qword_10007FB78);
    sub_10003D864();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B6E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10003D864()
{
  v2 = qword_10009B6E8;
  if (!qword_10009B6E8)
  {
    sub_100009860(&qword_10009B6F0, &qword_10007FBB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B6E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10003D8EC(uint64_t a1)
{
  v3 = sub_1000094DC(&qword_10009B4F8, &qword_10007F8F8);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_10003D9A0(const void *a1, void *a2)
{
  v6 = sub_1000094DC(&qword_10009B4F8, &qword_10007F8F8);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1000094DC(&qword_10009B510, &qword_10007F910);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

char *sub_10003DAD4(char *a1, char *a2)
{
  v5 = *a1;

  *a2 = v5;
  v6 = *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36);
  v7 = *&a1[v6];

  *&a2[v6] = v7;
  v8 = *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
  v2 = sub_10007D4D8();
  (*(*(v2 - 8) + 16))(&a2[v6 + v8], &a1[v6 + v8]);
  v9 = *(sub_1000094DC(&qword_10009B4B8, &unk_100080370) + 36);
  v10 = *&a1[v9];

  *&a2[v9] = v10;
  v11 = *&a1[v9 + 8];

  *&a2[v9 + 8] = v11;
  v12 = *(sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0) + 36);
  v13 = *&a1[v12];

  *&a2[v12] = v13;
  v14 = *&a1[v12 + 8];

  *&a2[v12 + 8] = v14;
  v16 = *(sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8) + 36);
  v18 = *&a1[v16];

  *&a2[v16] = v18;
  v19 = *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
  v20 = sub_10007D168();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(&a1[v16 + v19], 1))
  {
    v3 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
    memcpy(&a2[v16 + v19], &a1[v16 + v19], *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v21 + 16))();
    (*(v21 + 56))(&a2[v16 + v19], 0, 1, v20);
  }

  return a2;
}

void *sub_10003DE84(uint64_t *a1, void *a2)
{
  v36 = sub_1000094DC(&qword_10009B4E8, &qword_10007F8E8);
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(a1, 1))
  {
    v9 = sub_1000094DC(&qword_10009B508, &qword_10007F908);
    memcpy(a2, a1, *(*(v9 - 8) + 64));
  }

  else
  {
    v11 = *a1;

    *a2 = v11;
    v2 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
    v13 = (a2 + *(v2 + 36));
    v14 = (a1 + *(v2 + 36));
    v12 = *v14;

    *v13 = v12;
    v3 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
    v16 = v13 + *(v3 + 28);
    v15 = v14 + *(v3 + 28);
    v4 = sub_10007D4D8();
    (*(*(v4 - 8) + 16))(v16, v15);
    v5 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
    v19 = (a2 + *(v5 + 36));
    v18 = (a1 + *(v5 + 36));
    v17 = *v18;

    *v19 = v17;
    v20 = v18[1];

    v19[1] = v20;
    v6 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
    v23 = (a2 + *(v6 + 36));
    v22 = (a1 + *(v6 + 36));
    v21 = *v22;

    *v23 = v21;
    v24 = v22[1];

    v23[1] = v24;
    v25 = *(sub_1000094DC(&qword_10009B4F0, &qword_10007F8F0) + 36);
    v26 = *(a1 + v25);

    *(a2 + v25) = v26;
    v28 = (a2 + *(v36 + 36));
    v29 = (a1 + *(v36 + 36));
    v27 = *v29;

    *v28 = v27;
    v7 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
    v30 = v28 + *(v7 + 28);
    v31 = v29 + *(v7 + 28);
    v32 = sub_10007D168();
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v31, 1))
    {
      v8 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
      memcpy(v30, v31, *(*(v8 - 8) + 64));
    }

    else
    {
      (*(v33 + 16))(v30, v31, v32);
      (*(v33 + 56))(v30, 0, 1, v32);
    }

    (*(v37 + 56))(a2, 0, 1, v36);
  }

  return a2;
}

void *sub_10003E2E8(const void *a1, void *a2)
{
  v6 = sub_1000094DC(&qword_10009B4F8, &qword_10007F8F8);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1000094DC(&qword_10009B510, &qword_10007F910);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_10003E41C()
{
  v2 = qword_10009B6F8;
  if (!qword_10009B6F8)
  {
    sub_100009860(&qword_10009B508, &qword_10007F908);
    sub_10003CFD8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B6F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10003E4B4()
{
  v2 = qword_10009B700;
  if (!qword_10009B700)
  {
    sub_100009860(&qword_10009B510, &qword_10007F910);
    sub_100009860(&qword_10009B630, &qword_10007FB78);
    sub_10003D7C0();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B700);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10003E59C(uint64_t a1)
{
  sub_10003CCBC(*a1, *(a1 + 8), *(a1 + 16) & 1);
  v1 = *(a1 + 24);

  v5 = (a1 + *(sub_1000094DC(&qword_10009B630, &qword_10007FB78) + 36));
  v2 = *v5;

  v6 = *(sub_1000094DC(&qword_10009B6F0, &qword_10007FBB0) + 28);
  v3 = sub_10007D068();
  (*(*(v3 - 8) + 8))(&v5[v6]);
  return a1;
}

unint64_t sub_10003E670()
{
  v2 = qword_10009B708;
  if (!qword_10009B708)
  {
    sub_10007CFE8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B708);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_10003E6F0(uint64_t *a1)
{
  v1 = *a1;

  v10 = a1 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36);
  v2 = *v10;

  v11 = *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
  v3 = sub_10007D4D8();
  (*(*(v3 - 8) + 8))(&v10[v11]);
  v12 = (a1 + *(sub_1000094DC(&qword_10009B4B8, &unk_100080370) + 36));
  v4 = *v12;

  v5 = v12[1];

  v13 = (a1 + *(sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0) + 36));
  v6 = *v13;

  v7 = v13[1];

  v8 = *(a1 + *(sub_1000094DC(&qword_10009B4F0, &qword_10007F8F0) + 36));

  return a1;
}

char *sub_10003E848(char *a1)
{
  v1 = *a1;

  v11 = &a1[*(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36)];
  v2 = *v11;

  v12 = *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
  v3 = sub_10007D4D8();
  (*(*(v3 - 8) + 8))(&v11[v12]);
  v13 = &a1[*(sub_1000094DC(&qword_10009B4B8, &unk_100080370) + 36)];
  v4 = *v13;

  v5 = *(v13 + 1);

  v14 = &a1[*(sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0) + 36)];
  v6 = *v14;

  v7 = *(v14 + 1);

  v8 = *&a1[*(sub_1000094DC(&qword_10009B4F0, &qword_10007F8F0) + 36)];

  v16 = *(sub_1000094DC(&qword_10009B4E8, &qword_10007F8E8) + 36);
  v9 = *&a1[v16];

  v17 = *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
  v18 = sub_10007D168();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(&a1[v16 + v17], 1))
  {
    (*(v19 + 8))(&a1[v16 + v17], v18);
  }

  return a1;
}

char *sub_10003EA94(char *a1, char *a2)
{
  v5 = *a1;

  *a2 = v5;
  v6 = *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36);
  v7 = *&a1[v6];

  *&a2[v6] = v7;
  v8 = *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
  v2 = sub_10007D4D8();
  (*(*(v2 - 8) + 16))(&a2[v6 + v8], &a1[v6 + v8]);
  v9 = *(sub_1000094DC(&qword_10009B4B8, &unk_100080370) + 36);
  v10 = *&a1[v9];

  *&a2[v9] = v10;
  v11 = *&a1[v9 + 8];

  *&a2[v9 + 8] = v11;
  v12 = *(sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0) + 36);
  v13 = *&a1[v12];

  *&a2[v12] = v13;
  v14 = *&a1[v12 + 8];

  *&a2[v12 + 8] = v14;
  v15 = *(sub_1000094DC(&qword_10009B4F0, &qword_10007F8F0) + 36);
  v16 = *&a1[v15];

  *&a2[v15] = v16;
  v18 = *(sub_1000094DC(&qword_10009B4E8, &qword_10007F8E8) + 36);
  v20 = *&a1[v18];

  *&a2[v18] = v20;
  v21 = *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
  v22 = sub_10007D168();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(&a1[v18 + v21], 1))
  {
    v3 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
    memcpy(&a2[v18 + v21], &a1[v18 + v21], *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v23 + 16))();
    (*(v23 + 56))(&a2[v18 + v21], 0, 1, v22);
  }

  return a2;
}

uint64_t sub_10003EEC4(uint64_t a1)
{
  v3 = a1;
  v1 = sub_10007D068();
  v5 = *(v1 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v6 = &v3 - v4;
  (*(v5 + 16))(&v3 - v4);
  return sub_10007D0A8();
}

void *sub_10003EF94(uint64_t *a1, void *a2)
{
  sub_1000094DC(&qword_10009B478, &qword_10007FC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_10007D6A8();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v22 = *a1;

    *a2 = v22;
  }

  swift_storeEnumTagMultiPayload();
  v17 = type metadata accessor for MessageListHeaderView();
  v19 = (a2 + *(v17 + 20));
  v21 = (a1 + *(v17 + 20));
  *v19 = *v21;
  v18 = v21[1];

  v19[1] = v18;
  v20 = v21[2];

  v19[2] = v20;
  if (v21[4] > 5uLL)
  {
    v19[3] = v21[3];
    v16 = v21[4];

    v19[4] = v16;
  }

  else
  {
    *(v19 + 3) = *(v21 + 3);
  }

  v3 = type metadata accessor for Mailbox();
  __dst = v19 + *(v3 + 28);
  __src = v21 + *(v3 + 28);
  v14 = sub_10007CD98();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(__src, 1))
  {
    v4 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v15 + 16))(__dst, __src, v14);
    (*(v15 + 56))(__dst, 0, 1, v14);
  }

  v5 = type metadata accessor for Snapshot();
  v10 = v19 + *(v5 + 20);
  v11 = v21 + *(v5 + 20);
  if (*v11 < 2uLL)
  {
    *v10 = *v11;
    *(v10 + 8) = *(v11 + 8);
  }

  else
  {
    v9 = *v11;

    *v10 = v9;
    *(v10 + 1) = *(v11 + 1);
    v10[16] = v11[16];
    v10[17] = v11[17];
  }

  v7 = *(v17 + 24);
  v8 = *(a1 + v7);

  result = a2;
  *(a2 + v7) = v8;
  return result;
}

uint64_t sub_10003F324()
{
  v15 = type metadata accessor for MessageListHeaderView();
  v0 = *(*(v15 - 8) + 80);
  v17 = (v0 + 16) & ~v0;
  v16 = v17 + *(*(v15 - 8) + 64);
  sub_1000094DC(&qword_10009B478, &qword_10007FC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_10007D6A8();
    (*(*(v2 - 8) + 8))(v14 + v17);
  }

  else
  {
    v1 = *(v14 + v17);
  }

  v13 = (v14 + v17 + *(v15 + 20));
  v3 = v13[1];

  v4 = v13[2];

  if (v13[4] > 5uLL)
  {
    v5 = v13[4];
  }

  v10 = v13 + *(type metadata accessor for Mailbox() + 28);
  v11 = sub_10007CD98();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v10, 1))
  {
    (*(v12 + 8))(v10, v11);
  }

  v9 = (v13 + *(type metadata accessor for Snapshot() + 20));
  if (*v9 >= 2)
  {
    v6 = *v9;
  }

  v7 = *(v14 + v17 + *(v15 + 24));

  return swift_deallocObject();
}

__n128 sub_10003F5B4(char *a1, char *a2)
{
  v18 = sub_1000094DC(&qword_10009B478, &qword_10007FC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_10007D6A8();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v18 - 8) + 64));
  }

  v9 = type metadata accessor for MessageListHeaderView();
  v10 = &a2[*(v9 + 20)];
  v11 = &a1[*(v9 + 20)];
  *v10 = *v11;
  *(v10 + 2) = *(v11 + 2);
  *(v10 + 24) = *(v11 + 24);
  v3 = type metadata accessor for Mailbox();
  __dst = &v10[*(v3 + 28)];
  __src = &v11[*(v3 + 28)];
  v14 = sub_10007CD98();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(__src, 1))
  {
    v4 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v15 + 32))(__dst, __src, v14);
    (*(v15 + 56))(__dst, 0, 1, v14);
  }

  v5 = type metadata accessor for Snapshot();
  v6 = &v10[*(v5 + 20)];
  v7 = &v11[*(v5 + 20)];
  result = *v7;
  *v6 = *v7;
  v6[1].n128_u16[0] = v7[1].n128_u16[0];
  *&a2[*(v9 + 24)] = *&a1[*(v9 + 24)];
  return result;
}

uint64_t sub_10003F84C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MessageListHeaderView();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_100035328(a1);
}

unint64_t sub_10003F8C0()
{
  v2 = qword_10009B710;
  if (!qword_10009B710)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009B710);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_10003F954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = a6;
  v7 = a1;
  v14 = a2;
  v10 = a3;
  v15 = a4;
  v11 = a5;
  v18 = a2;
  v17 = a3;
  v9 = *(a3 - 8);
  v8 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v12 = &v7 - v8;
  (*(v9 + 16))(&v7 - v8);
  v16 = sub_10007CF78();
  sub_10007D338();
}

uint64_t *sub_10003FA3C@<X0>(uint64_t a1@<X8>)
{
  v7 = a1;
  v8 = sub_1000094DC(&qword_10009B718, &qword_100080120);
  v5 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v1 = (&v4 - v5);
  v9 = (&v4 - v5);
  v2 = type metadata accessor for MessageListView();
  sub_10003FB70((v6 + *(v2 + 20)), v1);
  sub_10007CF08();
  return sub_10003FC44(v9);
}

uint64_t type metadata accessor for MessageListView()
{
  v1 = qword_10009B898;
  if (!qword_10009B898)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void *sub_10003FB70(uint64_t *a1, void *a2)
{
  sub_1000094DC(&qword_10009B720, &unk_10007FBF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_10007D6D8();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t *sub_10003FC44(uint64_t *a1)
{
  sub_1000094DC(&qword_10009B720, &unk_10007FBF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_10007D6D8();
    (*(*(v2 - 8) + 8))(a1);
  }

  else
  {
    v1 = *a1;
  }

  return a1;
}

uint64_t *sub_10003FD18(uint64_t *a1)
{
  v8 = a1;
  v6 = (*(*(sub_1000094DC(&qword_10009B718, &qword_100080120) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v8);
  v7 = (&v5 - v6);
  sub_10003FB70(v2, (&v5 - v6));
  v3 = type metadata accessor for MessageListView();
  sub_10003FDC8(v7, (v1 + *(v3 + 20)));
  return sub_10003FC44(v8);
}

uint64_t *sub_10003FDC8(uint64_t *a1, uint64_t *a2)
{
  if (a2 != a1)
  {
    sub_10003FC44(a2);
    v4 = sub_1000094DC(&qword_10009B720, &unk_10007FBF0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_10007D6D8();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

double sub_10003FEF8()
{
  v1 = (v0 + *(type metadata accessor for MessageListView() + 24));
  v3 = *v1;
  v4 = v1[1];

  sub_1000094DC(&qword_10009B728, &qword_100080340);
  sub_10007D4F8();

  return v5;
}

uint64_t sub_10003FF84()
{
  v1 = (v0 + *(type metadata accessor for MessageListView() + 24));
  v3 = *v1;
  v4 = v1[1];

  v5[0] = v3;
  v5[1] = v4;
  sub_1000094DC(&qword_10009B728, &qword_100080340);
  sub_10007D508();
  sub_100040030(v5);
}

uint64_t sub_100040030(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

double sub_10004005C()
{
  v1 = (v0 + *(type metadata accessor for MessageListView() + 24));
  v3 = *v1;
  v4 = v1[1];

  sub_1000094DC(&qword_10009B728, &qword_100080340);
  sub_10007D518();

  return v5;
}

double sub_100040100()
{
  v1 = (v0 + *(type metadata accessor for MessageListView() + 24));
  v4 = *v1;
  v3 = *(v1 + 1);

  return v4;
}

uint64_t sub_100040148(uint64_t a1, double a2)
{

  v3 = v2 + *(type metadata accessor for MessageListView() + 24);
  v4 = *(v3 + 8);
  *v3 = a2;
  *(v3 + 8) = a1;
}

uint64_t sub_1000401A0@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v79 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v104 = 0;
  v102 = 0;
  v101 = 0;
  v56 = sub_1000094DC(&qword_10009B730, &qword_10007FC00);
  v57 = (*(*(v56 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v56 - 8);
  v58 = &v26 - v57;
  v59 = sub_1000094DC(&qword_10009B738, &qword_10007FC08);
  v60 = *(v59 - 8);
  v61 = v60;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v59 - 8);
  v63 = &v26 - v62;
  v64 = sub_1000094DC(&qword_10009B740, &qword_10007FC10);
  v65 = (*(*(v64 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v64 - 8);
  v66 = &v26 - v65;
  v67 = sub_1000094DC(&qword_10009B748, &qword_10007FC18);
  v68 = (*(*(v67 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v67 - 8);
  v69 = &v26 - v68;
  v70 = sub_1000094DC(&qword_10009B750, &qword_10007FC20);
  v71 = (*(*(v70 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v70 - 8);
  v72 = &v26 - v71;
  v73 = sub_1000094DC(&qword_10009B758, &qword_10007FC28);
  v75 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v79);
  v77 = (v75 + 15) & 0xFFFFFFFFFFFFFFF0;
  v74 = &v26 - v77;
  __chkstk_darwin(v1);
  v76 = &v26 - v77;
  __chkstk_darwin(v2);
  v78 = &v26 - v77;
  v112 = &v26 - v77;
  v80 = *(type metadata accessor for MessageListView() - 8);
  v81 = v80;
  v82 = *(v80 + 64);
  __chkstk_darwin(v79);
  v83 = (&v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for Snapshot();
  v5 = *(v4 - 8);
  v90 = v4 - 8;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v94 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v85 = sub_1000094DC(&qword_10009B760, &qword_10007FC30);
  v86 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v84);
  v88 = (v86 + 15) & 0xFFFFFFFFFFFFFFF0;
  v87 = &v26 - v88;
  __chkstk_darwin(v8);
  v89 = &v26 - v88;
  v111 = &v26 - v88;
  v110 = v9;
  sub_10001E2CC(v9, v10);
  v11 = v94 + *(v90 + 28);
  v97 = *v11;
  v91 = v97;
  v95 = *(v11 + 1);
  v92 = v95;
  v96 = *(v11 + 8);
  v93 = v96;
  sub_10002F4F8(v97);
  sub_10001F234(v94);
  v98 = sub_100074AA4(v97);
  if (v98)
  {
    v54 = v98;
    v53 = v98;
    v106 = v98;
    sub_10003CF94(v91);
    sub_100045BF8(v84, v83);

    v38 = (*(v81 + 80) + 16) & ~*(v81 + 80);
    v39 = (v38 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    sub_100046264(v83, v40 + v38);
    *(v40 + v39) = v53;
    v41 = sub_1000094DC(&qword_10009B7F0, &qword_10007FC70);
    sub_1000465C4();
    v103[0] = sub_10007CFC8();
    v103[1] = v12;
    v48 = sub_1000094DC(&qword_10009B7D0, &qword_10007FC60);
    v49 = sub_100045588();
    v52 = &v104;
    v42 = v103;
    sub_1000354E8(v103, v48, &v104);
    sub_100040030(v42);
    v43 = v104;
    v44 = v105;

    v100[0] = v43;
    v100[1] = v44;
    v51 = &v101;
    v45 = v100;
    sub_1000354E8(v100, v48, &v101);
    sub_100040030(v45);
    v46 = v101;
    v47 = v102;

    v99[0] = v46;
    v99[1] = v47;
    v13 = sub_1000452FC();
    v50 = v99;
    sub_1000364F8(v99, v48, v73, v49, v13, v87);
    sub_100040030(v50);
    sub_100045610(v87, v89);
    sub_100040030(v51);
    sub_100040030(v52);
  }

  else
  {
    sub_10003CF94(v91);
    v30 = &v26;
    __chkstk_darwin(&v26);
    v28 = v23;
    v24 = v14;
    v29 = sub_1000094DC(&qword_10009B768, &qword_10007FC38);
    sub_100044668();
    sub_10007D4B8();
    v31 = sub_1000447E0();
    sub_10003F924();
    sub_10007D2D8();
    sub_100044878(v58);
    v32 = sub_10007D498();
    v108 = v56;
    v109 = v31;
    v35 = 1;
    swift_getOpaqueTypeConformance2();
    sub_10007D388();

    (*(v61 + 8))(v63, v59);
    v33 = sub_10007D218();
    sub_10004498C();
    sub_10007D3D8();

    sub_100044A84(v66);
    sub_100044B28();
    sub_10007D3C8();
    sub_100044BD0(v69);
    v34 = sub_1000450C4();
    v15 = sub_1000450A0();
    v36 = &v19;
    v25 = v34;
    v24 = v70;
    v23[1] = v16;
    v23[0] = v15;
    v22 = 0;
    v21 = 0x7FF0000000000000;
    v20 = v35;
    v19 = 0;
    sub_10007D3F8();
    sub_1000451F4(v72);
    v37 = sub_1000452FC();
    sub_1000354E8(v76, v73, v78);
    sub_1000451F4(v76);
    v107 = v76;
    sub_1000453A0(v78, v74);
    sub_1000354E8(v74, v73, v76);
    sub_1000451F4(v74);
    sub_1000453A0(v76, v74);
    v27 = sub_1000094DC(&qword_10009B7D0, &qword_10007FC60);
    v17 = sub_100045588();
    sub_1000365F0(v74, v27, v73, v17, v37, v87);
    sub_1000451F4(v74);
    sub_100045610(v87, v89);
    sub_1000451F4(v76);
    sub_1000451F4(v78);
  }

  sub_1000457C0(v89, v87);
  sub_100045A14();
  sub_1000354E8(v87, v85, v55);
  sub_100045ABC(v87);
  return sub_100045ABC(v89);
}

uint64_t sub_100040E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a4;
  v13 = a1;
  v14 = a2;
  v19 = a3;
  v15 = sub_100048930;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v21 = sub_1000094DC(&qword_10009B7F0, &qword_10007FC70);
  v11 = *(*(v21 - 8) + 64);
  v10 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v23 = &v9 - v10;
  v12 = v10;
  __chkstk_darwin(v4);
  v24 = &v9 - v12;
  v32 = &v9 - v12;
  v31 = v5;
  v30 = v6;
  v29 = v7;

  v16 = &v25;
  v26 = v14;
  v27 = v13;
  v28 = v19;
  v17 = sub_1000094DC(&qword_10009B8E8, &qword_10007FE18);
  v18 = sub_100048940();
  sub_100043D34();
  sub_10007D558();

  v22 = sub_1000465C4();
  sub_1000354E8(v23, v21, v24);
  sub_100048B08(v23);
  sub_100048BBC(v24, v23);
  sub_1000354E8(v23, v21, v20);
  sub_100048B08(v23);
  return sub_100048B08(v24);
}

uint64_t sub_100041018@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a4;
  v102 = a1;
  v101 = a2;
  v99 = a3;
  v61 = sub_100049270;
  v62 = sub_1000493F4;
  v131 = 0;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v127 = 0;
  v122 = 0.0;
  v119 = 0.0;
  v97 = 0;
  v63 = sub_10007CFE8();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v67 = v25 - v66;
  v68 = sub_10007CF98();
  v70 = *(v68 - 8);
  v69 = v68 - 8;
  v71 = v70;
  v72 = *(v70 + 64);
  v73 = (v72 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v97);
  v74 = v25 - v73;
  v100 = type metadata accessor for MessageListView();
  v75 = *(v100 - 8);
  v76 = v75;
  v77 = *(v75 + 64);
  v78 = (v77 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v100);
  v79 = (v25 - v78);
  v80 = sub_1000094DC(&qword_10009B900, &qword_10007FE20);
  v81 = *(v80 - 8);
  v82 = v80 - 8;
  v83 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v80);
  v84 = v25 - v83;
  v85 = sub_1000094DC(&qword_10009B8E8, &qword_10007FE18);
  v86 = (*(*(v85 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v97);
  v87 = v25 - v86;
  v88 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v89 = v25 - v88;
  v131 = v25 - v88;
  v90 = sub_10007DE68();
  v91 = *(v90 - 8);
  v92 = v90 - 8;
  v93 = (*(v91 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v90);
  v94 = v25 - v93;
  v95 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25 - v93);
  v96 = v25 - v95;
  v106 = sub_1000094DC(&qword_10009B718, &qword_100080120);
  v98 = (*(*(v106 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v97);
  v7 = (v25 - v98);
  v107 = (v25 - v98);
  v112 = sub_10007D6D8();
  v108 = *(v112 - 8);
  v109 = v112 - 8;
  v104 = *(v108 + 64);
  v103 = (v104 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v102);
  v110 = v25 - v103;
  v105 = (v104 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v111 = v25 - v105;
  v130 = v9;
  v129 = v10;
  v128 = v11;
  sub_10003FB70((v9 + *(v12 + 20)), v7);
  sub_10007CF08();
  sub_10003FC44(v107);
  (*(v108 + 104))(v110, enum case for WidgetFamily.systemLarge(_:), v112);
  sub_100048CB8();
  v115 = sub_10007DEE8();
  v114 = *(v108 + 8);
  v113 = v108 + 8;
  v114(v110, v112);
  v114(v111, v112);
  if (v115)
  {
    v59 = 4;
  }

  else
  {
    v59 = 2;
  }

  v52 = v59;
  v127 = v59;
  v47 = &v126;
  v126 = v59;
  v54 = sub_100048D38();
  v53 = &type metadata for Int;
  v51 = sub_10004215C(v47, &type metadata for Int, v54) - 1.0;
  v13 = (v102 + *(v100 + 24));
  v48 = *v13;
  v49 = v13[1];

  v124 = v48;
  v125 = v49;
  sub_1000094DC(&qword_10009B728, &qword_100080340);
  sub_10007D4F8();
  v50 = v123;

  v55 = v51 * v50;
  v122 = v51 * v50;
  sub_10007CF88();
  v56 = v14 - v55;
  v121 = v52;
  v15 = sub_10004215C(&v121, v53, v54);
  v57 = v56 / v15;
  (*(v91 + 104))(v96, enum case for FloatingPointRoundingRule.down(_:), v90);
  v120 = v57;
  (*(v91 + 16))(v94, v96, v90);
  result = (*(v91 + 88))(v94, v90);
  v58 = result;
  if (result == enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:))
  {
    v120 = round(v57);
    goto LABEL_18;
  }

  if (v58 == enum case for FloatingPointRoundingRule.toNearestOrEven(_:))
  {
    v120 = rint(v57);
    goto LABEL_18;
  }

  if (v58 == enum case for FloatingPointRoundingRule.up(_:))
  {
    goto LABEL_16;
  }

  if (v58 == enum case for FloatingPointRoundingRule.down(_:))
  {
LABEL_17:
    v120 = floor(v57);
    goto LABEL_18;
  }

  if (v58 == enum case for FloatingPointRoundingRule.towardZero(_:))
  {
    v120 = trunc(v57);
    goto LABEL_18;
  }

  if (v58 != enum case for FloatingPointRoundingRule.awayFromZero(_:))
  {
    sub_10007DA58();
    (*(v91 + 8))(v94, v90);
LABEL_18:
    v34 = v120;
    (*(v91 + 8))(v96, v90);
    v119 = v34;

    v118[4] = v99;
    v25[0] = sub_1000094DC(&qword_10009AC30, &qword_10007F260);
    sub_1000142C8();
    sub_10007DB48();
    v26 = v118;
    v118[0] = v118[5];
    v118[1] = v118[6];
    v118[2] = v118[7];
    v118[3] = v118[8];
    v25[1] = sub_1000094DC(&qword_10009B930, &qword_10007FE48);
    sub_100048DB0();
    sub_10007D938();
    sub_100048E38(v26);
    v29 = v117;
    v117[0] = v118[9];
    v117[1] = v118[10];
    v117[2] = v118[11];
    v117[3] = v118[12];
    v27 = sub_1000094DC(&qword_10009B940, &qword_10007FE50);
    v28 = sub_1000094DC(&qword_10009B948, &qword_10007FE58);
    sub_100048E64();
    v17 = sub_10007DA38();
    v43 = &v116;
    v116 = v17;
    KeyPath = swift_getKeyPath();
    sub_100045BF8(v102, v79);
    v30 = v71;
    (*(v70 + 16))(v74, v101, v68);
    v31 = (*(v76 + 80) + 16) & ~*(v76 + 80);
    v36 = 7;
    v32 = (v31 + v77 + *(v30 + 80)) & ~*(v30 + 80);
    v33 = (v32 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    v18 = sub_100046264(v79, v37 + v31);
    (*(v70 + 32))(v37 + v32, v74, v68, v18);
    v19 = v35;
    v20 = v52;
    v21 = v37;
    *(v37 + v33) = v34;
    *(v21 + v19) = v20;
    v22 = swift_allocObject();
    v23 = v37;
    v39 = v22;
    *(v22 + 16) = v61;
    *(v22 + 24) = v23;
    v40 = sub_1000094DC(&qword_10009B958, &qword_10007FE88);
    v41 = sub_1000094DC(&qword_10009B910, &qword_10007FE28);
    v42 = sub_100049400();
    sub_100048A80();
    sub_10007D598();
    sub_10003F93C();
    v44 = sub_1000489E8();
    v24 = sub_10003E670();
    sub_10003F954(v67, v80, v63, v44, v24, v87);
    (*(v64 + 8))(v67, v63);
    (*(v81 + 8))(v84, v80);
    v45 = sub_100048940();
    sub_1000354E8(v87, v85, v89);
    sub_100049488(v87);
    sub_100049518(v89, v87);
    sub_1000354E8(v87, v85, v60);
    sub_100049488(v87);
    return sub_100049488(v89);
  }

  v46 = *&v57 >> 63;
  if (v57 >= 0.0)
  {
LABEL_16:
    v120 = ceil(v57);
    goto LABEL_18;
  }

  if (v46 == 1)
  {
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

double sub_10004215C(char *a1, uint64_t a2, uint64_t a3)
{
  v13 = a1;
  v19 = a2;
  v18 = a3;
  v21 = a2;
  v16 = *(a2 - 8);
  v14 = a2 - 8;
  v15 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a3);
  v17 = v4 - v15;
  (*(v16 + 16))(v4 - v15);
  if (sub_10007DCD8() > 64)
  {
    v4[1] = sub_10004A5C8();
    sub_10004A640();
    sub_10007D7B8();
    v5 = *(v16 + 8);
    v4[2] = v16 + 8;
    v5(v13, v19);
    v5(v17, v19);
    return v20;
  }

  else if (sub_10007DCE8())
  {
    v8 = sub_10007DCC8();
    v7 = *(v16 + 8);
    v6 = v16 + 8;
    v7(v13, v19);
    v7(v17, v19);
    return v8;
  }

  else
  {
    v11 = sub_10007DCC8();
    v10 = *(v16 + 8);
    v9 = v16 + 8;
    v10(v13, v19);
    v10(v17, v19);
    return v11;
  }
}

uint64_t *sub_1000423E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v41 = a6;
  v75 = a1;
  v76 = a2;
  v89 = a3;
  v77 = a4;
  v78 = a7;
  v79 = a5;
  v42 = &opaque type descriptor for <<opaque return type of View.widgetAccentable(_:)>>;
  v120 = 0;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v114 = 0;
  v113 = 0.0;
  v112 = 0;
  v101 = 0;
  v80 = 0;
  v43 = sub_10007D588();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v43);
  v47 = v26 - v46;
  v48 = sub_1000094DC(&qword_10009B968, &qword_10007FE90);
  v49 = *(v48 - 8);
  v50 = v48 - 8;
  v51 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v48);
  v52 = v26 - v51;
  v53 = sub_1000094DC(&qword_10009B970, &qword_10007FE98);
  v54 = *(v53 - 8);
  v55 = v53 - 8;
  v56 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v53);
  v57 = v26 - v56;
  v58 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v26 - v56);
  v59 = v26 - v58;
  v60 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v26 - v58);
  v61 = v26 - v60;
  v120 = v26 - v60;
  v62 = sub_1000094DC(&qword_10009B978, &qword_10007FEA0);
  v63 = (*(*(v62 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v62);
  v64 = v26 - v63;
  v65 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v26 - v63);
  v66 = v26 - v65;
  v67 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v26 - v65);
  v68 = v26 - v67;
  v119 = v26 - v67;
  v91 = sub_1000094DC(&qword_10009B718, &qword_100080120);
  v69 = (*(*(v91 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v80);
  v11 = (v26 - v69);
  v92 = (v26 - v69);
  v97 = sub_10007D6D8();
  v93 = *(v97 - 8);
  v94 = v97 - 8;
  v70 = (*(v93 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v97);
  v95 = v26 - v70;
  v71 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v26 - v70);
  v96 = v26 - v71;
  v72 = sub_1000094DC(&qword_10009B808, &unk_10007FC80);
  v73 = (*(*(v72 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v72);
  v74 = (v26 - v73);
  v81 = sub_1000094DC(&qword_10009B980, &qword_10007FEA8);
  v85 = *(*(v81 - 8) + 64);
  v82 = (v85 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v80);
  v83 = (v26 - v82);
  v84 = (v85 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v86 = (v26 - v84);
  v87 = (v85 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = __chkstk_darwin(v14);
  v88 = (v26 - v87);
  v118 = v26 - v87;
  v117 = v16;
  v116 = v17;
  v115 = v18;
  v114 = v19;
  v113 = v15;
  v112 = v20;
  v90 = type metadata accessor for MessageListView();
  sub_10003FB70((v89 + *(v90 + 20)), v11);
  sub_10007CF08();
  sub_10003FC44(v92);
  (*(v93 + 104))(v95, enum case for WidgetFamily.systemLarge(_:), v97);
  sub_100048CB8();
  v100 = sub_10007DEE8();
  v99 = *(v93 + 8);
  v98 = v93 + 8;
  v99(v95, v97);
  v99(v96, v97);
  v40 = (v100 & 1) != 0;
  sub_1000431B0(v76, v40, v74);
  sub_10007CF88();
  v36 = v21;
  v37 = sub_100047CEC();
  sub_1000450A0();
  sub_10007D3E8();
  sub_100047D94(v74);
  v38 = sub_1000495C8();
  sub_1000354E8(v86, v81, v88);
  result = sub_100047D94(v86);
  v39 = v79 - 1;
  if (__OFSUB__(v79, 1))
  {
    __break(1u);
  }

  else
  {
    if (v75 < v39)
    {
      sub_10007D578();
      v30 = sub_10004975C();
      sub_10003F924();
      sub_10007D2D8();
      (*(v44 + 8))(v47, v43);
      KeyPath = swift_getKeyPath();
      v24 = (v89 + *(v90 + 24));
      v28 = *v24;
      v29 = v24[1];

      v107 = v28;
      v108 = v29;
      sub_1000094DC(&qword_10009B728, &qword_100080340);
      sub_10007D518();
      v32 = v104;
      v33 = v105;
      v31 = v106;

      v102 = v43;
      v103 = v30;
      swift_getOpaqueTypeConformance2();
      sub_100076930(KeyPath, v32, v33, v48, v31);

      (*(v49 + 8))(v52, v48);
      v35 = sub_10004966C();
      sub_1000354E8(v59, v53, v61);
      sub_10004A418(v59);
      v101 = v59;
      sub_10004A4BC(v61, v57);
      sub_1000354E8(v57, v53, v59);
      sub_10004A418(v57);
      v25 = sub_10004A4BC(v59, v64);
      (*(v54 + 56))(v64, 0, 1, v53, v25);
      sub_100059804(v64, v53, v66);
      sub_100049864(v64);
      sub_10004994C(v66, v68);
      sub_10004A418(v59);
      sub_10004A418(v61);
    }

    else
    {
      (*(v54 + 56))(v64, 1, 1, v53);
      sub_10004966C();
      sub_100059804(v64, v53, v66);
      sub_100049864(v64);
      sub_10004994C(v66, v68);
    }

    sub_100049ABC(v88, v83);
    v27 = v111;
    v111[0] = v83;
    sub_10004A1B4(v68, v66);
    v111[1] = v66;
    v26[0] = v110;
    v110[0] = v81;
    v110[1] = v62;
    v26[1] = v109;
    v109[0] = v38;
    v109[1] = sub_10004A380();
    sub_10003A014(v27, 2uLL, v26[0], v41);
    sub_100049864(v66);
    sub_100047D94(v83);
    sub_100049864(v68);
    return sub_100047D94(v88);
  }

  return result;
}