uint64_t sub_10003A5FC(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = sub_10004AD30();
  v2[24] = v3;
  v4 = *(v3 - 8);
  v2[25] = v4;
  v2[26] = *(v4 + 64);
  v2[27] = swift_task_alloc();
  sub_10004C770();
  v2[28] = sub_10004C760();
  v6 = sub_10004C750();
  v2[29] = v6;
  v2[30] = v5;

  return _swift_task_switch(sub_10003A6F8, v6, v5);
}

uint64_t sub_10003A6F8()
{
  v0[21] = *(v0[23] + 104);
  v1 = async function pointer to TTRPrivacyChecker.checkAndPromptNotificationAccess(needsPresentationOfWarmingSheet:)[1];
  v2 = swift_task_alloc();
  v0[31] = v2;
  v3 = sub_10004A780();
  *v2 = v0;
  v2[1] = sub_10003A7B4;

  return TTRPrivacyChecker.checkAndPromptNotificationAccess(needsPresentationOfWarmingSheet:)(2, v3, &protocol witness table for TTRIPrivacyChecker);
}

uint64_t sub_10003A7B4()
{
  v1 = *v0;
  v2 = *(*v0 + 248);
  v6 = *v0;

  v3 = *(v1 + 240);
  v4 = *(v1 + 232);

  return _swift_task_switch(sub_10003A8D4, v4, v3);
}

uint64_t sub_10003A8D4()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);

  sub_100038F00(v2, v0 + 64);
  if (*(v0 + 64))
  {
    v5 = *(v0 + 208);
    v4 = *(v0 + 216);
    v6 = *(v0 + 192);
    v7 = *(v0 + 200);
    v9 = *(v0 + 176);
    v8 = *(v0 + 184);
    v10 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v10;
    *(v0 + 48) = *(v0 + 96);
    v11 = swift_allocObject();
    swift_weakInit();
    (*(v7 + 16))(v4, v9, v6);
    v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    (*(v7 + 32))(v13 + v12, v4, v6);
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = type metadata accessor for ReminderDetailModuleDelegate();
    v16 = swift_allocObject();
    *(v0 + 112) = v16;
    *(v16 + 16) = sub_10004896C;
    *(v16 + 24) = v13;
    *(v16 + 32) = sub_100049034;
    *(v16 + 40) = v14;
    *(v0 + 136) = v15;
    v17 = OBJC_IVAR____TtC25RemindersSharingExtension30TTRISECreateRemindersPresenter_currentEventHandler;
    swift_beginAccess();

    sub_1000455EC(v0 + 112, v8 + v17);
    swift_endAccess();
    v18 = sub_1000032DC((v8 + 64), *(v8 + 88));
    v19 = *(v0 + 16);
    v20 = sub_10004565C(&qword_1000689D0, type metadata accessor for ReminderDetailModuleDelegate);
    v21 = *v18;

    sub_10002BCE0(v19, v16, v20, (v0 + 24));

    v22 = &unk_1000689D8;
    v23 = &unk_1000540F0;
    v24 = v0 + 16;
  }

  else
  {
    v22 = &qword_1000689C8;
    v23 = &unk_1000540E0;
    v24 = v0 + 64;
  }

  sub_10000A138(v24, v22, v23);
  v25 = *(v0 + 216);

  v26 = *(v0 + 8);

  return v26();
}

void sub_10003AB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = a5;
  v8 = sub_10004B230();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004BCC0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  v19 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v46 = v13;
    v47 = v9;
    v48 = a3;
    v49 = v8;
    sub_10004A9B0();
    v23 = v22;
    v24 = objc_opt_self();
    v45[0] = v23;
    v25 = sub_10004C680();
    v26 = swift_allocObject();
    v26[2] = v21;
    v26[3] = a1;
    v26[4] = a2;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_100049038;
    *(v27 + 24) = v26;
    v45[1] = v26;
    aBlock[4] = sub_10004901C;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10003415C;
    aBlock[3] = &unk_1000607D8;
    v28 = _Block_copy(aBlock);

    swift_unknownObjectRetain();

    [v24 withActionName:v25 block:v28];

    _Block_release(v28);
    LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

    if (v28)
    {
      __break(1u);
    }

    else
    {
      v29 = v21[15];
      sub_100003150(&qword_1000689E0, &qword_1000540F8);
      v30 = *(v15 + 72);
      v31 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_100052630;
      sub_10004BCB0();
      sub_10004BCA0();
      aBlock[0] = v32;
      sub_10004565C(&qword_100067908, &type metadata accessor for TTRRemindersListEditingSessionDisplayTargets);
      sub_100003150(&qword_1000689E8, &qword_100054100);
      sub_100003364(&qword_1000689F0, &qword_1000689E8, &qword_100054100);
      sub_10004CBC0();
      sub_100003150(&qword_100067FD8, &unk_100053660);
      v33 = sub_10004AD30();
      v34 = *(v33 - 8);
      v35 = *(v34 + 72);
      v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1000528D0;
      (*(v34 + 16))(v37 + v36, v50, v33);
      sub_10004A0B0();

      (*(v15 + 8))(v19, v14);
      v38 = *sub_1000032DC(v21 + 8, v21[11]);
      v40 = v46;
      v39 = v47;
      v41 = v49;
      (*(v47 + 16))(v46, v48, v49);
      v42 = (*(v39 + 88))(v40, v41);
      if (v42 == enum case for TTRIViewControllerDismissalState.dismissedOrPopped(_:))
      {

        return;
      }

      if (v42 == enum case for TTRIViewControllerDismissalState.requested(_:))
      {

        v43 = swift_unknownObjectWeakLoadStrong();
        if (v43)
        {
          v44 = v43;
          [v43 dismissViewControllerAnimated:1 completion:0];
        }

        else
        {
        }

        return;
      }
    }

    sub_10004CDC0();
    __break(1u);
  }
}

uint64_t sub_10003B114(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10004BE10();
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  __chkstk_darwin(v4, v6);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004AD30();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v13 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v1 + 56);
  v15 = *(v1 + 48);
  swift_getObjectType();
  result = sub_100049F60();
  if (result)
  {
    v33[1] = v17;
    sub_100038F00(a1, &v35);
    if (v35)
    {
      v38[0] = v35;
      v38[1] = v36;
      v38[2] = v37;
      v18 = swift_allocObject();
      v33[0] = v4;
      v19 = v18;
      swift_weakInit();
      (*(v10 + 16))(v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
      v20 = (*(v10 + 80) + 24) & ~*(v10 + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = v19;
      (*(v10 + 32))(v21 + v20, v13, v9);
      v22 = swift_allocObject();
      swift_weakInit();
      v23 = type metadata accessor for ReminderDetailModuleDelegate();
      v24 = swift_allocObject();
      v24[2] = sub_100047B94;
      v24[3] = v21;
      v24[4] = sub_100049034;
      v24[5] = v22;
      *(&v36 + 1) = v23;
      *&v35 = v24;
      v25 = OBJC_IVAR____TtC25RemindersSharingExtension30TTRISECreateRemindersPresenter_currentEventHandler;
      swift_beginAccess();

      sub_1000455EC(&v35, v2 + v25);
      swift_endAccess();
      v26 = sub_1000032DC((v2 + 64), *(v2 + 88));
      v27 = *&v38[0];
      swift_getObjectType();
      sub_10004A290();
      v28 = sub_10004565C(&qword_1000689D0, type metadata accessor for ReminderDetailModuleDelegate);
      v29 = *v26;

      sub_10002C444(v27, v8, v24, v28, v38 + 1);
      swift_unknownObjectRelease();

      (*(v34 + 8))(v8, v33[0]);
      v30 = &unk_1000689D8;
      v31 = &unk_1000540F0;
      v32 = v38;
    }

    else
    {
      swift_unknownObjectRelease();
      v30 = &qword_1000689C8;
      v31 = &unk_1000540E0;
      v32 = &v35;
    }

    return sub_10000A138(v32, v30, v31);
  }

  return result;
}

void sub_10003B4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = a5;
  v8 = sub_10004B230();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004BCC0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  v19 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v46 = v13;
    v47 = v9;
    v48 = a3;
    v49 = v8;
    sub_10004A9C0();
    v23 = v22;
    v24 = objc_opt_self();
    v45[0] = v23;
    v25 = sub_10004C680();
    v26 = swift_allocObject();
    v26[2] = v21;
    v26[3] = a1;
    v26[4] = a2;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_100049038;
    *(v27 + 24) = v26;
    v45[1] = v26;
    aBlock[4] = sub_10004901C;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10003415C;
    aBlock[3] = &unk_1000603C8;
    v28 = _Block_copy(aBlock);

    swift_unknownObjectRetain();

    [v24 withActionName:v25 block:v28];

    _Block_release(v28);
    LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

    if (v28)
    {
      __break(1u);
    }

    else
    {
      v29 = v21[15];
      sub_100003150(&qword_1000689E0, &qword_1000540F8);
      v30 = *(v15 + 72);
      v31 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_100052630;
      sub_10004BCB0();
      sub_10004BCA0();
      aBlock[0] = v32;
      sub_10004565C(&qword_100067908, &type metadata accessor for TTRRemindersListEditingSessionDisplayTargets);
      sub_100003150(&qword_1000689E8, &qword_100054100);
      sub_100003364(&qword_1000689F0, &qword_1000689E8, &qword_100054100);
      sub_10004CBC0();
      sub_100003150(&qword_100067FD8, &unk_100053660);
      v33 = sub_10004AD30();
      v34 = *(v33 - 8);
      v35 = *(v34 + 72);
      v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1000528D0;
      (*(v34 + 16))(v37 + v36, v50, v33);
      sub_10004A0B0();

      (*(v15 + 8))(v19, v14);
      v38 = *sub_1000032DC(v21 + 8, v21[11]);
      v40 = v46;
      v39 = v47;
      v41 = v49;
      (*(v47 + 16))(v46, v48, v49);
      v42 = (*(v39 + 88))(v40, v41);
      if (v42 == enum case for TTRIViewControllerDismissalState.dismissedOrPopped(_:))
      {

        return;
      }

      if (v42 == enum case for TTRIViewControllerDismissalState.requested(_:))
      {

        v43 = swift_unknownObjectWeakLoadStrong();
        if (v43)
        {
          v44 = v43;
          [v43 dismissViewControllerAnimated:1 completion:0];
        }

        else
        {
        }

        return;
      }
    }

    sub_10004CDC0();
    __break(1u);
  }
}

uint64_t sub_10003BA68(uint64_t a1)
{
  v2 = sub_10004B230();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000DAC4(result + 64, v13);

    v9 = *sub_1000032DC(v13, v13[3]);
    (*(v3 + 16))(v7, a1, v2);
    v10 = (*(v3 + 88))(v7, v2);
    if (v10 != enum case for TTRIViewControllerDismissalState.dismissedOrPopped(_:))
    {
      if (v10 != enum case for TTRIViewControllerDismissalState.requested(_:))
      {
        result = sub_10004CDC0();
        __break(1u);
        return result;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v12 = Strong;
        [Strong dismissViewControllerAnimated:1 completion:0];
      }
    }

    return sub_10000343C(v13);
  }

  return result;
}

