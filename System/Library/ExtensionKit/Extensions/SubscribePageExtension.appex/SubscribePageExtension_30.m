void sub_1003610FC()
{
  v1 = v0;
  v2 = sub_100743B04();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_10097FBE0;
  v8 = *&v1[qword_10097FBE0];
  if (v8)
  {
    v9 = *&v1[qword_10097FBE0];
  }

  else
  {
    (*(v3 + 104))(v6, enum case for SystemImage.speakerSlashFill(_:), v2, v4);
    v10 = sub_100743AE4();
    (*(v3 + 8))(v6, v2);
    v11 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v10 style:0 target:0 action:0];

    v9 = v11;
    v29._object = 0x8000000100778550;
    v29._countAndFlagsBits = 0xD00000000000002BLL;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    sub_1007458B4(v29, v31);
    v12 = sub_100753064();

    [v9 setTitle:v12];

    v30._countAndFlagsBits = 0xD00000000000002CLL;
    v30._object = 0x8000000100778580;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    sub_1007458B4(v30, v32);
    v13 = sub_100753064();

    [v9 setAccessibilityLabel:v13];

    [v9 setHidden:1];
    v14 = *&v1[v7];
    *&v1[v7] = v9;

    v8 = 0;
  }

  v15 = v8;
  v16 = [v1 navigationItem];
  v17 = [v16 rightBarButtonItems];

  if (v17 && (sub_100016C60(0, &qword_100925250), v18 = sub_1007532A4(), v17, v28 = v9, __chkstk_darwin(v19), *(&v27 - 2) = &v28, v20 = sub_100074944(sub_100362B2C, (&v27 - 4), v18), , (v20 & 1) == 0))
  {
    v21 = [v1 navigationItem];
    v22 = [v21 rightBarButtonItems];

    if (v22)
    {
      v23 = sub_1007532A4();
    }

    else
    {
      v23 = _swiftEmptyArrayStorage;
    }

    v28 = v23;
    v24 = v9;
    sub_100753284();
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();
    v25 = [v1 navigationItem];
    isa = sub_100753294().super.isa;

    [v25 setRightBarButtonItems:isa];
  }

  else
  {
  }
}

void sub_100361504()
{
  v1 = *&v0[qword_10097FBE0];
  if (v1)
  {
    v13 = v1;
    v2 = [v0 navigationItem];
    v3 = [v2 rightBarButtonItems];

    if (v3 && (sub_100016C60(0, &qword_100925250), v4 = sub_1007532A4(), v3, v5 = sub_1001C8958(v13, v4), v7 = v6, , (v7 & 1) == 0))
    {
      v8 = [v0 navigationItem];
      v9 = [v8 rightBarButtonItems];
      if (v9)
      {
        v10 = v9;
        v11 = sub_1007532A4();

        if (v11)
        {
          v12.super.isa = sub_100753294().super.isa;
        }

        else
        {
          v12.super.isa = 0;
        }

        [v8 setRightBarButtonItems:v12.super.isa];
      }

      else
      {
        [v8 setRightBarButtonItems:0];
      }
    }
  }
}

void sub_1003616D0()
{
  if (*(*&v0[qword_100933890] + 16))
  {
    v1 = [v0 view];
    if (v1)
    {
      v2 = v1;
      type metadata accessor for InsetCollectionViewControllerContentView();
      v3 = swift_dynamicCastClass();
      if (v3)
      {
        v4 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtensionP33_D5EB93F8F29FA420E99B1898AD0B2EE640InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

        if ((v4 & 1) == 0)
        {
        }

        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100361770(uint64_t result)
{
  *(v1 + qword_10097EE28) = result;
  if (result)
  {
    *(v1 + qword_10097FBB8) = 1;
  }

  return result;
}

void sub_100361798()
{
  *(v0 + qword_100933850) = 1;
  *(sub_10035BA88() + 72) = 1;

  sub_100360FCC();
}

void sub_1003617E0()
{
  *(v0 + qword_100933850) = 0;
  *(sub_10035BA88() + 72) = 0;

  sub_100360FCC();
}

uint64_t sub_10036181C(uint64_t a1)
{
  v2 = sub_100741264();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v28 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_100932480);
  __chkstk_darwin(v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  sub_100068C18(a1, v9);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_1000AC948(v9);
LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v19 = sub_10000C518(&unk_100932490);
  sub_1000498A8(&v9[*(v19 + 48)], v18);
  sub_1007492E4();
  v20 = *(v4 + 48);
  sub_100016B4C(v15, v6, &unk_100923970);
  sub_100016B4C(v18, &v6[v20], &unk_100923970);
  v21 = v29;
  v22 = *(v29 + 48);
  if (v22(v6, 1, v2) != 1)
  {
    sub_100016B4C(v6, v12, &unk_100923970);
    if (v22(&v6[v20], 1, v2) != 1)
    {
      v25 = v28;
      (*(v21 + 32))(v28, &v6[v20], v2);
      sub_100362DF0(&qword_100926240, &type metadata accessor for URL);
      v26 = v21;
      v23 = sub_100753014();
      v27 = *(v26 + 8);
      v27(v25, v2);
      sub_10000C8CC(v15, &unk_100923970);
      sub_10000C8CC(v18, &unk_100923970);
      v27(v12, v2);
      sub_10000C8CC(v6, &unk_100923970);
      return v23 & 1;
    }

    sub_10000C8CC(v15, &unk_100923970);
    sub_10000C8CC(v18, &unk_100923970);
    (*(v21 + 8))(v12, v2);
    goto LABEL_8;
  }

  sub_10000C8CC(v15, &unk_100923970);
  sub_10000C8CC(v18, &unk_100923970);
  if (v22(&v6[v20], 1, v2) != 1)
  {
LABEL_8:
    sub_10000C8CC(v6, &unk_100932480);
    goto LABEL_9;
  }

  sub_10000C8CC(v6, &unk_100923970);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_100361CD8(void *a1)
{
  v2 = sub_100752294();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v15[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  LOBYTE(v34[0]) = 0;
  *&v16[0] = a1;
  *(v16 + 8) = 0u;
  *(&v16[1] + 8) = 0u;
  BYTE8(v16[2]) = 0;
  __asm { FMOV            V0.2D, #10.0 }

  v17 = _Q0;
  v18 = _Q0;
  v19 = 15;
  sub_100016C60(0, &qword_100926D00);
  v11 = a1;
  *v5 = sub_100753774();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  LOBYTE(a1) = sub_1007522C4();
  result = (*(v3 + 8))(v5, v2);
  if (a1)
  {
    v23 = xmmword_100931340;
    v24 = xmmword_100931350;
    v20 = xmmword_100931310;
    v21 = xmmword_100931320;
    v22 = xmmword_100931330;
    v28 = v16[2];
    v29 = v17;
    v30 = v18;
    v26 = v16[0];
    v27 = v16[1];
    v32[0] = xmmword_100931310;
    v32[1] = xmmword_100931320;
    v32[3] = xmmword_100931340;
    v32[4] = xmmword_100931350;
    v25 = qword_100931360;
    v31 = v19;
    v33 = qword_100931360;
    v32[2] = xmmword_100931330;
    sub_100016B4C(&v20, v34, &unk_1009308C0);
    xmmword_100931330 = v28;
    xmmword_100931340 = v29;
    xmmword_100931350 = v30;
    qword_100931360 = v31;
    xmmword_100931310 = v26;
    xmmword_100931320 = v27;
    sub_10000C8CC(v32, &unk_1009308C0);
    v15[3] = sub_100016C60(0, &qword_100925250);
    v15[0] = v11;
    v13 = v11;
    sub_1001664D8(v16, v34);
    sub_10074C8D4();
    sub_10000C8CC(v15, &unk_100923520);
    v34[2] = xmmword_100931330;
    v34[3] = xmmword_100931340;
    v34[4] = xmmword_100931350;
    v34[0] = xmmword_100931310;
    v34[1] = xmmword_100931320;
    xmmword_100931310 = v20;
    xmmword_100931320 = v21;
    xmmword_100931330 = v22;
    xmmword_100931340 = v23;
    v35 = qword_100931360;
    xmmword_100931350 = v24;
    qword_100931360 = v25;
    sub_10000C8CC(v34, &unk_1009308C0);
    return sub_100166534(v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100361FCC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100361CD8(v4);
}

uint64_t sub_100362034()
{
}

uint64_t sub_1003620F4(uint64_t a1)
{
}

uint64_t type metadata accessor for ProductDiffablePageViewController()
{
  result = qword_1009338C0;
  if (!qword_1009338C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003622FC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10036235C(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_100743B54();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &aBlock[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &aBlock[-1] - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v19 = *&Strong[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_navigationBarAppearanceProgress], v20 = Strong[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_navigationBarAppearanceProgress + 8], Strong, v20 == 1))
  {
    if (a2 == 1.79769313e308)
    {
      return;
    }

    goto LABEL_4;
  }

  if (v19 != a2)
  {
LABEL_4:
    sub_100743B14();
    sub_100743B34();
    v22 = v21;
    v24 = v23;
    v25 = *(v12 + 8);
    v25(v17, v11);
    sub_100743B14();
    sub_100743B44();
    v27 = v26;
    v29 = v28;
    v25(v14, v11);
    v30 = swift_allocObject();
    *(v30 + 16) = a1;
    *(v30 + 24) = a2;
    v31 = objc_allocWithZone(UIViewPropertyAnimator);
    aBlock[4] = a5;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CF7B0;
    aBlock[3] = a6;
    v32 = _Block_copy(aBlock);

    v33 = [v31 initWithDuration:v32 controlPoint1:a3 controlPoint2:v22 animations:{v24, v27, v29}];
    _Block_release(v32);
    [v33 startAnimation];
  }
}

void sub_100362634(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_navigationBarAppearanceProgress;
    *v4 = a1;
    *(v4 + 8) = 0;
    sub_10062ADD8();
  }
}

uint64_t sub_1003626AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100362704(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10036271C(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
    if (v4 && (v5 = v4, sub_100016C60(0, &qword_10092B0C0), v3 = v3, v6 = sub_100753FC4(), v3, v5, (v6 & 1) != 0) && ([a1 isCancelled] & 1) != 0)
    {
      v7 = sub_10035BB6C();
      v8 = *(v7 + 40);
      if (v8)
      {

        v8(v9, 1.0, 0.0);
        sub_1000164A8(v8);
      }

      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = v10;
        v12 = [v10 navigationController];

        if (v12)
        {
          v13 = [v12 navigationBar];

          [v13 _setTitleOpacity:1.0];
          v3 = v13;
        }
      }

      *(v7 + 88) = 0;
    }

    else
    {
    }
  }
}

void sub_1003628B4(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ([a1 isCancelled])
    {
      v4 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
      if (v4)
      {
        v5 = v4;
        sub_100016C60(0, &qword_10092B0C0);
        v6 = v3;
        v7 = sub_100753FC4();

        if ((v7 & 1) != 0 && !*&v6[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController])
        {
          v8 = v6;
          v9 = [v8 navigationController];
          if (v9)
          {
            v10 = v9;
            v11 = [v9 navigationBar];

            if (v11)
            {

              sub_10035BB6C();
              v12 = [v8 collectionView];

              if (!v12)
              {
                __break(1u);
                return;
              }

              sub_1003CA534(v12);

              v8 = v12;
            }
          }
        }
      }
    }
  }
}

void sub_100362A38()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10035BB6C();
    v2 = [v1 collectionView];
    if (v2)
    {
      v3 = v2;
      sub_1003CA534(v2);
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_100362AD0()
{
  result = qword_100933EA8;
  if (!qword_100933EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100933EA8);
  }

  return result;
}

unint64_t sub_100362B94()
{
  result = qword_100933F08;
  if (!qword_100933F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100933F08);
  }

  return result;
}

unint64_t sub_100362BE8()
{
  result = qword_100933F10;
  if (!qword_100933F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100933F10);
  }

  return result;
}

uint64_t sub_100362D7C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100362DF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100362E48()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1003631B8()
{
  result = qword_100934018;
  if (!qword_100934018)
  {
    sub_10074CC34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100934018);
  }

  return result;
}

uint64_t sub_100363218(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v31 = sub_100742CF4();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v32 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1007493D4();
  v4 = *(v30 - 8);
  __chkstk_darwin(v30);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10074A304();
  v7 = *(v29 - 8);
  __chkstk_darwin(v29);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100752614();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v11 - 8);
  v13 = &v28 - v12;
  v14 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v14 - 8);
  v16 = &v28 - v15;
  v17 = sub_10074F4D4();
  __chkstk_darwin(v17);
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  (*(v19 + 104))(&v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.gameCenterPlayerProfile(_:));
  v20 = sub_100741264();
  (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
  v21 = sub_100743FE4();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = sub_10074CC24();
  if (v23)
  {
    v24 = &type metadata for String;
  }

  else
  {
    v22 = 0;
    v24 = 0;
    v36 = 0;
  }

  v34 = v22;
  v35 = v23;
  v37 = v24;
  sub_1007525F4();
  (*(v7 + 104))(v9, enum case for FlowPresentationContext.infer(_:), v29);
  (*(v4 + 104))(v6, enum case for FlowAnimationBehavior.infer(_:), v30);
  (*(v2 + 104))(v32, enum case for FlowOrigin.inapp(_:), v31);
  sub_100752B44();
  sub_100742CD4();
  swift_allocObject();
  v25 = sub_100742C84();
  v26 = sub_10052AD94(v25, 1, v33);

  return v26;
}

uint64_t sub_1003636F8()
{
  v0 = sub_10000C518(&unk_100947360);
  sub_100039C50(v0, qword_10097FBF0);
  sub_10000D0FC(v0, qword_10097FBF0);
  return sub_100752664();
}

uint64_t sub_100363770()
{
  v0 = sub_10000C518(&unk_100947360);
  sub_100039C50(v0, qword_10097FC08);
  sub_10000D0FC(v0, qword_10097FC08);
  return sub_100752664();
}

uint64_t sub_1003637E8()
{
  v0 = sub_10000C518(&unk_100947360);
  sub_100039C50(v0, qword_10097FC20);
  sub_10000D0FC(v0, qword_10097FC20);
  return sub_100752664();
}

uint64_t sub_100363860()
{
  v0 = sub_10000C518(&unk_100947360);
  sub_100039C50(v0, qword_10097FC38);
  sub_10000D0FC(v0, qword_10097FC38);
  return sub_100752664();
}

uint64_t sub_1003638D8()
{
  v0 = sub_100741494();
  v1 = *(v0 - 8);
  v66 = v0;
  v67 = v1;
  __chkstk_darwin(v0);
  v3 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_100947360);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v56 - v6;
  v65 = 0x80000001007786E0;
  if (qword_1009209C0 != -1)
  {
    swift_once();
  }

  v8 = sub_10000D0FC(v4, qword_10097FBF0);
  v63 = sub_100752854();
  v9 = sub_100752824();
  v11 = v5 + 16;
  v10 = *(v5 + 16);
  v10(v7, v8, v4);
  type metadata accessor for BoolPreferencesDebugSetting();
  v12 = swift_allocObject();
  strcpy((v12 + 56), "Feed Previews");
  *(v12 + 70) = -4864;
  v13 = v65;
  *(v12 + 72) = 0xD000000000000041;
  *(v12 + 80) = v13;
  *(v12 + 88) = 0;
  v64 = v10;
  v10((v12 + OBJC_IVAR____TtC22SubscribePageExtension27BoolPreferencesDebugSetting_key), v7, v4);
  v14 = (v12 + OBJC_IVAR____TtC22SubscribePageExtension27BoolPreferencesDebugSetting_preferences);
  *v14 = v9;
  v14[1] = &protocol witness table for LocalPreferences;

  sub_100741484();
  v15 = sub_100741464();
  v17 = v16;
  v18 = *(v67 + 8);
  v67 += 8;
  v65 = v18;
  v18(v3, v66);
  v68 = v15;
  v69 = v17;
  v60 = v12;
  sub_1007544E4();
  v19 = *(v5 + 8);
  v61 = v5 + 8;
  v62 = v19;
  v19(v7, v4);

  v59 = 0x8000000100778750;
  v20 = v3;
  if (qword_1009209C8 != -1)
  {
    swift_once();
  }

  v21 = sub_10000D0FC(v4, qword_10097FC08);
  v22 = sub_100752824();
  v23 = v21;
  v24 = v64;
  v64(v7, v23, v4);
  v25 = swift_allocObject();
  *(v25 + 56) = 0xD000000000000017;
  *(v25 + 64) = 0x8000000100778730;
  v26 = v59;
  *(v25 + 72) = 0xD000000000000030;
  *(v25 + 80) = v26;
  *(v25 + 88) = 0;
  v24(v25 + OBJC_IVAR____TtC22SubscribePageExtension27BoolPreferencesDebugSetting_key, v7, v4);
  v27 = (v25 + OBJC_IVAR____TtC22SubscribePageExtension27BoolPreferencesDebugSetting_preferences);
  *v27 = v22;
  v27[1] = &protocol witness table for LocalPreferences;

  sub_100741484();
  v28 = sub_100741464();
  v30 = v29;
  v65(v20, v66);
  v68 = v28;
  v69 = v30;
  v59 = v25;
  sub_1007544E4();
  v62(v7, v4);

  if (qword_1009209D0 != -1)
  {
    swift_once();
  }

  v31 = sub_10000D0FC(v4, qword_10097FC20);
  v32 = sub_100752824();
  v33 = v64;
  v64(v7, v31, v4);
  v34 = swift_allocObject();
  *(v34 + 56) = 0xD000000000000011;
  *(v34 + 64) = 0x8000000100778790;
  *(v34 + 72) = 0xD000000000000067;
  *(v34 + 80) = 0x80000001007787B0;
  *(v34 + 88) = 0;
  v33(v34 + OBJC_IVAR____TtC22SubscribePageExtension27BoolPreferencesDebugSetting_key, v7, v4);
  v35 = (v34 + OBJC_IVAR____TtC22SubscribePageExtension27BoolPreferencesDebugSetting_preferences);
  *v35 = v32;
  v35[1] = &protocol witness table for LocalPreferences;

  sub_100741484();
  v36 = sub_100741464();
  v38 = v37;
  v58 = v11;
  v65(v20, v66);
  v68 = v36;
  v69 = v38;
  sub_1007544E4();
  v62(v7, v4);

  v57 = v20;
  if (qword_1009209D8 != -1)
  {
    swift_once();
  }

  v39 = sub_10000D0FC(v4, qword_10097FC38);
  v40 = sub_100752824();
  v41 = v64;
  v64(v7, v39, v4);
  v42 = swift_allocObject();
  *(v42 + 56) = 0xD00000000000001DLL;
  *(v42 + 64) = 0x8000000100778820;
  *(v42 + 72) = 0xD00000000000003DLL;
  *(v42 + 80) = 0x8000000100778840;
  *(v42 + 88) = 0;
  v41(v42 + OBJC_IVAR____TtC22SubscribePageExtension27BoolPreferencesDebugSetting_key, v7, v4);
  v43 = (v42 + OBJC_IVAR____TtC22SubscribePageExtension27BoolPreferencesDebugSetting_preferences);
  *v43 = v40;
  v43[1] = &protocol witness table for LocalPreferences;

  v44 = v57;
  sub_100741484();
  v45 = sub_100741464();
  v47 = v46;
  v65(v44, v66);
  v68 = v45;
  v69 = v47;
  sub_1007544E4();
  v62(v7, v4);

  sub_10000C518(&unk_1009231A0);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1007A5CF0;
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1007A57A0;
  v50 = v59;
  *(v49 + 32) = v60;
  *(v49 + 40) = v50;
  *(v49 + 48) = v34;
  *(v49 + 56) = v42;
  type metadata accessor for DebugSection();
  v51 = swift_allocObject();
  sub_100741484();
  v52 = sub_100741464();
  v54 = v53;

  v65(v44, v66);
  v51[2] = v52;
  v51[3] = v54;
  v51[4] = 0;
  v51[5] = 0xE000000000000000;
  v51[6] = v49;
  *(v48 + 32) = v51;

  return v48;
}

id sub_10036414C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodaySettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100364238(void *a1, uint64_t a2)
{
  v4 = ASKBuildTypeGetCurrent();
  v5 = sub_100753094();
  v7 = v6;
  if (v5 == sub_100753094() && v7 == v8)
  {
    goto LABEL_15;
  }

  v10 = sub_100754754();

  if ((v10 & 1) == 0)
  {
    v11 = sub_100753094();
    v13 = v12;
    if (v11 != sub_100753094() || v13 != v14)
    {
      v16 = sub_100754754();

      if (v16)
      {
        goto LABEL_6;
      }

      v17 = sub_100753094();
      v19 = v18;
      if (v17 == sub_100753094() && v19 == v20)
      {
      }

      else
      {
        v24 = sub_100754754();

        if ((v24 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      sub_100752854();
      sub_100752844();
      if (qword_100921F28 != -1)
      {
        swift_once();
      }

      v25 = sub_10000C518(&unk_100947360);
      sub_10000D0FC(v25, qword_100983450);
      sub_100752534();

      if (v27 != 2 && (v27 & 1) != 0)
      {
        goto LABEL_16;
      }

LABEL_25:
      v22 = 0;
      return v22 & 1;
    }

LABEL_15:

    goto LABEL_16;
  }

LABEL_6:

LABEL_16:
  sub_100752854();
  sub_100752824();
  if (*a1 != -1)
  {
    swift_once();
  }

  v21 = sub_10000C518(&unk_100947360);
  sub_10000D0FC(v21, a2);
  sub_100752534();

  v22 = v26;
  return v22 & 1;
}

uint64_t sub_10036450C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a4;
  v15 = a5;
  v16 = a2;
  v17 = a3;
  v18 = a1;
  v12 = *((swift_isaMask & *v5) + 0x80);
  swift_getOpaqueTypeMetadata2();
  sub_100752764();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v23[2] = OpaqueTypeConformance2;
  v8 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10000C724(&unk_100933350);
  sub_100751BD4();
  sub_10000C724(&unk_100933360);
  v9 = sub_100751BD4();
  v23[0] = OpaqueTypeMetadata2;
  v23[1] = v8;
  v21 = swift_getOpaqueTypeConformance2();
  v22 = sub_10002DDC8(&qword_10092AE10, &unk_100933350);
  WitnessTable = swift_getWitnessTable();
  v20 = sub_10002DDC8(&qword_100924AD8, &unk_100933360);
  v10 = swift_getWitnessTable();
  v12(v23, sub_1003668E8, v13, v9, v10);
  return sub_1007538E4();
}

uint64_t sub_100364798(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v8 = a2;
  ObjectType = swift_getObjectType();
  v3 = *((swift_isaMask & *v2) + 0x88);
  v4 = sub_10000C518(&qword_100934090);
  v5 = sub_10002DDC8(&qword_100934098, &qword_100934090);
  return v3(v8, sub_100366948, v7, v4, v5);
}

uint64_t sub_10036488C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v9[0] = a1;
  v9[1] = &type metadata for EmptyView;
  v9[2] = a2;
  v9[3] = &protocol witness table for EmptyView;
  v4 = sub_100751E04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_100751DF4();
  sub_100751E54();
  a3[3] = v4;
  a3[4] = swift_getWitnessTable();
  sub_10000D134(a3);
  sub_100751DE4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1003649E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a3;
  v45 = a2;
  v49 = a4;
  v44 = sub_100747C14();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_100751BC4();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_10000C518(&unk_100930810);
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = &v35 - v8;
  v42 = sub_10074F704();
  v51 = *(v42 - 8);
  __chkstk_darwin(v42);
  v40 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v50 = &v35 - v12;
  v13 = sub_10000C518(&qword_100923228);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v35 - v15;
  v17 = sub_10000C518(&unk_10092E450);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v35 - v19;
  swift_getKeyPath();
  sub_100746914();

  sub_1007525C4();
  (*(v18 + 8))(v20, v17);
  v37 = v55;
  swift_getKeyPath();
  sub_100746914();

  v36 = *(v14 + 56);
  swift_getKeyPath();
  sub_100746914();

  v54 = 0;
  memset(v53, 0, sizeof(v53));
  sub_100746944();
  v21 = v38;
  sub_1007525C4();
  (*(v39 + 8))(v9, v21);
  v39 = sub_100746954();
  v35 = a1;
  sub_100746884();
  v22 = sub_100747B94();
  v23 = [v22 preferredContentSizeCategory];

  v24 = v41;
  sub_100751BB4();
  v25 = *(v43 + 8);
  v26 = v44;
  v25(v6, v44);
  swift_getKeyPath();
  v27 = v40;
  sub_100746914();

  sub_10074F674();
  v28 = *(v51 + 8);
  v51 += 8;
  v29 = v27;
  v30 = v42;
  v28(v29, v42);
  sub_100746884();
  sub_10036506C();
  v25(v6, v26);
  v31 = v36;
  v32 = v24;
  v33 = v50;
  sub_100745B54();

  (*(v46 + 8))(v32, v48);
  sub_10000C620(v52);
  sub_10000C8CC(v53, &unk_1009340A0);
  v28(v33, v30);
  sub_10000C8CC(&v16[v31], &unk_10093D6E0);
  sub_10000C8CC(v16, &unk_10093D6E0);
  sub_10000C518(&qword_100934090);
  return sub_100746934();
}

double sub_10036506C()
{
  v0 = sub_10074E984();
  v26 = *(v0 - 8);
  v27 = v0;
  __chkstk_darwin(v0);
  v25 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10000C518(&unk_10092E450);
  v23 = *(v2 - 8);
  v24 = v2;
  __chkstk_darwin(v2);
  v4 = &v23 - v3;
  v5 = sub_10074F704();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1007499D4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003662B8(v12);
  sub_100747B84();
  v13 = sub_1007499C4();
  v15 = v14;
  (*(v6 + 8))(v8, v5);
  if (v15)
  {
    sub_100747C04();
    v16 = v24;
    sub_1007525C4();
    (*(v23 + 8))(v4, v16);
    v17 = v25;
    sub_10074E994();

    v18 = COERCE_DOUBLE(sub_1007499B4());
    v20 = v19;
    (*(v26 + 8))(v17, v27);
    (*(v10 + 8))(v12, v9);
    if (v20)
    {
      return 0.0;
    }

    else
    {
      return v18;
    }
  }

  else
  {
    v21 = *&v13;
    (*(v10 + 8))(v12, v9);
  }

  return v21;
}

uint64_t sub_1003653B8@<X0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v62 = a3;
  v63 = a5;
  v57 = a2;
  v59 = a1;
  v61 = *(a4 - 8);
  __chkstk_darwin(a1);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v8;
  v69 = v9;
  v10 = v9;
  v51 = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v56 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v13 = &v43 - v12;
  v14 = sub_100752764();
  v68 = a4;
  v69 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v68 = OpaqueTypeMetadata2;
  v69 = v14;
  v16 = v14;
  v45 = v14;
  v70 = OpaqueTypeConformance2;
  v17 = OpaqueTypeConformance2;
  v46 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeMetadata2();
  v52 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v43 - v19;
  v68 = OpaqueTypeMetadata2;
  v69 = v16;
  v70 = v17;
  v47 = swift_getOpaqueTypeConformance2();
  v68 = v18;
  v69 = v47;
  v50 = &opaque type descriptor for <<opaque return type of View.intentDispatcher(from:)>>;
  v48 = swift_getOpaqueTypeMetadata2();
  v54 = *(v48 - 8);
  __chkstk_darwin(v48);
  v22 = &v43 - v21;
  sub_10000C724(&unk_100933350);
  v53 = sub_100751BD4();
  v60 = *(v53 - 8);
  __chkstk_darwin(v53);
  v44 = &v43 - v23;
  sub_10000C724(&unk_100933360);
  v24 = sub_100751BD4();
  v58 = *(v24 - 8);
  __chkstk_darwin(v24);
  v49 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v26);
  v55 = &v43 - v28;
  v59(v27);
  sub_100751F64();
  (*(v61 + 8))(v7, a4);
  swift_checkMetadataState();
  sub_100751F34();
  (*(v56 + 8))(v13, OpaqueTypeMetadata2);
  v29 = v47;
  sub_100751F44();
  (*(v52 + 8))(v20, v18);
  sub_1007442C4();
  sub_100752D34();
  v68 = v18;
  v69 = v29;
  v30 = swift_getOpaqueTypeConformance2();
  sub_1003668F8(&qword_100934088, &type metadata accessor for ArtworkLoader);
  v31 = v44;
  v32 = v48;
  sub_100752014();

  (*(v54 + 8))(v22, v32);
  swift_getKeyPath();
  v68 = *(v62 + OBJC_IVAR____TtC22SubscribePageExtension22SwiftUIViewHostingCell_flowPreview);
  v33 = sub_10002DDC8(&qword_10092AE10, &unk_100933350);
  v66 = v30;
  v67 = v33;

  v34 = v53;
  WitnessTable = swift_getWitnessTable();
  v36 = v49;
  sub_100751FA4();

  (*(v60 + 8))(v31, v34);
  v37 = sub_10002DDC8(&qword_100924AD8, &unk_100933360);
  v64 = WitnessTable;
  v65 = v37;
  swift_getWitnessTable();
  v38 = v58;
  v39 = *(v58 + 16);
  v40 = v55;
  v39(v55, v36, v24);
  v41 = *(v38 + 8);
  v41(v36, v24);
  v39(v63, v40, v24);
  return (v41)(v40, v24);
}

uint64_t sub_100365B30()
{
  v0 = sub_10074E984();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_10092E450);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  v10 = 0;
  v11 = 0xE000000000000000;
  v12._countAndFlagsBits = sub_1007539D4();
  sub_1007531B4(v12);

  v13._countAndFlagsBits = 95;
  v13._object = 0xE100000000000000;
  sub_1007531B4(v13);
  swift_getKeyPath();
  sub_100746914();

  sub_1007525C4();
  (*(v5 + 8))(v7, v4);
  sub_10074E994();

  sub_1007545F4();
  (*(v1 + 8))(v3, v0);
  return v10;
}

