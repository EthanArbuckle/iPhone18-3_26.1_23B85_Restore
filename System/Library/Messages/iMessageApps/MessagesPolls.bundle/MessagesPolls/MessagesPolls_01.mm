_OWORD *sub_17AAC(_OWORD *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (a2)
    {
      v4 = sub_48574();
      *(v4 + 16) = a2;
      v5 = *v2;
      v14 = v2[1];
      v6 = v14;
      v15 = v5;
      v7 = *(v2 + 4);
      *(v4 + 32) = v5;
      *(v4 + 48) = v6;
      *(v4 + 57) = *(v2 + 25);
      v8 = a2 - 1;
      if (a2 != 1)
      {
        v9 = 80;
        do
        {
          v10 = (v4 + v9);
          sub_1C650(&v15, v13);
          sub_6128(&v14, v13, &qword_62B48, &qword_4BA68);
          v11 = v2[1];
          *v10 = *v2;
          v10[1] = v11;
          *(v10 + 25) = *(v2 + 25);

          v9 += 48;
          --v8;
        }

        while (v8);
      }
    }

    else
    {
      v15 = *result;
      sub_1C6AC(&v15);
      v14 = v2[1];
      sub_60C8(&v14, &qword_62B48, &qword_4BA68);
      v12 = *(v2 + 4);

      return &_swiftEmptyArrayStorage;
    }

    return v4;
  }

  return result;
}

void sub_17BDC(void *a1, void *a2)
{
  v3 = OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel;
  v4 = *&v2[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel];
  if (!v4)
  {
    __break(1u);
    goto LABEL_42;
  }

  v5 = v2;
  swift_getKeyPath();
  *&v111 = v4;
  v8 = sub_1B304();

  sub_475C4();

  v9 = *(v4 + 112);

  v10 = sub_101E4(a2);
  v12 = v11;

  if (!*&v5[v3])
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v13 = *&v5[v3];

  sub_1D3BC(v10, v12);

  v14 = [v5 presentationStyle];
  if ([v5 presentationStyle] != &dword_0 + 2 && v14 != &dword_4)
  {
    v15 = *&v5[v3];
    if (v15)
    {
      v16 = *&v5[v3];
      swift_retain_n();

      swift_getKeyPath();
      *&v111 = v15;
      sub_475C4();

      v17 = *(v15 + 112);

      v18 = sub_101E4(a2);
      v20 = v19;

      v111 = xmmword_4B9C0;
      v112 = _swiftEmptyArrayStorage;
      *&v113 = v18;
      *(&v113 + 1) = v20;
      sub_1CCAC(&v111);

      return;
    }

    goto LABEL_43;
  }

  if (!a1)
  {

    return;
  }

  v105 = v12;
  v21 = sub_54A4(&qword_62B68, &qword_4BBB0);
  v104 = v94;
  v22 = *(v21 - 8);
  v103 = *(v22 + 64);
  __chkstk_darwin(v21, v23);
  v106 = v94 - v24;
  v25 = sub_54A4(&qword_62B70, &unk_4BBB8);
  v26 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25 - 8, v27);
  v29 = v94 - v28;
  if (!*&v5[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollNetworking])
  {
    goto LABEL_44;
  }

  v30 = *(v21 + 48);
  v31 = a1;

  v32 = &v29[v30];
  v33 = v31;
  v34 = sub_3A614(v29, v32, v31);
  v94[1] = 0;
  LOBYTE(v31) = v34;

  v29[*(v21 + 64)] = v31;
  v35 = *(v22 + 56);
  v100 = v21;
  v35(v29, 0, 1, v21);
  sub_1C23C(v29, v106);
  v36 = [v33 time];
  v37 = sub_54A4(&qword_62138, &qword_4AC00);
  v38 = (*(*(v37 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v37 - 8, v39);
  v41 = v94 - v40;
  v102 = v8;
  v101 = v3;
  v95 = v33;
  if (v36)
  {
    sub_47544();

    v42 = sub_47564();
    v43 = *(v42 - 8);
    v44 = v43;
    (*(v43 + 56))(v41, 0, 1, v42);
    sub_60C8(v41, &qword_62138, &qword_4AC00);
    *&v111 = 0;
    *(&v111 + 1) = 0xE000000000000000;
    v45 = [v33 time];
    v46 = *(v43 + 64);
    v48 = __chkstk_darwin(v45, v47);
    v50 = v94 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!v48)
    {
LABEL_46:
      __break(1u);
      return;
    }

    sub_47544();

    sub_1C308(&qword_62B78, &type metadata accessor for Date);
    v114._countAndFlagsBits = sub_48854();
    sub_48484(v114);

    (*(v44 + 8))(v50, v42);
  }

  else
  {
    v53 = sub_47564();
    (*(*(v53 - 8) + 56))(v41, 1, 1, v53);
    v51 = sub_60C8(v41, &qword_62138, &qword_4AC00);
  }

  v54 = v100;
  v55 = v103;
  __chkstk_darwin(v51, v52);
  v56 = v94 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = (v55 + 15) & 0xFFFFFFFFFFFFFFF0;
  v57 = v106;
  sub_6128(v106, v56, &qword_62B68, &qword_4BBB0);
  v58 = *(v54 + 48);
  sub_7010(v56, &v111);
  v59 = sub_476A4();
  v60 = *(v59 - 8);
  v99 = *(v60 + 8);
  v100 = v60 + 8;
  v61 = v99(&v56[v58], v59);
  v97 = v94;
  __chkstk_darwin(v61, v62);
  sub_6128(v57, v56, &qword_62B68, &qword_4BBB0);
  v96 = sub_6D28(&v56[*(v54 + 48)]);
  v63 = sub_476F4();
  isa = v63[-1].isa;
  v65 = *(isa + 1);
  v66 = isa + 8;
  v67 = v65(v56, v63);
  __chkstk_darwin(v67, v68);
  v69 = v94 - v98;
  sub_6128(v57, v94 - v98, &qword_62B68, &qword_4BBB0);
  v70 = v59;
  v71 = v69[*(v54 + 64)];
  v99(&v69[*(v54 + 48)], v70);
  v65(v69, v63);
  if (v71 <= 1)
  {
    v72 = &unk_62000;
    v73 = v101;
    goto LABEL_18;
  }

  v72 = &unk_62000;
  v73 = v101;
  if (v71 == 2)
  {
LABEL_18:
    v74 = v96;
    v63 = sub_48874();

    v75 = v63 & 1;
    v76 = *&v5[v73];
    if (v76)
    {
      goto LABEL_19;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    if (v71 == 2)
    {
      v84 = 0xE900000000000075;
      v85 = 0x6E654D20646E6553;
    }

    else
    {
      v84 = 0x8000000000049B50;
      v85 = 0xD000000000000013;
    }

    goto LABEL_35;
  }

  v75 = 1;
  v74 = v96;
  v76 = *&v5[v73];
  if (!v76)
  {
    goto LABEL_30;
  }

LABEL_19:
  swift_getKeyPath();
  v77 = v72[377];
  v107[2] = v76;

  sub_475C4();

  swift_beginAccess();
  v78 = *(v76 + 72);
  v79 = v112;
  v110 = v112;

  v81 = sub_22E0C(v80, v74, v79);

  if (v81)
  {
    v82 = v81;
  }

  else
  {
  }

  sub_1D100(v82);
  v108 = v113;
  v109 = v111;
  sub_6128(&v109, v107, &qword_62B48, &qword_4BA68);
  sub_6128(&v110, v107, &qword_62150, &qword_4BA60);
  sub_6128(&v108, v107, &qword_62B48, &qword_4BA68);
  sub_1CCAC(&v111);

  if (qword_61CF0 != -1)
  {
    swift_once();
  }

  v83 = sub_47814();
  sub_5ED4(v83, qword_64360);
  v63 = sub_477F4();
  v66 = sub_48604();
  if (!os_log_type_enabled(v63, v66))
  {

    goto LABEL_36;
  }

  v76 = swift_slowAlloc();
  v72 = swift_slowAlloc();
  v107[0] = v72;
  *v76 = 136315394;
  if (v71 > 1)
  {
    goto LABEL_31;
  }

  if (v71)
  {
    v84 = 0xEC0000006E696775;
    v85 = 0x6C5020736C6C6F50;
  }

  else
  {
    v84 = 0xE700000000000000;
    v85 = 0x6E776F6E6B6E55;
  }

LABEL_35:
  v86 = sub_3DD80(v85, v84, v107);

  *(v76 + 4) = v86;
  *(v76 + 12) = 1024;
  *(v76 + 14) = v75;
  _os_log_impl(&dword_0, v63, v66, "Staging source: %s, from keyboard suggestion: %{BOOL}d", v76, 0x12u);
  sub_6020(v72);

  v72 = &unk_62000;
LABEL_36:
  v87 = *&v5[v73];
  v88 = v95;
  if (!v87)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  sub_60C8(&v109, &qword_62B48, &qword_4BA68);
  sub_60C8(&v110, &qword_62150, &qword_4BA60);
  sub_60C8(&v108, &qword_62B48, &qword_4BA68);
  v89 = [v88 isFromMe];
  v90 = v89;
  if (v89 == *(v87 + 176))
  {
    sub_60C8(v106, &qword_62B68, &qword_4BBB0);

    *(v87 + 176) = v90;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v92);
    v94[-2] = v87;
    LOBYTE(v94[-1]) = v90;
    v93 = v72[377];
    v107[0] = v87;
    sub_475B4();

    sub_60C8(v106, &qword_62B68, &qword_4BBB0);
  }
}

uint64_t sub_188D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_485B4();
  v5[3] = sub_485A4();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_18994;

  return sub_18AD0(a5);
}

uint64_t sub_18994()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_48594();

  return _swift_task_switch(sub_1C7E8, v5, v4);
}

uint64_t sub_18AD0(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  sub_485B4();
  v2[21] = sub_485A4();
  v4 = sub_48594();
  v2[22] = v4;
  v2[23] = v3;

  return _swift_task_switch(sub_18B68, v4, v3);
}

uint64_t sub_18B68()
{
  v1 = [*(v0 + 160) presentationStyle];
  if (v1 == &dword_0 + 2)
  {
    v2 = *(*(v0 + 160) + OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel);
    *(v0 + 192) = v2;
    if (v2)
    {
      v3 = *(v0 + 152);
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 144;
      *(v0 + 24) = sub_18D10;
      v4 = swift_continuation_init();
      *(v0 + 136) = sub_54A4(&qword_62BA8, &qword_4BC98);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1B21C;
      *(v0 + 104) = &unk_5EBB8;
      *(v0 + 112) = v4;

      [v3 _requestConversationAvatarsWithSize:v0 + 80 completionHandler:{50.0, 50.0}];
      v1 = (v0 + 16);
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_await(v1);
  }

  else
  {
    v5 = *(v0 + 168);

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_18D10()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  if (v3)
  {
    v4 = v1[24];

    v5 = v1[22];
    v6 = v1[23];
    v7 = sub_18E9C;
  }

  else
  {
    v5 = v1[22];
    v6 = v1[23];
    v7 = sub_18E28;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_18E28()
{
  v1 = v0[24];
  v2 = v0[21];

  sub_1E024(v0[18]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_18E9C()
{
  v1 = v0[25];
  v2 = v0[21];

  swift_willThrow();
  if (qword_61CF0 != -1)
  {
    swift_once();
  }

  v3 = sub_47814();
  sub_5ED4(v3, qword_64360);
  v4 = sub_477F4();
  v5 = sub_48624();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[25];
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v4, v5, "Error when attempting to fetch avatar images.", v8, 2u);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_18FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_485B4();
  v5[3] = sub_485A4();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_19090;

  return sub_18AD0(a5);
}

uint64_t sub_19090()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_48594();

  return _swift_task_switch(sub_191CC, v5, v4);
}

uint64_t sub_191CC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

id sub_19294(uint64_t a1)
{
  v2 = v1;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for MessagesViewController();
  objc_msgSendSuper2(&v22, "didBecomeActiveWithConversation:", a1);
  [v2 _balloonMaskEdgeInsets];
  v5 = v4;
  [v2 _balloonMaskEdgeInsets];
  v7 = v6;
  [v2 _balloonMaskEdgeInsets];
  v9 = v8;
  result = [v2 _balloonMaskEdgeInsets];
  v12 = OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel;
  v13 = *&v2[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel];
  if (!v13)
  {
    __break(1u);
    return result;
  }

  v14 = v11;
  v15 = v13[15];
  v16 = v13[16];
  v17 = v13[17];
  v18 = v13[18];
  v19 = *&v2[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel];

  if (sub_47824())
  {
    v13[15] = v5;
    v13[16] = v7;
    v13[17] = v9;
    v13[18] = v14;

    if (!*&v2[v12])
    {
      return result;
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v21);
    sub_1B304();
    sub_475B4();

    if (!*&v2[v12])
    {
      return result;
    }
  }

  sub_1DCA8();
}

id sub_195BC(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for MessagesViewController();
  return objc_msgSendSuper2(&v7, *a4, a3);
}

void sub_19610(void *a1, void *a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollNetworking);
  if (v3)
  {
    v6 = *(v3 + OBJC_IVAR____TtC13MessagesPolls14PollNetworking_conversation);
    *(v3 + OBJC_IVAR____TtC13MessagesPolls14PollNetworking_conversation) = a2;

    v7 = a2;

    if (qword_61CF0 != -1)
    {
      swift_once();
    }

    v8 = sub_47814();
    sub_5ED4(v8, qword_64360);
    v9 = sub_477F4();
    v10 = sub_48604();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "Polls: _didUpdate", v11, 2u);
    }

    sub_17BDC(a1, v7);
  }

  else
  {
    __break(1u);
  }
}

void sub_197D4(double a1, double a2)
{
  v5 = v2;
  v8 = type metadata accessor for ContentView();
  v9 = *(*(v8 - 8) + 64);
  v11 = __chkstk_darwin(v8, v10);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v16 = &v65 - v15;
  v17 = OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_contentHost;
  v18 = *&v2[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_contentHost];
  if (!v18)
  {
    __break(1u);
    goto LABEL_33;
  }

  v19 = [v18 view];
  if (!v19)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v20 = v19;
  v3 = [v19 window];

  if (v3)
  {

LABEL_7:
    v22 = *&v5[v17];
    if (!v22)
    {
      goto LABEL_16;
    }

    v23 = [v22 view];
    if (v23)
    {
      v24 = v23;
      [v23 layoutIfNeeded];

      v25 = *&v5[v17];
      if (v25)
      {
        v26 = [v25 view];
        if (v26)
        {
          v27 = v26;
          [v26 sizeThatFits:{a1, a2}];

          if (qword_61CF0 != -1)
          {
            swift_once();
          }

          v28 = sub_47814();
          sub_5ED4(v28, qword_64360);
          v16 = v5;
          v29 = sub_477F4();
          v30 = sub_48604();
          if (!os_log_type_enabled(v29, v30))
          {

            return;
          }

          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v70 = v32;
          *v31 = 136315394;
          v33 = sub_48694();
          v35 = sub_3DD80(v33, v34, &v70);

          *(v31 + 4) = v35;
          *(v31 + 12) = 2048;
          v4 = *&v16[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel];
          if (v4)
          {
            swift_getKeyPath();
            v69 = v4;
            sub_1B304();

            sub_475C4();

            swift_beginAccess();
            v36 = *(v4 + 25);

            v37 = *(v36 + 16);

            *(v31 + 14) = v37;

            _os_log_impl(&dword_0, v29, v30, "New contentSize: %s. Items: %ld", v31, 0x16u);
            sub_6020(v32);

            return;
          }

          goto LABEL_38;
        }

        goto LABEL_36;
      }

LABEL_16:
      if (qword_61CF0 != -1)
      {
        swift_once();
      }

      v38 = sub_47814();
      sub_5ED4(v38, qword_64360);
      v3 = v5;
      v16 = sub_477F4();
      v39 = sub_48604();
      if (!os_log_type_enabled(v16, v39))
      {

        return;
      }

      v40 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v70 = v4;
      *v40 = 136315394;
      v69 = *&v5[v17];
      v41 = v69;
      sub_54A4(&qword_62B60, &qword_4BBA8);
      v42 = sub_48434();
      v44 = sub_3DD80(v42, v43, &v70);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2048;
      v45 = *&v3[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel];
      if (v45)
      {
        swift_getKeyPath();
        v69 = v45;
        sub_1B304();

        sub_475C4();

        swift_beginAccess();
        v46 = *(v45 + 25);

        v47 = *(v46 + 16);

        *(v40 + 14) = v47;

        _os_log_impl(&dword_0, v16, v39, "No content size!. Content host: %s. Items: %ld", v40, 0x16u);
        sub_6020(v4);

        return;
      }

      goto LABEL_37;
    }

    goto LABEL_34;
  }

  v68 = OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel;
  v4 = *&v5[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel];
  if (!v4)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:

    __break(1u);
LABEL_38:

    __break(1u);
    goto LABEL_39;
  }

  swift_getKeyPath();
  v69 = v4;
  v3 = sub_1B304();

  v67 = v3;
  sub_475C4();

  v21 = v4[98];

  if (v21)
  {
    goto LABEL_7;
  }

  v48 = v68;
  v49 = *&v5[v68];
  *&v16[*(v8 + 28)] = swift_getKeyPath();
  sub_54A4(&qword_62308, &qword_4AD90);
  swift_storeEnumTagMultiPayload();
  *v16 = v49;
  v50 = qword_61CD8;

  if (v50 != -1)
  {
    swift_once();
  }

  v51 = xmmword_64238;
  *(v16 + 8) = xmmword_64228;
  *(v16 + 24) = v51;
  v52 = *&qword_64258;
  *(v16 + 40) = xmmword_64248;
  *(v16 + 56) = v52;
  *(v16 + 9) = a1;
  v16[80] = 0;
  sub_1C17C(v16, v13);
  v53 = objc_allocWithZone(sub_54A4(&qword_62B58, &qword_4BBA0));
  v54 = sub_479E4();
  [v54 invalidateIntrinsicContentSize];
  [v54 sizeThatFits:{a1, a2}];
  if (qword_61CF0 != -1)
  {
    swift_once();
  }

  v55 = sub_47814();
  sub_5ED4(v55, qword_64360);
  v4 = v5;
  v56 = sub_477F4();
  v57 = sub_48604();
  if (!os_log_type_enabled(v56, v57))
  {

    goto LABEL_31;
  }

  v58 = swift_slowAlloc();
  v66 = swift_slowAlloc();
  v70 = v66;
  *v58 = 136315394;
  v59 = sub_48694();
  v61 = sub_3DD80(v59, v60, &v70);

  *(v58 + 4) = v61;
  *(v58 + 12) = 2048;
  v62 = *&v5[v48];
  if (v62)
  {
    swift_getKeyPath();
    v69 = v62;

    sub_475C4();

    swift_beginAccess();
    v63 = *(v62 + 25);

    v64 = *(v63 + 16);

    *(v58 + 14) = v64;

    _os_log_impl(&dword_0, v56, v57, "New contentSize from _UIHostingView: %s. Items: %ld", v58, 0x16u);
    sub_6020(v66);

LABEL_31:
    sub_1C1E0(v16);
    return;
  }

LABEL_39:

  __break(1u);
}

id sub_1A120()
{
  result = [v0 activeConversation];
  v2 = result;
  if (!result)
  {
    return (v2 != 0);
  }

  v3 = *&v0[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel];
  if (v3)
  {
    swift_getKeyPath();
    *&v11 = v3;
    sub_1B304();

    sub_475C4();

    v4 = *(v3 + 112);

    sub_101E4(v2);

    v5 = sub_476F4();
    v6 = *(*(v5 - 8) + 64);
    __chkstk_darwin(v5 - 8, v7);
    v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_476D4();
    sub_7010(v9, &v11);
    sub_1A2F8(&v11, 1u, 0);
    v16 = v11;
    sub_60C8(&v16, &qword_62B48, &qword_4BA68);
    v15 = v12;
    sub_60C8(&v15, &qword_62150, &qword_4BA60);
    v14 = v13;
    sub_60C8(&v14, &qword_62B48, &qword_4BA68);

    return (v2 != 0);
  }

  __break(1u);
  return result;
}