uint64_t sub_10003BC04(uint64_t a1)
{
  v3 = sub_100003150(&qword_1000683A8, &qword_100053938);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v56 = &v52 - v6;
  v7 = sub_10004A720();
  v55 = *(v7 - 8);
  v8 = *(v55 + 64);
  __chkstk_darwin(v7, v9);
  v53 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003150(&qword_100068AB0, &qword_1000541F0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v15 = &v52 - v14;
  v54 = sub_10004B3D0();
  v16 = *(v54 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v54, v18);
  v20 = (&v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_10004AD30();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21, v24);
  v25 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100038F00(a1, &v57);
  if (v57)
  {
    v60[0] = v57;
    v60[1] = v58;
    v61 = v59;
    v26 = swift_allocObject();
    v52 = v7;
    v27 = v26;
    swift_weakInit();
    (*(v22 + 16))(&v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v21);
    v28 = (*(v22 + 80) + 24) & ~*(v22 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v27;
    (*(v22 + 32))(v29 + v28, v25, v21);
    v30 = type metadata accessor for HashtagEditorModuleDelegate();
    v31 = swift_allocObject();
    *(v31 + 16) = sub_100048534;
    *(v31 + 24) = v29;
    *(&v58 + 1) = v30;
    *&v57 = v31;
    v32 = OBJC_IVAR____TtC25RemindersSharingExtension30TTRISECreateRemindersPresenter_currentEventHandler;
    swift_beginAccess();

    sub_1000455EC(&v57, v1 + v32);
    swift_endAccess();
    v33 = sub_1000032DC(v1 + 8, v1[11]);
    sub_10004565C(&qword_100068AB8, type metadata accessor for HashtagEditorModuleDelegate);
    v34 = v1[14];
    v35 = *v33;
    sub_10004AC90();
    *v20 = 1;
    v36 = v54;
    (*(v16 + 104))(v20, enum case for TTRIHashtagEditorPresentationStyle.batchEdit(_:), v54);
    v37 = sub_10004ADB0();
    (*(*(v37 - 8) + 56))(v15, 1, 1, v37);
    v38 = sub_10004AC80();
    sub_10000A138(v15, &qword_100068AB0, &qword_1000541F0);
    (*(v16 + 8))(v20, v36);
    swift_unknownObjectRelease();
    v39 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v38];
    sub_1000032DC(v60 + 1, v61);
    v40 = v56;
    v41 = v52;
    sub_10004BD00();
    v42 = v55;
    if ((*(v55 + 48))(v40, 1, v41) == 1)
    {
      sub_10000A138(v40, &qword_1000683A8, &qword_100053938);
    }

    else
    {
      v46 = v53;
      (*(v42 + 32))(v53, v40, v41);
      sub_10004C950();
      (*(v42 + 8))(v46, v41);
    }

    v47 = [v39 presentationController];
    if (v47)
    {
      v48 = v47;
      [v47 setDelegate:v38];
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v50 = Strong;
      [Strong presentViewController:v39 animated:1 completion:0];
    }

    v43 = &unk_1000689D8;
    v44 = &unk_1000540F0;
    v45 = v60;
  }

  else
  {
    v43 = &unk_1000689C8;
    v44 = &unk_1000540E0;
    v45 = &v57;
  }

  return sub_10000A138(v45, v43, v44);
}

uint64_t sub_10003C228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004BCC0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(result + 120);

    sub_10004BCB0();
    sub_100003150(&qword_100067FD8, &unk_100053660);
    v12 = sub_10004AD30();
    v13 = *(v12 - 8);
    v14 = *(v13 + 72);
    v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1000528D0;
    (*(v13 + 16))(v16 + v15, a3, v12);
    sub_10004A0B0();

    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

uint64_t sub_10003C414(uint64_t a1)
{
  v29 = a1;
  v2 = sub_10004BD10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10004BCC0();
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v30, v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v1[15];
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_10004CC70(34);
  v14 = *v1;
  v15 = sub_10004CE80();
  v17 = v16;

  v31 = v15;
  v32 = v17;
  v34._object = 0x800000010004F7F0;
  v34._countAndFlagsBits = 0xD000000000000020;
  sub_10004C6D0(v34);
  v18 = sub_10004A150();

  if (v18)
  {
    v27[1] = swift_getObjectType();
    sub_10004B0D0();
    v28 = v7;
    sub_1000032DC(&v31, v33);
    sub_10004B2A0();
    sub_10000343C(&v31);
    sub_100003150(&qword_1000689E0, &qword_1000540F8);
    v29 = v2;
    v20 = *(v8 + 72);
    v21 = v3;
    v22 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v23 = swift_allocObject();
    *(v23 + 1) = xmmword_100052630;
    sub_10004BCB0();
    sub_10004BCA0();
    v31 = v23;
    sub_10004565C(&qword_100067908, &type metadata accessor for TTRRemindersListEditingSessionDisplayTargets);
    sub_100003150(&qword_1000689E8, &qword_100054100);
    sub_100003364(&qword_1000689F0, &qword_1000689E8, &qword_100054100);
    v24 = v30;
    sub_10004CBC0();
    sub_10004B0E0();
    (*(v8 + 8))(v12, v24);
    v31 = _swiftEmptyArrayStorage;
    sub_10004565C(&qword_100068A48, &type metadata accessor for TTRRemindersListEditingSessionFinishingOption);
    sub_100003150(&qword_100068A50, &unk_1000541B0);
    sub_100003364(&qword_100068A58, &qword_100068A50, &unk_1000541B0);
    v25 = v28;
    v26 = v29;
    sub_10004CBC0();
    sub_10004B0F0();
    swift_unknownObjectRelease();
    return (*(v21 + 8))(v25, v26);
  }

  return result;
}

void sub_10003C858(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 56);
  swift_getObjectType();
  swift_getObjectType();
  v3 = sub_10004B320();
  sub_100049F50();
}

void sub_10003C8DC(Swift::OpaquePointer a1, uint64_t a2)
{
  sub_100003150(&qword_100068AC0, &qword_100054208);
  sub_100009FF0(0, &qword_100068A68, UIMenuElement_ptr);
  sub_100003364(&qword_100068AC8, &qword_100068AC0, &qword_100054208);
  v3 = sub_10004C6F0();
  v4 = v3;
  if (v3 >> 62)
  {
    if (sub_10004CD50())
    {
      goto LABEL_3;
    }

LABEL_7:

    return;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_100009FF0(0, &qword_100067D60, UIMenu_ptr);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v12.value._countAndFlagsBits = 0;
  v12.value._object = 0;
  v10.value.super.isa = 0;
  v10.is_nil = 0;
  v5.value = 1;
  isa = sub_10004CA10(v11, v12, v10, v5, 0xFFFFFFFFFFFFFFFFLL, v4, a1).super.super.isa;
  swift_beginAccess();
  v7 = isa;
  sub_10004C700();
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v8 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_10004C730();
  }

  sub_10004C740();
  swift_endAccess();
}

