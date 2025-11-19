unint64_t sub_10002B0A8(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_10000D850(v1, v2, va);
}

uint64_t sub_10002B184(uint64_t a1, char a2)
{
  if (!*(a1 + 16))
  {
    return 1;
  }

  v2 = sub_100037E80(a2);
  if ((v3 & 1) != 0 && (v4 = sub_100039858(v2), sub_100008DD8(v4, v7), sub_10003971C()))
  {
    return v6;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_10002B1FC(uint64_t a1, char a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_100037E80(a2);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = sub_100039858(v2);
  sub_100008DD8(v4, v7);
  result = sub_10003971C();
  if (result)
  {
    return v6;
  }

  return result;
}

uint64_t sub_10002B274(char a1)
{
  switch(a1)
  {
    case 3:
    case 4:
    case 5:
    case 6:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
      goto LABEL_3;
    case 7:
      sub_100005890(&qword_10007FB48);
LABEL_3:
      if ((swift_dynamicCast() & 1) == 0)
      {
        return 0;
      }

      return v2;
    default:
      return 0;
  }
}

uint64_t sub_10002B3D4(char a1)
{
  result = 0;
  switch(a1)
  {
    case 5:
      result = 0x4031000000000000;
      break;
    case 15:
      result = 0x3FFC71C71C71C71CLL;
      break;
    case 17:
      result = 0x4050000000000000;
      break;
    case 18:
      result = 0x4048000000000000;
      break;
    case 19:
      result = 0x4036000000000000;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int sub_10002B4A4(uint64_t a1, char a2)
{
  sub_1000582B0();
  sub_100006F48(a2);
  sub_100057AB0();

  return sub_1000582F0();
}

Swift::Int sub_10002B504(uint64_t a1, Swift::UInt a2)
{
  sub_1000582B0();
  sub_1000582C0(a2);
  return sub_1000582F0();
}

uint64_t sub_10002B548(uint64_t a1, uint64_t (*a2)(_OWORD *, uint64_t *))
{
  v3 = *(a1 + 128);
  v4 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v4;
  v5 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v5;
  v6 = *(a1 + 80);
  v9[4] = *(a1 + 64);
  v9[5] = v6;
  v7 = *(a1 + 112);
  v9[6] = *(a1 + 96);
  v9[7] = v7;
  v10 = v3;
  result = a2(v9, &v11);
  if (v2)
  {
    __break(1u);
  }

  return result;
}

void sub_10002B6A4(uint64_t a1, void *a2)
{
  v3 = *(v2 + OBJC_IVAR___DisplayMainViewController_sidebarController);
  if (v3)
  {
    v6[0] = a1;
    memset(&v6[1], 0, 24);
    v7 = 2;
    v4 = *(v2 + *a2);
    v5 = v3;
    sub_10001AFA0(v6, v4);
  }
}

void *sub_10002B764()
{
  v1 = *(v0 + OBJC_IVAR___DisplayMainViewController__customUndoManager);
  v2 = v1;
  return v1;
}

void *sub_10002B7F8()
{
  v1 = *(*(v0 + OBJC_IVAR___DisplayMainViewController_displayViewController) + OBJC_IVAR___DisplayViewController_session);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_request);
  v3 = v2;
  return v2;
}

uint64_t sub_10002B888()
{
  v1 = OBJC_IVAR___DisplayMainViewController_displaySettings;
  sub_100019514();
  swift_beginAccess();
  if (*(*(v0 + v1) + 16))
  {

    v2 = sub_100037E80(3);
    if (v3)
    {
      v4 = sub_100039858(v2);
      sub_100008DD8(v4, v10);

      if ((sub_10003987C() & 1) != 0 && (v9 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
    }
  }

  v6 = 4;
  v7 = sub_10002B1FC(v5, 4);

  if (v7)
  {
    return 0;
  }

  return v6;
}

uint64_t sub_10002B99C()
{
  v1 = OBJC_IVAR___DisplayMainViewController_displaySettings;
  sub_100019514();
  swift_beginAccess();
  if (!*(*(v0 + v1) + 16))
  {
    goto LABEL_7;
  }

  v2 = sub_100037E80(3);
  if ((v3 & 1) == 0)
  {

LABEL_7:

    v5 = sub_10002B1FC(v6, 4);

    return v5 & 1;
  }

  v4 = sub_100039858(v2);
  sub_100008DD8(v4, v9);

  if (sub_10003987C() & 1) == 0 || (v8)
  {
    goto LABEL_7;
  }

  v5 = 1;
  return v5 & 1;
}

id sub_10002BA74()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  sub_1000399D8();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10002BC74()
{
  v66.receiver = v0;
  v66.super_class = type metadata accessor for DisplayMainViewController(0);
  objc_msgSendSuper2(&v66, "loadView");
  v1 = OBJC_IVAR___DisplayMainViewController_displayViewController;
  v2 = *&v0[OBJC_IVAR___DisplayMainViewController_displayViewController];
  v3 = &v2[OBJC_IVAR___DisplayViewController_delegate];
  *v3 = v0;
  *(v3 + 1) = &off_100073918;
  v4 = v2;
  v5 = v0;

  swift_unknownObjectRelease();
  result = [*&v0[v1] view];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = result;
  result = [v5 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = result;
  v9 = OBJC_IVAR___DisplayMainViewController_displayContainer;
  [*&v5[OBJC_IVAR___DisplayMainViewController_displayContainer] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v65 = v1;
  [v5 addChildViewController:*&v0[v1]];
  result = [v5 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = result;
  [result bounds];
  sub_1000395F4();

  v11 = sub_100039608();
  [v12 v13];
  [*&v5[v9] addSubview:v7];
  [v8 addSubview:*&v5[v9]];
  v14 = [*&v5[v9] layer];
  [v14 setMasksToBounds:1];

  v15 = [*&v5[v9] leftAnchor];
  v16 = [v8 leftAnchor];
  v17 = sub_1000398FC(v16, "constraintEqualToAnchor:");

  v18 = OBJC_IVAR___DisplayMainViewController_displayLeftConstraint;
  v19 = *&v5[OBJC_IVAR___DisplayMainViewController_displayLeftConstraint];
  *&v5[OBJC_IVAR___DisplayMainViewController_displayLeftConstraint] = v17;

  v20 = [*&v5[v9] rightAnchor];
  v21 = [v8 rightAnchor];
  v22 = sub_1000398FC(v21, "constraintEqualToAnchor:");

  v23 = OBJC_IVAR___DisplayMainViewController_displayRightConstraint;
  v24 = *&v5[OBJC_IVAR___DisplayMainViewController_displayRightConstraint];
  *&v5[OBJC_IVAR___DisplayMainViewController_displayRightConstraint] = v22;

  *(*&v5[OBJC_IVAR___DisplayMainViewController__customUndoManager] + OBJC_IVAR____TtCC17ContinuityDisplay25DisplayMainViewController18DisplayUndoManager_delegate + 8) = &off_1000739B0;
  swift_unknownObjectWeakAssign();
  v25 = [objc_opt_self() currentDevice];
  [v25 setBatteryMonitoringEnabled:1];

  sub_100005890(&unk_10007F1B0);
  result = swift_allocObject();
  *(result + 1) = xmmword_10005C000;
  v26 = *&v5[v18];
  if (!v26)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v27 = result;
  v64 = v7;
  *(result + 4) = v26;
  v28 = *&v5[v23];
  if (!v28)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v63._object = objc_opt_self();
  v27[5] = v28;
  v29 = *&v5[v9];
  v30 = v26;
  v31 = v28;
  v32 = [v29 topAnchor];
  v33 = v8;
  v34 = [v8 topAnchor];
  v35 = sub_1000398C8();

  v27[6] = v35;
  v36 = [*&v5[v9] bottomAnchor];
  v37 = [v33 bottomAnchor];
  v38 = sub_1000398C8();

  v27[7] = v38;
  v39 = [v64 topAnchor];
  v40 = [sub_100039960() topAnchor];
  v41 = [v36 constraintEqualToAnchor:v40];

  v27[8] = v41;
  v42 = [v64 bottomAnchor];
  v43 = [sub_100039960() bottomAnchor];
  v44 = sub_1000398C8();

  v27[9] = v44;
  v45 = [v64 leftAnchor];
  v46 = [sub_100039960() leftAnchor];
  v47 = sub_100039980(v46);

  v27[10] = v47;
  v48 = [v64 rightAnchor];
  v49 = [sub_100039960() rightAnchor];
  v50 = sub_100039980(v49);

  v27[11] = v50;
  sub_100005A1C(0, &qword_10007FB10);
  isa = sub_100057BD0().super.isa;

  [v63._object activateConstraints:isa];

  [*&v0[v65] didMoveToParentViewController:v5];
  if (sub_100038CE4())
  {
    sub_10002C36C();
  }

  v52 = [objc_opt_self() defaultCenter];
  v53 = [v52 addObserver:v5 selector:"_batteryStateChangedWithNote:" name:UIDeviceBatteryStateDidChangeNotification object:0];
  v56 = sub_1000399A0(v53, v54, v55, "_keyboardFrameChangedWithNote:", UIKeyboardDidChangeFrameNotification);
  sub_1000399A0(v56, v57, v58, "_displayModeChanged:", UIScreenReferenceDisplayModeStatusDidChangeNotification);
  v59 = [objc_opt_self() mainBundle];
  v63._countAndFlagsBits = 0x800000010005FCB0;
  sub_100019514();
  sub_100039934();
  v60 = sub_100057650(v68, v69, v67, v70, v63);
  v62 = v61;

  sub_100032AF0(v60, v62, 0, 0xE000000000000000, 0, 0);
}

void sub_10002C36C()
{
  v1 = v0;
  v15 = OBJC_IVAR___DisplayMainViewController_displayContainer;
  v2 = OBJC_IVAR___DisplayMainViewController_corners;
  v3 = type metadata accessor for RoundedCornerView();
  v4 = 0;
  do
  {
    v5 = &off_100072280 + v4++;
    v6 = v5[32];
    v7 = objc_allocWithZone(v3);
    v8 = sub_10003C8B0(v6);
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [v8 widthAnchor];
    v10 = [v9 constraintEqualToConstant:16.0];

    [v10 setActive:1];
    v11 = [v8 heightAnchor];
    v12 = [v11 constraintEqualToConstant:16.0];

    [v12 setActive:1];
    [v8 setHidden:1];

    [*(v1 + v15) addSubview:v8];
    sub_100035A18(v8);
    swift_beginAccess();
    v13 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v1 + v2);
    sub_100009310(v13, v6, isUniquelyReferenced_nonNull_native);
    *(v1 + v2) = v16;
    swift_endAccess();
  }

  while (v4 != 4);
}

id sub_10002C59C()
{
  v5 = v0;
  v6 = sub_1000575D0();
  if (!v6)
  {
    v18 = 0u;
    v19 = 0u;
    goto LABEL_8;
  }

  v7 = v6;
  sub_100057A50();
  sub_100058030();
  sub_10000EAF0(v16, v7, &v18);

  sub_10000E840(v16);
  if (!*(&v19 + 1))
  {
LABEL_8:
    sub_1000392FC(&v18, &unk_10007EEE0);
    goto LABEL_9;
  }

  sub_100005A1C(0, &qword_10007FB28);
  if (sub_10003987C())
  {
    v8 = v16[0];
    [v16[0] CGRectValue];
    sub_1000395F4();
    if (CGRectGetWidth(v20) <= 0.0)
    {
    }

    else
    {
      v21.origin.x = sub_100039608();
      Height = CGRectGetHeight(v21);

      if (Height > 0.0)
      {
        v10 = 0;
        goto LABEL_10;
      }
    }
  }

LABEL_9:
  v10 = 1;
  v1 = 0;
  v2 = 0;
  v3 = 0;
  v4 = 0;
LABEL_10:
  v16[0] = v1;
  v16[1] = v2;
  v16[2] = v3;
  v16[3] = v4;
  v17 = v10;

  sub_100003970(v16);

  result = *(v5 + OBJC_IVAR___DisplayMainViewController_keyboardDebugLayer);
  if (result)
  {
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    if ((v10 & 1) == 0)
    {
      v12 = sub_100039608();
    }

    return [result setFrame:{v12, v13, v14, v15}];
  }

  return result;
}

void sub_10002C874()
{
  sub_100019748();
  v1 = v0;
  v3 = v2;
  v4 = sub_1000575E0();
  sub_1000068E4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000068D4();
  v10 = v9 - v8;
  v11 = *(v0 + OBJC_IVAR___DisplayMainViewController_displayViewController);
  sub_1000575C0();
  if (v47[3])
  {
    sub_100005A1C(0, &qword_10007FAF0);
    if (sub_10003987C())
    {
      v12 = v46;
      sub_100005A1C(0, &qword_10007FAF8);
      v13 = [v11 _screen];
      v14 = sub_100057EF0();

      if (v14)
      {
        v15 = OBJC_IVAR___DisplayMainViewController_referenceDisplayModeStatus;
        v16 = *(v1 + OBJC_IVAR___DisplayMainViewController_referenceDisplayModeStatus);
        v45 = [v46 referenceDisplayModeStatus];
        *(v1 + v15) = v45;
        if (qword_10007E920 != -1)
        {
          sub_1000395BC();
        }

        v17 = sub_100057880();
        sub_1000396C4(v17, qword_10007F7A0);
        (*(v6 + 16))(v10, v3, v4);
        v18 = sub_100057850();
        v19 = sub_100057D80();
        if (sub_1000397F4(v19))
        {
          v44 = v16;
          v20 = swift_slowAlloc();
          v47[0] = swift_slowAlloc();
          *v20 = 136446722;
          v43 = v18;
          v21 = sub_1000575B0();
          v22 = sub_100057A50();
          v24 = v23;

          (*(v6 + 8))(v10, v4);
          v25 = v22;
          v12 = v46;
          v26 = sub_10000D850(v25, v24, v47);

          *(v20 + 4) = v26;
          *(v20 + 12) = 2082;
          v27 = UIScreenReferenceDisplayModeStatus.description.getter(v44);
          v29 = sub_10000D850(v27, v28, v47);

          *(v20 + 14) = v29;
          *(v20 + 22) = 2082;
          v30 = v45;
          v31 = UIScreenReferenceDisplayModeStatus.description.getter(v45);
          v33 = sub_10000D850(v31, v32, v47);

          *(v20 + 24) = v33;
          _os_log_impl(&_mh_execute_header, v43, v19, "%{public}s: %{public}s -> %{public}s", v20, 0x20u);
          swift_arrayDestroy();
          sub_1000396A0();
          v16 = v44;
          sub_10002A620();
        }

        else
        {

          (*(v6 + 8))(v10, v4);
          v30 = v45;
        }

        if ((v16 != 3) != (v30 == 3))
        {

          goto LABEL_16;
        }

        v34 = *&v11[OBJC_IVAR___DisplayViewController_session];
        if (v34)
        {
          v35 = *(v34 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_request);
          sub_100005A1C(0, &qword_10007F000);
          v36 = sub_100057A50();
          v38 = v37;
          v39 = v35;
          v40 = sub_100018664(v36, v38, -504, 0, 0, 0);
          __chkstk_darwin(v40);
          sub_10002AC8C(sub_10002CD68, 0, sub_10000DF6C);
          v41 = v40;
          v42 = sub_100057660();

          [v39 setError:v42];
          sub_10002CD84();

          goto LABEL_16;
        }
      }
    }

    goto LABEL_16;
  }

  sub_1000392FC(v47, &unk_10007EEE0);
LABEL_16:
  sub_100019718();
}

void sub_10002CD84()
{
  sub_100019748();
  v1 = v0;
  v3 = v2;
  v66 = v4;
  v5 = sub_100005890(&unk_10007F190);
  v6 = sub_1000271E8(v5);
  v62 = v7;
  __chkstk_darwin(v6);
  sub_10003996C();
  v63 = v8;
  v61 = v9;
  __chkstk_darwin(v10);
  v12 = &v57 - v11;
  v13 = sub_100057880();
  sub_1000068E4();
  v65 = v14;
  __chkstk_darwin(v15);
  sub_10003996C();
  v59 = v17;
  v60 = v16;
  __chkstk_darwin(v18);
  v20 = &v57 - v19;
  v21 = 1;
  *(v1 + OBJC_IVAR___DisplayMainViewController_reconfiguring) = 1;
  switch(v3)
  {
    case 1:
      sub_10003961C();
      v22 = 0;
      goto LABEL_5;
    case 2:
      sub_10003961C();
      v23 = 1;
      goto LABEL_7;
    case 3:
      sub_10003961C();
      v23 = 0;
LABEL_7:
      sub_1000085AC(v23, 10);
      swift_endAccess();
      goto LABEL_8;
    case 4:
LABEL_8:
      v21 = 0;
      break;
    case 5:
      break;
    default:
      sub_10003961C();
      v22 = 1;
LABEL_5:
      sub_1000085AC(v22, 3);
      swift_endAccess();
      break;
  }

  sub_100034420();
  v64 = v20;
  if (v24)
  {
    v26 = v24;
    v27 = v25;
    v28 = v1 + OBJC_IVAR___DisplayMainViewController_snapshot;
    sub_100027274();
    v29 = *v28;
    v30 = *(v28 + 8);
    *v28 = v26;
    *(v28 + 8) = v27;
    *(v28 + 16) = 0;
    v31 = v26;
    v32 = v27;
    sub_1000392BC(v29, v30);
    sub_10002EC5C(v21, *(v1 + OBJC_IVAR___DisplayMainViewController_configurationAnimationDuration));

    v20 = v64;
  }

  if (qword_10007E920 != -1)
  {
    sub_1000395BC();
  }

  v33 = sub_100026CEC(v13, qword_10007F7A0);
  v34 = *(v65 + 16);
  v34(v20, v33, v13);
  v35 = *&v66[OBJC_IVAR___DisplayViewController_session];
  if (v35)
  {
    v36 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_uuid;
    sub_100019514();
    swift_beginAccess();
    v37 = sub_1000577F0();
    sub_10003965C();
    (*(v38 + 16))(v12, v35 + v36, v37);
    v39 = v12;
    v40 = 0;
    v41 = 1;
    v42 = v37;
  }

  else
  {
    sub_1000577F0();
    sub_100039940();
  }

  sub_10001918C(v39, v40, v41, v42);
  sub_100005A1C(0, &qword_10007EEC0);
  v58 = sub_100057DC0();
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v57 = v12;
  v44 = v63;
  sub_100038FD0(v12, v63, &unk_10007F190);
  v45 = v60;
  v34(v60, v20, v13);
  v46 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v62 = v1;
  v47 = (v61 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = v65;
  v49 = (*(v65 + 80) + v47 + 8) & ~*(v65 + 80);
  v50 = (v59 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  sub_100026E2C(v44, v51 + v46);
  v52 = v66;
  *(v51 + v47) = v66;
  (*(v48 + 32))(v51 + v49, v45, v13);
  *(v51 + v50) = v43;
  v53 = v52;

  v54 = v58;
  OS_dispatch_queue.once(_:closure:)();
  v56 = v55;

  sub_1000392FC(v57, &unk_10007F190);
  (*(v48 + 8))(v64, v13);

  *(v62 + OBJC_IVAR___DisplayMainViewController_reconfigureWatchdog) = v56;
  swift_unknownObjectRelease();
  sub_100019718();
}

uint64_t sub_10002D2E0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = sub_1000575E0();
  sub_1000068E4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000068D4();
  v12 = v11 - v10;
  sub_1000575A0();
  v13 = a1;
  a4(v12);

  return (*(v8 + 8))(v12, v6);
}

void sub_10002D3BC()
{
  sub_100019748();
  v1 = v0;
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 batteryState];

  v4 = *&v1[OBJC_IVAR___DisplayMainViewController_presentedAlert];
  v5 = OBJC_IVAR___DisplayMainViewController_displayShouldSleep;
  v6 = v1[OBJC_IVAR___DisplayMainViewController_displayShouldSleep] | (v4 != 0);
  LODWORD(v2) = v1[OBJC_IVAR___DisplayMainViewController_displayShouldSleep] & 1 | (v4 != 0);
  if (v2 == [v1 allowsDisplaySleep])
  {
    sub_100019718();
  }

  else
  {
    if (qword_10007E920 != -1)
    {
      sub_1000395BC();
    }

    v7 = sub_100057880();
    sub_1000396C4(v7, qword_10007F7A0);
    v8 = v1;
    v9 = sub_100057850();
    v10 = sub_100057D80();
    if (sub_10003975C(v10))
    {
      v11 = v4 == 0;
      v12 = swift_slowAlloc();
      *v12 = 67109888;
      *(v12 + 4) = v6 & 1;
      *(v12 + 8) = 1024;
      *(v12 + 10) = v1[v5];

      *(v12 + 14) = 1024;
      *(v12 + 16) = v3 != 1;
      *(v12 + 20) = 1024;
      *(v12 + 22) = v11;
      sub_10003963C();
      _os_log_impl(v13, v14, v15, v16, v17, 0x1Au);
      sub_10002A620();
    }

    else
    {

      v9 = v8;
    }

    sub_100019718();

    [v18 v19];
  }
}

uint64_t sub_10002D570(char a1)
{
  v2 = v1;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for DisplayMainViewController(0);
  objc_msgSendSuper2(&v10, "viewDidAppear:", a1 & 1);
  [v2 becomeFirstResponder];
  result = UIApp;
  if (UIApp)
  {
    static PencilReport.setInterfaceOrientation(_:)([UIApp statusBarOrientation]);
    if (qword_10007E920 != -1)
    {
      sub_1000395BC();
    }

    v5 = sub_100057880();
    sub_1000396C4(v5, qword_10007F7A0);
    v6 = sub_100057850();
    v7 = sub_100057D80();
    if (sub_1000397F4(v7))
    {
      *sub_100039864() = 0;
      sub_10003973C(&_mh_execute_header, v8, v9, "Taking assertion to disable Universal Control");
      sub_1000396A0();
    }

    sub_100057830();
    sub_100057820();
    sub_100057810(NSDefaultRunLoopMode, 2.0);
    sub_100057800();
    sub_100019828();

    *&v2[OBJC_IVAR___DisplayMainViewController_disableUniversalControlAssertion] = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10002D714(char a1)
{
  v2 = v1;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for DisplayMainViewController(0);
  objc_msgSendSuper2(&v10, "viewWillDisappear:", a1 & 1);
  if (qword_10007E920 != -1)
  {
    sub_1000395BC();
  }

  v4 = sub_100057880();
  sub_1000396C4(v4, qword_10007F7A0);
  v5 = sub_100057850();
  v6 = sub_100057D80();
  if (sub_1000397F4(v6))
  {
    *sub_100039864() = 0;
    sub_10003973C(&_mh_execute_header, v7, v8, "Dropping assertion to disable Universal Control");
    sub_1000396A0();
  }

  *&v2[OBJC_IVAR___DisplayMainViewController_disableUniversalControlAssertion] = 0;
}

unint64_t *sub_10002D844(uint64_t a1, double a2, double a3)
{
  sub_1000399D8();
  objc_msgSendSuper2(&v8, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  return static PencilReport.setInterfaceOrientation(_:)([v3 _rotatingToInterfaceOrientation]);
}

void sub_10002D930(void *a1)
{
  v2 = v1;
  sub_1000577F0();
  sub_1000068E4();
  __chkstk_darwin(v4);
  sub_1000068D4();
  v5 = [a1 uuid];
  sub_1000577B0();

  sub_1000577A0();
  v6 = sub_100039914();
  v7(v6);
  v8 = sub_100018A40(v5);

  if (qword_10007E920 != -1)
  {
    sub_1000395BC();
  }

  v9 = sub_100057880();
  sub_1000396C4(v9, qword_10007F7A0);
  v10 = sub_100057850();
  v11 = sub_100057D80();
  if (sub_10003975C(v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v8;
    sub_10003963C();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    sub_10002A620();
  }

  v18 = *(v2 + OBJC_IVAR___DisplayMainViewController_displayViewController);
  sub_100023DA0(a1);
}

void sub_10002DB30(void *a1)
{
  v2 = v1;
  sub_1000577F0();
  sub_1000068E4();
  __chkstk_darwin(v4);
  sub_1000068D4();
  v5 = [a1 uuid];
  sub_1000577B0();

  sub_1000577A0();
  v6 = sub_100039914();
  v7(v6);
  v8 = sub_100018A40(v5);

  v9 = [a1 error];
  if (v9)
  {
    v10 = v9;
    if (qword_10007E920 != -1)
    {
      sub_1000395BC();
    }

    v11 = sub_100057880();
    v12 = sub_100026CEC(v11, qword_10007F7A0);
    __chkstk_darwin(v12);
    *(&v28 - 2) = v10;
    sub_10002A9AC(sub_10000DEF0);
  }

  else
  {
    if (qword_10007E920 != -1)
    {
      sub_1000395BC();
    }

    v13 = sub_100057880();
    sub_1000396C4(v13, qword_10007F7A0);
    v14 = sub_100057850();
    v15 = sub_100057D80();
    if (sub_10003975C(v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = v8;
      sub_10003963C();
      _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
      sub_10002A620();
    }
  }

  v22 = [v2 request];
  if (v22)
  {
    v23 = v22;
    sub_100005A1C(0, &qword_10007F008);
    v24 = a1;
    v25 = sub_100057EF0();

    if (v25)
    {
      sub_10002E6F8();
      if ([v24 isCancelled])
      {
        [v2 completeRequest:{objc_msgSend(v2, "requestCompleted")}];
      }

      else
      {
        v26 = *&v2[OBJC_IVAR___DisplayMainViewController_displayViewController];
        v27 = [v24 error];
        sub_10002DE34(v26, v27);
      }
    }
  }
}

void sub_10002DE34(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *(a1 + OBJC_IVAR___DisplayViewController_session);
  if (v5 && (v6 = [*(v5 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_request) session]) != 0)
  {
    v7 = v6;
    v8 = [v6 dataLink];

    v9 = v8 != 8;
  }

  else
  {
    v9 = 1;
  }

  if (v3[OBJC_IVAR___DisplayMainViewController_reconfiguring] == 1)
  {
    if (!a2)
    {
      goto LABEL_14;
    }

    swift_getErrorValue();
    sub_10002728C(v73);
    if (v10)
    {
      sub_1000397A0();
      sub_10003549C(v11, v12, v13);
      return;
    }
  }

  else if (!a2)
  {
    goto LABEL_14;
  }

  swift_getErrorValue();
  sub_10002728C(v74);
  if (v14)
  {
    v15 = *&v3[OBJC_IVAR___DisplayMainViewController_presentedAlert];
    if (v15 && v15[OBJC_IVAR____TtC17ContinuityDisplay17DisplayModalAlert_reason] == 1)
    {
      *&v15[OBJC_IVAR____TtC17ContinuityDisplay17DisplayModalAlert_error] = a2;
      v16 = v15;
      swift_errorRetain();

      sub_100032C90();
      sub_1000397A0();
      sub_10003549C(v17, v18, v19);

      return;
    }

    v70._object = 0xD000000000000010;
    sub_1000397A0();
    sub_10003549C(v25, v26, v27);
    sub_100034420();
    v29 = v28;
    v31 = v30;
    v32 = &v3[OBJC_IVAR___DisplayMainViewController_snapshot];
    sub_100027274();
    v33 = *v32;
    v34 = *(v32 + 1);
    *v32 = v29;
    *(v32 + 1) = v31;
    v32[16] = 0;
    sub_1000392BC(v33, v34);
    v35 = sub_100057660();
    v36 = [v35 domain];
    v37 = sub_100057A50();
    v39 = v38;

    v40 = [v35 code];
    if (sub_100057A50() == v37 && v41 == v39)
    {
    }

    else
    {
      v43 = sub_100058230();

      if ((v43 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    if (v40 == -404)
    {

      goto LABEL_36;
    }

LABEL_28:
    if (sub_100057A50() == v37 && v44 == v39)
    {
    }

    else
    {
      v46 = sub_100058230();

      if ((v46 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    if (v40 != -204)
    {
LABEL_37:
      v56 = objc_opt_self();
      v57 = [v56 mainBundle];
      if (v9)
      {
        v70._countAndFlagsBits = 0x800000010005FC20;
        sub_1000395DC();
        v49 = sub_100057650(v81, v85, v77, v89, v70);
        v51 = v58;

        v52 = [v56 mainBundle];
        v72._countAndFlagsBits = 0x800000010005FC90;
        sub_1000395DC();
      }

      else
      {
        v70._countAndFlagsBits = 0x800000010005FCB0;
        sub_1000395DC();
        sub_100039934();
        v49 = sub_100057650(v82, v86, v78, v90, v70);
        v51 = v63;

        v52 = [v56 mainBundle];
        v72._countAndFlagsBits = 0x800000010005FCF0;
        sub_1000395DC();
        sub_100039934();
      }

      v53 = sub_100057650(v59, v60, v61, v62, v72);
      v55 = v64;
      goto LABEL_41;
    }

LABEL_36:
    v47 = objc_opt_self();
    v48 = [v47 mainBundle];
    v70._countAndFlagsBits = 0x800000010005FCB0;
    sub_1000395DC();
    sub_100039934();
    v49 = sub_100057650(v79, v83, v75, v87, v70);
    v51 = v50;

    v52 = [v47 mainBundle];
    v71._countAndFlagsBits = 0x800000010005FD30;
    sub_1000395DC();
    v53 = sub_100057650(v80, v84, v76, v88, v71);
    v55 = v54;
    a2 = 0;
LABEL_41:

    sub_100032AF0(v49, v51, v53, v55, 1, a2);

    v65 = OBJC_IVAR___DisplayMainViewController_displayViewController;
    v66 = *&v3[OBJC_IVAR___DisplayMainViewController_displayViewController];
    v67 = OBJC_IVAR___DisplayViewController_session;
    v68 = *(v66 + OBJC_IVAR___DisplayViewController_session);
    if (v68)
    {
      v69 = &v68[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_delegate];
      sub_100027274();
      *(v69 + 1) = 0;
      swift_unknownObjectWeakAssign();
      v66 = *&v3[v65];
      v67 = OBJC_IVAR___DisplayViewController_session;
      v68 = *(v66 + OBJC_IVAR___DisplayViewController_session);
    }

    *(v66 + v67) = 0;

    return;
  }

LABEL_14:
  sub_1000397A0();
  sub_10003549C(v20, v21, v22);
  v23 = [v3 request];
  if (v23)
  {
    v24 = v23;
    if (a2)
    {
      a2 = sub_100057660();
    }

    [v24 setError:a2];
  }

  [v3 completeRequest:0];
}

void sub_10002E594()
{
  if ((*(*&v0[OBJC_IVAR___DisplayMainViewController_displayViewController] + OBJC_IVAR___DisplayViewController_sessionConfiguring) & 1) == 0)
  {
    v1 = v0;
    v2 = OBJC_IVAR___DisplayMainViewController__viewUpdateTimer;
    if (*&v0[OBJC_IVAR___DisplayMainViewController__viewUpdateTimer])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      OS_dispatch_source_timer.reset(_:)(0.01);
    }

    else
    {
      sub_100005A1C(0, &qword_10007EEC0);
      v3 = sub_100057DC0();
      *(swift_allocObject() + 16) = v1;
      v4 = v1;
      OS_dispatch_queue.once(_:closure:)();
      v6 = v5;

      *&v1[v2] = v6;
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10002E6F8()
{
  v1 = v0;
  v2 = type metadata accessor for DisplayMainViewController.UsageSummary(0);
  sub_10003965C();
  __chkstk_darwin(v3);
  sub_1000068D4();
  v6 = v5 - v4;
  v7 = sub_100005890(&unk_10007FAE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v18[-v11];
  v13 = OBJC_IVAR___DisplayMainViewController_usageSummary;
  sub_100019514();
  swift_beginAccess();
  sub_100038FD0(v1 + v13, v12, &unk_10007FAE0);
  if (sub_100019110(v12, 1, v2))
  {
    sub_1000392FC(v12, &unk_10007FAE0);
  }

  else
  {
    sub_100038EB4(v12, v6);
    sub_1000392FC(v12, &unk_10007FAE0);
    sub_10002E8A8();
    sub_100038F18(v6);
  }

  sub_100039940();
  sub_10001918C(v14, v15, v16, v2);
  sub_10003980C();
  sub_100038E44(v9, v1 + v13);
  return swift_endAccess();
}

uint64_t sub_10002E8A8()
{
  mach_absolute_time();
  v1 = type metadata accessor for DisplayMainViewController.UsageSummary(0);
  HostTime.nanoseconds.getter();
  v2 = v0 + *(v1 + 28);
  v3 = *(v2 + 128);
  v4 = *(v2 + 16);
  v9[0] = *v2;
  v9[1] = v4;
  v5 = *(v2 + 48);
  v9[2] = *(v2 + 32);
  v9[3] = v5;
  v6 = *(v2 + 80);
  v9[4] = *(v2 + 64);
  v9[5] = v6;
  v7 = *(v2 + 112);
  v9[6] = *(v2 + 96);
  v9[7] = v7;
  v10 = v3;
  return sub_10002B548(v9, sub_100038F74);
}

void sub_10002E96C()
{
  sub_100019748();
  v2 = v1;
  v3 = sub_100005890(&unk_10007FAE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_1000577F0();
  sub_1000068E4();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  __chkstk_darwin(v15);
  v17 = &v25 - v16;
  sub_10002E6F8();
  v18 = *(*(v0 + OBJC_IVAR___DisplayMainViewController_displayViewController) + OBJC_IVAR___DisplayViewController_session);
  if (v18)
  {
    v19 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_uuid;
    sub_100019514();
    swift_beginAccess();
    v25 = v2;
    v26 = v0;
    v20 = v5;
    v21 = *(v8 + 16);
    v21(v14, v18 + v19, v6);
    (*(v8 + 32))(v17, v14, v6);
    v21(v11, v17, v6);
    sub_10002EBAC(v11, v25, v20);
    (*(v8 + 8))(v17, v6);
    v22 = type metadata accessor for DisplayMainViewController.UsageSummary(0);
    sub_10001918C(v20, 0, 1, v22);
    v23 = OBJC_IVAR___DisplayMainViewController_usageSummary;
    v24 = v26;
    sub_10003980C();
    sub_100038E44(v20, v24 + v23);
    swift_endAccess();
  }

  sub_100019718();
}

void sub_10002EBAC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DisplayMainViewController.UsageSummary(0);
  v7 = v6[6];
  *(a3 + v7) = mach_absolute_time();
  v8 = sub_1000577F0();
  (*(*(v8 - 8) + 32))(a3, a1, v8);
  *(a3 + v6[5]) = a2;
  v9 = (a3 + v6[7]);

  bzero(v9, 0x88uLL);
}

id sub_10002EC5C(char a1, double a2)
{
  v3 = v2;
  v6 = OBJC_IVAR___DisplayMainViewController__viewUpdateTimer;
  if (*&v2[OBJC_IVAR___DisplayMainViewController__viewUpdateTimer])
  {
    swift_getObjectType();
    sub_100019828();
    swift_unknownObjectRetain();
    sub_100057E70();
    swift_unknownObjectRelease();
  }

  *&v2[v6] = 0;
  swift_unknownObjectRelease();
  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_67;
  }

  v8 = result;
  [result frame];

  sub_10003964C();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  sub_10003964C();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = v3;
  sub_1000328C0();
  v12 = OBJC_IVAR___DisplayMainViewController_sidebarController;
  v13 = *&v3[OBJC_IVAR___DisplayMainViewController_sidebarController];
  if (v13 && (a1 & 1) == 0)
  {
    *(v9 + 16) = v13;
    v11 = *&v3[v12];
    *&v3[v12] = 0;
    v14 = v13;
  }

  v15 = OBJC_IVAR___DisplayMainViewController_qosViewController;
  v16 = *&v3[OBJC_IVAR___DisplayMainViewController_qosViewController];
  if (v16)
  {
    result = [v16 view];
    if (result)
    {
      v11 = result;
      [result removeFromSuperview];

      goto LABEL_10;
    }

LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

LABEL_10:
  v17 = OBJC_IVAR___DisplayMainViewController_displaySettings;
  sub_100019514();
  swift_beginAccess();
  v18 = sub_1000398E4();
  v19 = sub_10002B184(v18, 10);

  if ((v19 & 1) == 0)
  {
    v29 = *&v3[OBJC_IVAR___DisplayMainViewController_displayLeftConstraint];
    if (v29)
    {
      [v29 setConstant:0.0];
    }

    v30 = *&v3[OBJC_IVAR___DisplayMainViewController_displayRightConstraint];
    if (v30)
    {
      [v30 setConstant:0.0];
    }

    v31 = *&v3[v15];
    *&v3[v15] = 0;

    sub_10002E96C();
    goto LABEL_65;
  }

  v20 = sub_1000398E4();
  if ((sub_10002B184(v20, 3) & 1) == 0 || (sub_10002B1FC(v11, 4) & 1) != 0 || sub_100027098())
  {
    sub_100008634(17, v11);
    v22 = v21;
  }

  else
  {
    v22 = 78.0;
  }

  v97 = v12;

  v23 = sub_1000398E4();
  v98 = sub_10002B1FC(v23, 11);

  v24 = sub_1000398E4();
  v25 = sub_10002B184(v24, 3);

  if (v25)
  {

    v27 = sub_10002B1FC(v26, 4);

    v28 = v27 ^ 1;
  }

  else
  {
    v28 = 0;
    v27 = 0;
  }

  v32 = *&v3[v17];

  sub_100008634(19, v32);
  v34 = v33;

  if (v27)
  {
    v35 = 64.0;
  }

  else
  {
    v35 = v34;
  }

  if (v28)
  {
    if (sub_100027098())
    {
      v34 = 64.0;
    }

    else
    {
      v34 = 78.0;
    }
  }

  if (a1)
  {
    v36 = *&v3[v97];
    if (v36)
    {
      *&v36[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_topMargin] = v35;
      v37 = v36;
      sub_100019AA8();

      v38 = *&v3[v97];
      if (v38)
      {
        *&v38[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_bottomMargin] = v34;
        v39 = v38;
        sub_100019AE0();

        v40 = *&v3[v97];
        if (v40)
        {
          *&v40[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_barWidth] = v22;
          v41 = v40;
          sub_100019A94();
        }
      }
    }

    if (v98)
    {
      v42 = *&v3[OBJC_IVAR___DisplayMainViewController_displayRightConstraint];
      if (v42)
      {
        [v42 setConstant:-v22];
      }
    }

    else
    {
      [*&v3[OBJC_IVAR___DisplayMainViewController_displayLeftConstraint] setConstant:v22];
    }

LABEL_65:
    sub_100005A1C(0, &qword_10007F2D0);
    v89 = swift_allocObject();
    *(v89 + 16) = v3;
    *(v89 + 24) = v9;
    *(v89 + 32) = v10;
    *(v89 + 40) = a2;
    sub_100039778();
    v90 = swift_allocObject();
    *(v90 + 16) = v9;
    *(v90 + 24) = v3;
    v91 = v3;
    swift_retain_n();
    v92 = v91;

    sub_100032310(sub_100038BEC, v89, sub_100038C00, v90, a2);

    [v92 setNeedsUpdateOfScreenEdgesDeferringSystemGestures];
    [v92 setNeedsUpdateOfHomeIndicatorAutoHidden];
  }

  v43 = objc_allocWithZone(_s14ViewControllerCMa());
  v44 = sub_100019B18(v22, v35, v34);
  result = [v44 view];
  if (!result)
  {
    goto LABEL_68;
  }

  v45 = result;
  result = [v3 view];
  v96 = result;
  if (!result)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  *&v44[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_delegate + 8] = &off_1000738F0;
  swift_unknownObjectWeakAssign();
  [v45 setTranslatesAutoresizingMaskIntoConstraints:0];
  v46 = sub_1000398E4();
  v47 = sub_10002B1FC(v46, 12);

  if ((v47 & 1) == 0 || !sub_100038B68())
  {
    v51 = *&v3[v15];
    *&v3[v15] = 0;

LABEL_52:
    v56 = [v45 heightAnchor];
    v103.origin.x = sub_10003966C();
    v57 = [v56 constraintEqualToConstant:CGRectGetHeight(v103)];

    v93 = v10;
    if (v98)
    {
      v104.origin.x = sub_10003966C();
      Width = CGRectGetWidth(v104);
    }

    else
    {
      Width = -v22;
    }

    v105.origin.x = sub_10003966C();
    [v45 setFrame:{Width, 0.0, v22, CGRectGetHeight(v105)}];
    [v57 setActive:1];
    v59 = objc_opt_self();
    v60 = v45;
    v61 = v57;
    v62 = v3;
    v63 = v44;
    v64 = v96;
    [v59 begin];
    [v59 setDisableActions:1];
    [v60 layoutBelowIfNeeded];
    [v61 setActive:0];
    [v62 addChildViewController:v63];
    [v63 didMoveToParentViewController:v62];
    [v64 addSubview:v60];
    [v59 commit];

    v95 = v61;
    v65 = [v60 layer];
    [v65 setOpacity:0.0];

    v66 = [v60 layer];
    memcpy(&__dst, &CATransform3DIdentity, sizeof(__dst));
    CATransform3DScale(&v99, &__dst, 1.0, 0.95, 1.0);
    [v66 setTransform:&v99];

    v67 = [v60 topAnchor];
    v68 = [v64 topAnchor];
    v69 = [v67 constraintEqualToAnchor:v68];

    [v69 setActive:1];
    v70 = [v60 bottomAnchor];
    v94 = v64;
    v71 = [v64 bottomAnchor];
    v72 = sub_1000398FC(v71, "constraintEqualToAnchor:");

    [v72 setActive:1];
    v73 = *&v63[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_buttonsByIdentifer];
    *&__dst.m11 = 1;
    memset(&__dst.m12, 0, 24);
    LOBYTE(__dst.m21) = 2;
    v74 = sub_10000EBB8(&__dst, v73);
    if (v74)
    {
      v75 = v74;
      v76 = *&v3[v17];

      v77 = sub_100008510(20, v76);

      [v75 setEnabled:v77 & 1];
    }

    v10 = v93;
    if (v98)
    {
      v78 = [v60 leftAnchor];
      v79 = [*&v62[OBJC_IVAR___DisplayMainViewController_displayContainer] rightAnchor];
      v80 = sub_1000398FC(v79, "constraintEqualToAnchor:");

      [v80 setActive:1];
      v81 = *&v62[OBJC_IVAR___DisplayMainViewController_displayRightConstraint];
      if (v81)
      {
        [v81 setConstant:-v22];
      }

      v82 = *&v62[OBJC_IVAR___DisplayMainViewController_displayLeftConstraint];
    }

    else
    {
      v83 = [v60 rightAnchor];
      v84 = [*&v62[OBJC_IVAR___DisplayMainViewController_displayContainer] leftAnchor];
      v85 = sub_1000398FC(v84, "constraintEqualToAnchor:");

      [v85 setActive:1];
      [*&v62[OBJC_IVAR___DisplayMainViewController_displayLeftConstraint] setConstant:v22];
      v82 = *&v62[OBJC_IVAR___DisplayMainViewController_displayRightConstraint];
    }

    if (v82)
    {
      [v82 setConstant:0.0];
    }

    *&v99.m11 = 2;
    memset(&v99.m12, 0, 24);
    LOBYTE(v99.m21) = 2;
    sub_10001AFA0(&v99, v62[OBJC_IVAR___DisplayMainViewController_dockShown]);
    v101[0] = 3;
    memset(&v101[1], 0, 24);
    v102 = 2;
    sub_10001AFA0(v101, v62[OBJC_IVAR___DisplayMainViewController_menuOverrideEnabled]);
    v86 = *(v93 + 16);
    *(v93 + 16) = v63;
    v87 = v63;

    v88 = *&v3[v97];
    *&v3[v97] = v63;

    sub_10002E96C();
    goto LABEL_65;
  }

  v48 = *&v3[v15];
  if (v48)
  {
    v49 = v48;
    result = [v49 view];
    if (result)
    {
      v50 = result;
      [*&v44[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_topStack] addArrangedSubview:result];

LABEL_51:
      v55 = *&v3[OBJC_IVAR___DisplayMainViewController_displayViewController];
      sub_1000579C0();
      sub_10002F894();

      goto LABEL_52;
    }

    goto LABEL_70;
  }

  v52 = objc_allocWithZone(type metadata accessor for QOSControllerViewController());
  v53 = sub_10000E010(1);
  result = [v53 view];
  if (result)
  {
    v54 = result;
    [*&v44[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_topStack] addArrangedSubview:result];

    v50 = *&v3[v15];
    *&v3[v15] = v53;
    goto LABEL_51;
  }

LABEL_71:
  __break(1u);
  return result;
}

void sub_10002F894()
{
  v1 = *(*(v0 + OBJC_IVAR___DisplayMainViewController_displayViewController) + OBJC_IVAR___DisplayViewController_session);
  if (!v1)
  {
    return;
  }

  v2 = [*(v1 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_request) session];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = [v2 dataLink];

  v5 = *(v0 + OBJC_IVAR___DisplayMainViewController_qosViewController);
  if (v4)
  {
    if (v5)
    {
      sub_100038C08(v4);
      v6 = v5;
      v7 = sub_100057A10();
      v9 = 63;
      if (v8)
      {
        v9 = v7;
      }

      v10 = 0xE100000000000000;
      v11 = &v6[OBJC_IVAR____TtC17ContinuityDisplay27QOSControllerViewController_connectionDescription];
      v4 = *&v6[OBJC_IVAR____TtC17ContinuityDisplay27QOSControllerViewController_connectionDescription + 8];
      if (v8)
      {
        v10 = v8;
      }

      *v11 = v9;
      v11[1] = v10;

      goto LABEL_13;
    }
  }

  else if (v5)
  {
    v12 = &v5[OBJC_IVAR____TtC17ContinuityDisplay27QOSControllerViewController_connectionDescription];
    v4 = *&v5[OBJC_IVAR____TtC17ContinuityDisplay27QOSControllerViewController_connectionDescription + 8];
    *v12 = 63;
    *(v12 + 1) = 0xE100000000000000;
LABEL_13:
  }

  v13 = *(v0 + OBJC_IVAR___DisplayMainViewController_qosViewController);
  if (v13)
  {
    v14 = v13;
    v15 = sub_100019828();
    sub_10000E370(v15);
  }

  sub_100032C90();
}

void sub_10002F9FC(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  sub_10002FC0C();
  swift_beginAccess();
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = [v8 view];
    if (!v9)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v10 = v9;
    v11 = [v9 layer];

    if (v11)
    {
      [v11 setOpacity:0.0];
      memcpy(&__dst, &CATransform3DIdentity, sizeof(__dst));
      CATransform3DScale(&v21, &__dst, 1.0, 0.95, 1.0);
      [v11 setTransform:&v21];
    }
  }

  swift_beginAccess();
  v12 = *(a3 + 16);
  if (!v12)
  {
LABEL_9:
    v18 = sub_10002B5E4();
    if (*v17)
    {
      sub_100030F00(1, v17, a4);
    }

    (v18)(&__dst, 0);
    v19 = [a1 view];
    if (v19)
    {
      v20 = v19;
      [v19 layoutIfNeeded];

      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  v13 = [v12 view];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 layer];

    if (v15)
    {
      LODWORD(v16) = 1.0;
      [v15 setOpacity:v16];
      memcpy(&__dst, &CATransform3DIdentity, sizeof(__dst));
      [v15 setTransform:&__dst];
    }

    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

void sub_10002FC0C()
{
  v1 = v0;
  if (!sub_100038CE4())
  {
    return;
  }

  if (*(v0 + OBJC_IVAR___DisplayMainViewController_sidebarController))
  {
    swift_beginAccess();

    v3 = sub_10002B1FC(v2, 11);

    v4 = v3 ^ 1;
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  swift_beginAccess();

  v6 = sub_10002B184(v5, 3);

  v7 = &qword_10007F000;
  if (v6)
  {

    v9 = sub_10002B1FC(v8, 4);

    v10 = v9 ^ 1;
    if ((v4 | v9))
    {
      v11 = v4 ^ 1 | v9;
LABEL_9:
      LODWORD(v77) = v3;
      v12 = OBJC_IVAR___DisplayMainViewController_corners;
      swift_beginAccess();
      v13 = sub_10000EC00(0, *(v1 + v12));
      if (v13)
      {
        v14 = v13;
        [v14 setHidden:0];
        *(v14 + OBJC_IVAR____TtC17ContinuityDisplay17RoundedCornerView_isHidding) = 0;
        sub_100005890(&unk_10007F1B0);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_10005C010;
        v16 = [v14 leftAnchor];
        v17 = OBJC_IVAR___DisplayMainViewController_displayContainer;
        v18 = [*(v1 + OBJC_IVAR___DisplayMainViewController_displayContainer) leftAnchor];
        v19 = [v16 constraintEqualToAnchor:v18];

        *(v15 + 32) = v19;
        v20 = [v14 topAnchor];

        v21 = [*(v1 + v17) topAnchor];
        v22 = 64.0;
        if ((v11 & 1) == 0)
        {
          v22 = 0.0;
        }

        v23 = [v20 constraintEqualToAnchor:v21 constant:{v22, v77}];

        *(v15 + 40) = v23;
        sub_10003CA78(v15);

        if ((v4 | v10))
        {
          v79 = v4 ^ 1 | v10;
          v7 = &qword_10007F000;
          v3 = v78;
          goto LABEL_17;
        }

        v7 = &qword_10007F000;
        v3 = v78;
        goto LABEL_24;
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    if (v4)
    {
      goto LABEL_9;
    }
  }

  v24 = OBJC_IVAR___DisplayMainViewController_corners;
  swift_beginAccess();
  v25 = sub_10000EC00(0, *(v1 + v24));
  if (!v25)
  {
    goto LABEL_44;
  }

  v26 = v25;
  sub_100035A18(v25);
  v26[OBJC_IVAR____TtC17ContinuityDisplay17RoundedCornerView_isHidding] = 1;

  v11 = 0;
  if ((v4 | v10))
  {
    v79 = v4 ^ 1 | v10;
LABEL_17:
    v27 = v3;
    v28 = OBJC_IVAR___DisplayMainViewController_corners;
    swift_beginAccess();
    v29 = sub_10000EC00(2u, *(v1 + v28));
    if (v29)
    {
      v30 = v29;
      [v30 setHidden:0];
      *(v30 + OBJC_IVAR____TtC17ContinuityDisplay17RoundedCornerView_isHidding) = 0;
      sub_100005890(&unk_10007F1B0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_10005C010;
      v32 = [v30 leftAnchor];
      v33 = v7[259];
      v34 = [*(v1 + v33) leftAnchor];
      v35 = [v32 constraintEqualToAnchor:v34];

      *(v31 + 32) = v35;
      v36 = [v30 bottomAnchor];

      v37 = [*(v1 + v33) bottomAnchor];
      v38 = 0.0;
      if (v79)
      {
        v39 = sub_100027098();
        v38 = -78.0;
        if (v39)
        {
          v38 = -64.0;
        }
      }

      v40 = [v36 constraintEqualToAnchor:v37 constant:v38];

      *(v31 + 40) = v40;
      sub_10003CA78(v31);

      v3 = v27;
      if ((v27 | v11))
      {
        v41 = v27 ^ 1 | v11;
        v7 = &qword_10007F000;
        goto LABEL_27;
      }

      v45 = v79;
LABEL_32:
      v59 = OBJC_IVAR___DisplayMainViewController_corners;
      swift_beginAccess();
      v60 = sub_10000EC00(1u, *(v1 + v59));
      if (v60)
      {
        v61 = v60;
        sub_100035A18(v60);
        v61[OBJC_IVAR____TtC17ContinuityDisplay17RoundedCornerView_isHidding] = 1;

        goto LABEL_34;
      }

LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    goto LABEL_45;
  }

LABEL_24:
  v42 = OBJC_IVAR___DisplayMainViewController_corners;
  swift_beginAccess();
  v43 = sub_10000EC00(2u, *(v1 + v42));
  if (!v43)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v44 = v43;
  sub_100035A18(v43);
  v44[OBJC_IVAR____TtC17ContinuityDisplay17RoundedCornerView_isHidding] = 1;

  v45 = 0;
  if (((v3 | v11) & 1) == 0)
  {
    goto LABEL_32;
  }

  v79 = 0;
  v41 = v3 ^ 1 | v11;
LABEL_27:
  v46 = v3;
  v47 = OBJC_IVAR___DisplayMainViewController_corners;
  swift_beginAccess();
  v48 = sub_10000EC00(1u, *(v1 + v47));
  if (!v48)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v49 = v48;
  [v49 setHidden:0];
  *(v49 + OBJC_IVAR____TtC17ContinuityDisplay17RoundedCornerView_isHidding) = 0;
  sub_100005890(&unk_10007F1B0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_10005C010;
  v51 = [v49 rightAnchor];
  v52 = v7[259];
  v53 = [*(v1 + v52) rightAnchor];
  v54 = [v51 constraintEqualToAnchor:v53];

  *(v50 + 32) = v54;
  v55 = [v49 topAnchor];

  v56 = [*(v1 + v52) topAnchor];
  v57 = 64.0;
  if ((v41 & 1) == 0)
  {
    v57 = 0.0;
  }

  v58 = [v55 constraintEqualToAnchor:v56 constant:v57];

  *(v50 + 40) = v58;
  sub_10003CA78(v50);

  v3 = v46;
  v45 = v79;
LABEL_34:
  v62 = OBJC_IVAR___DisplayMainViewController_corners;
  if (((v3 | v45) & 1) == 0)
  {
    swift_beginAccess();
    v75 = sub_10000EC00(3u, *(v1 + v62));
    if (v75)
    {
      v76 = v75;
      sub_100035A18(v75);
      v76[OBJC_IVAR____TtC17ContinuityDisplay17RoundedCornerView_isHidding] = 1;

      return;
    }

LABEL_50:
    __break(1u);
    return;
  }

  swift_beginAccess();
  v63 = sub_10000EC00(3u, *(v1 + v62));
  if (!v63)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v64 = v63;
  [v64 setHidden:0];
  *(v64 + OBJC_IVAR____TtC17ContinuityDisplay17RoundedCornerView_isHidding) = 0;
  sub_100005890(&unk_10007F1B0);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_10005C010;
  v66 = [v64 rightAnchor];
  v67 = OBJC_IVAR___DisplayMainViewController_displayContainer;
  v68 = [*(v1 + OBJC_IVAR___DisplayMainViewController_displayContainer) rightAnchor];
  v69 = [v66 constraintEqualToAnchor:v68];

  *(v65 + 32) = v69;
  v70 = [v64 bottomAnchor];

  v71 = [*(v1 + v67) bottomAnchor];
  v72 = 0.0;
  if (v45)
  {
    v73 = sub_100027098();
    v72 = -78.0;
    if (v73)
    {
      v72 = -64.0;
    }
  }

  v74 = [v70 constraintEqualToAnchor:v71 constant:v72];

  *(v65 + 40) = v74;
  sub_10003CA78(v65);
}

void sub_100030508(char a1, uint64_t a2, void *a3, void *a4, double a5)
{
  v10 = a1 & 1;
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  if (*(a2 + 16) == v10)
  {
    v28 = *(a2 + 8);
    if (a3)
    {
      v29 = a3;
      v30 = a4;
      sub_100033004(v29);
    }

    else
    {
      v54 = a4;
    }

    [v28 removeFromSuperview];
  }

  else
  {
    v12 = *a2;
    v56 = a3;
    v13 = a4;
    v57 = [v12 layer];
    v59 = &_swiftEmptyArrayStorage;
    *(a2 + 16) = v10;
    sub_100005A1C(0, &qword_10007FAD0);
    v14 = sub_1000343B0(0xD000000000000020, 0x800000010005FAF0);
    v55 = v14;
    if (a1)
    {
      isa = sub_100057CE0().super.super.isa;
      [v14 setFromValue:isa];

      v16 = sub_100057CE0().super.super.isa;
      [v14 setToValue:v16];

      v17 = v14;
      [v17 setDuration:a5];
      [v17 setFillMode:kCAFillModeForwards];
      [v17 setRemovedOnCompletion:0];

      v18 = v17;
      sub_100057BC0();
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100057C20();
      }

      sub_100057C50();
      v19 = sub_1000343B0(0xD000000000000023, 0x800000010005FB20);
      v20 = sub_100057CE0().super.super.isa;
      [v19 setFromValue:v20];

      v21 = sub_100057CE0().super.super.isa;
      [v19 setToValue:v21];

      v22 = v19;
      [v22 setDuration:a5];
      [v22 setFillMode:kCAFillModeForwards];
      [v22 setRemovedOnCompletion:0];
      sub_100057BC0();
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100057C20();
      }

      sub_100057C50();
      v23 = sub_1000343B0(0xD000000000000021, 0x800000010005FB50);
      v24 = sub_100057CE0().super.super.isa;
      [v23 setFromValue:v24];

      v25 = sub_100057CE0().super.super.isa;
      [v23 setToValue:v25];

      v26 = v23;
      [v26 setDuration:a5];
      [v26 setFillMode:kCAFillModeForwards];
      [v26 setRemovedOnCompletion:0];
      sub_100057BC0();
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100057C20();
      }

      sub_100057C50();
      v27 = v59;
    }

    else
    {
      v31 = sub_100057CE0().super.super.isa;
      [v14 setFromValue:v31];

      v32 = sub_100057CE0().super.super.isa;
      [v14 setToValue:v32];

      v33 = v14;
      [v33 setDuration:a5];
      [v33 setFillMode:kCAFillModeForwards];

      v34 = v33;
      sub_100057BC0();
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100057C20();
      }

      sub_100057C50();
      v35 = sub_1000343B0(0xD000000000000023, 0x800000010005FB20);
      v36 = sub_100057CE0().super.super.isa;
      [v35 setFromValue:v36];

      v37 = sub_100057CE0().super.super.isa;
      [v35 setToValue:v37];

      v22 = v35;
      [v22 setDuration:a5];
      [v22 setFillMode:kCAFillModeForwards];
      sub_100057BC0();
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100057C20();
      }

      sub_100057C50();
      v38 = sub_1000343B0(0xD000000000000021, 0x800000010005FB50);
      v39 = sub_100057CE0().super.super.isa;
      [v38 setFromValue:v39];

      v40 = sub_100057CE0().super.super.isa;
      [v38 setToValue:v40];

      v26 = v38;
      [v26 setDuration:a5];
      [v26 setFillMode:kCAFillModeForwards];
      sub_100057BC0();
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100057C20();
      }

      sub_100057C50();
      v27 = v59;
      [*(a2 + 8) removeFromSuperview];
    }

    v41 = sub_100057CE0().super.super.isa;
    v42 = sub_100057A20();
    [v57 setValue:v41 forKeyPath:v42];

    v43 = sub_100057CE0().super.super.isa;
    v44 = sub_100057A20();
    [v57 setValue:v43 forKeyPath:v44];

    v45 = sub_100057CE0().super.super.isa;
    v46 = sub_100057A20();
    [v57 setValue:v45 forKeyPath:v46];

    v47 = [objc_allocWithZone(CAAnimationGroup) init];
    v48 = *(a2 + 8);
    v49 = objc_opt_self();
    [v49 begin];
    v50 = swift_allocObject();
    v50[2] = sub_100039528;
    v50[3] = v11;
    v50[4] = v48;
    aBlock[4] = sub_1000395B8;
    aBlock[5] = v50;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000AF8C;
    aBlock[3] = &unk_100073CA0;
    v51 = _Block_copy(aBlock);

    v52 = v48;

    [v49 setCompletionBlock:v51];
    _Block_release(v51);
    [v49 setAnimationDuration:a5];
    if (v27 >> 62)
    {
      sub_100005A1C(0, &qword_10007FAD8);

      v53 = sub_100058180();
    }

    else
    {

      sub_100058240();
      sub_100005A1C(0, &qword_10007FAD8);
      v53 = v27;
    }

    sub_100038D44(v53, v47);
    [v47 setDuration:a5];
    sub_100038DC8(v47, 0x70756F7267, 0xE500000000000000, v57);
    [v49 commit];
    [v49 setCompletionBlock:0];
  }
}

void sub_100030F00(char a1, uint64_t a2, double a3)
{
  v3 = a1 & 1;
  if (*(a2 + 16) != (a1 & 1))
  {
    v44 = [*a2 layer];
    v46 = &_swiftEmptyArrayStorage;
    *(a2 + 16) = v3;
    sub_100005A1C(0, &qword_10007FAD0);
    v7 = sub_1000343B0(0xD000000000000020, 0x800000010005FAF0);
    if (a1)
    {
      isa = sub_100057CE0().super.super.isa;
      [v7 setFromValue:isa];

      v9 = sub_100057CE0().super.super.isa;
      [v7 setToValue:v9];

      v10 = v7;
      [v10 setDuration:a3];
      [v10 setFillMode:kCAFillModeForwards];
      [v10 setRemovedOnCompletion:0];

      v11 = v10;
      sub_100057BC0();
      if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100057C20();
      }

      sub_100057C50();
      v12 = sub_1000343B0(0xD000000000000023, 0x800000010005FB20);
      v13 = sub_100057CE0().super.super.isa;
      [v12 setFromValue:v13];

      v14 = sub_100057CE0().super.super.isa;
      [v12 setToValue:v14];

      v15 = v12;
      [v15 setDuration:a3];
      [v15 setFillMode:kCAFillModeForwards];
      [v15 setRemovedOnCompletion:0];
      sub_100057BC0();
      if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100057C20();
      }

      sub_100057C50();
      v16 = sub_1000343B0(0xD000000000000021, 0x800000010005FB50);
      v17 = sub_100057CE0().super.super.isa;
      [v16 setFromValue:v17];

      v18 = sub_100057CE0().super.super.isa;
      [v16 setToValue:v18];

      v19 = v16;
      [v19 setDuration:a3];
      [v19 setFillMode:kCAFillModeForwards];
      [v19 setRemovedOnCompletion:0];
      sub_100057BC0();
      if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100057C20();
      }

      sub_100057C50();
      v20 = v46;
    }

    else
    {
      v21 = sub_100057CE0().super.super.isa;
      [v7 setFromValue:v21];

      v22 = sub_100057CE0().super.super.isa;
      [v7 setToValue:v22];

      v23 = v7;
      [v23 setDuration:a3];
      [v23 setFillMode:kCAFillModeForwards];

      v24 = v23;
      sub_100057BC0();
      if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100057C20();
      }

      sub_100057C50();
      v25 = sub_1000343B0(0xD000000000000023, 0x800000010005FB20);
      v26 = sub_100057CE0().super.super.isa;
      [v25 setFromValue:v26];

      v27 = sub_100057CE0().super.super.isa;
      [v25 setToValue:v27];

      v15 = v25;
      [v15 setDuration:a3];
      [v15 setFillMode:kCAFillModeForwards];
      sub_100057BC0();
      if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100057C20();
      }

      sub_100057C50();
      v28 = sub_1000343B0(0xD000000000000021, 0x800000010005FB50);
      v29 = sub_100057CE0().super.super.isa;
      [v28 setFromValue:v29];

      v30 = sub_100057CE0().super.super.isa;
      [v28 setToValue:v30];

      v19 = v28;
      [v19 setDuration:a3];
      [v19 setFillMode:kCAFillModeForwards];
      sub_100057BC0();
      if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100057C20();
      }

      sub_100057C50();
      v20 = v46;
      [*(a2 + 8) removeFromSuperview];
    }

    v31 = sub_100057CE0().super.super.isa;
    v32 = sub_100057A20();
    [v44 setValue:v31 forKeyPath:v32];

    v33 = sub_100057CE0().super.super.isa;
    v34 = sub_100057A20();
    [v44 setValue:v33 forKeyPath:v34];

    v35 = sub_100057CE0().super.super.isa;
    v36 = sub_100057A20();
    [v44 setValue:v35 forKeyPath:v36];

    v37 = [objc_allocWithZone(CAAnimationGroup) init];
    v38 = *(a2 + 8);
    v39 = objc_opt_self();
    [v39 begin];
    v40 = swift_allocObject();
    v40[2] = VideoStream.qosMonitorServerDidDie(_:);
    v40[3] = 0;
    v40[4] = v38;
    aBlock[4] = sub_100038D14;
    aBlock[5] = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000AF8C;
    aBlock[3] = &unk_100073B10;
    v41 = _Block_copy(aBlock);
    v42 = v38;

    [v39 setCompletionBlock:v41];
    _Block_release(v41);
    [v39 setAnimationDuration:a3];
    if (v20 >> 62)
    {
      sub_100005A1C(0, &qword_10007FAD8);

      v43 = sub_100058180();
    }

    else
    {

      sub_100058240();
      sub_100005A1C(0, &qword_10007FAD8);
      v43 = v20;
    }

    sub_100038D44(v43, v37);
    [v37 setDuration:a3];
    sub_100038DC8(v37, 0x70756F7267, 0xE500000000000000, v44);
    [v39 commit];
    [v39 setCompletionBlock:0];
  }
}

void sub_10003183C(char a1, uint64_t a2, double a3)
{
  v4 = a1 & 1;
  if (*(a2 + 16) == (a1 & 1))
  {
    v21 = *(a2 + 8);

    [v21 removeFromSuperview];
  }

  else
  {
    v45 = [*a2 layer];
    v47 = &_swiftEmptyArrayStorage;
    *(a2 + 16) = v4;
    sub_100005A1C(0, &qword_10007FAD0);
    v7 = sub_1000343B0(0xD000000000000020, 0x800000010005FAF0);
    if (a1)
    {
      isa = sub_100057CE0().super.super.isa;
      [v7 setFromValue:isa];

      v9 = sub_100057CE0().super.super.isa;
      [v7 setToValue:v9];

      v10 = v7;
      [v10 setDuration:a3];
      [v10 setFillMode:kCAFillModeForwards];
      [v10 setRemovedOnCompletion:0];

      v11 = v10;
      sub_100057BC0();
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100057C20();
      }

      sub_100057C50();
      v12 = sub_1000343B0(0xD000000000000023, 0x800000010005FB20);
      v13 = sub_100057CE0().super.super.isa;
      [v12 setFromValue:v13];

      v14 = sub_100057CE0().super.super.isa;
      [v12 setToValue:v14];

      v15 = v12;
      [v15 setDuration:a3];
      [v15 setFillMode:kCAFillModeForwards];
      [v15 setRemovedOnCompletion:0];
      sub_100057BC0();
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100057C20();
      }

      sub_100057C50();
      v16 = sub_1000343B0(0xD000000000000021, 0x800000010005FB50);
      v17 = sub_100057CE0().super.super.isa;
      [v16 setFromValue:v17];

      v18 = sub_100057CE0().super.super.isa;
      [v16 setToValue:v18];

      v19 = v16;
      [v19 setDuration:a3];
      [v19 setFillMode:kCAFillModeForwards];
      [v19 setRemovedOnCompletion:0];
      sub_100057BC0();
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100057C20();
      }

      sub_100057C50();
      v20 = v47;
    }

    else
    {
      v22 = sub_100057CE0().super.super.isa;
      [v7 setFromValue:v22];

      v23 = sub_100057CE0().super.super.isa;
      [v7 setToValue:v23];

      v24 = v7;
      [v24 setDuration:a3];
      [v24 setFillMode:kCAFillModeForwards];

      v25 = v24;
      sub_100057BC0();
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100057C20();
      }

      sub_100057C50();
      v26 = sub_1000343B0(0xD000000000000023, 0x800000010005FB20);
      v27 = sub_100057CE0().super.super.isa;
      [v26 setFromValue:v27];

      v28 = sub_100057CE0().super.super.isa;
      [v26 setToValue:v28];

      v15 = v26;
      [v15 setDuration:a3];
      [v15 setFillMode:kCAFillModeForwards];
      sub_100057BC0();
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100057C20();
      }

      sub_100057C50();
      v29 = sub_1000343B0(0xD000000000000021, 0x800000010005FB50);
      v30 = sub_100057CE0().super.super.isa;
      [v29 setFromValue:v30];

      v31 = sub_100057CE0().super.super.isa;
      [v29 setToValue:v31];

      v19 = v29;
      [v19 setDuration:a3];
      [v19 setFillMode:kCAFillModeForwards];
      sub_100057BC0();
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100057C20();
      }

      sub_100057C50();
      v20 = v47;
      [*(a2 + 8) removeFromSuperview];
    }

    v32 = sub_100057CE0().super.super.isa;
    v33 = sub_100057A20();
    [v45 setValue:v32 forKeyPath:v33];

    v34 = sub_100057CE0().super.super.isa;
    v35 = sub_100057A20();
    [v45 setValue:v34 forKeyPath:v35];

    v36 = sub_100057CE0().super.super.isa;
    v37 = sub_100057A20();
    [v45 setValue:v36 forKeyPath:v37];

    v38 = [objc_allocWithZone(CAAnimationGroup) init];
    v39 = *(a2 + 8);
    v40 = objc_opt_self();
    [v40 begin];
    v41 = swift_allocObject();
    v41[2] = sub_100034E30;
    v41[3] = 0;
    v41[4] = v39;
    aBlock[4] = sub_1000395B8;
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000AF8C;
    aBlock[3] = &unk_100073C28;
    v42 = _Block_copy(aBlock);
    v43 = v39;

    [v40 setCompletionBlock:v42];
    _Block_release(v42);
    [v40 setAnimationDuration:a3];
    if (v20 >> 62)
    {
      sub_100005A1C(0, &qword_10007FAD8);

      v44 = sub_100058180();
    }

    else
    {

      sub_100058240();
      sub_100005A1C(0, &qword_10007FAD8);
      v44 = v20;
    }

    sub_100038D44(v44, v38);
    [v38 setDuration:a3];
    sub_100038DC8(v38, 0x70756F7267, 0xE500000000000000, v45);
    [v40 commit];
    [v40 setCompletionBlock:0];
  }
}

void sub_1000321BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  if (v4)
  {
    [v4 removeFromParentViewController];
  }

  swift_beginAccess();
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = [v5 view];
    if (!v6)
    {
      __break(1u);
      return;
    }

    v7 = v6;
    [v6 removeFromSuperview];
  }

  if (sub_100038CE4())
  {
    v8 = OBJC_IVAR___DisplayMainViewController_corners;
    swift_beginAccess();
    for (i = 0; i != 4; ++i)
    {
      v10 = *(a2 + v8);
      if (*(v10 + 16))
      {
        v11 = sub_100038014(*(&off_100072280 + i + 32));
        if (v12)
        {
          v13 = *(*(v10 + 56) + 8 * v11);
          v14 = OBJC_IVAR____TtC17ContinuityDisplay17RoundedCornerView_isHidding;
          if (*(v13 + OBJC_IVAR____TtC17ContinuityDisplay17RoundedCornerView_isHidding))
          {
            v15 = v13;
            [v15 setHidden:1];
            *(v13 + v14) = 0;
          }
        }
      }
    }
  }
}

void sub_100032310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_100019698();
  v11 = swift_allocObject();
  *(v11 + 16) = a5;
  *(v11 + 24) = a1;
  *(v11 + 32) = a2;
  v19 = sub_100038C64;
  v20 = v11;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_10000AF8C;
  v18 = &unk_100073A70;
  v12 = _Block_copy(&v15);

  sub_100039778();
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  v19 = sub_100038CBC;
  v20 = v13;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_1000377C4;
  v18 = &unk_100073AC0;
  v14 = _Block_copy(&v15);

  [ObjCClassFromMetadata animateWithDuration:v12 animations:v14 completion:a5];
  _Block_release(v14);
  _Block_release(v12);
}

void sub_1000324B0()
{
  v5 = [v0 view];
  if (v5)
  {
    v6 = v5;
    [*&v0[OBJC_IVAR___DisplayMainViewController_displayContainer] frame];
    [v6 convertRect:0 toView:?];
    sub_1000395F4();

    v7 = (*(*&v0[OBJC_IVAR___DisplayMainViewController_displayViewController] + OBJC_IVAR___DisplayViewController_hidObserver) + OBJC_IVAR____TtC17ContinuityDisplay16HIDEventObserver_touchBounds);
    *v7 = v1;
    v7[1] = v2;
    v7[2] = v3;
    v7[3] = v4;
  }

  else
  {
    __break(1u);
  }
}

void sub_1000325B0()
{
  [v0 sidecarServiceUpdateSupportedOrientations];
  sub_10002D3BC();
  if (qword_10007E8E8 != -1)
  {
    sub_100039680();
  }

  swift_beginAccess();
  v1 = sub_1000079DC();
  swift_endAccess();
  if (v1)
  {
    v2 = [v0 request];
    if (v2)
    {
      v3 = v2;
      sub_100005890(&unk_10007F1B0);
      sub_100019698();
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_10005B500;
      v9[3] = &type metadata for Bool;
      LOBYTE(v9[0]) = 1;
      v5 = objc_allocWithZone(SidecarItem);
      v6 = sub_100037DE4(v9);
      *(v4 + 32) = v6;
      sub_1000398B0(v6, &unk_10007FAA0);
      sub_10003984C();
      isa = sub_100057BD0().super.isa;

      sub_100039784(v8, "sendItems:complete:");
    }
  }
}

void sub_100032758()
{
  v1 = OBJC_IVAR___DisplayMainViewController_keyboardResponder;
  if (*&v0[OBJC_IVAR___DisplayMainViewController_keyboardResponder])
  {
    return;
  }

  type metadata accessor for DisplayMainViewController.KeyboardResponder();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v2[OBJC_IVAR____TtCC17ContinuityDisplay25DisplayMainViewController17KeyboardResponder_delegate + 8] = &off_1000739B0;
  swift_unknownObjectWeakAssign();
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  v5 = [v2 view];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v6 = v5;
  [v4 addSubview:v5];

  [v0 addChildViewController:v2];
  [v2 becomeFirstResponder];
  v7 = *&v0[v1];
  *&v0[v1] = v2;
  v10 = v2;

  v8 = *&v0[OBJC_IVAR___DisplayMainViewController_sidebarController];
  if (v8)
  {
    v9 = v8;
    sub_10001AEE8(1);
  }
}

void sub_1000328C0()
{
  v1 = v0;
  v2 = OBJC_IVAR___DisplayMainViewController_keyboardResponder;
  v3 = *&v1[OBJC_IVAR___DisplayMainViewController_keyboardResponder];
  if (v3)
  {
    v7 = v3;
    [v7 removeFromParentViewController];
    [v1 becomeFirstResponder];
    v4 = *&v1[v2];
    *&v1[v2] = 0;

    memset(v8, 0, sizeof(v8));
    v9 = 1;

    sub_100003970(v8);

    v5 = *&v1[OBJC_IVAR___DisplayMainViewController_sidebarController];
    if (v5)
    {
      v6 = v5;
      sub_10001AEE8(0);
    }
  }
}

uint64_t sub_1000329F4(void *a1, __n128 a2, uint64_t a3, uint64_t a4, void (*a5)(id, __n128))
{
  if (a4)
  {
    v7 = a1;
    swift_unknownObjectRetain();
    sub_100057FE0();
    v8 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    v8 = a1;
  }

  a5(v8, a2);

  return sub_1000392FC(v11, &unk_10007EEE0);
}

void sub_100032A88(__n128 a1)
{
  v1[0] = a1;
  v1[1] = xmmword_10005B7C0;
  v2 = 1;
  sub_100036384(v1, 1);
  sub_100036384(v1, 0);
}

void sub_100032AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v7 = v6;
  objc_allocWithZone(type metadata accessor for DisplayModalAlert());
  swift_errorRetain();
  v14 = sub_10001E2D4(a5 & 1, a6);
  [v14 setModalTransitionStyle:2];
  [v14 setModalPresentationStyle:5];
  *&v14[OBJC_IVAR____TtC17ContinuityDisplay17DisplayModalAlert_delegate + 8] = &off_1000739A0;
  swift_unknownObjectWeakAssign();
  v15 = *&v14[OBJC_IVAR____TtC17ContinuityDisplay17DisplayModalAlert_mainLabel];
  sub_100038B10(a1, a2, v15);

  v16 = *&v14[OBJC_IVAR____TtC17ContinuityDisplay17DisplayModalAlert_secondaryLabel];
  sub_100038B10(a3, a4, v16);

  v18 = *&v7[OBJC_IVAR___DisplayMainViewController_presentedAlert];
  *&v7[OBJC_IVAR___DisplayMainViewController_presentedAlert] = v14;
  v17 = v14;
  [v7 presentViewController:v17 animated:0 completion:0];
  if (v18)
  {
    [v18 dismissViewControllerAnimated:0 completion:0];
  }

  sub_100032C90();
  sub_10002D3BC();
}

void sub_100032C90()
{
  if (sub_100038B68())
  {
    v1 = *(v0 + OBJC_IVAR___DisplayMainViewController_presentedAlert);
    if (v1)
    {
      v2 = *&v1[OBJC_IVAR____TtC17ContinuityDisplay17DisplayModalAlert_error];
      v39 = *(v0 + OBJC_IVAR___DisplayMainViewController_presentedAlert);
      v3 = v1;
      if (v2)
      {
        swift_errorRetain();
        v4 = sub_100057660();

        sub_100005890(&qword_10007EF38);
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_10005B5A0;
        v6 = [v4 localizedDescription];
        v7 = sub_100057A50();
        v9 = v8;

        *(v5 + 56) = &type metadata for String;
        v10 = sub_10000E894();
        *(v5 + 64) = v10;
        *(v5 + 32) = v7;
        *(v5 + 40) = v9;
        v11 = [v4 debugDescription];
        v12 = sub_100057A50();
        v14 = v13;

        *(v5 + 96) = &type metadata for String;
        *(v5 + 104) = v10;
        *(v5 + 72) = v12;
        *(v5 + 80) = v14;
        v2 = sub_100057A60();
        v16 = v15;
      }

      else
      {
        v16 = 0xE000000000000000;
      }

      v17 = *(v0 + OBJC_IVAR___DisplayMainViewController_qosViewController);
      if (v17)
      {
        v18 = sub_100038AA0(*(v17 + OBJC_IVAR____TtC17ContinuityDisplay27QOSControllerViewController_label));
        if (v19)
        {
          v20 = v18;
          v21 = v19;
          sub_100005890(&qword_10007EF38);
          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_10005B5A0;
          *(v22 + 56) = &type metadata for String;
          v23 = sub_10000E894();
          *(v22 + 32) = v2;
          *(v22 + 40) = v16;
          *(v22 + 96) = &type metadata for String;
          *(v22 + 104) = v23;
          *(v22 + 64) = v23;
          *(v22 + 72) = v20;
          *(v22 + 80) = v21;
          v2 = sub_100057A60();
          v16 = v24;
        }
      }

      v25 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v25 = v2 & 0xFFFFFFFFFFFFLL;
      }

      if (v25)
      {
        sub_100005890(&qword_10007EF38);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_10005B590;
        v27 = sub_1000553DC();
        v28 = sub_100057A50();
        v30 = v29;

        *(v26 + 56) = &type metadata for String;
        v31 = sub_10000E894();
        *(v26 + 64) = v31;
        *(v26 + 32) = v28;
        *(v26 + 40) = v30;
        v32 = sub_1000554EC();
        v33 = sub_100057A50();
        v35 = v34;

        *(v26 + 96) = &type metadata for String;
        *(v26 + 104) = v31;
        *(v26 + 72) = v33;
        *(v26 + 80) = v35;
        if (qword_10007E8F0 != -1)
        {
          swift_once();
        }

        v37 = qword_100083C70;
        v36 = *algn_100083C78;
        *(v26 + 136) = &type metadata for String;
        *(v26 + 144) = v31;
        *(v26 + 112) = v37;
        *(v26 + 120) = v36;
        *(v26 + 176) = &type metadata for String;
        *(v26 + 184) = v31;
        *(v26 + 152) = v2;
        *(v26 + 160) = v16;

        v2 = sub_100057A60();
        v16 = v38;
      }

      sub_100038A3C(v2, v16, *&v39[OBJC_IVAR____TtC17ContinuityDisplay17DisplayModalAlert_debugLabel]);
    }
  }
}

void sub_100033004(void *a1)
{
  v2 = v1;
  if (qword_10007E920 != -1)
  {
    sub_1000395BC();
  }

  v4 = sub_100057880();
  sub_1000396C4(v4, qword_10007F7A0);
  v5 = sub_100057850();
  v6 = sub_100057D80();
  if (sub_1000397F4(v6))
  {
    v7 = sub_100039864();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "=== Dismiss Modal Alert ===", v7, 2u);
    sub_10002A620();
  }

  [a1 dismissViewControllerAnimated:0 completion:0];
  v8 = OBJC_IVAR___DisplayMainViewController_presentedAlert;
  v9 = *(v2 + OBJC_IVAR___DisplayMainViewController_presentedAlert);
  if (v9)
  {
    type metadata accessor for DisplayModalAlert();
    v10 = a1;
    v11 = v9;
    v12 = sub_100057EF0();

    if (v12)
    {
      v13 = *(v2 + v8);
      *(v2 + v8) = 0;

      sub_10002D3BC();
    }
  }
}

id sub_100033150(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = OBJC_IVAR___DisplayMainViewController_displayViewController;
  type metadata accessor for DisplayViewController();
  *&v3[v7] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = OBJC_IVAR___DisplayMainViewController_displaySettings;
  v9 = sub_1000579C0();
  *&v3[v8] = sub_100007344(v9);
  v10 = &v3[OBJC_IVAR___DisplayMainViewController_snapshot];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 0;
  *&v3[OBJC_IVAR___DisplayMainViewController_sidebarController] = 0;
  *&v3[OBJC_IVAR___DisplayMainViewController_corners] = _swiftEmptyDictionarySingleton;
  *&v3[OBJC_IVAR___DisplayMainViewController_displayLeftConstraint] = 0;
  *&v3[OBJC_IVAR___DisplayMainViewController_displayRightConstraint] = 0;
  sub_1000397AC(OBJC_IVAR___DisplayMainViewController_currentTool);
  *&v3[OBJC_IVAR___DisplayMainViewController_keyboardResponder] = 0;
  v3[OBJC_IVAR___DisplayMainViewController_reconfiguring] = 0;
  v11 = OBJC_IVAR___DisplayMainViewController__customUndoManager;
  *&v3[v11] = [objc_allocWithZone(type metadata accessor for DisplayMainViewController.DisplayUndoManager()) init];
  *&v3[OBJC_IVAR___DisplayMainViewController_configurationAnimationDuration] = 0x3FD3333333333333;
  v12 = OBJC_IVAR___DisplayMainViewController_displayContainer;
  *&v3[v12] = [objc_allocWithZone(UIView) init];
  *&v3[OBJC_IVAR___DisplayMainViewController_qosViewController] = 0;
  v3[OBJC_IVAR___DisplayMainViewController_displayShouldSleep] = 0;
  *&v3[OBJC_IVAR___DisplayMainViewController_keyboardDebugLayer] = 0;
  *&v3[OBJC_IVAR___DisplayMainViewController_presentedAlert] = 0;
  *&v3[OBJC_IVAR___DisplayMainViewController_reconfigureWatchdog] = 0;
  type metadata accessor for DisplayMainViewController.UsageSummary(0);
  sub_100039940();
  sub_10001918C(v13, v14, v15, v16);
  sub_100005A1C(0, &unk_10007FB30);
  v17 = sub_100011740();
  v18 = 3;
  if ((v17 & 1) == 0)
  {
    v18 = 0;
  }

  *&v3[OBJC_IVAR___DisplayMainViewController_referenceDisplayModeStatus] = v18;
  *&v3[OBJC_IVAR___DisplayMainViewController_disableUniversalControlAssertion] = 0;
  v3[OBJC_IVAR___DisplayMainViewController_dockShown] = 0;
  v3[OBJC_IVAR___DisplayMainViewController_menuOverrideEnabled] = 0;
  *&v3[OBJC_IVAR___DisplayMainViewController__viewUpdateTimer] = 0;
  if (a2)
  {
    v19 = sub_100057A20();
  }

  else
  {
    v19 = 0;
  }

  v22.receiver = v4;
  v22.super_class = type metadata accessor for DisplayMainViewController(0);
  v20 = objc_msgSendSuper2(&v22, "initWithNibName:bundle:", v19, a3);

  return v20;
}

id sub_1000333E8(void *a1)
{
  v3 = OBJC_IVAR___DisplayMainViewController_displayViewController;
  type metadata accessor for DisplayViewController();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR___DisplayMainViewController_displaySettings;
  v5 = sub_1000579C0();
  *&v1[v4] = sub_100007344(v5);
  v6 = &v1[OBJC_IVAR___DisplayMainViewController_snapshot];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 0;
  *&v1[OBJC_IVAR___DisplayMainViewController_sidebarController] = 0;
  *&v1[OBJC_IVAR___DisplayMainViewController_corners] = _swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR___DisplayMainViewController_displayLeftConstraint] = 0;
  *&v1[OBJC_IVAR___DisplayMainViewController_displayRightConstraint] = 0;
  sub_1000397AC(OBJC_IVAR___DisplayMainViewController_currentTool);
  *&v1[OBJC_IVAR___DisplayMainViewController_keyboardResponder] = 0;
  v1[OBJC_IVAR___DisplayMainViewController_reconfiguring] = 0;
  v7 = OBJC_IVAR___DisplayMainViewController__customUndoManager;
  *&v1[v7] = [objc_allocWithZone(type metadata accessor for DisplayMainViewController.DisplayUndoManager()) init];
  *&v1[OBJC_IVAR___DisplayMainViewController_configurationAnimationDuration] = 0x3FD3333333333333;
  v8 = OBJC_IVAR___DisplayMainViewController_displayContainer;
  *&v1[v8] = [objc_allocWithZone(UIView) init];
  *&v1[OBJC_IVAR___DisplayMainViewController_qosViewController] = 0;
  v1[OBJC_IVAR___DisplayMainViewController_displayShouldSleep] = 0;
  *&v1[OBJC_IVAR___DisplayMainViewController_keyboardDebugLayer] = 0;
  *&v1[OBJC_IVAR___DisplayMainViewController_presentedAlert] = 0;
  *&v1[OBJC_IVAR___DisplayMainViewController_reconfigureWatchdog] = 0;
  type metadata accessor for DisplayMainViewController.UsageSummary(0);
  sub_100039940();
  sub_10001918C(v9, v10, v11, v12);
  sub_100005A1C(0, &unk_10007FB30);
  v13 = sub_100011740();
  v14 = 3;
  if ((v13 & 1) == 0)
  {
    v14 = 0;
  }

  *&v1[OBJC_IVAR___DisplayMainViewController_referenceDisplayModeStatus] = v14;
  *&v1[OBJC_IVAR___DisplayMainViewController_disableUniversalControlAssertion] = 0;
  v1[OBJC_IVAR___DisplayMainViewController_dockShown] = 0;
  v1[OBJC_IVAR___DisplayMainViewController_menuOverrideEnabled] = 0;
  *&v1[OBJC_IVAR___DisplayMainViewController__viewUpdateTimer] = 0;
  v17.receiver = v1;
  v17.super_class = type metadata accessor for DisplayMainViewController(0);
  v15 = objc_msgSendSuper2(&v17, "initWithCoder:", a1);

  if (v15)
  {
  }

  return v15;
}

double sub_100033664()
{
  sub_100019514();
  swift_beginAccess();

  v2 = sub_10002B184(v1, 3);

  v3 = 0.0;
  if (v2)
  {

    v5 = sub_10002B1FC(v4, 4);

    if (v5)
    {
      v3 = 64.0;
    }

    else
    {
      sub_100027098();
    }
  }

  v6 = *(v0 + OBJC_IVAR___DisplayMainViewController_displayLeftConstraint);
  if (v6)
  {
    [v6 constant];
  }

  v7 = *(v0 + OBJC_IVAR___DisplayMainViewController_displayRightConstraint);
  if (v7)
  {
    [v7 constant];
  }

  if (qword_10007E920 != -1)
  {
    sub_1000395BC();
  }

  v8 = sub_100057880();
  sub_1000396C4(v8, qword_10007F7A0);
  v9 = sub_100057850();
  v10 = sub_100057D60();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136446210;
    type metadata accessor for UIEdgeInsets(0);
    v13 = sub_100057A70();
    v15 = sub_10000D850(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "keyboard edge inset: %{public}s", v11, 0xCu);
    sub_10000904C(v12);
    sub_1000396A0();
    sub_10002A620();
  }

  return v3;
}

void sub_10003388C()
{
  v1 = v0;
  v2 = [v0 request];
  if (!v2)
  {
    goto LABEL_4;
  }

  v17 = v2;
  if ([v2 isFinished])
  {

LABEL_4:
    if (qword_10007E920 != -1)
    {
      sub_1000395BC();
    }

    v3 = sub_100057880();
    sub_1000396C4(v3, qword_10007F7A0);
    v4 = sub_100057850();
    v5 = sub_100057D80();
    if (sub_1000397F4(v5))
    {
      *sub_100039864() = 0;
      sub_10003973C(&_mh_execute_header, v6, v7, "=== User Disconnect (no active request) ===");
      sub_1000396A0();
    }

    v8 = [v1 requestCompleted];

    [v1 completeRequest:v8];
    return;
  }

  v9 = *&v0[OBJC_IVAR___DisplayMainViewController_presentedAlert];
  if (v9 && *(v9 + OBJC_IVAR____TtC17ContinuityDisplay17DisplayModalAlert_error))
  {
    swift_errorRetain();
    if (qword_10007E920 != -1)
    {
      sub_1000395BC();
    }

    v10 = sub_100057880();
    v11 = sub_1000396C4(v10, qword_10007F7A0);
    __chkstk_darwin(v11);
    sub_10002AC8C(sub_100033B64, 0, sub_10000DF6C);
    v12 = sub_100057660();
    [v17 setError:v12];
  }

  else
  {
    if (qword_10007E920 != -1)
    {
      sub_1000395BC();
    }

    v13 = sub_100057880();
    sub_1000396C4(v13, qword_10007F7A0);
    v14 = sub_100057850();
    v15 = sub_100057D80();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = sub_100039864();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "=== User Disconnect ===", v16, 2u);
      sub_10002A620();
    }

    [v17 cancel];
  }
}