id sub_1A2F8(__int128 *a1, unsigned int a2, char a3)
{
  v4 = v3;
  result = [v4 activeConversation];
  if (result)
  {
    v9 = *&v4[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel];
    if (v9)
    {
      v10 = result;
      v27 = a2;
      swift_getKeyPath();
      *&v31 = v9;
      sub_1B304();
      swift_retain_n();
      sub_475C4();

      v11 = *(v9 + 112);

      v12 = sub_101E4(v10);
      v14 = v13;

      sub_1D3BC(v12, v14);

      if ((a3 & 1) == 0 || (v15 = [v4 activeConversation]) == 0 || (v16 = v15, v17 = objc_msgSend(v15, "selectedMessage"), v16, v18 = objc_msgSend(v17, "session"), v17, !v18))
      {
        v18 = [objc_allocWithZone(MSSession) init];
      }

      v19 = sub_476F4();
      v20 = *(v19 - 8);
      v21 = *(v20 + 64);
      __chkstk_darwin(v19, v22);
      v24 = &v26 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      v31 = *a1;
      v30 = *(a1 + 2);
      v29 = *(a1 + 24);
      sub_6128(&v30, v28, &qword_62150, &qword_4BA60);
      sub_6128(&v31, v28, &qword_62B48, &qword_4BA68);
      sub_6128(&v29, v28, &qword_62B48, &qword_4BA68);
      result = sub_6484(a1, v24);
      if (*&v4[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollNetworking])
      {
        v25 = *&v4[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollNetworking];

        sub_3BB98(v24, v18, v27);

        return (*(v20 + 8))(v24, v19);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

id sub_1A5DC(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  result = [v3 activeConversation];
  if (result)
  {
    v7 = result;
    v28[0] = sub_476F4();
    v28[1] = v28;
    v8 = *(v28[0] - 8);
    v9 = *(v8 + 64);
    __chkstk_darwin(v28[0], v10);
    v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = *a1;
    v31 = *(a1 + 2);
    v30 = *(a1 + 24);
    sub_6128(&v31, v29, &qword_62150, &qword_4BA60);
    sub_6128(&v32, v29, &qword_62B48, &qword_4BA68);
    sub_6128(&v30, v29, &qword_62B48, &qword_4BA68);
    result = sub_6484(a1, v12);
    v13 = *&v3[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel];
    if (v13)
    {
      swift_getKeyPath();
      v29[0] = v13;
      sub_1B304();

      sub_475C4();

      v14 = *(v13 + 112);

      v15 = sub_101E4(v7);
      v17 = v16;

      sub_7AD8(v15, v17, a2);

      v18 = sub_476A4();
      v19 = *(v18 - 8);
      v20 = *(v19 + 64);
      __chkstk_darwin(v18, v21);
      v23 = v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);

      result = sub_68C4(v24, v23);
      if (*&v3[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollNetworking])
      {
        v25 = *&v3[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollNetworking];

        v26 = [v7 selectedMessage];
        v27 = [v26 session];

        sub_3BCEC(v12, v23, v27);

        (*(v19 + 8))(v23, v18);
        return (*(v8 + 8))(v12, v28[0]);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_1A928(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = [v2 activeConversation];
  if (!v6)
  {
LABEL_17:
    v38 = 0;
    v39 = 0;
    v11 = 0;
    v40 = 0;
    v41 = 0;
LABEL_18:
    *a2 = v38;
    a2[1] = v39;
    a2[2] = v11;
    a2[3] = v40;
    a2[4] = v41;
    return;
  }

  v7 = v6;
  v55 = 0x6C7469546C6C6F70;
  v56 = 0xE900000000000065;
  sub_48774();
  if (!*(a1 + 16) || (v8 = sub_4E3C(&v57), (v9 & 1) == 0))
  {

    sub_5FCC(&v57);
    goto LABEL_17;
  }

  sub_606C(*(a1 + 56) + 32 * v8, v59);
  sub_5FCC(&v57);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_17;
  }

  v48 = a2;
  v10 = 0;
  v11 = _swiftEmptyArrayStorage;
  v46 = v55;
  v47 = v56;
  v51 = OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel;
  v52 = xmmword_4A9C0;
  v49 = a1;
  v50 = v7;
  while (1)
  {
    sub_54A4(&qword_62B50, &qword_4BB60);
    v12 = swift_allocObject();
    *(v12 + 16) = v52;
    *(v12 + 56) = &type metadata for Int;
    *(v12 + 64) = &protocol witness table for Int;
    *(v12 + 32) = v10;
    v60._countAndFlagsBits = sub_48424();
    v57 = 0x6974704F6C6C6F70;
    v58 = 0xEA00000000006E6FLL;
    sub_48484(v60);
    v55 = v57;
    v56 = v58;

    sub_48774();
    if (!*(a1 + 16))
    {
      break;
    }

    v13 = sub_4E3C(&v57);
    if ((v14 & 1) == 0)
    {
      break;
    }

    sub_606C(*(a1 + 56) + 32 * v13, v59);
    sub_5FCC(&v57);
    if ((swift_dynamicCast() & 1) == 0)
    {

      if (!*(v11 + 2))
      {
        goto LABEL_25;
      }

      goto LABEL_22;
    }

    v15 = *&v3[v51];
    if (!v15)
    {
      __break(1u);
      goto LABEL_27;
    }

    v16 = v3;

    swift_getKeyPath();
    v57 = v15;
    sub_1B304();
    sub_475C4();

    v17 = *(v15 + 112);

    v18 = sub_101E4(v7);
    v53 = v19;
    v54 = v18;

    type metadata accessor for PollOptionText();
    v20 = swift_allocObject();
    *(v20 + 16) = [objc_allocWithZone(NSAttributedString) init];
    v21 = objc_allocWithZone(NSAttributedString);

    v22 = sub_483D4();

    v23 = [v21 initWithString:v22];

    v24 = *(v20 + 16);
    *(v20 + 16) = v23;

    v25 = sub_47594();
    v26 = *(v25 - 8);
    v27 = *(v26 + 64);
    __chkstk_darwin(v25, v28);
    v30 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_47584();
    v31 = sub_47574();
    v33 = v32;
    (*(v26 + 8))(v30, v25);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_10FD8(0, *(v11 + 2) + 1, 1, v11);
    }

    v35 = *(v11 + 2);
    v34 = *(v11 + 3);
    if (v35 >= v34 >> 1)
    {
      v11 = sub_10FD8((v34 > 1), v35 + 1, 1, v11);
    }

    ++v10;
    *(v11 + 2) = v35 + 1;
    v36 = &v11[48 * v35];
    *(v36 + 4) = v31;
    *(v36 + 5) = v33;
    v37 = v53;
    *(v36 + 6) = v54;
    *(v36 + 7) = v37;
    *(v36 + 8) = v20;
    v36[72] = 1;
    a1 = v49;
    v7 = v50;
    v3 = v16;
    if (v10 == 12)
    {
      goto LABEL_21;
    }
  }

  sub_5FCC(&v57);
LABEL_21:
  if (!*(v11 + 2))
  {
LABEL_25:

    v38 = 0;
    v39 = 0;
    v11 = 0;
    v40 = 0;
    v41 = 0;
    a2 = v48;
    goto LABEL_18;
  }

LABEL_22:
  v42 = *&v3[v51];
  if (v42)
  {
    v43 = v7;
    swift_getKeyPath();
    v57 = v42;
    sub_1B304();

    sub_475C4();

    v44 = *(v42 + 112);

    v40 = sub_101E4(v43);
    v41 = v45;

    v39 = v47;
    a2 = v48;
    v38 = v46;
    goto LABEL_18;
  }

LABEL_27:
  __break(1u);
}

void sub_1B004(double a1)
{
  v2 = OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel;
  v3 = *(v1 + OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel);
  if (v3)
  {
    swift_getKeyPath();
    sub_1B304();

    sub_475C4();

    v5 = *(v3 + 156);

    v6 = a1;
    if (v5 != v6)
    {
      v7 = *(v1 + v2);
      if (v7)
      {
        if (*(v7 + 156) == v6)
        {
          *(v7 + 156) = v6;
        }

        else
        {
          KeyPath = swift_getKeyPath();
          __chkstk_darwin(KeyPath, v9);

          sub_475B4();
        }
      }
    }
  }
}

uint64_t sub_1B21C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_6190((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_54A4(&qword_62BB0, &qword_4BCA0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_9790();
    **(*(v4 + 64) + 40) = sub_48544();

    return _swift_continuation_throwingResume(v4);
  }
}

unint64_t sub_1B304()
{
  result = qword_62300;
  if (!qword_62300)
  {
    type metadata accessor for PollViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62300);
  }

  return result;
}

uint64_t sub_1B35C(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel);
  if (v2)
  {
    v3 = result;
    if (*(v2 + 98) == 1)
    {
      *(v2 + 98) = 1;

      sub_1D84C();
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath, v5);
      *&v17 = v2;
      sub_1B304();

      sub_475B4();
    }

    sub_1A928(v3, &v14);
    v6 = v15;
    if (v15)
    {
      v17 = v14;
      v18 = v15;
      v19 = v16;
      *&v22 = 0xD000000000000015;
      *(&v22 + 1) = 0x8000000000049B30;
      sub_48774();
      if (*(v3 + 16) && (v7 = sub_4E3C(v12), (v8 & 1) != 0))
      {
        sub_606C(*(v3 + 56) + 32 * v7, v13);
        sub_5FCC(v12);
        if (swift_dynamicCast())
        {
          if (v11 == 7)
          {
            v9 = 3;
          }

          else
          {
            v9 = 2 * (v11 == 1);
          }

          sub_1A2F8(&v17, v9, 1);
          v13[0] = v17;
          sub_60C8(v13, &qword_62B48, &qword_4BA68);
          *&v22 = v18;
          sub_60C8(&v22, &qword_62150, &qword_4BA60);
          v12[0] = v19;
          sub_60C8(v12, &qword_62B48, &qword_4BA68);
          v10 = 1;
          return v10 & 1;
        }

        v20 = v14;
        sub_60C8(&v20, &qword_62B48, &qword_4BA68);
        v21 = v6;
        sub_60C8(&v21, &qword_62150, &qword_4BA60);
        v22 = v16;
        sub_60C8(&v22, &qword_62B48, &qword_4BA68);
      }

      else
      {
        v20 = v14;
        sub_60C8(&v20, &qword_62B48, &qword_4BA68);
        v21 = v6;
        sub_60C8(&v21, &qword_62150, &qword_4BA60);
        v22 = v16;
        sub_60C8(&v22, &qword_62B48, &qword_4BA68);
        sub_5FCC(v12);
      }
    }

    v10 = sub_1A120();
    return v10 & 1;
  }

  __break(1u);
  return result;
}

void sub_1B6CC(int a1, char *a2, void *aBlock)
{
  v4 = OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel;
  v5 = *&a2[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel];
  if (!v5)
  {
LABEL_31:
    _Block_release(aBlock);
    __break(1u);
LABEL_32:
    _Block_release(aBlock);
    __break(1u);
    goto LABEL_33;
  }

  swift_getKeyPath();
  *&v62 = v5;
  v8 = sub_1B304();

  sub_475C4();

  v9 = v5[11];
  if (!v9)
  {

LABEL_29:
    (*(aBlock + 2))(aBlock, 0);
    return;
  }

  v53 = a1;
  v48 = v4;
  v55 = aBlock;
  v56 = a2;
  v52 = v5[10];
  swift_getKeyPath();
  *&v62 = v5;
  v57 = v9;

  v47 = v8;
  sub_475C4();

  swift_beginAccess();
  v54 = v5;
  v10 = v5[25];
  v11 = *(v10 + 16);

  if (v11)
  {
    v12 = 0;
    v13 = v10 + 88;
    v59 = v11;
    v50 = v11 - 1;
    v14 = _swiftEmptyArrayStorage;
    v51 = v10 + 88;
    v60 = v10;
    do
    {
      v58 = v14;
      v15 = (v13 + (v12 << 6));
      while (1)
      {
        if (v12 >= *(v10 + 16))
        {
          __break(1u);
          goto LABEL_31;
        }

        v16 = *(v15 - 6);
        v17 = *(v15 - 5);
        v19 = *(v15 - 4);
        v18 = *(v15 - 3);
        v20 = *(v15 - 2);
        v21 = *(v15 - 1);
        v22 = *v15;
        aBlock = (v12 + 1);
        v61 = v18[2];

        swift_retain_n();

        if ([v61 length])
        {
          break;
        }

        v15 += 64;
        ++v12;
        v10 = v60;
        if (v59 == aBlock)
        {
          v14 = v58;
          goto LABEL_18;
        }
      }

      v49 = v12++;
      v61 = v17;

      v14 = v58;
      aBlock = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_10FD8(0, *(v58 + 2) + 1, 1, v58);
      }

      v23 = v20;
      v25 = *(v14 + 2);
      v24 = *(v14 + 3);
      v26 = v61;
      if (v25 >= v24 >> 1)
      {
        v28 = sub_10FD8((v24 > 1), v25 + 1, 1, v14);
        v26 = v61;
        v14 = v28;
      }

      *(v14 + 2) = v25 + 1;
      v27 = &v14[48 * v25];
      *(v27 + 4) = v26;
      *(v27 + 5) = v19;
      *(v27 + 6) = v23;
      *(v27 + 7) = v21;
      *(v27 + 8) = aBlock;
      v27[72] = v22;
      v10 = v60;
      v13 = v51;
    }

    while (v50 != v49);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

LABEL_18:

  if (!*(v14 + 2))
  {

    aBlock = v55;
    goto LABEL_29;
  }

  v29 = v14;
  v30 = [v56 activeConversation];
  aBlock = v55;
  if (!v30)
  {

    goto LABEL_29;
  }

  if (v53)
  {
    goto LABEL_23;
  }

  v31 = *&v56[v48];
  if (v31)
  {
    swift_getKeyPath();
    *&v62 = v31;

    sub_475C4();

    v32 = *(v31 + 112);

    v33 = sub_101E4(v30);
    v35 = v34;

    v36 = sub_10490(v33, v35, v29);

    v29 = v36;
LABEL_23:
    v37 = [v30 selectedMessage];
    v38 = [v37 session];

    if (!v38)
    {
      v38 = [objc_allocWithZone(MSSession) init];
    }

    v39 = sub_476F4();
    v40 = *(v39 - 8);
    v41 = *(v40 + 64);
    __chkstk_darwin(v39, v42);
    v44 = &v47 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
    v62 = xmmword_4B9C0;
    v63 = v29;
    v64 = v52;
    v65 = v57;

    sub_6484(&v62, v44);
    if (*&v56[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollNetworking])
    {
      v45 = *&v56[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollNetworking];

      v46 = sub_39A48(v44, v38, 0, 1);

      (*(aBlock + 2))(aBlock, v46);

      (*(v40 + 8))(v44, v39);
      return;
    }

    goto LABEL_32;
  }

LABEL_33:
  _Block_release(aBlock);
  __break(1u);
}

uint64_t sub_1BC98()
{
  v1 = v0;
  result = [v0 performSendAnimationOnAppear];
  if (!result)
  {
    return result;
  }

  v3 = OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel;
  v4 = *&v0[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel];
  if (!v4)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  v5 = &unk_62000;
  if (*(v4 + 98) == 1)
  {
    *(v4 + 98) = 1;

    sub_1D84C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v7);
    *&v34 = v4;
    sub_1B304();

    sub_475B4();

    v5 = &unk_62000;
  }

  v8 = *&v0[v3];
  if (!v8)
  {
    goto LABEL_29;
  }

  v9 = *&v0[v3];

  v10 = [v0 performSendAnimationOnAppear];
  if (v10 == *(v8 + 97))
  {
    *(v8 + 97) = v10;
  }

  else
  {
    v11 = swift_getKeyPath();
    __chkstk_darwin(v11, v12);
    v13 = v5[377];
    *&v34 = v8;
    sub_1B304();
    sub_475B4();
  }

  v14 = *&v1[v3];
  if (!v14)
  {
    goto LABEL_30;
  }

  swift_getKeyPath();
  v15 = v5[377];
  *&v34 = v14;
  sub_1B304();
  swift_retain_n();
  sub_475C4();

  swift_beginAccess();
  v16 = *(v14 + 200);

  v17 = *(v16 + 16);
  if (v17)
  {
    v32 = 0;
    v18 = 0;
    v19 = _swiftEmptyArrayStorage;
    do
    {
      v20 = (v16 + 32 + (v18 << 6));
      v21 = v18;
      while (1)
      {
        if (v21 >= *(v16 + 16))
        {
          __break(1u);
          goto LABEL_28;
        }

        v22 = *v20;
        v23 = *(v20 + 42);
        v24 = v20[2];
        v35 = v20[1];
        v36[0] = v24;
        *(v36 + 10) = v23;
        v34 = v22;
        v18 = v21 + 1;
        v25 = *(v24 + 16);
        sub_1C0E8(&v34, v33);
        if ([v25 length])
        {
          break;
        }

        result = sub_E8EC(&v34);
        v20 += 4;
        ++v21;
        if (v17 == v18)
        {
          goto LABEL_25;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v37 = v19;
      if ((result & 1) == 0)
      {
        result = sub_220AC(0, v19[2] + 1, 1);
        v19 = v37;
      }

      v27 = v19[2];
      v26 = v19[3];
      if (v27 >= v26 >> 1)
      {
        result = sub_220AC((v26 > 1), v27 + 1, 1);
        v19 = v37;
      }

      v19[2] = v27 + 1;
      v28 = &v19[8 * v27];
      v29 = v34;
      v30 = v35;
      v31 = v36[0];
      *(v28 + 74) = *(v36 + 10);
      v28[3] = v30;
      v28[4] = v31;
      v28[2] = v29;
    }

    while (v17 - 1 != v21);
  }

  else
  {
    v19 = _swiftEmptyArrayStorage;
  }

LABEL_25:

  sub_1EB40(v19);
}

uint64_t sub_1C17C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1E0(uint64_t a1)
{
  v2 = type metadata accessor for ContentView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C23C(uint64_t a1, uint64_t a2)
{
  v4 = sub_54A4(&qword_62B68, &qword_4BBB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C308(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C37C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C43C;

  return sub_18FD4(a1, v4, v5, v7, v6);
}

uint64_t sub_1C43C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1C530()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1C578(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C7CC;

  return sub_188D8(a1, v4, v5, v7, v6);
}

uint64_t sub_1C700(uint64_t a1, uint64_t a2)
{
  v4 = sub_54A4(&qword_62BB8, &qword_4BCA8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C7EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  swift_beginAccess();
  *a2 = *(v3 + 200);
}

uint64_t sub_1C87C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1EB40(v4);
}

uint64_t sub_1C8A8()
{
  v0 = sub_47814();
  sub_5F0C(v0, qword_64360);
  sub_5ED4(v0, qword_64360);
  return sub_47804();
}

uint64_t sub_1C92C()
{
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_1C9A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1CA24(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1B304();
  sub_475B4();
}

uint64_t sub_1CAC4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  v9 = v1;
  sub_1B304();
  sub_475C4();

  v4 = v1[4];
  v3 = v1[5];
  v6 = v1[6];
  v5 = v9[7];
  v7 = v9[8];
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v6;
  a1[3] = v5;
  a1[4] = v7;
}

uint64_t sub_1CB60@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  v4 = v3[5];
  v6 = v3[6];
  v5 = v3[7];
  v7 = v3[8];
  *a2 = v3[4];
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
  a2[4] = v7;
}

uint64_t sub_1CBFC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v2;
  v7 = *(a1 + 32);
  v8 = v6[0];
  v9 = v2;
  v10 = *(a1 + 24);
  v3 = *a2;
  sub_6128(&v8, v5, &qword_62B48, &qword_4BA68);
  sub_6128(&v9, v5, &qword_62150, &qword_4BA60);
  sub_6128(&v10, v5, &qword_62B48, &qword_4BA68);
  return sub_1CCAC(v6);
}

uint64_t sub_1CCAC(__int128 *a1)
{
  v3 = *(v1 + 48);
  v15[0] = *(v1 + 32);
  v15[1] = v3;
  v16 = *(v1 + 64);
  v17 = v15[0];
  v18 = v3;
  v19 = *(v1 + 56);
  sub_6128(&v17, &v14, &qword_62B48, &qword_4BA68);
  sub_6128(&v18, &v14, &qword_62150, &qword_4BA60);
  sub_6128(&v19, &v14, &qword_62B48, &qword_4BA68);
  v4 = sub_22D40(v15, a1);
  sub_60C8(&v17, &qword_62B48, &qword_4BA68);
  sub_60C8(&v18, &qword_62150, &qword_4BA60);
  sub_60C8(&v19, &qword_62B48, &qword_4BA68);
  if (v4)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v6);
    sub_1B304();
    sub_475B4();
    v14 = *a1;
    sub_60C8(&v14, &qword_62B48, &qword_4BA68);
    v13 = *(a1 + 2);
    sub_60C8(&v13, &qword_62150, &qword_4BA60);
    v12 = *(a1 + 24);
    sub_60C8(&v12, &qword_62B48, &qword_4BA68);
  }

  else
  {
    v9 = *(v1 + 40);
    v8 = *(v1 + 48);
    v10 = *(v1 + 64);
    v11 = a1[1];
    *(v1 + 32) = *a1;
    *(v1 + 48) = v11;
    *(v1 + 64) = *(a1 + 4);

    sub_21098();
    return sub_1DCA8();
  }
}

uint64_t sub_1CED8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v11 = *(a2 + 2);
  v9 = *(a2 + 24);
  v10 = v2;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  v6 = a2[1];
  *(a1 + 32) = v2;
  *(a1 + 48) = v6;
  *(a1 + 64) = *(a2 + 4);
  sub_6128(&v10, v8, &qword_62B48, &qword_4BA68);
  sub_6128(&v11, v8, &qword_62150, &qword_4BA60);
  sub_6128(&v9, v8, &qword_62B48, &qword_4BA68);

  sub_21098();
  return sub_1DCA8();
}

uint64_t sub_1CFBC()
{
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  swift_beginAccess();
  v1 = *(v0 + 72);
}

uint64_t sub_1D044@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  swift_beginAccess();
  *a2 = *(v3 + 72);
}

uint64_t sub_1D0D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D100(v4);
}

uint64_t sub_1D100(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 72);

  v5 = sub_85F4(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 72);
    *(v1 + 72) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v9);
    sub_1B304();
    sub_475B4();
  }
}

uint64_t sub_1D218(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 72);
  *(a1 + 72) = a2;
}

uint64_t sub_1D280()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1B304();
  sub_475C4();

  v2 = *(v0 + 80);
  v1 = *(v4 + 88);

  return v2;
}

uint64_t sub_1D300@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  v4 = *(v3 + 88);
  *a2 = *(v3 + 80);
  a2[1] = v4;
}

uint64_t sub_1D37C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1D3BC(v2, v3);
}

uint64_t sub_1D3BC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 80) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 88);
      if (sub_48874())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v10);
    sub_1B304();
    sub_475B4();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t sub_1D4FC()
{
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  return *(v0 + 96);
}

uint64_t sub_1D56C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  *a2 = *(v3 + 96);
  return result;
}

uint64_t sub_1D60C(uint64_t result)
{
  if (*(v1 + 96) == (result & 1))
  {
    *(v1 + 96) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v3);
    sub_1B304();
    sub_475B4();
  }

  return result;
}

uint64_t sub_1D6F4()
{
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  return *(v0 + 97);
}

uint64_t sub_1D764(uint64_t result)
{
  if (*(v1 + 97) == (result & 1))
  {
    *(v1 + 97) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v3);
    sub_1B304();
    sub_475B4();
  }

  return result;
}

uint64_t sub_1D84C()
{
  v1 = v0;
  swift_getKeyPath();
  *&v26 = v0;
  sub_1B304();
  sub_475C4();

  swift_beginAccess();
  v2 = *(v0 + 200);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v0 + 200);

    v5 = 0;
    v6 = 89;
    while (1)
    {
      swift_getKeyPath();
      *&v26 = v1;
      sub_475C4();

      v7 = *(v1 + 98);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_29988(v2);
        v2 = result;
      }

      if (v5 >= *(v2 + 16))
      {
        break;
      }

      ++v5;
      *(v2 + v6) = v7;
      v6 += 64;
      if (v3 == v5)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  v9 = *(v0 + 200);

LABEL_9:
  swift_getKeyPath();
  *&v26 = v1;
  sub_475C4();

  if (*(v1 + 98))
  {
    return sub_1EB40(v2);
  }

  v10 = *(v2 + 16);
  if (!v10)
  {
    v12 = &_swiftEmptyArrayStorage;
LABEL_24:

    v2 = v12;
    return sub_1EB40(v2);
  }

  v11 = 0;
  v12 = &_swiftEmptyArrayStorage;
LABEL_12:
  v13 = (v2 + 32 + (v11 << 6));
  v14 = v11;
  while (v14 < *(v2 + 16))
  {
    v15 = *v13;
    v16 = *(v13 + 42);
    v17 = v13[2];
    v27 = v13[1];
    v28[0] = v17;
    *(v28 + 10) = v16;
    v26 = v15;
    v11 = v14 + 1;
    v18 = *(v17 + 16);
    sub_1C0E8(&v26, v25);
    if ([v18 length])
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v29 = v12;
      if ((result & 1) == 0)
      {
        result = sub_220AC(0, v12[2] + 1, 1);
        v12 = v29;
      }

      v20 = v12[2];
      v19 = v12[3];
      if (v20 >= v19 >> 1)
      {
        result = sub_220AC((v19 > 1), v20 + 1, 1);
        v12 = v29;
      }

      v12[2] = v20 + 1;
      v21 = &v12[8 * v20];
      v22 = v26;
      v23 = v27;
      v24 = v28[0];
      *(v21 + 74) = *(v28 + 10);
      v21[3] = v23;
      v21[4] = v24;
      v21[2] = v22;
      if (v10 - 1 != v14)
      {
        goto LABEL_12;
      }

      goto LABEL_24;
    }

    result = sub_E8EC(&v26);
    v13 += 4;
    ++v14;
    if (v10 == v11)
    {
      goto LABEL_24;
    }
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1DB04()
{
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  return *(v0 + 98);
}

uint64_t sub_1DB74(char a1)
{
  if (*(v1 + 98) == (a1 & 1))
  {
    *(v1 + 98) = a1 & 1;

    return sub_1D84C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v3);
    sub_1B304();
    sub_475B4();
  }
}

uint64_t sub_1DCA8()
{
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  if (*(v0 + 96) == 1)
  {
    swift_getKeyPath();
    sub_475C4();

    if (*(v0 + 97) == 1)
    {
      swift_getKeyPath();
      sub_475C4();

      if (*(v0 + 98) == 1)
      {
        swift_getKeyPath();
        sub_475C4();

        if (*(*(v0 + 48) + 16))
        {
          sub_482F4();
          sub_47994();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1DE1C(uint64_t a1)
{
  if (*(a1 + 98))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v2);
    sub_1B304();
    sub_475B4();
  }

  else
  {
    *(a1 + 98) = 0;
    return sub_1D84C();
  }
}

uint64_t sub_1DF08()
{
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  v1 = *(v0 + 104);
}

uint64_t sub_1DF7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  *a2 = *(v3 + 104);
}

uint64_t sub_1DFF8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1E024(v4);
}

uint64_t sub_1E024(uint64_t a1)
{
  v3 = *(v1 + 104);

  v5 = sub_8B24(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 104);
    *(v1 + 104) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v9);
    sub_1B304();
    sub_475B4();
  }
}