uint64_t sub_10003CA8C(uint64_t a1)
{
  v2 = sub_10004AD30();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v71 = v6;
  v72 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004B8B0();
  v69 = *(v7 - 8);
  v70 = v7;
  v8 = *(v69 + 64);
  __chkstk_darwin(v7, v9);
  v77 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004B8C0();
  v78 = *(v11 - 8);
  v12 = *(v78 + 64);
  __chkstk_darwin(v11, v13);
  v76 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10004BA40();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  v20 = (&v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100003150(&qword_100067FD8, &unk_100053660);
  v21 = *(v3 + 72);
  v22 = *(v3 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1000528D0;
  v73 = a1;
  v74 = v3;
  v24 = *(v3 + 16);
  v75 = v2;
  v25 = v79;
  v68 = v24;
  v24((v23 + ((v22 + 32) & ~v22)), a1, v2);
  v26 = *(v25 + 120);
  sub_10004A190();
  v27 = (*(v16 + 88))(v20, v15);
  if (v27 == enum case for TTRRemindersListPresenterCapabilityCore.BatchAddHashtagParams.allowed(_:))
  {
    v65 = ~v22;
    v66 = v11;
    (*(v16 + 96))(v20, v15);
    v28 = *v20;
    v67 = v20[1];
    sub_100003150(&qword_100068A88, &qword_1000541E0);
    v29 = sub_10004CD60();
    v30 = v29;
    v31 = 0;
    v32 = 1 << *(v28 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & *(v28 + 64);
    v35 = (v32 + 63) >> 6;
    v36 = v29 + 64;
    if (v34)
    {
      while (1)
      {
        v37 = __clz(__rbit64(v34));
        v34 &= v34 - 1;
LABEL_11:
        v40 = v37 | (v31 << 6);
        v41 = (*(v28 + 48) + 16 * v40);
        v43 = *v41;
        v42 = v41[1];
        v44 = *(*(*(v28 + 56) + 8 * v40) + 16);
        *(v36 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
        v45 = (v30[6] + 16 * v40);
        *v45 = v43;
        v45[1] = v42;
        *(v30[7] + 8 * v40) = v44;
        v46 = v30[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          break;
        }

        v30[2] = v48;

        if (!v34)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v38 = v31;
      while (1)
      {
        v31 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v31 >= v35)
        {

          v50 = [v67 hashtags];
          sub_100009FF0(0, &qword_100068A90, REMHashtag_ptr);
          sub_100048498(&qword_100068A98, &qword_100068A90, REMHashtag_ptr);
          v51 = sub_10004C810();

          v80 = v51;
          sub_100003150(&qword_100068AA0, &qword_1000541E8);
          sub_100003364(&qword_100068AA8, &qword_100068AA0, &qword_1000541E8);
          LOBYTE(v50) = sub_10004C830();

          v52 = v50 & 1;
          v53 = v77;
          *v77 = v52;
          (*(v69 + 104))(v53, enum case for TTRIRemindersListContextualMenuAssembly.HashtagsContextMenuConfiguration.CustomTagsOption.showAsAddOrEdit(_:), v70);
          v70 = swift_allocObject();
          swift_weakInit();
          v54 = swift_allocObject();
          swift_weakInit();
          v55 = v72;
          v56 = v75;
          v68(v72, v73, v75);
          v57 = (v22 + 24) & v65;
          v58 = swift_allocObject();
          *(v58 + 16) = v54;
          (*(v74 + 32))(v58 + v57, v55, v56);
          v59 = swift_allocObject();
          swift_weakInit();
          v60 = swift_allocObject();
          *(v60 + 16) = v59;
          *(v60 + 24) = v23;
          v61 = swift_allocObject();
          swift_weakInit();
          v62 = swift_allocObject();
          *(v62 + 16) = v61;
          *(v62 + 24) = v23;

          v63 = v76;
          sub_10004B8A0();
          v64 = sub_10004B960();

          (*(v78 + 8))(v63, v66);
          return v64;
        }

        v39 = *(v28 + 64 + 8 * v31);
        ++v38;
        if (v39)
        {
          v37 = __clz(__rbit64(v39));
          v34 = (v39 - 1) & v39;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else if (v27 == enum case for TTRRemindersListPresenterCapabilityCore.BatchAddHashtagParams.disallowed(_:))
  {

    return 0;
  }

  result = sub_10004CDC0();
  __break(1u);
  return result;
}

uint64_t sub_10003D1F0(uint64_t a1)
{
  v28 = sub_10004AD30();
  v3 = *(v28 - 8);
  v4 = v3;
  v33 = *(v3 + 64);
  __chkstk_darwin(v28, v5);
  v31 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004B950();
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  __chkstk_darwin(v7, v9);
  v32 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 120);
  sub_100003150(&qword_100067FD8, &unk_100053660);
  v12 = *(v3 + 72);
  v29 = v3;
  v13 = *(v3 + 80);
  v14 = (v13 + 32) & ~v13;
  v15 = swift_allocObject();
  v27 = xmmword_1000528D0;
  *(v15 + 1) = xmmword_1000528D0;
  v16 = *(v4 + 16);
  v17 = v28;
  v16(&v15[v14], a1, v28);
  v18._rawValue = v15;
  v30 = sub_100049FF0(v18);

  v19 = swift_allocObject();
  *(v19 + 1) = v27;
  v16(&v19[v14], a1, v17);
  v20._rawValue = v19;
  sub_10004A270(v20);

  v21 = swift_allocObject();
  swift_weakInit();
  v22 = v31;
  v16(v31, a1, v17);
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  (*(v29 + 32))(v23 + ((v13 + 24) & ~v13), v22, v17);
  v24 = v32;
  sub_10004B940();
  v25 = sub_10004B970();
  (*(v34 + 8))(v24, v35);
  return v25;
}

uint64_t sub_10003D4FC(uint64_t a1)
{
  v67 = a1;
  v2 = sub_10004AD30();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v59 = v6;
  v61 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004B870();
  v65 = *(v7 - 8);
  v66 = v7;
  v8 = *(v65 + 64);
  __chkstk_darwin(v7, v9);
  v62 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_10004ABD0();
  v56 = *(v57 - 8);
  v11 = *(v56 + 64);
  __chkstk_darwin(v57, v12);
  v55 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003150(&qword_100068A70, &qword_1000541C8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8, v16);
  v18 = &v54 - v17;
  v19 = sub_10004BA30();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19, v22);
  v24 = (&v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = v1;
  v25 = v1[15];
  sub_100003150(&qword_100067FD8, &unk_100053660);
  v26 = *(v3 + 72);
  v27 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v68 = *(v3 + 80);
  v28 = swift_allocObject();
  v58 = xmmword_1000528D0;
  *(v28 + 16) = xmmword_1000528D0;
  v63 = v3;
  v64 = v2;
  v29 = v67;
  v30 = v2;
  v31 = *(v3 + 16);
  v31(v28 + v27, v67, v30);
  sub_10004A130();

  v32 = (*(v20 + 88))(v24, v19);
  if (v32 == enum case for TTRRemindersListPresenterCapabilityCore.BatchAssignParams.allowed(_:))
  {
    (*(v20 + 96))(v24, v19);
    v33 = v24[1];
    v54 = *v24;

    sub_100049FE0();
    v34 = sub_10004A510();
    v35 = *(v34 - 8);
    if ((*(v35 + 48))(v18, 1, v34) == 1)
    {
      sub_10000A138(v18, &qword_100068A70, &qword_1000541C8);
      v36 = 0;
    }

    else
    {
      v38 = v55;
      sub_10004A500();
      (*(v35 + 8))(v18, v34);
      v36 = sub_10004ABC0();
      (*(v56 + 8))(v38, v57);
    }

    sub_100003150(&qword_100068A78, &qword_1000541D0);
    inited = swift_initStackObject();
    *(inited + 16) = v58;
    *(inited + 32) = v36;
    *(inited + 40) = 1;
    v60 = v36;
    sub_100012978(inited);
    swift_setDeallocating();
    sub_10000A138(inited + 32, &qword_100068A80, &qword_1000541D8);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v41 = [Strong viewIfLoaded];
      if (v41)
      {
        v42 = v41;
        sub_10004CA20();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v43 = ~v68;
    v44 = swift_unknownObjectWeakLoadStrong();
    if (v44)
    {
      v45 = [v44 viewIfLoaded];
      if (v45)
      {
        v46 = v45;
        [v45 effectiveUserInterfaceLayoutDirection];
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    swift_allocObject();
    swift_weakInit();
    v47 = swift_allocObject();
    swift_weakInit();
    v48 = v61;
    v49 = v64;
    v31(v61, v29, v64);
    v50 = (v68 + 24) & v43;
    v51 = swift_allocObject();
    *(v51 + 16) = v47;
    (*(v63 + 32))(v51 + v50, v48, v49);
    v52 = v62;
    sub_10004B860();
    v53 = sub_10004B900();

    (*(v65 + 8))(v52, v66);
    return v53;
  }

  else if (v32 == enum case for TTRRemindersListPresenterCapabilityCore.BatchAssignParams.disallowed(_:))
  {
    return 0;
  }

  else
  {
    result = sub_10004CDC0();
    __break(1u);
  }

  return result;
}

uint64_t sub_10003DC08(uint64_t a1)
{
  v38 = a1;
  v2 = sub_10004AD30();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v30[1] = v6;
  v33 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10004B850();
  v34 = *(v36 - 8);
  v7 = *(v34 + 64);
  __chkstk_darwin(v36, v8);
  v32 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004BA20();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v1;
  v16 = *(v1 + 120);
  sub_100003150(&qword_100067FD8, &unk_100053660);
  v17 = *(v3 + 72);
  v18 = *(v3 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000528D0;
  v35 = v3;
  v20 = *(v3 + 16);
  v37 = v2;
  v20(v19 + ((v18 + 32) & ~v18), v38, v2);
  sub_10004A0F0();

  v21 = (*(v11 + 88))(v15, v10);
  if (v21 == enum case for TTRRemindersListPresenterCapabilityCore.BatchFlagParams.allowed(_:))
  {
    (*(v11 + 96))(v15, v10);
    v22 = *v15;
    v23 = swift_allocObject();
    swift_weakInit();
    v24 = v33;
    v25 = v37;
    v20(v33, v38, v37);
    v26 = swift_allocObject();
    *(v26 + 16) = v23;
    (*(v35 + 32))(v26 + ((v18 + 24) & ~v18), v24, v25);
    v27 = v32;
    sub_10004B840();
    v28 = sub_10004B8F0();
    (*(v34 + 8))(v27, v36);
    return v28;
  }

  else if (v21 == enum case for TTRRemindersListPresenterCapabilityCore.BatchFlagParams.disallowed(_:))
  {
    return 0;
  }

  else
  {
    result = sub_10004CDC0();
    __break(1u);
  }

  return result;
}

uint64_t sub_10003DFB4(uint64_t a1)
{
  v38 = a1;
  v2 = sub_10004AD30();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v30[1] = v6;
  v33 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10004B8E0();
  v34 = *(v36 - 8);
  v7 = *(v34 + 64);
  __chkstk_darwin(v36, v8);
  v31 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004BA50();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = (v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = v1;
  v16 = *(v1 + 120);
  sub_100003150(&qword_100067FD8, &unk_100053660);
  v17 = *(v3 + 72);
  v18 = *(v3 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000528D0;
  v35 = v3;
  v20 = *(v3 + 16);
  v37 = v2;
  v20(v19 + ((v18 + 32) & ~v18), v38, v2);
  sub_10004A1D0();

  v21 = (*(v11 + 88))(v15, v10);
  if (v21 == enum case for TTRRemindersListPresenterCapabilityCore.BatchSetPriorityLevelParams.allowed(_:))
  {
    (*(v11 + 96))(v15, v10);
    v22 = *v15;
    v23 = swift_allocObject();
    swift_weakInit();
    v24 = v33;
    v25 = v37;
    v20(v33, v38, v37);
    v26 = swift_allocObject();
    *(v26 + 16) = v23;
    (*(v35 + 32))(v26 + ((v18 + 24) & ~v18), v24, v25);
    v27 = v31;
    sub_10004B8D0();
    v28 = sub_10004B930();
    (*(v34 + 8))(v27, v36);
    return v28;
  }

  else if (v21 == enum case for TTRRemindersListPresenterCapabilityCore.BatchSetPriorityLevelParams.disallowed(_:))
  {
    return 0;
  }

  else
  {
    result = sub_10004CDC0();
    __break(1u);
  }

  return result;
}

uint64_t sub_10003E35C(uint64_t a1)
{
  v3 = sub_10004AD30();
  v4 = *(v3 - 8);
  v5 = v4;
  v6 = *(v4 + 64);
  __chkstk_darwin(v3, v7);
  v19 = v1;
  v20 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 120);
  sub_100003150(&qword_100067FD8, &unk_100053660);
  v9 = *(v4 + 72);
  v10 = *(v4 + 80);
  v11 = swift_allocObject();
  *(v11 + 1) = xmmword_1000528D0;
  v12 = *(v5 + 16);
  v12(&v11[(v10 + 32) & ~v10], a1, v3);
  v13._rawValue = v11;
  LOBYTE(v8) = sub_10004A080(v13);

  result = 0;
  if (v8)
  {
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = v20;
    v12(v20, a1, v3);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    (*(v5 + 32))(v17 + ((v10 + 24) & ~v10), v16, v3);

    v18 = sub_10004B910();

    return v18;
  }

  return result;
}

UIMenu sub_10003E578(uint64_t a1, uint64_t a2)
{
  sub_100009FF0(0, &qword_100067D60, UIMenu_ptr);
  swift_beginAccess();
  v3 = *(a2 + 16);

  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v10.value._countAndFlagsBits = 0;
  v10.value._object = 0;
  v8.value.super.isa = 0;
  v8.is_nil = 0;
  v4.value = 0;
  return sub_10004CA10(v9, v10, v8, v4, 0xFFFFFFFFFFFFFFFFLL, v6, v7);
}

uint64_t sub_10003E600(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 120);
  sub_100003150(&qword_100067FD8, &unk_100053660);
  v8 = sub_10004AD30();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000528D0;
  (*(v9 + 16))(v12 + v11, a4, v8);
  sub_10004A120();
  v14 = v13;

  v15 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *a1;
  result = sub_1000469A8(v14, a2, isUniquelyReferenced_nonNull_native);
  *a1 = v18;
  return result;
}

uint64_t sub_10003E748(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(sub_10004AF20() - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

uint64_t sub_10003E82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v5 = sub_10004AD30();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v9 = sub_100003150(&unk_100067618, &qword_100052940);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = &v36 - v12;
  v14 = sub_10004AF20();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    (*(v15 + 16))(v19, a1, v14);
    v22 = (*(v15 + 88))(v19, v14);
    if (v22 == enum case for TTRRemindersListPostponeType.none(_:) || v22 == enum case for TTRRemindersListPostponeType.today(_:) || v22 == enum case for TTRRemindersListPostponeType.tomorrow(_:) || v22 == enum case for TTRRemindersListPostponeType.weekend(_:) || v22 == enum case for TTRRemindersListPostponeType.startOfWeekday(_:))
    {
      v27 = *(v21 + 120);
      sub_100003150(&qword_100067FD8, &unk_100053660);
      v28 = *(v6 + 72);
      v29 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1000528D0;
      (*(v6 + 16))(v30 + v29, v36, v5);

      sub_10004A0A0();
    }

    else
    {
      if (v22 != enum case for TTRRemindersListPostponeType.custom(_:))
      {
        result = sub_10004CDC0();
        __break(1u);
        return result;
      }

      if (qword_100066F40 != -1)
      {
        swift_once();
      }

      v31 = sub_10004C1B0();
      sub_10000D49C(v31, qword_1000685E0);
      sub_100011BA4(_swiftEmptyArrayStorage);
      sub_100014D1C();

      v32 = sub_10004C790();
      (*(*(v32 - 8) + 56))(v13, 1, 1, v32);
      (*(v6 + 16))(&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v5);
      sub_10004C770();

      v33 = sub_10004C760();
      v34 = (*(v6 + 80) + 40) & ~*(v6 + 80);
      v35 = swift_allocObject();
      *(v35 + 2) = v33;
      *(v35 + 3) = &protocol witness table for MainActor;
      *(v35 + 4) = v21;
      (*(v6 + 32))(&v35[v34], &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
      sub_100034498(0, 0, v13, &unk_100054218, v35);
    }
  }

  return result;
}

uint64_t sub_10003EC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_10004C770();
  v5[3] = sub_10004C760();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_10003ED58;

  return sub_10003A5FC(a5);
}

uint64_t sub_10003ED58()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_10004C750();

  return _swift_task_switch(sub_10003EE94, v5, v4);
}

uint64_t sub_10003EE94()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10003EEF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return a3(_swiftEmptyArrayStorage);
  }

  v5 = *(Strong + 120);

  sub_10004A200();
}

uint64_t sub_10003EFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + 120);

    sub_100003150(&qword_100067FD8, &unk_100053660);
    v6 = sub_10004AD30();
    v7 = *(v6 - 8);
    v8 = *(v7 + 72);
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000528D0;
    (*(v7 + 16))(v10 + v9, a3, v6);
    sub_10004A110();
  }

  return result;
}

uint64_t sub_10003F0F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003150(&unk_100067618, &qword_100052940);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v14 - v7;
  v9 = sub_10004C790();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_10004C770();

  v11 = sub_10004C760();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v10;
  v12[5] = a1;
  v12[6] = a2;

  sub_100034498(0, 0, v8, &unk_100054200, v12);
}

uint64_t sub_10003F294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  sub_10004C770();
  v6[8] = sub_10004C760();
  v8 = sub_10004C750();
  v6[9] = v8;
  v6[10] = v7;

  return _swift_task_switch(sub_10003F330, v8, v7);
}

uint64_t sub_10003F330()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(v0 + 88) = *(Strong + 48);
    v3 = *(Strong + 56);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v5 = async function pointer to dispatch thunk of TTRSECreateRemindersInteractorType.fetchAllHashtagLabelsAsync()[1];
    v6 = swift_task_alloc();
    *(v0 + 96) = v6;
    *v6 = v0;
    v6[1] = sub_10003F47C;

    return dispatch thunk of TTRSECreateRemindersInteractorType.fetchAllHashtagLabelsAsync()(ObjectType, v3);
  }

  else
  {
    v7 = *(v0 + 64);

    v8 = *(v0 + 56);
    (*(v0 + 48))(_swiftEmptyArrayStorage);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_10003F47C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v8 = *v1;
  *(*v1 + 104) = a1;

  swift_unknownObjectRelease();
  v5 = *(v2 + 80);
  v6 = *(v2 + 72);

  return _swift_task_switch(sub_10003F5C8, v6, v5);
}

uint64_t sub_10003F5C8()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 56);
  (*(v0 + 48))(*(v0 + 104));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10003F644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_100066F40 != -1)
    {
      swift_once();
    }

    v5 = sub_10004C1B0();
    sub_10000D49C(v5, qword_1000685E0);
    sub_100011BA4(_swiftEmptyArrayStorage);
    sub_100014D1C();

    sub_10003BC04(a3);
  }

  return result;
}

void sub_10003F728(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    switch(a3)
    {
      case 2:
        goto LABEL_6;
      case 1:
        v10 = *(Strong + 120);

        v15._countAndFlagsBits = a1;
        v15._object = a2;
        v11._rawValue = a5;
        sub_10004A1A0(v15, v11);

LABEL_7:

        return;
      case 0:
LABEL_6:
        v12 = *(Strong + 120);

        v16._countAndFlagsBits = a1;
        v16._object = a2;
        v13._rawValue = a5;
        sub_10004A1B0(v16, v13);

        goto LABEL_7;
    }

    if (qword_100066F40 != -1)
    {
      swift_once();
    }

    v14 = sub_10004C1B0();
    sub_10000D49C(v14, qword_1000685E0);
    sub_100011BA4(_swiftEmptyArrayStorage);
    sub_100011BA4(_swiftEmptyArrayStorage);
    sub_100014FC0("unknown menu item state", 23, 2);
    __break(1u);
  }
}