id sub_100365F1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwiftUIViewHostingCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SwiftUIViewHostingCell()
{
  result = qword_100934070;
  if (!qword_100934070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100366004()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10036610C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v5 = sub_100749BD4();
  v6 = __chkstk_darwin(v5);
  (*(v8 + 104))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *a4, v6);
  return sub_100749BE4();
}

uint64_t sub_1003661E8(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = sub_100749BD4();
  v5 = __chkstk_darwin(v4);
  (*(v7 + 104))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *a3, v5);
  return sub_100749BE4();
}

uint64_t sub_1003662B8@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = sub_100751BC4();
  v36 = *(v1 - 8);
  v37 = v1;
  __chkstk_darwin(v1);
  v32 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000C518(&unk_10093D6E0);
  __chkstk_darwin(v3 - 8);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v8 = sub_10074E984();
  v33 = *(v8 - 8);
  v34 = v8;
  __chkstk_darwin(v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&unk_10092E450);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  v18 = sub_10074F704();
  v30 = *(v18 - 8);
  v31 = v18;
  __chkstk_darwin(v18);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747B84();
  sub_100747C04();
  sub_1007525C4();
  v21 = *(v12 + 8);
  v21(v17, v11);
  sub_100747C04();
  sub_1007525C4();
  v21(v14, v11);
  sub_10074E994();

  v22 = v29;
  sub_100747BB4();
  sub_10074F5C4();
  sub_10074F5E4();
  v23 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
  [v23 scaledValueForValue:1.0];

  v24 = sub_100747B94();
  v25 = [v24 preferredContentSizeCategory];

  v26 = v32;
  sub_100751BB4();
  sub_1007499A4();

  (*(v36 + 8))(v26, v37);
  sub_10000C8CC(v22, &unk_10093D6E0);
  sub_10000C8CC(v7, &unk_10093D6E0);
  (*(v33 + 8))(v10, v34);
  return (*(v30 + 8))(v20, v31);
}

uint64_t sub_100366764()
{
  v0 = sub_1007499D4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  sub_1003662B8(&v10 - v5);
  (*(v1 + 32))(v3, v6, v0);
  v7 = (*(v1 + 88))(v3, v0);
  if (v7 == enum case for ComponentHeightFactory.ComponentHeight.constant(_:))
  {
    return 0;
  }

  if (v7 == enum case for ComponentHeightFactory.ComponentHeight.aspectRatio(_:) || v7 != enum case for ComponentHeightFactory.ComponentHeight.auto(_:))
  {
    (*(v1 + 8))(v3, v0);
    return 0;
  }

  return 1;
}

uint64_t sub_1003668F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10036695C@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_10000C518(&qword_100928550);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - v6;
  v8 = sub_100747814();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  sub_10024BBC0(v12);

  sub_1007477E4();
  (*(v9 + 8))(v12, v8);
  v16[1] = a1;
  sub_100743464();
  (*(v5 + 8))(v7, v4);
  sub_10074A254();
  v14 = sub_10074A274();
  return (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
}

uint64_t sub_100366B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v165 = a6;
  v160 = a3;
  ObjectType = swift_getObjectType();
  v10 = sub_10000C518(&unk_100929420);
  __chkstk_darwin(v10 - 8);
  v162 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v139 - v13;
  v15 = sub_10074ED34();
  __chkstk_darwin(v15 - 8);
  v143 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_1007455E4();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v145 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v144 = &v139 - v19;
  v20 = sub_10000C518(&qword_100934110);
  __chkstk_darwin(v20 - 8);
  v159 = &v139 - v21;
  v157 = sub_10074C3E4();
  v153 = *(v157 - 8);
  __chkstk_darwin(v157);
  v154 = &v139 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_10000C518(&unk_100925560);
  v156 = *(v158 - 8);
  __chkstk_darwin(v158);
  v155 = &v139 - v23;
  v24 = sub_10000C518(&unk_1009259B0);
  __chkstk_darwin(v24 - 8);
  v151 = &v139 - v25;
  v150 = sub_10074D734();
  v148 = *(v150 - 8);
  __chkstk_darwin(v150);
  v149 = &v139 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v27 - 8);
  v152 = &v139 - v28;
  v142 = sub_100754724();
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v140 = &v139 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10000C518(&qword_100933250);
  __chkstk_darwin(v30 - 8);
  v32 = &v139 - v31;
  v33 = sub_100749A94();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v139 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_100751374();
  v163 = *(v37 - 8);
  v164 = v37;
  __chkstk_darwin(v37);
  v166 = &v139 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = a1;
  v39 = sub_10074EF74();
  v161 = v14;
  if (v40)
  {
    v41 = HIBYTE(v40) & 0xF;
    if ((v40 & 0x2000000000000000) == 0)
    {
      v41 = v39 & 0xFFFFFFFFFFFFLL;
    }

    if (v41)
    {
      v139 = a4;
      sub_10000D198();
      v42 = sub_100753DD4();
      sub_10024DEEC(1, v42);

      v43 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_headingLabel];
      if (v43)
      {
        v44 = v43;
        v45 = sub_100753064();

        [v44 setText:v45];
      }

      else
      {
      }

      v47 = v166;
      goto LABEL_12;
    }
  }

  v46 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_headingLabel];
  v47 = v166;
  if (v46)
  {
    [v46 setHidden:1];
  }

LABEL_12:
  sub_10024CF88(v165, v47);
  sub_100749A44();
  sub_100368560(&unk_100929800, &type metadata accessor for ComponentLayoutOptions);
  v48 = sub_100754324();
  v49 = *(v34 + 8);
  v49(v36, v33);
  ObjectType = v7;
  if (v48)
  {
    (*(v163 + 56))(v32, 1, 1, v164);
    v50 = OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_separator;
    swift_beginAccess();
    sub_1002A39F8(v32, &v7[v50]);
    swift_endAccess();
    sub_10024D3D4();
    sub_10000C8CC(v32, &qword_100933250);
    sub_100749A54();
    LOBYTE(v50) = sub_100754324();
    v49(v36, v33);
    v51 = [v7 contentView];
    v52 = v51;
    if (v50)
    {
      [v51 layoutMargins];
      [v52 setLayoutMargins:?];
    }

    else
    {
      sub_100751304();
      sub_10000C888(&v169, *(&v170 + 1));
      v59 = v140;
      sub_100536120();
      sub_100750564();
      (*(v141 + 8))(v59, v142);
      [v52 layoutMargins];
      [v52 setLayoutMargins:?];

      sub_10000C620(&v169);
    }

    v58 = v160;
    v57 = ObjectType;
  }

  else
  {
    v54 = v163;
    v53 = v164;
    (*(v163 + 16))(v32, v47, v164);
    (*(v54 + 56))(v32, 0, 1, v53);
    v55 = OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_separator;
    swift_beginAccess();
    sub_1002A39F8(v32, &v7[v55]);
    swift_endAccess();
    sub_10024D3D4();
    sub_10000C8CC(v32, &qword_100933250);
    v56 = [v7 contentView];
    [v56 layoutMargins];
    [v56 setLayoutMargins:?];

    v57 = v7;
    v58 = v160;
  }

  v60 = *&v57[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_titleLabel];
  sub_10074EF34();
  if (v61)
  {
    v62 = sub_100753064();
  }

  else
  {
    v62 = 0;
  }

  [v60 setText:v62];

  v63 = sub_10074EF04();
  v64 = sub_10074EDF4();
  v65 = v148;
  v66 = v150;
  (*(v148 + 104))(v149, enum case for OfferButtonPresenterViewAlignment.left(_:), v150);
  (*(v65 + 56))(v151, 1, 1, v66);
  sub_100368560(&unk_100925550, &type metadata accessor for OfferButtonPresenterViewAlignment);
  v67 = v152;
  sub_10074A9C4();
  v68 = sub_10000C518(&unk_10092EEA0);
  (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
  v69 = v153;
  v70 = v157;
  (*(v153 + 104))(v154, enum case for OfferButtonSubtitlePosition.right(_:), v157);
  (*(v69 + 56))(v159, 1, 1, v70);
  sub_100368560(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition);
  v71 = v155;
  sub_10074A9C4();
  sub_10015DE40(v63, v64, 0, v67, v71, v58, 0, 0);

  (*(v156 + 8))(v71, v158);
  sub_10000C8CC(v67, &unk_100925540);
  if (sub_10074EF04())
  {
    v72 = v144;
    sub_100749ED4();
    v73 = v146;
    v74 = v145;
    v75 = v147;
    (*(v146 + 104))(v145, enum case for OfferLabelStyle.none(_:), v147);
    sub_100368560(&qword_100923598, &type metadata accessor for OfferLabelStyle);
    v76 = sub_100753014();
    v77 = *(v73 + 8);
    v77(v74, v75);
    v77(v72, v75);
    if ((v76 & 1) == 0)
    {

      sub_100749F14();
      sub_10000C518(&unk_100925780);
      sub_100752764();
      sub_100752D34();
      sub_100744AC4();
      sub_100752D34();
      sub_100744984();

      v80 = sub_100748304();
      swift_allocObject();
      v81 = sub_1007482E4();
      *(&v170 + 1) = v80;
      *&v169 = v81;
      v82 = OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_offerLabelPresenter;
      v79 = ObjectType;
      swift_beginAccess();

      sub_1001183AC(&v169, &v79[v82]);
      swift_endAccess();
      [*&v79[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_offerLabel] frame];
      v172.origin.x = 0.0;
      v172.origin.y = 0.0;
      v172.size.width = 0.0;
      v172.size.height = 0.0;
      if (CGRectEqualToRect(v171, v172))
      {
        v83 = objc_opt_self();
        v84 = [v83 areAnimationsEnabled];
        [v83 setAnimationsEnabled:0];
        sub_100368560(&qword_100934118, type metadata accessor for MediumLockupCollectionViewCell);
        swift_unknownObjectRetain();
        sub_1007482F4();
        [v79 layoutIfNeeded];
        [v83 setAnimationsEnabled:v84];
      }

      else
      {
        sub_100368560(&qword_100934118, type metadata accessor for MediumLockupCollectionViewCell);
        swift_unknownObjectRetain();
        sub_1007482F4();
      }

      goto LABEL_29;
    }
  }

  v169 = 0u;
  v170 = 0u;
  v78 = OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_offerLabelPresenter;
  v79 = ObjectType;
  swift_beginAccess();
  sub_1001183AC(&v169, &v79[v78]);
  swift_endAccess();
  sub_100368174(0, 0);
LABEL_29:
  v85 = v165;
  v86 = OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_headingLabel;
  v87 = *&v79[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_headingLabel];
  if (v87 && ([v87 isHidden] & 1) == 0 && (v88 = *&v79[v86]) != 0)
  {
    v89 = [v88 hasContent];
  }

  else
  {
    v89 = 0;
  }

  v90 = OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_offerLabelPresenter;
  swift_beginAccess();
  sub_100032C04(&v79[v90], &v169);
  v91 = *(&v170 + 1);
  sub_10000C8CC(&v169, &unk_100923520);
  v92 = [v85 traitCollection];
  v93 = sub_1007537D4();

  if (v93)
  {
    v94 = [v85 traitCollection];
    v95 = sub_100753804();

    sub_10074EE14();
    if (!v96)
    {
      v98 = v95 ^ 1;
      goto LABEL_51;
    }

    if ((v95 & 1) == 0)
    {
      if (v91)
      {
        v97 = 1;
      }

      else
      {
        v97 = v89;
      }

      v98 = 1;
      if ((v97 & 1) == 0)
      {
LABEL_41:
        sub_10024E19C();
        v99 = *&v79[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_tertiaryTitleLabel];
        if (v99)
        {
          v100 = v99;
          v101 = sub_100753064();

          [v100 setText:v101];
        }

        else
        {
        }

        goto LABEL_55;
      }

      goto LABEL_48;
    }
  }

  else
  {
    sub_10074EE14();
    if (!v102)
    {
      v98 = 0;
      goto LABEL_51;
    }
  }

  v98 = 0;
  if (v91)
  {
    v103 = v89;
  }

  else
  {
    v103 = 0;
  }

  if ((v103 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_48:

LABEL_51:
  v104 = OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_tertiaryTitleLabel;
  v105 = *&v79[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_tertiaryTitleLabel];
  if (v105)
  {
    [v105 setHidden:1];
    v106 = *&v79[v104];
    if (v106)
    {
      [v106 setText:0];
    }
  }

LABEL_55:
  v107 = *&v79[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_subtitleLabel];
  sub_10074EFB4();
  if (v108)
  {
    v109 = sub_100753064();
  }

  else
  {
    v109 = 0;
  }

  [v107 setText:v109];

  v110 = OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_tertiaryTitleLabel;
  v111 = *&v79[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_tertiaryTitleLabel];
  if (!v111 || ([v111 isHidden] & 1) != 0 || (v112 = *&v79[v110]) == 0)
  {
    if (v89)
    {
      if (v91)
      {
        goto LABEL_67;
      }
    }

    else if (!v91)
    {
      v114 = 0;
      goto LABEL_71;
    }

    goto LABEL_69;
  }

  v113 = [v112 hasContent];
  if ((v89 & 1) == 0)
  {
    if (!v91)
    {
      v114 = 0;
      if (v113)
      {
        goto LABEL_92;
      }

LABEL_71:
      v115 = 0;
      goto LABEL_72;
    }

    if (v113)
    {
      v115 = 1;
      v114 = 1;
      goto LABEL_72;
    }

LABEL_69:
    v114 = 1;
    goto LABEL_71;
  }

  if (!v91)
  {
    v114 = 1;
    v115 = 1;
    if (v113)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  if ((v113 & 1) == 0)
  {
LABEL_67:
    v114 = 2;
    goto LABEL_71;
  }

  v114 = 2;
LABEL_92:
  v115 = 1;
LABEL_72:
  v116 = [v107 hasContent];
  v117 = v161;
  if (!v116)
  {
LABEL_75:
    v119 = 1;
    goto LABEL_81;
  }

  v118 = v114 + v115;
  if (v98)
  {
    if (v118)
    {
      goto LABEL_75;
    }

    v119 = 0;
  }

  else
  {
    v119 = v118 > 1;
  }

LABEL_81:
  [v107 setHidden:v119];
  v120 = sub_10074EEA4();
  if (!v120)
  {
    sub_10000D198();
    v120 = sub_100753DF4();
  }

  v121 = v120;
  [v107 setTextColor:v120];

  v122 = &stru_1008F2000;
  v123 = [v107 layer];
  sub_10074EEB4();
  v124 = sub_1007497F4();
  v125 = *(v124 - 8);
  v126 = *(v125 + 48);
  if (v126(v117, 1, v124) == 1)
  {
    sub_10000C8CC(v117, &unk_100929420);
LABEL_87:
    v133 = 0;
    goto LABEL_88;
  }

  sub_1007497E4();
  (*(v125 + 8))(v117, v124);
  v127 = *(&v170 + 1);
  if (!*(&v170 + 1))
  {
    goto LABEL_87;
  }

  v128 = sub_10000C888(&v169, *(&v170 + 1));
  v129 = *(v127 - 8);
  v130 = __chkstk_darwin(v128);
  v132 = &v139 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v129 + 16))(v132, v130);
  v133 = sub_100754734();
  (*(v129 + 8))(v132, v127);
  v122 = &stru_1008F2000;
  sub_10000C620(&v169);
LABEL_88:
  [v123 setCompositingFilter:v133];

  swift_unknownObjectRelease();
  v134 = [v79 contentView];
  v135 = [v134 v122[67].name];

  v136 = v162;
  sub_10074EEB4();
  v137 = v126(v136, 1, v124) == 1;
  sub_10000C8CC(v136, &unk_100929420);
  [v135 setAllowsGroupBlending:v137];

  [v79 setNeedsLayout];
  return (*(v163 + 8))(v166, v164);
}

id sub_100368174(uint64_t a1, NSString a2)
{
  v5 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_offerLabel];
  result = [v5 text];
  if (!result)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  v7 = result;
  v8 = sub_100753094();
  v10 = v9;

  if (!a2)
  {

    goto LABEL_12;
  }

  if (v8 != a1 || v10 != a2)
  {
    v12 = sub_100754754();

    if (v12)
    {
      return result;
    }

LABEL_10:
    a2 = sub_100753064();
LABEL_12:
    [v5 setText:a2];

    v13 = [v5 text];
    if (v13)
    {
      v14 = v13;
      sub_100753094();
    }

    v15 = sub_100753114();

    [v5 setHidden:v15 & 1];

    return [v2 setNeedsLayout];
  }
}

uint64_t sub_100368340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_100751374();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_10024CF88(a5, v9);
  sub_100751334();
  (*(v7 + 8))(v9, v6);
  PageTraitEnvironment.pageColumnWidth.getter();
  sub_10024E818(a5);
  v10 = objc_opt_self();
  PageTraitEnvironment.pageColumnWidth.getter();
  v11 = [v10 absoluteDimension:?];
  v12 = sub_100749A04();

  return v12;
}

uint64_t sub_100368560(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1003685A8(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = a2;
  v4 = sub_100754724();
  v20 = *(v4 - 8);
  v21 = v4;
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100749A94();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100751374();
  v11 = *(v23 - 8);
  __chkstk_darwin(v23);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_10024CF88(a3, v13);
  sub_100749A44();
  sub_100368560(&unk_100929800, &type metadata accessor for ComponentLayoutOptions);
  v14 = sub_100754324();
  (*(v8 + 8))(v10, v7);
  v15 = sub_10024E818(a3);
  if (v14)
  {
    v16 = v15;
    sub_100751304();
    sub_10000C888(v24, v24[3]);
    sub_100536120();
    sub_100750564();
    (*(v20 + 8))(v6, v21);
    (*(v11 + 8))(v13, v23);
    sub_10000C620(v24);
  }

  else
  {
    sub_100753BD4();
    v16 = v17;
    (*(v11 + 8))(v13, v23);
  }

  return v16;
}

void *sub_1003688EC(uint64_t a1, uint64_t a2)
{
  v14 = a2;
  v3 = sub_10074E984();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&unk_10092E450);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - v9;
  v15 = _swiftEmptyArrayStorage;
  swift_getKeyPath();
  sub_100746914();

  swift_getKeyPath();
  sub_1007525B4();

  (*(v8 + 8))(v10, v7);
  if ((*(v4 + 88))(v6, v3) == enum case for Shelf.ContentType.productBadge(_:))
  {
    v11 = sub_100368B24(a1, v14);
    sub_1004A0098(v11);
  }

  else
  {
    v12 = sub_10055BE28(a1);
    sub_1004A0098(v12);
    (*(v4 + 8))(v6, v3);
  }

  return v15;
}

