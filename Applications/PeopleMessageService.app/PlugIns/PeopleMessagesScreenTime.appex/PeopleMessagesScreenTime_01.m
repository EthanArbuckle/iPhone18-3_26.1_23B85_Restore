uint64_t sub_10001B940()
{
  v1 = v0;
  v2 = sub_100026864();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 activeConversation];
  if (!v7 || (v8 = v7, (*(v3 + 104))(v6, enum case for PeopleURL.Parameter.requestID(_:), v2), v9 = sub_10000ACE8(v6), v11 = v10, v8, (*(v3 + 8))(v6, v2), !v11))
  {

    v9 = 0;
    v11 = 0xE000000000000000;
  }

  v12 = &v1[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
  v13 = *&v1[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID + 8];
  *v12 = v9;
  v12[1] = v11;
}

double sub_10001BA98(double a1, double a2)
{
  v5 = sub_100026834();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026894();
  v10 = v2;
  v11 = sub_100026824();
  v12 = sub_100027304();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v13 = 136315906;
    v14 = *&v10[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
    v15 = *&v10[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID + 8];

    v16 = sub_100005F78(v14, v15, &v34);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_100005F78(0xD000000000000017, 0x8000000100029F50, &v34);
    *(v13 + 22) = 2048;
    *(v13 + 24) = a1;
    *(v13 + 32) = 2048;
    *(v13 + 34) = a2;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s  %s! size: %f x %f", v13, 0x2Au);
    swift_arrayDestroy();
  }

  (*(v6 + 8))(v9, v5);
  if ((v10[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_initialLoadError] & 1) == 0)
  {
    [v10 additionalSafeAreaInsets];
    v19 = v17 + v18;
    v22 = v20 + v21;
    v23 = 150.0;
    if (a2 > 150.0)
    {
      v23 = a2;
    }

    v24 = 300.0;
    if (a1 <= 300.0)
    {
      v24 = a1;
    }

    a1 = v24 - v22;
    v25 = *&v10[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_bubble];
    if (v25)
    {
      v26 = *(v25 + OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_contentViewController);
      if (v26)
      {
        v27 = v23 - v19;
        v28 = [v26 view];
        if (v28)
        {
          v29 = v28;
          [v28 sizeThatFits:{a1, v27}];
          v31 = v30;

          return ceil(v22 + v31);
        }
      }
    }
  }

  return a1;
}