uint64_t sub_10003F88C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 120);

    sub_10004A1C0();
  }

  return result;
}

uint64_t sub_10003F910(char a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 120);
    sub_100003150(&qword_100067FD8, &unk_100053660);
    v7 = sub_10004AD30();
    v8 = *(v7 - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v11 = swift_allocObject();
    *(v11 + 1) = xmmword_1000528D0;
    (*(v8 + 16))(&v11[v10], a3, v7);

    v12._rawValue = v11;
    if (a1)
    {
      sub_10004A070(v12);
    }

    else
    {
      sub_10004A090(v12);
    }
  }

  return result;
}

uint64_t sub_10003FA7C(char a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 120);

    sub_100003150(&qword_100067FD8, &unk_100053660);
    v7 = sub_10004AD30();
    v8 = *(v7 - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v11 = swift_allocObject();
    *(v11 + 1) = xmmword_1000528D0;
    (*(v8 + 16))(&v11[v10], a3, v7);
    v12._rawValue = v11;
    sub_10004A0E0(a1 & 1, v12);
  }

  return result;
}

uint64_t sub_10003FBCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + 120);

    sub_100003150(&qword_100067FD8, &unk_100053660);
    v6 = sub_10004AD30();
    v7 = *(v6 - 8);
    v8 = *(v7 + 72);
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000528D0;
    (*(v7 + 16))(v10 + v9, a3, v6);
    sub_10004A180();
  }

  return result;
}

uint64_t sub_10003FD1C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 120);

    sub_100003150(&qword_100067FD8, &unk_100053660);
    v5 = sub_10004AD30();
    v6 = *(v5 - 8);
    v7 = *(v6 + 72);
    v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v9 = swift_allocObject();
    *(v9 + 1) = xmmword_1000528D0;
    (*(v6 + 16))(&v9[v8], a2, v5);
    v10._rawValue = v9;
    sub_10004A060(v10);
  }

  return result;
}

uint64_t sub_10003FE58()
{
  sub_100003414(v0 + 16);
  sub_100003414(v0 + 32);
  v1 = *(v0 + 48);
  swift_unknownObjectRelease();
  sub_10000343C((v0 + 64));
  v2 = *(v0 + 104);

  v3 = *(v0 + 120);

  v4 = *(v0 + 128);

  v5 = *(v0 + 136);

  v6 = *(v0 + 144);

  sub_10000A138(v0 + 152, &qword_100067678, &qword_100052980);
  sub_10000343C((v0 + 200));
  v7 = OBJC_IVAR____TtC25RemindersSharingExtension30TTRISECreateRemindersPresenter_completionState;
  v8 = sub_10004B290();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  sub_10000A138(v0 + OBJC_IVAR____TtC25RemindersSharingExtension30TTRISECreateRemindersPresenter_currentEventHandler, &qword_1000680A8, &unk_100053710);
  v9 = *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension30TTRISECreateRemindersPresenter_cellInfoButtonVisibilityAssertion);

  v10 = *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension30TTRISECreateRemindersPresenter_cellInfoButtonVisibilityAssertionCancellable);

  return v0;
}

uint64_t sub_10003FF68()
{
  sub_10003FE58();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRISECreateRemindersPresenter()
{
  result = qword_100068640;
  if (!qword_100068640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100040014()
{
  result = sub_10004B290();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100040104@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_10004B830();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1[7];
  v11 = v1[6];
  swift_getObjectType();
  if (sub_100049F60())
  {
    swift_unknownObjectRelease();
    sub_1000351F8(v23);
    if (v23[3])
    {
      v22 = v24;
      sub_10000343C(v23);
    }

    else
    {
      sub_10000A138(v23, &qword_1000689F8, &qword_100054108);
      v22 = 0;
    }

    v13 = v1[17];
    sub_10004BEE0();
    v14 = v2[18];
    v21 = sub_10004BE80();
    v15 = v2[15];
    v16 = sub_10004A0D0();
    v17 = type metadata accessor for TTRISECreateRemindersPresentationTree();
    (*(v5 + 16))(a1 + v17[7], v9, v4);
    v18 = sub_10004A1F0();
    v19 = sub_10004A160();
    v20 = sub_100031DC0(v16, v19);

    a1[3] = sub_100003150(&qword_100068538, &qword_100053B60);
    a1[4] = sub_100003364(&qword_100068540, &qword_100068538, &qword_100053B60);
    *a1 = v20;
    result = (*(v5 + 8))(v9, v4);
    a1[5] = v21;
    a1[6] = v16;
    *(a1 + v17[8]) = v22;
    *(a1 + v17[9]) = v18 & 1;
    *(a1 + v17[10]) = 0;
  }

  else
  {

    return sub_10002F8C0(a1);
  }

  return result;
}

uint64_t sub_100040370(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B830();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 136);
  sub_10004BEE0();
  v11 = type metadata accessor for TTRISECreateRemindersPresentationTree();
  return (*(v5 + 40))(a2 + *(v11 + 28), v9, v4);
}

uint64_t sub_100040450(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 144);
  v5 = sub_10004BE80();
  v6 = *(a2 + 40);

  *(a2 + 40) = v5;
  return result;
}

uint64_t sub_100040488(uint64_t a1, uint64_t a2)
{
  sub_1000351F8(v8);
  if (v8[3])
  {
    v4 = v9;
    sub_10000343C(v8);
  }

  else
  {
    sub_10000A138(v8, &qword_1000689F8, &qword_100054108);
    v4 = 0;
  }

  v5 = type metadata accessor for TTRISECreateRemindersPresentationTree();
  *(a2 + *(v5 + 32)) = v4;
  v6 = *(v2 + 120);
  result = sub_10004A1F0();
  *(a2 + *(v5 + 36)) = result & 1;
  return result;
}

uint64_t sub_10004051C()
{
  v1 = type metadata accessor for TTRISECreateRemindersPresentationTree();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v9[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004BF40();
  sub_10000DAC4(v5, v9);
  sub_10002BC80(v5);
  v6 = *(v0 + 144);
  sub_10004A350();
  sub_10004565C(&qword_100068510, &type metadata accessor for TTRSECreateRemindersViewModel.Item);
  sub_10004BEA0();
  return sub_10000343C(v9);
}

uint64_t sub_10004060C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    type metadata accessor for TTRISECreateRemindersViewController();
    sub_10002394C();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000406B4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10004A960();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    (*(v4 + 104))(v8, enum case for TTREditingStateOption.InputType.unspecified(_:), v3);
    sub_100022D84(a2, v8);
    swift_unknownObjectRelease();
    return (*(v4 + 8))(v8, v3);
  }

  return result;
}

uint64_t sub_1000407D0(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100003150(&qword_100067FD8, &unk_100053660);
    v4 = sub_10004AD30();
    v5 = *(v4 - 8);
    v6 = *(v5 + 72);
    v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1000528D0;
    (*(v5 + 16))(v8 + v7, a2, v4);
    sub_100023250(v8);
    swift_unknownObjectRelease();
    swift_setDeallocating();
    (*(v5 + 8))(v8 + v7, v4);

    return swift_deallocClassInstance();
  }

  return result;
}

void sub_100040940(void *a1, void *a2)
{
  v40 = sub_100049EF0();
  v5 = *(v40 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v40, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004A620();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + 120);
  v17._rawValue = a1;
  v44.value._rawValue = a2;
  sub_10004A230(v17, v44);
  if (a2)
  {
    v18 = a2[2];
    if (v18)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v20 = Strong;
        v21 = [Strong collectionView];
        if (!v21)
        {
          goto LABEL_16;
        }

        v22 = v21;
        [v21 setAllowsSelectionDuringEditing:1];

        v23 = [v20 collectionView];
        if (v23)
        {
          v24 = v23;
          [v23 setAllowsMultipleSelectionDuringEditing:1];

          v39 = v20;
          v25 = [v20 collectionView];
          if (v25)
          {
            v26 = v25;
            sub_10004C8D0(1, 0);

            v27 = 0;
            v29 = *(v11 + 16);
            v28 = v11 + 16;
            v30 = a2 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
            v41 = *(v28 + 56);
            v42 = v29;
            v43 = v28;
            v31 = (v28 - 8);
            v32 = (v5 + 8);
            v33 = v9;
            while (1)
            {
              v42(v15, v30, v10);
              if (sub_10004A610())
              {
                sub_100049ED0();
                v34 = [v39 collectionView];
                if (!v34)
                {
                  __break(1u);
LABEL_16:
                  __break(1u);
                  goto LABEL_17;
                }

                v35 = v33;
                v36 = v34;
                isa = sub_100049EB0().super.isa;
                [v36 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

                (*v32)(v35, v40);
                v33 = v35;
              }

              (*v31)(v15, v10);
              if (!--v18)
              {
                sub_100021400();
                swift_unknownObjectRelease();
                return;
              }

              ++v27;
              v30 += v41;
            }
          }
        }

        else
        {
LABEL_17:
          __break(1u);
        }

        __break(1u);
      }
    }
  }
}

void sub_100040C68(uint64_t a1)
{
  v3 = sub_100003150(&unk_100067618, &qword_100052940);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v24 - v6;
  v8 = sub_100049FA0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = __chkstk_darwin(v8, v11);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v14, a1, v8, v12);
  v15 = (*(v9 + 88))(v14, v8);
  if (v15 == enum case for TTRSECreateRemindersTerminationReason.otherError(_:))
  {
    (*(v9 + 96))(v14, v8);
    v16 = *v14;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      swift_errorRetain();
      sub_100011DD8(v16, v18);

      swift_unknownObjectRelease();
    }
  }

  else if (v15 == enum case for TTRSECreateRemindersTerminationReason.noSupportedList(_:))
  {
    v19 = sub_10004C790();
    (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
    sub_10004C770();

    v20 = v1;
    v21 = sub_10004C760();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = &protocol witness table for MainActor;
    v22[4] = v20;
    sub_1000219E8(0, 0, v7, &unk_100054140, v22);
  }

  else
  {
    if (qword_100066F40 != -1)
    {
      swift_once();
    }

    v23 = sub_10004C1B0();
    sub_10000D49C(v23, qword_1000685E0);
    sub_100011BA4(_swiftEmptyArrayStorage);
    sub_100011BA4(_swiftEmptyArrayStorage);
    sub_100014FC0("Unknown termination reason", 26, 2);
    __break(1u);
  }
}

uint64_t sub_100040F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_10004C770();
  v4[3] = sub_10004C760();
  v6 = sub_10004C750();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_100040FEC, v6, v5);
}

uint64_t sub_100040FEC()
{
  v1 = *(v0[2] + 120);
  sub_10004A020();
  v0[6] = sub_10004A590();

  v2 = async function pointer to Promise.get()[1];
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1000410A4;

  return Promise.get()();
}

uint64_t sub_1000410A4()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = v2[4];
    v5 = v2[5];
    v6 = sub_100041664;
  }

  else
  {
    v7 = v2[6];

    v4 = v2[4];
    v5 = v2[5];
    v6 = sub_1000411C0;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1000411C0()
{
  v1 = *(v0 + 16);
  v14._object = 0x800000010004E4B0;
  v15._countAndFlagsBits = 0xD00000000000002FLL;
  v15._object = 0x800000010004E4D0;
  v14._countAndFlagsBits = 0xD000000000000016;
  sub_10004A790(v14, v15);
  sub_10004A9F0();
  v2 = sub_10004C680();

  v3 = sub_10004C680();

  v4 = [objc_opt_self() alertControllerWithTitle:v2 message:v3 preferredStyle:1];
  *(v0 + 72) = v4;

  v5 = sub_1000032DC((v1 + 64), *(v1 + 88));
  sub_100003150(&qword_100068A20, &qword_100054148);
  v6 = *(sub_100003150(&qword_100068A28, &qword_100054150) - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v0 + 80) = v9;
  *(v9 + 16) = xmmword_1000528D0;
  sub_10004AA30();
  *(v0 + 96) = 1;
  sub_10004ACC0();
  v10 = *v5;
  v11 = swift_task_alloc();
  *(v0 + 88) = v11;
  *v11 = v0;
  v11[1] = sub_10004140C;

  return sub_100034798(v4, v9);
}

uint64_t sub_10004140C()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return _swift_task_switch(sub_100041550, v5, v4);
}

