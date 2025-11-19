uint64_t sub_100314938()
{
  v1 = *(*v0 + 48);
  *(*v0 + 312) = v1;
  if (v1)
  {
    v2 = sub_1003150B4;
  }

  else
  {
    v2 = sub_100314A48;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100314A48()
{
  v36 = v0;
  v1 = v0[28];
  v0[40] = v1;
  if (qword_1006E5050 != -1)
  {
    swift_once();
  }

  v2 = sub_10056DF88();
  v0[41] = sub_10000C49C(v2, static Logger.groupActivities);
  v3 = v1;
  v4 = sub_10056DF68();
  v5 = sub_100573448();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v35 = v7;
    *v6 = 136446210;
    v0[30] = v1;
    v8 = v3;
    sub_100009DCC(&qword_1006EE018);
    v9 = sub_100572978();
    v11 = sub_1000C9784(v9, v10, &v35);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Activity starting item=%{public}s", v6, 0xCu);
    sub_100010474(v7);
  }

  v12 = v0[37];
  v13 = v0[33];
  sub_100320648(v0[32], v12, type metadata accessor for GroupActivitiesManager.Activity);
  sub_10001036C(v12, &qword_1006ED5E8);
  swift_beginAccess();
  sub_10002EA8C(v13 + 16, v12);
  if (v3)
  {
    v14 = [v3 innermostModelObject];
    type metadata accessor for CodableModelObjectIdentity();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
  }

  else
  {
    type metadata accessor for CodableModelObjectIdentity();
    swift_allocObject();
    swift_deallocPartialClassInstance();
    v15 = 0;
  }

  v17 = v0[37];
  v16 = v0[38];

  *(v17 + 56) = v15;
  type metadata accessor for CodableListeningProperties();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v17 + 48) = v18;
  v19 = v16;

  v20 = sub_10056DF68();
  v21 = sub_100573448();
  if (os_log_type_enabled(v20, v21))
  {
    v23 = v0[36];
    v22 = v0[37];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v35 = v25;
    *v24 = 136446210;
    swift_beginAccess();
    sub_100320648(v22, v23, type metadata accessor for GroupActivitiesManager.Activity);
    v26 = sub_100572978();
    v28 = sub_1000C9784(v26, v27, &v35);

    *(v24 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "🚀 Activiting activity=%{public}s", v24, 0xCu);
    sub_100010474(v25);
  }

  v29 = v0[37];
  v30 = v0[35];
  swift_beginAccess();
  sub_100320648(v29, v30, type metadata accessor for GroupActivitiesManager.Activity);
  v31 = swift_task_alloc();
  v0[42] = v31;
  v32 = sub_10032101C(&qword_1006ED5D0, type metadata accessor for GroupActivitiesManager.Activity);
  *v31 = v0;
  v31[1] = sub_100314EBC;
  v33 = v0[34];

  return GroupActivity.activate()(v33, v32);
}

uint64_t sub_100314EBC()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  sub_10032099C(*(v2 + 280), type metadata accessor for GroupActivitiesManager.Activity);
  if (v0)
  {
    v3 = sub_1003154E4;
  }

  else
  {
    v3 = sub_100315004;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100315004()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 296);
  v3 = *(v0 + 248);

  sub_10032099C(v2, type metadata accessor for GroupActivitiesManager.Activity);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1003150B4()
{
  v31 = v0;
  swift_willThrow();

  v0[40] = 0;
  if (qword_1006E5050 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  v0[41] = sub_10000C49C(v1, static Logger.groupActivities);
  v2 = sub_10056DF68();
  v3 = sub_100573448();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v30[0] = v5;
    *v4 = 136446210;
    v0[30] = 0;
    sub_100009DCC(&qword_1006EE018);
    v6 = sub_100572978();
    v8 = sub_1000C9784(v6, v7, v30);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Activity starting item=%{public}s", v4, 0xCu);
    sub_100010474(v5);
  }

  v9 = v0[37];
  v10 = v0[33];
  sub_100320648(v0[32], v9, type metadata accessor for GroupActivitiesManager.Activity);
  sub_10001036C(v9, &qword_1006ED5E8);
  swift_beginAccess();
  sub_10002EA8C(v10 + 16, v9);
  type metadata accessor for CodableModelObjectIdentity();
  swift_allocObject();
  swift_deallocPartialClassInstance();
  v12 = v0[37];
  v11 = v0[38];

  *(v12 + 56) = 0;
  type metadata accessor for CodableListeningProperties();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v12 + 48) = v13;
  v14 = v11;

  v15 = sub_10056DF68();
  v16 = sub_100573448();
  if (os_log_type_enabled(v15, v16))
  {
    v18 = v0[36];
    v17 = v0[37];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30[0] = v20;
    *v19 = 136446210;
    swift_beginAccess();
    sub_100320648(v17, v18, type metadata accessor for GroupActivitiesManager.Activity);
    v21 = sub_100572978();
    v23 = sub_1000C9784(v21, v22, v30);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "🚀 Activiting activity=%{public}s", v19, 0xCu);
    sub_100010474(v20);
  }

  v24 = v0[37];
  v25 = v0[35];
  swift_beginAccess();
  sub_100320648(v24, v25, type metadata accessor for GroupActivitiesManager.Activity);
  v26 = swift_task_alloc();
  v0[42] = v26;
  v27 = sub_10032101C(&qword_1006ED5D0, type metadata accessor for GroupActivitiesManager.Activity);
  *v26 = v0;
  v26[1] = sub_100314EBC;
  v28 = v0[34];

  return GroupActivity.activate()(v28, v27);
}

uint64_t sub_1003154E4()
{
  v20 = v0;
  swift_errorRetain();
  v1 = sub_10056DF68();
  v2 = sub_100573448();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 344);
    v4 = *(v0 + 320);
    v17 = *(v0 + 304);
    v18 = *(v0 + 296);
    v5 = *(v0 + 248);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136446210;
    *(v0 + 232) = v3;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60);
    v8 = sub_100572978();
    v10 = sub_1000C9784(v8, v9, &v19);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Activation failed=%{public}s", v6, 0xCu);
    sub_100010474(v7);

    v11 = v18;
  }

  else
  {
    v12 = *(v0 + 320);
    v13 = *(v0 + 296);
    v14 = *(v0 + 248);

    v11 = v13;
  }

  sub_10032099C(v11, type metadata accessor for GroupActivitiesManager.Activity);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100315708(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = sub_100009DCC(&qword_1006E6420);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_100572F48();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_100320648(a3, &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GroupActivitiesManager.Activity);
  v13 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a2;
  v14[5] = a1;
  sub_1003205E0(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for GroupActivitiesManager.Activity);
  v15 = a1;

  sub_1001B3FAC(0, 0, v11, &unk_100594CC8, v14);
}

uint64_t sub_1003158EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_1000116F0;

  return sub_1003144CC(a5, a6);
}

uint64_t sub_100315998(uint64_t a1, unint64_t a2)
{
  v5._countAndFlagsBits = 0x616C506572616853;
  v5._object = 0xEC0000003D444979;
  if (sub_100572B28(v5))
  {
    sub_10031F598(0xC0007uLL, a1, a2);
    a1 = sub_1005729D8();
  }

  else
  {
  }

  return a1;
}

uint64_t GroupActivitiesManager.sessionForReactionAssociation()()
{
  if (GroupActivitiesManager.hasJoined.getter())
  {
  }

  else
  {
    return 0;
  }
}

void sub_100315A68()
{
  v1 = sub_100009DCC(&qword_1006EE010);
  __chkstk_darwin(v1);
  v75 = &v67 - v2;
  v3 = sub_100009DCC(&qword_1006ED708);
  v4 = __chkstk_darwin(v3 - 8);
  v74 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v67 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v67 - v10;
  __chkstk_darwin(v9);
  v13 = &v67 - v12;
  v14 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v20 = __chkstk_darwin(v19);
  v22 = &v67 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v67 - v24;
  v26 = __chkstk_darwin(v23);
  v29 = &v67 - v28;
  v77 = v0;
  if (*(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {
    v71 = v27;
    v72 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
    v76 = v26;

    sub_10056D2B8();

    v30 = *(v29 + 6);
    if (!v30)
    {
      v37 = v29;
LABEL_9:
      sub_10032099C(v37, type metadata accessor for GroupActivitiesManager.Activity);
      return;
    }

    v69 = v18;
    v70 = v25;
    v73 = *(v30 + 16);
    sub_10032099C(v29, type metadata accessor for GroupActivitiesManager.Activity);
    v31 = v77 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity;
    swift_beginAccess();
    v32 = *(v15 + 48);
    if (!v32(v31, 1, v76))
    {
      type metadata accessor for CodableListeningProperties();
      v33 = swift_allocObject();
      v34 = v73;
      *(v33 + 16) = v73;
      *(v31 + 48) = v33;
      v35 = v34;
    }

    swift_endAccess();
    if ((GroupActivitiesManager.hasJoined.getter() & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_10000CC8C(v31, v13, &qword_1006ED708);
    v36 = v76;
    if (v32(v13, 1, v76) == 1)
    {

      sub_10001036C(v13, &qword_1006ED708);
      return;
    }

    v38 = v70;
    sub_1003205E0(v13, v70, type metadata accessor for GroupActivitiesManager.Activity);
    sub_100320648(v38, v11, type metadata accessor for GroupActivitiesManager.Activity);
    v39 = 1;
    v68 = *(v15 + 56);
    v68(v11, 0, 1, v36);
    if (*(v77 + v72))
    {

      sub_10056D2B8();

      v39 = 0;
    }

    v41 = v75;
    v40 = v76;
    v68(v8, v39, 1, v76);
    v42 = *(v1 + 48);
    sub_10000CC8C(v11, v41, &qword_1006ED708);
    sub_10000CC8C(v8, v41 + v42, &qword_1006ED708);
    if (v32(v41, 1, v40) == 1)
    {
      sub_10001036C(v8, &qword_1006ED708);
      sub_10001036C(v11, &qword_1006ED708);
      v43 = v32(v41 + v42, 1, v40);
      v44 = v70;
      if (v43 == 1)
      {
        sub_10001036C(v41, &qword_1006ED708);
LABEL_15:
        sub_10032099C(v44, type metadata accessor for GroupActivitiesManager.Activity);
LABEL_16:

        return;
      }
    }

    else
    {
      v45 = v74;
      sub_10000CC8C(v41, v74, &qword_1006ED708);
      if (v32(v41 + v42, 1, v40) != 1)
      {
        sub_1003205E0(v41 + v42, v22, type metadata accessor for GroupActivitiesManager.Activity);
        v48 = *(v45 + 56);
        v44 = v70;
        if (v48)
        {
          v49 = *(v22 + 7);
          if (v49)
          {
            v50 = *(v49 + 16);
            v51 = *(v48 + 16);
            v52 = v50;
            v53 = [v51 identifiers];
            v54 = v41;
            v55 = [v52 identifiers];
            v56 = [v53 intersectsSet:v55];

            sub_10032099C(v22, type metadata accessor for GroupActivitiesManager.Activity);
            sub_10001036C(v8, &qword_1006ED708);
            sub_10001036C(v11, &qword_1006ED708);
            sub_10032099C(v74, type metadata accessor for GroupActivitiesManager.Activity);
            sub_10001036C(v54, &qword_1006ED708);
            if (v56)
            {
              goto LABEL_15;
            }

            goto LABEL_27;
          }
        }

        sub_10032099C(v22, type metadata accessor for GroupActivitiesManager.Activity);
        sub_10001036C(v8, &qword_1006ED708);
        sub_10001036C(v11, &qword_1006ED708);
        sub_10032099C(v74, type metadata accessor for GroupActivitiesManager.Activity);
        v47 = v41;
        v46 = &qword_1006ED708;
LABEL_26:
        sub_10001036C(v47, v46);
LABEL_27:
        if (*(v77 + v72))
        {
          sub_100320648(v44, v71, type metadata accessor for GroupActivitiesManager.Activity);

          sub_10056D2C8();
        }

        if (qword_1006E5050 != -1)
        {
          swift_once();
        }

        v57 = sub_10056DF88();
        sub_10000C49C(v57, static Logger.groupActivities);
        v58 = v69;
        sub_100320648(v44, v69, type metadata accessor for GroupActivitiesManager.Activity);
        v59 = sub_10056DF68();
        v60 = sub_100573448();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v78[0] = v62;
          *v61 = 136446210;
          sub_100320648(v58, v71, type metadata accessor for GroupActivitiesManager.Activity);
          v63 = sub_100572978();
          v65 = v64;
          sub_10032099C(v58, type metadata accessor for GroupActivitiesManager.Activity);
          v66 = sub_1000C9784(v63, v65, v78);

          *(v61 + 4) = v66;
          _os_log_impl(&_mh_execute_header, v59, v60, "Updating session activity=%{public}s", v61, 0xCu);
          sub_100010474(v62);
        }

        else
        {

          sub_10032099C(v58, type metadata accessor for GroupActivitiesManager.Activity);
        }

        v37 = v44;
        goto LABEL_9;
      }

      sub_10001036C(v8, &qword_1006ED708);
      sub_10001036C(v11, &qword_1006ED708);
      sub_10032099C(v45, type metadata accessor for GroupActivitiesManager.Activity);
      v44 = v70;
    }

    v46 = &qword_1006EE010;
    v47 = v41;
    goto LABEL_26;
  }
}

void (*sub_10031640C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100316470;
}

void sub_100316470(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_100315A68();
  }
}

void sub_1003164A4()
{
  v1 = v0;
  v102 = sub_100573728();
  v111 = *(v102 - 8);
  __chkstk_darwin(v102);
  v118 = &v95 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100009DCC(&qword_1006EDEC8);
  v120 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v95 - v4;
  v113 = sub_100009DCC(&qword_1006EDED0);
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v110 = &v95 - v6;
  v116 = sub_100009DCC(&qword_1006EDED8);
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v95 - v7;
  v104 = sub_100009DCC(&qword_1006EDEE0);
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v97 = &v95 - v8;
  v9 = sub_100009DCC(&qword_1006EDEE8);
  v105 = *(v9 - 8);
  __chkstk_darwin(v9);
  v101 = &v95 - v10;
  v11 = sub_100009DCC(&qword_1006EDEF0);
  v108 = *(v11 - 8);
  __chkstk_darwin(v11);
  v107 = &v95 - v12;
  v13 = sub_100009DCC(&qword_1006E75F0);
  __chkstk_darwin(v13 - 8);
  v117 = &v95 - v14;
  v15 = sub_100009DCC(&qword_1006EB500);
  v128 = *(v15 - 8);
  __chkstk_darwin(v15);
  v127 = &v95 - v16;
  v122 = sub_100009DCC(&qword_1006EDEF8);
  v98 = *(v122 - 1);
  __chkstk_darwin(v122);
  v96 = &v95 - v17;
  v124 = sub_100009DCC(&unk_1006EDF00);
  v100 = *(v124 - 8);
  __chkstk_darwin(v124);
  v99 = &v95 - v18;
  v19 = sub_100009DCC(&qword_1006ED708);
  __chkstk_darwin(v19 - 8);
  v21 = &v95 - v20;
  if (qword_1006E5050 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v22 = sub_10056DF88();
    sub_10000C49C(v22, static Logger.groupActivities);

    v23 = sub_10056DF68();
    v24 = sub_100573448();

    v25 = os_log_type_enabled(v23, v24);
    v121 = v3;
    v119 = v5;
    v109 = v11;
    v106 = v9;
    v129 = v15;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v133[0] = v27;
      *v26 = 136446210;
      v131[0] = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session);

      sub_100009DCC(&unk_1006EDF68);
      v28 = sub_1005729A8();
      v30 = sub_1000C9784(v28, v29, v133);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "📲 Receiving a new session=%{public}s", v26, 0xCu);
      sub_100010474(v27);
    }

    v130 = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session);
    if (v130)
    {
      break;
    }

    v77 = type metadata accessor for GroupActivitiesManager.Activity(0);
    (*(*(v77 - 8) + 56))(v21, 1, 1, v77);
    v78 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity;
    swift_beginAccess();
    sub_1000F64CC(v21, v1 + v78, &qword_1006ED708);
    swift_endAccess();
    sub_100315A68();
    sub_10001036C(v21, &qword_1006ED708);
    v79 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_sessionSubscriptions;
    swift_beginAccess();
    v3 = *(v1 + v79);
    if ((v3 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      sub_100573DF8();
      sub_10056E3C8();
      sub_10032101C(&qword_1006E6218, &type metadata accessor for AnyCancellable);
      sub_100573138();
      v21 = v133[0];
      v5 = v133[1];
      v80 = v133[2];
      v9 = v133[3];
      v11 = v133[4];
    }

    else
    {
      v81 = -1 << *(v3 + 32);
      v5 = (v3 + 56);
      v80 = ~v81;
      v82 = -v81;
      if (v82 < 64)
      {
        v83 = ~(-1 << v82);
      }

      else
      {
        v83 = -1;
      }

      v11 = v83 & *(v3 + 56);
      swift_bridgeObjectRetain_n();
      v9 = 0;
      v21 = v3;
    }

    v130 = v80;
    for (i = (v80 + 64) >> 6; v21 < 0; v11 = v87)
    {
      v89 = sub_100573E28();
      if (!v89)
      {
        goto LABEL_27;
      }

      v131[4] = v89;
      sub_10056E3C8();
      swift_dynamicCast();
      v15 = v9;
      v87 = v11;
      if (!v132)
      {
        goto LABEL_27;
      }

LABEL_25:
      sub_10056E3B8();

      v9 = v15;
    }

    v85 = v9;
    v86 = v11;
    v15 = v9;
    if (v11)
    {
LABEL_21:
      v87 = (v86 - 1) & v86;
      v88 = *(*(v21 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v86)))));

      if (v88)
      {
        goto LABEL_25;
      }

LABEL_27:
      sub_10025A994();

      *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_nowPlayingSubscription) = 0;

      swift_getKeyPath();
      swift_getKeyPath();
      sub_10056E478();

      v90 = v132;
      swift_getKeyPath();
      swift_getKeyPath();
      v132 = 0;

      sub_10056E488();
      sub_10030DC9C(v90);
      v91 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
      swift_beginAccess();
      *(v1 + v91) = 0;
      v92 = v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext;
      v93 = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext);
      v94 = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext + 8);
      *v92 = xmmword_100582400;
      *(v92 + 16) = 0;
      sub_1003216E0(v93, v94);
      return;
    }

    while (1)
    {
      v15 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        break;
      }

      if (v15 >= i)
      {
        goto LABEL_27;
      }

      v86 = *&v5[8 * v15];
      ++v85;
      if (v86)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  sub_10056D2B8();
  v31 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v32 = *(v31 - 8);
  (*(v32 + 56))(v21, 0, 1, v31);
  v33 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity;
  swift_beginAccess();
  sub_1000F64CC(v21, v1 + v33, &qword_1006ED708);
  swift_endAccess();
  sub_100315A68();
  sub_10001036C(v21, &qword_1006ED708);
  v34 = sub_10031640C(v131);
  v36 = v35;
  if (!(*(v32 + 48))(v35, 1, v31))
  {
    swift_beginAccess();
    sub_10002EA8C(v1 + 16, v133);
    sub_10008B71C(v133, v36, &qword_1006ED5E8);
  }

  v34(v131, 0);
  v37 = v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext;
  v38 = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext);
  v39 = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext + 8);
  *v37 = xmmword_100582400;
  *(v37 + 16) = 0;
  sub_1003216E0(v38, v39);
  if (qword_1006E4D40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100009DCC(&qword_1006EB600);
  v40 = v127;
  sub_10056E448();
  swift_endAccess();
  v123 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_100010BC0(&unk_1006EB608, &qword_1006EB500);
  sub_1003233D8();
  v41 = v96;
  v42 = v129;
  sub_10056E508();
  (*(v128 + 8))(v40, v42);
  v129 = sub_1000D3B98(0, &qword_1006E84A0);
  v43 = sub_1005735E8();
  v133[0] = v43;
  v44 = sub_1005735C8();
  v45 = *(v44 - 8);
  v125 = *(v45 + 56);
  v127 = (v45 + 56);
  v46 = v117;
  v126 = v44;
  v125(v117, 1, 1, v44);
  sub_100010BC0(&unk_1006EDF18, &qword_1006EDEF8);
  v47 = sub_1002C90FC();
  v48 = v99;
  v49 = v122;
  v128 = v47;
  sub_10056E4E8();
  sub_10001036C(v46, &qword_1006E75F0);

  (*(v98 + 8))(v41, v49);
  swift_allocObject();
  swift_weakInit();
  v122 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100010BC0(&qword_1006EDF28, &unk_1006EDF00);
  v50 = v124;
  sub_10056E518();

  (*(v100 + 8))(v48, v50);
  v51 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_sessionSubscriptions;
  swift_beginAccess();
  sub_10056E3A8();
  swift_endAccess();

  v52 = v97;
  sub_10056D248();
  v53 = sub_1005735E8();
  v133[0] = v53;
  v125(v46, 1, 1, v44);
  sub_100010BC0(&qword_1006EDF30, &qword_1006EDEE0);
  v54 = v101;
  v55 = v104;
  sub_10056E4E8();
  sub_10001036C(v46, &qword_1006E75F0);

  (*(v103 + 8))(v52, v55);
  sub_100010BC0(&qword_1006EDF38, &qword_1006EDEE8);
  v56 = v107;
  v57 = v106;
  sub_10056E4C8();
  (*(v105 + 8))(v54, v57);
  swift_allocObject();
  swift_weakInit();
  sub_100010BC0(&qword_1006EDF40, &qword_1006EDEF0);
  v58 = v109;
  sub_10056E518();

  (*(v108 + 8))(v56, v58);
  v124 = v51;
  swift_beginAccess();
  sub_10056E3A8();
  swift_endAccess();

  v59 = v130;
  v60 = v110;
  sub_10056D298();
  v61 = sub_1005735E8();
  v133[0] = v61;
  v62 = v125;
  v125(v46, 1, 1, v126);
  sub_100010BC0(&qword_1006EDF48, &qword_1006EDED0);
  v63 = v114;
  v64 = v113;
  sub_10056E4E8();
  sub_10001036C(v46, &qword_1006E75F0);

  (*(v112 + 8))(v60, v64);
  v65 = swift_allocObject();
  swift_weakInit();
  v66 = swift_allocObject();
  *(v66 + 16) = v65;
  *(v66 + 24) = v59;
  sub_100010BC0(&unk_1006EDF50, &qword_1006EDED8);

  v67 = v116;
  sub_10056E518();

  (*(v115 + 8))(v63, v67);
  swift_beginAccess();
  sub_10056E3A8();
  swift_endAccess();

  v123 = objc_opt_self();
  v68 = [v123 defaultCenter];
  v69 = v118;
  sub_100573738();

  v70 = sub_1005735E8();
  v133[0] = v70;
  v62(v46, 1, 1, v126);
  v116 = sub_10032101C(&qword_1006EA5C0, &type metadata accessor for NSNotificationCenter.Publisher);
  v71 = v119;
  v72 = v102;
  sub_10056E4E8();
  sub_10001036C(v46, &qword_1006E75F0);

  v115 = *(v111 + 8);
  (v115)(v69, v72);
  swift_allocObject();
  swift_weakInit();
  v122 = sub_100010BC0(&qword_1006EDF60, &qword_1006EDEC8);
  v73 = v121;
  sub_10056E518();

  v120 = *(v120 + 8);
  (v120)(v71, v73);
  swift_beginAccess();
  sub_10056E3A8();
  swift_endAccess();

  v74 = [v123 defaultCenter];
  v75 = sub_100572898();
  sub_100573738();

  v76 = sub_1005735E8();
  v133[0] = v76;
  v125(v46, 1, 1, v126);
  sub_10056E4E8();
  sub_10001036C(v46, &qword_1006E75F0);

  (v115)(v69, v72);
  swift_allocObject();
  swift_weakInit();
  sub_10056E518();

  (v120)(v71, v73);
  swift_beginAccess();
  sub_10056E3A8();
  swift_endAccess();
}