unint64_t sub_100368B24(uint64_t a1, uint64_t a2)
{
  v129 = a2;
  v3 = sub_100747524();
  v127 = *(v3 - 8);
  v128 = v3;
  __chkstk_darwin(v3);
  v126 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_10074F704();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v123 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_10074E984();
  v119 = *(v121 - 8);
  __chkstk_darwin(v121);
  v108 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_10000C518(&qword_10092C380);
  __chkstk_darwin(v118);
  v120 = &v107 - v7;
  v8 = sub_10000C518(&unk_100933370);
  __chkstk_darwin(v8 - 8);
  v111 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v132 = &v107 - v11;
  __chkstk_darwin(v12);
  v133 = &v107 - v13;
  v14 = sub_10074E5E4();
  v131 = *(v14 - 8);
  __chkstk_darwin(v14);
  v107 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_10000C518(&qword_100934210);
  __chkstk_darwin(v114);
  v17 = &v107 - v16;
  v18 = sub_10000C518(&qword_100934218);
  __chkstk_darwin(v18 - 8);
  v110 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v107 - v21;
  __chkstk_darwin(v23);
  v130 = &v107 - v24;
  v25 = sub_10000C518(&qword_100923228);
  __chkstk_darwin(v25);
  v117 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v107 - v28;
  v30 = sub_10000C518(&unk_10093D6E0);
  __chkstk_darwin(v30 - 8);
  v116 = &v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v107 - v33;
  v139 = _swiftEmptyArrayStorage;
  swift_getKeyPath();
  v134 = a1;
  sub_100746914();

  v115 = v25;
  v35 = *(v25 + 48);
  sub_100066578(v29, v34, &unk_10093D6E0);
  v36 = sub_10000C518(&unk_10092E450);
  v37 = *(v36 - 8);
  v38 = *(v37 + 48);
  v113 = v37 + 48;
  v112 = v38;
  v39 = v38(v34, 1, v36);
  v109 = v37;
  if (v39 == 1)
  {
    sub_10000C8CC(&v29[v35], &unk_10093D6E0);
    sub_10000C8CC(v34, &unk_10093D6E0);
    v136 = 0u;
    v137 = 0u;
    v138 = 0;
    v40 = v130;
LABEL_10:
    sub_10000C8CC(&v136, &unk_1009297F0);
    goto LABEL_11;
  }

  swift_getKeyPath();
  sub_1007525B4();

  v41 = v135;
  (*(v37 + 8))(v34, v36);
  if (*(v41 + 16))
  {
    sub_10000C824(v41 + 32, &v136);
  }

  else
  {

    v138 = 0;
    v136 = 0u;
    v137 = 0u;
  }

  v40 = v130;
  sub_10000C8CC(&v29[v35], &unk_10093D6E0);
  if (!*(&v137 + 1))
  {
    goto LABEL_10;
  }

  sub_10000C518(&qword_1009242A0);
  sub_1007461A4();
  if (swift_dynamicCast())
  {
    v42 = sub_100746144();

    if (v42)
    {
      v43 = v36;

      sub_10074E604();
      v122 = v42;

      v44 = 0;
      goto LABEL_12;
    }
  }

LABEL_11:
  v43 = v36;
  v122 = 0;
  v44 = 1;
LABEL_12:
  v45 = v131;
  v46 = *(v131 + 56);
  v46(v40, v44, 1, v14);
  (*(v45 + 104))(v22, enum case for Uber.Style.inline(_:), v14);
  v46(v22, 0, 1, v14);
  v47 = *(v114 + 48);
  sub_100016B4C(v40, v17, &qword_100934218);
  sub_100016B4C(v22, &v17[v47], &qword_100934218);
  v48 = v40;
  v49 = *(v45 + 48);
  if (v49(v17, 1, v14) == 1)
  {
    sub_10000C8CC(v22, &qword_100934218);
    sub_10000C8CC(v48, &qword_100934218);
    v50 = v49(&v17[v47], 1, v14);
    v51 = v119;
    v52 = v116;
    v53 = v43;
    if (v50 == 1)
    {
      sub_10000C8CC(v17, &qword_100934218);
      LODWORD(v114) = 1;
LABEL_18:
      v55 = v120;
      v57 = v132;
      v56 = v133;
      goto LABEL_20;
    }

LABEL_17:
    sub_10000C8CC(v17, &qword_100934210);
    LODWORD(v114) = 0;
    goto LABEL_18;
  }

  v54 = v110;
  sub_100016B4C(v17, v110, &qword_100934218);
  v53 = v43;
  if (v49(&v17[v47], 1, v14) == 1)
  {
    sub_10000C8CC(v22, &qword_100934218);
    sub_10000C8CC(v130, &qword_100934218);
    (*(v131 + 8))(v54, v14);
    v51 = v119;
    v52 = v116;
    goto LABEL_17;
  }

  v58 = v131;
  v59 = v107;
  (*(v131 + 32))(v107, &v17[v47], v14);
  sub_10036B3EC(&qword_100934220, &type metadata accessor for Uber.Style);
  LODWORD(v114) = sub_100753014();
  v60 = *(v58 + 8);
  v60(v59, v14);
  sub_10000C8CC(v22, &qword_100934218);
  sub_10000C8CC(v130, &qword_100934218);
  v60(v54, v14);
  sub_10000C8CC(v17, &qword_100934218);
  v56 = v133;
  v55 = v120;
  v51 = v119;
  v57 = v132;
  v52 = v116;
LABEL_20:
  swift_getKeyPath();
  v61 = v117;
  sub_100746914();

  sub_100066578(v61 + *(v115 + 48), v52, &unk_10093D6E0);
  if (v112(v52, 1, v53) == 1)
  {
    sub_10000C8CC(v61, &unk_10093D6E0);
    sub_10000C8CC(v52, &unk_10093D6E0);
    v62 = *(v51 + 56);
    v63 = v121;
    v62(v56, 1, 1, v121);
  }

  else
  {
    swift_getKeyPath();
    sub_1007525B4();

    (*(v109 + 8))(v52, v53);
    v62 = *(v51 + 56);
    v63 = v121;
    v62(v56, 0, 1, v121);
    sub_10000C8CC(v61, &unk_10093D6E0);
  }

  (*(v51 + 104))(v57, enum case for Shelf.ContentType.productMediaItem(_:), v63);
  v62(v57, 0, 1, v63);
  v64 = *(v118 + 48);
  sub_100016B4C(v56, v55, &unk_100933370);
  sub_100016B4C(v57, v55 + v64, &unk_100933370);
  v65 = v57;
  v66 = *(v51 + 48);
  if (v66(v55, 1, v63) == 1)
  {
    sub_10000C8CC(v65, &unk_100933370);
    sub_10000C8CC(v56, &unk_100933370);
    v67 = v66(v55 + v64, 1, v63);
    v68 = v134;
    if (v67 == 1)
    {
      sub_10000C8CC(v55, &unk_100933370);
      v69 = 1;
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v70 = v111;
  sub_100016B4C(v55, v111, &unk_100933370);
  v71 = v66(v55 + v64, 1, v63);
  v68 = v134;
  if (v71 == 1)
  {
    sub_10000C8CC(v132, &unk_100933370);
    sub_10000C8CC(v133, &unk_100933370);
    (*(v51 + 8))(v70, v63);
LABEL_28:
    sub_10000C8CC(v55, &qword_10092C380);
    v69 = 0;
    goto LABEL_30;
  }

  v72 = v108;
  (*(v51 + 32))(v108, v55 + v64, v63);
  sub_10036B3EC(&qword_1009350D0, &type metadata accessor for Shelf.ContentType);
  v69 = sub_100753014();
  v73 = *(v51 + 8);
  v73(v72, v63);
  sub_10000C8CC(v132, &unk_100933370);
  sub_10000C8CC(v133, &unk_100933370);
  v73(v70, v63);
  sub_10000C8CC(v55, &unk_100933370);
LABEL_30:
  v74 = objc_opt_self();
  v75 = [v74 fractionalWidthDimension:1.0];
  swift_getKeyPath();
  sub_100746914();

  v76 = v136;
  sub_100747554();
  v78 = v77;

  v79 = [v74 absoluteDimension:v78];
  v80 = [objc_opt_self() sizeWithWidthDimension:v75 heightDimension:v79];

  if ((v114 & 1) == 0)
  {
    LODWORD(v133) = v69;
    swift_getKeyPath();
    v81 = v123;
    sub_100746914();

    sub_10074F5B4();
    v83 = v82;
    (*(v124 + 8))(v81, v125);
    v84 = [objc_opt_self() layoutAnchorWithEdges:1 absoluteOffset:{0.0, v83 * -0.5}];
    type metadata accessor for SeparatorSupplementaryView();
    v86 = v127;
    v85 = v128;
    v87 = v126;
    (*(v127 + 104))(v126, enum case for ComponentSeparator.Position.top(_:), v128);
    *&v136 = 0;
    *(&v136 + 1) = 0xE000000000000000;
    v88 = v80;
    sub_1007545F4();
    v140._countAndFlagsBits = 95;
    v140._object = 0xE100000000000000;
    sub_1007531B4(v140);
    v141._countAndFlagsBits = sub_1007539F4();
    sub_1007531B4(v141);

    (*(v86 + 8))(v87, v85);
    v89 = v84;
    v90 = sub_100753064();

    v91 = [objc_opt_self() supplementaryItemWithLayoutSize:v88 elementKind:v90 containerAnchor:v89];

    v92 = v91;
    sub_100753284();
    if (*((v139 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v139 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();

    v68 = v134;
    LOBYTE(v69) = v133;
  }

  if ((v69 & 1) == 0)
  {
    swift_getKeyPath();
    v93 = v123;
    sub_100746914();

    sub_10074F5B4();
    v95 = v94;
    (*(v124 + 8))(v93, v125);
    v96 = [objc_opt_self() layoutAnchorWithEdges:4 absoluteOffset:{0.0, v95 * 0.5}];
    type metadata accessor for SeparatorSupplementaryView();
    v98 = v126;
    v97 = v127;
    v99 = v128;
    (*(v127 + 104))(v126, enum case for ComponentSeparator.Position.bottom(_:), v128);
    *&v136 = 0;
    *(&v136 + 1) = 0xE000000000000000;
    v100 = v80;
    sub_1007545F4();
    v142._countAndFlagsBits = 95;
    v142._object = 0xE100000000000000;
    sub_1007531B4(v142);
    v143._countAndFlagsBits = sub_1007539F4();
    sub_1007531B4(v143);

    (*(v97 + 8))(v98, v99);
    v101 = v96;
    v102 = sub_100753064();

    v103 = [objc_opt_self() supplementaryItemWithLayoutSize:v100 elementKind:v102 containerAnchor:v101];

    v104 = v103;
    sub_100753284();
    if (*((v139 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v139 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();
  }

  v105 = sub_10055BE28(v68);
  sub_1004A0098(v105);

  return v139;
}

void sub_100369F20(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v33 = a4;
  v36 = a1;
  v37 = a2;
  v35 = a5;
  v6 = sub_1007469A4();
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  __chkstk_darwin(v6);
  v29 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074E984();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&unk_10092E450);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - v14;
  swift_getKeyPath();
  sub_100746914();

  swift_getKeyPath();
  sub_1007525B4();

  (*(v13 + 8))(v15, v12);
  v16 = *(v9 + 88);
  v32 = v8;
  if (v16(v11, v8) == enum case for Shelf.ContentType.productBadge(_:))
  {
    sub_10036A308(v36, v37, a3, v33, v35);
  }

  else
  {
    v17 = a3;
    type metadata accessor for SeparatorSupplementaryView();
    if (sub_1007539E4())
    {

      v34 = sub_1007539D4();
      v28 = v18;
      v19 = swift_allocObject();
      swift_weakInit();
      v20 = v29;
      v21 = v30;
      v22 = v31;
      (*(v30 + 16))(v29, v17, v31);
      v23 = (*(v21 + 80) + 24) & ~*(v21 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = v19;
      (*(v21 + 32))(v24 + v23, v20, v22);
      *(v24 + ((v7 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v33;
      v25 = sub_10000C518(&qword_100934200);
      v26 = v35;
      v35[3] = v25;
      v26[4] = sub_10036B194();
      sub_10000D134(v26);

      sub_10074D744();
    }

    else
    {
      v27 = v35;
      v35[4] = 0;
      *v27 = 0u;
      *(v27 + 1) = 0u;
    }

    (*(v9 + 8))(v11, v32);
  }
}

double sub_10036A308@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v80 = a3;
  v81 = a4;
  v78 = a5;
  v7 = sub_1007469A4();
  v68 = *(v7 - 8);
  v69 = v7;
  __chkstk_darwin(v7);
  v66 = v8;
  v67 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_100747524();
  v73 = *(v83 - 8);
  __chkstk_darwin(v83);
  v70 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_10000C518(&qword_1009341E8);
  __chkstk_darwin(v72);
  v11 = v64 - v10;
  v12 = sub_10000C518(&qword_1009341F0);
  __chkstk_darwin(v12 - 8);
  v14 = v64 - v13;
  v15 = sub_100747564();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000C518(&qword_1009341F8);
  v74 = *(v19 - 8);
  v20 = *(v74 + 64);
  __chkstk_darwin(v19 - 8);
  v75 = v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v71 = v64 - v22;
  __chkstk_darwin(v23);
  v25 = v64 - v24;
  __chkstk_darwin(v26);
  v28 = v64 - v27;
  v29 = type metadata accessor for SeparatorSupplementaryView();
  v82 = a1;
  v79 = a2;
  v77 = v29;
  sub_10050F35C(a1, a2, v28);
  v30 = *(v76 + 56);
  sub_10055CAD8(v14);
  v31 = *(v16 + 48);
  v76 = v15;
  if (v31(v14, 1, v15) == 1)
  {
    sub_10000C8CC(v14, &qword_1009341F0);
LABEL_10:

    sub_1007539D4();
    v38 = v75;
    sub_100016B4C(v28, v75, &qword_1009341F8);
    v39 = (*(v74 + 80) + 16) & ~*(v74 + 80);
    v40 = swift_allocObject();
    sub_100066578(v38, v40 + v39, &qword_1009341F8);
    v41 = sub_10000C518(&qword_100934200);
    v42 = v28;
    v43 = v78;
    v78[3] = v41;
    v43[4] = sub_10036B194();
    sub_10000D134(v43);
    sub_10074D744();
    v44 = v42;
    goto LABEL_11;
  }

  v64[1] = v30;
  (*(v16 + 32))(v18, v14, v76);
  v65 = v18;
  sub_100747544();
  v32 = v73;
  v33 = v83;
  (*(v73 + 56))(v25, 0, 1, v83);
  v34 = *(v72 + 48);
  sub_100016B4C(v25, v11, &qword_1009341F8);
  sub_100016B4C(v28, &v11[v34], &qword_1009341F8);
  v35 = *(v32 + 48);
  if (v35(v11, 1, v33) != 1)
  {
    v37 = v71;
    sub_100016B4C(v11, v71, &qword_1009341F8);
    if (v35(&v11[v34], 1, v83) != 1)
    {
      v46 = &v11[v34];
      v47 = v70;
      v48 = v37;
      v49 = v83;
      (*(v32 + 32))(v70, v46, v83);
      sub_10036B3EC(&qword_100934208, &type metadata accessor for ComponentSeparator.Position);
      LODWORD(v72) = sub_100753014();
      v50 = *(v32 + 8);
      v50(v47, v49);
      sub_10000C8CC(v25, &qword_1009341F8);
      v50(v48, v49);
      sub_10000C8CC(v11, &qword_1009341F8);
      v36 = v65;
      if (v72)
      {
        goto LABEL_14;
      }

LABEL_9:
      (*(v16 + 8))(v36, v76);
      goto LABEL_10;
    }

    sub_10000C8CC(v25, &qword_1009341F8);
    (*(v32 + 8))(v37, v83);
LABEL_8:
    sub_10000C8CC(v11, &qword_1009341E8);
    v36 = v65;
    goto LABEL_9;
  }

  sub_10000C8CC(v25, &qword_1009341F8);
  if (v35(&v11[v34], 1, v83) != 1)
  {
    goto LABEL_8;
  }

  sub_10000C8CC(v11, &qword_1009341F8);
  v36 = v65;
LABEL_14:
  if ((sub_1007539E4() & 1) == 0)
  {
    (*(v16 + 8))(v36, v76);
    sub_10000C8CC(v28, &qword_1009341F8);
    result = 0.0;
    v63 = v78;
    *v78 = 0u;
    *(v63 + 1) = 0u;
    v63[4] = 0;
    return result;
  }

  v51 = sub_1007539D4();
  v83 = v28;
  v79 = v51;
  v75 = v52;
  v53 = swift_allocObject();
  swift_weakInit();
  v55 = v67;
  v54 = v68;
  v56 = v69;
  (*(v68 + 16))(v67, v80, v69);
  v57 = v16;
  v58 = (*(v54 + 80) + 24) & ~*(v54 + 80);
  v59 = (v66 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  *(v60 + 16) = v53;
  (*(v54 + 32))(v60 + v58, v55, v56);
  *(v60 + v59) = v81;
  v61 = sub_10000C518(&qword_100934200);
  v62 = v78;
  v78[3] = v61;
  v62[4] = sub_10036B194();
  sub_10000D134(v62);

  sub_10074D744();
  (*(v57 + 8))(v65, v76);
  v44 = v83;
LABEL_11:
  sub_10000C8CC(v44, &qword_1009341F8);
  return result;
}

uint64_t sub_10036AC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a1;
  v28 = a5;
  v5 = sub_100747564();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = sub_10000C518(&qword_1009341F8);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  v15 = sub_100747524();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v26 - v20;
  sub_100016B4C(v28, v14, &qword_1009341F8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_10000C8CC(v14, &qword_1009341F8);
  }

  (*(v16 + 32))(v21, v14, v15);
  (*(v16 + 16))(v18, v21, v15);
  sub_100747534();
  (*(v6 + 16))(v8, v11, v5);
  v23 = OBJC_IVAR____TtC22SubscribePageExtension26SeparatorSupplementaryView_separator;
  v24 = v27;
  swift_beginAccess();
  (*(v6 + 24))(v24 + v23, v8, v5);
  swift_endAccess();
  sub_10050F87C();
  v25 = *(v6 + 8);
  v25(v8, v5);
  v25(v11, v5);
  return (*(v16 + 8))(v21, v15);
}

uint64_t sub_10036AF6C()
{
  sub_10000C620(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_10036AFD8()
{
  v1 = *(sub_10000C518(&qword_1009341F8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_100747524();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10036B0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_10000C518(&qword_1009341F8) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_10036AC40(a1, a2, a3, a4, v10);
}

unint64_t sub_10036B194()
{
  result = qword_10093D6D0;
  if (!qword_10093D6D0)
  {
    sub_10000C724(&qword_100934200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093D6D0);
  }

  return result;
}

uint64_t sub_10036B1F8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10036B240()
{
  v1 = sub_1007469A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10036B318(uint64_t a1)
{
  sub_1007469A4();

  return sub_10055CCB0(a1);
}

uint64_t sub_10036B3EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10036B440()
{
  sub_10000D198();
  result = sub_100753DD4();
  qword_10097FC60 = result;
  return result;
}

uint64_t sub_10036B474()
{
  sub_10000D198();
  result = sub_100753DF4();
  qword_10097FC68 = result;
  return result;
}

id sub_10036B4A8()
{
  result = [objc_opt_self() systemGray5Color];
  qword_10097FC70 = result;
  return result;
}

uint64_t sub_10036B4E4()
{
  sub_10000D198();
  result = sub_100753DF4();
  qword_10097FC78 = result;
  return result;
}

void sub_10036B548()
{
  if (qword_100920A00 != -1)
  {
    swift_once();
  }

  v0 = qword_10097FC80;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithTextStyle:v2 scale:2];

  qword_10097FC90 = v3;
}

uint64_t sub_10036B5E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25[0] = a2;
  v4 = sub_10074F704();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100748514();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100748534();
  sub_10036BB14();
  result = sub_1007468B4();
  if (v25[1])
  {
    sub_100748524();
    v13 = (*(v9 + 88))(v11, v8);
    if (v13 == enum case for ProductReviewAction.ReviewAction.tapToRate(_:))
    {
      (*(v9 + 96))(v11, v8);
      v14 = *v11;
      type metadata accessor for ProductTapToRateView();
      v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      sub_1002A46B0(v15);
      v16 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension44GenericProductReviewActionCollectionViewCell_productTapToRateView];
      if (v16)
      {
        swift_getKeyPath();
        v17 = v16;
        sub_100746914();

        sub_10074F594();
        v19 = v18;
        (*(v5 + 8))(v7, v4);
        sub_10031FF0C(v14, v19 == 1.0, v25[0]);
      }
    }

    else
    {
      if (v13 != enum case for ProductReviewAction.ReviewAction.writeAReview(_:))
      {
        (*(v9 + 8))(v11, v8);
        goto LABEL_10;
      }

      (*(v9 + 96))(v11, v8);
      type metadata accessor for ProductReviewActionsView();
      v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      sub_1002A46BC([v20 init]);
      v21 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension44GenericProductReviewActionCollectionViewCell_productReviewActionsView];
      if (v21)
      {
        v22 = v21;
        v23 = sub_100748554();
        v24 = sub_100748544();
        sub_10007DC04();
        sub_1004425F4(v23, v24);

        swift_unknownObjectRelease();
      }
    }

LABEL_10:
    [v3 setNeedsLayout];
  }

  return result;
}

uint64_t sub_10036B968@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension44GenericProductReviewActionCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100020514(v1 + v3, a1);
}

uint64_t sub_10036B9C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension44GenericProductReviewActionCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000204A4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_10036BA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

unint64_t sub_10036BB14()
{
  result = qword_100934228;
  if (!qword_100934228)
  {
    sub_100748534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100934228);
  }

  return result;
}

uint64_t sub_10036BB70()
{
  sub_10074C2F4();
  v0 = sub_10036BD28();
  v1 = sub_1007534E4();
  v2 = _swiftEmptyArrayStorage;
  if (!v1)
  {
LABEL_6:
    sub_10064E930(v2);
  }

  v3 = v1;
  v19 = _swiftEmptyArrayStorage;
  sub_10001E574(0, v1 & ~(v1 >> 63), 0);
  v2 = _swiftEmptyArrayStorage;
  result = sub_1007534C4();
  if ((v3 & 0x8000000000000000) == 0)
  {
    do
    {
      v5 = sub_100753514();

      v5(v18, 0);
      v6 = sub_1007467D4();
      v16 = v7;
      v17 = v6;
      v8 = sub_1007467B4();
      v15 = v9;
      v10 = sub_100746794();

      v19 = v2;
      v11 = v0;
      v13 = *(v2 + 2);
      v12 = *(v2 + 3);
      if (v13 >= v12 >> 1)
      {
        sub_10001E574((v12 > 1), v13 + 1, 1);
        v2 = v19;
      }

      *(v2 + 2) = v13 + 1;
      v14 = &v2[40 * v13];
      *(v14 + 4) = v17;
      *(v14 + 5) = v16;
      *(v14 + 6) = v8;
      *(v14 + 7) = v15;
      v14[64] = v10 & 1;
      sub_100753504();
      --v3;
      v0 = v11;
    }

    while (v3);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

unint64_t sub_10036BD28()
{
  result = qword_10093EC30;
  if (!qword_10093EC30)
  {
    sub_10074C2F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EC30);
  }

  return result;
}

uint64_t sub_10036BD80()
{
  v1 = sub_100741494();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&unk_1009231A0);
  v5 = swift_allocObject();
  v28 = xmmword_1007A5CF0;
  *(v5 + 16) = xmmword_1007A5CF0;
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  type metadata accessor for ActionDebugSetting();
  v7 = swift_allocObject();
  *(v7 + 56) = 0xD000000000000016;
  *(v7 + 64) = 0x8000000100778990;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = sub_10036C744;
  *(v7 + 112) = v6;
  v8 = v0;

  sub_100741484();
  v9 = sub_100741464();
  v11 = v10;
  v12 = *(v2 + 8);
  v29 = v2 + 8;
  v30 = v12;
  v12(v4, v1);
  v31 = v9;
  v32 = v11;
  sub_1007544E4();

  *(v5 + 32) = v7;
  v13 = swift_allocObject();
  *(v13 + 16) = v28;
  v14 = v13;
  v27 = v13;
  type metadata accessor for PromptActionDebugSetting();
  swift_allocObject();
  *(v14 + 32) = sub_10058C9D0(0xD000000000000018, 0x80000001007789B0, 0, 0, sub_10036C0D4, 0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1007A7210;
  type metadata accessor for DebugSection();
  v16 = swift_allocObject();
  sub_100741484();
  v17 = sub_100741464();
  v19 = v18;
  v20 = v30;
  v30(v4, v1);
  v16[2] = v17;
  v16[3] = v19;
  v16[4] = 0x42206F54206B7341;
  v16[5] = 0xEA00000000007975;
  v16[6] = v5;
  *(v15 + 32) = v16;
  v21 = swift_allocObject();
  sub_100741484();
  v22 = sub_100741464();
  v24 = v23;
  v20(v4, v1);
  v21[2] = v22;
  v21[3] = v24;
  v21[4] = 0xD000000000000015;
  v21[5] = 0x80000001007789D0;
  v21[6] = v27;
  *(v15 + 40) = v21;
  return v15;
}

void sub_10036C0D4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v4 = HIBYTE(a3) & 0xF;
    v5 = a2 & 0xFFFFFFFFFFFFLL;
    if ((a3 & 0x2000000000000000) != 0 ? HIBYTE(a3) & 0xF : v5)
    {
      if ((a3 & 0x1000000000000000) != 0)
      {

        v9 = sub_1003B76E0(a2, a3, 10);
        v38 = v37;

        if (v38)
        {
          return;
        }

        goto LABEL_64;
      }

      if ((a3 & 0x2000000000000000) != 0)
      {
        v39 = a2;
        v40 = a3 & 0xFFFFFFFFFFFFFFLL;
        if (a2 == 43)
        {
          if (v4)
          {
            if (--v4)
            {
              v9 = 0;
              v19 = &v39 + 1;
              while (1)
              {
                v20 = *v19 - 48;
                if (v20 > 9)
                {
                  break;
                }

                v21 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  break;
                }

                v9 = v21 + v20;
                if (__OFADD__(v21, v20))
                {
                  break;
                }

                ++v19;
                if (!--v4)
                {
                  goto LABEL_63;
                }
              }
            }

            goto LABEL_62;
          }

LABEL_75:
          __break(1u);
          return;
        }

        if (a2 != 45)
        {
          if (v4)
          {
            v9 = 0;
            v24 = &v39;
            while (1)
            {
              v25 = *v24 - 48;
              if (v25 > 9)
              {
                break;
              }

              v26 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                break;
              }

              v9 = v26 + v25;
              if (__OFADD__(v26, v25))
              {
                break;
              }

              v24 = (v24 + 1);
              if (!--v4)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }

        if (v4)
        {
          if (--v4)
          {
            v9 = 0;
            v13 = &v39 + 1;
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                break;
              }

              v15 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                break;
              }

              v9 = v15 - v14;
              if (__OFSUB__(v15, v14))
              {
                break;
              }

              ++v13;
              if (!--v4)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v7 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v7 = sub_100754594();
        }

        v8 = *v7;
        if (v8 == 43)
        {
          if (v5 >= 1)
          {
            v4 = v5 - 1;
            if (v5 != 1)
            {
              v9 = 0;
              if (v7)
              {
                v16 = v7 + 1;
                while (1)
                {
                  v17 = *v16 - 48;
                  if (v17 > 9)
                  {
                    goto LABEL_62;
                  }

                  v18 = 10 * v9;
                  if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                  {
                    goto LABEL_62;
                  }

                  v9 = v18 + v17;
                  if (__OFADD__(v18, v17))
                  {
                    goto LABEL_62;
                  }

                  ++v16;
                  if (!--v4)
                  {
                    goto LABEL_63;
                  }
                }
              }

              goto LABEL_54;
            }

            goto LABEL_62;
          }

          goto LABEL_74;
        }

        if (v8 != 45)
        {
          if (v5)
          {
            v9 = 0;
            if (v7)
            {
              while (1)
              {
                v22 = *v7 - 48;
                if (v22 > 9)
                {
                  goto LABEL_62;
                }

                v23 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  goto LABEL_62;
                }

                v9 = v23 + v22;
                if (__OFADD__(v23, v22))
                {
                  goto LABEL_62;
                }

                ++v7;
                if (!--v5)
                {
                  goto LABEL_54;
                }
              }
            }

            goto LABEL_54;
          }

LABEL_62:
          v9 = 0;
          LOBYTE(v4) = 1;
LABEL_63:
          v41 = v4;
          if (v4)
          {
            return;
          }

LABEL_64:
          v27 = objc_opt_self();
          v28 = [v27 treatmentOverrides];
          if (v28)
          {
            v29 = v28;
            v30 = sub_100752F44();
          }

          else
          {
            v30 = sub_10038664C(_swiftEmptyArrayStorage);
          }

          v39 = 0x62734435625378;
          v40 = 0xE700000000000000;
          sub_10000C518(&unk_100927770);
          v31 = swift_allocObject();
          *(v31 + 16) = xmmword_1007A5A00;
          *(v31 + 56) = &type metadata for Int;
          *(v31 + 64) = &protocol witness table for Int;
          *(v31 + 32) = v9;
          v42._countAndFlagsBits = sub_1007530B4();
          sub_1007531B4(v42);

          v32 = v39;
          v33 = v40;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v39 = v30;
          sub_1006737E0(v32, v33, 0x6D4B3562504E66, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
          isa = sub_100752F34().super.isa;

          [v27 setTreatmentOverrides:isa];

          return;
        }

        if (v5 >= 1)
        {
          v4 = v5 - 1;
          if (v5 != 1)
          {
            v9 = 0;
            if (v7)
            {
              v10 = v7 + 1;
              while (1)
              {
                v11 = *v10 - 48;
                if (v11 > 9)
                {
                  goto LABEL_62;
                }

                v12 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  goto LABEL_62;
                }

                v9 = v12 - v11;
                if (__OFSUB__(v12, v11))
                {
                  goto LABEL_62;
                }

                ++v10;
                if (!--v4)
                {
                  goto LABEL_63;
                }
              }
            }

LABEL_54:
            LOBYTE(v4) = 0;
            goto LABEL_63;
          }

          goto LABEL_62;
        }

        __break(1u);
      }

      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }
  }
}

void sub_10036C534(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  v3 = sub_10074D764();
  sub_10000C518(&qword_100927760);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A5A00;
  sub_10074D774();
  sub_1007544E4();
  v5 = sub_10074ED34();
  *(inited + 96) = v5;
  v6 = sub_10000D134((inited + 72));
  (*(*(v5 - 8) + 16))(v6, a1, v5);
  sub_100414D14(inited);
  swift_setDeallocating();
  sub_10000C8CC(inited + 32, &qword_100927768);
  isa = sub_100752F34().super.isa;

  [v2 postNotificationName:v3 object:0 userInfo:isa];
}

id sub_10036C6B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductPageSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10036C70C()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10036C768()
{
  v0 = sub_10000C518(&qword_100929630);
  __chkstk_darwin(v0 - 8);
  v2 = &v27 - v1;
  v3 = sub_10074ED34();
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  __chkstk_darwin(v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [Strong presentingViewController];

    if (v11)
    {
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (!v12)
      {
LABEL_6:

        goto LABEL_7;
      }

      v13 = [v12 selectedViewController];

      if (v13)
      {
        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        v11 = v13;
        if (v14)
        {
          goto LABEL_10;
        }

        goto LABEL_6;
      }
    }
  }

LABEL_7:
  v15 = swift_unknownObjectWeakLoadStrong();
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v30 = [v15 presentingViewController];

  if (!v30)
  {
    return;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_10:
  v30 = v14;
  v17 = [v14 topViewController];
  if (!v17)
  {
LABEL_14:
    v19 = v30;
LABEL_16:

    return;
  }

  v28 = v17;
  type metadata accessor for ProductDiffablePageViewController();
  if (!swift_dynamicCastClass())
  {

    v19 = v28;
    goto LABEL_16;
  }

  sub_10074C954();

  v18 = v29;
  if ((*(v29 + 48))(v2, 1, v3) == 1)
  {

    sub_10000C8CC(v2, &qword_100929630);
    return;
  }

  v27 = *(v18 + 32);
  v27(v8, v2, v3);
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    v22 = [v20 presentingViewController];

    if (v22)
    {
      v23 = v29;
      (*(v29 + 16))(v5, v8, v3);
      v24 = (*(v23 + 80) + 16) & ~*(v23 + 80);
      v25 = swift_allocObject();
      v27((v25 + v24), v5, v3);
      aBlock[4] = sub_10036CCB8;
      aBlock[5] = v25;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000CF7B0;
      aBlock[3] = &unk_100872AB0;
      v26 = _Block_copy(aBlock);

      [v22 dismissViewControllerAnimated:1 completion:v26];
      _Block_release(v26);

      (*(v23 + 8))(v8, v3);
      return;
    }

    (*(v29 + 8))(v8, v3);
  }

  else
  {
    (*(v18 + 8))(v8, v3);
  }
}

uint64_t sub_10036CC30()
{
  v1 = sub_10074ED34();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10036CCB8()
{
  v1 = *(sub_10074ED34() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_10036C534(v2);
}

uint64_t sub_10036CD18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10036CD30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000C518(&unk_10092B0D0);
  __chkstk_darwin(v4 - 8);
  v6 = v29 - v5;
  v7 = sub_100753CD4();
  v32 = *(v7 - 8);
  v33 = v7;
  __chkstk_darwin(v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074F6E4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = v29 - v16;
  v18 = [a1 presentingViewController];
  if (!v18)
  {
    v18 = a1;
  }

  result = [v18 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v20 = result;
  v30 = v13;
  v31 = a2;
  [result bounds];
  v22 = v21;
  v24 = v23;

  (*(v11 + 104))(v17, enum case for PageGrid.Direction.vertical(_:), v10);
  result = [v18 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v25 = result;
  v29[0] = v22;
  v29[1] = v24;
  v26 = enum case for UIView.LayoutRegion.AdaptivityAxis.vertical(_:);
  v27 = sub_100753CB4();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v6, v26, v27);
  (*(v28 + 56))(v6, 0, 1, v27);
  sub_100753CC4();
  sub_1002FF464(v6);
  sub_100753C94();

  (*(v32 + 8))(v9, v33);
  (*(v11 + 16))(v30, v17, v10);
  if (qword_100920060 != -1)
  {
    swift_once();
  }

  sub_10074F6B4();

  return (*(v11 + 8))(v17, v10);
}

void sub_10036D2F8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell);
  v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell + 8);
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_isCardModeEnabled;
  (*(v3 + 96))((*(v0 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_isCardModeEnabled) & 1) == 0, ObjectType, v3);
  if ((*(v3 + 136))(ObjectType, v3) != 6 && *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell))
  {
    v6 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell + 8);
    v7 = swift_getObjectType();
    (*(v6 + 96))((*(v0 + v5) & 1) == 0, v7, v6);
  }

  swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (v8)
  {
    v9 = v2 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = v8;
    v11 = swift_getObjectType();
    v12 = *(v10 + 32);
    v13 = v2;
    if (v12(v11, v10))
    {
      v15 = v14;
      v16 = swift_getObjectType();
      (*(v15 + 32))((*(v0 + v5) & 1) == 0, v16, v15);
      swift_unknownObjectRelease();
    }
  }

  v17 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell);
  if (v17)
  {
    v18 = swift_getObjectType();
    v19 = swift_conformsToProtocol2();
    if (v19)
    {
      v20 = *(v19 + 32);
      v21 = v19;
      v25 = v17;
      if (v20(v18, v21))
      {
        v23 = v22;
        v24 = swift_getObjectType();
        (*(v23 + 32))((*(v1 + v5) & 1) == 0, v24, v23);
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_10036D570(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_verticalSafeAreaInsets);
  v6 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_verticalSafeAreaInsets);
  v7 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_verticalSafeAreaInsets + 8);
  v8 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_verticalSafeAreaInsets + 16);
  v9 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_verticalSafeAreaInsets + 24);
  if (v6 != a1 || v7 != a2 || v8 != a3 || v9 != a4)
  {
    v13 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell + 8);
    ObjectType = swift_getObjectType();
    *v20 = v6;
    *&v20[1] = v7;
    *&v20[2] = v8;
    *&v20[3] = v9;
    v21 = 0;
    (*(v13 + 224))(v20, ObjectType, v13);
    if (*(v4 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell))
    {
      v15 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell + 8);
      v16 = swift_getObjectType();
      v17 = v5[1];
      v18[0] = *v5;
      v18[1] = v17;
      v19 = 0;
      (*(v15 + 224))(v18, v16, v15);
    }
  }
}

