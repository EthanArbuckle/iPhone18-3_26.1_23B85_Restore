uint64_t sub_10061A614(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v8 = sub_100746554();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    (*(v9 + 104))(v11, *a4, v8);
    sub_10061BE70(v11, a3, a5);

    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_10061A748()
{
  v0 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_100741264();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741254();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_10000C8CC(v2, &unk_100923970);
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = objc_opt_self();
  sub_100741204(v9);
  v11 = v10;
  [v8 openStandardURL:v10];

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10061A908()
{
  v0 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_100741264();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741254();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_10000C8CC(v2, &unk_100923970);
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = objc_opt_self();
  sub_100741204(v9);
  v11 = v10;
  [v8 openStandardURL:v10];

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10061AAC8()
{
  v0 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_100741264();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741254();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_10000C8CC(v2, &unk_100923970);
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = objc_opt_self();
  sub_100741204(v9);
  v11 = v10;
  [v8 openStandardURL:v10];

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10061AC88()
{
  v0 = sub_10074B1C4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074B1B4();
  sub_10074B1A4();
  return (*(v1 + 8))(v3, v0);
}

void sub_10061AD4C()
{
  v0 = sub_100742A64();
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = sub_100631124(*(v0 + 16), 0);
    v4 = sub_1007271D0(&v12, v3 + 4, v2, v1);
    sub_1001A8F34();
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = _swiftEmptyArrayStorage;
LABEL_5:
  v12 = v3;
  sub_10000C518(&unk_100928A70);
  sub_10010ABC4();
  sub_100752FF4();

  v5 = sub_100753064();
  v6 = sub_100753064();

  v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  v8 = sub_100753064();
  v9 = [objc_opt_self() actionWithTitle:v8 style:1 handler:0];

  [v7 addAction:v9];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    [Strong presentViewController:v7 animated:1 completion:0];
  }
}

void sub_10061AF40()
{
  sub_100742AA4();
  sub_10000C518(&unk_100928A70);
  sub_10010ABC4();
  sub_100752FF4();

  v0 = sub_100753064();
  v1 = sub_100753064();

  v2 = [objc_opt_self() alertControllerWithTitle:v0 message:v1 preferredStyle:1];

  v3 = sub_100753064();
  v4 = [objc_opt_self() actionWithTitle:v3 style:1 handler:0];

  [v2 addAction:v4];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong presentViewController:v2 animated:1 completion:0];
  }
}

uint64_t sub_10061B0D8()
{
  v1 = v0;
  v2 = sub_100743184();
  v69 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v51 - v6;
  v8 = sub_10074C4F4();
  v65 = *(v8 - 8);
  v9 = *(v65 + 64);
  __chkstk_darwin(v8);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v63 = &v51 - v11;
  v12 = sub_100741494();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10074C4E4();
  v17 = *(v16 + 16);
  if (v17)
  {
    v52 = v15;
    v53 = v13;
    v54 = v12;
    v75 = _swiftEmptyArrayStorage;
    v61 = v9;
    v62 = v4;
    v18 = v16;
    sub_1007545C4();
    v60 = *(v65 + 16);
    v19 = *(v65 + 80);
    v51 = v18;
    v20 = v18 + ((v19 + 32) & ~v19);
    v58 = *(v65 + 72);
    v57 = (v69 + 8);
    v65 += 16;
    v56 = (v65 + 16);
    v59 = v19;
    v55 = (v19 + 24) & ~v19;
    v68 = v7;
    v70 = v8;
    do
    {
      v69 = v20;
      v21 = v63;
      v60(v63, v20, v8);
      sub_10074C4D4();
      v22 = sub_100743164();
      v24 = v23;
      v25 = *v57;
      (*v57)(v68, v2);
      v71 = v22;
      v72 = v24;
      sub_1007544E4();
      v26 = v62;
      sub_10074C4D4();
      v27 = sub_100743164();
      v66 = v28;
      v67 = v27;
      v25(v26, v2);
      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = v2;
      v31 = v1;
      v32 = *v56;
      v33 = v17;
      v34 = v64;
      (*v56)(v64, v21, v70);
      v35 = v55;
      v36 = swift_allocObject();
      *(v36 + 16) = v29;
      v37 = v34;
      v38 = v33;
      v32((v36 + v35), v37, v70);
      v1 = v31;
      v2 = v30;
      type metadata accessor for MenuItemDebugSetting();
      v39 = swift_allocObject();
      *(v39 + 72) = 0;
      v40 = v66;
      *(v39 + 56) = v67;
      *(v39 + 64) = v40;
      *(v39 + 80) = sub_10061C770;
      *(v39 + 88) = v36;
      v41 = v73[1];
      *(v39 + 16) = v73[0];
      *(v39 + 32) = v41;
      *(v39 + 48) = v74;
      sub_1007545A4();
      sub_1007545D4();
      v8 = v70;
      sub_1007545E4();
      sub_1007545B4();
      v20 = v69 + v58;
      v17 = v38 - 1;
    }

    while (v17);

    v42 = v75;
    v12 = v54;
    v13 = v53;
    v15 = v52;
  }

  else
  {

    v42 = _swiftEmptyArrayStorage;
  }

  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MenuDebugSetting();
  v44 = swift_allocObject();
  strcpy((v44 + 56), "Toggle State");
  *(v44 + 69) = 0;
  *(v44 + 70) = -5120;
  *(v44 + 72) = v42;
  *(v44 + 80) = sub_10061C7D4;
  *(v44 + 88) = v43;

  sub_100741484();
  v45 = sub_100741464();
  v47 = v46;
  v48 = *(v13 + 8);

  v48(v15, v12);
  *&v73[0] = v45;
  *(&v73[0] + 1) = v47;
  sub_1007544E4();
  sub_10061B9A4(v73);
  __chkstk_darwin(v49);
  *(&v51 - 2) = v73;

  sub_100618DA4(sub_1002595C4, (&v51 - 4), v42);

  sub_10000C8CC(v73, &unk_1009276E0);
  return v44;
}

uint64_t sub_10061B714(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C518(&qword_100941778);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_100743184();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_100941780);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v14 = Strong, v15 = swift_unknownObjectWeakLoadStrong(), v14, v15))
  {
    sub_10074C4D4();
    sub_10074B214();

    (*(v7 + 8))(v9, v6);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  (*(v7 + 56))(v12, v16, 1, v6);
  sub_10000C8CC(v12, &unk_100941780);
  v17 = sub_10074C4F4();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v5, a2, v17);
  (*(v18 + 56))(v5, 0, 1, v17);
  return sub_10074DB14();
}

double sub_10061B9A4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_100743184();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v7 = Strong, v8 = swift_unknownObjectWeakLoadStrong(), v7, v8))
  {
    sub_10074B274();

    v9 = sub_100743164();
    v11 = v10;
    (*(v3 + 8))(v5, v2);
    v13[1] = v9;
    v13[2] = v11;
    sub_1007544E4();
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

id sub_10061BB0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArcadeSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10061BB74()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10061BC3C()
{
  v1._object = 0x8000000100788060;
  v1._countAndFlagsBits = 0xD000000000000020;
  if (sub_100742A94(v1))
  {
    return 0x6C62616C69617641;
  }

  else
  {
    return 0x616C696176616E55;
  }
}

void sub_10061BCAC()
{
  v4._object = 0x8000000100788060;
  v4._countAndFlagsBits = 0xD000000000000020;
  v0 = sub_100742A94(v4);
  v2._object = 0x8000000100788060;
  v1 = !v0;
  v2._countAndFlagsBits = 0xD000000000000020;

  sub_100742A84(v2, v1);
}

id sub_10061BDA0()
{
  swift_unknownObjectWeakInit();
  sub_10074B294();
  sub_100752764();
  sub_100752D34();
  swift_unknownObjectWeakAssign();

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugSettingsProvider();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_10061BE70(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v50 = a3;
  v58 = a2;
  v54 = a1;
  v3 = sub_100742CF4();
  v51 = *(v3 - 8);
  v52 = v3;
  __chkstk_darwin(v3);
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007493D4();
  v47 = *(v6 - 8);
  v48 = v6;
  __chkstk_darwin(v6);
  v49 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10074A304();
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v57 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100752614();
  __chkstk_darwin(v9 - 8);
  v56 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v11 - 8);
  v55 = v42 - v12;
  v13 = sub_10074F4D4();
  v44 = *(v13 - 8);
  __chkstk_darwin(v13);
  v53 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v15 - 8);
  v17 = v42 - v16;
  v18 = sub_10000C518(&qword_100938E90);
  __chkstk_darwin(v18);
  v20 = v42 - v19;
  v21 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v21 - 8);
  v23 = v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v42 - v25;
  v27 = sub_100741264();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = v42 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741254();
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    v31 = &unk_100923970;
    v32 = v26;
    return sub_10000C8CC(v32, v31);
  }

  v43 = v5;
  (*(v28 + 32))(v30, v26, v27);
  v33 = *(v18 + 48);
  v34 = *(v18 + 64);
  *v20 = 0;
  v35 = sub_100746554();
  (*(*(v35 - 8) + 16))(&v20[v33], v54, v35);
  (*(v28 + 16))(&v20[v34], v30, v27);
  v36 = sub_10000C518(&unk_100923210);
  sub_1007526C4();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v17, 1, v36) == 1)
  {
    sub_10000C8CC(v20, &qword_100938E90);
    (*(v28 + 8))(v30, v27);
    v31 = &unk_100923960;
    v32 = v17;
    return sub_10000C8CC(v32, v31);
  }

  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  (*(v44 + 104))(v53, enum case for FlowPage.arcadeWelcome(_:), v13);
  v39 = *(v28 + 56);
  v42[1] = v23;
  v39(v23, 1, 1, v27);
  v40 = sub_100743FE4();
  (*(*(v40 - 8) + 56))(v55, 1, 1, v40);
  v59 = 0u;
  v60 = 0u;
  sub_1007525F4();
  (*(v45 + 104))(v57, *v50, v46);
  (*(v47 + 104))(v49, enum case for FlowAnimationBehavior.infer(_:), v48);
  (*(v51 + 104))(v43, enum case for FlowOrigin.inapp(_:), v52);
  sub_100752B44();
  v54 = v37;
  sub_100742CD4();
  swift_allocObject();
  v41 = sub_100742C84();
  sub_1003C1424(v41, 1, v58, v17);

  sub_10000C8CC(v20, &qword_100938E90);
  (*(v28 + 8))(v30, v27);
  return (*(v54 + 8))(v17, v36);
}

uint64_t sub_10061C6AC()
{
  v1 = sub_10074C4F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10061C770()
{
  v1 = *(sub_10074C4F4() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10061B714(v2, v3);
}

uint64_t sub_10061C7F4(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_offerButton);
  sub_100032C04(a1, v13);
  v5 = v14;
  if (v14)
  {
    v6 = sub_10000C888(v13, v14);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_100754734();
    (*(v7 + 8))(v10, v5);
    sub_10000C620(v13);
  }

  else
  {
    v11 = 0;
  }

  [v4 addTarget:v11 action:a2 forControlEvents:64];
  return swift_unknownObjectRelease();
}

uint64_t sub_10061C94C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_offerButton);
  sub_100032C04(a1, v11);
  v3 = v12;
  if (v12)
  {
    v4 = sub_10000C888(v11, v12);
    v5 = *(v3 - 8);
    v6 = __chkstk_darwin(v4);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_100754734();
    (*(v5 + 8))(v8, v3);
    sub_10000C620(v11);
  }

  else
  {
    v9 = 0;
  }

  [v2 removeTarget:v9 action:0 forControlEvents:64];
  return swift_unknownObjectRelease();
}

id sub_10061CA98(double a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_progressView;
  v5 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_progressView];
  if (v5)
  {
    goto LABEL_2;
  }

  v10 = [objc_allocWithZone(type metadata accessor for InstallProgressView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = *&v2[v4];
  if (v11)
  {
    [v11 removeFromSuperview];
    v12 = *&v2[v4];
  }

  else
  {
    v12 = 0;
  }

  *&v2[v4] = v10;
  v13 = v10;

  if (v13)
  {
    [v2 addSubview:v13];
  }

  [v2 setNeedsLayout];

  v14 = *&v2[v4];
  if (v14)
  {
    v15 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_animationCompletionHandler];
    v16 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_animationCompletionHandler + 8];
    v17 = &v14[OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_completionHandler];
    v18 = *&v14[OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_completionHandler];
    *v17 = v15;
    v17[1] = v16;
    v19 = v14;
    sub_10001B5AC(v15);
    sub_1000164A8(v18);

    v20 = *&v2[v4];
    if (v20)
    {
      [v20 setClipsToBounds:1];
      v5 = *&v2[v4];
      if (v5)
      {
LABEL_2:
        v6 = v5;
        sub_100746E94();
        [v6 _setCornerRadius:?];

        v7 = *&v2[v4];
        if (v7)
        {
          v8 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_progress];
          *&v7[OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_progress] = a1;
          v9 = v7;
          sub_1004B3054(v8);
        }
      }
    }
  }

  return [v2 setNeedsLayout];
}

void sub_10061CC64(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_animationCompletionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_animationCompletionHandler);
  *v3 = a1;
  v3[1] = a2;
  sub_1000164A8(v4);
  v5 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_progressView);
  if (v5)
  {
    v6 = *v3;
    v7 = v3[1];
    v8 = &v5[OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_completionHandler];
    v9 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_completionHandler];
    *v8 = v6;
    v8[1] = v7;
    v10 = v5;
    sub_10001B5AC(v6);
    sub_1000164A8(v9);
  }
}

uint64_t sub_10061CD24@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = sub_10000C518(&unk_1009249B0);
  __chkstk_darwin(v1 - 8);
  v47 = &v37[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v5 = &v37[-v4];
  __chkstk_darwin(v6);
  v8 = &v37[-v7];
  v9 = sub_100750304();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v37[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1007479B4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v37[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v46 = &v37[-v18];
  if (sub_100753804())
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v19 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v19 = qword_10093FF58;
  }

  v20 = v10;
  v48 = v5;
  v21 = sub_10000D0FC(v13, v19);
  (*(v14 + 16))(v16, v21, v13);
  v40 = v14;
  v41 = v13;
  (*(v14 + 32))(v46, v16, v13);
  v68[13] = &type metadata for Double;
  v68[14] = &protocol witness table for Double;
  v68[9] = &protocol witness table for Double;
  v68[10] = 0x4024000000000000;
  v68[8] = &type metadata for Double;
  v68[5] = 0x4000000000000000;
  if (qword_1009212B0 != -1)
  {
    swift_once();
  }

  v22 = sub_100750534();
  v23 = sub_10000D0FC(v22, qword_100981548);
  v39 = *(v22 - 8);
  v45 = *(v39 + 16);
  v45(v12, v23, v22);
  v24 = *(v10 + 104);
  v25 = enum case for FontSource.useCase(_:);
  v50 = v20 + 104;
  v54 = v24;
  v24(v12);
  v53 = sub_100750B04();
  v68[3] = v53;
  v68[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v68);
  v66 = v9;
  v67 = &protocol witness table for FontSource;
  v26 = sub_10000D134(v65);
  v51 = *(v20 + 16);
  v52 = v20 + 16;
  v51(v26, v12, v9);
  sub_100750B14();
  v49 = *(v20 + 8);
  v44 = v20 + 8;
  v49(v12, v9);
  v65[0] = 0x405C000000000000;
  v62[0] = 0x4044000000000000;
  sub_10000C518(&unk_100923AE0);
  v42 = v8;
  sub_100743484();
  if (qword_1009212B8 != -1)
  {
    swift_once();
  }

  v27 = sub_10000D0FC(v22, qword_100981560);
  v45(v12, v27, v22);
  v54(v12, v25, v9);
  v66 = v53;
  v67 = &protocol witness table for StaticDimension;
  sub_10000D134(v65);
  v63 = v9;
  v64 = &protocol witness table for FontSource;
  v28 = sub_10000D134(v62);
  v51(v28, v12, v9);
  sub_100750B14();
  v49(v12, v9);
  v62[0] = 0x405C000000000000;
  v59[0] = 0x4044000000000000;
  sub_100743484();
  if (qword_1009212A0 != -1)
  {
    swift_once();
  }

  v29 = sub_10000D0FC(v22, qword_100981518);
  v45(v12, v29, v22);
  v54(v12, v25, v9);
  v63 = v53;
  v64 = &protocol witness table for StaticDimension;
  sub_10000D134(v62);
  v60 = v9;
  v61 = &protocol witness table for FontSource;
  v30 = sub_10000D134(v59);
  v51(v30, v12, v9);
  sub_100750B14();
  v49(v12, v9);
  v59[0] = 0x4052000000000000;
  v56[0] = 0x4034000000000000;
  v38 = v25;
  sub_100743484();
  *v12 = UIFontTextStyleBody;
  *(v12 + 2) = 0;
  LODWORD(v45) = enum case for FontUseCase.preferredFont(_:);
  v39 = *(v39 + 104);
  (v39)(v12);
  v54(v12, v25, v9);
  v60 = v53;
  v61 = &protocol witness table for StaticDimension;
  sub_10000D134(v59);
  v57 = v9;
  v58 = &protocol witness table for FontSource;
  v31 = sub_10000D134(v56);
  v51(v31, v12, v9);
  v32 = UIFontTextStyleBody;
  sub_100750B14();
  v33 = v49;
  v49(v12, v9);
  v34 = v46;
  sub_100747964();
  sub_100747994();
  *v12 = v32;
  *(v12 + 2) = 0;
  (v39)(v12, v45, v22);
  v54(v12, v38, v9);
  v57 = v53;
  v58 = &protocol witness table for StaticDimension;
  sub_10000D134(v56);
  v55[3] = v9;
  v55[4] = &protocol witness table for FontSource;
  v35 = sub_10000D134(v55);
  v51(v35, v12, v9);
  sub_100750B14();
  v33(v12, v9);
  sub_10074D334();
  return (*(v40 + 8))(v34, v41);
}

char *sub_10061D634(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10074AB44();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v14 - 8);
  v16 = &v46 - v15;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_progressView] = 0;
  v17 = &v4[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_animationCompletionHandler];
  sub_1007433C4();
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_iconView] = sub_1007431D4();
  if (qword_1009212B0 != -1)
  {
    swift_once();
  }

  v18 = sub_100750534();
  v19 = sub_10000D0FC(v18, qword_100981548);
  v20 = *(v18 - 8);
  v51 = *(v20 + 16);
  v51(v16, v19, v18);
  v50 = *(v20 + 56);
  v50(v16, 0, 1, v18);
  v21 = enum case for DirectionalTextAlignment.none(_:);
  v49 = *(v11 + 104);
  v49(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v22 = sub_100745C84();
  v48 = v10;
  v23 = v22;
  v24 = objc_allocWithZone(v22);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_titleLabel] = sub_100745C74();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_ageRatingView] = [objc_allocWithZone(type metadata accessor for AgeRatingBadgeView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_1009212B8 != -1)
  {
    swift_once();
  }

  v25 = sub_10000D0FC(v18, qword_100981560);
  v51(v16, v25, v18);
  v50(v16, 0, 1, v18);
  v49(v13, v21, v48);
  v26 = objc_allocWithZone(v23);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_subtitleLabel] = sub_100745C74();
  if (qword_1009212A0 != -1)
  {
    swift_once();
  }

  v27 = sub_10000D0FC(v18, qword_100981518);
  v51(v16, v27, v18);
  v50(v16, 0, 1, v18);
  v49(v13, v21, v48);
  v28 = objc_allocWithZone(v23);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_descriptionLabel] = sub_100745C74();
  v29 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_offerButton] = sub_100154454(0);
  v52.receiver = v5;
  v52.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v52, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v34 = v30;
  [v34 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v34 setScrollEnabled:1];
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
  v35 = OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_descriptionLabel;
  [*&v34[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_descriptionLabel] setTextAlignment:1];
  v36 = OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_titleLabel;
  [*&v34[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_titleLabel] setTextAlignment:1];
  v37 = OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_subtitleLabel;
  [*&v34[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_subtitleLabel] setTextAlignment:1];
  v38 = *&v34[v35];
  sub_10000D198();
  v39 = v38;
  v40 = sub_100753DF4();
  [v39 setTextColor:v40];

  v41 = *&v34[v36];
  v42 = sub_100753DD4();
  [v41 setTextColor:v42];

  v43 = *&v34[v37];
  v44 = sub_100753DE4();
  [v43 setTextColor:v44];

  [v34 addSubview:*&v34[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_iconView]];
  [v34 addSubview:*&v34[v35]];
  [v34 addSubview:*&v34[v36]];
  [v34 addSubview:*&v34[v37]];
  [v34 addSubview:*&v34[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_offerButton]];
  [v34 addSubview:*&v34[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_ageRatingView]];

  return v34;
}

double sub_10061DD48()
{
  v1 = sub_10074D354();
  __chkstk_darwin(v1 - 8);
  v3 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074D374();
  v30 = *(v4 - 8);
  v31 = v4;
  *&v5 = __chkstk_darwin(v4).n128_u64[0];
  v29[0] = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v29[1] = v3;
  sub_10061CD24(v3);

  v8 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_iconView];
  v53 = sub_1007433C4();
  v54 = &protocol witness table for UIView;
  v52 = v8;
  v9 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_progressView];
  if (v9)
  {
    v10 = type metadata accessor for InstallProgressView();
    v11 = &protocol witness table for UIView;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v48 = 0;
    v49 = 0;
  }

  v47 = v9;
  v50 = v10;
  v51 = v11;
  v12 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_titleLabel];
  v45 = sub_100745C84();
  v46 = &protocol witness table for UILabel;
  v43 = &protocol witness table for UILabel;
  v44 = v12;
  v13 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_subtitleLabel];
  v42 = v45;
  v40 = &protocol witness table for UILabel;
  v41 = v13;
  v14 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_descriptionLabel];
  v39 = v45;
  v38 = v14;
  v15 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_ageRatingView];
  v36 = type metadata accessor for AgeRatingBadgeView();
  v37 = &protocol witness table for UIView;
  v35 = v15;
  v16 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_offerButton];
  v33 = type metadata accessor for OfferButton();
  v34 = &protocol witness table for UIView;
  v32 = v16;
  v17 = v8;
  v18 = v9;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v24 = v29[0];
  sub_10074D364();
  sub_10061E4F4();
  v25 = v31;
  sub_100750404();
  v27 = v26;
  (*(v30 + 8))(v24, v25);
  return v27;
}

uint64_t sub_10061E050()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100750354();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v35 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074D354();
  __chkstk_darwin(v5 - 8);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074D374();
  v33 = *(v8 - 8);
  v34 = v8;
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v32[0] = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61.receiver = v1;
  v61.super_class = ObjectType;
  v32[2] = ObjectType;
  objc_msgSendSuper2(&v61, "layoutSubviews", v9);
  v11 = [v1 traitCollection];
  v32[1] = v7;
  sub_10061CD24(v7);

  v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_iconView];
  v59 = sub_1007433C4();
  v60 = &protocol witness table for UIView;
  v58 = v12;
  v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_progressView];
  if (v13)
  {
    v14 = type metadata accessor for InstallProgressView();
    v15 = &protocol witness table for UIView;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v54 = 0;
    v55 = 0;
  }

  v53 = v13;
  v56 = v14;
  v57 = v15;
  v16 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_titleLabel];
  v51 = sub_100745C84();
  v52 = &protocol witness table for UILabel;
  v49 = &protocol witness table for UILabel;
  v50 = v16;
  v17 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_subtitleLabel];
  v48 = v51;
  v46 = &protocol witness table for UILabel;
  v47 = v17;
  v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_descriptionLabel];
  v45 = v51;
  v44 = v18;
  v19 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_ageRatingView];
  v42 = type metadata accessor for AgeRatingBadgeView();
  v43 = &protocol witness table for UIView;
  v41 = v19;
  v20 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_offerButton];
  v39 = type metadata accessor for OfferButton();
  v40 = &protocol witness table for UIView;
  v38 = v20;
  v21 = v12;
  v22 = v13;
  v23 = v16;
  v24 = v17;
  v25 = v18;
  v26 = v19;
  v27 = v20;
  v28 = v32[0];
  sub_10074D364();
  sub_1007477B4();
  v29 = v35;
  sub_10074D324();
  [v1 frame];
  Width = CGRectGetWidth(v62);
  sub_100750334();
  [v1 setContentSize:Width];
  (*(v36 + 8))(v29, v37);
  return (*(v33 + 8))(v28, v34);
}

unint64_t sub_10061E4F4()
{
  result = qword_100941800;
  if (!qword_100941800)
  {
    sub_10074D374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100941800);
  }

  return result;
}

id sub_10061E54C()
{
  v0[OBJC_IVAR____TtC22SubscribePageExtension11ChevronView_shouldAnimate] = 0;
  v0[OBJC_IVAR____TtC22SubscribePageExtension11ChevronView_isAnimating] = 0;
  v1 = OBJC_IVAR____TtC22SubscribePageExtension11ChevronView_chevronImageView;
  v2 = sub_10056003C(0xD000000000000013, 0x800000010076F430, 0);
  v3 = [v2 imageWithRenderingMode:2];

  v4 = [objc_allocWithZone(UIImageView) initWithImage:v3];
  *&v0[v1] = v4;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for ChevronView();
  v5 = objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10061E8CC();

  return v5;
}