uint64_t sub_1E148()
{
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  v1 = *(v0 + 112);
}

uint64_t sub_1E1BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  *a2 = *(v3 + 112);
}

uint64_t sub_1E238(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1E264(v4);
}

uint64_t sub_1E264(uint64_t a1)
{
  if (*(v1 + 112) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v3);
    sub_1B304();
    sub_475B4();
  }
}

double sub_1E368()
{
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  result = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  return result;
}

uint64_t sub_1E3DC(double a1, double a2, double a3, double a4)
{
  v9 = *(v4 + 15);
  v10 = *(v4 + 16);
  v11 = *(v4 + 17);
  v12 = *(v4 + 18);
  result = sub_47824();
  if (result)
  {
    v4[15] = a1;
    v4[16] = a2;
    v4[17] = a3;
    v4[18] = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v15);
    sub_1B304();
    sub_475B4();
  }

  return result;
}

double *sub_1E4F4(double *result, double a2, double a3, double a4, double a5)
{
  result[15] = a2;
  result[16] = a3;
  result[17] = a4;
  result[18] = a5;
  return result;
}

float sub_1E500()
{
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  return *(v0 + 156);
}

float sub_1E570@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  result = *(v3 + 156);
  *a2 = result;
  return result;
}

void sub_1E610(float a1)
{
  if (*(v1 + 156) == a1)
  {
    *(v1 + 156) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v3);
    sub_1B304();
    sub_475B4();
  }
}

uint64_t sub_1E700()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1B304();
  sub_475C4();

  v2 = *(v0 + 160);
  v1 = *(v4 + 168);

  return v2;
}

uint64_t sub_1E780@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  v4 = *(v3 + 168);
  *a2 = *(v3 + 160);
  a2[1] = v4;
}

uint64_t sub_1E7FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1E83C(v2, v3);
}

uint64_t sub_1E83C(uint64_t a1, uint64_t a2)
{
  v5 = v2[20] == a1 && v2[21] == a2;
  if (v5 || (v6 = v2[21], (sub_48874() & 1) != 0))
  {
    v2[20] = a1;
    v2[21] = a2;

    swift_getKeyPath();
    sub_1B304();
    sub_475C4();

    swift_beginAccess();
    v7 = v2[25];

    return sub_1EB40(v8);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v11);
    sub_1B304();
    sub_475B4();
  }
}

uint64_t sub_1E9B0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[21];
  a1[20] = a2;
  a1[21] = a3;

  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  swift_beginAccess();
  v5 = a1[25];

  return sub_1EB40(v6);
}

uint64_t sub_1EA60(uint64_t result)
{
  if (*(v1 + 176) == (result & 1))
  {
    *(v1 + 176) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v3);
    sub_1B304();
    sub_475B4();
  }

  return result;
}

uint64_t sub_1EB40(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 200);
  v4 = *(v3 + 16);
  if (v4 == *(a1 + 16))
  {
    if (v4)
    {
      v5 = v3 == a1;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      v8 = *(v1 + 200);

      v9 = v4 - 1;
      for (i = 32; ; i += 64)
      {
        v12 = *(v3 + i + 16);
        v11 = *(v3 + i + 32);
        v13 = *(v3 + i);
        *&v24[10] = *(v3 + i + 42);
        v23 = v12;
        *v24 = v11;
        v22 = v13;
        v14 = *(a1 + i + 16);
        v25 = *(a1 + i);
        v26 = v14;
        *v27 = *(a1 + i + 32);
        *&v27[10] = *(a1 + i + 42);
        if (v13 != v25 && (sub_48874() & 1) == 0 || v23 != v26 && (sub_48874() & 1) == 0)
        {
          goto LABEL_21;
        }

        v15 = *(*v24 + 16);
        v16 = *(*v27 + 16);
        sub_1C0E8(&v22, v21);
        sub_1C0E8(&v25, v21);
        if (![v15 isEqualToAttributedString:v16])
        {
          sub_E8EC(&v25);
          sub_E8EC(&v22);
LABEL_21:

          goto LABEL_22;
        }

        if (*&v24[8] == *&v27[8])
        {
          sub_E8EC(&v25);
          sub_E8EC(&v22);
        }

        else
        {
          v17 = sub_48874();
          sub_E8EC(&v25);
          sub_E8EC(&v22);
          if ((v17 & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        if (v24[24] != v27[24] || v24[25] != v27[25])
        {
          goto LABEL_21;
        }

        if (!v9)
        {
          break;
        }

        --v9;
      }

      v20 = *(v1 + 200);
    }

    *(v1 + 200) = a1;

    return sub_20450(v6);
  }

  else
  {
LABEL_22:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v19);
    *&v25 = v1;
    sub_1B304();
    sub_475B4();
  }
}

uint64_t sub_1EDDC()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  swift_beginAccess();
  v2 = *(v0[25] + 16);

  v20 = v2;
  if (!v2)
  {
  }

  v4 = 0;
  v5 = 40;
  v21 = result;
  while (1)
  {
    if (v4 >= *(result + 16))
    {
      __break(1u);
      goto LABEL_19;
    }

    v7 = *(result + v5 - 8);
    v6 = *(result + v5);
    v8 = *(result + v5 + 16);
    v9 = *(result + v5 + 24);
    v10 = *(result + v5 + 40);
    swift_getKeyPath();

    sub_475C4();

    if (v7 == v1[20] && v6 == v1[21])
    {

      if (!v4)
      {
        return result;
      }

      goto LABEL_12;
    }

    v11 = sub_48874();

    if (v11)
    {
      break;
    }

    ++v4;
    v5 += 64;
    result = v21;
    if (v20 == v4)
    {
    }
  }

  if (!v4)
  {
    return result;
  }

LABEL_12:
  swift_getKeyPath();
  sub_475C4();

  v12 = v1[25];
  if (*(v12 + 16) < v4)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v13 = ~v4;
  v14 = v12 + v5;
  while (!__CFADD__(v13++, 1))
  {
    v16 = (v14 - 64);
    v17 = *(v14 - 16);
    v14 -= 64;
    if (v17 == 1)
    {
      v18 = *(v16 - 1);
      v19 = *v16;

      return sub_1E83C(v18, v19);
    }
  }

  return result;
}

uint64_t sub_1F030(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a3 + 32); ; i += 4)
  {
    v8 = i[1];
    v20[0] = *i;
    v20[1] = v8;
    v10 = *i;
    v9 = i[1];
    v21[0] = i[2];
    *(v21 + 10) = *(i + 42);
    v17 = v10;
    v18 = v9;
    v19[0] = i[2];
    *(v19 + 10) = *(i + 42);
    sub_1C0E8(v20, &v14);
    v11 = a1(&v17);
    if (v3)
    {
      break;
    }

    v12 = v11;
    v14 = v17;
    v15 = v18;
    v16[0] = v19[0];
    *(v16 + 10) = *(v19 + 10);
    sub_E8EC(&v14);
    if (v12)
    {
      return v6;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  v14 = v17;
  v15 = v18;
  v16[0] = v19[0];
  *(v16 + 10) = *(v19 + 10);
  sub_E8EC(&v14);
  return v6;
}

uint64_t sub_1F150()
{
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  swift_beginAccess();
  v22 = v0;
  v1 = *(v0[25] + 16);

  v20 = v1;
  if (!v1)
  {
  }

  v3 = 0;
  v4 = 0;
  v21 = result;
  while (1)
  {
    if (v4 >= *(result + 16))
    {
      __break(1u);
      goto LABEL_19;
    }

    v23 = v3;
    v6 = *(result + v3 + 32);
    v5 = *(result + v3 + 40);
    v7 = *(result + v3 + 56);
    v8 = *(result + v3 + 64);
    v9 = *(result + v3 + 80);
    swift_getKeyPath();

    sub_475C4();

    if (v6 == v22[20] && v5 == v22[21])
    {
      break;
    }

    v10 = sub_48874();

    if (v10)
    {
      goto LABEL_10;
    }

    ++v4;
    v3 = v23 + 64;
    result = v21;
    if (v20 == v4)
    {
    }
  }

LABEL_10:

  swift_getKeyPath();
  sub_475C4();

  swift_getKeyPath();
  sub_475C4();

  if (v4 + 1 >= *(v22[25] + 16))
  {
    return result;
  }

  swift_getKeyPath();
  sub_475C4();

  v11 = v22[25];
  v12 = *(v11 + 16);
  v13 = v12 > v4;
  v14 = v12 - v4;
  if (!v13)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v15 = (v11 + v23 + 152);
  while (--v14)
  {
    v16 = v15 + 64;
    v17 = *v15;
    v15 += 64;
    if (v17 == 1)
    {
      v18 = *(v16 - 15);
      v19 = *(v16 - 14);

      return sub_1E83C(v18, v19);
    }
  }

  return result;
}

uint64_t sub_1F43C()
{
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  return *(v0 + 176);
}

uint64_t sub_1F4AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  *a2 = *(v3 + 176);
  return result;
}

uint64_t sub_1F554(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  *&v20[0] = v2;
  sub_1B304();
  sub_475C4();

  v6 = *(v2 + 88);
  if (v6)
  {
    v16 = *(v2 + 80);
    v7 = sub_54A4(&qword_62138, &qword_4AC00);
    v17 = &v15;
    v8 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v7 - 8, v9);
    v11 = &v15 - v10;
    v12 = sub_47564();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    swift_getKeyPath();
    *&v20[0] = v2;

    sub_475C4();

    *&v20[0] = v2;
    swift_getKeyPath();
    sub_475E4();

    swift_beginAccess();
    sub_7CC0(a1, a2, v16, v6, v11);
    sub_60C8(v11, &qword_62138, &qword_4AC00);
    swift_endAccess();

    *&v20[0] = v2;
    swift_getKeyPath();
    sub_475D4();

    swift_getKeyPath();
    *&v20[0] = v2;
    sub_475C4();

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      swift_getKeyPath();
      *&v20[0] = v2;
      sub_475C4();

      v13 = *(v2 + 48);
      v20[0] = *(v2 + 32);
      v20[1] = v13;
      v21 = *(v2 + 64);
      v22 = v20[0];
      v23 = v13;
      v24 = *(v2 + 56);
      swift_getKeyPath();
      v19 = v2;
      sub_6128(&v22, v18, &qword_62B48, &qword_4BA68);
      sub_6128(&v23, v18, &qword_62150, &qword_4BA60);
      sub_6128(&v24, v18, &qword_62B48, &qword_4BA68);
      sub_475C4();

      v14 = *(v2 + 72);

      sub_1A5DC(v20, v14);

      swift_unknownObjectRelease();
      sub_60C8(&v22, &qword_62B48, &qword_4BA68);
      sub_60C8(&v23, &qword_62150, &qword_4BA60);
      return sub_60C8(&v24, &qword_62B48, &qword_4BA68);
    }
  }

  return result;
}

uint64_t sub_1F8F8(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  v5 = v1[11];
  if (v5)
  {
    v6 = v3 == v1[10] && v5 == v4;
    if (v6 || (sub_48874() & 1) != 0)
    {
      goto LABEL_8;
    }
  }

  swift_getKeyPath();
  sub_475C4();

  v7 = v1[14];

  v8 = sub_FA3C(v3, v4);

  if (v8)
  {
LABEL_8:
    if (qword_61CD0 != -1)
    {
      swift_once();
    }

    return sub_47494();
  }

  else
  {
    swift_getKeyPath();
    sub_475C4();

    v10 = v2[14];

    v11 = sub_F554(v3, v4);
    v13 = v12;

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      sub_54A4(&qword_62B50, &qword_4BB60);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_4A9C0;
      *(v15 + 56) = &type metadata for String;
      *(v15 + 64) = sub_22844();
      *(v15 + 32) = v11;
      *(v15 + 40) = v13;
      if (qword_61CD0 != -1)
      {
        swift_once();
      }

      sub_47494();
      v16 = sub_483E4();

      return v16;
    }

    else
    {

      return 0;
    }
  }
}