void sub_10036D75C()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 addSubview:v1];

  v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = [v0 view];
  if (!v6)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 addSubview:v5];
}

void sub_10036D8E4(void *a1, uint64_t a2, uint64_t a3, const char **a4, void *a5, char a6)
{
  v12.receiver = a1;
  v12.super_class = swift_getObjectType();
  v10 = *a4;
  v11 = v12.receiver;
  objc_msgSendSuper2(&v12, v10, a3);
  v11[*a5] = a6;
}

void sub_10036D95C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10000C518(&unk_10092B0D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v51 - v4;
  v6 = sub_100753CD4();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51.receiver = v1;
  v51.super_class = ObjectType;
  objc_msgSendSuper2(&v51, "viewDidLayoutSubviews", v8);
  v11 = [v1 view];
  if (!v11)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = v11;
  v13 = enum case for UIView.LayoutRegion.AdaptivityAxis.vertical(_:);
  v14 = sub_100753CB4();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v5, v13, v14);
  (*(v15 + 56))(v5, 0, 1, v14);
  sub_100753CC4();
  sub_1002FF464(v5);
  sub_100753C94();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  (*(v7 + 8))(v10, v6);
  v24 = &v1[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_verticalSafeAreaInsets];
  v25 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_verticalSafeAreaInsets];
  v26 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_verticalSafeAreaInsets + 8];
  v27 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_verticalSafeAreaInsets + 16];
  v28 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_verticalSafeAreaInsets + 24];
  *v24 = v17;
  *(v24 + 1) = v19;
  *(v24 + 2) = v21;
  *(v24 + 3) = v23;
  sub_10036D570(v25, v26, v27, v28);
  v29 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell];
  if (v29)
  {
    v30 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell + 8];
    v31 = v29;
    sub_10036DCE4(v31, v30);
    v33 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell];
    v32 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell + 8];
    v34 = [v1 view];
    if (v34)
    {
      v35 = v34;
      [v34 bounds];
      v37 = v36;

      v38 = sub_10036E084(v37, v33, v32);
      [v33 setFrame:{0.0, 0.0, v38, v39}];

      return;
    }

    goto LABEL_8;
  }

  v40 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell];
  v41 = [v1 view];
  if (v41)
  {
    v42 = v41;
    [v41 bounds];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;

    [v40 setFrame:{v44, v46, v48, v50}];
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_10036DCE4(void *a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for ListTodayCardCollectionViewCell();
  if (swift_dynamicCastClass())
  {
    v6 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell + 8];
    ObjectType = swift_getObjectType();
    if ((*(v6 + 160))(ObjectType, v6) == 4)
    {
      if (v2[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_isDisappearing])
      {
        return;
      }

      if (v2[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_isAppearing] == 1)
      {
        v8 = objc_opt_self();
        v9 = swift_allocObject();
        v9[2] = a1;
        v9[3] = a2;
        v9[4] = v3;
        v10 = swift_allocObject();
        *(v10 + 16) = sub_10036E4B0;
        *(v10 + 24) = v9;
        aBlock[4] = sub_100045E0C;
        aBlock[5] = v10;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10011B528;
        aBlock[3] = &unk_100872B28;
        v11 = _Block_copy(aBlock);
        v12 = a1;
        v13 = v3;

        [v8 performWithoutAnimation:v11];
        _Block_release(v11);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return;
        }

        __break(1u);
        goto LABEL_19;
      }

      goto LABEL_14;
    }
  }

  type metadata accessor for RiverTodayCardCollectionViewCell();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    v27 = [v2 view];
    if (v27)
    {
LABEL_15:
      v28 = v27;
      [v27 bounds];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;

      [a1 setFrame:{v30, v32, v34, v36}];
      return;
    }

    __break(1u);
LABEL_14:
    v27 = [v2 view];
    if (!v27)
    {
LABEL_20:
      __break(1u);
      return;
    }

    goto LABEL_15;
  }

  v16 = v15;
  *(v15 + OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_isDisappearing) = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_isDisappearing);
  v37 = a1;
  v17 = [v3 view];
  if (!v17)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = v17;
  [v17 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [v16 setFrame:{v20, v22, v24, v26}];
}

double sub_10036E084(double a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_10074F704();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_isCardModeEnabled])
  {
    return a1;
  }

  v12 = [v3 traitCollection];
  v13 = sub_1007537B4();
  type metadata accessor for ListTodayCardCollectionViewCell();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_6;
  }

  ObjectType = swift_getObjectType();
  v15 = (*(a3 + 160))(ObjectType, a3);

  if (v15 != 6)
  {
LABEL_6:
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 6;
LABEL_7:
  if (v13)
  {
    v17 = v16;
  }

  else
  {
    v17 = 5;
  }

  sub_10036CD30(v4, v11);
  v18 = swift_getObjectType();
  v19 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_todayCard];
  v20 = [v4 traitCollection];
  v21 = [v4 view];
  (*(a3 + 80))(v19, v17, 1, v11, v20, v21, v18, a3);

  (*(v8 + 8))(v11, v7);
  return a1;
}

id sub_10036E2FC(void *a1, int a2, id a3)
{
  result = [a3 view];
  if (result)
  {
    v5 = result;
    [result bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    return [a1 setFrame:{v7, v9, v11, v13}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10036E470()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10036E4CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10036E4E4()
{
  v0 = sub_10000C518(&qword_100923E88);
  __chkstk_darwin(v0 - 8);
  v40 = &v34 - v1;
  v42 = sub_10074F654();
  v49 = *(v42 - 8);
  __chkstk_darwin(v42);
  v3 = (&v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10000C518(&qword_100923230);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  sub_10000C518(&qword_100923E90);
  v16 = *(sub_10074F584() - 8);
  v48 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v39 = v18;
  *(v18 + 16) = xmmword_1007A7250;
  v46 = v18 + v17;
  v50 = 0x3FF0000000000000;
  v51 = 0x3FF8000000000000;
  sub_10001CC10();
  sub_10074F5F4();
  v50 = 0x4030000000000000;
  v51 = 0x4020000000000000;
  sub_10074F5F4();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10074F5F4();
  __asm { FMOV            V0.2D, #16.0 }

  *v3 = _Q0;
  v45 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v24 = *(v49 + 104);
  v49 += 104;
  v47 = v24;
  v25 = v42;
  v24(v3);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v51) = 0;
  sub_10074F614();
  v51 = 0;
  v44 = v6;
  sub_10074F614();
  v41 = v15;
  v43 = v12;
  sub_10074F544();
  v50 = 0x3FF0000000000000;
  v51 = 0x3FF8000000000000;
  sub_10074F5F4();
  v50 = 0x4034000000000000;
  v51 = 0x4024000000000000;
  sub_10074F5F4();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10074F5F4();
  __asm { FMOV            V0.2D, #20.0 }

  *v3 = _Q0;
  v47(v3, v45, v25);
  LOBYTE(v51) = 0;
  sub_10074F614();
  v51 = 0;
  sub_10074F614();
  v28 = v48;
  top = UIEdgeInsetsZero.top;
  v38 = left;
  sub_10074F544();
  v51 = 0x4008000000000000;
  sub_10074F614();
  v51 = 0x4034000000000000;
  sub_10074F614();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10074F5F4();
  v36 = vdupq_n_s64(0x4041000000000000uLL);
  *v3 = v36;
  v29 = v42;
  v30 = v47;
  v47(v3, v45, v42);
  LOBYTE(v51) = 0;
  sub_10074F614();
  v51 = 0;
  sub_10074F614();
  sub_10074F544();
  v35 = 2 * v28 + v48;
  v51 = 0x4010000000000000;
  sub_10074F614();
  v51 = 0x4034000000000000;
  sub_10074F614();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10074F5F4();
  *v3 = v36;
  v30(v3, v45, v29);
  sub_1007535A4();
  LOBYTE(v51) = 0;
  sub_10074F614();
  v51 = 0;
  sub_10074F614();
  v34 = v9;
  sub_10074F544();
  v35 = 4 * v48;
  v51 = 0x4014000000000000;
  sub_10074F614();
  v51 = 0x4038000000000000;
  sub_10074F614();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10074F5F4();
  v36 = vdupq_n_s64(0x404A000000000000uLL);
  *v3 = v36;
  v31 = v45;
  v32 = v42;
  v47(v3, v45, v42);
  LOBYTE(v51) = 0;
  sub_10074F614();
  v51 = 0;
  sub_10074F614();
  sub_10074F544();
  v51 = 0x4018000000000000;
  sub_10074F614();
  v51 = 0x4038000000000000;
  sub_10074F614();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10074F5F4();
  *v3 = v36;
  v47(v3, v31, v32);
  LOBYTE(v51) = 0;
  sub_10074F614();
  v51 = 0;
  sub_10074F614();
  result = sub_10074F544();
  qword_1009342E0 = v39;
  return result;
}

uint64_t sub_10036EF00()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_1009342F0);
  sub_10000D0FC(v4, qword_1009342F0);
  if (qword_100920E90 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_100980900);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

id sub_10036F0D4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension29FamilyPurchasesViewController_presenter) = a1;
  v4 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v15[4] = sub_10036F2D8;
  v15[5] = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_1002B6430;
  v15[3] = &unk_100872B50;
  v5 = _Block_copy(v15);

  v6 = [v4 initWithSectionProvider:v5];
  _Block_release(v5);

  v7 = v6;

  v8 = sub_10062DFAC(v7, a2);

  sub_100372E64(&unk_100934350, v9, type metadata accessor for FamilyPurchasesViewController);
  v10 = v8;
  sub_10074AC44();
  v11 = v10;
  sub_10074AC74();
  v12 = sub_100753064();

  [v11 setTitle:v12];

  *(v11 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_prefersLargeTitle) = 0;
  v13 = [v11 navigationItem];
  [v13 setLargeTitleDisplayMode:2];

  return v11;
}

uint64_t sub_10036F2D8()
{
  v0 = sub_100751974();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007519D4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v0, v6);
  sub_1007519A4();
  sub_100016C60(0, &unk_10093FE00);
  v9 = sub_100753A54();
  (*(v5 + 8))(v8, v4);
  return v9;
}

void sub_10036F584()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for FamilyPurchasesViewController();
  objc_msgSendSuper2(&v14, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    sub_100016C60(0, &qword_100923500);
    v3 = sub_100753E14();
    [v2 setBackgroundColor:v3];

    v4 = [v0 collectionView];
    if (v4)
    {
      v5 = v4;
      v6 = sub_100753E14();
      [v5 setBackgroundColor:v6];

      [v5 setAlwaysBounceVertical:1];
      type metadata accessor for LinkableHeaderCollectionViewCell();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_1007539D4();
      v8 = sub_100753064();

      [v5 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v8];

      type metadata accessor for AccountDetailCollectionViewCell();
      v9 = swift_getObjCClassFromMetadata();
      sub_1007539D4();
      v10 = sub_100753064();

      [v5 registerClass:v9 forCellWithReuseIdentifier:v10];

      type metadata accessor for DetailCollectionViewCell();
      v11 = swift_getObjCClassFromMetadata();
      v12 = UICollectionElementKindSectionHeader;
      sub_1007539D4();
      v13 = sub_100753064();

      [v5 registerClass:v11 forSupplementaryViewOfKind:v12 withReuseIdentifier:v13];

      sub_100744314();
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_10036F86C(void *a1)
{
  v2 = sub_100749B64();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741784();
  sub_10074ABD4();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for FamilyPurchasesSection.errorBanner(_:))
  {
    type metadata accessor for LinkableHeaderCollectionViewCell();
    sub_1007539D4();
    v7 = sub_100753064();

    v8.super.isa = sub_100741704().super.isa;
    v9 = [a1 dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:v8.super.isa];
LABEL_9:
    v13 = v9;

    return v13;
  }

  if (v6 == enum case for FamilyPurchasesSection.loggedInUser(_:) || v6 == enum case for FamilyPurchasesSection.familyMembers(_:))
  {
    type metadata accessor for AccountDetailCollectionViewCell();
    sub_1007539D4();
    v7 = sub_100753064();

    v8.super.isa = sub_100741704().super.isa;
    v9 = [a1 dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:v8.super.isa];
    goto LABEL_9;
  }

  type metadata accessor for LinkableHeaderCollectionViewCell();
  sub_1007539D4();
  v11 = sub_100753064();

  isa = sub_100741704().super.isa;
  v13 = [a1 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:isa];

  (*(v3 + 8))(v5, v2);
  return v13;
}

void sub_100370378(uint64_t a1)
{
  v3 = sub_1007416B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = [v1 collectionView];
  if (v6)
  {
    v14 = v6;
    if (sub_100741694() < 1)
    {
    }

    else
    {
      v7 = objc_opt_self();
      (*(v4 + 16))(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
      v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
      v9 = swift_allocObject();
      *(v9 + 16) = v14;
      (*(v4 + 32))(v9 + v8, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
      v10 = swift_allocObject();
      *(v10 + 16) = sub_100371148;
      *(v10 + 24) = v9;
      aBlock[4] = sub_100045E0C;
      aBlock[5] = v10;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10011B528;
      aBlock[3] = &unk_100872BC8;
      v11 = _Block_copy(aBlock);
      v12 = v14;

      [v7 performWithoutAnimation:v11];

      _Block_release(v11);
      LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

      if (v7)
      {
        __break(1u);
      }
    }
  }
}

void sub_100370614(void *a1)
{
  v2 = [a1 collectionViewLayout];
  [v2 invalidateLayout];

  sub_100741674(v3);
  v5 = v4;
  [a1 reloadSections:v4];
}

id sub_1003706B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FamilyPurchasesViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10037071C()
{
  v1 = [v0 collectionView];
  [v1 reloadData];
}

uint64_t sub_100370774(uint64_t a1)
{
  v3 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph);
  v7 = sub_10000C518(&unk_100923210);
  sub_1007526C4();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_10000C8CC(v5, &unk_100923960);
  }

  sub_1003C0E00(a1, 1, v6, v5);

  return (*(v8 + 8))(v5, v7);
}

double sub_10037099C(double a1, uint64_t a2, void *a3)
{
  v5 = sub_100754724();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C888(a3, a3[3]);
  sub_100536120();
  sub_100750564();
  v9 = *(v6 + 8);
  v9(v8, v5);
  sub_10000C888(a3 + 25, a3[28]);
  sub_100750404();
  sub_100016B4C((a3 + 15), v12, &qword_100931390);
  if (v13)
  {
    sub_10000C888(v12, v13);
    sub_100536120();
    sub_100750564();
    v9(v8, v5);
    sub_10000C620(v12);
  }

  else
  {
    sub_10000C8CC(v12, &qword_100931390);
  }

  sub_10000C888(a3 + 30, a3[33]);
  sub_100750414();
  sub_10000C888(a3 + 20, a3[23]);
  sub_100750414();
  sub_10000C888(a3 + 5, a3[8]);
  sub_100750584();
  sub_10000C888(a3 + 10, a3[13]);
  sub_100750554();
  return a1;
}

uint64_t sub_100370CBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_100370CD4(uint64_t a1, double a2, uint64_t a3, char a4, void *a5)
{
  v26 = a1;
  v8 = sub_10074CD14();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921880 != -1)
  {
    swift_once();
  }

  sub_1001B63AC(&unk_10093E990, v29);
  if ((a4 & 1) == 0)
  {
    sub_10000C8CC(v30, &qword_100931390);
    memset(v30, 0, sizeof(v30));
    v31 = 0;
  }

  sub_100016C60(0, &qword_100923AB0);
  if (qword_100921010 != -1)
  {
    swift_once();
  }

  v12 = sub_100750534();
  sub_10000D0FC(v12, qword_100980D68);
  v13 = [a5 traitCollection];
  v25 = a5;
  v14 = v13;
  v15 = sub_100753C14();

  sub_1001B63AC(v29, v28);
  v16 = sub_100750F34();
  swift_allocObject();
  v17 = sub_100750EF4();
  v28[23] = v16;
  v28[24] = &protocol witness table for LayoutViewPlaceholder;
  v28[20] = v17;
  v18 = sub_10074F3F4();
  v27[3] = v18;
  v27[4] = sub_100372E64(&qword_10092AC70, 255, &type metadata accessor for Feature);
  v19 = sub_10000D134(v27);
  (*(*(v18 - 8) + 104))(v19, enum case for Feature.measurement_with_labelplaceholder(_:), v18);
  v20 = v15;
  sub_10074FC74();
  sub_10000C620(v27);

  sub_10074CD04();
  sub_10074CCE4();
  (*(v9 + 8))(v11, v8);
  swift_allocObject();
  v21 = sub_100750EF4();
  v28[33] = v16;
  v28[34] = &protocol witness table for LayoutViewPlaceholder;
  v28[30] = v21;
  v22 = sub_10037099C(a2, v25, v28);

  sub_1001B6408(v28);
  sub_1001B645C(v29);
  return v22;
}

uint64_t sub_100371084()
{
  v1 = sub_1007416B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100371148()
{
  sub_1007416B4();
  v1 = *(v0 + 16);

  sub_100370614(v1);
}

id sub_1003711BC(void *a1, uint64_t a2, uint64_t a3)
{
  if (sub_100753094() == a2 && v5 == a3)
  {

    goto LABEL_10;
  }

  v7 = sub_100754754();

  if (v7)
  {
LABEL_10:
    v10 = sub_100753064();
    type metadata accessor for DetailCollectionViewCell();
    sub_1007539D4();
    v11 = sub_100753064();

    isa = sub_100741704().super.isa;
    v13 = [a1 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v11 forIndexPath:isa];

    return v13;
  }

  v8 = objc_allocWithZone(UICollectionViewCell);

  return [v8 init];
}

void sub_1003712F8(void *a1)
{
  v2 = v1;
  v4 = sub_10074F314();
  v56 = *(v4 - 8);
  v57 = v4;
  __chkstk_darwin(v4);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&qword_10093FDB0);
  __chkstk_darwin(v7 - 8);
  v9 = &v52 - v8;
  v10 = sub_100749B64();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741784();
  sub_10074ABD4();
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == enum case for FamilyPurchasesSection.errorBanner(_:))
  {
    type metadata accessor for LinkableHeaderCollectionViewCell();
    v15 = swift_dynamicCastClass();
    if (!v15)
    {
      return;
    }

    v16 = v15;
    v17 = a1;
    if (sub_10074AC34())
    {
      v18 = *(*&v16[OBJC_IVAR____TtC22SubscribePageExtension32LinkableHeaderCollectionViewCell_headerView] + OBJC_IVAR____TtC22SubscribePageExtension18LinkableHeaderView_label);
      v19 = sub_100743EA4();
      v20 = sub_1001D3738(v19, sub_1000E12F0);

      v21 = sub_100743E94();
      sub_10004DF04(v21, 0, v20);

      [v16 setNeedsLayout];

      return;
    }

    goto LABEL_21;
  }

  if (v14 != enum case for FamilyPurchasesSection.loggedInUser(_:) && v14 != enum case for FamilyPurchasesSection.familyMembers(_:))
  {
    (*(v11 + 8))(v13, v10);
    return;
  }

  type metadata accessor for AccountDetailCollectionViewCell();
  v23 = swift_dynamicCastClass();
  if (v23)
  {
    v24 = v23;
    v25 = a1;
    [v1 pageMarginInsets];
    v27 = v26;
    v55 = sub_100741774();
    v28 = sub_100741774();
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      return;
    }

    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    sub_100741784();
    v33 = sub_10074AC04();
    v53 = v29 == v33;
    v54 = v29 != v33;
    v34 = v25;
    [v1 pageMarginInsets];
    [v24 setLayoutMargins:?];

    sub_10074AC64();
    v35 = *&v24[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_titleLabel];
    v36 = sub_100753064();

    [v35 setText:v36];

    [v24 setNeedsLayout];
    v24[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_showTopSeparatorView] = 1;
    [*&v24[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_topSeparatorView] setHidden:0];
    top = UIEdgeInsetsZero.top;
    if (v55)
    {
      v38 = v27;
    }

    else
    {
      v38 = left;
    }

    v39 = bottom;
    v40 = right;
    if (v55)
    {
      top = 0.0;
      v39 = 0.0;
      v40 = 0.0;
    }

    v41 = &v24[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_topSeparatorViewInsets];
    *v41 = top;
    v41[1] = v38;
    v41[2] = v39;
    v41[3] = v40;
    *(v41 + 32) = 0;
    v42 = v54;
    v24[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_showBottomSeparatorView] = v53;
    [*&v24[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_bottomSeparatorView] setHidden:v42];
    v43 = &v24[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_bottomSeparatorViewInsets];
    *v43 = UIEdgeInsetsZero.top;
    v43[1] = left;
    v43[2] = bottom;
    v43[3] = right;
    *(v43 + 32) = 0;
    v44 = type metadata accessor for Accessory();
    swift_storeEnumTagMultiPayload();
    (*(*(v44 - 8) + 56))(v9, 0, 1, v44);
    sub_1005A94FC(v9, *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph]);
    sub_10000C8CC(v9, &qword_10093FDB0);
    [*&v24[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_accessoryView] setHidden:0];
    v45 = &v24[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_imageMarginRight];
    *v45 = 0x4030000000000000;
    v45[8] = 0;
    (*(v56 + 104))(v6, enum case for Artwork.Style.round(_:), v57);
    sub_100743364();
    v46 = sub_10074ABE4();
    if (v46)
    {
      v47 = v46;
      v48 = [objc_opt_self() mainScreen];
      [v48 scale];
      v50 = v49;

      v58.width = 36.0;
      v58.height = 36.0;
      UIGraphicsBeginImageContextWithOptions(v58, 0, v50);
      [v47 drawInRect:{0.0, 0.0, 36.0, 36.0}];
      v51 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
    }

    else
    {
      v51 = 0;
    }

    v17 = v51;
    sub_100743344();
    [v24 setNeedsLayout];

LABEL_21:
  }
}

