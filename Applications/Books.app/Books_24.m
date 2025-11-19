unint64_t sub_100388AFC()
{
  result = qword_100ADF060;
  if (!qword_100ADF060)
  {
    sub_10079F7E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF060);
  }

  return result;
}

uint64_t sub_100388B6C(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_10038DEC0, v4);
}

void sub_100388C00(uint64_t a1, uint64_t a2)
{
  sub_10000A7C4(0, &qword_100AE8DB0);
  isa = sub_1007A25D4().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t sub_100388CFC(uint64_t a1)
{
  v2 = type metadata accessor for BuyButtonView.Style(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_10038DEC8(a1, &v9 - v6);
  sub_10038DEC8(v7, v4);
  sub_10038DF2C();
  sub_10079C844();
  return sub_10038DF80(v7);
}

char *sub_100388DCC()
{
  v1 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController____lazy_storage___miniPlayerView;
  v2 = *(v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController____lazy_storage___miniPlayerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController____lazy_storage___miniPlayerView);
  }

  else
  {
    v4 = v0;
    sub_100388E8C(v10);
    v5 = objc_allocWithZone(type metadata accessor for AudiobookNowPlayingMiniTouchView());
    v6 = sub_1005B86A8(v10, 0.0, 0.0, 0.0, 0.0);
    *&v6[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_delegate + 8] = &off_100A18560;
    swift_unknownObjectWeakAssign();
    v7 = *(v4 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_100388E8C@<X0>(uint64_t a1@<X8>)
{
  v26 = sub_10038BAC4();
  v27 = v3;
  v28 = v4;
  v6 = v5;
  v7 = [v1 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  v25 = sub_1007A2EF4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v9 = [v1 traitCollection];
  v10 = [v9 verticalSizeClass];

  if (v10 == 1)
  {
    v11 = 1;
  }

  else
  {
    v12 = [v1 traitCollection];
    v13 = [v12 horizontalSizeClass];

    v11 = v13 == 1;
  }

  v14 = sub_10038B8DC();
  v16 = v15;
  v18 = v17;
  v19 = sub_10038B764();
  v21 = v20;
  v23 = v22;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = v30;
  *(a1 + 8) = v26;
  *(a1 + 16) = v27;
  *(a1 + 24) = v28;
  *(a1 + 32) = v6;
  *(a1 + 40) = v28;
  *(a1 + 48) = v6;
  *(a1 + 56) = v11;
  *(a1 + 57) = v25 & 1;
  *(a1 + 64) = v14 & 1;
  *(a1 + 72) = v16 & 1;
  *(a1 + 73) = HIBYTE(v16) & 1;
  *(a1 + 80) = v18;
  *(a1 + 88) = v19 & 1;
  *(a1 + 96) = v21 & 1;
  *(a1 + 97) = HIBYTE(v21) & 1;
  *(a1 + 104) = v23;
  *(a1 + 112) = v29;
  return result;
}

void sub_100389174()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "viewDidLoad");
  sub_100389248(*&v0[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_viewModel]);
  v1 = sub_100388DCC();
  v2 = [objc_allocWithZone(UIContextMenuInteraction) initWithDelegate:v0];
  [v1 addInteraction:v2];

  v3 = *&v0[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController____lazy_storage___miniPlayerView];
  sub_100388E8C(v5);
  sub_1005BD790(v5);
  sub_10038DFDC(v5);
}

uint64_t sub_100389248(uint64_t a1)
{
  v107 = sub_1001F1160(&qword_100AD8178);
  v108 = *(v107 - 8);
  __chkstk_darwin(v107);
  v105 = &v83 - v2;
  v109 = sub_1001F1160(&unk_100ADF100);
  v110 = *(v109 - 8);
  __chkstk_darwin(v109);
  v106 = &v83 - v3;
  v102 = sub_1001F1160(&unk_100AE1530);
  __chkstk_darwin(v102);
  v98 = &v83 - v4;
  v99 = sub_1001F1160(&qword_100AD81B0);
  __chkstk_darwin(v99);
  v95 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v94 = &v83 - v7;
  __chkstk_darwin(v8);
  v93 = &v83 - v9;
  v100 = sub_1001F1160(&qword_100AD81B8);
  v101 = *(v100 - 8);
  __chkstk_darwin(v100);
  v96 = &v83 - v10;
  v103 = sub_1001F1160(&qword_100AD81C0);
  v104 = *(v103 - 8);
  __chkstk_darwin(v103);
  v97 = &v83 - v11;
  v119 = sub_1001F1160(&unk_100AE1520);
  v123 = *(v119 - 8);
  __chkstk_darwin(v119);
  v91 = &v83 - v12;
  v117 = sub_1001F1160(&qword_100AD8220);
  v124 = *(v117 - 8);
  __chkstk_darwin(v117);
  v92 = &v83 - v13;
  v14 = sub_1001F1160(&qword_100AD81E8);
  v15 = *(v14 - 8);
  v113 = v14;
  v114 = v15;
  __chkstk_darwin(v14);
  v90 = &v83 - v16;
  v17 = sub_1001F1160(&unk_100AD81F0);
  v18 = *(v17 - 8);
  v115 = v17;
  v116 = v18;
  __chkstk_darwin(v17);
  v112 = &v83 - v19;
  v86 = sub_1001F1160(&qword_100AD8228);
  v87 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = &v83 - v20;
  v88 = sub_1001F1160(&qword_100AD8230);
  v89 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v83 - v21;
  v22 = sub_1001F1160(&qword_100AD7EB0);
  __chkstk_darwin(v22 - 8);
  v24 = &v83 - v23;
  v25 = sub_1001F1160(&unk_100AD8250);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v83 - v27;
  v120 = sub_1001F1160(&qword_100AE1560);
  v29 = *(v120 - 8);
  __chkstk_darwin(v120);
  v31 = &v83 - v30;
  v121 = a1;
  swift_beginAccess();
  sub_1001F1160(&unk_100AD8260);
  sub_10079B974();
  swift_endAccess();
  v32 = sub_10000A7C4(0, &qword_100AD1E10);
  v33 = sub_1007A2D74();
  v130 = v33;
  v128 = sub_1007A2D24();
  v34 = *(v128 - 8);
  v127 = *(v34 + 56);
  v129 = v34 + 56;
  v127(v24, 1, 1, v128);
  v122 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_100005920(&unk_100AD8270, &unk_100AD8250);
  v126 = sub_100017E1C();
  v35 = v24;
  sub_10079BAB4();
  sub_100007840(v24, &qword_100AD7EB0);

  (*(v26 + 8))(v28, v25);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v118 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100005920(&unk_100AD8280, &qword_100AE1560);
  v36 = v120;
  sub_10079BB04();

  (*(v29 + 8))(v31, v36);
  v37 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_cancellables;
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_1001F1160(&unk_100AD5110);
  v38 = v84;
  sub_10079B974();
  swift_endAccess();
  v125 = v32;
  v39 = sub_1007A2D74();
  v130 = v39;
  v40 = v35;
  v42 = v127;
  v41 = v128;
  v127(v35, 1, 1, v128);
  sub_100005920(&unk_100ADF110, &qword_100AD8228);
  v43 = v85;
  v111 = v35;
  v44 = v86;
  sub_10079BAB4();
  sub_100007840(v40, &qword_100AD7EB0);

  (*(v87 + 8))(v38, v44);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&unk_100AD82A0, &qword_100AD8230);
  v45 = v88;
  sub_10079BB04();

  (*(v89 + 8))(v43, v45);
  v120 = v37;
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_1001F1160(&qword_100AD82E0);
  v46 = v90;
  sub_10079B974();
  swift_endAccess();
  v47 = sub_1007A2D74();
  v130 = v47;
  v48 = v111;
  v42(v111, 1, 1, v41);
  sub_100005920(&qword_100AD82E8, &qword_100AD81E8);
  v49 = v112;
  v50 = v113;
  sub_10079BAB4();
  sub_100007840(v48, &qword_100AD7EB0);

  v114[1](v46, v50);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&unk_100AD82F0, &unk_100AD81F0);
  v51 = v115;
  sub_10079BB04();

  (*(v116 + 8))(v49, v51);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  v116 = sub_1001F1160(&unk_100AD5120);
  v52 = v91;
  sub_10079B974();
  swift_endAccess();
  v53 = sub_1007A2D74();
  v130 = v53;
  v127(v48, 1, 1, v128);
  v115 = sub_100005920(&qword_100AD82B0, &unk_100AE1520);
  v54 = v92;
  v55 = v119;
  sub_10079BAB4();
  sub_100007840(v48, &qword_100AD7EB0);

  v56 = *(v123 + 8);
  v123 += 8;
  v114 = v56;
  v57 = v52;
  (v56)(v52, v55);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v113 = sub_100005920(&unk_100AE1590, &qword_100AD8220);
  v58 = v117;
  sub_10079BB04();

  v59 = *(v124 + 8);
  v124 += 8;
  v112 = v59;
  (v59)(v54, v58);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_10079B974();
  swift_endAccess();
  v60 = sub_1007A2D74();
  v130 = v60;
  v61 = v127;
  v127(v48, 1, 1, v128);
  v62 = v119;
  sub_10079BAB4();
  sub_100007840(v48, &qword_100AD7EB0);

  v63 = v57;
  (v114)(v57, v62);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v64 = v117;
  sub_10079BB04();

  v65 = v54;
  (v112)(v54, v64);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  v66 = v63;
  sub_10079B974();
  swift_endAccess();
  v67 = sub_1007A2D74();
  v130 = v67;
  v68 = v111;
  v61(v111, 1, 1, v128);
  v69 = v119;
  sub_10079BAB4();
  sub_100007840(v68, &qword_100AD7EB0);

  (v114)(v66, v69);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10079BB04();

  (v112)(v65, v64);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_1001F1160(&unk_100ADF120);
  sub_10079B974();
  swift_endAccess();
  swift_beginAccess();
  sub_10079B974();
  swift_endAccess();
  swift_beginAccess();
  sub_10079B974();
  swift_endAccess();
  swift_beginAccess();
  sub_1001F1160(&qword_100AD50E0);
  sub_10079B974();
  swift_endAccess();
  sub_100005920(&unk_100AD8320, &qword_100AD81B0);
  sub_100005920(&qword_100AD82D0, &unk_100AE1530);
  v70 = v96;
  sub_10079B7C4();
  v71 = sub_1007A2D74();
  v130 = v71;
  v127(v68, 1, 1, v128);
  sub_100005920(&unk_100ADF130, &qword_100AD81B8);
  v72 = v97;
  v73 = v100;
  sub_10079BAB4();
  sub_100007840(v68, &qword_100AD7EB0);

  (*(v101 + 8))(v70, v73);
  v74 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v75 = swift_allocObject();
  *(v75 + 16) = sub_10038E060;
  *(v75 + 24) = v74;
  sub_100005920(&unk_100AD8330, &qword_100AD81C0);
  v76 = v103;
  sub_10079BB04();

  (*(v104 + 8))(v72, v76);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_1001F1160(&qword_100AD50C0);
  v77 = v105;
  sub_10079B974();
  swift_endAccess();
  v78 = sub_1007A2D74();
  v130 = v78;
  v127(v68, 1, 1, v128);
  sub_100005920(&qword_100AD8360, &qword_100AD8178);
  v79 = v106;
  v80 = v107;
  sub_10079BAB4();
  sub_100007840(v68, &qword_100AD7EB0);

  (*(v108 + 8))(v77, v80);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&unk_100ADF140, &unk_100ADF100);
  v81 = v109;
  sub_10079BB04();

  (*(v110 + 8))(v79, v81);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();
}

void sub_10038ABB8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001F1160(&unk_100AD83B0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v13 - v7;
  v9 = [v2 view];
  v10 = v9;
  if (a2)
  {
    if (v9)
    {
      v13[0] = a1;
      v13[1] = a2;
      sub_100282BC4();

      sub_100795ED4();
      v11 = sub_100795EE4();
      (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
LABEL_6:
      sub_1007A30D4();

      return;
    }

    __break(1u);
  }

  else if (v9)
  {
    v12 = sub_100795EE4();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    goto LABEL_6;
  }

  __break(1u);
}

void sub_10038ADA8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1001F1160(&qword_100AD8378);
  __chkstk_darwin(v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (&v32 - v8);
  v10 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_buyButtonViewController;
  v11 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_buyButtonViewController];
  if (v11)
  {
    v12 = v11;
    [v12 willMoveToParentViewController:0];
    [v12 removeFromParentViewController];
    v13 = [v12 view];
    if (!v13)
    {
      __break(1u);
LABEL_10:
      __break(1u);
      return;
    }

    v14 = v13;
    [v13 removeFromSuperview];

    [v12 didMoveToParentViewController:0];
  }

  v15 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_buyButtonProvider;
  swift_beginAccess();
  sub_100282A38(a1, &v2[v15]);
  swift_endAccess();
  sub_1000077D8(a1, &v32, &qword_100AD4FA0);
  if (v33)
  {
    sub_1000077C0(&v32, v34);
    v16 = sub_10000E3E8(v34, v35);
    sub_10038D48C(*v16, v2);
    sub_10000E3E8(v34, v35);
    v17 = sub_100221B70();
    KeyPath = swift_getKeyPath();
    v19 = (v9 + *(v4 + 36));
    v20 = sub_1001F1160(&qword_100AD8380);
    sub_10038BFE0(v19 + *(v20 + 28));
    *v19 = KeyPath;
    *v9 = v17;
    sub_1000077D8(v9, v6, &qword_100AD8378);
    v21 = objc_allocWithZone(sub_1001F1160(&qword_100AD8388));
    v22 = sub_10079CBC4();
    sub_10079CB94();
    v23 = *&v2[v10];
    *&v2[v10] = v22;
    v24 = v22;

    sub_10000E3E8(v34, v35);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_100392FC4();
    swift_unknownObjectRelease();
    sub_1005353C0();
    sub_100535160();
    swift_unknownObjectRelease();
    [v24 willMoveToParentViewController:v2];
    [v2 addChildViewController:v24];
    v25 = *&v2[v10];
    *&v2[v10] = v22;

    v26 = [v24 view];
    if (v26)
    {
      v27 = v26;
      v28 = [objc_opt_self() clearColor];
      [v27 setBackgroundColor:v28];

      v29 = sub_100388DCC();
      v30 = [v24 view];

      sub_1005BA8DC(v30);
      [v24 didMoveToParentViewController:v2];

      sub_100007840(v9, &qword_100AD8378);
      sub_1000074E0(v34);
      return;
    }

    goto LABEL_10;
  }

  sub_100007840(&v32, &qword_100AD4FA0);
  v31 = sub_100388DCC();
  sub_1005BA8DC(0);
}

uint64_t sub_10038B294()
{
  v0 = sub_100388DCC();
  sub_1001F1160(&unk_100AD8160);
  v1 = swift_allocObject();
  v2 = *&v0[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipBackwardButton];
  *(v1 + 16) = xmmword_100811370;
  v3 = *&v0[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipForwardButton];
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = *&v0[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_togglePlayingButton];
  *(v1 + 48) = v4;
  v5 = v2;
  v6 = v3;
  v7 = v4;

  return v1;
}

void sub_10038B330(void *a1)
{
  v2 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_springLoadedInteraction;
  v3 = *&v1[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_springLoadedInteraction];
  *&v1[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_springLoadedInteraction] = a1;
  if (v3)
  {
    v4 = a1;
    v5 = v3;
    v6 = [v1 view];
    if (!v6)
    {
      __break(1u);
      goto LABEL_12;
    }

    v7 = v6;
    [v6 removeInteraction:v5];

    v8 = *&v1[v2];
    if (!v8)
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = v8;
    v11 = [v1 view];
    if (v11)
    {
      v12 = v11;
      v13 = v10;
      [v12 addInteraction:v13];

      goto LABEL_8;
    }

LABEL_12:
    __break(1u);
    return;
  }

  v9 = a1;
  v8 = a1;
  if (a1)
  {
    goto LABEL_6;
  }

LABEL_8:
}

void sub_10038B44C()
{

  sub_100007840(v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_buyButtonProvider, &qword_100AD4FA0);

  sub_100007840(v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_contextMenuAppearDate, &unk_100ADB5C0);
  v1 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_logger;
  v2 = sub_10079ACE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_springLoadedInteraction);
}

uint64_t type metadata accessor for AudiobookNowPlayingMiniTouchViewController()
{
  result = qword_100ADF0D0;
  if (!qword_100ADF0D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10038B674()
{
  sub_1002CDD3C();
  if (v0 <= 0x3F)
  {
    sub_10079ACE4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10038B764()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (!v2)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return LOBYTE(v1);
}

uint64_t sub_10038B8DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (!v7)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (LOBYTE(v6))
  {
    return 1;
  }

  v2 = [v0 traitCollection];
  v3 = [v2 verticalSizeClass];

  if (v3 == 1)
  {
    return 1;
  }

  v4 = [v0 traitCollection];
  v5 = [v4 horizontalSizeClass];

  return v5 == 1;
}

uint64_t sub_10038BAC4()
{
  v0 = sub_100796CF4();
  v20 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v18 - v4;
  v6 = sub_1007A21D4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v18 - v11;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (v21 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    v19 = v21;
    sub_1007A2154();
    sub_100796C94();
    (*(v7 + 16))(v9, v12, v6);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v15 = v20;
    (*(v20 + 16))(v2, v5, v0);
    sub_1007A22D4();
    (*(v15 + 8))(v5, v0);
    (*(v7 + 8))(v12, v6);
    return v19;
  }

  else
  {
    v16 = sub_1002034C8();
    sub_1004C1DB0(1);
  }

  return v16;
}

void sub_10038BE20()
{
  v1 = v0;
  v2 = sub_10038BAC4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_100388DCC();
  v10 = *&v9[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 48];
  v12 = *&v9[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state];
  v11 = *&v9[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 16];
  *&v38[16] = *&v9[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 32];
  *&v38[32] = v10;
  v37 = v12;
  *v38 = v11;
  v14 = *&v9[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 80];
  v13 = *&v9[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 96];
  v15 = *&v9[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 64];
  v38[96] = v9[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 112];
  *&v38[64] = v14;
  *&v38[80] = v13;
  *&v38[48] = v15;

  sub_10038E0AC(&v37, &v39);

  v34 = *&v38[40];
  v35 = *&v38[56];
  v36[0] = *&v38[72];
  *(v36 + 9) = *&v38[81];
  v32 = *&v38[8];
  v33 = *&v38[24];
  v31[0] = v37;
  v31[1] = v2;
  v31[2] = v4;
  sub_1005BD790(v31);
  sub_10038DFDC(v31);

  v16 = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController____lazy_storage___miniPlayerView);

  v18 = *&v16[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state];
  v17 = *&v16[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 16];
  v19 = *&v16[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 48];
  *v41 = *&v16[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 32];
  *&v41[16] = v19;
  v39 = v18;
  v40 = v17;
  v21 = *&v16[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 80];
  v20 = *&v16[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 96];
  v22 = *&v16[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 64];
  v41[80] = v16[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 112];
  *&v41[48] = v21;
  *&v41[64] = v20;
  *&v41[32] = v22;
  sub_10038E0AC(&v39, &v23);

  v23 = v39;
  v28 = *&v41[24];
  v29 = *&v41[40];
  v30[0] = *&v41[56];
  *(v30 + 9) = *&v41[65];
  v27 = *&v41[8];
  v24 = v40;
  v25 = v6;
  v26 = v8;
  sub_1005BD790(&v23);
  sub_10038DFDC(&v23);
}

double sub_10038BFE0@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() bc_booksTransportControlsColor];
  v3 = sub_10079DD24();
  v4 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  v5 = objc_allocWithZone(UIColor);
  v18[4] = sub_10038C1C4;
  v18[5] = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_10038D350;
  v18[3] = &unk_100A18680;
  v6 = _Block_copy(v18);
  [v5 initWithDynamicProvider:v6];
  _Block_release(v6);

  v7 = sub_10079DD24();
  swift_retain_n();

  v8 = sub_10079DE24();
  v9 = sub_10079DE24();

  v10 = *(type metadata accessor for BuyButtonView.Style(0) + 44);
  v11 = sub_10079E534();
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  *a1 = v3;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 8) = _Q0;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_100815050;
  *(a1 + 48) = v4;
  *(a1 + 56) = v7;
  *(a1 + 64) = v8;
  *(a1 + 72) = v9;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  return result;
}

id sub_10038C1DC(void *a1, SEL *a2)
{
  v3 = [a1 userInterfaceStyle];
  v4 = objc_opt_self();
  v5 = &selRef_bc_booksSeparatorColor;
  if (v3 != 2)
  {
    v5 = a2;
  }

  v6 = [v4 *v5];

  return v6;
}

UIMenu sub_10038C244()
{
  v0 = objc_opt_self();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10038DEB8;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100388B6C;
  aBlock[3] = &unk_100A18630;
  v2 = _Block_copy(aBlock);

  v3 = [v0 elementWithUncachedProvider:v2];
  _Block_release(v2);
  sub_10000A7C4(0, &qword_100AD8170);
  sub_1001F1160(&unk_100AD8160);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100811390;
  *(v4 + 32) = v3;
  v7 = v4;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v12.value._countAndFlagsBits = 0;
  v12.value._object = 0;
  v10.value.super.isa = 0;
  v10.is_nil = 0;
  v5.value = 0;
  return sub_1007A30C4(v11, v12, v10, v5, 0xFFFFFFFFFFFFFFFFLL, v7, v8);
}

id sub_10038C3B4(uint64_t (*a1)(void *))
{
  v2 = sub_1007971A4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a1(_swiftEmptyArrayStorage);
  }

  v7 = Strong;
  v8 = *(Strong + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler);
  swift_unknownObjectRetain();
  result = [v7 view];
  if (result)
  {
    v10 = result;
    (*(v3 + 104))(v5, enum case for ContextActionSource.miniPlayer(_:), v2);
    sub_100797194();
    (*(v3 + 8))(v5, v2);
    v11 = sub_1007A2214();

    v12 = [v8 contextMenuItemsFor:v7 from:v10 actionSource:v11];

    swift_unknownObjectRelease();
    sub_10000A7C4(0, &qword_100AD8170);
    v13 = sub_1007A25E4();

    if (v13 >> 62)
    {
      sub_10000A7C4(0, &qword_100AE8DB0);

      v14 = sub_1007A38C4();
    }

    else
    {

      sub_1007A3AD4();
      sub_10000A7C4(0, &qword_100AE8DB0);
      v14 = v13;
    }

    a1(v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10038C888(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_100388DCC();

    v5 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 48];
    v7 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state];
    v6 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 16];
    *&v13[32] = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 32];
    *&v13[48] = v5;
    *v13 = v7;
    *&v13[16] = v6;
    v9 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 80];
    v8 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 96];
    v10 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 64];
    v13[112] = v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 112];
    *&v13[80] = v9;
    *&v13[96] = v8;
    *&v13[64] = v10;
    v11 = v7;
    v12 = v1;
    sub_10038E0AC(v13, &v14);

    v18 = *&v13[56];
    v19 = *&v13[72];
    v20[0] = *&v13[88];
    *(v20 + 9) = *&v13[97];
    v15 = *&v13[8];
    v16 = *&v13[24];
    v17 = *&v13[40];
    v14 = v1;
    sub_1005BD790(&v14);
    sub_10038DFDC(&v14);
  }
}

void sub_10038C99C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10038ABB8(v1, v2);
  }
}

void sub_10038CA08(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_100388DCC();

    v5 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 32];
    v6 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 48];
    v7 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 16];
    v12[0] = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state];
    v12[2] = v5;
    v12[3] = v6;
    v12[1] = v7;
    v9 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 80];
    v8 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 96];
    v10 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 64];
    v13 = v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 112];
    v12[5] = v9;
    v12[6] = v8;
    v12[4] = v10;
    memmove(__dst, &v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state], 0x70uLL);
    __dst[112] = v1;
    sub_10038E0AC(v12, v11);
    sub_1005BD790(__dst);
    sub_10038DFDC(__dst);
  }
}

void sub_10038CAE8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_100388DCC();
    v3 = sub_10038B764();
    v5 = v4;
    v6 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 32];
    v7 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 48];
    v8 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 16];
    v22[0] = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state];
    v22[3] = v7;
    v22[2] = v6;
    v22[1] = v8;
    v10 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 80];
    v9 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 96];
    v11 = v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 112];
    v22[4] = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 64];
    v23 = v11;
    v22[6] = v9;
    v22[5] = v10;
    v12 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 89];
    *(v21 + 3) = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 92];
    v21[0] = v12;
    v13 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 98];
    v20 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 102];
    v19 = v13;
    v14 = v3 & 1;
    v16 = v15 & 1;
    v17 = (v15 >> 8) & 1;
    memmove(__dst, &v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state], 0x58uLL);
    __dst[88] = v14;
    *v25 = v21[0];
    *&v25[3] = *(v21 + 3);
    v26 = v16;
    v27 = v17;
    v28 = v19;
    v29 = v20;
    v30 = v5;
    v31 = v23;
    sub_10038E0AC(v22, v18);
    sub_1005BD790(__dst);
    sub_10038DFDC(__dst);
  }
}

void sub_10038CC4C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_100388DCC();
    v3 = sub_10038B8DC();
    v4 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 48];
    v6 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state];
    v5 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 16];
    v24[2] = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 32];
    v24[3] = v4;
    v24[0] = v6;
    v24[1] = v5;
    v8 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 80];
    v7 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 96];
    v9 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 64];
    v25 = v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 112];
    v24[5] = v8;
    v24[6] = v7;
    v24[4] = v9;
    v10 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 65];
    *(v23 + 3) = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 68];
    v23[0] = v10;
    v11 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 74];
    v22 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 78];
    v21 = v11;
    v12 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 88];
    *(v20 + 9) = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 97];
    v20[0] = v12;
    v13 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 48];
    v15 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state];
    v14 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 16];
    v26[2] = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 32];
    v26[3] = v13;
    v26[0] = v15;
    v26[1] = v14;
    v27 = v3 & 1;
    *v28 = v23[0];
    *&v28[3] = *(v23 + 3);
    v29 = v16 & 1;
    v30 = v17 & 1;
    v32 = v22;
    v31 = v11;
    v33 = v18;
    *(v34 + 9) = *(v20 + 9);
    v34[0] = v12;
    sub_10038E0AC(v24, v19);
    sub_1005BD790(v26);
    sub_10038DFDC(v26);
  }
}

void sub_10038CDAC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10038BE20();
  }
}

void sub_10038CE00()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10038BE20();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    v4 = sub_100388DCC();
    v5 = sub_10038B8DC();
    v6 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 32];
    v7 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 48];
    v8 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 16];
    v42[0] = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state];
    v42[3] = v7;
    v42[2] = v6;
    v42[1] = v8;
    v10 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 80];
    v9 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 96];
    v11 = v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 112];
    v42[4] = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 64];
    v43 = v11;
    v42[6] = v9;
    v42[5] = v10;
    v12 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 65];
    *(v38 + 3) = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 68];
    v38[0] = v12;
    v13 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 74];
    *&v41[4] = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 78];
    *v41 = v13;
    v14 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 88];
    *(v44 + 9) = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 97];
    v44[0] = v14;
    v15 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 32];
    v16 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 48];
    v17 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 16];
    v54[0] = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state];
    v54[3] = v16;
    v54[2] = v15;
    v54[1] = v17;
    v55 = v5 & 1;
    *v56 = v38[0];
    *&v56[3] = *(v38 + 3);
    v57 = v18 & 1;
    v58 = v19 & 1;
    v60 = *&v41[4];
    v59 = v13;
    v61 = v20;
    *(v62 + 9) = *(v44 + 9);
    v62[0] = v44[0];
    sub_10038E0AC(v42, __dst);
    sub_1005BD790(v54);
    sub_10038DFDC(v54);

    v21 = *&v3[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController____lazy_storage___miniPlayerView];
    v22 = sub_10038B764();
    v24 = v23;
    v25 = *&v21[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 32];
    v26 = *&v21[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 48];
    v27 = *&v21[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 16];
    v44[0] = *&v21[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state];
    v44[3] = v26;
    v44[2] = v25;
    v44[1] = v27;
    v29 = *&v21[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 80];
    v28 = *&v21[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 96];
    v30 = v21[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 112];
    v44[4] = *&v21[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 64];
    v45 = v30;
    v44[6] = v28;
    v44[5] = v29;
    v31 = *&v21[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 89];
    *&v41[3] = *&v21[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 92];
    *v41 = v31;
    v32 = *&v21[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 98];
    v40 = *&v21[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 102];
    v39 = v32;
    v33 = v45;
    v34 = v22 & 1;
    v36 = v35 & 1;
    v37 = (v35 >> 8) & 1;
    memmove(__dst, &v21[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state], 0x58uLL);
    __dst[88] = v34;
    *v47 = *v41;
    *&v47[3] = *&v41[3];
    v48 = v36;
    v49 = v37;
    v50 = v39;
    v51 = v40;
    v52 = v24;
    v53 = v33;
    sub_10038E0AC(v44, v38);
    sub_1005BD790(__dst);
    sub_10038DFDC(__dst);
  }
}

void sub_10038D0A4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10038ADA8(a1);
  }
}

id sub_10038D218()
{
  v1 = v0;
  v2 = sub_10079ACC4();
  v3 = sub_1007A29D4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Stopping playback of audiobook due to undocking the mini player", v4, 2u);
  }

  v5 = *&v1[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler];
  [v5 stop];
  [v5 clearAudiobook];

  return [v1 close:1];
}

id sub_10038D350(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

void sub_10038D3B8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  swift_unknownObjectRetain();
  v5(v6, a3);

  swift_unknownObjectRelease();
}