id sub_10061E668(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC22SubscribePageExtension11ChevronView_shouldAnimate] = 0;
  v4[OBJC_IVAR____TtC22SubscribePageExtension11ChevronView_isAnimating] = 0;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension11ChevronView_chevronImageView;
  v10 = sub_10056003C(0xD000000000000013, 0x800000010076F430, 0);
  v11 = [v10 imageWithRenderingMode:2];

  v12 = [objc_allocWithZone(UIImageView) initWithImage:v11];
  *&v4[v9] = v12;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for ChevronView();
  v13 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  sub_10061E8CC();

  return v13;
}

id sub_10061E7A4(void *a1)
{
  v1[OBJC_IVAR____TtC22SubscribePageExtension11ChevronView_shouldAnimate] = 0;
  v1[OBJC_IVAR____TtC22SubscribePageExtension11ChevronView_isAnimating] = 0;
  v3 = OBJC_IVAR____TtC22SubscribePageExtension11ChevronView_chevronImageView;
  v4 = sub_10056003C(0xD000000000000013, 0x800000010076F430, 0);
  v5 = [v4 imageWithRenderingMode:2];

  v6 = [objc_allocWithZone(UIImageView) initWithImage:v5];
  *&v1[v3] = v6;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for ChevronView();
  v7 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    sub_10061E8CC();
  }

  return v8;
}

id sub_10061E8CC()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension11ChevronView_chevronImageView];
  if (qword_10091FE48 != -1)
  {
    swift_once();
  }

  [v1 setTintColor:qword_10097CAE8];
  v2 = [v1 layer];
  v3 = [v0 traitCollection];
  [v3 userInterfaceStyle];

  sub_100753094();
  v4 = sub_100753064();

  [v2 setCompositingFilter:v4];

  [v1 setContentMode:1];
  [v1 setAlpha:0.0];
  [v0 addSubview:v1];
  [v1 frame];

  return [v0 setFrame:{0.0, 0.0}];
}

void sub_10061EAB0()
{
  v1 = sub_100743B54();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v8 = &aBlock - v7;
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension11ChevronView_shouldAnimate) == 1)
  {
    v9 = OBJC_IVAR____TtC22SubscribePageExtension11ChevronView_isAnimating;
    if ((*(v0 + OBJC_IVAR____TtC22SubscribePageExtension11ChevronView_isAnimating) & 1) == 0)
    {
      v10 = [v0 window];
      if (v10)
      {

        *(v0 + v9) = 1;
        sub_100743B14();
        v11 = v0;
        sub_100743B34();
        v13 = v12;
        v15 = v14;
        v16 = *(v2 + 8);
        v16(v8, v1);
        sub_100743B14();
        sub_100743B44();
        v18 = v17;
        v20 = v19;
        v16(v4, v1);
        v21 = swift_allocObject();
        *(v21 + 16) = v0;
        v22 = objc_allocWithZone(UIViewPropertyAnimator);
        v48 = sub_10061F514;
        v49 = v21;
        aBlock = _NSConcreteStackBlock;
        v45 = 1107296256;
        v46 = sub_1000CF7B0;
        v47 = &unk_10087E500;
        v23 = _Block_copy(&aBlock);
        v24 = v11;

        v25 = [v22 initWithDuration:v23 controlPoint1:1.06 controlPoint2:v13 animations:{v15, v18, v20}];
        _Block_release(v23);
        sub_100743B24();
        sub_100743B34();
        v27 = v26;
        v29 = v28;
        v16(v8, v1);
        sub_100743B24();
        sub_100743B44();
        v31 = v30;
        v33 = v32;
        v16(v4, v1);
        v34 = swift_allocObject();
        *(v34 + 16) = v24;
        v35 = objc_allocWithZone(UIViewPropertyAnimator);
        v48 = sub_10061F550;
        v49 = v34;
        aBlock = _NSConcreteStackBlock;
        v45 = 1107296256;
        v46 = sub_1000CF7B0;
        v47 = &unk_10087E550;
        v36 = _Block_copy(&aBlock);
        v37 = v24;

        v38 = [v35 initWithDuration:v36 controlPoint1:0.66 controlPoint2:v27 animations:{v29, v31, v33}];
        _Block_release(v36);
        v39 = swift_allocObject();
        *(v39 + 16) = v38;
        v48 = sub_10061F574;
        v49 = v39;
        aBlock = _NSConcreteStackBlock;
        v45 = 1107296256;
        v46 = sub_1001A5B50;
        v47 = &unk_10087E5A0;
        v40 = _Block_copy(&aBlock);
        v41 = v38;

        [v25 addCompletion:v40];
        _Block_release(v40);
        v42 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v48 = sub_10061F5BC;
        v49 = v42;
        aBlock = _NSConcreteStackBlock;
        v45 = 1107296256;
        v46 = sub_1001A5B50;
        v47 = &unk_10087E5F0;
        v43 = _Block_copy(&aBlock);

        [v41 addCompletion:v43];
        _Block_release(v43);
        [v25 startAnimation];
      }
    }
  }
}

id sub_10061EFA4(uint64_t a1, CGFloat a2, double a3)
{
  v4 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension11ChevronView_chevronImageView);
  CGAffineTransformMakeTranslation(&v6, 0.0, a2);
  [v4 setTransform:&v6];
  return [v4 setAlpha:a3];
}

uint64_t sub_10061F028(uint64_t a1, uint64_t a2)
{
  v23 = sub_1007521E4();
  v26 = *(v23 - 8);
  __chkstk_darwin(v23);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100752224();
  v24 = *(v5 - 8);
  v25 = v5;
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100752244();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension11ChevronView_chevronImageView);

    aBlock = 0x3FF0000000000000;
    v28 = 0;
    v29 = 0;
    v30 = 0x3FF0000000000000;
    v31 = 0;
    v32 = 0;
    [v17 setTransform:&aBlock];
  }

  sub_1000A7FA0();
  v18 = sub_100753774();
  sub_100752234();
  sub_1007522B4();
  v22 = *(v9 + 8);
  v22(v11, v8);
  v31 = sub_10061F5C4;
  v32 = a2;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_1000CF7B0;
  v30 = &unk_10087E618;
  v19 = _Block_copy(&aBlock);

  sub_100752204();
  aBlock = _swiftEmptyArrayStorage;
  sub_10002DCDC();
  sub_10000C518(&unk_10092F750);
  sub_1000A8054();
  v20 = v23;
  sub_1007543A4();
  sub_100753734();
  _Block_release(v19);

  (*(v26 + 8))(v4, v20);
  (*(v24 + 8))(v7, v25);
  return (v22)(v14, v8);
}

void sub_10061F3F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC22SubscribePageExtension11ChevronView_isAnimating] = 0;
  }

  swift_beginAccess();
  v1 = swift_unknownObjectWeakLoadStrong();
  if (v1)
  {
    v2 = v1;
    sub_10061EAB0();
  }
}

id sub_10061F474()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChevronView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10061F4DC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10061F538(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10061F584()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10061F5F4()
{
  v1 = sub_100741574();
  v66 = *(v1 - 8);
  v67 = v1;
  __chkstk_darwin(v1);
  v72 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100741494();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_10000C518(&unk_1009231A0);
  v69 = swift_allocObject();
  v65 = xmmword_1007A7210;
  *(v69 + 16) = xmmword_1007A7210;
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  type metadata accessor for NavigationActionDebugSetting();
  v8 = swift_allocObject();
  v8[7] = 0xD000000000000011;
  v8[8] = 0x8000000100788270;
  v8[10] = 0;
  v8[11] = 0;
  v8[9] = sub_10061FDCC;
  v8[12] = sub_1006204BC;
  v8[13] = v7;
  v9 = v0;

  sub_100741484();
  v10 = sub_100741464();
  v12 = v11;
  v13 = *(v4 + 8);
  v13(v6, v3);
  v68 = v13;
  v73 = v10;
  v74 = v12;
  sub_1007544E4();

  v14 = v69;
  *(v69 + 32) = v8;
  v15 = swift_allocObject();
  *(v15 + 16) = v9;
  v16 = swift_allocObject();
  v16[7] = 0xD00000000000001ALL;
  v16[8] = 0x8000000100788290;
  v16[10] = 0;
  v16[11] = 0;
  v16[9] = 0;
  v16[12] = sub_1006204C4;
  v16[13] = v15;
  v17 = v9;

  sub_100741484();
  v18 = sub_100741464();
  v20 = v19;
  v13(v6, v3);
  v73 = v18;
  v74 = v20;
  sub_1007544E4();

  *(v14 + 40) = v16;
  sub_100741544();
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1007B91A0;
  v21 = sub_1007414A4();
  v23 = v22;
  v71 = type metadata accessor for InfoDebugSetting();
  v24 = swift_allocObject();
  v24[7] = 0x696669746E656449;
  v24[8] = 0xEA00000000007265;
  v24[9] = v21;
  v24[10] = v23;

  sub_100741484();
  v25 = sub_100741464();
  v27 = v26;
  v28 = v68;
  v68(v6, v3);
  v73 = v25;
  v74 = v27;
  sub_1007544E4();

  v29 = v64;
  *(v64 + 32) = v24;
  v30 = swift_allocObject();
  *(v30 + 56) = 0xD000000000000013;
  *(v30 + 64) = 0x80000001007882B0;
  *(v30 + 72) = xmmword_1007CE590;
  sub_100741484();
  v31 = sub_100741464();
  v33 = v32;
  v28(v6, v3);
  v73 = v31;
  v74 = v33;
  sub_1007544E4();
  v29[5] = v30;
  sub_1007414F4();
  v34 = sub_100753434();
  v36 = v35;
  v37 = swift_allocObject();
  v37[7] = 0xD000000000000014;
  v37[8] = 0x80000001007882D0;
  v37[9] = v34;
  v37[10] = v36;

  sub_100741484();
  v38 = sub_100741464();
  v40 = v39;
  v28(v6, v3);
  v73 = v38;
  v74 = v40;
  sub_1007544E4();

  v29[6] = v37;
  v41 = sub_1007414D4();
  if (v41)
  {
    v42 = 1702195828;
  }

  else
  {
    v42 = 0x65736C6166;
  }

  if (v41)
  {
    v43 = 0xE400000000000000;
  }

  else
  {
    v43 = 0xE500000000000000;
  }

  v44 = swift_allocObject();
  v44[7] = 0xD000000000000014;
  v44[8] = 0x80000001007882F0;
  v44[9] = v42;
  v44[10] = v43;

  sub_100741484();
  v45 = sub_100741464();
  v47 = v46;
  v48 = v68;
  v68(v6, v3);
  v73 = v45;
  v74 = v47;
  sub_1007544E4();

  v29[7] = v44;
  type metadata accessor for BoolUserDefaultsDebugSetting();
  v49 = swift_allocObject();
  *(v49 + 56) = 0xD000000000000012;
  *(v49 + 64) = 0x8000000100788310;
  *(v49 + 72) = 0;
  *(v49 + 80) = 0xD00000000000001DLL;
  *(v49 + 88) = 0x8000000100788330;
  *(v49 + 96) = 0;
  sub_100741484();
  v50 = sub_100741464();
  v52 = v51;
  v48(v6, v3);
  v73 = v50;
  v74 = v52;
  sub_1007544E4();
  v29[8] = v49;
  v53 = swift_allocObject();
  *(v53 + 16) = v65;
  type metadata accessor for DebugSection();
  v54 = swift_allocObject();
  sub_100741484();
  v55 = sub_100741464();
  v57 = v56;
  v48(v6, v3);
  v54[2] = v55;
  v54[3] = v57;
  v54[4] = 0x6F726665726F7453;
  v54[5] = 0xEA0000000000746ELL;
  v54[6] = v69;
  *(v53 + 32) = v54;
  v58 = swift_allocObject();
  sub_100741484();
  v59 = sub_100741464();
  v61 = v60;
  v48(v6, v3);
  v58[2] = v59;
  v58[3] = v61;
  v58[4] = 0x656C61636F4CLL;
  v58[5] = 0xE600000000000000;
  v58[6] = v29;
  *(v53 + 40) = v58;
  (*(v66 + 8))(v72, v67);
  return v53;
}

uint64_t sub_10061FDF8(uint64_t a1)
{
  v2 = sub_100742CF4();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v38 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007493D4();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10074A304();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100752614();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v8 - 8);
  v10 = v29 - v9;
  v11 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v11 - 8);
  v13 = v29 - v12;
  v14 = sub_10074F4D4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v18 - 8);
  v20 = v29 - v19;
  v21 = sub_10000C518(&unk_100923210);
  v39 = a1;
  sub_1007526C4();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_100052F00(v20);
  }

  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v24 = *(v15 + 104);
  v29[1] = v17;
  v24(v17, enum case for FlowPage.debugStorefrontPicker(_:), v14);
  v25 = sub_100741264();
  v26 = *(*(v25 - 8) + 56);
  v29[0] = v13;
  v26(v13, 1, 1, v25);
  v27 = sub_100743FE4();
  (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
  v40 = 0u;
  v41 = 0u;
  sub_1007525F4();
  (*(v30 + 104))(v31, enum case for FlowPresentationContext.infer(_:), v32);
  (*(v34 + 104))(v33, enum case for FlowAnimationBehavior.infer(_:), v35);
  (*(v36 + 104))(v38, enum case for FlowOrigin.inapp(_:), v37);
  sub_100752B44();
  sub_100742CD4();
  swift_allocObject();
  v28 = sub_100742C84();
  sub_1003C1424(v28, 1, v39, v20);

  return (*(v22 + 8))(v20, v21);
}

void sub_1006203CC()
{
  v0 = [objc_opt_self() sharedCoordinator];
  [v0 simulateStorefrontChange];
}

id sub_10062042C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StorefrontSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100620484()
{

  return _swift_deallocObject(v0, 24, 7);
}

char *sub_100620660()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() effectWithBlurRadius:26.0];
  v3 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v2];

  v4 = OBJC_IVAR____TtC22SubscribePageExtension31AppBundleGradientBackgroundView_blurView;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension31AppBundleGradientBackgroundView_blurView] = v3;
  v5 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorSaturate];
  isa = sub_1007534B4().super.super.isa;
  [v5 setValue:isa forKey:kCAFilterInputAmount];

  v7 = [*&v0[v4] contentView];
  v8 = [v7 layer];

  sub_10000C518(&unk_1009259C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007A5A00;
  *(v9 + 56) = sub_100620B80();
  *(v9 + 32) = v5;
  v10 = v5;
  v11 = sub_100753294().super.isa;

  [v8 setFilters:v11];

  *&v0[OBJC_IVAR____TtC22SubscribePageExtension31AppBundleGradientBackgroundView_gradientView] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v29.receiver = v0;
  v29.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v16 = v12;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v16 setClipsToBounds:0];
  v17 = OBJC_IVAR____TtC22SubscribePageExtension31AppBundleGradientBackgroundView_gradientView;
  [v16 addSubview:*&v16[OBJC_IVAR____TtC22SubscribePageExtension31AppBundleGradientBackgroundView_gradientView]];
  [v16 addSubview:*&v16[OBJC_IVAR____TtC22SubscribePageExtension31AppBundleGradientBackgroundView_blurView]];
  v18 = [v16 layer];
  [v18 setAllowsGroupBlending:0];

  v19 = *&v16[v17];
  *&v28.a = _swiftEmptyArrayStorage;
  v20 = v19;
  sub_1007545C4();
  [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:1.0];
  sub_1007545A4();
  sub_1007545D4();
  sub_1007545E4();
  sub_1007545B4();
  [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.2];
  sub_1007545A4();
  sub_1007545D4();
  sub_1007545E4();
  sub_1007545B4();
  [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.0];
  sub_1007545A4();
  sub_1007545D4();
  sub_1007545E4();
  sub_1007545B4();
  *&v20[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors] = _swiftEmptyArrayStorage;

  sub_100037ED0();

  v21 = *&v16[v17];
  v22 = [v21 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 1.0}];

  v23 = *&v16[v17];
  v24 = [v23 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 0.0}];

  v25 = *&v16[v17];
  sub_100037D2C(&off_100862DC0);

  v26 = *&v16[v17];
  CGAffineTransformMakeRotation(&v28, -0.20943951);
  [v26 setTransform:&v28];

  return v16;
}

unint64_t sub_100620B80()
{
  result = qword_1009384C8;
  if (!qword_1009384C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009384C8);
  }

  return result;
}

uint64_t sub_100620BCC(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v27 = a1 + 32;
  v3 = &qword_1009423E0;
  while (1)
  {
    v5 = *(v27 + 8 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      v7 = sub_100754664();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v25 = sub_100754664();
      v10 = v25 + v7;
      if (__OFADD__(v25, v7))
      {
LABEL_32:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v32 = v7;
    if (result)
    {
      if (!v8)
      {
        v11 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_100754664();
      goto LABEL_15;
    }

    if (v8)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_100754584();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v13 >> 1) - v12) < v32)
    {
      goto LABEL_36;
    }

    v29 = v1;
    v30 = v2;
    v16 = v11 + 8 * v12 + 32;
    v26 = v11;
    if (v6)
    {
      if (v14 < 1)
      {
        goto LABEL_38;
      }

      sub_100627660();
      for (i = 0; i != v14; ++i)
      {
        sub_10000C518(v3);
        v18 = v3;
        v19 = sub_1004A2704(v31, i, v5);
        v21 = *v20;
        (v19)(v31, 0);
        v3 = v18;
        *(v16 + 8 * i) = v21;
      }
    }

    else
    {
      sub_100016C60(0, &qword_100922300);
      swift_arrayInitWithCopy();
    }

    v1 = v29;
    v2 = v30;
    if (v32 >= 1)
    {
      v22 = *(v26 + 16);
      v23 = __OFADD__(v22, v32);
      v24 = v22 + v32;
      if (v23)
      {
        goto LABEL_37;
      }

      *(v26 + 16) = v24;
    }

LABEL_4:
    if (++v1 == v28)
    {
      return v2;
    }
  }

  v15 = v11;
  result = sub_100754664();
  v11 = v15;
  v14 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v32 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void sub_100620EA0()
{
  sub_1007433C4();
  sub_100627BC8(&qword_100925570, &type metadata accessor for ArtworkView);
  sub_100744274();
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_lockupView);
  v2 = OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_iapLockupView;
  v3 = *(*(v1 + OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_iapLockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  sub_100744274();

  v4 = *(*(v1 + OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_appLockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  sub_100744274();

  v5 = *(*(v1 + v2) + OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_inAppPurchaseIcon);
  if (v5)
  {
    v6 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_tileIconArtworkView];
    v7 = v5;
    v8 = v6;
    sub_100744274();

    v9 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkView];
    sub_100744274();
  }
}

void sub_100621074(void *a1)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_learnMoreButtonAction;
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_learnMoreButtonAction);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_learnMoreButtonAction) = a1;
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_learnMoreButton);
    v5 = a1;
    [v4 removeAction:v3 forControlEvents:64];
    v6 = *(v1 + v2);
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = a1;
  v6 = a1;
  if (a1)
  {
LABEL_3:
    v7 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_learnMoreButton);
    v8 = v6;
    [v7 addAction:v8 forControlEvents:64];
  }

LABEL_4:
}

uint64_t sub_100621148()
{
  v0 = sub_1007504F4();
  sub_100039C50(v0, qword_100982988);
  sub_10000D0FC(v0, qword_100982988);
  return sub_100750504();
}