void sub_10001BDFC(void *a1)
{
  v3 = sub_10000274C(&qword_1000391C8, &qword_100028010);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v101 = &v94 - v5;
  v6 = sub_10000274C(&qword_100039830, &qword_100028358);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v103 = &v94 - v8;
  v9 = sub_100026B04();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v100 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v99 = &v94 - v15;
  __chkstk_darwin(v14);
  v107 = &v94 - v16;
  v17 = sub_100026834();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v98 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v102 = &v94 - v23;
  v24 = __chkstk_darwin(v22);
  v105 = &v94 - v25;
  __chkstk_darwin(v24);
  v27 = &v94 - v26;
  sub_100026894();
  v28 = v1;
  v29 = sub_100026824();
  v30 = sub_100027304();

  v31 = os_log_type_enabled(v29, v30);
  v106 = v18;
  v104 = v10;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v108 = v95;
    *v32 = 136315394;
    v33 = v17;
    v34 = v9;
    v35 = a1;
    v37 = *&v28[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
    v36 = *&v28[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID + 8];

    v38 = sub_100005F78(v37, v36, &v108);
    a1 = v35;
    v9 = v34;
    v17 = v33;

    *(v32 + 4) = v38;
    v10 = v104;
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_100005F78(0xD000000000000017, 0x8000000100029F00, &v108);
    _os_log_impl(&_mh_execute_header, v29, v30, "%s  %s!", v32, 0x16u);
    swift_arrayDestroy();

    v18 = v106;
  }

  v39 = *(v18 + 8);
  (v39)(v27, v17);
  v40 = type metadata accessor for RequestMessageViewController();
  v110.receiver = v28;
  v110.super_class = v40;
  objc_msgSendSuper2(&v110, "willBecomeActiveWithConversation:", a1);
  [v28 setNeedsSizeMatchBeforeSnapshotSwap];
  v28[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_isBubbleActive] = 1;
  v41 = v103;
  sub_10001A40C(a1, v103);
  v42 = (*(v10 + 48))(v41, 1, v9);
  v43 = v105;
  if (v42 == 1)
  {
    sub_100006B20(v41, &qword_100039830, &qword_100028358);
    v44 = sub_100026874();
    v45 = v98;
    sub_100026894();
    v108 = 0;
    v109 = 0xE000000000000000;
    v46 = v44;
    sub_1000273B4(37);
    v48 = *&v28[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
    v47 = *&v28[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID + 8];

    v108 = v48;
    v109 = v47;
    v111._countAndFlagsBits = 32;
    v111._object = 0xE100000000000000;
    sub_1000271E4(v111);
    v112._object = 0x8000000100029F00;
    v112._countAndFlagsBits = 0xD000000000000017;
    sub_1000271E4(v112);
    v113._countAndFlagsBits = 0xD000000000000020;
    v113._object = 0x8000000100029F20;
    sub_1000271E4(v113);
    sub_100026814();

    (v39)(v45, v17);
    sub_100019110();
  }

  else
  {
    v97 = v17;
    v49 = v107;
    (*(v10 + 32))(v107, v41, v9);
    sub_100026894();
    v50 = v99;
    v98 = *(v10 + 16);
    (v98)(v99, v49, v9);
    v51 = v28;
    v52 = sub_100026824();
    v53 = sub_100027304();
    v95 = v9;
    v54 = v53;

    v55 = os_log_type_enabled(v52, v54);
    v103 = v39;
    v96 = a1;
    if (v55)
    {
      v56 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      *v56 = 136315650;
      v57 = *&v51[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
      v58 = *&v51[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID + 8];

      v59 = sub_100005F78(v57, v58, &v108);

      *(v56 + 4) = v59;
      *(v56 + 12) = 2080;
      *(v56 + 14) = sub_100005F78(0xD000000000000017, 0x8000000100029F00, &v108);
      *(v56 + 22) = 2080;
      v60 = sub_100026AF4();
      v62 = v61;
      v63 = *(v10 + 8);
      v64 = v95;
      v99 = v63;
      (v63)(v50, v95);
      v65 = sub_100005F78(v60, v62, &v108);

      *(v56 + 24) = v65;
      _os_log_impl(&_mh_execute_header, v52, v54, "%s %s - %s loaded from cache", v56, 0x20u);
      swift_arrayDestroy();

      v66 = v97;
      (v103)(v105, v97);
      v67 = v64;
    }

    else
    {

      v67 = v95;
      v99 = *(v10 + 8);
      (v99)(v50, v95);
      v66 = v97;
      (v39)(v43, v97);
    }

    v68 = v102;
    v69 = v107;
    sub_10001C8D4(v107);
    sub_100026894();
    v70 = v100;
    (v98)(v100, v69, v67);
    v71 = v51;
    v72 = sub_100026824();
    v73 = sub_100027304();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      *v74 = 136315650;
      v75 = *&v71[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
      v76 = *&v71[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID + 8];

      v77 = sub_100005F78(v75, v76, &v108);

      *(v74 + 4) = v77;
      *(v74 + 12) = 2080;
      *(v74 + 14) = sub_100005F78(0xD000000000000017, 0x8000000100029F00, &v108);
      *(v74 + 22) = 2080;
      v78 = sub_100026AF4();
      v80 = v79;
      v81 = v70;
      v82 = v99;
      (v99)(v81, v67);
      v83 = sub_100005F78(v78, v80, &v108);

      *(v74 + 24) = v83;
      v84 = v73;
      v85 = v82;
      _os_log_impl(&_mh_execute_header, v72, v84, "%s %s - %s loadIgnoringCache...", v74, 0x20u);
      swift_arrayDestroy();

      v86 = v102;
      v87 = v97;
    }

    else
    {

      v85 = v99;
      (v99)(v70, v67);
      v86 = v68;
      v87 = v66;
    }

    (v103)(v86, v87);
    v88 = sub_1000272A4();
    v89 = v101;
    (*(*(v88 - 8) + 56))(v101, 1, 1, v88);
    sub_100027274();
    v90 = v71;
    v91 = v96;
    v92 = sub_100027264();
    v93 = swift_allocObject();
    v93[2] = v92;
    v93[3] = &protocol witness table for MainActor;
    v93[4] = v90;
    v93[5] = v91;
    sub_100003824(0, 0, v89, &unk_1000288B8, v93);

    v85(v107, v67);
  }
}

id sub_10001C8D4(uint64_t a1)
{
  v2 = v1;
  v76 = a1;
  v3 = sub_100026834();
  v77 = *(v3 - 8);
  v78 = v3;
  v4 = *(v77 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v73 - v9;
  __chkstk_darwin(v8);
  v12 = v73 - v11;
  v13 = sub_10000274C(&qword_100039710, &unk_1000287B0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v73 - v15;
  v17 = sub_100026994();
  v75 = *(v17 - 8);
  v18 = *(v75 + 64);
  __chkstk_darwin(v17);
  v20 = v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000274C(&qword_100039830, &qword_100028358);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = v73 - v23;
  v25 = &v2[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_bubbleDelegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v2[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_isBubbleActive] == 1)
    {
      v27 = *(v25 + 1);
      v28 = Strong;
      ObjectType = swift_getObjectType();
      v30 = *(v27 + 16);
      v31 = v76;
      v73[1] = v28;
      v74 = v30(v76, ObjectType, v27);
      v32 = *(v74 + OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_contentViewController);
      if (v32)
      {
        v33 = sub_100026B04();
        v34 = *(v33 - 8);
        (*(v34 + 16))(v24, v31, v33);
        (*(v34 + 56))(v24, 0, 1, v33);
        v35 = v32;
        LOBYTE(v33) = sub_100020654(v24);
        sub_100006B20(v24, &qword_100039830, &qword_100028358);
        if (v33)
        {
          sub_1000192F4();
          v36 = v75;
        }

        else
        {
          v65 = swift_unknownObjectWeakLoadStrong();
          v36 = v75;
          v66 = v76;
          if (v65)
          {
            v67 = *(v25 + 1);
            v68 = swift_getObjectType();
            (*(v67 + 24))(v66, v68, v67);
            swift_unknownObjectRelease();
          }
        }

        result = [v35 view];
        if (result)
        {
          v69 = result;
          v70 = [objc_opt_self() clearColor];
          [v69 setBackgroundColor:v70];

          sub_1000269D4();
          v71 = *(v36 + 48);
          if (v71(v16, 1, v17) == 1)
          {
            (*(v36 + 104))(v20, enum case for MessageDetails.EventSource.unknown(_:), v17);
            if (v71(v16, 1, v17) != 1)
            {
              sub_100006B20(v16, &qword_100039710, &unk_1000287B0);
            }
          }

          else
          {
            (*(v36 + 32))(v20, v16, v17);
          }

          sub_10002000C(v35);
          swift_unknownObjectRelease();

          (*(v36 + 8))(v20, v17);
          v72 = *&v2[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_bubble];
          *&v2[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_bubble] = v74;
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        sub_100026894();
        v56 = v2;
        v57 = sub_100026824();
        v58 = sub_100027314();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v79 = v60;
          *v59 = 136315138;
          v61 = &v56[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
          v62 = *&v56[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
          v63 = *(v61 + 1);

          v64 = sub_100005F78(v62, v63, &v79);

          *(v59 + 4) = v64;
          _os_log_impl(&_mh_execute_header, v57, v58, "%s - No bubble view controller!", v59, 0xCu);
          sub_100006044(v60);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        return (*(v77 + 8))(v12, v78);
      }
    }

    else
    {
      sub_100026894();
      v47 = v2;
      v48 = sub_100026824();
      v49 = sub_100027304();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v79 = v51;
        *v50 = 136315138;
        v52 = &v47[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
        v53 = *&v47[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
        v54 = *(v52 + 1);

        v55 = sub_100005F78(v53, v54, &v79);

        *(v50 + 4) = v55;
        _os_log_impl(&_mh_execute_header, v48, v49, "%s has been deactivated prior to render!", v50, 0xCu);
        sub_100006044(v51);

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      return (*(v77 + 8))(v10, v78);
    }
  }

  else
  {
    sub_100026894();
    v37 = v2;
    v38 = sub_100026824();
    v39 = sub_100027314();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v79 = v41;
      *v40 = 136315138;
      v42 = &v37[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
      v43 = *&v37[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
      v44 = *(v42 + 1);

      v45 = sub_100005F78(v43, v44, &v79);

      *(v40 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v38, v39, "%s - Missing bubble creator!", v40, 0xCu);
      sub_100006044(v41);
    }

    return (*(v77 + 8))(v7, v78);
  }

  return result;
}

uint64_t sub_10001D124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_100027274();
  v5[3] = sub_100027264();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_10001D1E0;

  return sub_100019418(a5);
}

uint64_t sub_10001D1E0()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_100027244();

  return _swift_task_switch(sub_10001D31C, v5, v4);
}

uint64_t sub_10001D31C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10001D3E4(void *a1)
{
  v3 = sub_100026834();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026894();
  v8 = a1;
  v9 = v1;
  v10 = sub_100026824();
  v11 = sub_100027304();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v26 = v3;
    v13 = v12;
    v25 = swift_slowAlloc();
    v28 = v25;
    *v13 = 136315650;
    v14 = *&v9[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
    v15 = *&v9[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID + 8];

    v16 = sub_100005F78(v14, v15, &v28);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_100005F78(0xD000000000000013, 0x8000000100029EC0, &v28);
    *(v13 + 22) = 2080;
    v27 = a1;
    v17 = v8;
    sub_10000274C(&qword_100039D70, &qword_1000288A8);
    v18 = sub_100027174();
    v20 = sub_100005F78(v18, v19, &v28);

    *(v13 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s  %s %s", v13, 0x20u);
    swift_arrayDestroy();

    result = (*(v4 + 8))(v7, v26);
    if (a1)
    {
      return result;
    }
  }

  else
  {

    result = (*(v4 + 8))(v7, v3);
    if (a1)
    {
      return result;
    }
  }

  v9[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_isBubbleActive] = 0;
  v22 = *&v9[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_messageDetailsLoader];
  if (*(v22 + 128))
  {
    sub_100026B04();

    sub_10000274C(&qword_100039848, &qword_100028370);
    sub_1000272C4();

    v23 = *(v22 + 128);
  }

  *(v22 + 128) = 0;

  sub_1000192F4();
  v24 = *&v9[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_bubble];
  *&v9[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_bubble] = 0;
}

uint64_t sub_10001D770(uint64_t a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for RequestMessageViewController();
  objc_msgSendSuper2(&v6, "willResignActiveWithConversation:", a1);
  v1[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_isBubbleActive] = 0;
  v3 = *&v1[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_messageDetailsLoader];
  if (*(v3 + 128))
  {
    sub_100026B04();

    sub_10000274C(&qword_100039848, &qword_100028370);
    sub_1000272C4();

    v4 = *(v3 + 128);
  }

  *(v3 + 128) = 0;

  return sub_1000192F4();
}

void sub_10001D8A4(uint64_t a1)
{
  v3 = sub_100026834();
  v63 = *(v3 - 8);
  v64 = v3;
  v4 = *(v63 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v58 - v9;
  __chkstk_darwin(v8);
  v12 = &v58 - v11;
  v13 = sub_10000274C(&qword_100039830, &qword_100028358);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v58 - v15;
  v17 = sub_100026B04();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v58 - v23;
  v25 = type metadata accessor for RequestMessageViewController();
  v66.receiver = v1;
  v66.super_class = v25;
  objc_msgSendSuper2(&v66, "didTransitionToPresentationStyle:", a1);
  v26 = [v1 activeConversation];
  if (v26)
  {
    v27 = v26;
    sub_10001A40C(v26, v16);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      sub_100006B20(v16, &qword_100039830, &qword_100028358);
      sub_100026894();
      v28 = v1;
      v29 = sub_100026824();
      v30 = sub_100027304();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = v27;
        v32 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *v32 = 136315394;
        v33 = *&v28[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
        v34 = *&v28[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID + 8];

        v35 = sub_100005F78(v33, v34, &v65);

        *(v32 + 4) = v35;
        *(v32 + 12) = 2080;
        *(v32 + 14) = sub_100005F78(0xD000000000000012, 0x8000000100029EA0, &v65);
        _os_log_impl(&_mh_execute_header, v29, v30, "%s %s - failed to load from cache", v32, 0x16u);
        swift_arrayDestroy();

        v27 = v31;
      }

      (*(v63 + 8))(v10, v64);
      sub_100019110();
    }

    else
    {
      v62 = v27;
      (*(v18 + 32))(v24, v16, v17);
      sub_100026894();
      (*(v18 + 16))(v22, v24, v17);
      v45 = v1;
      v46 = sub_100026824();
      v47 = sub_100027304();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v65 = v60;
        *v48 = 136315650;
        v59 = v47;
        v61 = v45;
        v49 = *&v45[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
        v50 = *&v45[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID + 8];

        v51 = sub_100005F78(v49, v50, &v65);

        *(v48 + 4) = v51;
        v58 = v46;
        *(v48 + 12) = 2080;
        *(v48 + 14) = sub_100005F78(0xD000000000000012, 0x8000000100029EA0, &v65);
        *(v48 + 22) = 2080;
        v52 = sub_100026AF4();
        v54 = v53;
        v55 = *(v18 + 8);
        v55(v22, v17);
        v56 = sub_100005F78(v52, v54, &v65);

        *(v48 + 24) = v56;
        v57 = v58;
        _os_log_impl(&_mh_execute_header, v58, v59, "%s %s - %s loaded from cache", v48, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        v55 = *(v18 + 8);
        v55(v22, v17);
      }

      (*(v63 + 8))(v12, v64);
      sub_10001C8D4(v24);

      v55(v24, v17);
    }
  }

  else
  {
    sub_100026894();
    v36 = v1;
    v37 = sub_100026824();
    v38 = sub_100027314();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v65 = v40;
      *v39 = 136315138;
      v41 = &v36[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
      v42 = *&v36[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
      v43 = *(v41 + 1);

      v44 = sub_100005F78(v42, v43, &v65);

      *(v39 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v37, v38, "%s expected an active converstation, confused!", v39, 0xCu);
      sub_100006044(v40);
    }

    (*(v63 + 8))(v7, v64);
  }
}

id sub_10001E004(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = sub_1000267E4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v4[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
  sub_1000267D4();
  v13 = sub_1000267C4();
  v15 = v14;
  (*(v8 + 8))(v11, v7);
  *v12 = v13;
  v12[1] = v15;
  v4[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_isBubbleActive] = 0;
  *&v4[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_bubble] = 0;
  v16 = &v4[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_eventNotifier];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = 0;
  *&v4[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_bubbleDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_initialLoadError] = 0;
  v17 = OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_messageDetailsLoader;
  if (qword_100039070 != -1)
  {
    swift_once();
  }

  v19 = *(qword_10003A710 + 16);
  v18 = *(qword_10003A710 + 24);
  v30 = sub_100026BB4();
  v31 = &protocol witness table for MessageDetailsCache;
  *&v29 = v19;
  v27 = sub_100026BD4();
  v28 = &protocol witness table for ResolvedFamilyCache;
  *&v26 = v18;
  type metadata accessor for MessageDetailsLoader();
  v20 = swift_allocObject();
  v20[3] = 0;
  swift_unknownObjectWeakInit();
  v20[5] = 0;
  swift_unknownObjectWeakInit();
  v20[16] = 0;
  sub_10001518C(&v29, (v20 + 6));
  sub_10001518C(&v26, (v20 + 11));
  *&v4[v17] = v20;

  if (a2)
  {
    v21 = sub_100027124();
  }

  else
  {
    v21 = 0;
  }

  v22 = type metadata accessor for RequestMessageViewController();
  v25.receiver = v4;
  v25.super_class = v22;
  v23 = objc_msgSendSuper2(&v25, "initWithNibName:bundle:", v21, a3);

  return v23;
}

id sub_10001E2FC(void *a1)
{
  v2 = v1;
  v4 = sub_1000267E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v2[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
  sub_1000267D4();
  v10 = sub_1000267C4();
  v12 = v11;
  (*(v5 + 8))(v8, v4);
  *v9 = v10;
  v9[1] = v12;
  v2[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_isBubbleActive] = 0;
  *&v2[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_bubble] = 0;
  v13 = &v2[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_eventNotifier];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  *&v2[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_bubbleDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_initialLoadError] = 0;
  v14 = OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_messageDetailsLoader;
  if (qword_100039070 != -1)
  {
    swift_once();
  }

  v16 = *(qword_10003A710 + 16);
  v15 = *(qword_10003A710 + 24);
  v26 = sub_100026BB4();
  v27 = &protocol witness table for MessageDetailsCache;
  *&v25 = v16;
  v23 = sub_100026BD4();
  v24 = &protocol witness table for ResolvedFamilyCache;
  *&v22 = v15;
  type metadata accessor for MessageDetailsLoader();
  v17 = swift_allocObject();
  v17[3] = 0;
  swift_unknownObjectWeakInit();
  v17[5] = 0;
  swift_unknownObjectWeakInit();
  v17[16] = 0;
  sub_10001518C(&v25, (v17 + 6));
  sub_10001518C(&v22, (v17 + 11));
  *&v2[v14] = v17;
  v18 = type metadata accessor for RequestMessageViewController();
  v21.receiver = v2;
  v21.super_class = v18;

  v19 = objc_msgSendSuper2(&v21, "initWithCoder:", a1);

  if (v19)
  {
  }

  return v19;
}

id sub_10001E588(char a1)
{
  v2 = v1;
  v4 = sub_1000267E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v2[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
  sub_1000267D4();
  v10 = sub_1000267C4();
  v12 = v11;
  (*(v5 + 8))(v8, v4);
  *v9 = v10;
  v9[1] = v12;
  v2[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_isBubbleActive] = 0;
  *&v2[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_bubble] = 0;
  v13 = &v2[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_eventNotifier];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  *&v2[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_bubbleDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_initialLoadError] = 0;
  v14 = OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_messageDetailsLoader;
  if (qword_100039070 != -1)
  {
    swift_once();
  }

  v16 = *(qword_10003A710 + 16);
  v15 = *(qword_10003A710 + 24);
  v25 = sub_100026BB4();
  v26 = &protocol witness table for MessageDetailsCache;
  *&v24 = v16;
  v22 = sub_100026BD4();
  v23 = &protocol witness table for ResolvedFamilyCache;
  *&v21 = v15;
  type metadata accessor for MessageDetailsLoader();
  v17 = swift_allocObject();
  v17[3] = 0;
  swift_unknownObjectWeakInit();
  v17[5] = 0;
  swift_unknownObjectWeakInit();
  v17[16] = 0;
  sub_10001518C(&v24, (v17 + 6));
  sub_10001518C(&v21, (v17 + 11));
  *&v2[v14] = v17;
  v18 = type metadata accessor for RequestMessageViewController();
  v20.receiver = v2;
  v20.super_class = v18;

  return objc_msgSendSuper2(&v20, "initWithShouldBeSheetPresentationControllerDelegate:", a1 & 1);
}

uint64_t sub_10001E81C()
{
  v1[2] = v0;
  v2 = sub_100026834();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  sub_100027274();
  v1[7] = sub_100027264();
  v6 = sub_100027244();
  v1[8] = v6;
  v1[9] = v5;

  return _swift_task_switch(sub_10001E91C, v6, v5);
}

uint64_t sub_10001E91C()
{
  v38 = v0;
  v1 = *(v0 + 16);
  if (*(v1 + OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_isBubbleActive) == 1)
  {
    v2 = [*(v0 + 16) activeConversation];
    *(v0 + 80) = v2;
    if (v2)
    {
      v3 = v2;
      v4 = swift_task_alloc();
      *(v0 + 88) = v4;
      *v4 = v0;
      v4[1] = sub_10001EC44;
      v5 = *(v0 + 16);

      return sub_100019418(v3);
    }

    v25 = *(v0 + 48);
    v24 = *(v0 + 56);
    v26 = *(v0 + 16);

    sub_100026894();
    v27 = v26;
    v10 = sub_100026824();
    v11 = sub_100027314();

    v28 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 48);
    v15 = *(v0 + 24);
    v14 = *(v0 + 32);
    if (v28)
    {
      v29 = *(v0 + 16);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v37 = v18;
      *v17 = 136315138;
      v30 = v29 + OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID;
      v31 = *(v29 + OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID);
      v32 = *(v30 + 8);

      v33 = sub_100005F78(v31, v32, &v37);

      *(v17 + 4) = v33;
      v23 = "%s conversation is nil";
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *(v0 + 56);
    v8 = *(v0 + 40);

    sub_100026894();
    v9 = v1;
    v10 = sub_100026824();
    v11 = sub_100027304();

    v12 = os_log_type_enabled(v10, v11);
    v14 = *(v0 + 32);
    v13 = *(v0 + 40);
    v15 = *(v0 + 24);
    if (v12)
    {
      v16 = *(v0 + 16);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v37 = v18;
      *v17 = 136315138;
      v19 = v16 + OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID;
      v20 = *(v16 + OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID);
      v21 = *(v19 + 8);

      v22 = sub_100005F78(v20, v21, &v37);

      *(v17 + 4) = v22;
      v23 = "%s has been deactivated prior to notify!";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v10, v11, v23, v17, 0xCu);
      sub_100006044(v18);
    }
  }

  (*(v14 + 8))(v13, v15);
  v35 = *(v0 + 40);
  v34 = *(v0 + 48);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_10001EC44()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v6 = *v0;

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return _swift_task_switch(sub_10001ED64, v4, v3);
}

uint64_t sub_10001ED64()
{
  v1 = v0[10];
  v2 = v0[7];

  v4 = v0[5];
  v3 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10001EDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_100026834();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  sub_100027274();
  v4[6] = sub_100027264();
  v9 = sub_100027244();
  v4[7] = v9;
  v4[8] = v8;

  return _swift_task_switch(sub_10001EED0, v9, v8);
}

uint64_t sub_10001EED0()
{
  v21 = v0;
  v1 = v0[5];
  v2 = v0[2];
  sub_100026894();
  v3 = v2;
  v4 = sub_100026824();
  v5 = sub_100027304();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];
  if (v6)
  {
    v10 = v0[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    v13 = v10 + OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID;
    v14 = *(v10 + OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID);
    v15 = *(v13 + 8);

    v16 = sub_100005F78(v14, v15, &v20);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s responding to event notify)", v11, 0xCu);
    sub_100006044(v12);
  }

  (*(v8 + 8))(v7, v9);
  v17 = swift_task_alloc();
  v0[9] = v17;
  *v17 = v0;
  v17[1] = sub_10001F098;
  v18 = v0[2];

  return sub_10001E81C();
}

uint64_t sub_10001F098()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return _swift_task_switch(sub_10001F1B8, v4, v3);
}

uint64_t sub_10001F1B8()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10001F220()
{
  v1 = sub_10000274C(&qword_1000391C8, &qword_100028010);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  sub_100027284();
  v5 = sub_1000272A4();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  sub_100027274();
  v6 = v0;
  v7 = sub_100027264();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;
  sub_100003824(0, 0, v4, &unk_100028888, v8);
}

uint64_t sub_10001F34C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001F38C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100006E48;

  return sub_10001EDDC(a1, v4, v5, v6);
}

uint64_t sub_10001F440(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100026834();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = sub_100026734();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v2[11] = *(v7 + 64);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v8 = *(*(sub_10000274C(&qword_1000391C8, &qword_100028010) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = sub_100027274();
  v2[16] = sub_100027264();
  v10 = sub_100027244();
  v2[17] = v10;
  v2[18] = v9;

  return _swift_task_switch(sub_10001F5E0, v10, v9);
}

uint64_t sub_10001F5E0()
{
  v54 = v0;
  v1 = v0[4];
  if (sub_100026914())
  {
    v2 = v0[14];
    v3 = v0[15];
    v4 = v0[13];
    v6 = v0[10];
    v5 = v0[11];
    v7 = v0[9];
    v8 = v0[4];
    v9 = v0[5];
    sub_100027284();
    v10 = sub_1000272A4();
    (*(*(v10 - 8) + 56))(v2, 0, 1, v10);
    (*(v6 + 16))(v4, v8, v7);
    v11 = v9;
    v12 = sub_100027264();
    v13 = (*(v6 + 80) + 40) & ~*(v6 + 80);
    v14 = swift_allocObject();
    *(v14 + 2) = v12;
    *(v14 + 3) = &protocol witness table for MainActor;
    *(v14 + 4) = v11;
    (*(v6 + 32))(&v14[v13], v4, v7);
    v15 = sub_100003B78(0, 0, v2, &unk_1000288E0, v14);
    v0[19] = v15;
    v16 = async function pointer to Task<>.value.getter[1];
    v17 = swift_task_alloc();
    v0[20] = v17;
    v18 = sub_10000274C(&qword_100039308, &qword_100028080);
    *v17 = v0;
    v17[1] = sub_10001FA58;

    return Task<>.value.getter(v0 + 2, v15, v18);
  }

  else
  {
    v19 = v0[16];
    v20 = v0[12];
    v21 = v0[9];
    v22 = v0[10];
    v23 = v0[8];
    v24 = v0[4];
    v25 = v0[5];

    sub_100026894();
    (*(v22 + 16))(v20, v24, v21);
    v26 = v25;
    v27 = sub_100026824();
    v28 = sub_100027314();

    v29 = os_log_type_enabled(v27, v28);
    v30 = v0[12];
    v32 = v0[9];
    v31 = v0[10];
    v34 = v0[7];
    v33 = v0[8];
    v35 = v0[6];
    if (v29)
    {
      v52 = v0[8];
      v36 = v0[5];
      v51 = v0[6];
      v37 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v37 = 136315394;
      v39 = *(v36 + OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID);
      v38 = *(v36 + OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID + 8);

      v40 = sub_100005F78(v39, v38, &v53);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;
      sub_100020ED4(&qword_100039338, &type metadata accessor for URL);
      v41 = sub_100027464();
      v43 = v42;
      (*(v31 + 8))(v30, v32);
      v44 = sub_100005F78(v41, v43, &v53);

      *(v37 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v27, v28, "%s - %s not in trusted list", v37, 0x16u);
      swift_arrayDestroy();

      (*(v34 + 8))(v52, v51);
    }

    else
    {

      (*(v31 + 8))(v30, v32);
      (*(v34 + 8))(v33, v35);
    }

    v46 = v0[13];
    v45 = v0[14];
    v47 = v0[12];
    v48 = v0[8];

    v49 = v0[1];

    return v49(0, 0xF000000000000000);
  }
}

uint64_t sub_10001FA58()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v6 = *v0;

  v3 = *(v1 + 144);
  v4 = *(v1 + 136);

  return _swift_task_switch(sub_10001FB78, v4, v3);
}

uint64_t sub_10001FB78()
{
  v1 = v0[19];
  v2 = v0[16];

  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  v8 = v0[8];

  v9 = v0[1];

  return v9(v4, v3);
}

uint64_t sub_10001FC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_100026734();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = sub_100026834();
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();
  sub_100027274();
  v5[11] = sub_100027264();
  v13 = sub_100027244();

  return _swift_task_switch(sub_10001FD7C, v13, v12);
}

uint64_t sub_10001FD7C()
{
  v38 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  sub_100026894();
  (*(v4 + 16))(v3, v6, v5);
  v8 = v7;
  v9 = sub_100026824();
  v10 = sub_100027304();

  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[9];
  v12 = v0[10];
  v14 = v0[7];
  v15 = v0[8];
  v17 = v0[5];
  v16 = v0[6];
  if (v11)
  {
    v36 = v0[10];
    v18 = v0[3];
    v35 = v0[8];
    v19 = swift_slowAlloc();
    v37[0] = swift_slowAlloc();
    *v19 = 136315394;
    v21 = *(v18 + OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID);
    v20 = *(v18 + OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID + 8);

    v22 = sub_100005F78(v21, v20, v37);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    v23 = sub_1000266D4();
    v25 = v24;
    (*(v16 + 8))(v14, v17);
    v26 = sub_100005F78(v23, v25, v37);

    *(v19 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s - Fetching %s", v19, 0x16u);
    swift_arrayDestroy();

    (*(v13 + 8))(v36, v35);
  }

  else
  {

    (*(v16 + 8))(v14, v17);
    (*(v13 + 8))(v12, v15);
  }

  v27 = v0[4];
  v28 = sub_100026744();
  v29 = v0[10];
  v30 = v0[7];
  v31 = v0[2];
  *v31 = v28;
  v31[1] = v32;

  v33 = v0[1];

  return v33();
}

void sub_10002000C(void *a1)
{
  v3 = sub_100026834();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 view];
  if (v8)
  {
    v9 = v8;
    v10 = [v1 view];
    if (v10)
    {
      v49 = v10;
      v11 = [v1 childViewControllers];
      sub_100019050(0, &qword_100039D50, UIViewController_ptr);
      v12 = sub_100027234();

      sub_100020C40(v12);

      [v1 addChildViewController:a1];
      v13 = [v1 view];
      if (v13)
      {
        v14 = v13;
        v15 = objc_opt_self();
        v16 = [v15 clearColor];
        [v14 setBackgroundColor:v16];

        v17 = [v15 clearColor];
        [v9 setBackgroundColor:v17];

        v18 = [v1 view];
        if (v18)
        {
          v19 = v18;
          [v18 insertSubview:v9 atIndex:0];

          [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
          v20 = objc_opt_self();
          sub_10000274C(&qword_100039D58, &qword_100028898);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_100028810;
          v22 = [v9 leadingAnchor];
          v23 = [v49 safeAreaLayoutGuide];
          v24 = [v23 leadingAnchor];

          v25 = [v22 constraintEqualToAnchor:v24];
          *(v21 + 32) = v25;
          v26 = [v9 trailingAnchor];
          v27 = [v49 safeAreaLayoutGuide];
          v28 = [v27 trailingAnchor];

          v29 = [v26 constraintEqualToAnchor:v28];
          *(v21 + 40) = v29;
          v30 = [v9 topAnchor];
          v31 = [v49 safeAreaLayoutGuide];
          v32 = [v31 topAnchor];

          v33 = [v30 constraintEqualToAnchor:v32];
          *(v21 + 48) = v33;
          v34 = [v9 bottomAnchor];
          v35 = [v49 safeAreaLayoutGuide];
          v36 = [v35 bottomAnchor];

          v37 = [v34 constraintEqualToAnchor:v36];
          *(v21 + 56) = v37;
          sub_100019050(0, &qword_100039D60, NSLayoutConstraint_ptr);
          isa = sub_100027224().super.isa;

          [v20 activateConstraints:isa];

          [a1 didMoveToParentViewController:v1];
          [v9 setMinimumContentSizeCategory:UIContentSizeCategorySmall];
          [v9 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
          [v1 requestResize];

          v39 = v49;

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }
  }

  sub_100026894();
  v40 = v1;
  v41 = sub_100026824();
  v42 = sub_100027314();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v50 = v44;
    *v43 = 136315138;
    v45 = &v40[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
    v46 = *&v40[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
    v47 = *(v45 + 1);

    v48 = sub_100005F78(v46, v47, &v50);

    *(v43 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v41, v42, "%s missing views", v43, 0xCu);
    sub_100006044(v44);
  }

  (*(v4 + 8))(v7, v3);
}

uint64_t sub_100020654(uint64_t a1)
{
  v2 = sub_10000274C(&qword_100039D68, &qword_1000288A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v56 = &v49 - v4;
  v5 = sub_10000274C(&qword_100039328, &qword_1000280A8);
  v54 = *(v5 - 8);
  v55 = v5;
  v6 = *(v54 + 64);
  __chkstk_darwin(v5);
  v51 = &v49 - v7;
  v8 = sub_1000267B4();
  v57 = *(v8 - 8);
  v58 = v8;
  v9 = *(v57 + 64);
  v10 = __chkstk_darwin(v8);
  v50 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v53 = &v49 - v13;
  __chkstk_darwin(v12);
  v52 = &v49 - v14;
  v15 = sub_1000269B4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v49 - v21;
  v23 = sub_10000274C(&qword_100039830, &qword_100028358);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v49 - v25;
  v27 = sub_100026B04();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v49 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v32;
  sub_1000061E4(a1, v26, &qword_100039830, &qword_100028358);
  if ((*(v28 + 48))(v26, 1, v33) == 1)
  {
    sub_100006B20(v26, &qword_100039830, &qword_100028358);
LABEL_5:
    v36 = 1;
    return v36 & 1;
  }

  (*(v28 + 32))(v31, v26, v33);
  sub_100026A94();
  (*(v16 + 104))(v20, enum case for MessageDetails.EventStatus.purged(_:), v15);
  sub_100020ED4(&qword_100039740, &type metadata accessor for MessageDetails.EventStatus);
  v34 = sub_100027114();
  v35 = *(v16 + 8);
  v35(v20, v15);
  v35(v22, v15);
  if (v34)
  {
    (*(v28 + 8))(v31, v33);
    goto LABEL_5;
  }

  v37 = v33;
  v38 = v52;
  sub_1000267A4();
  v39 = v53;
  sub_100026A44();
  v40 = v56;
  sub_100026A64();
  v42 = v54;
  v41 = v55;
  if ((*(v54 + 48))(v40, 1, v55) == 1)
  {
    sub_100006B20(v40, &qword_100039D68, &qword_1000288A0);
    v44 = v57;
    v43 = v58;
  }

  else
  {
    v45 = v51;
    (*(v42 + 32))(v51, v40, v41);
    v46 = v50;
    sub_100026794();
    (*(v42 + 8))(v45, v41);
    v44 = v57;
    v43 = v58;
    (*(v57 + 8))(v39, v58);
    (*(v44 + 32))(v39, v46, v43);
  }

  v36 = sub_100026784();
  v47 = *(v44 + 8);
  v47(v39, v43);
  v47(v38, v43);
  (*(v28 + 8))(v31, v37);
  return v36 & 1;
}

void sub_100020C40(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100027434())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = sub_1000273C4();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v4 willMoveToParentViewController:0];
      v7 = [v5 view];
      [v7 removeFromSuperview];

      [v5 removeFromParentViewController];
      if (v6 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_100020D5C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100020DA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100006E48;

  return sub_10001D124(a1, v4, v5, v7, v6);
}

uint64_t sub_100020E64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000274C(&qword_100039188, &qword_100027DE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100020ED4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100020F1C()
{
  v1 = sub_100026734();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100020FE8(uint64_t a1)
{
  v4 = *(sub_100026734() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100003730;

  return sub_10001FC28(a1, v6, v7, v8, v1 + v5);
}

void sub_1000210F0()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_100039D78 = v1 == 5;
}

uint64_t sub_100021154()
{
  result = sub_100026E54();
  qword_10003A750 = result;
  return result;
}

uint64_t sub_100021174()
{
  if (qword_100039088 != -1)
  {
    result = swift_once();
  }

  v0 = 28.0;
  if (byte_100039D78)
  {
    v0 = 22.0;
  }

  qword_10003A758 = *&v0;
  return result;
}

uint64_t sub_100021218(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = sub_100026F64();
  *a3 = result;
  return result;
}

uint64_t sub_100021260()
{
  qword_10003A778 = sub_1000270C4();
  result = sub_1000270D4();
  qword_10003A780 = result;
  return result;
}

uint64_t sub_100021294()
{
  if (qword_100039088 != -1)
  {
    result = swift_once();
  }

  v0 = 60.0;
  if (byte_100039D78)
  {
    v0 = 48.0;
  }

  qword_10003A788 = *&v0;
  return result;
}

uint64_t sub_100021304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v65 = a7;
  v66 = a8;
  v62 = a6;
  v63 = a5;
  v64 = a4;
  v56 = sub_100027074();
  v57 = v13;
  v55 = 1;
  v54 = 0;
  sub_100026C64();
  *&v112[55] = v117;
  *&v112[71] = v118;
  *&v112[87] = v119;
  *&v112[103] = v120;
  *&v112[7] = v114;
  *&v112[23] = v115;
  v113 = 1;
  *&v112[39] = v116;
  *&v89 = a1;
  *(&v89 + 1) = a2;
  sub_100014A80();

  v14 = sub_100026EF4();
  v67 = v15;
  v68 = v14;
  v17 = v16;
  v69 = v18;
  KeyPath = swift_getKeyPath();
  if (qword_100039090 != -1)
  {
    swift_once();
  }

  v19 = qword_10003A750;
  v74 = swift_getKeyPath();
  v72 = v17 & 1;
  LOBYTE(v89) = v17 & 1;
  LOBYTE(v78) = 0;
  v73 = swift_getKeyPath();
  v76 = v19;

  v71 = sub_100026F94();
  v70 = sub_100026E04();
  v57 = v63;
  v56 = v64;
  v55 = 1;
  v54 = 0;
  v20 = sub_100026C64();
  *&v111[55] = v124;
  *&v111[71] = v125;
  *&v111[87] = v126;
  *&v111[103] = v127;
  *&v111[7] = v121;
  *&v111[23] = v122;
  *&v111[39] = v123;
  v21 = a3;
  v22 = v66;
  if (v65 && v66)
  {
    v63 = &v58;
    v64 = a3;
    *&v89 = v62;
    *(&v89 + 1) = v65;
    __chkstk_darwin(v20);
    v56 = &v89;

    v23 = sub_100024C2C(sub_100024CF0, &v54, &off_1000352C0);

    if (v23)
    {
      sub_100026FF4();
    }

    else
    {
      sub_100026FD4();
    }

    v24 = v76;
    v65 = sub_100026F04();
    v62 = v26;
    v63 = v25;
    v28 = v27;
    v61 = swift_getKeyPath();
    v60 = swift_getKeyPath();
    v29 = v28 & 1;
    LOBYTE(v78) = v28 & 1;
    LOBYTE(v87[0]) = 0;
    v59 = swift_getKeyPath();

    v58 = sub_100026F94();
    v30 = sub_100026E04();
    sub_100027094();
    sub_100026C34();

    *&v77[23] = v129;
    *&v77[7] = v128;
    *&v77[39] = v130;
    *&v95[1] = *v77;
    *&v89 = v65;
    *(&v89 + 1) = v63;
    LOBYTE(v90) = v29;
    *(&v90 + 1) = v62;
    *&v91 = v61;
    *(&v91 + 1) = 1;
    LOBYTE(v92) = 0;
    *(&v92 + 1) = v60;
    *&v93 = v24;
    *(&v93 + 1) = v59;
    *&v94 = v22;
    *(&v94 + 1) = v58;
    v95[0] = v30;
    *&v95[17] = *&v77[16];
    *&v95[33] = *&v77[32];
    *&v95[48] = *(&v130 + 1);
    nullsub_1(&v89);
    v105 = *v95;
    v106 = *&v95[16];
    v107 = *&v95[32];
    v108 = *&v95[48];
    v101 = v91;
    v102 = v92;
    v103 = v93;
    v104 = v94;
    v99 = v89;
    v100 = v90;
    v21 = v64;
  }

  else
  {
    sub_100014E34(&v99);
  }

  sub_100027074();
  sub_100026C64();
  *&v97[55] = v134;
  *&v97[71] = v135;
  *&v97[87] = v136;
  *&v97[103] = v137;
  *&v97[7] = v131;
  *&v97[23] = v132;
  *&v97[39] = v133;
  v87[0] = v99;
  v87[1] = v100;
  v31 = v102;
  v32 = v103;
  v87[4] = v103;
  v87[5] = v104;
  v33 = v101;
  v35 = v99;
  v34 = v100;
  v87[2] = v101;
  v87[3] = v102;
  v36 = v106;
  v87[8] = v107;
  v37 = v105;
  v38 = v104;
  v87[6] = v105;
  v87[7] = v106;
  v39 = v67;
  v40 = v68;
  *&v78 = v68;
  *(&v78 + 1) = v67;
  LOBYTE(v79) = v72;
  *(&v79 + 1) = *v110;
  DWORD1(v79) = *&v110[3];
  v41 = v69;
  *(&v79 + 1) = v69;
  *&v80 = KeyPath;
  *(&v80 + 1) = 1;
  LOBYTE(v81) = 0;
  *(&v81 + 1) = *v109;
  DWORD1(v81) = *&v109[3];
  *(&v81 + 1) = v74;
  *&v82 = v76;
  *(&v82 + 1) = v73;
  *&v83 = v21;
  *(&v83 + 1) = v71;
  v84[0] = v70;
  *&v84[65] = *&v111[64];
  *&v84[81] = *&v111[80];
  *&v84[97] = *&v111[96];
  *&v84[1] = *v111;
  *&v84[17] = *&v111[16];
  *&v84[33] = *&v111[32];
  *&v84[49] = *&v111[48];
  v85[1] = v100;
  v85[0] = v99;
  v85[4] = v103;
  v85[5] = v104;
  v85[2] = v101;
  v85[3] = v102;
  v85[7] = v106;
  v85[8] = v107;
  v85[6] = v105;
  *(a9 + 73) = *&v112[64];
  *(a9 + 89) = *&v112[80];
  *(a9 + 105) = *&v112[96];
  *(a9 + 9) = *v112;
  *(a9 + 25) = *&v112[16];
  *(a9 + 41) = *&v112[32];
  *(a9 + 57) = *&v112[48];
  v42 = v79;
  *(a9 + 128) = v78;
  *(a9 + 144) = v42;
  v43 = v83;
  *(a9 + 192) = v82;
  *(a9 + 208) = v43;
  v44 = v81;
  *(a9 + 160) = v80;
  *(a9 + 176) = v44;
  v45 = *&v84[48];
  *(a9 + 256) = *&v84[32];
  *(a9 + 272) = v45;
  v46 = *&v84[16];
  *(a9 + 224) = *v84;
  *(a9 + 240) = v46;
  v47 = *&v84[96];
  v48 = *&v84[64];
  *(a9 + 304) = *&v84[80];
  *(a9 + 320) = v47;
  *(a9 + 288) = v48;
  *(a9 + 440) = v37;
  *(a9 + 456) = v36;
  *(a9 + 472) = v107;
  *(a9 + 376) = v33;
  *(a9 + 392) = v31;
  v98 = 1;
  v88 = v108;
  *&v84[112] = *&v111[111];
  v86 = v108;
  *a9 = 0;
  *(a9 + 8) = 1;
  *(a9 + 120) = *&v112[111];
  *(a9 + 336) = *&v84[112];
  v49 = v108;
  *(a9 + 408) = v32;
  *(a9 + 424) = v38;
  *(a9 + 344) = v35;
  *(a9 + 360) = v34;
  *(a9 + 488) = v49;
  *(a9 + 496) = 0;
  *(a9 + 504) = 1;
  v50 = *&v97[80];
  *(a9 + 569) = *&v97[64];
  *(a9 + 585) = v50;
  *(a9 + 601) = *&v97[96];
  *(a9 + 616) = *&v97[111];
  v51 = *&v97[16];
  *(a9 + 505) = *v97;
  *(a9 + 521) = v51;
  v52 = *&v97[48];
  *(a9 + 537) = *&v97[32];
  *(a9 + 553) = v52;
  sub_1000061E4(&v78, &v89, &qword_100039B38, &unk_1000289B0);
  sub_1000061E4(v85, &v89, &qword_100039B40, &qword_1000285F0);
  sub_100006B20(v87, &qword_100039B40, &qword_1000285F0);
  *&v95[65] = *&v111[64];
  *&v95[81] = *&v111[80];
  *v96 = *&v111[96];
  *&v95[1] = *v111;
  *&v95[17] = *&v111[16];
  *&v95[33] = *&v111[32];
  *&v89 = v40;
  *(&v89 + 1) = v39;
  LOBYTE(v90) = v72;
  *(&v90 + 1) = *v110;
  DWORD1(v90) = *&v110[3];
  *(&v90 + 1) = v41;
  *&v91 = KeyPath;
  *(&v91 + 1) = 1;
  LOBYTE(v92) = 0;
  *(&v92 + 1) = *v109;
  DWORD1(v92) = *&v109[3];
  *(&v92 + 1) = v74;
  *&v93 = v76;
  *(&v93 + 1) = v73;
  *&v94 = v21;
  *(&v94 + 1) = v71;
  v95[0] = v70;
  *&v96[15] = *&v111[111];
  *&v95[49] = *&v111[48];
  return sub_100006B20(&v89, &qword_100039B38, &unk_1000289B0);
}

uint64_t sub_100021BD4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v92 = sub_10000274C(&qword_100039E10, &qword_100028D10);
  v91 = *(v92 - 8);
  v4 = *(v91 + 64);
  __chkstk_darwin(v92);
  v83 = (&v81 - v5);
  v6 = sub_10000274C(&qword_100039E18, &qword_100028D18);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v94 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v93 = &v81 - v10;
  v11 = sub_100026FE4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_10000274C(&qword_100039E20, &qword_100028D20);
  v16 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85);
  v18 = &v81 - v17;
  v87 = sub_10000274C(&qword_100039E28, &qword_100028D28);
  v19 = *(*(v87 - 8) + 64);
  __chkstk_darwin(v87);
  v21 = &v81 - v20;
  v90 = sub_10000274C(&qword_100039E30, &qword_100028D30);
  v89 = *(v90 - 8);
  v22 = *(v89 + 64);
  v23 = __chkstk_darwin(v90);
  v88 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v86 = &v81 - v25;
  v26 = sub_100026F74();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100039088 != -1)
  {
    swift_once();
  }

  v31 = *(v2 + 64);
  v81 = byte_100039D78;
  v32 = 15.0;
  if (byte_100039D78)
  {
    v32 = 8.0;
  }

  v82 = v31;
  if (v31)
  {
    v33 = v32;
  }

  else
  {
    v33 = 4.0;
  }

  (*(v27 + 104))(v30, enum case for Color.RGBColorSpace.sRGBLinear(_:), v26);
  v95 = sub_100026FB4();
  sub_10000274C(&qword_100039E38, &qword_100028D38);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_100028210;
  v35 = *(v2 + 40);
  *(v34 + 32) = *(v2 + 32);
  *(v34 + 40) = v35;

  sub_100027034();
  sub_1000270B4();
  sub_1000270A4();
  sub_100026C44();
  *a1 = sub_100026D24();
  *(a1 + 8) = 0;
  v36 = 1;
  *(a1 + 16) = 1;
  v37 = (a1 + *(sub_10000274C(&qword_100039E40, &unk_100028D40) + 44));
  *v37 = sub_100027074();
  v37[1] = v38;
  v84 = v37;
  v39 = *v2;
  sub_100026FC4();
  (*(v12 + 104))(v15, enum case for Image.ResizingMode.stretch(_:), v11);
  v40 = sub_100027014();

  (*(v12 + 8))(v15, v11);
  *(v2 + 64);
  sub_100027074();
  sub_100026C34();
  v98 = 1;
  *&v97[6] = v100;
  *&v97[22] = v101;
  *&v97[38] = v102;
  v41 = &v18[*(v85 + 36)];
  v42 = *(sub_100026C54() + 20);
  v43 = enum case for RoundedCornerStyle.continuous(_:);
  v44 = sub_100026D34();
  (*(*(v44 - 8) + 104))(v41 + v42, v43, v44);
  *v41 = v33;
  v41[1] = v33;
  *(v41 + *(sub_10000274C(&qword_100039B08, &unk_100028540) + 36)) = 256;
  v45 = *&v97[16];
  *(v18 + 18) = *v97;
  *v18 = v40;
  *(v18 + 1) = 0;
  *(v18 + 8) = 1;
  *(v18 + 34) = v45;
  *(v18 + 50) = *&v97[32];
  *(v18 + 8) = *&v97[46];
  v46 = sub_100026F94();
  LOBYTE(v43) = sub_100026E04();
  sub_100010C0C(v18, v21, &qword_100039E20, &qword_100028D20);
  v47 = &v21[*(v87 + 36)];
  *v47 = v46;
  v47[8] = v43;
  v48 = swift_allocObject();
  v49 = *(v2 + 48);
  *(v48 + 48) = *(v2 + 32);
  *(v48 + 64) = v49;
  *(v48 + 80) = *(v2 + 64);
  v50 = *(v2 + 16);
  *(v48 + 16) = *v2;
  *(v48 + 32) = v50;
  sub_100014FAC(v2, v96);
  sub_100025608(&qword_100039E48, &qword_100039E28, &qword_100028D28, sub_100025198);
  v51 = v86;
  sub_100026F34();

  sub_100006B20(v21, &qword_100039E28, &qword_100028D28);
  v52 = *(v2 + 8);
  v53 = *(v2 + 16);
  v54 = sub_1000271D4();
  if (v55)
  {
    v56 = v54;
    v57 = v55;
    v58 = v51;
    if (v81)
    {
      v59 = 19.0;
    }

    else
    {
      v59 = 25.0;
    }

    v60 = 40.0;
    if (v81)
    {
      v60 = 31.0;
    }

    if (v82)
    {
      v61 = v59;
    }

    else
    {
      v61 = v60;
    }

    v62 = sub_100027074();
    v63 = v83;
    *v83 = v62;
    *(v63 + 8) = v64;
    v65 = sub_10000274C(&qword_100039E88, &qword_100028D78);
    sub_10002260C(v56, v57, v99, v95, v2, v63 + *(v65 + 44));

    v66 = v92;
    v67 = (v63 + *(v92 + 36));
    *v67 = v59;
    v67[1] = v61;
    v68 = v93;
    sub_100010C0C(v63, v93, &qword_100039E10, &qword_100028D10);
    v36 = 0;
  }

  else
  {
    v58 = v51;
    v68 = v93;
    v66 = v92;
  }

  (*(v91 + 56))(v68, v36, 1, v66);
  v69 = sub_10000274C(&qword_100039E78, &qword_100028D68);
  v70 = v84 + *(v69 + 44);
  v71 = v89;
  v72 = *(v89 + 16);
  v73 = v88;
  v74 = v58;
  v75 = v58;
  v76 = v90;
  v72(v88, v75, v90);
  v77 = v94;
  sub_1000061E4(v68, v94, &qword_100039E18, &qword_100028D18);
  v72(v70, v73, v76);
  v78 = sub_10000274C(&qword_100039E80, &qword_100028D70);
  sub_1000061E4(v77, &v70[*(v78 + 48)], &qword_100039E18, &qword_100028D18);
  sub_100006B20(v68, &qword_100039E18, &qword_100028D18);
  v79 = *(v71 + 8);
  v79(v74, v76);
  sub_100006B20(v77, &qword_100039E18, &qword_100028D18);
  v79(v73, v76);
  sub_100025360(v99);
}

uint64_t sub_10002260C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v99 = a5;
  v103 = a4;
  *&v97 = a3;
  v109 = a6;
  v108 = sub_10000274C(&qword_100039E90, &qword_100028D80);
  v8 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108);
  v102 = &v96 - v9;
  v100 = sub_10000274C(&qword_100039E98, &qword_100028D88);
  v10 = *(*(v100 - 8) + 64);
  v11 = __chkstk_darwin(v100);
  v101 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v96 - v13;
  v105 = sub_10000274C(&qword_100039EA0, &qword_100028D90);
  v15 = *(*(v105 - 8) + 64);
  __chkstk_darwin(v105);
  v107 = &v96 - v16;
  v106 = sub_10000274C(&qword_100039EA8, &qword_100028D98);
  v17 = *(*(v106 - 8) + 64);
  __chkstk_darwin(v106);
  v19 = &v96 - v18;
  v104 = sub_100026FE4();
  v20 = *(v104 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v104);
  v23 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10000274C(&qword_100039EB0, &qword_100028DA0);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24);
  v98 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v96 - v29;
  v110 = a1;
  if (a1 == v31 && a2 == v28 || (sub_100027474() & 1) != 0)
  {
    v32 = sub_100026FA4();
    sub_100027074();
    sub_100026C34();
    *&v112[6] = v138;
    *&v112[22] = v139;
    *&v112[38] = v140;
    v33 = &v14[*(sub_10000274C(&qword_100039EE0, &qword_100028DC0) + 36)];
    v34 = *(sub_100026C54() + 20);
    v35 = enum case for RoundedCornerStyle.continuous(_:);
    v36 = sub_100026D34();
    (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
    __asm { FMOV            V0.2D, #4.5 }

    *v33 = _Q0;
    *&v33[*(sub_10000274C(&qword_100039B08, &unk_100028540) + 36)] = 256;
    v42 = *v112;
    *(v14 + 26) = *&v112[16];
    *(v14 + 42) = *&v112[32];
    *v14 = v32;
    *(v14 + 4) = 256;
    *(v14 + 7) = *&v112[46];
    *(v14 + 10) = v42;
    v43 = &v14[*(v100 + 36)];
    v44 = v103;
    *v43 = v103;
    *(v43 + 8) = xmmword_100028910;
    *(v43 + 3) = 0x4000000000000000;
    *&v129 = v110;
    *(&v129 + 1) = a2;
    __chkstk_darwin(v44);
    *(&v96 - 2) = &v129;

    LOBYTE(v32) = sub_100024C2C(sub_1000257C8, (&v96 - 2), &off_1000352C0);

    if (v32)
    {
      sub_100026FF4();
    }

    else
    {
      sub_100026FD4();
    }

    v45 = v104;
    (*(v20 + 104))(v23, enum case for Image.ResizingMode.stretch(_:), v104);
    v46 = sub_100027014();

    (*(v20 + 8))(v23, v45);
    sub_100027074();
    sub_100026C34();
    v136 = 1;
    *&v111[6] = v141;
    *&v111[22] = v142;
    *&v111[38] = v143;
    v47 = sub_100026F84();
    KeyPath = swift_getKeyPath();
    v120 = v46;
    LOWORD(v121[0]) = 1;
    *(v121 + 2) = *v111;
    *(&v121[1] + 2) = *&v111[16];
    *(&v121[2] + 2) = *&v111[32];
    *&v121[3] = *&v111[46];
    *(&v121[3] + 1) = KeyPath;
    v122 = v47;
    v49 = v101;
    sub_1000061E4(v14, v101, &qword_100039E98, &qword_100028D88);
    v116 = v121[1];
    v117 = v121[2];
    v118 = v121[3];
    v119 = v122;
    v114 = v120;
    v115 = v121[0];
    v50 = v102;
    sub_1000061E4(v49, v102, &qword_100039E98, &qword_100028D88);
    v51 = v50 + *(sub_10000274C(&qword_100039EE8, &qword_100028DC8) + 48);
    v53 = v117;
    v52 = v118;
    v54 = v119;
    v128 = v119;
    v56 = v116;
    v55 = v117;
    v58 = v115;
    v57 = v116;
    v126 = v117;
    v127 = v118;
    *(v51 + 32) = v116;
    *(v51 + 48) = v55;
    *(v51 + 64) = v52;
    v60 = v114;
    v59 = v115;
    v61 = v114;
    v123 = v114;
    v124 = v115;
    v125 = v57;
    *(v51 + 80) = v54;
    *v51 = v60;
    *(v51 + 16) = v59;
    v131 = v56;
    v132 = v53;
    v133 = v118;
    v134 = v119;
    v129 = v61;
    v130 = v58;
    sub_1000061E4(&v120, v113, &qword_100039EC8, &qword_100028DB8);
    sub_1000061E4(&v123, v113, &qword_100039EC8, &qword_100028DB8);
    sub_100006B20(&v129, &qword_100039EC8, &qword_100028DB8);
    sub_100006B20(v49, &qword_100039E98, &qword_100028D88);
    sub_1000061E4(v50, v107, &qword_100039E90, &qword_100028D80);
    swift_storeEnumTagMultiPayload();
    sub_100014A38(&qword_100039ED0, &qword_100039EA8, &qword_100028D98);
    sub_100014A38(&qword_100039ED8, &qword_100039E90, &qword_100028D80);
    sub_100026D94();
    sub_100006B20(&v120, &qword_100039EC8, &qword_100028DB8);
    sub_100006B20(v50, &qword_100039E90, &qword_100028D80);
    v62 = v14;
    v63 = &qword_100039E98;
    v64 = &qword_100028D88;
  }

  else
  {
    v101 = a2;
    v102 = v19;
    v65 = v97;
    v100 = *v97;

    sub_100027074();
    sub_100026C34();
    *&v137[6] = v138;
    *&v137[22] = v139;
    *&v137[38] = v140;
    v66 = &v30[*(sub_10000274C(&qword_100039EB8, &qword_100028DA8) + 36)];
    v67 = *(sub_100026C54() + 20);
    v68 = enum case for RoundedCornerStyle.continuous(_:);
    v69 = sub_100026D34();
    v70 = *(*(v69 - 8) + 104);
    v71 = *(v65 + 24);
    v96 = *(v65 + 8);
    v97 = v71;
    v72 = v101;
    v70(&v66[v67], v68, v69);
    __asm { FMOV            V0.2D, #4.5 }

    *v66 = _Q0;
    *&v66[*(sub_10000274C(&qword_100039B08, &unk_100028540) + 36)] = 256;
    *v30 = v100;
    v74 = v96;
    *(v30 + 24) = v97;
    *(v30 + 8) = v74;
    *(v30 + 20) = 256;
    *(v30 + 42) = *v137;
    *(v30 + 58) = *&v137[16];
    *(v30 + 74) = *&v137[32];
    *(v30 + 11) = *&v137[46];
    v75 = &v30[*(v24 + 36)];
    v76 = v103;
    *v75 = v103;
    *(v75 + 8) = xmmword_100028910;
    *(v75 + 3) = 0x4000000000000000;
    *&v129 = v110;
    *(&v129 + 1) = v72;
    __chkstk_darwin(v76);
    *(&v96 - 2) = &v129;

    v77 = sub_100024C2C(sub_1000257C8, (&v96 - 2), &off_1000352C0);

    if (v77)
    {
      sub_100026FF4();
    }

    else
    {
      sub_100026FD4();
    }

    v78 = v102;
    v79 = v104;
    (*(v20 + 104))(v23, enum case for Image.ResizingMode.stretch(_:), v104);
    v80 = sub_100027014();

    (*(v20 + 8))(v23, v79);
    sub_100027074();
    sub_100026C34();
    v136 = 1;
    *&v135[6] = v141;
    *&v135[22] = v142;
    *&v135[38] = v143;
    v81 = *(v99 + 24);
    v82 = swift_getKeyPath();
    v120 = v80;
    LOWORD(v121[0]) = 1;
    *(v121 + 2) = *v135;
    *(&v121[1] + 2) = *&v135[16];
    *(&v121[2] + 2) = *&v135[32];
    *&v121[3] = *&v135[46];
    *(&v121[3] + 1) = v82;
    v122 = v81;
    v83 = v98;
    sub_1000061E4(v30, v98, &qword_100039EB0, &qword_100028DA0);
    v116 = v121[1];
    v117 = v121[2];
    v118 = v121[3];
    v119 = v122;
    v114 = v120;
    v115 = v121[0];
    sub_1000061E4(v83, v78, &qword_100039EB0, &qword_100028DA0);
    v84 = v78 + *(sub_10000274C(&qword_100039EC0, &qword_100028DB0) + 48);
    v86 = v117;
    v85 = v118;
    v87 = v119;
    v128 = v119;
    v89 = v116;
    v88 = v117;
    v91 = v115;
    v90 = v116;
    v126 = v117;
    v127 = v118;
    *(v84 + 32) = v116;
    *(v84 + 48) = v88;
    *(v84 + 64) = v85;
    v93 = v114;
    v92 = v115;
    v94 = v114;
    v123 = v114;
    v124 = v115;
    v125 = v90;
    *(v84 + 80) = v87;
    *v84 = v93;
    *(v84 + 16) = v92;
    v131 = v89;
    v132 = v86;
    v133 = v118;
    v134 = v119;
    v129 = v94;
    v130 = v91;

    sub_1000061E4(&v120, v113, &qword_100039EC8, &qword_100028DB8);
    sub_1000061E4(&v123, v113, &qword_100039EC8, &qword_100028DB8);
    sub_100006B20(&v129, &qword_100039EC8, &qword_100028DB8);
    sub_100006B20(v83, &qword_100039EB0, &qword_100028DA0);
    sub_1000061E4(v78, v107, &qword_100039EA8, &qword_100028D98);
    swift_storeEnumTagMultiPayload();
    sub_100014A38(&qword_100039ED0, &qword_100039EA8, &qword_100028D98);
    sub_100014A38(&qword_100039ED8, &qword_100039E90, &qword_100028D80);
    sub_100026D94();
    sub_100006B20(&v120, &qword_100039EC8, &qword_100028DB8);
    sub_100006B20(v78, &qword_100039EA8, &qword_100028D98);
    v62 = v30;
    v63 = &qword_100039EB0;
    v64 = &qword_100028DA0;
  }

  return sub_100006B20(v62, v63, v64);
}

uint64_t sub_1000232CC@<X0>(uint64_t a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 64);
  v3 = *v1;
  v4 = v1[1];
  return sub_100021BD4(a1);
}

double sub_100023310@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100026E84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v45 = a1;
  *(&v45 + 1) = a2;
  sub_100014A80();

  v11 = sub_100026EF4();
  v40 = v12;
  v41 = v13;
  v15 = v14;
  if (qword_100039088 != -1)
  {
    swift_once();
  }

  if (byte_100039D78 == 1)
  {
    sub_100026E64();
  }

  else
  {
    sub_100026E54();
  }

  sub_100026E74();

  (*(v7 + 104))(v10, enum case for Font.Leading.tight(_:), v6);
  sub_100026E94();

  (*(v7 + 8))(v10, v6);
  v16 = v11;
  v17 = v40;
  v18 = sub_100026EE4();
  v20 = v19;
  v22 = v21;
  v39[1] = v23;

  sub_100024FF8(v16, v17, v15 & 1);

  if (qword_1000390A0 != -1)
  {
    swift_once();
  }

  v24 = sub_100026ED4();
  v40 = v25;
  v41 = v24;
  v27 = v26;
  v29 = v28;
  sub_100024FF8(v18, v20, v22 & 1);

  KeyPath = swift_getKeyPath();
  v31 = sub_100026F94();
  v32 = sub_100026E04();
  v43 = v27 & 1;
  v42 = 0;
  v33 = swift_getKeyPath();
  sub_100027044();
  sub_100026C64();
  *&v44[55] = v48;
  *&v44[71] = v49;
  *&v44[87] = v50;
  *&v44[103] = v51;
  *&v44[7] = v45;
  *&v44[23] = v46;
  *&v44[39] = v47;
  v34 = *&v44[80];
  *(a3 + 145) = *&v44[64];
  *(a3 + 161) = v34;
  *(a3 + 177) = *&v44[96];
  v35 = *&v44[16];
  *(a3 + 81) = *v44;
  *(a3 + 97) = v35;
  result = *&v44[32];
  v37 = *&v44[48];
  *(a3 + 113) = *&v44[32];
  v38 = v40;
  *a3 = v41;
  *(a3 + 8) = v38;
  *(a3 + 16) = v27 & 1;
  *(a3 + 24) = v29;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 2;
  *(a3 + 48) = 0;
  *(a3 + 56) = v31;
  *(a3 + 64) = v32;
  *(a3 + 72) = v33;
  *(a3 + 80) = 1;
  *(a3 + 192) = *&v44[111];
  *(a3 + 129) = v37;
  return result;
}

uint64_t sub_1000236DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100026E84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[2] = a1;
  v31[3] = a2;
  sub_100014A80();

  v11 = sub_100026EF4();
  v13 = v12;
  v15 = v14;
  if (qword_100039088 != -1)
  {
    swift_once();
  }

  if (byte_100039D78 == 1)
  {
    sub_100026E64();
  }

  else
  {
    sub_100026EB4();
  }

  (*(v7 + 104))(v10, enum case for Font.Leading.tight(_:), v6);
  sub_100026E94();

  (*(v7 + 8))(v10, v6);
  v16 = sub_100026EE4();
  v18 = v17;
  v20 = v19;

  sub_100024FF8(v11, v13, v15 & 1);

  if (qword_1000390A0 != -1)
  {
    swift_once();
  }

  v21 = sub_100026ED4();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_100024FF8(v16, v18, v20 & 1);

  v28 = sub_100026F94();
  v29 = sub_100026E04();
  result = swift_getKeyPath();
  *a3 = v21;
  *(a3 + 8) = v23;
  *(a3 + 16) = v25 & 1;
  *(a3 + 24) = v27;
  *(a3 + 32) = v28;
  *(a3 + 40) = v29;
  *(a3 + 48) = result;
  *(a3 + 56) = 0;
  *(a3 + 64) = 1;
  return result;
}

double sub_10002397C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1000236DC(a1, a2, v10);
  sub_100027044();
  sub_100026C64();
  v4 = v18;
  *(a3 + 128) = v17;
  *(a3 + 144) = v4;
  *(a3 + 160) = v19;
  *(a3 + 176) = v20;
  v5 = v14;
  *(a3 + 64) = v13;
  *(a3 + 80) = v5;
  v6 = v16;
  *(a3 + 96) = v15;
  *(a3 + 112) = v6;
  v7 = v10[1];
  *a3 = v10[0];
  *(a3 + 16) = v7;
  result = *&v11;
  v9 = v12;
  *(a3 + 32) = v11;
  *(a3 + 48) = v9;
  return result;
}

double sub_100023A48@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = sub_100026D24();
  v27 = 1;
  sub_10002397C(v3, v4, &v14);
  v36 = v22;
  v37 = v23;
  v38 = v24;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v40[8] = v22;
  v40[9] = v23;
  v40[10] = v24;
  v40[4] = v18;
  v40[5] = v19;
  v40[6] = v20;
  v40[7] = v21;
  v40[0] = v14;
  v40[1] = v15;
  v39 = v25;
  v41 = v25;
  v40[2] = v16;
  v40[3] = v17;
  sub_1000061E4(&v28, v13, &qword_100039E08, &qword_100028CD8);
  sub_100006B20(v40, &qword_100039E08, &qword_100028CD8);
  *(&v26[8] + 7) = v36;
  *(&v26[9] + 7) = v37;
  *(&v26[10] + 7) = v38;
  *(&v26[11] + 7) = v39;
  *(&v26[4] + 7) = v32;
  *(&v26[5] + 7) = v33;
  *(&v26[6] + 7) = v34;
  *(&v26[7] + 7) = v35;
  *(v26 + 7) = v28;
  *(&v26[1] + 7) = v29;
  *(&v26[2] + 7) = v30;
  *(&v26[3] + 7) = v31;
  v6 = v26[9];
  *(a1 + 145) = v26[8];
  *(a1 + 161) = v6;
  *(a1 + 177) = v26[10];
  *(a1 + 192) = *(&v26[10] + 15);
  v7 = v26[5];
  *(a1 + 81) = v26[4];
  *(a1 + 97) = v7;
  v8 = v26[7];
  *(a1 + 113) = v26[6];
  *(a1 + 129) = v8;
  v9 = v26[1];
  *(a1 + 17) = v26[0];
  *(a1 + 33) = v9;
  result = *&v26[2];
  v11 = v26[3];
  *(a1 + 49) = v26[2];
  v12 = v27;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v12;
  *(a1 + 65) = v11;
  return result;
}

uint64_t sub_100023C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = sub_100027004();
  v88 = *(v12 - 8);
  v89 = v12;
  v13 = *(v88 + 64);
  __chkstk_darwin(v12);
  v82 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000274C(&qword_100039DE0, &qword_100028C78);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v87 = (&v78 - v17);
  v85 = sub_10000274C(&qword_100039DE8, &qword_100028C80);
  v18 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85);
  v86 = &v78 - v19;
  v95 = sub_10000274C(&qword_100039DF0, &qword_100028C88);
  v92 = *(v95 - 8);
  v20 = *(v92 + 64);
  v21 = __chkstk_darwin(v95);
  v84 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v83 = &v78 - v23;
  v24 = sub_10000274C(&qword_100039DF8, &qword_100028C90);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v93 = &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v91 = &v78 - v29;
  v94 = a5;
  if (a2)
  {
    v79 = a3;
    v80 = a4;
    v81 = a6;
    v30 = v15;
    v96 = a1;
    v97 = a2;
    sub_100014A80();

    v31 = sub_100026EF4();
    v33 = v32;
    v35 = v34;
    sub_100026EB4();
    v36 = sub_100026EE4();
    v38 = v37;
    v40 = v39;

    sub_100024FF8(v31, v33, v35 & 1);

    if (qword_1000390A0 != -1)
    {
      swift_once();
    }

    v41 = sub_100026ED4();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    sub_100024FF8(v36, v38, v40 & 1);

    v48 = v45 & 1;
    v90 = v41;
    sub_10002504C(v41, v43, v45 & 1);

    a5 = v94;
    v15 = v30;
    a4 = v80;
    a6 = v81;
    a3 = v79;
    v49 = v95;
    if (!v80)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v90 = 0;
    v43 = 0;
    v48 = 0;
    v47 = 0;
    v49 = v95;
    if (!a4)
    {
LABEL_10:
      v52 = 1;
      v53 = v91;
      goto LABEL_18;
    }
  }

  if (!a5)
  {
    goto LABEL_10;
  }

  v81 = &v78;
  v96 = a3;
  v97 = a4;
  __chkstk_darwin(v28);
  *(&v78 - 2) = &v96;

  v50 = sub_100024C2C(sub_1000257C8, (&v78 - 4), &off_1000352C0);

  if (v50)
  {
    v51 = sub_100026FF4();
  }

  else
  {
    v51 = sub_100026FD4();
  }

  v81 = v51;
  if (qword_100039088 != -1)
  {
    swift_once();
  }

  v55 = v88;
  v54 = v89;
  if (byte_100039D78)
  {
    v56 = &enum case for Image.Scale.medium(_:);
  }

  else
  {
    v56 = &enum case for Image.Scale.small(_:);
  }

  v57 = v82;
  (*(v88 + 104))(v82, *v56, v89);
  KeyPath = swift_getKeyPath();
  v59 = *(v15 + 36);
  v60 = v87;
  v61 = (v87 + v59);
  v62 = sub_10000274C(&qword_100039B18, &qword_100028CD0);
  (*(v55 + 32))(v61 + *(v62 + 28), v57, v54);
  *v61 = KeyPath;
  *v60 = v81;
  v63 = sub_100026EA4();
  v64 = swift_getKeyPath();
  v65 = v86;
  sub_100010C0C(v60, v86, &qword_100039DE0, &qword_100028C78);
  v66 = (v65 + *(v85 + 36));
  *v66 = v64;
  v66[1] = v63;
  v67 = swift_getKeyPath();
  v68 = v84;
  sub_100010C0C(v65, v84, &qword_100039DE8, &qword_100028C80);
  v69 = v94;
  v49 = v95;
  v70 = (v68 + *(v95 + 36));
  *v70 = v67;
  v70[1] = v69;
  v71 = v68;
  v72 = v83;
  sub_100010C0C(v71, v83, &qword_100039DF0, &qword_100028C88);
  v73 = v72;
  v53 = v91;
  sub_100010C0C(v73, v91, &qword_100039DF0, &qword_100028C88);
  v52 = 0;
LABEL_18:
  (*(v92 + 56))(v53, v52, 1, v49);
  v74 = v93;
  sub_1000061E4(v53, v93, &qword_100039DF8, &qword_100028C90);
  v75 = v90;
  *a6 = v90;
  a6[1] = v43;
  a6[2] = v48;
  a6[3] = v47;
  v76 = sub_10000274C(&qword_100039E00, &qword_100028C98);
  sub_1000061E4(v74, a6 + *(v76 + 48), &qword_100039DF8, &qword_100028C90);
  sub_100025008(v75, v43, v48, v47);
  sub_10002505C(v75, v43, v48, v47);
  sub_100006B20(v53, &qword_100039DF8, &qword_100028C90);
  sub_100006B20(v74, &qword_100039DF8, &qword_100028C90);
  return sub_10002505C(v75, v43, v48, v47);
}

uint64_t sub_100024370@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = sub_10000274C(&qword_100039D88, &qword_100028C20);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v99 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v100 = (&v84 - v7);
  v8 = sub_10000274C(&qword_100039D90, &qword_100028C28);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v96 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v101 = (&v84 - v12);
  v95 = sub_10000274C(&qword_100039D98, &qword_100028C30);
  v13 = *(*(v95 - 8) + 64);
  v14 = __chkstk_darwin(v95);
  v98 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v102 = (&v84 - v16);
  if (qword_1000390B0 != -1)
  {
    swift_once();
  }

  v17 = qword_10003A770;
  sub_100027074();
  sub_100026C64();
  *&v121[27] = *&v121[83];
  *&v121[35] = *&v121[91];
  *&v121[43] = *&v121[99];
  *&v121[51] = *&v121[107];
  *&v121[3] = *&v121[59];
  *&v121[11] = *&v121[67];
  *&v121[19] = *&v121[75];
  v18 = qword_100039088;
  v97 = v17;

  if (v18 != -1)
  {
    swift_once();
  }

  sub_100027074();
  sub_100026C34();
  v93 = v124;
  v94 = v122;
  v91 = v127;
  v92 = v126;
  v120 = 1;
  v119 = v123;
  v118 = v125;
  v19 = sub_100026D24();
  v20 = v102;
  *v102 = v19;
  v20[1] = 0;
  *(v20 + 16) = 1;
  v21 = *a1;
  v22 = a1[1];
  v23 = a1[2];
  v24 = a1[3];
  v26 = a1[4];
  v25 = a1[5];
  v27 = a1[6];
  v28 = sub_100026D54();
  v29 = v101;
  *v101 = v28;
  v29[1] = 0;
  *(v29 + 16) = 0;
  v30 = sub_100026D24();
  v31 = v100;
  *v100 = v30;
  v31[1] = 0x4000000000000000;
  *(v31 + 16) = 0;
  v32 = sub_10000274C(&qword_100039DA0, &qword_100028C38);
  sub_100023C40(v21, v22, v26, v25, v27, (v31 + *(v32 + 44)));
  if (v24 && (v33 = sub_1000271D4(), v34))
  {
    v110 = v33;
    *v111 = v34;
    sub_100014A80();
    v35 = sub_100026EF4();
    v37 = v36;
    v39 = v38;
    sub_100026EA4();
    v87 = sub_100026EE4();
    v41 = v40;
    v43 = v42;
    v89 = v44;

    sub_100024FF8(v35, v37, v39 & 1);

    KeyPath = swift_getKeyPath();
    if (qword_1000390A8 != -1)
    {
      swift_once();
    }

    v45 = qword_10003A768;
    v46 = swift_getKeyPath();
    LOBYTE(v110) = v43 & 1;
    LOBYTE(v109[0]) = 0;
    v47 = v43 & 1;
    v85 = v46;
    v86 = 0;

    v48 = 2;
    v49 = v87;
    v50 = v41;
  }

  else
  {
    v49 = 0;
    v50 = 0;
    KeyPath = 0;
    v89 = 0;
    v48 = 0;
    v85 = 0;
    v86 = 0;
    v45 = 0;
    v47 = 0;
  }

  v51 = sub_10000274C(&qword_100039DA8, &qword_100028C40);
  v87 = v102 + *(v51 + 44);
  v52 = sub_10000274C(&qword_100039DB0, &qword_100028C48);
  v53 = v101 + *(v52 + 44);
  v54 = v99;
  sub_1000061E4(v100, v99, &qword_100039D88, &qword_100028C20);
  sub_1000061E4(v54, v53, &qword_100039D88, &qword_100028C20);
  v55 = v53 + *(sub_10000274C(&qword_100039DB8, &qword_100028C50) + 48);
  *&v103 = v49;
  *(&v103 + 1) = v50;
  v57 = KeyPath;
  v56 = v89;
  *&v104 = v47;
  *(&v104 + 1) = v89;
  *&v105 = KeyPath;
  *(&v105 + 1) = v48;
  v58 = v85;
  v59 = v86;
  *&v106 = v86;
  *(&v106 + 1) = v85;
  v107 = v45;
  *(v55 + 64) = v45;
  v60 = v104;
  *v55 = v103;
  *(v55 + 16) = v60;
  v61 = v106;
  *(v55 + 32) = v105;
  *(v55 + 48) = v61;
  v62 = v45;
  v63 = v58;
  sub_1000061E4(&v103, &v110, &qword_100039DC0, &qword_100028C58);
  sub_100006B20(v100, &qword_100039D88, &qword_100028C20);
  v108[0] = v49;
  v108[1] = v50;
  v108[2] = v47;
  v108[3] = v56;
  v108[4] = v57;
  v108[5] = v48;
  v108[6] = v59;
  v108[7] = v63;
  v108[8] = v62;
  sub_100006B20(v108, &qword_100039DC0, &qword_100028C58);
  sub_100006B20(v99, &qword_100039D88, &qword_100028C20);
  v64 = v101;
  v65 = v96;
  sub_1000061E4(v101, v96, &qword_100039D90, &qword_100028C28);
  v66 = v87;
  sub_1000061E4(v65, v87, &qword_100039D90, &qword_100028C28);
  v67 = v66 + *(sub_10000274C(&qword_100039DC8, &qword_100028C60) + 48);
  *v67 = 0;
  *(v67 + 8) = 1;
  sub_100006B20(v64, &qword_100039D90, &qword_100028C28);
  sub_100006B20(v65, &qword_100039D90, &qword_100028C28);
  v68 = sub_100026F94();
  v69 = sub_100026E04();
  v70 = v102;
  v71 = v102 + *(v95 + 36);
  *v71 = v68;
  v71[8] = v69;
  LOBYTE(v57) = v120;
  LOBYTE(v59) = v119;
  v72 = v118;
  v73 = v98;
  sub_1000061E4(v70, v98, &qword_100039D98, &qword_100028C30);
  v74 = v97;
  *&v109[0] = v97;
  WORD4(v109[0]) = 256;
  *(v109 + 10) = *v121;
  *(&v109[1] + 10) = *&v121[8];
  *(&v109[5] + 10) = *&v121[40];
  *(&v109[4] + 10) = *&v121[32];
  *(&v109[6] + 10) = *&v121[48];
  *(&v109[7] + 1) = *&v121[55];
  *(&v109[2] + 10) = *&v121[16];
  *(&v109[3] + 10) = *&v121[24];
  v75 = v109[5];
  v76 = v90;
  *(v90 + 64) = v109[4];
  *(v76 + 80) = v75;
  v77 = v109[7];
  *(v76 + 96) = v109[6];
  *(v76 + 112) = v77;
  v78 = v109[1];
  *v76 = v109[0];
  *(v76 + 16) = v78;
  v79 = v109[3];
  *(v76 + 32) = v109[2];
  *(v76 + 48) = v79;
  *(v76 + 128) = 0;
  *(v76 + 136) = v57;
  v80 = v93;
  *(v76 + 144) = v94;
  *(v76 + 152) = v59;
  *(v76 + 160) = v80;
  *(v76 + 168) = v72;
  v81 = v91;
  *(v76 + 176) = v92;
  *(v76 + 184) = v81;
  v82 = sub_10000274C(&qword_100039DD0, &qword_100028C68);
  sub_1000061E4(v73, v76 + *(v82 + 64), &qword_100039D98, &qword_100028C30);
  sub_1000061E4(v109, &v110, &qword_100039DD8, &qword_100028C70);
  sub_100006B20(v102, &qword_100039D98, &qword_100028C30);
  sub_100006B20(v73, &qword_100039D98, &qword_100028C30);
  v115 = *&v121[32];
  v116 = *&v121[40];
  *v117 = *&v121[48];
  *&v111[2] = *v121;
  v112 = *&v121[8];
  v113 = *&v121[16];
  v110 = v74;
  *v111 = 256;
  *&v117[14] = *&v121[55];
  v114 = *&v121[24];
  return sub_100006B20(&v110, &qword_100039DD8, &qword_100028C70);
}

uint64_t sub_100024BBC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v6[2] = *(v1 + 32);
  v7 = *(v1 + 48);
  *a1 = sub_100026D44();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = sub_10000274C(&qword_100039D80, &qword_100028C18);
  return sub_100024370(v6, a1 + *(v4 + 44));
}

uint64_t sub_100024C2C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100024D20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100024D6C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100024DB8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100024DD0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100024DF4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_100024E3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100024EA0(uint64_t a1, uint64_t a2)
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

uint64_t sub_100024EBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_100024F18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100024FF8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100025008(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10002504C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10002504C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10002505C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100024FF8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1000250A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100026CB4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100025100()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  if (*(v0 + 64))
  {
    v5 = *(v0 + 72);
  }

  return _swift_deallocObject(v0, 81, 7);
}

uint64_t sub_100025168()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 72);
    return v1();
  }

  return result;
}