void sub_10038D440(int a1, id a2)
{
  if ([a2 state] == 3)
  {
    sub_1003443D4(0, 0);
  }
}

uint64_t sub_10038D48C(void *a1, void *a2)
{
  v32 = sub_10079CAE4();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for BuyButtonPresenter();
  v36 = &off_100A0F178;
  v34[0] = a1;
  v5 = *(*sub_10000E3E8(v34, v35) + OBJC_IVAR____TtC5Books18BuyButtonPresenter_style);
  v6 = objc_opt_self();
  v7 = a1;

  v8 = [v6 bc_booksSecondaryIconBackgroundColor];
  v9 = sub_10079DD24();
  v10 = [v6 bc_booksBackground];
  v11 = sub_10079DD24();
  v12 = [v6 labelColor];
  v13 = sub_10079DEA4();
  v14 = [v6 bc_booksOrange];
  v15 = sub_10079DEA4();
  v16 = objc_allocWithZone(UIColor);
  aBlock[4] = sub_10038C1D0;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10038D350;
  aBlock[3] = &unk_100A186A8;
  v17 = _Block_copy(aBlock);
  [v16 initWithDynamicProvider:v17];
  _Block_release(v17);

  v18 = sub_10079DD24();
  *(v5 + 4) = v9;

  *(v5 + 5) = v18;

  *(v5 + 6) = sub_10079DDC4();

  *(v5 + 2) = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();

  *(v5 + 8) = v13;

  *(v5 + 9) = v11;

  *(v5 + 10) = v13;

  *(v5 + 13) = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();

  *(v5 + 14) = v15;

  *(v5 + 15) = v15;

  *(v5 + 7) = 0;
  v19 = [v6 bc_booksTransportControlsColor];
  *(v5 + 28) = sub_10079DD24();

  v20 = [a2 traitCollection];
  v21 = [v20 verticalSizeClass];

  if (v21 == 1)
  {
  }

  else
  {
    v22 = [a2 traitCollection];
    v23 = [v22 horizontalSizeClass];

    if (v23 != 1)
    {
      v24 = &enum case for ContentSizeCategory.extraLarge(_:);
      goto LABEL_6;
    }
  }

  v24 = &enum case for ContentSizeCategory.small(_:);
LABEL_6:
  v25 = v30;
  v26 = v31;
  v27 = v32;
  (*(v30 + 104))(v31, *v24, v32);
  v28 = OBJC_IVAR____TtC5Books14BuyButtonStyle_maximumContentSizeCategory;
  swift_beginAccess();
  (*(v25 + 40))(&v5[v28], v26, v27);
  swift_endAccess();

  return sub_1000074E0(v34);
}

void sub_10038D930()
{
  swift_getObjectType();
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_cancellables) = &_swiftEmptySetSingleton;
  v1 = v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_buyButtonProvider;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_buyButtonViewController) = 0;
  v2 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_contextMenuAppearDate;
  v3 = sub_100796BB4();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  sub_1001F1160(&qword_100ADF158);
  sub_1007A22E4();
  sub_10079ACD4();
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController____lazy_storage___miniPlayerView) = 0;
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_springLoadedInteraction) = 0;
  sub_1007A38A4();
  __break(1u);
}