void sub_100033B80()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 frame];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100033BE8()
{
  v0 = sub_100057880();
  sub_100026FF4(v0, qword_10007F7A0);
  sub_100026CEC(v0, qword_10007F7A0);
  return sub_100057860();
}

uint64_t sub_100033C60(void *a1)
{
  v2 = [a1 type];
  v3 = sub_100057A50();
  v5 = v4;

  if (v3 == 0x7065656C7364 && v5 == 0xE600000000000000)
  {
  }

  else
  {
    v7 = sub_100058230();

    if ((v7 & 1) == 0)
    {
      return result;
    }
  }

  return sub_100033D2C(a1);
}

uint64_t sub_100033D2C(void *a1)
{
  v2 = v1;
  if ([a1 objectValue])
  {
    sub_100057FE0();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (!*(&v12 + 1))
  {
    return sub_1000392FC(&v13, &unk_10007EEE0);
  }

  sub_100005890(&qword_10007F1A0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  sub_10000EB54(0x7065656C7364, 0xE600000000000000, v10, &v13);

  if (!*(&v14 + 1))
  {
    return sub_1000392FC(&v13, &unk_10007EEE0);
  }

  result = swift_dynamicCast();
  if ((result & 1) != 0 && v11 != v1[OBJC_IVAR___DisplayMainViewController_displayShouldSleep])
  {
    v1[OBJC_IVAR___DisplayMainViewController_displayShouldSleep] = v11;
    if (v11)
    {
      if (qword_10007E920 != -1)
      {
        swift_once();
      }

      v4 = sub_100057880();
      sub_100026CEC(v4, qword_10007F7A0);
      v5 = sub_100057850();
      v6 = sub_100057D80();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_21;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "=== Host Display Sleep ===";
    }

    else
    {
      if (qword_10007E920 != -1)
      {
        swift_once();
      }

      v9 = sub_100057880();
      sub_100026CEC(v9, qword_10007F7A0);
      v5 = sub_100057850();
      v6 = sub_100057D80();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_21;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "=== Host Display Wake ===";
    }

    _os_log_impl(&_mh_execute_header, v5, v6, v8, v7, 2u);

LABEL_21:

    sub_10002D3BC();
    if (v11)
    {
      result = [v2 backgrounded];
      if ((result & 1) == 0)
      {
        return SBSLockDevice();
      }
    }

    else
    {
      return SBSUndimScreen();
    }
  }

  return result;
}

id sub_100033FDC(void *a1, void *a2)
{
  v4 = sub_100005A1C(0, &qword_10007FB18);
  sub_100057A50();
  v5 = a1;
  v31 = a2;
  sub_100039928();
  v6 = sub_10003433C();
  isa = sub_100057C90().super.super.isa;
  v8 = sub_100057A20();
  sub_1000396DC();

  v9 = sub_100057C90().super.super.isa;
  v10 = sub_100057A20();
  sub_1000396DC();

  v11 = sub_100057CE0().super.super.isa;
  v12 = sub_100057A20();
  sub_1000396DC();

  sub_100057A50();
  v13 = sub_10003433C();
  sub_100057A50();
  v14 = sub_10003433C();
  v15 = sub_100057CE0().super.super.isa;
  v16 = sub_100057A20();
  [v6 setValue:v15 forKey:v16];

  v17 = sub_100057CE0().super.super.isa;
  v18 = sub_100057A20();
  [v13 setValue:v17 forKey:v18];

  v19 = sub_100057CE0().super.super.isa;
  v20 = sub_100057A20();
  [v14 setValue:v19 forKey:v20];

  v21 = objc_opt_self();
  v22 = v6;
  v23 = v13;
  v24 = v14;
  [v21 begin];
  [v21 setDisableActions:1];
  v25 = [v5 layer];
  sub_100005890(&qword_10007FB20);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10005B7A0;
  *(v26 + 32) = v22;
  *(v26 + 56) = v4;
  *(v26 + 64) = v23;
  *(v26 + 120) = v4;
  *(v26 + 88) = v4;
  *(v26 + 96) = v24;
  v27 = v22;
  v28 = v23;
  v29 = v24;
  sub_1000393AC(v26, v25);

  [v21 commit];
  return v5;
}

id sub_10003433C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_100057A20();

  v2 = [v0 initWithType:v1];

  return v2;
}

id sub_1000343B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_100057A20();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() animationWithKeyPath:v2];

  return v3;
}