uint64_t sub_100041550()
{
  v2 = v0[2];
  v1 = v0[3];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = [Strong extensionContext];
    v5 = v0[9];
    if (v4)
    {
      v6 = v4;
      v7 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
      v8 = sub_100049DD0();

      [v6 cancelRequestWithError:v8];
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v5 = v0[9];
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_100041664()
{
  v1 = v0[6];
  v2 = v0[3];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_100041700(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_10004A720();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  sub_10004C770();
  v3[9] = sub_10004C760();
  v8 = sub_10004C750();
  v3[10] = v8;
  v3[11] = v7;

  return _swift_task_switch(sub_100041804, v8, v7);
}

uint64_t sub_100041804()
{
  v1 = *(v0 + 24);
  if (sub_10004B220())
  {
    v2 = *(v0 + 32);
    sub_100041EA8();
    v3 = sub_10004C680();

    v4 = [objc_opt_self() alertControllerWithTitle:0 message:v3 preferredStyle:0];
    *(v0 + 96) = v4;

    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v0 + 56);
      v5 = *(v0 + 64);
      v7 = *(v0 + 40);
      v8 = *(v0 + 48);
      v9 = sub_10001CA58();
      sub_10004A710();
      swift_unknownObjectRelease();

      (*(v8 + 32))(v5, v6, v7);
      sub_10004C950();
      (*(v8 + 8))(v5, v7);
    }

    v10 = sub_1000032DC((*(v0 + 32) + 64), *(*(v0 + 32) + 88));
    sub_100003150(&qword_100068A20, &qword_100054148);
    v11 = *(sub_100003150(&qword_100068A28, &qword_100054150) - 8);
    v12 = *(v11 + 72);
    v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v14 = swift_allocObject();
    *(v0 + 104) = v14;
    *(v14 + 16) = xmmword_100052630;
    sub_10004AA50();
    *(v0 + 120) = 1;
    sub_10004ACC0();
    sub_10004AA40();
    *(v0 + 121) = 0;
    sub_10004ACC0();
    v15 = *v10;
    v16 = swift_task_alloc();
    *(v0 + 112) = v16;
    *v16 = v0;
    v16[1] = sub_100041BD8;

    return sub_100034798(v4, v14);
  }

  else
  {
    v18 = *(v0 + 72);

    v19 = *(v0 + 32);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v21 = [Strong extensionContext];
      if (v21)
      {
        v22 = v21;
        v23 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
        v24 = sub_100049DD0();

        [v22 cancelRequestWithError:v24];
      }

      swift_unknownObjectRelease();
    }

    v25 = *(v0 + 56);
    v26 = *(v0 + 64);
    v27 = *(v0 + 16);
    v28 = enum case for TTRReminderDetailEditingResult.performed(_:);
    v29 = sub_10004B0B0();
    (*(*(v29 - 8) + 104))(v27, v28, v29);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_100041BD8(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v8 = *v1;
  *(*v1 + 122) = a1;

  v5 = *(v2 + 88);
  v6 = *(v2 + 80);

  return _swift_task_switch(sub_100041D24, v6, v5);
}

uint64_t sub_100041D24()
{
  v1 = *(v0 + 122);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);

  if (v1 == 2 || (*(v0 + 122) & 1) == 0)
  {
    v10 = &enum case for TTRReminderDetailEditingResult.abortedByUser(_:);
  }

  else
  {
    v4 = *(v0 + 32);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = [Strong extensionContext];
      if (v6)
      {
        v7 = v6;
        v8 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
        v9 = sub_100049DD0();

        [v7 cancelRequestWithError:v9];
      }

      swift_unknownObjectRelease();
    }

    v10 = &enum case for TTRReminderDetailEditingResult.performed(_:);
  }

  v11 = *(v0 + 56);
  v12 = *(v0 + 64);
  v13 = *(v0 + 16);
  v14 = *v10;
  v15 = sub_10004B0B0();
  (*(*(v15 - 8) + 104))(v13, v14, v15);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100041EA8()
{
  v55 = sub_10004AD30();
  v1 = *(v55 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v55, v3);
  v54 = &v43[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10004A330();
  v56 = *(v5 - 8);
  v57 = v5;
  v6 = *(v56 + 64);
  __chkstk_darwin(v5, v7);
  v59 = &v43[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10004A350();
  v10 = *(v9 - 8);
  v11 = v10[8];
  __chkstk_darwin(v9, v12);
  v14 = &v43[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_100003150(&qword_100068020, &qword_100053B30);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8, v17);
  v19 = &v43[-v18];
  v20 = type metadata accessor for TTRISECreateRemindersPresentationTree();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8, v22);
  v24 = &v43[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = v0;
  v25 = *(v0 + 128);
  sub_10004BF40();
  sub_10000DAC4(v24, v61);
  sub_10002BC80(v24);
  sub_1000032DC(v61, v61[3]);
  sub_10004AC40();
  v26 = sub_10004CD30();

  sub_10000343C(v61);
  v60 = v26;
  sub_10004CD90();
  v27 = v10[6];
  v28 = 0;
  if (v27(v19, 1, v9) == 1)
  {
LABEL_2:

    v29 = *(v58 + 120);
    if ((sub_10004A140() & 1) == 0)
    {
      goto LABEL_22;
    }

    if (v28 < 2)
    {
      v30 = " these new reminders?";
      v31._countAndFlagsBits = 0xD00000000000002FLL;
    }

    else
    {
      v30 = "rt for recipe mode";
      v31._countAndFlagsBits = 0xD000000000000031;
    }

    v31._object = (v30 | 0x8000000000000000);
    v41._countAndFlagsBits = 0xD000000000000042;
    v41._object = 0x800000010004F9B0;
    return sub_10004A790(v31, v41);
  }

  v28 = 0;
  v32 = v1;
  v33 = v10[4];
  v34 = (v10 + 1);
  v53 = (v56 + 88);
  v52 = enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.suggestedReminder(_:);
  v51 = enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.remindersListItem(_:);
  v50 = enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.listPicker(_:);
  v46 = enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.suggestionHeader(_:);
  v45 = enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.suggestionLoading(_:);
  v49 = (v56 + 96);
  v48 = (v32 + 32);
  v47 = (v32 + 8);
  v56 += 8;
  v44 = enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.unknown(_:);
  while (1)
  {
    v33(v14, v19, v9);
    if (v28 < 2)
    {
      sub_10004A340();
      v35 = v57;
      v36 = (*v53)(v59, v57);
      if (v36 == v52)
      {
        (*v34)(v14, v9);
        ++v28;
        (*v56)(v59, v35);
        goto LABEL_8;
      }

      if (v36 == v51)
      {
        (*v49)(v59, v35);
        (*v48)(v54, v59, v55);
        v37 = *(v58 + 120);
        v38 = sub_10004A100();
        (*v47)(v54, v55);
        (*v34)(v14, v9);
        if (v38)
        {

          ++v28;
        }

        goto LABEL_8;
      }

      if (v36 != v50 && v36 != v46 && v36 != v45 && v36 != v44)
      {
        break;
      }
    }

    (*v34)(v14, v9);
LABEL_8:
    sub_10004CD90();
    if (v27(v19, 1, v9) == 1)
    {
      goto LABEL_2;
    }
  }

  if (qword_100066F40 != -1)
  {
    swift_once();
  }

  v39 = sub_10004C1B0();
  sub_10000D49C(v39, qword_1000685E0);
  sub_100011BA4(&_swiftEmptyArrayStorage);
  sub_100011BA4(&_swiftEmptyArrayStorage);
  sub_100014FC0("Unknown item type", 17, 2);
  __break(1u);
LABEL_22:
  if (v28 < 2)
  {
    v40 = " Show Due Date Picker";
    v31._countAndFlagsBits = 0xD000000000000033;
  }

  else
  {
    v40 = "confirmation alert";
    v31._countAndFlagsBits = 0xD000000000000035;
  }

  v31._object = (v40 | 0x8000000000000000);
  v41._object = 0x800000010004F900;
  v41._countAndFlagsBits = 0xD000000000000032;
  return sub_10004A790(v31, v41);
}

uint64_t sub_100042520(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10003C414(a1);
  }

  return result;
}

uint64_t sub_100042594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v6 = sub_10004AD30();
  v5[24] = v6;
  v7 = *(v6 - 8);
  v5[25] = v7;
  v5[26] = *(v7 + 64);
  v5[27] = swift_task_alloc();
  sub_10004C770();
  v5[28] = sub_10004C760();
  v9 = sub_10004C750();
  v5[29] = v9;
  v5[30] = v8;

  return _swift_task_switch(sub_100042690, v9, v8);
}

uint64_t sub_100042690()
{
  v0[21] = *(v0[22] + 104);
  v1 = async function pointer to TTRPrivacyChecker.checkAndPromptNotificationAccess(needsPresentationOfWarmingSheet:)[1];
  v2 = swift_task_alloc();
  v0[31] = v2;
  v3 = sub_10004A780();
  *v2 = v0;
  v2[1] = sub_10004274C;

  return TTRPrivacyChecker.checkAndPromptNotificationAccess(needsPresentationOfWarmingSheet:)(2, v3, &protocol witness table for TTRIPrivacyChecker);
}

uint64_t sub_10004274C()
{
  v1 = *v0;
  v2 = *(*v0 + 248);
  v6 = *v0;

  v3 = *(v1 + 240);
  v4 = *(v1 + 232);

  return _swift_task_switch(sub_10004286C, v4, v3);
}

uint64_t sub_10004286C()
{
  v1 = *(v0 + 224);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);

  sub_100038F00(v2, v0 + 64);
  if (*(v0 + 64))
  {
    v5 = *(v0 + 208);
    v4 = *(v0 + 216);
    v6 = *(v0 + 192);
    v7 = *(v0 + 200);
    v8 = *(v0 + 176);
    v9 = *(v0 + 184);
    v10 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v10;
    *(v0 + 48) = *(v0 + 96);
    v11 = swift_allocObject();
    swift_weakInit();
    (*(v7 + 16))(v4, v9, v6);
    v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    (*(v7 + 32))(v13 + v12, v4, v6);
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = type metadata accessor for ReminderDetailModuleDelegate();
    v16 = swift_allocObject();
    *(v0 + 112) = v16;
    *(v16 + 16) = sub_100047DE8;
    *(v16 + 24) = v13;
    *(v16 + 32) = sub_100047E00;
    *(v16 + 40) = v14;
    *(v0 + 136) = v15;
    v17 = OBJC_IVAR____TtC25RemindersSharingExtension30TTRISECreateRemindersPresenter_currentEventHandler;
    swift_beginAccess();

    sub_1000455EC(v0 + 112, v8 + v17);
    swift_endAccess();
    v18 = sub_1000032DC((v8 + 64), *(v8 + 88));
    v19 = *(v0 + 16);
    v20 = sub_10004565C(&qword_1000689D0, type metadata accessor for ReminderDetailModuleDelegate);
    v21 = *v18;

    sub_10002BCE0(v19, v16, v20, (v0 + 24));

    v22 = &unk_1000689D8;
    v23 = &unk_1000540F0;
    v24 = v0 + 16;
  }

  else
  {
    v22 = &qword_1000689C8;
    v23 = &unk_1000540E0;
    v24 = v0 + 64;
  }

  sub_10000A138(v24, v22, v23);
  v25 = *(v0 + 216);

  v26 = *(v0 + 8);

  return v26();
}

void sub_100042B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = a5;
  v8 = sub_10004B230();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004BCC0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  v19 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v46 = v13;
    v47 = v9;
    v48 = a3;
    v49 = v8;
    sub_10004A9B0();
    v23 = v22;
    v24 = objc_opt_self();
    v45[0] = v23;
    v25 = sub_10004C680();
    v26 = swift_allocObject();
    v26[2] = v21;
    v26[3] = a1;
    v26[4] = a2;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_100049038;
    *(v27 + 24) = v26;
    v45[1] = v26;
    aBlock[4] = sub_10004901C;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10003415C;
    aBlock[3] = &unk_1000604E0;
    v28 = _Block_copy(aBlock);

    swift_unknownObjectRetain();

    [v24 withActionName:v25 block:v28];

    _Block_release(v28);
    LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

    if (v28)
    {
      __break(1u);
    }

    else
    {
      v29 = v21[15];
      sub_100003150(&qword_1000689E0, &qword_1000540F8);
      v30 = *(v15 + 72);
      v31 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_100052630;
      sub_10004BCB0();
      sub_10004BCA0();
      aBlock[0] = v32;
      sub_10004565C(&qword_100067908, &type metadata accessor for TTRRemindersListEditingSessionDisplayTargets);
      sub_100003150(&qword_1000689E8, &qword_100054100);
      sub_100003364(&qword_1000689F0, &qword_1000689E8, &qword_100054100);
      sub_10004CBC0();
      sub_100003150(&qword_100067FD8, &unk_100053660);
      v33 = sub_10004AD30();
      v34 = *(v33 - 8);
      v35 = *(v34 + 72);
      v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1000528D0;
      (*(v34 + 16))(v37 + v36, v50, v33);
      sub_10004A0B0();

      (*(v15 + 8))(v19, v14);
      v38 = *sub_1000032DC(v21 + 8, v21[11]);
      v40 = v46;
      v39 = v47;
      v41 = v49;
      (*(v47 + 16))(v46, v48, v49);
      v42 = (*(v39 + 88))(v40, v41);
      if (v42 == enum case for TTRIViewControllerDismissalState.dismissedOrPopped(_:))
      {

        return;
      }

      if (v42 == enum case for TTRIViewControllerDismissalState.requested(_:))
      {

        v43 = swift_unknownObjectWeakLoadStrong();
        if (v43)
        {
          v44 = v43;
          [v43 dismissViewControllerAnimated:1 completion:0];
        }

        else
        {
        }

        return;
      }
    }

    sub_10004CDC0();
    __break(1u);
  }
}