id sub_10038DA90()
{
  v35 = sub_1007971A4();
  v1 = *(v35 - 8);
  __chkstk_darwin(v35);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  v10 = sub_100796BB4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_contextMenuAppearDate;
  swift_beginAccess();
  v34 = v14;
  v15 = &v0[v14];
  v16 = v0;
  sub_1000077D8(v15, v9, &unk_100ADB5C0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_100007840(v9, &unk_100ADB5C0);
  }

  v31 = v6;
  v18 = *(v11 + 32);
  v33 = v13;
  v18(v13, v9, v10);
  v32 = *&v0[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler];
  result = [v0 view];
  if (result)
  {
    v19 = result;
    v20 = v35;
    (*(v1 + 104))(v3, enum case for ContextActionSource.miniPlayer(_:), v35);
    sub_100797194();
    (*(v1 + 8))(v3, v20);
    v21 = sub_1007A2214();

    v22 = [v32 analyticsAssetPropertyProviderFor:v19 actionSource:v21];

    if (v22)
    {
      sub_100798004();
      v23 = sub_100797FF4();
      v24 = [v16 ba_effectiveAnalyticsTracker];
      v25 = v33;
      isa = sub_100796AF4().super.isa;
      [v23 emitContextualActionSheetExposureEventWithTracker:v24 startDate:isa propertyProvider:v22];
      swift_unknownObjectRelease();

      (*(v11 + 8))(v25, v10);
      v27 = v31;
      (*(v11 + 56))(v31, 1, 1, v10);
      v28 = v16;
      v29 = v34;
      swift_beginAccess();
      sub_100217AB4(v27, v28 + v29);
      return swift_endAccess();
    }

    else
    {
      return (*(v11 + 8))(v33, v10);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10038DEC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BuyButtonView.Style(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10038DF2C()
{
  result = qword_100ADF0F0;
  if (!qword_100ADF0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF0F0);
  }

  return result;
}

uint64_t sub_10038DF80(uint64_t a1)
{
  v2 = type metadata accessor for BuyButtonView.Style(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10038E17C()
{
  v1 = [objc_allocWithZone(UIView) init];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [objc_allocWithZone(UILabel) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle3];
  [v2 setFont:v3];

  v4 = objc_opt_self();
  v5 = [v4 bc_booksLabelColor];
  [v2 setTextColor:v5];

  [v2 setAdjustsFontForContentSizeCategory:1];
  v6 = sub_1007A2214();
  [v2 setText:v6];

  [v2 setTextAlignment:4];
  [v2 sizeToFit];
  [v1 addSubview:v2];
  v7 = objc_opt_self();
  v8 = sub_1007A2214();
  v9 = [v7 __systemImageNamedSwift:v8];

  v10 = [objc_allocWithZone(UIImageView) initWithImage:v9];
  v11 = [v2 font];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_opt_self() configurationWithFont:v11];

    [v10 setPreferredSymbolConfiguration:v13];
    v36 = v10;
    [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [v4 bc_booksLabelColor];
    [v36 setTintColor:v14];

    [v1 addSubview:v36];
    v35 = objc_opt_self();
    sub_1001F1160(&unk_100AD8160);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_10081F2E0;
    v16 = [v1 leadingAnchor];
    v17 = [v36 leadingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:-10.0];

    *(v15 + 32) = v18;
    v19 = [v1 heightAnchor];
    v20 = [v19 constraintEqualToConstant:50.0];

    *(v15 + 40) = v20;
    v21 = [v2 centerYAnchor];
    v22 = [v1 centerYAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];

    *(v15 + 48) = v23;
    v24 = [v2 leadingAnchor];
    v25 = [v36 trailingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25 constant:10.0];

    *(v15 + 56) = v26;
    v27 = [v2 trailingAnchor];

    v28 = [v1 layoutMarginsGuide];
    v29 = [v28 trailingAnchor];

    v30 = [v27 constraintLessThanOrEqualToAnchor:v29 constant:-10.0];
    *(v15 + 64) = v30;
    v31 = [v36 centerYAnchor];

    v32 = [v1 centerYAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];

    *(v15 + 72) = v33;
    sub_10002267C();
    isa = sub_1007A25D4().super.isa;

    [v35 activateConstraints:isa];

    [v0 setView:v1];
  }

  else
  {
    __break(1u);
  }
}

void sub_10038E844()
{
  v36 = sub_100796CF4();
  v0 = *(v36 - 8);
  __chkstk_darwin(v36);
  v2 = &v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v36 - v4;
  v6 = sub_1007A21D4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v37 = [objc_allocWithZone(UIView) init];
  [v37 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [objc_allocWithZone(UILabel) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle3];
  [v13 setFont:v14];

  v15 = [objc_opt_self() bc_booksLabelColor];
  [v13 setTextColor:v15];

  sub_1007A2154();
  sub_100796C94();
  (*(v7 + 16))(v9, v12, v6);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v18 = v36;
  (*(v0 + 16))(v2, v5, v36);
  sub_1007A22D4();
  (*(v0 + 8))(v5, v18);
  (*(v7 + 8))(v12, v6);
  v19 = sub_1007A2214();

  [v13 setText:v19];

  [v13 setTextAlignment:1];
  [v13 setAdjustsFontForContentSizeCategory:1];
  v20 = v37;
  [v37 addSubview:v13];
  v21 = objc_opt_self();
  sub_1001F1160(&unk_100AD8160);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100816E30;
  v23 = [v13 widthAnchor];
  v24 = [v20 widthAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v22 + 32) = v25;
  v26 = [v13 heightAnchor];
  v27 = [v20 heightAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(v22 + 40) = v28;
  v29 = [v13 centerYAnchor];
  v30 = [v20 centerYAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v22 + 48) = v31;
  v32 = [v13 leadingAnchor];

  v33 = [v20 leadingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v22 + 56) = v34;
  sub_10002267C();
  isa = sub_1007A25D4().super.isa;

  [v21 activateConstraints:isa];

  [v38 setView:v20];
}

void sub_10038EFA8()
{
  v1 = v0;
  v2 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - v3;
  v5 = sub_100796BB4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = *&v1[OBJC_IVAR____TtC5Books28EditDatePickerViewController_datePicker];
  sub_100217B24(&v1[OBJC_IVAR____TtC5Books28EditDatePickerViewController_initialDate], v4);
  v13 = *(v6 + 48);
  if (v13(v4, 1, v5) == 1)
  {
    sub_100796B74();
    if (v13(v4, 1, v5) != 1)
    {
      sub_10038F7FC(v4);
    }
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
  }

  isa = sub_100796AF4().super.isa;
  v15 = *(v6 + 8);
  v15(v11, v5);
  [v12 setDate:isa];

  sub_100796B74();
  v16 = sub_100796AF4().super.isa;
  v15(v8, v5);
  [v12 setMaximumDate:v16];

  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v12 setDatePickerMode:1];
  [v12 setPreferredDatePickerStyle:3];
  v17 = [objc_allocWithZone(UIView) init];
  [v17 addSubview:v12];
  v18 = objc_opt_self();
  sub_1001F1160(&unk_100AD8160);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100811370;
  v20 = [v12 leadingAnchor];
  v21 = [v17 leadingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:8.0];

  *(v19 + 32) = v22;
  v23 = [v12 trailingAnchor];
  v24 = [v17 trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:-8.0];

  *(v19 + 40) = v25;
  v26 = [v17 heightAnchor];
  v27 = [v12 heightAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(v19 + 48) = v28;
  sub_10002267C();
  v29 = sub_1007A25D4().super.isa;

  [v18 activateConstraints:v29];

  [v1 setView:v17];
}

id sub_10038F684(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for EditDatePickerViewController()
{
  result = qword_100ADF1F0;
  if (!qword_100ADF1F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10038F75C()
{
  sub_1002CDD3C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10038F7FC(uint64_t a1)
{
  v2 = sub_1001F1160(&unk_100ADB5C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10038F864()
{
  sub_10028B574();
  if (v0 <= 0x3F)
  {
    sub_100247D20();
    if (v1 <= 0x3F)
    {
      sub_10038F974();
      if (v2 <= 0x3F)
      {
        sub_10038F9CC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10038F974()
{
  if (!qword_100ADF280)
  {
    v0 = sub_1007A2114();
    if (!v1)
    {
      atomic_store(v0, &qword_100ADF280);
    }
  }
}

unint64_t sub_10038F9CC()
{
  result = qword_100ADF288;
  if (!qword_100ADF288)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100ADF288);
  }

  return result;
}

uint64_t sub_10038FA94(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_10079E5D4();
}

uint64_t sub_10038FC64@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10079C824();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F1160(&unk_100ADB4E0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1000077D8(v2, &v14 - v9, &unk_100ADB4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10079CAE4();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1007A29C4();
    v13 = sub_10079D244();
    sub_10079AB44();

    sub_10079C814();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

double sub_10038FE64(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(a1);
  (*(v3 + 16))(v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1, v5);
  sub_1007A26F4();
  v6 = sub_1007A26E4();
  v7 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = &protocol witness table for MainActor;
  *(v8 + 32) = *(a1 + 16);
  (*(v3 + 32))(v8 + v7, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v9 = (v1 + *(a1 + 60));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v11;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = sub_1003922D8;
  v13[5] = v12;

  sub_10079E204();
  return *&v15[3];
}

uint64_t sub_100390048(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 56));
  isa = sub_1007A27B4().super.super.isa;
  v4 = [v2 stringFromNumber:isa];

  if (v4)
  {
    v5 = sub_1007A2254();

    return v5;
  }

  else
  {

    return sub_1007A27C4();
  }
}

uint64_t sub_1003900F8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v19 = a2;
  sub_1001F1234(&qword_100ADF290);
  v18 = *(a1 + 16);
  sub_10079C2A4();
  sub_10079C2A4();
  sub_10079D1C4();
  sub_10079C2A4();
  sub_1001F1234(&qword_100ADF298);
  sub_1001F1234(&qword_100ADF2A0);
  swift_getTupleTypeMetadata3();
  sub_10079E5C4();
  swift_getWitnessTable();
  type metadata accessor for OptionsAdaptiveStack();
  swift_getTupleTypeMetadata2();
  sub_10079E5C4();
  swift_getWitnessTable();
  v4 = sub_10079E184();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = sub_100390048(a1);
  v13 = v12;
  sub_10079CB34();
  v14 = *(a1 + 24);
  v20 = v18;
  v21 = v14;
  v22 = v2;
  v23 = v11;
  v24 = v13;
  sub_10079E174();

  swift_getWitnessTable();
  v15 = *(v5 + 16);
  v15(v10, v7, v4);
  v16 = *(v5 + 8);
  v16(v7, v4);
  v15(v19, v10, v4);
  return (v16)(v10, v4);
}

uint64_t sub_1003903E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v68 = a5;
  v67 = a4;
  v72 = a3;
  v71 = a2;
  v56 = a1;
  v73 = a6;
  v7 = sub_1001F1160(&qword_100AD6E98);
  __chkstk_darwin(v7 - 8);
  v70 = (&v55 - v8);
  v9 = sub_1001F1160(&qword_100AE3E60);
  __chkstk_darwin(v9 - 8);
  v69 = (&v55 - v10);
  v11 = type metadata accessor for OptionSlider();
  v57 = v11;
  v65 = *(v11 - 8);
  v66 = *(v65 + 64);
  __chkstk_darwin(v11);
  v64 = &v55 - v12;
  sub_10079C2A4();
  sub_10079C2A4();
  sub_10079D1C4();
  sub_10079C2A4();
  sub_1001F1234(&qword_100ADF298);
  sub_1001F1234(&qword_100ADF2A0);
  swift_getTupleTypeMetadata3();
  v59 = sub_10079E5C4();
  WitnessTable = swift_getWitnessTable();
  v13 = type metadata accessor for OptionsAdaptiveStack();
  v62 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v61 = &v55 - v17;
  v63 = sub_1001F1160(&qword_100ADF290);
  __chkstk_darwin(v63);
  v60 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v55 = &v55 - v20;
  v21 = (a1 + *(v11 + 36));
  v22 = v21[1];
  *&v83[0] = *v21;
  *(&v83[0] + 1) = v22;
  sub_100206ECC();

  v23 = sub_10079D5D4();
  v25 = v24;
  LOBYTE(v11) = v26;
  v28 = v27;
  KeyPath = swift_getKeyPath();
  v30 = sub_10079D494();
  v31 = swift_getKeyPath();
  v32 = v11 & 1;
  LOBYTE(v83[0]) = v11 & 1;
  LOBYTE(v77) = 0;
  v33 = _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
  v34 = swift_getKeyPath();
  *&v77 = v23;
  *(&v77 + 1) = v25;
  LOBYTE(v78) = v32;
  *(&v78 + 1) = v28;
  *&v79 = KeyPath;
  *(&v79 + 1) = 2;
  LOBYTE(v80) = 0;
  *(&v80 + 1) = v31;
  *&v81 = v30;
  *(&v81 + 1) = v34;
  v82 = v33;
  sub_1001F1160(&qword_100ADF2A8);
  sub_1003917A4();
  v35 = v55;
  sub_10079D944();
  v83[3] = v80;
  v83[4] = v81;
  v84 = v82;
  v83[0] = v77;
  v83[1] = v78;
  v83[2] = v79;
  sub_100007840(v83, &qword_100ADF2A8);
  v36 = v65;
  v37 = v64;
  v38 = v57;
  (*(v65 + 16))(v64, v56, v57);
  v39 = v36;
  v40 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v41 = (v66 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  v43 = v68;
  *(v42 + 16) = v67;
  *(v42 + 24) = v43;
  (*(v39 + 32))(v42 + v40, v37, v38);
  v44 = (v42 + v41);
  v45 = v72;
  *v44 = v71;
  v44[1] = v45;
  v46 = v69;
  sub_10028C804(v69);
  v47 = v70;
  sub_10028C820(v70);
  sub_10028C8A0(v46, v47, 0x4024000000000000, 0, sub_100391914, v42, v15);
  v48 = swift_getWitnessTable();
  v49 = v62;
  v50 = *(v62 + 16);
  v51 = v61;
  v50(v61, v15, v13);
  v52 = *(v49 + 8);

  v52(v15, v13);
  v53 = v60;
  sub_1000077D8(v35, v60, &qword_100ADF290);
  *&v77 = v53;
  v50(v15, v51, v13);
  *(&v77 + 1) = v15;
  v76[0] = v63;
  v76[1] = v13;
  v74 = sub_1003919D0();
  v75 = v48;
  sub_10038FA94(&v77, 2uLL, v76);
  v52(v51, v13);
  sub_100007840(v35, &qword_100ADF290);
  v52(v15, v13);
  return sub_100007840(v53, &qword_100ADF290);
}

uint64_t sub_100390B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v99 = a2;
  *(&v99 + 1) = a3;
  v90 = a1;
  v111 = a6;
  v108 = sub_10079CAE4();
  v106 = *(v108 - 8);
  __chkstk_darwin(v108);
  v105 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v102 = &v89 - v11;
  v101 = sub_1001F1160(&qword_100ADF2D0) - 8;
  __chkstk_darwin(v101);
  v100 = &v89 - v12;
  v107 = sub_1001F1160(&qword_100ADF2D8);
  __chkstk_darwin(v107);
  v104 = &v89 - v13;
  v110 = sub_1001F1160(&qword_100ADF2A0);
  __chkstk_darwin(v110);
  v109 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v103 = &v89 - v16;
  v96 = sub_1001F1160(&qword_100ADF2E0);
  __chkstk_darwin(v96);
  v93 = &v89 - v17;
  v98 = sub_1001F1160(&qword_100ADF2E8);
  __chkstk_darwin(v98);
  v95 = &v89 - v18;
  v117 = sub_1001F1160(&qword_100ADF298);
  __chkstk_darwin(v117);
  v116 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v114 = &v89 - v21;
  v92 = *(a4 - 8);
  __chkstk_darwin(v22);
  v24 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10079C2A4();
  v94 = *(v25 - 8);
  __chkstk_darwin(v25);
  v27 = &v89 - v26;
  v28 = sub_10079C2A4();
  v97 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = &v89 - v29;
  sub_10079D1C4();
  v113 = sub_10079C2A4();
  v118 = *(v113 - 8);
  __chkstk_darwin(v113);
  v32 = &v89 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v115 = &v89 - v34;
  v89 = type metadata accessor for OptionSlider();
  (*(a1 + v89[10]))();
  sub_10079E474();
  sub_10079DB14();
  (*(v92 + 1))(v24, a4);
  sub_10079D2E4();
  v133 = a5;
  v134 = &protocol witness table for _FrameLayout;
  WitnessTable = swift_getWitnessTable();
  sub_10079DBE4();
  (*(v94 + 8))(v27, v25);
  v131 = WitnessTable;
  v132 = &protocol witness table for _PaddingLayout;
  v36 = swift_getWitnessTable();
  sub_10079D944();
  v97[1](v30, v28);
  v37 = sub_100391A5C();
  v129 = v36;
  v130 = v37;
  v38 = v113;
  v94 = swift_getWitnessTable();
  v39 = v118;
  v40 = *(v118 + 16);
  v91 = v118 + 16;
  v92 = v40;
  v112 = v32;
  v40(v115, v32, v38);
  v41 = *(v39 + 8);
  v118 = v39 + 8;
  v97 = v41;
  (v41)(v32, v38);
  v42 = v89;
  v43 = v90;
  v44 = sub_10038FE64(v89);
  *&v137 = v45;
  *(&v137 + 1) = v46;
  *&v138 = v44;
  v47 = v42[12];
  v124 = *(v43 + v42[11]);
  v123[0] = *(v43 + v47);
  sub_100247DCC();
  v48 = v93;
  sub_10079E144();
  v49 = sub_10079DE34();
  KeyPath = swift_getKeyPath();
  v51 = (v48 + *(v96 + 36));
  *v51 = KeyPath;
  v51[1] = v49;
  v52 = (v43 + v42[9]);
  v54 = *v52;
  v53 = v52[1];
  *&v137 = v54;
  *(&v137 + 1) = v53;
  sub_100391AB4();
  sub_100206ECC();
  v55 = v95;
  sub_10079D8E4();
  sub_100007840(v48, &qword_100ADF2E0);
  v56 = v99;
  v137 = v99;
  v57 = v114;
  sub_10079C1E4();
  sub_100007840(v55, &qword_100ADF2E8);
  *(v57 + *(v117 + 36)) = 1;
  v137 = v56;

  v58 = sub_10079D5D4();
  v60 = v59;
  LOBYTE(v36) = v61;
  v63 = v62;
  v64 = swift_getKeyPath();
  v65 = sub_10079D374();
  v66 = swift_getKeyPath();
  LOBYTE(v123[0]) = v36 & 1;
  LOBYTE(v122[0]) = 0;
  *&v124 = v58;
  *(&v124 + 1) = v60;
  LOBYTE(v125) = v36 & 1;
  *(&v125 + 1) = *v136;
  DWORD1(v125) = *&v136[3];
  *(&v125 + 1) = v63;
  *&v126 = v64;
  *(&v126 + 1) = 1;
  LOBYTE(v127) = 0;
  *(&v127 + 1) = *v135;
  DWORD1(v127) = *&v135[3];
  *(&v127 + 1) = v66;
  v128 = v65;
  sub_1001F1160(&qword_100ADF2C0);
  sub_10039185C();
  v67 = v100;
  sub_10079D814();
  v138 = v125;
  v139 = v126;
  v140 = v127;
  v141 = v128;
  v137 = v124;
  sub_100007840(&v137, &qword_100ADF2C0);
  v68 = _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
  v69 = swift_getKeyPath();
  v70 = v102;
  v71 = (v67 + *(v101 + 44));
  *v71 = v69;
  v71[1] = v68;
  sub_10038FC64(v70);
  v73 = v105;
  v72 = v106;
  v74 = v108;
  (*(v106 + 104))(v105, enum case for ContentSizeCategory.extraLarge(_:), v108);
  v75 = v70;
  sub_100391B98(v70, v73);
  v76 = *(v72 + 8);
  v76(v73, v74);
  v76(v75, v74);
  sub_10079E474();
  sub_10079BE54();
  v77 = v104;
  sub_1000362A0(v67, v104);
  v78 = (v77 + *(v107 + 36));
  v79 = v125;
  *v78 = v124;
  v78[1] = v79;
  v78[2] = v126;
  sub_100391FB0();
  v80 = v103;
  sub_10079D944();
  sub_100007840(v77, &qword_100ADF2D8);
  v81 = v112;
  v82 = v113;
  v83 = v115;
  v92(v112, v115, v113);
  v123[0] = v81;
  v84 = v114;
  v85 = v116;
  sub_1000077D8(v114, v116, &qword_100ADF298);
  v123[1] = v85;
  v86 = v109;
  sub_100036310(v80, v109);
  v123[2] = v86;
  v122[0] = v82;
  v122[1] = v117;
  v122[2] = v110;
  v119 = v94;
  v120 = sub_100392130();
  v121 = sub_1003921E8(&qword_100ADF328, &qword_100ADF2A0, &unk_10081F3F8, sub_100391FB0);
  sub_10038FA94(v123, 3uLL, v122);
  sub_100007840(v80, &qword_100ADF2A0);
  sub_100007840(v84, &qword_100ADF298);
  v87 = v97;
  (v97)(v83, v82);
  sub_100007840(v86, &qword_100ADF2A0);
  sub_100007840(v116, &qword_100ADF298);
  return (v87)(v112, v82);
}

unint64_t sub_1003917A4()
{
  result = qword_100ADF2B0;
  if (!qword_100ADF2B0)
  {
    sub_1001F1234(&qword_100ADF2A8);
    sub_10039185C();
    sub_100005920(&unk_100AD1D10, &qword_100ADB490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF2B0);
  }

  return result;
}

unint64_t sub_10039185C()
{
  result = qword_100ADF2B8;
  if (!qword_100ADF2B8)
  {
    sub_1001F1234(&qword_100ADF2C0);
    sub_100324064();
    sub_100005920(&unk_100AD1CF0, &qword_100ADBDA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF2B8);
  }

  return result;
}

uint64_t sub_100391914@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for OptionSlider() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_100390B88(v1 + v6, v8, v9, v3, v4, a1);
}

unint64_t sub_1003919D0()
{
  result = qword_100ADF2C8;
  if (!qword_100ADF2C8)
  {
    sub_1001F1234(&qword_100ADF290);
    sub_1003917A4();
    sub_100391A5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF2C8);
  }

  return result;
}

unint64_t sub_100391A5C()
{
  result = qword_100AF45F0;
  if (!qword_100AF45F0)
  {
    sub_10079D1C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF45F0);
  }

  return result;
}

unint64_t sub_100391AB4()
{
  result = qword_100ADF2F0;
  if (!qword_100ADF2F0)
  {
    sub_1001F1234(&qword_100ADF2E0);
    sub_100005920(&qword_100ADF2F8, &qword_100ADF300);
    sub_100005920(&unk_100AD1D10, &qword_100ADB490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF2F0);
  }

  return result;
}

BOOL sub_100391B98(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v3 = sub_10079CAE4();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = *(v4 + 16);
  v10(&v18 - v8, a2, v3);
  v11 = *(v4 + 88);
  v12 = v11(v9, v3);
  v13 = 0;
  v14 = enum case for ContentSizeCategory.extraSmall(_:);
  if (v12 != enum case for ContentSizeCategory.extraSmall(_:))
  {
    if (v12 == enum case for ContentSizeCategory.small(_:))
    {
      v13 = 1;
      goto LABEL_24;
    }

    if (v12 == enum case for ContentSizeCategory.medium(_:))
    {
      v13 = 2;
      goto LABEL_24;
    }

    if (v12 == enum case for ContentSizeCategory.large(_:))
    {
      goto LABEL_7;
    }

    if (v12 == enum case for ContentSizeCategory.extraLarge(_:))
    {
      v13 = 4;
    }

    else if (v12 == enum case for ContentSizeCategory.extraExtraLarge(_:))
    {
      v13 = 5;
    }

    else if (v12 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
    {
      v13 = 6;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityMedium(_:))
    {
      v13 = 7;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityLarge(_:))
    {
      v13 = 8;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
    {
      v13 = 9;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
    {
      v13 = 10;
    }

    else
    {
      if (v12 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        (*(v4 + 8))(v9, v3);
LABEL_7:
        v13 = 3;
        goto LABEL_24;
      }

      v13 = 11;
    }
  }

LABEL_24:
  v10(v7, v19, v3);
  v15 = v11(v7, v3);
  if (v15 == v14)
  {
    v16 = 0;
  }

  else if (v15 == enum case for ContentSizeCategory.small(_:))
  {
    v16 = 1;
  }

  else if (v15 == enum case for ContentSizeCategory.medium(_:))
  {
    v16 = 2;
  }

  else
  {
    if (v15 != enum case for ContentSizeCategory.large(_:))
    {
      if (v15 == enum case for ContentSizeCategory.extraLarge(_:))
      {
        v16 = 4;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.extraExtraLarge(_:))
      {
        v16 = 5;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
      {
        v16 = 6;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityMedium(_:))
      {
        v16 = 7;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityLarge(_:))
      {
        v16 = 8;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
      {
        v16 = 9;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
      {
        v16 = 10;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        v16 = 11;
        return v13 < v16;
      }

      (*(v4 + 8))(v7, v3);
    }

    v16 = 3;
  }

  return v13 < v16;
}

unint64_t sub_100391FB0()
{
  result = qword_100ADF308;
  if (!qword_100ADF308)
  {
    sub_1001F1234(&qword_100ADF2D8);
    sub_10039203C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF308);
  }

  return result;
}

unint64_t sub_10039203C()
{
  result = qword_100ADF310;
  if (!qword_100ADF310)
  {
    sub_1001F1234(&qword_100ADF2D0);
    sub_1001F1234(&qword_100ADF2C0);
    sub_10039185C();
    swift_getOpaqueTypeConformance2();
    sub_100005920(&unk_100AD1D10, &qword_100ADB490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF310);
  }

  return result;
}

unint64_t sub_100392130()
{
  result = qword_100ADF318;
  if (!qword_100ADF318)
  {
    sub_1001F1234(&qword_100ADF298);
    sub_1003921E8(&qword_100ADF320, &qword_100ADF2E8, &unk_10081F4B8, sub_100391AB4);
    sub_100303C54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF318);
  }

  return result;
}

uint64_t sub_1003921E8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001F1234(a2);
    a4();
    sub_100391A5C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_10039226C@<D0>(double *a1@<X8>)
{
  v3 = type metadata accessor for OptionSlider();
  result = *(v1 + ((*(*(v3 - 8) + 80) + 48) & ~*(*(v3 - 8) + 80)) + *(v3 + 52));
  *a1 = result;
  return result;
}

uint64_t sub_100392330()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100ADF330);
  sub_100008B98(v0, qword_100ADF330);
  sub_10000A7C4(0, &qword_100AD20A0);
  return sub_1007A33F4();
}

void sub_1003923B4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_getObjectType();
    v3 = swift_allocObject();
    swift_weakInit();

    v4 = sub_100392728(sub_100392BB8, v3);
  }

  else
  {
    v4 = 0;
  }

  *(v0 + OBJC_IVAR____TtC5Books40AppIntentsAssetViewControllerInfoTracker_task) = v4;

  sub_100392554();
}

uint64_t sub_100392488()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return v1;
}

uint64_t sub_1003924FC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100392554();
  }

  return result;
}

void sub_100392554()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong appIntentsInfo];
  }

  else
  {
    v2 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (v8)
  {
    if (!v2)
    {

      v4 = 0;
      v5 = 0;
      goto LABEL_11;
    }

    sub_10000A7C4(0, &qword_100AEA140);
    v2 = v2;
    v3 = sub_1007A3184();

    if (v3)
    {

      return;
    }
  }

  else if (!v2)
  {
    return;
  }

  v4 = v2;
  [v4 copyWithZone:0];
  sub_1007A3504();
  swift_unknownObjectRelease();

  sub_10000A7C4(0, &qword_100AEA140);
  swift_dynamicCast();
  v5 = v7;
LABEL_11:
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v5;

  sub_10079B9B4();
}

uint64_t sub_100392728(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v8[4] = sub_100392BC0;
  v8[5] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1003323D0;
  v8[3] = &unk_100A18840;
  v5 = _Block_copy(v8);

  v6 = BCAppIntentsAssetViewControllerAddInfoChangeObserver();
  _Block_release(v5);
  *(swift_allocObject() + 16) = v6;
  sub_10079B884();
  swift_allocObject();
  return sub_10079B894();
}

uint64_t sub_100392860()
{
  sub_10002B130(v0 + 16);
  v1 = OBJC_IVAR____TtC5Books40AppIntentsAssetViewControllerInfoTracker__appIntentsInfo;
  v2 = sub_1001F1160(&unk_100AE8330);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100392928(uint64_t a1, uint64_t a2)
{
  v4 = sub_1007A1D04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_10000A7C4(0, &qword_100AD1E10);

  *v7 = sub_1007A2D74();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  LOBYTE(a2) = sub_1007A1D34();
  result = (*(v5 + 8))(v7, v4);
  if (a2)
  {

    (*(v8 + 16))(v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100392AC0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = v3;
  return result;
}

uint64_t sub_100392B40(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return sub_10079B9B4();
}

uint64_t sub_100392BD8()
{
  v1 = sub_100796CF4();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v24 - v6;
  v8 = sub_1007A21D4();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = v24 - v14;
  if (*(v0 + 56))
  {
    v16 = *(v0 + 48);
    if (*(v0 + 80))
    {
LABEL_3:

      return v16;
    }
  }

  else
  {
    v16 = 0;
    if (*(v0 + 80))
    {
      goto LABEL_3;
    }
  }

  v24[0] = v2;
  v17 = v13;
  v18 = *(v0 + 72);

  if (v18 <= 1)
  {
    if (v18 == 1)
    {
      return v16;
    }

LABEL_10:

    return 0;
  }

  if (v18 == 2)
  {

    sub_1007A2154();
    sub_100796C94();
    v19 = v17;
    (*(v9 + 16))(v12, v15, v17);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v22 = v24[0];
    (*(v24[0] + 16))(v5, v7, v1);
    v16 = sub_1007A22D4();
    (*(v22 + 8))(v7, v1);
    (*(v9 + 8))(v15, v19);
    return v16;
  }

  if (v18 != 3)
  {
    goto LABEL_10;
  }

  return v16;
}

uint64_t sub_100392ED8(void *a1)
{
  *(v1 + 104) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 128) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 136) = 0;
  *(v1 + 144) = 2;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 80) = 514;
  *(v1 + 88) = 0;
  *(v1 + 96) = 1;
  v3 = *(v1 + 104);
  *(v1 + 104) = a1;
  v4 = a1;

  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;

    [v6 setServiceDelegate:v1];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_100392FC4()
{
  v1 = v0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(v0 + 128);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = [Strong isAudiobook];
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0;
    }

    *(v1 + 81) = v6;
    v7 = *(v1 + 24);
    v8 = *(v1 + 80);
    v9 = (v3 + OBJC_IVAR____TtC5Books19BuyButtonInteractor_buyParameters);
    *v9 = *(v1 + 16);
    v9[1] = v7;
    swift_bridgeObjectRetain_n();

    *(v3 + OBJC_IVAR____TtC5Books19BuyButtonInteractor_canPreorder) = v8;
    sub_1005353C0();
    sub_100535160();

    v10 = *(v1 + 104);
    if (v10)
    {
      v11 = swift_allocObject();
      v11[2] = v1;
      v11[3] = v3;
      v11[4] = v4;
      v22[4] = sub_100393A5C;
      v22[5] = v11;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 1107296256;
      v22[2] = sub_100393608;
      v22[3] = &unk_100A189D8;
      v12 = _Block_copy(v22);
      v13 = v10;

      swift_unknownObjectRetain();

      [v13 get:v12];
      _Block_release(v12);
    }

    v14 = [objc_opt_self() processInfo];
    v15 = [v14 environment];

    v16 = sub_1007A2044();
    if (*(v16 + 16) && (sub_10000E53C(0xD00000000000001BLL, 0x80000001008CE990), (v17 & 1) != 0))
    {
      swift_unknownObjectRelease();
    }

    else
    {

      v18 = [objc_opt_self() reachabilityForInternetConnection];
      v19 = *(v1 + 136);
      *(v1 + 136) = v18;

      v20 = [objc_opt_self() defaultCenter];
      if (qword_100AD14B8 != -1)
      {
        swift_once();
      }

      [v20 addObserver:v1 selector:? name:? object:?];

      v21 = *(v1 + 136);
      [v21 startNotifier];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100393334(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!result)
  {
    return result;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    return result;
  }

  v6 = result;
  swift_unknownObjectRetain();
  v7 = [v6 buyParameters];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1007A2254();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  *(a3 + 16) = v9;
  *(a3 + 24) = v11;

  v12 = [v6 priceString];
  if (!v12 || (v13 = v12, v14 = sub_1007A2254(), v16 = v15, v13, *&v37[0] = v14, *(&v37[0] + 1) = v16, sub_1002060B4(), LOBYTE(v13) = sub_1007A28A4(), , (v13 & 1) == 0))
  {
    v17 = [v6 actionTextWithType:0];
    if (!v17)
    {
      goto LABEL_9;
    }

LABEL_11:
    v20 = v17;
    v18 = sub_1007A2254();
    v19 = v21;

    goto LABEL_12;
  }

  v17 = [v6 priceString];
  if (v17)
  {
    goto LABEL_11;
  }

LABEL_9:
  v18 = 0;
  v19 = 0;
LABEL_12:
  *(a3 + 32) = v18;
  *(a3 + 40) = v19;

  v22 = [v6 priceString];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1007A2254();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  *(a3 + 64) = v24;
  *(a3 + 72) = v26;

  v27 = [v6 actionTextWithType:0];
  if (v27)
  {
    v28 = v27;
    v29 = sub_1007A2254();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  *(a3 + 48) = v29;
  *(a3 + 56) = v31;

  *(a3 + 80) = [v6 isPreorder];
  *(a3 + 88) = [v6 offerType];
  *(a3 + 96) = 0;
  v33 = *(a3 + 48);
  v32 = *(a3 + 64);
  v34 = *(a3 + 32);
  v37[0] = *(a3 + 16);
  v37[1] = v34;
  v37[2] = v33;
  v35 = *(a3 + 80);
  v37[3] = v32;
  v38 = v35;
  v39 = *(a3 + 96);
  *(a4 + OBJC_IVAR____TtC5Books19BuyButtonInteractor_buyParameters) = v37[0];
  sub_1002242F8(v37, v36);

  *(a4 + OBJC_IVAR____TtC5Books19BuyButtonInteractor_canPreorder) = v38;
  sub_1005353C0();
  sub_100535160();
  sub_100224354(v37);
  return swift_unknownObjectRelease();
}

uint64_t sub_100393608(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

id sub_100393718()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ([Strong respondsToSelector:"storeReachable"])
    {
      v2 = [v1 storeReachable];
      goto LABEL_9;
    }

    swift_unknownObjectRelease();
  }

  if ([objc_opt_self() isOffline])
  {
    return 0;
  }

  v3 = [objc_opt_self() sharedProvider];
  v4 = [v3 isStoreAccountManagedAppleID];

  if (v4)
  {
    return 0;
  }

  v2 = [objc_msgSend(objc_opt_self() "sharedInstance")];
LABEL_9:
  v6 = v2;
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_100393810()
{

  sub_10002B130(v0 + 112);
  sub_10002B130(v0 + 120);

  return swift_deallocClassInstance();
}

__n128 sub_100393928(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10039394C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
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

uint64_t sub_1003939A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

NSString sub_100393A24()
{
  result = sub_1007A2214();
  qword_100B23178 = result;
  return result;
}

uint64_t sub_100393B10(double a1)
{
  v2 = OBJC_IVAR___BKNowPlayingIndicatorView_levelCornerRadius;
  *(v1 + OBJC_IVAR___BKNowPlayingIndicatorView_levelCornerRadius) = a1;
  v3 = OBJC_IVAR___BKNowPlayingIndicatorView_levelViews;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if (v5 >> 62)
  {
    result = sub_1007A38D4();
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return result;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {

    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_1007A3784();
      }

      else
      {
        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      v10 = [v8 layer];
      [v10 setCornerRadius:*(v1 + v2)];
    }

    while (v6 != v7);
  }

  return result;
}

id sub_100393F68(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR___BKNowPlayingIndicatorView_levelViews] = _swiftEmptyArrayStorage;
  v4[OBJC_IVAR___BKNowPlayingIndicatorView_needsLevelUpdate] = 0;
  *&v4[OBJC_IVAR___BKNowPlayingIndicatorView_interLevelSpacing] = 0x3FE0000000000000;
  *&v4[OBJC_IVAR___BKNowPlayingIndicatorView_levelCornerRadius] = 0x3FE0000000000000;
  *&v4[OBJC_IVAR___BKNowPlayingIndicatorView_levelWidth] = 0x4008000000000000;
  *&v4[OBJC_IVAR___BKNowPlayingIndicatorView_maximumLevelHeight] = 0x402A000000000000;
  *&v4[OBJC_IVAR___BKNowPlayingIndicatorView_minimumLevelHeight] = 0x4008000000000000;
  *&v4[OBJC_IVAR___BKNowPlayingIndicatorView_numberOfLevels] = 3;
  *&v4[OBJC_IVAR___BKNowPlayingIndicatorView_playbackState] = 0;
  v4[OBJC_IVAR___BKNowPlayingIndicatorView_showsLevelGutters] = 0;
  v9 = OBJC_IVAR___BKNowPlayingIndicatorView_levelGuttersColor;
  v10 = objc_opt_self();
  v11 = [v10 whiteColor];
  v12 = [v11 colorWithAlphaComponent:0.2];

  *&v4[v9] = v12;
  v13 = OBJC_IVAR___BKNowPlayingIndicatorView_levelColor;
  *&v4[v13] = [v10 whiteColor];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for NowPlayingIndicatorView();
  v14 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  sub_1003947FC();

  return v14;
}

Swift::Void __swiftcall NowPlayingIndicatorView.layoutSubviews()()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for NowPlayingIndicatorView();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  v1 = OBJC_IVAR___BKNowPlayingIndicatorView_levelViews;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2 >> 62)
  {
    v3 = sub_1007A38D4();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = OBJC_IVAR___BKNowPlayingIndicatorView_levelWidth;
    v5 = OBJC_IVAR___BKNowPlayingIndicatorView_interLevelSpacing;

    v6 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = sub_1007A3784();
      }

      else
      {
        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      [v7 frame];
      v11 = v10;
      v12 = *&v0[v4];
      v13 = (v12 + *&v0[v5]) * v6;
      [v0 bounds];
      MaxY = CGRectGetMaxY(v17);
      [v8 setFrame:{v13, MaxY, v12, v11}];
      v15 = [v8 layer];
      [v15 setFrame:{v13, MaxY, v12, v11}];

      v6 = v9;
    }

    while (v3 != v9);
  }
}

void NowPlayingIndicatorView.draw(_:)(double a1, double a2, double a3, double a4)
{
  v16.receiver = v4;
  v16.super_class = type metadata accessor for NowPlayingIndicatorView();
  objc_msgSendSuper2(&v16, "drawRect:", a1, a2, a3, a4);
  if (v4[OBJC_IVAR___BKNowPlayingIndicatorView_showsLevelGutters] == 1)
  {
    v9 = *&v4[OBJC_IVAR___BKNowPlayingIndicatorView_levelGuttersColor];
    if (v9)
    {
      v10 = *&v4[OBJC_IVAR___BKNowPlayingIndicatorView_levelGuttersColor];
    }

    else
    {
      v10 = [*&v4[OBJC_IVAR___BKNowPlayingIndicatorView_levelColor] colorWithAlphaComponent:0.2];
      v9 = 0;
    }

    v11 = v9;
    [v10 setFill];
    [v4 bounds];
    CGRectGetMaxY(v17);
    v12 = *&v4[OBJC_IVAR___BKNowPlayingIndicatorView_numberOfLevels];
    if (v12 < 0)
    {
      __break(1u);
      return;
    }

    v13 = 0;
    while (1)
    {
      UIRectFillUsingOperation();
      if (v12 == v13)
      {
        break;
      }

      if (__OFADD__(v13++, 1))
      {
        __break(1u);
        break;
      }
    }
  }

  v15 = OBJC_IVAR___BKNowPlayingIndicatorView_needsLevelUpdate;
  if (v4[OBJC_IVAR___BKNowPlayingIndicatorView_needsLevelUpdate] == 1)
  {
    sub_1003947FC();
    v4[v15] = 0;
  }
}

Swift::Void __swiftcall NowPlayingIndicatorView.tintColorDidChange()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for NowPlayingIndicatorView();
  objc_msgSendSuper2(&v1, "tintColorDidChange");
  if (*(v0 + OBJC_IVAR___BKNowPlayingIndicatorView_showsLevelGutters) == 1)
  {
    [v0 setNeedsDisplay];
  }

  sub_1003947FC();
}

id NowPlayingIndicatorView.isHidden.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NowPlayingIndicatorView();
  return objc_msgSendSuper2(&v2, "isHidden");
}

uint64_t NowPlayingIndicatorView.isHidden.setter(char a1)
{
  v3 = type metadata accessor for NowPlayingIndicatorView();
  v7.receiver = v1;
  v7.super_class = v3;
  v4 = objc_msgSendSuper2(&v7, "isHidden");
  v6.receiver = v1;
  v6.super_class = v3;
  objc_msgSendSuper2(&v6, "setHidden:", a1 & 1);
  result = [v1 isHidden];
  if ((result & 1) == 0)
  {
    if (v4)
    {
      return sub_100394C64();
    }
  }

  return result;
}

id sub_1003947FC()
{
  v3 = OBJC_IVAR___BKNowPlayingIndicatorView_numberOfLevels;
  v4 = *(v1 + OBJC_IVAR___BKNowPlayingIndicatorView_numberOfLevels);
  if (v4 < 0)
  {
    goto LABEL_43;
  }

  v0 = v1;
  v5 = &off_100ADF000;
  if (!v4)
  {
    v1 = 0;
LABEL_19:
    v2 = v5[190];
    swift_beginAccess();
    v15 = *(v2 + v0);
    if (v15 >> 62)
    {
      goto LABEL_44;
    }

    result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1 < result)
    {
      goto LABEL_21;
    }

LABEL_24:
    sub_100394C64();
    return [v0 setNeedsLayout];
  }

  v6 = OBJC_IVAR___BKNowPlayingIndicatorView_levelViews;
  v29 = OBJC_IVAR___BKNowPlayingIndicatorView_numberOfLevels;
  v30 = OBJC_IVAR___BKNowPlayingIndicatorView_levelCornerRadius;
  v7 = OBJC_IVAR___BKNowPlayingIndicatorView_levelColor;
  swift_beginAccess();
  v3 = 0;
  v2 = &selRef_iq_downloadProgressStatusesWithAssetID_item_;
  while (1)
  {
    v10 = *&v0[v6];
    if (v10 >> 62)
    {
      break;
    }

    if (v3 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

LABEL_13:
    v12 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    if (!v12)
    {
      goto LABEL_6;
    }

    v13 = v12;
    v14 = [v13 layer];
    [v14 setCornerRadius:*&v0[v30]];
    [v14 setAnchorPoint:{0.5, 1.0}];
    swift_beginAccess();
    v11 = v13;
    sub_1007A25C4();
    if (*((*&v0[v6] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v0[v6] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v28 = *((*&v0[v6] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1007A2614();
    }

    sub_1007A2644();
    swift_endAccess();
    [v0 addSubview:v11];

LABEL_5:
    v8 = [v11 layer];
    v9 = [*&v0[v7] CGColor];
    [v8 setBackgroundColor:v9];

LABEL_6:
    if (v4 == ++v3)
    {
      v3 = v29;
      v1 = *&v0[v29];
      v5 = &off_100ADF000;
      goto LABEL_19;
    }
  }

  if (v3 >= sub_1007A38D4())
  {
    goto LABEL_13;
  }

LABEL_9:
  v1 = *&v0[v6];
  if ((v1 & 0xC000000000000001) != 0)
  {

    v11 = sub_1007A3784();

    goto LABEL_5;
  }

  if (v3 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v1 + 8 * v3 + 32);
    goto LABEL_5;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_1007A38D4();
  if (v1 >= result)
  {
    goto LABEL_24;
  }

LABEL_21:
  v3 = *&v0[v3];
  v17 = *(v2 + v0);
  if (v17 >> 62)
  {
    result = sub_1007A38D4();
    v1 = result;
    if (result < v3)
    {
      goto LABEL_47;
    }

LABEL_23:
    if (v3 == v1)
    {
      goto LABEL_24;
    }

    if (v3 < v1)
    {
      v18 = ~v3;
      while (1)
      {
        v19 = *(v2 + v0);
        if ((v19 & 0xC000000000000001) != 0)
        {

          v20 = sub_1007A3784();
        }

        else
        {
          if (v3 < 0)
          {
            goto LABEL_40;
          }

          if (v3 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v20 = *(v19 + 8 * v3 + 32);
        }

        [v20 removeFromSuperview];
        swift_beginAccess();
        v21 = *(v2 + v0);
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *(v2 + v0) = v21;
        if (!isUniquelyReferenced_nonNull_bridgeObject || v21 < 0 || (v21 & 0x4000000000000000) != 0)
        {
          v21 = sub_1002F9CE0(v21);
          *(v2 + v0) = v21;
        }

        v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v3 >= v23)
        {
          goto LABEL_41;
        }

        v24 = v3 + 1;
        v25 = v23 - 1;
        v26 = (v21 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 32;
        v27 = *((v21 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20);
        memmove(v26, (v26 + 8), 8 * (v18 + v23));
        *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) = v25;
        *(v2 + v0) = v21;
        swift_endAccess();

        --v18;
        v3 = v24;
        if (v1 == v24)
        {
          goto LABEL_24;
        }
      }
    }
  }

  else
  {
    v1 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1 >= v3)
    {
      goto LABEL_23;
    }

LABEL_47:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100394C64()
{
  v1 = OBJC_IVAR___BKNowPlayingIndicatorView_levelViews;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3 >> 62)
  {
LABEL_23:
    result = sub_1007A38D4();
    v4 = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = OBJC_IVAR___BKNowPlayingIndicatorView_playbackState;
      v38 = OBJC_IVAR___BKNowPlayingIndicatorView_maximumLevelHeight;
      v43 = v3 & 0xC000000000000001;
      v40 = v3 & 0xFFFFFFFFFFFFFF8;
      v41 = OBJC_IVAR___BKNowPlayingIndicatorView_minimumLevelHeight;

      v6 = 0;
      v37 = xmmword_100812CF0;
      v42 = v4;
      v39 = v3;
      while (1)
      {
        if (v43)
        {
          v22 = sub_1007A3784();
        }

        else
        {
          if (v6 >= *(v40 + 16))
          {
            goto LABEL_22;
          }

          v22 = *(v3 + 8 * v6 + 32);
        }

        v23 = v22;
        v24 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        v25 = [v22 layer];
        v26 = [v25 presentationLayer];
        if (v26)
        {
          v27 = *(v0 + v5);
          if (!v27)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v26 = v25;
          v27 = *(v0 + v5);
          if (!v27)
          {
LABEL_17:
            v33 = sub_1007A2214();
            v34 = [objc_opt_self() animationWithKeyPath:v33];

            v20 = v34;
            [(objc_class *)v20 setDuration:0.45];
            v35 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
            [(objc_class *)v20 setTimingFunction:v35];

            [(objc_class *)v20 setRemovedOnCompletion:0];
            [(objc_class *)v20 setFillMode:kCAFillModeBoth];

            [v26 bounds];
            isa = sub_100797BE4().super.super.isa;
            [(objc_class *)v20 setFromValue:isa];

            v32.super.super.isa = sub_1007A2884().super.super.isa;
LABEL_18:
            v11 = v32.super.super.isa;
            [(objc_class *)v20 setToValue:v32.super.super.isa, v37];
            goto LABEL_5;
          }
        }

        if (v27 != 1)
        {
          if (v27 != 2)
          {
            result = sub_1007A3AF4();
            __break(1u);
            return result;
          }

          v28 = sub_1007A2214();
          v29 = [objc_opt_self() animationWithKeyPath:v28];

          v20 = v29;
          [(objc_class *)v20 setDuration:0.45];
          v30 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
          [(objc_class *)v20 setTimingFunction:v30];

          [(objc_class *)v20 setRemovedOnCompletion:0];
          [(objc_class *)v20 setFillMode:kCAFillModeBoth];

          [v26 bounds];
          v31 = sub_100797BE4().super.super.isa;
          [(objc_class *)v20 setFromValue:v31];

          v32.super.super.isa = sub_100797BE4().super.super.isa;
          goto LABEL_18;
        }

        v7 = sub_1007A2214();
        v8 = [objc_opt_self() animationWithKeyPath:v7];

        v9 = v5;
        v10 = objc_opt_self();
        v11 = v8;
        v12 = [v10 functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
        [(objc_class *)v11 setTimingFunction:v12];

        [(objc_class *)v11 setRemovedOnCompletion:0];
        [(objc_class *)v11 setFillMode:kCAFillModeBoth];
        v13 = arc4random();
        v14 = *(v0 + v38);
        v15 = v14 * 0.5 + v14 * 0.5 * ((v13 % 0xB) / 10.0);
        [(objc_class *)v11 setDuration:v14 / v15 * 0.65];
        sub_1001F1160(&qword_100AD7FB0);
        v16 = swift_allocObject();
        *(v16 + 16) = v37;
        v17 = *(v0 + v41);
        *(v16 + 56) = &type metadata for CGFloat;
        *(v16 + 32) = v17;
        *(v16 + 88) = &type metadata for CGFloat;
        *(v16 + 64) = v15;
        *(v16 + 120) = &type metadata for CGFloat;
        *(v16 + 96) = v17;
        v18 = sub_1007A25D4().super.isa;
        v5 = v9;
        v3 = v39;

        [(objc_class *)v11 setValues:v18];

        LODWORD(v19) = 2139095040;
        [(objc_class *)v11 setRepeatCount:v19];
        v20 = v11;
LABEL_5:

        v21 = sub_1007A2214();
        [v25 addAnimation:v20 forKey:v21];

        ++v6;
        if (v24 == v42)
        {
        }
      }
    }
  }

  return result;
}

id NowPlayingIndicatorView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NowPlayingIndicatorView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100395380()
{
  *(v0 + OBJC_IVAR___BKNowPlayingIndicatorView_levelViews) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR___BKNowPlayingIndicatorView_needsLevelUpdate) = 0;
  *(v0 + OBJC_IVAR___BKNowPlayingIndicatorView_interLevelSpacing) = 0x3FE0000000000000;
  *(v0 + OBJC_IVAR___BKNowPlayingIndicatorView_levelCornerRadius) = 0x3FE0000000000000;
  *(v0 + OBJC_IVAR___BKNowPlayingIndicatorView_levelWidth) = 0x4008000000000000;
  *(v0 + OBJC_IVAR___BKNowPlayingIndicatorView_maximumLevelHeight) = 0x402A000000000000;
  *(v0 + OBJC_IVAR___BKNowPlayingIndicatorView_minimumLevelHeight) = 0x4008000000000000;
  *(v0 + OBJC_IVAR___BKNowPlayingIndicatorView_numberOfLevels) = 3;
  *(v0 + OBJC_IVAR___BKNowPlayingIndicatorView_playbackState) = 0;
  *(v0 + OBJC_IVAR___BKNowPlayingIndicatorView_showsLevelGutters) = 0;
  v1 = OBJC_IVAR___BKNowPlayingIndicatorView_levelGuttersColor;
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  v4 = [v3 colorWithAlphaComponent:0.2];

  *(v0 + v1) = v4;
  v5 = OBJC_IVAR___BKNowPlayingIndicatorView_levelColor;
  *(v0 + v5) = [v2 whiteColor];
  sub_1007A38A4();
  __break(1u);
}

void _s5Books23NowPlayingIndicatorViewC12sizeThatFitsySo6CGSizeVAFF_0()
{
  v1 = *(v0 + OBJC_IVAR___BKNowPlayingIndicatorView_numberOfLevels);
  if (v1)
  {
    if (__OFSUB__(v1, 1))
    {
      __break(1u);
    }
  }
}

unint64_t sub_100395558()
{
  result = qword_100ADF630;
  if (!qword_100ADF630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF630);
  }

  return result;
}

uint64_t sub_1003955BC()
{
  sub_1001F1160(&unk_100AD8160);
  v1 = swift_allocObject();
  v2 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadButton);
  v3 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_grabberView);
  v4 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_overflowButton);
  v5 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playbackSpeed);
  v6 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__playPause);
  *(v1 + 16) = xmmword_10081F7C0;
  v7 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_progressSlider);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v8 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipBackwardButton);
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  v9 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipForwardButton);
  *(v1 + 64) = v6;
  *(v1 + 72) = v7;
  v10 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_sleepButton);
  *(v1 + 80) = v8;
  *(v1 + 88) = v9;
  v11 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_tocButton);
  *(v1 + 96) = v10;
  *(v1 + 104) = v11;
  v37 = v11;
  v38 = v1;
  v12 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__routeView);
  if (v12)
  {
    v13 = v12;
    v14 = v2;
    v15 = v3;
    v16 = v4;
    v17 = v5;
    v18 = v6;
    v19 = v7;
    v20 = v8;
    v21 = v9;
    v22 = v10;
    v23 = v37;
    v24 = v13;
    sub_1007A25C4();
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1007A2614();
    }

    sub_1007A2644();

    return v38;
  }

  else
  {
    v26 = v1;
    v27 = v2;
    v28 = v3;
    v29 = v4;
    v30 = v5;
    v31 = v6;
    v32 = v7;
    v33 = v8;
    v34 = v9;
    v35 = v10;
    v36 = v37;
    return v26;
  }
}

void sub_100395798()
{
  v0 = [objc_opt_self() bc_nowPlayingVibrantQuaternary];
  [v0 set];

  v1 = [objc_opt_self() bezierPathWithOvalInRect:{0.0, 0.0, 28.0, 28.0}];
  [v1 fill];
}

void sub_100395844()
{
  v1 = [v0 titleLabel];
  if (v1)
  {
    v2 = v1;
    CGRectMakeWithSize();
    [v0 setBounds:?];
    [v0 layoutIfNeeded];
    v3 = [v0 titleLabel];
    if (v3 && (v4 = v3, [v3 _baselineOffsetFromBottom], v6 = v5, v4, v6 != 0.0))
    {
      [v2 bounds];
      [v0 convertPoint:v2 fromCoordinateSpace:{0.0, CGRectGetHeight(v18) - v6}];
    }

    else
    {
      CGRectMakeWithSize();
      [v0 contentRectForBounds:?];
      [v0 titleRectForContentRect:?];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v15 = [v2 font];
      if (v15)
      {
        v16 = v15;
        [v15 ascender];

        v17.origin.x = v8;
        v17.origin.y = v10;
        v17.size.width = v12;
        v17.size.height = v14;
        CGRectGetMinY(v17);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

id sub_100395A10(uint64_t a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  v7 = [v3 subviews];
  sub_10000A7C4(0, &qword_100AD7620);
  v8 = sub_1007A25E4();

  v24 = v3;
  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_18:

    v12 = 0;
    v14 = v24;
    v20 = a1;
    goto LABEL_19;
  }

LABEL_17:
  v9 = sub_1007A38D4();
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_3:
  v10 = 0;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = sub_1007A3784();
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    sub_10000A7C4(0, &qword_100ADF7D8);
    if ([v12 isKindOfClass:swift_getObjCClassFromMetadata()])
    {
      break;
    }

    ++v10;
    if (v13 == v9)
    {
      goto LABEL_18;
    }
  }

  v14 = v24;
  [v12 convertPoint:v24 fromCoordinateSpace:{a2, a3}];
  v16 = v15;
  v18 = v17;
  if ([v12 pointInside:? withEvent:?])
  {
    v19 = [v12 hitTest:a1 withEvent:{v16, v18}];
    goto LABEL_20;
  }

  v20 = a1;
LABEL_19:
  v25.receiver = v14;
  v25.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v25, "hitTest:withEvent:", v20, a2, a3);
LABEL_20:
  v21 = v19;

  return v21;
}

id sub_100395CC8(void *a1, double a2, double a3, double a4, double a5)
{
  v10.receiver = a1;
  v10.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a2, a3, a4, a5);
}