uint64_t sub_10062119C()
{
  sub_10000C518(&unk_1009249D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007A5620;
  *(v0 + 32) = sub_100751624();
  *(v0 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  *(v0 + 48) = sub_1007519E4();
  *(v0 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  result = sub_1007516F4();
  *(v0 + 64) = result;
  *(v0 + 72) = &protocol witness table for UITraitHorizontalSizeClass;
  qword_1009418A8 = v0;
  return result;
}

double sub_10062122C()
{
  qword_1009418F0 = &type metadata for Double;
  unk_1009418F8 = &protocol witness table for Double;
  qword_100941918 = &type metadata for Double;
  unk_100941920 = &protocol witness table for Double;
  qword_100941900 = 0;
  qword_100941940 = &type metadata for Double;
  unk_100941948 = &protocol witness table for Double;
  qword_100941928 = 0;
  qword_100941968 = &type metadata for Double;
  unk_100941970 = &protocol witness table for Double;
  qword_100941950 = 0x4000000000000000;
  qword_100941990 = &type metadata for Double;
  unk_100941998 = &protocol witness table for Double;
  qword_100941978 = 0;
  qword_1009419B8 = &type metadata for Double;
  unk_1009419C0 = &protocol witness table for Double;
  qword_1009419A0 = 0x4026000000000000;
  qword_1009419E0 = &type metadata for Double;
  unk_1009419E8 = &protocol witness table for Double;
  qword_1009419C8 = 0x4026000000000000;
  qword_100941A08 = &type metadata for Double;
  unk_100941A10 = &protocol witness table for Double;
  qword_1009419F0 = 0x4026000000000000;
  qword_100941A30 = &type metadata for Double;
  unk_100941A38 = &protocol witness table for Double;
  qword_100941A18 = 0x4026000000000000;
  qword_100941A58 = &type metadata for Double;
  unk_100941A60 = &protocol witness table for Double;
  qword_100941A40 = 0x4042000000000000;
  qword_100941A80 = &type metadata for Double;
  unk_100941A88 = &protocol witness table for Double;
  qword_100941A68 = 0x4044000000000000;
  qword_100941AA8 = &type metadata for Double;
  unk_100941AB0 = &protocol witness table for Double;
  qword_100941A90 = 0x4032000000000000;
  result = 0.0;
  __asm { FMOV            V1.2D, #16.0 }

  xmmword_1009418B0 = xmmword_1007CE620;
  unk_1009418C0 = _Q1;
  xmmword_1009418D0 = _Q1;
  return result;
}

double sub_1006212CC()
{
  qword_100941AF8 = &type metadata for Double;
  unk_100941B00 = &protocol witness table for Double;
  qword_100941B20 = &type metadata for Double;
  unk_100941B28 = &protocol witness table for Double;
  qword_100941B08 = 0;
  qword_100941B48 = &type metadata for Double;
  unk_100941B50 = &protocol witness table for Double;
  qword_100941B30 = 0;
  qword_100941B70 = &type metadata for Double;
  unk_100941B78 = &protocol witness table for Double;
  qword_100941B58 = 0x4018000000000000;
  qword_100941B98 = &type metadata for Double;
  unk_100941BA0 = &protocol witness table for Double;
  qword_100941B80 = 0;
  qword_100941BC0 = &type metadata for Double;
  unk_100941BC8 = &protocol witness table for Double;
  qword_100941BA8 = 0x4026000000000000;
  qword_100941BE8 = &type metadata for Double;
  unk_100941BF0 = &protocol witness table for Double;
  qword_100941BD0 = 0x4026000000000000;
  qword_100941C10 = &type metadata for Double;
  unk_100941C18 = &protocol witness table for Double;
  qword_100941BF8 = 0x4026000000000000;
  qword_100941C38 = &type metadata for Double;
  unk_100941C40 = &protocol witness table for Double;
  qword_100941C20 = 0x4026000000000000;
  qword_100941C60 = &type metadata for Double;
  unk_100941C68 = &protocol witness table for Double;
  qword_100941C48 = 0x4042000000000000;
  qword_100941C88 = &type metadata for Double;
  unk_100941C90 = &protocol witness table for Double;
  qword_100941C70 = 0x4044000000000000;
  qword_100941CB0 = &type metadata for Double;
  unk_100941CB8 = &protocol witness table for Double;
  qword_100941C98 = 0x4032000000000000;
  __asm { FMOV            V1.2D, #16.0 }

  xmmword_100941AB8 = xmmword_1007CE620;
  unk_100941AC8 = _Q1;
  result = 16.0;
  xmmword_100941AD8 = xmmword_1007CE630;
  return result;
}

double sub_100621374()
{
  qword_100941D00 = &type metadata for Double;
  unk_100941D08 = &protocol witness table for Double;
  qword_100941D28 = &type metadata for Double;
  unk_100941D30 = &protocol witness table for Double;
  qword_100941D10 = 0;
  qword_100941D50 = &type metadata for Double;
  unk_100941D58 = &protocol witness table for Double;
  qword_100941D38 = 0;
  qword_100941D78 = &type metadata for Double;
  unk_100941D80 = &protocol witness table for Double;
  qword_100941D60 = 0x4010000000000000;
  qword_100941DA0 = &type metadata for Double;
  unk_100941DA8 = &protocol witness table for Double;
  qword_100941D88 = 0;
  qword_100941DC8 = &type metadata for Double;
  unk_100941DD0 = &protocol witness table for Double;
  qword_100941DB0 = 0x4030000000000000;
  qword_100941DF0 = &type metadata for Double;
  unk_100941DF8 = &protocol witness table for Double;
  qword_100941DD8 = 0x4030000000000000;
  qword_100941E18 = &type metadata for Double;
  unk_100941E20 = &protocol witness table for Double;
  qword_100941E00 = 0x4030000000000000;
  qword_100941E40 = &type metadata for Double;
  unk_100941E48 = &protocol witness table for Double;
  qword_100941E28 = 0x4030000000000000;
  qword_100941E68 = &type metadata for Double;
  unk_100941E70 = &protocol witness table for Double;
  qword_100941E50 = 0x4042000000000000;
  qword_100941E90 = &type metadata for Double;
  unk_100941E98 = &protocol witness table for Double;
  qword_100941E78 = 0x4044000000000000;
  qword_100941EB8 = &type metadata for Double;
  unk_100941EC0 = &protocol witness table for Double;
  qword_100941EA0 = 0x4032000000000000;
  __asm { FMOV            V1.2D, #20.0 }

  xmmword_100941CC0 = xmmword_1007CE640;
  *algn_100941CD0 = _Q1;
  result = 20.0;
  xmmword_100941CE0 = xmmword_1007CE650;
  return result;
}

double sub_10062141C()
{
  qword_100941F08 = &type metadata for Double;
  unk_100941F10 = &protocol witness table for Double;
  qword_100941F30 = &type metadata for Double;
  unk_100941F38 = &protocol witness table for Double;
  qword_100941F18 = 0;
  qword_100941F58 = &type metadata for Double;
  unk_100941F60 = &protocol witness table for Double;
  qword_100941F40 = 0;
  qword_100941F80 = &type metadata for Double;
  unk_100941F88 = &protocol witness table for Double;
  qword_100941F68 = 0x4018000000000000;
  qword_100941FA8 = &type metadata for Double;
  unk_100941FB0 = &protocol witness table for Double;
  qword_100941F90 = 0;
  qword_100941FD0 = &type metadata for Double;
  unk_100941FD8 = &protocol witness table for Double;
  qword_100941FB8 = 0x4026000000000000;
  qword_100941FF8 = &type metadata for Double;
  unk_100942000 = &protocol witness table for Double;
  qword_100941FE0 = 0x4026000000000000;
  qword_100942020 = &type metadata for Double;
  unk_100942028 = &protocol witness table for Double;
  qword_100942008 = 0x4026000000000000;
  qword_100942048 = &type metadata for Double;
  unk_100942050 = &protocol witness table for Double;
  qword_100942030 = 0x4026000000000000;
  qword_100942070 = &type metadata for Double;
  unk_100942078 = &protocol witness table for Double;
  qword_100942058 = 0x4042000000000000;
  qword_100942098 = &type metadata for Double;
  unk_1009420A0 = &protocol witness table for Double;
  qword_100942080 = 0x4044000000000000;
  qword_1009420C0 = &type metadata for Double;
  unk_1009420C8 = &protocol witness table for Double;
  qword_1009420A8 = 0x4032000000000000;
  xmmword_100941EC8 = xmmword_1007CE640;
  unk_100941ED8 = xmmword_1007CE660;
  result = 20.0;
  xmmword_100941EE8 = xmmword_1007CE670;
  return result;
}

uint64_t sub_1006214C8()
{
  v0 = sub_100747064();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039C50(v4, qword_1009420D0);
  sub_10000D0FC(v0, qword_1009420D0);
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_10097E3A8);
  (*(v1 + 16))(v3, v5, v0);
  sub_10074F4B4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10062162C(uint64_t a1)
{
  v2 = sub_100750304();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746F44();
  v36 = a1;
  sub_100746F84();
  if (qword_100920F80 != -1)
  {
    swift_once();
  }

  v6 = sub_100750534();
  v7 = sub_10000D0FC(v6, qword_100980BD0);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v35 = v8 + 16;
  v9(v5, v7, v6);
  v10 = v3[13];
  v33 = enum case for FontSource.useCase(_:);
  v10(v5);
  v11 = sub_100750B04();
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_10000D134(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v12 = sub_10000D134(v38);
  v13 = v3[2];
  v37 = v3 + 2;
  v34 = v13;
  v13(v12, v5, v2);
  sub_100750B14();
  v14 = v3[1];
  v14(v5, v2);
  sub_100747044();
  if (qword_100920F78 != -1)
  {
    swift_once();
  }

  v30 = sub_10000D0FC(v6, qword_100980BB8);
  (v9)(v5);
  (v10)(v5, v33, v2);
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_10000D134(v41);
  v31 = v9;
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v15 = sub_10000D134(v38);
  v34(v15, v5, v2);
  sub_100750B14();
  v14(v5, v2);
  sub_100746FC4();
  v32 = v14;
  if (qword_100920F68 != -1)
  {
    swift_once();
  }

  v16 = sub_10000D0FC(v6, qword_100980B88);
  v31(v5, v16, v6);
  v17 = v33;
  (v10)(v5, v33, v2);
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_10000D134(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v18 = sub_10000D134(v38);
  v34(v18, v5, v2);
  sub_100750B14();
  v32(v5, v2);
  sub_100746F64();
  v19 = v11;
  if (qword_100920F70 != -1)
  {
    swift_once();
  }

  v20 = sub_10000D0FC(v6, qword_100980BA0);
  v21 = v31;
  v31(v5, v20, v6);
  (v10)(v5, v17, v2);
  v42 = v19;
  v43 = &protocol witness table for StaticDimension;
  sub_10000D134(v41);
  v29 = v19;
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v22 = sub_10000D134(v38);
  v28 = v10;
  v23 = v34;
  v34(v22, v5, v2);
  sub_100750B14();
  v24 = v32;
  v32(v5, v2);
  sub_100747054();
  sub_100746FA4();
  v21(v5, v30, v6);
  (v28)(v5, v33, v2);
  v42 = v29;
  v43 = &protocol witness table for StaticDimension;
  sub_10000D134(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v25 = sub_10000D134(v38);
  v23(v25, v5, v2);
  sub_100750B14();
  v24(v5, v2);
  return sub_100746FB4();
}

uint64_t sub_100621C14()
{
  v0 = sub_100747064();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039C50(v4, qword_1009420E8);
  sub_10000D0FC(v0, qword_1009420E8);
  if (qword_100921AA8 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_1009420D0);
  (*(v1 + 16))(v3, v5, v0);
  sub_10074F4B4();
  return (*(v1 + 8))(v3, v0);
}

void sub_100621D78()
{
  v0 = sub_1007541F4();
  sub_100039C50(v0, qword_100942100);
  sub_10000D0FC(v0, qword_100942100);
  sub_100621DC4();
}

void sub_100621DC4()
{
  v0 = sub_10000C518(&unk_100944920);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  sub_1007541A4();
  v3 = sub_100753064();
  v4 = [objc_opt_self() systemImageNamed:v3];

  sub_100754194();
  sub_100754094();
  sub_1007540D4();
  sub_1007540C4();
  v5 = [objc_opt_self() labelColor];
  sub_100754124();
  v6 = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightBold];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_opt_self() configurationWithFont:v6 scale:1];
    sub_100754024();
    sub_100751A04();
    v9 = sub_1007519F4();
    (*(*(v9 - 8) + 56))(v2, 0, 1, v9);
    sub_100754144();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100621FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1007410D4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote];
  v6 = [v5 fontDescriptorWithSymbolicTraits:2];
  v7 = objc_opt_self();
  if (v6)
  {
    [v7 fontWithDescriptor:v6 size:0.0];

    v5 = v6;
  }

  else
  {
    [v7 fontWithDescriptor:v5 size:0.0];
  }

  sub_1000168F0();
  return sub_1007410E4();
}

char *sub_1006220F8(int a1)
{
  v2 = v1;
  v80 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_10000C518(&qword_100932470);
  __chkstk_darwin(v3 - 8);
  v81 = v73 - v4;
  v5 = sub_10074AB44();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v9 - 8);
  v11 = v73 - v10;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_primaryContent;
  *(v2 + v12) = [objc_allocWithZone(type metadata accessor for AppPromotionScrollableContentContainerView()) init];
  v13 = OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_secondaryContent;
  *(v2 + v13) = [objc_allocWithZone(UIView) init];
  v14 = OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_availabilityLabelView;
  type metadata accessor for AppPromotionFormattedDateView();
  *(v2 + v14) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v78 = OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_promotionKindLabel;
  v84 = sub_100750534();
  v15 = *(v84 - 8);
  v83 = *(v15 + 56);
  v16 = v15 + 56;
  v83(v11, 1, 1, v84);
  v77 = v16;
  v17 = enum case for DirectionalTextAlignment.none(_:);
  v18 = v6 + 104;
  v82 = *(v6 + 104);
  v74 = enum case for DirectionalTextAlignment.none(_:);
  v75 = v5;
  v82(v8, enum case for DirectionalTextAlignment.none(_:), v5);
  v19 = sub_100745C84();
  v76 = v19;
  v20 = objc_allocWithZone(v19);
  *(v2 + v78) = sub_100745C74();
  v78 = OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_titleLabel;
  v21 = v83;
  v83(v11, 1, 1, v84);
  v22 = v17;
  v23 = v82;
  v73[1] = v18;
  v82(v8, v22, v5);
  v24 = objc_allocWithZone(v19);
  v25 = sub_100745C74();
  v73[0] = v2;
  *(v2 + v78) = v25;
  v26 = OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_subtitleView;
  v27 = objc_allocWithZone(type metadata accessor for AppPromotionSubtitleView());
  *(v2 + v26) = sub_1002CADA4(1);
  v78 = OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_detailLabel;
  v28 = v84;
  v21(v11, 1, 1, v84);
  v29 = v74;
  v30 = v75;
  v23(v8, v74, v75);
  v31 = v76;
  v32 = objc_allocWithZone(v76);
  v33 = sub_100745C74();
  v34 = v73[0];
  *(v73[0] + v78) = v33;
  v35 = OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_inlineLearnMoreLabel;
  v36 = v28;
  v37 = ObjectType;
  v83(v11, 1, 1, v36);
  v82(v8, v29, v30);
  v38 = objc_allocWithZone(v31);
  v39 = v34;
  *&v34[v35] = sub_100745C74();
  v40 = OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_learnMoreButton;
  *&v39[v40] = [objc_allocWithZone(UIButton) init];
  v41 = OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_separatorView;
  type metadata accessor for SeparatorView();
  *&v39[v41] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v42 = OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_lockupView;
  type metadata accessor for SubscriptionLockupView();
  *&v39[v42] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v39[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_haveFlashedScrollIndicators] = 0;
  *&v39[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_learnMoreButtonAction] = 0;
  v43 = OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_mediaOverlayStyle;
  v44 = enum case for MediaOverlayStyle.matchSystem(_:);
  v45 = sub_100746BA4();
  (*(*(v45 - 8) + 104))(&v39[v43], v44, v45);
  v39[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_displayMode] = v80 & 1;
  v85.receiver = v39;
  v85.super_class = v37;
  v46 = objc_msgSendSuper2(&v85, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v50 = v46;
  [v50 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v50 setClipsToBounds:1];
  v51 = OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_secondaryContent;
  v52 = *&v50[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_secondaryContent];
  v53 = objc_opt_self();
  v54 = v52;
  v55 = [v53 systemBackgroundColor];
  [v54 setBackgroundColor:v55];

  [v50 addSubview:*&v50[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_primaryContent]];
  [v50 addSubview:*&v50[v51]];
  v56 = *&v50[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_availabilityLabelView];
  LOBYTE(v54) = v56[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style];
  v56[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style] = 1;
  v57 = v56;
  sub_1000C95D0(v54);

  v58 = *&v50[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_promotionKindLabel];
  v59 = [v53 secondaryLabelColor];
  [v58 setTextColor:v59];

  v60 = *&v50[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_separatorView];
  v61 = [v53 labelColor];
  v62 = [v61 colorWithAlphaComponent:0.5];

  v63 = *&v60[OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_lineColor];
  *&v60[OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_lineColor] = v62;
  v64 = v62;

  [*&v60[OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_lineView] setBackgroundColor:v64];
  v65 = OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_learnMoreButton;
  v66 = qword_100921AB8;
  v67 = *&v50[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_learnMoreButton];
  if (v66 != -1)
  {
    swift_once();
  }

  v68 = sub_1007541F4();
  v69 = sub_10000D0FC(v68, qword_100942100);
  v70 = *(v68 - 8);
  v71 = v81;
  (*(v70 + 16))(v81, v69, v68);
  (*(v70 + 56))(v71, 0, 1, v68);
  sub_100754224();

  if (qword_100921A80 != -1)
  {
    swift_once();
  }

  sub_100753D44();
  swift_unknownObjectRelease();
  [*&v50[v65] setNeedsUpdateConfiguration];
  sub_100623D40();
  sub_1006229FC();
  sub_100624294();
  sub_100624488();
  [v50 setNeedsLayout];

  return v50;
}

void sub_1006229FC()
{
  v1 = v0;
  v2 = sub_100746BA4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v50 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v48 - v6;
  v48 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_availabilityLabelView];
  v8 = OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_mediaOverlayStyle;
  swift_beginAccess();
  v9 = *(v3 + 16);
  v9(v7, &v1[v8], v2);
  v10 = v9;
  v49 = v9;
  v11 = sub_100746B94();
  v12 = *(v3 + 8);
  v12(v7, v2);
  [v48 setOverrideUserInterfaceStyle:v11];
  v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_primaryContent];
  v10(v7, &v1[v8], v2);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_mediaOverlayStyle;
  swift_beginAccess();
  (*(v3 + 24))(v13 + v14, v7, v2);
  swift_endAccess();
  sub_1000AEC40();
  v12(v7, v2);
  v15 = v50;
  v49(v50, &v1[v8], v2);
  sub_100746B84();
  v12(v15, v2);
  sub_100753094();
  v16 = sub_100753064();

  v17 = [*&v1[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_promotionKindLabel] layer];
  [v17 setCompositingFilter:v16];

  v18 = v1;
  v19 = [v1 traitCollection];
  v48 = v16;
  if (v19)
  {
    v20 = v19;
    if (sub_1007537D4())
    {
      v21 = sub_100753804();

      if (v21)
      {
        v22 = 0;
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v23 = v16;
  v22 = v16;
LABEL_7:
  v50 = *&v18[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_detailLabel];
  v24 = [v50 layer];
  v25 = v22;
  [v24 setCompositingFilter:v25];

  v49 = *&v18[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_inlineLearnMoreLabel];
  v26 = [v49 layer];
  [v26 setCompositingFilter:v25];

  if (v22)
  {
    v27 = sub_100016C60(0, &qword_10093EF30);
    v28 = v25;
  }

  else
  {
    v28 = 0;
    v27 = 0;
    v52 = 0;
    v53 = 0;
  }

  v51 = v28;
  v54 = v27;
  v29 = v25;
  sub_1002CB0F8(&v51);
  if (v22)
  {
    v30 = sub_100016C60(0, &qword_10093EF30);
    v31 = v29;
  }

  else
  {
    v31 = 0;
    v30 = 0;
    v52 = 0;
    v53 = 0;
  }

  v51 = v31;
  v54 = v30;
  v32 = v29;
  sub_1006B85A4(&v51);
  v33 = *&v18[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_lockupView];
  v34 = OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_iapLockupView;
  v35 = [*(v33 + OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_iapLockupView) isHidden];
  v36 = OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_appLockupView;
  if (!v35)
  {
    v36 = v34;
  }

  v37 = [*(*(v33 + v36) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel) layer];
  [v37 setCompositingFilter:v32];

  v38 = [*(v33 + v34) isHidden];
  v39 = OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_appLockupView;
  if (!v38)
  {
    v39 = v34;
  }

  v40 = [*(*(*(v33 + v39) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton) + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_subtitleLabel) layer];
  [v40 setCompositingFilter:v32];

  v41 = [v18 traitCollection];
  if (!v41)
  {
    goto LABEL_22;
  }

  v42 = v41;
  if ((sub_1007537D4() & 1) == 0)
  {

    goto LABEL_22;
  }

  v43 = sub_100753804();

  if ((v43 & 1) == 0)
  {
LABEL_22:
    v44 = &selRef_secondaryLabelColor;
    goto LABEL_23;
  }

  v44 = &selRef_labelColor;
LABEL_23:
  v45 = objc_opt_self();
  v46 = [v45 *v44];
  [v50 setTextColor:v46];

  v47 = [v45 *v44];
  [v49 setTextColor:v47];

  sub_1006246E8();
}

uint64_t sub_100622FBC@<X0>(double *a1@<X8>, double a2@<D1>)
{
  v3 = v2;
  v6 = [v2 traitCollection];
  v7 = sub_1007537D4();

  v8 = [v3 traitCollection];
  v9 = sub_100753804();

  if (v7)
  {
    if (v9)
    {
      if (qword_100921A88 != -1)
      {
        swift_once();
      }

      v10 = &xmmword_1009418B0;
    }

    else
    {
      if (qword_100921A90 != -1)
      {
        swift_once();
      }

      v10 = &xmmword_100941AB8;
    }

    sub_100609854(v10, __src);
    memcpy(a1, __src, 0x208uLL);
    *&__src[24] = &type metadata for Double;
    *&__src[32] = &protocol witness table for Double;
    *__src = 0x404E000000000000;
    sub_10000C620((a1 + 10));
    sub_100012160(__src, (a1 + 10));
    if (qword_100921A78 != -1)
    {
      swift_once();
    }

    v12 = sub_1007504F4();
    sub_10000D0FC(v12, qword_100982988);
    result = sub_1007504C4();
    a2 = trunc(v14);
  }

  else
  {
    if (v9)
    {
      if (qword_100921A98 != -1)
      {
        swift_once();
      }

      v11 = &xmmword_100941CC0;
    }

    else
    {
      if (qword_100921AA0 != -1)
      {
        swift_once();
      }

      v11 = &xmmword_100941EC8;
    }

    sub_100609854(v11, __src);
    result = memcpy(a1, __src, 0x208uLL);
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100623208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = [v2 traitCollection];
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = v6;
  if ((sub_1007537D4() & 1) == 0)
  {

    goto LABEL_6;
  }

  v8 = sub_100753804();

  if ((v8 & 1) == 0)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v9 = v3[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_displayMode];
LABEL_7:
  sub_100609854(a1, a2);
  v22[6] = *&v3[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_primaryContent];
  type metadata accessor for AppPromotionScrollableContentContainerView();
  sub_100750434();
  v22[5] = *&v3[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_secondaryContent];
  sub_100016C60(0, &qword_100922300);
  sub_100750434();
  v10 = sub_1007489F4();
  *(a2 + 624) = v10;
  v11 = sub_100627BC8(&qword_1009421B8, &type metadata accessor for BoundsBasedPlaceable);
  *(a2 + 632) = v11;
  sub_10000D134((a2 + 600));
  sub_100753C44();
  *(a2 + 664) = v10;
  *(a2 + 672) = v11;
  sub_10000D134((a2 + 640));
  sub_100753C44();
  *(a2 + 704) = v10;
  *(a2 + 712) = v11;
  sub_10000D134((a2 + 680));
  sub_100753C44();
  v12 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_subtitleView];
  *(a2 + 744) = v10;
  *(a2 + 752) = v11;
  sub_10000D134((a2 + 720));
  sub_100753C44();
  v22[3] = v10;
  v22[4] = v11;
  sub_10000D134(v22);
  sub_100753C44();
  *(a2 + 784) = v10;
  *(a2 + 792) = v11;
  sub_10000D134((a2 + 760));
  sub_100753C44();
  v13 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_inlineLearnMoreLabel];
  v21[3] = sub_100745C84();
  v21[4] = &protocol witness table for UILabel;
  v21[0] = v13;
  v14 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_separatorView];
  *(a2 + 904) = type metadata accessor for SeparatorView();
  *(a2 + 912) = sub_100627BC8(&qword_1009421C0, type metadata accessor for SeparatorView);
  *(a2 + 880) = v14;
  v15 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_lockupView];
  *(a2 + 944) = type metadata accessor for SubscriptionLockupView();
  *(a2 + 952) = sub_100627BC8(&qword_1009421C8, type metadata accessor for SubscriptionLockupView);
  *(a2 + 920) = v15;
  v16 = *(v12 + qword_100930F38);
  v17 = v13;
  v18 = v14;
  v19 = v15;
  LOBYTE(v16) = [v16 hasContent];
  *(a2 + 800) = 0u;
  *(a2 + 816) = 0u;
  *(a2 + 832) = 0u;
  *(a2 + 848) = 0u;
  *(a2 + 864) = 0u;
  sub_100609940(v22, a2 + 840);
  result = sub_100609940(v21, a2 + 800);
  *(a2 + 960) = v9;
  *(a2 + 961) = v16;
  return result;
}

uint64_t sub_100623624()
{
  v1 = v0;
  v45.receiver = v0;
  v45.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v45, "layoutSubviews");
  [v0 bounds];
  sub_100622FBC(v44, v2);
  sub_100623208(v44, v41);
  [v0 bounds];
  Width = v3;
  v6 = v5;
  v7 = [v0 traitCollection];
  if (sub_1007537D4())
  {
    v8 = sub_100753804();

    if (v8)
    {
      v9 = *v41;
      sub_10060BBE0(v7, v43, v39);
      sub_10000C888(v39, v40);
      sub_100751254();
      v11 = v9 + v10;
      goto LABEL_9;
    }
  }

  else
  {
  }

  if (sub_1007537D4())
  {
    sub_100609CEC(v7, v39, 0.0, 0.0, Width, v6);
  }

  else
  {
    sub_10060A6F4(v7, v39, 0.0, 0.0, Width, v6);
  }

  sub_10000C888(v39, v40);
  sub_100751254();
  Width = v12;
  v11 = v13;
LABEL_9:
  sub_10000C620(v39);

  [v1 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [v1 traitCollection];
  if (sub_1007537D4())
  {
    v23 = sub_100753804();

    if (v23)
    {
      sub_10060B89C(v22, v15, v17, v19, v21);
      goto LABEL_17;
    }
  }

  else
  {
  }

  v24 = sub_1007537D4();
  sub_10000C888(v42, v42[3]);
  sub_100751244();
  if (v24)
  {
    sub_100609CEC(v22, v39, v15, v17, v19, v21);
  }

  else
  {
    sub_10060A6F4(v22, v39, v15, v17, v19, v21);
    v46.origin.x = v15;
    v46.origin.y = v17;
    v46.size.width = v19;
    v46.size.height = v21;
    CGRectGetMinX(v46);
    v47.origin.x = v15;
    v47.origin.y = v17;
    v47.size.width = v19;
    v47.size.height = v21;
    CGRectGetMinY(v47);
    v48.origin.x = v15;
    v48.origin.y = v17;
    v48.size.width = v19;
    v48.size.height = v21;
    CGRectGetWidth(v48);
  }

  sub_10000C888(v39, v40);
  sub_100751244();
  sub_10000C620(v39);
LABEL_17:

  v25 = [v1 traitCollection];
  if (v25)
  {
    v26 = v25;
    if (sub_1007537D4())
    {
      v27 = sub_100753804();

      if (v27)
      {
        v28 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_primaryContent];
        [v1 bounds];
        Width = CGRectGetWidth(v49);
        v11 = v44[0];
        goto LABEL_24;
      }
    }

    else
    {
    }
  }

  [v1 bounds];
  Height = CGRectGetHeight(v50);
  v28 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_primaryContent];
  if (vabdd_f64(Height, v11) <= 1.0)
  {
    [v1 bounds];
    Width = v30;
    v11 = v31;
  }

LABEL_24:
  [v28 setContentSize:{Width, v11}];
  sub_100623B44();
  v1[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_haveFlashedScrollIndicators] = 0;
  [v28 contentSize];
  v33 = v32;
  [v28 bounds];
  v34 = 0;
  if (CGRectGetHeight(v51) >= v33)
  {
    v35 = [v1 traitCollection];
    if (v35)
    {
      v36 = v35;
      if (sub_1007537D4())
      {
        v37 = sub_100753804();

        v34 = v37 ^ 1;
        goto LABEL_30;
      }
    }

    v34 = 1;
  }

LABEL_30:
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_separatorView] setHidden:v34 & 1];
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_lockupView] setHidden:v34 & 1];
  sub_100582178(v41);
  return sub_1005821CC(v44);
}

void sub_100623B44()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_100753804();

  v4 = &OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_availabilityLabelView;
  if ((v3 & 1) == 0)
  {
    v4 = &OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_promotionKindLabel;
  }

  v14 = *&v1[*v4];
  v5 = [v1 traitCollection];
  v6 = sub_1007537D4();

  v7 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_primaryContent];
  if (v6)
  {
    v8 = *(v7 + OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_protectionMode);
    *(v7 + OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_protectionMode) = v14;
    if ((v8 - 1) > 1)
    {
      if (v8)
      {
        sub_100016C60(0, &qword_100922300);
        v11 = v14;
        sub_1000AFA34(v8);
        v12 = sub_100753FC4();
        sub_1000AFA20(v8);
        if (v12)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v13 = v14;
        sub_1000AFA34(0);
      }
    }

    else
    {
      v9 = v14;
    }

    sub_1000AEAAC();
LABEL_14:
    sub_1000AEF48();
    sub_1000AFA20(v8);

    goto LABEL_15;
  }

  v10 = *(v7 + OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_protectionMode);
  *(v7 + OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_protectionMode) = 2;
  if (v10 != 2)
  {
    sub_1000AEAAC();
  }

  sub_1000AEF48();
  sub_1000AFA20(v10);