void sub_1003719A8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  type metadata accessor for DetailCollectionViewCell();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    return;
  }

  v12 = v11;
  if (sub_100753094() == a2 && v13 == a3)
  {
    v17 = a1;
  }

  else
  {
    v15 = sub_100754754();
    v35 = a1;

    if ((v15 & 1) == 0)
    {
      v16 = v35;

      return;
    }
  }

  v18 = [v12 contentView];
  v19 = objc_opt_self();
  v20 = [v19 clearColor];
  [v18 setBackgroundColor:v20];

  v21 = a1;
  v22 = [v19 clearColor];
  [v12 setBackgroundColor:v22];

  v12[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_isSelectable] = 0;
  [v12 setSelectedBackgroundView:0];
  sub_100741784();
  sub_10074AC54();
  v23 = OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_titleLabel;
  v24 = *&v12[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_titleLabel];
  if (v25)
  {
    v26 = sub_100753064();
  }

  else
  {
    v26 = 0;
  }

  [v24 setText:v26];

  if (qword_100920E90 != -1)
  {
    swift_once();
  }

  v27 = sub_100750534();
  v28 = sub_10000D0FC(v27, qword_100980900);
  v29 = *(v27 - 8);
  (*(v29 + 16))(v10, v28, v27);
  (*(v29 + 56))(v10, 0, 1, v27);
  sub_100745BA4();
  v30 = *&v12[v23];
  v31 = [v19 systemGrayColor];
  [v30 setTextColor:v31];

  [v4 pageMarginInsets];
  v33 = v32;
  [v4 pageMarginInsets];
  [v12 setLayoutMargins:{0.0, v33, 0.0}];
}

id sub_100371D60(void *a1)
{
  v3 = type metadata accessor for Accessory();
  v62 = *(v3 - 8);
  __chkstk_darwin(v3);
  v58 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v59 = (&v55 - v6);
  __chkstk_darwin(v7);
  v61 = &v55 - v8;
  v9 = sub_10000C518(&qword_10093FDB0);
  __chkstk_darwin(v9 - 8);
  v60 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = (&v55 - v12);
  __chkstk_darwin(v14);
  v63 = &v55 - v15;
  __chkstk_darwin(v16);
  v64 = &v55 - v17;
  v18 = sub_100749B64();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v1;
  v23 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29FamilyPurchasesViewController_presenter];
  sub_100741784();
  sub_10074ABD4();
  v24 = (*(v19 + 88))(v21, v18);
  if (v24 == enum case for FamilyPurchasesSection.errorBanner(_:))
  {
    result = sub_10074AC34();
    if (result)
    {
      v26 = sub_100743E84();
      v28 = v27;
      [a1 bounds];
      sub_100370CD4(v26, v29, v28, 0, v1);
    }

    return result;
  }

  if (v24 != enum case for FamilyPurchasesSection.loggedInUser(_:) && v24 != enum case for FamilyPurchasesSection.familyMembers(_:))
  {
    return (*(v19 + 8))(v21, v18);
  }

  v31 = sub_10074AC64();
  v57 = v32;
  v33 = v64;
  swift_storeEnumTagMultiPayload();
  v34 = *(v62 + 56);
  v34(v33, 0, 1, v3);
  v34(v63, 1, 1, v3);
  v35 = sub_100741774();
  sub_100741784();
  v36 = sub_10074AC04();
  v37 = (v36 - 1);
  if (__OFSUB__(v36, 1))
  {
    __break(1u);
    goto LABEL_30;
  }

  v55 = v31;
  v56 = v35;
  v31 = v22;
  result = [v22 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v38 = result;
  [result bounds];

  v39 = [v22 traitCollection];
  sub_100753804();

  v40 = [v22 traitCollection];
  sub_100016B4C(v64, v13, &qword_10093FDB0);
  v41 = *(v62 + 48);
  if (v41(v13, 1, v3) == 1)
  {
    v23 = v40;
    v42 = v13;
LABEL_18:
    sub_10000C8CC(v42, &qword_10093FDB0);
    goto LABEL_20;
  }

  v43 = v13;
  v44 = v61;
  sub_100372EAC(v43, v61);
  sub_10050BF0C(v40);
  v45 = v59;
  swift_storeEnumTagMultiPayload();
  v46 = sub_10050D4C8(v44, v45);
  sub_10007A554(v45);
  if (v46)
  {
    _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();
  }

  v47 = v60;
  sub_100016B4C(v63, v60, &qword_10093FDB0);
  if (v41(v47, 1, v3) == 1)
  {
    v23 = v40;
    sub_10007A554(v44);
    v42 = v47;
    goto LABEL_18;
  }

  v48 = v58;
  sub_100372EAC(v47, v58);
  v23 = v40;
  sub_10050BF0C(v40);
  sub_10007A554(v48);
  sub_10007A554(v44);
LABEL_20:
  v13 = v37;
  v37 = &selRef_initWithTitle_style_target_action_;
  if (qword_100921928 != -1)
  {
LABEL_30:
    swift_once();
  }

  v49 = sub_100750534();
  sub_10000D0FC(v49, qword_10093FA58);
  v50 = sub_10074F3F4();
  v65[3] = v50;
  v65[4] = sub_100372E64(&qword_10092AC70, 255, &type metadata accessor for Feature);
  v51 = sub_10000D134(v65);
  (*(*(v50 - 8) + 104))(v51, enum case for Feature.measurement_with_labelplaceholder(_:), v50);
  sub_10074FC74();
  sub_10000C620(v65);
  sub_10074CCB4();
  if (qword_100921930 != -1)
  {
    swift_once();
  }

  v52 = sub_100750B04();
  sub_10000D0FC(v52, qword_10093FA70);
  sub_100750584();
  if (qword_100921938 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v52, qword_10093FA88);
  sub_100750554();
  v53 = [v31 v37[129]];
  sub_100751364();

  if (v56 == v13)
  {
    v54 = [v31 v37[129]];
    sub_100751364();
  }

  else
  {
  }

  sub_10000C8CC(v63, &qword_10093FDB0);
  return sub_10000C8CC(v64, &qword_10093FDB0);
}

id sub_1003726AC()
{
  v1 = sub_100750B04();
  v40 = *(v1 - 8);
  __chkstk_darwin(v1);
  v39 = v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100754724();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v36 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&qword_100934360);
  __chkstk_darwin(v5 - 8);
  v35 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v41 = v34 - v8;
  v9 = sub_100749B64();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v34 - v14;
  sub_10074ABD4();
  (*(v10 + 104))(v12, enum case for FamilyPurchasesSection.familyMembers(_:), v9);
  sub_100372E64(&qword_100934368, 255, &type metadata accessor for FamilyPurchasesSection);
  sub_100753274();
  sub_100753274();
  v16 = *(v10 + 8);
  v16(v12, v9);
  result = (v16)(v15, v9);
  if (v42[0] == v42[5])
  {
    sub_10074AC54();
    v34[1] = v18;
    if (qword_100920A20 != -1)
    {
      swift_once();
    }

    v19 = sub_10000D0FC(v1, qword_1009342F0);
    v21 = v40;
    v20 = v41;
    v22 = *(v40 + 16);
    v22(v41, v19, v1);
    (*(v21 + 56))(v20, 0, 1, v1);
    result = [v0 view];
    if (result)
    {
      v23 = result;
      [result bounds];

      v24 = [v0 traitCollection];
      if (qword_1009208C8 != -1)
      {
        swift_once();
      }

      v25 = sub_100750534();
      sub_10000D0FC(v25, qword_100931C70);
      v26 = sub_10074F3F4();
      v42[3] = v26;
      v42[4] = sub_100372E64(&qword_10092AC70, 255, &type metadata accessor for Feature);
      v27 = sub_10000D134(v42);
      (*(*(v26 - 8) + 104))(v27, enum case for Feature.measurement_with_labelplaceholder(_:), v26);
      sub_10074FC74();
      sub_10000C620(v42);
      sub_10074CCB4();
      if (qword_1009208D0 != -1)
      {
        swift_once();
      }

      sub_10000D0FC(v1, qword_100931C88);
      sub_100750584();
      v28 = v35;
      sub_100016B4C(v41, v35, &qword_100934360);
      v29 = *(v21 + 48);
      v30 = v29(v28, 1, v1);
      v31 = v39;
      if (v30 == 1)
      {
        if (qword_1009208D8 != -1)
        {
          swift_once();
        }

        v32 = sub_10000D0FC(v1, qword_100931CA0);
        v22(v31, v32, v1);
        if (v29(v28, 1, v1) != 1)
        {
          sub_10000C8CC(v28, &qword_100934360);
        }
      }

      else
      {
        (*(v21 + 32))(v39, v28, v1);
      }

      v33 = v36;
      sub_1007502D4();
      sub_100750AD4();
      (*(v37 + 8))(v33, v38);
      (*(v21 + 8))(v31, v1);

      return sub_10000C8CC(v41, &qword_100934360);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100372E64(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100372EAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Accessory();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_100372F18(double a1, double a2, double a3, double a4)
{
  v9 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v9 - 8);
  v100 = &v93 - v10;
  v11 = sub_100750304();
  v114 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100747064();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v98 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v93 - v18;
  v20 = OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_materialBackground;
  *&v4[v20] = [objc_allocWithZone(UIVisualEffectView) init];
  v21 = OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_smallLockupView;
  type metadata accessor for SmallLockupView();
  *&v4[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22 = OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_tapGestureRecognizer;
  *&v4[v22] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v23 = &v4[OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_selectionHandler];
  v24 = type metadata accessor for CarouselItemLockupOverlay();
  *v23 = 0;
  *(v23 + 1) = 0;
  v122.receiver = v4;
  v122.super_class = v24;
  v25 = objc_msgSendSuper2(&v122, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v29 = v25;
  [v29 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v29 setOverrideUserInterfaceStyle:2];
  v99 = UIContentSizeCategoryExtraExtraExtraLarge;
  [v29 setMaximumContentSizeCategory:?];
  v94 = v29;

  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v30 = sub_10000D0FC(v14, qword_10097E3A8);
  v108 = v15;
  v31 = *(v15 + 16);
  v105 = v14;
  v96 = v15 + 16;
  v95 = v31;
  v31(v19, v30, v14);
  sub_100746F44();
  v115 = v19;
  if (qword_1009215A0 != -1)
  {
    swift_once();
  }

  v32 = sub_100750534();
  v33 = sub_10000D0FC(v32, qword_100981E18);
  v97 = *(v32 - 8);
  v35 = v97 + 16;
  v34 = *(v97 + 16);
  v109 = v32;
  v113 = v34;
  v34(v13, v33, v32);
  v36 = v114;
  v37 = v114 + 104;
  v38 = enum case for FontSource.useCase(_:);
  v107 = *(v114 + 104);
  v107(v13);
  v104 = sub_100750B04();
  v120 = v104;
  v121 = &protocol witness table for StaticDimension;
  sub_10000D134(v119);
  v117 = v11;
  v118 = &protocol witness table for FontSource;
  v39 = sub_10000D134(v116);
  v111 = *(v36 + 16);
  v110 = v36 + 16;
  v111(v39, v13, v11);
  sub_100750B14();
  v41 = *(v36 + 8);
  v40 = v36 + 8;
  v106 = v41;
  v41(v13, v11);
  sub_100746F64();
  if (qword_1009215A8 != -1)
  {
    swift_once();
  }

  v42 = v109;
  v112 = sub_10000D0FC(v109, qword_100981E30);
  v113(v13, v112, v42);
  v102 = v38;
  (v107)(v13, v38, v11);
  v43 = v104;
  v120 = v104;
  v121 = &protocol witness table for StaticDimension;
  sub_10000D134(v119);
  v117 = v11;
  v118 = &protocol witness table for FontSource;
  v44 = sub_10000D134(v116);
  v103 = v37;
  v101 = v35;
  v111(v44, v13, v11);
  sub_100750B14();
  v106(v13, v11);
  v114 = v40;
  sub_100747034();
  v45 = v113;
  v113(v13, v112, v42);
  v46 = v102;
  v47 = v107;
  (v107)(v13, v102, v11);
  v120 = v43;
  v121 = &protocol witness table for StaticDimension;
  sub_10000D134(v119);
  v117 = v11;
  v118 = &protocol witness table for FontSource;
  v48 = sub_10000D134(v116);
  v49 = v111;
  v111(v48, v13, v11);
  sub_100750B14();
  v50 = v106;
  v106(v13, v11);
  sub_100747004();
  v45(v13, v112, v109);
  v47(v13, v46, v11);
  v51 = v104;
  v120 = v104;
  v121 = &protocol witness table for StaticDimension;
  sub_10000D134(v119);
  v117 = v11;
  v118 = &protocol witness table for FontSource;
  v52 = sub_10000D134(v116);
  v49(v52, v13, v11);
  sub_100750B14();
  v50(v13, v11);
  sub_100746FF4();
  v113(v13, v112, v109);
  v53 = v102;
  v54 = v107;
  (v107)(v13, v102, v11);
  v120 = v51;
  v121 = &protocol witness table for StaticDimension;
  sub_10000D134(v119);
  v117 = v11;
  v118 = &protocol witness table for FontSource;
  v55 = sub_10000D134(v116);
  v111(v55, v13, v11);
  sub_100750B14();
  v56 = v106;
  v106(v13, v11);
  sub_100747054();
  v57 = v53;
  v58 = v51;
  if (qword_1009215B8 != -1)
  {
    swift_once();
  }

  v59 = v109;
  v60 = sub_10000D0FC(v109, qword_100981E60);
  v113(v13, v60, v59);
  v54(v13, v57, v11);
  v120 = v58;
  v121 = &protocol witness table for StaticDimension;
  sub_10000D134(v119);
  v117 = v11;
  v118 = &protocol witness table for FontSource;
  v61 = sub_10000D134(v116);
  v111(v61, v13, v11);
  sub_100750B14();
  v56(v13, v11);
  v62 = v115;
  sub_100746FB4();
  v114 = OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_smallLockupView;
  v63 = v94;
  v64 = *&v94[OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_smallLockupView];
  v65 = v98;
  v66 = v105;
  v95(v98, v62, v105);
  v67 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  v68 = v108;
  v69 = *(v108 + 24);
  v70 = v64;
  v69(&v64[v67], v65, v66);
  swift_endAccess();
  [v70 setNeedsLayout];

  v71 = *(v68 + 8);
  v108 = v68 + 8;
  v71(v65, v66);
  v72 = v114;
  v73 = *(*&v63[v114] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel);
  v74 = v100;
  v113(v100, v112, v59);
  (*(v97 + 56))(v74, 0, 1, v59);
  v75 = v73;
  sub_100745BA4();

  v76 = [*(*&v63[v72] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel) layer];
  v77 = kCAFilterPlusL;
  [v76 setCompositingFilter:kCAFilterPlusL];

  v78 = *(*&v63[v72] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel);
  sub_100016C60(0, &qword_100923500);
  v79 = v78;
  v80 = sub_100753DF4();
  [v79 setTextColor:v80];

  [*(*&v63[v72] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel) _setTextColorFollowsTintColor:0];
  v81 = [*(*&v63[v72] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel) layer];
  [v81 setCompositingFilter:v77];

  [*&v63[v72] setMaximumContentSizeCategory:v99];
  v82 = [*&v63[v72] layer];
  [v82 setAllowsGroupBlending:0];

  v83 = OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_materialBackground;
  v84 = *&v63[OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_materialBackground];
  sub_1006F3F14(26.0);

  v85 = OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_tapGestureRecognizer;
  [*&v63[OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_tapGestureRecognizer] setEnabled:0];
  v86 = *&v63[v85];
  v87 = v63;
  [v86 addTarget:v87 action:"handleSelection:"];
  v88 = *&v63[v85];
  [v88 setDelegate:v87];

  [v87 addGestureRecognizer:*&v63[v85]];
  [v87 addSubview:*&v63[v83]];
  v89 = [*&v63[v83] contentView];
  [v89 addSubview:*&v63[v72]];

  v90 = [*&v63[v83] contentView];
  v91 = [v90 layer];

  [v91 setAllowsGroupBlending:0];
  v71(v115, v105);
  return v87;
}

uint64_t sub_100373CFC()
{
  v1 = sub_100751104();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = type metadata accessor for CarouselItemLockupOverlay();
  v15.receiver = v0;
  v15.super_class = v5;
  objc_msgSendSuper2(&v15, "layoutSubviews");
  v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_materialBackground];
  sub_1007477B4();
  [v6 setFrame:?];
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_smallLockupView];
  v14[3] = type metadata accessor for SmallLockupView();
  v14[4] = sub_1003752E8(&qword_1009343B8, type metadata accessor for SmallLockupView);
  v14[0] = v7;
  sub_10000C824(v14, v12);
  v13[3] = sub_1007511A4();
  v13[4] = &protocol witness table for Margins;
  sub_10000D134(v13);
  v8 = v7;
  sub_100751194();
  sub_1007510E4();
  sub_100751114();
  sub_10000C620(v14);
  sub_1007477B4();
  v9 = [v0 traitCollection];
  sub_100751244();

  return (*(v2 + 8))(v4, v1);
}

double sub_100373F78(double a1, double a2)
{
  v5 = sub_100751104();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1001CDEE8(v14);
  sub_10000C824(v14, v12);
  v13[3] = sub_1007511A4();
  v13[4] = &protocol witness table for Margins;
  sub_10000D134(v13);
  sub_100751194();
  sub_1007510E4();
  sub_100751114();
  sub_10000C620(v14);
  v9 = sub_100374D38(v8, v2, a1, a2);
  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t sub_100374230(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v4 - 8);
  v6 = &v43 - v5;
  v7 = sub_10000C518(&unk_100925520);
  __chkstk_darwin(v7 - 8);
  v9 = &v43 - v8;
  v10 = sub_10000C518(&unk_100925990);
  __chkstk_darwin(v10 - 8);
  v12 = &v43 - v11;
  v13 = sub_10000C518(&unk_1009259A0);
  __chkstk_darwin(v13 - 8);
  v15 = &v43 - v14;
  v16 = sub_10000C518(&unk_100925530);
  __chkstk_darwin(v16 - 8);
  v18 = &v43 - v17;
  v19 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v19 - 8);
  v21 = &v43 - v20;
  result = sub_10074A4C4();
  if (result)
  {
    v23 = result;
    v44 = v2;
    v24 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_smallLockupView];
    v25 = sub_10000C518(&unk_10092EEA0);
    (*(*(v25 - 8) + 56))(v21, 1, 1, v25);
    v26 = sub_100742E24();
    (*(*(v26 - 8) + 56))(v18, 1, 1, v26);
    v27 = sub_100745E94();
    (*(*(v27 - 8) + 56))(v15, 1, 1, v27);
    v28 = sub_10000C518(&unk_100925560);
    (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
    v29 = sub_10074F8B4();
    (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
    sub_100656038(v23, v24, v21, a2, 0, 0, v18, v15, v9, v12);
    sub_10000C8CC(v9, &unk_100925520);
    v24[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1001CE71C();
    [v24 setNeedsLayout];
    sub_10000C8CC(v12, &unk_100925990);
    sub_10000C8CC(v15, &unk_1009259A0);
    sub_10000C8CC(v18, &unk_100925530);
    sub_10000C8CC(v21, &unk_100925540);
    v30 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel;
    v31 = *&v24[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel];
    if (v31)
    {
      v32 = qword_1009215A0;
      v33 = v31;
      if (v32 != -1)
      {
        swift_once();
      }

      v34 = sub_100750534();
      v35 = sub_10000D0FC(v34, qword_100981E18);
      v36 = *(v34 - 8);
      (*(v36 + 16))(v6, v35, v34);
      (*(v36 + 56))(v6, 0, 1, v34);
      sub_100745BA4();

      v37 = *&v24[v30];
      if (v37)
      {
        v38 = objc_opt_self();
        v39 = v37;
        v40 = [v38 secondaryLabelColor];
        [v39 setTextColor:v40];

        v41 = *&v24[v30];
        if (v41)
        {
          v42 = [v41 layer];
          [v42 setCompositingFilter:kCAFilterPlusL];
        }
      }
    }

    [v44 setNeedsLayout];
  }

  return result;
}

void sub_100374808()
{
  v1 = sub_10074F314();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10074F284();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10074A4C4())
  {
    v6 = sub_10074EF64();

    if (v6)
    {
      sub_10074F294();
      v7 = sub_10074F254();
      (*(v3 + 8))(v5, v2);
      if (qword_100920548 != -1)
      {
        swift_once();
      }

      v8 = sub_100747064();
      sub_10000D0FC(v8, qword_10097E3A8);
      sub_100746F34();
      sub_10074F374();
      v9 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_smallLockupView);
      v10 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
      v11 = *(v9 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
      sub_10074F324();
      sub_100743364();
      [v11 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_100016C60(0, &qword_100923500);
        sub_100753E34();
      }

      sub_100743224();

      [*(v9 + v10) setContentMode:v7];
      v12 = *(v9 + v10);
      sub_1007433C4();
      sub_1003752E8(&qword_100925570, &type metadata accessor for ArtworkView);
      v13 = v12;
      sub_100744204();
    }
  }
}

id sub_100374AF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarouselItemLockupOverlay();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100374BC0(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_selectionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_selectionHandler);
  *v4 = a1;
  v4[1] = a2;
  sub_10001B5AC(a1);
  sub_10001B5AC(a1);
  sub_1000164A8(v5);
  v6 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_tapGestureRecognizer);
  if (a1)
  {
    sub_1000164A8(a1);
  }

  [v6 setEnabled:a1 != 0];

  return sub_1000164A8(a1);
}

void sub_100374C78()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_smallLockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  sub_1007433C4();
  sub_1003752E8(&qword_100925570, &type metadata accessor for ArtworkView);
  v2 = v1;
  sub_100744274();
}

double sub_100374D38(uint64_t a1, void *a2, double a3, double a4)
{
  v8 = sub_100751144();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v41[-v13];
  __chkstk_darwin(v15);
  v17 = &v41[-v16];
  __chkstk_darwin(v18);
  v20 = &v41[-v19];
  v21 = sub_100751104();
  v47[3] = v21;
  v47[4] = &protocol witness table for Center;
  v22 = sub_10000D134(v47);
  (*(*(v21 - 8) + 16))(v22, a1, v21);
  v23 = sub_10016D1E8(a3, a4);
  v24 = [a2 traitCollection];
  v25 = [v24 horizontalSizeClass];

  if (v25 == 2)
  {
    v26 = 635.0;
  }

  else
  {
    v26 = a3;
  }

  if (v26 <= v23)
  {
    sub_10000C824(v47, v43);
    *(v20 + 3) = &type metadata for CGFloat;
    *(v20 + 4) = &protocol witness table for CGFloat;
    *v20 = v26;
    v35 = *(v9 + 104);
    v35(v20, enum case for Resize.Rule.replaced(_:), v8);
    v36 = enum case for Resize.Rule.unchanged(_:);
    v35(v17, enum case for Resize.Rule.unchanged(_:), v8);
    v35(v14, v36, v8);
    v35(v11, v36, v8);
    v45 = sub_100751154();
    v46 = &protocol witness table for Resize;
    sub_10000D134(v44);
    sub_100751164();
  }

  else
  {
    sub_100750C24();
    v28 = v27;
    v30 = v29;
    sub_10000C824(v47, v43);
    sub_100750C24();
    v32 = v31;
    v34 = v33;
    v45 = sub_100751224();
    v46 = &protocol witness table for Constrain;
    sub_10000D134(v44);
    v42 = v32 & 1;
    v41[0] = v34 & 1;
    sub_100751234();
    v43[0] = v28 & 1;
    v42 = v30 & 1;
    sub_100750C44();
  }

  sub_10000C888(v44, v45);
  v37 = [a2 traitCollection];
  sub_100751254();
  v39 = v38;

  sub_10000C620(v44);
  sub_10000C620(v47);
  return v39;
}

void sub_100375144()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_materialBackground;
  *(v0 + v1) = [objc_allocWithZone(UIVisualEffectView) init];
  v2 = OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_smallLockupView;
  type metadata accessor for SmallLockupView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_tapGestureRecognizer;
  *(v0 + v3) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v4 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_selectionHandler);
  *v4 = 0;
  v4[1] = 0;
  sub_100754644();
  __break(1u);
}

BOOL sub_100375220(void *a1)
{
  v2 = [a1 touchesForView:*(*(v1 + OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_smallLockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton)];
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  sub_100016C60(0, &unk_100929820);
  sub_1000665E0();
  v4 = sub_100753484();

  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = sub_100754434();
  }

  else
  {
    v5 = *(v4 + 16);
  }

  return v5 == 0;
}

uint64_t sub_1003752E8(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_100375330()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyHeaderIconView_label;
  *&v0[v2] = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyHeaderIconView_backgroundView;
  *&v0[v3] = [objc_allocWithZone(UIView) init];
  v22.receiver = v0;
  v22.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v22, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyHeaderIconView_backgroundView;
  v6 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyHeaderIconView_backgroundView];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 systemBlueColor];
  [v8 setBackgroundColor:v9];

  v10 = [*&v4[v5] layer];
  [v10 setCornerRadius:20.0];

  v11 = [*&v4[v5] layer];
  [v11 setCornerCurve:kCACornerCurveCircular];

  [v4 addSubview:*&v4[v5]];
  v12 = OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyHeaderIconView_label;
  v13 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyHeaderIconView_label];
  v14 = [v7 whiteColor];
  [v13 setTextColor:v14];

  v15 = *&v4[v12];
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 systemFontOfSize:32.0];
  [v17 setFont:v18];

  v19 = *&v4[v12];
  v23._object = 0x8000000100778D30;
  v23._countAndFlagsBits = 0xD00000000000001FLL;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  sub_1007458B4(v23, v24);
  v20 = sub_100753064();

  [v19 setText:v20];

  [v4 addSubview:*&v4[v12]];
  return v4;
}

id sub_1003756B0()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyHeaderIconView_backgroundView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyHeaderIconView_label];
  [v2 sizeToFit];
  [v2 frame];
  Width = CGRectGetWidth(v6);
  [v2 frame];
  return [v2 setFrame:{20.0, 5.0, Width, CGRectGetHeight(v7)}];
}