void sub_100034420()
{
  sub_100019748();
  v1 = *(v0 + OBJC_IVAR___DisplayMainViewController_displayContainer);
  v2 = *(v0 + OBJC_IVAR___DisplayMainViewController_displayViewController);
  v3 = v1;
  v4 = [v2 view];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 snapshotViewAfterScreenUpdates:0];

    if (v6)
    {
      [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v3 addSubview:v6];
      v7 = objc_opt_self();
      sub_100005890(&unk_10007F1B0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_10005B7E0;
      v9 = [v6 leftAnchor];
      v10 = [v3 leftAnchor];
      v11 = [v9 constraintEqualToAnchor:v10];

      *(v8 + 32) = v11;
      v12 = [v6 rightAnchor];
      v13 = sub_1000396FC([v3 rightAnchor]);

      *(v8 + 40) = v13;
      v14 = [v6 topAnchor];
      v15 = sub_1000396FC([v3 topAnchor]);

      *(v8 + 48) = v15;
      v16 = [v6 bottomAnchor];
      v17 = sub_1000396FC([v3 bottomAnchor]);

      *(v8 + 56) = v17;
      sub_1000398B0(v18, &qword_10007FB10);
      isa = sub_100057BD0().super.isa;

      [v7 activateConstraints:isa];

      v20 = v3;
      v3 = v6;
      sub_100033FDC(v20, v3);
      [objc_opt_self() flush];
    }

    sub_100019718();
  }

  else
  {
    __break(1u);
  }
}