LABEL_15:
}

uint64_t sub_100623D40()
{
  v1 = v0;
  sub_10000C518(&unk_1009231A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007A7210;
  v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_availabilityLabelView);
  v4 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_promotionKindLabel);
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  v44 = v2;
  v5 = v3;
  v6 = v4;
  v7 = [v1 traitCollection];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  if ((sub_1007537D4() & 1) == 0)
  {

    goto LABEL_10;
  }

  v9 = sub_100753804();

  if ((v9 & 1) == 0)
  {
LABEL_10:
    v14 = &OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_detailLabel;
    v15 = &OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_subtitleView;
    v16 = &OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_titleLabel;
    goto LABEL_11;
  }

  v10 = [v1 traitCollection];
  v11 = [v10 preferredContentSizeCategory];
  if (qword_100921A68 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v12 = sub_100753954();

    v13 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_titleLabel);
    if (v12)
    {
      sub_100753284();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }
    }

    else
    {
      sub_100753284();
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }
    }

    sub_100753344();
    v14 = &OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_inlineLearnMoreLabel;
    v15 = &OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_detailLabel;
    v16 = &OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_subtitleView;
LABEL_11:
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007CE680;
    v18 = *(v1 + *v16);
    *(inited + 32) = v18;
    v19 = *(v1 + *v15);
    *(inited + 40) = v19;
    v20 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_learnMoreButton);
    *(inited + 48) = v20;
    v21 = *(v1 + *v14);
    *(inited + 56) = v21;
    v22 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_separatorView);
    *(inited + 64) = v22;
    v23 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_lockupView);
    *(inited + 72) = v23;
    v24 = v18;
    v25 = v19;
    v26 = v20;
    v27 = v21;
    v28 = v22;
    v29 = v23;
    sub_10049FC94(inited);
    v11 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_primaryContent);
    v10 = v44;
    sub_10000C518(&qword_10092E9D0);
    v30 = swift_initStackObject();
    *(v30 + 16) = xmmword_1007A5A00;
    *(v30 + 32) = v44;

    v31 = sub_100620BCC(v30);
    swift_setDeallocating();
    sub_10000C8CC(v30 + 32, &qword_1009423E0);
    if (v31 >> 62)
    {
      v32 = sub_100754664();
      if (!v32)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v32)
      {
        goto LABEL_23;
      }
    }

    if (v32 < 1)
    {
      __break(1u);
      goto LABEL_37;
    }

    v33 = 0;
    v10 = (v31 & 0xC000000000000001);
    do
    {
      if (v10)
      {
        v34 = sub_100754574();
      }

      else
      {
        v34 = *(v31 + 8 * v33 + 32);
      }

      v35 = v34;
      ++v33;
      [v11 addSubview:v34];
    }

    while (v32 != v33);
LABEL_23:

    v11 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_secondaryContent);
    v1 = _swiftEmptyArrayStorage;
    v36 = swift_initStackObject();
    *(v36 + 16) = xmmword_1007A5A00;
    *(v36 + 32) = _swiftEmptyArrayStorage;

    v37 = sub_100620BCC(v36);
    swift_setDeallocating();
    sub_10000C8CC(v36 + 32, &qword_1009423E0);
    if (v37 >> 62)
    {
      v38 = sub_100754664();
      if (!v38)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v38)
      {
        goto LABEL_32;
      }
    }

    if (v38 >= 1)
    {
      break;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
  }

  for (i = 0; i != v38; ++i)
  {
    if ((v37 & 0xC000000000000001) != 0)
    {
      v40 = sub_100754574();
    }

    else
    {
      v40 = *(v37 + 8 * i + 32);
    }

    v41 = v40;
    [v11 addSubview:v40];
  }

LABEL_32:

  if (_swiftEmptyArrayStorage >> 62)
  {
    v42 = sub_100754664();
  }

  else
  {
    v42 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v11 setHidden:v42 == 0];
}

id sub_100624294()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_promotionKindLabel];
  if (qword_100921DA8 != -1)
  {
    swift_once();
  }

  v3 = qword_100982F40;
  v4 = *algn_100982F48;
  v5 = qword_100982F50;
  v6 = [v0 traitCollection];
  if (sub_100753804())
  {
  }

  else
  {
    v7 = sub_1007537D4();

    if (v7)
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }
  }

  [v2 setFont:v5];
  v8 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_detailLabel];
  if (qword_100921DC0 != -1)
  {
    swift_once();
  }

  v9 = qword_100982F88;
  v10 = unk_100982F90;
  v11 = qword_100982F98;
  v12 = [v1 traitCollection];
  if (sub_100753804())
  {

    v13 = v11;
  }

  else
  {
    v14 = sub_1007537D4();

    if (v14)
    {
      v13 = v9;
    }

    else
    {
      v13 = v10;
    }
  }

  [v8 setFont:v13];
  v15 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_inlineLearnMoreLabel];
  v16 = [v1 traitCollection];
  if (sub_100753804())
  {
  }

  else
  {
    v17 = sub_1007537D4();

    if (v17)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }
  }

  [v15 setFont:v11];
  v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_learnMoreButton];

  return [v18 setNeedsUpdateConfiguration];
}

uint64_t sub_100624488()
{
  v1 = v0;
  v2 = sub_100747064();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v20 - v8;
  v10 = [v0 traitCollection];
  v11 = sub_100753804();

  v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_lockupView];
  if (v11)
  {
    if (qword_100921AB0 != -1)
    {
      swift_once();
    }

    v13 = qword_1009420E8;
  }

  else
  {
    if (qword_100921AA8 != -1)
    {
      swift_once();
    }

    v13 = qword_1009420D0;
  }

  v14 = sub_10000D0FC(v2, v13);
  v15 = *(v3 + 16);
  v15(v9, v14, v2);
  v16 = *&v12[OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_iapLockupView];
  v15(v5, v9, v2);
  v17 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v3 + 24))(&v16[v17], v5, v2);
  swift_endAccess();
  [v16 setNeedsLayout];
  v18 = *(v3 + 8);
  v18(v5, v2);
  [v12 setNeedsLayout];
  return (v18)(v9, v2);
}

void sub_1006246E8()
{
  v1 = v0;
  v2 = sub_100746BA4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_mediaOverlayStyle;
  swift_beginAccess();
  (*(v3 + 16))(v5, &v1[v6], v2);
  v7 = sub_100746B84();
  (*(v3 + 8))(v5, v2);
  if (v7 != 2)
  {
    goto LABEL_5;
  }

  v8 = [v1 traitCollection];
  if (v8)
  {
    v9 = v8;
    if (sub_1007537D4())
    {
      v10 = sub_100753804();

      if (v10)
      {
LABEL_5:
        v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_lockupView];
        v12 = OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_iapLockupView;
        v13 = [*(v11 + OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_iapLockupView) isHidden];
        v14 = OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_appLockupView;
        if (!v13)
        {
          v14 = v12;
        }

        v15 = *(*(v11 + v14) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton);
        sub_100016C60(0, &qword_100923500);
        v16 = v15;
        v17 = sub_100753EF4();
        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_lockupView];
  v19 = OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_iapLockupView;
  v20 = [*(v18 + OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_iapLockupView) isHidden];
  v21 = OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_appLockupView;
  if (!v20)
  {
    v21 = v19;
  }

  v22 = *(*(v18 + v21) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton);
  v23 = objc_opt_self();
  v16 = v22;
  v17 = [v23 whiteColor];
LABEL_12:
  v24 = v17;
  [v16 setTintColor:v17];
}

uint64_t sub_100624950()
{
  sub_10000C518(&qword_10092D9D0);
  v1 = swift_allocObject();
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_availabilityLabelView);
  v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_promotionKindLabel);
  v4 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_titleLabel);
  *(v1 + 16) = xmmword_1007A79C0;
  v5 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_subtitleView);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v6 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_detailLabel);
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  v7 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_inlineLearnMoreLabel);
  *(v1 + 64) = v6;
  *(v1 + 72) = v7;
  v8 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_learnMoreButton);
  *(v1 + 80) = v8;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  return v1;
}

uint64_t sub_100624A38()
{
  sub_10000C518(&qword_10092D9D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1007A7250;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_promotionKindLabel);
  v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_titleLabel);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_subtitleView);
  v5 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_detailLabel);
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  v6 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_inlineLearnMoreLabel);
  v7 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_learnMoreButton);
  *(v1 + 64) = v6;
  *(v1 + 72) = v7;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = v7;
  return v1;
}

uint64_t sub_100624B04()
{
  sub_10000C518(&qword_10092D9D0);
  v1 = swift_allocObject();
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_primaryContent);
  v3 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_contentBasedProtectionView);
  *(v1 + 16) = xmmword_1007A6580;
  v4 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_fullProtectionView);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  v5 = v4;
  v6 = v3;
  return v1;
}

uint64_t type metadata accessor for AppPromotionDetailPageContentView()
{
  result = qword_1009421A8;
  if (!qword_1009421A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100624E28()
{
  result = sub_100746BA4();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

id sub_100624EEC(id result)
{
  v2 = v1[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_displayMode];
  v1[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_displayMode] = result & 1;
  if (v2 != (result & 1))
  {
    sub_100623D40();

    return [v1 setNeedsLayout];
  }

  return result;
}

id sub_100624F50(char *a1)
{
  [*&a1[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_learnMoreButton] setNeedsUpdateConfiguration];
  sub_100623D40();
  sub_1006229FC();
  sub_100624294();
  sub_100624488();

  return [a1 setNeedsLayout];
}

uint64_t sub_100624FB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v146 = a2;
  v5 = sub_10000C518(&qword_100934110);
  __chkstk_darwin(v5 - 8);
  v132 = &v117 - v6;
  v131 = sub_10074C3E4();
  v128 = *(v131 - 8);
  __chkstk_darwin(v131);
  v129 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_10000C518(&unk_100925560);
  v141 = *(v144 - 8);
  __chkstk_darwin(v144);
  v130 = &v117 - v8;
  v9 = sub_10000C518(&unk_100925520);
  __chkstk_darwin(v9 - 8);
  v135 = &v117 - v10;
  v11 = sub_10000C518(&unk_100925990);
  __chkstk_darwin(v11 - 8);
  v137 = &v117 - v12;
  v13 = sub_10000C518(&unk_1009259A0);
  __chkstk_darwin(v13 - 8);
  v136 = &v117 - v14;
  v15 = sub_10000C518(&qword_10092B188);
  __chkstk_darwin(v15 - 8);
  v142 = &v117 - v16;
  v17 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v17 - 8);
  v127 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v145 = &v117 - v20;
  v21 = sub_10000C518(&unk_100925530);
  __chkstk_darwin(v21 - 8);
  v147 = &v117 - v22;
  v23 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_promotionKindLabel];
  sub_100745484();
  v24 = sub_100753064();

  [v23 setText:v24];

  v25 = sub_100745494();
  sub_1000C9098(v25, v26);
  if (qword_100921DB8 != -1)
  {
    swift_once();
  }

  v27 = qword_100982F70;
  v28 = *algn_100982F78;
  v29 = qword_100982F80;
  v30 = [v2 traitCollection];
  if (sub_100753804())
  {
  }

  else
  {
    v31 = sub_1007537D4();

    if (v31)
    {
      v29 = v27;
    }

    else
    {
      v29 = v28;
    }
  }

  v134 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_titleLabel];
  v139 = v29;
  v143 = a1;
  sub_1007454A4();
  v32 = sub_10074F914();

  v33 = [objc_opt_self() secondaryLabelColor];
  v34 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v32];
  v35 = [v32 length];
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v33;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1005CEDA8;
  *(v37 + 24) = v36;
  v152 = sub_1000CF744;
  v153 = v37;
  aBlock = _NSConcreteStackBlock;
  v149 = 1107296256;
  v138 = &v150;
  v150 = sub_1001529B4;
  v151 = &unk_10087E738;
  v38 = v3;
  v39 = _Block_copy(&aBlock);
  v40 = v34;
  v41 = v33;

  [v32 enumerateAttribute:NSStrikethroughStyleAttributeName inRange:0 options:v35 usingBlock:{0, v39}];

  _Block_release(v39);
  v42 = 1;
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_33;
  }

  v140 = v38;
  v44 = [v38 traitCollection];
  v45 = objc_allocWithZone(NSMutableAttributedString);
  v46 = v139;
  v47 = v139;
  v48 = [v45 initWithAttributedString:v40];
  v49 = [v40 length];
  v50 = swift_allocObject();
  *(v50 + 16) = v46;
  *(v50 + 24) = v44;
  *(v50 + 32) = v48;
  *(v50 + 40) = 1;
  v51 = swift_allocObject();
  *(v51 + 16) = sub_100047814;
  *(v51 + 24) = v50;
  v152 = sub_1000B18A8;
  v153 = v51;
  aBlock = _NSConcreteStackBlock;
  v149 = 1107296256;
  v150 = sub_100047044;
  v151 = &unk_10087E7B0;
  v42 = _Block_copy(&aBlock);
  v38 = v153;
  v52 = v47;
  isEscapingClosureAtFileLocation = v48;

  v53 = v44;

  [v40 enumerateAttributesInRange:0 options:v49 usingBlock:{0x100000, v42}];

  _Block_release(v42);
  v54 = swift_isEscapingClosureAtFileLocation();

  v55 = v140;
  if (v54)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
    goto LABEL_29;
  }

  v133 = v52;
  [v134 setAttributedText:isEscapingClosureAtFileLocation];

  v56 = *&v55[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_detailLabel];
  sub_100745424();
  if (v57)
  {
    v58 = sub_100753064();
  }

  else
  {
    v58 = 0;
  }

  [v56 setText:v58];

  v59 = *&v55[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_learnMoreButton];
  sub_100745454();
  v60 = sub_100753064();

  [v59 setTitle:v60 forState:0];

  v61 = *&v55[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_inlineLearnMoreLabel];
  if (sub_100745444())
  {
    v62 = sub_10074F914();
  }

  else
  {
    v62 = 0;
  }

  [v61 setAttributedText:v62];

  v63 = sub_1007454B4();
  v65 = v64;
  v66 = sub_100745414();
  sub_1002CAA70(v63, v65, v66);

  v67 = [v55 traitCollection];
  v68 = v147;
  v69 = v145;
  if (v67)
  {
    v70 = v67;
    if (sub_1007537D4())
    {
      v71 = sub_100753804();

      if (v71)
      {
        v72 = enum case for OfferStyle.infer(_:);
        v73 = sub_100742E24();
        v74 = *(v73 - 8);
        (*(v74 + 104))(v68, v72, v73);
        (*(v74 + 56))(v68, 0, 1, v73);
        v69 = v145;
        goto LABEL_22;
      }
    }

    else
    {
    }
  }

  v75 = sub_100742E24();
  (*(*(v75 - 8) + 56))(v68, 1, 1, v75);
LABEL_22:
  v76 = *&v55[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_lockupView];
  v77 = sub_100745434();
  v78 = sub_10000C518(&unk_10092EEA0);
  v79 = *(v78 - 8);
  v134 = *(v79 + 56);
  v126 = v79 + 56;
  (v134)(v69, 1, 1, v78);
  v80 = v142;
  sub_100745474();
  v81 = sub_100746BA4();
  (*(*(v81 - 8) + 56))(v80, 0, 1, v81);
  sub_100741D54();
  v138 = v77;
  v82 = swift_dynamicCastClass();
  v83 = *&v76[OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_iapLockupView];
  v139 = v76;
  if (v82)
  {
    v84 = v82;
    v125 = v78;
    v120 = sub_100745E94();
    v85 = *(v120 - 8);
    v122 = *(v85 + 56);
    v123 = v85 + 56;
    v86 = v136;
    v122(v136, 1, 1, v120);
    v121 = *(v141 + 56);
    v87 = v137;
    v121(v137, 1, 1, v144);
    v88 = v69;
    v89 = sub_10074F8B4();
    v90 = *(v89 - 8);
    v118 = *(v90 + 56);
    v119 = v90 + 56;
    v91 = v135;
    v118(v135, 1, 1, v89);
    swift_retain_n();
    sub_100656038(v84, v83, v88, v146, 1, 0, v147, v86, v91, v87);
    sub_10000C8CC(v91, &unk_100925520);
    v83[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1001CE71C();
    [v83 setNeedsLayout];
    sub_10000C8CC(v87, &unk_100925990);
    sub_10000C8CC(v86, &unk_1009259A0);
    v92 = *&v139[OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_appLockupView];
    v124 = v84;
    v93 = sub_100741D44();
    v94 = v146;
    v122(v86, 1, 1, v120);
    v121(v87, 1, 1, v144);
    v118(v91, 1, 1, v89);
    sub_100656038(v93, v92, v145, v94, 0, 0, v147, v86, v91, v87);
    sub_10000C8CC(v91, &unk_100925520);
    v92[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1001CE71C();
    [v92 setNeedsLayout];

    sub_10000C8CC(v87, &unk_100925990);
    sub_10000C8CC(v86, &unk_1009259A0);
    v95 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton;
    [*&v92[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton] setAlpha:0.0];
    [*&v92[v95] setUserInteractionEnabled:0];
    [v92 setHidden:1];
    v96 = v138;
    v97 = sub_10074EF24();
    if (v97)
    {
    }

    sub_1001CD868(v97 != 0);
    v98 = *&v92[v95];
    v99 = sub_10074EF04();

    v100 = sub_10074EDF4();

    v101 = v127;
    (v134)(v127, 1, 1, v125);
    v102 = v128;
    v103 = v131;
    (*(v128 + 104))(v129, enum case for OfferButtonSubtitlePosition.below(_:), v131);
    (*(v102 + 56))(v132, 1, 1, v103);
    sub_100627BC8(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition);
    v104 = v130;
    sub_10074A9C4();
    sub_10015DE40(v99, v100, 0, v101, v104, v94, 0, 0);

    (*(v141 + 8))(v104, v144);
    sub_10000C8CC(v101, &unk_100925540);
    v105 = v139;
    sub_1001983E4(v96, v139);

    v80 = v142;
    sub_100608B80(v105, v142);
    v69 = v145;
  }

  else
  {
    [v83 setHidden:1];
    v106 = *&v76[OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_appLockupView];
    v107 = sub_100745E94();
    v108 = v136;
    (*(*(v107 - 8) + 56))(v136, 1, 1, v107);
    v109 = v137;
    (*(v141 + 56))(v137, 1, 1, v144);
    v110 = sub_10074F8B4();
    v111 = v135;
    (*(*(v110 - 8) + 56))(v135, 1, 1, v110);
    sub_100656038(v138, v106, v69, v146, 0, 0, v68, v108, v111, v109);
    sub_10000C8CC(v111, &unk_100925520);
    v106[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1001CE71C();
    [v106 setNeedsLayout];
    sub_10000C8CC(v109, &unk_100925990);
    v112 = v108;
    v113 = v139;
    sub_10000C8CC(v112, &unk_1009259A0);
    sub_100608B80(v113, v80);
  }

  sub_10000C8CC(v80, &qword_10092B188);
  sub_10000C8CC(v69, &unk_100925540);
  sub_1007442C4();
  sub_1007526C4();
  isEscapingClosureAtFileLocation = aBlock;
  if (!aBlock)
  {
    v42 = v133;
    v38 = v147;
    goto LABEL_31;
  }

  v42 = v133;
  v38 = v147;
  if (qword_100921A60 != -1)
  {
    goto LABEL_34;
  }

LABEL_29:
  v114 = sub_100747064();
  sub_10000D0FC(v114, qword_100982960);
  sub_100746F34();
  v115 = sub_100745434();
  sub_100606134(v115, isEscapingClosureAtFileLocation);

LABEL_31:
  sub_100624294();

  return sub_10000C8CC(v38, &unk_100925530);
}

uint64_t sub_100626338()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100626378(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1006263A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v123 = a3;
  v134 = a2;
  v6 = sub_10000C518(&qword_100934110);
  __chkstk_darwin(v6 - 8);
  v129 = v114 - v7;
  v128 = sub_10074C3E4();
  v125 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_10000C518(&unk_100925560);
  v138 = *(v141 - 8);
  __chkstk_darwin(v141);
  v127 = v114 - v9;
  v10 = sub_10000C518(&unk_100925520);
  __chkstk_darwin(v10 - 8);
  v131 = v114 - v11;
  v12 = sub_10000C518(&unk_100925990);
  __chkstk_darwin(v12 - 8);
  v133 = v114 - v13;
  v14 = sub_10000C518(&unk_1009259A0);
  __chkstk_darwin(v14 - 8);
  v132 = v114 - v15;
  v16 = sub_10000C518(&qword_10092B188);
  __chkstk_darwin(v16 - 8);
  v139 = v114 - v17;
  v18 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v18 - 8);
  v124 = v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v114 - v21;
  v23 = sub_10000C518(&unk_100925530);
  __chkstk_darwin(v23 - 8);
  v25 = v114 - v24;
  v26 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_promotionKindLabel];
  sub_10074F874();
  v27 = sub_100753064();

  [v26 setText:v27];

  v28 = sub_10074F864();
  sub_1000C9098(v28, v29);
  if (qword_100921DB8 != -1)
  {
    swift_once();
  }

  v30 = qword_100982F70;
  v31 = *algn_100982F78;
  v32 = qword_100982F80;
  v33 = [v3 traitCollection];
  v34 = sub_100753804();
  v142 = v25;
  v143 = v22;
  if (v34)
  {
  }

  else
  {
    v35 = sub_1007537D4();

    if (v35)
    {
      v32 = v30;
    }

    else
    {
      v32 = v31;
    }
  }

  v130 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_titleLabel];
  v136 = v32;
  v140 = a1;
  sub_10074F884();
  v36 = sub_10074F914();

  v37 = [objc_opt_self() secondaryLabelColor];
  v38 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v36];
  v39 = [v36 length];
  v40 = swift_allocObject();
  *(v40 + 16) = v38;
  *(v40 + 24) = v37;
  v41 = swift_allocObject();
  v41[2] = sub_100627C1C;
  v41[3] = v40;
  v148 = sub_100627C20;
  v149 = v41;
  aBlock = _NSConcreteStackBlock;
  v145 = 1107296256;
  v135 = &v146;
  v146 = sub_1001529B4;
  v147 = &unk_10087E828;
  v42 = v4;
  v43 = _Block_copy(&aBlock);
  v44 = v38;
  v45 = v37;

  [v36 enumerateAttribute:NSStrikethroughStyleAttributeName inRange:0 options:v39 usingBlock:{0, v43}];

  _Block_release(v43);
  v46 = 1;
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_32;
  }

  v137 = v42;
  v48 = [v42 traitCollection];
  v49 = objc_allocWithZone(NSMutableAttributedString);
  v50 = v136;
  v51 = v136;
  v52 = [v49 initWithAttributedString:v44];
  v41 = [v44 length];
  v53 = swift_allocObject();
  *(v53 + 16) = v50;
  *(v53 + 24) = v48;
  *(v53 + 32) = v52;
  *(v53 + 40) = 1;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_1002B1424;
  *(v54 + 24) = v53;
  v148 = sub_1002B1408;
  v149 = v54;
  aBlock = _NSConcreteStackBlock;
  v145 = 1107296256;
  v146 = sub_100047044;
  v147 = &unk_10087E8A0;
  v46 = _Block_copy(&aBlock);
  v55 = v51;
  isEscapingClosureAtFileLocation = v52;

  v56 = v48;

  [v44 enumerateAttributesInRange:0 options:v41 usingBlock:{0x100000, v46}];

  v135 = v55;
  _Block_release(v46);
  v57 = swift_isEscapingClosureAtFileLocation();

  v58 = v137;
  if (v57)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v130 setAttributedText:isEscapingClosureAtFileLocation];

  v59 = *&v58[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_detailLabel];
  sub_10074F824();
  if (v60)
  {
    v61 = sub_100753064();
  }

  else
  {
    v61 = 0;
  }

  v62 = v142;
  [v59 setText:v61];

  v63 = [v58 traitCollection];
  if (v63)
  {
    v64 = v63;
    if (sub_1007537D4())
    {
      v65 = sub_100753804();

      if (v65)
      {
        v66 = enum case for OfferStyle.infer(_:);
        v67 = sub_100742E24();
        v68 = *(v67 - 8);
        (*(v68 + 104))(v62, v66, v67);
        v69 = 1;
        (*(v68 + 56))(v62, 0, 1, v67);
        goto LABEL_19;
      }
    }

    else
    {
    }
  }

  v70 = sub_100742E24();
  (*(*(v70 - 8) + 56))(v62, 1, 1, v70);
  v69 = 0;