id sub_1003759DC(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyViewController_adPrivacyHeaderIconView;
  *&v5[v11] = [objc_allocWithZone(type metadata accessor for OnboardingAdPrivacyHeaderIconView()) init];
  v5[OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyViewController_buttonsStyle] = a1 & 1;
  v12 = &v5[OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyViewController_buttonsCallback];
  *v12 = a3;
  v12[1] = a4;

  v19._object = 0x8000000100778DE0;
  v19._countAndFlagsBits = 0xD000000000000025;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  sub_1007458B4(v19, v20);
  sub_100748984();
  v13 = sub_100753064();

  v14 = sub_100753064();

  v18.receiver = v5;
  v18.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v18, "initWithTitle:detailText:icon:contentLayout:", v13, v14, 0, 2);

  v16 = v15;
  [v16 setModalInPresentation:1];
  [v16 setDisableButtonsUntilAllContentWasVisable:a2 & 1];

  return v16;
}

void sub_100375B74()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v53 = sub_100752AC4();
  v50 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&qword_100932470);
  __chkstk_darwin(v4 - 8);
  v6 = &v46 - v5;
  v7 = sub_1007541F4();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58.receiver = v1;
  v58.super_class = ObjectType;
  objc_msgSendSuper2(&v58, "viewDidLoad", v9);
  v12 = [v1 headerView];
  LODWORD(v13) = 1036831949;
  [v12 setTitleHyphenationFactor:v13];

  v14 = [v1 headerView];
  v15 = [v14 customIconContainerView];

  if (v15)
  {
    [v15 addSubview:*&v1[OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyViewController_adPrivacyHeaderIconView]];
  }

  v16 = [objc_opt_self() accessoryButton];
  v59._countAndFlagsBits = 0xD00000000000002ALL;
  v59._object = 0x8000000100778EB0;
  v62._countAndFlagsBits = 0;
  v62._object = 0xE000000000000000;
  sub_1007458B4(v59, v62);
  v17 = sub_100753064();

  [v16 setTitle:v17 forState:0];

  [v16 addTarget:v1 action:"didTapLearnMore" forControlEvents:64];
  v18 = v16;
  v19 = sub_100753064();
  [v18 setAccessibilityIdentifier:v19];

  v20 = [v1 headerView];
  v51 = v18;
  [v20 addAccessoryButton:v18];

  v21 = v1[OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyViewController_buttonsStyle];
  v22 = objc_opt_self();
  v23 = [v22 boldButton];
  v24 = v23;
  if (v21)
  {
    v25 = objc_opt_self();
    v26 = v24;
    v27 = [v25 linkButton];
  }

  else
  {
    v48 = v23;
    v47 = [v22 boldButton];
    sub_100754174();
    v28 = objc_opt_self();
    v29 = [v28 systemBlueColor];
    sub_100754124();
    v30 = [v28 systemGray5Color];
    v31 = sub_100754034();
    sub_1007515C4();
    v31(&v56, 0);
    v32 = *(v8 + 16);
    v32(v6, v11, v7);
    v49 = v1;
    v33 = v24;
    v34 = *(v8 + 56);
    v34(v6, 0, 1, v7);
    v35 = v48;
    sub_100754224();

    v32(v6, v11, v7);
    v34(v6, 0, 1, v7);
    v24 = v33;
    v1 = v49;
    v36 = v47;
    sub_100754224();
    v27 = v36;

    (*(v8 + 8))(v11, v7);
  }

  v37 = v24;
  v60._countAndFlagsBits = 0xD000000000000027;
  v60._object = 0x8000000100778F10;
  v63._countAndFlagsBits = 0;
  v63._object = 0xE000000000000000;
  sub_1007458B4(v60, v63);
  v38 = sub_100753064();

  [v37 setTitle:v38 forState:0];

  [v37 addTarget:v1 action:"didTapTurnOn" forControlEvents:64];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v39 = v52;
  sub_100752A14();
  sub_1000277BC(&v54);
  sub_1000277BC(&v56);
  sub_100753C74();

  v40 = *(v50 + 8);
  v41 = v53;
  v40(v39, v53);
  v42 = [v1 buttonTray];
  [v42 addButton:v37];

  v43 = v27;
  v61._countAndFlagsBits = 0xD000000000000028;
  v61._object = 0x8000000100778F40;
  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  sub_1007458B4(v61, v64);
  v44 = sub_100753064();

  [v43 setTitle:v44 forState:0];

  [v43 addTarget:v1 action:"didTapTurnOff" forControlEvents:64];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  sub_100752A14();
  sub_1000277BC(&v54);
  sub_1000277BC(&v56);
  sub_100753C74();

  v40(v39, v41);
  v45 = [v1 buttonTray];
  [v45 addButton:v43];
}

uint64_t sub_10037635C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1007521E4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100752224();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "viewDidLayoutSubviews", v9);
  sub_10037660C();
  sub_1000A7FA0();
  v12 = sub_100753774();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100376D30;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_100872C50;
  v14 = _Block_copy(aBlock);

  sub_100752204();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002DCDC();
  sub_10000C518(&unk_10092F750);
  sub_1000A8054();
  sub_1007543A4();
  sub_100753784();
  _Block_release(v14);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v11, v7);
}

void sub_10037660C()
{
  v1 = v0;
  v2 = sub_100754724();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 headerView];
  v8 = [v7 customIconContainerView];

  if (v8)
  {
    v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyViewController_adPrivacyHeaderIconView];
    [v8 bounds];
    v10 = OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyHeaderIconView_label;
    [*&v9[OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyHeaderIconView_label] sizeToFit];
    [*&v9[v10] frame];
    (*(v3 + 104))(v6, enum case for FloatingPointRoundingRule.up(_:), v2);
    sub_100753B84();
    v12 = v11;
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    [v8 bounds];
    v15 = CGRectGetMidX(v17) - v12 * 0.5;
    [v8 bounds];
    [v9 setFrame:{v15, CGRectGetMidY(v18) - v14 * 0.5, v12, v14}];
  }
}

void sub_100376810()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  MidX = 0.0;
  if (Strong && (v2 = Strong, v3 = [Strong headerView], v2, v4 = objc_msgSend(v3, "customIconContainerView"), v3, v4))
  {
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v28.origin.x = v6;
    v28.origin.y = v8;
    v28.size.width = v10;
    v28.size.height = v12;
    MidX = CGRectGetMidX(v28);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (!v14)
  {
    if (v13)
    {
      return;
    }

    goto LABEL_12;
  }

  v15 = v14;
  v16 = *(v14 + OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyViewController_adPrivacyHeaderIconView);

  [v16 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v29.origin.x = v18;
  v29.origin.y = v20;
  v29.size.width = v22;
  v29.size.height = v24;
  if (MidX == CGRectGetMidX(v29))
  {
    v25 = v13;
  }

  else
  {
    v25 = 1;
  }

  if (v25 == 1)
  {
LABEL_12:
    swift_beginAccess();
    v26 = swift_unknownObjectWeakLoadStrong();
    if (v26)
    {
      v27 = v26;
      sub_10037660C();
    }
  }
}

void sub_100376A74()
{
  v1 = sub_100753064();
  v2 = [objc_opt_self() presenterForPrivacySplashWithIdentifier:v1];

  if (v2)
  {
    [v2 setPresentingViewController:v0];
  }

  [v2 present];
}

uint64_t sub_100376CF8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100376D38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100376D50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100376D98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_100376E00(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = sub_100753094();
  v6 = v5;
  if (v4 == sub_100753094() && v6 == v7)
  {

    return v2 == v3;
  }

  v9 = sub_100754754();

  result = 0;
  if (v9)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_100376EB4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100750A34();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100750A04();
  sub_1000746BC(v2, &v15);
  if (*(&v16 + 1))
  {
    sub_100012160(&v15, v21);
    sub_100377278(v2, &v15);
    v8 = swift_allocObject();
    v9 = v18;
    v8[3] = v17;
    v8[4] = v9;
    v10 = v20;
    v8[5] = v19;
    v8[6] = v10;
    v11 = v16;
    v8[1] = v15;
    v8[2] = v11;
    sub_1007509F4();

    sub_10000C620(v21);
  }

  else
  {
    sub_10007485C(&v15);
  }

  sub_1007509F4();
  a1[3] = v4;
  a1[4] = &protocol witness table for HorizontalStack;
  v12 = sub_10000D134(a1);
  return (*(v5 + 32))(v12, v7, v4);
}

double sub_10037706C()
{
  sub_100376EB4(v3);
  sub_10000C888(v3, v3[3]);
  sub_100751254();
  v1 = ceil(v0);
  sub_100220598(v3);
  return v1;
}

uint64_t sub_100377110()
{
  sub_100376EB4(v1);
  sub_10000C888(v1, v1[3]);
  sub_100751244();
  return sub_100220598(v1);
}

uint64_t sub_1003771AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100377350();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, v4);
}

unint64_t sub_100377208()
{
  result = qword_100934438;
  if (!qword_100934438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100934438);
  }

  return result;
}

uint64_t sub_1003772B0()
{
  if (*(v0 + 40))
  {
    sub_10000C620(v0 + 16);
  }

  sub_10000C620(v0 + 56);

  return _swift_deallocObject(v0, 112, 7);
}

unint64_t sub_100377350()
{
  result = qword_100934440;
  if (!qword_100934440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100934440);
  }

  return result;
}

void sub_1003773B8()
{
  if (*(v0 + 24) == 1 && (v1 = *(v0 + 16)) != 0 && ([v1 _manualScrollEdgeAppearanceProgress], v2 >= 1.0))
  {
    v3 = (v0 + 25);
    v13 = *(v0 + 25);
    *(v0 + 25) = 1;
    if (v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = (v0 + 25);
    v4 = *(v0 + 25);
    *(v0 + 25) = 0;
    if ((v4 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v5 = *(v0 + 16);
  if (!v5 || (v6 = [v5 rightBarButtonItems]) == 0)
  {
LABEL_16:
    v14 = *(v0 + 16);
    if (v14)
    {
      goto LABEL_17;
    }

    return;
  }

  v7 = v6;
  sub_1003777E0();
  v8 = sub_1007532A4();

  if (v8 >> 62)
  {
    goto LABEL_31;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9)
  {
LABEL_9:
    if (v9 >= 1)
    {
      for (i = 0; i != v9; ++i)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = sub_100754574();
        }

        else
        {
          v11 = *(v8 + 8 * i + 32);
        }

        v12 = v11;
        [v11 setHidden:*v3];
      }

      goto LABEL_32;
    }

    __break(1u);
  }

  else
  {
LABEL_32:
    while (1)
    {

      v14 = *(v0 + 16);
      if (!v14)
      {
        break;
      }

LABEL_17:
      v15 = [v14 rightBarButtonItems];
      if (!v15)
      {
        return;
      }

      v16 = v15;
      sub_1003777E0();
      v8 = sub_1007532A4();

      if (v8 >> 62)
      {
        v0 = sub_100754664();
        if (!v0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v0 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v0)
        {
          goto LABEL_27;
        }
      }

      if (v0 >= 1)
      {
        for (j = 0; j != v0; ++j)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v18 = sub_100754574();
          }

          else
          {
            v18 = *(v8 + 8 * j + 32);
          }

          v19 = v18;
          [v18 setHidden:*v3];
        }

LABEL_27:

        return;
      }

      __break(1u);
LABEL_31:
      v9 = sub_100754664();
      if (v9)
      {
        goto LABEL_9;
      }
    }
  }
}

uint64_t sub_100377608()
{

  return swift_deallocClassInstance();
}

void sub_100377668()
{
  if (*(v0 + 24) == 1)
  {
    v1 = *(v0 + 16);
    if (v1 && ([v1 _manualScrollEdgeAppearanceProgress], v2 >= 1.0))
    {
      v4 = *(v0 + 25);
      *(v0 + 25) = 1;
      if (v4)
      {
        return;
      }
    }

    else
    {
      v3 = *(v0 + 25);
      *(v0 + 25) = 0;
      if ((v3 & 1) == 0)
      {
        return;
      }
    }

    v5 = (v0 + 25);
    v6 = *(v0 + 16);
    if (v6)
    {
      v7 = [v6 rightBarButtonItems];
      if (v7)
      {
        v8 = v7;
        sub_1003777E0();
        v9 = sub_1007532A4();

        if (v9 >> 62)
        {
          v10 = sub_100754664();
          if (v10)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v10)
          {
LABEL_11:
            if (v10 < 1)
            {
              __break(1u);
              return;
            }

            for (i = 0; i != v10; ++i)
            {
              if ((v9 & 0xC000000000000001) != 0)
              {
                v12 = sub_100754574();
              }

              else
              {
                v12 = *(v9 + 8 * i + 32);
              }

              v13 = v12;
              [v12 setHidden:*v5];
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1003777E0()
{
  result = qword_100925250;
  if (!qword_100925250)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100925250);
  }

  return result;
}

uint64_t sub_10037788C@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  PageTraitEnvironment.pageColumnMargin.getter();
  sub_10074A254();
  v2 = sub_10074A274();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_1003779E4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100377A2C()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100929420);
  __chkstk_darwin(v2 - 8);
  v62 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v61 - v5;
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v8 = v7;
  PageTraitEnvironment.pageColumnMargin.getter();
  v10 = (v8 - v9) * 0.5;
  v11 = &v0[OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_preferredArtworkSize];
  *v11 = v10;
  v11[1] = v10;
  [v0 setNeedsLayout];
  v12 = sub_10074EF74();
  if (v13)
  {
    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      sub_100016C60(0, &qword_100923500);
      v15 = sub_100753DD4();
      sub_100252DE4(1, v15);

      v16 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_headingLabel];
      if (v16)
      {
        v17 = v16;
        v18 = sub_100753064();

        [v17 setText:v18];
      }

      else
      {
      }

      goto LABEL_11;
    }
  }

  v19 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_headingLabel];
  if (v19)
  {
    [v19 setHidden:1];
  }

LABEL_11:
  v20 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_titleLabel];
  sub_10074EF34();
  if (v21)
  {
    v22 = sub_100753064();
  }

  else
  {
    v22 = 0;
  }

  [v20 setText:v22];

  sub_10074EE14();
  if (v23)
  {
    sub_100253094();
    v24 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_tertiaryTitleLabel];
    if (v24)
    {
      v25 = v24;
      v26 = sub_100753064();

      [v25 setText:v26];
    }

    else
    {
    }
  }

  else
  {
    v27 = OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_tertiaryTitleLabel;
    v28 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_tertiaryTitleLabel];
    if (v28)
    {
      [v28 setHidden:1];
      v29 = *&v1[v27];
      if (v29)
      {
        [v29 setText:0];
      }
    }
  }

  v30 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_subtitleLabel];
  sub_10074EFB4();
  if (v31)
  {
    v32 = sub_100753064();
  }

  else
  {
    v32 = 0;
  }

  [v30 setText:v32];

  v33 = OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_headingLabel;
  v34 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_headingLabel];
  if (v34 && ([v34 isHidden] & 1) == 0 && (v35 = *&v1[v33]) != 0)
  {
    v36 = [v35 hasContent];
  }

  else
  {
    v36 = 0;
  }

  v37 = OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_tertiaryTitleLabel;
  v38 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_tertiaryTitleLabel];
  if (v38 && ([v38 isHidden] & 1) == 0 && (v39 = *&v1[v37]) != 0)
  {
    v40 = [v39 hasContent];
  }

  else
  {
    v40 = 0;
  }

  if ([v30 hasContent])
  {
    v41 = v40 & v36;
  }

  else
  {
    v41 = 1;
  }

  [v30 setHidden:v41];
  v42 = sub_10074EEA4();
  if (!v42)
  {
    sub_100016C60(0, &qword_100923500);
    v42 = sub_100753DF4();
  }

  v43 = v42;
  [v30 setTextColor:v42];

  v44 = &stru_1008F2000;
  v45 = [v30 layer];
  sub_10074EEB4();
  v46 = sub_1007497F4();
  v47 = *(v46 - 8);
  v48 = *(v47 + 48);
  if (v48(v6, 1, v46) == 1)
  {
    sub_100378094(v6);
LABEL_43:
    v55 = 0;
    goto LABEL_44;
  }

  sub_1007497E4();
  (*(v47 + 8))(v6, v46);
  v49 = v64;
  if (!v64)
  {
    goto LABEL_43;
  }

  v50 = sub_10000C888(v63, v64);
  v61 = &v61;
  v51 = *(v49 - 8);
  v52 = __chkstk_darwin(v50);
  v54 = &v61 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v51 + 16))(v54, v52);
  v55 = sub_100754734();
  (*(v51 + 8))(v54, v49);
  v44 = &stru_1008F2000;
  sub_10000C620(v63);
LABEL_44:
  [v45 setCompositingFilter:{v55, v61}];

  swift_unknownObjectRelease();
  v56 = [v1 contentView];
  v57 = [v56 v44[67].name];

  v58 = v62;
  sub_10074EEB4();
  v59 = v48(v58, 1, v46) == 1;
  sub_100378094(v58);
  [v57 setAllowsGroupBlending:v59];

  return [v1 setNeedsLayout];
}

uint64_t sub_100378094(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100929420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1003780FC()
{
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  PageTraitEnvironment.pageColumnMargin.getter();
  sub_100253750();
  v1 = v0;
  v3 = v2;
  v4 = objc_opt_self();
  v5 = [v4 absoluteDimension:v1];
  v6 = [v4 absoluteDimension:v3];
  v7 = objc_opt_self();
  v8 = [v7 sizeWithWidthDimension:v5 heightDimension:v6];

  v9 = [objc_opt_self() itemWithLayoutSize:v8];
  v10 = [v8 widthDimension];
  v11 = [v8 heightDimension];
  v12 = [v7 sizeWithWidthDimension:v10 heightDimension:v11];

  v13 = objc_opt_self();
  sub_10000C518(&unk_1009231A0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1007A5CF0;
  *(v14 + 32) = v9;
  sub_100016C60(0, &qword_100923478);
  v15 = v9;
  isa = sub_100753294().super.isa;

  v17 = [v13 verticalGroupWithLayoutSize:v12 subitems:isa];

  return v17;
}

double sub_10037838C()
{
  v1 = sub_10074F704();
  v20 = *(v1 - 8);
  v21 = v1;
  __chkstk_darwin(v1);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&qword_100933270);
  v22 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v19 - v5;
  v7 = sub_10000C518(&qword_10092ADB0);
  __chkstk_darwin(v7 - 8);
  v9 = v19 - v8;
  v10 = sub_100742BB4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100378758(&qword_100934548, &type metadata accessor for Annotation);
  sub_1007468B4();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100185A2C(v9);
    return 0.0;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_100349280();
    sub_1007468E4();
    sub_100752E84();
    v19[1] = v0;
    if (v23)
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_100742B74();
    }

    swift_getKeyPath();
    sub_100746914();

    sub_10074F674();
    (*(v20 + 8))(v3, v21);
    v16 = sub_10007DC04();
    swift_getObjectType();
    sub_10027B8E4(v13, v15 & 1, v16);
    v14 = v17;
    swift_unknownObjectRelease();
    (*(v22 + 8))(v6, v4);
    (*(v11 + 8))(v13, v10);
  }

  return v14;
}

uint64_t sub_100378758(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003787A4(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
  }

  else
  {
    v3 = [a1 tabBarController];
    if (!v3)
    {
LABEL_10:
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v8 = v11;
        v12 = a1;
      }

      else
      {
        v8 = [a1 navigationController];
        if (!v8)
        {
          v13 = 0;
          goto LABEL_19;
        }
      }

      goto LABEL_13;
    }
  }

  v5 = [v3 selectedViewController];
  if (v5)
  {
    v6 = v5;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      goto LABEL_13;
    }
  }

  v9 = [v3 selectedViewController];
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v8 = [v9 navigationController];

  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_13:
  v13 = [v8 presentedViewController];
  if (v13)
  {
    type metadata accessor for PresentationContextViewController();
    v14 = swift_dynamicCastClass();
    if (!v14 || (v15 = [v14 presentedViewController], v13, (v13 = v15) != 0))
    {
      v16 = v13;
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (!v13)
      {
      }

      goto LABEL_20;
    }
  }

LABEL_19:
  v16 = 0;
LABEL_20:
  v35[0] = v16;
  v35[1] = v13;
  v35[2] = v8;
  v35[3] = a1;
  v17 = v8;
  v18 = a1;
  v34 = v16;
  result = v13;
  v20 = result;
  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
  do
  {
    if (v21 <= 4)
    {
      v23 = 4;
    }

    else
    {
      v23 = v21;
    }

    v24 = v21;
    while (1)
    {
      if (v23 == v24)
      {
        __break(1u);
        return result;
      }

      v25 = v35[v24];
      if (v25)
      {
        swift_getObjectType();
        result = swift_conformsToProtocol2();
        if (result)
        {
          break;
        }
      }

      if (++v24 == 4)
      {
        goto LABEL_34;
      }
    }

    v33 = v20;
    v26 = result;
    v32 = v25;
    result = swift_isUniquelyReferenced_nonNull_native();
    v27 = v3;
    if ((result & 1) == 0)
    {
      result = sub_100255894(0, v22[2] + 1, 1, v22);
      v22 = result;
    }

    v29 = v22[2];
    v28 = v22[3];
    if (v29 >= v28 >> 1)
    {
      result = sub_100255894((v28 > 1), v29 + 1, 1, v22);
      v22 = result;
    }

    v21 = v24 + 1;
    v22[2] = v29 + 1;
    v30 = &v22[2 * v29];
    v30[4] = v32;
    v30[5] = v26;
    v3 = v27;
    v20 = v33;
  }

  while (v24 != 3);
LABEL_34:
  sub_10000C518(&qword_100934550);
  swift_arrayDestroy();
  if (v22[2])
  {
    v31 = v22[4];

    v8 = *&v31[OBJC_IVAR____TtC22SubscribePageExtension30ArticleContainerViewController_wrapperViewController];
  }

  else
  {

    if (v13)
    {

      return v13;
    }
  }

  return v8;
}

unint64_t sub_100378B58(void *a1)
{
  v1 = sub_1003787A4(a1);
  if (!v1)
  {
LABEL_12:

    return a1;
  }

  v2 = v1;
  v3 = [v1 viewControllers];

  sub_100032B70();
  v4 = sub_1007532A4();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v5 = sub_100754664();
  if (!v5)
  {
LABEL_11:

    goto LABEL_12;
  }

LABEL_4:
  v6 = __OFSUB__(v5, 1);
  result = v5 - 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_16:
    v8 = sub_100754574();
    goto LABEL_9;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v4 + 8 * result + 32);
LABEL_9:
    v9 = v8;

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_100378C70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v30 = a2;
  v4 = sub_10000C518(&unk_100933200);
  __chkstk_darwin(v4 - 8);
  v6 = (v29 - v5);
  v7 = sub_10074E6B4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v29 - v12;
  v14 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_titleLabel];
  sub_10074D664();
  v15 = sub_100753064();

  [v14 setText:v15];

  sub_10074D644();
  (*(v8 + 104))(v10, enum case for ArcadeDownloadPackSuggestionsPagePrimaryActionKind.getAll(_:), v7);
  sub_10037A5C0();
  v16 = sub_100753014();
  v17 = *(v8 + 8);
  v17(v10, v7);
  v17(v13, v7);
  if ((v16 & 1) != 0 || (v18 = sub_10074D614()) == 0)
  {
    v21 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);
    (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
  }

  else
  {
    v19 = v18;
    v20 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);

    sub_10074D634();
    *v6 = v19;
    (*(*(v20 - 8) + 56))(v6, 0, 1, v20);
  }

  v22 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_gamesView];
  v23 = sub_10074D604();
  v24 = v23;
  if (!(v23 >> 62))
  {
    v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_7;
    }

LABEL_15:

    v28 = _swiftEmptyArrayStorage;
LABEL_16:
    sub_100669490(v28, v6, 0, v30);

    [v3 setNeedsLayout];
    [v3 invalidateIntrinsicContentSize];
    sub_100379D9C();

    return sub_100038618(v6);
  }

  v25 = sub_100754664();
  if (!v25)
  {
    goto LABEL_15;
  }

LABEL_7:
  v31 = _swiftEmptyArrayStorage;
  result = sub_1007545C4();
  if ((v25 & 0x8000000000000000) == 0)
  {
    v29[1] = v22;
    v27 = 0;
    do
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        sub_100754574();
      }

      else
      {
      }

      ++v27;

      sub_10074C504();

      sub_1007545A4();
      sub_1007545D4();
      sub_1007545E4();
      sub_1007545B4();
    }

    while (v25 != v27);

    v28 = v31;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id sub_100379088()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:150.0 damping:25.0 initialVelocity:{0.0, 0.0}];
  qword_100934558 = result;
  return result;
}