uint64_t sub_1000430AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[23] = a4;
  v5[24] = a5;
  v6 = *(*(sub_100003150(&qword_1000683A8, &qword_100053938) - 8) + 64) + 15;
  v5[25] = swift_task_alloc();
  v7 = sub_10004A720();
  v5[26] = v7;
  v8 = *(v7 - 8);
  v5[27] = v8;
  v9 = *(v8 + 64) + 15;
  v5[28] = swift_task_alloc();
  v10 = sub_10004AD30();
  v5[29] = v10;
  v11 = *(v10 - 8);
  v5[30] = v11;
  v5[31] = *(v11 + 64);
  v5[32] = swift_task_alloc();
  sub_10004C770();
  v5[33] = sub_10004C760();
  v13 = sub_10004C750();
  v5[34] = v13;
  v5[35] = v12;

  return _swift_task_switch(sub_10004323C, v13, v12);
}

uint64_t sub_10004323C()
{
  v1 = *(v0[23] + 104);
  v0[36] = v1;
  v0[21] = v1;
  v2 = async function pointer to TTRPrivacyChecker.checkAndPromptNotificationAccess(needsPresentationOfWarmingSheet:)[1];

  v3 = swift_task_alloc();
  v0[37] = v3;
  v4 = sub_10004A780();
  v0[38] = v4;
  *v3 = v0;
  v3[1] = sub_100043308;

  return TTRPrivacyChecker.checkAndPromptNotificationAccess(needsPresentationOfWarmingSheet:)(2, v4, &protocol witness table for TTRIPrivacyChecker);
}

uint64_t sub_100043308()
{
  v1 = *v0;
  v2 = *(*v0 + 296);
  v3 = *(*v0 + 288);
  v8 = *v0;

  v1[22] = v3;
  v1 += 22;
  v4 = async function pointer to TTRPrivacyChecker.checkAndPromptLocationAccess()[1];
  v5 = swift_task_alloc();
  v1[17] = v5;
  *v5 = v8;
  v5[1] = sub_10004345C;
  v6 = v1[16];

  return TTRPrivacyChecker.checkAndPromptLocationAccess()(v6, &protocol witness table for TTRIPrivacyChecker);
}

uint64_t sub_10004345C()
{
  v1 = *v0;
  v2 = *(*v0 + 312);
  v3 = *(*v0 + 288);
  v7 = *v0;

  v4 = *(v1 + 280);
  v5 = *(v1 + 272);

  return _swift_task_switch(sub_1000435A0, v5, v4);
}

uint64_t sub_1000435A0()
{
  v1 = *(v0 + 264);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);

  sub_100038F00(v2, v0 + 64);
  if (*(v0 + 64))
  {
    v5 = *(v0 + 248);
    v4 = *(v0 + 256);
    v7 = *(v0 + 232);
    v6 = *(v0 + 240);
    v8 = *(v0 + 216);
    v9 = *(v0 + 192);
    v39 = *(v0 + 200);
    v40 = *(v0 + 208);
    v10 = *(v0 + 184);
    v11 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v11;
    *(v0 + 48) = *(v0 + 96);
    v12 = swift_allocObject();
    swift_weakInit();
    (*(v6 + 16))(v4, v9, v7);
    v13 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    (*(v6 + 32))(v14 + v13, v4, v7);
    v15 = type metadata accessor for LocationPickerModuleDelegate();
    v16 = swift_allocObject();
    *(v0 + 112) = v16;
    *(v16 + 16) = sub_100047CD8;
    *(v16 + 24) = v14;
    *(v0 + 136) = v15;
    v17 = OBJC_IVAR____TtC25RemindersSharingExtension30TTRISECreateRemindersPresenter_currentEventHandler;
    swift_beginAccess();

    sub_1000455EC(v0 + 112, v10 + v17);
    swift_endAccess();
    v18 = sub_1000032DC(v10 + 8, v10[11]);
    v19 = *(v0 + 16);
    sub_10004565C(&qword_100068A30, type metadata accessor for LocationPickerModuleDelegate);
    v20 = v10[14];
    v38 = *v18;
    v21 = sub_10004B3F0();
    v22 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v21];
    v23 = *(v0 + 56);
    sub_1000032DC((v0 + 24), *(v0 + 48));
    sub_10004BD00();
    if ((*(v8 + 48))(v39, 1, v40) == 1)
    {
      sub_10000A138(*(v0 + 200), &qword_1000683A8, &qword_100053938);
    }

    else
    {
      v28 = *(v0 + 216);
      v27 = *(v0 + 224);
      v29 = *(v0 + 208);
      (*(v28 + 32))(v27, *(v0 + 200), v29);
      sub_10004C950();
      (*(v28 + 8))(v27, v29);
    }

    swift_getObjectType();
    v30 = [v22 presentationController];
    sub_10004BB80();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v32 = Strong;
      [Strong presentViewController:v22 animated:1 completion:0];
    }

    swift_unknownObjectRelease();
    v24 = &unk_1000689D8;
    v25 = &unk_1000540F0;
    v26 = v0 + 16;
  }

  else
  {
    v24 = &qword_1000689C8;
    v25 = &unk_1000540E0;
    v26 = v0 + 64;
  }

  sub_10000A138(v26, v24, v25);
  v33 = *(v0 + 256);
  v34 = *(v0 + 224);
  v35 = *(v0 + 200);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_10004397C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10004BCC0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = *(result + 120);

    sub_100003150(&qword_1000689E0, &qword_1000540F8);
    v11 = *(v4 + 72);
    v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100052630;
    sub_10004BCB0();
    sub_10004BCA0();
    v19 = v13;
    sub_10004565C(&qword_100067908, &type metadata accessor for TTRRemindersListEditingSessionDisplayTargets);
    sub_100003150(&qword_1000689E8, &qword_100054100);
    sub_100003364(&qword_1000689F0, &qword_1000689E8, &qword_100054100);
    sub_10004CBC0();
    sub_100003150(&qword_100067FD8, &unk_100053660);
    v14 = sub_10004AD30();
    v15 = *(v14 - 8);
    v16 = *(v15 + 72);
    v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1000528D0;
    (*(v15 + 16))(v18 + v17, a2, v14);
    sub_10004A0B0();

    return (*(v4 + 8))(v8, v3);
  }

  return result;
}

uint64_t sub_100043C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_10004AF30();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = sub_10004A5A0();
  v5[11] = v9;
  v10 = *(v9 - 8);
  v5[12] = v10;
  v11 = *(v10 + 64) + 15;
  v5[13] = swift_task_alloc();
  sub_10004C770();
  v5[14] = sub_10004C760();
  v13 = sub_10004C750();
  v5[15] = v13;
  v5[16] = v12;

  return _swift_task_switch(sub_100043DA8, v13, v12);
}

uint64_t sub_100043DA8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = 0;
  *(v3 + 136) = *(*(v3 + 48) + 16);
  v5 = enum case for TTRPrivacyType.location(_:);
  *(v3 + 192) = enum case for TTRPrivacyType.notifications(_:);
  *(v3 + 196) = v5;
  v6 = enum case for TTRPrivacyType.reminderDeletion(_:);
  *(v3 + 200) = enum case for TTRPrivacyType.contacts(_:);
  *(v3 + 204) = v6;
  v7 = enum case for TTRContactsAccessAlertFeature.location(_:);
  *(v3 + 208) = enum case for TTRPrivacyType.urgentAlarms(_:);
  *(v3 + 212) = v7;
  while (1)
  {
    v8 = *(v3 + 136);
    if (v4 == v8)
    {
      break;
    }

    if (v4 >= v8)
    {
      __break(1u);
LABEL_29:
      __break(1u);
      return TTRPrivacyChecker.checkContactsAccess(contactsFeature:)(a1, a2, a3);
    }

    *(v3 + 144) = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_29;
    }

    v9 = *(v3 + 192);
    v11 = *(v3 + 96);
    v10 = *(v3 + 104);
    v12 = *(v3 + 88);
    (*(v11 + 16))(v10, *(v3 + 48) + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v4, v12);
    a1 = (*(v11 + 88))(v10, v12);
    if (a1 == v9)
    {
      *(v3 + 40) = *(*(v3 + 56) + 104);
      v20 = async function pointer to TTRPrivacyChecker.checkAndPromptNotificationAccess(needsPresentationOfWarmingSheet:)[1];
      v21 = swift_task_alloc();
      *(v3 + 152) = v21;
      v22 = sub_10004A780();
      *v21 = v3;
      v21[1] = sub_100044204;

      return TTRPrivacyChecker.checkAndPromptNotificationAccess(needsPresentationOfWarmingSheet:)(2, v22, &protocol witness table for TTRIPrivacyChecker);
    }

    if (a1 == *(v3 + 196))
    {
      *(v3 + 32) = *(*(v3 + 56) + 104);
      v23 = async function pointer to TTRPrivacyChecker.checkAndPromptLocationAccess()[1];
      v24 = swift_task_alloc();
      *(v3 + 160) = v24;
      v25 = sub_10004A780();
      *v24 = v3;
      v24[1] = sub_100044720;

      return TTRPrivacyChecker.checkAndPromptLocationAccess()(v25, &protocol witness table for TTRIPrivacyChecker);
    }

    if (a1 == *(v3 + 200))
    {
      v26 = *(v3 + 212);
      v28 = *(v3 + 72);
      v27 = *(v3 + 80);
      v29 = *(v3 + 64);
      v30 = *(*(v3 + 56) + 104);
      *(v3 + 168) = v30;
      *(v3 + 24) = v30;
      (*(v28 + 104))(v27, v26, v29);
      v31 = async function pointer to TTRPrivacyChecker.checkContactsAccess(contactsFeature:)[1];

      v32 = swift_task_alloc();
      *(v3 + 176) = v32;
      a2 = sub_10004A780();
      *v32 = v3;
      v32[1] = sub_100044840;
      a1 = *(v3 + 80);
      a3 = &protocol witness table for TTRIPrivacyChecker;

      return TTRPrivacyChecker.checkContactsAccess(contactsFeature:)(a1, a2, a3);
    }

    ++v4;
    if (a1 != *(v3 + 204))
    {
      if (a1 == *(v3 + 208))
      {
        *(v3 + 16) = *(*(v3 + 56) + 104);
        v13 = async function pointer to TTRPrivacyChecker.checkAndPromptUrgentAlarmAccess()[1];
        v14 = swift_task_alloc();
        *(v3 + 184) = v14;
        v15 = sub_10004A780();
        *v14 = v3;
        v14[1] = sub_1000449E0;

        return TTRPrivacyChecker.checkAndPromptUrgentAlarmAccess()(v15, &protocol witness table for TTRIPrivacyChecker);
      }

      else
      {
        v33 = *(v3 + 88);

        return sub_10004CDC0();
      }
    }
  }

  v17 = *(v3 + 104);
  v16 = *(v3 + 112);
  v18 = *(v3 + 80);

  v19 = *(v3 + 8);

  return v19();
}

uint64_t sub_100044204()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v6 = *v0;

  v3 = *(v1 + 128);
  v4 = *(v1 + 120);

  return _swift_task_switch(sub_100044324, v4, v3);
}