unint64_t sub_100025198()
{
  result = qword_100039E50;
  if (!qword_100039E50)
  {
    sub_1000144E4(&qword_100039E20, &qword_100028D20);
    sub_100025250();
    sub_100014A38(&qword_100039B00, &qword_100039B08, &unk_100028540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039E50);
  }

  return result;
}

unint64_t sub_100025250()
{
  result = qword_100039E58;
  if (!qword_100039E58)
  {
    sub_1000144E4(&qword_100039E60, &qword_100028D50);
    sub_1000252DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039E58);
  }

  return result;
}

unint64_t sub_1000252DC()
{
  result = qword_100039E68;
  if (!qword_100039E68)
  {
    sub_1000144E4(&qword_100039E70, &qword_100028D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039E68);
  }

  return result;
}

uint64_t sub_1000253B4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_100027474() & 1;
  }
}

unint64_t sub_100025498()
{
  result = qword_100039F10;
  if (!qword_100039F10)
  {
    sub_1000144E4(&qword_100039F18, &qword_100028DE0);
    sub_100025524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039F10);
  }

  return result;
}

unint64_t sub_100025524()
{
  result = qword_100039F20;
  if (!qword_100039F20)
  {
    sub_1000144E4(&qword_100039F28, &qword_100028DE8);
    sub_100025608(&qword_100039F30, &qword_100039F38, &qword_100028DF0, sub_1000256B8);
    sub_100014A38(&qword_100039F60, &qword_100039F68, &qword_100028E08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039F20);
  }

  return result;
}