unint64_t sub_1FC14(uint64_t a1)
{
  v120 = sub_54A4(&qword_630B8, &qword_4C1A0);
  v2 = *(*(v120 - 8) + 64);
  __chkstk_darwin(v120, v3);
  v119 = (&v107 - v4);
  v118 = sub_54A4(&qword_630C0, &qword_4C1A8);
  v5 = *(*(v118 - 8) + 64);
  __chkstk_darwin(v118, v6);
  v117 = &v107 - v7;
  v8 = type metadata accessor for ViewModelPollVote();
  v116 = *(v8 - 8);
  v9 = *(v116 + 64);
  v11 = __chkstk_darwin(v8 - 8, v10);
  v13 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v11, v14);
  v17 = &v107 - v16;
  __chkstk_darwin(v15, v18);
  v121 = &v107 - v19;
  v115 = sub_54A4(&qword_630C8, &qword_4C1B0);
  v20 = *(*(v115 - 8) + 64);
  v22 = __chkstk_darwin(v115, v21);
  v113 = (&v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __chkstk_darwin(v22, v24);
  v112 = &v107 - v26;
  v28 = __chkstk_darwin(v25, v27);
  v109 = (&v107 - v29);
  __chkstk_darwin(v28, v30);
  v108 = &v107 - v31;
  if (*(a1 + 16))
  {
    sub_54A4(&qword_630D0, &qword_4CFA0);
    v32 = sub_48814();
  }

  else
  {
    v32 = &_swiftEmptyDictionarySingleton;
  }

  v33 = sub_54A4(&qword_62B48, &qword_4BA68);
  v34 = a1 + 64;
  v35 = 1 << *(a1 + 32);
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  else
  {
    v36 = -1;
  }

  v37 = v36 & *(a1 + 64);
  v111 = v33;
  v114 = a1;
  v122 = v32;
  v38 = v35 + 63;
  if (v33 == &type metadata for String)
  {
    v73 = v38 >> 6;
    v113 = (v32 + 64);

    v74 = 0;
    v107 = v17;
    while (v37)
    {
      v78 = v74;
LABEL_36:
      v79 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v80 = v79 | (v78 << 6);
      v81 = *(a1 + 56);
      v82 = (*(a1 + 48) + 16 * v80);
      v84 = *v82;
      v83 = v82[1];
      v85 = v115;
      v86 = *(v116 + 72);
      v87 = v108;
      sub_6BEC(v81 + v86 * v80, &v108[*(v115 + 48)]);
      *v87 = v84;
      v87[1] = v83;
      v88 = v109;
      sub_2524C(v87, v109);
      v89 = *(v85 + 48);
      v90 = *(v120 + 48);
      v91 = v88[1];
      v123 = *v88;
      v124 = v91;

      v92 = v119;
      swift_dynamicCast();
      sub_7A64(v88 + v89, v92 + v90);
      v93 = *(v118 + 48);
      v94 = *v92;
      v95 = v92[1];
      v96 = v92 + v90;
      v97 = v117;
      sub_7A64(v96, &v117[v93]);
      v98 = &v97[v93];
      v99 = v121;
      sub_7A64(v98, v121);
      v100 = v107;
      sub_7A64(v99, v107);
      v101 = v122;
      result = sub_4DA8(v94, v95);
      if (v102)
      {
        v75 = (v101[6] + 16 * result);
        v76 = v75[1];
        *v75 = v94;
        v75[1] = v95;
        v77 = result;

        result = sub_972C(v100, v101[7] + v77 * v86);
      }

      else
      {
        if (v101[2] >= v101[3])
        {
          goto LABEL_45;
        }

        *(v113 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
        v103 = (v101[6] + 16 * result);
        *v103 = v94;
        v103[1] = v95;
        result = sub_7A64(v100, v101[7] + result * v86);
        v104 = v101[2];
        v105 = __OFADD__(v104, 1);
        v106 = v104 + 1;
        if (v105)
        {
          goto LABEL_46;
        }

        v101[2] = v106;
      }

      v74 = v78;
      a1 = v114;
    }

    while (1)
    {
      v78 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        break;
      }

      if (v78 >= v73)
      {
        v32 = v122;
LABEL_41:

        return v32;
      }

      v37 = *(v34 + 8 * v78);
      ++v74;
      if (v37)
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
    v39 = v38 >> 6;
    v40 = v32 + 64;

    v42 = 0;
    v110 = v13;
    while (v37)
    {
LABEL_16:
      v46 = __clz(__rbit64(v37)) | (v42 << 6);
      v47 = *(a1 + 56);
      v48 = (*(a1 + 48) + 16 * v46);
      v50 = *v48;
      v49 = v48[1];
      v51 = v115;
      v121 = *(v116 + 72);
      v52 = v112;
      sub_6BEC(v47 + v121 * v46, &v112[*(v115 + 48)]);
      *v52 = v50;
      v52[1] = v49;
      v53 = v52;
      v54 = v113;
      sub_2524C(v53, v113);
      v55 = *(v51 + 48);
      v56 = *(v120 + 48);
      v57 = v54[1];
      v123 = *v54;
      v124 = v57;

      v58 = v119;
      swift_dynamicCast();
      sub_7A64(v54 + v55, v58 + v56);
      v59 = *(v118 + 48);
      v60 = *v58;
      v61 = v58[1];
      v62 = v58 + v56;
      v63 = v117;
      sub_7A64(v62, &v117[v59]);
      v64 = v110;
      sub_7A64(&v63[v59], v110);
      v32 = v122;
      v65 = v122[5];
      sub_488D4();
      if (v61)
      {
        sub_488F4(1u);
        sub_48464();
      }

      else
      {
        sub_488F4(0);
      }

      result = sub_48904();
      v66 = -1 << v32[32];
      v67 = result & ~v66;
      v68 = v67 >> 6;
      if (((-1 << v67) & ~*&v40[8 * (v67 >> 6)]) == 0)
      {
        v69 = 0;
        v70 = (63 - v66) >> 6;
        while (++v68 != v70 || (v69 & 1) == 0)
        {
          v71 = v68 == v70;
          if (v68 == v70)
          {
            v68 = 0;
          }

          v69 |= v71;
          v72 = *&v40[8 * v68];
          if (v72 != -1)
          {
            v43 = __clz(__rbit64(~v72)) + (v68 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_43;
      }

      v43 = __clz(__rbit64((-1 << v67) & ~*&v40[8 * (v67 >> 6)])) | v67 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v37 &= v37 - 1;
      *&v40[(v43 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v43;
      v44 = (*(v32 + 6) + 16 * v43);
      *v44 = v60;
      v44[1] = v61;
      result = sub_7A64(v64, *(v32 + 7) + v43 * v121);
      ++*(v32 + 2);
      a1 = v114;
    }

    while (1)
    {
      v45 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v45 >= v39)
      {
        goto LABEL_41;
      }

      v37 = *(v34 + 8 * v45);
      ++v42;
      if (v37)
      {
        v42 = v45;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_2035C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 10) = *(a1 + 42);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 10) = *(a2 + 42);
  return sub_2265C(v5, v7) & 1;
}

uint64_t sub_203B8()
{
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 192);
  return result;
}

uint64_t sub_20450()
{
  v2 = v0;
  swift_getKeyPath();
  v3 = OBJC_IVAR____TtC13MessagesPolls13PollViewModel___observationRegistrar;
  *&v94 = v0;
  v85 = sub_1B304();
  sub_475C4();

  swift_beginAccess();
  v4 = *(v0 + 200);
  v5 = *(v4 + 16);

  v6 = -v5;
  v7 = -1;
  v8 = 64;
  v84 = v3;
  while (v6 + v7 != -1)
  {
    if (++v7 >= *(v4 + 16))
    {
      __break(1u);
      goto LABEL_64;
    }

    v1 = v8 + 64;
    v9 = [*(*(v4 + v8) + 16) length];
    v8 = v1;
    if (!v9)
    {

      goto LABEL_18;
    }
  }

  swift_getKeyPath();
  *&v94 = v2;
  sub_475C4();

  if (*(*(v2 + 200) + 16))
  {
    swift_getKeyPath();
    *&v94 = v2;
    sub_475C4();

    if (*(*(v2 + 200) + 16) <= 0xBuLL)
    {
      swift_getKeyPath();
      *&v94 = v2;
      sub_475C4();

      if (*(v2 + 98) == 1)
      {
        swift_getKeyPath();
        *&v94 = v2;
        sub_475C4();

        if ((*(v2 + 97) & 1) == 0)
        {
          v10 = sub_47594();
          v83 = &v74;
          v11 = *(v10 - 8);
          v12 = *(v11 + 64);
          __chkstk_darwin(v10, v13);
          v14 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
          sub_47584();
          v15 = sub_47574();
          v80 = v16;
          v81 = v15;
          v17 = *(v11 + 8);
          v18 = v17(&v74 - v14, v10);
          v82 = &v74;
          __chkstk_darwin(v18, v19);
          sub_47584();
          v20 = sub_47574();
          v78 = v21;
          v79 = v20;
          v17(&v74 - v14, v10);
          swift_getKeyPath();
          *&v94 = v2;
          sub_475C4();

          if (*(v2 + 88))
          {
            v22 = *(v2 + 80);
            v76 = *(v2 + 88);
            v77 = v22;
          }

          else
          {
            v76 = 0xE000000000000000;
            v77 = 0;
          }

          type metadata accessor for PollOptionText();
          v23 = swift_allocObject();
          v24 = objc_allocWithZone(NSAttributedString);

          *(v23 + 16) = [v24 init];
          swift_getKeyPath();
          *&v94 = v2;
          sub_475C4();

          v6 = *(v2 + 98);
          swift_getKeyPath();
          *&v94 = v2;
          sub_475C4();

          *&v94 = v2;
          swift_getKeyPath();
          sub_475E4();

          swift_beginAccess();
          v25 = *(v2 + 200);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v2 + 200) = v25;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v25 = sub_10B44(0, *(v25 + 2) + 1, 1, v25);
            *(v2 + 200) = v25;
          }

          v28 = *(v25 + 2);
          v27 = *(v25 + 3);
          v29 = v28 + 1;
          if (v28 >= v27 >> 1)
          {
            v75 = v28 + 1;
            v73 = sub_10B44((v27 > 1), v28 + 1, 1, v25);
            v29 = v75;
            v25 = v73;
          }

          *(v25 + 2) = v29;
          v30 = &v25[64 * v28];
          v31 = v80;
          *(v30 + 4) = v81;
          *(v30 + 5) = v31;
          v32 = v78;
          *(v30 + 6) = v79;
          *(v30 + 7) = v32;
          v33 = v76;
          v34 = v77;
          *(v30 + 8) = v23;
          *(v30 + 9) = v34;
          *(v30 + 10) = v33;
          v30[88] = 1;
          v30[89] = v6;
          *(v2 + 200) = v25;
          v35 = swift_endAccess();
          sub_20450(v35);
          *&v94 = v2;
          swift_getKeyPath();
          sub_475D4();
        }
      }
    }
  }

LABEL_18:
  swift_getKeyPath();
  *&v94 = v2;
  sub_475C4();

  if (*(*(v2 + 200) + 16) < 4uLL)
  {
    goto LABEL_47;
  }

  swift_getKeyPath();
  *&v94 = v2;
  sub_475C4();

  v36 = *(*(v2 + 200) + 16);

  v79 = v37;
  if (v36 >= 2)
  {
    v1 = 0;
    v80 = v37 + 32;
    v81 = v36 - 1;
    v83 = -v36;
    v38 = &_swiftEmptyArrayStorage;
LABEL_22:
    v82 = v38;
    v39 = v81;
    if (v1 > v81)
    {
      v39 = v1;
    }

    v7 = -v39;
    v3 = v80 + (v1++ << 6);
    while (v7 + v1 != 1)
    {
      v40 = *v3;
      v41 = *(v3 + 42);
      v42 = *(v3 + 32);
      v95 = *(v3 + 16);
      v96[0] = v42;
      *(v96 + 10) = v41;
      v94 = v40;
      v43 = *(v42 + 16);
      sub_1C0E8(&v94, &v92);
      if ([v43 length] || (v44 = v94, swift_getKeyPath(), v6 = &off_60000, *&v92 = v2, sub_475C4(), , v44 == *(v2 + 160)) || (sub_48874() & 1) != 0)
      {
        v38 = v82;
        v45 = swift_isUniquelyReferenced_nonNull_native();
        *&v86 = v38;
        if ((v45 & 1) == 0)
        {
          sub_220AC(0, v38[2] + 1, 1);
          v38 = v86;
        }

        v47 = v38[2];
        v46 = v38[3];
        if (v47 >= v46 >> 1)
        {
          sub_220AC((v46 > 1), v47 + 1, 1);
          v38 = v86;
        }

        v48 = v83 + v1 + 2;
        v38[2] = v47 + 1;
        v49 = &v38[8 * v47];
        v50 = v94;
        v51 = v95;
        v52 = v96[0];
        *(v49 + 74) = *(v96 + 10);
        *(v49 + 3) = v51;
        *(v49 + 4) = v52;
        *(v49 + 2) = v50;
        if (v48 != 1)
        {
          goto LABEL_22;
        }

        goto LABEL_36;
      }

      sub_E8EC(&v94);
      ++v1;
      v3 += 64;
      if (!(v83 + v1))
      {
        v38 = v82;
        goto LABEL_36;
      }
    }

LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v38 = &_swiftEmptyArrayStorage;
LABEL_36:
  swift_unknownObjectRelease();
  v53 = v38[2];
  swift_getKeyPath();
  *&v94 = v2;
  v7 = v38;
  sub_475C4();

  if (v53 == *(*(v2 + 200) + 16) - 1)
  {

    goto LABEL_47;
  }

  v6 = &v88;
  swift_getKeyPath();
  *&v94 = v2;
  sub_475C4();

  v54 = *(v2 + 200);
  v55 = *(v54 + 16);
  if (!v55)
  {
    v90 = 0u;
    memset(v91, 0, 26);
    v89 = 0u;
    goto LABEL_45;
  }

  v56 = (v54 + (v55 << 6));
  v57 = *(v56 - 2);
  v58 = *(v56 - 1);
  v59 = *v56;
  *(v96 + 10) = *(v56 + 10);
  v95 = v58;
  v96[0] = v59;
  v94 = v57;
  memmove(&v89, v56 - 2, 0x3AuLL);
  sub_1C0E8(&v94, &v92);
  v3 = *(&v89 + 1);
  v86 = v90;
  v87[0] = v91[0];
  *(v87 + 10) = *(v91 + 10);
  if (!*(&v89 + 1))
  {
LABEL_45:
    v1 = &_swiftEmptyArrayStorage;
    goto LABEL_46;
  }

  v83 = v89;
  v94 = v89;
  v95 = v90;
  v96[0] = v91[0];
  *(v96 + 10) = *(v91 + 10);
  sub_1C0E8(&v94, &v92);
  v1 = &_swiftEmptyArrayStorage;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_66:
    v1 = sub_10B44(0, *(v1 + 16) + 1, 1, v1);
  }

  v61 = *(v1 + 16);
  v60 = *(v1 + 24);
  if (v61 >= v60 >> 1)
  {
    v1 = sub_10B44((v60 > 1), v61 + 1, 1, v1);
  }

  *(v93 + 10) = *(v87 + 10);
  v92 = v86;
  v93[0] = v87[0];
  *(v1 + 16) = v61 + 1;
  v62 = v1 + (v61 << 6);
  *(v62 + 32) = v83;
  *(v62 + 40) = v3;
  v63 = v92;
  v64 = v93[0];
  *(v62 + 74) = *(v93 + 10);
  *(v62 + 48) = v63;
  *(v62 + 64) = v64;
  v38 = v7;
LABEL_46:
  sub_60C8(v6 + 32, &qword_63098, &qword_4C028);
  *&v94 = v38;
  sub_21D80(v1);
  sub_1EB40(v94);
LABEL_47:
  swift_getKeyPath();
  *&v94 = v2;
  sub_475C4();

  if (*(v2 + 98) == 1)
  {
    swift_getKeyPath();
    *&v94 = v2;
    sub_475C4();

    if ((*(v2 + 97) & 1) == 0)
    {
      swift_getKeyPath();
      *&v94 = v2;
      sub_475C4();

      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v7 = result;
        swift_getKeyPath();
        *&v94 = v2;
        sub_475C4();

        v66 = *(v2 + 200);
        v67 = *(v66 + 16);

        v6 = 0;
        v1 = -v67;
        v3 = -1;
        v68 = 64;
        while (v1 + v3 != -1)
        {
          if (++v3 >= *(v66 + 16))
          {
            goto LABEL_65;
          }

          v69 = v68 + 64;
          v70 = [*(*(v66 + v68) + 16) length] != 0;
          v68 = v69;
          v71 = __OFADD__(v6, v70);
          v6 += v70;
          if (v71)
          {
            __break(1u);
            break;
          }
        }

        if (v6 >= 2)
        {
          v72 = sub_21834();
        }

        else
        {
          v72 = 0;
        }

        if ([v7 presentationStyle] == &dword_4)
        {
          [v7 _setSendingEnabled:v72 & 1];
        }

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_20FA0()
{
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  swift_beginAccess();
  v1 = *(v0 + 200);
}

uint64_t sub_21028(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 200);
  *(a1 + 200) = a2;

  return sub_20450(v5);
}

uint64_t sub_21098()
{
  v1 = v0;
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtC13MessagesPolls13PollViewModel___observationRegistrar;
  *&v70[0] = v0;
  v3 = sub_1B304();
  sub_475C4();

  result = *(v0 + 88);
  if (result)
  {
    v57 = *(v0 + 80);
    v5 = qword_61CF0;
    v58 = result;

    if (v5 != -1)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v6 = sub_47814();
      sub_5ED4(v6, qword_64360);
      v7 = sub_477F4();
      v8 = sub_48604();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_0, v7, v8, "UpdateFromPollDefinition", v9, 2u);
      }

      swift_getKeyPath();
      *&v70[0] = v1;
      v62 = v2;
      v61 = v3;
      sub_475C4();

      v63 = v1;
      v10 = *(*(v1 + 48) + 16);

      v60 = v10;
      if (v10)
      {
        v2 = 0;
        v3 = &_swiftEmptyArrayStorage;
        v12 = (v11 + 72);
        v59 = v11;
        while (v2 < *(v11 + 16))
        {
          v13 = *(v12 - 4);
          v67 = *(v12 - 5);
          v14 = *(v12 - 2);
          v15 = *(v12 - 1);
          LODWORD(v68) = *v12;
          v16 = *(v12 - 3);
          *&v70[0] = v2;

          v64 = sub_48854();
          v18 = v17;
          if (v14)
          {
            v19 = v16;
          }

          else
          {
            v19 = 0;
          }

          v66 = v19;
          v20 = 0xE000000000000000;
          if (v14)
          {
            v20 = v14;
          }

          v65 = v20;
          swift_getKeyPath();
          v21 = v63;
          *&v70[0] = v63;

          sub_475C4();
          v22 = v3;

          v23 = *(v21 + 98);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_10B44(0, *(v3 + 2) + 1, 1, v3);
          }

          v1 = *(v22 + 2);
          v24 = *(v22 + 3);
          v3 = v22;
          if (v1 >= v24 >> 1)
          {
            v3 = sub_10B44((v24 > 1), v1 + 1, 1, v22);
          }

          ++v2;

          *(v3 + 2) = v1 + 1;
          v25 = &v3[64 * v1];
          *(v25 + 4) = v64;
          *(v25 + 5) = v18;
          *(v25 + 6) = v67;
          *(v25 + 7) = v13;
          v26 = v66;
          *(v25 + 8) = v15;
          *(v25 + 9) = v26;
          *(v25 + 10) = v65;
          v25[88] = v68;
          v12 += 48;
          v25[89] = v23;
          v11 = v59;
          if (v60 == v2)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
      }

      else
      {
        v3 = &_swiftEmptyArrayStorage;
LABEL_20:
        v27 = v3;

        swift_getKeyPath();
        v28 = v63;
        *&v70[0] = v63;
        sub_475C4();

        if (*(v28 + 98) == 1)
        {
          swift_getKeyPath();
          *&v70[0] = v28;
          sub_475C4();

          if ((*(v28 + 97) & 1) == 0)
          {
            v37 = *(v3 + 2);
            if (v37 <= 2)
            {
              do
              {
                *&v70[0] = v37;
                v68 = sub_48854();
                v39 = v38;
                v40 = sub_47594();
                v41 = *(v40 - 8);
                v42 = *(v41 + 64);
                __chkstk_darwin(v40, v43);
                v45 = &v57 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
                sub_47584();
                v46 = sub_47574();
                v2 = v47;
                (*(v41 + 8))(v45, v40);
                type metadata accessor for PollOptionText();
                v48 = swift_allocObject();
                v49 = objc_allocWithZone(NSAttributedString);

                *(v48 + 16) = [v49 init];
                swift_getKeyPath();
                v50 = v63;
                *&v70[0] = v63;
                sub_475C4();

                v51 = *(v50 + 98);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v27 = sub_10B44(0, *(v27 + 2) + 1, 1, v27);
                }

                v53 = *(v27 + 2);
                v52 = *(v27 + 3);
                v54 = v27;
                if (v53 >= v52 >> 1)
                {
                  v54 = sub_10B44((v52 > 1), v53 + 1, 1, v27);
                }

                ++v37;
                v27 = v54;
                *(v54 + 2) = v53 + 1;
                v55 = &v54[64 * v53];
                *(v55 + 4) = v68;
                *(v55 + 5) = v39;
                *(v55 + 6) = v46;
                *(v55 + 7) = v2;
                v56 = v57;
                *(v55 + 8) = v48;
                *(v55 + 9) = v56;
                *(v55 + 10) = v58;
                v55[88] = 1;
                v55[89] = v51;
              }

              while (v37 != 3);
            }
          }
        }

        v30 = v63;
        sub_1EB40(v29);
        swift_getKeyPath();
        *&v70[0] = v30;
        sub_475C4();

        swift_beginAccess();
        v31 = *(v30 + 200);
        v32 = *(v31 + 16);

        if (!v32)
        {
LABEL_27:
        }

        v1 = 0;
        v3 = &stru_20;
        while (v1 < *(v31 + 16))
        {
          v33 = *&v3[v31 + 42];
          v34 = *&v3[v31 + 32];
          v35 = *&v3[v31];
          v70[1] = *&v3[v31 + 16];
          v71[0] = v34;
          *(v71 + 10) = v33;
          v70[0] = v35;
          v36 = v35;
          v2 = *(v34 + 16);
          sub_1C0E8(v70, v69);
          if (![v2 length])
          {

            sub_E8EC(v70);
            return sub_1E83C(v36, *(&v36 + 1));
          }

          ++v1;
          sub_E8EC(v70);
          v3 += 64;
          if (v32 == v1)
          {
            goto LABEL_27;
          }
        }
      }

      __break(1u);
LABEL_39:
      swift_once();
    }
  }

  return result;
}

uint64_t sub_21834()
{
  swift_getKeyPath();
  *&v24 = v0;
  sub_1B304();
  sub_475C4();

  swift_beginAccess();
  v1 = *(v0 + 200);
  v2 = *(v1 + 16);

  if (v2)
  {
    v4 = 0;
    v5 = &_swiftEmptyArrayStorage;
    while (2)
    {
      v6 = *(v1 + 16);
      v7 = (v1 + 32 + (v4 << 6));
      v8 = v4;
      while (1)
      {
        if (v8 >= v6)
        {
          __break(1u);
LABEL_21:
          __break(1u);
          return result;
        }

        v9 = *v7;
        v10 = v7[1];
        v11 = v7[2];
        *&v26[10] = *(v7 + 42);
        v25 = v10;
        *v26 = v11;
        v24 = v9;
        v4 = v8 + 1;
        if (v26[24])
        {
          break;
        }

        v7 += 4;
        ++v8;
        if (v2 == v4)
        {
          goto LABEL_15;
        }
      }

      sub_1C0E8(&v24, &v23);
      result = swift_isUniquelyReferenced_nonNull_native();
      v27 = v5;
      if ((result & 1) == 0)
      {
        result = sub_220AC(0, v5[2] + 1, 1);
        v5 = v27;
      }

      v13 = v5[2];
      v12 = v5[3];
      if (v13 >= v12 >> 1)
      {
        result = sub_220AC((v12 > 1), v13 + 1, 1);
        v5 = v27;
      }

      v5[2] = v13 + 1;
      v14 = &v5[8 * v13];
      v15 = v24;
      v16 = v25;
      v17 = *v26;
      *(v14 + 74) = *&v26[10];
      v14[3] = v16;
      v14[4] = v17;
      v14[2] = v15;
      if (v2 - 1 != v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v5 = &_swiftEmptyArrayStorage;
  }

LABEL_15:

  v18 = -v5[2];
  v19 = -1;
  v20 = 64;
  do
  {
    v21 = v18 + v19;
    if (v18 + v19 == -1)
    {
      break;
    }

    if (++v19 >= v5[2])
    {
      goto LABEL_21;
    }

    v22 = v20 + 64;
    result = [*(*(v5 + v20) + 16) length];
    v20 = v22;
  }

  while (!result);

  return v21 != -1;
}

char *sub_21A4C()
{
  sub_621C((v0 + 16));
  v2 = *(v0 + 5);
  v1 = *(v0 + 6);
  v3 = *(v0 + 8);

  v4 = *(v0 + 9);

  v5 = *(v0 + 11);

  v6 = *(v0 + 13);

  v7 = *(v0 + 14);

  v8 = *(v0 + 21);

  sub_621C((v0 + 184));
  v9 = *(v0 + 25);

  v10 = OBJC_IVAR____TtC13MessagesPolls13PollViewModel___observationRegistrar;
  v11 = sub_47604();
  (*(*(v11 - 8) + 8))(&v0[v10], v11);
  return v0;
}

uint64_t sub_21B10()
{
  sub_21A4C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for PollViewModel()
{
  result = qword_62BF8;
  if (!qword_62BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BBC()
{
  result = sub_47604();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

__n128 sub_21CBC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21CD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
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

uint64_t sub_21D20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21D80(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10B44(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21E94(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

size_t sub_21FD8(size_t a1, int64_t a2, char a3)
{
  result = sub_22374(a1, a2, a3, *v3, &qword_626B0, &qword_4C0B0, type metadata accessor for ViewModelPollVote);
  *v3 = result;
  return result;
}

char *sub_2201C(char *a1, int64_t a2, char a3)
{
  result = sub_2214C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2203C(size_t a1, int64_t a2, char a3)
{
  result = sub_22374(a1, a2, a3, *v3, &qword_630A8, &qword_4C0B8, &type metadata accessor for PollOption);
  *v3 = result;
  return result;
}

size_t sub_22074(size_t a1, int64_t a2, char a3)
{
  result = sub_22374(a1, a2, a3, *v3, &qword_626C0, &qword_4B2A8, &type metadata accessor for PollVote);
  *v3 = result;
  return result;
}

char *sub_220AC(char *a1, int64_t a2, char a3)
{
  result = sub_22268(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_220CC(size_t a1, int64_t a2, char a3)
{
  result = sub_22374(a1, a2, a3, *v3, &qword_626C8, &qword_4B2B0, &type metadata accessor for URLQueryItem);
  *v3 = result;
  return result;
}

char *sub_22104(char *a1, int64_t a2, char a3)
{
  result = sub_22550(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2214C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_54A4(&qword_626B8, &qword_4B2A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22268(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_54A4(&qword_626A8, &unk_4B290);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_22374(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_54A4(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_22550(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_54A4(&qword_626A0, &qword_4B288);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2265C(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (sub_48874()) && (*(a1 + 16) == *(a2 + 16) ? (v5 = *(a1 + 24) == *(a2 + 24)) : (v5 = 0), (v5 || (sub_48874()) && [*(*(a1 + 32) + 16) isEqualToAttributedString:*(*(a2 + 32) + 16)] && (*(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48) || (sub_48874())) && ((*(a1 + 56) ^ *(a2 + 56)) & 1) == 0)
  {
    v6 = *(a1 + 57) ^ *(a2 + 57) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_22754(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1D3BC(v2, v3);
}

uint64_t sub_227D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1E83C(v2, v3);
}

uint64_t sub_22818(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1E264(v4);
}

unint64_t sub_22844()
{
  result = qword_630A0;
  if (!qword_630A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_630A0);
  }

  return result;
}

uint64_t sub_228B0()
{
  v1 = v0[3];
  *(v0[2] + 24) = v0[4];
  return swift_unknownObjectWeakAssign();
}

float sub_22960()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 156) = result;
  return result;
}

__n128 sub_22978()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 120) = result;
  *(v1 + 136) = v3;
  return result;
}

uint64_t sub_22990()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 112);
  *(v1 + 112) = *(v0 + 24);
}

uint64_t sub_229E8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_22A1C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 104);
  *(v1 + 104) = *(v0 + 24);
}

uint64_t sub_22AF8()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 88);
  *(v1 + 80) = v0[3];
  *(v1 + 88) = v2;
}

uint64_t sub_22B54(float a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  *(v4 + 95) = 0;
  *(v4 + 120) = 0u;
  *(v4 + 136) = 0u;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0xE000000000000000;
  *(v4 + 176) = 0;
  *(v4 + 192) = 0;
  swift_unknownObjectWeakInit();
  sub_475F4();
  swift_unknownObjectRetain();
  sub_621C(v4 + 16);
  *(v4 + 24) = a3;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  *(v4 + 32) = xmmword_4B9C0;
  *(v4 + 48) = &_swiftEmptyArrayStorage;
  *(v4 + 56) = xmmword_4B9C0;
  *(v4 + 72) = &_swiftEmptyArrayStorage;
  type metadata accessor for PollsContacts();
  swift_allocObject();
  v7 = sub_10128();
  *(v4 + 104) = &_swiftEmptyArrayStorage;
  *(v4 + 112) = v7;
  *(v4 + 156) = a1;
  *(v4 + 200) = &_swiftEmptyArrayStorage;
  v15[3] = &type metadata for PollsFeatureFlags;
  v15[4] = sub_252BC();
  LOBYTE(a3) = sub_47614();
  sub_6020(v15);
  *(v4 + 152) = a3 & 1;
  sub_21098();
  swift_getKeyPath();
  v15[0] = v4;
  sub_1B304();
  sub_475C4();

  swift_beginAccess();
  v8 = *(v4 + 200) - 32;
  v9 = *(*(v4 + 200) + 16) + 1;
  while (--v9)
  {
    v10 = (v8 + 64);
    v11 = *(v8 + 120);
    v8 += 64;
    if (v11 == 1)
    {
      v12 = *v10;
      v13 = v10[1];

      goto LABEL_6;
    }
  }

  v12 = 0;
  v13 = 0xE000000000000000;
LABEL_6:
  sub_1E83C(v12, v13);
  return v4;
}

uint64_t sub_22D40(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 1;
    }

    v6 = *a1;
    v7 = *a1 == *a2 && v4 == v5;
    if (!v7 && (sub_48874() & 1) == 0)
    {
      return 1;
    }
  }

  else if (v5)
  {
    return 1;
  }

  if (sub_83AC(a1[2], a2[2]))
  {
    v8 = a1[4];
    v9 = a2[4];
    if (v8)
    {
      if (v9 && (a1[3] == a2[3] && v8 == v9 || (sub_48874() & 1) != 0))
      {
        return 0;
      }
    }

    else if (!v9)
    {
      return 0;
    }
  }

  return 1;
}

void *sub_22E0C(void *a1, uint64_t (*a2)(char *, uint64_t, uint64_t), void *a3)
{
  v4 = v3;
  v314 = a3;
  v316 = a2;
  v317 = a1;
  v5 = sub_54A4(&qword_630B0, &unk_4C190);
  v6 = *(*(v5 - 8) + 64);
  v8 = __chkstk_darwin(v5 - 8, v7);
  KeyPath = &v301 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v8, v11);
  v14 = &v301 - v13;
  v16 = __chkstk_darwin(v12, v15);
  v328 = &v301 - v17;
  v19 = __chkstk_darwin(v16, v18);
  v335 = &v301 - v20;
  __chkstk_darwin(v19, v21);
  v23 = &v301 - v22;
  v336 = type metadata accessor for ViewModelPollVote();
  v24 = *(v336 - 8);
  v25 = *(v24 + 64);
  v27 = __chkstk_darwin(v336, v26);
  v309 = &v301 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v27, v29);
  v312 = &v301 - v31;
  v33 = __chkstk_darwin(v30, v32);
  v311 = &v301 - v34;
  v36 = __chkstk_darwin(v33, v35);
  v313 = &v301 - v37;
  v39 = __chkstk_darwin(v36, v38);
  v315 = &v301 - v40;
  v42 = __chkstk_darwin(v39, v41);
  v320 = (&v301 - v43);
  v45 = __chkstk_darwin(v42, v44);
  v322 = (&v301 - v46);
  v48 = __chkstk_darwin(v45, v47);
  v323 = &v301 - v49;
  v51 = __chkstk_darwin(v48, v50);
  v326 = &v301 - v52;
  v54 = __chkstk_darwin(v51, v53);
  v333 = (&v301 - v55);
  v57 = __chkstk_darwin(v54, v56);
  v338 = (&v301 - v58);
  v60 = __chkstk_darwin(v57, v59);
  v332 = (&v301 - v61);
  v63 = __chkstk_darwin(v60, v62);
  *&v321 = &v301 - v64;
  v66 = __chkstk_darwin(v63, v65);
  v337 = (&v301 - v67);
  v69 = __chkstk_darwin(v66, v68);
  v319 = &v301 - v70;
  v72 = __chkstk_darwin(v69, v71);
  v327 = &v301 - v73;
  v75 = __chkstk_darwin(v72, v74);
  v77 = (&v301 - v76);
  v79 = __chkstk_darwin(v75, v78);
  v331 = &v301 - v80;
  __chkstk_darwin(v79, v81);
  v83 = &v301 - v82;
  swift_getKeyPath();
  v84 = OBJC_IVAR____TtC13MessagesPolls13PollViewModel___observationRegistrar;
  v343 = v4;
  v339 = sub_1B304();
  v340 = v84;
  sub_475C4();

  if (!*(v4 + 88))
  {
    if (qword_61CF0 != -1)
    {
      swift_once();
    }

    v101 = sub_47814();
    sub_5ED4(v101, qword_64360);
    v102 = sub_477F4();
    v103 = sub_48604();
    if (!os_log_type_enabled(v102, v103))
    {
      goto LABEL_33;
    }

    v104 = swift_slowAlloc();
    *v104 = 0;
    v105 = "mergeResponses: handle not yet set";
    goto LABEL_32;
  }

  if (qword_61CF0 != -1)
  {
    goto LABEL_201;
  }

  while (1)
  {
    v85 = sub_47814();
    v325 = sub_5ED4(v85, qword_64360);
    v86 = sub_477F4();
    v87 = sub_48604();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_0, v86, v87, "mergeResponses", v88, 2u);
    }

    v330 = v317[2];
    if (!v330)
    {
      v102 = sub_477F4();
      v103 = sub_48604();
      if (!os_log_type_enabled(v102, v103))
      {
LABEL_33:

        return 0;
      }

      v104 = swift_slowAlloc();
      *v104 = 0;
      v105 = "mergeResponses: early return, we don't have a local response, replacing";
LABEL_32:
      _os_log_impl(&dword_0, v102, v103, v105, v104, 2u);

      goto LABEL_33;
    }

    v334 = v23;
    v324 = v14;
    v318 = KeyPath;
    v89 = *(v316 + 2);
    v90 = *(v24 + 80);
    v308 = v24;
    v307 = v90;
    v310 = v89;
    if (v89)
    {
      v341 = *(v24 + 72);
      v329 = (v90 + 32) & ~v90;
      v91 = v316 + v329;
      v92 = _swiftEmptyArrayStorage;
      while (1)
      {
        sub_6BEC(v91, v83);
        v94 = *(v83 + 16);
        v95 = *(v83 + 24);
        KeyPath = swift_getKeyPath();
        v342 = v4;

        sub_475C4();

        v96 = *(v4 + 88);
        if (v95)
        {
          if (!v96)
          {

LABEL_20:
            sub_7A64(v83, v331);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v343 = v92;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_21FD8(0, v92[2] + 1, 1);
              v92 = v343;
            }

            v100 = v92[2];
            v99 = v92[3];
            if (v100 >= v99 >> 1)
            {
              sub_21FD8(v99 > 1, v100 + 1, 1);
              v92 = v343;
            }

            v92[2] = v100 + 1;
            v93 = v341;
            sub_7A64(v331, v92 + v329 + v100 * v341);
            goto LABEL_10;
          }

          if (v94 == *(v4 + 80) && v95 == v96)
          {
          }

          else
          {
            v97 = sub_48874();

            if ((v97 & 1) == 0)
            {
              goto LABEL_20;
            }
          }
        }

        else if (v96)
        {
          goto LABEL_20;
        }

        sub_6C50(v83);
        v93 = v341;
LABEL_10:
        v91 += v93;
        if (!--v89)
        {
          v305 = v92;
          v24 = v341;
          v106 = v329;
          goto LABEL_35;
        }
      }
    }

    v24 = *(v24 + 72);
    v106 = (v90 + 32) & ~v90;
    v305 = _swiftEmptyArrayStorage;
LABEL_35:
    v14 = 0;
    v329 = v106;
    v23 = v317 + v106;
    v331 = _swiftEmptyArrayStorage;
LABEL_39:
    v108 = v14 + 1;
    if (!__OFADD__(v14, 1))
    {
      break;
    }

    __break(1u);
LABEL_195:
    __break(1u);
LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    __break(1u);
LABEL_199:
    __break(1u);
LABEL_200:
    __break(1u);
LABEL_201:
    swift_once();
  }

  sub_6BEC(v23, v77);
  v109 = v77[2];
  v83 = v77[3];
  KeyPath = swift_getKeyPath();
  v342 = v4;
  sub_475C4();

  v110 = *(v4 + 88);
  if (v83)
  {
    if (!v110 || (v109 != *(v4 + 80) || v83 != v110) && (sub_48874() & 1) == 0)
    {
LABEL_37:
      sub_6C50(v77);
      goto LABEL_38;
    }
  }

  else if (v110)
  {
    goto LABEL_37;
  }

  if (!v77[1])
  {
    goto LABEL_37;
  }

  sub_7A64(v77, v327);
  v111 = v331;
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v343 = v111;
  if ((v112 & 1) == 0)
  {
    sub_21FD8(0, v111[2] + 1, 1);
    v111 = v343;
  }

  KeyPath = v111[2];
  v113 = v111[3];
  if (KeyPath >= v113 >> 1)
  {
    sub_21FD8(v113 > 1, KeyPath + 1, 1);
    v111 = v343;
  }

  v111[2] = KeyPath + 1;
  v331 = v111;
  sub_7A64(v327, v111 + v329 + KeyPath * v24);
LABEL_38:
  ++v14;
  v23 += v24;
  if (v108 != v330)
  {
    goto LABEL_39;
  }

  v77 = _swiftEmptyArrayStorage;
  v14 = v310;
  if (v310)
  {
    v23 = v316 + v329;
    v114 = v319;
    do
    {
      sub_6BEC(v23, v114);
      v115 = v114[2];
      v83 = v114[3];
      KeyPath = swift_getKeyPath();
      v342 = v4;
      sub_475C4();

      v116 = *(v4 + 88);
      if (v83)
      {
        if (!v116 || (v115 != *(v4 + 80) || v83 != v116) && (sub_48874() & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      else if (v116)
      {
        goto LABEL_54;
      }

      if (v114[1])
      {
        sub_7A64(v114, v321);
        v117 = swift_isUniquelyReferenced_nonNull_native();
        v343 = v77;
        if ((v117 & 1) == 0)
        {
          sub_21FD8(0, v77[2] + 1, 1);
          v77 = v343;
        }

        v119 = v77[2];
        v118 = v77[3];
        if (v119 >= v118 >> 1)
        {
          sub_21FD8(v118 > 1, v119 + 1, 1);
          v77 = v343;
        }

        v77[2] = v119 + 1;
        sub_7A64(v321, v77 + v329 + v119 * v24);
        v114 = v319;
        goto LABEL_55;
      }

LABEL_54:
      sub_6C50(v114);
LABEL_55:
      v23 += v24;
      --v14;
    }

    while (v14);
  }

  v120 = sub_1FC14(&_swiftEmptyDictionarySingleton);
  v121 = v331;
  v340 = *(v331 + 2);
  v341 = v24;
  if (v340)
  {
    KeyPath = 0;
    v14 = &v331[v329];
    do
    {
      if (KeyPath >= v121[2])
      {
        goto LABEL_195;
      }

      v123 = v337;
      sub_6BEC(v14, v337);
      v24 = *v123;
      v23 = v123[1];
      sub_6BEC(v123, v338);
      v4 = swift_isUniquelyReferenced_nonNull_native();
      v343 = v120;
      v125 = sub_4DA8(v24, v23);
      v126 = v120[2];
      v127 = (v124 & 1) == 0;
      v128 = v126 + v127;
      if (__OFADD__(v126, v127))
      {
        goto LABEL_196;
      }

      v83 = v124;
      if (v120[3] >= v128)
      {
        if (v4)
        {
          v131 = v343;
          if (v124)
          {
            goto LABEL_69;
          }
        }

        else
        {
          sub_4347C();
          v131 = v343;
          if (v83)
          {
            goto LABEL_69;
          }
        }
      }

      else
      {
        sub_42894(v128, v4);
        v129 = sub_4DA8(v24, v23);
        if ((v83 & 1) != (v130 & 1))
        {
LABEL_202:
          sub_54A4(&qword_62B48, &qword_4BA68);
          result = sub_48884();
          __break(1u);
          return result;
        }

        v125 = v129;
        v131 = v343;
        if (v83)
        {
LABEL_69:
          v120 = v131;
          v122 = v341;
          sub_972C(v338, v131[7] + v125 * v341);
          goto LABEL_70;
        }
      }

      v131[(v125 >> 6) + 8] |= 1 << v125;
      v132 = (v131[6] + 16 * v125);
      *v132 = v24;
      v132[1] = v23;
      v4 = v131;
      v122 = v341;
      sub_7A64(v338, v131[7] + v125 * v341);
      v133 = *(v4 + 16);
      v134 = __OFADD__(v133, 1);
      v135 = v133 + 1;
      if (v134)
      {
        goto LABEL_199;
      }

      v120 = v4;
      *(v4 + 16) = v135;

LABEL_70:
      ++KeyPath;
      sub_6C50(v337);
      v14 += v122;
      v121 = v331;
    }

    while (v340 != KeyPath);
  }

  v331 = v120;

  v83 = sub_1FC14(&_swiftEmptyDictionarySingleton);
  v4 = v77[2];
  if (v4)
  {
    v24 = 0;
    v136 = v77 + v329;
    while (1)
    {
      if (v24 >= v77[2])
      {
        goto LABEL_197;
      }

      v138 = v332;
      sub_6BEC(v136, v332);
      v14 = *v138;
      KeyPath = v138[1];
      sub_6BEC(v138, v333);
      v139 = swift_isUniquelyReferenced_nonNull_native();
      v343 = v83;
      v140 = sub_4DA8(v14, KeyPath);
      v142 = *(v83 + 16);
      v143 = (v141 & 1) == 0;
      v134 = __OFADD__(v142, v143);
      v144 = v142 + v143;
      if (v134)
      {
        goto LABEL_198;
      }

      v23 = v141;
      if (*(v83 + 24) < v144)
      {
        break;
      }

      if (v139)
      {
        goto LABEL_93;
      }

      v149 = v140;
      sub_4347C();
      v140 = v149;
      v83 = v343;
      if (v23)
      {
LABEL_85:
        v137 = v341;
        sub_972C(v333, *(v83 + 56) + v140 * v341);
        goto LABEL_86;
      }

LABEL_94:
      *(v83 + 8 * (v140 >> 6) + 64) |= 1 << v140;
      v146 = (*(v83 + 48) + 16 * v140);
      *v146 = v14;
      v146[1] = KeyPath;
      sub_7A64(v333, *(v83 + 56) + v140 * v341);
      v147 = *(v83 + 16);
      v134 = __OFADD__(v147, 1);
      v148 = v147 + 1;
      if (v134)
      {
        goto LABEL_200;
      }

      *(v83 + 16) = v148;

      v137 = v341;
LABEL_86:
      ++v24;
      sub_6C50(v332);
      v136 += v137;
      if (v4 == v24)
      {
        goto LABEL_98;
      }
    }

    sub_42894(v144, v139);
    v140 = sub_4DA8(v14, KeyPath);
    if ((v23 & 1) != (v145 & 1))
    {
      goto LABEL_202;
    }

LABEL_93:
    v83 = v343;
    if (v23)
    {
      goto LABEL_85;
    }

    goto LABEL_94;
  }

LABEL_98:

  v151 = v314;
  v152 = v314[2];
  if (v152)
  {
    v343 = _swiftEmptyArrayStorage;
    sub_22104(0, v152, 0);
    v153 = v343;
    v154 = v151 + 5;
    v155 = v341;
    do
    {
      v157 = *(v154 - 1);
      v156 = *v154;
      v343 = v153;
      v159 = v153[2];
      v158 = v153[3];
      v160 = v159 + 1;

      if (v159 >= v158 >> 1)
      {
        sub_22104((v158 > 1), v159 + 1, 1);
        v153 = v343;
      }

      v153[2] = v160;
      v161 = &v153[2 * v159];
      v161[4] = v157;
      v161[5] = v156;
      v154 += 6;
      --v152;
    }

    while (v152);
    v162 = v334;
    v163 = v336;
LABEL_105:
    v339 = (v308 + 56);
    v327 = (v307 + 32) & ~v307;
    v303 = v153;
    v164 = v153 + 5;
    v333 = _swiftEmptyArrayStorage;
    *&v150 = 136315138;
    v321 = v150;
    v165 = v326;
    v330 = v83;
    v332 = (v308 + 48);
    while (2)
    {
      v166 = v83;
      v167 = *(v164 - 1);
      v168 = *v164;
      v169 = v331;
      if (*(v331 + 2))
      {
        v170 = *v164;
        swift_bridgeObjectRetain_n();
        v171 = sub_4DA8(v167, v168);
        if (v172)
        {
          sub_6BEC(v169[7] + v155 * v171, v162);
          v173 = v162;
          v174 = *v339;
          v175 = 0;
        }

        else
        {
          v173 = v162;
          v174 = *v339;
          v175 = 1;
        }

        v163 = v336;
        v174(v173, v175, 1, v336);
      }

      else
      {
        v176 = v162;
        v174 = *v339;
        (*v339)(v176, 1, 1, v163);
        swift_bridgeObjectRetain_n();
      }

      v177 = *(v166 + 16);
      v340 = v167;
      v337 = v160;
      v338 = v164;
      if (v177)
      {
        v178 = v166;
        v179 = sub_4DA8(v167, v168);
        v181 = v180;

        if (v181)
        {
          sub_6BEC(*(v178 + 56) + v155 * v179, v335);
          v182 = 0;
        }

        else
        {
          v182 = 1;
        }

        v163 = v336;
      }

      else
      {

        v182 = 1;
      }

      v183 = v335;
      v174(v335, v182, 1, v163);
      v162 = v334;
      v184 = v163;
      v185 = v328;
      sub_6128(v334, v328, &qword_630B0, &unk_4C190);
      v186 = *v332;
      if ((*v332)(v185, 1, v184) != 1)
      {
        sub_7A64(v185, v165);
        v188 = (v186)(v183, 1, v184);
        v187 = v340;
        if (v188 != 1)
        {
          sub_6C50(v165);
          goto LABEL_124;
        }

        v189 = sub_477F4();
        v190 = sub_48604();

        if (os_log_type_enabled(v189, v190))
        {
          v191 = swift_slowAlloc();
          v192 = swift_slowAlloc();
          v343 = v192;
          *v191 = v321;
          v193 = sub_3DD80(v187, v168, &v343);

          *(v191 + 4) = v193;
          v165 = v326;
          _os_log_impl(&dword_0, v189, v190, "mergeResponses: Taking only local vote: %s", v191, 0xCu);
          sub_6020(v192);
          v162 = v334;

          v183 = v335;
        }

        else
        {
        }

        v155 = v341;
        v205 = v337;
        sub_6BEC(v165, v323);
        v213 = swift_isUniquelyReferenced_nonNull_native();
        v83 = v330;
        if ((v213 & 1) == 0)
        {
          v333 = sub_10B1C(0, v333[2] + 1, 1, v333);
        }

        v215 = v333[2];
        v214 = v333[3];
        if (v215 >= v214 >> 1)
        {
          v333 = sub_10B1C(v214 > 1, v215 + 1, 1, v333);
        }

        sub_6C50(v165);
        v216 = v333;
        v333[2] = v215 + 1;
        sub_7A64(v323, v216 + v327 + v155 * v215);
        sub_60C8(v183, &qword_630B0, &unk_4C190);
        sub_60C8(v162, &qword_630B0, &unk_4C190);
        v163 = v336;
        goto LABEL_145;
      }

      sub_60C8(v185, &qword_630B0, &unk_4C190);
      v187 = v340;
LABEL_124:
      if ((v186)(v183, 1, v184) != 1 && (v186)(v162, 1, v184) == 1)
      {

        v194 = sub_477F4();
        v195 = sub_48604();

        if (os_log_type_enabled(v194, v195))
        {
          v196 = swift_slowAlloc();
          v197 = swift_slowAlloc();
          v343 = v197;
          *v196 = v321;
          v198 = sub_3DD80(v187, v168, &v343);

          *(v196 + 4) = v198;
          v165 = v326;
          _os_log_impl(&dword_0, v194, v195, "mergeResponses: ignoring incoming vote: %s", v196, 0xCu);
          sub_6020(v197);
          v162 = v334;

          v183 = v335;
        }

        else
        {
        }

        v155 = v341;
        v205 = v337;
        sub_60C8(v183, &qword_630B0, &unk_4C190);
        sub_60C8(v162, &qword_630B0, &unk_4C190);
        v163 = v336;
LABEL_144:
        v83 = v330;
LABEL_145:
        v217 = v338;
LABEL_146:
        v164 = (v217 + 16);
        v160 = v205 - 1;
        if (!v160)
        {

          goto LABEL_192;
        }

        continue;
      }

      break;
    }

    v199 = v324;
    sub_6128(v162, v324, &qword_630B0, &unk_4C190);
    if ((v186)(v199, 1, v184) == 1)
    {

      sub_60C8(v183, &qword_630B0, &unk_4C190);
      sub_60C8(v162, &qword_630B0, &unk_4C190);
      sub_60C8(v199, &qword_630B0, &unk_4C190);
      v163 = v184;
LABEL_132:
      v155 = v341;
      v205 = v337;
      goto LABEL_144;
    }

    v200 = v322;
    sub_7A64(v199, v322);
    v201 = v318;
    sub_6128(v183, v318, &qword_630B0, &unk_4C190);
    v202 = (v186)(v201, 1, v184);
    v163 = v184;
    if (v202 == 1)
    {
      sub_6C50(v200);

      sub_60C8(v183, &qword_630B0, &unk_4C190);
      v203 = v334;
      sub_60C8(v334, &qword_630B0, &unk_4C190);
      v204 = v201;
      v162 = v203;
      sub_60C8(v204, &qword_630B0, &unk_4C190);
      v165 = v326;
      goto LABEL_132;
    }

    v206 = v320;
    sub_7A64(v201, v320);
    v207 = sub_8D64(v200, v206);
    v205 = v337;
    if (v207)
    {

      v208 = sub_477F4();
      v209 = sub_48604();

      if (os_log_type_enabled(v208, v209))
      {
        v210 = swift_slowAlloc();
        v211 = swift_slowAlloc();
        v343 = v211;
        *v210 = v321;
        v212 = sub_3DD80(v340, v168, &v343);

        *(v210 + 4) = v212;
        _os_log_impl(&dword_0, v208, v209, "mergeResponses: Votes match, taking local vote: %s", v210, 0xCu);
        sub_6020(v211);
        v162 = v334;

        v183 = v335;

        v155 = v341;
      }

      else
      {

        v155 = v341;
        v162 = v334;
      }

      v259 = v322;
      sub_6BEC(v322, v315);
      v260 = swift_isUniquelyReferenced_nonNull_native();
      v261 = v329;
      v83 = v330;
      if ((v260 & 1) == 0)
      {
        v333 = sub_10B1C(0, v333[2] + 1, 1, v333);
      }

      v263 = v333[2];
      v262 = v333[3];
      if (v263 >= v262 >> 1)
      {
        v333 = sub_10B1C(v262 > 1, v263 + 1, 1, v333);
      }

      sub_6C50(v320);
      sub_6C50(v259);
      v264 = v333;
      v333[2] = v263 + 1;
      sub_7A64(v315, v264 + v261 + v155 * v263);
      sub_60C8(v183, &qword_630B0, &unk_4C190);
      sub_60C8(v162, &qword_630B0, &unk_4C190);
      v163 = v336;
      v165 = v326;
      goto LABEL_145;
    }

    v218 = *(v184 + 24);
    v219 = sub_54A4(&qword_62138, &qword_4AC00);
    v314 = &v301;
    v220 = (*(*(v219 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    v319 = *(*(v219 - 8) + 64);
    __chkstk_darwin(v219 - 8, v221);
    v310 = v218;
    sub_6128(&v218[v200], &v301 - v220, &qword_62138, &qword_4AC00);
    v222 = sub_47564();
    v223 = *(v222 - 8);
    v224 = v223[6];
    v317 = v223 + 6;
    v316 = v224;
    LODWORD(v218) = v224(&v301 - v220, 1, v222);
    v225 = sub_60C8(&v301 - v220, &qword_62138, &qword_4AC00);
    if (v218 != 1)
    {
      v314 = &v301;
      v227 = *(v184 + 24);
      __chkstk_darwin(v225, v226);
      sub_6128(v320 + v228, &v301 - v220, &qword_62138, &qword_4AC00);
      v229 = v316(&v301 - v220, 1, v222);
      v225 = sub_60C8(&v301 - v220, &qword_62138, &qword_4AC00);
      if (v229 == 1)
      {

        v230 = sub_477F4();
        v231 = sub_48604();

        if (os_log_type_enabled(v230, v231))
        {
          v232 = swift_slowAlloc();
          v233 = swift_slowAlloc();
          v343 = v233;
          *v232 = v321;
          v234 = sub_3DD80(v340, v168, &v343);

          *(v232 + 4) = v234;
          _os_log_impl(&dword_0, v230, v231, "mergeResponses: Taking local vote because it has a time: %s", v232, 0xCu);
          sub_6020(v233);
        }

        else
        {
        }

        v162 = v334;
        v282 = v335;
        v155 = v341;
        v217 = v338;
        v283 = v322;
        sub_6BEC(v322, v313);
        v284 = swift_isUniquelyReferenced_nonNull_native();
        v83 = v330;
        if ((v284 & 1) == 0)
        {
          v333 = sub_10B1C(0, v333[2] + 1, 1, v333);
        }

        v286 = v333[2];
        v285 = v333[3];
        if (v286 >= v285 >> 1)
        {
          v333 = sub_10B1C(v285 > 1, v286 + 1, 1, v333);
        }

        sub_6C50(v320);
        sub_6C50(v283);
        v287 = v333;
        v333[2] = v286 + 1;
        v288 = v287 + v327 + v155 * v286;
        v289 = &v343;
        goto LABEL_184;
      }
    }

    v314 = v223;
    v235 = *(v184 + 24);
    __chkstk_darwin(v225, v226);
    v304 = v236;
    sub_6128(v320 + v236, &v301 - v220, &qword_62138, &qword_4AC00);
    v237 = v316(&v301 - v220, 1, v222);
    v238 = sub_60C8(&v301 - v220, &qword_62138, &qword_4AC00);
    v165 = v326;
    v240 = v310;
    if (v237 != 1)
    {
      __chkstk_darwin(v238, v239);
      v242 = &v301 - ((v241 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_6128(&v240[v322], v242, &qword_62138, &qword_4AC00);
      v243 = v316(v242, 1, v222);
      v238 = sub_60C8(v242, &qword_62138, &qword_4AC00);
      if (v243 == 1)
      {

        v244 = sub_477F4();
        v245 = sub_48604();

        v246 = os_log_type_enabled(v244, v245);
        v155 = v341;
        if (v246)
        {
          v247 = swift_slowAlloc();
          v248 = swift_slowAlloc();
          v343 = v248;
          *v247 = v321;
          v249 = sub_3DD80(v340, v168, &v343);

          *(v247 + 4) = v249;
          _os_log_impl(&dword_0, v244, v245, "mergeResponses: Taking incoming vote because it has a time: %s", v247, 0xCu);
          sub_6020(v248);
        }

        else
        {
        }

        v162 = v334;
        v282 = v335;
        v217 = v338;
        sub_6BEC(v320, v311);
        v290 = swift_isUniquelyReferenced_nonNull_native();
        v291 = v322;
        v83 = v330;
        if ((v290 & 1) == 0)
        {
          v333 = sub_10B1C(0, v333[2] + 1, 1, v333);
        }

        v293 = v333[2];
        v292 = v333[3];
        if (v293 >= v292 >> 1)
        {
          v333 = sub_10B1C(v292 > 1, v293 + 1, 1, v333);
        }

        sub_6C50(v320);
        sub_6C50(v291);
        v294 = v333;
        v333[2] = v293 + 1;
        v288 = v294 + v327 + v155 * v293;
        v289 = &v341;
LABEL_184:
        sub_7A64(*(v289 - 32), v288);
        sub_60C8(v282, &qword_630B0, &unk_4C190);
        sub_60C8(v162, &qword_630B0, &unk_4C190);
LABEL_191:
        v163 = v336;
        v165 = v326;
        goto LABEL_146;
      }
    }

    v307 = &v301;
    v250 = v314;
    v251 = v314[8];
    v252 = __chkstk_darwin(v238, v239);
    v302 = (v251 + 15) & 0xFFFFFFFFFFFFFFF0;
    v308 = &v301 - v302;
    v306 = &v301;
    __chkstk_darwin(v252, v253);
    v255 = (v254 + 15) & 0xFFFFFFFFFFFFFFF0;
    v256 = v322;
    sub_6128(&v240[v322], &v301 - v255, &qword_62138, &qword_4AC00);
    v257 = v316(&v301 - v255, 1, v222);
    v155 = v341;
    if (v257 == 1)
    {

      sub_6C50(v320);
      sub_6C50(v256);
      sub_60C8(v335, &qword_630B0, &unk_4C190);
      v162 = v334;
      sub_60C8(v334, &qword_630B0, &unk_4C190);
      sub_60C8(&v301 - v255, &qword_62138, &qword_4AC00);
      v258 = &v336;
    }

    else
    {
      v265 = v250[4];
      v301 = v250 + 4;
      v266 = v265;
      v267 = (v265)(v308, &v301 - v255, v222);
      v310 = &v301;
      v269 = __chkstk_darwin(v267, v268);
      v270 = &v301 - v302;
      v306 = &v301;
      __chkstk_darwin(v269, v271);
      v272 = &v301 - v255;
      v273 = v320;
      sub_6128(v320 + v304, v272, &qword_62138, &qword_4AC00);
      if (v316(v272, 1, v222) != 1)
      {
        v319 = v222;
        v266(v270, v272, v222);
        if (sub_47524())
        {
          v275 = v322;
        }

        else
        {
          v275 = v273;
        }

        sub_6BEC(v275, v312);

        v276 = sub_477F4();
        v277 = sub_48604();

        v278 = os_log_type_enabled(v276, v277);
        v302 = v270;
        if (v278)
        {
          v279 = swift_slowAlloc();
          v280 = swift_slowAlloc();
          v343 = v280;
          *v279 = v321;
          v281 = sub_3DD80(v340, v168, &v343);

          *(v279 + 4) = v281;
          _os_log_impl(&dword_0, v276, v277, "mergeResponses: Taking the newest vote: %s", v279, 0xCu);
          sub_6020(v280);
        }

        else
        {
        }

        v217 = v338;
        sub_6BEC(v312, v309);
        v295 = swift_isUniquelyReferenced_nonNull_native();
        v83 = v330;
        if ((v295 & 1) == 0)
        {
          v333 = sub_10B1C(0, v333[2] + 1, 1, v333);
        }

        v162 = v334;
        v297 = v333[2];
        v296 = v333[3];
        if (v297 >= v296 >> 1)
        {
          v333 = sub_10B1C(v296 > 1, v297 + 1, 1, v333);
        }

        sub_6C50(v312);
        v298 = v314[1];
        v299 = v319;
        v298(v302, v319);
        v298(v308, v299);
        sub_6C50(v320);
        sub_6C50(v322);
        v300 = v333;
        v333[2] = v297 + 1;
        sub_7A64(v309, v300 + v327 + v155 * v297);
        sub_60C8(v335, &qword_630B0, &unk_4C190);
        sub_60C8(v162, &qword_630B0, &unk_4C190);
        goto LABEL_191;
      }

      (v250[1])(v308, v222);
      sub_6C50(v273);
      sub_6C50(v322);
      sub_60C8(v335, &qword_630B0, &unk_4C190);
      v162 = v334;
      sub_60C8(v334, &qword_630B0, &unk_4C190);
      sub_60C8(v272, &qword_62138, &qword_4AC00);
      v258 = &v340;
    }

    v274 = *(v258 - 32);
    v163 = v336;
    v217 = v338;
    v83 = v330;
    goto LABEL_146;
  }

  v153 = _swiftEmptyArrayStorage;
  v160 = _swiftEmptyArrayStorage[2];
  v162 = v334;
  v163 = v336;
  v155 = v341;
  if (v160)
  {
    goto LABEL_105;
  }

  v333 = _swiftEmptyArrayStorage;
LABEL_192:

  v343 = v333;
  sub_21E94(v305, sub_10B1C, type metadata accessor for ViewModelPollVote);
  return v343;
}

uint64_t sub_2524C(uint64_t a1, uint64_t a2)
{
  v4 = sub_54A4(&qword_630C8, &qword_4C1B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_252BC()
{
  result = qword_630D8;
  if (!qword_630D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_630D8);
  }

  return result;
}

uint64_t sub_2533C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = sub_54A4(&qword_63450, &unk_4C4C0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_25418(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_54A4(&qword_63450, &unk_4C4C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ContentView()
{
  result = qword_63138;
  if (!qword_63138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25514()
{
  sub_25668(319, &unk_63148, type metadata accessor for PollViewModel, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_25618();
    if (v1 <= 0x3F)
    {
      sub_25668(319, &qword_634E0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25618()
{
  if (!qword_622B8)
  {
    v0 = sub_486E4();
    if (!v1)
    {
      atomic_store(v0, &qword_622B8);
    }
  }
}

void sub_25668(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_256E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_273B4(&qword_62300, type metadata accessor for PollViewModel);
  sub_475C4();

  *a2 = *(v3 + 97);
  return result;
}

uint64_t sub_257B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_273B4(&qword_62300, type metadata accessor for PollViewModel);
  sub_475C4();

  *a2 = *(v3 + 98);
  return result;
}

__n128 sub_25888@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_273B4(&qword_62300, type metadata accessor for PollViewModel);
  sub_475C4();

  result = *(v3 + 120);
  v5 = *(v3 + 136);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_25960@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_273B4(&qword_62300, type metadata accessor for PollViewModel);
  sub_475C4();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 192);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_25A10(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_273B4(&qword_62300, type metadata accessor for PollViewModel);
  sub_475B4();
}

uint64_t sub_25AE0@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v1 = sub_47D84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_54A4(&qword_63180, &qword_4C220);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7, v9);
  v11 = v22 - v10;
  v12 = sub_54A4(&qword_63188, &qword_4C228);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = v22 - v16;
  *v11 = sub_47C74();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v18 = sub_54A4(&qword_63190, &qword_4C230);
  sub_25E14(&v11[*(v18 + 44)]);
  sub_47D74();
  v19 = sub_EAF0(&qword_63198, &qword_63180, &qword_4C220);
  sub_47FF4();
  (*(v2 + 8))(v6, v1);
  sub_26BDC(v11);
  if (qword_61CD0 != -1)
  {
    swift_once();
  }

  v22[4] = sub_47494();
  v22[5] = v20;
  v22[2] = v7;
  v22[3] = v19;
  swift_getOpaqueTypeConformance2();
  sub_10330();
  sub_47FC4();

  return (*(v13 + 8))(v17, v12);
}

uint64_t sub_25E14@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v64 = sub_54A4(&qword_631A0, &qword_4C238);
  v1 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64, v2);
  v4 = &v60 - v3;
  v65 = sub_54A4(&qword_631A8, &qword_4C240);
  v5 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65, v6);
  v8 = &v60 - v7;
  v9 = sub_47D34();
  v63 = *(v9 - 8);
  v10 = *(v63 + 64);
  __chkstk_darwin(v9, v11);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_54A4(&qword_631B0, &qword_4C248);
  v62 = *(v14 - 8);
  v15 = *(v62 + 64);
  __chkstk_darwin(v14, v16);
  v18 = &v60 - v17;
  v19 = sub_54A4(&qword_631B8, &qword_4C250);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19, v22);
  v25 = &v60 - v24;
  v26 = *v23;
  if (*v23)
  {
    v61 = v14;
    v62 = v19;
    v63 = v9;
    v60 = v8;
    v27 = *(v23 + 72);
    v28 = *(v23 + 80);
    KeyPath = swift_getKeyPath();
    v30 = type metadata accessor for PollOptionList.PollOptionListView();
    *&v4[v30[6]] = KeyPath;
    sub_54A4(&qword_62308, &qword_4AD90);
    swift_storeEnumTagMultiPayload();
    v31 = swift_getKeyPath();
    v32 = swift_getKeyPath();
    type metadata accessor for PollViewModel();
    sub_273B4(&qword_62300, type metadata accessor for PollViewModel);
    swift_retain_n();
    sub_48214();
    *&v4[v30[5]] = 0;
    v33 = &v4[v30[7]];
    *v33 = v31;
    v33[8] = 0;
    v34 = &v4[v30[8]];
    *v34 = v32;
    v34[8] = 0;
    v35 = &v4[v30[9]];
    if (qword_61CE0 != -1)
    {
      swift_once();
    }

    v36 = unk_642A0;
    v70 = xmmword_64290;
    v71 = unk_642A0;
    v37 = qword_642B0;
    v72 = qword_642B0;
    v39 = xmmword_64270;
    v38 = *&qword_64280;
    v68 = xmmword_64270;
    v69 = *&qword_64280;
    *(v35 + 2) = xmmword_64290;
    *(v35 + 3) = v36;
    *(v35 + 8) = v37;
    *v35 = v39;
    *(v35 + 1) = v38;
    v40 = &v4[v30[10]];
    *v40 = v27;
    v40[8] = v28;
    sub_2705C(&v68, v67);
    v41 = sub_265C8();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v48 = sub_47E54();
    v49 = &v4[*(sub_54A4(&qword_63200, &qword_4C268) + 36)];
    *v49 = v48;
    *(v49 + 1) = v41;
    *(v49 + 2) = v43;
    *(v49 + 3) = v45;
    *(v49 + 4) = v47;
    v49[40] = 0;
    v50 = &v4[*(sub_54A4(&qword_631F0, &qword_4C260) + 36)];
    *v50 = sub_270B8;
    v50[1] = v26;
    v50[2] = 0;
    v50[3] = 0;
    v51 = &v4[*(sub_54A4(&qword_631E0, &qword_4C258) + 36)];
    *v51 = sub_268A8;
    *(v51 + 1) = 0;
    *(v51 + 2) = sub_270C0;
    *(v51 + 3) = v26;
    swift_retain_n();
    v52 = sub_26994();
    v53 = sub_47E54();
    v54 = &v4[*(v64 + 36)];
    *v54 = v52;
    v54[8] = v53;
    sub_270C8(v4, v60);
    swift_storeEnumTagMultiPayload();
    sub_26C44();
    v55 = sub_EAF0(&qword_631C0, &qword_631B0, &qword_4C248);
    v56 = sub_273B4(&qword_631C8, &type metadata accessor for CircularProgressViewStyle);
    v67[0] = v61;
    v67[1] = v63;
    v67[2] = v55;
    v67[3] = v56;
    swift_getOpaqueTypeConformance2();
    sub_47CC4();

    return sub_27138(v4);
  }

  else
  {
    sub_478B4();
    sub_47D24();
    v58 = sub_EAF0(&qword_631C0, &qword_631B0, &qword_4C248);
    v59 = sub_273B4(&qword_631C8, &type metadata accessor for CircularProgressViewStyle);
    sub_47F44();
    (*(v63 + 8))(v13, v9);
    (*(v62 + 8))(v18, v14);
    (*(v20 + 16))(v8, v25, v19);
    swift_storeEnumTagMultiPayload();
    sub_26C44();
    *&v68 = v14;
    *(&v68 + 1) = v9;
    *&v69 = v58;
    *(&v69 + 1) = v59;
    swift_getOpaqueTypeConformance2();
    sub_47CC4();
    return (*(v20 + 8))(v25, v19);
  }
}

double sub_265C8()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0.0;
  }

  v2 = v0;
  swift_getKeyPath();
  sub_273B4(&qword_62300, type metadata accessor for PollViewModel);

  sub_475C4();

  if (*(*&v1 + 98) == 1)
  {
    swift_getKeyPath();
    sub_475C4();

    if (*(*&v1 + 98) != 1)
    {

LABEL_10:
      v4 = v2[1];
      v8 = *(v2 + 2);
      v9 = *(v2 + 3);
      v10 = *(v2 + 4);
      return v4;
    }

    swift_getKeyPath();
    sub_475C4();

    v3 = *(*&v1 + 97);

    if ((v3 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v4 = v2[5];
  v5 = *(v2 + 7);
  swift_getKeyPath();

  sub_475C4();

  v6 = *(*&v1 + 128);
  swift_getKeyPath();
  sub_475C4();

  v7 = *(*&v1 + 144);

  return v4;
}

void *sub_267E8()
{
  swift_getKeyPath();
  sub_273B4(&qword_62300, type metadata accessor for PollViewModel);
  sub_475C4();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result requestResize];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_268A8@<X0>(void *a1@<X8>)
{
  result = sub_47964();
  *a1 = v3;
  return result;
}

void *sub_268D4()
{
  swift_getKeyPath();
  sub_273B4(&qword_62300, type metadata accessor for PollViewModel);
  sub_475C4();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result requestResize];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_26994()
{
  v1 = *v0;
  if (*v0)
  {
    swift_getKeyPath();
    *&v10[0] = v1;
    sub_273B4(&qword_62300, type metadata accessor for PollViewModel);

    sub_475C4();

    if (*(v1 + 98) != 1)
    {
      goto LABEL_5;
    }

    swift_getKeyPath();
    *&v10[0] = v1;
    sub_475C4();

    if (*(v1 + 98) != 1)
    {
      goto LABEL_9;
    }

    swift_getKeyPath();
    *&v10[0] = v1;
    sub_475C4();

    if (*(v1 + 97))
    {
LABEL_5:
      v2 = sub_48074();
    }

    else
    {
LABEL_9:
      if (qword_61D40 != -1)
      {
        swift_once();
      }

      v2 = qword_643D8;

      sub_48074();
      v4 = sub_47914();

      v10[0] = xmmword_4B4C0;
      v10[1] = xmmword_4B4D0;
      __asm { FMOV            V0.2D, #12.0 }

      v10[2] = _Q0;
      v10[3] = xmmword_4B470;
      v10[4] = xmmword_4B470;
      v10[5] = xmmword_4B4E0;
      v11 = 0x4062C00000000000;
      v12 = v2;
      v13 = v4;
      v14 = xmmword_4B4F0;
      v15 = 0x4034000000000000;

      sub_271CC(v10);
    }

    return v2;
  }

  else
  {

    return sub_48074();
  }
}

uint64_t sub_26BDC(uint64_t a1)
{
  v2 = sub_54A4(&qword_63180, &qword_4C220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26C44()
{
  result = qword_631D0;
  if (!qword_631D0)
  {
    sub_A36C(&qword_631A0, &qword_4C238);
    sub_26CFC();
    sub_EAF0(&qword_63220, &qword_63228, &qword_4C278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_631D0);
  }

  return result;
}

unint64_t sub_26CFC()
{
  result = qword_631D8;
  if (!qword_631D8)
  {
    sub_A36C(&qword_631E0, &qword_4C258);
    sub_26DB4();
    sub_EAF0(&qword_63210, &qword_63218, &qword_4C270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_631D8);
  }

  return result;
}

unint64_t sub_26DB4()
{
  result = qword_631E8;
  if (!qword_631E8)
  {
    sub_A36C(&qword_631F0, &qword_4C260);
    sub_26E40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_631E8);
  }

  return result;
}

unint64_t sub_26E40()
{
  result = qword_631F8;
  if (!qword_631F8)
  {
    sub_A36C(&qword_63200, &qword_4C268);
    sub_273B4(&qword_63208, type metadata accessor for PollOptionList.PollOptionListView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_631F8);
  }

  return result;
}

uint64_t sub_26F04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_47B84();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26F34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_47B84();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26FB4@<X0>(void *a1@<X8>)
{
  result = sub_47BA4();
  *a1 = v3;
  return result;
}

uint64_t sub_26FE0@<X0>(void *a1@<X8>)
{
  result = sub_47BA4();
  *a1 = v3;
  return result;
}

uint64_t sub_270C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_54A4(&qword_631A0, &qword_4C238);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27138(uint64_t a1)
{
  v2 = sub_54A4(&qword_631A0, &qword_4C238);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27288()
{
  result = qword_63230;
  if (!qword_63230)
  {
    sub_A36C(&qword_63238, &unk_4C3B0);
    sub_A36C(&qword_63180, &qword_4C220);
    sub_EAF0(&qword_63198, &qword_63180, &qword_4C220);
    swift_getOpaqueTypeConformance2();
    sub_273B4(&qword_63240, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63230);
  }

  return result;
}

uint64_t sub_273B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for PollsFeatureFlags(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PollsFeatureFlags(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_274E8()
{
  result = qword_63248;
  if (!qword_63248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63248);
  }

  return result;
}

Swift::Int sub_27544()
{
  sub_488D4();
  sub_488E4(0);
  return sub_48904();
}

Swift::Int sub_275B0()
{
  sub_488D4();
  sub_488E4(0);
  return sub_48904();
}

uint64_t sub_27618@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_47BF4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_54A4(&qword_62308, &qword_4AD90);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9, v11);
  v13 = (&v19 - v12);
  v14 = type metadata accessor for AdaptiveGlyphSwiftUITextView(0);
  sub_6128(v1 + *(v14 + 76), v13, &qword_62308, &qword_4AD90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_47884();
    return (*(*(v15 - 8) + 32))(a1, v13, v15);
  }

  else
  {
    v17 = *v13;
    sub_48634();
    v18 = sub_47E44();
    sub_477D4();

    sub_47BE4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v8, v3);
  }
}

id sub_279C8()
{
  v1 = v0;
  type metadata accessor for AdaptiveGlyphTextView();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = v1[5];
  v4 = &v2[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderText];
  v5 = *&v2[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderText + 8];
  *v4 = v1[4];
  *(v4 + 1) = v3;

  sub_28A4();
  v6 = v1[3];

  sub_52F8(v7);

  v8 = objc_opt_self();
  v9 = v2;
  v10 = [v8 clearColor];
  [v9 setBackgroundColor:v10];

  v11 = objc_opt_self();
  v12 = v9;
  v13 = [v11 preferredFontForTextStyle:UIFontTextStyleHeadline];
  [v12 setFont:v13];

  [v12 setScrollEnabled:0];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_54A4(&qword_63588, &qword_4C5F8);
  sub_47E34();
  *&v12[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_focusDelegate + 8] = &off_5ED18;
  swift_unknownObjectWeakAssign();

  v14 = v1[7];
  if (v14)
  {
    sub_47E34();
    sub_29A00(v12, v1, v22, &off_5ED18, v14);
  }

  [v12 setTextDropDelegate:v14];

  v16 = v1[16];
  v15 = v1[17];
  v17 = type metadata accessor for AdaptiveGlyphSwiftUITextView.TextViewController();
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtCV13MessagesPolls28AdaptiveGlyphSwiftUITextView18TextViewController_textView] = v12;
  v19 = &v18[OBJC_IVAR____TtCV13MessagesPolls28AdaptiveGlyphSwiftUITextView18TextViewController_viewWillDisappear];
  *v19 = v16;
  *(v19 + 1) = v15;
  v21.receiver = v18;
  v21.super_class = v17;

  return objc_msgSendSuper2(&v21, "initWithNibName:bundle:", 0, 0);
}

void sub_27C4C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_47884();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v4, v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v33 - v12;
  v14 = *(a1 + OBJC_IVAR____TtCV13MessagesPolls28AdaptiveGlyphSwiftUITextView18TextViewController_textView);
  sub_27618(&v33 - v12);
  (*(v5 + 104))(v10, enum case for ColorScheme.dark(_:), v4);
  LOBYTE(a1) = sub_47874();
  v15 = *(v5 + 8);
  v15(v10, v4);
  v15(v13, v4);
  if (a1)
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  [v14 setOverrideUserInterfaceStyle:v16];
  v17 = *(v2 + 24);

  sub_52F8(v18);

  v19 = *(v2 + 48);
  [v14 setEditable:v19];
  [v14 setSelectable:v19];
  sub_54A4(&qword_63588, &qword_4C5F8);
  sub_47E34();
  *&v14[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_focusDelegate + 8] = &off_5ED18;
  swift_unknownObjectWeakAssign();

  [v14 setFont:*(v17 + 16)];
  v34 = *v2;
  v35 = *(v2 + 8);
  sub_54A4(&qword_63550, &qword_4C5D8);
  sub_48164();
  v20 = v33;
  v21 = *(v2 + 208);
  v22 = (*(v2 + 200))(v19);
  v23 = sub_40428(v20, v22);

  v24 = v23;
  v25 = [v14 attributedText];
  if (!v25 || (v26 = v25, sub_61D4(0, &qword_63590, NSAttributedString_ptr), v27 = v24, v28 = sub_486C4(), v27, v26, (v28 & 1) == 0))
  {
    if ([v24 length] >= 1)
    {
      [v14 setAttributedText:v24];
    }
  }

  v29 = *(v2 + 40);
  v30 = &v14[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderText];
  v31 = *&v14[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderText + 8];
  *v30 = *(v2 + 32);
  *(v30 + 1) = v29;

  sub_28A4();
  if (*(v2 + 144) == 1 && ([v14 isFirstResponder] & 1) == 0)
  {
    [v14 becomeFirstResponder];
  }

  v32 = *(v2 + 56);
  if (v32)
  {
    sub_47E34();
    sub_29A00(v14, v2, v34, &off_5ED18, v32);
  }

  sub_28028(v14);
}

uint64_t sub_28028(char *a1)
{
  v3 = sub_48344();
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  __chkstk_darwin();
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_48364();
  v28 = *(v7 - 8);
  v29 = v7;
  v8 = *(v28 + 64);
  __chkstk_darwin();
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(type metadata accessor for AdaptiveGlyphSwiftUITextView(0) - 8);
  v11 = *(v27 + 64);
  __chkstk_darwin();
  aBlock = *v1;
  v32 = *(v1 + 8);
  sub_54A4(&qword_63550, &qword_4C5D8);
  sub_48164();
  v12 = *(*&v36 + 16);
  v13 = [v12 length];

  if (!v13)
  {
    a1 = *&a1[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderLabel];
  }

  [a1 sizeThatFits:{*(v1 + 168), 1.79769313e308}];
  v15 = v14;
  v17 = v16;
  v18 = *(v1 + 184);
  v19 = *(v1 + 192);
  aBlock = *(v1 + 176);
  *&v32 = v18;
  *(&v32 + 1) = v19;
  sub_54A4(&qword_63558, &unk_4C5E0);
  result = sub_48164();
  if (v17 != v36)
  {
    sub_61D4(0, &unk_63560, OS_dispatch_queue_ptr);
    v21 = sub_48644();
    sub_295C0(v1, &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v22 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v23 = swift_allocObject();
    sub_297BC(&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
    v24 = v23 + ((v11 + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v24 = v15;
    *(v24 + 8) = v17;
    v34 = sub_29820;
    v35 = v23;
    aBlock = _NSConcreteStackBlock;
    *&v32 = 1107296256;
    *(&v32 + 1) = sub_28704;
    v33 = &unk_5ED68;
    v25 = _Block_copy(&aBlock);

    sub_48354();
    aBlock = &_swiftEmptyArrayStorage;
    sub_298C8(&qword_63570, &type metadata accessor for DispatchWorkItemFlags);
    sub_54A4(&qword_63578, &qword_4C5F0);
    sub_29910();
    sub_48744();
    sub_48654();
    _Block_release(v25);

    (*(v30 + 8))(v6, v3);
    return (*(v28 + 8))(v10, v29);
  }

  return result;
}

uint64_t sub_2846C()
{
  sub_2AAA0(v0 + OBJC_IVAR____TtCV13MessagesPolls28AdaptiveGlyphSwiftUITextView11Coordinator_parent);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_284F8()
{
  result = type metadata accessor for AdaptiveGlyphSwiftUITextView(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_285A8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_285E0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = 1.79769313e308;
  }

  else
  {
    v7 = *&a1;
    if (*&a1 == 0.0)
    {
      return 0;
    }
  }

  v9 = *(a5 + OBJC_IVAR____TtCV13MessagesPolls28AdaptiveGlyphSwiftUITextView18TextViewController_textView);
  [v9 sizeThatFits:{v7, 1.79769313e308}];
  if (v10 == 0.0)
  {
    v11 = *&a1;
    if (a2)
    {
      v11 = 1.79769313e308;
    }

    [*&v9[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderLabel] sizeThatFits:v11];
  }

  if (a2)
  {
    return 0x7FEFFFFFFFFFFFFFLL;
  }

  else
  {
    return a1;
  }
}

uint64_t sub_286A8(void *a1)
{
  v2 = a1[22];
  v3 = a1[23];
  v4 = a1[24];
  sub_54A4(&qword_63558, &unk_4C5E0);
  return sub_48174();
}

uint64_t sub_28704(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_28758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(*(a1 - 8) + 64);
  __chkstk_darwin(a1 - 8, a2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_295C0(v3, v7);
  v8 = type metadata accessor for AdaptiveGlyphSwiftUITextView.Coordinator(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  result = sub_297BC(v7, v11 + OBJC_IVAR____TtCV13MessagesPolls28AdaptiveGlyphSwiftUITextView11Coordinator_parent);
  *a3 = v11;
  return result;
}

uint64_t sub_2882C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_298C8(&qword_635A0, type metadata accessor for AdaptiveGlyphSwiftUITextView);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_288C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_298C8(&qword_635A0, type metadata accessor for AdaptiveGlyphSwiftUITextView);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_28954()
{
  sub_298C8(&qword_635A0, type metadata accessor for AdaptiveGlyphSwiftUITextView);
  sub_47E14();
  __break(1u);
}

uint64_t sub_289AC(char *a1)
{
  v4 = *v1;
  v5 = *(v1 + 1);

  sub_54A4(&qword_63550, &qword_4C5D8);
  sub_48174();
  return sub_28028(a1);
}

uint64_t sub_28A28()
{
  v2 = *v0;
  v3 = *(v0 + 1);

  sub_54A4(&qword_63550, &qword_4C5D8);
  return sub_48174();
}

void sub_28A84(void *a1)
{
  type metadata accessor for AdaptiveGlyphTextView();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = *(v3 + OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderLabel);
  v6 = a1;
  v7 = v5;
  v8 = [v4 attributedText];
  if (!v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v8;
  v10 = [v8 length];

  [v7 setHidden:v10 > 0];
  v20 = [v4 markedTextRange];

  if (!v20)
  {
    v11 = v1;
    v12 = OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_pollOptionText;
    v13 = *&v4[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_pollOptionText];
    v14 = *&v4[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_transformer];

    v15 = [v4 attributedText];
    if (v15)
    {
      v16 = v15;
      v17 = sub_40CFC(v15);

      sub_37E64(v17);

      v18 = OBJC_IVAR____TtC13MessagesPollsP33_27DE0C8FC02EA24110766567662B2DB629AdaptiveGlyphTextViewObserver_fieldUpdater;
      swift_beginAccess();
      sub_6128(v11 + v18, v22, &qword_62108, &qword_4AA60);
      if (v23)
      {
        sub_5E70(v22, v21);
        sub_2A960(v22);
        sub_6190(v21, v21[3]);
        v19 = *&v4[v12];
        type metadata accessor for AdaptiveGlyphSwiftUITextView(0);

        sub_289AC(v4);

        sub_6020(v21);
      }

      else
      {

        sub_2A960(v22);
      }

      return;
    }

LABEL_13:
    __break(1u);
    return;
  }
}

unint64_t sub_28DD0(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_487E4();
  }

  else
  {
    v4 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = sub_487A4();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_61D4(0, &qword_635B0, UIMenuElement_ptr);
    v8 = sub_486C4();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

id sub_29004(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_29134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_54A4(&qword_63450, &unk_4C4C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 76);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_29204(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_54A4(&qword_63450, &unk_4C4C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 76);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_292B4()
{
  sub_29508(319, &qword_634C0, type metadata accessor for PollOptionText, &type metadata accessor for Binding);
  if (v0 <= 0x3F)
  {
    type metadata accessor for PollOptionTextTransformer();
    if (v1 <= 0x3F)
    {
      sub_29508(319, &qword_634C8, type metadata accessor for AdaptiveGlyphTextViewObserver, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_29468();
        if (v3 <= 0x3F)
        {
          sub_294B8();
          if (v4 <= 0x3F)
          {
            sub_29508(319, &qword_634E0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_29468()
{
  result = qword_634D0;
  if (!qword_634D0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_634D0);
  }

  return result;
}

void sub_294B8()
{
  if (!qword_634D8)
  {
    v0 = sub_481B4();
    if (!v1)
    {
      atomic_store(v0, &qword_634D8);
    }
  }
}

void sub_29508(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_295C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdaptiveGlyphSwiftUITextView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29624()
{
  v1 = (type metadata accessor for AdaptiveGlyphSwiftUITextView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 16);

  v9 = *(v0 + v3 + 24);

  v10 = *(v0 + v3 + 40);

  v11 = *(v0 + v3 + 72);

  v12 = *(v0 + v3 + 88);

  v13 = *(v0 + v3 + 104);

  v14 = *(v0 + v3 + 120);

  v15 = *(v0 + v3 + 136);

  v16 = *(v0 + v3 + 160);

  v17 = *(v0 + v3 + 176);

  v18 = *(v0 + v3 + 184);

  v19 = *(v0 + v3 + 208);

  v20 = v1[21];
  sub_54A4(&qword_62308, &qword_4AD90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_47884();
    (*(*(v21 - 8) + 8))(v5 + v20, v21);
  }

  else
  {
    v22 = *(v5 + v20);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_297BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdaptiveGlyphSwiftUITextView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29820()
{
  v1 = *(type metadata accessor for AdaptiveGlyphSwiftUITextView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_286A8((v0 + v2));
}

uint64_t sub_298B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_298C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29910()
{
  result = qword_63580;
  if (!qword_63580)
  {
    sub_A36C(&qword_63578, &qword_4C5F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63580);
  }

  return result;
}

uint64_t sub_2999C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_487E4();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0, a1);
}

uint64_t sub_29A00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[3] = type metadata accessor for AdaptiveGlyphSwiftUITextView(0);
  v20[4] = &off_5ED00;
  v10 = sub_29B6C(v20);
  sub_295C0(a2, v10);
  sub_5E70(v20, v19);
  v11 = OBJC_IVAR____TtC13MessagesPollsP33_27DE0C8FC02EA24110766567662B2DB629AdaptiveGlyphTextViewObserver_fieldUpdater;
  swift_beginAccess();
  sub_29BD0(v19, a5 + v11);
  swift_endAccess();
  [a1 setDelegate:a5];
  type metadata accessor for AdaptiveGlyphTextView();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    sub_5E70(v20, v19);
    v14 = OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_adaptiveGlyphDelegate;
    swift_beginAccess();
    v15 = a1;
    sub_29BD0(v19, v13 + v14);
    swift_endAccess();
    *(v13 + OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_focusDelegate + 8) = a4;
    swift_unknownObjectWeakAssign();

    v16 = (a5 + OBJC_IVAR____TtC13MessagesPollsP33_27DE0C8FC02EA24110766567662B2DB629AdaptiveGlyphTextViewObserver_focusDelegate);
    v17 = *(a5 + OBJC_IVAR____TtC13MessagesPollsP33_27DE0C8FC02EA24110766567662B2DB629AdaptiveGlyphTextViewObserver_focusDelegate);
    *v16 = a3;
    v16[1] = a4;
    swift_unknownObjectRelease();
    swift_unknownObjectRetain();
  }

  return sub_6020(v20);
}

uint64_t *sub_29B6C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_29BD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_54A4(&qword_62108, &qword_4AA60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29C40(void *a1, uint64_t a2, uint64_t a3)
{
  if (sub_48474() != 1)
  {
    goto LABEL_4;
  }

  v7 = [a1 markedTextRange];
  if (v7)
  {

LABEL_4:
    v8 = 1;
    return v8 & 1;
  }

  v25[0] = a2;
  v25[1] = a3;
  v10 = sub_47384();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_47374();
  sub_10330();
  v16 = 1;
  sub_48704();
  v18 = v17;
  (*(v11 + 8))(v15, v10);
  if (a2 != 9 || a3 != 0xE100000000000000)
  {
    v24 = sub_48874();
    v16 = v24;
    if (v18)
    {
      v23 = 0;
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  v19 = *(v3 + OBJC_IVAR____TtC13MessagesPollsP33_27DE0C8FC02EA24110766567662B2DB629AdaptiveGlyphTextViewObserver_focusDelegate);
  if (v19)
  {
    v21 = *(v19 + OBJC_IVAR____TtCV13MessagesPolls28AdaptiveGlyphSwiftUITextView11Coordinator_parent + 80);
    v20 = *(v19 + OBJC_IVAR____TtCV13MessagesPolls28AdaptiveGlyphSwiftUITextView11Coordinator_parent + 88);
    v22 = swift_unknownObjectRetain();
    v21(v22);
    swift_unknownObjectRelease();
  }

  v23 = v16;
  if ((v18 & 1) == 0)
  {
    v8 = 0;
  }

  else
  {
LABEL_14:
    v8 = v23 ^ 1;
  }

  return v8 & 1;
}

uint64_t sub_29E34(void *a1, unint64_t a2)
{
  type metadata accessor for AdaptiveGlyphTextView();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    return 0;
  }

  v49 = v4;
  v47 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_42:
    v5 = sub_487E4();
  }

  else
  {
    v5 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  }

  v48 = a1;
  v50 = a2;
  if (!v5)
  {
    goto LABEL_23;
  }

  v6 = 0;
  v51 = (a2 & 0xC000000000000001);
  v7 = a2 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v51)
    {
      v8 = sub_487A4();
    }

    else
    {
      if (v6 >= *(v7 + 16))
      {
        goto LABEL_41;
      }

      v8 = *(a2 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (!v11)
    {
      goto LABEL_6;
    }

    v12 = v11;
    v13 = v9;
    v14 = [v12 identifier];
    v15 = sub_48414();
    a1 = v16;
    if (v15 == sub_48414() && a1 == v17)
    {
      break;
    }

    v19 = sub_48874();

    a2 = v50;
    if (v19)
    {
      goto LABEL_21;
    }

LABEL_6:

    ++v6;
    if (v10 == v5)
    {
      goto LABEL_23;
    }
  }

LABEL_21:
  objc_opt_self();
  isa = swift_dynamicCastObjCClass();
  v22 = &qword_64000;
  if (isa)
  {
    goto LABEL_26;
  }

LABEL_23:
  sub_61D4(0, &qword_635B8, UIMenu_ptr);
  if (qword_61CD0 != -1)
  {
    swift_once();
  }

  v22 = &qword_64000;
  v23 = sub_47494();
  v25 = v24;
  v26 = sub_483D4();
  v27 = [objc_opt_self() systemImageNamed:{v26, 0xE000000000000000}];

  v55._countAndFlagsBits = v23;
  v55._object = v25;
  v57.value._countAndFlagsBits = 0;
  v57.value._object = 0;
  v53.value.super.isa = v27;
  v53.is_nil = 0;
  v28.value = 0;
  isa = sub_486A4(v55, v57, v53, v28, 0xFFFFFFFFFFFFFFFFLL, _swiftEmptyArrayStorage, v46).super.super.isa;
LABEL_26:
  v52 = isa;
  sub_54A4(&qword_635C0, &unk_4AA88);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_4B170;
  sub_61D4(0, &qword_635C8, UIAction_ptr);
  if (qword_61CD0 != -1)
  {
    swift_once();
  }

  v30 = v22[68];
  sub_47494();
  *(swift_allocObject() + 16) = v49;
  v31 = v48;
  *(v29 + 32) = sub_486D4();
  sub_47494();
  *(swift_allocObject() + 16) = v49;
  v32 = v31;
  *(v29 + 40) = sub_486D4();
  sub_47494();
  *(swift_allocObject() + 16) = v49;
  v33 = v32;
  *(v29 + 48) = sub_486D4();
  sub_47494();
  *(swift_allocObject() + 16) = v49;
  v34 = v33;
  *(v29 + 56) = sub_486D4();
  sub_61D4(0, &qword_635B0, UIMenuElement_ptr);
  v35 = sub_48534();

  v36 = [v52 menuByReplacingChildren:{v35, 0}];

  v37 = v50;

  v38 = sub_28DD0(v52, v50);
  v40 = v39;
  v41 = v36;
  if (v40)
  {
    sub_48524();
    if (*(&dword_10 + (v50 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v50 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v45 = *(&dword_10 + (v50 & 0xFFFFFFFFFFFFFF8));
      sub_48564();
    }

    sub_48584();
    v37 = v50;
LABEL_38:
    sub_61D4(0, &qword_635B8, UIMenu_ptr);
    v56._countAndFlagsBits = 0;
    v56._object = 0xE000000000000000;
    v58.value._countAndFlagsBits = 0;
    v58.value._object = 0;
    v54.value.super.isa = 0;
    v54.is_nil = 0;
    v44.value = 0;
    v20 = sub_486A4(v56, v58, v54, v44, 0xFFFFFFFFFFFFFFFFLL, v37, 0).super.super.isa;

    return v20;
  }

  else
  {
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v47 || (result & 1) == 0)
    {
      result = sub_2999C(v50);
      v37 = result;
    }

    if ((v38 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v38 < *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8)))
    {
      v43 = *(&stru_20.cmd + 8 * v38 + (v37 & 0xFFFFFFFFFFFFFF8));
      *(&stru_20.cmd + 8 * v38 + (v37 & 0xFFFFFFFFFFFFFF8)) = v41;

      goto LABEL_38;
    }

    __break(1u);
  }

  return result;
}

id sub_2A62C(void *a1)
{
  v30 = sub_477C4();
  v2 = *(v30 - 8);
  v3 = v2[8];
  __chkstk_darwin(v30 - 8, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_msgSend(a1 "dropSession")];
  swift_unknownObjectRelease();
  sub_61D4(0, &qword_635A8, UIDragItem_ptr);
  v8 = sub_48544();

  if (v8 >> 62)
  {
LABEL_16:
    v9 = sub_487E4();
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
    if (v9)
    {
LABEL_3:
      v10 = 0;
      v28 = v8 & 0xFFFFFFFFFFFFFF8;
      v29 = v8 & 0xC000000000000001;
      v11 = (v2 + 1);
      v2 = &selRef_adaptiveImageGlyphUpdatedWithNotification_;
      v12 = &selRef_adaptiveImageGlyphUpdatedWithNotification_;
      v26 = v9;
      v27 = v8;
      v13 = v30;
      do
      {
        if (v29)
        {
          v14 = sub_487A4();
          v15 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            v24 = [objc_allocWithZone(UITextDropProposal) initWithDropOperation:1];

            return v24;
          }
        }

        else
        {
          if (v10 >= *(v28 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          v14 = *(v8 + 8 * v10 + 32);
          v15 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_13;
          }
        }

        v31 = v10;
        v32 = v15;
        v33 = v14;
        v16 = [v14 itemProvider];
        sub_477A4();
        sub_47794();
        v17 = *v11;
        (*v11)(v6, v13);
        v18 = sub_483D4();

        v19 = v12;
        v20 = [v16 v12[75]];

        v8 = v33;
        if (!v20)
        {
          goto LABEL_14;
        }

        v21 = [v8 itemProvider];
        sub_477B4();
        sub_47794();
        v17(v6, v13);
        v22 = sub_483D4();

        v23 = [v21 v19[75]];

        if (v23)
        {
          goto LABEL_14;
        }

        v10 = v31 + 1;
        v8 = v27;
        v12 = v19;
      }

      while (v32 != v26);
    }
  }

  return [objc_allocWithZone(UITextDropProposal) initWithDropOperation:2];
}

uint64_t sub_2A960(uint64_t a1)
{
  v2 = sub_54A4(&qword_62108, &qword_4AA60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2A9C8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2AAA0(uint64_t a1)
{
  v2 = type metadata accessor for AdaptiveGlyphSwiftUITextView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2AB1C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_54A4(&qword_63630, &unk_4C638);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_54A4(&qword_63450, &unk_4C4C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_2AC6C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_54A4(&qword_63630, &unk_4C638);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_54A4(&qword_63450, &unk_4C4C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t _s18PollOptionCellViewVMa()
{
  result = qword_63690;
  if (!qword_63690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2ADF4()
{
  type metadata accessor for PollViewModel();
  if (v0 <= 0x3F)
  {
    sub_2AFE8(319, &qword_636A0, &type metadata for PollViewModel.TextItem, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      sub_2AF94(319, &unk_636A8, &type metadata accessor for LayoutDirection);
      if (v2 <= 0x3F)
      {
        sub_2AF94(319, &qword_634E0, &type metadata accessor for ColorScheme);
        if (v3 <= 0x3F)
        {
          sub_2AFE8(319, &qword_622A8, &type metadata for Bool, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_2AFE8(319, &qword_622B0, &type metadata for Double, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2AF94(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_47894();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2AFE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2B054@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_47BF4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_54A4(&qword_62500, &qword_4B000);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9, v11);
  v13 = (&v19 - v12);
  v14 = _s18PollOptionCellViewVMa();
  sub_6128(v1 + *(v14 + 24), v13, &qword_62500, &qword_4B000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_47A04();
    return (*(*(v15 - 8) + 32))(a1, v13, v15);
  }

  else
  {
    v17 = *v13;
    sub_48634();
    v18 = sub_47E44();
    sub_477D4();

    sub_47BE4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v8, v3);
  }
}

uint64_t sub_2B25C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_47BF4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_54A4(&qword_62308, &qword_4AD90);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9, v11);
  v13 = (&v19 - v12);
  v14 = _s18PollOptionCellViewVMa();
  sub_6128(v1 + *(v14 + 28), v13, &qword_62308, &qword_4AD90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_47884();
    return (*(*(v15 - 8) + 32))(a1, v13, v15);
  }

  else
  {
    v17 = *v13;
    sub_48634();
    v18 = sub_47E44();
    sub_477D4();

    sub_47BE4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v8, v3);
  }
}

uint64_t sub_2B464()
{
  v1 = sub_47BF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v0 + *(_s18PollOptionCellViewVMa() + 32);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_48634();
    v9 = sub_47E44();
    sub_477D4();

    sub_47BE4();
    swift_getAtKeyPath();
    sub_D60C(v8, 0);
    (*(v2 + 8))(v6, v1);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_2B5BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v141 = a1;
  v3 = sub_47DA4();
  v138 = *(v3 - 8);
  v139 = v3;
  v4 = *(v138 + 64);
  __chkstk_darwin(v3, v5);
  v137 = v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_47C54();
  v134 = *(v7 - 8);
  v135 = v7;
  v8 = *(v134 + 64);
  __chkstk_darwin(v7, v9);
  v133 = v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_47D84();
  v126 = *(v11 - 8);
  v127 = v11;
  v12 = *(v126 + 64);
  __chkstk_darwin(v11, v13);
  v125 = v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_54A4(&qword_636F0, &qword_4C698);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15, v17);
  v19 = v121 - v18;
  v20 = sub_54A4(&qword_636F8, &qword_4C6A0);
  v21 = *(v20 - 8);
  v123 = v20 - 8;
  v22 = *(v21 + 64);
  __chkstk_darwin(v20 - 8, v23);
  v122 = v121 - v24;
  v142 = sub_54A4(&qword_63700, &qword_4C6A8);
  v25 = *(*(v142 - 8) + 64);
  __chkstk_darwin(v142, v26);
  v124 = v121 - v27;
  v28 = sub_54A4(&qword_63708, &qword_4C6B0);
  v130 = *(v28 - 8);
  v131 = v28;
  v29 = *(v130 + 64);
  __chkstk_darwin(v28, v30);
  v129 = v121 - v31;
  v147 = sub_54A4(&qword_63710, &qword_4C6B8);
  v32 = *(*(v147 - 8) + 64);
  v34 = __chkstk_darwin(v147, v33);
  v140 = v121 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v34, v36);
  v132 = v121 - v38;
  v40 = __chkstk_darwin(v37, v39);
  v143 = v121 - v41;
  v43 = __chkstk_darwin(v40, v42);
  v144 = v121 - v44;
  __chkstk_darwin(v43, v45);
  v146 = v121 - v46;
  v47 = *v1;
  swift_getKeyPath();
  v48 = OBJC_IVAR____TtC13MessagesPolls13PollViewModel___observationRegistrar;
  *&v169 = v47;
  v145 = sub_31810(&qword_62300, type metadata accessor for PollViewModel);
  sub_475C4();

  swift_beginAccess();
  v49 = *(v47 + 200);
  v148[2] = v2;

  sub_1F030(sub_323BC, v148, v49);
  v121[3] = v50;

  *v19 = sub_47C14();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v51 = sub_54A4(&qword_63718, &qword_4C6E8);
  sub_2C640(v2, &v19[*(v51 + 44)]);
  v52 = &v19[*(sub_54A4(&qword_63720, &qword_4C6F0) + 36)];
  sub_2DBF0(v52);
  *&v52[*(sub_54A4(&qword_63728, &qword_4C6F8) + 36)] = 256;
  v53 = *(v2 + *(_s18PollOptionCellViewVMa() + 40) + 120);
  v54 = &v19[*(sub_54A4(&qword_63730, &unk_4C700) + 36)];
  v55 = *(sub_47A84() + 20);
  v56 = enum case for RoundedCornerStyle.continuous(_:);
  v57 = sub_47C24();
  (*(*(v57 - 8) + 104))(&v54[v55], v56, v57);
  *v54 = v53;
  *(v54 + 1) = v53;
  *&v54[*(sub_54A4(&qword_62390, &qword_4AE78) + 36)] = 256;
  v58 = v48;
  v59 = &v19[*(v15 + 36)];
  v59[32] = 0;
  *v59 = 0u;
  *(v59 + 1) = 0u;
  sub_478C4();
  sub_31390();
  v60 = v122;
  sub_47FA4();
  sub_60C8(v19, &qword_636F0, &qword_4C698);
  swift_getKeyPath();
  *&v169 = v47;
  sub_475C4();

  v61 = *(*(v47 + 200) + 16);
  sub_482D4();
  v62 = sub_482E4();

  v63 = *(v2 + 3);
  v64 = *(v2 + 7);
  v171 = *(v2 + 5);
  v172[0] = v64;
  *(v172 + 10) = *(v2 + 66);
  v169 = *(v2 + 1);
  v170 = v63;
  sub_54A4(&qword_624C8, &unk_4AF90);
  sub_48164();
  v173[0] = v166;
  v173[1] = v167;
  *v174 = v168[0];
  v65 = v60;
  *&v174[10] = *(v168 + 10);
  sub_E8EC(v173);
  v66 = v174[25];
  v67 = &v60[*(v123 + 44)];
  *v67 = v62;
  v67[8] = v66;
  swift_getKeyPath();
  *&v169 = v47;
  sub_475C4();

  v68 = 0;
  if ((*(v47 + 98) & 1) == 0)
  {
    v68 = sub_482D4();
  }

  swift_getKeyPath();
  *&v169 = v47;
  sub_475C4();

  swift_beginAccess();
  v69 = *(v47 + 72);
  v70 = v124;
  sub_315F4(v65, v124);
  v71 = (v70 + *(v142 + 36));
  *v71 = v68;
  v71[1] = v69;
  v72 = *(v2 + 3);
  v73 = *(v2 + 7);
  v171 = *(v2 + 5);
  v172[0] = v73;
  *(v172 + 10) = *(v2 + 66);
  v169 = *(v2 + 1);
  v170 = v72;

  sub_48164();
  v166 = v163;
  v167 = v164;
  v168[0] = v165[0];
  *(v168 + 10) = *(v165 + 10);
  sub_E8EC(&v166);
  v136 = v58;
  v128 = v47;
  v74 = v125;
  if (BYTE9(v168[1]))
  {
    sub_47D74();
  }

  else
  {
    sub_47D64();
  }

  v125 = sub_31664();
  v75 = v129;
  v76 = v142;
  sub_47FF4();
  (*(v126 + 8))(v74, v127);
  sub_60C8(v70, &qword_63700, &qword_4C6A8);
  v77 = *(v2 + 3);
  v78 = *(v2 + 7);
  v171 = *(v2 + 5);
  v172[0] = v78;
  *(v172 + 10) = *(v2 + 66);
  v169 = *(v2 + 1);
  v170 = v77;
  sub_48164();
  v79 = v158[4];

  sub_E8EC(v158);
  v80 = [*(v79 + 16) string];
  v81 = sub_48414();
  v83 = v82;

  *&v161[0] = v81;
  *(&v161[0] + 1) = v83;
  v84 = *(v2 + 3);
  v85 = *(v2 + 7);
  v171 = *(v2 + 5);
  v172[0] = v85;
  *(v172 + 10) = *(v2 + 66);
  v169 = *(v2 + 1);
  v170 = v84;
  sub_48164();
  v159[0] = v163;
  v159[1] = v164;
  v160[0] = v165[0];
  *(v160 + 10) = *(v165 + 10);
  sub_E8EC(v159);
  *&v169 = v76;
  *(&v169 + 1) = v125;
  swift_getOpaqueTypeConformance2();
  v86 = sub_10330();
  v87 = v131;
  v88 = v132;
  sub_47FB4();

  (*(v130 + 8))(v75, v87);
  *&v155 = sub_2E0A4();
  *(&v155 + 1) = v89;
  v90 = *(v2 + 3);
  v91 = *(v2 + 7);
  v171 = *(v2 + 5);
  v172[0] = v91;
  *(v172 + 10) = *(v2 + 66);
  v169 = *(v2 + 1);
  v170 = v90;
  sub_48164();
  v161[0] = v163;
  v161[1] = v164;
  v162[0] = v165[0];
  *(v162 + 10) = *(v165 + 10);
  sub_E8EC(v161);
  v142 = v86;
  sub_47A24();

  sub_60C8(v88, &qword_63710, &qword_4C6B8);
  v92 = *(v2 + 3);
  v93 = *(v2 + 7);
  v171 = *(v2 + 5);
  v172[0] = v93;
  *(v172 + 10) = *(v2 + 66);
  v169 = *(v2 + 1);
  v170 = v92;
  sub_48164();
  v163 = v155;
  v164 = v156;
  v165[0] = v157[0];
  *(v165 + 10) = *(v157 + 10);
  sub_E8EC(&v163);
  if ((BYTE9(v165[1]) & 1) != 0 || (sub_2E4FC() & 1) == 0)
  {
    *&v169 = _swiftEmptyArrayStorage;
    sub_31810(&qword_63798, &type metadata accessor for AccessibilityTraits);
    sub_54A4(&qword_637A0, &qword_4C778);
    sub_EAF0(&qword_637A8, &qword_637A0, &qword_4C778);
    v94 = v133;
    v96 = v135;
    sub_48744();
    v95 = v137;
  }

  else
  {
    v94 = v133;
    sub_47C34();
    v95 = v137;
    v96 = v135;
  }

  v97 = v143;
  sub_47A34();
  (*(v134 + 8))(v94, v96);
  sub_60C8(v97, &qword_63710, &qword_4C6B8);
  if (qword_61CD0 != -1)
  {
    swift_once();
  }

  *&v169 = sub_47494();
  *(&v169 + 1) = v98;
  sub_47F14();
  sub_47DB4();
  v99 = *(v2 + 3);
  v100 = *(v2 + 7);
  v171 = *(v2 + 5);
  v172[0] = v100;
  *(v172 + 10) = *(v2 + 66);
  v169 = *(v2 + 1);
  v170 = v99;
  sub_48164();
  v155 = v152;
  v156 = v153;
  v157[0] = v154[0];
  *(v157 + 10) = *(v154 + 10);
  sub_E8EC(&v155);
  v101 = 0;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  if ((BYTE9(v157[1]) & 1) == 0)
  {
    *&v169 = sub_2E814();
    *(&v169 + 1) = v105;
    v101 = sub_47F14();
    v102 = v106;
    v104 = v107;
    v103 = v108 & 1;
  }

  v109 = v144;
  sub_47A14();
  sub_31858(v101, v102, v103, v104);
  (*(v138 + 8))(v95, v139);
  sub_60C8(v109, &qword_63710, &qword_4C6B8);
  swift_getKeyPath();
  v110 = v128;
  *&v169 = v128;
  sub_475C4();

  if (*(v110 + 98) == 1 && (swift_getKeyPath(), *&v169 = v110, sub_475C4(), , *(v110 + 97) == 1))
  {
    sub_482A4();
    sub_47904();
    LODWORD(v145) = 0;
    v147 = v169;
    v143 = v171;
    v144 = v170;
    v111 = *(&v171 + 1);
    v151 = 1;
    v150 = BYTE8(v169);
    v149 = BYTE8(v170);
    v112 = 1;
    v113 = BYTE8(v169);
    v114 = BYTE8(v170);
    LOBYTE(v152) = 0;
  }

  else
  {
    v147 = 0;
    v143 = 0;
    v144 = 0;
    v111 = 0;
    v114 = 0;
    v113 = 0;
    v112 = 0;
    LODWORD(v145) = 1;
  }

  v115 = v146;
  v116 = v140;
  sub_6128(v146, v140, &qword_63710, &qword_4C6B8);
  v117 = v141;
  sub_6128(v116, v141, &qword_63710, &qword_4C6B8);
  v118 = v117 + *(sub_54A4(&qword_637B0, &qword_4C780) + 48);
  *v118 = 0;
  *(v118 + 8) = v112;
  *(v118 + 16) = v147;
  *(v118 + 24) = v113;
  v119 = v143;
  *(v118 + 32) = v144;
  *(v118 + 40) = v114;
  *(v118 + 48) = v119;
  *(v118 + 56) = v111;
  *(v118 + 64) = v145;
  sub_60C8(v115, &qword_63710, &qword_4C6B8);
  return sub_60C8(v116, &qword_63710, &qword_4C6B8);
}

uint64_t sub_2C640@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v63 = a2;
  v61 = sub_54A4(&qword_637E0, &qword_4C800);
  v55 = *(v61 - 8);
  v3 = *(v55 + 64);
  __chkstk_darwin(v61, v4);
  v54 = &v52 - v5;
  v57 = sub_54A4(&qword_637E8, &qword_4C808);
  v6 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57, v7);
  v9 = &v52 - v8;
  v60 = sub_54A4(&qword_637F0, &qword_4C810);
  v10 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60, v11);
  v53 = &v52 - v12;
  v13 = sub_47A04();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = __chkstk_darwin(v13, v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v20);
  v22 = &v52 - v21;
  v23 = sub_54A4(&qword_637F8, &qword_4C818);
  v24 = *(*(v23 - 8) + 64);
  v26 = __chkstk_darwin(v23 - 8, v25);
  v62 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26, v28);
  v30 = &v52 - v29;
  v31 = *a1;
  swift_getKeyPath();
  v32 = OBJC_IVAR____TtC13MessagesPolls13PollViewModel___observationRegistrar;
  v64 = v31;
  v33 = sub_31810(&qword_62300, type metadata accessor for PollViewModel);
  v58 = v32;
  v56 = v33;
  sub_475C4();

  if ((*(v31 + 98) & 1) != 0 || (sub_2CC80(), sub_47C94(), (sub_47C64() & 1) == 0))
  {
    v59 = 0x100000000;
  }

  else
  {
    v59 = 1;
  }

  sub_2B054(v22);
  (*(v14 + 104))(v19, enum case for LayoutDirection.leftToRight(_:), v13);
  v34 = sub_479F4();
  v35 = *(v14 + 8);
  v35(v19, v13);
  v35(v22, v13);
  if (v34)
  {
    v36 = v53;
    sub_2CEAC(v53);
    sub_6128(v36, v9, &qword_637F0, &qword_4C810);
    swift_storeEnumTagMultiPayload();
    sub_31914();
    v37 = sub_A36C(&qword_63808, &qword_4C820);
    v38 = sub_319DC();
    v64 = v37;
    v65 = v38;
    swift_getOpaqueTypeConformance2();
    sub_47CC4();
    sub_60C8(v36, &qword_637F0, &qword_4C810);
  }

  else
  {
    v39 = v54;
    sub_2CEAC(v54);
    v40 = v55;
    v41 = v61;
    (*(v55 + 16))(v9, v39, v61);
    swift_storeEnumTagMultiPayload();
    sub_31914();
    v42 = sub_A36C(&qword_63808, &qword_4C820);
    v43 = sub_319DC();
    v64 = v42;
    v65 = v43;
    swift_getOpaqueTypeConformance2();
    sub_47CC4();
    (*(v40 + 8))(v39, v41);
  }

  swift_getKeyPath();
  v64 = v31;
  sub_475C4();

  if ((*(v31 + 98) & 1) != 0 || (sub_2CC80(), sub_47C84(), (sub_47C64() & 1) == 0))
  {
    v45 = 0;
    v44 = 1;
  }

  else
  {
    v44 = 0;
    v45 = 1;
  }

  v46 = v62;
  sub_6128(v30, v62, &qword_637F8, &qword_4C818);
  v47 = v63;
  *v63 = 0;
  v48 = BYTE4(v59);
  *(v47 + 8) = v59;
  *(v47 + 9) = v48;
  v49 = sub_54A4(&qword_638C0, &qword_4C878);
  sub_6128(v46, v47 + *(v49 + 48), &qword_637F8, &qword_4C818);
  v50 = v47 + *(v49 + 64);
  *v50 = 0;
  v50[8] = v45;
  v50[9] = v44;
  sub_60C8(v30, &qword_637F8, &qword_4C818);
  return sub_60C8(v46, &qword_637F8, &qword_4C818);
}

uint64_t sub_2CC80()
{
  v1 = sub_47A04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = __chkstk_darwin(v1, v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v15 - v9;
  sub_2B054(&v15 - v9);
  (*(v2 + 104))(v7, enum case for LayoutDirection.leftToRight(_:), v1);
  v11 = sub_479F4();
  v12 = *(v2 + 8);
  v12(v7, v1);
  v12(v10, v1);
  v13 = *v0;
  swift_getKeyPath();
  if (v11)
  {
    v16 = v13;
    sub_31810(&qword_62300, type metadata accessor for PollViewModel);
    sub_475C4();

    if (*(v13 + 176) != 1)
    {
      return sub_47C84();
    }
  }

  else
  {
    v16 = v13;
    sub_31810(&qword_62300, type metadata accessor for PollViewModel);
    sub_475C4();

    if (*(v13 + 176) == 1)
    {
      return sub_47C84();
    }
  }

  return sub_47C94();
}

uint64_t sub_2CEAC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v134 = a1;
  v137 = _s18PollOptionCellViewVMa();
  v131 = *(v137 - 8);
  v3 = *(v131 + 64);
  __chkstk_darwin(v137, v4);
  v132 = v5;
  v133 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_54A4(&qword_63870, &qword_4C850);
  v6 = *(*(v116 - 8) + 64);
  __chkstk_darwin(v116, v7);
  v136 = (&v114 - v8);
  v117 = sub_54A4(&qword_63860, &qword_4C848);
  v9 = *(*(v117 - 8) + 64);
  __chkstk_darwin(v117, v10);
  v119 = &v114 - v11;
  v118 = sub_54A4(&qword_63850, &qword_4C840);
  v12 = *(*(v118 - 8) + 64);
  __chkstk_darwin(v118, v13);
  v121 = &v114 - v14;
  v120 = sub_54A4(&qword_63840, &qword_4C838);
  v15 = *(*(v120 - 8) + 64);
  __chkstk_darwin(v120, v16);
  v125 = &v114 - v17;
  v124 = sub_54A4(&qword_63830, &qword_4C830);
  v18 = *(*(v124 - 8) + 64);
  __chkstk_darwin(v124, v19);
  v127 = &v114 - v20;
  v126 = sub_54A4(&qword_63820, &qword_4C828);
  v21 = *(*(v126 - 8) + 64);
  __chkstk_darwin(v126, v22);
  v128 = &v114 - v23;
  v129 = sub_54A4(&qword_63808, &qword_4C820);
  v24 = *(*(v129 - 8) + 64);
  __chkstk_darwin(v129, v25);
  v130 = &v114 - v26;
  v27 = *v1;
  swift_getKeyPath();
  v28 = OBJC_IVAR____TtC13MessagesPolls13PollViewModel___observationRegistrar;
  *&v143 = v27;
  v29 = sub_31810(&qword_62300, type metadata accessor for PollViewModel);
  sub_475C4();

  swift_beginAccess();
  v30 = *(v27 + 200);
  v138[2] = v2;

  v31 = sub_1F030(sub_31EB4, v138, v30);
  v33 = v32;

  if (v33)
  {
    v34 = 0;
  }

  else
  {
    v34 = v31;
  }

  v115 = v34;
  v35 = *(v2 + 24);
  v36 = *(v2 + 56);
  v145 = *(v2 + 40);
  v146[0] = v36;
  *(v146 + 10) = *(v2 + 66);
  v143 = *(v2 + 8);
  v144 = v35;
  v135 = sub_54A4(&qword_624C8, &unk_4AF90);
  sub_48164();
  v37 = v161[0];
  v38 = v161[1];

  sub_E8EC(v161);
  swift_getKeyPath();
  *&v143 = v27;
  v122 = v29;
  v123 = v28;
  sub_475C4();

  if (v37 == *(v27 + 160) && v38 == *(v27 + 168))
  {
    v39 = 1;
  }

  else
  {
    v39 = sub_48874();
  }

  v40 = v137;
  v41 = *(v2 + *(v137 + 44));
  v42 = *(v2 + 24);
  v43 = *(v2 + 56);
  v145 = *(v2 + 40);
  v146[0] = v43;
  *(v146 + 10) = *(v2 + 66);
  v143 = *(v2 + 8);
  v144 = v42;
  sub_48164();
  v159[0] = v140;
  v159[1] = v141;
  v160[0] = v142[0];
  *(v160 + 10) = *(v142 + 10);
  sub_E8EC(v159);
  v44 = 24;
  if (BYTE9(v160[1]))
  {
    v44 = 56;
  }

  v45 = *(v2 + *(v40 + 40) + v44);
  v46 = *(v2 + 24);
  v47 = *(v2 + 56);
  v145 = *(v2 + 40);
  v146[0] = v47;
  *(v146 + 10) = *(v2 + 66);
  v143 = *(v2 + 8);
  v144 = v46;
  sub_48164();
  v157[0] = v140;
  v157[1] = v141;
  v158[0] = v142[0];
  *(v158 + 10) = *(v142 + 10);
  sub_E8EC(v157);
  v48 = 40;
  v49 = 72;
  if (BYTE9(v158[1]))
  {
    v48 = 72;
  }

  v50 = v41 - v45 - *(v2 + *(v40 + 40) + v48);
  v51 = sub_47C14();
  v52 = v136;
  *v136 = v51;
  v52[1] = 0;
  *(v52 + 16) = 1;
  v53 = sub_54A4(&qword_638C8, &qword_4C8A8);
  sub_2F120(v2, v115, v39 & 1, v52 + *(v53 + 44), v50);
  KeyPath = swift_getKeyPath();
  v55 = (v52 + *(v116 + 36));
  v56 = *(sub_54A4(&qword_63890, &qword_4C860) + 28);
  v57 = enum case for LayoutDirection.leftToRight(_:);
  v58 = sub_47A04();
  (*(*(v58 - 8) + 104))(v55 + v56, v57, v58);
  *v55 = KeyPath;
  v59 = *(v2 + 24);
  v60 = *(v2 + 56);
  v145 = *(v2 + 40);
  v146[0] = v60;
  *(v146 + 10) = *(v2 + 66);
  v143 = *(v2 + 8);
  v144 = v59;
  sub_48164();
  v155[0] = v140;
  v155[1] = v141;
  v156[0] = v142[0];
  *(v156 + 10) = *(v142 + 10);
  sub_E8EC(v155);
  if (BYTE9(v156[1]))
  {
    v61 = 64;
    v62 = 48;
    v63 = 56;
  }

  else
  {
    v49 = 40;
    v61 = 32;
    v63 = 24;
    v62 = 16;
  }

  v64 = v137;
  v65 = v2 + *(v137 + 40);
  v66 = *(v65 + v49);
  v67 = *(v65 + v61);
  v68 = *(v65 + v63);
  v69 = *(v65 + v62);
  v70 = sub_47E54();
  v71 = v119;
  sub_E940(v136, v119, &qword_63870, &qword_4C850);
  v72 = v71 + *(v117 + 36);
  *v72 = v70;
  *(v72 + 8) = v69;
  *(v72 + 16) = v68;
  *(v72 + 24) = v67;
  *(v72 + 32) = v66;
  *(v72 + 40) = 0;
  v73 = *(v2 + 24);
  v74 = *(v2 + 56);
  v145 = *(v2 + 40);
  v146[0] = v74;
  *(v146 + 10) = *(v2 + 66);
  v143 = *(v2 + 8);
  v144 = v73;
  sub_48164();
  v153[0] = v140;
  v153[1] = v141;
  v154[0] = v142[0];
  *(v154 + 10) = *(v142 + 10);
  sub_E8EC(v153);
  v75 = 88;
  if (BYTE9(v154[1]))
  {
    v75 = 80;
  }

  v76 = *(v2 + *(v64 + 40) + v75);
  sub_482A4();
  sub_47A94();
  v77 = v71;
  v78 = v121;
  sub_E940(v77, v121, &qword_63860, &qword_4C848);
  v79 = (v78 + *(v118 + 36));
  v80 = v167;
  v79[4] = v166;
  v79[5] = v80;
  v79[6] = v168;
  v81 = v163;
  *v79 = v162;
  v79[1] = v81;
  v82 = v165;
  v79[2] = v164;
  v79[3] = v82;
  v83 = *(v2 + 24);
  v84 = *(v2 + 56);
  v145 = *(v2 + 40);
  v146[0] = v84;
  *(v146 + 10) = *(v2 + 66);
  v143 = *(v2 + 8);
  v144 = v83;
  sub_48164();
  v151[0] = v140;
  v151[1] = v141;
  v152[0] = v142[0];
  *(v152 + 10) = *(v142 + 10);
  sub_E8EC(v151);
  if ((BYTE9(v152[1]) & 1) == 0)
  {
    v85 = *(v2 + 24);
    v86 = *(v2 + 56);
    v145 = *(v2 + 40);
    v146[0] = v86;
    *(v146 + 10) = *(v2 + 66);
    v143 = *(v2 + 8);
    v144 = v85;
    sub_48164();
    v87 = v141;

    sub_E8EC(&v140);
    sub_3021C(v87, *(&v87 + 1));
  }

  sub_2CC80();
  sub_47C04();
  sub_47904();
  v88 = v125;
  sub_E940(v78, v125, &qword_63850, &qword_4C840);
  v89 = (v88 + *(v120 + 36));
  v90 = v170;
  *v89 = v169;
  v89[1] = v90;
  v89[2] = v171;
  v91 = sub_3055C();
  swift_getKeyPath();
  *&v143 = v27;
  sub_475C4();

  v92 = *(v27 + 98);
  v93 = *(v27 + 152);
  if (qword_61CE8 != -1)
  {
    swift_once();
  }

  v142[4] = xmmword_64318;
  v142[5] = xmmword_64328;
  v142[6] = xmmword_64338;
  v142[0] = xmmword_642D8;
  v142[1] = xmmword_642E8;
  v142[2] = xmmword_642F8;
  v142[3] = xmmword_64308;
  v140 = xmmword_642B8;
  v141 = xmmword_642C8;
  v148 = xmmword_64318;
  v149 = xmmword_64328;
  v150 = xmmword_64338;
  v145 = xmmword_642D8;
  v146[0] = xmmword_642E8;
  v146[1] = xmmword_642F8;
  v147 = xmmword_64308;
  v143 = xmmword_642B8;
  v144 = xmmword_642C8;
  v94 = v88;
  v95 = v127;
  sub_E940(v94, v127, &qword_63840, &qword_4C838);
  v96 = v95 + *(v124 + 36);
  v97 = v149;
  *(v96 + 96) = v148;
  *(v96 + 112) = v97;
  *(v96 + 128) = v150;
  v98 = v146[0];
  *(v96 + 32) = v145;
  *(v96 + 48) = v98;
  v99 = v147;
  *(v96 + 64) = v146[1];
  *(v96 + 80) = v99;
  v100 = v144;
  *v96 = v143;
  *(v96 + 16) = v100;
  *(v96 + 144) = v91;
  *(v96 + 152) = v92;
  *(v96 + 153) = v93;
  v101 = *(v2 + *(v137 + 40) + 112);
  swift_getKeyPath();
  v139[18] = v27;
  sub_E9E8(&v140, v139);
  sub_475C4();

  if (*(v27 + 98))
  {
    v102 = 1.0;
  }

  else
  {
    v102 = 0.0;
  }

  v103 = sub_47E54();
  v104 = v95;
  v105 = v128;
  sub_E940(v104, v128, &qword_63830, &qword_4C830);
  v106 = v105 + *(v126 + 36);
  *v106 = v101;
  *(v106 + 8) = v102;
  *(v106 + 12) = v103;

  sub_47924();
  sub_48324();
  sub_47934();
  v107 = sub_47944();

  v108 = v105;
  v109 = v130;
  sub_E940(v108, v130, &qword_63820, &qword_4C828);
  *(v109 + *(v129 + 36)) = v107;
  v110 = v133;
  sub_31EE4(v2, v133, _s18PollOptionCellViewVMa);
  v111 = (*(v131 + 80) + 16) & ~*(v131 + 80);
  v112 = swift_allocObject();
  sub_32284(v110, v112 + v111, _s18PollOptionCellViewVMa);
  sub_319DC();
  sub_47F74();

  return sub_60C8(v109, &qword_63808, &qword_4C820);
}

void sub_2DBF0(char *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  swift_getKeyPath();
  *&v43 = v4;
  sub_31810(&qword_62300, type metadata accessor for PollViewModel);
  sub_475C4();

  if (*(v4 + 98) == 1 && (swift_getKeyPath(), *&v43 = v4, sub_475C4(), , *(v4 + 97) == 1) && (v5 = [objc_opt_self() sharedBehaviors]) != 0)
  {
    v41 = v5;
    swift_getKeyPath();
    *&v43 = v4;
    sub_475C4();

    swift_beginAccess();
    v6 = *(v4 + 200);
    if (v6[2])
    {
      v7 = v6[4];
      v8 = v6[5];
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    v20 = *(v1 + 3);
    v21 = *(v1 + 7);
    v45 = *(v1 + 5);
    v46[0] = v21;
    *(v46 + 10) = *(v1 + 66);
    v43 = *(v1 + 1);
    v44 = v20;
    sub_54A4(&qword_624C8, &unk_4AF90);
    sub_48164();
    v23 = v47[0];
    v22 = v47[1];

    sub_E8EC(v47);
    if (v8)
    {
      if (v7 != v23 || v8 != v22)
      {
        sub_48874();
      }
    }

    swift_getKeyPath();
    *&v43 = v4;
    sub_475C4();

    v24 = *(v4 + 200);
    v25 = *(v24 + 16);
    if (v25)
    {
      v26 = v24 + (v25 << 6);
      v28 = *(v26 - 32);
      v27 = *(v26 - 24);
    }

    else
    {
      v28 = 0;
      v27 = 0;
    }

    v29 = *(v2 + 3);
    v30 = *(v2 + 7);
    v45 = *(v2 + 5);
    v46[0] = v30;
    *(v46 + 10) = *(v2 + 66);
    v43 = *(v2 + 1);
    v44 = v29;
    sub_48164();
    v32 = v42[0];
    v31 = v42[1];

    sub_E8EC(v42);
    if (v27)
    {
      if (v28 == v32 && v27 == v31)
      {

        v33 = v41;
        [v41 pollsEntryViewCornerRadius];
      }

      else
      {
        sub_48874();

        v33 = v41;
        [v41 pollsEntryViewCornerRadius];
      }
    }

    else
    {

      v33 = v41;
      [v41 pollsEntryViewCornerRadius];
    }

    v34 = *(sub_47CF4() + 20);
    v35 = enum case for RoundedCornerStyle.continuous(_:);
    v36 = sub_47C24();
    (*(*(v36 - 8) + 104))(&a1[v34], v35, v36);
    sub_47CD4();
    v10 = v37;
    v12 = v38;
    v14 = v39;
    v16 = v40;
  }

  else
  {
    sub_47CD4();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = *(sub_47CF4() + 20);
    v18 = enum case for RoundedCornerStyle.continuous(_:);
    v19 = sub_47C24();
    (*(*(v19 - 8) + 104))(&a1[v17], v18, v19);
  }

  *a1 = v10;
  *(a1 + 1) = v12;
  *(a1 + 2) = v14;
  *(a1 + 3) = v16;
}