id sub_100395D38(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", v4);

  if (v5)
  {
  }

  return v5;
}

id sub_100395DD8()
{
  v1 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView____lazy_storage___backgroundImageView;
  v2 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView____lazy_storage___backgroundImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView____lazy_storage___backgroundImageView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = [v4 layer];
    [v5 addSublayer:*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_backgroundGradientLayer)];

    v6 = [v4 layer];
    [v6 addSublayer:*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lowerHalfGradientLayer)];

    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_100395EDC()
{
  v0 = [objc_opt_self() blackColor];
  v1 = [v0 CGColor];

  qword_100ADF680 = v1;
}

id sub_100395F40(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  *&v5[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v62 = type metadata accessor for AudiobookNowPlayingFullscreenTouchView();
  v64 = v62;
  sub_1001F1160(&qword_100ADF7D0);
  sub_1007A22E4();
  sub_10079ACD4();
  *&v5[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playImage] = 0;
  *&v5[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_pauseImage] = 0;
  *&v5[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_scrubberImpactBehavior] = 0;
  v5[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadState] = 3;
  *&v5[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView____lazy_storage___backgroundImageView] = 0;
  v11 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageView;
  *&v6[v11] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageShadowView;
  *&v6[v12] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v13 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_bottomToolbarContainer;
  *&v6[v13] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_dismissButton;
  v15 = objc_opt_self();
  *&v6[v14] = [v15 buttonWithType:0];
  v16 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadIndicator;
  *&v6[v16] = [objc_allocWithZone(IMRadialProgressButton) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v17 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadSpinner;
  *&v6[v17] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v18 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadButton;
  *&v6[v18] = [v15 buttonWithType:0];
  v19 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_grabberView;
  *&v6[v19] = [objc_allocWithZone(_UIGrabber) init];
  v20 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_hudTrack;
  *&v6[v20] = [objc_allocWithZone(BKHUDTrack) init];
  v21 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_loadingSpinner;
  *&v6[v21] = [objc_allocWithZone(UIActivityIndicatorView) init];
  v22 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_overflowButton;
  *&v6[v22] = [objc_opt_self() buttonWithType:0];
  v23 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_played;
  *&v6[v23] = [objc_allocWithZone(UILabel) init];
  v24 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_progressSlider;
  *&v6[v24] = [objc_allocWithZone(BKScrubberSlider) init];
  v25 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playbackSpeed;
  *&v6[v25] = [v15 buttonWithType:0];
  v26 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleLabel;
  *&v6[v26] = [objc_allocWithZone(UILabel) init];
  v27 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleMarqueeView;
  *&v6[v27] = [objc_allocWithZone(MPUMarqueeView) init];
  v28 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleLabel;
  *&v6[v28] = [objc_allocWithZone(UILabel) init];
  v29 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleMarqueeView;
  *&v6[v29] = [objc_allocWithZone(MPUMarqueeView) init];
  v30 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_sleepButton;
  type metadata accessor for SleepButton();
  *&v6[v30] = [swift_getObjCClassFromMetadata() buttonWithType:0];
  v31 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlay;
  *&v6[v31] = [objc_allocWithZone(UILabel) init];
  v32 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_titlesContainer;
  *&v6[v32] = [objc_allocWithZone(type metadata accessor for ConstraintsDisabledView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v33 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_tocButton;
  *&v6[v33] = [objc_allocWithZone(type metadata accessor for AudiobookNowPlayingTOCButton()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v34 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_transportContainer;
  *&v6[v34] = [objc_allocWithZone(type metadata accessor for TransportContainer()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v35 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_backgroundGradientLayer;
  *&v6[v35] = [objc_allocWithZone(CAGradientLayer) init];
  v36 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lowerHalfGradientLayer;
  *&v6[v36] = [objc_allocWithZone(CAGradientLayer) init];
  v37 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__playPause;
  type metadata accessor for NowPlayingTransportButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v6[v37] = [ObjCClassFromMetadata buttonWithType:0];
  v39 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipForwardButton;
  *&v6[v39] = [ObjCClassFromMetadata buttonWithType:0];
  v40 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipBackwardButton;
  *&v6[v40] = [ObjCClassFromMetadata buttonWithType:0];
  v41 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__toPlayInAudiobook;
  *&v6[v41] = [objc_allocWithZone(UILabel) init];
  v42 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__mainViewContainer;
  *&v6[v42] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v43 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__transportSubcontainer;
  *&v6[v43] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v44 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeContainer;
  *&v6[v44] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v45 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeMaxImageView;
  *&v6[v45] = [objc_allocWithZone(UIImageView) init];
  v46 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeMinImageView;
  *&v6[v46] = [objc_allocWithZone(UIImageView) init];
  *&v6[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_buyButton] = 0;
  v47 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__routeView;
  *&v6[v47] = [objc_allocWithZone(AVRoutePickerView) init];
  v48 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeView;
  *&v6[v48] = [objc_allocWithZone(MPVolumeView) init];
  v49 = &v6[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm];
  *(v49 + 22) = 0u;
  *(v49 + 23) = 0u;
  *(v49 + 20) = 0u;
  *(v49 + 21) = 0u;
  *(v49 + 18) = 0u;
  *(v49 + 19) = 0u;
  *(v49 + 16) = 0u;
  *(v49 + 17) = 0u;
  *(v49 + 14) = 0u;
  *(v49 + 15) = 0u;
  *(v49 + 12) = 0u;
  *(v49 + 13) = 0u;
  *(v49 + 10) = 0u;
  *(v49 + 11) = 0u;
  *(v49 + 8) = 0u;
  *(v49 + 9) = 0u;
  *(v49 + 6) = 0u;
  *(v49 + 7) = 0u;
  *(v49 + 4) = 0u;
  *(v49 + 5) = 0u;
  *(v49 + 2) = 0u;
  *(v49 + 3) = 0u;
  *v49 = 0u;
  *(v49 + 1) = 0u;
  *(v49 + 383) = 0u;
  v50 = &v6[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlayInAudiobookTextLong];
  *v50 = 0;
  *(v50 + 1) = 0;
  v51 = &v6[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlayInAudiobookTextShort];
  *v51 = 0;
  *(v51 + 1) = 0;
  *&v6[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_viewModel] = a1;
  v52 = *&v6[v40];
  v53 = type metadata accessor for NowPlayingVibrancyEffectView();
  objc_allocWithZone(v53);
  v54 = a1;
  *&v6[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipBackwardVibrancyEffectContainerView] = sub_10060211C(v52, 0);
  v55 = *&v6[v37];
  v56 = objc_allocWithZone(v53);
  *&v6[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__playPauseVibrancyEffectContainerView] = sub_10060211C(v55, 0);
  v57 = *&v6[v39];
  v58 = objc_allocWithZone(v53);
  *&v6[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipForwardVibrancyEffectContainerView] = sub_10060211C(v57, 0);
  v63.receiver = v6;
  v63.super_class = v62;
  v59 = objc_msgSendSuper2(&v63, "initWithFrame:", a2, a3, a4, a5);
  sub_100396714();
  [v59 setOverrideUserInterfaceStyle:2];

  return v59;
}

uint64_t sub_100396714()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 secondaryLabelColor];
  [v1 setTintColor:v3];

  v4 = *&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__mainViewContainer];
  [v1 addSubview:v4];
  v5 = sub_100395DD8();
  [v4 addSubview:v5];

  v6 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView____lazy_storage___backgroundImageView;
  v7 = *&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView____lazy_storage___backgroundImageView];
  v8 = [v2 bc_booksBackground];
  [v7 setBackgroundColor:v8];

  [*&v1[v6] setOpaque:1];
  v9 = *&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lowerHalfGradientLayer];
  sub_1001F1160(&qword_100AD7FB0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10080EFF0;
  v11 = [v2 blackColor];
  v12 = [v11 colorWithAlphaComponent:0.0];

  v13 = [v12 CGColor];
  type metadata accessor for CGColor(0);
  v15 = v14;
  *(v10 + 56) = v14;
  *(v10 + 32) = v13;
  v16 = [v2 blackColor];
  v17 = [v16 colorWithAlphaComponent:0.3];

  v18 = [v17 CGColor];
  *(v10 + 88) = v15;
  *(v10 + 64) = v18;
  isa = sub_1007A25D4().super.isa;

  [v9 setColors:isa];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v20 = v33;
  if (v33)
  {

    v33(&v33, v21);
    v22 = v33;
    sub_100399320(v33);

    sub_100007020(v20);
    sub_100007020(v20);
  }

  else
  {
    sub_100399320(0);
  }

  v23 = *&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageView];
  [v23 _setContinuousCornerRadius:10.0];
  [v23 setClipsToBounds:1];
  v24 = *&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageShadowView];
  v25 = [v24 layer];
  if (qword_100AD14C0 != -1)
  {
    swift_once();
  }

  [v25 setShadowColor:qword_100ADF680];

  v26 = [v24 layer];
  LODWORD(v27) = 1050253722;
  [v26 setShadowOpacity:v27];

  v28 = [v24 layer];
  v29 = v28;
  v30 = 32.0;
  if (!v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm + 396])
  {
    v30 = 24.0;
  }

  [v28 setShadowRadius:v30];

  v31 = [v24 layer];
  [v31 setShadowOffset:{0.0, 16.0}];

  sub_100399BB8();
  sub_100399F44();
  [v4 addSubview:v24];
  [v4 addSubview:v23];
  sub_10039AB18();
  sub_10039ADE0();
  sub_10039BC44();
  sub_10000A7C4(0, &qword_100AE15B0);
  sub_1007A2E04();
  sub_1007A3104();
  swift_unknownObjectRelease();
}

id sub_100396C30()
{
  v1 = type metadata accessor for AudiobookNowPlayingFullscreenTouchView();
  v5[3] = v1;
  v5[0] = v0;
  v2 = v0;
  sub_1007A2B34();
  sub_1000074E0(v5);
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for AudiobookNowPlayingFullscreenTouchView()
{
  result = qword_100ADF7C0;
  if (!qword_100ADF7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100397148(void *a1)
{
  v2 = v1;
  sub_10039728C();
  sub_1003974A8();
  sub_10039779C();
  if (a1)
  {
    v4 = [a1 accessibilityContrast];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 traitCollection];
  v6 = [v5 accessibilityContrast];

  if (!a1 || v4 != v6)
  {
    sub_100397D70();
    sub_100397EB4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    v8 = v11;
    if (v11)
    {
      v11(&v11, v7);
      sub_100007020(v8);
      v9 = v11;
      if (v11)
      {
        v10 = v11;
        sub_100399320(v9);
      }
    }
  }
}

void sub_10039728C()
{
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v1 _scaledValueForValue:100.0];
  v3 = v2;

  v4 = fmin(v3, 110.0) / 100.0 * 46.0;
  sub_10039F224();
  if (v3 < 100.0)
  {
    v5 = 46.0;
  }

  else
  {
    v5 = v4;
  }

  v6 = [objc_opt_self() configurationWithPointSize:7 weight:2 scale:v5];
  v7 = objc_opt_self();
  v8 = sub_1007A2214();
  v9 = [v7 __systemImageNamedSwift:v8];

  if (v9)
  {
    v10 = [v9 imageWithConfiguration:v6];
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playImage);
  *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playImage) = v10;

  v12 = sub_1007A2214();
  v13 = [v7 __systemImageNamedSwift:v12];

  if (v13)
  {
    v14 = [v13 imageWithConfiguration:v6];
  }

  else
  {

    v14 = 0;
  }

  v15 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_pauseImage);
  *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_pauseImage) = v14;
}

void sub_1003974A8()
{
  v1 = objc_opt_self();
  v2 = [v1 bc_nowPlayingVibrantSecondary];
  v15 = [v1 bc_nowPlayingVibrantTertiary];
  v3 = sub_10039F8C0(0, v2, 4.0, 3.0);
  if (v3)
  {
    v4 = v3;
    v5 = sub_10039F8C0(1, v15, 4.0, 3.0);
    if (v5)
    {
      v6 = v5;
      v7 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_progressSlider];
      [v7 setMinimumTrackImage:v4 forState:0];
      [v7 setMaximumTrackImage:v6 forState:0];
      [v7 setMinimumValueImage:0];
      [v7 setMaximumValueImage:0];
      [v7 setFineScrubbing:1];
      v8 = 0;
      if (_UISolariumEnabled() & 1) == 0 && (v14 = [v0 traitCollection], v9 = swift_allocObject(), *(v9 + 16) = v0, v10 = swift_allocObject(), v8 = sub_10039FAE4, *(v10 + 16) = sub_10039FAE4, *(v10 + 24) = v9, aBlock[4] = sub_10025D79C, aBlock[5] = v10, aBlock[0] = _NSConcreteStackBlock, aBlock[1] = 1107296256, aBlock[2] = sub_100685954, aBlock[3] = &unk_100A18B90, v11 = _Block_copy(aBlock), v12 = v0, , , objc_msgSend(v14, "performAsCurrentTraitCollection:", v11), v14, _Block_release(v11), isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation(), , (isEscapingClosureAtFileLocation))
      {
        __break(1u);
      }

      else
      {
        [v7 setSemanticContentAttribute:{1, v14}];

        sub_100007020(v8);
      }

      return;
    }
  }
}

uint64_t sub_10039779C()
{
  v1 = v0;
  sub_1001F1160(&unk_100AD8160);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10081F7D0;
  v3 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_grabberView);
  v4 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleMarqueeView);
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  v5 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleMarqueeView);
  v6 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadButton);
  *(v2 + 48) = v5;
  *(v2 + 56) = v6;
  v7 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadIndicator);
  v8 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_progressSlider);
  *(v2 + 64) = v7;
  *(v2 + 72) = v8;
  v9 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_played);
  v10 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__toPlayInAudiobook);
  *(v2 + 80) = v9;
  *(v2 + 88) = v10;
  v68 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlay);
  v69 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeMinImageView);
  *(v2 + 96) = v68;
  *(v2 + 104) = v69;
  v70 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeMaxImageView);
  v71 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playbackSpeed);
  *(v2 + 112) = v70;
  *(v2 + 120) = v71;
  v72 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_sleepButton);
  v73 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_tocButton);
  *(v2 + 128) = v72;
  *(v2 + 136) = v73;
  v74 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_overflowButton);
  *(v2 + 144) = v74;
  v76 = v2;
  v11 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__routeView);
  if (v11)
  {
    v12 = v11;
    v13 = v3;
    v14 = v4;
    v15 = v5;
    v16 = v6;
    v17 = v7;
    v18 = v8;
    v19 = v9;
    v20 = v10;
    v21 = v68;
    v22 = v69;
    v23 = v70;
    v24 = v71;
    v25 = v72;
    v26 = v73;
    v27 = v74;
    v28 = v12;
    sub_1007A25C4();
    if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1007A2614();
    }

    sub_1007A2644();

    v29 = v76;
  }

  else
  {
    v29 = v2;
    v30 = v3;
    v31 = v4;
    v32 = v5;
    v33 = v6;
    v34 = v7;
    v35 = v8;
    v36 = v9;
    v37 = v10;
    v38 = v68;
    v39 = v69;
    v40 = v70;
    v41 = v71;
    v42 = v72;
    v43 = v73;
    v44 = v74;
  }

  v45 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeView);
  if (v45)
  {
    v46 = v45;
    sub_1007A25C4();
    if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1007A2614();
    }

    sub_1007A2644();

    v29 = v76;
  }

  v75 = v29;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100811370;
  v48 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipBackwardButton);
  *(inited + 32) = v48;
  v49 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__playPause);
  *(inited + 40) = v49;
  v50 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipForwardButton);
  *(inited + 48) = v50;
  v51 = v48;
  v52 = v49;
  v53 = v50;
  v54 = 0;
  while (1)
  {
    if (v54 == 3)
    {
      swift_setDeallocating();
      swift_arrayDestroy();
      if (_swiftEmptyArrayStorage >> 62)
      {
        goto LABEL_37;
      }

      sub_1007A3AD4();
      sub_10000A7C4(0, &qword_100AD7620);
      v59 = _swiftEmptyArrayStorage;
      goto LABEL_23;
    }

    if ((inited & 0xC000000000000001) != 0)
    {
      v55 = sub_1007A3784();
    }

    else
    {
      if (v54 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v55 = *(inited + 8 * v54 + 32);
    }

    v56 = v55;
    v57 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      break;
    }

    v58 = [v55 imageView];

    ++v54;
    if (v58)
    {
      sub_1007A25C4();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1007A2614();
      }

      sub_1007A2644();
      v54 = v57;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    sub_10000A7C4(0, &qword_100AD7620);

    v59 = sub_1007A38C4();

LABEL_23:

    sub_1004840B8(v59);
    if (v75 >> 62)
    {
      break;
    }

    v60 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v60)
    {
      goto LABEL_39;
    }

LABEL_25:
    v61 = 0;
    v62 = kCAFilterPlusL;
    while (1)
    {
      if ((v75 & 0xC000000000000001) != 0)
      {
        v63 = sub_1007A3784();
      }

      else
      {
        if (v61 >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v63 = *(v75 + 8 * v61 + 32);
      }

      v64 = v63;
      v65 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        break;
      }

      v66 = [v63 layer];
      [v66 setCompositingFilter:v62];

      ++v61;
      if (v65 == v60)
      {
        goto LABEL_39;
      }
    }
  }

  v60 = sub_1007A38D4();
  if (v60)
  {
    goto LABEL_25;
  }

LABEL_39:
}

void sub_100397D70()
{
  v1 = [objc_opt_self() currentTraitCollection];
  v2 = [v1 accessibilityContrast];

  v3 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleLabel);
  v4 = objc_opt_self();
  v5 = [v4 bc_nowPlayingVibrantPrimary];
  v6 = v5;
  if (v2 == 1)
  {
    v7 = [v5 colorWithAlphaComponent:1.0];

    v8 = &selRef_bc_nowPlayingVibrantPrimary;
    v6 = v7;
  }

  else
  {
    v8 = &selRef_bc_nowPlayingVibrantSecondary;
  }

  [v3 setTextColor:v6];

  v9 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleLabel);
  v10 = [v4 *v8];
  [v9 setTextColor:v10];
}

void sub_100397EB4()
{
  v1 = [objc_opt_self() currentTraitCollection];
  v2 = [v1 accessibilityContrast];

  v3 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_played);
  v4 = objc_opt_self();
  v5 = [v4 bc_nowPlayingVibrantTertiary];
  v6 = v5;
  if (v2 == 1)
  {
    v7 = [v5 colorWithAlphaComponent:1.0];

    [v3 setTextColor:v7];
    v8 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlay);
    v9 = [v4 bc_nowPlayingVibrantTertiary];
    v10 = [v9 colorWithAlphaComponent:1.0];

    [v8 setTextColor:v10];
    v11 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__toPlayInAudiobook);
    v12 = [v4 bc_nowPlayingVibrantTertiary];
    v15 = [v12 colorWithAlphaComponent:1.0];
  }

  else
  {
    [v3 setTextColor:v5];

    v13 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlay);
    v14 = [v4 bc_nowPlayingVibrantTertiary];
    [v13 setTextColor:v14];

    v11 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__toPlayInAudiobook);
    v15 = [v4 bc_nowPlayingVibrantTertiary];
  }

  [v11 setTextColor:v15];
}

void sub_1003980E0()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 6) = 0u;
  *(v2 + 7) = 0u;
  *(v2 + 8) = 0u;
  *(v2 + 9) = 0u;
  *(v2 + 10) = 0u;
  *(v2 + 11) = 0u;
  *(v2 + 12) = 0u;
  *(v2 + 13) = 0u;
  *(v2 + 14) = 0u;
  *(v2 + 15) = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 17) = 0u;
  *(v2 + 18) = 0u;
  *(v2 + 19) = 0u;
  *(v2 + 20) = 0u;
  *(v2 + 21) = 0u;
  *(v2 + 22) = 0u;
  *(v2 + 23) = 0u;
  *(v2 + 383) = 0u;
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  *v2 = v4;
  [v1 bounds];
  *(v2 + 2) = v5;
  *(v2 + 3) = v6;
  [v1 safeAreaInsets];
  v2[392] = v7 <= 30.0;
  v2[394] = isMegaPad();
  v8 = *(v2 + 2);
  if (v8 <= *(v2 + 3))
  {
    v8 = *(v2 + 3);
  }

  v2[396] = v8 < 570.0;
  v2[395] = v8 < 670.0;
  v9 = *&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__routeView];
  if (v9)
  {
    v10 = [v9 isHidden] ^ 1;
  }

  else
  {
    v10 = 0;
  }

  v2[397] = v10;
  sub_10039CE34();
  v11 = *&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_buyButton];
  if (v11)
  {
    [v11 sizeThatFits:{*(v2 + 2), *(v2 + 3)}];
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  *(v2 + 4) = v12;
  *(v2 + 5) = v13;
  [*&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_grabberView] sizeThatFits:{*(v2 + 2), *(v2 + 3)}];
  *(v2 + 6) = v14;
  *(v2 + 7) = v15;
  v16 = [objc_opt_self() mainScreen];
  [v16 scale];
  v18 = v17;

  v19 = [objc_opt_self() stringWithDuration:0 explicitPositive:-28800.0];
  if (!v19)
  {
    sub_10000A7C4(0, &unk_100AEB920);
    v19 = sub_1007A31C4();
  }

  v109 = *&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_played];
  v20 = [v109 attributedText];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 attributesAtIndex:0 effectiveRange:0];

    type metadata accessor for Key(0);
    sub_100282B6C();
    sub_1007A2044();
  }

  else
  {
    sub_1001ED420(_swiftEmptyArrayStorage);
  }

  type metadata accessor for Key(0);
  v24 = v23;
  v107 = sub_100282B6C();
  v108 = v24;
  isa = sub_1007A2024().super.isa;
  [v19 sizeWithAttributes:isa];

  CGSizeCeilForScale();
  *(v2 + 8) = v26;
  *(v2 + 9) = v27;
  v28 = *&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleLabel];
  [v28 sizeThatFits:{*(v2 + 2), *(v2 + 3)}];
  *(v2 + 10) = v29;
  *(v2 + 11) = v30;
  v31 = *&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleLabel];
  [v31 sizeThatFits:{*(v2 + 2), *(v2 + 3)}];
  *(v2 + 12) = v32;
  *(v2 + 13) = v33;
  *(v2 + 7) = *(v2 + 4);
  [*&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__toPlayInAudiobook] sizeThatFits:{*(v2 + 2), *(v2 + 3)}];
  *(v2 + 16) = v34;
  *(v2 + 17) = v35;
  [*&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_progressSlider] sizeThatFits:{*(v2 + 2), *(v2 + 3)}];
  *(v2 + 18) = v36;
  *(v2 + 19) = v37;
  [*&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipBackwardButton] sizeThatFits:{*(v2 + 2), *(v2 + 3)}];
  *(v2 + 20) = v38;
  *(v2 + 21) = v39;
  [*&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__playPause] sizeThatFits:{*(v2 + 2), *(v2 + 3)}];
  *(v2 + 22) = v40;
  *(v2 + 23) = v41;
  [*&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipForwardButton] sizeThatFits:{*(v2 + 2), *(v2 + 3)}];
  *(v2 + 24) = v42;
  *(v2 + 25) = v43;
  [*&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_sleepButton] sizeThatFits:{*(v2 + 2), *(v2 + 3)}];
  *(v2 + 28) = v44;
  *(v2 + 29) = v45;
  v46 = *&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playbackSpeed];
  [v46 sizeThatFits:{*(v2 + 2), *(v2 + 3)}];
  *(v2 + 26) = v47;
  *(v2 + 27) = v48;
  v49 = *&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeView];
  if (v49)
  {
    [v49 sizeThatFits:{*(v2 + 2), *(v2 + 3)}];
  }

  else
  {
    v50 = 0;
    v51 = 0;
  }

  *(v2 + 30) = v50;
  *(v2 + 31) = v51;
  [v1 bounds];
  v52 = 1.0;
  if (v53 > 0.0)
  {
    [v1 bounds];
    v55 = v54;
    [v1 bounds];
    v52 = v55 / v56;
  }

  *(v2 + 32) = v52;
  *(v2 + 33) = 0x3FF0000000000000;
  v57 = [*&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageView] image];
  if (v57)
  {
    v58 = v57;
    [v57 size];
    if (v59 <= 0.0)
    {
    }

    else
    {
      [v58 size];
      v61 = v60;
      [v58 size];
      v63 = v62;

      *(v2 + 33) = v61 / v63;
    }
  }

  [v1 bounds];
  CGSizeLength();
  *(v2 + 34) = v64;
  *(v2 + 35) = v18;
  v65 = [v28 font];
  v66 = v65;
  if (v65)
  {
    [v65 ascender];
    *(v2 + 36) = v67;
    [v66 capHeight];
    *(v2 + 37) = v68;
    [v66 lineHeight];
  }

  else
  {
    *(v2 + 36) = 0;
    *(v2 + 37) = 0;
    v69 = 0;
  }

  *(v2 + 38) = v69;
  v70 = [v31 font];
  v71 = v70;
  if (v70)
  {
    [v70 ascender];
    *(v2 + 39) = v72;
    [v71 lineHeight];
  }

  else
  {
    *(v2 + 39) = 0;
    v73 = 0;
  }

  *(v2 + 40) = v73;
  v74 = [v109 font];
  if (v74)
  {
    v75 = v74;

    [v75 ascender];
    v77 = v76;

    *(v2 + 41) = v77;
    v78 = [v1 window];
    if (v78)
    {
      v79 = v78;
      v80 = [v1 superview];
      if (v80)
      {
        v81 = v80;
        v82 = 0.0;
        if (([v1 im_isCompactHeight] & 1) == 0)
        {
          v83 = [v79 windowScene];
          if (v83)
          {
            v84 = v83;
            v85 = [v83 statusBarManager];

            if (v85)
            {
              [v85 bc_defaultPortraitStatusBarHeight];
              v82 = v86;
            }
          }
        }

        [v1 frame];
        [v79 convertRect:v81 fromCoordinateSpace:?];
        MinY = CGRectGetMinY(v110);

        v88 = v82 - MinY;
        if (v82 - MinY < 0.0)
        {
          v88 = 0.0;
        }

        *(v2 + 42) = v88;
      }

      else
      {
      }
    }

    *(v2 + 43) = *(v2 + 3) - *(v2 + 42) + -647.0;
    v89 = [v46 titleLabel];
    v90 = 0;
    if (v89)
    {
      v91 = v89;
      v92 = [v89 font];

      if (v92)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_10079B9A4();

        v93 = sub_1007A2214();

        sub_1001F1160(qword_100AEFD60);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10080B690;
        *(inited + 32) = NSFontAttributeName;
        *(inited + 64) = sub_10000A7C4(0, &unk_100AEB3C0);
        *(inited + 40) = v92;
        v95 = NSFontAttributeName;
        v96 = v92;
        sub_1001ED420(inited);
        swift_setDeallocating();
        sub_10039FAF4(inited + 32);
        v97 = sub_1007A2024().super.isa;

        [v93 sizeWithAttributes:v97];
        v90 = v98;
      }
    }

    *(v2 + 44) = v90;
    v2[393] = *(v2 + 2) <= *(v2 + 3);
    v99 = [objc_opt_self() sharedApplication];
    v100 = [v99 userInterfaceLayoutDirection];

    v2[398] = v100 == 1;
    v101 = *v2;
    v102 = *(v2 + 2);
    if (*v2 == 1)
    {
      v101 = v102 >= 428.0;
    }

    *(v2 + 1) = v101;
    if (v101)
    {
      v103 = fmin(v102, 270.0);
      v104 = v102 * 0.5 + -148.0;
      if (v103 > v104)
      {
        v104 = v103;
      }

      v105 = v102 + -156.0;
      if (v103 > v105)
      {
        v105 = v103;
      }

      *(v2 + 46) = v104;
      *(v2 + 47) = v105;
      if (!v2[393])
      {
        v105 = v104;
      }

      *(v2 + 48) = v105;
    }

    else
    {
      v106 = 32.0;
      if (!v2[392])
      {
        v106 = 24.0;
      }

      *(v2 + 45) = v106;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100398AFC()
{
  v1 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm + 8];
  if (v1)
  {
    if (v1 == 1)
    {
      [v0 bounds];
      v6.origin.x = 0.0;
      v6.origin.y = 0.0;
      v6.size.width = 0.0;
      v6.size.height = 0.0;
      if (!CGRectEqualToRect(v3, v6))
      {
        sub_10039D19C();
        sub_10039D360();
        sub_10039D4AC();
        sub_100398C90();
        sub_10039D744();

        sub_10039D910();
      }
    }
  }

  else if (*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm + 24] >= *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm + 16])
  {
    [v0 bounds];
    v7.origin.x = 0.0;
    v7.origin.y = 0.0;
    v7.size.width = 0.0;
    v7.size.height = 0.0;
    if (!CGRectEqualToRect(v4, v7))
    {
      sub_10039D19C();
      sub_10039D360();
      [*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_dismissButton] frame];
      CGRectGetMaxY(v5);
      sub_10039DA74();
      sub_100398FDC();
      sub_10039DC10();

      sub_10039DD38();
    }
  }
}