uint64_t sub_100025608(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000144E4(a2, a3);
    a4();
    sub_100014A38(&qword_100039AF0, &qword_100039AF8, &qword_100028D60);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000256B8()
{
  result = qword_100039F40;
  if (!qword_100039F40)
  {
    sub_1000144E4(&qword_100039F48, &qword_100028DF8);
    sub_100014A38(&qword_100039F50, &qword_100039F58, &qword_100028E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039F40);
  }

  return result;
}

uint64_t sub_1000257E4(uint64_t a1)
{
  v2 = sub_100026834();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000274C(&qword_100039188, &qword_100027DE8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v20 - v9;
  v11 = sub_100026734();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100025A70(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_100002814(v10);
  }

  (*(v12 + 32))(v15, v10, v11);
  sub_1000024CC();
  sub_100026894();
  v17 = sub_100026824();
  v18 = sub_100027304();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "pushToSettings", v19, 2u);
  }

  (*(v3 + 8))(v6, v2);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_100025A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100026B04();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100026834();
  v45 = *(v9 - 8);
  v46 = v9;
  v10 = *(v45 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v43 = &v42 - v14;
  v15 = sub_10000274C(&qword_100039188, &qword_100027DE8);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v42 - v17;
  v19 = sub_100026AC4();
  if ((v20 & 1) != 0 || (v21 = v19, sub_100026AF4(), v44 = a2, v22 = sub_1000271D4(), v24 = v23, a2 = v44, , !v24))
  {
    sub_100026894();
    v32 = v4;
    (*(v5 + 16))(v8, a1, v4);
    v33 = sub_100026824();
    v34 = sub_100027314();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v47 = v36;
      *v35 = 136315138;
      v37 = sub_100026A54();
      v44 = a2;
      v39 = v38;
      (*(v5 + 8))(v8, v32);
      v40 = sub_100005F78(v37, v39, &v47);
      a2 = v44;

      *(v35 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v33, v34, "Invalid details %s", v35, 0xCu);
      sub_100006044(v36);
    }

    else
    {

      (*(v5 + 8))(v8, v32);
    }

    (*(v45 + 8))(v13, v46);
    v41 = sub_100026734();
    return (*(*(v41 - 8) + 56))(a2, 1, 1, v41);
  }

  else
  {
    type metadata accessor for PeopleMessagesURLHandler();
    swift_initStackObject();
    sub_100001A50(v21, v22, v24, v18);

    v25 = sub_100026734();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v18, 1, v25) == 1)
    {
      sub_100002814(v18);
      v27 = v43;
      sub_100026894();
      v28 = sub_100026824();
      v29 = sub_100027314();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "Unable to build punch out url", v30, 2u);
        a2 = v44;
      }

      (*(v45 + 8))(v27, v46);
      return (*(v26 + 56))(a2, 1, 1, v25);
    }

    else
    {
      (*(v26 + 32))(a2, v18, v25);
      return (*(v26 + 56))(a2, 0, 1, v25);
    }
  }
}