LABEL_19:
  v71 = *&v58[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_lockupView];
  v72 = sub_10074F834();
  v73 = sub_10000C518(&unk_10092EEA0);
  v74 = *(v73 - 8);
  v75 = *(v74 + 56);
  v130 = (v74 + 56);
  v75(v143, 1, 1, v73);
  if (v69)
  {
    v76 = sub_100746BA4();
    v77 = v139;
    (*(*(v76 - 8) + 56))(v139, 1, 1, v76);
  }

  else
  {
    v77 = v139;
    sub_1006095A0(v123, v139);
  }

  sub_100741D54();
  v78 = swift_dynamicCastClass();
  v79 = *&v71[OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_iapLockupView];
  v136 = v71;
  if (v78)
  {
    v122 = v75;
    v123 = v73;
    v80 = v78;
    v117 = sub_100745E94();
    v81 = *(v117 - 8);
    v116 = *(v81 + 56);
    v118 = v81 + 56;
    v82 = v143;
    v83 = v132;
    v116(v132, 1, 1, v117);
    v115 = *(v138 + 56);
    v84 = v133;
    v115(v133, 1, 1, v141);
    v85 = sub_10074F8B4();
    v86 = *(v85 - 8);
    v114[0] = *(v86 + 56);
    v114[1] = v86 + 56;
    v87 = v131;
    (v114[0])(v131, 1, 1, v85);
    swift_retain_n();
    v88 = v134;
    sub_100656038(v80, v79, v82, v134, 1, 0, v142, v83, v87, v84);
    sub_10000C8CC(v87, &unk_100925520);
    v79[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    v119 = v72;
    sub_1001CE71C();
    v120 = v79;
    [v79 setNeedsLayout];
    sub_10000C8CC(v84, &unk_100925990);
    sub_10000C8CC(v83, &unk_1009259A0);
    v89 = *&v136[OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_appLockupView];
    v121 = v80;
    v90 = sub_100741D44();
    v116(v83, 1, 1, v117);
    v115(v84, 1, 1, v141);
    v91 = v88;
    (v114[0])(v87, 1, 1, v85);
    sub_100656038(v90, v89, v82, v88, 0, 0, v142, v83, v87, v84);
    sub_10000C8CC(v87, &unk_100925520);
    v89[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1001CE71C();
    [v89 setNeedsLayout];

    sub_10000C8CC(v84, &unk_100925990);
    sub_10000C8CC(v83, &unk_1009259A0);
    v92 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton;
    [*&v89[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton] setAlpha:0.0];
    [*&v89[v92] setUserInteractionEnabled:0];
    [v89 setHidden:1];
    v93 = v119;
    v94 = sub_10074EF24();
    if (v94)
    {
    }

    sub_1001CD868(v94 != 0);
    v95 = *&v89[v92];
    v96 = sub_10074EF04();

    v97 = sub_10074EDF4();

    v98 = v124;
    v122(v124, 1, 1, v123);
    v99 = v125;
    v100 = v128;
    (*(v125 + 104))(v126, enum case for OfferButtonSubtitlePosition.below(_:), v128);
    (*(v99 + 56))(v129, 1, 1, v100);
    sub_100627BC8(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition);
    v101 = v127;
    sub_10074A9C4();
    sub_10015DE40(v96, v97, 0, v98, v101, v91, 0, 0);

    (*(v138 + 8))(v101, v141);
    sub_10000C8CC(v98, &unk_100925540);
    v102 = v136;
    sub_1001983E4(v93, v136);

    v77 = v139;
    sub_100608B80(v102, v139);
    v41 = v142;
  }

  else
  {
    [v79 setHidden:1];
    v103 = *&v71[OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_appLockupView];
    v104 = sub_100745E94();
    v41 = v62;
    v105 = v132;
    (*(*(v104 - 8) + 56))(v132, 1, 1, v104);
    v106 = v133;
    (*(v138 + 56))(v133, 1, 1, v141);
    v107 = sub_10074F8B4();
    v108 = v131;
    (*(*(v107 - 8) + 56))(v131, 1, 1, v107);
    sub_100656038(v72, v103, v143, v134, 0, 0, v62, v105, v108, v106);
    sub_10000C8CC(v108, &unk_100925520);
    v103[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1001CE71C();
    [v103 setNeedsLayout];
    sub_10000C8CC(v106, &unk_100925990);
    v109 = v105;
    v110 = v136;
    sub_10000C8CC(v109, &unk_1009259A0);
    sub_100608B80(v110, v77);
  }

  sub_10000C8CC(v77, &qword_10092B188);
  sub_10000C8CC(v143, &unk_100925540);
  sub_1007442C4();
  sub_1007526C4();
  isEscapingClosureAtFileLocation = aBlock;
  v46 = v135;
  if (aBlock)
  {
    if (qword_100921A60 == -1)
    {
LABEL_29:
      v111 = sub_100747064();
      sub_10000D0FC(v111, qword_100982960);
      sub_100746F34();
      v112 = sub_10074F834();
      sub_100606134(v112, isEscapingClosureAtFileLocation);

      goto LABEL_30;
    }

LABEL_33:
    swift_once();
    goto LABEL_29;
  }

LABEL_30:
  sub_100624294();

  return sub_10000C8CC(v41, &unk_100925530);
}

unint64_t sub_100627660()
{
  result = qword_100939AD0;
  if (!qword_100939AD0)
  {
    sub_10000C724(&qword_1009423E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939AD0);
  }

  return result;
}

void sub_1006276C4()
{
  v1 = sub_10074AB44();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v5 - 8);
  v7 = v39 - v6;
  v8 = OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_primaryContent;
  v9 = v0;
  *(v0 + v8) = [objc_allocWithZone(type metadata accessor for AppPromotionScrollableContentContainerView()) init];
  v10 = OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_secondaryContent;
  *(v9 + v10) = [objc_allocWithZone(UIView) init];
  v11 = v9;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_availabilityLabelView;
  type metadata accessor for AppPromotionFormattedDateView();
  *(v9 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v45 = OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_promotionKindLabel;
  v13 = sub_100750534();
  v14 = *(v13 - 8);
  v46 = *(v14 + 56);
  v15 = v14 + 56;
  v44 = v13;
  v46(v7, 1, 1, v13);
  v43 = v15;
  v16 = enum case for DirectionalTextAlignment.none(_:);
  v40 = *(v2 + 104);
  v17 = v4;
  v41 = enum case for DirectionalTextAlignment.none(_:);
  v47 = v1;
  v40(v4, enum case for DirectionalTextAlignment.none(_:), v1);
  v18 = sub_100745C84();
  v42 = v18;
  v19 = objc_allocWithZone(v18);
  *(v11 + v45) = sub_100745C74();
  v45 = OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_titleLabel;
  v20 = v13;
  v21 = v46;
  v46(v7, 1, 1, v20);
  v22 = v16;
  v23 = v40;
  v39[1] = v2 + 104;
  v40(v17, v22, v1);
  v24 = objc_allocWithZone(v18);
  *(v11 + v45) = sub_100745C74();
  v25 = OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_subtitleView;
  v26 = objc_allocWithZone(type metadata accessor for AppPromotionSubtitleView());
  *(v11 + v25) = sub_1002CADA4(1);
  v45 = OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_detailLabel;
  v27 = v44;
  v21(v7, 1, 1, v44);
  v28 = v41;
  v23(v17, v41, v47);
  v29 = v42;
  v30 = objc_allocWithZone(v42);
  *(v11 + v45) = sub_100745C74();
  v31 = OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_inlineLearnMoreLabel;
  v46(v7, 1, 1, v27);
  v23(v17, v28, v47);
  v32 = objc_allocWithZone(v29);
  *(v11 + v31) = sub_100745C74();
  v33 = OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_learnMoreButton;
  *(v11 + v33) = [objc_allocWithZone(UIButton) init];
  v34 = OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_separatorView;
  type metadata accessor for SeparatorView();
  *(v11 + v34) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v35 = OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_lockupView;
  type metadata accessor for SubscriptionLockupView();
  *(v11 + v35) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v11 + OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_haveFlashedScrollIndicators) = 0;
  *(v11 + OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_learnMoreButtonAction) = 0;
  v36 = OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_mediaOverlayStyle;
  v37 = enum case for MediaOverlayStyle.matchSystem(_:);
  v38 = sub_100746BA4();
  (*(*(v38 - 8) + 104))(v11 + v36, v37, v38);
  sub_100754644();
  __break(1u);
}

uint64_t sub_100627BC8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100627C44(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v22 = a2;
  v3 = sub_100752624();
  v19 = *(v3 - 8);
  v20 = v3;
  __chkstk_darwin(v3);
  v18 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v2 + 24);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v5 + 32;
    while (v7 < *(v5 + 16))
    {
      sub_10000C824(v8, &v23);
      v9 = v24;
      v10 = v25;
      sub_10000C888(&v23, v24);
      Strong = swift_unknownObjectUnownedLoadStrong();
      v12 = [Strong traitCollection];

      v13 = (*(v10 + 8))(v21, v12, v22, v9, v10);
      if (v13)
      {
        sub_100012160(&v23, v26);
        sub_100012160(v26, v27);
        v14 = v28;
        v15 = v29;
        sub_10000C888(v27, v28);
        v16 = swift_unknownObjectUnownedLoadStrong();
        (*(v15 + 16))(v21, v16, v22, v14, v15);

        sub_10000C620(v27);
        return;
      }

      ++v7;
      sub_10000C620(&v23);
      v8 += 40;
      if (v6 == v7)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    sub_10000C518(&qword_100930CA0);
    (*(v19 + 104))(v18, enum case for ActionOutcome.unsupported(_:), v20);
    sub_100752D84();
  }
}

uint64_t sub_100627E78()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocClassInstance();
}

unint64_t sub_100627EE0()
{
  result = qword_100923980;
  if (!qword_100923980)
  {
    sub_100742CD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100923980);
  }

  return result;
}

unint64_t sub_100627F74()
{
  result = qword_100942280;
  if (!qword_100942280)
  {
    sub_10074B3A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942280);
  }

  return result;
}

uint64_t sub_100627FCC(uint64_t a1, uint64_t a2)
{
  sub_10000C518(&qword_100930CA0);
  v4 = sub_100752DE4();
  type metadata accessor for EventStoreManager();
  sub_100752764();
  sub_100752D34();
  v5 = v10[0];
  sub_1004FE430();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v4;
  v6[5] = v5;
  v7 = sub_1000A7FA0();
  swift_retain_n();

  v8 = v5;
  v10[3] = v7;
  v10[4] = &protocol witness table for OS_dispatch_queue;
  v10[0] = sub_100753774();
  sub_100752D64();

  sub_10000C620(v10);
  return v4;
}

uint64_t sub_100628134(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100752624();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    if (qword_100921750 != -1)
    {
      swift_once();
    }

    sub_10000C888(qword_10093B768, qword_10093B780);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523A4();
    sub_100752D04();

    (*(v6 + 104))(v8, enum case for ActionOutcome.unsupported(_:), v5);
    sub_100752DB4();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    result = sub_10074B394();
    if (result)
    {
      sub_10052AB60(result, 1, a3);
      sub_100752D54();
    }
  }

  return result;
}

uint64_t sub_1006283C8()
{
  if (qword_100921EE0 != -1)
  {
    swift_once();
  }

  v0 = sub_100752E44();
  sub_10000D0FC(v0, qword_100983318);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_1007523A4();
  swift_getErrorValue();
  v4[3] = v3;
  v1 = sub_10000D134(v4);
  (*(*(v3 - 8) + 16))(v1);
  sub_100752444();
  sub_1000277BC(v4);
  sub_100752D04();

  return sub_100752DA4();
}

uint64_t sub_1006285A8()
{

  return _swift_deallocObject(v0, 48, 7);
}

void sub_10062860C()
{
  v1 = [*&v0[OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleHeaderView_titleLabel] font];
  if (v1)
  {
    v2 = v1;
    [v1 descender];

    if (qword_100921AD0 != -1)
    {
      swift_once();
    }

    v3 = sub_1007457D4();
    sub_10000D0FC(v3, qword_1009422B8);
    v4 = [v0 traitCollection];
    sub_100751034();
    sub_10000C518(&unk_1009231A0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1007A5CF0;
    *(v5 + 32) = v4;
    v6 = v4;
    v7 = sub_100751044();
    sub_10022BF6C();
    sub_100750544();
  }

  else
  {
    __break(1u);
  }
}

id sub_10062876C(uint64_t a1, uint64_t a2, NSString a3, uint64_t a4, NSString a5)
{
  v9 = sub_10074A464();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v9, v11);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleHeaderView_displayOptions;
  swift_beginAccess();
  (*(v10 + 24))(&v5[v14], v13, v9);
  swift_endAccess();
  sub_100628FB8();
  (*(v10 + 8))(v13, v9);
  v15 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleHeaderView_badgeLabel];
  if (a3)
  {
    a3 = sub_100753064();
  }

  [v15 setText:a3];

  v16 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleHeaderView_titleLabel];
  if (a5)
  {
    a5 = sub_100753064();
  }

  [v16 setText:a5];

  return [v5 setNeedsLayout];
}

uint64_t sub_100628968(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1007457D4();
  sub_100039C50(v3, a2);
  sub_10000D0FC(v3, a2);
  return sub_1007457C4();
}

char *sub_1006289C0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v10 - 8);
  v12 = &v49 - v11;
  v13 = sub_10074A3F4();
  __chkstk_darwin(v13 - 8);
  v14 = sub_10074A454();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10074A374();
  v19 = __chkstk_darwin(v18);
  (*(v21 + 104))(&v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v19);
  (*(v15 + 104))(v17, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v14);
  sub_10074A3E4();
  sub_10074A384();
  v22 = OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleHeaderView_badgeLabel;
  sub_100745C84();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v22] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v24 = OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleHeaderView_titleLabel;
  *&v4[v24] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v51.receiver = v4;
  v51.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v51, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v29 = v25;
  [v29 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v29 setOverrideUserInterfaceStyle:2];
  [v29 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v30 = [v29 layer];
  [v30 setAllowsGroupBlending:0];

  v31 = OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleHeaderView_badgeLabel;
  v32 = qword_1009215C0;
  v33 = *&v29[OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleHeaderView_badgeLabel];
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = sub_100750534();
  v35 = sub_10000D0FC(v34, qword_100981E78);
  v36 = *(v34 - 8);
  v50 = *(v36 + 16);
  v50(v12, v35, v34);
  v49 = *(v36 + 56);
  v49(v12, 0, 1, v34);
  sub_100745BA4();

  [*&v29[v31] setNumberOfLines:1];
  v37 = *&v29[v31];
  v38 = objc_opt_self();
  v39 = v37;
  v40 = [v38 secondaryLabelColor];
  [v39 setTextColor:v40];

  v41 = [*&v29[v31] layer];
  [v41 setCompositingFilter:kCAFilterPlusL];

  v42 = OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleHeaderView_titleLabel;
  v43 = qword_1009215C8;
  v44 = *&v29[OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleHeaderView_titleLabel];
  if (v43 != -1)
  {
    swift_once();
  }

  v45 = sub_10000D0FC(v34, qword_100981E90);
  v50(v12, v45, v34);
  v49(v12, 0, 1, v34);
  sub_100745BA4();

  [*&v29[v42] setNumberOfLines:3];
  v46 = *&v29[v42];
  v47 = [v38 labelColor];
  [v46 setTextColor:v47];

  [v29 addSubview:*&v29[v31]];
  [v29 addSubview:*&v29[v42]];
  sub_100628FB8();

  return v29;
}

id sub_100628FB8()
{
  v1 = v0;
  v54 = sub_10074A454();
  v56 = *(v54 - 8);
  __chkstk_darwin(v54);
  v47 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10074A3F4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v45 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v39 - v7;
  v9 = sub_10074A464();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v43 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v49 = &v39 - v13;
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  v42 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleHeaderView_badgeLabel];
  v17 = OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleHeaderView_displayOptions;
  swift_beginAccess();
  v18 = *(v10 + 16);
  v53 = v17;
  v50 = v10 + 16;
  v51 = v1;
  v44 = v18;
  v18(v16, &v1[v17], v9);
  sub_10074A404();
  v55 = *(v10 + 8);
  v52 = v10 + 8;
  v55(v16, v9);
  v19 = sub_10074A3C4();
  v20 = *(v4 + 8);
  v48 = v3;
  v46 = v4 + 8;
  v41 = v20;
  v20(v8, v3);
  if (!v19)
  {
    v19 = [objc_opt_self() secondaryLabelColor];
  }

  v21 = v42;
  [v42 setTextColor:v19];

  v22 = v53;
  v23 = v51;
  v24 = v49;
  v25 = v44;
  v44(v49, &v51[v53], v9);
  v26 = v47;
  sub_10074A414();
  v55(v24, v9);
  v27 = [v23 traitCollection];
  v28 = sub_10074A424();

  v29 = *(v56 + 8);
  v56 += 8;
  v40 = v29;
  v29(v26, v54);
  [v21 setTextAlignment:v28];
  v30 = *&v23[OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleHeaderView_titleLabel];
  v31 = v43;
  v25(v43, &v23[v22], v9);
  v32 = v45;
  sub_10074A404();
  v55(v31, v9);
  v33 = sub_10074A3D4();
  v41(v32, v48);
  if (!v33)
  {
    v33 = [objc_opt_self() labelColor];
  }

  [v30 setTextColor:v33];

  v34 = v51;
  v35 = v49;
  v25(v49, &v51[v53], v9);
  sub_10074A414();
  v55(v35, v9);
  v36 = [v34 traitCollection];
  v37 = sub_10074A424();

  v40(v26, v54);
  [v30 setTextAlignment:v37];
  return [v34 setNeedsLayout];
}

uint64_t sub_100629534@<X0>(uint64_t *a1@<X8>)
{
  v27 = a1;
  v2 = sub_1007507B4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  v9 = sub_1007506E4();
  v10 = *(v9 - 8);
  v25 = v9;
  v26 = v10;
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(swift_allocObject() + 16) = v1;
  v13 = v1;
  sub_1007506B4();
  *(swift_allocObject() + 16) = v13;
  v14 = v13;
  sub_100750794();
  v15 = *&v14[OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleHeaderView_badgeLabel];
  v16 = sub_100745C84();
  v30 = v16;
  v31 = &protocol witness table for UILabel;
  v29[0] = v15;
  v17 = v15;
  sub_1007507A4();
  v18 = *(v3 + 8);
  v18(v5, v2);
  sub_10000C620(v29);
  v19 = *&v14[OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleHeaderView_titleLabel];
  v28[3] = v16;
  v28[4] = &protocol witness table for UILabel;
  v28[0] = v19;
  v30 = v2;
  v31 = &protocol witness table for VerticalStack;
  sub_10000D134(v29);
  v20 = v19;
  sub_1007507A4();
  v18(v8, v2);
  sub_10000C620(v28);
  v21 = v27;
  v22 = v25;
  v27[3] = v25;
  v21[4] = &protocol witness table for DisjointStack;
  sub_10000D134(v21);
  sub_1007506D4();
  (*(v26 + 8))(v12, v22);
  return sub_10000C620(v29);
}

uint64_t sub_100629948(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = sub_10074A454();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v28 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074A464();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1007506A4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1007507D4();
  v12[3] = v13;
  v12[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v12);
  sub_1007507C4();
  v14 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v15 = *(v10 + 104);
  v27 = v9;
  v15(v12, enum case for DisjointStack.EdgePosition.anchored(_:), v9);
  v29 = a1;
  sub_100750654();
  v16 = OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleHeaderView_displayOptions;
  v17 = v26;
  swift_beginAccess();
  v18 = v17 + v16;
  v19 = v28;
  (*(v6 + 16))(v8, v18, v5);
  sub_10074A414();
  v20 = v5;
  v21 = v30;
  (*(v6 + 8))(v8, v20);
  v22 = v31;
  result = (*(v21 + 88))(v19, v31);
  if (result == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:))
  {
    v12[3] = v13;
    v12[4] = &protocol witness table for ZeroDimension;
    sub_10000D134(v12);
    sub_1007507C4();
    v15(v12, v14, v27);
    return sub_100750664();
  }

  else
  {
    v24 = v27;
    if (result != enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.center(_:))
    {
      if (result == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.trailing(_:))
      {
        v12[3] = v13;
        v12[4] = &protocol witness table for ZeroDimension;
        sub_10000D134(v12);
        sub_1007507C4();
        v15(v12, v14, v24);
        return sub_100750674();
      }

      else
      {
        return (*(v21 + 8))(v19, v22);
      }
    }
  }

  return result;
}

uint64_t sub_100629CD0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10074A454();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10074A464();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleHeaderView_displayOptions;
  swift_beginAccess();
  (*(v8 + 16))(v10, a2 + v11, v7);
  sub_10074A414();
  (*(v8 + 8))(v10, v7);
  sub_10074A434();
  (*(v4 + 8))(v6, v3);
  return sub_100750744();
}

uint64_t type metadata accessor for CarouselItemModuleHeaderView()
{
  result = qword_100942310;
  if (!qword_100942310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10062A058()
{
  result = sub_10074A464();
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

double sub_10062A0F8()
{
  sub_100629534(v3);
  sub_10000C888(v3, v3[3]);
  sub_100751254();
  v1 = v0;
  sub_10000C620(v3);
  return v1;
}

uint64_t sub_10062A1A0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10062A1E8()
{
  if (qword_100921AC0 != -1)
  {
    swift_once();
  }

  v0 = sub_1007457D4();
  v1 = sub_10000D0FC(v0, qword_100942288);
  v4[3] = v0;
  v4[4] = sub_10022BF6C();
  v2 = sub_10000D134(v4);
  (*(*(v0 - 8) + 16))(v2, v1, v0);
  return sub_100750714();
}

uint64_t sub_10062A2B0()
{
  if (qword_100921AC8 != -1)
  {
    swift_once();
  }

  v0 = sub_1007457D4();
  v1 = sub_10000D0FC(v0, qword_1009422A0);
  v9 = v0;
  v2 = sub_10022BF6C();
  v10 = v2;
  v3 = sub_10000D134(v8);
  v4 = *(*(v0 - 8) + 16);
  v4(v3, v1, v0);
  sub_100750714();
  if (qword_100921AD0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_1009422B8);
  v9 = v0;
  v10 = v2;
  v6 = sub_10000D134(v8);
  v4(v6, v5, v0);
  return sub_100750724();
}

void sub_10062A3F0()
{
  v1 = sub_10074A3F4();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10074A454();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074A374();
  v7 = __chkstk_darwin(v6);
  (*(v9 + 104))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v7);
  (*(v3 + 104))(v5, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v2);
  sub_10074A3E4();
  sub_10074A384();
  v10 = OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleHeaderView_badgeLabel;
  sub_100745C84();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v10) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v12 = OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleHeaderView_titleLabel;
  *(v0 + v12) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  sub_100754644();
  __break(1u);
}

void sub_10062A64C()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for InsetCollectionViewControllerContentView();
    if (swift_dynamicCastClass())
    {

      return;
    }
  }

  __break(1u);
}

void sub_10062A6BC(char a1)
{
  v3 = [v1 view];
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {

LABEL_7:
    __break(1u);
    return;
  }

  *(v5 + OBJC_IVAR____TtC22SubscribePageExtensionP33_D5EB93F8F29FA420E99B1898AD0B2EE640InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset) = a1 & 1;

  v6 = *((swift_isaMask & *v1) + 0x128);

  v6();
}

id sub_10062A78C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = objc_allocWithZone(UICollectionView);

  return [v10 initWithFrame:a1 collectionViewLayout:{a2, a3, a4, a5}];
}

void sub_10062A804()
{
  v1 = [v0 view];
  if (!v1)
  {
    goto LABEL_16;
  }

  v2 = v1;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtensionP33_D5EB93F8F29FA420E99B1898AD0B2EE640InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

  v5 = 0.0;
  if ((v4 & 1) == 0)
  {
    v6 = [v0 view];
    if (!v6)
    {
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v7 = v6;
    [v6 safeAreaInsets];
    v9 = v8;

    v5 = -v9;
  }

  v10 = [v0 collectionView];
  if (!v10)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = v10;
  [v10 contentInset];
  v13 = v12;

  if (v13 == v5)
  {
    return;
  }

  v26 = [v0 collectionView];
  if (!v26)
  {
    goto LABEL_19;
  }

  v14 = [v0 collectionView];
  if (!v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v15 = v14;
  [v14 contentInset];
  v17 = v16;

  v18 = [v0 collectionView];
  if (!v18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v19 = v18;
  [v18 contentInset];
  v21 = v20;

  v22 = [v0 collectionView];
  if (!v22)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v23 = v22;
  [v22 contentInset];
  v25 = v24;

  [v26 setContentInset:{v5, v17, v21, v25}];
}

uint64_t sub_10062AA10()
{
  v1 = [v0 navigationController];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 viewControllers];

  sub_100032B70();
  v4 = sub_1007532A4();

  if (v4 >> 62)
  {
    result = sub_100754664();
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_9:

    return 0;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = sub_100754574();
    goto LABEL_7;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
LABEL_7:
    v7 = v6;

    v8 = v0;
    v9 = sub_100753FC4();

    return v9 & 1;
  }

  __break(1u);
  return result;
}

void *sub_10062AB2C()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController);
  v2 = v1;
  return v1;
}