id sub_100398C90()
{
  [*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageView] frame];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = &v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm];
  [v0 bounds];
  CGRectGetWidth(v37);
  v38.origin.x = v2;
  v38.origin.y = v4;
  v38.size.width = v6;
  v38.size.height = v8;
  CGRectGetMaxY(v38);
  if (v9[3] > 0.0)
  {
    [v0 safeAreaInsets];
    [v0 safeAreaInsets];
  }

  CGRectRoundedForScale();
  v10 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_titlesContainer];
  [v10 setFrame:?];
  [v10 bounds];
  sub_10039DEF0(v11, v12, v13, v14);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  if (*(v9 + 398) == 1)
  {
    [*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleMarqueeView] animationDirection];
  }

  v39.origin.x = v16;
  v39.origin.y = v18;
  v39.size.width = v20;
  v39.size.height = v22;
  CGRectGetMinX(v39);
  v40.size.height = v22;
  v35 = v22;
  v40.origin.x = v16;
  v40.origin.y = v18;
  v40.size.width = v20;
  CGRectGetWidth(v40);
  CGRectRoundedForScale();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v34 = v18;
  v30 = v29;
  [*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleMarqueeView] setFrame:?];
  v31 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleLabel];
  CGRectRoundedForScale();
  [v31 setFrame:?];
  v41.origin.x = v24;
  v41.origin.y = v26;
  v41.size.width = v28;
  v41.size.height = v30;
  CGRectGetMinY(v41);
  v42.origin.x = v24;
  v42.origin.y = v26;
  v42.size.width = v28;
  v42.size.height = v30;
  CGRectGetHeight(v42);
  v43.origin.x = v16;
  v43.origin.y = v34;
  v43.size.width = v20;
  v43.size.height = v35;
  CGRectGetMinX(v43);
  v44.origin.x = v16;
  v44.origin.y = v34;
  v44.size.width = v20;
  v44.size.height = v35;
  CGRectGetWidth(v44);
  CGRectRoundedForScale();
  [*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleMarqueeView] setFrame:?];
  v32 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleLabel];
  CGRectRoundedForScale();

  return [v32 setFrame:?];
}

id sub_100398FDC()
{
  [*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageView] frame];
  MaxY = CGRectGetMaxY(v31);
  v2 = &v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm];
  if ((v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm + 392] & 1) == 0 && v2[3] > 0.0)
  {
    [v0 safeAreaInsets];
    [v0 safeAreaInsets];
  }

  CGRectRoundedForScale();
  v3 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_titlesContainer];
  [v3 setFrame:?];
  [v3 bounds];
  sub_10039DEF0(v4, v5, v6, v7);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if (*(v2 + 398) == 1)
  {
    [*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleMarqueeView] animationDirection];
  }

  v32.origin.x = v9;
  v32.origin.y = v11;
  v32.size.width = v13;
  v32.size.height = v15;
  CGRectGetMinX(v32);
  v33.size.width = v13;
  v29 = v13;
  v33.origin.x = v9;
  v33.origin.y = v11;
  v33.size.height = v15;
  CGRectGetWidth(v33);
  CGRectRoundedForScale();
  v17 = v16;
  v27 = v9;
  v28 = v15;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleMarqueeView] setFrame:?];
  v24 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleLabel];
  CGRectRoundedForScale();
  [v24 setFrame:?];
  v34.origin.x = v17;
  v34.origin.y = v19;
  v34.size.width = v21;
  v34.size.height = v23;
  CGRectGetMinY(v34);
  v35.origin.x = v17;
  v35.origin.y = v19;
  v35.size.width = v21;
  v35.size.height = v23;
  CGRectGetHeight(v35);
  v36.origin.x = v27;
  v36.origin.y = v11;
  v36.size.width = v29;
  v36.size.height = v28;
  CGRectGetMinX(v36);
  v37.origin.x = v27;
  v37.origin.y = v11;
  v37.size.width = v29;
  v37.size.height = v28;
  CGRectGetWidth(v37);
  CGRectRoundedForScale();
  [*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleMarqueeView] setFrame:?];
  v25 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleLabel];
  CGRectRoundedForScale();

  return [v25 setFrame:?];
}

void sub_100399320(void *a1)
{
  v3 = [objc_opt_self() currentTraitCollection];
  v4 = [v3 accessibilityContrast];

  if (v4 == 1)
  {
    v5 = 0.25;
  }

  else
  {
    v5 = 0.0;
  }

  if (a1)
  {
    v30 = v1;
    v6 = objc_opt_self();
    v7 = a1;
    v8 = [v6 whiteColor];
    v9 = UIColor.mix(withColor:factor:)(v8, 0.2);

    v10 = [v6 blackColor];
    v11 = UIColor.mix(withColor:factor:)(v10, 0.3);

    v12 = [v11 bc_resaturatedColorByFactor:1.5];
    if (!v12)
    {
      v12 = v11;
    }

    v13 = [v6 whiteColor];
    v14 = UIColor.mix(withColor:factor:)(v13, 0.08);

    v15 = [v6 blackColor];
    v16 = UIColor.mix(withColor:factor:)(v15, v5);

    v17 = [v6 blackColor];
    v18 = UIColor.mix(withColor:factor:)(v17, 0.3);

    v19 = [v18 bc_resaturatedColorByFactor:1.5];
    if (!v19)
    {
      v19 = v18;
    }

    v20 = [v6 whiteColor];
    v32 = UIColor.mix(withColor:factor:)(v20, 0.08);

    v1 = v31;
  }

  else
  {
    v21 = objc_opt_self();
    v14 = [v21 bc_booksBackground];
    v32 = [v21 bc_booksBackground];
  }

  v22 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_backgroundGradientLayer);
  sub_1001F1160(&qword_100AD7FB0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10080EFF0;
  v24 = v32;
  if (v4 != 1)
  {
    v24 = v14;
  }

  v25 = [v24 CGColor];
  type metadata accessor for CGColor(0);
  v27 = v26;
  *(v23 + 56) = v26;
  *(v23 + 32) = v25;
  v28 = [v32 CGColor];
  *(v23 + 88) = v27;
  *(v23 + 64) = v28;
  isa = sub_1007A25D4().super.isa;

  [v22 setColors:isa];

  sub_10039779C();
}

void sub_1003996B4(void *a1, void *a2)
{
  v5 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v5 _scaledValueForValue:100.0];
  v7 = v6;

  v8 = fmin(v7, 110.0) / 100.0 * 32.0;
  sub_10039F2CC();
  if (v7 < 100.0)
  {
    v9 = 32.0;
  }

  else
  {
    v9 = v8;
  }

  v10 = [objc_opt_self() configurationWithPointSize:5 weight:2 scale:v9];
  v11 = [a1 imageByApplyingSymbolConfiguration:v10];
  [*(v2 + *a2) setImage:v11 forState:0];
}

void sub_1003997F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__toPlayInAudiobook);
  v9 = [v1 attributedText];
  if (v9 && [v9 length] >= 1)
  {
    v2 = [v9 attributesAtIndex:0 effectiveRange:0];
    type metadata accessor for Key(0);
    sub_100282B6C();
    sub_1007A2044();
  }

  else
  {
    sub_1001ED420(_swiftEmptyArrayStorage);
  }

  v3 = v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlayInAudiobookTextLong;
  if (*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlayInAudiobookTextLong + 8))
  {

    v4 = sub_1007A2214();

    type metadata accessor for Key(0);
    sub_100282B6C();
    isa = sub_1007A2024().super.isa;

    [v4 sizeWithAttributes:isa];
    v7 = v6;

    [v1 frame];
    if (CGRectGetWidth(v11) < v7)
    {
      if (*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlayInAudiobookTextShort + 8))
      {

        v8 = sub_1007A2214();
      }

      else
      {
        v8 = 0;
      }

      [v1 setText:v8];

      goto LABEL_16;
    }

    if (!*(v3 + 8))
    {
      goto LABEL_12;
    }
  }

  else
  {

    if (!*(v3 + 8))
    {
LABEL_12:
      v8 = 0;
      goto LABEL_13;
    }
  }

  v8 = sub_1007A2214();

LABEL_13:
  [v1 setText:v8];
LABEL_16:
}

uint64_t sub_100399A8C()
{
  result = sub_10079ACE4();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

id sub_100399BB8()
{
  v1 = v0;
  v2 = sub_100796CF4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v23 - v7;
  v9 = sub_1007A21D4();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v23 - v14;
  v23[0] = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__mainViewContainer);
  [v23[0] addSubview:*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_grabberView)];
  v16 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_dismissButton);
  [v16 setExclusiveTouch:1];
  [v16 addTarget:v1 action:"onClose:" forControlEvents:64];
  sub_1007A2154();
  sub_100796C94();
  (*(v10 + 16))(v13, v15, v9);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v3 + 16))(v6, v8, v2);
  sub_1007A22D4();
  (*(v3 + 8))(v8, v2);
  (*(v10 + 8))(v15, v9);
  v19 = sub_1007A2214();
  [v16 setAccessibilityLabel:v19];

  [v16 setShowsLargeContentViewer:1];
  v20 = sub_1007A2214();

  [v16 setLargeContentTitle:v20];

  v21 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
  [v16 addInteraction:v21];

  return [v23[0] addSubview:v16];
}

void sub_100399F44()
{
  v91 = sub_100796CF4();
  v1 = *(v91 - 8);
  v2 = __chkstk_darwin(v91);
  v4 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v72 - v5;
  v90 = sub_1007A21D4();
  v7 = *(v90 - 8);
  v8 = __chkstk_darwin(v90);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v72 - v11;
  v13 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_bottomToolbarContainer);
  [v13 setOpaque:0];
  v93 = v13;
  v14 = [v13 layer];
  [v14 setAllowsGroupBlending:0];

  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__mainViewContainer) addSubview:v13];
  v15 = [objc_opt_self() boldSystemFontOfSize:20.0];
  v92 = [objc_opt_self() configurationWithFont:v15];

  v95 = v0;
  v16 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playbackSpeed);
  v94 = objc_opt_self();
  v17 = [v94 bc_nowPlayingVibrantSecondary];
  [v16 setTitleColor:v17 forState:0];

  [v16 setContentHorizontalAlignment:1];
  [v16 addTarget:v0 action:"onNarrationSpeed:" forControlEvents:64];
  sub_1007A2154();
  sub_100796C94();
  v18 = v90;
  v81 = *(v7 + 16);
  v82 = v7 + 16;
  v81(v10, v12, v90);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v78 = objc_opt_self();
  v80 = ObjCClassFromMetadata;
  v20 = [v78 bundleForClass:ObjCClassFromMetadata];
  v21 = v91;
  v76 = *(v1 + 16);
  v77 = v1 + 16;
  v76(v4, v6, v91);
  v83 = v10;
  v86 = v4;
  sub_1007A22D4();
  v22 = *(v1 + 8);
  v87 = v6;
  v88 = v1 + 8;
  v75 = v22;
  v22(v6, v21);
  v23 = *(v7 + 8);
  v84 = v12;
  v85 = v7 + 8;
  v24 = v18;
  v25 = v95;
  v26 = v93;
  v74 = v23;
  v23(v12, v24);
  v27 = sub_1007A2214();

  [v16 setAccessibilityLabel:v27];

  [v16 setShowsLargeContentViewer:1];
  v28 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
  [v16 addInteraction:v28];

  [v26 addSubview:v16];
  v29 = *(v25 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_sleepButton);
  v30 = objc_opt_self();
  v31 = sub_1007A2214();
  v79 = v30;
  v32 = [v30 __systemImageNamedSwift:v31];

  v33 = v92;
  if (v32)
  {
    v34 = [v32 imageWithConfiguration:?];

    v32 = [v34 imageWithRenderingMode:2];
  }

  [v29 setImage:v32 forState:0];

  [v29 setTitle:0 forState:0];
  v35 = v94;
  v36 = [v94 bc_nowPlayingVibrantSecondary];
  [v29 setTintColor:v36];

  v37 = [v35 bc_nowPlayingVibrantSecondary];
  [v29 setTitleColor:v37 forState:0];

  *&v29[OBJC_IVAR____TtC5Books11SleepButton_fixedHeight] = 0x4044000000000000;
  *&v29[OBJC_IVAR____TtC5Books11SleepButton_internalPadding] = 0x4024000000000000;
  [v29 setShowsLargeContentViewer:1];
  v38 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
  [v29 addInteraction:v38];

  v39 = &selRef__setupSizeRestrictionsForWindowScene_sceneType_;
  [v26 addSubview:v29];
  v40 = *(v25 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__routeView);
  if (!v40)
  {
    goto LABEL_23;
  }

  v41 = v40;
  v42 = [v35 bc_nowPlayingVibrantSecondary];
  [v41 setTintColor:v42];

  [v26 insertSubview:v41 belowSubview:v29];
  v43 = [v41 subviews];

  sub_10000A7C4(0, &qword_100AD7620);
  v44 = sub_1007A25E4();

  v89 = v41;
  if (!(v44 >> 62))
  {
    v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v45)
    {
      goto LABEL_6;
    }

LABEL_22:

    v35 = v94;
    v25 = v95;
    v33 = v92;
    v26 = v93;
    v39 = &selRef__setupSizeRestrictionsForWindowScene_sceneType_;
    goto LABEL_23;
  }

LABEL_21:
  v45 = sub_1007A38D4();
  if (!v45)
  {
    goto LABEL_22;
  }

LABEL_6:
  v46 = 0;
  while (1)
  {
    if ((v44 & 0xC000000000000001) != 0)
    {
      v47 = sub_1007A3784();
    }

    else
    {
      if (v46 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v47 = *(v44 + 8 * v46 + 32);
    }

    v48 = v47;
    v49 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    sub_10000A7C4(0, qword_100ADAA50);
    if ([v48 isKindOfClass:swift_getObjCClassFromMetadata()])
    {
      break;
    }

    ++v46;
    if (v49 == v45)
    {
      goto LABEL_22;
    }
  }

  objc_opt_self();
  v50 = swift_dynamicCastObjCClass();
  v35 = v94;
  v25 = v95;
  v26 = v93;
  if (v50)
  {
    v73 = v50;
    v51 = v84;
    sub_1007A2154();
    v52 = v87;
    sub_100796C94();
    v53 = v26;
    v54 = v90;
    v81(v83, v51, v90);
    v55 = [v78 bundleForClass:v80];
    v56 = v91;
    v76(v86, v52, v91);
    sub_1007A22D4();
    v75(v52, v56);
    v57 = v54;
    v26 = v53;
    v25 = v95;
    v74(v51, v57);
    v58 = v48;
    v59 = sub_1007A2214();
    v60 = v73;
    [v73 setAccessibilityIdentifier:v59];

    v61 = sub_1007A2214();
    [v60 setAccessibilityLabel:v61];

    v62 = v58;
    [v60 setShowsLargeContentViewer:1];
    v35 = v94;
    v63 = sub_1007A2214();

    [v60 setLargeContentTitle:v63];

    v64 = sub_1007A2214();
    v65 = [v79 _systemImageNamed:v64];

    [v60 setLargeContentImage:v65];
    v66 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
    [v60 addInteraction:v66];
  }

  else
  {
  }

  v39 = &selRef__setupSizeRestrictionsForWindowScene_sceneType_;
  v33 = v92;
LABEL_23:
  v67 = *(v25 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_tocButton);
  v68 = [v35 bc_nowPlayingVibrantSecondary];
  [v67 setTintColor:v68];

  v69 = [v35 bc_nowPlayingVibrantQuaternary];
  v70 = *&v67[OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_platterColor];
  *&v67[OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_platterColor] = v69;
  v71 = v69;

  [*&v67[OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_supplementalView] setBackgroundColor:v71];
  sub_1002AC5BC([v35 bc_nowPlayingVibrantPrimary]);
  [v67 setContentHorizontalAlignment:2];
  [v67 addTarget:v25 action:"onTOC:" forControlEvents:64];
  [v26 v39[269]];
}

uint64_t sub_10039AB18()
{
  v1 = sub_1007A2214();
  [v0 setAccessibilityIdentifier:v1];

  v2 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_dismissButton];
  v3 = sub_1007A2214();
  [v2 setAccessibilityIdentifier:v3];

  v4 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__playPause];
  v5 = sub_1007A2214();
  [v4 setAccessibilityIdentifier:v5];

  v6 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipForwardButton];
  v7 = sub_1007A2214();
  [v6 setAccessibilityIdentifier:v7];

  v8 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipBackwardButton];
  v9 = sub_1007A2214();
  [v8 setAccessibilityIdentifier:v9];

  v10 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageView];
  v11 = sub_1007A2214();
  [v10 setAccessibilityIdentifier:v11];

  v12 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_overflowButton];
  v13 = sub_1007A2214();
  [v12 setAccessibilityIdentifier:v13];

  v14 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playbackSpeed];
  v15 = sub_1007A2214();
  [v14 setAccessibilityIdentifier:v15];

  v16 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_sleepButton];
  v17 = sub_1007A2214();
  [v16 setAccessibilityIdentifier:v17];

  v18 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_tocButton];
  v19 = sub_1007A2214();
  [v18 setAccessibilityIdentifier:v19];

  v22[3] = type metadata accessor for AudiobookNowPlayingFullscreenTouchView();
  v22[0] = v0;
  v20 = v0;
  sub_1007A2B14();
  return sub_1000074E0(v22);
}

void sub_10039ADE0()
{
  v102 = sub_100796CF4();
  v104 = *(v102 - 8);
  v1 = __chkstk_darwin(v102);
  v99 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v101 = &v77 - v3;
  v100 = sub_1007A21D4();
  v103 = *(v100 - 8);
  v4 = __chkstk_darwin(v100);
  v97 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v98 = &v77 - v6;
  v7 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_titlesContainer);
  v8 = [v7 layer];
  [v8 setAllowsGroupBlending:0];

  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__mainViewContainer) addSubview:v7];
  v9 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleLabel);
  [v9 setTextAlignment:4];
  v10 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleMarqueeView);
  [v10 setContentGap:32.0];
  [v10 setAnimationReferenceView:v7];
  [v10 setFadeEdgeInsets:{0.0, 24.0, 0.0, 24.0}];
  v11 = [v10 contentView];
  if (!v11)
  {
    goto LABEL_16;
  }

  v12 = v11;
  [v11 addSubview:v9];

  [v10 setViewForContentSize:v9];
  v13 = sub_1007A2214();
  [v10 _setLayoutDebuggingIdentifier:v13];

  [v7 addSubview:v10];
  v14 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleLabel);
  [v14 setTextAlignment:4];
  v15 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleMarqueeView);
  [v15 setContentGap:32.0];
  [v15 setAnimationReferenceView:v7];
  [v15 setFadeEdgeInsets:{0.0, 24.0, 0.0, 24.0}];
  v16 = [v15 contentView];
  if (!v16)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v17 = v16;
  [v16 addSubview:v14];

  [v15 setViewForContentSize:v14];
  v18 = sub_1007A2214();
  [v15 _setLayoutDebuggingIdentifier:v18];

  [v10 addCoordinatedMarqueeView:v15];
  [v7 addSubview:v15];
  v93 = objc_opt_self();
  v19 = [v93 configurationWithPointSize:4 weight:20.0];
  v20 = objc_opt_self();
  v21 = sub_1007A2214();
  v92 = v20;
  v22 = [v20 __systemImageNamedSwift:v21];

  v23 = v7;
  if (v22)
  {
    v24 = [v22 imageWithConfiguration:v19];
  }

  else
  {
    v24 = 0;
  }

  v25 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_overflowButton);
  [v25 setImage:v24 forState:0];
  sub_10000A7C4(0, &qword_100AF71C0);
  v26 = [swift_getObjCClassFromMetadata() preferredFormat];
  v27 = [objc_opt_self() mainScreen];
  [v27 scale];
  v29 = v28;

  [v26 setScale:v29];
  v30 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v26 format:{28.0, 28.0}];
  aBlock[4] = sub_100395798;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004091A8;
  aBlock[3] = &unk_100A18BB8;
  v31 = _Block_copy(aBlock);

  v32 = [v30 imageWithActions:v31];
  _Block_release(v31);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v88 = v30;
  v89 = v26;
  v90 = v24;
  v91 = v19;
  v87 = v32;
  [v25 setBackgroundImage:v32 forState:0];
  v94 = objc_opt_self();
  v33 = [v94 bc_nowPlayingVibrantPrimary];
  [v25 setTintColor:v33];

  [v25 setContentHorizontalAlignment:0];
  v96 = v0;
  v34 = v98;
  sub_1007A2154();
  v35 = v101;
  sub_100796C94();
  v36 = v103;
  v37 = *(v103 + 16);
  v95 = v23;
  v38 = v100;
  v86 = v103 + 16;
  v85 = v37;
  v37(v97, v34, v100);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v83 = objc_opt_self();
  v84 = ObjCClassFromMetadata;
  v40 = [v83 bundleForClass:ObjCClassFromMetadata];
  v41 = v104;
  v42 = *(v104 + 16);
  v43 = v102;
  v82 = v104 + 16;
  v81 = v42;
  v42(v99, v35, v102);
  v44 = v95;
  sub_1007A22D4();
  v45 = *(v41 + 8);
  v104 = v41 + 8;
  v80 = v45;
  v45(v35, v43);
  v46 = *(v36 + 8);
  v47 = v34;
  v48 = v96;
  v103 = v36 + 8;
  v79 = v46;
  v46(v47, v38);
  v49 = sub_1007A2214();

  [v25 setAccessibilityLabel:v49];

  [v25 setShowsLargeContentViewer:1];
  v50 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
  [v25 addInteraction:v50];

  [v44 addSubview:v25];
  v51 = *(v48 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadIndicator);
  [v51 setInscribeProgress:0];
  [v51 setProgressLineCap:1];
  [v51 setProgressThickness:2.0];
  v52 = [v94 bc_booksTableSelectionColor];
  [v51 setTrackColor:v52];

  [v51 setTrackDiameter:28.0];
  [v51 setTrackThickness:2.0];
  [v51 setShowsTouchWhenHighlighted:0];
  v53 = v93;
  v54 = [v93 configurationWithPointSize:9.0];
  v55 = sub_1007A2214();
  v56 = v92;
  v57 = [v92 __systemImageNamedSwift:v55];

  v78 = v54;
  if (v57)
  {
    v58 = [v57 imageWithConfiguration:v54];

    v57 = [v58 imageWithRenderingMode:2];
  }

  [v51 setCenterImageNormal:v57];

  [v51 setAlpha:0.0];
  [v44 addSubview:v51];
  [v51 addTarget:v48 action:"cancelDownload:" forControlEvents:64];
  v59 = *(v48 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadSpinner);
  [v59 setAlpha:0.0];
  [v44 addSubview:v59];
  v60 = [v53 configurationWithPointSize:28.0];
  v61 = sub_1007A2214();
  v62 = [v56 __systemImageNamedSwift:v61];

  if (v62)
  {
    v63 = [v62 imageWithConfiguration:v60];

    v64 = [v63 imageWithRenderingMode:2];
  }

  else
  {
    v64 = 0;
  }

  v65 = v94;
  v66 = *(v48 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadButton);
  [v66 setImage:v64 forState:0];
  v67 = [v66 imageView];
  if (v67)
  {
    v68 = v67;
    [v67 setContentMode:1];
  }

  [v66 setAlpha:0.0];
  v69 = [v65 bc_nowPlayingVibrantPrimary];
  [v66 setTintColor:v69];

  v70 = v98;
  sub_1007A2154();
  v71 = v101;
  sub_100796C94();
  v72 = v100;
  v85(v97, v70, v100);
  v73 = [v83 bundleForClass:v84];
  v74 = v102;
  v81(v99, v71, v102);
  sub_1007A22D4();
  v80(v71, v74);
  v79(v70, v72);
  v75 = sub_1007A2214();

  [v66 setAccessibilityLabel:v75];

  [v66 setShowsLargeContentViewer:1];
  v76 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
  [v66 addInteraction:v76];

  [v95 addSubview:v66];
  [v66 addTarget:v96 action:"startDownload:" forControlEvents:64];
  sub_100397D70();
}

void sub_10039BC44()
{
  v1 = v0;
  v125 = sub_100796CF4();
  v129 = *(v125 - 8);
  v2 = __chkstk_darwin(v125);
  v123 = &v111 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v121 = &v111 - v4;
  v122 = sub_1007A21D4();
  v130 = *(v122 - 8);
  v5 = __chkstk_darwin(v122);
  v124 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v120 = &v111 - v7;
  v8 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_transportContainer);
  [v8 setOpaque:0];
  v9 = [v8 layer];
  [v9 setAllowsGroupBlending:0];

  [*(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__mainViewContainer) addSubview:v8];
  v10 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_hudTrack);
  v11 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v10 setFont:v11];

  v12 = objc_opt_self();
  v13 = [v12 bc_nowPlayingVibrantPrimary];
  [v10 setTextColor:v13];

  [v10 setTitle:0];
  [v10 setAlpha:0.0];
  v128 = v8;
  [v8 addSubview:v10];
  v14 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__transportSubcontainer);
  [v14 setOpaque:0];
  v15 = [v14 layer];
  [v15 setAllowsGroupBlending:0];

  [v8 addSubview:v14];
  v16 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipForwardButton);
  v17 = [v12 bc_nowPlayingVibrantPrimary];
  [v16 setTintColor:v17];

  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v16 addTarget:v1 action:"skipForwardStart:" forControlEvents:17];
  [v16 addTarget:v1 action:"skipForwardTouchUpInside:" forControlEvents:64];
  [v16 addTarget:v1 action:"skipForwardTouchCancel:" forControlEvents:288];
  [v14 addSubview:*(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipForwardVibrancyEffectContainerView)];
  sub_10039728C();
  v18 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__playPause);
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v18 setBackgroundImage:*(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playImage) forState:0];
  v19 = [v12 bc_nowPlayingVibrantPrimary];
  [v18 setTintColor:v19];

  [v18 addTarget:v1 action:"onPlayPause:" forControlEvents:64];
  [v14 addSubview:*(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__playPauseVibrancyEffectContainerView)];
  v20 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipBackwardButton);
  v126 = v12;
  v21 = [v12 bc_nowPlayingVibrantPrimary];
  [v20 setTintColor:v21];

  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v127 = v1;
  [v20 addTarget:v1 action:"skipBackwardStart:" forControlEvents:17];
  [v20 addTarget:v1 action:"skipBackwardTouchUpInside:" forControlEvents:64];
  [v20 addTarget:v1 action:"skipBackwardTouchCancel:" forControlEvents:288];
  [v14 addSubview:*(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipBackwardVibrancyEffectContainerView)];
  v22 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_played);
  v23 = sub_1007A2214();
  [v22 setText:v23];

  [v22 setTextAlignment:0];
  v24 = v120;
  sub_1007A2154();
  v25 = v121;
  sub_100796C94();
  v26 = *(v130 + 2);
  v118 = v130 + 16;
  v119 = v26;
  v27 = v24;
  v28 = v122;
  v26(v124, v24, v122);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v117 = ObjCClassFromMetadata;
  v116 = objc_opt_self();
  v30 = [v116 bundleForClass:ObjCClassFromMetadata];
  v31 = v129;
  v114 = *(v129 + 16);
  v115 = v129 + 16;
  v32 = v123;
  v33 = v25;
  v34 = v25;
  v35 = v125;
  v114(v123, v33, v125);
  v36 = v32;
  sub_1007A22D4();
  v37 = *(v31 + 8);
  v129 = v31 + 8;
  v113 = v37;
  v38 = v34;
  v37(v34, v35);
  v39 = *(v130 + 1);
  v130 += 8;
  v112 = v39;
  v40 = v27;
  v39(v27, v28);
  v41 = sub_1007A2214();

  [v22 setAccessibilityLabel:v41];

  v42 = UIAccessibilityTraitUpdatesFrequently;
  v43 = [v22 accessibilityTraits];
  if ((v42 & ~v43) != 0)
  {
    v44 = v42;
  }

  else
  {
    v44 = 0;
  }

  [v22 setAccessibilityTraits:v44 | v43];
  [v128 addSubview:v22];
  v45 = v127;
  v46 = *(v127 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlay);
  v47 = sub_1007A2214();
  [v46 setText:v47];

  [v46 setTextAlignment:2];
  sub_1007A2154();
  sub_100796C94();
  v119(v124, v40, v28);
  v48 = [v116 bundleForClass:v117];
  v49 = v36;
  v50 = v125;
  v114(v49, v38, v125);
  sub_1007A22D4();
  v113(v38, v50);
  v112(v40, v28);
  v51 = sub_1007A2214();

  [v46 setAccessibilityLabel:v51];

  v52 = [v46 accessibilityTraits];
  if ((v42 & ~v52) != 0)
  {
    v53 = v42;
  }

  else
  {
    v53 = 0;
  }

  [v46 setAccessibilityTraits:v53 | v52];
  v54 = v46;
  v55 = v128;
  [v128 addSubview:v54];
  v56 = *(v45 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__toPlayInAudiobook);
  v57 = sub_1007A2214();
  [v56 setText:v57];

  [v56 setTextAlignment:1];
  [v55 addSubview:v56];
  v58 = *(v45 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_loadingSpinner);
  [v58 intrinsicContentSize];
  if (v59 == 0.0)
  {
    v60 = 0.0;
  }

  else
  {
    v60 = 14.0 / v59;
  }

  CGAffineTransformMakeScale(&v131, v60, v60);
  [v58 setTransform:&v131];
  [v55 addSubview:v58];
  v61 = *(v45 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeContainer);
  [v61 setOpaque:0];
  v62 = [v61 layer];
  [v62 setAllowsGroupBlending:0];

  [v55 addSubview:v61];
  v63 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleFootnote scale:2];
  v64 = objc_opt_self();
  v65 = sub_1007A2214();
  v66 = [v64 __systemImageNamedSwift:v65];

  if (v66)
  {
    v67 = [v66 imageWithConfiguration:v63];

    v68 = [v67 imageWithRenderingMode:2];
  }

  else
  {
    v68 = 0;
  }

  v69 = v127;
  v70 = *(v127 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeMinImageView);
  [v70 setImage:v68];
  v71 = [v126 bc_nowPlayingVibrantSecondary];
  [v70 setTintColor:v71];

  [v61 addSubview:v70];
  v72 = *(v69 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeView);
  if (v72)
  {
    v73 = v72;
    v74 = [v126 bc_nowPlayingVibrantSecondary];
    [v73 setTintColor:v74];

    [v73 setShowsRouteButton:0];
    if (!_UISolariumEnabled())
    {

      v86 = sub_1007A2214();
      v87 = [v64 imageNamed:v86];

      v88 = [v87 im_imageWithSize:{33.0, 33.0}];
      [v73 setVolumeThumbImage:v88 forState:0];

      goto LABEL_44;
    }

    v75 = [v73 subviews];

    sub_10000A7C4(0, &qword_100AD7620);
    v76 = sub_1007A25E4();

    if (v76 >> 62)
    {
      if (!sub_1007A38D4())
      {
        goto LABEL_43;
      }
    }

    else if (!*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_43;
    }

    if ((v76 & 0xC000000000000001) != 0)
    {
      v77 = sub_1007A3784();
    }

    else
    {
      if (!*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_50;
      }

      v77 = *(v76 + 32);
    }

    v78 = v77;

    v79 = [v78 subviews];

    v80 = sub_1007A25E4();
    if (v80 >> 62)
    {
      if (sub_1007A38D4())
      {
LABEL_22:
        if ((v80 & 0xC000000000000001) == 0)
        {
          if (!*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_53;
          }

          v81 = *(v80 + 32);
LABEL_25:
          v82 = v81;

          v130 = v82;
          v83 = [v82 subviews];
          v84 = sub_1007A25E4();

          if (v84 >> 62)
          {
            v85 = sub_1007A38D4();
          }

          else
          {
            v85 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v85 < 2)
          {

LABEL_44:
            [v61 addSubview:v73];

            goto LABEL_45;
          }

          v89 = [v130 subviews];
          v90 = sub_1007A25E4();

          if ((v90 & 0xC000000000000001) == 0)
          {
            if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
            {
              __break(1u);
              goto LABEL_57;
            }

            v91 = *(v90 + 40);
LABEL_33:
            v92 = v91;

            v93 = [v92 subviews];

            v94 = sub_1007A25E4();
            if (v94 >> 62)
            {
              v110 = sub_1007A38D4();
              v95 = v130;
              if (v110)
              {
LABEL_35:
                if ((v94 & 0xC000000000000001) == 0)
                {
                  if (!*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
                    return;
                  }

                  v96 = *(v94 + 32);
                  goto LABEL_38;
                }

LABEL_57:
                v96 = sub_1007A3784();
LABEL_38:
                v97 = v96;

                [v97 setHidden:1];

                goto LABEL_44;
              }
            }

            else
            {
              v95 = v130;
              if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_35;
              }
            }

            goto LABEL_44;
          }

LABEL_53:
          v91 = sub_1007A3784();
          goto LABEL_33;
        }

LABEL_50:
        v81 = sub_1007A3784();
        goto LABEL_25;
      }
    }

    else if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