uint64_t sub_100044324(uint64_t a1, uint64_t a2, void *a3)
{
  for (i = *(v3 + 144); ; ++i)
  {
    v5 = *(v3 + 136);
    if (i == v5)
    {
      break;
    }

    if (i >= v5)
    {
      __break(1u);
LABEL_29:
      __break(1u);
      return TTRPrivacyChecker.checkContactsAccess(contactsFeature:)(a1, a2, a3);
    }

    *(v3 + 144) = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_29;
    }

    v6 = *(v3 + 192);
    v8 = *(v3 + 96);
    v7 = *(v3 + 104);
    v9 = *(v3 + 88);
    (*(v8 + 16))(v7, *(v3 + 48) + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * i, v9);
    a1 = (*(v8 + 88))(v7, v9);
    if (a1 == v6)
    {
      *(v3 + 40) = *(*(v3 + 56) + 104);
      v17 = async function pointer to TTRPrivacyChecker.checkAndPromptNotificationAccess(needsPresentationOfWarmingSheet:)[1];
      v18 = swift_task_alloc();
      *(v3 + 152) = v18;
      v19 = sub_10004A780();
      *v18 = v3;
      v18[1] = sub_100044204;

      return TTRPrivacyChecker.checkAndPromptNotificationAccess(needsPresentationOfWarmingSheet:)(2, v19, &protocol witness table for TTRIPrivacyChecker);
    }

    if (a1 == *(v3 + 196))
    {
      *(v3 + 32) = *(*(v3 + 56) + 104);
      v20 = async function pointer to TTRPrivacyChecker.checkAndPromptLocationAccess()[1];
      v21 = swift_task_alloc();
      *(v3 + 160) = v21;
      v22 = sub_10004A780();
      *v21 = v3;
      v21[1] = sub_100044720;

      return TTRPrivacyChecker.checkAndPromptLocationAccess()(v22, &protocol witness table for TTRIPrivacyChecker);
    }

    if (a1 == *(v3 + 200))
    {
      v23 = *(v3 + 212);
      v25 = *(v3 + 72);
      v24 = *(v3 + 80);
      v26 = *(v3 + 64);
      v27 = *(*(v3 + 56) + 104);
      *(v3 + 168) = v27;
      *(v3 + 24) = v27;
      (*(v25 + 104))(v24, v23, v26);
      v28 = async function pointer to TTRPrivacyChecker.checkContactsAccess(contactsFeature:)[1];

      v29 = swift_task_alloc();
      *(v3 + 176) = v29;
      a2 = sub_10004A780();
      *v29 = v3;
      v29[1] = sub_100044840;
      a1 = *(v3 + 80);
      a3 = &protocol witness table for TTRIPrivacyChecker;

      return TTRPrivacyChecker.checkContactsAccess(contactsFeature:)(a1, a2, a3);
    }

    if (a1 != *(v3 + 204))
    {
      if (a1 == *(v3 + 208))
      {
        *(v3 + 16) = *(*(v3 + 56) + 104);
        v10 = async function pointer to TTRPrivacyChecker.checkAndPromptUrgentAlarmAccess()[1];
        v11 = swift_task_alloc();
        *(v3 + 184) = v11;
        v12 = sub_10004A780();
        *v11 = v3;
        v11[1] = sub_1000449E0;

        return TTRPrivacyChecker.checkAndPromptUrgentAlarmAccess()(v12, &protocol witness table for TTRIPrivacyChecker);
      }

      else
      {
        v30 = *(v3 + 88);

        return sub_10004CDC0();
      }
    }
  }

  v14 = *(v3 + 104);
  v13 = *(v3 + 112);
  v15 = *(v3 + 80);

  v16 = *(v3 + 8);

  return v16();
}

uint64_t sub_100044720()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v6 = *v0;

  v3 = *(v1 + 128);
  v4 = *(v1 + 120);

  return _swift_task_switch(sub_100049030, v4, v3);
}

uint64_t sub_100044840()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 72);
  v6 = *(*v0 + 64);
  v10 = *v0;

  (*(v5 + 8))(v4, v6);

  v7 = *(v1 + 128);
  v8 = *(v1 + 120);

  return _swift_task_switch(sub_100049030, v8, v7);
}

uint64_t sub_1000449E0()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v6 = *v0;

  v3 = *(v1 + 128);
  v4 = *(v1 + 120);

  return _swift_task_switch(sub_100049030, v4, v3);
}

void sub_100044B04(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *sub_1000032DC((v4 + 64), *(v4 + 88));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    [Strong presentViewController:a3 animated:a4 & 1 completion:0];
  }
}

uint64_t sub_100044BA4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100022F14();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100044C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v7;
  v11 = sub_10004AD30();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v15 = sub_100003150(&unk_100067618, &qword_100052940);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8, v17);
  v19 = &v25 - v18;
  v20 = sub_10004C790();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v12 + 16))(&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v11);
  sub_10004C770();

  v21 = sub_10004C760();
  v22 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = v21;
  *(v23 + 3) = &protocol witness table for MainActor;
  *(v23 + 4) = v9;
  (*(v12 + 32))(&v23[v22], &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  sub_100034498(0, 0, v19, a7, v23);
}

void sub_100044E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *sub_1000032DC((v3 + 64), *(v3 + 88));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    [Strong presentViewController:a3 animated:1 completion:0];
  }
}

uint64_t sub_100044EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100003150(&qword_100067630, &qword_100052960);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v21 - v10;
  v12 = sub_10004AD30();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A198(a5, v11, &qword_100067630, &qword_100052960);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000A138(v11, &qword_100067630, &qword_100052960);
    return 0;
  }

  else
  {
    (*(v13 + 32))(v17, v11, v12);
    v19 = *(v5 + 120);
    v20 = sub_10004A150();
    (*(v13 + 8))(v17, v12);
    return v20;
  }
}

uint64_t sub_100045094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_100003150(&unk_100067618, &qword_100052940);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v15 - v9;
  v11 = sub_10004C790();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_10004C770();

  v12 = sub_10004C760();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = a3;
  v13[5] = v4;
  sub_100034498(0, 0, v10, &unk_100054168, v13);
}

uint64_t sub_1000451C4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_100045228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  return v4(a3);
}

uint64_t sub_100045254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  return v6(a1, a2, a5);
}

uint64_t sub_1000452A4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a2);
}

uint64_t sub_1000452D0()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_100045350()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000453C0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000453F8()
{
  v1 = sub_10004AD30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
    v7 = *(v0 + v5 + 8);
  }

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

void sub_1000454DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_10004AD30() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v3 + 16);
  v10 = v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  sub_1000392CC(a1, a2, a3, v9, v3 + v8, v11, v12);
}

uint64_t sub_100045598()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000455EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003150(&qword_1000680A8, &unk_100053710);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004565C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000456A4()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_10003C858(v0[2]);
}

uint64_t sub_1000456B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000456C8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000457C0;

  return v7(a1);
}

uint64_t sub_1000457C0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000458B8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100049018;

  return v7(a1);
}

id sub_1000459B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_100009FF0(0, &qword_100068A68, UIMenuElement_ptr);
  v3 = sub_10004C720();

  v4 = v2(v3);

  return v4;
}