uint64_t sub_100317C44(__int128 *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = a1[5];
    v13 = a1[4];
    v14 = v4;
    v5 = a1[7];
    v15 = a1[6];
    v16 = v5;
    v6 = a1[1];
    v9 = *a1;
    v10 = v6;
    v7 = a1[3];
    v11 = a1[2];
    v12 = v7;
    v8 = &v9;
    CFRange.init(_:)(*(&v3 - 1));
    v17[4] = v13;
    v17[5] = v14;
    v17[6] = v15;
    v17[7] = v16;
    v17[0] = v9;
    v17[1] = v10;
    v17[2] = v11;
    v17[3] = v12;
    sub_100317CF4(v17);
  }

  return result;
}

void sub_100317CF4(unsigned __int8 *a1)
{
  v107 = *a1;
  v2 = a1[1];
  v105 = a1[2];
  LODWORD(v106) = v2;
  v3 = *(a1 + 2);
  v104 = *(a1 + 1);
  v102 = v3;
  v100 = a1[24];
  v101 = *(a1 + 4);
  v4 = *(a1 + 3);
  v109 = *(a1 + 2);
  v99 = v4;
  v5 = *(a1 + 10);
  v6 = *(a1 + 11);
  v7 = a1[96];
  v8 = *(a1 + 13);
  v9 = a1[112];
  v10 = *(a1 + 15);
  v11 = sub_100009DCC(&qword_1006E6420);
  __chkstk_darwin(v11 - 8);
  v103 = &v99 - v12;
  v13 = *(a1 + 5);
  v130[4] = *(a1 + 4);
  v130[5] = v13;
  v14 = *(a1 + 7);
  v130[6] = *(a1 + 6);
  v130[7] = v14;
  v15 = *(a1 + 1);
  v130[0] = *a1;
  v130[1] = v15;
  v16 = *(a1 + 3);
  v130[2] = *(a1 + 2);
  v130[3] = v16;
  if (sub_1003234E4(v130) == 1)
  {
    if (qword_1006E4D40 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10056E478();

    v17 = v115;
    v18 = v116;
    v19 = v117;
    v20 = v118;
    v21 = v119;
    v22 = v120;
    v24 = v122;
    v23 = v123;
    v25 = v121;
    v26 = v124;
    v6 = v125;
    v7 = v126;
    v8 = v127;
    v9 = v128;
    v10 = v129;
  }

  else
  {
    v17 = v107;
    v25 = v109;
    v19 = v105;
    v18 = v106;
    v20 = v104;
    v21 = v102;
    v22 = v100;
    v23 = v101;
    v26 = v5;
    v24 = v99;
  }

  v109 = v25;
  v27 = v17;
  LODWORD(v102) = v17 & 1;
  v115 = v17 & 1;
  v116 = v18 & 1;
  v117 = v19 & 1;
  v118 = v20;
  v119 = v21;
  v107 = v22 & 1;
  v120 = v22 & 1;
  v121 = v25;
  v122 = v24;
  v123 = v23;
  v124 = v26;
  v125 = v6;
  v126 = v7;
  v127 = v8;
  v128 = v9;
  v129 = v10;
  v28 = 256;
  if (v22)
  {
    v29 = 256;
  }

  else
  {
    v29 = 0;
  }

  sub_1001A9624(&v115, &v111);
  sub_10000CC8C(a1, &v111, &qword_1006EDF78);
  v30 = v109;
  v31 = sub_1001B4D1C(0, v109);
  LODWORD(v30) = sub_1001B4D1C(2, v30);
  v32 = v6;
  sub_100108D2C(&v115);
  v33 = v31;
  v34 = v108 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext;
  v35 = *(v108 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext);
  v36 = *(v108 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext + 8);
  v37 = *(v108 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext + 16);
  v105 = v30;
  if ((v30 & 1) == 0)
  {
    v28 = 0;
  }

  v38 = v28 & 0xFFFFFFFFFFFFFFFELL | v33 & 1;
  v39 = v29 & 0xFFFE | v27 & 1;
  v104 = v33;
  if (v36 == 1)
  {
    v40 = v32;
    sub_1003216E0(v35, 1);
    sub_1003216E0(v38, v6);
    goto LABEL_22;
  }

  if ((v33 & 1) != (v35 & 1) || ((v105 ^ ((v35 & 0x100) == 0)) & 1) == 0)
  {
    goto LABEL_21;
  }

  if (!v36)
  {
    if (!v6)
    {
      if ((v102 ^ v37))
      {
        goto LABEL_22;
      }

      v43 = v37 & 0x100;
      goto LABEL_56;
    }

LABEL_21:
    v44 = v32;
    goto LABEL_22;
  }

  if (!v6 || (LODWORD(v109) = v37, v106 = sub_1000D3B98(0, &qword_1006E8498), v41 = v32, sub_100323800(v35, v36), v42 = sub_100573A58(), v41, sub_1003216E0(v35, v36), (v42 & 1) == 0) || ((v102 ^ v109) & 1) != 0)
  {
LABEL_22:
    v45 = *v34;
    v46 = *(v34 + 8);
    *v34 = v38;
    *(v34 + 8) = v6;
    *(v34 + 16) = v39;
    sub_1003216E0(v45, v46);
    if (qword_1006E5050 != -1)
    {
      swift_once();
    }

    v106 = v6;
    v47 = sub_10056DF88();
    sub_10000C49C(v47, static Logger.groupActivities);
    v48 = v32;
    v49 = sub_10056DF68();
    v50 = sub_100573448();
    *&v109 = v48;

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v110 = v52;
      *v51 = 136446210;
      LOBYTE(v111) = v104 & 1;
      HIBYTE(v111) = v105 & 1;
      v112 = v106;
      v113 = v102;
      v53 = v107;
      v114 = v107;
      v54 = v109;
      v55 = sub_1005729A8();
      v57 = sub_1000C9784(v55, v56, &v110);

      *(v51 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v49, v50, "🛂 Checking eligibility with context=%{public}s", v51, 0xCu);
      sub_100010474(v52);

      if ((v53 & 1) == 0)
      {
LABEL_26:
        v58 = sub_10056DF68();
        v59 = sub_100573448();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&_mh_execute_header, v58, v59, "🛂 User did not accept GDPR", v60, 2u);
        }

        v61 = sub_100572F48();
        v62 = v103;
        (*(*(v61 - 8) + 56))(v103, 1, 1, v61);
        sub_100572F08();
        v63 = sub_100572EF8();
        v64 = swift_allocObject();
        *(v64 + 16) = v63;
        *(v64 + 24) = &protocol witness table for MainActor;
        sub_1001B48B8(0, 0, v62, &unk_100594C00, v64);
        goto LABEL_52;
      }
    }

    else
    {

      v53 = v107;
      if ((v107 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v65 = v106;
    if (!v106 || ([v109 capabilities] & 1) == 0)
    {
      if (v104)
      {
        if (v105)
        {
          if (v102)
          {
            if (v65)
            {
              v66 = v109;
              if (([v66 capabilities] & 1) == 0)
              {
                v67 = sub_10056DF68();
                v68 = sub_100573448();
                if (os_log_type_enabled(v67, v68))
                {
                  v69 = swift_slowAlloc();
                  *v69 = 0;
                  _os_log_impl(&_mh_execute_header, v67, v68, "🛂 User is not a subscriber -> up sell", v69, 2u);
                }

                v70 = sub_100572F48();
                v71 = v103;
                (*(*(v70 - 8) + 56))(v103, 1, 1, v70);
                v72 = swift_allocObject();
                v72[2] = 0;
                v72[3] = 0;
                v72[4] = v108;

                sub_1001B3FAC(0, 0, v71, &unk_100594C20, v72);
                sub_100108D2C(&v115);

                goto LABEL_53;
              }

              v65 = v106;
            }

            v92 = v109;
            v89 = sub_10056DF68();
            v93 = sub_100573448();

            if (!os_log_type_enabled(v89, v93))
            {
              sub_100108D2C(&v115);

              goto LABEL_67;
            }

            v94 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            v110 = v95;
            *v94 = 136446210;
            v111 = 257;
            v112 = v65;
            v113 = v102;
            v114 = v53;
            v32 = v92;
            v96 = sub_1005729A8();
            v98 = sub_1000C9784(v96, v97, &v110);

            *(v94 + 4) = v98;
            _os_log_impl(&_mh_execute_header, v89, v93, "🛂 Unknown prepare case with=%{public}s", v94, 0xCu);
            sub_100010474(v95);

            goto LABEL_64;
          }

          v84 = sub_10056DF68();
          v85 = sub_100573448();
          if (os_log_type_enabled(v84, v85))
          {
            v86 = swift_slowAlloc();
            *v86 = 0;
            _os_log_impl(&_mh_execute_header, v84, v85, "🛂 User is not signed in -> request authentication", v86, 2u);
          }

          v87 = sub_100572F48();
          v78 = v103;
          (*(*(v87 - 8) + 56))(v103, 1, 1, v87);
          v79 = swift_allocObject();
          v79[2] = 0;
          v79[3] = 0;
          v79[4] = v108;

          v80 = &unk_100594C10;
LABEL_51:
          sub_1001B3FAC(0, 0, v78, v80, v79);
LABEL_52:
          sub_100108D2C(&v115);

LABEL_53:

          return;
        }

        v81 = sub_10056DF68();
        v82 = sub_100573448();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          *v83 = 0;
          _os_log_impl(&_mh_execute_header, v81, v82, "🛂 Apple Music content disabled", v83, 2u);
        }

        v76 = 1;
      }

      else
      {
        v73 = sub_10056DF68();
        v74 = sub_100573448();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          *v75 = 0;
          _os_log_impl(&_mh_execute_header, v73, v74, "🛂 Music services restricted", v75, 2u);
        }

        v76 = 0;
      }

      sub_10031CEB8(v76);
      sub_100108D2C(&v115);

      return;
    }

    v77 = sub_100572F48();
    v78 = v103;
    (*(*(v77 - 8) + 56))(v103, 1, 1, v77);
    v79 = swift_allocObject();
    v79[2] = 0;
    v79[3] = 0;
    v79[4] = v108;

    v80 = &unk_100594C30;
    goto LABEL_51;
  }

  v43 = v109 & 0x100;
LABEL_56:
  if ((v107 ^ (v43 >> 8)))
  {
    goto LABEL_22;
  }

  if (qword_1006E5050 != -1)
  {
    swift_once();
  }

  v88 = sub_10056DF88();
  sub_10000C49C(v88, static Logger.groupActivities);
  v89 = sub_10056DF68();
  v90 = sub_100573448();
  if (!os_log_type_enabled(v89, v90))
  {
    goto LABEL_65;
  }

  v91 = swift_slowAlloc();
  *v91 = 0;
  _os_log_impl(&_mh_execute_header, v89, v90, "Eligibility context didn't change.", v91, 2u);
LABEL_64:

LABEL_65:
  sub_100108D2C(&v115);

LABEL_67:
}

uint64_t sub_10031895C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10056E478();

    swift_getKeyPath();
    swift_getKeyPath();

    sub_10056E488();
    sub_10030DC9C(v1);
  }

  return result;
}

uint64_t sub_100318A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v67 = a3;
  v5 = sub_10056DF18();
  v59 = *(v5 - 8);
  v60 = v5;
  __chkstk_darwin(v5);
  v58 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10056DEC8();
  v61 = *(v7 - 8);
  v62 = v7;
  __chkstk_darwin(v7);
  v63 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100009DCC(&qword_1006ED5C8);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v65 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v57 - v14;
  __chkstk_darwin(v13);
  v17 = &v57 - v16;
  if (qword_1006E5050 != -1)
  {
    swift_once();
  }

  v18 = sub_10056DF88();
  sub_10000C49C(v18, static Logger.groupActivities);
  v19 = *(v10 + 16);
  v68 = a1;
  v20 = a1;
  v21 = v19;
  v19(v17, v20, v9);
  v22 = sub_10056DF68();
  v23 = sub_100573448();
  v24 = os_log_type_enabled(v22, v23);
  v66 = v10;
  v64 = v21;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v57 = a2;
    v26 = v25;
    v27 = swift_slowAlloc();
    v28 = v21;
    v29 = v27;
    *&v77[0] = v27;
    *v26 = 136446210;
    v28(v15, v17, v9);
    v30 = sub_1005729A8();
    v31 = v10;
    v33 = v32;
    (*(v31 + 8))(v17, v9);
    v34 = sub_1000C9784(v30, v33, v77);

    *(v26 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v22, v23, "📥 Session update with state=%{public}s", v26, 0xCu);
    sub_100010474(v29);
  }

  else
  {

    (*(v10 + 8))(v17, v9);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  v36 = v68;
  if (result)
  {
    v37 = result;
    v38 = v65;
    v64(v65, v68, v9);
    v39 = v66;
    v40 = (*(v66 + 88))(v38, v9);
    if (v40 == enum case for GroupSession.State.invalidated<A>(_:))
    {
      (*(v39 + 96))(v38, v9);
      sub_100319184();
    }

    else if (v40 == enum case for GroupSession.State.waiting<A>(_:))
    {
      sub_1003234CC(&v69);
      v77[4] = v73;
      v77[5] = v74;
      v77[6] = v75;
      v77[7] = v76;
      v77[0] = v69;
      v77[1] = v70;
      v77[2] = v71;
      v77[3] = v72;
      sub_100317CF4(v77);
    }

    else
    {
      if (v40 != enum case for GroupSession.State.joined<A>(_:))
      {
        result = sub_1005740F8();
        __break(1u);
        return result;
      }

      v41 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostJoinSessionState;
      v42 = v63;
      if (*(v37 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostJoinSessionState))
      {
        v43 = qword_1006E5688;

        if (v43 != -1)
        {
          swift_once();
        }

        v44 = sub_10056DF08();
        sub_10000C49C(v44, static OSSignposter.sharePlay);
        v45 = sub_10056DEE8();
        sub_10056DF28();
        v46 = sub_1005736C8();
        if (sub_100573BE8())
        {

          v47 = v58;
          sub_10056DF58();

          v49 = v59;
          v48 = v60;
          if ((*(v59 + 88))(v47, v60) == enum case for OSSignpostError.doubleEnd(_:))
          {
            v50 = "[Error] Interval already ended";
          }

          else
          {
            (*(v49 + 8))(v47, v48);
            v50 = "";
          }

          v51 = swift_slowAlloc();
          *v51 = 0;
          v52 = sub_10056DEA8();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v45, v46, v52, "JoinSession", v50, v51, 2u);

          v36 = v68;
        }

        (*(v61 + 8))(v42, v62);
        *(v37 + v41) = 0;
      }
    }

    sub_10030E5B0();
    swift_beginAccess();
    sub_10002EA8C(v37 + 16, &v69);
    v53 = *(&v70 + 1);
    v54 = v71;
    sub_10000C8CC(&v69, *(&v70 + 1));
    v55 = v67;
    v56 = sub_10056D238();
    (*(v54 + 40))(v55, v36, v56 & 1, v53, v54);

    return sub_100010474(&v69);
  }

  return result;
}

uint64_t sub_100319184()
{
  v1 = v0;
  v2 = sub_100009DCC(&qword_1006E6420);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  if (qword_1006E5050 != -1)
  {
    swift_once();
  }

  v5 = sub_10056DF88();
  sub_10000C49C(v5, static Logger.groupActivities);
  swift_errorRetain();
  v6 = sub_10056DF68();
  v7 = sub_100573448();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = sub_1005745D8();
    v12 = sub_1000C9784(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Session invalidated for reason=%{public}s", v8, 0xCu);
    sub_100010474(v9);
  }

  v13 = sub_100572F48();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v1;

  sub_1001B3FAC(0, 0, v4, &unk_100594CA0, v14);
}

uint64_t sub_1003193D8()
{
  v0 = sub_100009DCC(&qword_1006E8040);
  __chkstk_darwin(v0 - 8);
  v2 = v14 - v1;
  v3 = sub_10056CAA8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10056C358();
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = v7;
  v14[1] = sub_1005728D8();
  v14[2] = v9;
  sub_100573E78();
  if (!*(v8 + 16) || (v10 = sub_1000EB93C(v15), (v11 & 1) == 0))
  {

    sub_1000F4130(v15);
LABEL_8:
    v16 = 0u;
    v17 = 0u;
    goto LABEL_9;
  }

  sub_100081F38(*(v8 + 56) + 32 * v10, &v16);
  sub_1000F4130(v15);

  if (!*(&v17 + 1))
  {
LABEL_9:
    sub_10001036C(&v16, &qword_1006EA040);
    (*(v4 + 56))(v2, 1, 1, v3);
    goto LABEL_10;
  }

  v12 = swift_dynamicCast();
  (*(v4 + 56))(v2, v12 ^ 1u, 1, v3);
  if ((*(v4 + 48))(v2, 1, v3) != 1)
  {
    (*(v4 + 32))(v6, v2, v3);
    goto LABEL_12;
  }

LABEL_10:
  sub_10056CA98();
  if ((*(v4 + 48))(v2, 1, v3) != 1)
  {
    sub_10001036C(v2, &qword_1006E8040);
  }

LABEL_12:
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1003196C8(v6);
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_1003196C8(void *a1)
{
  v2 = v1;
  v44 = a1;
  v3 = sub_100009DCC(&qword_1006E8040);
  v4 = __chkstk_darwin(v3 - 8);
  v43 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v43 - v6;
  v8 = sub_10056CAA8();
  v46 = *(v8 - 8);
  v47 = v8;
  __chkstk_darwin(v8);
  v45 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100009DCC(&qword_1006E87F0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Signpost();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostInitiationToFirstAudioFrame;
  swift_beginAccess();
  sub_10000CC8C(v2 + v20, v15, &qword_1006E87F0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10001036C(v15, &qword_1006E87F0);
  }

  else
  {
    sub_1003205E0(v15, v19, type metadata accessor for Signpost);
    Signpost.end(dso:)(&_mh_execute_header);
    sub_10032099C(v19, type metadata accessor for Signpost);
    (*(v17 + 56))(v13, 1, 1, v16);
    swift_beginAccess();
    sub_10008B71C(v13, v2 + v20, &qword_1006E87F0);
    swift_endAccess();
  }

  v21 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_autoBugCaptureIntervalBeginDate;
  swift_beginAccess();
  sub_10000CC8C(v2 + v21, v7, &qword_1006E8040);
  v23 = v46;
  v22 = v47;
  if ((*(v46 + 48))(v7, 1, v47) != 1)
  {
    (*(v23 + 32))(v45, v7, v22);
    sub_10056C9B8();
    v29 = v28;
    if (qword_1006E5050 != -1)
    {
      swift_once();
    }

    v30 = sub_10056DF88();
    sub_10000C49C(v30, static Logger.groupActivities);
    v31 = sub_10056DF68();
    v32 = sub_100573448();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134217984;
      *(v33 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v31, v32, "endMeasuringInitiationTime: %f", v33, 0xCu);
    }

    if (v29 <= 10.0)
    {
      goto LABEL_19;
    }

    v34 = objc_opt_self();
    v35 = sub_10031AD98();
    v36 = sub_100572898();
    v37 = sub_100572898();
    v38 = sub_100572898();
    if (*&v29 >> 52 > 0x7FEuLL)
    {
      __break(1u);
    }

    else if (v29 > -9.22337204e18)
    {
      if (v29 < 9.22337204e18)
      {
        v48 = v29;
        v44 = v38;
        v39 = v35;
        sub_100574408();
        v40 = sub_100572898();

        v41 = v44;
        [v34 snapshotWithDomain:v39 type:v36 subType:v37 context:v44 triggerThresholdValues:v40 events:0 completion:0];

LABEL_19:
        (*(v23 + 8))(v45, v22);
        v42 = v43;
        (*(v23 + 56))(v43, 1, 1, v22);
        swift_beginAccess();
        sub_10008B71C(v42, v2 + v21, &qword_1006E8040);
        swift_endAccess();
        return;
      }

LABEL_22:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_22;
  }

  sub_10001036C(v7, &qword_1006E8040);
  if (qword_1006E5050 != -1)
  {
    swift_once();
  }

  v24 = sub_10056DF88();
  sub_10000C49C(v24, static Logger.groupActivities);
  v25 = sub_10056DF68();
  v26 = sub_100573428();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Attempting to endMeasuringInitiationTime but there was no begin time.", v27, 2u);
  }
}

uint64_t sub_100319DF8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10030E5B0();
  }

  return result;
}

uint64_t GroupActivitiesManager.__allocating_init(coordinator:)(uint64_t a1)
{
  v2 = swift_allocObject();
  GroupActivitiesManager.init(coordinator:)(a1);
  return v2;
}