void sub_10062AB5C(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
  v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController);
  sub_10074B974();

  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  v6 = a1;

  (*((swift_isaMask & *v1) + 0x178))();
  sub_10074B964();
}

void sub_10062AC40()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
  }

  else
  {
    __break(1u);
  }
}

void sub_10062ACC0(char a1)
{
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_prefersLargeTitle) = a1;
  v2 = (*((swift_isaMask & *v1) + 0x198))();
  v3 = [v1 navigationItem];
  v5 = v3;
  if (v2)
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  [v3 setLargeTitleDisplayMode:v4];
}

void sub_10062AD88(uint64_t a1, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_navigationBarTransitionDistance;
  *v3 = a1;
  *(v3 + 8) = a2 & 1;
  sub_10062ADD8();
}

void sub_10062ADBC(uint64_t a1, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_navigationBarAppearanceProgress;
  *v3 = a1;
  *(v3 + 8) = a2 & 1;
  sub_10062ADD8();
}

void sub_10062ADD8()
{
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_navigationBarAppearanceProgress + 8])
  {
    if (v0[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_navigationBarTransitionDistance + 8])
    {
      v16 = [v0 navigationItem];
      [v16 _setManualScrollEdgeAppearanceEnabled:0];
    }

    else
    {
      v8 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_navigationBarTransitionDistance];
      v9 = [v0 navigationItem];
      v10 = [v9 _isManualScrollEdgeAppearanceEnabled];

      if (v10)
      {
        v11 = [v0 navigationItem];
        [v11 _autoScrollEdgeTransitionDistance];
        v13 = v12;

        if (v13 == v8)
        {
          return;
        }
      }

      v14 = [v0 navigationItem];
      [v14 _setManualScrollEdgeAppearanceEnabled:0];

      v15 = [v0 navigationItem];
      [v15 _setAutoScrollEdgeTransitionDistance:v8];

      v16 = [v0 navigationItem];
      [v16 _setManualScrollEdgeAppearanceEnabled:1];
    }
  }

  else
  {
    v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_navigationBarAppearanceProgress];
    v2 = [v0 navigationItem];
    v3 = [v2 _isManualScrollEdgeAppearanceEnabled];

    if (v3)
    {
      v4 = [v0 navigationItem];
      [v4 _manualScrollEdgeAppearanceProgress];
      v6 = v5;

      if (v6 == v1)
      {
        return;
      }
    }

    v7 = [v0 navigationItem];
    [v7 _setManualScrollEdgeAppearanceEnabled:1];

    v16 = [v0 navigationItem];
    [v16 _setManualScrollEdgeAppearanceProgress:v1];
  }
}

uint64_t sub_10062B038(uint64_t a1, uint64_t a2)
{
  sub_10000C518(&unk_1009231A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007A5CF0;
  sub_10000C518(&qword_10093ECA0);
  v5 = *(type metadata accessor for Accessory() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007A5A00;
  v8 = (v7 + v6);
  v9 = *(sub_10000C518(&qword_1009262D8) + 48);
  *v8 = 1;
  sub_100016B4C(a2, &v8[v9], &unk_100940810);
  swift_storeEnumTagMultiPayload();
  v10 = swift_allocObject();
  *(v10 + 16) = 514;
  type metadata accessor for NavigationAccessory();
  v11 = swift_allocObject();
  v12 = sub_100413848(_swiftEmptyArrayStorage);
  v11[4] = v7;
  v11[5] = v12;
  v11[2] = sub_1000AE7AC;
  v11[3] = v10;
  sub_10050C5CC(a1);

  *(v4 + 32) = v11;
  return v4;
}

char *sub_10062B1F4(unint64_t a1)
{
  v2 = sub_10000C518(&unk_100940810);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_100742A34();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v33 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  v8 = a1 >> 62;
  if (!v8)
  {
    v35 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v35 = sub_100754664();
  if (!v35)
  {
    return 0;
  }

LABEL_3:
  if (v35 < 1)
  {
    __break(1u);
LABEL_33:
    result = sub_100754664();
    v21 = result;
    if (result)
    {
      goto LABEL_18;
    }

LABEL_34:

    return v6;
  }

  v26 = v8;
  v9 = 0;
  v31 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph;
  v10 = v36 & 0xC000000000000001;
  v11 = (v6 + 48);
  v28 = (v6 + 8);
  v29 = (v6 + 32);
  v32 = v36 & 0xC000000000000001;
  v30 = (v6 + 48);
  v27 = v4;
  do
  {
    if (v10)
    {
      v12 = sub_100754574();
    }

    else
    {
      v12 = *(v36 + 8 * v9 + 32);
    }

    v13 = v12;
    type metadata accessor for AccountButton();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v34 = v14;
      sub_100016B4C(v14 + qword_100982860, v4, &unk_100940810);
      if ((*v11)(v4, 1, v5) == 1)
      {

        sub_10000C8CC(v4, &unk_100940810);
      }

      else
      {
        v15 = v33;
        (*v29)(v33, v4, v5);
        sub_10074D714();
        sub_100752764();
        sub_100752D34();
        v16 = v37;
        v4 = v27;
        v11 = v30;
        sub_10074D704();

        v17 = v15;
        v10 = v32;
        (*v28)(v17, v5);
      }
    }

    else
    {
    }

    ++v9;
  }

  while (v35 != v9);
  if (!v26)
  {
    result = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result != 1)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  result = sub_100754664();
  if (result == 1)
  {
LABEL_25:
    if (v10)
    {
      return sub_100754574();
    }

    if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_37;
    }

    return *(v36 + 32);
  }

LABEL_16:
  v19 = [objc_allocWithZone(sub_10000C518(&unk_10093EC20)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v19[qword_10093A0F0] = 0;
  v6 = v19;
  [v6 setNeedsLayout];
  *&v6[qword_10093A0F8] = 5;
  [v6 setNeedsLayout];
  *&v6[qword_10093A100] = 0x4028000000000000;
  [v6 setNeedsLayout];
  v6[qword_10093A108] = 0;
  [v6 setNeedsLayout];
  sub_10000C518(&qword_10092E9D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A5A00;
  *(inited + 32) = v36;

  v8 = sub_100620BCC(inited);
  swift_setDeallocating();
  result = sub_10000C8CC(inited + 32, &qword_1009423E0);
  if (v8 >> 62)
  {
    goto LABEL_33;
  }

  v21 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    goto LABEL_34;
  }

LABEL_18:
  if (v21 >= 1)
  {
    for (i = 0; i != v21; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v23 = sub_100754574();
      }

      else
      {
        v23 = *(v8 + 8 * i + 32);
      }

      v24 = v23;
      [v6 addSubview:{v23, v26}];
    }

    goto LABEL_34;
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

void sub_10062B748()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_navigationAccessories;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_navigationAccessories];

  v3 = [v0 traitCollection];
  v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph];
  v5 = v3;

  v6 = sub_10057736C(v2, v5, 0, v4);

  v30 = sub_10062B1F4(v6);

  v7 = [v0 navigationItem];
  v8 = *&v0[v1];

  v9 = [v0 traitCollection];

  v10 = v9;
  v11 = sub_10057736C(v8, v10, 1u, v4);

  v12 = sub_10062B1F4(v11);

  if (v12)
  {
    v13 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v12];
  }

  else
  {
    v13 = 0;
  }

  [v7 setLeftBarButtonItem:{v13, v30}];

  if ((sub_1003CC490(v0) & 1) == 0)
  {
    type metadata accessor for NavigationAccessory();

    v14 = sub_1007532D4();

    if (v14)
    {
      v15 = [v0 navigationItem];
      v16 = *&v0[v1];

      v17 = [v0 traitCollection];

      v18 = v17;
      v19 = sub_10057736C(v16, v18, 2u, v4);

      v20 = sub_10062B1F4(v19);

      if (v20)
      {
        v21 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v20];
      }

      else
      {
        v21 = 0;
      }

      [v15 setRightBarButtonItem:v21];

      v22 = [v0 navigationItem];
      v23 = [v22 rightBarButtonItem];

      if (v23)
      {
        [v23 setHidesSharedBackground:1];
      }

      ObjectType = swift_getObjectType();
      v25 = swift_conformsToProtocol2();
      if (v25)
      {
        v26 = v25;
        v27 = v0;
        v28 = [v27 traitCollection];
        v29 = sub_1007537D4();

        (*(v26 + 16))(v29 & 1, ObjectType, v26);
      }
    }
  }
}

uint64_t sub_10062BB1C(uint64_t a1, uint64_t *a2, SEL *a3)
{
  v5 = *a2;
  *&v3[*a2] = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v6 = [v3 collectionView];
  if (v6)
  {
    v7 = v6;
    v8 = *&v3[v5];
    swift_unknownObjectRetain();
    [v7 *a3];
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_10062BBDC(unsigned int *a1)
{
  v3 = sub_100742964();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016B4C(v1 + v7, v11, &unk_100930240);
  if (!v12)
  {
    return sub_10000C8CC(v11, &unk_100930240);
  }

  sub_10000C824(v11, v10);
  sub_10000C8CC(v11, &unk_100930240);
  sub_10000C888(v10, v10[3]);
  (*(v4 + 104))(v6, *a1, v3);
  sub_100742974();
  (*(v4 + 8))(v6, v3);
  return sub_10000C620(v10);
}

void sub_10062BF04()
{
  v1 = v0;
  v2 = sub_100752AC4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100920BC8 != -1)
  {
    swift_once();
  }

  if (!swift_unknownObjectWeakLoadStrong() || (v6 = off_100936E78, ObjectType = swift_getObjectType(), v8 = v6[1](ObjectType, v6), swift_unknownObjectRelease(), !v8))
  {
    v22 = type metadata accessor for StoreCollectionViewController();
    v27.receiver = v1;
    v27.super_class = v22;
    objc_msgSendSuper2(&v27, "loadView");
    return;
  }

  v9 = [v8 view];

  if (!v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  [v9 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v25 = [objc_allocWithZone(type metadata accessor for InsetCollectionViewControllerContentView()) initWithFrame:{v11, v13, v15, v17}];
  [v25 setAutoresizingMask:18];
  [v1 setView:v25];
  v18 = [v1 collectionViewLayout];
  v19 = (*((swift_isaMask & *v1) + 0x108))(v11, v13, v15, v17);

  [v19 setAutoresizingMask:18];
  [v19 setDelegate:*(v1 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_collectionViewDelegate)];
  [v19 setDataSource:*(v1 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_collectionViewDataSource)];
  v20 = [v1 view];
  if (!v20)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v21 = v20;
  [v20 addSubview:v19];

  [v1 setCollectionView:v19];
  if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_automationSemanticPageId + 8))
  {
    memset(v26, 0, sizeof(v26));

    sub_100752A84();

    sub_10000C8CC(v26, &unk_100923520);
    sub_100753C74();

    (*(v3 + 8))(v5, v2);
  }

  else
  {

    v23 = v25;
  }
}

id sub_10062C31C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_100742964();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StoreCollectionViewController();
  v25.receiver = v0;
  v25.super_class = v6;
  objc_msgSendSuper2(&v25, "viewDidLoad");
  v7 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016B4C(v1 + v7, v22, &unk_100930240);
  if (v23)
  {
    sub_10000C824(v22, v21);
    sub_10000C8CC(v22, &unk_100930240);
    sub_10000C888(v21, v21[3]);
    (*(v3 + 104))(v5, enum case for StoreViewControllerLifecycleEvent.didLoad(_:), v2);
    sub_100742974();
    (*(v3 + 8))(v5, v2);
    sub_10000C620(v21);
  }

  else
  {
    sub_10000C8CC(v22, &unk_100930240);
  }

  v8 = [v1 navigationItem];
  [v8 _setSupportsTwoLineLargeTitles:1];

  LOBYTE(v8) = (*((swift_isaMask & *v1) + 0x198))();
  v9 = [v1 navigationItem];
  v10 = v9;
  if (v8)
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  [v9 setLargeTitleDisplayMode:v11];

  v12 = (*((swift_isaMask & *v1) + 0x160))();
  if (v12)
  {
    v13 = v12;
    v22[0] = (*((swift_isaMask & *v1) + 0x178))();
    v22[1] = v14;
    v22[2] = v15;
    v23 = v16;
    v24 = 0;
    sub_10074B964();
  }

  sub_1007495B4();
  sub_100752754();
  if (!v21[0])
  {
    goto LABEL_12;
  }

  result = [v1 collectionView];
  if (result)
  {
    v18 = result;
    [result bounds];

    sub_100749554();

LABEL_12:
    sub_10000C518(&unk_1009249D0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1007A5A00;
    *(v19 + 32) = sub_1007516F4();
    *(v19 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    sub_100753704();
    swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

void sub_10062C80C(char a1)
{
  v2 = v1;
  v4 = sub_100742964();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StoreCollectionViewController();
  v17.receiver = v2;
  v17.super_class = v8;
  objc_msgSendSuper2(&v17, "viewDidAppear:", a1 & 1);
  v9 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016B4C(v2 + v9, v16, &unk_100930240);
  if (v16[3])
  {
    sub_10000C824(v16, v15);
    sub_10000C8CC(v16, &unk_100930240);
    sub_10000C888(v15, v15[3]);
    (*(v5 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v4);
    sub_100742974();
    (*(v5 + 8))(v7, v4);
    sub_10000C620(v15);
  }

  else
  {
    sub_10000C8CC(v16, &unk_100930240);
  }

  v10 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_registeredForApplicationDidBecomeActive;
  if ((*(v2 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_registeredForApplicationDidBecomeActive) & 1) == 0)
  {
    v11 = [objc_opt_self() defaultCenter];
    [v11 addObserver:v2 selector:"applicationDidBecomeActive:" name:UIApplicationDidBecomeActiveNotification object:0];

    *(v2 + v10) = 1;
  }

  sub_10074D714();
  sub_100752754();
  v12 = v16[0];
  if (v16[0])
  {
    v13.super.super.isa = v2;
    sub_10074D6E4(v13);
  }
}

void sub_10062CAC0(char a1)
{
  v2 = v1;
  v4 = sub_100742964();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for StoreCollectionViewController();
  v26.receiver = v2;
  v26.super_class = v8;
  objc_msgSendSuper2(&v26, "viewWillDisappear:", a1 & 1);
  v9 = [v2 navigationController];
  if (v9)
  {
    v10 = v9;
    v11 = [v2 parentViewController];
    if (v11 && (v12 = v11, sub_100032B70(), v10 = v10, v13 = sub_100753FC4(), v10, v12, (v13 & 1) != 0) && (v14 = [v10 viewControllers], v15 = sub_1007532A4(), v14, sub_1001C896C(v2, v15), LOBYTE(v14) = v16, , (v14 & 1) != 0))
    {
      v17 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_lifecycleObserver;
      swift_beginAccess();
      sub_100016B4C(v2 + v17, v24, &unk_100930240);
      if (v25)
      {
        sub_10000C824(v24, v22);
        sub_10000C8CC(v24, &unk_100930240);
        sub_10000C888(v22, v23);
        (*(v5 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v4);
        sub_100742974();

        (*(v5 + 8))(v7, v4);
        sub_10000C620(v22);
      }

      else
      {

        sub_10000C8CC(v24, &unk_100930240);
      }
    }

    else
    {
    }
  }

  v18 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016B4C(v2 + v18, v24, &unk_100930240);
  if (v25)
  {
    sub_10000C824(v24, v22);
    sub_10000C8CC(v24, &unk_100930240);
    sub_10000C888(v22, v23);
    sub_100752BB4();
    (*(v5 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v4);
    sub_100742974();
    (*(v5 + 8))(v7, v4);
    sub_10000C620(v22);
  }

  else
  {
    sub_10000C8CC(v24, &unk_100930240);
  }

  sub_10074D714();
  sub_100752754();
  v19 = v24[0];
  if (v24[0])
  {
    v20.super.super.isa = v2;
    sub_10074D6F4(v20);
  }
}

void sub_10062CED4()
{
  v1 = v0;
  v2 = sub_100742964();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007417F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StoreCollectionViewController();
  v32.receiver = v1;
  v32.super_class = v10;
  objc_msgSendSuper2(&v32, "as_viewWillBecomeFullyVisible");
  v28 = v1;
  v11 = [v1 collectionView];
  if (!v11)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v12 = v11;
  v13 = [v11 indexPathsForSelectedItems];

  v26 = v3;
  v27 = v2;
  v25 = v5;
  if (!v13)
  {
    v14 = _swiftEmptyArrayStorage;
    v15 = _swiftEmptyArrayStorage[2];
    if (!v15)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v14 = sub_1007532A4();

  v15 = v14[2];
  if (v15)
  {
LABEL_6:
    v16 = 0;
    while (v16 < v14[2])
    {
      (*(v7 + 16))(v9, v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, v6);
      v17 = [v28 collectionView];
      if (!v17)
      {
        goto LABEL_14;
      }

      v18 = v17;
      ++v16;
      isa = sub_100741704().super.isa;
      [v18 deselectItemAtIndexPath:isa animated:1];

      (*(v7 + 8))(v9, v6);
      if (v15 == v16)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v20 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_lifecycleObserver;
  v21 = v28;
  swift_beginAccess();
  sub_100016B4C(v21 + v20, v30, &unk_100930240);
  if (v31)
  {
    sub_10000C824(v30, v29);
    sub_10000C8CC(v30, &unk_100930240);
    sub_10000C888(v29, v29[3]);
    v23 = v25;
    v22 = v26;
    v24 = v27;
    (*(v26 + 104))(v25, enum case for StoreViewControllerLifecycleEvent.willBecomeFullyVisible(_:), v27);
    sub_100742974();
    (*(v22 + 8))(v23, v24);
    sub_10000C620(v29);
  }

  else
  {
    sub_10000C8CC(v30, &unk_100930240);
  }
}

uint64_t sub_10062D32C(SEL *a1, unsigned int *a2)
{
  v5 = sub_100742964();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StoreCollectionViewController();
  v16.receiver = v2;
  v16.super_class = v9;
  objc_msgSendSuper2(&v16, *a1);
  v10 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016B4C(v2 + v10, v14, &unk_100930240);
  if (!v15)
  {
    return sub_10000C8CC(v14, &unk_100930240);
  }

  sub_10000C824(v14, v13);
  sub_10000C8CC(v14, &unk_100930240);
  sub_10000C888(v13, v13[3]);
  (*(v6 + 104))(v8, *a2, v5);
  sub_100742974();
  (*(v6 + 8))(v8, v5);
  return sub_10000C620(v13);
}

uint64_t sub_10062D5C0(char a1, SEL *a2, unsigned int *a3)
{
  v7 = sub_100742964();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StoreCollectionViewController();
  v18.receiver = v3;
  v18.super_class = v11;
  objc_msgSendSuper2(&v18, *a2, a1 & 1);
  v12 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016B4C(v3 + v12, v16, &unk_100930240);
  if (!v17)
  {
    return sub_10000C8CC(v16, &unk_100930240);
  }

  sub_10000C824(v16, v15);
  sub_10000C8CC(v16, &unk_100930240);
  sub_10000C888(v15, v15[3]);
  (*(v8 + 104))(v10, *a3, v7);
  sub_100742974();
  (*(v8 + 8))(v10, v7);
  return sub_10000C620(v15);
}

id sub_10062DC34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoreCollectionViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10062DFAC(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_automationSemanticPageId];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_lifecycleObserver];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_registeredForApplicationDidBecomeActive] = 0;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController] = 0;
  v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_prefersLargeTitle] = 0;
  v6 = &v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_navigationBarTransitionDistance];
  *v6 = 0;
  v6[8] = 1;
  v7 = &v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_navigationBarAppearanceProgress];
  *v7 = 0;
  v7[8] = 1;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_navigationAccessories] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_collectionViewDelegate] = 0;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_collectionViewDataSource] = 0;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph] = a2;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for StoreCollectionViewController();
  return objc_msgSendSuper2(&v9, "initWithCollectionViewLayout:", a1);
}

void sub_10062E0A0()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_automationSemanticPageId);
  *v1 = 0;
  v1[1] = 0;
  v2 = v0 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_lifecycleObserver;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_registeredForApplicationDidBecomeActive) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_prefersLargeTitle) = 0;
  v3 = v0 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_navigationBarTransitionDistance;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v0 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_navigationBarAppearanceProgress;
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_navigationAccessories) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_collectionViewDelegate) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_collectionViewDataSource) = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_10062E1B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = sub_1007504F4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_100746A94();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v20 - v10;
  v12 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v12 - 8);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = v20 - v17;
  v22[3] = &type metadata for CGFloat;
  v22[4] = &protocol witness table for CGFloat;
  v22[0] = 0x4021000000000000;
  (*(v4 + 16))(v20 - v17, a1, v3, v16);
  (*(v4 + 56))(v18, 0, 1, v3);
  (*(v6 + 104))(v11, enum case for LockupMediaLayout.DisplayType.none(_:), v5);
  sub_10000C824(v22, v21);
  (*(v6 + 16))(v8, v11, v5);
  if (_swiftEmptyArrayStorage >> 62 && sub_100754664())
  {
    sub_100754574();
    sub_10074F2A4();
    sub_100750504();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100750504();
  }

  sub_100016B4C(v18, v14, &unk_1009281D0);
  sub_100746AD4();
  (*(v6 + 8))(v11, v5);
  sub_10000C8CC(v18, &unk_1009281D0);
  return sub_10000C620(v22);
}

uint64_t sub_10062E4F4()
{
  v0 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v0 - 8);
  v2 = v11 - v1;
  v3 = sub_1007504F4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_100746A94();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100746B04();
  sub_100039C50(v9, qword_1009423E8);
  sub_10000D0FC(v9, qword_1009423E8);
  v11[4] = &type metadata for CGFloat;
  v11[5] = &protocol witness table for CGFloat;
  v11[1] = 0x4021000000000000;
  (*(v6 + 104))(v8, enum case for LockupMediaLayout.DisplayType.none(_:), v5);
  sub_100750504();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_100746AD4();
}

uint64_t sub_10062E728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = v3;
  v23 = a3;
  v7 = sub_100746A94();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10000C518(&unk_100934D80);
  __chkstk_darwin(v11 - 8);
  v13 = &v21[-v12];
  v22 = sub_100631D8C(a1);
  v14 = sub_10074A7F4();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v13, a2, v14);
  (*(v15 + 56))(v13, 0, 1, v14);
  v16 = sub_1006322B4(a1, v13);
  sub_10000C8CC(v13, &unk_100934D80);
  v17 = *(v8 + 16);
  v17(v10, v4, v7);
  v18 = (*(v8 + 88))(v10, v7);
  if (v18 != enum case for LockupMediaLayout.DisplayType.oneUp(_:))
  {
    if (v18 == enum case for LockupMediaLayout.DisplayType.twoUp(_:) || v18 == enum case for LockupMediaLayout.DisplayType.threeUp(_:))
    {
      if (v16)
      {
        goto LABEL_11;
      }

      if (v22)
      {
        goto LABEL_9;
      }
    }

    else if (((v18 == enum case for LockupMediaLayout.DisplayType.fourUp(_:)) & v16) != 0)
    {
      goto LABEL_11;
    }

    v17(v23, v4, v7);
    return (*(v8 + 8))(v10, v7);
  }

  if (v16)
  {
LABEL_11:
    (*(v8 + 8))(v10, v7);
    v19 = &enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    return (*(v8 + 104))(v23, *v19, v7);
  }

  if (v22)
  {
LABEL_9:
    (*(v8 + 8))(v10, v7);
    v19 = &enum case for LockupMediaLayout.DisplayType.threeUp(_:);
    return (*(v8 + 104))(v23, *v19, v7);
  }

  (*(v8 + 104))(v23, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v7);
  return (*(v8 + 8))(v10, v7);
}

id sub_10062EA5C()
{
  v1 = sub_10000C518(&qword_100942450);
  __chkstk_darwin(v1);
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_imageViews] = _swiftEmptyArrayStorage;
  type metadata accessor for BorderedScreenshotView();
  sub_100750624();
  sub_100630D78();
  sub_1007512E4();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView] = 0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_metrics;
  if (qword_100921AD8 != -1)
  {
    swift_once();
  }

  v3 = sub_100746B04();
  v4 = sub_10000D0FC(v3, qword_1009423E8);
  (*(*(v3 - 8) + 16))(&v0[v2], v4, v3);
  v5 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_screenshotsDisplayConfiguration;
  if (qword_100920778 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for ScreenshotDisplayConfiguration();
  v7 = sub_10000D0FC(v6, qword_10097ECF8);
  sub_100289598(v7, &v0[v5]);
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_platform] = 0;
  v8 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_screenshotsDisplayStyle;
  v9 = enum case for ScreenshotsDisplayStyle.standard(_:);
  v10 = sub_10074A7F4();
  (*(*(v10 - 8) + 104))(&v0[v8], v9, v10);
  v13.receiver = v0;
  v13.super_class = type metadata accessor for LockupMediaView();
  v11 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v11 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  return v11;
}