char *sub_1003790D8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_10074AB44();
  v60 = *(v8 - 8);
  v61 = v8;
  __chkstk_darwin(v8);
  v62 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v10 - 8);
  v59 = &v53 - v11;
  v57 = sub_1007441C4();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v58 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100750304();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_100750B04();
  v17 = *(v56 - 8);
  __chkstk_darwin(v56);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000C518(&qword_10093F5C0);
  __chkstk_darwin(v20 - 8);
  v22 = &v53 - v21;
  v54 = OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_wordmarkView;
  v23 = enum case for Wordmark.arcade(_:);
  v24 = sub_10074F7B4();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v22, v23, v24);
  (*(v25 + 56))(v22, 0, 1, v24);
  if (qword_100921510 != -1)
  {
    swift_once();
  }

  v26 = sub_100750534();
  v53 = sub_10000D0FC(v26, qword_100981C68);
  v27 = *(v26 - 8);
  v28 = *(v27 + 16);
  v28(v16, v53, v26);
  (*(v14 + 104))(v16, enum case for FontSource.useCase(_:), v13);
  v67 = v13;
  v68 = &protocol witness table for FontSource;
  v29 = sub_10000D134(v66);
  (*(v14 + 16))(v29, v16, v13);
  sub_100750B14();
  (*(v14 + 8))(v16, v13);
  (*(v55 + 104))(v58, enum case for WordmarkView.Alignment.leading(_:), v57);
  v30 = v56;
  v67 = v56;
  v68 = &protocol witness table for StaticDimension;
  v31 = sub_10000D134(v66);
  (*(v17 + 16))(v31, v19, v30);
  v32 = objc_allocWithZone(sub_1007441E4());
  v33 = sub_1007441B4();
  (*(v17 + 8))(v19, v30);
  v34 = v63;
  *(v63 + v54) = v33;
  v35 = OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_titleLabel;
  v36 = v59;
  v28(v59, v53, v26);
  (*(v27 + 56))(v36, 0, 1, v26);
  (*(v60 + 104))(v62, enum case for DirectionalTextAlignment.none(_:), v61);
  v37 = objc_allocWithZone(sub_100745C84());
  *&v34[v35] = sub_100745C74();
  v38 = OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_gamesView;
  type metadata accessor for ArcadeDownloadPackGamesCardView(0);
  *&v34[v38] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v39 = &v34[OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_impressionsUpdateBlock];
  *v39 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  *(v39 + 1) = 0;
  v40 = ObjectType;
  v65.receiver = v34;
  v65.super_class = ObjectType;
  v41 = objc_msgSendSuper2(&v65, "initWithFrame:", a1, a2, a3, a4);
  v42 = *&v41[OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_wordmarkView];
  v43 = v41;
  [v43 addSubview:v42];
  v44 = OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_titleLabel;
  [v43 addSubview:*&v43[OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_titleLabel]];
  [v43 addSubview:*&v43[OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_gamesView]];
  [*&v43[v44] setTextAlignment:1];
  [*&v43[v44] setNumberOfLines:0];
  v45 = *&v43[v44];
  v46 = [v43 traitCollection];
  v47 = [v46 preferredContentSizeCategory];

  LOBYTE(v46) = sub_100753924();
  if (v46)
  {
    v48 = 4;
  }

  else
  {
    v48 = 1;
  }

  [v45 setTextAlignment:{v48, v53}];
  sub_10000C518(&unk_1009249D0);
  v49 = swift_allocObject();
  v63 = xmmword_1007A5A00;
  *(v49 + 16) = xmmword_1007A5A00;
  *(v49 + 32) = sub_1007519E4();
  *(v49 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v67 = v40;
  v66[0] = v43;
  v50 = v43;
  sub_100753D34();
  swift_unknownObjectRelease();

  sub_10000C620(v66);
  v51 = swift_allocObject();
  *(v51 + 16) = v63;
  *(v51 + 32) = sub_1007516F4();
  *(v51 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v67 = v40;
  v66[0] = v50;
  sub_100753D34();
  swift_unknownObjectRelease();

  sub_10000C620(v66);
  return v50;
}

uint64_t sub_100379970@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1007507B4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v21 - v8;
  __chkstk_darwin(v10);
  v12 = v21 - v11;
  *(swift_allocObject() + 16) = v1;
  v13 = v1;
  sub_100750794();
  v24 = *&v13[OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_wordmarkView];
  sub_1007441E4();
  sub_100750434();
  sub_1007507A4();
  sub_10000C620(v21);
  v14 = *(v4 + 8);
  v14(v6, v3);
  v15 = *&v13[OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_titleLabel];
  v22 = sub_100745C84();
  v23 = &protocol witness table for UILabel;
  v21[0] = v15;
  *(swift_allocObject() + 16) = v13;
  v16 = v13;
  v17 = v15;
  sub_1007507A4();

  v14(v9, v3);
  sub_10000C620(v21);
  v18 = *&v16[OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_gamesView];
  v22 = type metadata accessor for ArcadeDownloadPackGamesCardView(0);
  v23 = &protocol witness table for CustomLayoutView;
  v21[0] = v18;
  a1[3] = v3;
  a1[4] = &protocol witness table for VerticalStack;
  sub_10000D134(a1);
  v19 = v18;
  sub_1007507A4();
  v14(v12, v3);
  return sub_10000C620(v21);
}

uint64_t sub_100379C34(int a1, id a2)
{
  v2 = [a2 traitCollection];
  sub_1007537B4();

  return sub_100750724();
}

void sub_100379D9C()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_gamesView];
  CGAffineTransformMakeScale(&v6, 0.9, 0.9);
  [v1 setTransform:&v6];
  if (qword_100920A28 != -1)
  {
    swift_once();
  }

  v2 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_100934558 timingParameters:0.0];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *&v6.tx = sub_10037A650;
  *&v6.ty = v3;
  *&v6.a = _NSConcreteStackBlock;
  *&v6.b = 1107296256;
  *&v6.c = sub_1000CF7B0;
  *&v6.d = &unk_100872E48;
  v4 = _Block_copy(&v6);
  v5 = v0;

  [v2 addAnimations:v4];
  _Block_release(v4);
  [v2 startAnimation];
  sub_10066A534();
}

uint64_t sub_100379FF0()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "layoutSubviews");
  sub_100379970(v5);
  sub_10000C888(v5, v5[3]);
  [v0 bounds];
  v1 = [v0 traitCollection];
  sub_100751244();

  sub_10000C620(v5);
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_impressionsUpdateBlock];

  v2(v3);
}

id sub_10037A198()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_titleLabel];
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = sub_100753924();
  if (v2)
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  [v1 setTextAlignment:v4];
  [v0 setNeedsLayout];

  return [v0 invalidateIntrinsicContentSize];
}

uint64_t sub_10037A2A0(uint64_t a1)
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 2) = v4;
  *(v5 + 3) = v3;
  *(v5 + 4) = a1;
  v6 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_impressionsUpdateBlock);
  *v6 = sub_10037A73C;
  v6[1] = v5;

  v7 = *v6;

  (v7)(v8);
}

void sub_10037A3B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_gamesView);

      v9 = v5;
      sub_100677A8C(v8, a3, v9);
    }
  }
}

double sub_10037A514()
{
  sub_100379970(v3);
  sub_10000C888(v3, v3[3]);
  sub_100751254();
  v1 = v0;
  sub_10000C620(v3);
  return v1;
}

unint64_t sub_10037A5C0()
{
  result = qword_1009345A8;
  if (!qword_1009345A8)
  {
    sub_10074E6B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009345A8);
  }

  return result;
}

uint64_t sub_10037A618()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10037A650()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_gamesView);
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform:v3];
}

uint64_t sub_10037A69C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10037A6BC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10037A6F4()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10037A748()
{
  v0 = sub_10074AB44();
  v40 = *(v0 - 8);
  v41 = v0;
  __chkstk_darwin(v0);
  v42 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v2 - 8);
  v39 = &v33 - v3;
  v37 = sub_1007441C4();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100750304();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_100750B04();
  v9 = *(v36 - 8);
  __chkstk_darwin(v36);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&qword_10093F5C0);
  __chkstk_darwin(v12 - 8);
  v14 = &v33 - v13;
  v34 = OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_wordmarkView;
  v15 = enum case for Wordmark.arcade(_:);
  v16 = sub_10074F7B4();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v14, v15, v16);
  (*(v17 + 56))(v14, 0, 1, v16);
  if (qword_100921510 != -1)
  {
    swift_once();
  }

  v18 = sub_100750534();
  v33 = sub_10000D0FC(v18, qword_100981C68);
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v20(v8, v33, v18);
  (*(v6 + 104))(v8, enum case for FontSource.useCase(_:), v5);
  v45 = v5;
  v46 = &protocol witness table for FontSource;
  v21 = sub_10000D134(v44);
  (*(v6 + 16))(v21, v8, v5);
  sub_100750B14();
  (*(v6 + 8))(v8, v5);
  (*(v35 + 104))(v38, enum case for WordmarkView.Alignment.leading(_:), v37);
  v22 = v36;
  v45 = v36;
  v46 = &protocol witness table for StaticDimension;
  v23 = sub_10000D134(v44);
  (*(v9 + 16))(v23, v11, v22);
  v24 = objc_allocWithZone(sub_1007441E4());
  v25 = sub_1007441B4();
  (*(v9 + 8))(v11, v22);
  v26 = v43;
  v27 = v33;
  *(v43 + v34) = v25;
  v28 = OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_titleLabel;
  v29 = v39;
  v20(v39, v27, v18);
  (*(v19 + 56))(v29, 0, 1, v18);
  (*(v40 + 104))(v42, enum case for DirectionalTextAlignment.none(_:), v41);
  v30 = objc_allocWithZone(sub_100745C84());
  *(v26 + v28) = sub_100745C74();
  v31 = OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_gamesView;
  type metadata accessor for ArcadeDownloadPackGamesCardView(0);
  *(v26 + v31) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v32 = (v26 + OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_impressionsUpdateBlock);
  *v32 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v32[1] = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_10037AD8C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1007504F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_getObjectType();
    PageTraitEnvironment.pageColumnWidth.getter();
  }

  if (qword_100920960 != -1)
  {
    swift_once();
  }

  v8 = sub_100747674();
  sub_10000D0FC(v8, qword_10097FA38);
  sub_100747664();
  sub_1007504C4();
  (*(v5 + 8))(v7, v4);
  sub_10074A254();
  v9 = sub_10074A274();
  return (*(*(v9 - 8) + 56))(a2, 0, 1, v9);
}

void sub_10037AF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_10074EDC4();
    if (v9)
    {
      v10 = v9;
      v11 = sub_10000C518(&unk_100923210);
      sub_1007526C4();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v6, 1, v11) == 1)
      {

        sub_10000C8CC(v6, &unk_100923960);
      }

      else
      {
        sub_1003C0E00(v10, 1, a3, v6);

        (*(v12 + 8))(v6, v11);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_10037B0DC()
{
  if (qword_100920960 != -1)
  {
    swift_once();
  }

  v0 = sub_100747674();
  sub_10000D0FC(v0, qword_10097FA38);
  sub_100747694();
  sub_10037C6B0(&qword_100933258, &type metadata accessor for FlowcaseItemLayout);
  sub_100750D34();
  if (qword_100920968 != -1)
  {
    swift_once();
  }

  v1 = sub_100751374();
  sub_10000D0FC(v1, qword_10097FA50);

  return sub_100753BD4();
}

id sub_10037B2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v175 = a3;
  v172 = sub_100746BA4();
  v174 = *(v172 - 8);
  __chkstk_darwin(v172);
  v166 = &v156 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v165 = &v156 - v8;
  v9 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v9 - 8);
  v157 = &v156 - v10;
  v167 = sub_10074ED34();
  v164 = *(v167 - 8);
  __chkstk_darwin(v167);
  v158 = &v156 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v156 - v13;
  v15 = sub_10000C518(&unk_100925520);
  __chkstk_darwin(v15 - 8);
  v162 = &v156 - v16;
  v17 = sub_10000C518(&unk_100925990);
  __chkstk_darwin(v17 - 8);
  v171 = &v156 - v18;
  v19 = sub_10000C518(&unk_1009259A0);
  __chkstk_darwin(v19 - 8);
  v170 = &v156 - v20;
  v21 = sub_10000C518(&unk_100925530);
  __chkstk_darwin(v21 - 8);
  v169 = &v156 - v22;
  v23 = sub_10000C518(&unk_1009259B0);
  __chkstk_darwin(v23 - 8);
  v161 = &v156 - v24;
  v25 = sub_10074D734();
  v159 = *(v25 - 8);
  __chkstk_darwin(v25);
  v160 = &v156 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v27 - 8);
  v173 = (&v156 - v28);
  v29 = sub_10000C518(&qword_100933090);
  __chkstk_darwin(v29 - 8);
  v31 = &v156 - v30;
  v32 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_captionLabel];
  sub_1007443B4();
  if (v33)
  {
    v34 = sub_100753064();
  }

  else
  {
    v34 = 0;
  }

  [v32 setText:v34];

  v35 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_titleLabel];
  sub_100744384();
  if (v36)
  {
    v37 = sub_100753064();
  }

  else
  {
    v37 = 0;
  }

  [v35 setText:v37];

  v38 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_subtitleLabel];
  sub_1007443C4();
  if (v39)
  {
    v40 = sub_100753064();
  }

  else
  {
    v40 = 0;
  }

  [v38 setText:v40];

  v41 = sub_100744374();
  sub_1003260F8(v41);
  v42 = sub_100744354();
  v163 = v14;
  if (v42)
  {
    v176 = v42;
    sub_10074ECD4();
    sub_100752764();
    sub_10037C6B0(&qword_100928558, &type metadata accessor for Action);
    sub_100752684();

    v43 = sub_10000C518(&unk_100933080);
    (*(*(v43 - 8) + 56))(v31, 0, 1, v43);
  }

  else
  {
    v44 = sub_10000C518(&unk_100933080);
    (*(*(v44 - 8) + 56))(v31, 1, 1, v44);
  }

  v45 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_clickAction;
  swift_beginAccess();
  sub_100195594(v31, &v4[v45]);
  swift_endAccess();
  v46 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_gradientBlurView];
  if (sub_1007443A4())
  {
    v47 = sub_10074F1E4();
  }

  else
  {
    v47 = 0;
  }

  v48 = *&v46[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_secondaryColor];
  *&v46[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_secondaryColor] = v47;
  v49 = v47;

  sub_10016A260();
  v50 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_appEventFormattedDateView];
  if (v50)
  {
    type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
    v51 = v50;
    sub_100752754();
    v52 = v176;
    v53 = v4;
    v54 = v46;
    v55 = a1;
    v56 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
    v57 = *&v51[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
    v58 = v57;
    sub_1000CAC84(v52);
    v59 = *&v51[v56];
    *&v51[v56] = v52;
    a1 = v55;
    v46 = v54;
    v4 = v53;
    v60 = v52;

    sub_1000CADE8(v57);
  }

  v61 = sub_100744394();
  v62 = &stru_1008F2000;
  if (v61)
  {
    v63 = v61;
    v156 = v4;
    v64 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupView];
    v65 = v159;
    v66 = *(v159 + 104);
    v66(v160, enum case for OfferButtonPresenterViewAlignment.right(_:), v25);
    v67 = v161;
    v66(v161, enum case for OfferButtonPresenterViewAlignment.left(_:), v25);
    (*(v65 + 56))(v67, 0, 1, v25);
    sub_10037C6B0(&unk_100925550, &type metadata accessor for OfferButtonPresenterViewAlignment);
    v68 = v173;
    sub_10074A9C4();
    v69 = sub_10000C518(&unk_10092EEA0);
    (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
    v70 = *(v64 + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView);
    v71 = sub_10074EF24();
    if (v71)
    {
    }

    v161 = v46;
    [v70 setHidden:v71 == 0];
    v160 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView;
    v72 = *(v64 + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView);
    v73 = sub_100742E24();
    v74 = v169;
    (*(*(v73 - 8) + 56))(v169, 1, 1, v73);
    v75 = sub_100745E94();
    v76 = v170;
    (*(*(v75 - 8) + 56))(v170, 1, 1, v75);
    v77 = sub_10000C518(&unk_100925560);
    v78 = v171;
    (*(*(v77 - 8) + 56))(v171, 1, 1, v77);
    v79 = sub_10074F8B4();
    v80 = v162;
    (*(*(v79 - 8) + 56))(v162, 1, 1, v79);
    sub_100656038(v63, v72, v173, v175, 1, 0, v74, v76, v80, v78);
    sub_10000C8CC(v80, &unk_100925520);
    v72[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 1;
    sub_1001CE71C();
    [v72 setNeedsLayout];
    v81 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel;
    v82 = *&v72[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel];
    if (v82)
    {
      [v82 setHidden:1];
      v83 = *&v72[v81];
      if (v83)
      {
        [v83 setText:0];
      }
    }

    v84 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel;
    v85 = *&v72[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel];
    if (v85)
    {
      if (([v85 isHidden] & 1) == 0)
      {
        v86 = *&v72[v84];
        if (v86)
        {
          if ([v86 hasContent])
          {
            v87 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel;
            [*&v72[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel] setHidden:1];
            [*&v72[v87] setText:0];
          }
        }
      }
    }

    v168 = a1;
    v88 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel;
    v89 = [*&v72[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel] isHidden];
    v90 = v163;
    if (v89 & 1) == 0 && ([*&v72[v88] hasContent])
    {
      v91 = *&v72[v84];
      if (v91)
      {
        [v91 setHidden:1];
        v92 = *&v72[v84];
        if (v92)
        {
          [v92 setText:0];
        }
      }

      v93 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel;
      [*&v72[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel] setHidden:1];
      [*&v72[v93] setText:0];
    }

    sub_10000C8CC(v171, &unk_100925990);
    sub_10000C8CC(v170, &unk_1009259A0);
    sub_10000C8CC(v169, &unk_100925530);
    sub_10074EF44();
    v94 = sub_10074EE24();
    v96 = v95;
    v97 = sub_10074EE84();
    v99 = v98;
    v100 = sub_10074EE44();
    v171 = v63;
    if (v96 && v99)
    {
      v101 = v100;
      v170 = v94;
      v102 = v164;
      (*(v164 + 16))(v158, v90, v167);
      sub_10000C518(&unk_100925780);
      sub_100752764();
      sub_100752D34();
      v169 = v97;
      v104 = v176;
      v103 = v177;
      type metadata accessor for CrossLinkPresenter();
      swift_allocObject();
      v105 = v64;
      v106 = CrossLinkPresenter.init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(v158, v170, v96, v169, v99, v101 & 1, v64, &off_10086C378, v104, v103);
      (*(v102 + 8))(v90, v167);
      sub_10000C8CC(v173, &unk_100925540);
      v107 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkPresenter;
      swift_beginAccess();
      *&v105[v107] = v106;
    }

    else
    {

      v110 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkPresenter;
      swift_beginAccess();
      *(v64 + v110) = 0;

      sub_1001F6890(0, 0);
      (*(v164 + 8))(v90, v167);
      sub_10000C8CC(v173, &unk_100925540);
    }

    v111 = v174;
    v112 = v160;
    v113 = *(*&v160[v64] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel);
    if (v113)
    {
      v114 = qword_100920F88;
      v115 = v113;
      if (v114 != -1)
      {
        swift_once();
      }

      v116 = sub_100750534();
      v117 = sub_10000D0FC(v116, qword_100980BE8);
      v118 = *(v116 - 8);
      v119 = v157;
      (*(v118 + 16))(v157, v117, v116);
      (*(v118 + 56))(v119, 0, 1, v116);
      sub_100745BA4();
    }

    v120 = v165;
    sub_100744364();
    v121 = sub_100746B84();
    v124 = *(v111 + 8);
    v123 = v111 + 8;
    v122 = v124;
    (v124)(v120, v172);
    v125 = *(*&v112[v64] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton);
    if (v121 == 2)
    {
      v126 = objc_opt_self();
      v127 = v125;
      v128 = [v126 whiteColor];
    }

    else
    {
      sub_100016C60(0, &qword_100923500);
      v129 = v125;
      v128 = sub_100753EF4();
    }

    v130 = v128;
    [v125 setTintColor:v128];

    [v64 setHidden:0];
    v131 = v166;
    sub_100744364();
    v132 = sub_100746B84();
    v133 = v172;
    (v122)(v131, v172);
    [v64 setOverrideUserInterfaceStyle:v132];
    [*(*&v112[v64] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel) _setTextColorFollowsTintColor:0];
    v134 = *(*&v112[v64] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel);
    sub_100016C60(0, &qword_100923500);
    v135 = v134;
    v136 = sub_100753DD4();
    v173 = v122;
    v137 = v136;
    v138 = [v136 colorWithAlphaComponent:0.7];
    v174 = v123;
    v139 = v138;

    [v135 setTextColor:v139];
    v140 = *(*&v112[v64] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel);
    v141 = sub_100753DD4();
    v142 = [v141 colorWithAlphaComponent:0.7];

    [v140 setTextColor:v142];
    v143 = *(v64 + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkTitleLabel);
    v144 = sub_100753DD4();
    v145 = [v144 colorWithAlphaComponent:0.7];

    [v143 setTextColor:v145];
    v62 = &stru_1008F2000;
    [v64 setNeedsLayout];
    v146 = swift_allocObject();
    v147 = v156;
    swift_unknownObjectWeakInit();
    v148 = swift_allocObject();
    v149 = v171;
    *(v148 + 2) = v146;
    *(v148 + 3) = v149;
    *(v148 + 4) = v175;
    v150 = &v147[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction];
    v151 = *&v147[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction];
    *v150 = sub_10037C6A4;
    v150[1] = v148;

    sub_1000164A8(v151);

    v152 = v161;
    [v161 setHidden:0];
    sub_100744364();
    v153 = sub_100746B84();
    (v173)(v131, v133);
    v154 = v152;
    v4 = v147;
    [v154 setOverrideUserInterfaceStyle:v153];
  }

  else
  {
    v108 = &v4[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction];
    v109 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction];
    *v108 = 0;
    *(v108 + 1) = 0;
    sub_1000164A8(v109);
    [*&v4[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupView] setHidden:1];
    [v46 setHidden:1];
  }

  sub_100327AE4();
  return [v4 v62[51].attr];
}

uint64_t sub_10037C624()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10037C65C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10037C6B0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10037C6F8()
{
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  if (qword_100920960 != -1)
  {
    swift_once();
  }

  v0 = sub_100747674();
  sub_10000D0FC(v0, qword_10097FA38);
  sub_100747694();
  sub_10037C6B0(&qword_100933258, &type metadata accessor for FlowcaseItemLayout);
  sub_100750D34();
  if (qword_100920968 != -1)
  {
    swift_once();
  }

  v1 = sub_100751374();
  sub_10000D0FC(v1, qword_10097FA50);
  sub_100753BD4();
  v3 = v2;
  v5 = v4;
  v6 = objc_opt_self();
  v7 = [v6 absoluteDimension:v3];
  v8 = [v6 absoluteDimension:v5];
  v9 = [objc_opt_self() sizeWithWidthDimension:v7 heightDimension:v8];

  v10 = [objc_opt_self() itemWithLayoutSize:v9];
  v11 = objc_opt_self();
  sub_10000C518(&unk_1009231A0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1007A5CF0;
  *(v12 + 32) = v10;
  sub_100016C60(0, &qword_100923478);
  v13 = v10;
  isa = sub_100753294().super.isa;

  v15 = [v11 verticalGroupWithLayoutSize:v9 subitems:isa];

  return v15;
}

uint64_t sub_10037C9AC()
{
  v0 = sub_10000C518(&unk_1009346A0);
  sub_100039C50(v0, qword_100934600);
  sub_10000D0FC(v0, qword_100934600);
  sub_10000C518(&unk_100923AE0);
  type metadata accessor for ContentMode(0);
  return sub_100743474();
}

uint64_t sub_10037CA50()
{
  v0 = sub_10000C518(&qword_100934698);
  sub_100039C50(v0, qword_100934618);
  sub_10000D0FC(v0, qword_100934618);
  swift_getKeyPath();
  sub_10056003C(0xD00000000000001ELL, 0x8000000100779150, 0);
  sub_10056003C(0xD000000000000017, 0x8000000100779170, 0);
  sub_100016C60(0, &qword_10092B280);
  return sub_1007434B4();
}

uint64_t sub_10037CB64()
{
  v0 = sub_10000C518(&qword_100934690);
  sub_100039C50(v0, qword_100934630);
  sub_10000D0FC(v0, qword_100934630);
  swift_getKeyPath();
  sub_100016C60(0, &qword_100923500);
  v1 = sub_100753EB4();
  v2.super.isa = sub_100753EB4();
  v3.super.isa = v1;
  sub_100753EC4(v3, v2);
  v4 = sub_100753EB4();
  v5.super.isa = sub_100753EB4();
  v6.super.isa = v4;
  sub_100753EC4(v6, v5);
  return sub_1007434B4();
}

char *sub_10037CC94(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC22SubscribePageExtension27EditorsChoiceBackgroundView_imageView;
  *&v4[v10] = [objc_allocWithZone(UIImageView) init];
  v11 = OBJC_IVAR____TtC22SubscribePageExtension27EditorsChoiceBackgroundView_topOpaqueLayer;
  *&v4[v11] = [objc_allocWithZone(CALayer) init];
  v12 = OBJC_IVAR____TtC22SubscribePageExtension27EditorsChoiceBackgroundView_gradientLayer;
  *&v4[v12] = [objc_allocWithZone(CAGradientLayer) init];
  v13 = OBJC_IVAR____TtC22SubscribePageExtension27EditorsChoiceBackgroundView_compositeMaskLayer;
  *&v4[v13] = [objc_allocWithZone(CALayer) init];
  v55.receiver = v4;
  v55.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v55, "initWithFrame:", a1, a2, a3, a4);
  [v14 setClipsToBounds:1];
  v15 = qword_100920A40;
  v16 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = sub_10000C518(&qword_100934690);
  sub_10000D0FC(v17, qword_100934630);
  v18 = v16;
  sub_100743464();

  [v18 setBackgroundColor:v54];
  v19 = OBJC_IVAR____TtC22SubscribePageExtension27EditorsChoiceBackgroundView_imageView;
  v20 = qword_100920A38;
  v21 = *&v18[OBJC_IVAR____TtC22SubscribePageExtension27EditorsChoiceBackgroundView_imageView];
  if (v20 != -1)
  {
    swift_once();
  }

  v53 = ObjectType;
  v22 = sub_10000C518(&qword_100934698);
  sub_10000D0FC(v22, qword_100934618);
  v23 = v18;
  sub_100743464();

  [v21 setImage:v54];
  v24 = qword_100920A30;
  v25 = *&v18[v19];
  if (v24 != -1)
  {
    swift_once();
  }

  v26 = sub_10000C518(&unk_1009346A0);
  sub_10000D0FC(v26, qword_100934600);
  sub_100743464();

  [v25 setContentMode:v54];
  [v23 addSubview:*&v18[v19]];
  v27 = OBJC_IVAR____TtC22SubscribePageExtension27EditorsChoiceBackgroundView_topOpaqueLayer;
  v28 = *&v23[OBJC_IVAR____TtC22SubscribePageExtension27EditorsChoiceBackgroundView_topOpaqueLayer];
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 blackColor];
  v32 = [v31 CGColor];

  [v30 setBackgroundColor:v32];
  v33 = OBJC_IVAR____TtC22SubscribePageExtension27EditorsChoiceBackgroundView_gradientLayer;
  v34 = *&v23[OBJC_IVAR____TtC22SubscribePageExtension27EditorsChoiceBackgroundView_gradientLayer];
  sub_10000C518(&unk_1009259C0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1007A6580;
  v36 = v34;
  v37 = [v29 blackColor];
  v38 = [v37 CGColor];

  type metadata accessor for CGColor(0);
  v40 = v39;
  *(v35 + 56) = v39;
  *(v35 + 32) = v38;
  v41 = [v29 clearColor];
  v42 = [v41 CGColor];

  *(v35 + 88) = v40;
  *(v35 + 64) = v42;
  isa = sub_100753294().super.isa;

  [v36 setColors:isa];

  v44 = OBJC_IVAR____TtC22SubscribePageExtension27EditorsChoiceBackgroundView_compositeMaskLayer;
  [*&v23[OBJC_IVAR____TtC22SubscribePageExtension27EditorsChoiceBackgroundView_compositeMaskLayer] addSublayer:*&v23[v27]];
  [*&v23[v44] addSublayer:*&v23[v33]];
  sub_10000C518(&unk_1009249D0);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1007A5A00;
  *(v45 + 32) = sub_100751614();
  *(v45 + 40) = &protocol witness table for UITraitUserInterfaceLevel;
  *(swift_allocObject() + 16) = v53;
  sub_100753D44();
  swift_unknownObjectRelease();

  v46 = [v23 traitCollection];

  LOBYTE(v45) = sub_1007537D4();
  if (v45 & 1) != 0 || (v47 = [v23 traitCollection], v48 = sub_100753804(), v47, (v48))
  {
    v49 = [*&v18[v19] layer];
    [v49 setMask:*&v23[v44]];
  }

  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1007A6580;
  *(v50 + 32) = sub_1007516F4();
  *(v50 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  *(v50 + 48) = sub_1007519E4();
  *(v50 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100753D44();
  swift_unknownObjectRelease();

  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1007A5A00;
  *(v51 + 32) = sub_100751544();
  *(v51 + 40) = &protocol witness table for UITraitLayoutDirection;
  *(swift_allocObject() + 16) = v53;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v23;
}

void sub_10037D3A8(void *a1)
{
  if (qword_100920A40 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C518(&qword_100934690);
  sub_10000D0FC(v2, qword_100934630);
  v7 = a1;
  v3 = a1;
  sub_100743464();

  [v3 setBackgroundColor:{v9, v7}];
  v4 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension27EditorsChoiceBackgroundView_imageView];
  if (qword_100920A38 != -1)
  {
    swift_once();
  }

  v5 = sub_10000C518(&qword_100934698);
  sub_10000D0FC(v5, qword_100934618);
  v8 = v3;
  v6 = v3;
  sub_100743464();

  [v4 setImage:{v9, v8}];
}

id sub_10037D514(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension27EditorsChoiceBackgroundView_imageView];
  if (qword_100920A30 != -1)
  {
    swift_once();
  }

  v3 = sub_10000C518(&unk_1009346A0);
  sub_10000D0FC(v3, qword_100934600);
  v4 = a1;
  sub_100743464();

  return [v2 setContentMode:{v6, a1}];
}

void sub_10037D634()
{
  v1 = v0;
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension27EditorsChoiceBackgroundView_imageView];
  [v0 bounds];
  [v2 setFrame:?];
  v3 = [v0 traitCollection];
  v4 = sub_1007537F4();

  v5 = [v1 traitCollection];
  v6 = sub_1007537E4();

  v7 = 100.0;
  if ((v6 & 1) == 0)
  {
    v7 = 20.0;
  }

  if (v4)
  {
    v8 = -v7;
  }

  else
  {
    v8 = v7;
  }

  [v2 frame];
  [v2 setFrame:v8 + v9];
  v10 = [v1 traitCollection];
  v11 = sub_1007537D4();

  if (v11 & 1) != 0 || (v12 = [v1 traitCollection], v13 = sub_100753804(), v12, (v13))
  {
    [v2 setClipsToBounds:1];
    if (v4)
    {
      v14 = -100.0;
    }

    else
    {
      v14 = 100.0;
    }

    [v2 frame];
    [v2 setFrame:v14 + v15];
    v16 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27EditorsChoiceBackgroundView_topOpaqueLayer];
    [v1 bounds];
    [v16 setFrame:{0.0, 0.0, CGRectGetWidth(v20), 68.0}];
    v17 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27EditorsChoiceBackgroundView_gradientLayer];
    [v16 frame];
    MaxY = CGRectGetMaxY(v21);
    [v1 bounds];
    [v17 setFrame:{0.0, MaxY, CGRectGetWidth(v22), 110.0}];
  }
}