uint64_t sub_100025F70(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v3 = sub_100026B04();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000268B4();
  v47 = *(v8 - 8);
  v48 = v8;
  v9 = *(v47 + 64);
  __chkstk_darwin(v8);
  v46 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100026834();
  v50 = *(v11 - 8);
  v51 = v11;
  v12 = *(v50 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v45 - v17;
  __chkstk_darwin(v16);
  v20 = &v45 - v19;
  sub_100026AF4();
  sub_1000271D4();
  v22 = v21;

  if (v22)
  {
    sub_100026894();
    v23 = sub_100026824();
    v24 = sub_100027304();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      *(v25 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v23, v24, "Responding to askForTime %ld", v25, 0xCu);
    }

    v26 = v51;
    v27 = *(v50 + 8);
    v27(v20, v51);
    v28 = [objc_allocWithZone(STAskClient) init];
    sub_1000268E4();
    sub_1000268A4();
    v29 = sub_100027124();

    v52 = 0;
    v30 = [v28 respondToAskForTimeRequestWithIdentifier:v29 answer:v49 error:&v52];

    if (v30)
    {
      v40 = v52;
      sub_1000268A4();

      sub_1000268D4();
      v42 = v46;
      v41 = v47;
      v43 = v48;
      (*(v47 + 104))(v46, enum case for PeopleAnalytics.MessageRequestBubbleSource.screenTime(_:), v48);
      sub_1000268C4();

      return (*(v41 + 8))(v42, v43);
    }

    else
    {
      v39 = v52;
      sub_1000266B4();

      swift_willThrow();
      sub_100026894();
      swift_errorRetain();
      sub_100026814();

      return (v27)(v15, v26);
    }
  }

  else
  {
    sub_100026894();
    (*(v4 + 16))(v7, a1, v3);
    v31 = sub_100026824();
    v32 = sub_100027314();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v52 = v34;
      *v33 = 136315138;
      v35 = sub_100026A54();
      v37 = v36;
      (*(v4 + 8))(v7, v3);
      v38 = sub_100005F78(v35, v37, &v52);

      *(v33 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v31, v32, "Invalid details %s", v33, 0xCu);
      sub_100006044(v34);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }

    return (*(v50 + 8))(v18, v51);
  }
}