LABEL_43:

    goto LABEL_44;
  }

LABEL_45:
  v98 = sub_1007A2214();
  v99 = [v64 __systemImageNamedSwift:v98];

  if (v99)
  {
    v100 = [v99 imageWithConfiguration:v63];

    v101 = [v100 imageWithRenderingMode:2];
  }

  else
  {
    v101 = 0;
  }

  v102 = v127;
  v103 = *(v127 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeMaxImageView);
  [v103 setImage:v101];
  v104 = v126;
  v105 = [v126 bc_nowPlayingVibrantSecondary];
  [v103 setTintColor:v105];

  [v61 addSubview:v103];
  v106 = v102;
  sub_1003974A8();
  v107 = *(v102 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_progressSlider);
  v108 = [v104 bc_nowPlayingVibrantQuaternary];
  [v107 setBufferIndicatorColor:v108];

  v109 = [v104 bc_nowPlayingVibrantSecondary];
  [v107 setSessionIndicatorColor:v109];

  [v107 addTarget:v106 action:"setChapterProgress:" forControlEvents:4096];
  [v107 setTouchInsets:{-10.0, -20.0, -10.0, -20.0}];
  [v128 addSubview:v107];
  sub_100397EB4();
}

void sub_10039CE34()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleLabel);
  v2 = sub_10069D3B8(UIFontTextStyleTitle3, UIContentSizeCategoryExtraExtraExtraLarge);
  [v1 setFont:v2];

  v3 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleLabel);
  v4 = objc_opt_self();
  v5 = [v4 _preferredFontForTextStyle:UIFontTextStyleTitle3 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  [v3 setFont:v5];

  if (*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm + 8) == 1)
  {
    if (*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm + 394))
    {
      v6 = &UIFontTextStyleBody;
    }

    else
    {
      v6 = &UIFontTextStyleCaption1;
    }

    v7 = *v6;
    v8 = [v4 _preferredFontForTextStyle:v7 maximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraExtraLarge];

    if (v8)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = [v4 _preferredFontForTextStyle:UIFontTextStyleCaption1 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
    if (v8)
    {
LABEL_6:
      [v8 pointSize];
      v19 = [v4 monospacedDigitSystemFontOfSize:? weight:?];

      v9 = v19;
      goto LABEL_9;
    }
  }

  v9 = 0;
LABEL_9:
  v20 = v9;
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_played) setFont:?];
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlay) setFont:v20];
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__toPlayInAudiobook) setFont:v20];
  v10 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playbackSpeed);
  v11 = [v10 titleLabel];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_opt_self() defaultFontSpec];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 fontSpecWithDesign:UIFontDescriptorSystemDesignRounded];

      if (v15)
      {
        v16 = [v15 fontSpecWithWeight:UIFontWeightSemibold];

        if (v16)
        {
          v17 = [v16 fontSpecWithPointSize:22.0];

          if (v17)
          {
            v18 = [v17 font];

            [v12 setFont:v18];
            goto LABEL_15;
          }

LABEL_21:
          __break(1u);
          return;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_15:
  [v10 _setTouchInsets:{-20.0, -20.0, -20.0, -20.0}];
}

id sub_10039D19C()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__mainViewContainer];
  [v9 setFrame:?];
  v10 = sub_100395DD8();
  [v10 setFrame:{v2, v4, v6, v8}];

  v11 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView____lazy_storage___backgroundImageView];
  [v9 bounds];
  [v11 setFrame:?];

  v12 = objc_opt_self();
  [v12 begin];
  [v12 setDisableActions:1];
  v13 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_backgroundGradientLayer];
  [v9 bounds];
  [v13 setFrame:?];
  v14 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lowerHalfGradientLayer];
  [v9 bounds];
  MinX = CGRectGetMinX(v21);
  [v9 bounds];
  MidY = CGRectGetMidY(v22);
  [v9 bounds];
  Width = CGRectGetWidth(v23);
  [v9 bounds];
  MaxY = CGRectGetMaxY(v24);
  [v9 bounds];
  [v14 setFrame:{MinX, MidY, Width, MaxY - CGRectGetMidY(v25)}];

  return [v12 commit];
}

id sub_10039D360()
{
  [*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__mainViewContainer] bounds];
  v5 = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  v9 = &v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm];
  if (*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm + 8] || (v10 = 12.0, (v9[49] & 1) == 0))
  {
    v10 = 0.0;
  }

  CGRectGetMidX(*&v1);
  CGFloatRoundForScale();
  v12 = v11;
  [v0 safeAreaInsets];
  [*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_grabberView] setFrame:{v12, v10 + v13 + 7.0, v9[6], v9[7]}];
  [v0 safeAreaInsets];
  v15 = v10 + v14;
  v20.origin.x = v5;
  v20.origin.y = v6;
  v20.size.width = v7;
  v20.size.height = v8;
  Width = CGRectGetWidth(v20);
  v17 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_dismissButton];

  return [v17 setFrame:{0.0, v15, Width, 32.0}];
}

void sub_10039D4AC()
{
  v1 = &v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm];
  if (*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm + 256] > 1.5 && v1[3] > 0.0)
  {
    [v0 safeAreaInsets];
    [v0 safeAreaInsets];
  }

  if (*(v1 + 393) == 1 && v1[3] > 0.0)
  {
    [v0 safeAreaInsets];
    [v0 safeAreaInsets];
  }

  CGRectFitRectInRectAbsoluteNoRounding();
  CGRectRoundedForScale();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageView] setFrame:?];
  v10 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageShadowView];
  [v10 setFrame:{v3, v5, v7, v9}];
  v11 = [v10 layer];
  [v10 bounds];
  v16 = [objc_opt_self() bezierPathWithRoundedRect:v12 cornerRadius:{v13, v14, v15, 10.0}];
  v17 = [v16 CGPath];

  [v11 setShadowPath:v17];
}

id sub_10039D744()
{
  [*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_titlesContainer] frame];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = &v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm];
  sub_100395844();
  [v0 safeAreaInsets];
  if (*(v9 + 393) == 1 && v9[3] > 0.0)
  {
    [v0 safeAreaInsets];
    [v0 safeAreaInsets];
  }

  v12.origin.x = v2;
  v12.origin.y = v4;
  v12.size.width = v6;
  v12.size.height = v8;
  CGRectGetMinX(v12);
  v13.origin.x = v2;
  v13.origin.y = v4;
  v13.size.width = v6;
  v13.size.height = v8;
  CGRectGetWidth(v13);
  CGRectRoundedForScale();
  [*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_bottomToolbarContainer] setFrame:?];

  return sub_10039ED24();
}

id sub_10039D910()
{
  [*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_titlesContainer] frame];
  x = v8.origin.x;
  width = v8.size.width;
  height = v8.size.height;
  MaxY = CGRectGetMaxY(v8);
  [*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_bottomToolbarContainer] frame];
  CGRectGetMinY(v9);
  v5 = &v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm];
  CGFloatRoundForScale();
  if ((*(v5 + 393) & 1) == 0 && v5[3] > 0.0)
  {
    [v0 safeAreaInsets];
    [v0 safeAreaInsets];
  }

  v10.origin.x = x;
  v10.origin.y = MaxY + 27.0;
  v10.size.width = width;
  v10.size.height = height;
  CGRectGetMinY(v10);

  return sub_10039E2EC();
}

void sub_10039DA74()
{
  CGRectRoundedForScale();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageView) setFrame:?];
  v9 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageShadowView);
  [v9 setFrame:{v2, v4, v6, v8}];
  v10 = [v9 layer];
  [v9 bounds];
  v15 = [objc_opt_self() bezierPathWithRoundedRect:v11 cornerRadius:{v12, v13, v14, 10.0}];
  v16 = [v15 CGPath];

  [v10 setShadowPath:v16];
}

id sub_10039DC10()
{
  sub_100395844();
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_titlesContainer) frame];
  x = v7.origin.x;
  y = v7.origin.y;
  width = v7.size.width;
  height = v7.size.height;
  CGRectGetMinX(v7);
  v8.origin.x = x;
  v8.origin.y = y;
  v8.size.width = width;
  v8.size.height = height;
  CGRectGetWidth(v8);
  CGRectRoundedForScale();
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_bottomToolbarContainer) setFrame:?];

  return sub_10039EF44();
}

id sub_10039DD38()
{
  [*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_titlesContainer] frame];
  x = v13.origin.x;
  width = v13.size.width;
  height = v13.size.height;
  MaxY = CGRectGetMaxY(v13);
  v4 = &v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm];
  v5 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm + 24];
  v6 = 0.0;
  if (v5 > 0.0)
  {
    [v0 safeAreaInsets];
    v8 = v7;
    [v0 safeAreaInsets];
    v6 = fmin((v4[3] - v4[42]) * ((v5 - (v8 + v9)) * 0.04 / v4[3]), 32.0);
  }

  [*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_bottomToolbarContainer] frame];
  CGRectGetMinY(v14);
  CGFloatRoundForScale();
  if (v4[3] > 0.0)
  {
    [v0 safeAreaInsets];
    [v0 safeAreaInsets];
  }

  v15.origin.x = x;
  v15.origin.y = MaxY + v6;
  v15.size.width = width;
  v15.size.height = height;
  CGRectGetMinY(v15);

  return sub_10039E2EC();
}

void sub_10039DEF0(double a1, double a2, double a3, double a4)
{
  v5 = v4 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm;
  v6 = *(v4 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm + 398) == 0;
  memset(&slice, 0, sizeof(slice));
  if (v6)
  {
    v7 = CGRectMaxXEdge;
  }

  else
  {
    v7 = CGRectMinXEdge;
  }

  memset(&v41, 0, sizeof(v41));
  v8 = 0;
  v9 = 0;
  CGRectDivide(*(&a3 - 2), &slice, &v41, 28.0, v7);
  y = v41.origin.y;
  x = v41.origin.x;
  height = v41.size.height;
  width = v41.size.width;
  CGRectCenterRectInRect();
  CGRectRoundedForScale();
  [*(v4 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_overflowButton) setFrame:?];
  v14 = *(v4 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_buyButton);
  if (v14)
  {
    memset(&slice, 0, sizeof(slice));
    memset(&v41, 0, sizeof(v41));
    v15 = v14;
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    CGRectDivide(v43, &slice, &v41, 16.0, v7);
    v44 = v41;
    v16 = *(v5 + 32);
    memset(&slice, 0, sizeof(slice));
    memset(&v41, 0, sizeof(v41));
    CGRectDivide(v44, &slice, &v41, v16, v7);
    y = v41.origin.y;
    x = v41.origin.x;
    height = v41.size.height;
    width = v41.size.width;
    CGRectCenterRectInRect();
    CGRectRoundedForScale();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    [v15 setFrame:?];
    memset(&slice, 0, sizeof(slice));
    memset(&v41, 0, sizeof(v41));
    v45.origin.x = v18;
    v45.origin.y = v20;
    v45.size.width = v22;
    v45.size.height = v24;
    CGRectDivide(v45, &slice, &v41, 28.0, v7);
    CGRectCenterRectInRect();
    CGRectRoundedForScale();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    [*(v4 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadIndicator) setFrame:?];
    [*(v4 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadSpinner) setFrame:{v26, v28, v30, v32}];
    [*(v4 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadButton) setFrame:{v26, v28, v30, v32}];
  }

  else
  {
    if (*(v4 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadState) == 3)
    {
      memset(&slice, 0, sizeof(slice));
      memset(&v41, 0, sizeof(v41));
      v46.origin.x = x;
      v46.origin.y = y;
      v46.size.width = width;
      v46.size.height = height;
      CGRectDivide(v46, &slice, &v41, 40.0, v7);
    }

    else
    {
      memset(&slice, 0, sizeof(slice));
      memset(&v41, 0, sizeof(v41));
      v47.origin.x = x;
      v47.origin.y = y;
      v47.size.width = width;
      v47.size.height = height;
      CGRectDivide(v47, &slice, &v41, 16.0, v7);
      v48 = v41;
      memset(&slice, 0, sizeof(slice));
      memset(&v41, 0, sizeof(v41));
      CGRectDivide(v48, &slice, &v41, 28.0, v7);
      y = v41.origin.y;
      x = v41.origin.x;
      height = v41.size.height;
      width = v41.size.width;
    }

    CGRectCenterRectInRect();
    CGRectRoundedForScale();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    [*(v4 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadIndicator) setFrame:?];
    [*(v4 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadSpinner) setFrame:{v34, v36, v38, v40}];
    [*(v4 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadButton) setFrame:{v34, v36, v38, v40}];
  }

  memset(&slice, 0, sizeof(slice));
  memset(&v41, 0, sizeof(v41));
  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  CGRectDivide(v49, &slice, &v41, 20.0, v7);
}

id sub_10039E2EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_transportContainer);
  [v1 setFrame:?];
  sub_10039E440();
  [v1 bounds];
  CGRectGetMaxY(v12);
  [v1 bounds];
  CGRectRoundedForScale();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeContainer) setFrame:?];
  sub_10039E704();
  v13.origin.x = v3;
  v13.origin.y = v5;
  v13.size.width = v7;
  v13.size.height = v9;
  CGRectGetMinY(v13);
  [v1 bounds];
  CGRectGetWidth(v14);
  CGRectRoundedForScale();
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__transportSubcontainer) setFrame:?];

  return sub_10039E964();
}

void sub_10039E440()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_transportContainer);
  [v1 bounds];
  CGRectGetWidth(v25);
  CGRectRoundedForScale();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_progressSlider) setFrame:?];
  v26.origin.x = v3;
  v26.origin.y = v5;
  v26.size.width = v7;
  v26.size.height = v9;
  CGRectGetMinX(v26);
  v27.origin.x = v3;
  v27.origin.y = v5;
  v27.size.width = v7;
  v27.size.height = v9;
  CGRectGetMinY(v27);
  v28.origin.x = v3;
  v28.origin.y = v5;
  v28.size.width = v7;
  v28.size.height = v9;
  CGRectGetWidth(v28);
  CGRectRoundedForScale();
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_hudTrack) setFrame:?];
  CGRectRoundedForScale();
  v22 = v11;
  v23 = v10;
  v13 = v12;
  v15 = v14;
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_played) setFrame:?];
  v16 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_loadingSpinner);
  CGRectRoundedForScale();
  [v16 setFrame:?];
  [v1 bounds];
  CGRectRoundedForScale();
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  v21 = v29.origin.x - CGRectGetWidth(v29);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlay) setFrame:{v21, y, width + CGRectGetWidth(v30), height}];
  v31.origin.x = v13;
  v31.origin.y = v15;
  v31.size.width = v23;
  v31.size.height = v22;
  CGRectGetMaxX(v31);
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  CGRectGetMinX(v32);
  v33.origin.x = v13;
  v33.origin.y = v15;
  v33.size.width = v23;
  v33.size.height = v22;
  CGRectGetMaxX(v33);
  CGRectRoundedForScale();
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__toPlayInAudiobook) setFrame:?];

  sub_1003997F8();
}

id sub_10039E704()
{
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeContainer) bounds];
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeMaxImageView);
  [v5 sizeThatFits:{v1, v3}];
  v6 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeMinImageView);
  [v6 sizeThatFits:{v2, v4}];
  if (*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm + 398) == 1)
  {
    CGRectRoundedForScale();
    x = v40.origin.x;
    y = v40.origin.y;
    width = v40.size.width;
    height = v40.size.height;
    CGRectGetMaxX(v40);
    v10 = x;
    CGRectRoundedForScale();
    v37 = v12;
    v38 = v11;
    v35 = v14;
    v36 = v13;
    v15 = height;
    CGRectRoundedForScale();
  }

  else
  {
    CGRectRoundedForScale();
    v20 = v41.origin.x;
    v21 = v41.origin.y;
    v22 = v41.size.width;
    v34 = v41.size.height;
    CGRectGetMaxX(v41);
    CGRectRoundedForScale();
    v37 = v24;
    v38 = v23;
    v35 = v26;
    v36 = v25;
    CGRectRoundedForScale();
    v10 = v27;
    v16 = v20;
    y = v28;
    v17 = v21;
    width = v29;
    v18 = v22;
    v15 = v30;
    v19 = v34;
  }

  [v6 setFrame:{v16, v17, v18, v19}];
  v31 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeView);
  if (v31)
  {
    [v31 setFrame:{v38, v37, v36, v35}];
  }

  return [v5 setFrame:{v10, y, width, v15}];
}

id sub_10039E964()
{
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__transportSubcontainer) bounds];
  v1 = (v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm);
  CGFloatRoundForScale();
  v3 = v2;
  CGFloatRoundForScale();
  v4 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipBackwardButton);
  [v4 setHitRectInsets:{v5, v3, v5, v3}];
  *&v4[OBJC_IVAR____TtC5Books25NowPlayingTransportButton_highlightIndicatorWidth] = v1[21] + 8.0;
  result = *&v4[OBJC_IVAR____TtC5Books25NowPlayingTransportButton_highlightIndicatorWidthConstraint];
  if (!result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [result setConstant:?];
  [v4 invalidateIntrinsicContentSize];
  CGRectRoundedForScale();
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipBackwardVibrancyEffectContainerView) setFrame:?];
  v7 = [v4 titleLabel];
  if (v7)
  {
    v8 = v7;
    [v7 setTextAlignment:1];
  }

  [v4 setContentHorizontalAlignment:0];
  [v4 setContentVerticalAlignment:0];
  CGFloatRoundForScale();
  v10 = v9;
  CGFloatRoundForScale();
  v11 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__playPause);
  [v11 setHitRectInsets:{v12, v10, v12, v10}];
  *&v11[OBJC_IVAR____TtC5Books25NowPlayingTransportButton_highlightIndicatorWidth] = v1[23] + 8.0;
  result = *&v11[OBJC_IVAR____TtC5Books25NowPlayingTransportButton_highlightIndicatorWidthConstraint];
  if (!result)
  {
    goto LABEL_12;
  }

  [result setConstant:?];
  [v11 invalidateIntrinsicContentSize];
  CGRectRoundedForScale();
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__playPauseVibrancyEffectContainerView) setFrame:?];
  CGFloatRoundForScale();
  v14 = v13;
  CGFloatRoundForScale();
  v15 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipForwardButton);
  [v15 setHitRectInsets:{v16, v14, v16, v14}];
  *&v15[OBJC_IVAR____TtC5Books25NowPlayingTransportButton_highlightIndicatorWidth] = v1[25] + 8.0;
  result = *&v15[OBJC_IVAR____TtC5Books25NowPlayingTransportButton_highlightIndicatorWidthConstraint];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  [result setConstant:?];
  [v15 invalidateIntrinsicContentSize];
  CGRectRoundedForScale();
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipForwardVibrancyEffectContainerView) setFrame:?];
  v17 = [v15 titleLabel];
  if (v17)
  {
    v18 = v17;
    [v17 setTextAlignment:1];
  }

  [v15 setContentHorizontalAlignment:0];

  return [v15 setContentVerticalAlignment:0];
}

id sub_10039ED24()
{
  v1 = v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm;
  if (*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm + 397))
  {
    v2 = 3.0;
  }

  else
  {
    v2 = 2.0;
  }

  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_bottomToolbarContainer) bounds];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  fmin((CGRectGetWidth(v10) - (v2 * 40.0 + *(v1 + 224))) / v2, 40.0);
  v7 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playbackSpeed);
  CGRectMakeWithSize();
  [v7 contentRectForBounds:?];
  [v7 titleRectForContentRect:?];
  CGRectGetMinX(v11);
  CGRectRoundedForScale();
  [v7 setFrame:?];
  CGRectRoundedForScale();
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_sleepButton) setFrame:?];
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  CGRectGetMaxX(v12);
  CGRectRoundedForScale();
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_tocButton) setFrame:?];
  CGRectRoundedForScale();
  result = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__routeView);
  if (result)
  {

    return [result setFrame:?];
  }

  return result;
}

id sub_10039EF44()
{
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_bottomToolbarContainer) bounds];
  CGRectGetWidth(v6);
  v1 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playbackSpeed);
  CGRectMakeWithSize();
  [v1 contentRectForBounds:?];
  [v1 titleRectForContentRect:?];
  CGRectGetMinX(v7);
  CGRectRoundedForScale();
  [v1 setFrame:?];
  CGRectRoundedForScale();
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_sleepButton) setFrame:?];
  CGRectRoundedForScale();
  v2 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__routeView);
  if (v2)
  {
    [v2 setFrame:?];
  }

  CGRectRoundedForScale();
  v3 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_tocButton);

  return [v3 setFrame:?];
}

void sub_10039F114(uint64_t a1)
{
  v6 = [objc_opt_self() bc_nowPlayingVibrantPrimary];
  v8.width = 6.0;
  v8.height = 6.5;
  UIGraphicsBeginImageContextWithOptions(v8, 0, 0.0);
  v2 = UIGraphicsGetCurrentContext();
  if (v2)
  {
    v3 = v2;
    v4 = [v6 CGColor];
    CGContextSetFillColorWithColor(v3, v4);

    v9.origin.x = 0.0;
    v9.origin.y = 0.5;
    v9.size.width = 6.0;
    v9.size.height = 6.0;
    CGContextFillEllipseInRect(v3, v9);
    v5 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [*(a1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_progressSlider) setThumbImage:v5 forState:0];
  }
}

double sub_10039F224()
{
  [v0 bounds];
  if (CGRectGetHeight(v3) > 0.0)
  {
    [v0 bounds];
    [v0 bounds];
    CGRectGetHeight(v5);
  }

  v1 = [objc_opt_self() currentDevice];
  [v1 userInterfaceIdiom];

  [v0 bounds];
  return 46.0;
}

double sub_10039F2CC()
{
  [v0 bounds];
  if (CGRectGetHeight(v3) > 0.0)
  {
    [v0 bounds];
    [v0 bounds];
    CGRectGetHeight(v5);
  }

  v1 = [objc_opt_self() currentDevice];
  [v1 userInterfaceIdiom];

  [v0 bounds];
  return 32.0;
}

uint64_t sub_10039F420(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain_n();
    v7 = a1;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    v9 = v8;
    if (!v8)
    {
      v8 = swift_unknownObjectRelease();
    }

    a4(v8);
    swift_unknownObjectRelease();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10039F4EC()
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    v1 = v0;
    if (swift_unknownObjectWeakLoadStrong())
    {
      [v1 value];
      sub_1002822D0(v2);
      swift_unknownObjectRelease();
    }
  }

  return swift_unknownObjectRelease();
}

void sub_10039F5F4(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  swift_unknownObjectRetain();
  v7 = a1;
  sub_10039F66C(a3, a4);
  swift_unknownObjectRelease();
}

uint64_t sub_10039F66C(uint64_t a1, SEL *a2)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [*(Strong + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler) *a2];
      swift_unknownObjectRelease();
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_10039F72C(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [*(result + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler) *a4];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10039F7A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 399))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 392);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10039F7FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 248) = 0u;
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
    *(result + 398) = 0;
    *(result + 396) = 0;
    *(result + 392) = 0;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 399) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 399) = 0;
    }

    if (a2)
    {
      *(result + 392) = a2 + 1;
    }
  }

  return result;
}

UIImage *sub_10039F8C0(char a1, void *a2, double a3, double a4)
{
  UIGraphicsBeginImageContextWithOptions(*&a3, 0, 0.0);
  [a2 set];
  v8 = [objc_allocWithZone(UIBezierPath) init];
  v9 = v8;
  if (a1)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = a3;
  }

  v11 = a3 + -1.0;
  if (a1)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = a3 + -1.0;
  }

  [v8 moveToPoint:{v10, 0.0}];
  [v9 addLineToPoint:{v12, 0.0}];
  [v9 addArcWithCenter:a1 & 1 radius:v12 startAngle:a4 * 0.5 endAngle:a4 * 0.5 clockwise:{4.71238898, 1.57079633}];
  [v9 addLineToPoint:{v10, a4}];
  [v9 closePath];
  [v9 fill];
  v13 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  if (v13)
  {
    if (a1)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0.0;
    }

    if (a1)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = v11;
    }

    v16 = [(UIImage *)v13 resizableImageWithCapInsets:0.0, v15, 0.0, v14];
  }

  else
  {

    return 0;
  }

  return v16;
}

void sub_10039FA54(void *a1)
{
  v2 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_buyButton;
  v4 = *&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_buyButton];
  *&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_buyButton] = a1;
  v3 = a1;
  [v4 removeFromSuperview];
  if (*&v1[v2])
  {
    [*&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_titlesContainer] addSubview:?];
  }

  [v1 setNeedsLayout];
}