uint64_t sub_100045A40(void *a1, void *a2)
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

    v9 = sub_10004CC00();

    if (v9)
    {

      sub_100009FF0(0, &qword_100067920, REMObjectID_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = sub_10004CBF0();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_100045C78(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_100045E68(v21 + 1);
    }

    v19 = v8;
    sub_100046090(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_100009FF0(0, &qword_100067920, REMObjectID_ptr);
  v11 = sub_10004CA60(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_100046114(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_10004CA70();

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

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

Swift::Int sub_100045C78(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100003150(&qword_100068B08, &qword_100054270);
    v2 = sub_10004CC50();
    v15 = v2;
    sub_10004CBE0();
    if (sub_10004CC10())
    {
      sub_100009FF0(0, &qword_100067920, REMObjectID_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100045E68(v9 + 1);
        }

        v2 = v15;
        result = sub_10004CA60(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_10004CC10());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_100045E68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003150(&qword_100068B08, &qword_100054270);
  result = sub_10004CC40();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_10004CA60(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
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
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
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
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_100046090(uint64_t a1, uint64_t a2)
{
  sub_10004CA60(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = sub_10004CBD0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_100046114(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100045E68(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100046284();
      goto LABEL_12;
    }

    sub_1000463D4(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_10004CA60(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100009FF0(0, &qword_100067920, REMObjectID_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_10004CA70();

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
  sub_10004CDE0();
  __break(1u);
}

id sub_100046284()
{
  v1 = v0;
  sub_100003150(&qword_100068B08, &qword_100054270);
  v2 = *v0;
  v3 = sub_10004CC30();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1000463D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003150(&qword_100068B08, &qword_100054270);
  result = sub_10004CC40();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_10004CA60(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000465E8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_10004AF20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  sub_100003150(&qword_100068AD0, &qword_100054228);
  v45 = a2;
  result = sub_10004CD70();
  v15 = result;
  if (*(v12 + 16))
  {
    v48 = v11;
    v41 = v3;
    v16 = 0;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v42 = (v7 + 16);
    v43 = v7;
    v46 = (v7 + 32);
    v22 = result + 64;
    v44 = v12;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v25 = (v20 - 1) & v20;
LABEL_17:
      v28 = v24 | (v16 << 6);
      v47 = v25;
      v29 = *(v7 + 72);
      v30 = *(v12 + 48) + v29 * v28;
      if (v45)
      {
        (*v46)(v48, v30, v6);
      }

      else
      {
        (*v42)(v48, v30, v6);
      }

      v31 = *(*(v12 + 56) + 8 * v28);
      v32 = *(v15 + 40);
      sub_10004565C(&qword_100067928, &type metadata accessor for TTRRemindersListPostponeType);
      result = sub_10004C650();
      v33 = -1 << *(v15 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v22 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v22 + 8 * v35);
          if (v39 != -1)
          {
            v23 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v34) & ~*(v22 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v46)(*(v15 + 48) + v29 * v23, v48, v6);
      *(*(v15 + 56) + 8 * v23) = v31;
      ++*(v15 + 16);
      v7 = v43;
      v12 = v44;
      v20 = v47;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v24 = __clz(__rbit64(v27));
        v25 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v12 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v17, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v40;
    }

    *(v12 + 16) = 0;
  }

LABEL_36:
  *v3 = v15;
  return result;
}

uint64_t sub_1000469A8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_10004AF20();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v16 = sub_100011790(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  result = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v22 = *v4;
    if (v20)
    {
LABEL_8:
      *(v22[7] + 8 * v16) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v21 >= result && (a3 & 1) == 0)
  {
    result = sub_100046BFC();
    goto LABEL_7;
  }

  sub_1000465E8(result, a3 & 1);
  v23 = *v4;
  result = sub_100011790(a2);
  if ((v20 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_10004CDF0();
    __break(1u);
    return result;
  }

  v16 = result;
  v22 = *v4;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v13, a2, v8);
  return sub_100046B44(v16, v13, a1, v22);
}

uint64_t sub_100046B44(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_10004AF20();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

char *sub_100046BFC()
{
  v1 = v0;
  v33 = sub_10004AF20();
  v35 = *(v33 - 8);
  v2 = *(v35 + 64);
  __chkstk_darwin(v33, v3);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003150(&qword_100068AD0, &qword_100054228);
  v5 = *v0;
  v6 = sub_10004CD60();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v34 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v35;
        v22 = *(v35 + 72) * v20;
        v24 = v32;
        v23 = v33;
        (*(v35 + 16))(v32, *(v5 + 48) + v22, v33);
        v25 = *(*(v5 + 56) + 8 * v20);
        v26 = v34;
        result = (*(v21 + 32))(*(v34 + 48) + v22, v24, v23);
        *(*(v26 + 56) + 8 * v20) = v25;
        v15 = v36;
      }

      while (v36);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v28;
        v7 = v34;
        goto LABEL_18;
      }

      v19 = *(v29 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_100046E6C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    sub_100009FF0(0, &qword_100067920, REMObjectID_ptr);
    sub_100048498(&qword_100068B00, &qword_100067920, REMObjectID_ptr);
    result = sub_10004C820();
    v11 = result;
    if (v2)
    {
      break;
    }

    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }

LABEL_7:
    v7 = 0;
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = sub_10004CC90();
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      sub_100045A40(&v10, v8);

      ++v7;
      if (v9 == v5)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    sub_10004CD50();
  }

  v6 = result;
  v5 = sub_10004CD50();
  result = v6;
  if (v5)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100046FC4()
{
  v1 = v0;
  v2 = sub_100003150(&qword_100068A08, &qword_100054118);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v56 = &v48 - v5;
  v6 = sub_100003150(&qword_100068A10, &qword_100054120);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6, v8);
  v10 = &v48 - v9;
  v11 = sub_10004A960();
  v53 = *(v11 - 8);
  v12 = *(v53 + 64);
  __chkstk_darwin(v11, v13);
  v55 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_10004AD30();
  v54 = *(v57 - 8);
  v15 = *(v54 + 64);
  __chkstk_darwin(v57, v16);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100003150(&qword_100067F70, &unk_1000535F0);
  v58 = *(v19 - 8);
  v59 = v19;
  v20 = *(v58 + 64);
  __chkstk_darwin(v19, v21);
  v61 = &v48 - v22;
  v23 = sub_10004A2E0();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23, v26);
  v28 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  v60 = result;
  if (result)
  {
    v50 = v18;
    v51 = v6;
    v52 = v11;
    v30 = *(v1 + 120);
    sub_10004A020();
    sub_10004A570();

    sub_10004A2D0();
    v31 = (*(v24 + 88))(v28, v23);
    if (v31 == enum case for TTRSECreateRemindersTreeViewModelUpdateContext.ViewUpdateType.incremental(_:))
    {
      (*(v24 + 96))(v28, v23);
      v32 = *v28;
    }

    else if (v31 != enum case for TTRSECreateRemindersTreeViewModelUpdateContext.ViewUpdateType.reload(_:))
    {
      result = sub_10004CDC0();
      __break(1u);
      return result;
    }

    v33 = v56;
    v34 = *(v1 + 128);
    sub_10004BF80();
    type metadata accessor for TTRISECreateRemindersViewController();
    sub_10002394C();
    sub_10004A2F0();
    v35 = sub_100003150(&qword_100068A18, &unk_100054128);
    if ((*(*(v35 - 8) + 48))(v33, 1, v35) == 1)
    {
      sub_10000A138(v33, &qword_100068A08, &qword_100054118);
    }

    else
    {
      v49 = *(v35 + 48);
      v37 = v53;
      v36 = v54;
      v56 = v30;
      v38 = v51;
      v39 = *(v51 + 48);
      v40 = *(v54 + 32);
      v41 = v57;
      v40(v10, v33, v57);
      v42 = *(v37 + 32);
      v43 = &v10[v39];
      v44 = v52;
      v42(v43, v33 + v49, v52);
      v51 = *(v38 + 48);
      v45 = v50;
      v40(v50, v10, v41);
      v46 = v55;
      v42(v55, &v10[v51], v44);
      sub_100022D84(v45, v46);
      (*(v37 + 8))(v46, v44);
      (*(v36 + 8))(v45, v57);
    }

    sub_10004A020();
    v47.value = 2;
    sub_10004A550(v47);
    swift_unknownObjectRelease();

    return (*(v58 + 8))(v61, v59);
  }

  return result;
}

uint64_t sub_100047564()
{
  v1 = sub_100003150(&qword_100067F70, &unk_1000535F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v9 - v5;
  v7 = *(v0 + 128);
  sub_10004BF70();
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for TTRISECreateRemindersViewController();
    sub_10002394C();
    swift_unknownObjectRelease();
  }

  return (*(v2 + 8))(v6, v1);
}

uint64_t sub_100047694(void *a1)
{
  v3 = sub_100003150(&qword_100067630, &qword_100052960);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v20 - v6;
  v8 = sub_100003150(&qword_100067FA0, &qword_100053B50);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v20 - v11;
  v13 = *(v1 + 136);
  v14 = a1[4];
  sub_1000032DC(a1, a1[3]);
  sub_10004AEE0();
  v15 = sub_10004AD30();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v7, 1, v15) == 1)
  {
    sub_10000A138(v7, &qword_100067630, &qword_100052960);
    v17 = 1;
  }

  else
  {
    sub_10004ACF0();
    (*(v16 + 8))(v7, v15);
    v17 = 0;
  }

  v18 = sub_10004AD40();
  (*(*(v18 - 8) + 56))(v12, v17, 1, v18);
  return sub_10004BF00();
}

void *sub_10004787C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = [result viewIfLoaded];
    if (v1)
    {
      v2 = v1;
      sub_10004CA20();
      v4 = v3;

      swift_unknownObjectRelease();
      return v4;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000478FC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004793C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000B5FC;

  return sub_100040F54(a1, v4, v5, v6);
}

uint64_t sub_100047A1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002A6A0;

  return sub_100043C58(a1, v4, v5, v7, v6);
}

uint64_t sub_100047ADC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002A6A0;

  return sub_1000458B8(a1, v5);
}

uint64_t sub_100047BDC(uint64_t a1)
{
  v4 = *(sub_10004AD30() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002A6A0;

  return sub_1000430AC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100047CF0(uint64_t a1)
{
  v4 = *(sub_10004AD30() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002A6A0;

  return sub_100042594(a1, v6, v7, v8, v1 + v5);
}

id sub_100047E1C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if ([result isViewLoaded])
    {
      v2 = [v1 collectionView];
      swift_unknownObjectRelease();
      return v2;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

void sub_100047E90(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10004AD30();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v19 = [objc_allocWithZone(sub_10004B2F0()) init];
  v8 = sub_10004B2D0();
  if (v8)
  {
    v9 = v8;
    sub_100038F00(a1, v20);
    if (v20[0])
    {
      sub_10000A138(v20, &qword_1000689C8, &unk_1000540E0);
      v10 = swift_allocObject();
      swift_weakInit();
      (*(v5 + 16))(v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16, a1, v4);
      v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
      v12 = swift_allocObject();
      *(v12 + 16) = v10;
      (*(v5 + 32))(v12 + v11, v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16, v4);
      type metadata accessor for AttachmentImportingControllerDelegate();
      v13 = swift_allocObject();
      *(v13 + 16) = sub_1000481C4;
      *(v13 + 24) = v12;
      v20[3] = sub_100003150(&qword_100068A38, &qword_1000541A8);
      v20[0] = v19;
      v20[1] = v13;
      v14 = OBJC_IVAR____TtC25RemindersSharingExtension30TTRISECreateRemindersPresenter_currentEventHandler;
      swift_beginAccess();
      v15 = v19;

      sub_1000455EC(v20, v2 + v14);
      swift_endAccess();
      sub_10004565C(&qword_100068A40, type metadata accessor for AttachmentImportingControllerDelegate);

      sub_10004B2E0();
      v16 = *sub_1000032DC((v2 + 64), *(v2 + 88));
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v18 = Strong;
        [Strong presentViewController:v9 animated:1 completion:0];
      }
    }

    else
    {

      sub_10000A138(v20, &qword_1000689C8, &unk_1000540E0);
    }
  }

  else
  {
  }
}

uint64_t sub_1000481DC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100048230(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_10004AD30() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_10003E82C(a1, a2, v6, v7);
}

uint64_t sub_1000482D4(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(sub_10004AD30() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_100048384(uint64_t a1)
{
  v3 = *(sub_10004AD30() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_10003EFA8(a1, v4, v5);
}

uint64_t sub_100048410(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_10004AD30() - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t sub_100048498(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100009FF0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10004852C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10003F88C();
}

uint64_t sub_10004854C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_10004AD30() - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t sub_1000485D4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10004861C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002A6A0;

  return sub_10003F294(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000486E4()
{
  v1 = sub_10004AD30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000487B0(uint64_t a1)
{
  v4 = *(sub_10004AD30() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002A6A0;

  return sub_10003EC9C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1000488A8()
{
  v1 = sub_10004AD30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100048984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *(sub_10004AD30() - 8);
  v9 = *(v4 + 16);
  v10 = v4 + ((*(v8 + 80) + 24) & ~*(v8 + 80));

  return a4(a1, a2, a3, v9, v10);
}

uint64_t sub_100048A24(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + 16);

  a1(*(v2 + 24));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_100048AAC(void (*a1)(void), void (*a2)(void))
{
  v5 = v2[2];
  swift_unknownObjectRelease();
  a1(v2[4]);
  a2(v2[5]);

  return _swift_deallocObject(v2, 48, 7);
}

uint64_t sub_100048B14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000B5FC;

  return sub_100035C20(a1, v4, v5, v7, v6);
}

uint64_t sub_100048C54()
{
  v1 = sub_10004AB10();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_10004AD30();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100048DA4(uint64_t a1, uint64_t a2, void (*a3)(BOOL), uint64_t a4)
{
  v9 = *(sub_10004AB10() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_10004AD30() - 8);
  v13 = *(v4 + 16);
  v14 = v4 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  return sub_100039A50(a1, a2, a3, a4, v13, v4 + v10, v14);
}

uint64_t sub_100048EAC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100048EE4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002A6A0;

  return sub_1000456C8(a1, v5);
}

uint64_t sub_10004903C()
{
  v4[3] = swift_getObjectType();
  v4[0] = v0;
  v1 = v0;
  sub_10004CE80();
  sub_10004CC20();
  sub_10004C850();
  sub_1000496B0(v3);
  return sub_100049704(v4);
}

id sub_1000490D0(void *a1)
{
  v2 = v1;
  v4 = sub_10004A380();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10004CE80();
  v19 = v10;
  sub_10004CC20();
  sub_10004C840();
  sub_1000496B0(v20);
  v11 = v18;
  if (v18)
  {
    v12 = *(v5 + 16);
    v12(v9, v18 + OBJC_IVAR____TtC25RemindersSharingExtension29TTRISECreateRemindersDragItem_itemID, v4);
    v13 = objc_allocWithZone(v2);
    v12(&v13[OBJC_IVAR____TtC25RemindersSharingExtension29TTRISECreateRemindersDragItem_itemID], v9, v4);
    v17.receiver = v13;
    v17.super_class = v2;
    v14 = objc_msgSendSuper2(&v17, "init");

    (*(v5 + 8))(v9, v4);
  }

  else
  {

    return 0;
  }

  return v14;
}

void sub_10004927C()
{
  sub_10004CC70(23);
  v0 = sub_10004AAA0();
  v2 = v1;

  v3._object = 0x800000010004FCC0;
  v3._countAndFlagsBits = 0xD000000000000015;
  sub_10004C6D0(v3);
  qword_100068B20 = v0;
  *algn_100068B28 = v2;
}

uint64_t type metadata accessor for TTRISECreateRemindersDragItem()
{
  result = qword_100068B58;
  if (!qword_100068B58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000493F8()
{
  result = sub_10004A380();
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

Class sub_100049570()
{
  sub_100003150(&unk_100068C30, &qword_100053BB8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000528D0;
  if (qword_100066F48 != -1)
  {
    swift_once();
  }

  v1 = *algn_100068B28;
  *(v0 + 32) = qword_100068B20;
  *(v0 + 40) = v1;

  v2.super.isa = sub_10004C710().super.isa;

  return v2.super.isa;
}

uint64_t sub_100049704(uint64_t a1)
{
  v2 = sub_100003150(&qword_1000680A8, &unk_100053710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004976C(uint64_t a1)
{
  v2 = objc_opt_self();
  sub_10004CC70(28);

  if (qword_100066F48 != -1)
  {
    swift_once();
  }

  sub_10004C6D0(xmmword_100068B20);
  v3 = sub_10004C680();

  v4 = [v2 internalErrorWithDebugDescription:{v3, 0xD00000000000001ALL, 0x800000010004FCE0}];

  v5 = sub_100049DD0();
  (*(a1 + 16))(a1, 0, v5);

  return 0;
}

uint64_t sub_10004989C@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v16[0] = a1;
  v16[1] = a2;
  v2 = sub_10004A3B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004BB40();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_10004BB30();
  v19[3] = v8;
  v19[4] = &protocol witness table for TTRReminderTitleAttributesNoOpInteractor;
  v18 = 0;
  v19[0] = v11;
  memset(v17, 0, sizeof(v17));
  (*(v3 + 104))(v7, enum case for TTRIReminderCellModuleOwnerModuleType.extensionCreateReminder(_:), v2);
  v12 = sub_10004AF50();
  v14 = v13;
  (*(v3 + 8))(v7, v2);
  sub_100049D14(v17);
  sub_10000343C(v19);
  *&v17[0] = v12;
  *(&v17[0] + 1) = v14;
  sub_100015848(v20, v19);
  sub_100003150(&qword_100068018, &qword_100053698);
  sub_10004AEF0();
  return sub_10000343C(v20);
}

uint64_t sub_100049A80()
{
  v0 = sub_10004A3B0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v1 + 104))(v5, enum case for TTRIReminderCellModuleOwnerModuleType.extensionCreateReminder(_:), v0);
  v6 = sub_10004AF40();
  v8 = v7;
  (*(v1 + 8))(v5, v0);
  v11 = v6;
  v12 = v8;
  sub_100015848(v13, v10);
  sub_100003150(&qword_100068000, &unk_100053680);
  sub_10004AEF0();
  return sub_10000343C(v13);
}

id TTRIExtensionCreateReminderAssembly.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRIExtensionCreateReminderAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIExtensionCreateReminderAssembly();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRIExtensionCreateReminderAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIExtensionCreateReminderAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100049D14(uint64_t a1)
{
  v2 = sub_100003150(&qword_100068010, &qword_100053690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}