void (*sub_10062ED14(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_10062ED68;
}

void sub_10062ED68(id *a1, char a2)
{
  v4 = a1[1];
  v26 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_100632C48(&qword_1009230E0, type metadata accessor for VideoView);
      v7 = v26;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        sub_100016C60(0, &qword_100922300);
        v10 = v4;
        v11 = sub_100753FC4();

        if (v11)
        {
          v12 = swift_unknownObjectWeakLoadStrong();
          if (v12)
          {
            v13 = v12;
            [v12 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v26;
    }

    swift_unknownObjectWeakAssign();
    v23 = swift_unknownObjectWeakLoadStrong();
    v24 = a1[1];
    if (v23)
    {
      v25 = v23;
      [a1[1] addSubview:v23];
    }

    sub_10062FDFC();
    [v24 setNeedsLayout];

    v22 = *a1;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_100632C48(&qword_1009230E0, type metadata accessor for VideoView);
    v14 = [v6 superview];
    if (v14)
    {
      v15 = v14;
      sub_100016C60(0, &qword_100922300);
      v16 = v4;
      v17 = sub_100753FC4();

      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }

      v18 = swift_unknownObjectWeakLoadStrong();
      if (!v18)
      {
        goto LABEL_13;
      }

      v6 = v18;
      [v18 removeFromSuperview];
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v19 = swift_unknownObjectWeakLoadStrong();
  v20 = a1[1];
  if (v19)
  {
    v21 = v19;
    [a1[1] addSubview:v19];
  }

  sub_10062FDFC();
  [v20 setNeedsLayout];
  v22 = v26;
LABEL_21:
}

void *sub_10062F024()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100753284();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();
  }

  v4 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView);
  if (v4)
  {
    v5 = v4;
    sub_100753284();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();
  }

  v6 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_imageViews;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (v7 >> 62)
  {
    sub_100016C60(0, &qword_100922300);

    v8 = sub_100754654();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    sub_100754764();
    sub_100016C60(0, &qword_100922300);
    v8 = v7;
  }

  sub_10049FC94(v8);
  return _swiftEmptyArrayStorage;
}

uint64_t sub_10062F1F4()
{
  v1 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_imageViews;
  result = swift_beginAccess();
  v19 = v0;
  v6 = *(v0 + v4);
  if (v6 >> 62)
  {
    result = sub_100754664();
    v7 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
  }

  else
  {
    v8 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_screenshotsDisplayConfiguration;

    swift_beginAccess();
    v9 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = sub_100754574();
      }

      else
      {
        v10 = *(v6 + 8 * v9 + 32);
      }

      v11 = v10;
      ++v9;
      sub_100289598(v19 + v8, v3);
      v12 = &v11[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_displayConfiguration];
      swift_beginAccess();
      sub_1000243DC(v3, v12);
      swift_endAccess();
      v13 = OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView;
      v14 = *&v11[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView];
      sub_100746E74();

      v15 = *&v11[v13];
      v16 = *(v12 + 48);
      v17 = v15;
      v18 = v16;
      sub_100746E64();

      [v11 setNeedsLayout];
      sub_100024440(v3);
    }

    while (v7 != v9);
  }

  return result;
}

uint64_t sub_10062F3F8()
{
  v1 = v0;
  v2 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_imageViews;
  result = swift_beginAccess();
  v7 = *(v1 + v5);
  if (v7 >> 62)
  {
    result = sub_100754664();
    v8 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return result;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
  }

  else
  {
    v9 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_screenshotsDisplayConfiguration;
    v21 = v7 & 0xC000000000000001;
    v22 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_platform;

    swift_beginAccess();
    v10 = 0;
    do
    {
      if (v21)
      {
        v11 = sub_100754574();
      }

      else
      {
        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      ++v10;
      *&v11[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_platform] = *(v1 + v22);
      swift_retain_n();

      sub_10028864C();

      sub_100289598(v1 + v9, v4);
      v13 = &v12[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_displayConfiguration];
      swift_beginAccess();
      sub_1000243DC(v4, v13);
      swift_endAccess();
      v14 = OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView;
      v15 = *&v12[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView];
      sub_100746E74();

      v16 = *&v12[v14];
      v17 = *(v13 + 48);
      v18 = v16;
      v19 = v17;
      sub_100746E64();

      [v12 setNeedsLayout];
      sub_100024440(v4);
    }

    while (v8 != v10);
  }

  return result;
}

uint64_t sub_10062F644()
{
  v16 = sub_100750354();
  v1 = *(v16 - 8);
  __chkstk_darwin(v16);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100746B04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100746B34();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LockupMediaView();
  v17.receiver = v0;
  v17.super_class = v12;
  objc_msgSendSuper2(&v17, "layoutSubviews");
  v13 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_metrics;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v0[v13], v4);
  v14 = sub_10062F024();
  sub_10015893C(v14);

  sub_100746B14();
  [v0 bounds];
  sub_100746AA4();
  (*(v1 + 8))(v3, v16);
  return (*(v9 + 8))(v11, v8);
}

double sub_10062F904()
{
  v1 = v0;
  v2 = sub_100746B34();
  v3 = *(v2 - 8);
  v47 = v2;
  v48 = v3;
  __chkstk_darwin(v2);
  v46 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10074A7F4();
  v5 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100746A94();
  v44 = *(v7 - 8);
  v45 = v7;
  __chkstk_darwin(v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v39 = &v36 - v11;
  v12 = sub_100746B04();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v36 - v17;
  v38 = &v36 - v17;
  v19 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_metrics;
  swift_beginAccess();
  v20 = *(v13 + 16);
  v20(v18, v1 + v19, v12);
  v37 = v12;
  v20(v15, v1 + v19, v12);
  sub_100746AB4();
  v21 = *(v13 + 8);
  v41 = v13 + 8;
  v42 = v21;
  v21(v15, v12);
  v22 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_screenshotsDisplayStyle;
  v36 = v1;
  swift_beginAccess();
  v23 = v1 + v22;
  v24 = v40;
  v25 = v43;
  (*(v5 + 16))(v40, v23, v43);

  sub_10062E728(v26, v24, v39);

  (*(v5 + 8))(v24, v25);
  (*(v44 + 8))(v9, v45);
  v27 = v38;
  sub_100746AC4();
  v28 = v37;
  v20(v15, v27, v37);
  v29 = sub_10062F024();
  sub_10015893C(v29);

  v30 = v46;
  sub_100746B14();
  sub_100632C48(&qword_100942498, &type metadata accessor for LockupMediaLayout);
  v31 = v30;
  v32 = v47;
  sub_100750404();
  v34 = v33;
  (*(v48 + 8))(v31, v32);
  v42(v27, v28);
  return v34;
}

uint64_t sub_10062FDFC()
{
  v1 = v0;
  v2 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100746A94();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100746B04();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView])
  {

    return sub_100630494();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v15 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_metrics;
    swift_beginAccess();
    (*(v10 + 16))(v12, &v1[v15], v9);
    sub_100746AB4();
    (*(v10 + 8))(v12, v9);
    v16 = sub_100746A84();
    result = (*(v6 + 8))(v8, v5);
    if (__OFSUB__(v16, 1))
    {
      goto LABEL_32;
    }

    v17 = (v16 - 1) & ~((v16 - 1) >> 63);
  }

  else
  {
    v18 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_metrics;
    swift_beginAccess();
    (*(v10 + 16))(v12, &v1[v18], v9);
    sub_100746AB4();
    (*(v10 + 8))(v12, v9);
    v17 = sub_100746A84();
    (*(v6 + 8))(v8, v5);
  }

  v19 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_imageViews;
  v36 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_platform;
  v20 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_screenshotsDisplayConfiguration;
  swift_beginAccess();
  swift_beginAccess();
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v21 = *&v1[v19];
        if (v21 >> 62)
        {
          result = sub_100754664();
          if (result == v17)
          {
            return result;
          }
        }

        else
        {
          result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (result == v17)
          {
            return result;
          }
        }

        v22 = *&v1[v19];
        if (!(v22 >> 62))
        {
          break;
        }

        if (sub_100754664() >= v17)
        {
          goto LABEL_21;
        }

LABEL_15:
        swift_beginAccess();
        sub_10000C518(&qword_100942490);
        sub_1007512B4();
        swift_endAccess();
        v23 = v37;
        *&v37[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_platform] = *&v1[v36];
        swift_retain_n();

        sub_10028864C();

        sub_100289598(&v1[v20], v4);
        v24 = &v23[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_displayConfiguration];
        swift_beginAccess();
        sub_1000243DC(v4, v24);
        swift_endAccess();
        v25 = OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView;
        v26 = *&v23[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView];
        sub_100746E74();

        v27 = *&v23[v25];
        v28 = *(v24 + 48);
        v29 = v27;
        v30 = v28;
        sub_100746E64();

        [v23 setNeedsLayout];
        sub_100024440(v4);
        swift_beginAccess();
        v31 = v23;
        sub_100753284();
        if (*((*&v1[v19] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v19] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();
        swift_endAccess();
        [v1 addSubview:v31];
      }

      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) < v17)
      {
        goto LABEL_15;
      }

LABEL_21:
      swift_beginAccess();
      v32 = *&v1[v19];
      if (!(v32 >> 62))
      {
        break;
      }

      if (sub_100754664())
      {
        goto LABEL_23;
      }

LABEL_10:
      swift_endAccess();
    }

    if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

LABEL_23:
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *&v1[v19] = v32;
    if (v32 >> 62 || (result & 1) == 0)
    {
      result = sub_10025F2C0(v32);
      v32 = result;
    }

    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v33)
    {
      break;
    }

    v34 = v33 - 1;
    v35 = *((v32 & 0xFFFFFFFFFFFFFF8) + 8 * v34 + 0x20);
    *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) = v34;
    *&v1[v19] = v32;
    swift_endAccess();
    v37 = v35;
    swift_beginAccess();
    sub_10000C518(&qword_100942490);
    sub_1007512D4();
    swift_endAccess();
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

id sub_100630454@<X0>(void *a1@<X8>)
{
  type metadata accessor for BorderedScreenshotView();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

uint64_t sub_100630494()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_imageViews;
  result = swift_beginAccess();
  v4 = *(v1 + v2);
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    *(v1 + v2) = _swiftEmptyArrayStorage;
  }

  result = sub_100754664();
  v5 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v10 = v2;

    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_100754574();
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      swift_beginAccess();
      sub_10000C518(&qword_100942490);
      sub_1007512D4();
      swift_endAccess();
      v9 = *&v8[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView];
      sub_100743344();
    }

    while (v5 != v6);

    v2 = v10;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_100630618()
{
  v1 = v0;
  v2 = sub_10074A7F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100630494();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + qword_10093CB78);
    if (v8)
    {
      aBlock[4] = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1005171C8;
      aBlock[3] = &unk_10087E988;
      v9 = _Block_copy(aBlock);
      v10 = v8;
      [v10 exitFullScreenAnimated:0 completionHandler:v9];
      _Block_release(v9);
    }

    v11 = *&v7[qword_10093CB70];
    if (v11)
    {
      v12 = v11;
      sub_100743B84();

      v7 = v12;
    }
  }

  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    sub_100632C48(&qword_1009230E0, type metadata accessor for VideoView);
    v15 = [v14 superview];
    if (!v15)
    {
LABEL_12:

      goto LABEL_13;
    }

    v16 = v15;
    sub_100016C60(0, &qword_100922300);
    v17 = v1;
    v18 = sub_100753FC4();

    if (v18)
    {
      v19 = swift_unknownObjectWeakLoadStrong();
      if (v19)
      {
        v14 = v19;
        [v19 removeFromSuperview];
        goto LABEL_12;
      }
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    [v1 addSubview:v20];
  }

  sub_10062FDFC();
  [v1 setNeedsLayout];
  v22 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView;
  v23 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView];
  if (v23)
  {
    [v23 removeFromSuperview];
    v24 = *&v1[v22];
  }

  else
  {
    v24 = 0;
  }

  *&v1[v22] = 0;

  [v1 setNeedsLayout];
  (*(v3 + 104))(v5, enum case for ScreenshotsDisplayStyle.standard(_:), v2);
  v25 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (*(v3 + 24))(&v1[v25], v5, v2);
  swift_endAccess();
  [v1 setNeedsLayout];
  return (*(v3 + 8))(v5, v2);
}

id sub_1006309D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LockupMediaView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LockupMediaView()
{
  result = qword_100942438;
  if (!qword_100942438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100630BA4()
{
  sub_100630D08();
  if (v0 <= 0x3F)
  {
    sub_100746B04();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ScreenshotDisplayConfiguration();
      if (v2 <= 0x3F)
      {
        sub_10074A7F4();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_100630D08()
{
  if (!qword_100942448)
  {
    sub_10000C724(&qword_100942450);
    sub_100630D78();
    v0 = sub_1007512F4();
    if (!v1)
    {
      atomic_store(v0, &qword_100942448);
    }
  }
}

unint64_t sub_100630D78()
{
  result = qword_100942458;
  if (!qword_100942458)
  {
    sub_10000C724(&qword_100942450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942458);
  }

  return result;
}

void sub_100630DEC(void *a1)
{
  sub_1006328FC();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [v1 addSubview:Strong];
  }

  sub_10062FDFC();
  [v1 setNeedsLayout];
}

uint64_t (*sub_100630E7C(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_10062ED14(v2);
  return sub_1000181A8;
}

uint64_t sub_100630EEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_100630F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_100630FAC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_getWitnessTable();
  *(v3 + 32) = sub_100747DB4();
  return sub_10001BB78;
}

void *sub_100631124(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000C518(&qword_1009232C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1006311A8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000C518(&unk_1009405F0);
  v4 = *(sub_1007417F4() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1006312A4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000C518(&qword_1009253E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_100631328(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000C518(&unk_1009231A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_1006313C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_100016C60(0, &qword_100923500);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_10000C518(&unk_1009231A0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1006314D4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        a5(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_10000C518(&unk_1009231A0);
      v9 = swift_allocObject();
      v10 = j__malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1006315E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_10000C518(&qword_100929410);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_1006316A8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_10000C518(&qword_10092F0F0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_10000C518(&qword_10092AF18);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1006317BC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_10000C518(a5);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = j__malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        a7(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_100631960(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 16 * a3), 16 * v5);
        return;
      }
    }

    else
    {
      sub_10000C518(&qword_10092F140);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 17;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_100631A30(unint64_t a1, uint64_t a2, int64_t a3, uint64_t a4)
{
  if (!a2)
  {
    goto LABEL_10;
  }

  v8 = sub_10074F794();
  if (v8 >> 62)
  {
    v23 = v8;
    v24 = sub_100754664();
    v8 = v23;
    if (v24)
    {
      goto LABEL_4;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    if ((v8 & 0xC000000000000001) != 0)
    {
      sub_100754574();
    }

    else
    {
      if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }
    }

    sub_10074EC14();

    sub_100753284();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v4 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_100753304();
    }

    sub_100753344();

LABEL_10:
    if (!a1)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (a1)
  {
LABEL_11:
    v9 = sub_100743854();
    sub_10049FCF0(v9);
  }

LABEL_12:
  v10 = _swiftEmptyArrayStorage;
  if (a4)
  {
    return v10;
  }

  a1 = _swiftEmptyArrayStorage >> 62;
  if (_swiftEmptyArrayStorage >> 62)
  {
    if (sub_100754664() <= a3)
    {
      return v10;
    }
  }

  else if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) <= a3)
  {
    return v10;
  }

  if (a3 < 0)
  {
    goto LABEL_49;
  }

  if (a1)
  {
    if (_swiftEmptyArrayStorage < 0)
    {
      a4 = _swiftEmptyArrayStorage;
    }

    else
    {
      a4 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;
    }

    if (sub_100754664() < 0)
    {
      goto LABEL_51;
    }

    v11 = sub_100754664();
  }

  else
  {
    v11 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11 < a3)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if ((_swiftEmptyArrayStorage & 0xC000000000000001) == 0 || !a3)
  {

    if (!a1)
    {
      goto LABEL_29;
    }

LABEL_32:

    a4 = sub_100754674();
    a1 = v15;
    a3 = v16;
    if (v16)
    {
      goto LABEL_34;
    }

LABEL_33:
    sub_1006314D4(a4, v14, a1, a3, &type metadata accessor for Artwork);
    v18 = v17;

LABEL_40:
    swift_unknownObjectRelease();
    return v18;
  }

  sub_10074F3D4();

  v12 = 0;
  do
  {
    v13 = v12 + 1;
    sub_100754554(v12);
    v12 = v13;
  }

  while (a3 != v13);
  if (a1)
  {
    goto LABEL_32;
  }

LABEL_29:
  a4 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;
  v14 = (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 32;
  a3 = (2 * a3) | 1;
  if ((a3 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_34:
  v4 = v14;
  sub_100754774();
  swift_unknownObjectRetain_n();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    v19 = _swiftEmptyArrayStorage;
  }

  v20 = v19[2];

  if (__OFSUB__(a3 >> 1, a1))
  {
    goto LABEL_52;
  }

  if (v20 != (a3 >> 1) - a1)
  {
LABEL_53:
    swift_unknownObjectRelease();
    v14 = v4;
    goto LABEL_33;
  }

  v21 = swift_dynamicCastClass();

  swift_unknownObjectRelease();
  v10 = v21;
  if (!v21)
  {
    v18 = _swiftEmptyArrayStorage;
    goto LABEL_40;
  }

  return v10;
}

uint64_t sub_100631D8C(uint64_t a1)
{
  v2 = sub_1007428D4();
  v36 = *(v2 - 8);
  __chkstk_darwin(v2);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&qword_100942478);
  __chkstk_darwin(v4);
  v6 = &v33 - v5;
  v7 = sub_10000C518(&qword_100942480);
  __chkstk_darwin(v7 - 8);
  v35 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v33 - v10;
  __chkstk_darwin(v12);
  v14 = &v33 - v13;
  v15 = ASKDeviceTypeGetCurrent();
  v16 = sub_100753094();
  v18 = v17;
  if (v16 == sub_100753094() && v18 == v19)
  {

LABEL_9:
    v22 = 0;
    return v22 & 1;
  }

  v21 = sub_100754754();

  v22 = 0;
  if ((v21 & 1) == 0)
  {
    if (a1)
    {
      sub_1007444B4();
      v23 = v36;
      v24 = *(v36 + 56);
      v24(v14, 0, 1, v2);
    }

    else
    {
      v23 = v36;
      v24 = *(v36 + 56);
      v24(v14, 1, 1, v2);
    }

    (*(v23 + 104))(v11, enum case for AppPlatform.watch(_:), v2);
    v24(v11, 0, 1, v2);
    v26 = *(v4 + 48);
    sub_100016B4C(v14, v6, &qword_100942480);
    sub_100016B4C(v11, &v6[v26], &qword_100942480);
    v27 = *(v23 + 48);
    if (v27(v6, 1, v2) == 1)
    {
      sub_10000C8CC(v11, &qword_100942480);
      sub_10000C8CC(v14, &qword_100942480);
      if (v27(&v6[v26], 1, v2) == 1)
      {
        sub_10000C8CC(v6, &qword_100942480);
        goto LABEL_9;
      }
    }

    else
    {
      v28 = v35;
      sub_100016B4C(v6, v35, &qword_100942480);
      if (v27(&v6[v26], 1, v2) != 1)
      {
        v29 = v34;
        (*(v23 + 32))(v34, &v6[v26], v2);
        sub_100632C48(&qword_100942488, &type metadata accessor for AppPlatform);
        v30 = v28;
        v31 = sub_100753014();
        v32 = *(v23 + 8);
        v32(v29, v2);
        sub_10000C8CC(v11, &qword_100942480);
        sub_10000C8CC(v14, &qword_100942480);
        v32(v30, v2);
        sub_10000C8CC(v6, &qword_100942480);
        v22 = v31 ^ 1;
        return v22 & 1;
      }

      sub_10000C8CC(v11, &qword_100942480);
      sub_10000C8CC(v14, &qword_100942480);
      (*(v23 + 8))(v28, v2);
    }

    sub_10000C8CC(v6, &qword_100942478);
    v22 = 1;
  }

  return v22 & 1;
}

uint64_t sub_1006322B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10074A7F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&qword_100942470);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v11 = sub_10000C518(&unk_100934D80);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v22 - v15;
  if ((sub_100631D8C(a1) & 1) == 0)
  {
    v19 = 0;
    return v19 & 1;
  }

  (*(v5 + 104))(v16, enum case for ScreenshotsDisplayStyle.fourScreenshots(_:), v4);
  (*(v5 + 56))(v16, 0, 1, v4);
  v17 = *(v8 + 48);
  sub_100016B4C(a2, v10, &unk_100934D80);
  sub_100016B4C(v16, &v10[v17], &unk_100934D80);
  v18 = *(v5 + 48);
  if (v18(v10, 1, v4) != 1)
  {
    sub_100016B4C(v10, v13, &unk_100934D80);
    if (v18(&v10[v17], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v10[v17], v4);
      sub_100632C48(&qword_10092E508, &type metadata accessor for ScreenshotsDisplayStyle);
      v19 = sub_100753014();
      v20 = *(v5 + 8);
      v20(v7, v4);
      sub_10000C8CC(v16, &unk_100934D80);
      v20(v13, v4);
      sub_10000C8CC(v10, &unk_100934D80);
      return v19 & 1;
    }

    sub_10000C8CC(v16, &unk_100934D80);
    (*(v5 + 8))(v13, v4);
    goto LABEL_8;
  }

  sub_10000C8CC(v16, &unk_100934D80);
  if (v18(&v10[v17], 1, v4) != 1)
  {
LABEL_8:
    sub_10000C8CC(v10, &qword_100942470);
    v19 = 0;
    return v19 & 1;
  }

  sub_10000C8CC(v10, &unk_100934D80);
  v19 = 1;
  return v19 & 1;
}

void sub_1006326AC()
{
  v1 = sub_10000C518(&qword_100942450);
  __chkstk_darwin(v1);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_imageViews) = _swiftEmptyArrayStorage;
  type metadata accessor for BorderedScreenshotView();
  sub_100750624();
  sub_100630D78();
  sub_1007512E4();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView) = 0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_metrics;
  if (qword_100921AD8 != -1)
  {
    swift_once();
  }

  v3 = sub_100746B04();
  v4 = sub_10000D0FC(v3, qword_1009423E8);
  (*(*(v3 - 8) + 16))(v0 + v2, v4, v3);
  v5 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_screenshotsDisplayConfiguration;
  if (qword_100920778 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for ScreenshotDisplayConfiguration();
  v7 = sub_10000D0FC(v6, qword_10097ECF8);
  sub_100289598(v7, v0 + v5);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_platform) = 0;
  v8 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_screenshotsDisplayStyle;
  v9 = enum case for ScreenshotsDisplayStyle.standard(_:);
  v10 = sub_10074A7F4();
  (*(*(v10 - 8) + 104))(v0 + v8, v9, v10);
  sub_100754644();
  __break(1u);
}

void sub_1006328FC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_100632C48(&qword_1009230E0, type metadata accessor for VideoView);
    v2 = [v7 superview];
    if (v2)
    {
      v3 = v2;
      sub_100016C60(0, &qword_100922300);
      v4 = v0;
      v5 = sub_100753FC4();

      if ((v5 & 1) == 0)
      {
        return;
      }

      v6 = swift_unknownObjectWeakLoadStrong();
      if (!v6)
      {
        return;
      }

      v7 = v6;
      [v6 removeFromSuperview];
    }
  }
}

void sub_100632A30(objc_class *a1, uint64_t a2)
{
  v4 = sub_10062F024();
  if (v4 >> 62)
  {
    v16 = v4;
    v17 = sub_100754664();
    v4 = v16;
    if (v17 > a2)
    {
LABEL_3:
      v5 = (v4 + 8 * a2);
      v6 = v4 & 0xC000000000000001;
      if ((v4 & 0xC000000000000001) == 0)
      {
        if (a2 < 0)
        {
          __break(1u);
        }

        else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
        {
          v7 = v5[4];
          goto LABEL_7;
        }

        __break(1u);
        return;
      }

      v7 = sub_100754574();
LABEL_7:
      v18 = v7;
      type metadata accessor for VideoView();
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = v8;

        v10 = qword_10093CB50;
        v11 = [*(v9 + qword_10093CB50) layer];
        [v11 removeAllAnimations];

        [*(v9 + v10) setImage:a1];
      }

      else
      {

        if (v6)
        {
          v12 = sub_100754574();
        }

        else
        {
          v12 = v5[4];
        }

        v18 = v12;

        type metadata accessor for BorderedScreenshotView();
        v13 = swift_dynamicCastClass();
        if (!v13)
        {
          goto LABEL_15;
        }

        v10 = OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView;
        v9 = v13;
        v14 = *(v13 + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView);
        v20.value.super.isa = a1;
        v20.is_nil = 0;
        sub_100743384(v20, v15);
      }

      [*(v9 + v10) setNeedsDisplay];
LABEL_15:

      return;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    goto LABEL_3;
  }
}

uint64_t sub_100632C30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100632C48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for MediaPageHeaderCollectionViewHostingCell()
{
  result = qword_1009424C8;
  if (!qword_1009424C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_100632DCC()
{
  v0 = sub_10074E984();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for Shelf.ContentType.mediaPageHeader(_:), v0, v2);
  v5 = COERCE_DOUBLE(sub_1007499B4());
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  result = v5;
  if (v7)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_100632ED4(uint64_t a1, uint64_t a2)
{
  v81 = a2;
  v78 = a1;
  v3 = sub_10000C518(&qword_100923E88);
  __chkstk_darwin(v3 - 8);
  v82 = &v67 - v4;
  v5 = sub_10074F654();
  v75 = v5;
  v86 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = (&v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = sub_10000C518(&qword_100923230);
  v8 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v67 - v11;
  v73 = &v67 - v11;
  __chkstk_darwin(v13);
  v15 = &v67 - v14;
  v87 = &v67 - v14;
  __chkstk_darwin(v16);
  v83 = &v67 - v17;
  sub_10000C518(&qword_100923E90);
  v18 = *(sub_10074F584() - 8);
  v80 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v72 = v20;
  *(v20 + 16) = xmmword_1007A7250;
  v74 = v20 + v19;
  v89 = 0x3FF0000000000000;
  sub_10001CC10();
  sub_10074F614();
  v21 = *(v8 + 16);
  v22 = a1;
  v23 = v88;
  v21(v15, v22, v88);
  v84 = v8 + 16;
  v24 = v81;
  v21(v12, v81, v23);
  __asm { FMOV            V0.2D, #16.0 }

  *v7 = _Q0;
  v30 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v31 = *(v86 + 104);
  v86 += 104;
  v79 = v31;
  v77 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v31(v7, enum case for PageGrid.HorizontalMargins.absolute(_:), v5);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v89) = 0;
  sub_10074F614();
  v89 = 0;
  sub_10074F614();
  v33 = v87;
  v34 = v73;
  sub_10074F544();
  v89 = 0x3FF0000000000000;
  sub_10074F614();
  v35 = v78;
  v36 = v88;
  v76 = v21;
  v21(v33, v78, v88);
  v21(v34, v24, v36);
  __asm { FMOV            V0.2D, #20.0 }

  *v7 = _Q0;
  v79(v7, v30, v75);
  LOBYTE(v89) = 0;
  sub_10074F614();
  v89 = 0;
  sub_10074F614();
  v38 = v80;
  top = UIEdgeInsetsZero.top;
  v71 = left;
  v39 = v87;
  sub_10074F544();
  v68 = 2 * v38;
  v89 = 0x3FF0000000000000;
  sub_10074F614();
  v40 = v35;
  v41 = v88;
  v42 = v76;
  v76(v39, v40, v88);
  v43 = v34;
  v44 = v81;
  v42(v34, v81, v41);
  v69 = vdupq_n_s64(0x4041000000000000uLL);
  v67 = v7;
  *v7 = v69;
  v45 = v75;
  v46 = v79;
  v79(v7, v77, v75);
  LOBYTE(v89) = 0;
  sub_10074F614();
  v89 = 0;
  sub_10074F614();
  v47 = v68;
  v48 = v87;
  v49 = v67;
  sub_10074F544();
  v68 = v47 + v80;
  v89 = 0x3FF0000000000000;
  sub_10074F614();
  v50 = v48;
  v51 = v88;
  v52 = v76;
  v76(v50, v78, v88);
  v52(v43, v44, v51);
  *v49 = v69;
  v53 = v49;
  v46(v49, v77, v45);
  sub_1007535A4();
  LOBYTE(v89) = 0;
  sub_10074F614();
  v89 = 0;
  sub_10074F614();
  v54 = v87;
  v55 = v73;
  sub_10074F544();
  v68 = 4 * v80;
  v89 = 0x3FF0000000000000;
  sub_10074F614();
  v56 = v54;
  v57 = v88;
  v58 = v76;
  v76(v56, v78, v88);
  v58(v55, v81, v57);
  v69 = vdupq_n_s64(0x404A000000000000uLL);
  *v53 = v69;
  v59 = v75;
  v79(v53, v77, v75);
  LOBYTE(v89) = 0;
  sub_10074F614();
  v89 = 0;
  sub_10074F614();
  v60 = v68;
  v61 = v87;
  v62 = v73;
  sub_10074F544();
  v80 += v60;
  v89 = 0x3FF0000000000000;
  sub_10074F614();
  v63 = v61;
  v64 = v88;
  v65 = v76;
  v76(v63, v78, v88);
  v65(v62, v81, v64);
  *v53 = v69;
  v79(v53, v77, v59);
  LOBYTE(v89) = 0;
  sub_10074F614();
  v89 = 0;
  sub_10074F614();
  sub_10074F544();
  return v72;
}

uint64_t sub_1006339C4()
{
  v0 = sub_100744E04();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100744E34();
  sub_100633B60(&qword_10092BB18, &type metadata accessor for HorizontalRule);
  result = sub_1007468B4();
  if (v7)
  {
    sub_100744E24();
    swift_getKeyPath();
    sub_100746914();

    v5 = v7;
    sub_100744DE4();

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_100633B60(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100633BB0()
{
  result = qword_1009424D8;
  if (!qword_1009424D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009424D8);
  }

  return result;
}

unint64_t sub_100633C08()
{
  result = qword_1009424E0;
  if (!qword_1009424E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009424E0);
  }

  return result;
}

uint64_t sub_100633C80()
{
  v0 = sub_10000C518(&qword_100936C98);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_100741164();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_100740E14();
  sub_100039C50(v5, qword_1009829E0);
  sub_10000D0FC(v5, qword_1009829E0);
  sub_100741144();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_100740E04();
}

uint64_t sub_100633DE4()
{
  v0 = sub_10000C518(&qword_100942560);
  sub_100039C50(v0, qword_1009829F8);
  sub_10000D0FC(v0, qword_1009829F8);
  sub_10000C518(&qword_100942580);
  return sub_100750184();
}

uint64_t sub_100633E74()
{
  v0 = sub_10000C518(&qword_100936C90);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_10000C518(&qword_100936C98);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_100741164();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = sub_100753054();
  __chkstk_darwin(v8 - 8);
  sub_100753044();
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_100753034(v12);
  sub_100740CD4();
  sub_100753024(v11);

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_100753034(v13);
  sub_100741154();
  (*(v7 + 56))(v5, 1, 1, v6);
  v9 = sub_100740D14();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  return sub_100740D24();
}

uint64_t sub_1006340E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1004100BC;

  return sub_100635270(a1);
}

unint64_t sub_100634190()
{
  result = qword_1009424E8;
  if (!qword_1009424E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009424E8);
  }

  return result;
}

unint64_t sub_1006341E4()
{
  result = qword_1009424F0;
  if (!qword_1009424F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009424F0);
  }

  return result;
}

unint64_t sub_10063423C()
{
  result = qword_1009424F8;
  if (!qword_1009424F8)
  {
    sub_10000C724(&qword_100942500);
    sub_1006341E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009424F8);
  }

  return result;
}

uint64_t sub_1006342C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100634538();
  *v5 = v2;
  v5[1] = sub_1000A4868;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100634374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000A4868;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_100634430()
{
  result = qword_100942508;
  if (!qword_100942508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942508);
  }

  return result;
}

unint64_t sub_100634488()
{
  result = qword_100942510;
  if (!qword_100942510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942510);
  }

  return result;
}

unint64_t sub_1006344E0()
{
  result = qword_100942518;
  if (!qword_100942518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942518);
  }

  return result;
}

unint64_t sub_100634538()
{
  result = qword_100942520;
  if (!qword_100942520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942520);
  }

  return result;
}

unint64_t sub_100634594()
{
  result = qword_100942528;
  if (!qword_100942528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942528);
  }

  return result;
}

uint64_t sub_1006345E8()
{
  v0 = sub_10000C518(&qword_100942590);
  __chkstk_darwin(v0);
  sub_100362AD0();
  sub_100740D84();
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  sub_100740D74(v2);
  swift_getKeyPath();
  sub_10000C518(&qword_100942598);
  sub_100740D64();

  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  sub_100740D74(v3);
  return sub_100740D94();
}

unint64_t sub_100634708()
{
  result = qword_100942530;
  if (!qword_100942530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942530);
  }

  return result;
}