void sub_1000346F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v36 = a4;
  v37 = a1;
  v5 = sub_1000577F0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_100005890(&unk_10007FB00);
  __chkstk_darwin(v9);
  v11 = &v33[-v10];
  v12 = sub_100005890(&unk_10007F190);
  __chkstk_darwin(v12 - 8);
  v14 = &v33[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v33[-v16];
  __chkstk_darwin(v18);
  v20 = &v33[-v19];
  v21 = *(a2 + OBJC_IVAR___DisplayViewController_session);
  if (v21)
  {
    v22 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_uuid;
    swift_beginAccess();
    (*(v6 + 16))(v20, v21 + v22, v5);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  sub_10001918C(v20, v23, 1, v5);
  v24 = *(v9 + 48);
  sub_100038FD0(v37, v11, &unk_10007F190);
  sub_100038FD0(v20, &v11[v24], &unk_10007F190);
  if (sub_100019110(v11, 1, v5) != 1)
  {
    sub_100038FD0(v11, v17, &unk_10007F190);
    if (sub_100019110(&v11[v24], 1, v5) != 1)
    {
      (*(v6 + 32))(v8, &v11[v24], v5);
      sub_100039354();
      v34 = sub_100057A00();
      v25 = *(v6 + 8);
      v25(v8, v5);
      sub_1000392FC(v20, &unk_10007F190);
      v25(v17, v5);
      sub_1000392FC(v11, &unk_10007F190);
      if ((v34 & 1) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

    sub_1000392FC(v20, &unk_10007F190);
    (*(v6 + 8))(v17, v5);
LABEL_9:
    sub_1000392FC(v11, &unk_10007FB00);
    return;
  }

  sub_1000392FC(v20, &unk_10007F190);
  if (sub_100019110(&v11[v24], 1, v5) != 1)
  {
    goto LABEL_9;
  }

  sub_1000392FC(v11, &unk_10007F190);
LABEL_11:
  sub_100038FD0(v37, v14, &unk_10007F190);
  if (sub_100019110(v14, 1, v5) == 1)
  {
    isa = 0;
  }

  else
  {
    isa = sub_1000577A0().super.isa;
    (*(v6 + 8))(v14, v5);
  }

  v27 = sub_100018A40(isa);

  v28 = sub_100057850();
  v29 = sub_100057D70();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 134217984;
    *(v30 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v28, v29, "=== Reconfiguration Timeout (%lx ===", v30, 0xCu);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    [Strong completeRequest:{objc_msgSend(Strong, "requestCompleted")}];
  }
}

void sub_100034C14()
{
  if (v0[OBJC_IVAR___DisplayMainViewController_reconfiguring] == 1)
  {
    v1 = v0;
    v2 = swift_allocObject();
    v3 = &v0[OBJC_IVAR___DisplayMainViewController_snapshot];
    sub_100019514();
    swift_beginAccess();
    v4 = *(v3 + 1);
    v5 = v3[16];
    *(v2 + 16) = *v3;
    *(v2 + 24) = v4;
    *(v2 + 32) = v5;
    v6 = OBJC_IVAR___DisplayMainViewController_reconfigureWatchdog;
    if (*&v1[OBJC_IVAR___DisplayMainViewController_reconfigureWatchdog])
    {
      swift_getObjectType();
      v7 = sub_100039928();
      sub_100039468(v7, v8);
      swift_unknownObjectRetain();
      sub_100057E70();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = sub_100039928();
      sub_100039468(v9, v10);
    }

    *&v1[v6] = 0;
    swift_unknownObjectRelease();
    sub_100005A1C(0, &qword_10007EEC0);
    v11 = sub_100057DC0();
    sub_100039778();
    v12 = swift_allocObject();
    *(v12 + 16) = v2;
    *(v12 + 24) = v1;

    v13 = v1;
    OS_dispatch_queue.after(_:closure:)();
  }
}

void sub_100034D88(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (*(a1 + 16))
  {
    sub_10003183C(0, a1 + 16, *(a2 + OBJC_IVAR___DisplayMainViewController_configurationAnimationDuration));
  }

  swift_endAccess();
  v4 = a2 + OBJC_IVAR___DisplayMainViewController_snapshot;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  sub_1000392BC(v5, v6);
  *(a2 + OBJC_IVAR___DisplayMainViewController_reconfiguring) = 0;
}

void sub_100034E3C(uint64_t a1, char a2)
{
  v3 = v2;
  switch(a2)
  {
    case 3:
    case 4:
    case 10:
    case 11:
      if (v2[OBJC_IVAR___DisplayMainViewController_reconfiguring])
      {
        return;
      }

      goto LABEL_5;
    case 12:
      if (!*(a1 + 16) || (v5 = sub_100037E80(12), (v6 & 1) == 0) || (v7 = sub_100039858(v5), sub_100008DD8(v7, v29), !sub_10003971C()) || (v28 & 1) == 0)
      {
        v23 = OBJC_IVAR___DisplayMainViewController_qosViewController;
        v24 = *&v2[OBJC_IVAR___DisplayMainViewController_qosViewController];
        if (!v24)
        {
          return;
        }

        v25 = v24;
        v26 = [v25 view];
        if (v26)
        {
          v27 = v26;
          [v26 removeFromSuperview];

          v15 = *&v3[v23];
          *&v3[v23] = 0;
          goto LABEL_24;
        }

        __break(1u);
        goto LABEL_27;
      }

      v8 = OBJC_IVAR___DisplayMainViewController_qosViewController;
      if (*&v2[OBJC_IVAR___DisplayMainViewController_qosViewController])
      {
        return;
      }

      v9 = objc_allocWithZone(type metadata accessor for QOSControllerViewController());
      v10 = sub_10000E010(1);
      v11 = *&v3[OBJC_IVAR___DisplayMainViewController_sidebarController];
      if (!v11)
      {
        goto LABEL_16;
      }

      v12 = v11;
      v13 = [v10 view];
      if (!v13)
      {
LABEL_27:
        __break(1u);
        JUMPOUT(0x100035138);
      }

      v14 = v13;
      [*&v12[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_topStack] addArrangedSubview:v13];

LABEL_16:
      v15 = *&v3[v8];
      *&v3[v8] = v10;
LABEL_24:

      return;
    case 13:
      if (qword_10007E8E8 != -1)
      {
        sub_100039680();
      }

      sub_10003980C();
      sub_1000075E0();
      swift_endAccess();
      v16 = [v2 request];
      if (v16)
      {
        v17 = v16;
        sub_100005890(&unk_10007F1B0);
        sub_100019698();
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_10005B500;
        v29[3] = &type metadata for Bool;
        LOBYTE(v29[0]) = 1;
        v19 = objc_allocWithZone(SidecarItem);
        v20 = sub_100037DE4(v29);
        *(v18 + 32) = v20;
        sub_1000398B0(v20, &unk_10007FAA0);
        sub_10003984C();
        isa = sub_100057BD0().super.isa;

        sub_100039784(v22, "sendItems:complete:");
      }

      return;
    case 17:
    case 18:
    case 19:
      sub_100008634(18, a1);
      qword_10007F1F0 = v4;
LABEL_5:

      sub_10002E594();
      return;
    default:
      return;
  }
}

void sub_10003517C()
{
  if (qword_10007E920 != -1)
  {
    sub_1000395BC();
  }

  v0 = sub_100057880();
  sub_1000396C4(v0, qword_10007F7A0);
  oslog = sub_100057850();
  v1 = sub_100057D80();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = sub_100039864();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "=== Session Configuration Complete ===", v2, 2u);
    sub_10002A620();
  }
}