uint64_t sub_10039FAF4(uint64_t a1)
{
  v2 = sub_1001F1160(&unk_100ADA6C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10039FB5C()
{
  *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for AudiobookNowPlayingFullscreenTouchView();
  sub_1001F1160(&qword_100ADF7D0);
  sub_1007A22E4();
  sub_10079ACD4();
  *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playImage) = 0;
  *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_pauseImage) = 0;
  *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_scrubberImpactBehavior) = 0;
  *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadState) = 3;
  *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView____lazy_storage___backgroundImageView) = 0;
  v1 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageShadowView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_bottomToolbarContainer;
  *(v0 + v3) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v4 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_dismissButton;
  v5 = objc_opt_self();
  *(v0 + v4) = [v5 buttonWithType:0];
  v6 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadIndicator;
  *(v0 + v6) = [objc_allocWithZone(IMRadialProgressButton) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v7 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadSpinner;
  *(v0 + v7) = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v8 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadButton;
  *(v0 + v8) = [v5 buttonWithType:0];
  v9 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_grabberView;
  *(v0 + v9) = [objc_allocWithZone(_UIGrabber) init];
  v10 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_hudTrack;
  *(v0 + v10) = [objc_allocWithZone(BKHUDTrack) init];
  v11 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_loadingSpinner;
  *(v0 + v11) = [objc_allocWithZone(UIActivityIndicatorView) init];
  v12 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_overflowButton;
  *(v0 + v12) = [objc_opt_self() buttonWithType:0];
  v13 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_played;
  *(v0 + v13) = [objc_allocWithZone(UILabel) init];
  v14 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_progressSlider;
  *(v0 + v14) = [objc_allocWithZone(BKScrubberSlider) init];
  v15 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playbackSpeed;
  *(v0 + v15) = [v5 buttonWithType:0];
  v16 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleLabel;
  *(v0 + v16) = [objc_allocWithZone(UILabel) init];
  v17 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleMarqueeView;
  *(v0 + v17) = [objc_allocWithZone(MPUMarqueeView) init];
  v18 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleLabel;
  *(v0 + v18) = [objc_allocWithZone(UILabel) init];
  v19 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleMarqueeView;
  *(v0 + v19) = [objc_allocWithZone(MPUMarqueeView) init];
  v20 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_sleepButton;
  type metadata accessor for SleepButton();
  *(v0 + v20) = [swift_getObjCClassFromMetadata() buttonWithType:0];
  v21 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlay;
  *(v0 + v21) = [objc_allocWithZone(UILabel) init];
  v22 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_titlesContainer;
  *(v0 + v22) = [objc_allocWithZone(type metadata accessor for ConstraintsDisabledView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v23 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_tocButton;
  *(v0 + v23) = [objc_allocWithZone(type metadata accessor for AudiobookNowPlayingTOCButton()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_transportContainer;
  *(v0 + v24) = [objc_allocWithZone(type metadata accessor for TransportContainer()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v25 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_backgroundGradientLayer;
  *(v0 + v25) = [objc_allocWithZone(CAGradientLayer) init];
  v26 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lowerHalfGradientLayer;
  *(v0 + v26) = [objc_allocWithZone(CAGradientLayer) init];
  v27 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__playPause;
  type metadata accessor for NowPlayingTransportButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v27) = [ObjCClassFromMetadata buttonWithType:0];
  v29 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipForwardButton;
  *(v0 + v29) = [ObjCClassFromMetadata buttonWithType:0];
  v30 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipBackwardButton;
  *(v0 + v30) = [ObjCClassFromMetadata buttonWithType:0];
  v31 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__toPlayInAudiobook;
  *(v0 + v31) = [objc_allocWithZone(UILabel) init];
  v32 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__mainViewContainer;
  *(v0 + v32) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v33 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__transportSubcontainer;
  *(v0 + v33) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v34 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeContainer;
  *(v0 + v34) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v35 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeMaxImageView;
  *(v0 + v35) = [objc_allocWithZone(UIImageView) init];
  v36 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeMinImageView;
  *(v0 + v36) = [objc_allocWithZone(UIImageView) init];
  *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_buyButton) = 0;
  v37 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__routeView;
  *(v0 + v37) = [objc_allocWithZone(AVRoutePickerView) init];
  v38 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeView;
  *(v0 + v38) = [objc_allocWithZone(MPVolumeView) init];
  v39 = (v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm);
  v39[22] = 0u;
  v39[23] = 0u;
  v39[20] = 0u;
  v39[21] = 0u;
  v39[18] = 0u;
  v39[19] = 0u;
  v39[16] = 0u;
  v39[17] = 0u;
  v39[14] = 0u;
  v39[15] = 0u;
  v39[12] = 0u;
  v39[13] = 0u;
  v39[10] = 0u;
  v39[11] = 0u;
  v39[8] = 0u;
  v39[9] = 0u;
  v39[6] = 0u;
  v39[7] = 0u;
  v39[4] = 0u;
  v39[5] = 0u;
  v39[2] = 0u;
  v39[3] = 0u;
  *v39 = 0u;
  v39[1] = 0u;
  *(v39 + 383) = 0u;
  v40 = (v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlayInAudiobookTextLong);
  *v40 = 0;
  v40[1] = 0;
  v41 = (v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlayInAudiobookTextShort);
  *v41 = 0;
  v41[1] = 0;
  sub_1007A38A4();
  __break(1u);
}

uint64_t type metadata accessor for GetSampleActionItem()
{
  result = qword_100ADF838;
  if (!qword_100ADF838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003A02D8()
{
  sub_1001FEBC8(319, &unk_100AE9C00);
  if (v0 <= 0x3F)
  {
    sub_1001FEBC8(319, &qword_100AD4AF0);
    if (v1 <= 0x3F)
    {
      sub_1001FEB70();
      if (v2 <= 0x3F)
      {
        sub_1001FEBC8(319, &qword_100AE9C10);
        if (v3 <= 0x3F)
        {
          sub_100797144();
          if (v4 <= 0x3F)
          {
            sub_1001FEBC8(319, &unk_100ADF848);
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

uint64_t sub_1003A0444()
{
  v1 = v0;
  v2 = sub_1007971A4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v23 - v7;
  sub_10000E3E8(v0, v0[3]);
  sub_100797784();
  v9 = *(v3 + 104);
  v9(v5, enum case for ContextActionSource.unifiedProductItem(_:), v2);
  v10 = sub_100797184();
  v11 = *(v3 + 8);
  v11(v5, v2);
  v11(v8, v2);
  if ((v10 & 1) == 0)
  {
    v12 = v1[3];
    v23[1] = v1[4];
    sub_10000E3E8(v1, v12);
    sub_100797784();
    v9(v5, enum case for ContextActionSource.productPage(_:), v2);
    v13 = sub_100797184();
    v11(v5, v2);
    v11(v8, v2);
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  sub_10025FCD8(&v24);
  if (!v25)
  {
    sub_100007840(&v24, &qword_100AD4B40);
    return 0;
  }

  sub_1001FF7C8(&v24, &v26);
  sub_10000E3E8(&v26, v27);
  v14 = *(sub_1007975C4() + 16);

  if (v14 < 2)
  {
    sub_1000074E0(&v26);
    return 0;
  }

  sub_10000E3E8(&v26, v27);
  result = sub_1007975C4();
  v16 = result;
  v17 = result + 32;
  v18 = -*(result + 16);
  v19 = -1;
  while (1)
  {
    v20 = v18 + v19 != -1;
    if (v18 + v19 == -1)
    {
LABEL_10:

LABEL_15:
      sub_1000074E0(&v26);
      return v20;
    }

    if (++v19 >= *(v16 + 16))
    {
      break;
    }

    sub_100009864(v17, &v24);
    sub_10000E3E8(&v24, v25);
    v21 = sub_100799504();
    if (v21 == 2)
    {

      sub_1000074E0(&v24);
      goto LABEL_15;
    }

    v22 = v21;
    v17 += 40;
    result = sub_1000074E0(&v24);
    if ((v22 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void *sub_1003A0780()
{
  sub_10025FCD8(&v40);
  if (!v41)
  {
    sub_100007840(&v40, &qword_100AD4B40);
    return _swiftEmptyArrayStorage;
  }

  v36 = v0;
  sub_1001FF7C8(&v40, &v42);
  v39 = _swiftEmptyArrayStorage;
  v1 = _swiftEmptyDictionarySingleton;
  v38 = _swiftEmptyDictionarySingleton;
  sub_10000E3E8(&v42, v43);
  v2 = sub_1007975C4();
  v3 = v2;
  v4 = *(v2 + 16);
  if (!v4)
  {
LABEL_24:

    sub_10000E3E8(&v42, v43);
    v29 = sub_1007975C4();
    v30 = v29;
    v31 = *(v29 + 16);
    if (v31)
    {
      v32 = 0;
      v33 = v29 + 32;
      while (v32 < *(v30 + 16))
      {
        sub_100009864(v33, &v40);
        sub_1003A0AD0(&v40, v36, &v42, &v38, &v39);
        ++v32;
        sub_1000074E0(&v40);
        v33 += 40;
        if (v31 == v32)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_32;
    }

LABEL_28:

    v34 = v39;
    sub_1000074E0(&v42);
    return v34;
  }

  v5 = 0;
  v6 = v2 + 32;
  while (v5 < *(v3 + 16))
  {
    sub_100009864(v6, &v40);
    sub_10000E3E8(&v40, v41);
    v8 = sub_1007994F4();
    if (!v9)
    {
      goto LABEL_6;
    }

    v10 = v8;
    v11 = v9;
    v12 = v1[2];
    if (v12)
    {
      v13 = sub_10000E53C(v8, v9);
      if (v14)
      {
        v12 = *(v1[7] + 8 * v13);
      }

      else
      {
        v12 = 0;
      }
    }

    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_33;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v38;
    v17 = sub_10000E53C(v10, v11);
    v19 = v38[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      goto LABEL_34;
    }

    v23 = v18;
    if (v38[3] < v22)
    {
      sub_1003D4D6C(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_10000E53C(v10, v11);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_36;
      }

LABEL_19:
      if ((v23 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_4;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_19;
    }

    v28 = v17;
    sub_1002F15B4();
    v17 = v28;
    if ((v23 & 1) == 0)
    {
LABEL_20:
      v1 = v38;
      v38[(v17 >> 6) + 8] |= 1 << v17;
      v25 = (v37[6] + 16 * v17);
      *v25 = v10;
      v25[1] = v11;
      *(v37[7] + 8 * v17) = v15;
      v26 = v37[2];
      v21 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v21)
      {
        goto LABEL_35;
      }

      v37[2] = v27;
      goto LABEL_5;
    }

LABEL_4:
    v7 = v17;

    v1 = v38;
    *(v38[7] + 8 * v7) = v15;
LABEL_5:
    v38 = v1;
LABEL_6:
    ++v5;
    sub_1000074E0(&v40);
    v6 += 40;
    if (v4 == v5)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);

  sub_1000074E0(&v40);
  __break(1u);
LABEL_36:
  result = sub_1007A3B24();
  __break(1u);
  return result;
}

void sub_1003A0AD0(void *a1, void *a2, void *a3, objc_class *a4, uint64_t *a5)
{
  v87 = a5;
  v88 = a3;
  v89 = a4;
  v82 = type metadata accessor for ListenSampleActionItem();
  __chkstk_darwin(v82);
  v83 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v81 = &v81 - v9;
  SampleActionItem = type metadata accessor for ReadSampleActionItem();
  __chkstk_darwin(SampleActionItem);
  v86 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v84 = &v81 - v12;
  v13 = sub_100797474();
  v92 = *(v13 - 8);
  v93 = v13;
  __chkstk_darwin(v13);
  v91 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v90 = &v81 - v16;
  v17 = sub_1007971A4();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009864(a1, &v94);
  v21 = objc_allocWithZone(sub_100797424());
  sub_100797414();
  sub_10000E3E8(a2, a2[3]);
  v22 = a2;
  sub_100797714();
  v23 = objc_allocWithZone(sub_100797454());
  v24 = sub_100797434();
  (*(v18 + 104))(v20, enum case for ContextActionSource.getSampleActionItem(_:), v17);
  v25 = sub_100797194();
  v27 = v26;
  (*(v18 + 8))(v20, v17);
  v28 = a1;
  v95 = &type metadata for String;
  *&v94 = v25;
  *(&v94 + 1) = v27;
  sub_100797384();
  sub_10000E3E8(v88, v88[3]);
  sub_100797674();
  sub_100797334();
  sub_10000E3E8(a2, a2[3]);
  sub_100797734();
  sub_100797354();
  sub_10000E3E8(a1, a1[3]);
  v29 = sub_1007994F4();
  if (v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0xE000000000000000;
  }

  if (*(*v89 + 16))
  {
    if (!v30)
    {
      v29 = 0;
    }

    sub_10000E53C(v29, v31);
  }

  else
  {
  }

  sub_1007973D4();
  v32 = objc_opt_self();
  v33 = v24;
  v34 = [v32 defaultManager];
  v35 = v90;
  sub_100797464();
  v89 = type metadata accessor for ContextActionData();
  v36 = objc_allocWithZone(v89);
  v37 = v91;
  v38 = v92;
  v39 = v93;
  (*(v92 + 16))(v91, v35, v93);
  v40 = sub_1003DC344(v33, v34, v37, v36);
  (*(v38 + 8))(v35, v39);
  if (!v40)
  {

    return;
  }

  sub_10000E3E8(v28, v28[3]);
  sub_1007994E4();
  v41 = sub_100799534();
  v43 = v42;
  if (v41 == sub_100799534() && v43 == v44)
  {

    v45 = v33;
LABEL_15:
    v47 = v84;
    *(v84 + 3) = v89;
    *(v47 + 4) = sub_1003A2170(&qword_100ADF908, type metadata accessor for ContextActionData);
    *v47 = v40;
    sub_100009864((v22 + 5), (v47 + 40));
    v48 = v22[10];
    sub_100009864((v22 + 11), (v47 + 88));
    v49 = SampleActionItem;
    v50 = *(SampleActionItem + 32);
    v51 = enum case for ContextActionType.readSample(_:);
    v52 = sub_100797144();
    (*(*(v52 - 8) + 104))(&v47[v50], v51, v52);
    *(v47 + 10) = v48;
    v47[*(v49 + 36)] = 1;
    v53 = v86;
    sub_1003A20A8(v47, v86, type metadata accessor for ReadSampleActionItem);
    v54 = v87;
    v55 = *v87;
    v56 = v48;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v54 = v55;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v55 = sub_10066B4F4(0, v55[2] + 1, 1, v55);
      *v54 = v55;
    }

    v59 = v55[2];
    v58 = v55[3];
    v60 = v59 + 1;
    if (v59 >= v58 >> 1)
    {
      *v54 = sub_10066B4F4((v58 > 1), v59 + 1, 1, v55);
    }

    v61 = type metadata accessor for ReadSampleActionItem;
    sub_1003A2110(v47, type metadata accessor for ReadSampleActionItem);
    v95 = v49;
    v62 = &qword_100AD1EA0;
    v63 = type metadata accessor for ReadSampleActionItem;
LABEL_20:
    v96 = sub_1003A2170(v62, v63);
    v64 = sub_1002256EC(&v94);
    sub_1003A20A8(v53, v64, v61);
    v65 = *v54;
    *(v65 + 16) = v60;
    sub_1000077C0(&v94, v65 + 40 * v59 + 32);
    sub_1003A2110(v53, v61);
    return;
  }

  v46 = sub_1007A3AB4();

  v45 = v33;
  if (v46)
  {
    goto LABEL_15;
  }

  sub_10000E3E8(v28, v28[3]);
  sub_1007994E4();
  v66 = sub_100799534();
  v68 = v67;
  if (v66 == sub_100799534() && v68 == v69)
  {

LABEL_25:
    v71 = v81;
    *(v81 + 3) = v89;
    *(v71 + 4) = sub_1003A2170(&qword_100ADF908, type metadata accessor for ContextActionData);
    *v71 = v40;
    sub_100009864((v22 + 5), (v71 + 40));
    v72 = v22[10];
    sub_100009864((v22 + 11), (v71 + 88));
    v73 = v82;
    v74 = *(v82 + 32);
    v75 = enum case for ContextActionType.audioSample(_:);
    v76 = sub_100797144();
    (*(*(v76 - 8) + 104))(&v71[v74], v75, v76);
    *(v71 + 10) = v72;
    v71[*(v73 + 36)] = 1;
    v53 = v83;
    sub_1003A20A8(v71, v83, type metadata accessor for ListenSampleActionItem);
    v54 = v87;
    v77 = *v87;
    v78 = v72;
    v79 = swift_isUniquelyReferenced_nonNull_native();
    *v54 = v77;
    if ((v79 & 1) == 0)
    {
      v77 = sub_10066B4F4(0, v77[2] + 1, 1, v77);
      *v54 = v77;
    }

    v59 = v77[2];
    v80 = v77[3];
    v60 = v59 + 1;
    if (v59 >= v80 >> 1)
    {
      *v54 = sub_10066B4F4((v80 > 1), v59 + 1, 1, v77);
    }

    v61 = type metadata accessor for ListenSampleActionItem;
    sub_1003A2110(v71, type metadata accessor for ListenSampleActionItem);
    v95 = v73;
    v62 = &qword_100AD1E98;
    v63 = type metadata accessor for ListenSampleActionItem;
    goto LABEL_20;
  }

  v70 = sub_1007A3AB4();

  if (v70)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1003A1484()
{
  sub_1003A0780();
  swift_getKeyPath();
  sub_1001F1160(&qword_100ADF8F8);
  sub_100005920(&qword_100ADF900, &qword_100ADF8F8);
  return sub_10079E264();
}

uint64_t sub_1003A15B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000E3E8(a1, a1[3]);
  sub_100796FD4();
  v3 = sub_10000E3E8(v9, v9[3]);
  v4 = __chkstk_darwin(v3);
  (*(v6 + 16))(&v9[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *a2 = sub_10079E1B4();
  return sub_1000074E0(v9);
}

uint64_t sub_1003A16B8()
{
  sub_1001F1160(&qword_100ADF8E8);
  sub_1003A202C();
  return sub_10079DFC4();
}

uint64_t sub_1003A1754@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for GetSampleActionItem();
  sub_1003A2170(&qword_100AD1EE0, type metadata accessor for GetSampleActionItem);
  sub_100797094();
  sub_100206ECC();
  result = sub_10079D5D4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1003A1800@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GetSampleActionItem();
  sub_1003A2170(&qword_100AD1EE0, type metadata accessor for GetSampleActionItem);
  result = sub_100797084();
  if (result)
  {
    result = sub_10079DF04();
  }

  *a1 = result;
  return result;
}

uint64_t sub_1003A18E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1001F1160(&qword_100ADF890);
  a2[3] = v5;
  a2[4] = sub_1003A1E4C();
  v6 = sub_1002256EC(a2);
  sub_1001F1160(&qword_100ADF8C0);
  sub_1001F1160(&qword_100ADF8C8);
  sub_100005920(&qword_100ADF8D0, &qword_100ADF8C0);
  sub_1003A1F30();
  sub_10079D534();
  KeyPath = swift_getKeyPath();
  sub_100009864(v2 + *(a1 + 36), v10);
  v8 = (v6 + *(v5 + 36));
  sub_1003A1FAC(v10, (v8 + 1));
  *v8 = KeyPath;
  return sub_100007840(v10, &qword_100ADF8E0);
}

uint64_t sub_1003A1A64()
{
  sub_1007A26F4();
  *(v0 + 16) = sub_1007A26E4();
  v2 = sub_1007A2694();

  return _swift_task_switch(sub_1003A1AF8, v2, v1);
}

uint64_t sub_1003A1AF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003A1B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_100009864(a1, a6);
  sub_100009864(a2, a6 + 40);
  sub_100009864(a4, a6 + 88);
  v12 = (a6 + *(a5 + 36));
  v12[3] = sub_1007978D4();
  v12[4] = sub_1003A2170(&qword_100ADF888, &type metadata accessor for ContextActionItemCoverProvider);
  sub_1002256EC(v12);
  sub_1007978C4();
  sub_1000074E0(a4);
  sub_1000074E0(a2);
  sub_1000074E0(a1);
  v13 = *(a5 + 32);
  v14 = enum case for ContextActionType.getSample(_:);
  v15 = sub_100797144();
  result = (*(*(v15 - 8) + 104))(a6 + v13, v14, v15);
  *(a6 + 80) = a3;
  return result;
}

uint64_t sub_1003A1C88(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1002C4C90;

  return AsyncContextActionItem.asyncSubMenu.getter(a1, a2);
}

uint64_t sub_1003A1D54@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = *(a6 + 32);
  v15 = enum case for ContextActionType.getSample(_:);
  v16 = sub_100797144();
  (*(*(v16 - 8) + 104))(a7 + v14, v15, v16);
  sub_1000077C0(a1, a7);
  sub_1000077C0(a2, a7 + 40);
  *(a7 + 80) = a3;
  sub_1000077C0(a4, a7 + 88);
  v17 = a7 + *(a6 + 36);

  return sub_1000077C0(a5, v17);
}

unint64_t sub_1003A1E4C()
{
  result = qword_100ADF898;
  if (!qword_100ADF898)
  {
    sub_1001F1234(&qword_100ADF890);
    sub_100005920(&qword_100ADF8A0, &qword_100ADF8A8);
    sub_100005920(&qword_100ADF8B0, &qword_100ADF8B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF898);
  }

  return result;
}

unint64_t sub_1003A1F30()
{
  result = qword_100ADF8D8;
  if (!qword_100ADF8D8)
  {
    sub_1001F1234(&qword_100ADF8C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF8D8);
  }

  return result;
}

uint64_t sub_1003A1FAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100ADF8E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003A202C()
{
  result = qword_100ADF8F0;
  if (!qword_100ADF8F0)
  {
    sub_1001F1234(&qword_100ADF8E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF8F0);
  }

  return result;
}

uint64_t sub_1003A20A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003A2110(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003A2170(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003A21B8()
{
  v0 = sub_100796044();
  sub_100009A38(v0, qword_100B23258);
  v1 = sub_100008B98(v0, qword_100B23258);
  v2 = enum case for ShortcutTileColor.tangerine(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_1003A2244@<X0>(uint64_t a1@<X8>)
{
  if (qword_100AD14C8 != -1)
  {
    swift_once();
  }

  v2 = sub_100796044();
  v3 = sub_100008B98(v2, qword_100B23258);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1003A22FC()
{
  v169 = sub_1001F1160(&qword_100ADF910);
  __chkstk_darwin(v169);
  v179 = &v153 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v178 = &v153 - v2;
  __chkstk_darwin(v3);
  v177 = &v153 - v4;
  __chkstk_darwin(v5);
  v176 = &v153 - v6;
  __chkstk_darwin(v7);
  v175 = &v153 - v8;
  __chkstk_darwin(v9);
  v174 = &v153 - v10;
  __chkstk_darwin(v11);
  v173 = &v153 - v12;
  __chkstk_darwin(v13);
  v172 = &v153 - v14;
  __chkstk_darwin(v15);
  v171 = &v153 - v16;
  __chkstk_darwin(v17);
  v170 = &v153 - v18;
  __chkstk_darwin(v19);
  v168 = &v153 - v20;
  __chkstk_darwin(v21);
  v167 = &v153 - v22;
  v192 = sub_1007967F4();
  v196 = *(v192 - 8);
  __chkstk_darwin(v192);
  v190 = (&v153 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v189 = sub_100796CF4();
  v195 = *(v189 - 8);
  __chkstk_darwin(v189);
  v188 = &v153 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v186 = &v153 - v26;
  v187 = sub_1007A21D4();
  v200 = *(v187 - 8);
  __chkstk_darwin(v187);
  v184 = &v153 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v183 = &v153 - v29;
  v30 = sub_100796814();
  __chkstk_darwin(v30 - 8);
  v185 = &v153 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = sub_100795B94();
  v206 = *(v202 - 8);
  __chkstk_darwin(v202);
  v199 = &v153 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1001F1160(&qword_100ADF918);
  __chkstk_darwin(v33);
  v164 = &v153 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v163 = (&v153 - v36);
  __chkstk_darwin(v37);
  v162 = &v153 - v38;
  __chkstk_darwin(v39);
  v160 = &v153 - v40;
  __chkstk_darwin(v41);
  v159 = &v153 - v42;
  __chkstk_darwin(v43);
  v158 = (&v153 - v44);
  __chkstk_darwin(v45);
  v157 = (&v153 - v46);
  __chkstk_darwin(v47);
  v156 = &v153 - v48;
  __chkstk_darwin(v49);
  v155 = &v153 - v50;
  __chkstk_darwin(v51);
  v165 = (&v153 - v52);
  __chkstk_darwin(v53);
  v154 = &v153 - v54;
  __chkstk_darwin(v55);
  v191 = sub_100795C74();
  v194 = *(v191 - 8);
  __chkstk_darwin(v191);
  v182 = &v153 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v217, 0, sizeof(v217));
  *&v211 = sub_100213FC4(0, v217);
  *(&v211 + 1) = v57;
  *&v212 = v58;
  sub_1001F1160(&qword_100ADF920);
  v59 = *(sub_1001F1160(&qword_100ADF928) - 8);
  v60 = *(v59 + 72);
  v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v62 = swift_allocObject();
  v166 = v62;
  *(v62 + 16) = xmmword_10081FB80;
  v63 = v62 + v61;
  sub_100214EF0();
  v180 = 0xD000000000000011;
  sub_100795AE4();
  v201 = 0xD000000000000014;
  sub_100795AE4();
  v181 = 0xD000000000000010;
  sub_100795AE4();
  v161 = 0xD000000000000013;
  sub_100795AE4();
  sub_100795AE4();
  v198 = 0xD000000000000018;
  sub_100795AE4();
  v193 = 0xD000000000000015;
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  v197 = v63;
  sub_100795AE4();
  sub_100795AE4();
  v153 = v63 + 12 * v60;
  sub_100795B14();
  v218._object = 0x80000001008CF6D0;
  v218._countAndFlagsBits = 0xD000000000000015;
  sub_100795B04(v218);
  v203 = enum case for AppShortcutPhraseToken.applicationName(_:);
  v64 = v206;
  v65 = *(v206 + 104);
  v205 = v206 + 104;
  v207 = v65;
  v66 = v199;
  v67 = v202;
  v65(v199);
  sub_100795AF4();
  v68 = *(v64 + 8);
  v206 = v64 + 8;
  v68(v66, v67);
  v219._countAndFlagsBits = 0;
  v219._object = 0xE000000000000000;
  sub_100795B04(v219);
  sub_100795B24();
  v69 = v197;
  v153 = v197 + 13 * v60;
  sub_100795B14();
  v220._object = 0x80000001008CF6F0;
  v220._countAndFlagsBits = v198;
  sub_100795B04(v220);
  v70 = v203;
  v71 = v202;
  v207(v66, v203, v202);
  sub_100795AF4();
  v68(v66, v71);
  v204 = v68;
  v221._countAndFlagsBits = 0;
  v221._object = 0xE000000000000000;
  sub_100795B04(v221);
  sub_100795B24();
  v154 = (v69 + 14 * v60);
  sub_100795B14();
  v222._object = 0x80000001008CF710;
  v222._countAndFlagsBits = v201;
  sub_100795B04(v222);
  v72 = v70;
  v73 = v207;
  v207(v66, v72, v71);
  sub_100795AF4();
  v68(v66, v71);
  v223._countAndFlagsBits = 0;
  v223._object = 0xE000000000000000;
  sub_100795B04(v223);
  sub_100795B24();
  v154 = (16 * v60);
  v153 = 15 * v60;
  v74 = v60;
  sub_100795B14();
  v224._countAndFlagsBits = 0xD000000000000017;
  v165 = 0xD000000000000017;
  v224._object = 0x80000001008CF730;
  sub_100795B04(v224);
  v73(v66, v203, v71);
  sub_100795AF4();
  v75 = v204;
  v204(v66, v71);
  v225._countAndFlagsBits = 0;
  v225._object = 0xE000000000000000;
  sub_100795B04(v225);
  sub_100795B24();
  sub_100795B14();
  v226._object = 0x80000001008CF750;
  v226._countAndFlagsBits = 0xD000000000000019;
  sub_100795B04(v226);
  v76 = v203;
  v207(v66, v203, v71);
  sub_100795AF4();
  v75(v66, v71);
  v227._countAndFlagsBits = 0;
  v227._object = 0xE000000000000000;
  sub_100795B04(v227);
  v77 = v154;
  sub_100795B24();
  v156 = &v77[v60];
  sub_100795B14();
  v228._countAndFlagsBits = 0xD00000000000001CLL;
  v228._object = 0x80000001008CF770;
  sub_100795B04(v228);
  v78 = v76;
  v79 = v76;
  v80 = v202;
  v207(v66, v79, v202);
  sub_100795AF4();
  v75(v66, v80);
  v229._countAndFlagsBits = 0;
  v229._object = 0xE000000000000000;
  sub_100795B04(v229);
  v81 = v197;
  sub_100795B24();
  v157 = (v81 + 18 * v74);
  sub_100795B14();
  v230._object = 0x80000001008CF790;
  v230._countAndFlagsBits = 0xD000000000000019;
  sub_100795B04(v230);
  v207(v66, v78, v80);
  sub_100795AF4();
  v204(v66, v80);
  v231._countAndFlagsBits = 0;
  v231._object = 0xE000000000000000;
  sub_100795B04(v231);
  sub_100795B24();
  v158 = (v81 + 19 * v74);
  sub_100795B14();
  v232._object = 0x80000001008CF7B0;
  v232._countAndFlagsBits = v198;
  sub_100795B04(v232);
  v82 = v202;
  v207(v66, v78, v202);
  sub_100795AF4();
  v204(v66, v82);
  v233._countAndFlagsBits = 0;
  v233._object = 0xE000000000000000;
  sub_100795B04(v233);
  sub_100795B24();
  v159 = (v81 + 20 * v74);
  sub_100795B14();
  v234._countAndFlagsBits = 0xD00000000000001DLL;
  v234._object = 0x80000001008CF7D0;
  sub_100795B04(v234);
  v83 = v203;
  v84 = v82;
  v85 = v82;
  v86 = v207;
  v207(v66, v203, v85);
  sub_100795AF4();
  v204(v66, v84);
  v235._countAndFlagsBits = 0;
  v235._object = 0xE000000000000000;
  sub_100795B04(v235);
  sub_100795B24();
  v160 = (v81 + 21 * v74);
  sub_100795B14();
  v236._countAndFlagsBits = 0xD000000000000027;
  v236._object = 0x80000001008CF7F0;
  sub_100795B04(v236);
  v87 = v83;
  v88 = v202;
  v86(v66, v87, v202);
  sub_100795AF4();
  v204(v66, v88);
  v237._countAndFlagsBits = 0;
  v237._object = 0xE000000000000000;
  sub_100795B04(v237);
  sub_100795B24();
  v162 = (v81 + 22 * v74);
  sub_100795B14();
  v238._countAndFlagsBits = 0xD00000000000001DLL;
  v238._object = 0x80000001008CF820;
  sub_100795B04(v238);
  v89 = v202;
  v207(v66, v203, v202);
  sub_100795AF4();
  v90 = v204;
  v204(v66, v89);
  v239._countAndFlagsBits = 0;
  v239._object = 0xE000000000000000;
  sub_100795B04(v239);
  sub_100795B24();
  v163 = (v81 + 23 * v74);
  sub_100795B14();
  v240._object = 0x80000001008CF840;
  v240._countAndFlagsBits = v181;
  sub_100795B04(v240);
  v91 = v202;
  v207(v66, v203, v202);
  sub_100795AF4();
  v90(v66, v91);
  v241._countAndFlagsBits = 0;
  v241._object = 0xE000000000000000;
  sub_100795B04(v241);
  sub_100795B24();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  v155 = 0xD000000000000016;
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  v92 = v183;
  sub_1007A2154();
  v93 = v186;
  sub_100796C94();
  v94 = *(v200 + 16);
  v164 = (v200 + 16);
  v165 = v94;
  v95 = v187;
  v94(v184, v92, v187);
  v96 = v195;
  v97 = *(v195 + 16);
  v162 = (v195 + 16);
  v163 = v97;
  v98 = v189;
  v97(v188, v93, v189);
  v161 = type metadata accessor for BundleFinder();
  v99 = v190;
  *v190 = v161;
  LODWORD(v159) = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v100 = *(v196 + 104);
  v196 += 104;
  v160 = v100;
  (v100)(v99);
  sub_100796834();
  v101 = *(v96 + 8);
  v195 = v96 + 8;
  v158 = v101;
  v101(v93, v98);
  v102 = *(v200 + 8);
  v200 += 8;
  v157 = v102;
  v102(v92, v95);
  v103 = v182;
  sub_100795C64();
  v181 = sub_100795B44();
  v104 = *(v194 + 8);
  v194 += 8;
  v166 = v104;
  v104(v103, v191);
  v216 = 0;
  v214 = 0u;
  v215 = 0u;
  v213 = 0u;
  v212 = 0u;
  v211 = 0u;
  v208 = sub_1006FD2E4(0, &v211);
  v209 = v105;
  v210 = v106;
  sub_1001F1160(&qword_100ADF930);
  v107 = *(sub_1001F1160(&qword_100ADF938) - 8);
  v108 = *(v107 + 72);
  v109 = (*(v107 + 80) + 32) & ~*(v107 + 80);
  v110 = swift_allocObject();
  v156 = v110;
  *(v110 + 16) = xmmword_10081FB90;
  v111 = v110 + v109;
  v201 = v111;
  sub_1003A5654();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  v198 = v111 + 12 * v108;
  sub_100795B14();
  v242._countAndFlagsBits = 0xD00000000000001ALL;
  v242._object = 0x80000001008D0400;
  sub_100795B04(v242);
  v112 = v199;
  v113 = v203;
  v114 = v202;
  v115 = v207;
  v207(v199, v203, v202);
  sub_100795AF4();
  v204(v112, v114);
  v243._countAndFlagsBits = 0;
  v243._object = 0xE000000000000000;
  sub_100795B04(v243);
  sub_100795B24();
  v198 = v201 + 13 * v108;
  sub_100795B14();
  v244._countAndFlagsBits = 0xD00000000000001DLL;
  v244._object = 0x80000001008D0420;
  sub_100795B04(v244);
  v116 = v199;
  v115(v199, v113, v114);
  sub_100795AF4();
  v117 = v204;
  v204(v116, v114);
  v245._countAndFlagsBits = 0;
  v245._object = 0xE000000000000000;
  sub_100795B04(v245);
  sub_100795B24();
  v198 = v201 + 14 * v108;
  sub_100795B14();
  v246._object = 0x80000001008D0440;
  v246._countAndFlagsBits = 0xD000000000000019;
  sub_100795B04(v246);
  v118 = v203;
  v207(v116, v203, v114);
  sub_100795AF4();
  v117(v116, v114);
  v247._countAndFlagsBits = 0;
  v247._object = 0xE000000000000000;
  sub_100795B04(v247);
  sub_100795B24();
  v197 = v108;
  v198 = 16 * v108;
  sub_100795B14();
  v248._countAndFlagsBits = 0xD00000000000001CLL;
  v248._object = 0x80000001008D0460;
  sub_100795B04(v248);
  v119 = v207;
  v207(v116, v118, v114);
  sub_100795AF4();
  v120 = v204;
  v204(v116, v114);
  v249._countAndFlagsBits = 0;
  v249._object = 0xE000000000000000;
  sub_100795B04(v249);
  sub_100795B24();
  sub_100795B14();
  v250._countAndFlagsBits = 0xD00000000000001ELL;
  v250._object = 0x80000001008D0480;
  sub_100795B04(v250);
  v121 = v202;
  v119(v116, v203, v202);
  sub_100795AF4();
  v120(v116, v121);
  v251._countAndFlagsBits = 0;
  v251._object = 0xE000000000000000;
  sub_100795B04(v251);
  v122 = v198;
  sub_100795B24();
  v198 = v122 + v197;
  sub_100795B14();
  v252._countAndFlagsBits = 0xD000000000000021;
  v252._object = 0x80000001008D04A0;
  sub_100795B04(v252);
  v123 = v203;
  v124 = v121;
  v207(v116, v203, v121);
  v125 = v116;
  sub_100795AF4();
  v120(v116, v121);
  v253._countAndFlagsBits = 0;
  v253._object = 0xE000000000000000;
  sub_100795B04(v253);
  v126 = v201;
  sub_100795B24();
  v127 = v197;
  v198 = v126 + 18 * v197;
  sub_100795B14();
  v254._countAndFlagsBits = 0xD00000000000001ELL;
  v254._object = 0x80000001008D04D0;
  sub_100795B04(v254);
  v207(v125, v123, v121);
  sub_100795AF4();
  v204(v125, v121);
  v255._countAndFlagsBits = 0;
  v255._object = 0xE000000000000000;
  sub_100795B04(v255);
  sub_100795B24();
  v128 = v201;
  v198 = v201 + 19 * v127;
  sub_100795B14();
  v256._countAndFlagsBits = 0xD00000000000001DLL;
  v256._object = 0x80000001008D04F0;
  sub_100795B04(v256);
  v129 = v207;
  v207(v125, v203, v124);
  sub_100795AF4();
  v130 = v204;
  v204(v125, v124);
  v257._countAndFlagsBits = 0;
  v257._object = 0xE000000000000000;
  sub_100795B04(v257);
  sub_100795B24();
  v198 = v128 + 20 * v127;
  sub_100795B14();
  v258._countAndFlagsBits = 0xD000000000000022;
  v258._object = 0x80000001008D0510;
  sub_100795B04(v258);
  v131 = v199;
  v132 = v203;
  v129(v199, v203, v124);
  sub_100795AF4();
  v130(v131, v124);
  v259._countAndFlagsBits = 0;
  v259._object = 0xE000000000000000;
  sub_100795B04(v259);
  sub_100795B24();
  v133 = v201;
  v134 = v197;
  v198 = v201 + 21 * v197;
  sub_100795B14();
  v260._countAndFlagsBits = 0xD000000000000031;
  v260._object = 0x80000001008D0540;
  sub_100795B04(v260);
  v135 = v132;
  v136 = v202;
  v137 = v207;
  v207(v131, v135, v202);
  sub_100795AF4();
  v138 = v136;
  v139 = v204;
  v204(v131, v138);
  v261._countAndFlagsBits = 0;
  v261._object = 0xE000000000000000;
  sub_100795B04(v261);
  sub_100795B24();
  v198 = v133 + 22 * v134;
  sub_100795B14();
  v262._countAndFlagsBits = 0xD000000000000027;
  v262._object = 0x80000001008D0580;
  sub_100795B04(v262);
  v140 = v203;
  v141 = v202;
  v137(v131, v203, v202);
  sub_100795AF4();
  v139(v131, v141);
  v263._countAndFlagsBits = 0;
  v263._object = 0xE000000000000000;
  sub_100795B04(v263);
  sub_100795B24();
  sub_100795B14();
  v264._object = 0x80000001008D05B0;
  v264._countAndFlagsBits = v193;
  sub_100795B04(v264);
  v207(v131, v140, v141);
  sub_100795AF4();
  v204(v131, v141);
  v265._countAndFlagsBits = 0;
  v265._object = 0xE000000000000000;
  sub_100795B04(v265);
  sub_100795B24();
  v142 = v183;
  sub_1007A2154();
  v143 = v186;
  sub_100796C94();
  v144 = v187;
  v165(v184, v142, v187);
  v145 = v143;
  v146 = v189;
  v163(v188, v143, v189);
  v147 = v190;
  *v190 = v161;
  (v160)(v147, v159, v192);
  sub_100796834();
  v158(v145, v146);
  v157(v142, v144);
  v148 = v182;
  sub_100795C64();
  v149 = sub_100795B44();
  v166(v148, v191);
  sub_1001F1160(&qword_100ADF948);
  v150 = swift_allocObject();
  *(v150 + 16) = xmmword_10080EFF0;
  *(v150 + 32) = v181;
  *(v150 + 40) = v149;
  v151 = sub_100795B34();

  return v151;
}

unint64_t sub_1003A5654()
{
  result = qword_100ADF940;
  if (!qword_100ADF940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF940);
  }

  return result;
}

uint64_t sub_1003A56A8(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1007A23C4();
  if (v1)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  return sub_1007A2344();
}

void sub_1003A5754()
{
  v1 = v0;
  v2 = sub_1001F1160(&unk_100ADFA90);
  v15 = *(v2 - 8);
  v16 = v2;
  __chkstk_darwin(v2);
  v4 = &v14 - v3;
  v5 = sub_1007A2E74();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v0 + OBJC_IVAR____TtC5Books18SidebarDataManager_selectedItemReceiver);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1001F1160(&unk_100AECA30);
  v14 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_100005920(&unk_100ADE5A0, &unk_100AECA30);
  sub_10079BB04();

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v9 = [objc_opt_self() defaultCenter];
  sub_1007A2E84();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005B5C();
  sub_10079BB04();

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v17 = *(v1 + OBJC_IVAR____TtC5Books18SidebarDataManager_standardItemsReceiver);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1001F1160(&unk_100ADFAA0);
  sub_100005920(&qword_100AD6A68, &unk_100ADFAA0);
  sub_10079BB04();

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  if (qword_100AD1700 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = sub_1001F1160(&qword_100ADFAB0);
  sub_10079B974();
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&qword_100ADFAB8, &unk_100ADFA90);
  v10 = v16;
  sub_10079BB04();

  v11 = *(v15 + 8);
  v11(v4, v10);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_10079B974();
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10079BB04();

  v11(v4, v10);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v12 = [objc_opt_self() sharedProvider];
  [v12 addObserver:v1 accountTypes:1];

  sub_10079AE34();
  v13 = sub_10079AE04();
  sub_10079ADE4();
}

void sub_1003A5DC4(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1)
    {
      v4 = v1;

      if (([v4 isSearch] & 1) == 0 && !objc_msgSend(v4, "isDefaultCollection"))
      {
        [v4 isCustomCollection];
      }

      sub_10079B8C4();
    }
  }
}

uint64_t sub_1003A5EE8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_100796584();
    if (v2)
    {
      v3 = v2;
      *&v11 = 0x6554686372616573;
      *(&v11 + 1) = 0xEA00000000007478;
      sub_1007A36B4();
      if (*(v3 + 16))
      {
        v4 = sub_10000E2A4(&v9);
        if (v5)
        {
          sub_100007484(*(v3 + 56) + 32 * v4, &v11);
          sub_10002899C(&v9);

          if (*(&v12 + 1))
          {
            v6 = swift_dynamicCast();
            v7 = v9;
            if (v6)
            {
              v8 = v10;
            }

            else
            {
              v7 = 0;
              v8 = 0;
            }

            goto LABEL_12;
          }

LABEL_11:
          sub_100007840(&v11, &unk_100AD5B40);
          v7 = 0;
          v8 = 0;
LABEL_12:
          v9 = v7;
          v10 = v8;
          sub_10079B8C4();
        }
      }

      sub_10002899C(&v9);
    }

    v11 = 0u;
    v12 = 0u;
    goto LABEL_11;
  }

  return result;
}

void sub_1003A6054(unint64_t *a1)
{
  v2 = sub_1001F1160(&qword_100ADFAC0);
  __chkstk_darwin(v2 - 8);
  v3 = sub_1001F1160(&qword_100ADFAC8);
  __chkstk_darwin(v3 - 8);
  v5 = &v108 - v4;
  v6 = sub_100796DC4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v109 = Strong;
  v129 = v10;

  if (_UISolariumEnabled())
  {
    sub_1003A7498(v10);
    sub_100796DB4();
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_100007840(v5, &qword_100ADFAC8);
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      sub_1001F1160(&qword_100AEB180);
      sub_100005920(&qword_100ADFB00, &qword_100AEB180);
      sub_1007A2104();
      (*(v7 + 8))(v9, v6);
    }
  }

  v13 = v129;
  if (v129 >> 62)
  {
LABEL_153:
    v106 = v13;
    v14 = sub_1007A38D4();
    v13 = v106;
    if (v14)
    {
      goto LABEL_8;
    }

LABEL_154:
    v16 = _swiftEmptyArrayStorage;
LABEL_155:

    *&v125 = v16;
    sub_1001F1160(&qword_100ADFAE8);
    sub_100005920(&unk_100ADFAF0, &qword_100ADFAE8);
    if (sub_1007A28A4())
    {
      v107 = v109;
      *&v125 = v16;
      sub_10079B8C4();
    }

    else
    {
    }

    return;
  }

  v14 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_154;
  }

LABEL_8:
  v15 = 0;
  v114 = v13 & 0xFFFFFFFFFFFFFF8;
  v115 = v13 & 0xC000000000000001;
  v16 = _swiftEmptyArrayStorage;
  *&v12 = 136315138;
  v110 = v12;
  v112 = v14;
  v113 = v13;
  while (1)
  {
    if (v115)
    {
      v13 = sub_1007A3784();
    }

    else
    {
      if (v15 >= *(v114 + 16))
      {
        goto LABEL_151;
      }

      v13 = *(v13 + 8 * v15 + 32);
    }

    v17 = v13;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
      goto LABEL_153;
    }

    v18 = [v13 isSearch];
    v119 = v15 + 1;
    if (v18)
    {
      break;
    }

    v29 = [v17 isDefaultCollection];
    v30 = &v17[OBJC_IVAR___BKRootBarItem_identifier];
    v28 = *&v17[OBJC_IVAR___BKRootBarItem_identifier + 8];
    v118 = *&v17[OBJC_IVAR___BKRootBarItem_identifier];

    if ((v29 & 1) == 0)
    {
      RootBarItem.title.getter(v149);
      v26 = v151;
      v117 = v150;

      sub_100007840(v149, &qword_100ADFAD0);
      v37 = *&v17[OBJC_IVAR___BKRootBarItem_iconNameOverride + 8];
      if (v37)
      {
        v38 = *&v17[OBJC_IVAR___BKRootBarItem_iconNameOverride];
        swift_bridgeObjectRetain_n();

        v39 = 0uLL;
        v34 = v38;
        v35 = v37;
        goto LABEL_22;
      }

      v50 = *v30;
      v51 = v30[1];
      v52 = *&v17[OBJC_IVAR___BKRootBarItem_countryCode + 8];
      if (v52 && (*&v17[OBJC_IVAR___BKRootBarItem_countryCode] == 28778 ? (v53 = v52 == 0xE200000000000000) : (v53 = 0), (v53 || (sub_1007A3AB4() & 1) != 0) && (v50 == 0x7972617262696CLL ? (v54 = v51 == 0xE700000000000000) : (v54 = 0), v54 || (sub_1007A3AB4() & 1) != 0)))
      {
        if (qword_100AD16F8 != -1)
        {
          swift_once();
        }

        v125 = xmmword_100AE5618;
        v126 = *&qword_100AE5628;
        v127 = xmmword_100AE5638;
        v128 = unk_100AE5648;
        v37 = *(&xmmword_100AE5618 + 1);
        v38 = xmmword_100AE5618;
        v35 = unk_100AE5630;
        v34 = qword_100AE5628;
        v116 = unk_100AE5648;
        v111 = xmmword_100AE5638;
        sub_1003A8518(&v125, &v121);
LABEL_139:

        v40 = v116;
        v39 = v111;
      }

      else
      {
        *&v116 = v16;
        *&v125 = v50;
        *(&v125 + 1) = v51;
        *&v121 = 0x3A6D6F74737563;
        *(&v121 + 1) = 0xE700000000000000;
        sub_1003A84C4();
        sub_100367368();
        if (sub_1007A20A4())
        {
          *&v125 = v50;
          *(&v125 + 1) = v51;

          v74 = sub_1007A23A4();
          if (v74)
          {
            if (v74 < 0)
            {
              goto LABEL_161;
            }

            sub_1007A23C4();
            v16 = v116;
            if (v75)
            {
              goto LABEL_164;
            }

            sub_1007A2344();
          }

          else
          {
            v16 = v116;
          }

          v100 = 14;
        }

        else
        {
          if (qword_100AD1688 != -1)
          {
            swift_once();
          }

          v90 = sub_10079ACE4();
          sub_100008B98(v90, qword_100AE4D38);

          v91 = sub_10079ACC4();
          v92 = sub_1007A29A4();

          if (os_log_type_enabled(v91, v92))
          {
            v93 = swift_slowAlloc();
            LODWORD(v111) = v92;
            v94 = v93;
            v95 = v91;
            v96 = swift_slowAlloc();
            *&v125 = v96;
            *v94 = v110;
            *(v94 + 4) = sub_1000070F4(v50, v51, &v125);
            _os_log_impl(&_mh_execute_header, v95, v111, "Can't extract collectionID from identifier: %s", v94, 0xCu);
            sub_1000074E0(v96);
          }

          else
          {
          }

          v16 = v116;

          v100 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(v50, v51);
          if (v100 == 16)
          {
            v100 = 15;
          }
        }

        sub_10047F800(v100, &v152);
        v37 = v153;
        if (v153)
        {
          v116 = v157;
          v111 = v156;
          v34 = v154;
          v35 = v155;
          v38 = v152;
          goto LABEL_139;
        }

        v38 = 0;
        v34 = 0;
        v39 = 0uLL;
        v37 = 0xE000000000000000;
        v35 = 0xE000000000000000;
LABEL_22:
        v40 = 0uLL;
      }

      *&v125 = v38;
      *(&v125 + 1) = v37;
      *&v126 = v34;
      *(&v126 + 1) = v35;
      v127 = v39;
      v128 = v40;

      v98 = &v125;
LABEL_141:
      sub_100007840(v98, &qword_100ADFAD0);
      v101 = 1;
      goto LABEL_142;
    }

    RootBarItem.title.getter(v142);
    v26 = v142[3];
    v117 = v142[2];

    sub_100007840(v142, &qword_100ADFAD0);
    v31 = *&v17[OBJC_IVAR___BKRootBarItem_iconNameOverride + 8];
    if (v31)
    {
      v32 = *&v17[OBJC_IVAR___BKRootBarItem_iconNameOverride];
      swift_bridgeObjectRetain_n();

      v33 = 0uLL;
      v34 = v32;
      v35 = v31;
    }

    else
    {
      v45 = *v30;
      v46 = v30[1];
      v47 = *&v17[OBJC_IVAR___BKRootBarItem_countryCode + 8];
      if (v47)
      {
        v48 = *&v17[OBJC_IVAR___BKRootBarItem_countryCode] == 28778 && v47 == 0xE200000000000000;
        if (v48 || (sub_1007A3AB4() & 1) != 0)
        {
          v49 = v45 == 0x7972617262696CLL && v46 == 0xE700000000000000;
          if (v49 || (sub_1007A3AB4() & 1) != 0)
          {
            if (qword_100AD16F8 != -1)
            {
              swift_once();
            }

            v125 = xmmword_100AE5618;
            v126 = *&qword_100AE5628;
            v127 = xmmword_100AE5638;
            v128 = unk_100AE5648;
            v31 = *(&xmmword_100AE5618 + 1);
            v32 = xmmword_100AE5618;
            v35 = unk_100AE5630;
            v34 = qword_100AE5628;
            v116 = unk_100AE5648;
            v111 = xmmword_100AE5638;
            sub_1003A8518(&v125, &v121);
            goto LABEL_132;
          }
        }
      }

      *&v116 = v16;
      *&v125 = v45;
      *(&v125 + 1) = v46;
      *&v121 = 0x3A6D6F74737563;
      *(&v121 + 1) = 0xE700000000000000;
      sub_1003A84C4();
      sub_100367368();
      if (sub_1007A20A4())
      {
        *&v125 = v45;
        *(&v125 + 1) = v46;

        v72 = sub_1007A23A4();
        if (v72)
        {
          if (v72 < 0)
          {
            goto LABEL_160;
          }

          sub_1007A23C4();
          v16 = v116;
          if (v73)
          {
            goto LABEL_165;
          }

          sub_1007A2344();
        }

        else
        {
          v16 = v116;
        }

        v99 = 14;
      }

      else
      {
        if (qword_100AD1688 != -1)
        {
          swift_once();
        }

        v83 = sub_10079ACE4();
        sub_100008B98(v83, qword_100AE4D38);

        v84 = sub_10079ACC4();
        v85 = sub_1007A29A4();

        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          LODWORD(v111) = v85;
          v87 = v86;
          v88 = v84;
          v89 = swift_slowAlloc();
          *&v125 = v89;
          *v87 = v110;
          *(v87 + 4) = sub_1000070F4(v45, v46, &v125);
          _os_log_impl(&_mh_execute_header, v88, v111, "Can't extract collectionID from identifier: %s", v87, 0xCu);
          sub_1000074E0(v89);
        }

        else
        {
        }

        v16 = v116;

        v99 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(v45, v46);
        if (v99 == 16)
        {
          v99 = 15;
        }
      }

      sub_10047F800(v99, &v143);
      v31 = v144;
      if (v144)
      {
        v116 = v148;
        v111 = v147;
        v35 = v146;
        v34 = v145;
        v32 = v143;
LABEL_132:

        v36 = v116;
        v33 = v111;
        goto LABEL_133;
      }

      v32 = 0;
      v34 = 0;
      v33 = 0uLL;
      v31 = 0xE000000000000000;
      v35 = 0xE000000000000000;
    }

    v36 = 0uLL;
LABEL_133:
    *&v125 = v32;
    *(&v125 + 1) = v31;
    *&v126 = v34;
    *(&v126 + 1) = v35;
    v127 = v33;
    v128 = v36;

    sub_100007840(&v125, &qword_100ADFAD0);
    v101 = 2;
LABEL_142:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_10066B518(0, *(v16 + 2) + 1, 1, v16);
    }

    v103 = *(v16 + 2);
    v102 = *(v16 + 3);
    if (v103 >= v102 >> 1)
    {
      v16 = sub_10066B518((v102 > 1), v103 + 1, 1, v16);
    }

    *(v16 + 2) = v103 + 1;
    v104 = &v16[56 * v103];
    v105 = v117;
    *(v104 + 4) = v118;
    *(v104 + 5) = v28;
    v104[48] = v101;
    *(v104 + 7) = v105;
    *(v104 + 8) = v26;
    *(v104 + 9) = v34;
    *(v104 + 10) = v35;
    ++v15;
    v13 = v113;
    if (v119 == v112)
    {
      goto LABEL_155;
    }
  }

  *&v116 = v16;
  v19 = &v17[OBJC_IVAR___BKRootBarItem_identifier];
  v21 = *&v17[OBJC_IVAR___BKRootBarItem_identifier];
  v20 = *&v17[OBJC_IVAR___BKRootBarItem_identifier + 8];
  v22 = *&v17[OBJC_IVAR___BKRootBarItem_titleOverride + 8];
  v118 = v21;
  if (v22)
  {
    v23 = *&v17[OBJC_IVAR___BKRootBarItem_titleOverride];
    swift_bridgeObjectRetain_n();

    v24 = 0uLL;
    v25 = v23;
    v26 = v22;
    v27 = 0uLL;
    v28 = v20;
    v16 = v116;
  }

  else
  {
    *&v125 = v21;
    *(&v125 + 1) = v20;
    *&v121 = 0x3A6D6F74737563;
    *(&v121 + 1) = 0xE700000000000000;
    sub_1003A84C4();
    sub_100367368();

    if (sub_1007A20A4())
    {
      *&v125 = v21;
      *(&v125 + 1) = v20;

      v41 = sub_1007A23A4();
      v42 = v20;
      v13 = v20;
      v16 = v116;
      if (v41)
      {
        if (v41 < 0)
        {
          goto LABEL_152;
        }

        sub_1007A23C4();
        if (v43)
        {
          goto LABEL_162;
        }

        sub_1007A2344();
      }

      v44 = 14;
      v28 = v42;
    }

    else
    {
      v55 = v21;
      if (qword_100AD1688 != -1)
      {
        swift_once();
      }

      v56 = sub_10079ACE4();
      sub_100008B98(v56, qword_100AE4D38);
      v28 = v20;

      v57 = sub_10079ACC4();
      v58 = sub_1007A29A4();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *&v125 = v60;
        *v59 = v110;
        *(v59 + 4) = sub_1000070F4(v55, v28, &v125);
        _os_log_impl(&_mh_execute_header, v57, v58, "Can't extract collectionID from identifier: %s", v59, 0xCu);
        sub_1000074E0(v60);
      }

      v16 = v116;

      v44 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(v55, v28);
      if (v44 == 16)
      {
        v44 = 15;
      }
    }

    sub_10047E894(v44, &v130);
    v22 = v131;
    if (v131)
    {
      v24 = v134;
      v27 = v135;
      v25 = v132;
      v26 = v133;
      v23 = v130;
    }

    else
    {
      v23 = 0;
      v25 = 0;
      v24 = 0uLL;
      v22 = 0xE000000000000000;
      v26 = 0xE000000000000000;
      v27 = 0uLL;
    }
  }

  *&v125 = v23;
  *(&v125 + 1) = v22;
  v117 = v25;
  *&v126 = v25;
  *(&v126 + 1) = v26;
  v127 = v24;
  v128 = v27;

  sub_100007840(&v125, &qword_100ADFAD0);
  v35 = *&v17[OBJC_IVAR___BKRootBarItem_iconNameOverride + 8];
  if (v35)
  {
    v34 = *&v17[OBJC_IVAR___BKRootBarItem_iconNameOverride];
    swift_bridgeObjectRetain_n();

    v61 = 0uLL;
    v62 = v35;
    v63 = v34;
    goto LABEL_68;
  }

  v65 = *v19;
  v66 = v19[1];
  v67 = *&v17[OBJC_IVAR___BKRootBarItem_countryCode + 8];
  if (v67)
  {
    v68 = *&v17[OBJC_IVAR___BKRootBarItem_countryCode] == 28778 && v67 == 0xE200000000000000;
    if (v68 || (sub_1007A3AB4() & 1) != 0)
    {
      v69 = v65 == 0x7972617262696CLL && v66 == 0xE700000000000000;
      if (v69 || (sub_1007A3AB4() & 1) != 0)
      {
        if (qword_100AD16F8 != -1)
        {
          swift_once();
        }

        v121 = xmmword_100AE5618;
        v122 = *&qword_100AE5628;
        v123 = xmmword_100AE5638;
        v124 = unk_100AE5648;
        v62 = *(&xmmword_100AE5618 + 1);
        v63 = xmmword_100AE5618;
        v35 = unk_100AE5630;
        v34 = qword_100AE5628;
        v116 = unk_100AE5648;
        v111 = xmmword_100AE5638;
        sub_1003A8518(&v121, v120);
LABEL_117:

        v64 = v116;
        v61 = v111;
        goto LABEL_118;
      }
    }
  }

  *&v121 = v65;
  *(&v121 + 1) = v66;
  v120[0] = 0x3A6D6F74737563;
  v120[1] = 0xE700000000000000;
  sub_1003A84C4();
  sub_100367368();
  if ((sub_1007A20A4() & 1) == 0)
  {
    if (qword_100AD1688 != -1)
    {
      swift_once();
    }

    v76 = sub_10079ACE4();
    sub_100008B98(v76, qword_100AE4D38);

    v77 = sub_10079ACC4();
    v78 = sub_1007A29A4();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = v77;
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      LODWORD(v111) = v78;
      v82 = v81;
      *&v121 = v81;
      *v80 = v110;
      *(v80 + 4) = sub_1000070F4(v65, v66, &v121);
      _os_log_impl(&_mh_execute_header, v79, v111, "Can't extract collectionID from identifier: %s", v80, 0xCu);
      sub_1000074E0(v82);
    }

    else
    {
    }

    v16 = v116;

    v97 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(v65, v66);
    if (v97 == 16)
    {
      v97 = 15;
    }

    goto LABEL_115;
  }

  *&v121 = v65;
  *(&v121 + 1) = v66;

  v70 = sub_1007A23A4();
  if (!v70)
  {
    goto LABEL_114;
  }

  if ((v70 & 0x8000000000000000) == 0)
  {
    sub_1007A23C4();
    if (v71)
    {
      goto LABEL_163;
    }

    sub_1007A2344();
LABEL_114:
    v16 = v116;

    v97 = 14;
LABEL_115:
    sub_10047F800(v97, &v136);
    v62 = v137;
    if (v137)
    {
      v116 = v141;
      v111 = v140;
      v34 = v138;
      v35 = v139;
      v63 = v136;
      goto LABEL_117;
    }

    v34 = 0;
    v63 = 0;
    v61 = 0uLL;
    v35 = 0xE000000000000000;
    v62 = 0xE000000000000000;
LABEL_68:
    v64 = 0uLL;
LABEL_118:
    *&v121 = v63;
    *(&v121 + 1) = v62;
    *&v122 = v34;
    *(&v122 + 1) = v35;
    v123 = v61;
    v124 = v64;

    v98 = &v121;
    goto LABEL_141;
  }

  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
}