void sub_10037D95C(char *a1)
{
  v2 = [a1 traitCollection];
  v3 = sub_1007537D4();

  if (v3 & 1) != 0 || (v4 = [a1 traitCollection], v5 = sub_100753804(), v4, (v5))
  {
    v6 = [*&a1[OBJC_IVAR____TtC22SubscribePageExtension27EditorsChoiceBackgroundView_imageView] layer];
    [v6 setMask:*&a1[OBJC_IVAR____TtC22SubscribePageExtension27EditorsChoiceBackgroundView_compositeMaskLayer]];
  }

  else
  {
    v6 = [*&a1[OBJC_IVAR____TtC22SubscribePageExtension27EditorsChoiceBackgroundView_imageView] layer];
    [v6 setMask:0];
  }
}

void sub_10037DA60()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension27EditorsChoiceBackgroundView_imageView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  v2 = OBJC_IVAR____TtC22SubscribePageExtension27EditorsChoiceBackgroundView_topOpaqueLayer;
  *(v0 + v2) = [objc_allocWithZone(CALayer) init];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension27EditorsChoiceBackgroundView_gradientLayer;
  *(v0 + v3) = [objc_allocWithZone(CAGradientLayer) init];
  v4 = OBJC_IVAR____TtC22SubscribePageExtension27EditorsChoiceBackgroundView_compositeMaskLayer;
  *(v0 + v4) = [objc_allocWithZone(CALayer) init];
  sub_100754644();
  __break(1u);
}

id sub_10037DB70@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 traitCollection];
  *a2 = result;
  return result;
}

id sub_10037DBAC@<X0>(id *a1@<X0>, BOOL *a2@<X8>)
{
  result = [*a1 userInterfaceLevel];
  *a2 = result == 1;
  return result;
}

uint64_t MetadataRibbonTagViewLayout.Metrics.standard.unsafeMutableAddressor()
{
  if (qword_100920A48 != -1)
  {
    swift_once();
  }

  v0 = sub_10074C3C4();

  return sub_10000D0FC(v0, static MetadataRibbonTagViewLayout.Metrics.standard);
}

char *sub_10037DC50(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10074C3C4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonTagView_metrics;
  if (qword_100920A48 != -1)
  {
    swift_once();
  }

  v16 = sub_10000D0FC(v11, static MetadataRibbonTagViewLayout.Metrics.standard);
  v17 = *(v12 + 16);
  v17(&v5[v15], v16, v11);
  v18 = &v5[OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonTagView_id];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 4) = 0;
  v19 = OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonTagView_itemType;
  v20 = sub_100749D24();
  (*(*(v20 - 8) + 56))(&v5[v19], 1, 1, v20);
  v21 = &v5[OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonTagView_labelMaxWidth];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v5[OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonTagView_truncationLegibilityThreshold];
  *v22 = 0;
  v22[8] = 1;
  v5[OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonTagView_allowsTruncation] = 2;
  sub_100745C84();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonTagView_tagLabel] = sub_100745C64();
  v42.receiver = v5;
  v42.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonTagView_tagLabel;
  v29 = *&v27[OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonTagView_tagLabel];
  sub_10000D198();
  v30 = v29;
  v31 = sub_100753DF4();
  [v30 setTextColor:v31];

  v32 = *&v27[v28];
  v17(v14, &v27[OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonTagView_metrics], v11);
  v33 = v32;
  v34 = sub_10074C3B4();
  (*(v12 + 8))(v14, v11);
  [v33 setNumberOfLines:v34];

  v35 = *&v27[v28];
  sub_1007509A4();
  if (qword_100920210 != -1)
  {
    swift_once();
  }

  v36 = sub_10074A584();
  v37 = sub_10000D0FC(v36, qword_10097D9F0);
  v41[3] = v36;
  v41[4] = sub_1002371F8();
  v38 = sub_10000D134(v41);
  (*(*(v36 - 8) + 16))(v38, v37, v36);
  sub_100745BC4();

  [v27 addSubview:*&v27[v28]];
  return v27;
}

uint64_t sub_10037E080()
{
  ObjectType = swift_getObjectType();
  v18 = sub_100750354();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074C3C4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10074C3D4();
  v9 = *(v17 - 8);
  *&v10 = __chkstk_darwin(v17).n128_u64[0];
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v0;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "layoutSubviews", v10);
  v13 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonTagView_tagLabel];
  v20 = sub_100745C84();
  v21 = &protocol witness table for UILabel;
  v19 = v13;
  (*(v6 + 16))(v8, &v0[OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonTagView_metrics], v5);
  v14 = v13;
  sub_10074C374();
  sub_1007477B4();
  sub_10074C394();
  (*(v2 + 8))(v4, v18);
  return (*(v9 + 8))(v12, v17);
}

uint64_t sub_10037E614()
{
  sub_100747914();
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonTagView_tagLabel];
  if (v2)
  {
    v3 = sub_100753064();
  }

  else
  {
    v3 = 0;
  }

  [v1 setText:v3];

  [v0 setNeedsLayout];
}

uint64_t sub_10037E6A8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonTagView_itemType;
  swift_beginAccess();
  return sub_100016B4C(v1 + v3, a1, &qword_100924B30);
}

uint64_t sub_10037E710(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonTagView_itemType;
  swift_beginAccess();
  sub_10006644C(a1, v1 + v3, &qword_100924B30);
  return swift_endAccess();
}

uint64_t sub_10037E7EC(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonTagView_labelMaxWidth;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_10037E8B8(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonTagView_truncationLegibilityThreshold;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_10037E978()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonTagView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10037E9BC(char a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonTagView_allowsTruncation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10037EA6C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonTagView_id;
  swift_beginAccess();
  return sub_100016B4C(v1 + v3, a1, &unk_1009276E0);
}

uint64_t sub_10037EAD4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonTagView_id;
  swift_beginAccess();
  sub_10006644C(a1, v1 + v3, &unk_1009276E0);
  return swift_endAccess();
}

uint64_t sub_10037EBA4()
{
  v0 = sub_10000C518(&unk_100923180);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - v2;
  v4 = sub_10074C3C4();
  sub_100039C50(v4, static MetadataRibbonTagViewLayout.Metrics.standard);
  sub_10000D0FC(v4, static MetadataRibbonTagViewLayout.Metrics.standard);
  sub_10000C518(&unk_100923AE0);
  sub_100743564();
  sub_10074C3A4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t static MetadataRibbonTagViewLayout.Metrics.standard.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100920A48 != -1)
  {
    swift_once();
  }

  v2 = sub_10074C3C4();
  v3 = sub_10000D0FC(v2, static MetadataRibbonTagViewLayout.Metrics.standard);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t type metadata accessor for MetadataRibbonTagView()
{
  result = qword_1009346E8;
  if (!qword_1009346E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10037EDE0()
{
  sub_10074C3C4();
  if (v0 <= 0x3F)
  {
    sub_1000D9E5C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

double sub_10037EED4(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v31 = a1;
  v2 = sub_10074C3C4();
  v34 = *(v2 - 8);
  __chkstk_darwin(v2);
  v33 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074C3D4();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v32 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100750BD4();
  v29 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100750E94();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  __chkstk_darwin(v15);
  v17 = &v27 - v16;
  if (qword_100920A48 != -1)
  {
    swift_once();
  }

  v18 = sub_10000D0FC(v2, static MetadataRibbonTagViewLayout.Metrics.standard);
  sub_100750E84();
  sub_1007509A4();
  v28 = v2;
  if (qword_100920210 != -1)
  {
    swift_once();
  }

  v19 = sub_10074A584();
  v20 = sub_10000D0FC(v19, qword_10097D9F0);
  v39[3] = v19;
  v39[4] = sub_1002371F8();
  v21 = sub_10000D134(v39);
  (*(*(v19 - 8) + 16))(v21, v20, v19);
  sub_100750DE4();
  v22 = *(v9 + 8);
  v22(v11, v8);
  sub_10000C620(v39);
  sub_10074C3B4();
  sub_100750E74();
  v22(v14, v8);
  sub_100747914();
  (*(v9 + 16))(v14, v17, v8);
  sub_100750BB4();
  sub_100750BF4();
  sub_100750BA4();
  (*(v29 + 8))(v7, v30);
  sub_10000C824(v39, v38);
  (*(v34 + 16))(v33, v18, v28);
  v23 = v32;
  sub_10074C374();
  sub_10074C384();
  v25 = v24;
  (*(v35 + 8))(v23, v36);
  sub_10000C620(v39);
  v22(v17, v8);
  return v25;
}

void sub_10037F3C8()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonTagView_metrics;
  if (qword_100920A48 != -1)
  {
    swift_once();
  }

  v2 = sub_10074C3C4();
  v3 = sub_10000D0FC(v2, static MetadataRibbonTagViewLayout.Metrics.standard);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  v4 = v0 + OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonTagView_id;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  v5 = OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonTagView_itemType;
  v6 = sub_100749D24();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = v0 + OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonTagView_labelMaxWidth;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v0 + OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonTagView_truncationLegibilityThreshold;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonTagView_allowsTruncation) = 2;
  sub_100754644();
  __break(1u);
}

uint64_t sub_10037F56C()
{
  if (qword_100920318 != -1)
  {
    return swift_once();
  }

  return result;
}

double sub_10037F62C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v29 = sub_100744D64();
  v28 = *(v29 - 8);
  __chkstk_darwin(v29);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100744D84();
  v31 = *(v32 - 8);
  __chkstk_darwin(v32);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074CD14();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074F514();
  v12 = sub_10074F504();
  sub_100038D38();
  if (qword_100920FE0 != -1)
  {
    swift_once();
  }

  v13 = sub_100750534();
  sub_10000D0FC(v13, qword_100980CD8);
  v33 = a4;
  v14 = [a4 traitCollection];
  v15 = sub_100753C14();

  v16 = sub_10074F3F4();
  v39[3] = v16;
  v39[4] = sub_10037FCD4(&qword_10092AC70, &type metadata accessor for Feature);
  v17 = sub_10000D134(v39);
  (*(*(v16 - 8) + 104))(v17, enum case for Feature.measurement_with_labelplaceholder(_:), v16);
  v18 = v15;
  sub_10074FC74();
  sub_10000C620(v39);
  sub_10074CD04();
  sub_10074CCE4();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 2) != 0)
  {
    if (qword_100920318 != -1)
    {
      swift_once();
    }

    [qword_10097DC60 size];
    v19 = sub_100750F34();
    swift_allocObject();
    v20 = sub_100750F14();
    *(&v37 + 1) = v19;
    v38 = &protocol witness table for LayoutViewPlaceholder;
    *&v36 = v20;
  }

  else
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
  }

  v21 = v33;
  if (qword_100920300 != -1)
  {
    swift_once();
  }

  v22 = v29;
  v23 = sub_10000D0FC(v29, qword_10097DC48);
  (*(v28 + 16))(v30, v23, v22);
  sub_10000C824(v39, v35);
  sub_1000CD5F0(&v36, v34);
  sub_100744D74();
  [v21 pageMarginInsets];
  sub_100753BA4();
  sub_10037FCD4(&qword_1009296E8, &type metadata accessor for FootnoteLayout);
  v24 = v32;
  sub_100750404();
  sub_100753BC4();
  v26 = v25;

  (*(v31 + 8))(v7, v24);
  sub_10000C620(v39);
  sub_1002C9F48(&v36);
  return v26;
}

id sub_10037FBE0()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension26FootnoteCollectionViewCell_footnoteView];
  v2 = sub_10074F504();
  v3 = v1[OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_hasChevron];
  v1[OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_hasChevron] = (v2 & 2) != 0;
  sub_10013F464(v3);
  v1[OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_textLightensOnHighlight] = (sub_10074F504() & 4) != 0;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_textLabel];
  sub_10074F514();
  v5 = sub_100753064();

  [v4 setText:v5];

  [v1 setNeedsLayout];

  return [v0 setNeedsLayout];
}

uint64_t sub_10037FCD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10037FD1C(uint64_t a1)
{
  v3 = sub_100750534();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v40 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v38[-v7];
  v9 = sub_10000C518(&qword_10092BE70);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v38[-v11];
  v13 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v13 - 8);
  v42 = &v38[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v38[-v16];
  __chkstk_darwin(v18);
  v20 = &v38[-v19];
  __chkstk_darwin(v21);
  v23 = &v38[-v22];
  v43 = v1;
  v41 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16ImageHeadingView_headingLabel];
  sub_100745B94();
  v24 = *(v10 + 56);
  sub_10006A0D4(v23, v12);
  v45 = a1;
  sub_10006A0D4(a1, &v12[v24]);
  v44 = v4;
  v25 = *(v4 + 48);
  if (v25(v12, 1, v3) == 1)
  {
    sub_10000C8CC(v23, &unk_100928A40);
    if (v25(&v12[v24], 1, v3) == 1)
    {
      sub_10000C8CC(v12, &unk_100928A40);
      return sub_10000C8CC(v45, &unk_100928A40);
    }
  }

  else
  {
    sub_10006A0D4(v12, v20);
    if (v25(&v12[v24], 1, v3) != 1)
    {
      v36 = v44;
      (*(v44 + 32))(v8, &v12[v24], v3);
      sub_100381A60(&qword_10092BE78, &type metadata accessor for FontUseCase);
      v39 = sub_100753014();
      v37 = *(v36 + 8);
      v37(v8, v3);
      sub_10000C8CC(v23, &unk_100928A40);
      v37(v20, v3);
      sub_10000C8CC(v12, &unk_100928A40);
      if (v39)
      {
        return sub_10000C8CC(v45, &unk_100928A40);
      }

      goto LABEL_7;
    }

    sub_10000C8CC(v23, &unk_100928A40);
    (*(v44 + 8))(v20, v3);
  }

  sub_10000C8CC(v12, &qword_10092BE70);
LABEL_7:
  v26 = v45;
  sub_10006A0D4(v45, v17);
  sub_100745BA4();
  v27 = v43;
  v28 = *&v43[OBJC_IVAR____TtC22SubscribePageExtension16ImageHeadingView_imageView];
  v29 = [v43 traitCollection];
  v30 = v42;
  sub_10006A0D4(v26, v42);
  if (v25(v30, 1, v3) == 1)
  {

    sub_10000C8CC(v30, &unk_100928A40);
  }

  else
  {
    v31 = v44;
    v32 = v40;
    (*(v44 + 32))(v40, v30, v3);
    sub_100038D38();
    v33 = sub_100753C14();
    v34 = [objc_opt_self() configurationWithFont:v33];
    [v28 setPreferredSymbolConfiguration:v34];

    (*(v31 + 8))(v32, v3);
  }

  [v27 setNeedsLayout];
  return sub_10000C8CC(v45, &unk_100928A40);
}

char *sub_10038027C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10074AB44();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v14 - 8);
  v16 = &v35 - v15;
  v17 = &v5[OBJC_IVAR____TtC22SubscribePageExtension16ImageHeadingView_metrics];
  *(v17 + 3) = &type metadata for Double;
  *(v17 + 4) = &protocol witness table for Double;
  *v17 = 0;
  v18 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension16ImageHeadingView_imageView] = v18;
  *v16 = UIFontTextStyleBody;
  *(v16 + 2) = 0;
  v19 = enum case for FontUseCase.preferredFont(_:);
  v20 = sub_100750534();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v16, v19, v20);
  (*(v21 + 56))(v16, 0, 1, v20);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  objc_allocWithZone(sub_100745C84());
  v22 = UIFontTextStyleBody;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension16ImageHeadingView_headingLabel] = sub_100745C74();
  v37.receiver = v5;
  v37.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v37, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = OBJC_IVAR____TtC22SubscribePageExtension16ImageHeadingView_imageView;
  [v27 addSubview:*&v27[OBJC_IVAR____TtC22SubscribePageExtension16ImageHeadingView_imageView]];
  v29 = *&v27[v28];
  v30 = [v27 tintColor];
  [v29 setTintColor:v30];

  v31 = OBJC_IVAR____TtC22SubscribePageExtension16ImageHeadingView_headingLabel;
  [v27 addSubview:*&v27[OBJC_IVAR____TtC22SubscribePageExtension16ImageHeadingView_headingLabel]];
  v32 = *&v27[v31];
  v33 = [v27 tintColor];

  [v32 setTextColor:v33];
  return v27;
}

uint64_t sub_1003806D0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100750354();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14.receiver = v1;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "layoutSubviews", v5);
  v8 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16ImageHeadingView_imageView];
  v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16ImageHeadingView_headingLabel];
  v10 = OBJC_IVAR____TtC22SubscribePageExtension16ImageHeadingView_metrics;
  swift_beginAccess();
  sub_10021AC00(&v1[v10], v12);
  sub_100380868(v8, &protocol witness table for UIView, v9, &protocol witness table for UIView, v12, v13);
  sub_10021ACB8(v12);
  sub_10000C888(v13, v13[3]);
  sub_1007477B4();
  sub_100751124();
  (*(v4 + 8))(v7, v3);
  return sub_10000C620(v13);
}

uint64_t sub_100380868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, uint64_t)@<X3>, void (*a5)(char *, uint64_t)@<X4>, uint64_t *a6@<X8>)
{
  v101 = a5;
  v100 = a4;
  v99 = a3;
  v105 = a2;
  v104 = a1;
  v106 = a6;
  v112 = sub_10074B454();
  v118 = *(v112 - 8);
  __chkstk_darwin(v112);
  v111 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_10074B464();
  v119 = *(v116 - 8);
  __chkstk_darwin(v116);
  v110 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_10074B434();
  v8 = *(v109 - 8);
  __chkstk_darwin(v109);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074B4A4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_10074B494();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_10074B484();
  v117 = *(v114 - 8);
  __chkstk_darwin(v114);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_10074B4C4();
  v102 = *(v115 - 8);
  v103 = v115 - 8;
  v113 = v102;
  __chkstk_darwin(v115 - 8);
  v98 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v108 = &v77 - v24;
  v83 = *(v16 + 104);
  v84 = v16 + 104;
  v107 = v18;
  (v83)(v18, enum case for HorizontalAlignmentLayout.ChildSourceOffset.minY(_:), v15, v23);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v26 = v14;
  v81 = v14;
  *v14 = v25;
  v27 = *(v12 + 104);
  v96 = v12 + 104;
  v97 = v27;
  v88 = v11;
  v27(v14, enum case for HorizontalAlignmentLayout.ContainerDestinationOffset.absolute(_:), v11);
  v28 = v20;
  sub_10074B474();
  v29 = *(v12 + 8);
  v94 = v12 + 8;
  v95 = v29;
  v29(v26, v11);
  v30 = *(v16 + 8);
  v92 = v16 + 8;
  v93 = v30;
  v30(v18, v15);
  v122 = &type metadata for Double;
  v123 = &protocol witness table for Double;
  v121 = 0;
  v91 = enum case for HorizontalAlignmentLayout.HorizontalGravity.leading(_:);
  v31 = v8;
  v32 = *(v8 + 104);
  v89 = v8 + 104;
  v90 = v32;
  v33 = v10;
  v34 = v10;
  v35 = v109;
  v32(v34);
  v87 = enum case for HorizontalAlignmentLayout.SizingPolicy.Priority.default(_:);
  v36 = v118;
  v37 = *(v118 + 104);
  v85 = v118 + 104;
  v86 = v37;
  v39 = v111;
  v38 = v112;
  v37(v111);
  v40 = v110;
  sub_10074B444();
  v41 = *(v36 + 8);
  v118 = v36 + 8;
  v82 = v41;
  v41(v39, v38);
  v42 = v108;
  v78 = v28;
  v79 = v33;
  sub_10074B4B4();
  v43 = *(v119 + 8);
  v119 += 8;
  v101 = v43;
  v43(v40, v116);
  v44 = *(v31 + 8);
  v99 = v31 + 8;
  v100 = v44;
  v44(v33, v35);
  v45 = *(v117 + 8);
  v117 += 8;
  v80 = v45;
  v45(v28, v114);
  sub_10000C620(&v121);
  v122 = &type metadata for CGFloat;
  v123 = &protocol witness table for CGFloat;
  v121 = 0;
  v46 = enum case for HorizontalAlignmentLayout.ChildSourceOffset.midY(_:);
  v47 = v83;
  v83(v107, enum case for HorizontalAlignmentLayout.ChildSourceOffset.midY(_:), v15);
  v48 = sub_10000C518(&qword_10092BE80);
  v49 = swift_allocBox();
  v51 = v50;
  v52 = *(v48 + 48);
  v53 = *(v113 + 16);
  v53(v50, v42, v115);
  v47(v51 + v52, v46, v15);
  v54 = v81;
  *v81 = v49;
  v55 = v88;
  v97(v54, enum case for HorizontalAlignmentLayout.ContainerDestinationOffset.relative(_:), v88);
  v56 = v78;
  v57 = v107;
  sub_10074B474();
  v95(v54, v55);
  v93(v57, v15);
  v120[4] = &protocol witness table for Double;
  v120[3] = &type metadata for Double;
  v120[0] = 0;
  v58 = v79;
  v59 = v109;
  v90(v79, v91, v109);
  v61 = v111;
  v60 = v112;
  v86(v111, v87, v112);
  v62 = v110;
  sub_10074B444();
  v82(v61, v60);
  v63 = v98;
  sub_10074B4B4();
  v101(v62, v116);
  v100(v58, v59);
  v80(v56, v114);
  sub_10000C620(v120);
  sub_10000C620(&v121);
  sub_10000C518(&qword_10092BE88);
  v64 = *(v102 + 72);
  v65 = v113;
  v66 = (*(v113 + 80) + 32) & ~*(v113 + 80);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_1007A6580;
  v68 = v67 + v66;
  v69 = v63;
  v70 = v63;
  v71 = v115;
  v53(v68, v69, v115);
  v72 = v108;
  v53(v68 + v64, v108, v71);
  v73 = sub_10074B4E4();
  v74 = v106;
  v106[3] = v73;
  v74[4] = sub_100381A60(&qword_10092BE90, &type metadata accessor for HorizontalAlignmentLayout);
  v74[5] = sub_100381A60(&qword_10092BE98, &type metadata accessor for HorizontalAlignmentLayout);
  sub_10000D134(v74);
  sub_10074B4D4();
  v75 = *(v65 + 8);
  v75(v70, v71);
  return (v75)(v72, v71);
}

uint64_t sub_1003813A0(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100750534();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v9 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v34 - v14;
  v36.receiver = v2;
  v36.super_class = ObjectType;
  objc_msgSendSuper2(&v36, "traitCollectionDidChange:", a1, v13);
  v16 = [v2 traitCollection];
  v17 = [v16 preferredContentSizeCategory];

  if (!a1)
  {
    v35 = v8;
    v24 = v6;

LABEL_7:
    v26 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension16ImageHeadingView_imageView];
    sub_100745B94();
    v27 = [v2 traitCollection];
    sub_10006A0D4(v15, v11);
    v28 = v24;
    if ((*(v24 + 48))(v11, 1, v5) == 1)
    {

      sub_10000C8CC(v15, &unk_100928A40);
      v29 = v11;
    }

    else
    {
      v30 = *(v24 + 32);
      v31 = v35;
      v30(v35, v11, v5);
      sub_100038D38();
      v32 = sub_100753C14();
      v33 = [objc_opt_self() configurationWithFont:v32];
      [v26 setPreferredSymbolConfiguration:v33];

      (*(v28 + 8))(v31, v5);
      v29 = v15;
    }

    return sub_10000C8CC(v29, &unk_100928A40);
  }

  v18 = [a1 preferredContentSizeCategory];
  v19 = sub_100753094();
  v21 = v20;
  if (v19 == sub_100753094() && v21 == v22)
  {
  }

  v35 = v8;
  v24 = v6;
  v25 = sub_100754754();

  if ((v25 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}