void sub_100035240()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___DisplayMainViewController_presentedAlert];
  v3 = *&v0[OBJC_IVAR___DisplayMainViewController_displayViewController];
  v4 = v2;
  v5 = v3;
  sub_1000579C0();
  sub_10002F894();

  if (qword_10007E920 != -1)
  {
    sub_1000395BC();
  }

  v6 = sub_100057880();
  sub_1000396C4(v6, qword_10007F7A0);
  v7 = sub_100057850();
  v8 = sub_100057D80();
  if (sub_10003975C(v8))
  {
    *sub_100039864() = 0;
    sub_10003963C();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    sub_10002A620();
  }

  sub_10002EC5C(0, 0.0);
  v14 = &v1[OBJC_IVAR___DisplayMainViewController_snapshot];
  sub_100027274();
  v15 = *v14;
  if (*v14)
  {
    v16 = *(v14 + 1);
    v23[0] = *v14;
    v23[1] = v16;
    v24 = v14[16] & 1;
    v17 = *&v1[OBJC_IVAR___DisplayMainViewController_configurationAnimationDuration];
    v18 = v4;
    v19 = v1;
    sub_100039468(v15, v16);
    sub_100030508(0, v23, v2, v19, v17);

    v20 = *v14;
    v21 = *(v14 + 1);
    *v14 = 0;
    *(v14 + 1) = 0;
    v14[16] = 0;
    sub_1000392BC(v20, v21);
  }

  else if (v2)
  {
    v22 = v4;
    sub_100033004(v22);
  }

  [v1 serviceReady];
}

id sub_100035440(id a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    sub_100033004(v3);
  }

  return [a1 removeFromSuperview];
}

void sub_10003549C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_errorRetain();
    if (qword_10007E920 != -1)
    {
      swift_once();
    }

    v5 = sub_100057880();
    v6 = sub_100026CEC(v5, qword_10007F7A0);
    __chkstk_darwin(v6);
    __chkstk_darwin(v7);
    sub_10002AC8C(sub_10003941C, v8, sub_10000DF6C);
  }

  else
  {
    if (qword_10007E920 != -1)
    {
      swift_once();
    }

    v9 = sub_100057880();
    sub_100026CEC(v9, qword_10007F7A0);

    v13 = sub_100057850();
    v10 = sub_100057D70();

    if (os_log_type_enabled(v13, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_10000D850(a1, a2, &v14);
      _os_log_impl(&_mh_execute_header, v13, v10, "=== Session Interrupted (%{public}s) ===", v11, 0xCu);
      sub_10000904C(v12);
    }

    else
    {
    }
  }
}

unint64_t sub_1000356F4(uint64_t a1, void *a2)
{
  sub_100058070(32);

  v5._countAndFlagsBits = a1;
  v5._object = a2;
  sub_100057AF0(v5);
  v6._countAndFlagsBits = 0x3D3D3D2029;
  v6._object = 0xE500000000000000;
  sub_100057AF0(v6);
  return 0xD000000000000019;
}

void sub_100035844(char a1)
{
  sub_1000399D8();
  objc_msgSendSuper2(&v2, "setBackgrounded:", a1 & 1);
  sub_100035888();
}

void sub_100035888()
{
  if ([v0 backgrounded])
  {
    sub_1000328C0();
    if (qword_10007E920 != -1)
    {
      swift_once();
    }

    v1 = sub_100057880();
    sub_100026CEC(v1, qword_10007F7A0);
    oslog = sub_100057850();
    v2 = sub_100057D80();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      v4 = "=== Display Service Foreground ===";
LABEL_10:
      _os_log_impl(&_mh_execute_header, oslog, v2, v4, v3, 2u);
    }
  }

  else
  {
    if (qword_10007E920 != -1)
    {
      swift_once();
    }

    v5 = sub_100057880();
    sub_100026CEC(v5, qword_10007F7A0);
    oslog = sub_100057850();
    v2 = sub_100057D80();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      v4 = "=== Display Service Background ===";
      goto LABEL_10;
    }
  }
}

uint64_t sub_100035A18(char *a1)
{
  v3 = a1[OBJC_IVAR____TtC17ContinuityDisplay17RoundedCornerView_corner];
  sub_100005890(&unk_10007F1B0);
  v4 = swift_allocObject();
  v5 = off_100073D40[v3];
  *(v4 + 16) = xmmword_10005C010;
  v6 = off_100073D60[v3];
  v7 = [a1 *v5];
  v8 = OBJC_IVAR___DisplayMainViewController_displayContainer;
  v9 = [*(v1 + OBJC_IVAR___DisplayMainViewController_displayContainer) *v5];
  v10 = [v7 constraintEqualToAnchor:v9];

  *(v4 + 32) = v10;
  v11 = [a1 *v6];
  v12 = [*(v1 + v8) *v6];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v4 + 40) = v13;
  sub_10003CA78(v4);
}

uint64_t sub_100035B94(uint64_t a1, char a2)
{
  result = sub_100035C64(a2);
  if ((v3 & 1) == 0)
  {
    v4 = result;
    v5 = sub_10002B63C();
    v7 = v6;
    v8 = type metadata accessor for DisplayMainViewController.UsageSummary(0);
    result = sub_100019110(v7, 1, v8);
    if (result)
    {
      return (v5)(v13, 0);
    }

    else
    {
      v9 = v7 + *(v8 + 28);
      v10 = *(v9 + 8 * v4);
      v11 = __CFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        __break(1u);
      }

      else
      {
        *(v9 + 8 * v4) = v12;
        return (v5)(v13, 0);
      }
    }
  }

  return result;
}

uint64_t sub_100035C64(char a1)
{
  v2 = *v1;
  if (*(v1 + 32))
  {
    v4 = v1[1];
    v3 = v1[2];
    v5 = v1[3];
    if (*(v1 + 32) == 1)
    {
      v6 = v2 == 8 && v4 == 6;
      if (v6 && (!v3 && v5 == 0xE000000000000000 || (sub_100058230() & 1) != 0))
      {
        return 13;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v12 = v3 | v4;
      if (v12 | v2 | v5)
      {
        v13 = v12 | v5;
        if (v13)
        {
          v14 = 0;
        }

        else
        {
          v14 = v2 == 2;
        }

        v15 = 2;
        if (!v14)
        {
          v15 = 0;
        }

        if (v2 == 1 && v13 == 0)
        {
          return 14;
        }

        else
        {
          return v15;
        }
      }

      else
      {
        return 16;
      }
    }
  }

  else if (v2)
  {
    if (a1)
    {
      return 11;
    }

    else
    {
      return 10;
    }
  }

  else
  {
    v8 = 4;
    if (a1)
    {
      v8 = 5;
    }

    v9 = v8 & (v2 << 60 >> 63);
    v10 = 6;
    if (a1)
    {
      v10 = 7;
    }

    if ((v2 & 4) != 0)
    {
      v9 = v10;
    }

    v11 = 8;
    if (a1)
    {
      v11 = 9;
    }

    if ((v2 & 2) != 0)
    {
      return v11;
    }

    else
    {
      return v9;
    }
  }
}

void sub_100035D88(int8x16_t *a1)
{
  sub_100035B94(a1, 0);
  if (a1[2].i8[0] == 2 && (v3 = vorrq_s8(*a1, a1[1]), !*&vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL))))
  {

    sub_100035F18();
  }

  else
  {
    v4 = [v1 request];
    if (v4)
    {
      v5 = v4;
      sub_100005890(&unk_10007F1B0);
      sub_100019698();
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_10005B500;
      v7 = sub_1000204F8();
      v10[3] = sub_100005890(&qword_10007FAB8);
      v10[0] = v7;
      v8 = objc_allocWithZone(SidecarItem);
      *(v6 + 32) = sub_100037DE4(v10);
      sub_100005A1C(0, &unk_10007FAA0);
      isa = sub_100057BD0().super.isa;

      [v5 sendItems:isa complete:0];
    }
  }
}

void sub_100035F18()
{
  sub_1000328C0();
  type metadata accessor for DisplayMainViewController.DarkAlert();
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v39._countAndFlagsBits = 0xE500000000000000;
  v50._object = 0x800000010005FD90;
  v50._countAndFlagsBits = 0xD000000000000024;
  v52.value._countAndFlagsBits = 0;
  v52.value._object = 0;
  v3.super.isa = v2;
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  v4 = sub_100057650(v50, v52, v3, v54, v39);
  v6 = v5;

  v7 = sub_100036794(v4, v6, 0, 0, 0);
  sub_100005A1C(0, &qword_10007FB40);
  v8 = [v1 mainBundle];
  v39._countAndFlagsBits = 0xEE006E6F69746361;
  v51._countAndFlagsBits = 0x656E6E6F63736944;
  v51._object = 0xEA00000000007463;
  v53.value._countAndFlagsBits = 0;
  v53.value._object = 0;
  v9.super.isa = v8;
  v55._countAndFlagsBits = 0;
  v55._object = 0xE000000000000000;
  v10 = sub_100057650(v51, v53, v9, v55, v39);
  v12 = v11;

  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  v14 = v0;
  v15 = sub_1000369B4(v10, v12, 2, sub_10003956C, v13);
  [v7 addAction:v15];

  v16 = v7;
  v17 = [v16 popoverPresentationController];
  if (v17)
  {
    v18 = v17;
    v19 = OBJC_IVAR___DisplayMainViewController_sidebarController;
    v20 = *&v14[OBJC_IVAR___DisplayMainViewController_sidebarController];
    if (v20 && (v21 = *(v20 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_buttonsByIdentifer), memset(v49, 0, 32), v49[32] = 2, , v22 = sub_10000EBB8(v49, v21), , v22))
    {
      [v18 setSourceView:v22];
      v23 = *&v14[v19];
      v24 = 0.0;
      if (v23)
      {
        v25 = v22[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar6Button_identifier + 32];
        v26 = *&v22[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar6Button_identifier + 16];
        v47[0] = *&v22[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar6Button_identifier];
        v47[1] = v26;
        v48 = v25;
        v27 = v23;
        sub_10001C3B4(v47, &v39._object);
        sub_10001B414(v45);
        v28 = *v45;
        v29 = *&v45[1];
        v30 = *&v45[2];
        v31 = *&v45[3];
        sub_10001C410(v47);

        v32 = 0.0;
        v33 = 0.0;
        v34 = 0.0;
        if ((v46 & 1) == 0)
        {
          v24 = v28;
          v32 = v29;
          v33 = v30;
          v34 = v31;
        }
      }

      else
      {
        v32 = 0.0;
        v33 = 0.0;
        v34 = 0.0;
      }

      [v18 setSourceRect:{v24, v32, v33, v34}];
      [v18 setPermittedArrowDirections:12];
      [v18 _setPopoverBackgroundStyle:7];
    }

    else
    {
    }
  }

  v35 = [v16 view];
  if (v35)
  {
    v36 = v35;
    v37 = [objc_opt_self() clearColor];
    [v36 setBackgroundColor:v37];

    [v16 setModalPresentationStyle:7];
    v43 = VideoStream.qosMonitorServerDidDie(_:);
    v44 = 0;
    v39._object = _NSConcreteStackBlock;
    v40 = 1107296256;
    v41 = sub_10000AF8C;
    v42 = &unk_100073CF0;
    v38 = _Block_copy(&v39._object);
    [v14 presentViewController:v16 animated:1 completion:v38];
    _Block_release(v38);
  }

  else
  {
    __break(1u);
  }
}

void sub_100036384(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_100035B94(a1, 0);
  }

  if (*(a1 + 32) == 2 && ((sub_10003994C(), v6 == 1) ? (v7 = v5 == 0) : (v7 = 0), v7))
  {
    if (a2)
    {

      sub_100032758();
    }

    else
    {

      sub_1000328C0();
    }
  }

  else
  {
    v8 = [v2 request];
    if (v8)
    {
      v9 = v8;
      sub_100005890(&unk_10007F1B0);
      sub_100019698();
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_10005B500;
      sub_100005890(&qword_10007FAB0);
      inited = swift_initStackObject();
      v12 = sub_1000397C8(inited, xmmword_10005B5A0);
      v13 = sub_100005890(&qword_10007FAB8);
      inited[3].n128_u64[0] = v12;
      inited[4].n128_u64[1] = v13;
      inited[5].n128_u64[0] = 1853321060;
      inited[5].n128_u64[1] = 0xE400000000000000;
      isa = sub_100057C90().super.super.isa;
      inited[7].n128_u64[1] = swift_getObjectType();
      inited[6].n128_u64[0] = isa;
      v15 = sub_1000579C0();
      v20[3] = sub_100005890(&qword_10007F1A0);
      v20[0] = v15;
      v16 = objc_allocWithZone(SidecarItem);
      v17 = sub_100037DE4(v20);
      *(v10 + 32) = v17;
      sub_1000398B0(v17, &unk_10007FAA0);
      sub_10003984C();
      v18 = sub_100057BD0().super.isa;

      sub_100039784(v19, "sendItems:complete:");
    }
  }
}

void sub_1000365A4(uint64_t a1)
{
  sub_100035B94(a1, 0);
  if (*(a1 + 32) == 2)
  {
    sub_10003994C();
    if (v4 == 3 && v3 == 0)
    {
      v1[OBJC_IVAR___DisplayMainViewController_menuOverrideEnabled] = (v1[OBJC_IVAR___DisplayMainViewController_menuOverrideEnabled] & 1) == 0;
      sub_10002B6A4(3, &OBJC_IVAR___DisplayMainViewController_menuOverrideEnabled);
    }
  }

  v6 = [v1 request];
  if (v6)
  {
    v7 = v6;
    sub_100005890(&unk_10007F1B0);
    sub_100019698();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_10005B500;
    sub_100005890(&qword_10007FAB0);
    inited = swift_initStackObject();
    v10 = sub_1000397C8(inited, xmmword_10005B5A0);
    v11 = sub_100005890(&qword_10007FAB8);
    inited[3].n128_u64[0] = v10;
    inited[4].n128_u64[1] = v11;
    inited[5].n128_u64[0] = 28271;
    inited[5].n128_u64[1] = 0xE200000000000000;
    isa = sub_100057C90().super.super.isa;
    inited[7].n128_u64[1] = swift_getObjectType();
    inited[6].n128_u64[0] = isa;
    v13 = sub_1000579C0();
    v17[3] = sub_100005890(&qword_10007F1A0);
    v17[0] = v13;
    v14 = objc_allocWithZone(SidecarItem);
    *(v8 + 32) = sub_100037DE4(v17);
    sub_100005A1C(0, &unk_10007FAA0);
    v15 = sub_100057BD0().super.isa;

    sub_100039784(v16, "sendItems:complete:");
  }
}

id sub_100036794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = sub_100057A20();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_100057A20();

LABEL_6:
  v9 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v7 message:v8 preferredStyle:a5];

  return v9;
}

void sub_10003684C(uint64_t a1, void *a2)
{
  if (qword_10007E920 != -1)
  {
    swift_once();
  }

  v3 = sub_100057880();
  sub_100026CEC(v3, qword_10007F7A0);
  v4 = sub_100057850();
  v5 = sub_100057D80();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "=== User Disconnect Button ===", v6, 2u);
  }

  v7 = [a2 request];
  if (v7)
  {
    v9 = v7;
    [v7 cancel];
  }

  else
  {
    v8 = [a2 requestCompleted];

    [a2 completeRequest:v8];
  }
}

id sub_1000369B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = sub_100057A20();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100036ABC;
  v12[3] = &unk_100073D18;
  v9 = _Block_copy(v12);

LABEL_6:
  v10 = [swift_getObjCClassFromMetadata() actionWithTitle:v8 style:a3 handler:v9];
  _Block_release(v9);

  return v10;
}

void sub_100036ABC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_100036B34(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_100057A20();
  }

  else
  {
    v5 = 0;
  }

  v10 = type metadata accessor for DisplayMainViewController.DarkAlert();
  sub_1000397A0();
  v8 = objc_msgSendSuper2(v6, v7, v3, v10);

  return v8;
}

id sub_100036BC8(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DisplayMainViewController.DarkAlert();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_100036CC0(__n128 a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100039824(xmmword_10005B7C0, result, v2, v3, v4, v5, v6, v7, v8, *&a1, v11, v9, v12);
    sub_100036384(&v11, 0);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_100036D9C()
{
  sub_100039894(OBJC_IVAR____TtCC17ContinuityDisplay25DisplayMainViewController18DisplayUndoManager_delegate);
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DisplayMainViewController.DisplayUndoManager();
  return objc_msgSendSuper2(&v2, "init");
}

void sub_100036E98()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100033664();
    sub_1000395F4();
    swift_unknownObjectRelease();
  }

  sub_100039608();
}

uint64_t sub_100036F74(__n128 a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100039824(xmmword_10005B7C0, result, v2, v3, v4, v5, v6, v7, v8, *&a1, v11, v9, v12);
    sub_100036384(&v11, 0);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100037010()
{
  v1 = [objc_allocWithZone(UIView) init];
  [v0 setView:v1];
}

void sub_1000370C0(uint64_t a1, uint64_t a2)
{
  v5 = [objc_opt_self() sharedInstance];
  if (!v5 || (v2 = v5, v6 = [v5 isInHardwareKeyboardMode], v2, (v6 & 1) == 0))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = [Strong request];
      sub_100019828();
      swift_unknownObjectRelease();
      if (v2)
      {
        sub_100005890(&unk_10007F1B0);
        sub_100019698();
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_10005B500;
        v13[3] = &type metadata for String;
        v13[0] = a1;
        v13[1] = a2;
        v10 = objc_allocWithZone(SidecarItem);

        v11 = sub_100037DE4(v13);
        *(v9 + 32) = v11;
        sub_1000398B0(v11, &unk_10007FAA0);
        isa = sub_100057BD0().super.isa;

        [v2 sendItems:isa complete:0];
      }
    }
  }
}

void sub_1000372B4()
{
  v0 = [objc_opt_self() sharedInstance];
  if (!v0 || (v1 = v0, v2 = [v0 isInHardwareKeyboardMode], v1, (v2 & 1) == 0))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = [Strong request];
      swift_unknownObjectRelease();
      if (v4)
      {
        sub_100005890(&unk_10007F1B0);
        sub_100019698();
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_10005B500;
        v9[3] = &type metadata for String;
        v9[0] = 0;
        v9[1] = 0xE000000000000000;
        v6 = objc_allocWithZone(SidecarItem);
        v7 = sub_100037DE4(v9);
        *(v5 + 32) = v7;
        sub_1000398B0(v7, &unk_10007FAA0);
        sub_10003984C();
        isa = sub_100057BD0().super.isa;

        [v4 sendItems:isa complete:0];
      }
    }
  }
}

id sub_1000374E4(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100039894(OBJC_IVAR____TtCC17ContinuityDisplay25DisplayMainViewController17KeyboardResponder_delegate);
  if (a2)
  {
    v6 = sub_100057A20();
  }

  else
  {
    v6 = 0;
  }

  v11 = type metadata accessor for DisplayMainViewController.KeyboardResponder();
  sub_1000397A0();
  v9 = objc_msgSendSuper2(v7, v8, v3, v11);

  return v9;
}

uint64_t sub_100037590(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t))
{
  if (a3)
  {
    sub_100057A50();
  }

  v7 = a4;
  v8 = sub_100039928();
  return a5(v8);
}