uint64_t GroupActivitiesManager.init(coordinator:)(uint64_t a1)
{
  v2 = v1;
  v36 = a1;
  v3 = sub_100009DCC(&qword_1006E6420);
  __chkstk_darwin(v3 - 8);
  v37 = &v33 - v4;
  v34 = sub_100009DCC(&qword_1006ED690);
  v5 = *(v34 - 8);
  __chkstk_darwin(v34);
  v7 = &v33 - v6;
  v8 = sub_100009DCC(&qword_1006EA0D8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - v10;
  v12 = sub_100009DCC(&qword_1006ED2C8);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v33 - v14;
  v35 = xmmword_100582400;
  *(v1 + 56) = xmmword_100582400;
  *(v1 + 96) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  v16 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__participantsCount;
  *&v38 = 0;
  sub_10056E438();
  (*(v13 + 32))(v2 + v16, v15, v12);
  v17 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__isLoading;
  LOBYTE(v38) = 0;
  sub_10056E438();
  (*(v9 + 32))(v2 + v17, v11, v8);
  v18 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__reaction;
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  sub_100009DCC(&qword_1006ED680);
  sub_10056E438();
  (*(v5 + 32))(v2 + v18, v7, v34);
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount) = 0;
  v19 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_sessionStateObserver;
  sub_10056D128();
  *(v2 + v19) = sub_10056D118();
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_sessionSubscriptions) = &_swiftEmptySetSingleton;
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_nowPlayingSubscription) = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_isLeaveCommandInProgress) = 0;
  v20 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity;
  v21 = type metadata accessor for GroupActivitiesManager.Activity(0);
  (*(*(v21 - 8) + 56))(v2 + v20, 1, 1, v21);
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession) = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session) = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostJoinSessionState) = 0;
  v22 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostInitiationToFirstAudioFrame;
  v23 = type metadata accessor for Signpost();
  (*(*(v23 - 8) + 56))(v2 + v22, 1, 1, v23);
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager____lazy_storage___autoBugCaptureDomain) = 0;
  v24 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_autoBugCaptureIntervalBeginDate;
  v25 = sub_10056CAA8();
  (*(*(v25 - 8) + 56))(v2 + v24, 1, 1, v25);
  v26 = v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext;
  *v26 = v35;
  *(v26 + 16) = 0;
  v27 = v36;
  sub_10002EA8C(v36, v2 + 16);
  type metadata accessor for GroupActivitiesManager.State(0);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  _s9MusicCore18EnvironmentMonitorC22__observationRegistrar33_6CC8A35C601F3763940B11776112173411Observation0lF0Vvpfi_0();
  *(v2 + 88) = v28;
  v29 = sub_100572F48();
  v30 = v37;
  (*(*(v29 - 8) + 56))(v37, 1, 1, v29);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = v2;

  sub_1001B3FAC(0, 0, v30, &unk_100594630, v31);

  sub_100010474(v27);
  return v2;
}

uint64_t sub_10031A3E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000CB98;

  return sub_10031A478();
}

uint64_t sub_10031A478()
{
  v1[5] = v0;
  v2 = sub_100009DCC(&qword_1006EDE80);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_100009DCC(&qword_1006EDE88);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = sub_100572F08();
  v1[13] = sub_100572EF8();
  v5 = sub_100572E78();
  v1[14] = v5;
  v1[15] = v4;

  return _swift_task_switch(sub_10031A5E4, v5, v4);
}

uint64_t sub_10031A5E4()
{
  if (qword_1006E5050 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  v0[16] = sub_10000C49C(v1, static Logger.groupActivities);
  v2 = sub_10056DF68();
  v3 = sub_100573448();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "🚦 Initiating group session observer", v4, 2u);
  }

  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];

  type metadata accessor for GroupActivitiesManager.Activity(0);
  sub_10032101C(&qword_1006ED5D0, type metadata accessor for GroupActivitiesManager.Activity);
  sub_10056D318();
  sub_10056D2A8();
  (*(v6 + 8))(v5, v7);
  v8 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  v0[17] = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_isLeaveCommandInProgress;
  v0[18] = v8;
  v0[19] = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession;
  v0[20] = sub_100572EF8();
  v9 = sub_100010BC0(&qword_1006EDE90, &qword_1006EDE88);
  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_10031A834;
  v11 = v0[9];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 2, v11, v9);
}

uint64_t sub_10031A834()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_100572E78();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_10031AD0C;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_100572E78();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_10031A9CC;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_10031A9CC()
{

  v0[23] = v0[2];
  v1 = v0[14];
  v2 = v0[15];

  return _swift_task_switch(sub_10031AA38, v1, v2);
}

uint64_t sub_10031AA38()
{
  v16 = v0;
  v1 = v0[23];
  if (v1)
  {
    v2 = v0[5];
    if (*(v2 + v0[17]) == 1)
    {

      v3 = sub_10056DF68();
      v4 = sub_100573448();

      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v15 = v6;
        *v5 = 136446210;
        v0[4] = v1;

        sub_100009DCC(&qword_1006EDE98);
        v7 = sub_1005729A8();
        v9 = sub_1000C9784(v7, v8, &v15);

        *(v5 + 4) = v9;
        _os_log_impl(&_mh_execute_header, v3, v4, "leaveCommand in progress, setting pendingSession=%{public}s", v5, 0xCu);
        sub_100010474(v6);
      }

      *(v0[5] + v0[19]) = v0[23];
    }

    else
    {
      *(v2 + v0[18]) = v1;
      swift_retain_n();

      sub_1003164A4();
    }

    v0[20] = sub_100572EF8();
    v12 = sub_100010BC0(&qword_1006EDE90, &qword_1006EDE88);
    v13 = swift_task_alloc();
    v0[21] = v13;
    *v13 = v0;
    v13[1] = sub_10031A834;
    v14 = v0[9];

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 2, v14, v12);
  }

  else
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_10031AD0C()
{
  *(v0 + 24) = *(v0 + 176);
  sub_100009DCC(&qword_1006E9B60);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

id sub_10031AD98()
{
  v1 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager____lazy_storage___autoBugCaptureDomain;
  v2 = *(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager____lazy_storage___autoBugCaptureDomain);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager____lazy_storage___autoBugCaptureDomain);
  }

  else
  {
    v4 = sub_100572898();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_10031AE08(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (a1[17])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  if (a2[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  if (a2[17])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return sub_100320C70(v2 | *a1, *(a1 + 1), v3 | a1[16], v4 | *a2, *(a2 + 1), v5 | a2[16]);
}

uint64_t sub_10031AE6C(uint64_t a1)
{
  v1[2] = a1;
  sub_100009DCC(&qword_1006E5D10);
  v1[3] = swift_task_alloc();
  v2 = sub_10056C8A8();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  sub_100572F08();
  v1[7] = sub_100572EF8();
  v4 = sub_100572E78();

  return _swift_task_switch(sub_10031AF98, v4, v3);
}

uint64_t sub_10031AF98()
{

  v1 = [objc_opt_self() defaultWorkspace];
  if (v1)
  {
    v2 = *(v0 + 32);
    v3 = *(v0 + 40);
    v4 = *(v0 + 24);
    sub_10056C868();
    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      sub_10001036C(*(v0 + 24), &qword_1006E5D10);
    }

    else
    {
      v6 = *(v0 + 40);
      v5 = *(v0 + 48);
      v7 = *(v0 + 32);
      (*(v6 + 32))(v5, *(v0 + 24), v7);
      sub_10056C7E8(v8);
      v10 = v9;
      sub_1000F3754(_swiftEmptyArrayStorage);
      isa = sub_100572688().super.isa;

      [v1 openSensitiveURL:v10 withOptions:isa];

      (*(v6 + 8))(v5, v7);
    }
  }

  **(v0 + 16) = v1 == 0;

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10031B160()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000116F0;

  return sub_10031B1F0();
}

uint64_t sub_10031B1F0()
{
  v1[25] = v0;
  sub_100009DCC(&qword_1006E6420);
  v1[26] = swift_task_alloc();
  sub_100009DCC(&qword_1006E75F0);
  v1[27] = swift_task_alloc();
  v2 = sub_100009DCC(&unk_1006EDF80);
  v1[28] = v2;
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();
  v3 = sub_100009DCC(&qword_1006EBF20);
  v1[31] = v3;
  v1[32] = *(v3 - 8);
  v1[33] = swift_task_alloc();
  v4 = sub_10056DEC8();
  v1[34] = v4;
  v1[35] = *(v4 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = type metadata accessor for GroupActivitiesManager.Activity(0);
  v1[40] = swift_task_alloc();
  v5 = sub_100009DCC(&qword_1006ED5C8);
  v1[41] = v5;
  v1[42] = *(v5 - 8);
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = sub_100572F08();
  v1[46] = sub_100572EF8();
  v7 = sub_100572E78();
  v1[47] = v7;
  v1[48] = v6;

  return _swift_task_switch(sub_10031B4E4, v7, v6);
}

id sub_10031B4E4()
{
  v70 = v0;
  v1 = *(v0 + 200);
  v2 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  *(v0 + 392) = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  v3 = *(v1 + v2);
  *(v0 + 400) = v3;
  if (!v3)
  {
    goto LABEL_24;
  }

  v5 = *(v0 + 344);
  v4 = *(v0 + 352);
  v6 = *(v0 + 328);
  v7 = *(v0 + 336);

  sub_10056D288();
  *(v0 + 568) = enum case for GroupSession.State.waiting<A>(_:);
  v8 = *(v7 + 104);
  *(v0 + 408) = v8;
  *(v0 + 416) = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v8(v5);
  *(v0 + 424) = sub_10032101C(&qword_1006ED5D0, type metadata accessor for GroupActivitiesManager.Activity);
  v9 = sub_10056D268();
  v10 = *(v7 + 8);
  *(v0 + 432) = v10;
  *(v0 + 440) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v5, v6);
  v10(v4, v6);
  if (v9)
  {
    if (qword_1006E5050 != -1)
    {
      swift_once();
    }

    v11 = sub_10056DF88();
    *(v0 + 448) = sub_10000C49C(v11, static Logger.groupActivities);
    v12 = sub_10056DF68();
    v13 = sub_100573448();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Attempting to join", v14, 2u);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10056E478();

    v15 = *(v0 + 572);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 573) = 1;

    sub_10056E488();
    sub_10030E2D0(v15);
    if (*(v1 + v2))
    {
      v16 = *(v0 + 320);

      sub_10056D2B8();

      v17 = *(v16 + 48);
      if (v17)
      {
        v18 = *(v0 + 320);
        v19 = *(v17 + 16);
        *(v0 + 456) = v19;
        v20 = v19;
        sub_10032099C(v18, type metadata accessor for GroupActivitiesManager.Activity);
        v21 = objc_allocWithZone(ICLiveLinkIdentity);
        v22 = swift_allocObject();
        *(v22 + 16) = sub_100323810;
        *(v22 + 24) = v3;
        *(v0 + 48) = sub_1001DA9E4;
        *(v0 + 56) = v22;
        *(v0 + 16) = _NSConcreteStackBlock;
        *(v0 + 24) = 1107296256;
        *(v0 + 32) = sub_1001D65E4;
        *(v0 + 40) = &unk_10069B7C0;
        v23 = _Block_copy((v0 + 16));

        v24 = [v21 initWithBlock:v23];
        *(v0 + 464) = v24;
        _Block_release(v23);

        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
LABEL_42:
          swift_once();
LABEL_36:
          v49 = sub_10056DF08();
          *(v0 + 480) = sub_10000C49C(v49, static OSSignposter.sharePlay);
          sub_10056DEB8();
          v50 = sub_10056DEE8();
          v51 = sub_1005736D8();
          if (sub_100573BE8())
          {
            v52 = swift_slowAlloc();
            *v52 = 0;
            v53 = sub_10056DEA8();
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v50, v51, v53, "AddIntent", "", v52, 2u);
          }

          v54 = *(v0 + 296);
          v55 = *(v0 + 304);
          v56 = *(v0 + 272);
          v57 = *(v0 + 280);
          v58 = *(v0 + 200);

          v59 = *(v57 + 16);
          *(v0 + 488) = v59;
          *(v0 + 496) = (v57 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v59(v54, v55, v56);
          *(v0 + 504) = sub_10056DF48();
          swift_allocObject();
          *(v0 + 512) = sub_10056DF38();
          v60 = *(v57 + 8);
          *(v0 + 520) = v60;
          *(v0 + 528) = (v57 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v60(v55, v56);
          swift_beginAccess();
          v61 = v58[5];
          v62 = v58[6];
          sub_10000C8CC(v58 + 2, v61);
          v63 = *(v61 - 8);
          v64 = swift_task_alloc();
          *(v0 + 536) = v64;
          (*(v63 + 16))();
          v65 = (*(v62 + 48))(v61, v62);
          *(v0 + 544) = v65;
          (*(v63 + 8))(v64, v61);
          *(v0 + 176) = v58;

          v66 = sub_1005729A8();
          *(v0 + 88) = &type metadata for Player.CommandIssuerIdentity;
          *(v0 + 96) = &protocol witness table for Player.CommandIssuerIdentity;
          *(v0 + 64) = v66;
          *(v0 + 72) = v67;
          v68 = swift_task_alloc();
          *(v0 + 552) = v68;
          *v68 = v0;
          v68[1] = sub_10031C0F4;

          return static SharedListening.addIntent(_:playbackController:issuer:)(isEscapingClosureAtFileLocation, v65, v0 + 64);
        }

        v26 = [objc_opt_self() sharedSessionIntentWithProperties:v20 identity:v24];
        *(v0 + 472) = v26;
        if (v26)
        {
          isEscapingClosureAtFileLocation = v26;
          if (sub_10056D238() & 1) != 0 && (sub_10056D208())
          {
            v27 = 20;
          }

          else
          {
            v27 = 10;
          }

          [isEscapingClosureAtFileLocation setActionAfterQueueLoad:v27];

          v36 = sub_10056DF68();
          v37 = sub_100573448();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            v69 = v39;
            *v38 = 67240706;
            *(v38 + 4) = sub_10056D238() & 1;
            *(v38 + 8) = 1026;
            *(v38 + 10) = sub_10056D208() & 1;

            *(v38 + 14) = 2082;
            result = MPNSStringFromQueueLoadAction();
            if (!result)
            {
              __break(1u);
              return result;
            }

            v40 = result;
            v41 = sub_1005728D8();
            v43 = v42;

            v44 = sub_1000C9784(v41, v43, &v69);

            *(v38 + 16) = v44;
            _os_log_impl(&_mh_execute_header, v36, v37, "Will join session isLocallyInitiated=%{BOOL,public}d\n/ isFirstJoin=%{BOOL,public}d.\n-> actionAfterQueueLoad=%{public}s", v38, 0x18u);
            sub_100010474(v39);
          }

          else
          {
          }

          if (qword_1006E5688 == -1)
          {
            goto LABEL_36;
          }

          goto LABEL_42;
        }

        v45 = sub_10056DF68();
        v46 = sub_100573448();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&_mh_execute_header, v45, v46, "Failed to retrieve shared playback intent", v47, 2u);
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_10056E478();

        v48 = *(v0 + 576);
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 577) = 0;

        sub_10056E488();
        v33 = v48;
        goto LABEL_23;
      }

      v28 = *(v0 + 320);

      sub_10032099C(v28, type metadata accessor for GroupActivitiesManager.Activity);
    }

    else
    {
    }

    if (qword_1006E5070 != -1)
    {
      swift_once();
    }

    sub_10000C49C(v11, static Logger.sharedListening);
    v29 = sub_10056DF68();
    v30 = sub_100573428();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Session properties missing in activity", v31, 2u);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10056E478();

    v32 = *(v0 + 574);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 575) = 0;

    sub_10056E488();
    v33 = v32;
LABEL_23:
    sub_10030E2D0(v33);
    goto LABEL_24;
  }

LABEL_24:

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_10031C0F4()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  *(*v1 + 560) = v0;

  if (v0)
  {
    v4 = *(v2 + 376);
    v5 = *(v2 + 384);
    v6 = sub_10031CC14;
  }

  else
  {
    sub_10001036C(v2 + 64, &qword_1006E6B78);

    v4 = *(v2 + 376);
    v5 = *(v2 + 384);
    v6 = sub_10031C24C;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10031C24C()
{
  v72 = v0;
  v1 = *(v0 + 392);
  v2 = *(v0 + 200);

  sub_10031E044();

  v3 = *(v2 + v1);
  if (!v3)
  {
    v44 = 0;
LABEL_14:
    v47 = *(v0 + 464);
    v48 = *(v0 + 472);
    v49 = *(v0 + 456);
    v50 = *(v0 + 200);
    v51 = *(v0 + 208);
    sub_100321298();
    v52 = swift_allocError();
    *v53 = v44;
    *(v53 + 8) = 1;

    sub_100311660(v52, 0);

    v54 = sub_100572F48();
    (*(*(v54 - 8) + 56))(v51, 1, 1, v54);

    v55 = sub_100572EF8();
    v56 = swift_allocObject();
    v56[2] = v55;
    v56[3] = &protocol witness table for MainActor;
    v56[4] = v50;
    sub_1001B3FAC(0, 0, v51, &unk_100594C60, v56);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10056E478();

    LOBYTE(v51) = *(v0 + 580);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 581) = 0;

    sub_10056E488();
    v57 = v51;
    goto LABEL_18;
  }

  v4 = *(v0 + 432);
  v66 = *(v0 + 408);
  v5 = *(v0 + 568);
  v7 = *(v0 + 344);
  v6 = *(v0 + 352);
  v8 = *(v0 + 328);

  sub_10056D288();
  v66(v7, v5, v8);
  v9 = sub_10056D268();
  v4(v7, v8);
  v4(v6, v8);
  if ((v9 & 1) == 0)
  {
    v45 = *(v0 + 392);
    v46 = *(v0 + 200);

    v44 = *(v46 + v45);
    goto LABEL_14;
  }

  v10 = sub_10056DF68();
  v11 = sub_100573448();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v71 = v13;
    *v12 = 136446210;
    *(v0 + 192) = v3;
    sub_100009DCC(&qword_1006EDE98);
    sub_100010BC0(&qword_1006EDFF8, &qword_1006EDE98);
    v14 = sub_100574408();
    v16 = sub_1000C9784(v14, v15, &v71);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "🤝 Joining shared session=%{public}s", v12, 0xCu);
    sub_100010474(v13);
  }

  sub_10056DEB8();
  v17 = sub_10056DEE8();
  v18 = sub_1005736D8();
  if (sub_100573BE8())
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = sub_10056DEA8();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, v18, v20, "JoinSession", "", v19, 2u);
  }

  v21 = *(v0 + 520);
  v22 = *(v0 + 488);
  v69 = *(v0 + 392);
  v24 = *(v0 + 288);
  v23 = *(v0 + 296);
  v25 = *(v0 + 272);
  v26 = *(v0 + 200);

  v22(v23, v24, v25);
  swift_allocObject();
  v27 = sub_10056DF38();
  v21(v24, v25);
  *(v26 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostJoinSessionState) = v27;

  if (*(v26 + v69))
  {

    sub_10056D258();
  }

  v28 = *(v0 + 200);
  v29 = v28[5];
  v30 = v28[6];
  v31 = sub_10000C8CC(v28 + 2, v29);
  v32 = *(v29 - 8);
  v33 = swift_task_alloc();
  (*(v32 + 16))(v33, v31, v29);
  v34 = (*(v30 + 48))(v29, v30);
  (*(v32 + 8))(v33, v29);
  if (!v34)
  {
    goto LABEL_16;
  }

  v35 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (!*&v34[v35])
  {

LABEL_16:
    v58 = *(v0 + 464);
    v59 = *(v0 + 472);
    v60 = *(v0 + 456);

    v43 = 0;
    goto LABEL_17;
  }

  v67 = *(v0 + 472);
  v68 = *(v0 + 464);
  v70 = *(v0 + 456);
  v36 = *(v0 + 264);
  v37 = *(v0 + 240);
  v64 = *(v0 + 248);
  v65 = *(v0 + 256);
  v39 = *(v0 + 224);
  v38 = *(v0 + 232);
  v40 = *(v0 + 216);

  swift_beginAccess();
  sub_100009DCC(&qword_1006EB170);
  sub_10056E448();
  swift_endAccess();

  sub_1000D3B98(0, &qword_1006E84A0);
  v41 = sub_1005735E8();
  *(v0 + 184) = v41;
  v42 = sub_1005735C8();
  (*(*(v42 - 8) + 56))(v40, 1, 1, v42);
  sub_100010BC0(&qword_1006EB650, &unk_1006EDF80);
  sub_1002C90FC();
  sub_10056E4E8();
  sub_10001036C(v40, &qword_1006E75F0);

  (*(v38 + 8))(v37, v39);

  swift_allocObject();
  swift_weakInit();
  sub_100010BC0(&qword_1006EBF30, &qword_1006EBF20);
  v43 = sub_10056E518();

  (*(v65 + 8))(v36, v64);
LABEL_17:
  *(*(v0 + 200) + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_nowPlayingSubscription) = v43;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v61 = *(v0 + 582);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 583) = 0;

  sub_10056E488();
  v57 = v61;
LABEL_18:
  sub_10030E2D0(v57);

  v62 = *(v0 + 8);

  return v62();
}