unint64_t sub_100634760()
{
  result = qword_100942538;
  if (!qword_100942538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942538);
  }

  return result;
}

unint64_t sub_1006347BC()
{
  result = qword_100942540;
  if (!qword_100942540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942540);
  }

  return result;
}

uint64_t sub_100634810()
{
  sub_1006351F0();
  v1 = sub_100740D54();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100634880@<X0>(uint64_t a1@<X8>)
{
  if (qword_100921AE0 != -1)
  {
    swift_once();
  }

  v2 = sub_100740E14();
  v3 = sub_10000D0FC(v2, qword_1009829E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10063496C(uint64_t a1)
{
  v2 = sub_100362AD0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1006349BC()
{
  result = qword_100942558;
  if (!qword_100942558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942558);
  }

  return result;
}

uint64_t sub_100634A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000A27FC;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100634AD8(uint64_t a1)
{
  v2 = sub_1006347BC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100634B44(char a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    sub_100754534(38);

    v6 = 0xD000000000000024;
  }

  else
  {
    sub_100754534(31);

    v6 = 0xD00000000000001DLL;
  }

  v7._countAndFlagsBits = a2;
  v7._object = a3;
  sub_1007531B4(v7);
  return v6;
}

uint64_t sub_100634C00@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v43 = a4;
  v44 = a5;
  v47 = a3;
  v9 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v9 - 8);
  v11 = &v41 - v10;
  v12 = sub_10000C518(&qword_100942560);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v41 - v14;
  v16 = sub_10000C518(&qword_100942568);
  __chkstk_darwin(v16 - 8);
  v18 = &v41 - v17;
  v19 = sub_100741164();
  __chkstk_darwin(v19 - 8);
  sub_10000C518(&qword_100936C88);
  sub_100741144();
  v46 = sub_100740D04();

  sub_100741144();
  v20 = sub_100740D04();
  v21 = qword_100921AE8;
  v42 = v20;

  if (v21 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v12, qword_1009829F8);
  sub_10002DDC8(&qword_100942570, &qword_100942560);
  sub_100750174();
  v45 = a1;
  sub_100753244();
  sub_100750194();
  (*(v13 + 8))(v15, v12);

  v22 = sub_10000C518(&qword_100942578);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v18, 1, v22) == 1)
  {
    sub_10000C8CC(v18, &qword_100942568);

    v24 = 0;
    v25 = a2;
    v26 = v45;
    v27 = v45;
  }

  else
  {
    sub_1007501A4();

    (*(v23 + 8))(v18, v22);
    v27 = sub_100753154();
    v25 = v40;

    v24 = 1;
    v26 = v45;
  }

  v28 = v43;
  if (!v44)
  {
    v28 = 0;
  }

  v29 = 0xE000000000000000;
  if (v44)
  {
    v29 = v44;
  }

  v48 = v28;
  v49 = v29;

  sub_100740CE4();
  v30 = v11;
  sub_1000497C4(v47, v11);
  v31 = sub_100741264();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v11, 1, v31) == 1)
  {
    sub_10000C8CC(v11, &unk_100923970);
    v33 = sub_100634B44(v24, v27, v25);
    v35 = v34;
  }

  else
  {
    v33 = sub_1007411E4();
    v35 = v36;
    (*(v32 + 8))(v30, v31);
  }

  v48 = v33;
  v49 = v35;
  v37 = v42;
  sub_100740CE4();
  sub_10000C8CC(v47, &unk_100923970);

  v38 = v46;

  *a6 = v26;
  a6[1] = a2;
  a6[2] = v27;
  a6[3] = v25;
  a6[4] = v38;
  a6[5] = v37;
  return result;
}

unint64_t sub_1006351F0()
{
  result = qword_100942588;
  if (!qword_100942588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942588);
  }

  return result;
}

uint64_t sub_100635244@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100740CF4();
  *a1 = result;
  return result;
}

uint64_t sub_100635270(uint64_t a1)
{
  *(v1 + 64) = a1;
  sub_10000C518(&unk_100923970);
  *(v1 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_10063530C, 0, 0);
}

uint64_t sub_10063530C()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_10001E7DC(0, v2, 0);
    v3 = sub_100741264();
    v4 = *(*(v3 - 8) + 56);
    v5 = (v1 + 40);
    do
    {
      v6 = *(v0 + 72);
      v7 = *(v5 - 1);
      v8 = *v5;
      v4(v6, 1, 1, v3);

      sub_100634C00(v7, v8, v6, 0, 0, (v0 + 16));
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_10001E7DC((v9 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      v11 = &_swiftEmptyArrayStorage[6 * v10];
      v12 = *(v0 + 16);
      v13 = *(v0 + 48);
      v11[3] = *(v0 + 32);
      v11[4] = v13;
      v11[2] = v12;
      v5 += 2;
      --v2;
    }

    while (v2);
  }

  v14 = *(v0 + 8);

  return v14(_swiftEmptyArrayStorage);
}

uint64_t sub_1006354A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_100750304();
  v38 = *(v3 - 8);
  v39 = v3;
  __chkstk_darwin(v3);
  v37 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&qword_100942730);
  __chkstk_darwin(v5 - 8);
  v7 = &v36 - v6;
  v8 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v8);
  v40 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_10092E450);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v36 - v15;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v17 = *(v11 + 8);
  v17(v16, v10);
  if (!v43)
  {
    sub_10000C8CC(v42, &unk_1009297F0);
    goto LABEL_8;
  }

  sub_10000C518(&qword_1009242A0);
  sub_100744FD4();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v33 = 1;
    v32 = v41;
    goto LABEL_9;
  }

  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v17(v13, v10);
  if (v42[0] != 1 || (, v18 = sub_10074ECC4(), , !v18))
  {

    goto LABEL_8;
  }

  v19 = sub_100747B94();
  v20 = sub_100747C14();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v7, a1, v20);
  (*(v21 + 56))(v7, 0, 1, v20);
  v22 = v40;
  v23 = v19;
  sub_100636FA4(v7, v40);
  sub_10000C8CC(v7, &qword_100942730);
  v24 = *(v8 + 24);
  v25 = sub_100750534();
  v26 = v37;
  (*(*(v25 - 8) + 16))(v37, v22 + v24, v25);
  v28 = v38;
  v27 = v39;
  (*(v38 + 104))(v26, enum case for FontSource.useCase(_:), v39);
  v29.super.isa = v23;
  isa = sub_1007502F4(v29).super.isa;
  (*(v28 + 8))(v26, v27);
  v31 = [objc_opt_self() configurationWithFont:isa scale:1];

  sub_10074F214();
  sub_10074F184();
  v32 = v41;
  sub_10074A254();

  sub_100638930(v22, type metadata accessor for SearchActionContentView.Layout.Metrics);
  v33 = 0;
LABEL_9:
  v34 = sub_10074A274();
  return (*(*(v34 - 8) + 56))(v32, v33, 1, v34);
}

uint64_t sub_100635A28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100747BA4();
  *a1 = result;
  return result;
}

uint64_t sub_100635A54(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  v9 = OBJC_IVAR____TtC22SubscribePageExtension23SearchActionContentView_iconView;
  *&v4[v9] = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC22SubscribePageExtension23SearchActionContentView_linkLabel;
  sub_100750614();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC22SubscribePageExtension23SearchActionContentView_metrics;
  if (qword_100921AF0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  v13 = sub_10000D0FC(v12, qword_100982A10);
  sub_10063889C(v13, &v4[v11]);
  v34.receiver = v4;
  v34.super_class = type metadata accessor for SearchActionContentView(0);
  v14 = objc_msgSendSuper2(&v34, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v19 = *&v18[OBJC_IVAR____TtC22SubscribePageExtension23SearchActionContentView_iconView];
  sub_10000C518(&unk_1009231A0);
  v20 = swift_allocObject();
  v33 = xmmword_1007A5CF0;
  *(v20 + 16) = xmmword_1007A5CF0;
  *(v20 + 32) = v19;
  v21 = *&v18[OBJC_IVAR____TtC22SubscribePageExtension23SearchActionContentView_linkLabel];
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1007A5CF0;
  *(v22 + 32) = v21;
  sub_10000C518(&qword_10092E9D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A6580;
  *(inited + 32) = v20;
  *(inited + 40) = v22;
  v24 = v19;
  v25 = v21;
  v26 = sub_100620BCC(inited);
  swift_setDeallocating();
  sub_10000C518(&qword_1009423E0);
  result = swift_arrayDestroy();
  if (!(v26 >> 62))
  {
    v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      goto LABEL_5;
    }

LABEL_12:

    sub_100637230();
    sub_10000C518(&unk_1009249D0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1007A5A00;
    *(v32 + 32) = sub_100751554();
    *(v32 + 40) = &protocol witness table for UITraitLegibilityWeight;
    sub_100753D44();

    swift_unknownObjectRelease();

    return v18;
  }

  result = sub_100754664();
  v28 = result;
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v28 >= 1)
  {
    for (i = 0; i != v28; ++i)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v30 = sub_100754574();
      }

      else
      {
        v30 = *(v26 + 8 * i + 32);
      }

      v31 = v30;
      [v18 addSubview:{v30, v33}];
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

id sub_100635E1C(double *a1)
{
  v2 = v1;
  v45 = sub_100750E94();
  v4 = *(v45 - 8);
  __chkstk_darwin(v45);
  v46 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v47 = &v40 - v7;
  __chkstk_darwin(v8);
  v48 = &v40 - v9;
  __chkstk_darwin(v10);
  v12 = &v40 - v11;
  v44 = sub_100750304();
  v13 = *(v44 - 8);
  __chkstk_darwin(v44);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = (&v40 - v20);
  v22 = OBJC_IVAR____TtC22SubscribePageExtension23SearchActionContentView_metrics;
  swift_beginAccess();
  sub_10063889C(&v2[v22], v21);
  v23 = *a1 == *v21 && a1[1] == v21[1];
  if (v23 && a1[2] == v21[2] && (sub_100750524() & 1) != 0 && *(a1 + v16[7]) == *(v21 + v16[7]) && *(a1 + v16[8]) == *(v21 + v16[8]))
  {
    v24 = v16[9];
    v25 = *(a1 + v24);
    v26 = *(v21 + v24);
    result = sub_100638930(v21, type metadata accessor for SearchActionContentView.Layout.Metrics);
    if (v25 == v26)
    {
      return result;
    }
  }

  else
  {
    sub_100638930(v21, type metadata accessor for SearchActionContentView.Layout.Metrics);
  }

  v42 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension23SearchActionContentView_iconView];
  v28 = [v2 traitCollection];
  sub_10063889C(&v2[v22], v18);
  v43 = v12;
  v29 = v45;
  v41 = v22;
  v30 = v16[6];
  v31 = sub_100750534();
  (*(*(v31 - 8) + 16))(v15, &v18[v30], v31);
  v32 = v44;
  (*(v13 + 104))(v15, enum case for FontSource.useCase(_:), v44);
  v33.super.isa = v28;
  isa = sub_1007502F4(v33).super.isa;
  (*(v13 + 8))(v15, v32);
  v35 = [objc_opt_self() configurationWithFont:isa scale:1];

  sub_100638930(v18, type metadata accessor for SearchActionContentView.Layout.Metrics);
  sub_1007432D4();
  [v2 setNeedsLayout];
  sub_10063889C(&v2[v41], v18);
  v36 = v46;
  sub_100750E84();
  v37 = v47;
  sub_100750E54();
  v38 = *(v4 + 8);
  v38(v36, v29);
  v39 = v48;
  sub_100750E74();
  v38(v37, v29);
  sub_100750E64();
  v38(v39, v29);
  sub_100638930(v18, type metadata accessor for SearchActionContentView.Layout.Metrics);
  sub_1007505F4();
  return [v2 setNeedsLayout];
}

uint64_t sub_100636324()
{
  v1 = type metadata accessor for SearchActionContentView.Layout(0);
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v4 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_100750354();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SearchActionContentView(0);
  v21.receiver = v0;
  v21.super_class = v9;
  objc_msgSendSuper2(&v21, "layoutSubviews");
  v10 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension23SearchActionContentView_linkLabel];
  v4[8] = sub_100750614();
  v4[9] = &protocol witness table for UILabel;
  v4[5] = v10;
  v11 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension23SearchActionContentView_iconView];
  v4[3] = sub_1007433C4();
  v4[4] = &protocol witness table for UIView;
  *v4 = v11;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension23SearchActionContentView_metrics;
  swift_beginAccess();
  sub_10063889C(&v0[v12], v4 + *(v2 + 32));
  v13 = v10;
  v14 = v11;
  sub_1007477B4();
  sub_100636510(v15, v16, v17, v18);
  sub_100638930(v4, type metadata accessor for SearchActionContentView.Layout);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100636510(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  MinX = CGRectGetMinX(*&a1);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  MinY = CGRectGetMinY(v23);
  v12 = v4 + *(type metadata accessor for SearchActionContentView.Layout(0) + 24);
  v13 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  v14 = *(v12 + *(v13 + 28));
  v15 = MinY + v14;
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  Width = CGRectGetWidth(v24);
  v25.origin.x = a1;
  v25.origin.y = a2;
  v25.size.width = a3;
  v25.size.height = a4;
  v17 = CGRectGetHeight(v25) - v14 - *(v12 + *(v13 + 32));
  sub_100016B4C(v5, &v19, &unk_100928A00);
  if (v20)
  {
    sub_100012160(&v19, v21);
    sub_10000C888(v21, v22);
    sub_100750414();
    sub_10000C888(v21, v22);
    v26.origin.x = MinX;
    v26.origin.y = v15;
    v26.size.width = Width;
    v26.size.height = v17;
    CGRectGetMinX(v26);
    v27.origin.y = v15;
    v27.origin.x = MinX;
    v27.size.width = Width;
    v27.size.height = v17;
    CGRectGetMidY(v27);
    sub_100753B24();
    sub_100750394();
    sub_10000C620(v21);
  }

  else
  {
    sub_10000C8CC(&v19, &unk_100928A00);
  }

  sub_10000C888((v5 + 40), *(v5 + 64));
  sub_100750404();
  sub_10000C888((v5 + 40), *(v5 + 64));
  v28.origin.y = v15;
  v28.origin.x = MinX;
  v28.size.width = Width;
  v28.size.height = v17;
  CGRectGetMidY(v28);
  sub_100753B24();
  sub_100750394();
  return sub_100750314();
}

double sub_100636868(void *a1, double a2)
{
  v5 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v5);
  v21 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100750304();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2 + *(type metadata accessor for SearchActionContentView.Layout(0) + 24);
  v12 = a2 + 0.0;
  sub_100016B4C(v2, &v22, &unk_100928A00);
  if (v23)
  {
    sub_100012160(&v22, v24);
    sub_10000C888(v24, v25);
    sub_100750414();
    sub_10000C620(v24);
  }

  else
  {
    sub_10000C8CC(&v22, &unk_100928A00);
  }

  sub_10000C888((v2 + 40), *(v2 + 64));
  v13 = a1;
  sub_100750404();
  v14 = v21;
  sub_10063889C(v11, v21);
  v15 = *(v5 + 24);
  v16 = sub_100750534();
  (*(*(v16 - 8) + 32))(v10, v14 + v15, v16);
  (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v7);
  v17 = [v13 traitCollection];
  v25 = v7;
  v26 = &protocol witness table for FontSource;
  v18 = sub_10000D134(v24);
  (*(v8 + 16))(v18, v10, v7);
  sub_10074FC54();

  (*(v8 + 8))(v10, v7);
  sub_10000C620(v24);
  return v12;
}

void sub_100636BD8(uint64_t a1, uint64_t a2)
{
  v5 = sub_10074F314();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100750304();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v23 = a2;

    v14 = [v2 traitCollection];
    v15 = &v2[OBJC_IVAR____TtC22SubscribePageExtension23SearchActionContentView_metrics];
    swift_beginAccess();
    sub_10063889C(v15, v13);
    v16 = *(v10 + 24);
    v17 = sub_100750534();
    (*(*(v17 - 8) + 16))(v9, &v13[v16], v17);
    (*(v7 + 104))(v9, enum case for FontSource.useCase(_:), v6);
    v18.super.isa = v14;
    v19 = v2;
    isa = sub_1007502F4(v18).super.isa;
    (*(v7 + 8))(v9, v6);
    v21 = [objc_opt_self() configurationWithFont:isa scale:1];

    sub_100638930(v13, type metadata accessor for SearchActionContentView.Layout.Metrics);
    sub_10074F214();

    v22 = *&v19[OBJC_IVAR____TtC22SubscribePageExtension23SearchActionContentView_iconView];
    [v22 contentMode];
    sub_10074F374();
    sub_10074F324();
    sub_100743364();
    [v22 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_10000D198();
      sub_100753E34();
    }

    sub_100743224();
    sub_1007433C4();
    sub_10063938C(&qword_100925570, &type metadata accessor for ArtworkView);
    sub_100744204();
  }

  else
  {
    v24.value.super.isa = 0;
    v24.is_nil = 0;
    sub_100743384(v24, v11);
  }
}