id sub_100037600(void *a1)
{
  sub_100039894(OBJC_IVAR____TtCC17ContinuityDisplay25DisplayMainViewController17KeyboardResponder_delegate);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DisplayMainViewController.KeyboardResponder();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1000376B4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1000376F8(uint64_t *a1, double a2, uint64_t a3, uint64_t a4)
{
  v7.super.isa = sub_1000577A0().super.isa;
  v8 = type metadata accessor for DisplayMainViewController.UsageSummary(0);
  if (a1)
  {
    SidecarAWDLogSidebarUsageSummary(v7.super.isa, *(a4 + *(v8 + 20)), a1, a2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000377C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t UIScreenReferenceDisplayModeStatus.description.getter(uint64_t a1)
{
  result = 0x6F70707553746F6ELL;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x6C62616E45746F6ELL;
      break;
    case 2:
      v3 = 0x6574696D696CLL;
      goto LABEL_5;
    case 3:
      v3 = 0x656C62616E65;
LABEL_5:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
      break;
    default:
      v4._countAndFlagsBits = sub_1000581F0();
      sub_100057AF0(v4);

      v5._countAndFlagsBits = 41;
      v5._object = 0xE100000000000000;
      sub_100057AF0(v5);
      result = 0x286E776F6E6B6E75;
      break;
  }

  return result;
}

void sub_10003796C()
{
  sub_100037A70();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100037A70()
{
  if (!qword_10007F8A8)
  {
    type metadata accessor for DisplayMainViewController.UsageSummary(255);
    v0 = sub_100057F20();
    if (!v1)
    {
      atomic_store(v0, &qword_10007F8A8);
    }
  }
}

__n128 sub_100037B54(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100037B68(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100037BA8(uint64_t result, int a2, int a3)
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

uint64_t sub_100037C0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000577F0();

  return sub_100019110(a1, a2, v4);
}

uint64_t sub_100037C68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000577F0();

  return sub_10001918C(a1, a2, a2, v4);
}

void sub_100037CB4()
{
  sub_1000577F0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SidecarSidebarPosition(319);
    if (v1 <= 0x3F)
    {
      sub_100037D58();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100037D58()
{
  v0 = qword_10007FA60;
  if (!qword_10007FA60)
  {
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v0 = TupleTypeMetadata;
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_10007FA60);
    }
  }

  return v0;
}

id sub_100037DE4(void *a1)
{
  sub_10000AAF4(a1, a1[3]);
  v3 = sub_100058220();
  v4 = sub_100057A20();

  v5 = [v1 initWithObject:v3 type:v4];
  swift_unknownObjectRelease();

  sub_10000904C(a1);
  return v5;
}

unint64_t sub_100037E80(char a1)
{
  sub_1000399C0();
  sub_100006F48(a1);
  sub_100057AB0();

  v2 = sub_1000582F0();

  return sub_100038078(a1, v2);
}

unint64_t sub_100037F00(uint64_t a1, uint64_t a2)
{
  sub_1000399C0();
  sub_100057AB0();
  v4 = sub_1000582F0();

  return sub_1000386A8(a1, a2, v4);
}

unint64_t sub_100037F70(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100058010(*(v2 + 40));

  return sub_10003875C(a1, v4);
}

unint64_t sub_100037FB4()
{
  sub_1000399C0();
  sub_1000208E4();
  sub_1000582F0();
  v0 = sub_10003984C();

  return sub_100038820(v0, v1);
}

unint64_t sub_100038014(unsigned __int8 a1)
{
  sub_1000399C0();
  sub_1000582C0(a1);
  v2 = sub_1000582F0();

  return sub_1000389DC(a1, v2);
}

unint64_t sub_100038078(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEA00000000007963;
      v8 = 0x6E6574614C776F4CLL;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v9 = 1115185485;
          goto LABEL_13;
        case 2:
          v9 = 1114532173;
LABEL_13:
          v8 = v9 | 0x6172746900000000;
          v7 = 0xEA00000000006574;
          break;
        case 3:
          v8 = 0x63756F54776F6873;
          v10 = 1918984808;
          goto LABEL_25;
        case 4:
          v8 = 0x7261426863756F74;
          v11 = 7368532;
          goto LABEL_11;
        case 5:
          v8 = 0x7261426863756F74;
          v12 = 0x6E696772614DLL;
          goto LABEL_20;
        case 6:
          v8 = 0x5472616365646953;
          v7 = 0xEF636E7953656D69;
          break;
        case 7:
          v7 = 0xE700000000000000;
          v8 = 0x73746E65636572;
          break;
        case 8:
          v8 = 0xD000000000000010;
          v7 = 0x800000010005DFC0;
          break;
        case 9:
          v8 = 0x72754373776F6873;
          v11 = 7499635;
LABEL_11:
          v7 = v11 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 0xA:
          v8 = 0x5372616265646973;
          v10 = 1853321064;
          goto LABEL_25;
        case 0xB:
          v8 = 0x5272616265646973;
          v10 = 1952999273;
          goto LABEL_25;
        case 0xC:
          v8 = 0xD000000000000015;
          v7 = 0x800000010005E000;
          break;
        case 0xD:
          v7 = 0xEA00000000007366;
          v8 = 0x6572507465736572;
          break;
        case 0xE:
          v8 = 0xD000000000000012;
          v7 = 0x800000010005E030;
          break;
        case 0xF:
          v8 = 0xD000000000000015;
          v7 = 0x800000010005E050;
          break;
        case 0x10:
          v8 = 0xD000000000000012;
          v7 = 0x800000010005E070;
          break;
        case 0x11:
          v8 = 0x5772616265646973;
          v10 = 1752458345;
LABEL_25:
          v7 = v10 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 0x12:
          v8 = 0xD000000000000011;
          v7 = 0x800000010005E090;
          break;
        case 0x13:
          v8 = 0xD000000000000011;
          v7 = 0x800000010005E0B0;
          break;
        case 0x14:
          v8 = 0x654B656C62616E65;
          v12 = 0x6472616F6279;
LABEL_20:
          v7 = v12 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        default:
          break;
      }

      v13 = 0x6E6574614C776F4CLL;
      v14 = 0xEA00000000007963;
      switch(a1)
      {
        case 1:
          v15 = 1115185485;
          goto LABEL_36;
        case 2:
          v15 = 1114532173;
LABEL_36:
          v13 = v15 | 0x6172746900000000;
          v14 = 0xEA00000000006574;
          break;
        case 3:
          v13 = 0x63756F54776F6873;
          v16 = 1918984808;
          goto LABEL_48;
        case 4:
          v13 = 0x7261426863756F74;
          v17 = 7368532;
          goto LABEL_34;
        case 5:
          v13 = 0x7261426863756F74;
          v18 = 0x6E696772614DLL;
          goto LABEL_43;
        case 6:
          v13 = 0x5472616365646953;
          v14 = 0xEF636E7953656D69;
          break;
        case 7:
          v14 = 0xE700000000000000;
          v13 = 0x73746E65636572;
          break;
        case 8:
          v13 = 0xD000000000000010;
          v14 = 0x800000010005DFC0;
          break;
        case 9:
          v13 = 0x72754373776F6873;
          v17 = 7499635;
LABEL_34:
          v14 = v17 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 10:
          v13 = 0x5372616265646973;
          v16 = 1853321064;
          goto LABEL_48;
        case 11:
          v13 = 0x5272616265646973;
          v16 = 1952999273;
          goto LABEL_48;
        case 12:
          v13 = 0xD000000000000015;
          v14 = 0x800000010005E000;
          break;
        case 13:
          v14 = 0xEA00000000007366;
          v13 = 0x6572507465736572;
          break;
        case 14:
          v13 = 0xD000000000000012;
          v14 = 0x800000010005E030;
          break;
        case 15:
          v13 = 0xD000000000000015;
          v14 = 0x800000010005E050;
          break;
        case 16:
          v13 = 0xD000000000000012;
          v14 = 0x800000010005E070;
          break;
        case 17:
          v13 = 0x5772616265646973;
          v16 = 1752458345;
LABEL_48:
          v14 = v16 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 18:
          v13 = 0xD000000000000011;
          v14 = 0x800000010005E090;
          break;
        case 19:
          v13 = 0xD000000000000011;
          v14 = 0x800000010005E0B0;
          break;
        case 20:
          v13 = 0x654B656C62616E65;
          v18 = 0x6472616F6279;
LABEL_43:
          v14 = v18 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        default:
          break;
      }

      if (v8 == v13 && v7 == v14)
      {
        break;
      }

      v20 = sub_100058230();

      if ((v20 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1000386A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_100058230() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_10003875C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_10000AB38(*(v2 + 48) + 40 * i, v7);
    v5 = sub_100058020();
    sub_10000E840(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100038820(int8x16_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v8 = *(v2 + 48);
    do
    {
      v9 = (v8 + 40 * v5);
      v10 = *v9;
      if (*(v9 + 32))
      {
        v12 = v9[1];
        v11 = v9[2];
        v13 = v9[3];
        if (*(v9 + 32) == 1)
        {
          if (a1[2].i8[0] == 1 && v10 == a1->i64[0] && v12 == a1->i64[1])
          {
            v15 = v11 == a1[1].i64[0] && v13 == a1[1].i64[1];
            if (v15 || (sub_100058230() & 1) != 0)
            {
              return v5;
            }
          }
        }

        else
        {
          v16 = v11 | v12;
          if (v16 | v10 | v13)
          {
            v17 = v16 | v13;
            if (v10 == 1 && v17 == 0)
            {
              if (a1[2].i8[0] == 2 && a1->i64[0] == 1)
              {
LABEL_40:
                if (!(a1[1].i64[0] | a1[1].i64[1] | a1->i64[1]))
                {
                  return v5;
                }
              }
            }

            else if (v10 == 2 && v17 == 0)
            {
              if (a1[2].i8[0] == 2 && a1->i64[0] == 2)
              {
                goto LABEL_40;
              }
            }

            else if (a1[2].i8[0] == 2 && a1->i64[0] == 3)
            {
              goto LABEL_40;
            }
          }

          else if (a1[2].i8[0] == 2)
          {
            v20 = vorrq_s8(*a1, a1[1]);
            if (!*&vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL)))
            {
              return v5;
            }
          }
        }
      }

      else if (!a1[2].i8[0] && v10 == a1->i64[0])
      {
        return v5;
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000389DC(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

void sub_100038A3C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_100057A20();

  [a3 setText:v4];
}

uint64_t sub_100038AA0(void *a1)
{
  v2 = [a1 text];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_100057A50();

  return v3;
}

void sub_100038B10(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_100057A20();
  [a3 setText:v4];
}

uint64_t sub_100038B74()
{
  v1 = sub_10003964C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100038BA4()
{

  return _swift_deallocObject(v0, 48, 7);
}

const char *sub_100038C08(int a1)
{
  if ((a1 - 1) > 0xA)
  {
    return "?";
  }

  else
  {
    return off_100073D80[a1 - 1];
  }
}

uint64_t sub_100038C30()
{

  sub_100019698();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100038C70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100038C88()
{

  sub_100039778();

  return _swift_deallocObject(v0, v1, v2);
}

void sub_100038D44(uint64_t a1, void *a2)
{
  sub_100005A1C(0, &qword_10007FAD8);
  isa = sub_100057BD0().super.isa;

  [a2 setAnimations:isa];
}

void sub_100038DC8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_100057A20();

  [a4 addAnimation:a1 forKey:v6];
}

uint64_t sub_100038E44(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005890(&unk_10007FAE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100038EB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisplayMainViewController.UsageSummary(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100038F18(uint64_t a1)
{
  v2 = type metadata accessor for DisplayMainViewController.UsageSummary(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100038FA0()
{
  swift_unknownObjectWeakDestroy();
  v0 = sub_10003964C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100038FD0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_100005890(a3);
  sub_10003965C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100039030()
{
  sub_100019748();
  v1 = sub_100005890(&unk_10007F190);
  sub_1000271E8(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_100057880();
  sub_1000068E4();
  v8 = v7;
  v9 = *(v7 + 80);
  v10 = sub_1000577F0();
  if (!sub_100019110(v0 + v3, 1, v10))
  {
    (*(*(v10 - 8) + 8))(v0 + v3, v10);
  }

  v11 = (v5 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + v9 + 8) & ~v9;

  (*(v8 + 8))(v0 + v12, v6);

  sub_100019718();

  return _swift_deallocObject(v13, v14, v15);
}

void sub_1000391B8()
{
  v1 = sub_100005890(&unk_10007F190);
  sub_1000271E8(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = (*(v4 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_100057880();
  sub_1000271E8(v6);
  v8 = v7;
  v10 = v9;
  v11 = (v5 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v12 = *(v0 + v5);
  v13 = *(v0 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1000346F8(v0 + v3, v12, v0 + v11, v13);
}

void sub_1000392BC(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_1000392FC(uint64_t a1, uint64_t *a2)
{
  sub_100005890(a2);
  sub_10003965C();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_100039354()
{
  result = qword_10007F690;
  if (!qword_10007F690)
  {
    sub_1000577F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F690);
  }

  return result;
}

void sub_1000393AC(uint64_t a1, void *a2)
{
  isa = sub_100057BD0().super.isa;

  [a2 setFilters:isa];
}

uint64_t sub_100039424()
{
  v1 = *(v0 + 16);
  if (v1)
  {
  }

  return _swift_deallocObject(v0, 33, 7);
}

id sub_100039468(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

uint64_t sub_1000394A8()
{

  sub_100039778();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000394EC()
{
  sub_100039778();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100039530()
{

  sub_100019698();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000395BC()
{

  return swift_once();
}

uint64_t sub_10003961C()
{

  return swift_beginAccess();
}

uint64_t sub_100039680()
{

  return swift_once();
}

uint64_t sub_1000396A0()
{
}

id sub_1000396DC()
{
  v5 = *(v0 + 2848);

  return [v1 v5];
}

id sub_1000396FC(uint64_t a1)
{
  v4 = *(v2 + 1984);

  return [v1 v4];
}

uint64_t sub_10003971C()
{

  return swift_dynamicCast();
}

void sub_10003973C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL sub_10003975C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

id sub_100039784(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void sub_1000397AC(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0x6C69636E6570;
  v2[1] = 0xE600000000000000;
}

uint64_t sub_1000397C8(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x746E656469;
  a1[2].n128_u64[1] = 0xE500000000000000;

  return sub_1000204F8();
}

BOOL sub_1000397F4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10003980C()
{

  return swift_beginAccess();
}

void sub_100039824(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, __int128 a11, __n128 a12, char a13)
{
  a11 = a10;
  a12 = a1;
  a13 = 1;

  sub_100036384(&a11, 1);
}

uint64_t sub_100039864()
{

  return swift_slowAlloc();
}

uint64_t sub_10003987C()
{

  return swift_dynamicCast();
}

uint64_t sub_100039894@<X0>(uint64_t a1@<X8>)
{
  *(v1 + a1 + 8) = 0;

  return swift_unknownObjectWeakInit();
}

uint64_t sub_1000398B0(uint64_t a1, unint64_t *a2)
{

  return sub_100005A1C(0, a2);
}

id sub_1000398C8()
{
  v4 = *(v0 + 1984);

  return [v1 v4];
}

uint64_t sub_1000398E4()
{
}

id sub_1000398FC(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

id sub_100039980(uint64_t a1)
{
  v4 = *(v1 + 1984);

  return [v2 v4];
}

id sub_1000399A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + 2952);

  return [v7 v9];
}

uint64_t sub_1000399C0()
{

  return sub_1000582B0();
}

uint64_t sub_1000399F8()
{
  sub_1000578E0();
  sub_10003B4C0(&qword_10007F010, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005890(&unk_10007ED80);
  sub_100005968(&qword_10007F020, &unk_10007ED80);
  return sub_100058000();
}

BOOL sub_100039AD0(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

id sub_100039B0C()
{
  v0 = sub_100057A20();

  v1 = [swift_getObjCClassFromMetadata() imageNamed:v0];

  return v1;
}

void *sub_100039B70(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar6Button_identifier];
  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v4;
  v3[32] = *(a1 + 32);
  sub_10001C3B4(a1, v20);
  v18._object = v1;
  v19 = _s6ButtonCMa();
  v5 = objc_msgSendSuper2(&v18._object, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v6 = sub_100020360();
  v8 = v7;
  v9 = objc_opt_self();
  v10 = v5;
  v11 = [v9 mainBundle];
  v18._countAndFlagsBits = 0xE600000000000000;
  v21._countAndFlagsBits = v6;
  v21._object = v8;
  v22.value._countAndFlagsBits = 0;
  v22.value._object = 0;
  v12.super.isa = v11;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v13 = sub_100057650(v21, v22, v12, v23, v18);
  v15 = v14;

  sub_10003B664(v13, v15, v10);
  sub_100005A1C(0, &unk_10007FCD0);
  sub_1000201DC();
  sub_10001C410(a1);
  v16 = sub_100039B0C();
  [v10 setImage:v16 forState:0];

  (*((swift_isaMask & *v10) + 0x60))();
  return v10;
}

void sub_100039D90()
{
  [v0 setContentEdgeInsets:{0.0, 8.0, 0.0, 8.0}];
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  [v0 setBackgroundColor:v2];

  v3 = [v0 titleLabel];
  if (v3)
  {
    v4 = v3;
    v5 = objc_opt_self();
    v6 = sub_100057A20();
    v7 = [v5 systemFontOfSize:v6 weight:15.0 design:0.0];

    [v4 setFont:v7];
  }

  v8 = [v1 whiteColor];
  [v0 setTintColor:v8];

  [v0 setAdjustsImageWhenHighlighted:0];
  v9 = [v1 redColor];
  [v0 setTitleShadowColor:v9 forState:4];

  v10 = [v0 layer];
  [v10 setMasksToBounds:1];
  [v10 setCornerRadius:6.0];
}

id sub_10003A064(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = _s6ButtonCMa();
  return objc_msgSendSuper2(&v4, *a1);
}

void sub_10003A0FC(char a1, SEL *a2)
{
  v7.receiver = v2;
  v7.super_class = _s6ButtonCMa();
  objc_msgSendSuper2(&v7, *a2, a1 & 1);
  v5 = objc_opt_self();
  v6 = v2;
  [v5 begin];
  [v5 setDisableActions:1];
  sub_10003A19C();
  [v5 commit];
}

void sub_10003A19C()
{
  v1 = [v0 isSelected];
  v2 = [v0 isHighlighted];
  if (v1)
  {
    v3 = objc_allocWithZone(UIColor);
    if (v2)
    {
      v4 = 1.0;
      v5 = 0.5;
LABEL_7:
      v6 = [v3 initWithWhite:v4 alpha:v5];
      goto LABEL_9;
    }

LABEL_6:
    v4 = 1.0;
    v5 = 0.25;
    goto LABEL_7;
  }

  if (v2)
  {
    v3 = objc_allocWithZone(UIColor);
    goto LABEL_6;
  }

  v6 = [objc_opt_self() blackColor];
LABEL_9:
  v7 = v6;
  [v0 setBackgroundColor:?];
}

void sub_10003A380()
{
  sub_100039D90();
  v6[3] = _s12StickyButtonCMa();
  v6[0] = v0;
  objc_allocWithZone(UITapGestureRecognizer);
  v1 = v0;
  v2 = sub_10003B508(v6, "_keyboardButtonGestureTriggeredWithRecognizer:");
  [v2 setNumberOfTapsRequired:2];
  v3 = v2;
  [v3 setDelaysTouchesEnded:0];
  [v3 setDelegate:v1];

  v4 = *&v1[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar12StickyButton_doubleTapRecognizer];
  *&v1[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar12StickyButton_doubleTapRecognizer] = v3;
  v5 = v3;

  [v1 addGestureRecognizer:v5];
  [v1 addTarget:v1 action:"_buttonDownWithSender:" forControlEvents:1];
  [v1 addTarget:v1 action:"_buttonUpWithSender:" forControlEvents:192];
}

void sub_10003A4B0(void *a1)
{
  v2 = [a1 view];
  if (v2)
  {
    v5 = v2;
    _s12StickyButtonCMa();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      [v3 setSelected:1];
      sub_10003A768();
      v4 = *(v1 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar12StickyButton_stickyHandler);

      v4(v1);

      if (*(v1 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar12StickyButton__tapTimer))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_100057E70();
        swift_unknownObjectRelease();
      }
    }
  }
}

id sub_10003A618()
{
  v1 = v0;
  *&v0[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar12StickyButton_downTime] = mach_absolute_time();
  if (*&v0[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar12StickyButton__tapTimer])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_100057E70();
    swift_unknownObjectRelease();
  }

  if ([v0 isSelected])
  {
    v2 = OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar12StickyButton_doubleTapRecognizer;
    result = *&v1[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar12StickyButton_doubleTapRecognizer];
    if (result)
    {
      [result setEnabled:0];
      result = *&v1[v2];
      if (result)
      {

        return [result setEnabled:1];
      }
    }
  }

  else
  {

    return sub_10003A768();
  }

  return result;
}

uint64_t sub_10003A768()
{
  if ((*(v0 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar12StickyButton__buttonDown) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar12StickyButton__buttonDown) = 1;
    v1 = *(v0 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar12StickyButton_downUpHandler);

    v1(v0, 1);
  }

  return result;
}

uint64_t sub_10003A7F4()
{
  if (*(v0 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar12StickyButton__buttonDown) == 1)
  {
    *(v0 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar12StickyButton__buttonDown) = 0;
    v1 = *(v0 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar12StickyButton_downUpHandler);

    v1(v0, 0);
  }

  return result;
}

void sub_10003A880()
{
  v1 = v0;
  v2 = sub_1000578D0();
  sub_1000068E4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = (v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v10 = v55 - v9;
  sub_100057950();
  sub_1000068E4();
  v67 = v12;
  v68 = v11;
  __chkstk_darwin(v11);
  v65 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v66 = v55 - v15;
  sub_1000578E0();
  sub_1000068E4();
  v63 = v17;
  v64 = v16;
  __chkstk_darwin(v16);
  sub_1000068D4();
  v61 = v19 - v18;
  v62 = sub_100057910();
  sub_1000068E4();
  v60 = v20;
  __chkstk_darwin(v21);
  sub_1000068D4();
  v24 = v23 - v22;
  v25 = sub_100057E10();
  sub_1000068E4();
  v27 = v26;
  __chkstk_darwin(v28);
  sub_1000068D4();
  v31 = v30 - v29;
  [v0 setSelected:0];
  sub_10003A7F4();
  v32 = *&v0[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar12StickyButton_doubleTapRecognizer];
  if (v32)
  {
    [v32 maximumIntervalBetweenSuccessiveTaps];
    v34 = v33;
    mach_absolute_time();
    HostTime.nanoseconds.getter();
    v36 = v35 * 0.000000001;
    HostTime.nanoseconds.getter();
    if (v36 < v34 + v37 * 0.000000001)
    {
      sub_100005A1C(0, &unk_10007F1C0);
      v59 = v2;
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_10003B4C0(&unk_10007FCE0, &type metadata accessor for OS_dispatch_source.TimerFlags);
      v58 = v4;
      v57 = v7;
      sub_100005890(&unk_10007F1D0);
      v56 = v10;
      sub_100005968(&unk_10007FCF0, &unk_10007F1D0);
      sub_100058000();
      sub_100005A1C(0, &qword_10007EEC0);
      v38 = sub_100057DC0();
      v39 = sub_100057E20();

      (*(v27 + 8))(v31, v25);
      ObjectType = swift_getObjectType();
      v41 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_10003B4A0;
      aBlock[5] = v41;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000AF8C;
      aBlock[3] = &unk_100073E00;
      v42 = _Block_copy(aBlock);

      sub_100057900();
      v43 = v61;
      sub_1000399F8();
      sub_100057E50();
      _Block_release(v42);
      (*(v63 + 8))(v43, v64);
      (*(v60 + 8))(v24, v62);

      v44 = v65;
      sub_100057940();
      v45 = v66;
      sub_100057980();
      v46 = v68;
      v47 = *(v67 + 8);
      v47(v44, v68);
      v48 = v56;
      v55[1] = ObjectType;
      sub_1000146B8(v56);
      v49 = v57;
      sub_10001472C(v57);
      v50 = v48;
      v51 = v49;
      sub_100057EB0();
      v52 = *(v58 + 8);
      v53 = v51;
      v54 = v59;
      v52(v53, v59);
      v52(v50, v54);
      v47(v45, v46);
      sub_100057E90();
      *&v1[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar12StickyButton__tapTimer] = v39;
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10003AEC4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar12StickyButton_tapHandler);

    v2(v1);
  }

  return result;
}

void *sub_10003AFA8()
{
  sub_10003B6EC(OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar12StickyButton_downUpHandler);
  sub_10003B6D0(OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar12StickyButton_stickyHandler);
  sub_10003B6D0(OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar12StickyButton_tapHandler);
  *(v0 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar12StickyButton_doubleTapRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar12StickyButton__buttonDown) = 0;
  *(v0 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar12StickyButton__tapTimer) = 0;
  *(v0 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar12StickyButton_downTime) = 0;
  return sub_100039B70(v1);
}

id sub_10003B030(void *a1)
{
  sub_10003B6EC(OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar12StickyButton_downUpHandler);
  sub_10003B6D0(OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar12StickyButton_stickyHandler);
  sub_10003B6D0(OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar12StickyButton_tapHandler);
  *&v1[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar12StickyButton_doubleTapRecognizer] = 0;
  v1[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar12StickyButton__buttonDown] = 0;
  *&v1[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar12StickyButton__tapTimer] = 0;
  *&v1[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar12StickyButton_downTime] = 0;
  v5.receiver = v1;
  v5.super_class = _s12StickyButtonCMa();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_10003B10C()
{

  return swift_unknownObjectRelease();
}

void sub_10003B250()
{
  *(v0 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar11StateButton_alternateState) = 0;
  sub_10003B708();
  __break(1u);
}

void sub_10003B2B4()
{
  v1 = v0[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar11StateButton_alternateState];
  v0[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar11StateButton_alternateState] = v1 ^ 1;
  v2 = &v0[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar6Button_identifier];
  if (v1)
  {
    sub_1000201DC();
  }

  else if (v2[32] != 2 || ((v3 = *v2, v4 = *(v2 + 2) | *(v2 + 3) | *(v2 + 1), v3 == 2) ? (v5 = v4 == 0) : (v5 = 0), !v5 && (v3 == 3 ? (v6 = v4 == 0) : (v6 = 0), !v6)))
  {
    __break(1u);
    return;
  }

  sub_100005A1C(0, &unk_10007FCD0);
  v7 = sub_100039B0C();
  [v0 setImage:v7 forState:0];
}

id sub_10003B40C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10003B468()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003B4A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003B4C0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10003B508(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = sub_10000AAF4(a1, a1[3]);
    v7 = *(v4 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_100058220();
    (*(v7 + 8))(v10, v4);
    sub_10000904C(a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v2 initWithTarget:v11 action:a2];
  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_10003B64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 1)
  {
  }

  return result;
}

void sub_10003B664(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_100057A20();

  [a3 setAccessibilityLabel:v4];
}

void sub_10003B6D0(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = VideoStream.qosMonitorServerDidDie(_:);
  v2[1] = 0;
}

void sub_10003B6EC(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = VideoStream.qosMonitorServerDidDie(_:);
  v2[1] = 0;
}

uint64_t sub_10003B708()
{

  return sub_100058160();
}

void sub_10003B734(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC17ContinuityDisplay15TouchController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC17ContinuityDisplay15TouchController_timeSyncClock] = 0;
  v4 = OBJC_IVAR____TtC17ContinuityDisplay15TouchController_pencilInteraction;
  *&v2[v4] = [objc_allocWithZone(UIPencilInteraction) init];
  v5 = OBJC_IVAR____TtC17ContinuityDisplay15TouchController_pan;
  v6 = objc_allocWithZone(UIPanGestureRecognizer);
  *&v2[v5] = sub_10003C7D4(v6, v7, v8, v9, v10, v11, v12, v13, v50, v54, v58, v62, v65, v68);
  v14 = OBJC_IVAR____TtC17ContinuityDisplay15TouchController_pinch;
  v15 = objc_allocWithZone(UIPinchGestureRecognizer);
  *&v2[v14] = sub_10003C7D4(v15, v16, v17, v18, v19, v20, v21, v22, v51, v55, v59, v63, v66, v69);
  v23 = OBJC_IVAR____TtC17ContinuityDisplay15TouchController_rotate;
  v74 = 0u;
  v75 = 0u;
  v24 = objc_allocWithZone(UIRotationGestureRecognizer);
  *&v2[v23] = sub_10003C7D4(v24, v25, v26, v27, v28, v29, v30, v31, v52, v56, v60, v64, v67, v70);
  v32 = OBJC_IVAR____TtC17ContinuityDisplay15TouchController_multitouchReport;
  type metadata accessor for HIDReport();
  v33 = HIDReport.__allocating_init(count:)(23);

  v34 = MultitouchReport.reportID.unsafeMutableAddressor();
  HIDReport.subscript.setter(*v34, 0);

  *&v2[v32] = v33;
  v35 = &v2[OBJC_IVAR____TtC17ContinuityDisplay15TouchController_multitouchState];
  LOBYTE(v74) = 1;
  v73 = 1;
  v72 = 1;
  *(v35 + 4) = 0;
  *v35 = 0u;
  *(v35 + 1) = 0u;
  v35[40] = 1;
  *(v35 + 6) = 0;
  *(v35 + 7) = 0;
  v35[64] = 1;
  *(v35 + 9) = 0;
  *(v35 + 10) = 0;
  v35[88] = 1;
  *&v2[OBJC_IVAR____TtC17ContinuityDisplay15TouchController_view] = a1;
  v71.receiver = v2;
  v71.super_class = type metadata accessor for TouchController();
  v61 = a1;
  v36 = objc_msgSendSuper2(&v71, "init");
  if (UIApp)
  {
    type metadata accessor for App();
    if (swift_dynamicCastClass())
    {
      swift_unknownObjectWeakAssign();
    }
  }

  [v61 setMultipleTouchEnabled:1];
  [v61 setUserInteractionEnabled:1];
  sub_100005890(&unk_10007F1B0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_10005B500;
  *(v37 + 32) = sub_100057D40();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10005B7D0;
  v53 = OBJC_IVAR____TtC17ContinuityDisplay15TouchController_pan;
  v39 = *&v36[OBJC_IVAR____TtC17ContinuityDisplay15TouchController_pan];
  *(inited + 32) = v39;
  v57 = OBJC_IVAR____TtC17ContinuityDisplay15TouchController_pinch;
  v40 = *&v36[OBJC_IVAR____TtC17ContinuityDisplay15TouchController_pinch];
  *(inited + 40) = v40;
  v41 = *&v36[OBJC_IVAR____TtC17ContinuityDisplay15TouchController_rotate];
  *(inited + 48) = v41;
  v42 = v39;
  v43 = v40;
  v44 = v41;
  v45 = 0;
  while (1)
  {
    if (v45 == 3)
    {

      swift_setDeallocating();
      sub_10001C36C();
      [*&v36[v53] setMinimumNumberOfTouches:2];
      [*&v36[v53] setMaximumNumberOfTouches:2];
      [*&v36[v57] _setEndsOnSingleTouch:1];
      v49 = OBJC_IVAR____TtC17ContinuityDisplay15TouchController_pencilInteraction;
      [*&v36[OBJC_IVAR____TtC17ContinuityDisplay15TouchController_pencilInteraction] setDelegate:v36];
      [*&v36[v49] setEnabled:1];
      [*&v36[OBJC_IVAR____TtC17ContinuityDisplay15TouchController_view] addInteraction:*&v36[v49]];

      return;
    }

    if ((inited & 0xC000000000000001) == 0)
    {
      break;
    }

    v46 = sub_100058090();
LABEL_9:
    v47 = v46;
    ++v45;
    sub_10003C724();
    isa = sub_100057BD0().super.isa;
    [v47 setAllowedTouchTypes:isa];

    [v47 setCancelsTouchesInView:0];
    [v47 setDelegate:v36];
    [v61 addGestureRecognizer:v47];
  }

  if (v45 < *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v46 = *(inited + 8 * v45 + 32);
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_10003BB84(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 40))
    {
      return 0;
    }

    if (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  if (*(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v3 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (!*(a2 + 64))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 56) != *(a2 + 56))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if (*(a1 + 72) != *(a2 + 72))
  {
    return 0;
  }

  v4 = *(a2 + 88);
  if (*(a1 + 88))
  {
    if ((*(a2 + 88) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 80) != *(a2 + 80))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  return 1;
}

void sub_10003BC60(void *a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v83 = a1;

    swift_unknownObjectRelease();
    v3 = v1 + OBJC_IVAR____TtC17ContinuityDisplay15TouchController_multitouchState;
    v82 = (v1 + OBJC_IVAR____TtC17ContinuityDisplay15TouchController_multitouchState + 41);
    v4 = *(v1 + OBJC_IVAR____TtC17ContinuityDisplay15TouchController_multitouchState);
    v5 = *(v1 + OBJC_IVAR____TtC17ContinuityDisplay15TouchController_multitouchState + 8);
    v90[0] = *v82;
    v7 = (v1 + OBJC_IVAR____TtC17ContinuityDisplay15TouchController_multitouchState + 65);
    v6 = *v7;
    *(v90 + 7) = *(v1 + OBJC_IVAR____TtC17ContinuityDisplay15TouchController_multitouchState + 48);
    v88[0] = v6;
    *(v88 + 7) = *(v1 + OBJC_IVAR____TtC17ContinuityDisplay15TouchController_multitouchState + 72);
    v87 = *(v1 + OBJC_IVAR____TtC17ContinuityDisplay15TouchController_multitouchState + 88);
    [*(v1 + OBJC_IVAR____TtC17ContinuityDisplay15TouchController_view) bounds];
    v8 = [*(v1 + OBJC_IVAR____TtC17ContinuityDisplay15TouchController_pan) state];
    if ((v8 - 1) > 1)
    {
      v91 = 1;
      v84 = 0.0;
      v21 = 0.0;
    }

    else
    {
      v9 = sub_10003C7C8();
      [v9 v10];
      v12 = v11;
      v14 = v13;
      v96.origin.x = sub_100039608();
      v4 = v12 / CGRectGetWidth(v96);
      v97.origin.x = sub_100039608();
      v5 = v14 / CGRectGetHeight(v97);
      v15 = sub_10003C7C8();
      [v15 v16];
      v18 = v17;
      v20 = v19;
      v98.origin.x = sub_100039608();
      v84 = v18 / CGRectGetWidth(v98);
      v99.origin.x = sub_100039608();
      v91 = 0;
      v21 = v20 / CGRectGetHeight(v99);
      v22 = sub_10003C7C8();
      [v22 v23];
    }

    v24 = *(v1 + OBJC_IVAR____TtC17ContinuityDisplay15TouchController_pinch);
    v85 = v21;
    if ([v24 state] - 1 > 1)
    {
      v32 = 0.0;
      v89 = 1;
    }

    else
    {
      v25 = sub_10003C7C8();
      [v25 v26];
      v28 = v27;
      v30 = v29;
      v100.origin.x = sub_100039608();
      v4 = v28 / CGRectGetWidth(v100);
      v101.origin.x = sub_100039608();
      v5 = v30 / CGRectGetHeight(v101);
      [v24 scale];
      if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        v32 = 0.0;
      }

      else
      {
        v32 = v31 + -1.0;
      }

      v89 = (*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
      [v24 setScale:1.0];
    }

    v33 = *(v1 + OBJC_IVAR____TtC17ContinuityDisplay15TouchController_rotate);
    if ([v33 state] - 1 > 1)
    {
      v41 = 0;
      v87 = 1;
    }

    else
    {
      v34 = sub_10003C7C8();
      [v34 v35];
      v37 = v36;
      v39 = v38;
      v102.origin.x = sub_100039608();
      v4 = v37 / CGRectGetWidth(v102);
      v103.origin.x = sub_100039608();
      v5 = v39 / CGRectGetHeight(v103);
      [v33 rotation];
      if ((v40 & 0x7FF0000000000000) == 0x7FF0000000000000)
      {
        v41 = 0;
      }

      else
      {
        v41 = v40;
      }

      v87 = (v40 & 0x7FF0000000000000) == 0x7FF0000000000000;
      [v33 setRotation:0.0];
    }

    *v92 = v4;
    *&v92[1] = v5;
    v92[2] = v8;
    *&v92[3] = v84;
    *&v92[4] = v85;
    v42 = v91;
    v93 = v91;
    *v94 = v90[0];
    *&v94[7] = *(v90 + 7);
    *&v94[15] = v32;
    v43 = v89;
    v94[23] = v89;
    *v95 = v88[0];
    *&v95[7] = *(v88 + 7);
    *&v95[15] = v41;
    v44 = v87;
    v95[23] = v87;
    if (sub_10003BB84(v3, v92))
    {
      goto LABEL_39;
    }

    *v3 = v4;
    *(v3 + 8) = v5;
    *(v3 + 16) = v8;
    *(v3 + 24) = v84;
    *(v3 + 32) = v85;
    *(v3 + 40) = v42;
    *v82 = v90[0];
    *(v82 + 7) = *(v90 + 7);
    *(v3 + 56) = v32;
    *(v3 + 64) = v43;
    *v7 = v88[0];
    *(v7 + 7) = *(v88 + 7);
    *(v3 + 80) = v41;
    *(v3 + 88) = v44;
    v45 = *(v1 + OBJC_IVAR____TtC17ContinuityDisplay15TouchController_multitouchReport);
    if (v4 > 0.0)
    {
      v46 = v4;
    }

    else
    {
      v46 = 0.0;
    }

    if (v46 > 1.0)
    {
      v46 = 1.0;
    }

    v47 = *&v46;
    sub_100005B34();
    v48 = sub_10003C7F0();
    HIDReport.storeValue<A>(_:to:at:logicalMinimum:logicalMaximum:physicalMinimum:physicalMaximum:exponent:)(v48, 32767.0, v49, v50, v51, v47, 0, &type metadata for UInt16, 1, &type metadata for UInt16);
    v52 = sub_10003C7F0();
    HIDReport.storeValue<A>(_:to:at:logicalMinimum:logicalMaximum:physicalMinimum:physicalMaximum:exponent:)(v52, 32767.0, v54, v55, v56, v53, 0, &type metadata for UInt16, 3, &type metadata for UInt16);
    v57 = v32;
    if (v32 <= -1.0)
    {
      v57 = -1.0;
    }

    if (v57 > 1.0)
    {
      v57 = 1.0;
    }

    if (v43)
    {
      v58 = *&v32;
    }

    else
    {
      v58 = *&v57;
    }

    sub_10003C6D0();
    sub_10003C798();
    HIDReport.storeValue<A>(_:to:at:logicalMinimum:logicalMaximum:physicalMinimum:physicalMaximum:exponent:)(-32767.0, 32767.0, v61, v62, v63, v58, v59, v60, 7, v60);
    if ((v44 & 1) == 0)
    {
      v41 = remainder(*&v41, 6.28318531);
    }

    HIDReport.storeValue<A>(_:to:at:logicalMinimum:logicalMaximum:physicalMinimum:physicalMaximum:exponent:)(-32767.0, 32767.0, -62831.0, 62831.0, -4.0, v41, v44 & 1, &type metadata for Int16, 5, &type metadata for Int16);
    sub_10003C798();
    if (v42)
    {
      sub_10003C7A8(0, 1, &type metadata for Int16, 11, v65, v66, v67, v68, v69);
      sub_10003C798();
      v75 = 0;
      v76 = 1;
    }

    else
    {
      sub_10003C7A8(v64, 0, &type metadata for Int16, 11, v65, v66, v67, v68, v69);
      sub_10003C798();
      v76 = 0;
    }

    sub_10003C7A8(v75, v76, &type metadata for Int16, 9, v70, v71, v72, v73, v74);
    [v83 timestamp];
    v78.rawValue = HostTime.init(nanoseconds:)(v77 * 1000000000.0).rawValue;
    HostTime.nanoseconds.getter();
    v80 = v79 * 0.00001;
    if (v80 == INFINITY)
    {
      __break(1u);
    }

    else if (v80 > -9.22337204e18)
    {
      if (v80 < 9.22337204e18)
      {
        v81 = v80;
        rawValue = v78.rawValue;
        sub_100005BA4();
        HIDReport.storeValue<A>(_:to:at:)(&rawValue, &type metadata for UInt64, 15, &type metadata for UInt64);
        LOWORD(rawValue) = v81;
        HIDReport.storeValue<A>(_:to:at:)(&rawValue, &type metadata for UInt16, 13, &type metadata for UInt16);
        sub_1000037BC(v45);
LABEL_39:

        return;
      }

LABEL_43:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_43;
  }
}

id sub_10003C328()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TouchController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10003C42C(uint64_t a1, void *a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    swift_unknownObjectRelease();
    v4 = sub_100003900(a2);

    return v4 & 1;
  }

  return result;
}

uint64_t sub_10003C518(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 89))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10003C538(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
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

  *(result + 89) = v3;
  return result;
}

id sub_10003C58C(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = sub_10000AAF4(a1, a1[3]);
    v7 = *(v4 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_100058220();
    (*(v7 + 8))(v10, v4);
    sub_10000904C(a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v2 initWithTarget:v11 action:a2];
  swift_unknownObjectRelease();
  return v12;
}

unint64_t sub_10003C6D0()
{
  result = qword_10007FDD8;
  if (!qword_10007FDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007FDD8);
  }

  return result;
}

unint64_t sub_10003C724()
{
  result = qword_10007FDF0;
  if (!qword_10007FDF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10007FDF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TouchController.MultitouchState.Point(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10003C7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9)
{

  return HIDReport.storeValue<A>(_:to:at:logicalMinimum:logicalMaximum:physicalMinimum:physicalMaximum:exponent:)(v12, v11, a7, a8, a9, a1, a2, a3, a4, v9);
}

id sub_10003C7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return sub_10003C58C(va, 0);
}

Swift::Int HIDRequest.Request.hashValue.getter(unsigned __int8 a1)
{
  sub_1000582B0();
  sub_1000582C0(a1);
  return sub_1000582F0();
}

id sub_10003C8B0(char a1)
{
  *&v1[OBJC_IVAR____TtC17ContinuityDisplay17RoundedCornerView_edgeConstraints] = &_swiftEmptyArrayStorage;
  v1[OBJC_IVAR____TtC17ContinuityDisplay17RoundedCornerView_isHidding] = 0;
  v1[OBJC_IVAR____TtC17ContinuityDisplay17RoundedCornerView_corner] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for RoundedCornerView();
  v3 = objc_msgSendSuper2(&v9, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v4 = [v3 layer];
  sub_100005A1C(0, &unk_10007FCD0);
  v5 = sub_100039B0C();
  v6 = v5;
  if (v5)
  {
    v7 = [v5 CGImage];

    if (v7)
    {
      type metadata accessor for CGImage(0);
      v6 = sub_100058220();
    }

    else
    {
      v6 = 0;
    }
  }

  [v4 setContents:v6];
  swift_unknownObjectRelease();
  [v4 setContentsCenter:{dbl_10005C4A0[a1], dbl_10005C480[a1], 0.5, 0.5}];
  [v4 setContentsGravity:kCAGravityResize];
  [v4 setContentsScale:2.0];

  return v3;
}

uint64_t sub_10003CA78(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = OBJC_IVAR____TtC17ContinuityDisplay17RoundedCornerView_edgeConstraints;
  sub_100005A1C(0, &qword_10007FB10);

  isa = sub_100057BD0().super.isa;

  [v3 deactivateConstraints:isa];

  v6 = sub_100057BD0().super.isa;
  [v3 activateConstraints:v6];

  *(v1 + v4) = a1;
}

void sub_10003CB68()
{
  *(v0 + OBJC_IVAR____TtC17ContinuityDisplay17RoundedCornerView_edgeConstraints) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC17ContinuityDisplay17RoundedCornerView_isHidding) = 0;
  sub_100058160();
  __break(1u);
}

id sub_10003CC3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoundedCornerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for RoundedCornerView.Corner(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RoundedCornerView.Corner(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10003CDF8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10003CE34()
{
  result = qword_10007FEA0;
  if (!qword_10007FEA0)
  {
    sub_1000058D8(&qword_10007FEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007FEA0);
  }

  return result;
}

unint64_t sub_10003CE9C()
{
  result = qword_10007FEB0;
  if (!qword_10007FEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007FEB0);
  }

  return result;
}

Swift::Int32 __swiftcall __logMachError(_:)(Swift::Int32 a1)
{
  v2 = sub_100057880();
  sub_1000068E4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  if (!a1)
  {
    goto LABEL_11;
  }

  if (!mach_error_string(a1))
  {
    sub_100057870();
    v19 = sub_100057850();
    v20 = sub_100057D70();
    if (os_log_type_enabled(v19, v20))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      if (a1 < 0)
      {
        goto LABEL_13;
      }

      *(v14 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v19, v20, "mach error: [%lx]", v14, 0xCu);
      sub_10002A620();
    }

    (*(v4 + 8))(v7, v2);
    goto LABEL_11;
  }

  sub_100057870();
  v11 = sub_100057850();
  v12 = sub_100057D70();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 134218242;
    if ((a1 & 0x80000000) == 0)
    {
      v15 = v14;
      *(v13 + 4) = a1;
      *(v13 + 12) = 2082;
      v16 = sub_100057B00();
      v18 = sub_10000D850(v16, v17, &v23);

      *(v13 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "mach error: [%lx: %{public}s]", v13, 0x16u);
      sub_10000904C(v15);
      sub_10002A620();
      sub_10002A620();
      goto LABEL_6;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return v14;
  }

LABEL_6:

  (*(v4 + 8))(v10, v2);
LABEL_11:
  LODWORD(v14) = a1;
  return v14;
}

Swift::Int sub_10003D214(unsigned __int8 a1)
{
  sub_1000582B0();
  sub_1000582E0(a1);
  return sub_1000582F0();
}

Swift::Int sub_10003D25C(char a1)
{
  sub_1000582B0();
  sub_1000582E0(a1 & 1 | 0x14);
  return sub_1000582F0();
}

Swift::Int sub_10003D2A8(char a1)
{
  sub_1000582B0();
  sub_1000582E0(dword_10005CA70[a1]);
  return sub_1000582F0();
}

Swift::Int sub_10003D394(uint64_t a1, char a2)
{
  sub_1000582B0();
  sub_1000582E0(dword_10005CA70[a2]);
  return sub_1000582F0();
}

Swift::Int sub_10003D3E4(uint64_t a1, unsigned __int8 a2)
{
  sub_1000582B0();
  sub_1000582E0(a2);
  return sub_1000582F0();
}

Swift::Int sub_10003D428(uint64_t a1, char a2)
{
  sub_1000582B0();
  sub_1000582E0(a2 & 1 | 0x14);
  return sub_1000582F0();
}

uint64_t sub_10003D478@<X0>(_DWORD *a1@<X8>)
{
  result = MachPort.Right.rawValue.getter();
  *a1 = result;
  return result;
}

EyeCandyCore::MachPort __swiftcall MachPort.init(allocating:)(EyeCandyCore::MachPort::Right allocating)
{
  sub_10003FC44();
  v2 = mach_port_allocate(mach_task_self_, *v1, name);
  v3 = __logMachError(_:)(v2);
  return sub_10003FC78(v3, v4, v5, v6, v7, v8, v9, v10, v12, name[0]);
}

uint64_t MachPort.init(bootstrapCheckIn:)()
{
  sub_10003FC44();
  v3 = sub_10003D558(v0, v1, v2, sp);
  return sub_10003FC78(v3, v4, v5, v6, v7, v8, v9, v10, v12, sp[0]);
}

unint64_t sub_10003D558(unint64_t service_name, int a2, char a3, mach_port_t *sp)
{
  v5 = service_name;
  if ((a3 & 1) == 0)
  {
    if (service_name)
    {
      if (qword_1000826E8 == -1)
      {
LABEL_4:
        v6 = bootstrap_check_in(dword_1000826E0, v5, sp);

        return __logMachError(_:)(v6);
      }

LABEL_17:
      swift_once();
      goto LABEL_4;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (HIDWORD(service_name))
  {
    goto LABEL_16;
  }

  if ((service_name & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return service_name;
  }

  if (service_name >> 16 > 0x10)
  {
    __break(1u);
LABEL_19:
    v9 = (service_name & 0x3F) << 8;
    v10 = (service_name >> 6) + v9 + 33217;
    v11 = (v9 | (service_name >> 6) & 0x3F) << 8;
    v12 = (service_name >> 18) + ((v11 | (service_name >> 12) & 0x3F) << 8) - 2122219023;
    v13 = (service_name >> 12) + v11 + 8487393;
    if (service_name >> 16)
    {
      v7 = v12;
    }

    else
    {
      v7 = v13;
    }

    if (service_name < 0x800)
    {
      v7 = v10;
    }

    goto LABEL_12;
  }

  if (service_name > 0x7F)
  {
    goto LABEL_19;
  }

  v7 = service_name + 1;
LABEL_12:
  *service_namea = (v7 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v7) & 0x18)));
  if (qword_1000826E8 != -1)
  {
    swift_once();
  }

  v8 = bootstrap_check_in(dword_1000826E0, service_namea, sp);
  return __logMachError(_:)(v8);
}

Swift::Void __swiftcall MachPort.deallocate()()
{
  v1 = mach_port_deallocate(mach_task_self_, v0);

  __logMachError(_:)(v1);
}

Swift::Void __swiftcall MachPort.destroy()()
{
  v1 = mach_port_destroy(mach_task_self_, v0);

  __logMachError(_:)(v1);
}

Swift::Void __swiftcall MachPort.modRefs(_:_:)(EyeCandyCore::MachPort::Right a1, Swift::Int32 a2)
{
  v3 = mach_port_mod_refs(mach_task_self_, v2, *a1, a2);

  __logMachError(_:)(v3);
}

uint64_t MachPort.TypeName.rawValue.getter()
{
  if (*v0)
  {
    return 21;
  }

  else
  {
    return 20;
  }
}

uint64_t sub_10003D808@<X0>(_DWORD *a1@<X8>)
{
  result = MachPort.TypeName.rawValue.getter();
  *a1 = result;
  return result;
}

EyeCandyCore::MachPort __swiftcall MachPort.insertRight(_:)(EyeCandyCore::MachPort::TypeName a1)
{
  v2.name = v1;
  if (*a1)
  {
    v3 = 21;
  }

  else
  {
    v3 = 20;
  }

  inserted = mach_port_insert_right(mach_task_self_, v1, v1, v3);
  __logMachError(_:)(inserted);
  if (inserted)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10003D904@<X0>(_DWORD *a1@<X8>)
{
  result = MachPort.Notification.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003D95C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LODWORD(v2) = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 = v4 | v2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_10003D9E4@<X0>(_DWORD *a1@<X8>)
{
  result = variable initialization expression of Clock.heartbeat();
  *a1 = result;
  return result;
}

uint64_t sub_10003DA0C@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_10003DA3C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_10003DA44@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_10003DA74(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_10003DA7C@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_10003DAAC(*a1, *v2);
  *a2 = result;
  return result;
}

BOOL sub_10003DABC(_DWORD *a1, int a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

unint64_t sub_10003DAE8@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10003DB1C(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_10003DB1C(unsigned int a1)
{
  v2 = *v1;
  v3 = *v1 & a1;
  if (v3)
  {
    *v1 = v2 & ~a1;
    v4 = v2 & a1;
  }

  else
  {
    v4 = 0;
  }

  return v4 | ((v3 == 0) << 32);
}

unint64_t sub_10003DB5C@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10003DB90(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_10003DB90(unsigned int a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1 | (((v2 & a1) == 0) << 32);
}

uint64_t sub_10003DC04@<X0>(int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_10003DC34(*a1, *v2);
  *a2 = result;
  return result;
}

_DWORD *sub_10003DCB0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_10003DCCC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_10003D95C(a1);
  *a2 = result;
  return result;
}

uint64_t MachPort.type.getter()
{
  sub_10003FC44();
  v1 = mach_port_type(mach_task_self_, v0, ptype);
  v2 = __logMachError(_:)(v1);
  return sub_10003FC78(v2, v3, v4, v5, v6, v7, v8, v9, v11, ptype[0]);
}

mach_port_context_t MachPort.context.getter(mach_port_name_t name)
{
  v3 = 0;
  context = mach_port_get_context(mach_task_self_, name, &v3);
  __logMachError(_:)(context);
  return v3;
}

mach_port_context_t sub_10003DDC4@<X0>(mach_port_name_t *a1@<X0>, mach_port_context_t *a2@<X8>)
{
  result = MachPort.context.getter(*a1);
  *a2 = result;
  return result;
}

uint64_t MachPort.context.setter(mach_port_context_t context, mach_port_name_t a2)
{
  v2 = mach_port_set_context(mach_task_self_, a2, context);

  return __logMachError(_:)(v2);
}

uint64_t (*MachPort.context.modify(uint64_t a1, mach_port_name_t a2))(uint64_t a1)
{
  *(a1 + 16) = a2;
  *(a1 + 8) = 0;
  v3 = (a1 + 8);
  context = mach_port_get_context(mach_task_self_, a2, (a1 + 8));
  __logMachError(_:)(context);
  *a1 = *v3;
  return sub_10003DED0;
}

uint64_t sub_10003DED0(uint64_t a1)
{
  v1 = mach_port_set_context(mach_task_self_, *(a1 + 16), *a1);

  return __logMachError(_:)(v1);
}

uint64_t MachPort.setContext<A>(_:)(mach_port_context_t a1, mach_port_name_t name)
{
  if (a1)
  {
    v4 = mach_task_self_;
    swift_unknownObjectRetain();
    v5 = mach_port_set_context(v4, name, a1);
    __logMachError(_:)(v5);

    return swift_unknownObjectRelease();
  }

  else
  {
    v7 = mach_port_set_context(mach_task_self_, name, 0);

    return __logMachError(_:)(v7);
  }
}

uint64_t MachPort.getContext<A>()(mach_port_name_t name)
{
  v3 = 0;
  context = mach_port_get_context(mach_task_self_, name, &v3);
  __logMachError(_:)(context);
  result = v3;
  if (v3)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

Swift::Int MachPort.hashValue.getter(unsigned int a1)
{
  sub_1000582B0();
  sub_1000582C0(a1 >> 8);
  return sub_1000582F0();
}

Swift::Int sub_10003E0A0()
{
  v1 = *v0;
  sub_1000582B0();
  sub_1000582C0(v1 >> 8);
  return sub_1000582F0();
}

EyeCandyCore::MachSemaphore __swiftcall MachSemaphore.init(_:)(Swift::Int32 a1)
{
  sub_10003FC44();
  v2 = semaphore_create(mach_task_self_, semaphore, 0, v1);
  v3 = __logMachError(_:)(v2);
  return sub_10003FC78(v3, v4, v5, v6, v7, v8, v9, v10, v12, semaphore[0]);
}

Swift::Void __swiftcall MachSemaphore.destroy()()
{
  v1 = semaphore_destroy(mach_task_self_, v0);

  __logMachError(_:)(v1);
}

uint64_t static MachSemaphore.with(_:_:)(uint64_t a1, void (*a2)(void))
{
  sub_10003FC44();
  v4 = semaphore_create(mach_task_self_, &semaphore, 0, v3);
  __logMachError(_:)(v4);
  v5 = semaphore;
  a2(semaphore);
  v6 = semaphore_destroy(mach_task_self_, v5);
  return __logMachError(_:)(v6);
}

uint64_t sub_10003E224()
{
  sub_10003FC44();
  v0 = mach_port_allocate(mach_task_self_, 1u, &name);
  result = __logMachError(_:)(v0);
  dword_100083CF0 = name;
  return result;
}

uint64_t sub_10003E294(void *a1, unsigned int *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return *a2;
}

uint64_t sub_10003E2D0()
{
  result = sub_10003E2F0();
  qword_100083CF8 = result;
  return result;
}

uint64_t sub_10003E2F0()
{
  v0 = sub_1000578E0();
  sub_1000068E4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000068D4();
  v6 = v5 - v4;
  v7 = sub_100057910();
  sub_1000068E4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000068D4();
  v13 = v12 - v11;
  sub_100005A1C(0, &unk_10007F1C0);
  if (qword_1000826F0 != -1)
  {
    sub_10003FBFC();
  }

  sub_100005A1C(0, &qword_10007EEC0);
  v14 = sub_100057DC0();
  v15 = sub_100057E40();

  swift_getObjectType();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  aBlock[4] = sub_10003FA5C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000AF8C;
  aBlock[3] = &unk_1000742C0;
  v17 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  sub_100057900();
  sub_1000399F8();
  sub_100057E50();
  _Block_release(v17);
  (*(v2 + 8))(v6, v0);
  (*(v9 + 8))(v13, v7);

  sub_100057E90();
  return v15;
}

uint64_t sub_10003E580()
{
  sub_100005890(&qword_10007FFA8);
  sub_10003F9D0();
  result = sub_1000579C0();
  qword_100082708 = result;
  return result;
}

Swift::Int sub_10003E650()
{
  sub_1000582B0();
  sub_10003FC84(qword_10005CA40);
  return sub_1000582F0();
}

Swift::Int sub_10003E6A4()
{
  sub_1000582B0();
  sub_10003FC84(qword_10005CA40);
  return sub_1000582F0();
}

uint64_t sub_10003E6F0(_BYTE *a1, mach_port_mscount_t sync, mach_port_name_t name)
{
  v4 = 70;
  v5 = 65;
  v7 = name;
  switch(*a1)
  {
    case 1:
      v5 = 66;
      goto LABEL_6;
    case 2:
      v5 = 69;
      goto LABEL_6;
    case 3:
      goto LABEL_13;
    case 4:
      v4 = 71;
      v7 = name;
      goto LABEL_13;
    case 5:
      v5 = 72;
      goto LABEL_6;
    default:
LABEL_6:
      if (qword_1000826F0 != -1)
      {
        sub_10003FBFC();
      }

      v7 = dword_100083CF0;
      if (dword_100083CF0 == name)
      {
        v7 = name;
      }

      else if (qword_1000826F8 != -1)
      {
        sub_10003FBDC();
      }

      v4 = v5;
LABEL_13:
      previous = 0;
      v8 = mach_port_request_notification(mach_task_self_, name, v4, sync, v7, 0x15u, &previous);
      result = __logMachError(_:)(v8);
      if (previous + 1 >= 2)
      {
        v10 = mach_port_mod_refs(mach_task_self_, previous, 2u, -1);
        return __logMachError(_:)(v10);
      }

      return result;
  }
}

uint64_t MachPort.addNotification(_:sync:_:)(unsigned __int8 *a1, mach_port_mscount_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  if (qword_100082700 != -1)
  {
    sub_10003FC1C();
  }

  swift_beginAccess();
  v10 = v9 | (a5 << 32);
  v11 = sub_10003EA80(v10, qword_100082708);
  swift_endAccess();
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a3;
    *(v12 + 24) = a4;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_10003ED78(0, v11[2] + 1, 1, v11);
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_10003ED78((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_10003FBD4;
    v15[5] = v12;
  }

  else
  {
    v20[0] = v9;
    sub_10003E6F0(v20, a2, a5);
    sub_100005890(&qword_10007FF50);
    v11 = swift_allocObject();
    *(v11 + 1) = xmmword_10005B860;
    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = a4;
    v11[4] = sub_10003EEE0;
    v11[5] = v16;
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = qword_100082708;
  sub_10003F0FC(v11, v10, isUniquelyReferenced_nonNull_native);
  qword_100082708 = v19;
  swift_endAccess();
}

uint64_t sub_10003EA80(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_10003EF0C(a1 & 0xFFFFFFFF000000FFLL);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10003EAD4(_DWORD *a1, unint64_t a2)
{
  v4 = sub_100057880();
  sub_1000068E4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000068D4();
  v10 = v9 - v8;
  v11 = a1[5];
  *a2 = *a1 & 0x1F;
  LODWORD(v8) = a1[2];
  *(a2 + 4) = 36;
  *(a2 + 8) = v8;
  *(a2 + 12) = 0;
  if (!__OFADD__(v11, 100))
  {
    *(a2 + 16) = 0;
    *(a2 + 20) = v11 + 100;
    MachPort.Notification.init(rawValue:)(v11);
    a2 = LOBYTE(v22[0]);
    v12 = 8;
    switch(LOBYTE(v22[0]))
    {
      case 2:
        v12 = 7;
        goto LABEL_5;
      case 3:
      case 4:
        v12 = 3;
        goto LABEL_5;
      case 6:
        sub_100057870();
        v19 = sub_100057850();
        v20 = sub_100057D70();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 67109120;
          *(v21 + 4) = v11;
          _os_log_impl(&_mh_execute_header, v19, v20, "unexpected mach notification: %d", v21, 8u);
          sub_10002A620();
        }

        (*(v6 + 8))(v10, v4);
        return 0;
      default:
LABEL_5:
        v4 = a1[v12];
        if ((v4 + 1) < 2)
        {
          return 1;
        }

        if (qword_100082700 == -1)
        {
          goto LABEL_8;
        }

        goto LABEL_19;
    }
  }

  __break(1u);
LABEL_19:
  sub_10003FC1C();
LABEL_8:
  swift_beginAccess();
  v14 = sub_10003F01C(a2 | (v4 << 32));
  swift_endAccess();
  if (v14)
  {
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = v14 + 40;
      do
      {
        v17 = *(v16 - 8);
        v22[0] = v4;

        v17(v22);

        v16 += 16;
        --v15;
      }

      while (v15);
    }
  }

  if (a2 == 5)
  {
    v18 = mach_port_deallocate(mach_task_self_, v4);
    __logMachError(_:)(v18);
  }

  return 1;
}

void *sub_10003ED78(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005890(&qword_10007FF50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005890(&qword_1000806B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10003EEA8()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10003EF0C(unint64_t a1)
{
  sub_1000582B0();
  sub_1000582C0(qword_10005CA40[a1] | (a1 >> 40 << 8));
  v2 = sub_1000582F0();

  return sub_10003EF8C(a1 & 0xFFFFFFFF000000FFLL, v2);
}

unint64_t sub_10003EF8C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v2 + 48) + 8 * result);
      v8 = *v7;
      v9 = *(v7 + 1);
      if (dword_10005CA70[v8] == dword_10005CA70[a1] && v9 == HIDWORD(a1))
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_10003F01C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10003EF0C(a1 & 0xFFFFFFFF000000FFLL);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v7 = *(*v1 + 24);
  sub_100005890(&qword_10007FFA0);
  sub_100058140(isUniquelyReferenced_nonNull_native, v7);
  v8 = *(*(v10 + 56) + 8 * v5);
  sub_100005890(&qword_10007FFA8);
  sub_10003F9D0();
  sub_100058150();
  *v2 = v10;
  return v8;
}

unint64_t sub_10003F0FC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10003EF0C(a2 & 0xFFFFFFFF000000FFLL);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v9;
  v15 = v10;
  sub_100005890(&qword_10007FFA0);
  if (!sub_100058140(a3 & 1, v13))
  {
    goto LABEL_5;
  }

  v16 = sub_10003EF0C(a2 & 0xFFFFFFFF000000FFLL);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_100058290();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    *(v18[7] + 8 * v14) = a1;
  }

  else
  {

    return sub_10003F980(v14, a2 & 0xFFFFFFFF000000FFLL, a1, v18);
  }
}

unint64_t sub_10003F224()
{
  result = qword_10007FF58;
  if (!qword_10007FF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007FF58);
  }

  return result;
}

unint64_t sub_10003F27C()
{
  result = qword_10007FF60;
  if (!qword_10007FF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007FF60);
  }

  return result;
}

unint64_t sub_10003F2D4()
{
  result = qword_10007FF68;
  if (!qword_10007FF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007FF68);
  }

  return result;
}

unint64_t sub_10003F32C()
{
  result = qword_10007FF70;
  if (!qword_10007FF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007FF70);
  }

  return result;
}

unint64_t sub_10003F384()
{
  result = qword_10007FF78;
  if (!qword_10007FF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007FF78);
  }

  return result;
}

unint64_t sub_10003F3DC()
{
  result = qword_10007FF80;
  if (!qword_10007FF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007FF80);
  }

  return result;
}

unint64_t sub_10003F434()
{
  result = qword_10007FF88;
  if (!qword_10007FF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007FF88);
  }

  return result;
}

unint64_t sub_10003F48C()
{
  result = qword_10007FF90;
  if (!qword_10007FF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007FF90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MachPort.Right(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_10003FC50(-1);
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return sub_10003FC50((*a1 | (v4 << 8)) - 5);
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

      return sub_10003FC50((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_10003FC50((*a1 | (v4 << 8)) - 5);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_10003FC50(v8);
}

_BYTE *storeEnumTagSinglePayload for MachPort.Right(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result = sub_10003FC70(result, v6);
        break;
      case 2:
        result = sub_10003FC58(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10003F630);
      case 4:
        result = sub_10003FC60(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_10003FC3C(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MachPort.TypeName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_10003FC50(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return sub_10003FC50((*a1 | (v4 << 8)) - 2);
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

      return sub_10003FC50((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_10003FC50((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_10003FC50(v8);
}

_BYTE *storeEnumTagSinglePayload for MachPort.TypeName(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result = sub_10003FC70(result, v6);
        break;
      case 2:
        result = sub_10003FC58(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10003F7A8);
      case 4:
        result = sub_10003FC60(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_10003FC3C(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MachPort.Notification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_10003FC50(-1);
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return sub_10003FC50((*a1 | (v4 << 8)) - 6);
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

      return sub_10003FC50((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_10003FC50((*a1 | (v4 << 8)) - 6);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_10003FC50(v8);
}

_BYTE *storeEnumTagSinglePayload for MachPort.Notification(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result = sub_10003FC70(result, v6);
        break;
      case 2:
        result = sub_10003FC58(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10003F928);
      case 4:
        result = sub_10003FC60(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_10003FC3C(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10003F980(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 8 * result;
  *v4 = a2;
  *(v4 + 4) = HIDWORD(a2);
  *(a4[7] + 8 * result) = a3;
  v5 = a4[2];
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v7;
  }

  return result;
}

unint64_t sub_10003F9D0()
{
  result = qword_1000825C0[0];
  if (!qword_1000825C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000825C0);
  }

  return result;
}

uint64_t sub_10003FA24()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003FA5C()
{
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v0 = dispatch_mig_server();

  return __logMachError(_:)(v0);
}

uint64_t sub_10003FAC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for MachPort.NotificationKey(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && a1[8])
    {
      return sub_10003FC50(*a1 + 250);
    }

    v3 = *a1;
    v4 = v3 >= 6;
    v5 = v3 - 6;
    if (!v4)
    {
      return sub_10003FC50(-1);
    }
  }

  else
  {
    v5 = -1;
  }

  return sub_10003FC50(v5);
}

_BYTE *storeEnumTagSinglePayload for MachPort.NotificationKey(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      result[8] = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      result[8] = 0;
    }

    if (a2)
    {
      return sub_10003FC3C(result, a2 + 5);
    }
  }

  return result;
}

unint64_t sub_10003FB74()
{
  result = qword_100082650[0];
  if (!qword_100082650[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100082650);
  }

  return result;
}

uint64_t sub_10003FBDC()
{

  return swift_once();
}

uint64_t sub_10003FBFC()
{

  return swift_once();
}

uint64_t sub_10003FC1C()
{

  return swift_once();
}

void sub_10003FC84(uint64_t a1@<X8>)
{
  v4 = *(a1 + 8 * v1) | v2 & 0xFFFFFF00;

  sub_1000582C0(v4);
}

uint64_t static DispatchTimeInterval.seconds(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  if (a2 < 0.0)
  {
    goto LABEL_39;
  }

  if (a2 >= 9223372040.0)
  {
    if (a2 >= 9.22337204e12)
    {
      if (a2 >= 9.22337204e15)
      {
        sub_100041BD4();
        if (v5)
        {
          sub_100041CAC();
          if (!v9 & v8)
          {
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (v13 <= -9.22337204e18)
          {
LABEL_38:
            __break(1u);
LABEL_39:
            result = sub_100058160();
            __break(1u);
            return result;
          }

          sub_100041DAC(v13);
          v6 = &enum case for DispatchTimeInterval.seconds(_:);
        }

        else
        {
          v6 = &enum case for DispatchTimeInterval.never(_:);
        }
      }

      else
      {
        sub_100041CAC();
        if (!v9 & v8)
        {
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        if (v11 <= -9.22337204e18)
        {
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        sub_100041BD4();
        if (!v5)
        {
          goto LABEL_36;
        }

        sub_100041DAC(v12);
        v6 = &enum case for DispatchTimeInterval.milliseconds(_:);
      }
    }

    else
    {
      sub_100041CAC();
      if (!v9 & v8)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (v7 <= -9.22337204e18)
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      sub_100041BD4();
      if (!v5)
      {
        goto LABEL_33;
      }

      sub_100041DAC(v10);
      v6 = &enum case for DispatchTimeInterval.microseconds(_:);
    }

    goto LABEL_25;
  }

  v3 = a2 * 1000000000.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_100041BD4();
  if (!v5)
  {
    goto LABEL_30;
  }

  sub_100041DAC(v4);
  v6 = &enum case for DispatchTimeInterval.nanoseconds(_:);
LABEL_25:
  v14 = *v6;
  v15 = sub_1000578D0();
  v16 = *(*(v15 - 8) + 104);

  return v16(a1, v14, v15);
}

Swift::Void __swiftcall OS_dispatch_source_timer.reset(_:)(Swift::Double a1)
{
  sub_100041B88();
  sub_100041CEC();
  v3 = sub_1000578D0();
  sub_1000068E4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100041B04();
  v9 = (v7 - v8);
  __chkstk_darwin(v10);
  v11 = sub_100041E44();
  sub_1000068E4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100041B04();
  v17 = v15 - v16;
  __chkstk_darwin(v18);
  sub_100041C9C();
  sub_100057920();
  sub_100057970();
  v19 = *(v13 + 8);
  v19(v17, v11);
  (*(v5 + 104))(v1, enum case for DispatchTimeInterval.never(_:), v3);
  sub_10001472C(v9);
  sub_100041CF8();
  v20 = *(v5 + 8);
  v20(v9, v3);
  v20(v1, v3);
  v19(v2, v11);
  sub_100041BF4();
}

Swift::Void __swiftcall OS_dispatch_source_timer.reset(_:interval:)(Swift::Double _, Swift::Double interval)
{
  sub_100041B88();
  v5 = v4;
  v6 = sub_1000578D0();
  sub_1000068E4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100041B04();
  v12 = (v10 - v11);
  __chkstk_darwin(v13);
  v14 = sub_100041E44();
  sub_1000068E4();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_100041B04();
  v20 = v18 - v19;
  __chkstk_darwin(v21);
  sub_100041C9C();
  sub_100057920();
  sub_100057970();
  v22 = *(v16 + 8);
  v22(v20, v14);
  static DispatchTimeInterval.seconds(_:)(v2, v5);
  sub_10001472C(v12);
  sub_100041CF8();
  v23 = *(v8 + 8);
  v23(v12, v6);
  v23(v2, v6);
  v22(v3, v14);
  sub_100041BF4();
}

uint64_t sub_100040254()
{
  v0 = sub_1000578F0();
  sub_1000068E4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000068D4();
  v6 = v5 - v4;
  sub_100005A1C(0, &qword_10007EEC0);
  (*(v2 + 104))(v6, enum case for DispatchQoS.QoSClass.default(_:), v0);
  v7 = sub_100057E00();
  result = (*(v2 + 8))(v6, v0);
  qword_100082718 = v7;
  return result;
}

id static OS_dispatch_queue.defaultPriority.getter()
{
  if (qword_100082710 != -1)
  {
    sub_100041BB4();
  }

  v1 = qword_100082718;

  return v1;
}

void OS_dispatch_queue.after(_:closure:)()
{
  sub_100041B88();
  v3 = v2;
  v5 = v4;
  sub_100041CEC();
  v6 = sub_1000578E0();
  sub_1000068E4();
  v24 = v7;
  __chkstk_darwin(v8);
  sub_1000068D4();
  sub_100041C8C();
  sub_100057910();
  sub_1000068E4();
  v22 = v10;
  v23 = v9;
  __chkstk_darwin(v9);
  sub_1000068D4();
  v13 = v12 - v11;
  v21 = sub_100057930();
  v14 = *(v21 - 8);
  __chkstk_darwin(v21);
  sub_100041B04();
  v17 = v15 - v16;
  __chkstk_darwin(v18);
  sub_100041C9C();
  sub_100057920();
  sub_100057970();
  v19 = *(v14 + 8);
  v19(v17, v21);
  v25[4] = v5;
  v25[5] = v3;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 1107296256;
  v25[2] = sub_10000AF8C;
  v25[3] = &unk_100074368;
  v20 = _Block_copy(v25);

  sub_100057900();
  sub_100040B30(&qword_10007F010, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005890(&unk_10007ED80);
  sub_100005968(&qword_10007F020, &unk_10007ED80);
  sub_100058000();
  sub_100057DA0();
  _Block_release(v20);
  (*(v24 + 8))(v0, v6);
  (*(v22 + 8))(v13, v23);
  v19(v1, v21);

  sub_100041BF4();
}

uint64_t sub_1000406C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void OS_dispatch_queue.once(_:closure:)()
{
  sub_100041B88();
  v40 = v3;
  v41 = v4;
  sub_100041CEC();
  sub_1000578D0();
  sub_1000068E4();
  __chkstk_darwin(v5);
  sub_100019500();
  v42 = v6;
  sub_10001970C();
  __chkstk_darwin(v7);
  sub_100041C10();
  sub_1000197DC();
  sub_100057930();
  sub_1000068E4();
  __chkstk_darwin(v8);
  sub_100019500();
  sub_100041B78();
  __chkstk_darwin(v9);
  sub_100041B2C(v10, v11, v12, v13, v14, v15, v16, v17, v38);
  sub_1000068E4();
  __chkstk_darwin(v18);
  sub_1000068D4();
  v39 = sub_100041C1C();
  sub_1000068E4();
  __chkstk_darwin(v19);
  sub_1000068D4();
  sub_100041C8C();
  v20 = sub_100057E10();
  sub_1000068E4();
  __chkstk_darwin(v21);
  sub_1000068D4();
  sub_100041DB8();
  sub_100005A1C(0, &unk_10007F1C0);
  sub_100041AEC();
  sub_100040B30(v22, v23);
  v24 = sub_100041E64();
  sub_100041E7C(&unk_10007FCF0);
  sub_100041B14();
  sub_100058000();
  sub_100041E24();
  v25 = sub_100041BE4();
  v26(v25, v20);
  swift_getObjectType();
  v27 = swift_allocObject();
  v27[2] = v40;
  v27[3] = v41;
  v27[4] = v20;
  v43[4] = sub_100040B7C;
  v43[5] = v27;
  v43[0] = _NSConcreteStackBlock;
  sub_100041AD4(COERCE_DOUBLE(1107296256));
  v43[2] = v28;
  v43[3] = &unk_1000743B8;
  v29 = _Block_copy(v43);

  swift_unknownObjectRetain();
  sub_100057900();
  sub_1000399F8();
  sub_100041DE4();
  _Block_release(v29);
  v30 = sub_100041DA0();
  v31(v30);
  sub_100041BA4();
  v32(v0, v39);

  sub_100041D94();
  sub_100057920();
  sub_100041D80();
  sub_100057970();
  v33 = sub_100041C54();
  (v29)(v33);
  v34 = sub_100041C38();
  v35(v34);
  sub_10001472C(v42);
  sub_100041C70();
  sub_100057EC0();
  v36 = *(v0 + 8);
  v36(v24, &unk_10005B788);
  v37 = sub_100041D74();
  (v36)(v37);
  (v29)(v2, v1);
  sub_100057E80();
  sub_100041D40();
  sub_100041BF4();
}

uint64_t sub_100040B30(unint64_t *a1, void (*a2)(uint64_t))
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