uint64_t sub_10031CC14()
{
  v1 = *(v0 + 560);
  v3 = *(v0 + 464);
  v2 = *(v0 + 472);
  v4 = *(v0 + 456);
  v5 = *(v0 + 200);
  v6 = *(v0 + 208);

  sub_10001036C(v0 + 64, &qword_1006E6B78);

  sub_10031E044();

  sub_100311660(v1, 0);
  v7 = sub_100572F48();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);

  v8 = sub_100572EF8();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v5;
  sub_1001B3FAC(0, 0, v6, &unk_100594C50, v9);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  LOBYTE(v1) = *(v0 + 578);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 579) = 0;

  sub_10056E488();
  sub_10030E2D0(v1);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10031CEB8(int a1)
{
  v2 = v1;
  v37 = a1;
  v36 = sub_10056CAE8();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10056CC38();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100572888();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v36 - v12;
  sub_100009DCC(&qword_1006E6120);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10057B510;
  sub_100572818();
  (*(v8 + 16))(v11, v13, v7);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v15 = qword_1006FC3B8;
  sub_10056CBC8();
  v16 = sub_100572948();
  v18 = v17;
  (*(v8 + 8))(v13, v7);

  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v19 = sub_10056CAB8();
  v21 = v20;
  (*(v3 + 8))(v5, v36);
  *(v14 + 32) = v19;
  *(v14 + 40) = v21;
  *(v14 + 48) = v16;
  *(v14 + 56) = v18;
  *(v14 + 64) = 0;
  *(v14 + 72) = &unk_100594C88;
  *(v14 + 80) = v2;
  sub_10031EDD8(v37 & 1, &v41);
  v22 = v42;
  if (v42)
  {
    v23 = v41;
    v25 = *(v14 + 16);
    v24 = *(v14 + 24);
    if (v25 >= v24 >> 1)
    {
      v14 = sub_1000CF968((v24 > 1), v25 + 1, 1, v14);
    }

    *(v14 + 16) = v25 + 1;
    v26 = v14 + 56 * v25;
    *(v26 + 32) = v23;
    *(v26 + 40) = v22;
    v27 = v44;
    *(v26 + 48) = v43;
    *(v26 + 64) = v27;
    *(v26 + 80) = v45;
  }

  v28 = sub_10031E9B0();
  v30 = v29;
  v31 = sub_10031EBC4();
  LOBYTE(v38[0]) = 1;
  v46[0] = v28;
  v46[1] = v30;
  v46[2] = v31;
  v46[3] = v32;
  v47 = 0;
  v48 = 0;
  v49 = 1;
  v50 = v14;
  v51 = 0;
  swift_beginAccess();
  sub_10002EA8C(v2 + 16, v38);
  v33 = v39;
  v34 = v40;
  sub_10000C8CC(v38, v39);
  (*(v34 + 32))(v46, v33, v34);
  sub_100109250(v46);
  return sub_100010474(v38);
}

uint64_t sub_10031D2E8()
{
  v1 = v0[26];
  swift_beginAccess();
  sub_10002EA8C(v1 + 16, (v0 + 18));
  v2 = v0[21];
  v3 = v0[22];
  sub_10000C8CC(v0 + 18, v2);
  v6 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_10031D430;

  return v6(v2, v3);
}

uint64_t sub_10031D430(char a1)
{
  *(*v1 + 232) = a1;

  return _swift_task_switch(sub_10031D530, 0, 0);
}

uint64_t sub_10031D530()
{
  sub_100010474(v0 + 144);
  if (qword_1006E5050 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  sub_10000C49C(v1, static Logger.groupActivities);
  v2 = sub_10056DF68();
  v3 = sub_100573448();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 232);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "🛂 User did authenticate=%{BOOL,public}d", v5, 8u);
  }

  v6 = *(v0 + 232);

  if (v6 == 1)
  {
    v7 = [objc_opt_self() defaultIdentityStore];
    *(v0 + 224) = v7;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_10031D798;
    v8 = swift_continuation_init();
    *(v0 + 136) = sub_100009DCC(&unk_1006EE000);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10031D8D8;
    *(v0 + 104) = &unk_10069B838;
    *(v0 + 112) = v8;
    [v7 synchronizeWithCompletionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    if (*(*(v0 + 208) + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
    {

      sub_10056D278();
    }

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_10031D798()
{

  return _swift_task_switch(sub_10031D878, 0, 0);
}

uint64_t sub_10031D878()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10031D8D8(uint64_t a1)
{
  sub_10000C8CC((a1 + 32), *(a1 + 56));

  return swift_continuation_resume();
}

uint64_t sub_10031D92C()
{
  v1 = v0[10];
  swift_beginAccess();
  sub_10002EA8C(v1 + 16, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  sub_10000C8CC(v0 + 2, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_10031DA74;

  return v6(v2, v3);
}

uint64_t sub_10031DA74(char a1)
{
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_10031DB74, 0, 0);
}

uint64_t sub_10031DB74()
{
  v1 = *(v0 + 96);
  sub_100010474(v0 + 16);
  if (v1 != 2 && (*(v0 + 96) & 1) == 0)
  {
    if (*(*(v0 + 80) + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
    {

      sub_10056D278();
    }

    if (qword_1006E5050 != -1)
    {
      swift_once();
    }

    v2 = sub_10056DF88();
    sub_10000C49C(v2, static Logger.groupActivities);
    v3 = sub_10056DF68();
    v4 = sub_100573448();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "🛂 User did not complete the subscription flow", v5, 2u);
    }
  }

  v6 = *(v0 + 8);

  return v6();
}

void sub_10031DCCC(void *a1)
{
  v2 = sub_10056CAE8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10056D338();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10056D218();
  sub_10056D328();
  (*(v7 + 8))(v9, v6);
  v10 = sub_10056CAB8();
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  v23._countAndFlagsBits = 0x616C506572616853;
  v23._object = 0xEC0000003D444979;
  if (sub_100572B28(v23))
  {
  }

  else
  {
    strcpy(v22, "SharePlayID=");
    BYTE5(v22[1]) = 0;
    HIWORD(v22[1]) = -5120;
    v24._countAndFlagsBits = v10;
    v24._object = v12;
    sub_100572A98(v24);
  }

  v13 = sub_100572898();

  [a1 setExternalIdentifier:v13];

  if (qword_1006E5050 != -1)
  {
    swift_once();
  }

  v14 = sub_10056DF88();
  sub_10000C49C(v14, static Logger.groupActivities);

  v15 = sub_10056DF68();
  v16 = sub_100573448();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v21 = v18;
    *v17 = 136446210;
    v25._countAndFlagsBits = 0x616C506572616853;
    v25._object = 0xEC0000003D444979;
    if (!sub_100572B28(v25))
    {
      strcpy(v22, "SharePlayID=");
      BYTE5(v22[1]) = 0;
      HIWORD(v22[1]) = -5120;
      v26._countAndFlagsBits = v10;
      v26._object = v12;
      sub_100572A98(v26);

      v10 = v22[0];
      v12 = v22[1];
    }

    v19 = sub_1000C9784(v10, v12, &v21);

    *(v17 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v15, v16, "externalID identity=%{public}s", v17, 0xCu);
    sub_100010474(v18);
  }

  else
  {
  }
}

uint64_t sub_10031E044()
{
  v0 = sub_10056DF18();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10056DEC8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006E5688 != -1)
  {
    swift_once();
  }

  v8 = sub_10056DF08();
  sub_10000C49C(v8, static OSSignposter.sharePlay);
  v9 = sub_10056DEE8();
  sub_10056DF28();
  v10 = sub_1005736C8();
  if (sub_100573BE8())
  {

    sub_10056DF58();

    if ((*(v1 + 88))(v3, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v11 = "";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_10056DEA8();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, v10, v13, "AddIntent", v11, v12, 2u);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10031E2D0()
{
  v0[2] = sub_100572F08();
  v0[3] = sub_100572EF8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10031E380;

  return GroupActivitiesManager.leave(performLeaveCommand:)(1);
}

uint64_t sub_10031E380()
{

  v1 = sub_100572E78();

  return _swift_task_switch(sub_1002A19CC, v1, v0);
}

uint64_t sub_10031E4BC()
{
  v0[2] = sub_100572F08();
  v0[3] = sub_100572EF8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10031E56C;

  return GroupActivitiesManager.leave(performLeaveCommand:)(1);
}

uint64_t sub_10031E56C()
{

  v1 = sub_100572E78();

  return _swift_task_switch(sub_100324304, v1, v0);
}

void sub_10031E6A8(id *a1)
{
  if (!*a1)
  {
    return;
  }

  v14 = *a1;
  if (![v14 isSharedListeningSession])
  {
    goto LABEL_6;
  }

  v1 = [v14 tracklist];
  v13 = [v1 playingItem];

  if (!v13)
  {
    goto LABEL_6;
  }

  if ([v13 isPlaceholder])
  {

LABEL_6:
    v2 = v14;
LABEL_7:

    return;
  }

  v3 = [v13 metadataObject];
  if (!v3)
  {
LABEL_17:

    v2 = v13;
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [v3 innermostModelObject];

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {

    goto LABEL_17;
  }

  v7 = v6;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v8 = sub_10031640C(v15);
    v10 = v9;
    v11 = type metadata accessor for GroupActivitiesManager.Activity(0);
    if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
    {
      type metadata accessor for CodableModelObjectIdentity();
      v12 = swift_allocObject();
      *(v12 + 16) = v7;
      *(v10 + 56) = v12;
      v5 = v5;
    }

    v8(v15, 0);
  }

  else
  {
  }
}

uint64_t sub_10031E904()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session) != 0;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_100114460;

  return GroupActivitiesManager.leave(performLeaveCommand:)(v1);
}

uint64_t sub_10031E9B0()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_10031EBC4()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_10031EDD8@<X0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  v27 = a1;
  v3 = sub_10056CAE8();
  v25 = *(v3 - 8);
  v26 = v3;
  __chkstk_darwin(v3);
  v24 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10056CC38();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100572888();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v13 = &v24 - v12;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (v27)
  {
    sub_100572818();
    (*(v7 + 16))(v10, v13, v6);
    if (qword_1006E4C60 != -1)
    {
      swift_once();
    }

    v20 = qword_1006FC3B8;
    sub_10056CBC8();
    v16 = sub_100572948();
    v17 = v21;
    (*(v7 + 8))(v13, v6);
    v22 = v24;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v14 = sub_10056CAB8();
    v15 = v23;
    result = (*(v25 + 8))(v22, v26);
    v19 = &unk_100594C90;
    v18 = 2;
  }

  *a2 = v14;
  a2[1] = v15;
  a2[2] = v16;
  a2[3] = v17;
  a2[4] = v18;
  a2[5] = v19;
  a2[6] = 0;
  return result;
}

uint64_t sub_10031F0CC()
{
  v1 = [objc_opt_self() defaultWorkspace];
  if (v1)
  {
    v2 = v1;
    LSApplicationWorkspace.openMusicSettings()();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10031F154()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000116F0;

  return GroupActivitiesManager.leave(performLeaveCommand:)(1);
}

uint64_t GroupActivitiesManager.deinit()
{
  sub_100010474(v0 + 16);
  sub_1003209FC(*(v0 + 56), *(v0 + 64));

  v1 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__participantsCount;
  v2 = sub_100009DCC(&qword_1006ED2C8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__isLoading;
  v4 = sub_100009DCC(&qword_1006EA0D8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__reaction;
  v6 = sub_100009DCC(&qword_1006ED690);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  sub_10001036C(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity, &qword_1006ED708);

  sub_10001036C(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostInitiationToFirstAudioFrame, &qword_1006E87F0);

  sub_10001036C(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_autoBugCaptureIntervalBeginDate, &qword_1006E8040);
  sub_1003216E0(*(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext), *(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext + 8));
  return v0;
}

uint64_t GroupActivitiesManager.__deallocating_deinit()
{
  GroupActivitiesManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_10031F448()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, static Logger.groupActivities);
  sub_10000C49C(v0, static Logger.groupActivities);
  sub_1000D3B98(0, &qword_1006EE020);
  sub_100573C18();
  return sub_10056DF98();
}

uint64_t static Logger.groupActivities.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006E5050 != -1)
  {
    swift_once();
  }

  v2 = sub_10056DF88();
  v3 = sub_10000C49C(v2, static Logger.groupActivities);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10031F598(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_100572B88();
  }

  __break(1u);
  return result;
}

uint64_t sub_10031F5E4()
{
  if (*v0)
  {
    return 7955819;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_10031F61C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_100574498() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7955819 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100574498();

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

uint64_t sub_10031F700(uint64_t a1)
{
  v2 = sub_1003225EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10031F73C(uint64_t a1)
{
  v2 = sub_1003225EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10031F778(void *a1)
{
  v4 = sub_100009DCC(&qword_1006EDE20);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - v6;
  sub_10000C8CC(a1, a1[3]);
  sub_1003225EC();
  sub_100574708();
  if (v2)
  {
    type metadata accessor for CodableListeningProperties();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = 0;
    sub_100574298();
    v13 = 1;
    v12[1] = sub_100574298();
    v9 = sub_100572898();

    v10 = sub_100572898();

    v11 = [objc_opt_self() propertiesWithSessionIdentifier:v9 sessionKey:v10];

    (*(v5 + 8))(v7, v4);
    *(v1 + 16) = v11;
  }

  sub_100010474(a1);
  return v1;
}

uint64_t sub_10031F9C8(void *a1)
{
  v3 = v1;
  v5 = sub_100009DCC(&qword_1006EDE70);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7];
  sub_10000C8CC(a1, a1[3]);
  sub_1003225EC();
  sub_100574718();
  v9 = *(v3 + 16);
  v10 = [v9 sessionIdentifier];
  sub_1005728D8();

  v13[15] = 0;
  sub_100574328();
  if (!v2)
  {

    v11 = [v9 sessionKey];
    sub_1005728D8();

    v13[14] = 1;
    sub_100574328();
  }

  (*(v6 + 8))(v8, v5);
}

uint64_t sub_10031FC24()
{
  if (*v0)
  {
    return 0x616C436C65646F6DLL;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_10031FC74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEB00000000737265;
  if (v6 || (sub_100574498() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x616C436C65646F6DLL && a2 == 0xEE00656D614E7373)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100574498();

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

uint64_t sub_10031FD5C(uint64_t a1)
{
  v2 = sub_100322640();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10031FD98(uint64_t a1)
{
  v2 = sub_100322640();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10031FDD4(void *a1)
{
  v3 = v1;
  v5 = sub_100009DCC(&qword_1006EDE30);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_10000C8CC(a1, a1[3]);
  sub_100322640();
  sub_100574708();
  if (!v2)
  {
    v34 = 0;
    sub_100322694();
    sub_1005742D8();
    v10 = aBlock;
    v9 = v29;
    sub_1000D3B98(0, &unk_1006EDE48);
    sub_1000D3B98(0, &unk_1006E91B0);
    v11 = sub_100573568();
    if (v11)
    {
      v27 = v11;
      LOBYTE(aBlock) = 1;
      sub_100574298();
      v26 = sub_100572898();

      v14 = v26;
      v25 = NSClassFromString(v26);

      if (v25)
      {
        swift_getObjCClassMetadata();
        sub_1000D3B98(0, &qword_1006E8470);
        v15 = swift_dynamicCastMetatype();
        if (v15)
        {
          if (qword_1006E5060 != -1)
          {
            v23 = v15;
            swift_once();
            v15 = v23;
          }

          v16 = *(off_1006EE060 + 2);
          v17 = (off_1006EE060 + 32);
          while (v16)
          {
            v18 = *v17++;
            --v16;
            if (v18 == v15)
            {
              v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
              v32 = CFRange.init(_:);
              v33 = 0;
              aBlock = _NSConcreteStackBlock;
              v29 = 1107296256;
              v30 = sub_1001D65E4;
              v31 = &unk_10069B5B8;
              v26 = _Block_copy(&aBlock);
              v20 = v19;
              v21 = v27;
              v25 = [v20 initWithIdentifiers:v27 block:v26];
              sub_10008246C(v10, v9);

              _Block_release(v26);
              (*(v6 + 8))(v8, v5);

              result = swift_isEscapingClosureAtFileLocation();
              if ((result & 1) == 0)
              {
                *(v3 + 16) = v25;
                goto LABEL_6;
              }

              __break(1u);
              return result;
            }
          }
        }
      }

      sub_1003226E8();
      swift_allocError();
      *v22 = 1;
      swift_willThrow();
      sub_10008246C(v10, v9);
    }

    else
    {
      sub_1003226E8();
      swift_allocError();
      *v12 = 0;
      swift_willThrow();
      sub_10008246C(v10, v9);
    }

    (*(v6 + 8))(v8, v5);
  }

  type metadata accessor for CodableModelObjectIdentity();
  swift_deallocPartialClassInstance();
LABEL_6:
  sub_100010474(a1);
  return v3;
}

uint64_t sub_100320250(void *a1)
{
  v3 = v1;
  v5 = sub_100009DCC(&qword_1006EDE60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20[-v7];
  sub_10000C8CC(a1, a1[3]);
  sub_100322640();
  sub_100574718();
  v9 = objc_opt_self();
  v10 = [*(v3 + 16) identifiers];
  v21[0] = 0;
  v11 = [v9 archivedDataWithRootObject:v10 requiringSecureCoding:1 error:v21];

  v12 = v21[0];
  if (v11)
  {
    v13 = sub_10056C918();
    v15 = v14;

    v21[0] = v13;
    v21[1] = v15;
    v20[7] = 0;
    sub_100322754();
    sub_100574368();
    if (v2)
    {
      (*(v6 + 8))(v8, v5);
    }

    else
    {
      swift_getObjectType();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v19 = NSStringFromClass(ObjCClassFromMetadata);
      sub_1005728D8();

      LOBYTE(v21[0]) = 1;
      sub_100574328();
      (*(v6 + 8))(v8, v5);
    }

    return sub_10008246C(v13, v15);
  }

  else
  {
    v16 = v12;
    sub_10056C728();

    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_100320550@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  a2(0);
  swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1003205E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100320648(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003206B0()
{
  v1 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v2 = (*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;
  if (*(v0 + v2 + 24))
  {
    sub_100010474(v0 + v2);
  }

  v4 = v3 + *(v1 + 32);
  v5 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    v6 = *(v5 + 28);
    v7 = sub_10056C8A8();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v4 + v6, 1, v7))
    {
      (*(v8 + 8))(v4 + v6, v7);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_100320898(uint64_t a1)
{
  v4 = *(type metadata accessor for GroupActivitiesManager.Activity(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000116F0;

  return sub_1003138EC(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_10032099C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003209FC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100320AF4()
{

  sub_100320B48(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

void sub_100320B48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 1u)
  {
    if (!a7)
    {
      goto LABEL_13;
    }

    if (a7 != 1)
    {
      return;
    }

LABEL_12:

    return;
  }

  if (a7 == 2)
  {

    goto LABEL_12;
  }

  if (a7 != 3)
  {
    if (a7 == 4)
    {

      sub_1003209FC(a1, a2);
    }

    return;
  }

LABEL_13:
}

uint64_t sub_100320C28(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100320C70(__int16 a1, void *a2, int a3, __int16 a4, void *a5, int a6)
{
  result = 0;
  v8 = a1 ^ a4;
  if (v8 & 0x100) != 0 || (v8)
  {
    return result;
  }

  if (!a2)
  {
    result = 0;
    if (a5 || ((a3 ^ a6) & 1) != 0)
    {
      return result;
    }

    return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
  }

  if (!a5)
  {
    return 0;
  }

  v9 = a3;
  v10 = a6;
  sub_1000D3B98(0, &qword_1006E8498);
  v13 = a5;
  v14 = a2;
  v15 = sub_100573A58();

  result = 0;
  if (v15)
  {
    LOWORD(a6) = v10;
    LOWORD(a3) = v9;
    if (((v9 ^ v10) & 1) == 0)
    {
      return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
    }
  }

  return result;
}

id _s9MusicCore22GroupActivitiesManagerC8ActivityV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a2 + 56);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 16);
  v5 = *(v2 + 16);
  v6 = v4;
  v7 = [v5 identifiers];
  v8 = [v6 identifiers];
  v9 = [v7 intersectsSet:v8];

  return v9;
}

Swift::Int sub_100320E10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009DCC(&qword_1006EDEC0);
    v3 = sub_100573EB8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_100574678();
      NSDirectionalEdgeInsets.Edge.hash(into:)(v18, v10);
      result = sub_1005746C8();
      v12 = -1 << *(v3 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      v15 = *(v5 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        while (1)
        {
          result = static NSDirectionalEdgeInsets.Edge.__derived_enum_equals(_:_:)(*(*(v3 + 48) + v13), v10);
          if (result)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_100320FA4()
{
  result = qword_1006ED600;
  if (!qword_1006ED600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006ED600);
  }

  return result;
}

uint64_t sub_10032101C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100321088()
{
  result = qword_1006ED628;
  if (!qword_1006ED628)
  {
    sub_100010324(&qword_1006ED620);
    sub_10032101C(&qword_1006ED630, type metadata accessor for CodableListeningProperties);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006ED628);
  }

  return result;
}

unint64_t sub_10032113C()
{
  result = qword_1006ED640;
  if (!qword_1006ED640)
  {
    sub_100010324(&qword_1006ED638);
    sub_10032101C(&qword_1006ED648, type metadata accessor for CodableModelObjectIdentity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006ED640);
  }

  return result;
}

unint64_t sub_100321298()
{
  result = qword_1006ED6B8;
  if (!qword_1006ED6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006ED6B8);
  }

  return result;
}

uint64_t sub_1003212F4()
{
  v1 = *(sub_100009DCC(&qword_1006ED5E0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = v0 + v2;
  v4 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {

    v5 = *(v4 + 28);
    v6 = sub_10056C8A8();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v3 + v5, 1, v6))
    {
      (*(v7 + 8))(v3 + v5, v6);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_100321494(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006ED5E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100321504(uint64_t a1)
{
  v4 = *(sub_100009DCC(&qword_1006ED5E0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000CB98;

  return sub_100310C90(a1, v6, v1 + v5, v7);
}

uint64_t sub_10032162C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000116F0;

  return sub_10031A3E8();
}

void sub_1003216E0(uint64_t a1, void *a2)
{
  if (a2 != 1)
  {
  }
}

void sub_100321844()
{
  sub_1003051B8(319, &qword_1006ED398, &type metadata for Int, &type metadata accessor for Published);
  if (v0 <= 0x3F)
  {
    sub_1003051B8(319, &qword_1006EACB0, &type metadata for Bool, &type metadata accessor for Published);
    if (v1 <= 0x3F)
    {
      sub_100321E70(319, &qword_1006ED758, &qword_1006ED680, &unk_100594510, &type metadata accessor for Published);
      if (v2 <= 0x3F)
      {
        sub_100321B30(319, &unk_1006ED760, type metadata accessor for GroupActivitiesManager.Activity);
        if (v3 <= 0x3F)
        {
          sub_100321B30(319, &qword_1006E8870, type metadata accessor for Signpost);
          if (v4 <= 0x3F)
          {
            sub_100321B30(319, &unk_1006ED770, &type metadata accessor for Date);
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_100321B30(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100573C28();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100321B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100009DCC(&qword_1006ED5E0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100321C74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = sub_100009DCC(&qword_1006ED5E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100321D24()
{
  sub_100321E70(319, &qword_1006ED8F0, &qword_1006ED8F8, &unk_100594830, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100321ED4();
    if (v1 <= 0x3F)
    {
      sub_100321B30(319, &qword_1006ED910, type metadata accessor for CodableListeningProperties);
      if (v2 <= 0x3F)
      {
        sub_100321B30(319, &qword_1006ED918, type metadata accessor for CodableModelObjectIdentity);
        if (v3 <= 0x3F)
        {
          sub_100321B30(319, &unk_1006ED920, type metadata accessor for GroupActivitiesManager.Activity.Metadata);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100321E70(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100010324(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_100321ED4()
{
  if (!qword_1006ED900)
  {
    sub_1000D3B98(255, &qword_1006EADF8);
    v0 = sub_100573C28();
    if (!v1)
    {
      atomic_store(v0, &qword_1006ED900);
    }
  }
}

uint64_t sub_100321F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100009DCC(&qword_1006E5D10);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10032202C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_100009DCC(&qword_1006E5D10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1003220DC()
{
  sub_1003051B8(319, &qword_1006ED410, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100321B30(319, qword_1006ED9D0, type metadata accessor for CGImage);
    if (v1 <= 0x3F)
    {
      sub_100321B30(319, &qword_1006E7EA8, &type metadata accessor for URL);
      if (v2 <= 0x3F)
      {
        _s3__C6CGSizeVMa_0(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1003221F4()
{
  result = sub_10056CF38();
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

__n128 sub_100322290(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1003222A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 18))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_100322300(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100322388(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 5)
  {
    return v5 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100322408(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_10032248C()
{
  v0 = type metadata accessor for GroupActivitiesManager.Activity(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

unint64_t sub_1003224E8()
{
  result = qword_1006EDE08;
  if (!qword_1006EDE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EDE08);
  }

  return result;
}

unint64_t sub_100322540()
{
  result = qword_1006EDE10;
  if (!qword_1006EDE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EDE10);
  }

  return result;
}

unint64_t sub_100322598()
{
  result = qword_1006EDE18;
  if (!qword_1006EDE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EDE18);
  }

  return result;
}

unint64_t sub_1003225EC()
{
  result = qword_1006EDE28;
  if (!qword_1006EDE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EDE28);
  }

  return result;
}

unint64_t sub_100322640()
{
  result = qword_1006EDE38;
  if (!qword_1006EDE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EDE38);
  }

  return result;
}

unint64_t sub_100322694()
{
  result = qword_1006EDE40;
  if (!qword_1006EDE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EDE40);
  }

  return result;
}

unint64_t sub_1003226E8()
{
  result = qword_1006EDE58;
  if (!qword_1006EDE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EDE58);
  }

  return result;
}

uint64_t sub_10032273C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100322754()
{
  result = qword_1006EDE68;
  if (!qword_1006EDE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EDE68);
  }

  return result;
}

unint64_t sub_1003227C4()
{
  result = qword_1006EDEA0;
  if (!qword_1006EDEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EDEA0);
  }

  return result;
}

void sub_100322818(void *a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
      }

      return;
    }

LABEL_7:

    return;
  }

  if (a2 == 2)
  {

    return;
  }

  if (a2 == 3)
  {
    goto LABEL_7;
  }
}

uint64_t sub_100322850()
{
  v1 = *(sub_100009DCC(&qword_1006ED5E0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v17 = *(v1 + 64);
  v3 = sub_100009DCC(&unk_1006EDEB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  swift_unknownObjectRelease();
  v7 = v0 + v2;
  v8 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v8 - 8) + 48))(v0 + v2, 1, v8))
  {

    v16 = v6;
    v9 = *(v8 + 28);
    v10 = sub_10056C8A8();
    v11 = *(v10 - 8);
    v15 = v9;
    v12 = v7 + v9;
    v6 = v16;
    if (!(*(v11 + 48))(v12, 1, v10))
    {
      (*(v11 + 8))(v7 + v15, v10);
    }
  }

  v13 = (((v17 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & ~v5;

  (*(v4 + 8))(v0 + v13, v3);

  return swift_deallocObject();
}

uint64_t sub_100322AB4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100009DCC(&qword_1006ED5E0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_100009DCC(&unk_1006EDEB0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1000116F0;

  return sub_100311C10(a1, v10, v11, v1 + v6, v12, v1 + v9, v13);
}

uint64_t sub_100322C68()
{
  v1 = *(sub_100009DCC(&qword_1006ED5E0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v12 = *(v1 + 64);
  v3 = sub_100009DCC(&unk_1006EDEB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = v0 + v2;
  v7 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v2, 1, v7))
  {

    v8 = *(v7 + 28);
    v9 = sub_10056C8A8();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v6 + v8, 1, v9))
    {
      (*(v10 + 8))(v6 + v8, v9);
    }
  }

  (*(v4 + 8))(v0 + ((((v12 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & ~v5), v3);

  return swift_deallocObject();
}

uint64_t sub_100322EB0(void *a1)
{
  v3 = *(sub_100009DCC(&qword_1006ED5E0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_100009DCC(&unk_1006EDEB0) - 8);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  return sub_100312400(a1, v1 + v4, v7, v8);
}

uint64_t sub_100322FAC()
{
  v1 = *(sub_100009DCC(&qword_1006ED5E0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v12 = *(v1 + 64);
  v3 = sub_100009DCC(&unk_1006EDEB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  swift_unknownObjectRelease();

  v6 = v0 + v2;
  v7 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v2, 1, v7))
  {

    v8 = *(v7 + 28);
    v9 = sub_10056C8A8();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v6 + v8, 1, v9))
    {
      (*(v10 + 8))(v6 + v8, v9);
    }
  }

  (*(v4 + 8))(v0 + ((((v12 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & ~v5), v3);

  return swift_deallocObject();
}

uint64_t sub_1003231FC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100009DCC(&qword_1006ED5E0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_100009DCC(&unk_1006EDEB0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1000116F0;

  return sub_1003126D4(a1, v10, v11, v12, v1 + v6, v13, v1 + v9);
}

uint64_t sub_100323388(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1003233D8()
{
  result = qword_1006EDF10;
  if (!qword_1006EDF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EDF10);
  }

  return result;
}

uint64_t sub_10032342C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100323474()
{

  return swift_deallocObject();
}

double sub_1003234CC(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1003234E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1003234FC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100323534(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000116F0;

  return sub_10031AE6C(a1);
}

uint64_t sub_1003235E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000116F0;

  return sub_10031D2C8(a1, v4, v5, v6);
}

uint64_t sub_100323698(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000116F0;

  return sub_10031D90C(a1, v4, v5, v6);
}

uint64_t sub_10032374C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000116F0;

  return sub_10031B160();
}

id sub_100323800(uint64_t a1, void *a2)
{
  if (a2 != 1)
  {
    return a2;
  }

  return result;
}

uint64_t sub_100323828()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000116F0;

  return sub_10031E2D0();
}

uint64_t sub_1003238DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000116F0;

  return sub_10031E4BC();
}

uint64_t sub_100323998()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000116F0;

  return sub_10031F154();
}

uint64_t sub_100323A40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000CB98;

  return sub_10031E8E4(a1, v4, v5, v6);
}

uint64_t sub_100323AF4()
{
  v1 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;
  if (*(v0 + v2 + 24))
  {
    sub_100010474(v0 + v2);
  }

  v4 = v3 + *(v1 + 32);
  v5 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    v6 = *(v5 + 28);
    v7 = sub_10056C8A8();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v4 + v6, 1, v7))
    {
      (*(v8 + 8))(v4 + v6, v7);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_100323CAC(void *a1)
{
  v3 = *(type metadata accessor for GroupActivitiesManager.Activity(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100315708(a1, v4, v5);
}

uint64_t sub_100323D20()
{
  v1 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v2 = (*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;
  if (*(v0 + v2 + 24))
  {
    sub_100010474(v0 + v2);
  }

  v4 = v3 + *(v1 + 32);
  v5 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    v6 = *(v5 + 28);
    v7 = sub_10056C8A8();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v4 + v6, 1, v7))
    {
      (*(v8 + 8))(v4 + v6, v7);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_100323EE8(uint64_t a1)
{
  v4 = *(type metadata accessor for GroupActivitiesManager.Activity(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000116F0;

  return sub_1003158EC(a1, v6, v7, v8, v9, v1 + v5);
}

unint64_t sub_100324020()
{
  result = qword_1006EE028;
  if (!qword_1006EE028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EE028);
  }

  return result;
}

unint64_t sub_100324078()
{
  result = qword_1006EE030;
  if (!qword_1006EE030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EE030);
  }

  return result;
}

unint64_t sub_1003240D0()
{
  result = qword_1006EE038;
  if (!qword_1006EE038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EE038);
  }

  return result;
}

unint64_t sub_100324128()
{
  result = qword_1006EE040;
  if (!qword_1006EE040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EE040);
  }

  return result;
}

unint64_t sub_100324180()
{
  result = qword_1006EE048;
  if (!qword_1006EE048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EE048);
  }

  return result;
}

unint64_t sub_1003241D8()
{
  result = qword_1006EE050;
  if (!qword_1006EE050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EE050);
  }

  return result;
}

unint64_t sub_100324230()
{
  result = qword_1006EE058;
  if (!qword_1006EE058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EE058);
  }

  return result;
}

void MPCPlayerCommandDialog.alert(context:completion:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v86 = a5;
  v85 = a4;
  v90 = a2;
  v91 = a3;
  v89 = a1;
  v80 = a6;
  v7 = sub_10056CC38();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100572888();
  v9 = *(v8 - 1);
  v10 = __chkstk_darwin(v8);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v80 - v13;
  v84 = sub_10056CAE8();
  v15 = *(v84 - 8);
  __chkstk_darwin(v84);
  v83 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v6;
  v17 = [v6 actions];
  sub_1000D3B98(0, &qword_1006EE070);
  v18 = sub_100572D28();

  if (v18 >> 62)
  {
    v19 = sub_100574178();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v19)
  {
    sub_100009DCC(&qword_1006E6120);
    v19 = swift_allocObject();
    *(v19 + 1) = xmmword_10057B510;
    sub_100572818();
    (*(v9 + 16))(v12, v14, v8);
    if (qword_1006E4C60 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_50;
  }

  v8 = [v82 actions];
  v20 = sub_100572D28();

  if (v20 >> 62)
  {
    v9 = sub_100574178();
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_42:

    v19 = _swiftEmptyArrayStorage;
LABEL_43:
    v74 = [v82 localizedTitle];
    if (v74)
    {
      v75 = v74;
      v68 = sub_1005728D8();
      v70 = v76;
    }

    else
    {
      v68 = 0;
      v70 = 0;
    }

    v71 = [v82 localizedMessage];
    if (!v71)
    {
      goto LABEL_39;
    }

LABEL_47:
    v77 = v71;
    v72 = sub_1005728D8();
    v73 = v78;

    goto LABEL_48;
  }

  v9 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_42;
  }

LABEL_6:
  if (v9 >= 1)
  {
    v21 = 0;
    v92 = v20 & 0xC000000000000001;
    v93 = MPCPlayerCommandDialogActionTitlePlayOnlyForMe;
    v19 = _swiftEmptyArrayStorage;
    v81 = (v15 + 8);
    v88 = v20;
    v87 = v9;
    while (1)
    {
      if (v92)
      {
        v22 = sub_100573F58();
      }

      else
      {
        v22 = *(v20 + 8 * v21 + 32);
      }

      v23 = v22;
      v24 = [v22 localizedTitle];
      v25 = sub_1005728D8();
      v27 = v26;

      if (v25 == sub_1005728D8() && v27 == v28)
      {
      }

      else
      {
        v30 = sub_100574498();

        if ((v30 & 1) == 0)
        {
          v95 = v21;
          v31 = [v23 localizedTitle];
          v99 = sub_1005728D8();
          v33 = v32;

          v34 = [v23 type];
          if (v34 == 2)
          {
            v35 = 1;
          }

          else
          {
            v35 = 2;
          }

          if (v34 == 1)
          {
            v36 = 0;
          }

          else
          {
            v36 = v35;
          }

          v37 = swift_allocObject();
          v38 = v85;
          v37[2] = v23;
          v37[3] = v38;
          v37[4] = v86;
          v39 = v23;
          sub_1000E672C(v38);
          v40 = v83;
          _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
          v97 = sub_10056CAB8();
          v42 = v41;
          (*v81)(v40, v84);

          v43 = v33;

          v44 = v37;

          v96 = &unk_100594FA8;
          v98 = v36;
          v94 = v36;
          goto LABEL_28;
        }
      }

      sub_10032ADC8(v89, v90, v91, &v101);
      v42 = v102;
      if (v102)
      {
        v95 = v21;
        v45 = v106;
        v46 = v107;
        v94 = v105;
        v47 = v104;
        v98 = v105;
        v99 = v103;
        v97 = v101;

        v43 = v47;

        v96 = v45;
        v44 = v46;
        sub_1000E672C(v45);
LABEL_28:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1000CF968(0, v19[2] + 1, 1, v19);
        }

        v49 = v19[2];
        v48 = v19[3];
        v50 = v23;
        if (v49 >= v48 >> 1)
        {
          v19 = sub_1000CF968((v48 > 1), v49 + 1, 1, v19);
        }

        v51 = v97;
        v52 = v99;
        v53 = v96;
        sub_10032AD68(v97, v42, v99, v43, v98, v96);

        v19[2] = v49 + 1;
        v54 = &v19[7 * v49];
        v54[4] = v51;
        v54[5] = v42;
        v54[6] = v52;
        v54[7] = v43;
        *(v54 + 64) = v94;
        v54[9] = v53;
        v54[10] = v44;
        v20 = v88;
        v9 = v87;
        v21 = v95;
        goto LABEL_9;
      }

LABEL_9:
      if (v9 == ++v21)
      {

        goto LABEL_43;
      }
    }
  }

  __break(1u);
LABEL_50:
  swift_once();
LABEL_35:
  v55 = qword_1006FC3B8;
  sub_10056CBC8();
  v56 = sub_100572948();
  v58 = v57;
  (*(v9 + 8))(v14, v8);
  v59 = swift_allocObject();
  v60 = v85;
  v61 = v86;
  *(v59 + 16) = v85;
  *(v59 + 24) = v61;
  sub_1000E672C(v60);
  v62 = v83;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v63 = sub_10056CAB8();
  v65 = v64;
  (*(v15 + 8))(v62, v84);
  v19[4] = v63;
  v19[5] = v65;
  v19[6] = v56;
  v19[7] = v58;
  *(v19 + 64) = 2;
  v19[9] = &unk_100594FB8;
  v19[10] = v59;
  v66 = [v82 localizedTitle];
  if (v66)
  {
    v67 = v66;
    v68 = sub_1005728D8();
    v70 = v69;
  }

  else
  {
    v68 = 0;
    v70 = 0;
  }

  v71 = [v82 localizedMessage];
  if (v71)
  {
    goto LABEL_47;
  }

LABEL_39:
  v72 = 0;
  v73 = 0;
LABEL_48:
  v100 = 1;
  v79 = v80;
  *v80 = v68;
  v79[1] = v70;
  v79[2] = v72;
  v79[3] = v73;
  *(v79 + 32) = 0;
  v79[5] = 0;
  *(v79 + 48) = 1;
  v79[7] = v19;
  v79[8] = 0;
}

BOOL static SharedListening.isMusicItemTypeSupported(_:)(uint64_t a1)
{
  if (qword_1006E5068 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = (off_1006EE068 + 32);
  v2 = *(off_1006EE068 + 2) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = *v1;
    v1 += 2;
  }

  while (v3 != a1);
  return v2 != 0;
}

uint64_t Logger.sharedListening.unsafeMutableAddressor()
{
  if (qword_1006E5070 != -1)
  {
    swift_once();
  }

  v0 = sub_10056DF88();

  return sub_10000C49C(v0, static Logger.sharedListening);
}

uint64_t *SharedListening.Event.properties.unsafeMutableAddressor()
{
  if (qword_1006E5058 != -1)
  {
    swift_once();
  }

  return &static SharedListening.Event.properties;
}

double SharedListening.Event.init(_:)@<D0>(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10032B290(a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v3;
  result = *&v6;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t static SharedListening.buildSharedSession(with:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100065BC4;

  return sub_10032BD40(a1);
}

uint64_t static SharedListening.buildSharedSession(with:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000CB98;

  return sub_10032C400(a1, a2, a3, a4);
}

uint64_t SharedListening.Event.Content.title.getter(void *a1, char a2)
{
  v4 = sub_10056CC38();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100572888();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v21[-v10];
  if (a2)
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = [v12 title];
      if (!v13)
      {
        goto LABEL_9;
      }

LABEL_6:
      v14 = v13;
      v15 = sub_1005728D8();

      return v15;
    }

    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v13 = [v17 name];
      if (v13)
      {
        goto LABEL_6;
      }
    }

    else
    {
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();
      if (!v20)
      {
        v22 = 0;
        v23 = 0xE000000000000000;
        sub_100573ED8(34);

        v22 = 0xD000000000000020;
        v23 = 0x80000001005B59C0;
        swift_getObjectType();
        v24._countAndFlagsBits = sub_100574758();
        sub_100572A98(v24);

        result = sub_1005740F8();
        __break(1u);
        return result;
      }

      v13 = [v20 name];
      if (v13)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    v13 = [a1 title];
    if (v13)
    {
      goto LABEL_6;
    }
  }

LABEL_9:
  sub_100572818();
  (*(v6 + 16))(v9, v11, v5);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v18 = qword_1006FC3B8;
  sub_10056CBC8();
  v19 = sub_100572948();
  (*(v6 + 8))(v11, v5);
  return v19;
}

void sub_100325254(void *a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    if (a2 == 1)
    {
      v16 = a1;
      if (qword_1006E5050 != -1)
      {
        swift_once();
      }

      v17 = sub_10056DF88();
      sub_10000C49C(v17, static Logger.groupActivities);

      oslog = sub_10056DF68();
      v18 = sub_100573428();
      sub_100322818(v16, 1u);
      if (os_log_type_enabled(oslog, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v43 = v20;
        *v19 = 136446210;
        v45 = v16;

        sub_100009DCC(&unk_1006EDF68);
        v21 = sub_100572978();
        v23 = sub_1000C9784(v21, v22, &v43);

        *(v19 + 4) = v23;
        _os_log_impl(&_mh_execute_header, oslog, v18, "Cannot joined invalid session=%{public}s", v19, 0xCu);
        sub_100010474(v20);

        return;
      }
    }

    else
    {
      if (a2 != 2)
      {
        return;
      }

      v2 = [a1 error];
      if (qword_1006E5070 != -1)
      {
        swift_once();
      }

      v3 = sub_10056DF88();
      sub_10000C49C(v3, static Logger.sharedListening);
      v4 = v2;
      oslog = sub_10056DF68();
      v5 = sub_100573428();

      if (os_log_type_enabled(oslog, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v45 = v7;
        *v6 = 136446210;
        v43 = v2;
        LOBYTE(v44) = 0;
        v8 = v4;
        v9 = sub_100572978();
        v11 = sub_1000C9784(v9, v10, &v45);

        *(v6 + 4) = v11;
        _os_log_impl(&_mh_execute_header, oslog, v5, "Creation error %{public}s", v6, 0xCu);
        sub_100010474(v7);

        return;
      }
    }

    goto LABEL_42;
  }

  if (a2 != 3)
  {
    if (a2 != 4)
    {
      return;
    }

    if (a1 == 2)
    {
      if (qword_1006E5070 != -1)
      {
        swift_once();
      }

      v41 = sub_10056DF88();
      sub_10000C49C(v41, static Logger.sharedListening);
      oslog = sub_10056DF68();
      v13 = sub_100573448();
      if (!os_log_type_enabled(oslog, v13))
      {
        goto LABEL_42;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Building session failed because the queue is empty";
    }

    else
    {
      if (a1 == 3)
      {
        if (qword_1006E5070 != -1)
        {
          swift_once();
        }

        v34 = sub_10056DF88();
        sub_10000C49C(v34, static Logger.sharedListening);
        oslog = sub_10056DF68();
        v35 = sub_100573448();
        if (!os_log_type_enabled(oslog, v35))
        {
          goto LABEL_42;
        }

        v36 = swift_slowAlloc();
        *v36 = 67109120;
        *(v36 + 1) = FigOutputMonitorIsScreenProbablyBeingRecorded() != 0;
        v15 = "Presenting not supported content alert (isScreenSharing=%{BOOL}d)";
        v37 = v35;
        v38 = oslog;
        v39 = v36;
        v40 = 8;
LABEL_41:
        _os_log_impl(&_mh_execute_header, v38, v37, v15, v39, v40);

LABEL_42:

        return;
      }

      if (a1 != 4)
      {
        return;
      }

      if (qword_1006E5070 != -1)
      {
        swift_once();
      }

      v12 = sub_10056DF88();
      sub_10000C49C(v12, static Logger.sharedListening);
      oslog = sub_10056DF68();
      v13 = sub_100573448();
      if (!os_log_type_enabled(oslog, v13))
      {
        goto LABEL_42;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Cannot add intent for the current route.";
    }

    v37 = v13;
    v38 = oslog;
    v39 = v14;
    v40 = 2;
    goto LABEL_41;
  }

  if (a1)
  {
    swift_getErrorValue();
    a1 = sub_1005745D8();
  }

  else
  {
    v24 = 0;
  }

  v43 = a1;
  v44 = v24;
  sub_100009DCC(&unk_1006EB090);
  v25 = sub_100572978();
  v27 = v26;
  if (qword_1006E5050 != -1)
  {
    swift_once();
  }

  v28 = sub_10056DF88();
  sub_10000C49C(v28, static Logger.groupActivities);

  v29 = sub_10056DF68();
  v30 = sub_100573428();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v43 = v32;
    *v31 = 136446210;
    v33 = sub_1000C9784(v25, v27, &v43);

    *(v31 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v29, v30, "Could not add intent to the player: %{public}s", v31, 0xCu);
    sub_100010474(v32);
  }

  else
  {
  }
}

void sub_100325910(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, uint64_t)@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v169 = a4;
  v168 = a3;
  v167 = a2;
  v166 = a1;
  v174 = a6;
  v7 = sub_10056C8A8();
  v164 = *(v7 - 8);
  v8 = *(v164 + 64);
  v9 = __chkstk_darwin(v7);
  __chkstk_darwin(v9);
  v11 = (v156 - v10);
  v12 = sub_100009DCC(&qword_1006E5D10);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = v156 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v156 - v16;
  v171 = sub_10056CAE8();
  v18 = *(v171 - 8);
  __chkstk_darwin(v171);
  v170 = v156 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10056CC38();
  __chkstk_darwin(v20 - 8);
  v172 = v156 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100572888();
  v173 = *(v22 - 8);
  v23 = __chkstk_darwin(v22);
  v25 = v156 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  if (a5 == 2)
  {
    v158 = v15;
    v156[1] = v8;
    v157 = v156 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v159 = v17;
    v162 = v11;
    v163 = v7;
    v28 = v156 - v26;
    v67 = v169;
    v68 = [v169 dialog];
    if (v68)
    {
      v69 = v68;
      MPCPlayerCommandDialog.alert(context:completion:)(v166, v167, v168, 0, 0, &v175);
      v70 = v175;
      v44 = v176;
      v71 = *(&v177 + 1);
      v40 = v177;
      v48 = *(&v178 + 1);
      v72 = v178;
      v73 = v179;
      v47 = v180;
      v49 = v181;

      v46 = v70;
      v52 = v72 & 0xFFFFFFFFFFFFFF00;
      v50 = v73 & 0xFFFFFFFFFFFFFF00;
      v51 = v72;
      v53 = v73;
      v45 = v71;
LABEL_26:
      v27 = v174;
      goto LABEL_27;
    }

    v74 = [v67 error];
    v27 = v174;
    if (v74)
    {
      v175 = v74;
      sub_100009DCC(&qword_1006E9B60);
      type metadata accessor for MPCPlayerEnqueueError(0);
      if (swift_dynamicCast())
      {
        v75 = v182;
        v175 = v182;
        sub_10032E104(&qword_1006E5E80, type metadata accessor for MPCPlayerEnqueueError);
        sub_10056C6D8();

        if (v182 == 3)
        {
          goto LABEL_19;
        }
      }
    }

    v165 = v18;
    sub_100572818();
    v94 = v173;
    v95 = v22;
    v96 = *(v173 + 16);
    v96(v25, v28, v95);
    if (qword_1006E4C60 != -1)
    {
      swift_once();
    }

    v97 = qword_1006FC3B8;
    sub_10056CBC8();
    v98 = v97;
    v161 = sub_100572948();
    v160 = v99;
    v173 = *(v94 + 8);
    (v173)(v28, v95);
    sub_100009DCC(&qword_1006E6120);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_10057B510;
    sub_100572818();
    v96(v25, v28, v95);
    sub_10056CBC8();
    v100 = sub_100572948();
    v102 = v101;
    (v173)(v28, v95);
    v103 = v170;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v104 = sub_10056CAB8();
    v106 = v105;
    v107 = *(v165 + 8);
    v165 += 8;
    v107(v103, v171);
    *(v47 + 32) = v104;
    *(v47 + 40) = v106;
    *(v47 + 48) = v100;
    *(v47 + 56) = v102;
    *(v47 + 64) = 2;
    *(v47 + 72) = 0;
    *(v47 + 80) = 0;
    v175 = 0;
    v176 = 0xE000000000000000;
    sub_100573ED8(30);

    v175 = 0xD00000000000001CLL;
    v176 = 0x80000001005B5B10;
    *&v182 = [v67 error];
    sub_100009DCC(&qword_1006EBF40);
    v185._countAndFlagsBits = sub_100572978();
    sub_100572A98(v185);

    v109 = v175;
    v108 = v176;
    v110 = sub_1000F4304(_swiftEmptyArrayStorage);
    if (qword_1006E5608 != -1)
    {
      swift_once();
    }

    v27 = v174;
    v111 = v163;
    v112 = v162;
    if (static DeviceCapabilities.isInternalInstall == 1)
    {
      v113 = v109;
      v114 = v159;
      sub_1001FA980(v113, v108, 0xD000000000000032, 0x80000001005B0230, _swiftEmptyArrayStorage, v110, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v159, 1u);

      v115 = v158;
      sub_10000CC8C(v114, v158, &qword_1006E5D10);
      v116 = v164;
      if ((*(v164 + 48))(v115, 1, v111) == 1)
      {
        sub_10001036C(v114, &qword_1006E5D10);
        v117 = v115;
      }

      else
      {
        v173 = v107;
        v139 = *(v116 + 32);
        v139(v112, v115, v111);
        v140 = v112;
        v141 = [objc_opt_self() sharedApplication];
        sub_10056C7E8(v142);
        v144 = v143;
        v145 = [v141 canOpenURL:v143];

        if (v145)
        {
          v146 = v157;
          (*(v116 + 16))(v157, v140, v111);
          v147 = (*(v116 + 80) + 16) & ~*(v116 + 80);
          v148 = swift_allocObject();
          v139(v148 + v147, v146, v111);
          v149 = v170;
          _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
          v150 = sub_10056CAB8();
          v152 = v151;
          (v173)(v149, v171);
          (*(v116 + 8))(v140, v111);
          sub_10001036C(v159, &qword_1006E5D10);
          v154 = *(v47 + 16);
          v153 = *(v47 + 24);
          if (v154 >= v153 >> 1)
          {
            v47 = sub_1000CF968((v153 > 1), v154 + 1, 1, v47);
          }

          v40 = v161;
          *(v47 + 16) = v154 + 1;
          v155 = v47 + 56 * v154;
          *(v155 + 32) = v150;
          *(v155 + 40) = v152;
          strcpy((v155 + 48), "File a Radar");
          *(v155 + 61) = 0;
          *(v155 + 62) = -5120;
          *(v155 + 64) = 2;
          *(v155 + 72) = &unk_10058DBD0;
          *(v155 + 80) = v148;
          goto LABEL_52;
        }

        (*(v116 + 8))(v140, v111);
        v117 = v159;
      }

      sub_10001036C(v117, &qword_1006E5D10);
    }

    else
    {
    }

    v40 = v161;
LABEL_52:
    v46 = 0;
    v44 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 1;
    v45 = v160;
    goto LABEL_27;
  }

  if (a5 == 3)
  {
    v54 = v170;
    v165 = v18;
    v55 = v156 - v26;
    sub_100572818();
    v56 = v173;
    v166 = *(v173 + 16);
    (v166)(v25, v55, v22);
    if (qword_1006E4C60 != -1)
    {
      swift_once();
    }

    v57 = qword_1006FC3B8;
    sub_10056CBC8();
    v169 = v57;
    v168 = sub_100572948();
    v167 = v58;
    v59 = *(v56 + 8);
    v59(v55, v22);
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v173 = sub_10056CAB8();
    v164 = v60;
    (*(v165 + 8))(v54, v171);
    sub_100572818();
    v61 = v166;
    (v166)(v25, v55, v22);
    sub_10056CBC8();
    v62 = v169;
    v63 = sub_100572948();
    v169 = v64;
    v59(v55, v22);
    sub_100572818();
    v61(v25, v55, v22);
    v46 = v63;
    sub_10056CBC8();
    v40 = sub_100572948();
    v45 = v65;
    v66 = v22;
    v44 = v169;
    v59(v55, v66);
    sub_100009DCC(&qword_1006E6120);
    v47 = swift_allocObject();
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    *(v47 + 32) = v173;
    *(v47 + 40) = v164;
    *(v47 + 16) = xmmword_10057B510;
    *(v47 + 48) = v168;
    *(v47 + 56) = v167;
    *(v47 + 64) = 2;
    *(v47 + 72) = 0;
    *(v47 + 80) = 0;
    v53 = 1;
    goto LABEL_26;
  }

  v27 = v174;
  if (a5 != 4)
  {
    goto LABEL_10;
  }

  v28 = v156 - v26;
  if (v169 == 2)
  {
    v165 = v18;
    v80 = v156 - v26;
    sub_100572818();
    v81 = v173;
    v82 = *(v173 + 16);
    v82(v25, v28, v22);
    if (qword_1006E4C60 != -1)
    {
      swift_once();
    }

    v83 = qword_1006FC3B8;
    sub_10056CBC8();
    v84 = v83;
    v164 = sub_100572948();
    v169 = v85;
    v173 = *(v81 + 8);
    (v173)(v80, v22);
    sub_100009DCC(&qword_1006E6120);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_10057B510;
    sub_100572818();
    v82(v25, v80, v22);
    sub_10056CBC8();
    v86 = sub_100572948();
    v88 = v87;
    v89 = v22;
    v44 = v169;
    (v173)(v80, v89);
    v90 = v170;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v91 = sub_10056CAB8();
    v93 = v92;
    (*(v165 + 8))(v90, v171);
    v45 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    *(v47 + 32) = v91;
    *(v47 + 40) = v93;
    v46 = v164;
    *(v47 + 48) = v86;
    *(v47 + 56) = v88;
    v40 = 0;
    *(v47 + 64) = 0;
    v53 = 1;
    *(v47 + 72) = 0;
    *(v47 + 80) = 0;
    goto LABEL_26;
  }

  if (v169 != 3)
  {
    if (v169 == 4)
    {
      v165 = v18;
      sub_100572818();
      v29 = v173;
      v30 = *(v173 + 16);
      v30(v25, v28, v22);
      if (qword_1006E4C60 != -1)
      {
        swift_once();
      }

      v31 = qword_1006FC3B8;
      v32 = qword_1006FC3B8;
      v163 = v31;
      v33 = v32;
      sub_10056CBC8();
      v169 = v33;
      v168 = sub_100572948();
      v167 = v34;
      v162 = *(v29 + 8);
      (v162)(v28, v22);
      v35 = v170;
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v173 = sub_10056CAB8();
      v166 = v36;
      (*(v165 + 8))(v35, v171);
      sub_100572818();
      v30(v25, v28, v22);
      sub_10056CBC8();
      v37 = v169;
      v164 = sub_100572948();
      v169 = v38;
      v39 = v162;
      (v162)(v28, v22);
      sub_100572818();
      v30(v25, v28, v22);
      sub_10056CBC8();
      v40 = sub_100572948();
      v42 = v41;
      v43 = v22;
      v44 = v169;
      (v39)(v28, v43);
      v45 = v42;
      v46 = v164;
      sub_100009DCC(&qword_1006E6120);
      v47 = swift_allocObject();
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      *(v47 + 32) = v173;
      *(v47 + 40) = v166;
      *(v47 + 16) = xmmword_10057B510;
      *(v47 + 48) = v168;
      *(v47 + 56) = v167;
      *(v47 + 64) = 2;
      *(v47 + 72) = 0;
      *(v47 + 80) = 0;
      v53 = 1;
      goto LABEL_27;
    }

LABEL_10:
    v46 = 0;
    v44 = 0;
    v40 = 0;
    v45 = 0;
    v48 = 0;
    v47 = 0;
    v49 = 0;
    v53 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    goto LABEL_27;
  }

LABEL_19:
  v165 = v18;
  IsScreenProbablyBeingRecorded = FigOutputMonitorIsScreenProbablyBeingRecorded();
  v77 = (v173 + 16);
  v156[0] = v22;
  if (IsScreenProbablyBeingRecorded)
  {
    sub_100572818();
    v78 = *v77;
    (*v77)(v25, v28, v22);
    if (qword_1006E4C60 != -1)
    {
      swift_once();
    }

    v174 = qword_1006FC3B8;
    sub_10056CBC8();
    v161 = sub_100572948();
    v160 = v79;
    v169 = *(v173 + 8);
    v169(v28, v22);
    v164 = 0;
    v44 = 0;
    FigOutputMonitorIsScreenProbablyBeingRecorded();
  }

  else
  {
    sub_100572818();
    v118 = v25;
    v119 = *v77;
    (*v77)(v118, v28, v22);
    v163 = v77;
    if (qword_1006E4C60 != -1)
    {
      swift_once();
    }

    v120 = qword_1006FC3B8;
    sub_10056CBC8();
    v174 = v120;
    v161 = sub_100572948();
    v160 = v121;
    v122 = *(v173 + 8);
    v122(v28, v22);
    sub_100572818();
    v119(v118, v28, v22);
    sub_10056CBC8();
    v162 = v119;
    v25 = v118;
    v164 = sub_100572948();
    v124 = v123;
    v125 = v22;
    v44 = v124;
    v169 = v122;
    v122(v28, v125);
    v78 = v162;
    FigOutputMonitorIsScreenProbablyBeingRecorded();
  }

  sub_100572818();
  v126 = v28;
  v78(v25, v28, v156[0]);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v127 = v174;
  sub_10056CBC8();
  v128 = sub_100572948();
  v130 = v129;
  v131 = v165;
  v169(v126, v156[0]);
  v132 = v170;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v133 = sub_10056CAB8();
  v135 = v134;
  (*(v131 + 8))(v132, v171);
  sub_100009DCC(&qword_1006E6120);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_10057B510;
  *(v47 + 32) = v133;
  *(v47 + 40) = v135;
  *(v47 + 48) = v128;
  *(v47 + 56) = v130;
  *(v47 + 64) = 0;
  *(v47 + 72) = 0;
  *(v47 + 80) = 0;

  sub_10032ADC8(v166, v167, v168, &v175);
  v136 = v176;
  if (v176)
  {
    v137 = v175;
    v182 = v177;
    v183 = v178;
    v184 = v179;
    v47 = sub_1000CF968(1, 2, 1, v47);

    *(v47 + 16) = 2;
    *(v47 + 88) = v137;
    *(v47 + 96) = v136;
    v138 = v183;
    *(v47 + 104) = v182;
    *(v47 + 120) = v138;
    *(v47 + 136) = v184;
  }

  else
  {
  }

  v40 = v161;
  v45 = v160;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 1;
  v46 = v164;
LABEL_27:
  *v27 = v46;
  v27[1] = v44;
  v27[2] = v40;
  v27[3] = v45;
  v27[4] = v52 | v51;
  v27[5] = v48;
  v27[6] = v50 | v53;
  v27[7] = v47;
  v27[8] = v49;
}

uint64_t static SharedListening.addIntent(_:playbackController:issuer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[85] = a3;
  v3[84] = a2;
  v3[83] = a1;
  v3[86] = sub_100572F08();
  v3[87] = sub_100572EF8();
  v5 = sub_100572E78();
  v3[88] = v5;
  v3[89] = v4;

  return _swift_task_switch(sub_100327230, v5, v4);
}

uint64_t sub_100327230()
{
  v22 = v0;
  v1 = qword_1006E5070;
  v2 = *(v0 + 664);
  if (v1 == -1)
  {
    v3 = v2;
  }

  else
  {
    swift_once();
    v3 = *(v0 + 664);
  }

  v4 = sub_10056DF88();
  *(v0 + 720) = sub_10000C49C(v4, static Logger.sharedListening);
  v5 = v3;
  v6 = sub_10056DF68();
  v7 = sub_100573448();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 664);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136446210;
    *(v0 + 592) = v8;
    *(v0 + 600) = 1;
    v11 = v8;
    v12 = sub_100572978();
    v14 = sub_1000C9784(v12, v13, &v21);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Adding the intent to the player with command%{public}s", v9, 0xCu);
    sub_100010474(v10);
  }

  if (*(v0 + 672))
  {
    v15 = *(v0 + 664);
    *(v0 + 552) = &type metadata for Player.ReplaceCommand;
    *(v0 + 560) = &protocol witness table for Player.ReplaceCommand;
    *(v0 + 528) = v15;
    *(v0 + 536) = 1;
    v16 = v15;
    *(v0 + 728) = sub_100572EF8();
    v18 = sub_100572E78();
    *(v0 + 736) = v18;
    *(v0 + 744) = v17;

    return _swift_task_switch(sub_1003274AC, v18, v17);
  }

  else
  {

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_1003274AC()
{
  sub_100009DCC(&unk_1006EAF50);
  v1 = swift_allocObject();
  v0[94] = v1;
  *(v1 + 16) = xmmword_10057B510;
  sub_10002EA8C((v0 + 66), v1 + 32);
  v0[95] = sub_100572EF8();
  v2 = swift_task_alloc();
  v0[96] = v2;
  *v2 = v0;
  v2[1] = sub_1003275AC;
  v3 = v0[85];

  return sub_10029AD70(v1, 0x10000, 1, 0, 0, v3);
}

uint64_t sub_1003275AC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 776) = a1;
  *(v3 + 784) = v1;

  if (v1)
  {

    v4 = sub_100572E78();
    v6 = v5;
    v7 = sub_1003278A8;
  }

  else
  {
    v4 = sub_100572E78();
    v6 = v8;
    v7 = sub_100327728;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_100327728()
{

  v1 = *(v0 + 744);
  v2 = *(v0 + 736);

  return _swift_task_switch(sub_10032779C, v2, v1);
}

uint64_t sub_10032779C()
{
  v1 = v0[97];

  if (v1 >> 62)
  {
    v4 = sub_100574178();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_8:

    sub_100010474((v0 + 66));
    v3 = v0[89];
    v2 = v0[88];
    v6 = sub_1003280D0;
    goto LABEL_9;
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v5 = sub_100573F58();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return _swift_task_switch(v4, v2, v3);
    }

    v5 = *(v0[97] + 32);
  }

  v0[99] = v5;

  sub_100010474((v0 + 66));
  v3 = v0[89];
  v2 = v0[88];
  v6 = sub_100327CD4;
LABEL_9:
  v4 = v6;

  return _swift_task_switch(v4, v2, v3);
}

uint64_t sub_1003278A8()
{

  v1 = *(v0 + 744);
  v2 = *(v0 + 736);

  return _swift_task_switch(sub_100327910, v2, v1);
}

uint64_t sub_100327910()
{

  v1 = *(v0 + 712);
  v2 = *(v0 + 704);

  return _swift_task_switch(sub_100327978, v2, v1);
}

uint64_t sub_100327978()
{
  sub_100010474((v0 + 66));
  v0[76] = v0[98];
  swift_errorRetain();
  sub_100009DCC(&qword_1006E9B60);
  type metadata accessor for MPCPlayerRequestError(0);
  if (!swift_dynamicCast())
  {
    goto LABEL_9;
  }

  v1 = v0[77];
  v0[100] = v1;
  v0[78] = v1;
  sub_10032E104(&unk_1006EB1B0, type metadata accessor for MPCPlayerRequestError);
  sub_10056C6D8();
  if (v0[79] != 1001)
  {

LABEL_9:
    v11 = v0[83];

    swift_willThrow();

    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_10056C718();

  v4 = [v3 msv_errorByUnwrappingDomain:MPCErrorDomain];
  v0[101] = v4;

  if (v4)
  {
    swift_getErrorValue();
    if (sub_1005745E8() == 58)
    {
      v5 = [objc_allocWithZone(MPAVEndpointRoutingDataSource) init];
      v6 = objc_allocWithZone(MPAVRoutingController);
      v7 = sub_100572898();
      v8 = [v6 initWithDataSource:v5 name:v7];
      v0[102] = v8;

      v0[2] = v0;
      v0[7] = v0 + 81;
      v0[3] = sub_1003281E8;
      v9 = swift_continuation_init();
      v10 = sub_100009DCC(&qword_1006EE078);
      v0[103] = v10;
      v0[41] = v10;
      v0[34] = _NSConcreteStackBlock;
      v0[35] = 1107296256;
      v0[36] = sub_100329D80;
      v0[37] = &unk_10069BB28;
      v0[38] = v9;
      [v8 getActiveRouteWithTimeout:v0 + 34 completion:2.0];

      return _swift_continuation_await(v0 + 2);
    }
  }

  v13 = v0[83];

  swift_willThrow();

LABEL_10:
  v12 = v0[1];

  return v12();
}

uint64_t sub_100327CD4()
{
  v1 = [*(v0 + 792) error];
  if (!v1)
  {
    v1 = [*(v0 + 792) dialog];
    if (!v1)
    {
      v17 = *(v0 + 792);
      v18 = *(v0 + 664);

      v16 = *(v0 + 8);
      goto LABEL_13;
    }
  }

  v2 = *(v0 + 792);

  sub_100321298();
  v3 = swift_allocError();
  *v4 = v2;
  *(v4 + 8) = 2;
  swift_willThrow();

  *(v0 + 608) = v3;
  swift_errorRetain();
  sub_100009DCC(&qword_1006E9B60);
  type metadata accessor for MPCPlayerRequestError(0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 616);
    *(v0 + 800) = v5;
    *(v0 + 624) = v5;
    sub_10032E104(&unk_1006EB1B0, type metadata accessor for MPCPlayerRequestError);
    sub_10056C6D8();
    if (*(v0 + 632) == 1001)
    {

      v6 = v5;
      v7 = sub_10056C718();

      v8 = [v7 msv_errorByUnwrappingDomain:MPCErrorDomain];
      *(v0 + 808) = v8;

      if (v8)
      {
        swift_getErrorValue();
        if (sub_1005745E8() == 58)
        {
          v9 = [objc_allocWithZone(MPAVEndpointRoutingDataSource) init];
          v10 = objc_allocWithZone(MPAVRoutingController);
          v11 = sub_100572898();
          v12 = [v10 initWithDataSource:v9 name:v11];
          *(v0 + 816) = v12;

          *(v0 + 16) = v0;
          *(v0 + 56) = v0 + 648;
          *(v0 + 24) = sub_1003281E8;
          v13 = swift_continuation_init();
          v14 = sub_100009DCC(&qword_1006EE078);
          *(v0 + 824) = v14;
          *(v0 + 328) = v14;
          *(v0 + 272) = _NSConcreteStackBlock;
          *(v0 + 280) = 1107296256;
          *(v0 + 288) = sub_100329D80;
          *(v0 + 296) = &unk_10069BB28;
          *(v0 + 304) = v13;
          [v12 getActiveRouteWithTimeout:v0 + 272 completion:2.0];

          return _swift_continuation_await(v0 + 16);
        }
      }

      v19 = *(v0 + 664);

      swift_willThrow();

      goto LABEL_12;
    }
  }

  v15 = *(v0 + 664);

  swift_willThrow();

LABEL_12:
  v16 = *(v0 + 8);
LABEL_13:

  return v16();
}

uint64_t sub_1003280D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100328140()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  v4 = *(v0 + 800);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1003281E8()
{
  v1 = *(*v0 + 712);
  v2 = *(*v0 + 704);

  return _swift_task_switch(sub_1003282F0, v2, v1);
}

uint64_t sub_1003282F0()
{
  v1 = v0[81];
  v0[104] = v1;
  v2 = objc_opt_self();
  v0[105] = v2;
  v3 = v1;
  v4 = [v2 systemRoute];
  v5 = v4;
  if (!v1)
  {
    if (!v4)
    {
      goto LABEL_6;
    }

LABEL_10:

LABEL_11:
    v12 = sub_10056DF68();
    v13 = sub_100573448();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "SharedListening requires system route, switching…", v14, 2u);
    }

    v0[10] = v0;
    v0[11] = sub_10032857C;
    v15 = swift_continuation_init();
    v16 = sub_100009DCC(&unk_1006EB680);
    v0[106] = v16;
    v0[49] = v16;
    v0[42] = _NSConcreteStackBlock;
    v0[43] = 1107296256;
    v0[44] = sub_100192078;
    v0[45] = &unk_10069BB50;
    v0[46] = v15;
    [v2 setActiveRoute:0 completion:v0 + 42];

    return _swift_continuation_await(v0 + 10);
  }

  if (!v4)
  {
    v5 = v3;
    goto LABEL_10;
  }

  sub_1000D3B98(0, &qword_1006EBF48);
  v6 = sub_100573A58();

  if ((v6 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v7 = v0[102];
  v8 = v0[101];
  v9 = v0[83];

  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_10032857C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 856) = v2;
  v3 = *(v1 + 712);
  v4 = *(v1 + 704);
  if (v2)
  {
    v5 = sub_100328F14;
  }

  else
  {
    v5 = sub_1003286AC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1003286AC()
{
  v1 = *(v0 + 848);
  v2 = *(v0 + 816);
  v3 = [*(v0 + 840) systemRoute];
  *(v0 + 864) = v3;
  *(v0 + 144) = v0;
  *(v0 + 152) = sub_1003287DC;
  v4 = swift_continuation_init();
  *(v0 + 456) = v1;
  *(v0 + 400) = _NSConcreteStackBlock;
  *(v0 + 408) = 1107296256;
  *(v0 + 416) = sub_100192078;
  *(v0 + 424) = &unk_10069BB78;
  *(v0 + 432) = v4;
  [v2 selectRoute:v3 operation:0 completion:v0 + 400];

  return _swift_continuation_await(v0 + 144);
}

uint64_t sub_1003287DC()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 872) = v2;
  v3 = *(v1 + 712);
  v4 = *(v1 + 704);
  if (v2)
  {
    v5 = sub_100328FC8;
  }

  else
  {
    v5 = sub_10032890C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10032890C()
{
  v1 = *(v0 + 824);
  v2 = *(v0 + 816);

  *(v0 + 208) = v0;
  *(v0 + 248) = v0 + 656;
  *(v0 + 216) = sub_100328A28;
  v3 = swift_continuation_init();
  *(v0 + 520) = v1;
  *(v0 + 464) = _NSConcreteStackBlock;
  *(v0 + 472) = 1107296256;
  *(v0 + 480) = sub_100329D80;
  *(v0 + 488) = &unk_10069BBA0;
  *(v0 + 496) = v3;
  [v2 getActiveRouteWithTimeout:v0 + 464 completion:2.0];

  return _swift_continuation_await(v0 + 208);
}

uint64_t sub_100328A28()
{
  v1 = *(*v0 + 712);
  v2 = *(*v0 + 704);

  return _swift_task_switch(sub_100328B30, v2, v1);
}

uint64_t sub_100328B30()
{
  v1 = *(v0 + 656);
  *(v0 + 880) = v1;
  v2 = v1;
  v3 = sub_10056DF68();
  v4 = sub_100573448();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v1;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "active route=%@", v5, 0xCu);
    sub_10001036C(v6, &qword_1006E7640);
  }

  v8 = *(v0 + 840);

  v9 = [v8 systemRoute];
  v10 = v9;
  if (!v1)
  {
    v11 = v9;
    if (!v9)
    {
LABEL_12:
      v20 = swift_task_alloc();
      *(v0 + 888) = v20;
      *v20 = v0;
      v20[1] = sub_100328DD8;
      v21 = *(v0 + 680);
      v22 = *(v0 + 672);
      v23 = *(v0 + 664);

      return static SharedListening.addIntent(_:playbackController:issuer:)(v23, v22, v21);
    }

    goto LABEL_8;
  }

  v11 = v2;
  if (!v9)
  {
LABEL_8:

    goto LABEL_9;
  }

  sub_1000D3B98(0, &qword_1006EBF48);
  v12 = sub_100573A58();

  if (v12)
  {
    goto LABEL_12;
  }

LABEL_9:
  v13 = *(v0 + 816);
  v14 = *(v0 + 808);
  v15 = *(v0 + 800);
  v16 = *(v0 + 664);

  sub_100321298();
  swift_allocError();
  *v17 = 4;
  *(v17 + 8) = 4;
  swift_willThrow();

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100328DD8()
{
  v2 = *v1;
  *(*v1 + 896) = v0;

  v3 = *(v2 + 712);
  v4 = *(v2 + 704);
  if (v0)
  {
    v5 = sub_100329084;
  }

  else
  {
    v5 = sub_100328140;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100328F14()
{
  v1 = v0[104];
  v2 = v0[102];
  v3 = v0[101];
  v4 = v0[100];
  v5 = v0[83];

  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_100328FC8()
{
  v1 = v0[108];
  v2 = v0[104];
  v3 = v0[102];
  v4 = v0[101];
  v5 = v0[100];
  v6 = v0[83];

  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_100329084()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  v4 = *(v0 + 800);

  v5 = *(v0 + 8);

  return v5();
}

BOOL static SharedListening.isModelObjectTypeSupported(_:)(uint64_t a1)
{
  if (qword_1006E5060 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *(off_1006EE060 + 2);
  v2 = (off_1006EE060 + 32);
  do
  {
    v3 = v1;
    if (v1-- == 0)
    {
      break;
    }

    v5 = *v2++;
  }

  while (v5 != a1);
  return v3 != 0;
}

void __swiftcall SharedListening.Reaction.init(id:emoji:senderID:)(MusicCore::SharedListening::Reaction *__return_ptr retstr, Swift::String_optional id, Swift::String emoji, Swift::String_optional senderID)
{
  object = senderID.value._object;
  countAndFlagsBits = senderID.value._countAndFlagsBits;
  v6 = emoji._object;
  v7 = emoji._countAndFlagsBits;
  v8 = id.value._object;
  v9 = id.value._countAndFlagsBits;
  v11 = sub_10056CAE8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v8)
  {
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v9 = sub_10056CAB8();
    v8 = v15;
    (*(v12 + 8))(v14, v11);
  }

  retstr->id._countAndFlagsBits = v9;
  retstr->id._object = v8;
  retstr->emoji._countAndFlagsBits = v7;
  retstr->emoji._object = v6;
  retstr->senderID.value._countAndFlagsBits = countAndFlagsBits;
  retstr->senderID.value._object = object;
}

uint64_t sub_1003292C8()
{
  v1 = 0x696A6F6D65;
  if (*v0 != 1)
  {
    v1 = 0x44497265646E6573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_100329314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10032D7DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10032933C(uint64_t a1)
{
  v2 = sub_10032D788();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100329378(uint64_t a1)
{
  v2 = sub_10032D788();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SharedListening.Reaction.encode(to:)(void *a1)
{
  v3 = sub_100009DCC(&qword_1006EE080);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000C8CC(a1, a1[3]);
  sub_10032D788();
  sub_100574718();
  v8[15] = 0;
  sub_100574328();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_100574328();
  v8[13] = 2;
  sub_100574308();
  return (*(v4 + 8))(v6, v3);
}

void SharedListening.Reaction.hash(into:)()
{
  sub_1005729F8();
  sub_1005729F8();
  if (*(v0 + 40))
  {
    sub_100574698(1u);

    sub_1005729F8();
  }

  else
  {
    sub_100574698(0);
  }
}

Swift::Int SharedListening.Reaction.hashValue.getter()
{
  sub_100574678();
  sub_1005729F8();
  sub_1005729F8();
  if (*(v0 + 40))
  {
    sub_100574698(1u);
    sub_1005729F8();
  }

  else
  {
    sub_100574698(0);
  }

  return sub_1005746C8();
}

double SharedListening.Reaction.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10032D8E8(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

void sub_1003296D0()
{
  sub_100009DCC(&qword_1006E9140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057BD80;
  *(inited + 32) = sub_1005728D8();
  *(inited + 40) = v1;
  sub_100009DCC(&unk_1006E8FD0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10057B510;
  *(v2 + 32) = sub_1005728D8();
  *(v2 + 40) = v3;
  isa = sub_100572D08().super.isa;

  v5 = objc_opt_self();
  v6 = [v5 propertySetWithProperties:isa];

  *(inited + 48) = v6;
  *(inited + 56) = sub_1005728D8();
  *(inited + 64) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10057B510;
  *(v8 + 32) = sub_1005728D8();
  *(v8 + 40) = v9;
  v10 = sub_100572D08().super.isa;

  v11 = [v5 propertySetWithProperties:v10];

  *(inited + 72) = v11;
  *(inited + 80) = sub_1005728D8();
  *(inited + 88) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10057B510;
  *(v13 + 32) = sub_1005728D8();
  *(v13 + 40) = v14;
  v15 = sub_100572D08().super.isa;

  v16 = [v5 propertySetWithProperties:v15];

  *(inited + 96) = v16;
  *(inited + 104) = sub_1005728D8();
  *(inited + 112) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10057B510;
  *(v18 + 32) = sub_1005728D8();
  *(v18 + 40) = v19;
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_10057B510;
  *(v20 + 32) = sub_1005728D8();
  *(v20 + 40) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10057B510;
  *(v22 + 32) = sub_1005728D8();
  *(v22 + 40) = v23;
  v24 = sub_100572D08().super.isa;

  v25 = [v5 propertySetWithProperties:v24];

  *(v20 + 48) = v25;
  sub_1000F41EC(v20);
  swift_setDeallocating();
  sub_10001036C(v20 + 32, &qword_1006E9148);
  v26 = objc_allocWithZone(MPPropertySet);
  v27 = sub_100572D08().super.isa;

  sub_1000D3B98(0, &qword_1006EADF0);
  v28 = sub_100572688().super.isa;

  v29 = [v26 initWithProperties:v27 relationships:v28];

  *(inited + 120) = v29;
  sub_1000F41EC(inited);
  swift_setDeallocating();
  sub_100009DCC(&qword_1006E9148);
  swift_arrayDestroy();
  v30 = objc_allocWithZone(MPPropertySet);
  v31 = sub_100572D08().super.isa;
  v32 = sub_100572688().super.isa;

  v33 = [v30 initWithProperties:v31 relationships:v32];

  static SharedListening.Event.properties = v33;
}

id static SharedListening.Event.properties.getter()
{
  if (qword_1006E5058 != -1)
  {
    swift_once();
  }

  v1 = static SharedListening.Event.properties;

  return v1;
}

uint64_t sub_100329BB8()
{
  sub_10032ACF0();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100582420;
  *(v0 + 32) = sub_1000D3B98(0, &qword_1006EE0B8);
  *(v0 + 40) = sub_1000D3B98(0, &qword_1006EE0C0);
  *(v0 + 48) = sub_1000D3B98(0, &qword_1006E7D30);
  *(v0 + 56) = sub_1000D3B98(0, qword_1006E7D38);
  result = sub_1000D3B98(0, &qword_1006EE0C8);
  *(v0 + 64) = result;
  off_1006EE060 = v0;
  return result;
}

void *sub_100329C98()
{
  result = sub_100329CB8();
  off_1006EE068 = result;
  return result;
}

uint64_t sub_100329CB8()
{
  sub_100009DCC(&qword_1006EE100);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100581E80;
  *(v0 + 32) = sub_100571B78();
  *(v0 + 40) = &protocol witness table for Album;
  *(v0 + 48) = sub_100571A68();
  *(v0 + 56) = &protocol witness table for Song;
  *(v0 + 64) = sub_1005713A8();
  *(v0 + 72) = &protocol witness table for MusicVideo;
  *(v0 + 80) = sub_1005722D8();
  *(v0 + 88) = &protocol witness table for Playlist;
  *(v0 + 96) = sub_100571F08();
  *(v0 + 104) = &protocol witness table for Station;
  *(v0 + 112) = sub_100571CF8();
  *(v0 + 120) = &protocol witness table for Artist;
  return v0;
}

uint64_t sub_100329D80(uint64_t a1, void *a2)
{
  **(*(*sub_10000C8CC((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;
  v3 = a2;

  return swift_continuation_resume();
}

uint64_t sub_100329DE4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(*sub_10000C8CC((a1 + 32), *(a1 + 56)) + 64) + 40);
  *v5 = a2;
  v5[1] = a3;
  v6 = a2;
  v7 = a3;

  return swift_continuation_resume();
}

uint64_t sub_100329E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[32] = a4;
  v5[33] = a5;
  v5[30] = a2;
  v5[31] = a3;
  v5[29] = a1;
  sub_100009DCC(&qword_1006E6420);
  v5[34] = swift_task_alloc();

  return _swift_task_switch(sub_100329EFC, 0, 0);
}

uint64_t sub_100329EFC()
{
  v1 = *(v0 + 248);
  if (v1)
  {
    *(v0 + 88) = v1;
    *(v0 + 96) = 3;
    v2 = &protocol witness table for Player.ReplaceCommand;
    v3 = &type metadata for Player.ReplaceCommand;
    v21 = v1;
  }

  else
  {
    v21 = 0;
    *(v0 + 88) = 0;
    v2 = &protocol witness table for Player.PlaybackCommand;
    v3 = &type metadata for Player.PlaybackCommand;
  }

  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v6 = *(v0 + 256);
  v8 = *(v0 + 232);
  v7 = *(v0 + 240);
  *(v0 + 112) = v3;
  *(v0 + 120) = v2;
  v9 = sub_100572F48();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  sub_10002EA8C(v0 + 88, v0 + 128);
  *(v0 + 168) = *v8;
  *(v0 + 184) = v8[1];
  v20 = *(v8 + 5);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v1;
  *(v10 + 40) = v6;
  *(v10 + 48) = v5;
  *(v10 + 56) = v1 == 0;
  sub_100140988((v0 + 128), v10 + 64);
  v11 = *v8;
  v12 = v8[1];
  v13 = v8[2];
  *(v10 + 152) = *(v8 + 6);
  *(v10 + 136) = v13;
  *(v10 + 120) = v12;
  *(v10 + 104) = v11;
  *(v10 + 160) = *v7;
  v14 = *(v7 + 64);
  v16 = *(v7 + 32);
  v15 = *(v7 + 48);
  *(v10 + 176) = *(v7 + 16);
  *(v10 + 192) = v16;
  *(v10 + 208) = v15;
  *(v10 + 224) = v14;

  v17 = v21;

  sub_1000CB298(v0 + 168, v0 + 200);
  sub_1000CB298(v0 + 184, v0 + 216);
  sub_1000E672C(v20);
  sub_10000CC8C(v7, v0 + 16, &qword_1006E7A90);
  sub_1002B0D90(0, 0, v4, &unk_1005956B0, v10);

  sub_100010474(v0 + 88);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_10032A138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 152) = v10;
  *(v8 + 160) = v11;
  *(v8 + 136) = a6;
  *(v8 + 144) = a8;
  *(v8 + 192) = a7;
  *(v8 + 128) = a5;
  return _swift_task_switch(sub_10032A16C, 0, 0);
}

uint64_t sub_10032A16C()
{
  if (*(v0 + 128))
  {
    v1 = swift_task_alloc();
    *(v0 + 168) = v1;
    *v1 = v0;
    v1[1] = sub_10032A37C;
    v2 = *(v0 + 192);

    return GroupActivitiesManager.leave(performLeaveCommand:)(v2);
  }

  else if (*(v0 + 136))
  {
    v4 = *(v0 + 152);
    v5 = *(v0 + 160);
    v6 = *v4;
    v7 = v4[1];
    v8 = v4[2];
    v9 = v4[3];
    v10 = v4[5];
    v11 = v4[6];

    sub_1000E672C(v10);
    sub_10000CC8C(v5, v0 + 16, &qword_1006E7A90);
    v12 = sub_1002B0AE0(v6, v7, v8, v9, v10, v11, v5);
    *(v0 + 112) = &type metadata for Alert.ActionCommandIssuingContext;
    *(v0 + 120) = &protocol witness table for Alert.ActionCommandIssuingContext;
    *(v0 + 88) = v12;
    *(v0 + 96) = v13;
    v14 = swift_task_alloc();
    *(v0 + 176) = v14;
    *v14 = v0;
    v14[1] = sub_10032A604;
    v15 = *(v0 + 144);

    return Player.perform(_:options:issuer:)(v15, 0, 0, 0, v0 + 88);
  }

  else
  {
    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_10032A37C()
{

  return _swift_task_switch(sub_10032A478, 0, 0);
}

uint64_t sub_10032A478()
{
  if (v0[17])
  {
    v1 = v0[19];
    v2 = v0[20];
    v3 = *v1;
    v4 = v1[1];
    v5 = v1[2];
    v6 = v1[3];
    v7 = v1[5];
    v8 = v1[6];

    sub_1000E672C(v7);
    sub_10000CC8C(v2, (v0 + 2), &qword_1006E7A90);
    v9 = sub_1002B0AE0(v3, v4, v5, v6, v7, v8, v2);
    v0[14] = &type metadata for Alert.ActionCommandIssuingContext;
    v0[15] = &protocol witness table for Alert.ActionCommandIssuingContext;
    v0[11] = v9;
    v0[12] = v10;
    v11 = swift_task_alloc();
    v0[22] = v11;
    *v11 = v0;
    v11[1] = sub_10032A604;
    v12 = v0[18];

    return Player.perform(_:options:issuer:)(v12, 0, 0, 0, (v0 + 11));
  }

  else
  {
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_10032A604(void *a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10032A76C, 0, 0);
  }

  else
  {

    sub_10001036C(v4 + 88, &qword_1006E6B78);
    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_10032A76C()
{
  sub_10001036C(v0 + 88, &qword_1006E6B78);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10032A7E0()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, static Logger.sharedListening);
  sub_10000C49C(v0, static Logger.sharedListening);
  return sub_10056DF78();
}

uint64_t static Logger.sharedListening.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006E5070 != -1)
  {
    swift_once();
  }

  v2 = sub_10056DF88();
  v3 = sub_10000C49C(v2, static Logger.sharedListening);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10032A90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_10032A92C, 0, 0);
}

uint64_t sub_10032A92C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
    v1();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10032A9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a3;
  return _swift_task_switch(sub_10032A9FC, 0, 0);
}

uint64_t sub_10032A9FC()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = objc_opt_self();
  v5 = [v3 commandRequest];
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v1;
  v0[6] = sub_10032E434;
  v0[7] = v6;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1001FC868;
  v0[5] = &unk_10069C0F0;
  v7 = _Block_copy(v0 + 2);
  v8 = v3;
  sub_1000E672C(v2);

  [v4 performRequest:v5 completion:v7];
  _Block_release(v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10032AB64(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000116F0;

  return sub_10032A9D8(a1, a2, v6, v7, v8);
}

void sub_10032AC24(uint64_t a1, id a2, void (*a3)(void))
{
  if ([a2 type] == 1)
  {
    if (a3)
    {
      v5 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
      a3();
    }
  }

  else if (a3)
  {
    (a3)(a1);
  }
}

uint64_t sub_10032ACF0()
{
  v0 = sub_100009DCC(&qword_1006EE0D0);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_1006EE0D8;
  }

  else
  {
    v2 = &qword_1006E8B80;
  }

  return sub_100009DCC(v2);
}

void sub_10032AD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {

    sub_1000F3E14(a6);
  }
}

void sub_10032ADC8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v37 = a3;
  v38 = a2;
  v6 = sub_10056CAE8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10056CC38();
  __chkstk_darwin(v10 - 8);
  v11 = sub_100572888();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v34 - v16;
  if (FigOutputMonitorIsScreenProbablyBeingRecorded())
  {
    if (qword_1006E5070 != -1)
    {
      swift_once();
    }

    v18 = sub_10056DF88();
    sub_10000C49C(v18, static Logger.sharedListening);
    v19 = sub_10056DF68();
    v20 = sub_100573448();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Play locally action is NOT available because of screen sharing", v21, 2u);
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  else
  {
    v35 = v6;
    v36 = v7;
    sub_100572818();
    (*(v12 + 16))(v15, v17, v11);
    if (qword_1006E4C60 != -1)
    {
      swift_once();
    }

    v29 = qword_1006FC3B8;
    sub_10056CBC8();
    v24 = sub_100572948();
    v25 = v30;
    (*(v12 + 8))(v17, v11);
    v28 = swift_allocObject();
    v31 = v38;
    v28[2] = a1;
    v28[3] = v31;
    v28[4] = v37;

    v32 = a1;

    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v22 = sub_10056CAB8();
    v23 = v33;
    (*(v36 + 8))(v9, v35);
    v27 = &unk_1005956A0;
    v26 = 2;
  }

  *a4 = v22;
  a4[1] = v23;
  a4[2] = v24;
  a4[3] = v25;
  a4[4] = v26;
  a4[5] = v27;
  a4[6] = v28;
}

uint64_t sub_10032B1A0()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10032B1E0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000116F0;

  return sub_10032A90C(a1, a2, v7, v6);
}

void sub_10032B290(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = [a1 type];
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      v28 = [v2 sessionEvent];
      if (v28)
      {
        v29 = v28;
        v30 = [v28 kind];

        if (v30 == 4)
        {

          v8 = 0;
          v9 = 0;
          v10 = 0;
          v11 = 5;
          v12 = 2;
          goto LABEL_83;
        }

        if (v30 == 1)
        {

          v12 = 0;
          v8 = 0;
          v9 = 0;
          v10 = 0;
          v11 = 5;
          goto LABEL_83;
        }
      }

      if (qword_1006E5070 != -1)
      {
        swift_once();
      }

      v38 = sub_10056DF88();
      sub_10000C49C(v38, static Logger.sharedListening);
      v20 = v2;
      v2 = sub_10056DF68();
      v21 = sub_100573408();

      if (os_log_type_enabled(v2, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v82 = v23;
        *v22 = 136446210;
        v39 = [v20 sessionEvent];
        v40 = v39;
        if (v39)
        {
          v41 = [v39 kind];
        }

        else
        {
          v41 = 0;
        }

        v80 = v41;
        v81 = v40 == 0;
        sub_100009DCC(&qword_1006EE0F8);
        v59 = sub_100572978();
        v61 = sub_1000C9784(v59, v60, &v82);

        *(v22 + 4) = v61;
        v27 = "Unknown session event kind: %{public}s";
        goto LABEL_59;
      }

LABEL_46:

LABEL_47:
LABEL_60:
      v12 = 0;
      goto LABEL_61;
    }

    if (v4 == 2)
    {
      v5 = [v2 playbackEvent];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 kind];

        if (v7 > 2)
        {
          if (v7 == 3)
          {

            v8 = 0;
            v9 = 0;
            v10 = 0;
            v11 = 5;
            v12 = 1;
            goto LABEL_83;
          }

          if (v7 == 4)
          {
            v42 = [v2 playbackEvent];
            if (v42)
            {
              v43 = v42;
              v44 = [v42 item];

              if (v44)
              {
                v45 = [v44 innermostModelObject];

                objc_opt_self();
                v46 = swift_dynamicCastObjCClass();
                v44 = v46;
                if (v46)
                {
                  v47 = [v46 title];
                  if (v47)
                  {
                    v48 = v47;
                    v12 = sub_1005728D8();
                    v8 = v49;

                    v9 = 0;
                    v10 = 0;
                    v11 = 2;
                    goto LABEL_83;
                  }
                }

                else
                {
                }
              }
            }

            else
            {
              v44 = 0;
            }

            v12 = 0;
            v9 = 0;
            v10 = 0;
            v11 = 2;
            v8 = 0xE000000000000000;
            goto LABEL_83;
          }
        }

        else
        {
          if (v7 == 1)
          {

            v8 = 0;
            v9 = 0;
            v10 = 0;
            v11 = 5;
            v12 = 4;
            goto LABEL_83;
          }

          if (v7 == 2)
          {

            v8 = 0;
            v9 = 0;
            v10 = 0;
            v11 = 5;
            v12 = 3;
LABEL_83:
            *a2 = v12;
            *(a2 + 8) = v8;
            *(a2 + 16) = v9;
            *(a2 + 24) = v10;
            *(a2 + 32) = 0;
            *(a2 + 40) = 0;
            *(a2 + 48) = v11;
            return;
          }
        }
      }

      if (qword_1006E5070 != -1)
      {
        swift_once();
      }

      v50 = sub_10056DF88();
      sub_10000C49C(v50, static Logger.sharedListening);
      v20 = v2;
      v2 = sub_10056DF68();
      v21 = sub_100573408();

      if (os_log_type_enabled(v2, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v82 = v23;
        *v22 = 136446210;
        v51 = [v20 playbackEvent];
        v52 = v51;
        if (v51)
        {
          v53 = [v51 kind];
        }

        else
        {
          v53 = 0;
        }

        v80 = v53;
        v81 = v52 == 0;
        sub_100009DCC(&qword_1006EE0F0);
        v62 = sub_100572978();
        v64 = sub_1000C9784(v62, v63, &v82);

        *(v22 + 4) = v64;
        v27 = "Unknown playback event kind: %{public}s";
        goto LABEL_59;
      }

      goto LABEL_46;
    }

LABEL_13:
    if (qword_1006E5070 != -1)
    {
      swift_once();
    }

    v19 = sub_10056DF88();
    sub_10000C49C(v19, static Logger.sharedListening);
    v20 = v2;
    v2 = sub_10056DF68();
    v21 = sub_100573408();

    if (os_log_type_enabled(v2, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v80 = v23;
      *v22 = 136446210;
      v82 = [v20 type];
      type metadata accessor for MPCSharedListeningEventType(0);
      v24 = sub_100572978();
      v26 = sub_1000C9784(v24, v25, &v80);

      *(v22 + 4) = v26;
      v27 = "Unknown event type: %{public}s";
LABEL_59:
      _os_log_impl(&_mh_execute_header, v2, v21, v27, v22, 0xCu);
      sub_100010474(v23);

      goto LABEL_60;
    }

    goto LABEL_46;
  }

  if (v4 != 3)
  {
    if (v4 == 4)
    {
      v13 = [v2 reactionEvent];
      if (v13)
      {
        v14 = v13;
        v15 = [v13 reactionIdentifier];
        v12 = sub_1005728D8();
        v8 = v16;

        v17 = [v14 reaction];
        v9 = sub_1005728D8();
        v10 = v18;

        v11 = 1;
        goto LABEL_83;
      }

      goto LABEL_47;
    }

    goto LABEL_13;
  }

  v31 = [v2 queueEvent];
  if (!v31)
  {
    goto LABEL_81;
  }

  v32 = v31;
  v33 = [v31 kind];

  if (v33 != 1)
  {
    if (v33 != 7)
    {
      if (v33 == 6)
      {
        v34 = [v2 queueEvent];
        if (v34)
        {
          v35 = v34;
          v12 = [v34 playedNowContent];

          if (v12)
          {
            v36 = [v12 startItem];
            v37 = [v36 innermostModelObject];

            objc_opt_self();
            v12 = swift_dynamicCastObjCClass();
            if (v12)
            {
              v8 = 0;
              v9 = 0;
              v10 = 0;
              v11 = 3;
              goto LABEL_83;
            }
          }

          else
          {
          }

LABEL_61:
          v8 = 0;
          v9 = 0;
          v10 = 0;
          v11 = -1;
          goto LABEL_83;
        }

        goto LABEL_47;
      }

      goto LABEL_81;
    }

LABEL_77:
    v71 = [v2 queueEvent];
    if (v71)
    {
      v72 = v71;
      v73 = [v71 contentUpdatedMessage];

      if (v73)
      {
        v74 = [v73 localizedTitle];
        if (v74)
        {
          v75 = v74;
          v12 = sub_1005728D8();
          v8 = v76;
        }

        else
        {
          v12 = 0;
          v8 = 0;
        }

        v77 = [v73 localizedMessage];
        if (v77)
        {
          v78 = v77;
          v9 = sub_1005728D8();
          v10 = v79;
        }

        else
        {

          v9 = 0;
          v10 = 0;
        }

        v11 = 4;
        goto LABEL_83;
      }
    }

LABEL_81:

    v12 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 4;
    goto LABEL_82;
  }

  v54 = [v2 queueEvent];
  if (!v54)
  {
    goto LABEL_77;
  }

  v55 = v54;
  v56 = [v54 addedContent];

  if (!v56)
  {
    goto LABEL_77;
  }

  v57 = [v56 container];
  if (v57)
  {
    v58 = v57;
    v12 = [v57 innermostModelObject];

    v9 = 0;
    v10 = 0;
    v11 = 0;
LABEL_82:
    v8 = 1;
    goto LABEL_83;
  }

  v65 = [v56 items];
  sub_1000D3B98(0, &qword_1006EE0E8);
  v66 = sub_100572D28();

  if (!(v66 >> 62))
  {
    if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_66;
    }

LABEL_76:

    goto LABEL_77;
  }

  if (!sub_100574178())
  {
    goto LABEL_76;
  }

LABEL_66:
  if ((v66 & 0xC000000000000001) != 0)
  {
    v67 = sub_100573F58();
    goto LABEL_69;
  }

  if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v67 = *(v66 + 32);
LABEL_69:
    v68 = v67;

    v69 = [v68 innermostModelObject];

    objc_opt_self();
    v70 = swift_dynamicCastObjCClass();
    if (v70)
    {
      v12 = v70;

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      goto LABEL_83;
    }

    goto LABEL_77;
  }

  __break(1u);
}

uint64_t sub_10032BD60()
{
  if (qword_1006E5070 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = sub_10056DF88();
  v0[21] = sub_10000C49C(v2, static Logger.sharedListening);
  v3 = v1;
  v4 = sub_10056DF68();
  v5 = sub_100573448();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[20];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "🏗 Building session with intent=%{public}@", v7, 0xCu);
    sub_10001036C(v8, &qword_1006E7640);
  }

  v10 = objc_allocWithZone(ICLiveLinkIdentity);
  v0[14] = CFRange.init(_:);
  v0[15] = 0;
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001D65E4;
  v0[13] = &unk_10069C000;
  v11 = _Block_copy(v0 + 10);
  v12 = [v10 initWithBlock:v11];
  v0[22] = v12;
  _Block_release(v11);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v14 = v0[20];
    v15 = objc_opt_self();
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_10032C068;
    v16 = swift_continuation_init();
    v0[17] = sub_100009DCC(&qword_1006EE0E0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100329DE4;
    v0[13] = &unk_10069C028;
    v0[14] = v16;
    [v15 buildSharedSessionIntentWithIntent:v14 identity:v12 extendedStatusCompletion:v0 + 10];
    isEscapingClosureAtFileLocation = (v0 + 2);
  }

  return _swift_continuation_await(isEscapingClosureAtFileLocation);
}

uint64_t sub_10032C068()
{

  return _swift_task_switch(sub_10032C148, 0, 0);
}

uint64_t sub_10032C148()
{
  v23 = v0;
  v1 = v0[18];
  v2 = v0[19];
  if (v1 && (v3 = v1, v4 = [v3 sharedListeningProperties], v3, v4))
  {

    v5 = sub_10056DF68();
    v6 = sub_100573448();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "✅ Shared listening intent successfully built", v7, 2u);
    }

    v8 = v0[22];

    v9 = v0[1];

    return v9(v1);
  }

  else
  {
    v11 = v2;
    v12 = sub_10056DF68();
    v13 = sub_100573428();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136446210;
      v0[10] = [v11 error];
      sub_100009DCC(&qword_1006EBF40);
      v16 = sub_100572978();
      v18 = sub_1000C9784(v16, v17, &v22);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "⚠️ Creation error %{public}s", v14, 0xCu);
      sub_100010474(v15);
    }

    v19 = v0[22];
    sub_100321298();
    swift_allocError();
    *v20 = v11;
    *(v20 + 8) = 2;
    swift_willThrow();

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_10032C400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[42] = a3;
  v4[43] = a4;
  v4[40] = a1;
  v4[41] = a2;
  v4[44] = sub_100572F08();
  v4[45] = sub_100572EF8();
  v6 = sub_100572E78();
  v4[46] = v6;
  v4[47] = v5;

  return _swift_task_switch(sub_10032C4A0, v6, v5);
}

uint64_t sub_10032C4A0()
{
  v45 = v0;
  if (qword_1006E5070 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 320);
  v2 = sub_10056DF88();
  *(v0 + 384) = sub_10000C49C(v2, static Logger.sharedListening);
  v3 = v1;

  v4 = sub_10056DF68();
  v5 = sub_100573448();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 336);
    v43 = *(v0 + 320);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v44[0] = v8;
    *v7 = 136446210;
    *(v0 + 272) = v43;
    *(v0 + 288) = v6;
    v9 = v43;

    v10 = sub_100572978();
    v12 = sub_1000C9784(v10, v11, v44);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "🏗 Building session with command=%{public}s", v7, 0xCu);
    sub_100010474(v8);
  }

  v13 = *(v0 + 344);
  if (v13 && (v14 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player, swift_beginAccess(), *(v13 + v14)) && (swift_getKeyPath(), swift_getKeyPath(), , sub_10056E478(), , , , (v15 = *(v0 + 296)) != 0) && (v16 = [*(v0 + 296) tracklist], v17 = objc_msgSend(v16, "playingItem"), v15, v16, v17))
  {

    v18 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
    swift_beginAccess();
    if (!*(v13 + v18) || (swift_getKeyPath(), swift_getKeyPath(), , sub_10056E478(), , , , (v19 = *(v0 + 304)) == 0) || (v20 = [*(v0 + 304) route], *(v0 + 392) = v20, v19, !v20))
    {
LABEL_14:
      v21 = *(v0 + 336);
      v22 = *(v0 + 320);
      *(v0 + 144) = v22;
      *(v0 + 208) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 216) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 176) = &protocol witness table for Player.BuildSharedSessionCommand;
      *(v0 + 184) = 0x694C646572616853;
      *(v0 + 192) = 0xEF676E696E657473;
      *(v0 + 160) = v21;
      *(v0 + 168) = &type metadata for Player.BuildSharedSessionCommand;
      v23 = v22;

      *(v0 + 416) = sub_100572EF8();
      v25 = sub_100572E78();
      *(v0 + 424) = v25;
      *(v0 + 432) = v24;

      return _swift_task_switch(sub_10032CD70, v25, v24);
    }

    if ([v20 isDeviceRoute])
    {

      goto LABEL_14;
    }

    v28 = v20;
    v29 = sub_10056DF68();
    v30 = sub_100573448();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v44[0] = v32;
      *v31 = 136446210;
      v33 = v28;
      v34 = [v33 description];
      v35 = sub_1005728D8();
      v37 = v36;

      v38 = sub_1000C9784(v35, v37, v44);

      *(v31 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v29, v30, "    Build session command needs to be performed on the system route.\n    Switching from %{public}s) to system route.", v31, 0xCu);
      sub_100010474(v32);
    }

    v39 = objc_opt_self();
    v40 = [v39 systemRoute];
    *(v0 + 400) = v40;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_10032CB3C;
    v41 = swift_continuation_init();
    *(v0 + 136) = sub_100009DCC(&unk_1006EB680);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_100192078;
    *(v0 + 104) = &unk_10069BFD8;
    *(v0 + 112) = v41;
    [v39 setActiveRoute:v40 completion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {

    sub_100321298();
    swift_allocError();
    *v26 = 2;
    *(v26 + 8) = 4;
    swift_willThrow();
    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_10032CB3C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 408) = v2;
  v3 = *(v1 + 376);
  v4 = *(v1 + 368);
  if (v2)
  {
    v5 = sub_10032D6DC;
  }

  else
  {
    v5 = sub_10032CC6C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10032CC6C()
{
  v1 = *(v0 + 400);

  v2 = *(v0 + 336);
  v3 = *(v0 + 320);
  *(v0 + 144) = v3;
  *(v0 + 208) = &type metadata for Player.CommandIssuerIdentity;
  *(v0 + 216) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v0 + 176) = &protocol witness table for Player.BuildSharedSessionCommand;
  *(v0 + 184) = 0x694C646572616853;
  *(v0 + 192) = 0xEF676E696E657473;
  *(v0 + 160) = v2;
  *(v0 + 168) = &type metadata for Player.BuildSharedSessionCommand;
  v4 = v3;

  *(v0 + 416) = sub_100572EF8();
  v6 = sub_100572E78();
  *(v0 + 424) = v6;
  *(v0 + 432) = v5;

  return _swift_task_switch(sub_10032CD70, v6, v5);
}

uint64_t sub_10032CD70()
{
  sub_100009DCC(&unk_1006EAF50);
  v1 = swift_allocObject();
  v0[55] = v1;
  *(v1 + 16) = xmmword_10057B510;
  sub_10002EA8C((v0 + 18), v1 + 32);
  v0[56] = sub_100572EF8();
  v2 = swift_task_alloc();
  v0[57] = v2;
  *v2 = v0;
  v2[1] = sub_10032CE6C;

  return sub_10029AD70(v1, 0x10000, 1, 0, 0, (v0 + 23));
}

uint64_t sub_10032CE6C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 464) = a1;
  *(v3 + 472) = v1;

  if (v1)
  {

    v4 = sub_100572E78();
    v6 = v5;
    v7 = sub_10032D184;
  }

  else
  {
    v4 = sub_100572E78();
    v6 = v8;
    v7 = sub_10032CFE4;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_10032CFE4()
{

  v1 = *(v0 + 424);
  v2 = *(v0 + 432);

  return _swift_task_switch(sub_10032D050, v1, v2);
}

uint64_t sub_10032D050()
{
  v1 = v0[58];

  if (v1 >> 62)
  {
    v4 = sub_100574178();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_8:

    sub_10001036C((v0 + 23), &qword_1006E6B78);
    sub_100010474((v0 + 18));
    v2 = v0[46];
    v3 = v0[47];
    v6 = sub_10032D678;
    goto LABEL_9;
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v5 = sub_100573F58();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return _swift_task_switch(v4, v2, v3);
    }

    v5 = *(v0[58] + 32);
  }

  v0[60] = v5;

  sub_10001036C((v0 + 23), &qword_1006E6B78);
  sub_100010474((v0 + 18));
  v2 = v0[46];
  v3 = v0[47];
  v6 = sub_10032D424;
LABEL_9:
  v4 = v6;

  return _swift_task_switch(v4, v2, v3);
}

uint64_t sub_10032D184()
{

  v1 = *(v0 + 424);
  v2 = *(v0 + 432);

  return _swift_task_switch(sub_10032D1E8, v1, v2);
}

uint64_t sub_10032D1E8()
{

  v1 = *(v0 + 368);
  v2 = *(v0 + 376);

  return _swift_task_switch(sub_10032D24C, v1, v2);
}

uint64_t sub_10032D24C()
{
  v13 = v0;

  sub_10001036C((v0 + 23), &qword_1006E6B78);
  sub_100010474((v0 + 18));
  v1 = v0[59];
  swift_errorRetain();
  v2 = sub_10056DF68();
  v3 = sub_100573428();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446210;
    v0[39] = v1;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60);
    v6 = sub_100572978();
    v8 = sub_1000C9784(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "⚠️ Building session failed with error=%{public}s", v4, 0xCu);
    sub_100010474(v5);
  }

  sub_100321298();
  swift_allocError();
  *v9 = 3;
  *(v9 + 8) = 4;
  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_10032D424()
{
  v18 = v0;
  v1 = *(v0 + 480);

  v2 = [v1 error];
  if (v2 || (v2 = [*(v0 + 480) dialog]) != 0)
  {
    v3 = *(v0 + 480);

    sub_100321298();
    v4 = swift_allocError();
    *v5 = v3;
    *(v5 + 8) = 2;
    swift_willThrow();

    swift_errorRetain();
    v6 = sub_10056DF68();
    v7 = sub_100573428();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136446210;
      *(v0 + 312) = v4;
      swift_errorRetain();
      sub_100009DCC(&qword_1006E9B60);
      v10 = sub_100572978();
      v12 = sub_1000C9784(v10, v11, &v17);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "⚠️ Building session failed with error=%{public}s", v8, 0xCu);
      sub_100010474(v9);
    }

    swift_allocError();
    *v13 = 3;
    *(v13 + 8) = 4;
    swift_willThrow();

    v14 = *(v0 + 8);
  }

  else
  {
    v16 = *(v0 + 480);

    v14 = *(v0 + 8);
  }

  return v14();
}

uint64_t sub_10032D678()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10032D6DC()
{
  v1 = v0[50];
  v2 = v0[49];

  swift_willThrow();

  v3 = v0[1];

  return v3();
}

unint64_t sub_10032D788()
{
  result = qword_1006EE088;
  if (!qword_1006EE088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EE088);
  }

  return result;
}

uint64_t sub_10032D7DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_100574498() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696A6F6D65 && a2 == 0xE500000000000000 || (sub_100574498() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44497265646E6573 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_100574498();

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

uint64_t sub_10032D8E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100009DCC(&qword_1006EE0B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_10000C8CC(a1, a1[3]);
  sub_10032D788();
  sub_100574708();
  if (v2)
  {
    return sub_100010474(a1);
  }

  v25 = 0;
  v9 = sub_100574298();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_100574298();
  v21 = v12;
  v23 = 2;
  v13 = sub_100574278();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = sub_100010474(a1);
  *a2 = v22;
  a2[1] = v11;
  v18 = v21;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v13;
  a2[5] = v16;
  return result;
}

unint64_t sub_10032DB38()
{
  result = qword_1006EE090;
  if (!qword_1006EE090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EE090);
  }

  return result;
}

uint64_t sub_10032DBB8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10032DBDC(uint64_t a1)
{
  if ((*(a1 + 48) & 7u) <= 4)
  {
    return *(a1 + 48) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_10032DBF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 49))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 48);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10032DC40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_10032DC94(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_10032DCDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_10032DD38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10032DDAC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10032DE08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10032DE7C(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t sub_10032DE98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_10032DEE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_10032DF24(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_10032DF50()
{
  result = qword_1006EE098;
  if (!qword_1006EE098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EE098);
  }

  return result;
}

unint64_t sub_10032DFA8()
{
  result = qword_1006EE0A0;
  if (!qword_1006EE0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EE0A0);
  }

  return result;
}

unint64_t sub_10032E000()
{
  result = qword_1006EE0A8;
  if (!qword_1006EE0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EE0A8);
  }

  return result;
}

uint64_t sub_10032E064(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10032E07C()
{
  v1 = sub_10056C8A8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_10032E104(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10032E14C()
{

  return swift_deallocObject();
}

uint64_t sub_10032E194(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000CB98;

  return sub_100329E58(a1, a2, v6, v7, v8);
}

uint64_t sub_10032E254()
{
  swift_unknownObjectRelease();

  sub_100010474(v0 + 64);

  if (*(v0 + 144))
  {
  }

  if (*(v0 + 216))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10032E2F4(uint64_t a1)
{
  v4 = *(v1 + 24);
  v11 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000CB98;

  return sub_10032A138(a1, v11, v4, v5, v6, v7, v8, v1 + 64);
}

uint64_t sub_10032E3EC()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

unint64_t UnifiedMessages.MLI.State.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6572676F72506E69;
  if (a1 != 2)
  {
    v2 = 0x6574656C706D6F63;
  }

  if (!a1)
  {
    v1 = 0xD00000000000001ELL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_10032E534()
{
  sub_100574678();
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_10032E604()
{
  sub_1005729F8();
}

Swift::Int sub_10032E6C0()
{
  sub_100574678();
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_10032E78C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore15UnifiedMessagesO3MLIV5StateO8rawValueAGSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10032E7BC(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xEA00000000007373;
  v5 = 0x6572676F72506E69;
  if (*v1 != 2)
  {
    v5 = 0x6574656C706D6F63;
    v4 = 0xE900000000000064;
  }

  if (!*v1)
  {
    v3 = 0xD00000000000001ELL;
    v2 = 0x80000001005AC630;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

MusicCore::UnifiedMessages::GroupDefaultsKey_optional __swiftcall UnifiedMessages.GroupDefaultsKey.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_100685B68;
  v6._object = object;
  v3 = sub_100574238(v2, v6);

  if (v3 == 1)
  {
    v4.value = MusicCore_UnifiedMessages_GroupDefaultsKey_countOfSongsInLibrary;
  }

  else
  {
    v4.value = MusicCore_UnifiedMessages_GroupDefaultsKey_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t UnifiedMessages.GroupDefaultsKey.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_10032E9C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v3 = 0xD000000000000019;
  }

  if (v2)
  {
    v4 = "nknown";
  }

  else
  {
    v4 = "countOfPlaylistsInLibrary";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000015;
  }

  else
  {
    v6 = 0xD000000000000019;
  }

  if (*a2)
  {
    v7 = "countOfPlaylistsInLibrary";
  }

  else
  {
    v7 = "nknown";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100574498();
  }

  return v9 & 1;
}