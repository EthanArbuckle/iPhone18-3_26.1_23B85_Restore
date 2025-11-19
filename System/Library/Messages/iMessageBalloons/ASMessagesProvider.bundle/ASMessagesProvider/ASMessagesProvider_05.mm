uint64_t (*sub_9E698(void *a1))(uint64_t *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_A2928;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_A2968;
}

uint64_t sub_9E728(uint64_t *a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  a2(sub_46344, v5);
}

uint64_t (*sub_9E7B8(void *a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_A28C4;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1F81C;
}

uint64_t sub_9E848()
{
  sub_BD88(&qword_93F1E8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_782440;
  *(v1 + 32) = *(v0 + qword_942640);
  *(v1 + 40) = &protocol witness table for ArcadeTitleEffectCollectionElementsObserver;
  type metadata accessor for NavigationBarVisibilityThresholdCollectionElementsObserver();
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 24) = &off_882588;
  swift_unknownObjectWeakAssign();
  v3 = sub_A287C(&qword_942C80, type metadata accessor for NavigationBarVisibilityThresholdCollectionElementsObserver);
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  type metadata accessor for ArcadeFloatingBarVisibilityThresholdCollectionElementsObserver();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5 = sub_A287C(&qword_942C88, type metadata accessor for ArcadeFloatingBarVisibilityThresholdCollectionElementsObserver);
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;

  *(v1 + 80) = sub_5FBF50();
  *(v1 + 88) = v6;
  sub_7637E0();
  swift_allocObject();
  return sub_7637D0();
}

id sub_9E9CC(uint64_t a1)
{
  swift_getObjectType();
  v3 = sub_BD88(&qword_942C60);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  sub_5FE984(a1);
  (*(v4 + 16))(v6, a1, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v4 + 96))(v6, v3);
    sub_9EBF4();
  }

  else if (v7 == enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    sub_7642E0();
  }

  else
  {
    (*(v4 + 8))(v6, v3);
  }

  result = [v1 view];
  if (result)
  {
    v9 = result;
    [result bounds];

    sub_A287C(&qword_942C68, type metadata accessor for ArcadeDiffablePageViewController);
    return sub_763A70();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_9EBF4()
{
  v1 = v0;
  sub_762050();
  if (v2)
  {
    v3 = sub_769210();
  }

  else
  {
    v3 = 0;
  }

  [v1 setTitle:v3];

  v4 = sub_7594A0();
  sub_9EEDC(v4);
  v5 = [v1 tabBarItem];
  if (v5)
  {
    v6 = v5;
    sub_762040();
    if (v7)
    {
      v8 = sub_769210();
    }

    else
    {
      v8 = 0;
    }

    [v6 setTitle:v8];

    sub_762050();
    if (v9)
    {

      v10 = [v1 navigationItem];
      sub_762050();
      if (v11)
      {
        v12 = sub_769210();
      }

      else
      {
        v12 = 0;
      }

      [v10 setTitle:v12];

      v16 = [v1 navigationItem];
      sub_27CCF4();
    }

    else
    {
      v13 = [v1 navigationItem];
      sub_762040();
      if (v14)
      {
        v15 = sub_769210();
      }

      else
      {
        v15 = 0;
      }

      [v13 setTitle:v15];

      v16 = [v1 navigationItem];
      sub_27CE0C();
    }

    v17 = [v1 navigationItem];
    v18 = [v17 standardAppearance];

    if (!v18)
    {
      v18 = [objc_allocWithZone(UINavigationBarAppearance) init];
    }

    v21 = v18;
    if (sub_762010())
    {

      v19 = 0;
    }

    else
    {
      v19 = 2;
    }

    [v21 _setOverrideUserInterfaceStyle:v19];

    v20 = [v1 navigationItem];
    [v20 setStandardAppearance:v21];

    sub_9F178();
  }

  else
  {
    __break(1u);
  }
}

void sub_9EEDC(char a1)
{
  v2 = v1;
  if (a1)
  {
    v4 = 1;
    v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_prefersLargeTitle] = 1;
    goto LABEL_8;
  }

  if ((a1 & 2) != 0)
  {
    v5 = sub_71DFF0();
    v1[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_prefersLargeTitle] = v5 & 1;
    if (v5)
    {
      v4 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    v1[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_prefersLargeTitle] = 0;
  }

  v4 = 2;
LABEL_8:
  v6 = [v2 navigationItem];
  [v6 setLargeTitleDisplayMode:v4];

  v7 = [v2 view];
  if (!v7)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v8 = v7;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {

    goto LABEL_19;
  }

  *(v9 + OBJC_IVAR____TtC18ASMessagesProviderP33_617AA862DC90C0016FFBABB70104B8F240InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset) = (a1 & 8) == 0;

  sub_71DDE4();
  sub_A22DC();
  if (sub_762010())
  {

    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for ArcadeFloatingBannerVisibilityScrollObserver();
    v11 = swift_allocObject();
    v11[3] = v10;
    v11[4] = 0;
    v11[2] = sub_A2754;
    *&v2[qword_99A4C0] = v11;

    sub_A287C(&qword_942C70, type metadata accessor for ArcadeFloatingBannerVisibilityScrollObserver);
    sub_75FA40();
  }

  else
  {
    v12 = qword_99A4C0;
    if (*&v2[qword_99A4C0])
    {
      sub_A287C(&qword_942C70, type metadata accessor for ArcadeFloatingBannerVisibilityScrollObserver);
    }

    sub_75FA30();

    *&v2[v12] = 0;
  }
}

void sub_9F178()
{
  v1 = v0;
  v2 = sub_762010();
  if (!v2)
  {
    v13 = [v0 navigationItem];
    [v13 setTitleView:0];

    v14 = &v1[qword_99A4B0];
    v15 = *&v1[qword_99A4B0];
    *v14 = 0;
    *(v14 + 1) = 0;

    v16 = qword_942618;
    v17 = *&v1[qword_942618];
    *&v1[qword_942618] = 0;
    if (!v17)
    {
      return;
    }

    v34 = v17;
    [v17 removeFromSuperview];
    v18 = *&v1[v16];
    if (!v18)
    {
      goto LABEL_27;
    }

    v11 = v18;
    v19 = [v1 view];
    if (v19)
    {
      v33 = v19;
      [v19 addSubview:v11];
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_32;
  }

  v3 = v2;
  v4 = [v0 traitCollection];
  v5 = sub_7699D0();

  if ((v5 & 1) == 0)
  {
    v7 = [objc_allocWithZone(type metadata accessor for ArcadeFloatingBannerView()) init];
    [v7 setHidden:1];
    sub_579E1C(v3, *&v1[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph]);
    v21 = qword_942618;
    v22 = *&v1[qword_942618];
    *&v1[qword_942618] = v7;
    if (v22)
    {
      v23 = v7;
      v24 = v22;
      v25 = sub_76A1C0();

      if (v25)
      {

LABEL_25:
        sub_9F754(0);
        [v7 setFrame:?];

        v31 = [v1 navigationItem];
        [v31 setTitleView:0];

        v32 = &v1[qword_99A4B0];
        v34 = *&v1[qword_99A4B0];
        *v32 = 0;
        *(v32 + 1) = 0;
LABEL_26:

LABEL_27:
        v20 = v34;
        goto LABEL_28;
      }

      [v24 removeFromSuperview];
      v27 = *&v1[v21];
      if (!v27)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v26 = v7;
      v27 = v7;
      if (!v7)
      {
LABEL_23:

        goto LABEL_24;
      }
    }

    v28 = v27;
    v29 = [v1 view];
    if (v29)
    {
      v30 = v29;
      [v29 addSubview:v28];

LABEL_24:
      v24 = v22;
      goto LABEL_25;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v6 = [objc_allocWithZone(type metadata accessor for ArcadePageTitleView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_579E1C(v3, *&v1[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph]);
  swift_unknownObjectWeakAssign();
  v7 = v6;
  sub_9F5D0(v6, &off_881FD0);

  v8 = qword_942618;
  v9 = *&v1[qword_942618];
  *&v1[qword_942618] = 0;
  if (v9)
  {
    v34 = v9;
    [v9 removeFromSuperview];
    v10 = *&v1[v8];
    if (v10)
    {
      v11 = v10;
      v12 = [v1 view];
      if (v12)
      {
        v33 = v12;
        [v12 addSubview:v11];

LABEL_11:

        v20 = v33;
LABEL_28:

        return;
      }

LABEL_33:
      __break(1u);
      return;
    }

    goto LABEL_26;
  }
}

void sub_9F5D0(void *a1, uint64_t a2)
{
  if (a1)
  {
    v5 = a1;
    v6 = [v2 navigationItem];
    [v6 setTitleView:v5];

    v7 = &v2[qword_99A4B0];
    v8 = *&v2[qword_99A4B0];
    *v7 = a1;
    *(v7 + 1) = a2;
    v20 = v5;

    v9 = [v2 navigationController];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 navigationBar];

      [v11 _titleOpacity];
      v13 = v12;

      v14 = *v7;
      if (*v7)
      {
        v15 = *&v14[OBJC_IVAR____TtC18ASMessagesProvider19ArcadePageTitleView_lockupView];
        v16 = v14;
        [v15 setAlpha:v13];
      }
    }

    v17 = v20;
  }

  else
  {
    v18 = [v2 navigationItem];
    [v18 setTitleView:0];

    v19 = &v2[qword_99A4B0];
    v17 = *&v2[qword_99A4B0];
    *v19 = 0;
    *(v19 + 1) = a2;
  }
}

void sub_9F754(char a1)
{
  v2 = *&v1[qword_942618];
  if (v2)
  {
    v4 = v2;
    v5 = [v1 view];
    if (v5)
    {
      v6 = v5;
      [v5 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v67.origin.x = v8;
      v67.origin.y = v10;
      v67.size.width = v12;
      v67.size.height = v14;
      CGRectGetWidth(v67);
      v15 = [v1 view];
      if (v15)
      {
        v16 = v15;
        [v15 bounds];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;

        v68.origin.x = v18;
        v68.origin.y = v20;
        v68.size.width = v22;
        v68.size.height = v24;
        CGRectGetHeight(v68);
        v25 = &v1[qword_942628];
        if (v1[qword_942628 + 16])
        {
          v26 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider24ArcadeFloatingBannerView_lockupView];
          [v4 layoutMargins];
          sub_769DA0();
          [v26 sizeThatFits:?];
          [v4 layoutMargins];
          sub_769DC0();
          v28 = v27;
          v30 = v29;
        }

        else
        {
          v28 = *v25;
          v30 = *(v25 + 1);
        }

        *v25 = v28;
        *(v25 + 1) = v30;
        v25[16] = 0;
        v31 = [v1 view];
        if (v31)
        {
          v32 = v31;
          [v31 safeAreaInsets];
          v34 = v33;

          if (v34 <= 28.0)
          {
            if ((a1 & 1) == 0)
            {
LABEL_12:
              v37 = [v1 view];
              if (!v37)
              {
LABEL_24:
                __break(1u);
                goto LABEL_25;
              }

              v38 = v37;
              [v37 bounds];
              v40 = v39;
              v42 = v41;
              v44 = v43;
              v46 = v45;

              v69.origin.x = v40;
              v69.origin.y = v42;
              v69.size.width = v44;
              v69.size.height = v46;
              CGRectGetMaxY(v69);
              goto LABEL_17;
            }
          }

          else
          {
            v35 = [v1 view];
            if (!v35)
            {
LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

            v36 = v35;
            [v35 safeAreaInsets];

            if ((a1 & 1) == 0)
            {
              goto LABEL_12;
            }
          }

          v47 = [v1 view];
          if (!v47)
          {
LABEL_25:
            __break(1u);
            return;
          }

          v48 = v47;
          [v47 bounds];
          v50 = v49;
          v52 = v51;
          v54 = v53;
          v56 = v55;

          v70.origin.x = v50;
          v70.origin.y = v52;
          v70.size.width = v54;
          v70.size.height = v56;
          CGRectGetMaxY(v70);
LABEL_17:
          v57 = [v1 view];
          if (v57)
          {
            v58 = v57;
            [v57 bounds];
            v60 = v59;
            v62 = v61;
            v64 = v63;
            v66 = v65;

            v71.origin.x = v60;
            v71.origin.y = v62;
            v71.size.width = v64;
            v71.size.height = v66;
            CGRectGetMidX(v71);

            return;
          }

          goto LABEL_22;
        }

LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }
}

void sub_9FAB0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong collectionView];

    if (v2)
    {
      swift_beginAccess();
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        v4 = v3;
        v5 = *&v3[qword_99A4C0];
        if (v5)
        {

          [v2 _systemContentInset];
          v7 = v6;
          [v2 contentOffset];
          v9 = v8;
          [v2 contentInset];
          (*(v5 + 16))(v7 + v9 + v10 > *(v5 + 32));
        }

        else
        {
        }
      }
    }
  }
}

void sub_9FBD8(char a1)
{
  v2 = *&v1[qword_942618];
  if (!v2)
  {
    return;
  }

  v56 = v2;
  sub_9F754(a1 & 1);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = &v1[qword_942638];
  if ((v1[qword_942638 + 32] & 1) == 0 && CGRectEqualToRect(*&v4, *v12))
  {
    goto LABEL_26;
  }

  v55 = v11;
  v56 = v56;
  [v56 frame];
  MinY = CGRectGetMinY(v64);
  v14 = [v1 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_30;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v65.origin.x = v17;
  v65.origin.y = v19;
  v65.size.width = v21;
  v65.size.height = v23;
  MaxY = CGRectGetMaxY(v65);
  v66.origin.x = v8;
  v66.origin.y = v9;
  v66.size.width = v10;
  v66.size.height = v55;
  v54 = CGRectGetMinY(v66);
  v25 = [v1 view];
  if (!v25)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v26 = v25;
  v27 = MaxY <= MinY;
  [v25 bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v67.origin.x = v29;
  v67.origin.y = v31;
  v67.size.width = v33;
  v67.size.height = v35;
  v36 = CGRectGetMaxY(v67) <= v54 || v27;
  *v12 = v8;
  v12[1] = v9;
  v12[2] = v10;
  v12[3] = v55;
  *(v12 + 32) = 0;
  v37 = qword_942630;
  v38 = *&v1[qword_942630];
  if (v38)
  {
    v39 = v38;
    if ([v39 isRunning])
    {
      [v39 stopAnimation:1];

      v39 = *&v1[v37];
      *&v1[v37] = 0;
    }
  }

  if (a1)
  {
    [v56 setHidden:0];
    if (v36)
    {
      v40 = 2;
LABEL_18:

      v41 = swift_allocObject();
      *(v41 + 2) = v1;
      v41[3] = v8;
      v41[4] = v9;
      v41[5] = v10;
      v41[6] = v55;
      v42 = objc_allocWithZone(UIViewPropertyAnimator);
      v61 = sub_A2794;
      v62 = v41;
      aBlock = _NSConcreteStackBlock;
      v58 = 1107296256;
      v59 = sub_23F0CC;
      v60 = &unk_882698;
      v43 = _Block_copy(&aBlock);
      v44 = v1;

      v45 = [v42 initWithDuration:v40 curve:v43 animations:0.2];
      _Block_release(v43);
      v46 = *&v1[v37];
      *&v1[v37] = v45;

      v47 = *&v1[v37];
      if (v47 && (v48 = swift_allocObject(), *(v48 + 16) = a1 & 1, *(v48 + 24) = v56, v61 = sub_A27F8, v62 = v48, aBlock = _NSConcreteStackBlock, v58 = 1107296256, v59 = sub_19EE34, v60 = &unk_8826E8, v49 = _Block_copy(&aBlock), v50 = v56, v51 = v47, , [v51 addCompletion:v49], _Block_release(v49), v51, (v52 = *&v1[v37]) != 0))
      {
        v53 = v52;
        [v53 startAnimation];
      }

      else
      {
      }

      return;
    }

    [v56 setFrame:{v8, v9, v10, v55}];
  }

  else
  {
    if (v36)
    {
      v40 = 1;
      goto LABEL_18;
    }

    [v56 setFrame:{v8, v9, v10, v55}];
    [v56 setHidden:1];
  }

LABEL_26:
}

void sub_A00BC(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_9FBD8(a1 & 1);
  }
}

void sub_A0118(void *a1)
{
  v2 = a1;
  sub_A0BA0(0, 0, 1);
  v1 = [v2 collectionView];
  [v1 reloadData];

  sub_9F178();
}

void sub_A01A4()
{
  if (*(*&v0[qword_942608] + 16))
  {
    v1 = [v0 view];
    if (v1)
    {
      v2 = v1;
      type metadata accessor for InsetCollectionViewControllerContentView();
      v3 = swift_dynamicCastClass();
      if (v3)
      {
        v4 = *(v3 + OBJC_IVAR____TtC18ASMessagesProviderP33_617AA862DC90C0016FFBABB70104B8F240InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

        if ((v4 & 1) == 0)
        {
        }

        return;
      }
    }

    __break(1u);
  }
}

void sub_A0244(uint64_t a1)
{
  v2 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph);
      v7 = Strong;

      v8 = sub_BD88(&unk_93F630);
      sub_768860();
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(v4, 1, v8) == 1)
      {

        sub_10A2C(v4, &unk_93F980);
      }

      else
      {
        sub_32A6C0(a1, 1, v6, v4);

        (*(v9 + 8))(v4, v8);
      }
    }
  }
}

uint64_t sub_A0400(uint64_t a1)
{
  v2 = sub_7570A0();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v28 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&qword_940A40);
  __chkstk_darwin(v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  sub_61B4C(a1, v9);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_61BB0(v9);
LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v19 = sub_BD88(&qword_940A50);
  sub_50774(&v9[*(v19 + 48)], v18);
  sub_75F250();
  v20 = *(v4 + 48);
  sub_1ED18(v15, v6, &unk_93FD30);
  sub_1ED18(v18, &v6[v20], &unk_93FD30);
  v21 = v29;
  v22 = *(v29 + 48);
  if (v22(v6, 1, v2) != 1)
  {
    sub_1ED18(v6, v12, &unk_93FD30);
    if (v22(&v6[v20], 1, v2) != 1)
    {
      v25 = v28;
      (*(v21 + 32))(v28, &v6[v20], v2);
      sub_A287C(&qword_947410, &type metadata accessor for URL);
      v26 = v21;
      v23 = sub_7691C0();
      v27 = *(v26 + 8);
      v27(v25, v2);
      sub_10A2C(v15, &unk_93FD30);
      sub_10A2C(v18, &unk_93FD30);
      v27(v12, v2);
      sub_10A2C(v6, &unk_93FD30);
      return v23 & 1;
    }

    sub_10A2C(v15, &unk_93FD30);
    sub_10A2C(v18, &unk_93FD30);
    (*(v21 + 8))(v12, v2);
    goto LABEL_8;
  }

  sub_10A2C(v15, &unk_93FD30);
  sub_10A2C(v18, &unk_93FD30);
  if (v22(&v6[v20], 1, v2) != 1)
  {
LABEL_8:
    sub_10A2C(v6, &qword_940A40);
    goto LABEL_9;
  }

  sub_10A2C(v6, &unk_93FD30);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_A08BC()
{

  sub_F704(*(v0 + qword_9425E8));
}

uint64_t sub_A0980(uint64_t a1)
{

  sub_F704(*(a1 + qword_9425E8));
}

uint64_t type metadata accessor for ArcadeDiffablePageViewController()
{
  result = qword_942670;
  if (!qword_942670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A0BA0(char a1, char a2, char a3)
{
  v4 = v3;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a1 & 1;
  *(v9 + 24) = a1;
  v11 = a2 & 1;
  *(v9 + 25) = a2;

  if ((a3 & 1) != 0 && (v12 = [v4 transitionCoordinator]) != 0)
  {
    v13 = v12;

    v14 = swift_allocObject();
    *(v14 + 16) = sub_A285C;
    *(v14 + 24) = v9;
    v24 = sub_1F81C;
    v25 = v14;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_6C6800;
    v23 = &unk_882788;
    v15 = _Block_copy(&v20);

    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = v11;
    *(v17 + 25) = v10;
    v24 = sub_A286C;
    v25 = v17;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_6C6800;
    v23 = &unk_8827D8;
    v18 = _Block_copy(&v20);

    [v13 animateAlongsideTransition:v15 completion:v18];

    _Block_release(v18);
    _Block_release(v15);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_A11B8(v8, v10, a2 & 1);
  }
}

void sub_A0E48(double a1)
{
  v2 = sub_7653A0();
  v24[3] = v2;
  v24[4] = sub_A287C(&qword_947D00, &type metadata accessor for Feature.iOS);
  v3 = sub_B1B4(v24);
  (*(*(v2 - 8) + 104))(v3, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v2);
  LOBYTE(v2) = sub_765C30();
  sub_BEB8(v24);
  if ((v2 & 1) == 0)
  {
    goto LABEL_17;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5 && (v6 = v5, v7 = [v5 navigationController], v6, v7))
  {
    v8 = [v7 viewControllers];

    sub_BE70(0, &qword_9434E0);
    v9 = sub_769460();

    if (v9 >> 62)
    {
      v10 = sub_76A860();
      if (v10)
      {
LABEL_6:
        v11 = __OFSUB__(v10, 1);
        v12 = v10 - 1;
        if (v11)
        {
          __break(1u);
        }

        else if ((v9 & 0xC000000000000001) == 0)
        {
          if ((v12 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v12 < *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
          {
            v13 = *(v9 + 8 * v12 + 32);
            goto LABEL_11;
          }

          __break(1u);
          return;
        }

        v13 = sub_76A770();
LABEL_11:
        v14 = v13;

        if (!Strong)
        {
          goto LABEL_12;
        }

LABEL_15:
        if (!v14)
        {
          goto LABEL_27;
        }

        sub_BE70(0, &qword_9434E0);
        v15 = sub_76A1C0();

        if ((v15 & 1) == 0)
        {
          return;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v10 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
      if (v10)
      {
        goto LABEL_6;
      }
    }

    v14 = 0;
    if (Strong)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v14 = 0;
    if (Strong)
    {
      goto LABEL_15;
    }
  }

LABEL_12:
  if (v14)
  {
    Strong = v14;
    goto LABEL_27;
  }

LABEL_17:
  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    if (*&v16[qword_99A4B0])
    {

      goto LABEL_21;
    }

    v17 = v16;
    v18 = [v16 traitCollection];
    v19 = sub_7699B0();

    if (v19)
    {
LABEL_21:
      swift_beginAccess();
      v20 = swift_unknownObjectWeakLoadStrong();
      if (v20)
      {
        v21 = v20;
        v22 = *(v20 + qword_99A4B0);
        if (v22)
        {
          [*(v22 + OBJC_IVAR____TtC18ASMessagesProvider19ArcadePageTitleView_lockupView) setAlpha:a1];
        }

        sub_3B76B0(a1 == 1.0);
      }
    }
  }

  swift_beginAccess();
  v23 = swift_unknownObjectWeakLoadStrong();
  if (!v23)
  {
    return;
  }

  Strong = v23;
  sub_9D10C();
LABEL_27:
}

void sub_A11B8(uint64_t a1, char a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ((sub_71DFF0() & 1) == 0)
    {
      goto LABEL_10;
    }

    v7 = [v6 view];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for InsetCollectionViewControllerContentView();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = *(v9 + OBJC_IVAR____TtC18ASMessagesProviderP33_617AA862DC90C0016FFBABB70104B8F240InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

        if (v10 & 1) == 0 && (a2)
        {

          if ((a3 & 1) != 0 || (v11 = *&v6[qword_99A4B0]) == 0)
          {
            v12 = 1;
          }

          else
          {
            [*(v11 + OBJC_IVAR____TtC18ASMessagesProvider19ArcadePageTitleView_lockupView) setAlpha:1.0];
            v12 = 1;
          }

LABEL_24:
          sub_3B76B0(v12);
LABEL_25:

          return;
        }

LABEL_10:
        v13 = *&v6[qword_99A4B8];
        if (v13)
        {
          v14 = *&v6[qword_99A4B0];

          if (v14 || (v15 = [v6 traitCollection], v16 = sub_7699B0(), v15, (v16 & 1) != 0))
          {
            v17 = [v6 collectionView];

            if (v17)
            {
              [v17 _systemContentInset];
              v19 = v18;
              [v17 contentOffset];
              v21 = v20;
              v22 = [v17 contentInset];
              v23.n128_f64[0] = fmin((v19 + v21 + v23.n128_f64[0] - *(v13 + 32)) / *(v13 + 40), 1.0);
              if (v23.n128_f64[0] < 0.0)
              {
                v23.n128_f64[0] = 0.0;
              }

              (*(v13 + 16))(v22, v23);

              goto LABEL_25;
            }

LABEL_29:
            __break(1u);
            return;
          }
        }

        v24 = *&v6[qword_99A4B0];
        if (v24)
        {
          v25 = 0.0;
          if (a2)
          {
            v25 = 1.0;
          }

          [*(v24 + OBJC_IVAR____TtC18ASMessagesProvider19ArcadePageTitleView_lockupView) setAlpha:v25];
        }

        v12 = a2 & 1;
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_29;
  }
}

void sub_A1418(void *a1, uint64_t a2, char a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = &UITransitionContextFromViewControllerKey;
    if ((a3 & 1) == 0)
    {
      v9 = &UITransitionContextToViewControllerKey;
    }

    v10 = *v9;
    if ([a1 isCancelled])
    {
      v11 = [a1 viewControllerForKey:v10];
      if (v11)
      {
        v12 = v11;
        sub_BE70(0, &qword_9434E0);
        v13 = v8;
        v14 = sub_76A1C0();

        if (v14)
        {
          swift_unknownObjectWeakInit();
          sub_3B7448(&v15, (a4 & 1) == 0, (a3 & 1) == 0);
          swift_unknownObjectWeakDestroy();

          return;
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

unint64_t sub_A1578(uint64_t a1)
{
  sub_75BB40();
  sub_A287C(&qword_942C50, &type metadata accessor for EditorialPageKey);
  v2 = sub_769150();

  return sub_A1610(a1, v2);
}

unint64_t sub_A1610(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_75BB40();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_A287C(&qword_942C58, &type metadata accessor for EditorialPageKey);
      v16 = sub_7691C0();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_A17D4(uint64_t a1)
{
  v2 = sub_BD88(&qword_942C40);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_BD88(&qword_942C48);
    v7 = sub_76A8B0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1ED18(v9, v5, &qword_942C40);
      result = sub_A1578(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_75BB40();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_7570A0();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

char *sub_A19F4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v5 - 8);
  v31 = sub_758800();
  v6 = *(v31 - 8);
  __chkstk_darwin(v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_758880();
  v34 = *(v32 - 8);
  __chkstk_darwin(v32);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  *(v2 + qword_9425E0) = 1;
  v14 = (v2 + qword_9425E8);
  *v14 = 0;
  v14[1] = 0;
  *(v2 + qword_9425F0) = 2;
  v15 = (v2 + qword_99A4B0);
  *v15 = 0;
  v15[1] = 0;
  *(v2 + qword_99A4B8) = 0;
  *(v2 + qword_942600) = 0;
  *(v2 + qword_942608) = &_swiftEmptySetSingleton;
  v16 = v2 + qword_942610;
  *v16 = 0;
  *(v16 + 8) = 1;
  *(v2 + qword_942618) = 0;
  *(v2 + qword_99A4C0) = 0;
  v17 = v2 + qword_942620;
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 1;
  v18 = v2 + qword_942628;
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = 1;
  *(v2 + qword_942630) = 0;
  v19 = v2 + qword_942638;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 1;
  type metadata accessor for InAppMessagesManager();
  sub_768900();
  sub_768ED0();
  *(v2 + qword_9425D8) = v35;
  sub_764300();
  swift_allocObject();

  *(v2 + qword_942640) = sub_7642F0();
  (*(v6 + 104))(v8, enum case for StoreTab.Identifier.arcade(_:), v31);

  sub_75F250();

  sub_A17D4(_swiftEmptyArrayStorage);
  sub_758810();
  v20 = v32;
  (*(v34 + 16))(v10, v13, v32);
  v21 = objc_allocWithZone(type metadata accessor for ArcadeHeaderButtonContainer());

  *(v2 + qword_9425F8) = sub_4EE6F0(v10, a2);

  v22 = sub_468BF0(a1, a2);
  sub_763730();
  v23 = v22;
  sub_768ED0();
  v24 = v35;
  v25 = *(*&v23[qword_9425F8] + OBJC_IVAR____TtC18ASMessagesProvider27ArcadeHeaderButtonContainer_accountButton);
  sub_763720();

  sub_BD88(&qword_9477F0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_77B6D0;
  v27 = sub_767890();
  *(v26 + 32) = v27;
  *(v26 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_7698F0();
  swift_unknownObjectRelease();

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_77DC20;
  *(v28 + 32) = sub_767B80();
  *(v28 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v28 + 48) = sub_7676E0();
  *(v28 + 56) = &protocol witness table for UITraitLayoutDirection;
  *(v28 + 64) = v27;
  *(v28 + 72) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_769900();

  swift_unknownObjectRelease();

  (*(v34 + 8))(v13, v20);
  return v23;
}

void sub_A1F70(uint64_t a1)
{
  v2 = sub_768380();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7683C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + qword_942628;
  if ((*(a1 + qword_942628 + 16) & 1) == 0)
  {
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 1;
    v16 = v8;
    sub_BE70(0, &qword_940340);
    v15 = sub_769970();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_A22BC;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23F0CC;
    aBlock[3] = &unk_882620;
    v13 = _Block_copy(aBlock);

    sub_7683A0();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_A287C(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags);
    sub_BD88(&qword_940350);
    sub_16194(&qword_9406F0, &qword_940350);
    sub_76A5A0();
    v14 = v15;
    sub_769980();
    _Block_release(v13);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v10, v16);
  }
}

uint64_t sub_A2284()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_A22C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_A22DC()
{
  v1 = v0;
  v2 = qword_99A4B8;
  if (!*&v0[qword_99A4B8])
  {
    sub_75FA30();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NavigationBarVisibilityScrollObserver();
    v4 = swift_allocObject();
    *(v4 + 32) = xmmword_782450;
    *(v4 + 16) = sub_A281C;
    *(v4 + 24) = v3;
    *&v0[v2] = v4;

    sub_A287C(&qword_942C78, type metadata accessor for NavigationBarVisibilityScrollObserver);
    sub_75FA40();
  }

  v5 = [v0 view];
  if (!v5)
  {
    goto LABEL_26;
  }

  v6 = v5;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v8 = *(v7 + OBJC_IVAR____TtC18ASMessagesProviderP33_617AA862DC90C0016FFBABB70104B8F240InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

  if ((v8 & 1) == 0)
  {
    v9 = [v1 navigationController];
    if (v9)
    {

      if (sub_71DFF0())
      {
        swift_unknownObjectWeakInit();
        sub_3B7448(v41, 0, 0);
        swift_unknownObjectWeakDestroy();
        goto LABEL_16;
      }
    }
  }

  v10 = [v1 view];
  if (!v10)
  {
    goto LABEL_27;
  }

  v11 = v10;
  v12 = [v10 safeAreaLayoutGuide];

  [v12 layoutFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v42.origin.x = v14;
  v42.origin.y = v16;
  v42.size.width = v18;
  v42.size.height = v20;
  MinY = CGRectGetMinY(v42);
  if (*&v1[v2])
  {

    v22 = [v1 collectionView];
    if (!v22)
    {
LABEL_30:
      __break(1u);
      return;
    }

    v23 = v22;
    sub_2ED8B8(v22, MinY);
  }

  v24 = [v1 collectionView];
  if (!v24)
  {
    goto LABEL_28;
  }

  v25 = v24;
  [v24 _pocketInsets];
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = [v1 collectionView];
  if (!v32)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v33 = v32;
  [v32 _setPocketInsets:{MinY, v27, v29, v31}];

LABEL_16:
  v34 = [v1 viewIfLoaded];
  if (!v34 || (v35 = v34, v36 = [v34 window], v35, !v36) || (v37 = objc_msgSend(v36, "isHidden"), v36, v37))
  {
    v38 = [v1 presentedViewController];
    if (v38)
    {
    }

    else if ([v1 isViewLoaded])
    {
      swift_unknownObjectWeakInit();
      sub_3B7448(v41, 1, 1);
      swift_unknownObjectWeakDestroy();
      v39 = sub_7653A0();
      v41[3] = v39;
      v41[4] = sub_A287C(&qword_947D00, &type metadata accessor for Feature.iOS);
      v40 = sub_B1B4(v41);
      (*(*(v39 - 8) + 104))(v40, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v39);
      LOBYTE(v39) = sub_765C30();
      sub_BEB8(v41);
      if (v39)
      {
        sub_9D10C();
      }
    }
  }

  sub_9D10C();
}

uint64_t sub_A275C()
{

  return _swift_deallocObject(v0, 56, 7);
}

id sub_A2794()
{
  result = *(*(v0 + 16) + qword_942618);
  if (result)
  {
    return [result setFrame:{*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48)}];
  }

  return result;
}

uint64_t sub_A27C0()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_A27F8(id result)
{
  if ((*(v1 + 16) & 1) == 0 && !result)
  {
    return [*(v1 + 24) setHidden:1];
  }

  return result;
}

uint64_t sub_A2824()
{

  return _swift_deallocObject(v0, 26, 7);
}

uint64_t sub_A287C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_A28F0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_A2930()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_A2A50()
{
  v0 = type metadata accessor for BaseTodayBrickCollectionViewCell();
  sub_A2FE8(&qword_9411C8, type metadata accessor for BaseTodayBrickCollectionViewCell);
  sub_A2FE8(&qword_9411D0, type metadata accessor for BaseTodayBrickCollectionViewCell);
  sub_A2FE8(&qword_9411D8, type metadata accessor for BaseTodayBrickCollectionViewCell);
  return v0;
}

uint64_t sub_A2B1C()
{
  sub_765B70();
  sub_A2FE8(&qword_94CAB0, &type metadata accessor for TodayCard);
  sub_75C750();
  if (!v2)
  {
    return 0;
  }

  sub_765B20();
  v0 = sub_75B080();

  result = 0;
  if (v0 > 6)
  {
    if (v0 == 7)
    {
      return type metadata accessor for GridTodayBrickCollectionViewCell();
    }

    else if (v0 == 8)
    {
      return type metadata accessor for VideoTodayBrickCollectionViewCell();
    }
  }

  else if (v0)
  {
    if (v0 == 1)
    {
      return type metadata accessor for BrandedAppTodayBrickCollectionViewCell();
    }
  }

  else
  {
    return type metadata accessor for TodayBrickCollectionViewCellWithBackground();
  }

  return result;
}

uint64_t sub_A2C28()
{
  v0 = sub_764930();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v16 - v5;
  v7 = sub_BD88(&unk_94F1F0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - v9;
  swift_getKeyPath();
  sub_75C7B0();

  swift_getKeyPath();
  sub_768750();

  (*(v8 + 8))(v10, v7);
  (*(v1 + 104))(v3, enum case for Shelf.ContentType.smallStoryCard(_:), v0);
  sub_A2FE8(&qword_942D68, &type metadata accessor for Shelf.ContentType);
  sub_769430();
  sub_769430();
  if (v16[2] == v16[0] && v16[3] == v16[1])
  {
    v11 = *(v1 + 8);
    v11(v3, v0);
    v11(v6, v0);
  }

  else
  {
    v12 = sub_76A950();
    v13 = *(v1 + 8);
    v13(v3, v0);
    v13(v6, v0);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_A2B1C();
  if (result)
  {
    v15 = result;
    sub_A2FE8(&qword_9411C8, type metadata accessor for BaseTodayBrickCollectionViewCell);
    sub_A2FE8(&qword_9411D0, type metadata accessor for BaseTodayBrickCollectionViewCell);
    sub_A2FE8(&qword_9411D8, type metadata accessor for BaseTodayBrickCollectionViewCell);
    return v15;
  }

  return result;
}

uint64_t sub_A2FE8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_A3030()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = [v1 _usesMinimumSafeAreas];

  v4 = [v0 view];
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = &selRef__minimumSafeAreaInsets;
LABEL_7:
      [v4 *v6];

      return;
    }

    goto LABEL_9;
  }

  if (v4)
  {
    v6 = &selRef_safeAreaInsets;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_A310C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_948710);
  __chkstk_darwin(v4 - 8);
  v6 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v104 = &v87 - v8;
  v9 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v9 - 8);
  v103 = &v87 - v10;
  v11 = sub_75A6B0();
  __chkstk_darwin(v11 - 8);
  v102 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v101 = &v87 - v14;
  v15 = sub_BD88(&unk_948720);
  __chkstk_darwin(v15 - 8);
  v109 = &v87 - v16;
  v100 = sub_75A6E0();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v18 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_75DC30();
  v19 = *(v105 - 8);
  __chkstk_darwin(v105);
  v108 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_766690();
  v106 = *(v21 - 8);
  v107 = v21;
  __chkstk_darwin(v21);
  v98 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_7656A0();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v93 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v94 = &v87 - v25;
  v97 = sub_7656C0();
  v26 = *(v97 - 8);
  __chkstk_darwin(v97);
  v28 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v87 - v30;
  sub_759490();
  sub_A4190(&unk_93EC00, &type metadata accessor for FramedVideo);
  v110 = a1;
  result = sub_75C750();
  v33 = aBlock[0];
  if (aBlock[0])
  {
    v90 = v6;
    v91 = a2;
    v92 = v19;

    v34 = sub_759450();
    v35 = [v34 length];

    v36 = &selRef_setSpeed_;
    v111 = v18;
    if (v35 < 1)
    {
      v48 = v112;
      [*&v112[qword_964310] setText:0];
      v48[qword_9A0A18] = 0;
      [*&v48[qword_964300] setHidden:1];
    }

    else
    {
      v88 = v28;
      v89 = v26;
      v37 = sub_759450();
      swift_getKeyPath();
      sub_75C7B0();

      v38 = aBlock[6];
      v39 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v37];
      v40 = [v37 length];
      v41 = swift_allocObject();
      *(v41 + 16) = 0;
      *(v41 + 24) = v38;
      *(v41 + 32) = v39;
      *(v41 + 40) = 1;
      v42 = swift_allocObject();
      *(v42 + 16) = sub_119AC;
      *(v42 + 24) = v41;
      aBlock[4] = sub_2636C;
      aBlock[5] = v42;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10C1C;
      aBlock[3] = &unk_8829B8;
      v43 = _Block_copy(aBlock);
      v44 = v38;
      v45 = v39;

      [v37 enumerateAttributesInRange:0 options:v40 usingBlock:{0x100000, v43}];

      _Block_release(v43);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
        return result;
      }

      v47 = v112;
      [*&v112[qword_964310] setAttributedText:v45];
      v47[qword_9A0A18] = 1;
      [*&v47[qword_964300] setHidden:0];

      v18 = v111;
      v26 = v89;
      v28 = v88;
      v36 = &selRef_setSpeed_;
    }

    v49 = *&v112[qword_964308];
    sub_759460();
    if (v50)
    {
      v51 = sub_769210();
    }

    else
    {
      v51 = 0;
    }

    [v49 v36[511]];

    if (sub_759430())
    {
      v52 = [v112 contentView];
      [v52 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    }

    else
    {
      swift_getKeyPath();
      sub_75C7B0();

      sub_765580();
      v53 = *(v26 + 8);
      v54 = v97;
      v53(v31, v97);
      swift_getKeyPath();
      sub_75C7B0();

      sub_7655A0();
      v53(v28, v54);
      v88 = v31;
      v55 = v95;
      v56 = *(v95 + 104);
      v89 = v33;
      v57 = v94;
      v58 = v96;
      v56(v94, enum case for PageGrid.Direction.vertical(_:), v96);
      swift_getKeyPath();
      sub_75C7B0();

      sub_765590();
      v53(v28, v54);
      (*(v55 + 16))(v93, v57, v58);
      sub_40DC7C(0.0);
      v59 = v88;
      sub_765670();
      (*(v55 + 8))(v57, v58);
      v60 = [v112 contentView];
      sub_765620();
      [v60 setLayoutMargins:?];

      v53(v59, v54);
      v18 = v111;
    }

    v61 = v108;
    v62 = v106;
    v63 = sub_759480();
    v64 = v107;
    if (v63)
    {
      v65 = v112;
      v66 = [v112 contentView];
      sub_2630C();
      sub_75D650();

      sub_765260();
      v67 = v98;
      sub_7666A0();
      sub_766600();
      v69 = v68;
      v71 = v70;

      (*(v62 + 8))(v67, v64);
      v72 = &v65[qword_99C4E0];
      *v72 = v69;
      *(v72 + 1) = v71;
    }

    if (sub_759470())
    {
      (*(v99 + 104))(v18, enum case for VideoFillMode.scaleAspectFill(_:), v100);
      if (sub_759480())
      {
        sub_765260();
        sub_7666A0();

        v73 = 0;
      }

      else
      {
        v73 = 1;
      }

      (*(v62 + 56))(v109, v73, 1, v64);
      sub_764B60();
      sub_764BA0();
      sub_764B70();
      sub_764B50();
      sub_764BB0();
      sub_75DC10();
      sub_75C360();
      sub_768880();
      sub_764B40();
      v74 = v103;
      sub_764BD0();
      v75 = sub_7570A0();
      (*(*(v75 - 8) + 56))(v74, 0, 1, v75);
      v76 = v104;
      sub_764B90();
      v77 = v90;
      sub_764B80();
      type metadata accessor for VideoView();
      sub_A4190(&qword_93F500, type metadata accessor for VideoView);
      v78 = sub_75C340();
      sub_10A2C(v77, &unk_948710);
      sub_10A2C(v76, &unk_948710);
      sub_10A2C(v74, &unk_93FD30);
      sub_10A2C(aBlock, &unk_9443A0);
      sub_287808();
      swift_unknownObjectWeakAssign();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v80 = Strong;
        v81 = *&v112[qword_94C798];
        v82 = v92;
        if (v81)
        {
          v83 = *&v112[qword_94C798];
        }

        else
        {
          v83 = [v112 contentView];
          v81 = 0;
        }

        v84 = v81;
        [v83 addSubview:v80];
        [v112 setNeedsLayout];
      }

      else
      {

        v82 = v92;
      }

      (*(v82 + 8))(v61, v105);
    }

    v85 = sub_759440();

    v112[qword_9A0A10] = v85 & 1;
    sub_26698(v86);
  }

  return result;
}

uint64_t sub_A4024@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_9A0A08;
  swift_beginAccess();
  return sub_1799C(v1 + v3, a1);
}

uint64_t sub_A4080(uint64_t a1)
{
  v3 = qword_9A0A08;
  swift_beginAccess();
  sub_1792C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_A4148()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, "prepareForReuse");
  sub_286FD0(0);
}

uint64_t sub_A4190(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_A41DC()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_A4234(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_A4340()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionViewTableLayout();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_A4398()
{
  v0 = sub_BD88(&qword_942DB0);
  __chkstk_darwin(v0);
  v1 = sub_BD88(&qword_942DB8);
  sub_161DC(v1, qword_942D98);
  sub_BE38(v1, qword_942D98);
  sub_A44DC();
  sub_7667C0();
  sub_A4528();
  return sub_767480();
}

void sub_A4478(void *a1@<X8>)
{
  v2 = objc_allocWithZone(LPLinkView);
  sub_757040(v3);
  v5 = v4;
  v6 = [v2 initWithURL:v4];

  *a1 = v6;
}

unint64_t sub_A44DC()
{
  result = qword_942DC0;
  if (!qword_942DC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_942DC0);
  }

  return result;
}

unint64_t sub_A4528()
{
  result = qword_942DC8;
  if (!qword_942DC8)
  {
    sub_133D8(&qword_942DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_942DC8);
  }

  return result;
}

char *sub_A458C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_overlayKind];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v4[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_overlay];
  *v11 = 0;
  *(v11 + 1) = 0;
  swift_weakInit();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_artworks] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_multiAppIconView] = [objc_allocWithZone(type metadata accessor for MultiAppFallbackIconView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_gradientView] = [objc_allocWithZone(type metadata accessor for MultiAppFallbackGradientView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v25[0] = sub_39ED38;
  v25[1] = 0;
  v25[2] = sub_756A94;
  v25[3] = 0;
  v25[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v25[5] = 0;
  v25[6] = sub_39ED38;
  v25[7] = 0;
  v25[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v25[9] = 0;
  v25[10] = sub_234F64;
  v25[11] = 0;
  v26 = 0x4000000000000000uLL;
  v27 = 0;
  v28 = 0x4018000000000000;
  v29 = 0;
  v30 = 1;
  v12 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView());
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView] = sub_367388(v25, &v26);
  type metadata accessor for InfoLayerOverlayContainerView();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v24.receiver = v4;
  v24.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_gradientView;
  v15 = *&v13[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_gradientView];
  v16 = v13;
  v17 = v15;
  [v17 frame];
  [v17 setFrame:?];

  [*&v13[v14] setClipsToBounds:1];
  [*&v13[v14] _setContinuousCornerRadius:20.0];
  [v16 _setContinuousCornerRadius:20.0];
  v18 = [v16 contentView];
  [v18 addSubview:*&v13[v14]];

  v19 = [v16 contentView];
  [v19 addSubview:*&v16[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_multiAppIconView]];

  v20 = [v16 contentView];
  [v20 addSubview:*&v16[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView]];

  v21 = [v16 contentView];
  [v21 addSubview:*&v16[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer]];

  v22 = [v16 contentView];
  [v22 setClipsToBounds:1];

  sub_BE70(0, &qword_941EC8);
  sub_769A40();
  sub_769F40();
  swift_unknownObjectRelease();

  sub_28053C();

  return v16;
}

id sub_A4990()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isTransitioning);
  *(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView) + qword_950CC0) = v1 & 1;
  sub_36851C();
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer);
  v3 = OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_isTransitioning;
  v2[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_isTransitioning] = v1 & 1;
  [v2 setHidden:(v2[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_sizeCategory] == 4) & (v1 ^ 1u)];
  v2[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_isLayoutRequired] = (v2[v3] & 1) == 0;

  return [v2 setNeedsLayout];
}

uint64_t sub_A4A94()
{
  v1 = [v0 traitCollection];
  v2 = v1;
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded;
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v4 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v4 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  sub_4C0ED8(v1, v0[*v4], &v31);
  v5 = v34;

  v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView];
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer];
  v8 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_overlayKind];
  v9 = v0[v3];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v9)
  {
    v10 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v11 = v0[v10];
  v12 = v0[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_overlayKind + 8];
  v13 = v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory];
  v26 = v31;
  v27 = v32;
  v28 = v33;
  *&v29 = v5;
  *(&v29 + 1) = v6;
  *v30 = v7;
  *&v30[8] = v8;
  v30[16] = v12;
  v30[17] = v11;
  v30[18] = v13;
  v30[19] = v9;
  v30[20] = 0;
  v35 = v31;
  v36 = v32;
  *&v39[13] = *&v30[13];
  v38 = v29;
  *v39 = *v30;
  v37 = v33;
  v14 = v6;
  v15 = v7;
  [v0 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [v0 traitCollection];
  sub_11CCCC(v24, v17, v19, v21, v23);

  return sub_A91BC(&v26);
}

void sub_A4C38()
{
  v1 = v0;
  v2 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v8 = &v57 - v7;
  v9 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_multiAppIconView];
  v10 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider24MultiAppFallbackIconView_configuration];
  if (v10)
  {
    v11 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded;
    v12 = *(v10 + 24);
    if (v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
    {
      v13 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v13 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    if (v0[*v13] == 6 && (v14 = [v0 traitCollection], v15 = sub_769A00(), v14, (v15 & 1) == 0))
    {
      [v1 bounds];
      sub_A5234(v12);
      [v1 bounds];
      CGRectGetMidX(v64);
      [v1 bounds];
      CGRectGetMinY(v65);
      [v1 bounds];
      CGRectGetWidth(v66);
      [v1 bounds];
      CGRectGetHeight(v67);
      v35 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
      swift_beginAccess();
      sub_5FC64(&v1[v35], v8);
      if (v1[v11])
      {
        v36 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v36 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v37 = v1[*v36];
      v38 = [v1 traitCollection];
      sub_28423C(v8, v37, v38);

      sub_10A2C(v8, &unk_955AA0);
      sub_5FC64(&v1[v35], v4);
      if (v1[v11])
      {
        v39 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v39 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v40 = v1[*v39];
      v41 = [v1 traitCollection];
      sub_28423C(v4, v40, v41);

      sub_10A2C(v4, &unk_955AA0);
      sub_769D10();
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v50 = [v9 traitCollection];
      sub_31CCA4(v50, v47, v49);

      v68.origin.x = v43;
      v68.origin.y = v45;
      v68.size.width = v47;
      v68.size.height = v49;
      CGRectGetMidX(v68);
      v69.origin.x = v43;
      v69.origin.y = v45;
      v69.size.width = v47;
      v69.size.height = v49;
      CGRectGetMinY(v69);
      v51 = [v1 traitCollection];
      [v1 bounds];
      sub_769CA0();
      v53 = v52;
      MinY = v54;
      v25 = v55;
      v27 = v56;

      v34 = v53;
    }

    else
    {
      [v1 bounds];
      sub_A5234(v12);
      MinY = v16;
      [v1 bounds];
      CGRectGetMinX(v58);
      [v1 bounds];
      CGRectGetMinY(v59);
      [v1 bounds];
      CGRectGetWidth(v60);
      [*&v1[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView] frame];
      CGRectGetMinY(v61);
      sub_769D10();
      x = v62.origin.x;
      y = v62.origin.y;
      width = v62.size.width;
      height = v62.size.height;
      v22 = CGRectGetHeight(v62);
      v23 = [v9 traitCollection];
      sub_31CCA4(v23, 1.79769313e308, v22);
      v25 = v24;
      v27 = v26;

      if (v1[v11])
      {
        v28 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v28 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v29 = x;
      v30 = y;
      v31 = width;
      v32 = height;
      if (v1[*v28] == 4)
      {
        MinY = CGRectGetMinY(*&v29);
      }

      else
      {
        v33 = CGRectGetMidY(*&v29) + v27 * -0.5;
        if (v33 > MinY)
        {
          MinY = v33;
        }
      }

      [v1 bounds];
      v34 = floor(CGRectGetMidX(v63) + v25 * -0.5);
    }

    [v9 setFrame:{v34, MinY, v25, v27}];
  }
}

uint64_t sub_A5234(uint64_t a1)
{
  v2 = v1;
  v4 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v4 - 8);
  v61 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v60 - v7;
  __chkstk_darwin(v9);
  v11 = &v60 - v10;
  __chkstk_darwin(v12);
  v14 = &v60 - v13;
  __chkstk_darwin(v15);
  v17 = &v60 - v16;
  *&v19 = __chkstk_darwin(v18).n128_u64[0];
  v21 = &v60 - v20;
  v22 = [v1 traitCollection];
  v62 = sub_769A00();

  v23 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded;
  if (v2[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded] != 1)
  {
    if (a1 == 3)
    {
      goto LABEL_13;
    }

    if (a1 != 2)
    {
      if (a1 != 1)
      {
        goto LABEL_41;
      }

      goto LABEL_23;
    }

LABEL_18:
    v29 = v2[v23];
    if (v2[v23])
    {
      v30 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v30 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v31 = v2[*v30];
    if (v31 != 4)
    {
      if ((v31 != 6) | v62 & 1)
      {
        goto LABEL_39;
      }

      v35 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
      swift_beginAccess();
      sub_5FC64(&v2[v35], v17);
      if (v29)
      {
        v36 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v36 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v37 = v2[*v36];
      v38 = [v2 traitCollection];
      sub_28423C(v17, v37, v38);

      v39 = v17;
      goto LABEL_57;
    }

    return sub_7697D0();
  }

  if ((v2[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32] & 1) != 0 || (v24 = [v2 traitCollection], v25 = sub_7699D0(), v24, (v25 & 1) == 0))
  {
    if (a1 == 1)
    {
LABEL_23:
      v32 = v2[v23];
      if (v2[v23])
      {
        v33 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v33 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v34 = v2[*v33];
      if (v34 == 4)
      {
        return sub_7697D0();
      }

      if ((v34 != 6) | v62 & 1)
      {
LABEL_39:
        if (v2[v23] == 1)
        {
          v44 = [v2 traitCollection];
          sub_7699F0();

          v45 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
          swift_beginAccess();
          sub_5FC64(&v2[v45], v11);
          v46 = [v2 traitCollection];
          sub_28377C(v11, v46);
          goto LABEL_50;
        }

LABEL_41:
        v47 = [v2 traitCollection];
        v48 = sub_7699F0();

        v49 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
        if (v48)
        {
          swift_beginAccess();
          sub_5FC64(&v2[v49], v8);
          if (v2[v23])
          {
            v50 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
          }

          else
          {
            v50 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
          }

          v51 = v2[*v50];
          v52 = [v2 traitCollection];
          sub_28423C(v8, v51, v52);

          v11 = v8;
          goto LABEL_51;
        }

        swift_beginAccess();
        v11 = v61;
        sub_5FC64(&v2[v49], v61);
        if (v2[v23])
        {
          v53 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
        }

        else
        {
          v53 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
        }

        v54 = v2[*v53];
        v46 = [v2 traitCollection];
        sub_28423C(v11, v54, v46);
LABEL_50:

LABEL_51:
        sub_10A2C(v11, &unk_955AA0);
        return sub_7697D0();
      }

      v56 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
      swift_beginAccess();
      sub_5FC64(&v2[v56], v21);
      if (v32)
      {
        v57 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v57 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v58 = v2[*v57];
      v59 = [v2 traitCollection];
      sub_28423C(v21, v58, v59);

      v39 = v21;
LABEL_57:
      sub_10A2C(v39, &unk_955AA0);
      return sub_7697D0();
    }
  }

  else if (a1 == 1)
  {
    goto LABEL_23;
  }

  if (a1 == 2)
  {
    goto LABEL_18;
  }

  if (a1 != 3)
  {
    goto LABEL_39;
  }

LABEL_13:
  v26 = v2[v23];
  if (v2[v23])
  {
    v27 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v27 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v28 = v2[*v27];
  if (v28 != 4)
  {
    if ((v28 != 6) | v62 & 1)
    {
      goto LABEL_39;
    }

    v40 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_5FC64(&v2[v40], v14);
    if (v26)
    {
      v41 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v41 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v42 = v2[*v41];
    v43 = [v2 traitCollection];
    sub_28423C(v14, v42, v43);

    v39 = v14;
    goto LABEL_57;
  }

  return sub_7697D0();
}

uint64_t sub_A5930()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_multiAppIconView];
  v2 = OBJC_IVAR____TtC18ASMessagesProvider24MultiAppFallbackIconView_configuration;
  if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider24MultiAppFallbackIconView_configuration))
  {
    swift_unknownObjectWeakAssign();

    sub_31BE4C();
  }

  *(v1 + v2) = 0;

  sub_4BC094();
  sub_55D954(_swiftEmptyArrayStorage);
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_artworks] = _swiftEmptyArrayStorage;
}

void sub_A5A50()
{
  sub_28399C();
  v1 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded;
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v2 = 0.0;
  }

  else
  {
    v2 = 20.0;
  }

  [v0 _setContinuousCornerRadius:v2];
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_gradientView] _setContinuousCornerRadius:v2];
  if (*&v0[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_overlay])
  {
    v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_overlay + 8];
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 16);
    swift_unknownObjectRetain();
    v6 = v5(ObjectType, v3);
    swift_unknownObjectRelease();
    [v6 _setContinuousCornerRadius:v2];
  }

  *(*&v0[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView] + qword_950CB8) = v0[v1];
  sub_3680EC();
  *(*&v0[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer] + OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_isExpanded) = v0[v1];

  sub_28053C();
}

id sub_A5B9C()
{
  result = [v0 setNeedsLayout];
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v2 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v2 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v3 = v0[*v2];
  if (v3 != 7)
  {
    *(*&v0[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView] + qword_950C78) = v3;
    sub_367E48();
    v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer];
    v4[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_sizeCategory] = v3;
    if (v3 == 4)
    {
      v5 = v4[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_isTransitioning] ^ 1;
    }

    else
    {
      v5 = 0;
    }

    [v4 setHidden:v5 & 1];
    v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_multiAppIconView];
    v6[OBJC_IVAR____TtC18ASMessagesProvider24MultiAppFallbackIconView_sizeCategory] = v3;
    [v6 setNeedsLayout];

    return [v0 setNeedsLayout];
  }

  return result;
}

void sub_A5CCC(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  if ((a3 & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 112))(ObjectType, a2);
    v12 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_A8F3C(v10, &v4[v12]);
    swift_endAccess();
    v4[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory] = (*(a2 + 160))(ObjectType, a2);
    sub_A9030();
    v13 = (*(a2 + 136))(ObjectType, a2);
    sub_28026C(v13);
  }

  v14 = swift_dynamicCastClass();
  if (v14)
  {
    if ((a3 & 1) == 0)
    {
      v15 = *(v14 + OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView);
      v16 = v14;
      v17 = a1;
      v18 = v15;
      sub_369B90(v18);

      [v4 setOverrideUserInterfaceStyle:{objc_msgSend(v16, "overrideUserInterfaceStyle")}];

      sub_31BD84(v19);

      sub_55D954(v20);
      *&v4[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_artworks] = *&v16[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_artworks];

      [v4 setNeedsLayout];
    }
  }
}

id sub_A5F20(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v171 = a4;
  v9 = sub_760260();
  v168 = *(v9 - 8);
  __chkstk_darwin(v9);
  v181 = &v154 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_765B10();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v169 = &v154 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v178 = &v154 - v15;
  __chkstk_darwin(v16);
  v177 = &v154 - v17;
  v167 = sub_75F730();
  v166 = *(v167 - 8);
  __chkstk_darwin(v167);
  v176 = &v154 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v19 - 8);
  v21 = &v154 - v20;
  v22 = sub_7656C0();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v21, a3, v22);
  (*(v23 + 56))(v21, 0, 1, v22);
  v24 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_A8F3C(v21, &v5[v24]);
  swift_endAccess();
  sub_28026C(a2);
  v25 = [v5 backgroundView];
  if (v25)
  {
    v26 = v25;
    v27 = sub_765A30();
    if (!v27)
    {
      sub_BE70(0, &qword_93E540);
      v27 = sub_76A060();
    }

    v28 = v27;
    [v26 setBackgroundColor:v27];
  }

  sub_765B20();
  v29 = sub_757A30();
  v30 = swift_dynamicCastClass();

  if (!v30)
  {
    sub_765B20();
    sub_75E6F0();
    v31 = swift_dynamicCastClass();

    if (!v31)
    {
      sub_765B20();
      sub_7577E0();
      v32 = swift_dynamicCastClass();

      if (!v32)
      {
        sub_765B20();
        sub_75DB40();
        v33 = swift_dynamicCastClass();

        if (!v33)
        {
          return result;
        }
      }
    }
  }

  v163 = v9;
  v174 = v5;
  v35 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView];
  v36 = sub_765B50();
  v175 = v37;
  v180 = sub_765B40();
  v172 = v38;
  v156 = sub_765A10();
  v173 = v39;
  sub_765A80();
  v40 = sub_765A60();
  v182 = v41;
  v165 = a3;
  v170 = v11;
  v164 = v12;
  v162 = v29;
  v157 = v40;
  if (a2 == 4)
  {
    (*(v12 + 104))(v177, enum case for TodayCard.Style.dark(_:), v11);
    v161 = sub_64A6C;
    v42 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v160 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v159 = sub_234F64;
    v158 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  }

  else
  {
    sub_765B30();
    v161 = sub_64A6C;
    v158 = sub_7566F8;
    v42 = sub_7568B4;
    v160 = sub_7568E0;
    v159 = sub_756724;
  }

  v179 = a2;
  v43 = a2;
  sub_765AA0();
  v35[qword_950CA8] = 0;
  v44 = *&v35[qword_950C90];
  *(v44 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v45 = *&v35[qword_950C88];
  sub_728444(v36, v175);
  v46 = sub_760250();
  v47 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
  v48 = *&v45[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
  if (v43 == 4 && (v46 & 1) == 0)
  {
    if (([v48 isHidden] & 1) != 0 || (v45[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
    {
      [*&v45[v47] setHidden:1];
      goto LABEL_27;
    }

    [*&v45[v47] setHidden:1];
    v45[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    goto LABEL_25;
  }

  v49 = [v48 text];
  if (v49)
  {
    v50 = v49;
    sub_769240();
  }

  v51 = sub_7692D0();
  v52 = v51 & 1;

  if (v52 != [*&v45[v47] isHidden] && (v45[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning] & 1) != 0)
  {
    if ((v51 & 1) == 0)
    {
      [*&v45[v47] setAlpha:0.0];
      v155 = objc_opt_self();
      [v155 inheritedAnimationDuration];
      v54 = v53;
      v55 = swift_allocObject();
      *(v55 + 16) = v45;
      v187 = sub_A922C;
      v188 = v55;
      aBlock = _NSConcreteStackBlock;
      v184 = 1107296256;
      v185 = sub_23F0CC;
      v186 = &unk_882B08;
      v154 = _Block_copy(&aBlock);
      v56 = v45;

      v57 = swift_allocObject();
      *(v57 + 16) = v56;
      v187 = sub_A9238;
      v188 = v57;
      aBlock = _NSConcreteStackBlock;
      v184 = 1107296256;
      v185 = sub_3D6D80;
      v186 = &unk_882B58;
      v58 = _Block_copy(&aBlock);
      v59 = v56;

      v60 = v154;
      [v155 animateWithDuration:0 delay:v154 options:v58 animations:v54 completion:0.0];
      _Block_release(v58);
      _Block_release(v60);
    }

    [*&v45[v47] setHidden:v51 & 1];
    v45[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
LABEL_25:
    [v45 setNeedsLayout];
    goto LABEL_27;
  }

  [*&v45[v47] setHidden:v52];
LABEL_27:
  v61 = &v35[qword_950CB0];
  *v61 = v161;
  v61[1] = 0;
  v61[2] = v158;
  v61[3] = 0;
  v61[4] = v42;
  v61[5] = 0;
  v61[6] = v160;
  v61[7] = 0;
  v61[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v61[9] = 0;
  v61[10] = v159;
  v61[11] = 0;

  sub_3680EC();
  v62 = v179;
  v63 = v182;
  if (v172)
  {
    if (v179 == 4)
    {
      sub_369998();
    }

    else
    {
      sub_3699BC();
    }

    v64 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
    v65 = *(v44 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
    v66 = objc_allocWithZone(NSAttributedString);
    v67 = v65;
    v68 = sub_769210();
    type metadata accessor for Key(0);
    sub_A9134(&qword_93EC10, type metadata accessor for Key);
    isa = sub_7690E0().super.isa;

    v70 = [v66 initWithString:v68 attributes:isa];

    [v67 setAttributedText:v70];
    [*(v44 + v64) setAdjustsFontSizeToFitWidth:0];
    [*(v44 + v64) setMinimumScaleFactor:0.0];
    [*(v44 + v64) setAttributedText:0];
    if (v173 && v35[qword_950C80] == 4)
    {
      v63 = v182;
      if (v62 == 4)
      {
        v71 = v180;
        v74 = v173;
        v72 = v172;
        v73 = v156;
      }

      else
      {
        v71 = v156;
        v72 = v173;
        v73 = v180;
        v74 = v172;
      }

      sub_72853C(v71, v72, v73, v74);
    }

    else
    {
      sub_728444(v180, v172);
      v63 = v182;
    }
  }

  v75 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
  v76 = *(v44 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  v77 = [v76 text];
  if (v77 || (v77 = [*(v44 + v75) attributedText]) != 0)
  {
    v78 = v170;

    v79 = 0;
  }

  else
  {
    v79 = 1;
    v78 = v170;
  }

  [v76 setHidden:v79];

  [v35 setNeedsLayout];
  v80 = *&v35[qword_950C98];
  [v80 setImage:0];
  [v80 setHidden:1];
  if (v62 != 4 && (sub_760230() & 1) == 0 && v63)
  {
    v81 = a1;
    v82 = v62;
    v83 = HIBYTE(v63) & 0xF;
    if ((v63 & 0x2000000000000000) == 0)
    {
      v83 = v157 & 0xFFFFFFFFFFFFLL;
    }

    LODWORD(v180) = v83 == 0;
    v84 = *&v35[qword_950CA0];
    v85 = &v84[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
    v86 = *&v84[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
    goto LABEL_49;
  }

  v84 = *&v35[qword_950CA0];
  v85 = &v84[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
  v86 = *&v84[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
  if (v63)
  {
    v81 = a1;
    v82 = v62;
    LODWORD(v180) = 1;
LABEL_49:
    v87 = v86;
    v63 = sub_769210();
    v62 = v82;
    a1 = v81;
    goto LABEL_51;
  }

  v87 = v86;
  LODWORD(v180) = 1;
LABEL_51:
  [v87 setText:v63];

  v88 = [*v85 isHidden];
  if (v180 == v88 || (v84[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*v85 setHidden:v180];
  }

  else
  {
    if ((v180 & 1) == 0)
    {
      [*v85 setAlpha:0.0];
      v89 = objc_opt_self();
      [v89 inheritedAnimationDuration];
      v91 = v90;
      v92 = swift_allocObject();
      *(v92 + 16) = v84;
      v187 = sub_A8FE4;
      v188 = v92;
      aBlock = _NSConcreteStackBlock;
      v184 = 1107296256;
      v185 = sub_23F0CC;
      v186 = &unk_882A68;
      v93 = _Block_copy(&aBlock);
      v94 = v84;

      v95 = swift_allocObject();
      *(v95 + 16) = v94;
      v187 = sub_A9004;
      v188 = v95;
      aBlock = _NSConcreteStackBlock;
      v184 = 1107296256;
      v185 = sub_3D6D80;
      v186 = &unk_882AB8;
      v96 = _Block_copy(&aBlock);
      v97 = v94;
      v78 = v170;
      v62 = v179;

      [v89 animateWithDuration:0 delay:v93 options:v96 animations:v91 completion:0.0];
      _Block_release(v96);
      _Block_release(v93);
    }

    [*v85 setHidden:v180];
    v84[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v84 setNeedsLayout];
  }

  v98 = v163;
  v99 = 1;
  v100 = v177;
  sub_366B5C(v177, 1);
  [v35 setNeedsLayout];

  (*(v168 + 8))(v181, v98);
  v101 = v164;
  v102 = *(v164 + 8);
  v102(v100, v78);
  (*(v166 + 8))(v176, v167);
  sub_765B30();
  v103 = v169;
  (*(v101 + 104))(v169, enum case for TodayCard.Style.white(_:), v78);
  sub_A9134(&qword_9409B0, &type metadata accessor for TodayCard.Style);
  sub_769430();
  sub_769430();
  if (aBlock != v189 || v184 != v190)
  {
    if (sub_76A950())
    {
      v99 = 1;
    }

    else
    {
      v99 = 2;
    }
  }

  v102(v103, v78);
  v102(v178, v78);

  v104 = v174;
  [v174 setOverrideUserInterfaceStyle:v99];
  sub_73C470(a1, v165, v62, v171);
  sub_765B20();
  v105 = swift_dynamicCastClass();
  if (v105)
  {
    p_aBlock = v105;
    v107 = sub_757A20();
    v108 = v107;
    aBlock = _swiftEmptyArrayStorage;
    v109 = v107 & 0xFFFFFFFFFFFFFF8;
    if (v107 >> 62)
    {
      goto LABEL_184;
    }

    v110 = *(&dword_10 + (v107 & 0xFFFFFFFFFFFFFF8));
    goto LABEL_65;
  }

  sub_75E6F0();
  v118 = swift_dynamicCastClass();
  if (v118)
  {
    p_aBlock = v118;
    v119 = sub_75E6E0();
    v108 = v119;
    aBlock = _swiftEmptyArrayStorage;
    v109 = v119 & 0xFFFFFFFFFFFFFF8;
    if (v119 >> 62)
    {
      v120 = sub_76A860();
    }

    else
    {
      v120 = *(&dword_10 + (v119 & 0xFFFFFFFFFFFFFF8));
    }

    v121 = 0;
    v122 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v120 == v121)
      {
        goto LABEL_112;
      }

      if ((v108 & 0xC000000000000001) == 0)
      {
        break;
      }

      p_aBlock = sub_76A770();
      v123 = v121 + 1;
      if (__OFADD__(v121, 1))
      {
        goto LABEL_180;
      }

LABEL_95:

      v124 = sub_764F20();

      ++v121;
      if (v124)
      {
        p_aBlock = &aBlock;
        sub_769440();
        if (*(&dword_10 + (aBlock & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (aBlock & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();
        v122 = aBlock;
        v121 = v123;
      }
    }

    if (v121 >= *(v109 + 16))
    {
      goto LABEL_181;
    }

    p_aBlock = *(v108 + 8 * v121 + 32);

    v123 = v121 + 1;
    if (!__OFADD__(v121, 1))
    {
      goto LABEL_95;
    }

LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    v110 = sub_76A860();
LABEL_65:
    v111 = 0;
    v112 = _swiftEmptyArrayStorage;
    while (v110 != v111)
    {
      if ((v108 & 0xC000000000000001) != 0)
      {
        p_aBlock = sub_76A770();
        v113 = v111 + 1;
        if (__OFADD__(v111, 1))
        {
          goto LABEL_178;
        }
      }

      else
      {
        if (v111 >= *(v109 + 16))
        {
          goto LABEL_179;
        }

        p_aBlock = *(v108 + 8 * v111 + 32);

        v113 = v111 + 1;
        if (__OFADD__(v111, 1))
        {
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
          goto LABEL_180;
        }
      }

      v114 = sub_764F20();

      ++v111;
      if (v114)
      {
        p_aBlock = &aBlock;
        sub_769440();
        if (*(&dword_10 + (aBlock & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (aBlock & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();
        v112 = aBlock;
        v111 = v113;
      }
    }

    v115 = v112 >> 62;
    if (!(v112 >> 62))
    {
      v116 = *(&dword_10 + (v112 & 0xFFFFFFFFFFFFFF8));
      if (v116 >= 3)
      {
        v117 = 3;
      }

      else
      {
        v117 = *(&dword_10 + (v112 & 0xFFFFFFFFFFFFFF8));
      }

      while (1)
      {
        if (v116 < v117)
        {
          goto LABEL_190;
        }

        if ((v112 & 0xC000000000000001) != 0 && v117)
        {
          sub_765390();

          sub_76A750(0);
          if (v117 != 1)
          {
            sub_76A750(1);
            if (v117 != 2)
            {
              sub_76A750(2);
            }
          }
        }

        else
        {
        }

        if (v115)
        {
          p_aBlock = sub_76A870();
          v111 = v125;
          v115 = v126;
          v117 = v127;

          if ((v117 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        else
        {
          p_aBlock = (v112 & 0xFFFFFFFFFFFFFF8);
          v111 = (v112 & 0xFFFFFFFFFFFFFF8) + 32;
          v117 = (2 * v117) | 1;
          if ((v117 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        v122 = sub_76A970();
        swift_unknownObjectRetain_n();
        v128 = swift_dynamicCastClass();
        if (!v128)
        {
          swift_unknownObjectRelease();
          v128 = _swiftEmptyArrayStorage;
        }

        v129 = v128[2];

        v130 = (v117 >> 1) - v115;
        if (!__OFSUB__(v117 >> 1, v115))
        {
          goto LABEL_169;
        }

        __break(1u);
LABEL_112:

        v115 = v122 >> 62;
        if (v122 >> 62)
        {
          if (v122 < 0)
          {
            p_aBlock = v122;
          }

          else
          {
            p_aBlock = (v122 & 0xFFFFFFFFFFFFFF8);
          }

          v108 = sub_76A860();
          if (sub_76A860() < 0)
          {
            __break(1u);
LABEL_198:
            __break(1u);
LABEL_199:
            v134 = sub_76A860();
LABEL_126:
            v111 = 0;
            v112 = _swiftEmptyArrayStorage;
            while (v134 != v111)
            {
              if ((v108 & 0xC000000000000001) != 0)
              {
                p_aBlock = sub_76A770();
                v135 = v111 + 1;
                if (__OFADD__(v111, 1))
                {
                  goto LABEL_182;
                }
              }

              else
              {
                if (v111 >= *(v109 + 16))
                {
                  goto LABEL_183;
                }

                p_aBlock = *(v108 + 8 * v111 + 32);

                v135 = v111 + 1;
                if (__OFADD__(v111, 1))
                {
                  goto LABEL_182;
                }
              }

              v136 = sub_764F20();

              ++v111;
              if (v136)
              {
                p_aBlock = &aBlock;
                sub_769440();
                if (*(&dword_10 + (aBlock & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (aBlock & 0xFFFFFFFFFFFFFF8)) >> 1)
                {
                  sub_7694C0();
                }

                sub_769500();
                v112 = aBlock;
                v111 = v135;
              }
            }

            goto LABEL_148;
          }

          if (v108 >= 3)
          {
            v152 = 3;
          }

          else
          {
            v152 = v108;
          }

          if (v108 >= 0)
          {
            v108 = v152;
          }

          else
          {
            v108 = 3;
          }

          v131 = sub_76A860();
        }

        else
        {
          v131 = *(&dword_10 + (v122 & 0xFFFFFFFFFFFFFF8));
          if (v131 >= 3)
          {
            v108 = 3;
          }

          else
          {
            v108 = *(&dword_10 + (v122 & 0xFFFFFFFFFFFFFF8));
          }
        }

        if (v131 < v108)
        {
          goto LABEL_198;
        }

        if ((v122 & 0xC000000000000001) != 0 && v108)
        {
          sub_765390();

          sub_76A750(0);
          if (v108 != 1)
          {
            sub_76A750(1);
            if (v108 != 2)
            {
              sub_76A750(2);
            }
          }
        }

        else
        {
        }

        if (v115)
        {
          p_aBlock = sub_76A870();
          v111 = v137;
          v115 = v138;
          v117 = v139;

          if ((v117 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        else
        {
          p_aBlock = (v122 & 0xFFFFFFFFFFFFFF8);
          v111 = (v122 & 0xFFFFFFFFFFFFFF8) + 32;
          v117 = (2 * v108) | 1;
          if ((v117 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        v112 = sub_76A970();
        swift_unknownObjectRetain_n();
        v140 = swift_dynamicCastClass();
        if (!v140)
        {
          swift_unknownObjectRelease();
          v140 = _swiftEmptyArrayStorage;
        }

        v129 = v140[2];

        v130 = (v117 >> 1) - v115;
        if (!__OFSUB__(v117 >> 1, v115))
        {
          goto LABEL_169;
        }

        __break(1u);
LABEL_148:

        v115 = v112 >> 62;
        if (v112 >> 62)
        {
          if (v112 < 0)
          {
            p_aBlock = v112;
          }

          else
          {
            p_aBlock = (v112 & 0xFFFFFFFFFFFFFF8);
          }

          v117 = sub_76A860();
          if (sub_76A860() < 0)
          {
            __break(1u);
LABEL_205:
            __break(1u);
            goto LABEL_206;
          }

          if (v117 >= 3)
          {
            v153 = 3;
          }

          else
          {
            v153 = v117;
          }

          if ((v117 & 0x8000000000000000) == 0)
          {
            v117 = v153;
          }

          else
          {
            v117 = 3;
          }

          v141 = sub_76A860();
        }

        else
        {
          v141 = *(&dword_10 + (v112 & 0xFFFFFFFFFFFFFF8));
          if (v141 >= 3)
          {
            v117 = 3;
          }

          else
          {
            v117 = *(&dword_10 + (v112 & 0xFFFFFFFFFFFFFF8));
          }
        }

        if (v141 < v117)
        {
          goto LABEL_205;
        }

        if ((v112 & 0xC000000000000001) != 0 && v117)
        {
          sub_765390();

          sub_76A750(0);
          if (v117 != 1)
          {
            sub_76A750(1);
            if (v117 != 2)
            {
              sub_76A750(2);
            }
          }
        }

        else
        {
        }

        if (v115)
        {
          p_aBlock = sub_76A870();
          v111 = v143;
          v115 = v144;
          v117 = v145;

          if ((v117 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        else
        {
          p_aBlock = (v112 & 0xFFFFFFFFFFFFFF8);
          v111 = (v112 & 0xFFFFFFFFFFFFFF8) + 32;
          v117 = (2 * v117) | 1;
          if ((v117 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        v112 = sub_76A970();
        swift_unknownObjectRetain_n();
        v147 = swift_dynamicCastClass();
        if (!v147)
        {
          swift_unknownObjectRelease();
          v147 = _swiftEmptyArrayStorage;
        }

        v129 = v147[2];

        v130 = (v117 >> 1) - v115;
        if (!__OFSUB__(v117 >> 1, v115))
        {
LABEL_169:
          if (v129 != v130)
          {
            goto LABEL_191;
          }

          v142 = swift_dynamicCastClass();

          swift_unknownObjectRelease_n();
          if (!v142)
          {
            swift_unknownObjectRelease();
            v142 = _swiftEmptyArrayStorage;
          }

          goto LABEL_172;
        }

LABEL_206:
        __break(1u);
LABEL_207:
        if (v117 >= 3)
        {
          v151 = 3;
        }

        else
        {
          v151 = v117;
        }

        if ((v117 & 0x8000000000000000) == 0)
        {
          v117 = v151;
        }

        else
        {
          v117 = 3;
        }

        v116 = sub_76A860();
      }
    }

    if (v112 < 0)
    {
      p_aBlock = v112;
    }

    else
    {
      p_aBlock = (v112 & 0xFFFFFFFFFFFFFF8);
    }

    v117 = sub_76A860();
    if ((sub_76A860() & 0x8000000000000000) == 0)
    {
      goto LABEL_207;
    }

    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    swift_unknownObjectRelease_n();
LABEL_165:
    sub_4A5FC4(p_aBlock, v111, v115, v117);
    v142 = v146;
    swift_unknownObjectRelease();

LABEL_172:
    v104 = v174;
  }

  else
  {
    sub_75DB40();
    v132 = swift_dynamicCastClass();
    if (v132)
    {
      p_aBlock = v132;
      v133 = sub_75DB30();
      v108 = v133;
      aBlock = _swiftEmptyArrayStorage;
      v109 = v133 & 0xFFFFFFFFFFFFFF8;
      if (!(v133 >> 62))
      {
        v134 = *(&dword_10 + (v133 & 0xFFFFFFFFFFFFFF8));
        goto LABEL_126;
      }

      goto LABEL_199;
    }

    sub_7577E0();
    if (swift_dynamicCastClass())
    {
      sub_BD88(&unk_93F5C0);
      v142 = swift_allocObject();
      *(v142 + 1) = xmmword_77D9F0;
      v142[4] = sub_7577D0();
    }

    else
    {

      v142 = _swiftEmptyArrayStorage;
    }
  }

  v148 = OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_artworks;
  v149 = *&v104[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_artworks];

  v150 = sub_117204(v142, v149);

  if (v150)
  {
  }

  *&v104[v148] = v142;

  sub_A79F0();
  return [v104 setNeedsLayout];
}

uint64_t sub_A79F0()
{
  sub_75A920();
  sub_768900();
  sub_768ED0();
  v19 = OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_artworks;
  v20 = v0;
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_artworks);
  if (v1 >> 62)
  {
LABEL_38:
    v2 = sub_76A860();
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = sub_75A810();
  type metadata accessor for MultiAppFallbackIconView.Configuration();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v4 + 40) = sub_10DBF8(_swiftEmptyArrayStorage);
  v5 = 3;
  if (v2 < 3)
  {
    v5 = v2;
  }

  *(v4 + 24) = v5;
  *(v4 + 32) = v3 & 1;

  sub_31BD84(v6);
  v7 = *(v20 + v19);
  *&v21[0] = _swiftEmptyArrayStorage;
  if (v7 >> 62)
  {
    v8 = sub_76A860();
  }

  else
  {
    v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (v8 != v9)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      sub_76A770();
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v9 >= *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_35;
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    v12 = sub_7651A0();

    ++v9;
    if (v12)
    {
      sub_769440();
      if (*(&dword_10 + (*&v21[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v21[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      sub_769500();
      v10 = *&v21[0];
      v9 = v11;
    }
  }

  sub_55D954(v10);
  sub_75A110();
  sub_768ED0();
  v13 = *(v20 + v19);
  if (v13 >> 62)
  {
    v14 = sub_76A860();
  }

  else
  {
    v14 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
  }

  if (v14)
  {
    v15 = 0;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        sub_76A770();
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v15 >= *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_37;
        }

        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_36;
        }
      }

      if (*(v20 + v19) >> 62)
      {
        sub_76A860();
      }

      sub_765330();
      v22 = 0;
      memset(v21, 0, sizeof(v21));
      v16 = swift_allocObject();
      *(v16 + 16) = v4;
      *(v16 + 24) = v15;

      sub_75A040();

      sub_10A2C(v21, &unk_9443A0);
      ++v15;
    }

    while (v17 != v14);
  }
}

void sub_A7E84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 && (a6 & 0x8000000000000000) == 0 && *(a5 + 24) > a6)
  {
    swift_beginAccess();
    v9 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(a5 + 40);
    *(a5 + 40) = 0x8000000000000000;
    sub_4595C0(v9, a6, isUniquelyReferenced_nonNull_native);
    *(a5 + 40) = v13;
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      sub_31C03C(a1, a6);
    }
  }
}

uint64_t sub_A7F54()
{
  sub_765B70();
  sub_A9134(&qword_94CAB0, &type metadata accessor for TodayCard);
  result = sub_75C750();
  if (v23)
  {
    sub_765B20();

    sub_757A30();
    if (swift_dynamicCastClass())
    {

      if (sub_757A20() >> 62)
      {
LABEL_73:
        sub_76A860();
      }

      v1 = sub_757A20();
      v2 = v1;
      v3 = v1 & 0xFFFFFFFFFFFFFF8;
      if (v1 >> 62)
      {
        v4 = sub_76A860();
        if (v4)
        {
LABEL_11:
          v5 = 0;
          do
          {
            v6 = v5;
            while (1)
            {
              if ((v2 & 0xC000000000000001) != 0)
              {
                sub_76A770();
                v5 = v6 + 1;
                if (__OFADD__(v6, 1))
                {
                  goto LABEL_67;
                }
              }

              else
              {
                if (v6 >= *(v3 + 16))
                {
                  goto LABEL_68;
                }

                v5 = v6 + 1;
                if (__OFADD__(v6, 1))
                {
LABEL_67:
                  __break(1u);
LABEL_68:
                  __break(1u);
                  goto LABEL_69;
                }
              }

              if (sub_764EE0())
              {
                break;
              }

              ++v6;
              if (v5 == v4)
              {
                goto LABEL_79;
              }
            }

            sub_765330();

            sub_769440();
            if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_7694C0();
            }

            sub_769500();
          }

          while (v5 != v4);
        }
      }

      else
      {
        v4 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
        if (v4)
        {
          goto LABEL_11;
        }
      }

LABEL_79:

      v22._rawValue = _swiftEmptyArrayStorage;
      sub_75A070(v22);
    }

    sub_75E6F0();
    if (!swift_dynamicCastClass())
    {
      sub_75DB40();
      if (!swift_dynamicCastClass())
      {
        sub_7577E0();
        if (!swift_dynamicCastClass())
        {
        }

        sub_BD88(&unk_93F5C0);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_77D9F0;

        sub_7577D0();
        v14 = sub_765330();

        *(v13 + 32) = v14;
        v15._rawValue = v13;
        sub_75A070(v15);
      }

      if (sub_75DB30() >> 62)
      {
        sub_76A860();
      }

      v16 = sub_75DB30();
      v17 = v16;
      v18 = v16 & 0xFFFFFFFFFFFFFF8;
      if (v16 >> 62)
      {
        v19 = sub_76A860();
        if (!v19)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v19 = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8));
        if (!v19)
        {
          goto LABEL_79;
        }
      }

      v20 = 0;
      do
      {
        v21 = v20;
        while (1)
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            sub_76A770();
            v20 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              goto LABEL_71;
            }
          }

          else
          {
            if (v21 >= *(v18 + 16))
            {
              goto LABEL_72;
            }

            v20 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
LABEL_71:
              __break(1u);
LABEL_72:
              __break(1u);
              goto LABEL_73;
            }
          }

          if (sub_764EE0())
          {
            break;
          }

          ++v21;
          if (v20 == v19)
          {
            goto LABEL_79;
          }
        }

        sub_765330();

        sub_769440();
        if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();
      }

      while (v20 != v19);
      goto LABEL_79;
    }

    if (sub_75E6E0() >> 62)
    {
      sub_76A860();
    }

    v7 = sub_75E6E0();
    v8 = v7;
    v9 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v7 >> 62)
    {
      v10 = sub_76A860();
      if (!v10)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v10 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
      if (!v10)
      {
        goto LABEL_79;
      }
    }

    v11 = 0;
    do
    {
      v12 = v11;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          sub_76A770();
          v11 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (v12 >= *(v9 + 16))
          {
            goto LABEL_70;
          }

          v11 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
            goto LABEL_71;
          }
        }

        if (sub_764EE0())
        {
          break;
        }

        ++v12;
        if (v11 == v10)
        {
          goto LABEL_79;
        }
      }

      sub_765330();

      sub_769440();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      sub_769500();
    }

    while (v11 != v10);
    goto LABEL_79;
  }

  return result;
}

void sub_A86B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a3)
  {
    ObjectType = swift_getObjectType();
    v10 = (*(a4 + 16))(ObjectType, a4);
    [v10 removeFromSuperview];
  }

  if (a1)
  {
    v11 = swift_getObjectType();
    v12 = *(a2 + 16);
    swift_unknownObjectRetain();
    v13 = v12(v11, a2);
    v14 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer];
    v15 = OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_overlayView;
    v16 = *&v14[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_overlayView];
    *&v14[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_overlayView] = v13;
    v17 = v13;

    [v17 setAnchorPoint:{0.0, 1.0}];
    v18 = *&v14[v15];
    if (v18)
    {
      v20[0] = 0x3FF0000000000000;
      v20[1] = 0;
      v20[2] = 0;
      v20[3] = 0x3FF0000000000000;
      v20[4] = 0;
      v20[5] = 0;
      [v18 setTransform:v20];
    }

    [v14 addSubview:v17];
    [v17 setOverrideUserInterfaceStyle:{objc_msgSend(v5, "overrideUserInterfaceStyle")}];
    [v5 _continuousCornerRadius];
    [v17 _setContinuousCornerRadius:?];
    v19 = [v17 layer];
    [v19 setMaskedCorners:12];
    swift_unknownObjectRelease();
  }
}

void sub_A8874()
{
  swift_beginAccess();
  swift_weakAssign();
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  *v1 = 0;
  v1[1] = 0;
  sub_F704(v2);
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_overlay))
  {
    v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_overlay + 8);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 16);
    swift_unknownObjectRetain();
    v6 = v5(ObjectType, v3);
    swift_unknownObjectRelease();
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      swift_getObjectType();
      sub_7633B0();
    }
  }
}

void sub_A89BC()
{
  v1 = v0;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_75F4E0();
  }

  swift_weakAssign();
  v2 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_F704(v3);
  if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_overlay))
  {
    v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_overlay + 8);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 16);
    swift_unknownObjectRetain();
    v7 = v6(ObjectType, v4);
    swift_unknownObjectRelease();
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      swift_getObjectType();
      sub_7633A0();
    }
  }
}

uint64_t sub_A8C64()
{
  swift_unknownObjectRelease();
  swift_weakDestroy();
}

uint64_t type metadata accessor for MultiAppFallbackCardCollectionViewCell()
{
  result = qword_942E20;
  if (!qword_942E20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A8E74(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_overlayKind;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_A8EC4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_overlay);
  *v3 = a1;
  v3[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_A8EF0()
{
  swift_weakAssign();
}

uint64_t sub_A8F3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_955AA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_A8FAC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_A8FEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_A9030()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4)
  {
    v2 = [v0 contentView];
    [v2 setClipsToBounds:1];
  }

  result = [v0 setNeedsLayout];
  v4 = v0[v1];
  if (v4 != 7)
  {
    v5 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView];
    *(v5 + qword_950C80) = v4;
    *(*(v5 + qword_950C88) + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_originalSizeCategory) = v4;
    *(*(v5 + qword_950C90) + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_originalSizeCategory) = v4;
    *(*(v5 + qword_950CA0) + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_originalSizeCategory) = v4;
    *(*&v0[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer] + OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_originalSizeCategory) = v4;
  }

  return result;
}

uint64_t sub_A9134(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_A917C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_A923C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + qword_99A4F8) = 0;
  sub_B0B7C();
  v5 = qword_942E50;
  v6 = *(v2 + qword_942E50);
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell);
    if (v7)
    {
      v8 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell + 8);
      v9 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell);
    }

    else
    {
      v10 = v6 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell;
      v8 = *(v10 + 8);
      v9 = *v10;
    }

    ObjectType = swift_getObjectType();
    v12 = *(v8 + 264);
    v13 = v7;
    v14 = v12(ObjectType, v8);

    if (v14)
    {
      *&v14[qword_940588 + 8] = &off_882BA8;
      swift_unknownObjectWeakAssign();
    }

    v15 = *(v3 + v5);
    if (v15)
    {
      v16 = *(v15 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell);
      swift_getObjectType();
      if (swift_conformsToProtocol2() && v16 != 0)
      {
        if (a1)
        {
          v18 = swift_getObjectType();
          v19 = *(a2 + 8);
          v20 = v16;
          v19(v18, a2);
          sub_761120();
          sub_768900();
          sub_768ED0();
          swift_getObjectType();
          v21 = sub_75EF20();
          v22 = v20;
          sub_7610C0();
        }

        else
        {
          v23 = v16;
        }

        sub_761120();
        sub_768900();
        sub_768ED0();
        swift_getObjectType();
        v24 = sub_75EF20();
        v25 = v16;
        sub_761100();
      }
    }
  }
}

uint64_t sub_A94F8()
{
  swift_unknownObjectRelease();

  sub_F704(*(v0 + qword_99A508));
  sub_F704(*(v0 + qword_99A510));

  sub_10A2C(v0 + qword_942E70, &unk_955AA0);

  return sub_10A2C(v0 + qword_99A530, &unk_93FF30);
}

id sub_A9644()
{
  ObjectType = swift_getObjectType();
  if (v0[qword_942E80] == 1)
  {
    v0[qword_942E80] = 0;
  }

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_A9694(_BYTE *a1)
{
  ObjectType = swift_getObjectType();
  if (a1[qword_942E80] == 1)
  {
    a1[qword_942E80] = 0;
  }

  v5.receiver = a1;
  v5.super_class = ObjectType;
  v3 = a1;
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_A96F4(uint64_t a1)
{
  swift_unknownObjectRelease();

  sub_F704(*(a1 + qword_99A508));
  sub_F704(*(a1 + qword_99A510));

  sub_10A2C(a1 + qword_942E70, &unk_955AA0);

  return sub_10A2C(a1 + qword_99A530, &unk_93FF30);
}

void sub_A9864(char a1)
{
  v2 = v1;
  v4 = *&v1[qword_942E50];
  if (v4)
  {
    v4[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_isCardModeEnabled] = v1[qword_99A4E8];
    v5 = v4;
    sub_3104E4();
  }

  v6 = *&v2[qword_942E88];
  if (v6)
  {
    [v6 setHidden:v2[qword_99A4E8]];
  }

  v7 = a1 & ~v2[qword_99A4E8];
  v8 = sub_A99B0();
  if (v7 & 1) != 0 || (v8)
  {
    v2[qword_99A500] = 1;
    v9 = [v2 viewIfLoaded];
    [v9 setNeedsLayout];

    v2[qword_942E30] = 1;
    v10 = [v2 viewIfLoaded];
    [v10 setNeedsLayout];
  }
}

id sub_A99B0()
{
  v1 = qword_942E50;
  result = *&v0[qword_942E50];
  if (result)
  {
    result = [result view];
    if (result)
    {
      v3 = result;
      if ((v0[qword_99A4E8] & 1) == 0)
      {
        if (*&v0[v1])
        {
          type metadata accessor for ListTodayCardCollectionViewCell();
          if (swift_dynamicCastClass())
          {
            v4 = [v3 superview];
            v5 = [v0 collectionView];
            v6 = v5;
            if (v4)
            {
              if (v5)
              {
                sub_BE70(0, &qword_93E550);
                v7 = sub_76A1C0();

                if ((v7 & 1) == 0)
                {
LABEL_28:
                  v21 = objc_opt_self();
                  v22 = swift_allocObject();
                  *(v22 + 16) = v3;
                  *(v22 + 24) = v0;
                  v23 = swift_allocObject();
                  *(v23 + 16) = sub_B29D8;
                  *(v23 + 24) = v22;
                  v31 = sub_47164;
                  v32 = v23;
                  v27 = _NSConcreteStackBlock;
                  v28 = 1107296256;
                  v29 = sub_1EB578;
                  v30 = &unk_882D98;
                  v24 = _Block_copy(&v27);
                  v25 = v0;

                  v17 = v3;

                  [v21 performWithoutAnimation:v24];
                  _Block_release(v24);
                  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

                  if ((v21 & 1) == 0)
                  {
                    result = [v25 collectionView];
                    if (result)
                    {
                      v26 = result;
                      [result insertSubview:v17 atIndex:0];

                      if ([v17 effectiveUserInterfaceLayoutDirection] == &dword_0 + 1)
                      {
                        v20 = [v17 layer];
                        [v20 setFlipsHorizontalAxis:1];
                        goto LABEL_23;
                      }

                      goto LABEL_32;
                    }

LABEL_39:
                    __break(1u);
                    return result;
                  }

                  goto LABEL_36;
                }

LABEL_15:

                return 0;
              }

              v6 = v4;
            }

            else if (!v5)
            {
              goto LABEL_15;
            }

            goto LABEL_28;
          }
        }
      }

      v8 = [v3 superview];
      v9 = [v0 view];
      v10 = v9;
      if (v8)
      {
        if (v9)
        {
          sub_BE70(0, &qword_93E550);
          v11 = sub_76A1C0();

          if (v11)
          {
            goto LABEL_15;
          }

LABEL_18:
          v12 = objc_opt_self();
          v13 = swift_allocObject();
          *(v13 + 16) = v3;
          *(v13 + 24) = v0;
          v14 = swift_allocObject();
          *(v14 + 16) = sub_B29AC;
          *(v14 + 24) = v13;
          v31 = sub_2EC28;
          v32 = v14;
          v27 = _NSConcreteStackBlock;
          v28 = 1107296256;
          v29 = sub_1EB578;
          v30 = &unk_882D20;
          v15 = _Block_copy(&v27);
          v16 = v0;
          v17 = v3;

          [v12 performWithoutAnimation:v15];
          _Block_release(v15);
          LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

          if ((v12 & 1) == 0)
          {
            result = [v16 view];
            if (result)
            {
              v18 = result;
              result = [v16 collectionView];
              if (result)
              {
                v19 = result;
                [v18 insertSubview:v17 aboveSubview:result];

                if ([v17 effectiveUserInterfaceLayoutDirection] == &dword_0 + 1)
                {
                  v20 = [v17 layer];
                  [v20 setFlipsHorizontalAxis:0];
LABEL_23:

LABEL_33:
                  return &dword_0 + 1;
                }

LABEL_32:

                goto LABEL_33;
              }

              goto LABEL_38;
            }

LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v10 = v8;
      }

      else if (!v9)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }
  }

  return result;
}

void sub_A9F30(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
  v5 = a1;
  sub_761930();

  v6 = *&v1[v3];
  *&v1[v3] = a1;
  v12 = v5;

  sub_AA06C();
  sub_761920();

  if (*&v1[v3])
  {
    sub_767160();
    if (swift_dynamicCastClass())
    {
      v7 = *&v1[qword_942E50];
      if (v7)
      {
        v8 = [v7 viewIfLoaded];
        if (v8)
        {
          v9 = v8;
          v10 = [v1 view];
          if (!v10)
          {
            __break(1u);
            return;
          }

          v11 = v10;
          [v10 bringSubviewToFront:v9];
        }
      }
    }
  }
}

void sub_AA06C()
{
  v1 = v0;
  v2 = *&v0[qword_942E50];
  if (!v2 || !*&v0[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController] || (sub_767160(), !swift_dynamicCastClass()))
  {
    v11 = [v0 view];
    if (v11)
    {
      v12 = v11;
      [v11 bounds];

      return;
    }

    __break(1u);
    goto LABEL_12;
  }

  v3 = v2;
  v4 = [v1 view];
  if (!v4)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;

  v8 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell];
  if (v8)
  {
    v9 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell + 8];
    v10 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell];
  }

  else
  {
    v9 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell + 8];
    v10 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell];
    v8 = 0;
  }

  v13 = v8;
  sub_311270(v7, v10, v9);
}

void sub_AA1FC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_768C60();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v23[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.receiver = v1;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, "viewDidLoad", v5);
  v8 = sub_7653A0();
  v23[3] = v8;
  v23[4] = sub_B3548(&qword_947D00, &type metadata accessor for Feature.iOS);
  v9 = sub_B1B4(v23);
  (*(*(v8 - 8) + 104))(v9, enum case for Feature.iOS.today_tab_largest_ax_support(_:), v8);
  LOBYTE(v8) = sub_765C30();
  sub_BEB8(v23);
  if ((v8 & 1) == 0)
  {
    v10 = [v1 view];
    if (!v10)
    {
LABEL_15:
      __break(1u);
      return;
    }

    v11 = v10;
    [v10 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
  }

  v12 = [v1 view];
  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = v12;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v14 + OBJC_IVAR____TtC18ASMessagesProviderP33_617AA862DC90C0016FFBABB70104B8F240InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset) = 0;

  sub_AC0F8();
  v15 = sub_502A78();
  [v15 addTarget:v1 action:"dismissAnimated" forControlEvents:64];
  sub_768C00();
  sub_769E70();
  (*(v4 + 8))(v7, v3);
  v16 = [v1 view];
  if (!v16)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = v16;
  [v16 addSubview:v15];

  v18 = *&v1[qword_99A518];
  *&v1[qword_99A518] = v15;
  v19 = v15;

  type metadata accessor for ArticleLinkLoaderScrollObserver();
  swift_allocObject();
  v20 = sub_211DD0();
  v21 = qword_942E58;
  if (*&v1[qword_942E58])
  {
    sub_B3548(&unk_9435E0, type metadata accessor for ArticleLinkLoaderScrollObserver);
  }

  sub_75FA30();

  *&v1[v21] = v20;
  swift_retain_n();

  sub_B3548(&unk_9435E0, type metadata accessor for ArticleLinkLoaderScrollObserver);
  sub_75FA40();

  if (*&v1[qword_942E50])
  {
    sub_A99B0();
  }
}

void sub_AA5C0(void *a1)
{
  v1 = a1;
  sub_AA1FC();
}

id sub_AA608(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "viewWillAppear:", a1 & 1);
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  result = [v1 collectionView];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = [result panGestureRecognizer];

  [v4 addGestureRecognizer:v6];
  v7 = [v1 navigationController];
  if (v7)
  {
    v8 = v7;
    [v7 setNavigationBarHidden:1 animated:0];
  }

  *(v1 + qword_942E38) = 1;
  return [v1 setNeedsStatusBarAppearanceUpdate];
}

void sub_AA730(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_AA608(a3);
}

void sub_AA784(void *a1, uint64_t a2, uint64_t a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  objc_msgSendSuper2(&v6, "viewDidAppear:", a3);
  v4[qword_942E30] = 1;
  v5 = [v4 viewIfLoaded];
  [v5 setNeedsLayout];
}

void sub_AA820(char a1)
{
  v20.receiver = v1;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, "viewWillDisappear:", a1 & 1);
  v3 = [v1 navigationController];
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  v5 = [v3 viewControllers];

  sub_BE70(0, &qword_9434E0);
  v6 = sub_769460();

  v7 = v6;
  if (!(v6 >> 62))
  {
    if (*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  v10 = sub_76A860();
  v7 = v6;
  if (!v10)
  {
LABEL_8:

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

LABEL_4:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v19 = sub_76A770();
    swift_unknownObjectRelease();

    v9 = v19 == v1;
  }

  else
  {
    if (!*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return;
    }

    v8 = *(v7 + 32);

    v9 = v8 == v1;
  }

LABEL_10:
  v11 = [v1 navigationController];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 viewControllers];

    sub_BE70(0, &qword_9434E0);
    v14 = sub_769460();

    if (v14 >> 62)
    {
      v15 = sub_76A860();
    }

    else
    {
      v15 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
    }

    if (v15 > 1 && v9)
    {
      v17 = [v1 navigationController];
      if (v17)
      {
        v18 = v17;
        [v17 setNavigationBarHidden:0 animated:0];
      }
    }
  }
}

void sub_AAA5C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_AA820(a3);
}

void sub_AAAB0(uint64_t a1, void *a2)
{
  v8.receiver = v2;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = sub_B3540;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_6C6800;
  v7[3] = &unk_883040;
  v6 = _Block_copy(v7);

  [a2 animateAlongsideTransition:v6 completion:0];
  _Block_release(v6);
}

uint64_t sub_AABB8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_AACD0();

    if (v2 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
    {
      for (j = 0; ; ++j)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = sub_76A770();
        }

        else
        {
          if (j >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_13;
          }

          v5 = *(v2 + 8 * j + 32);
        }

        v6 = v5;
        v7 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        [v5 setAlpha:1.0];

        if (v7 == i)
        {
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }
  }

  return result;
}

void *sub_AACD0()
{
  v1 = *(v0 + qword_99A520);
  v10 = *(v0 + qword_99A528);
  v11 = v1;
  v12 = *(v0 + qword_99A518);
  v2 = v12;
  v3 = v10;
  result = v1;
  v5 = 0;
LABEL_2:
  if (v5 <= 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = v5;
  }

  while (1)
  {
    if (v5 == 3)
    {
      sub_BD88(&qword_9434F8);
      swift_arrayDestroy();
      return _swiftEmptyArrayStorage;
    }

    if (v6 == v5)
    {
      break;
    }

    v7 = v9[v5++ + 4];
    if (v7)
    {
      v8 = v7;
      sub_769440();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      result = sub_769500();
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

void sub_AAE08(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  sub_AAAB0(v6, a4);

  swift_unknownObjectRelease();
}

void sub_AAE88(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v3 isViewLoaded])
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    v10[4] = sub_B3538;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_6C6800;
    v10[3] = &unk_883018;
    v8 = _Block_copy(v10);
    v9 = v3;

    [a1 animateAlongsideTransition:0 completion:v8];
    _Block_release(v8);
  }
}

void sub_AAFB0(int a1, _BYTE *a2)
{
  a2[qword_99A500] = 1;
  v3 = [a2 viewIfLoaded];
  [v3 setNeedsLayout];

  a2[qword_942E30] = 1;
  v4 = [a2 viewIfLoaded];
  [v4 setNeedsLayout];

  sub_AB050();
}

void sub_AB050()
{
  v1 = v0;
  v2 = sub_757640();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_762590();
  if ((v7 & 1) == 0)
  {
    v8 = v6;
    v9 = [v1 collectionView];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 numberOfSections];

      if (v8 >= v11)
      {
        return;
      }
    }

    else if ((v8 & 0x8000000000000000) == 0)
    {
      return;
    }

    v12 = [v1 collectionView];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 collectionViewLayout];

      sub_7575B0();
      isa = sub_757550().super.isa;
      (*(v3 + 8))(v5, v2);
      v16 = [v14 layoutAttributesForItemAtIndexPath:isa];

      if (v16)
      {
        v17 = *&v1[qword_942E90];
        if (v17)
        {

          [v14 collectionViewContentSize];
          v19 = v18;
          [v16 frame];
          *(v17 + 48) = v19 - CGRectGetMinY(v21);
          sub_662A8C(1);
        }
      }

      else
      {
        v16 = v14;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_AB26C(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_AAE88(a5, a2, a3);
  swift_unknownObjectRelease();
}

void sub_AB2EC()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "viewWillLayoutSubviews");
  v1 = sub_AACD0();
  v2 = v1;
  if (v1 >> 62)
  {
LABEL_14:
    v3 = sub_76A860();
    if (v3)
    {
LABEL_3:
      v4 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = sub_76A770();
        }

        else
        {
          if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_13;
          }

          v5 = *(v2 + 8 * v4 + 32);
        }

        v6 = v5;
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

        v8 = [v0 view];
        if (!v8)
        {
          break;
        }

        v9 = v8;
        [v8 bringSubviewToFront:v6];

        ++v4;
        if (v7 == v3)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_21;
    }
  }

  else
  {
    v3 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (v3)
    {
      goto LABEL_3;
    }
  }

LABEL_15:

  v10 = *&v0[qword_942E88];
  if (v10)
  {
    v11 = v10;
    v12 = [v0 view];
    if (!v12)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v13 = v12;
    v14 = [v0 collectionView];
    if (!v14)
    {
LABEL_22:
      __break(1u);
      return;
    }

    v15 = v14;
    [v13 insertSubview:v11 aboveSubview:v14];
  }
}

void sub_AB4A4(void *a1)
{
  v1 = a1;
  sub_AB2EC();
}

void sub_AB4EC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_BD88(&unk_9435D0);
  __chkstk_darwin(v3 - 8);
  v160 = &v156 - v4;
  v162 = sub_769ED0();
  v161 = *(v162 - 8);
  __chkstk_darwin(v162);
  v159 = &v156 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75D850();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v156 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v158 = &v156 - v11;
  v12 = sub_75CF00();
  v165 = *(v12 - 8);
  v166 = v12;
  __chkstk_darwin(v12);
  v14 = &v156 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v164 = &v156 - v17;
  v168.receiver = v0;
  v168.super_class = ObjectType;
  objc_msgSendSuper2(&v168, "viewDidLayoutSubviews", v16);
  if (v0[qword_942E30] == 1)
  {
    v0[qword_942E30] = 0;
    sub_AC0F8();
  }

  sub_AC57C();
  sub_AC7C0();
  sub_AC9B4();
  v18 = qword_99A4E8;
  v19 = &unk_942000;
  if (v0[qword_99A4E8] != 1)
  {
    goto LABEL_13;
  }

  v20 = *&v0[qword_942E50];
  if (v20)
  {
    v21 = [v20 view];
    if (v21)
    {
      v22 = v21;
      [v21 frame];
      v24 = v23;
      v25 = [v1 view];
      v26 = v25;
      if (v24 >= 0.0)
      {
        if (!v25)
        {
LABEL_59:
          __break(1u);
          return;
        }

        [v25 bounds];
        v28 = v44;
        v46 = v45;
        v48 = v47;
        v50 = v49;

        v43 = v50;
        v42 = v48;
        v41 = v46;
      }

      else
      {
        v163 = *&v18;
        v157 = v7;
        if (!v25)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        [v25 bounds];
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v34 = v33;

        v35 = objc_opt_self();
        [v35 inheritedAnimationDuration];
        v37 = v36 * 0.8;
        v38 = swift_allocObject();
        *(v38 + 2) = v22;
        v38[3] = v28;
        *(v38 + 4) = v30;
        *(v38 + 5) = v32;
        *(v38 + 6) = v34;
        aBlock[4] = sub_B3528;
        aBlock[5] = v38;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_23F0CC;
        aBlock[3] = &unk_882FC8;
        v39 = _Block_copy(aBlock);
        v40 = v22;

        [v35 animateWithDuration:612 delay:v39 usingSpringWithDamping:0 initialSpringVelocity:v37 options:0.0 animations:0.92 completion:0.0];
        _Block_release(v39);
        [v40 frame];
        [v40 setFrame:?];
        [v40 frame];
        v7 = v157;
        *&v18 = v163;
      }

      [v22 setFrame:{v28, v41, v42, v43}];
    }
  }

  if ((v1[v18] & 1) == 0)
  {
LABEL_13:
    v51 = *&v1[qword_942E60];
    if (v51)
    {
      v52 = *(v51 + 24);

      [v52 _systemContentInset];
      v54 = v53;
      v56 = v55;
      [v52 contentOffset];
      v58 = v57;
      v60 = v59;
      [v52 contentInset];
      v62 = v56 + v58 + v61;
      v64 = v54 + v60 + v63;
      [v52 bounds];
      v66 = sub_56E3E0(v62, v64, v65);
      v68 = v67;
      v70 = v69;
      v72 = v71;
    }

    else
    {
      v66 = 0.0;
      v68 = 0.0;
      v70 = 0.0;
      v72 = 0.0;
    }

    v73 = qword_99A500;
    if ((v1[qword_99A500] & 1) != 0 || (v169.origin.x = v66, v169.origin.y = v68, v169.size.width = v70, v169.size.height = v72, Width = CGRectGetWidth(v169), (v75 = *&v1[qword_942E50]) == 0) || (v76 = Width, (v77 = [v75 view]) == 0) || (v78 = v77, objc_msgSend(v77, "frame"), v80 = v79, v82 = v81, v84 = v83, v163 = v76, v86 = v85, v78, v170.origin.x = v80, v170.origin.y = v82, v170.size.width = v84, v170.size.height = v86, v163 != CGRectGetWidth(v170)))
    {
      v87 = *&v1[qword_942E50];
      if (v87)
      {
        v88 = [v87 view];
      }

      else
      {
        v88 = 0;
      }

      [v88 setFrame:{v66, v68, v70, v72}];

      sub_ACB88(v66, v68, v70, v72);
      v1[v73] = 0;
    }
  }

  v89 = *&v1[qword_942E88];
  if (v89)
  {
    v163 = *&v18;
    v157 = v7;
    v90 = v6;
    v91 = v89;
    v92 = [v1 traitCollection];
    v93 = sub_7699B0();

    if (v93)
    {
      v94 = 80.0;
    }

    else
    {
      v94 = 20.0;
    }

    v95 = [v1 view];
    if (!v95)
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v96 = v95;
    [v95 bounds];
    v98 = v97;
    v100 = v99;
    v102 = v101;
    v104 = v103;

    v105 = 0.0;
    v171.origin.x = v98;
    v171.origin.y = v100;
    v171.size.width = v102;
    v171.size.height = v104;
    v172 = CGRectInset(v171, v94, 0.0);
    v106 = v172.size.width;
    v107 = *&v91[OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_lockupView];
    if (v107)
    {
      v108 = v9;
      v109 = v107;
      v110 = v164;
      sub_11E030(v164);
      [v109 layoutMargins];
      v112 = v111;
      v114 = v113;
      v115 = [v109 traitCollection];
      (*(v165 + 16))(v14, v110, v166);
      v116 = sub_75CE70();
      v19 = &unk_942000;
      if ((v118 & 1) == 0 && ((v116 | v117) & 0x7FFFFFFFFFFFFFFFLL) == 0)
      {
        if (sub_769A00())
        {
          v119 = v108;
          if (qword_93C440 != -1)
          {
            swift_once();
          }

          v120 = qword_946920;
        }

        else
        {
          v119 = v108;
          if (qword_93C448 != -1)
          {
            swift_once();
          }

          v120 = qword_946938;
        }

        v124 = sub_BE38(v90, v120);
        v125 = v157;
        (*(v157 + 16))(v119, v124, v90);
        v126 = v158;
        (*(v125 + 32))(v158, v119, v90);
        sub_75D800();
        sub_75D830();
        sub_75CE80();
        (*(v125 + 8))(v126, v90);
      }

      sub_75CDB0();
      v128 = v127;

      v129 = v166;
      v130 = *(v165 + 8);
      v130(v14, v166);

      v122 = v114 + v112 + v128;
      v130(v164, v129);
    }

    else
    {
      v121 = *&v91[OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_arcadeLockupView];
      v122 = 0.0;
      v19 = &unk_942000;
      if (!v121)
      {
        goto LABEL_44;
      }

      [v121 sizeThatFits:{v172.size.width, v172.size.height}];
      v122 = v123;
    }

    v105 = v106;
LABEL_44:
    v131 = v91;
    [v131 frame];
    *&v18 = v163;
    if (v105 != v133 || v122 != v132)
    {
      [v131 frame];
      [v131 setFrame:v94];
      [v131 frame];
      [v131 setFrame:?];
    }

    if (*&v1[qword_942E90])
    {

      sub_662A8C(1);
    }
  }

  if ((v1[v18] & 1) == 0)
  {
    v134 = *&v1[v19[458]];
    if (v134)
    {
      type metadata accessor for ListTodayCardCollectionViewCell();
      if (swift_dynamicCastClass())
      {
        v135 = v134;
        v136 = [v1 view];
        if (v136)
        {
          v137 = v136;
          v138 = enum case for UIView.LayoutRegion.AdaptivityAxis.vertical(_:);
          v139 = sub_769EB0();
          v140 = *(v139 - 8);
          v141 = v160;
          (*(v140 + 104))(v160, v138, v139);
          (*(v140 + 56))(v141, 0, 1, v139);
          v142 = v159;
          sub_769EC0();
          sub_10A2C(v141, &unk_9435D0);
          sub_769E90();
          v144 = v143;
          v146 = v145;
          v148 = v147;
          v150 = v149;

          (*(v161 + 8))(v142, v162);
          v151 = &v135[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_verticalSafeAreaInsets];
          v152 = *&v135[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_verticalSafeAreaInsets];
          v153 = *&v135[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_verticalSafeAreaInsets + 8];
          v154 = *&v135[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_verticalSafeAreaInsets + 16];
          v155 = *&v135[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_verticalSafeAreaInsets + 24];
          *v151 = v144;
          *(v151 + 1) = v146;
          *(v151 + 2) = v148;
          *(v151 + 3) = v150;
          sub_31075C(v152, v153, v154, v155);

          return;
        }

        goto LABEL_57;
      }
    }
  }
}

void sub_AC0F8()
{
  v1 = v0;
  v2 = [v0 collectionView];
  if (!v2)
  {
    return;
  }

  v83 = v2;
  [v83 contentInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (v0[qword_99A4E8] == 1)
  {
    v10 = *&v0[qword_942E50];
    if (v10)
    {
      v11 = v10;
      v12 = [v1 view];
      if (v12)
      {
        v13 = v12;
        [v12 bounds];
        v15 = v14;

        v16 = *&v11[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell];
        if (v16)
        {
          v17 = *&v11[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell + 8];
          v18 = *&v11[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell];
        }

        else
        {
          v17 = *&v11[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell + 8];
          v18 = *&v11[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell];
          v16 = 0;
        }

        v75 = v16;
        sub_311270(v15, v18, v17);
        v56 = v76;

        goto LABEL_17;
      }

LABEL_26:
      __break(1u);
      return;
    }
  }

  v19 = *&v0[qword_942E60];
  if (v19)
  {
    v20 = *(v19 + 24);

    [v20 _systemContentInset];
    v22 = v21;
    v24 = v23;
    [v20 contentOffset];
    v26 = v25;
    v28 = v27;
    [v20 contentInset];
    v30 = v24 + v26 + v29;
    v32 = v22 + v28 + v31;
    [v20 bounds];
    v85.origin.x = sub_56E3E0(v30, v32, v33);
    Height = CGRectGetHeight(v85);
    v35 = [v1 view];
    if (v35)
    {
      v36 = v35;
      [v35 safeAreaInsets];
      v38 = v37;

      v39 = *&v1[qword_942E50];
      if (v39)
      {
        v40 = [v39 view];
        if (v40)
        {
          v41 = v40;
          v42 = *(v19 + 24);
          [v42 _systemContentInset];
          v44 = v43;
          v46 = v45;
          [v42 contentOffset];
          v48 = v47;
          v50 = v49;
          [v42 contentInset];
          v52 = v46 + v48 + v51;
          v54 = v44 + v50 + v53;
          [v42 bounds];
          [v41 setFrame:{sub_56E3E0(v52, v54, v55)}];
        }
      }

      v56 = Height - v38;
      v57 = *(v19 + 24);
      [v57 _systemContentInset];
      v59 = v58;
      v61 = v60;
      [v57 contentOffset];
      v63 = v62;
      v65 = v64;
      [v57 contentInset];
      v67 = v61 + v63 + v66;
      v69 = v59 + v65 + v68;
      [v57 bounds];
      v71 = sub_56E3E0(v67, v69, v70);
      sub_ACB88(v71, v72, v73, v74);

      v9 = 0.0;
      v7 = 0.0;
      v5 = 0.0;
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_26;
  }

  v56 = v3;
LABEL_17:
  [v83 contentOffset];
  v78 = v77;
  v80 = v79;
  [v83 setContentInset:{v56, v5, v7, v9}];
  [v83 setContentOffset:{v78, v80}];
  if (*&v1[qword_942E50])
  {
    type metadata accessor for ListTodayCardCollectionViewCell();
    v81 = swift_dynamicCastClass();
    v82 = 0.0;
    if (!v81)
    {
      v82 = v56;
    }
  }

  else
  {
    v82 = v56;
  }

  [v83 setScrollIndicatorInsets:{v82, 0.0, v7, 0.0}];
  [v83 contentOffset];
  [v83 setContentOffset:?];
}

void sub_AC57C()
{
  v1 = *&v0[qword_99A518];
  if (v1)
  {
    v2 = v0;
    v3 = objc_opt_self();
    v4 = v1;
    v5 = [v3 currentDevice];
    [v5 userInterfaceIdiom];

    sub_E3BCC();
    v6 = [v2 view];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      v16 = *&v2[qword_942E50];
      if (v16 && (v17 = *(v16 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell), type metadata accessor for ListTodayCardCollectionViewCell(), swift_dynamicCastClass()))
      {
        v18 = v17;
        [sub_1D656C() frame];
        CGRectGetMaxX(v21);
      }

      else
      {
        v22.origin.x = v9;
        v22.origin.y = v11;
        v22.size.width = v13;
        v22.size.height = v15;
        CGRectGetMaxX(v22);
      }

      v23.origin.x = v9;
      v23.origin.y = v11;
      v23.size.width = v13;
      v23.size.height = v15;
      CGRectGetMinY(v23);
      v19 = v4;
      sub_769D20();
      [v19 setFrame:?];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_AC7C0()
{
  v1 = *&v0[qword_99A520];
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 currentDevice];
    [v4 userInterfaceIdiom];

    sub_E3BCC();
    v5 = [v0 view];
    if (v5)
    {
      v6 = v5;
      [v5 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v15 = *&v0[qword_99A518];
      if (v15)
      {
        v16 = v15;
        [v16 frame];
        CGRectGetMinX(v19);
      }

      else
      {
        v20.origin.x = v8;
        v20.origin.y = v10;
        v20.size.width = v12;
        v20.size.height = v14;
        CGRectGetMaxX(v20);
      }

      v21.origin.x = v8;
      v21.origin.y = v10;
      v21.size.width = v12;
      v21.size.height = v14;
      CGRectGetMinY(v21);
      v17 = v3;
      sub_769D20();
      [v17 setFrame:?];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_AC9B4()
{
  v1 = *&v0[qword_99A528];
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 currentDevice];
    [v4 userInterfaceIdiom];

    sub_E3BCC();
    v5 = [v0 view];
    if (v5)
    {
      v6 = v5;
      [v5 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v15 = v3;
      [v15 sizeThatFits:{v12, v14}];
      v17.origin.x = v8;
      v17.origin.y = v10;
      v17.size.width = v12;
      v17.size.height = v14;
      CGRectGetMinX(v17);
      v18.origin.x = v8;
      v18.origin.y = v10;
      v18.size.width = v12;
      v18.size.height = v14;
      CGRectGetMinY(v18);
      sub_769D20();
      [v15 setFrame:?];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_ACB88(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_768A80();
  v37 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v13 - 8);
  v15 = &v35 - v14;
  v16 = sub_768AB0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *&v4[qword_942E68];
  if (v20 || (result = sub_7625A0(), (v20 = result) != 0))
  {

    sub_765A50();
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {

      return sub_10A2C(v15, &unk_93FF30);
    }

    (*(v17 + 32))(v19, v15, v16);
    v22 = [v4 collectionView];
    if (v22)
    {
      v23 = v22;
      sub_761840();
      result = [v4 view];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v24 = result;
      v36 = v23;
      [result convertRect:v23 toCoordinateSpace:{a1, a2, a3, a4}];

      sub_75F4B0();
      sub_768A90();
      v25 = qword_942E50;
      v26 = *&v5[qword_942E50];
      if (v26)
      {
        [*(v26 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell) bounds];
        *(&v28 + 1) = v27;
        *(&v30 + 1) = v29;
      }

      else
      {
        v28 = 0uLL;
        v30 = 0uLL;
      }

      v39 = v28;
      v40 = v30;
      v41 = v26 == 0;
      v31 = sub_75F490();
      (*(v37 + 8))(v12, v10);
      if (v31)
      {
        v32 = *&v5[v25];
        if (v32)
        {
          v33 = *(v32 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell);
          swift_getObjectType();
          v38[3] = sub_765B70();
          v38[4] = sub_B3548(&qword_94CAB0, &type metadata accessor for TodayCard);
          v38[0] = v20;
          v34 = v33;

          sub_7633B0();

          (*(v17 + 8))(v19, v16);
          return sub_BEB8(v38);
        }

        else
        {

          return (*(v17 + 8))(v19, v16);
        }
      }

      (*(v17 + 8))(v19, v16);
    }

    else
    {
      (*(v17 + 8))(v19, v16);
    }
  }

  return result;
}

void sub_AD088(void *a1)
{
  v1 = a1;
  sub_AB4EC();
}

void sub_AD0D0(void *a1)
{
  v2 = v1;
  v14.receiver = v2;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "traitCollectionDidChange:", a1);
  v2[qword_942E30] = 1;
  v4 = [v2 viewIfLoaded];
  [v4 setNeedsLayout];

  if (a1)
  {
    v5 = a1;
    if ([v5 horizontalSizeClass] && (v6 = objc_msgSend(v2, "traitCollection"), v7 = objc_msgSend(v6, "horizontalSizeClass"), v6, v7 != objc_msgSend(v5, "horizontalSizeClass")) && ((v8 = *&v2[qword_942E68]) != 0 || (v8 = sub_7625A0()) != 0))
    {
      v9 = *&v2[qword_942E50];
      if (v9)
      {
        v10 = v9 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell;
        v12 = *v10;
        v11 = *(v10 + 8);

        v13 = v12;
        sub_AD270(v8, v13, v11, 5);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_AD270(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v58 = a1;
  v9 = sub_766460();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_7656C0();
  v56 = *(v13 - 8);
  v57 = v13;
  __chkstk_darwin(v13);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&v4[qword_942E50];
  v59 = v15;
  if (v16)
  {
    type metadata accessor for ArticleHeaderViewController();
    v17 = v16;
    v18 = v15;
    v19 = v17;
    sub_30FF1C(v17, v18);
  }

  else
  {
    type metadata accessor for ArticleHeaderViewController();
    sub_30FF1C(v4, v15);
    sub_766450();
    v20 = sub_766440();
    v21 = sub_769810();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "ArticleDiffablePageViewController: header page grid derived from self unexpected", v22, 2u);
    }

    (*(v10 + 8))(v12, v9);
  }

  v23 = a4;
  v24 = v58;
  if (a4 == 7)
  {
    v25 = v5;
    v26 = [v5 traitCollection];
    v27 = sub_7699B0();
    type metadata accessor for ListTodayCardCollectionViewCell();
    if (swift_dynamicCastClass())
    {
      ObjectType = swift_getObjectType();
      v29 = (*(a3 + 160))(ObjectType, a3);

      if (v29 == 6)
      {
        v30 = 6;
LABEL_12:
        if (v27)
        {
          v23 = v30;
        }

        else
        {
          v23 = 5;
        }

        v5 = v25;
        goto LABEL_16;
      }
    }

    else
    {
    }

    v30 = 1;
    goto LABEL_12;
  }

LABEL_16:
  v31 = swift_getObjectType();
  v54 = qword_99A4E8;
  (*(a3 + 96))((v5[qword_99A4E8] & 1) == 0, v31, a3);
  v32 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph];
  v33 = v23;
  v34 = v59;
  (*(a3 + 296))(v24, v33, v59, v32, v31, a3);
  v35 = (*(a3 + 264))(v31, a3);
  if (v35)
  {
    *(v35 + qword_940588 + 8) = &off_882BA8;
    v36 = v35;
    swift_unknownObjectWeakAssign();
  }

  swift_getObjectType();
  v37 = swift_conformsToProtocol2();
  if (v37 && a2)
  {
    v38 = v37;
    v55 = v5;
    if (a4 == 7)
    {
      v39 = *(a3 + 136);
      v40 = a2;
      LODWORD(a4) = v39(v31, a3);
    }

    else
    {
      v41 = a2;
    }

    v42 = swift_getObjectType();
    sub_42E294(v24, v59, a4, v32, v42, v38);
    v43 = *(v38 + 32);
    if (v43(v42, v38))
    {
      v45 = v44;
      v46 = swift_getObjectType();
      (*(v45 + 32))((v55[v54] & 1) == 0, v46, v45);
      swift_unknownObjectRelease();
    }

    if (v43(v42, v38))
    {
      v48 = v47;
      v49 = swift_getObjectType();
      v50 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v51 = *(v48 + 88);

      v51(sub_B293C, v50, v49, v48);
      swift_unknownObjectRelease();
    }

    v24 = v58;
    v34 = v59;
  }

  v60[3] = sub_765B70();
  v60[4] = &protocol witness table for TodayCard;
  v60[0] = v24;

  sub_75F900();
  (*(v56 + 8))(v34, v57);
  return sub_BEB8(v60);
}

void sub_AD828(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_AD0D0(a3);
}

uint64_t sub_AD894()
{
  ObjectType = swift_getObjectType();
  v0 = sub_BD88(&qword_943548);
  v16 = *(v0 - 8);
  v17 = v0;
  __chkstk_darwin(v0);
  v15 = &ObjectType - v1;
  v2 = sub_BD88(&qword_943550);
  v13 = *(v2 - 8);
  v14 = v2;
  __chkstk_darwin(v2);
  v12 = &ObjectType - v3;
  v4 = sub_BD88(&qword_943558);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &ObjectType - v6;
  sub_1BB32C();
  sub_762580();
  sub_BD88(&qword_943560);
  sub_16194(&qword_943568, &qword_943560);
  sub_768710();
  sub_768720();

  sub_BEB8(v18);
  (*(v5 + 8))(v7, v4);
  sub_762550();
  sub_BD88(&qword_943570);
  sub_16194(&qword_943578, &qword_943570);
  sub_768710();
  v8 = v12;
  sub_768720();

  sub_BEB8(v18);
  (*(v13 + 8))(v8, v14);
  sub_762570();
  sub_BD88(&qword_943580);
  sub_16194(&qword_943588, &qword_943580);
  sub_768710();
  v9 = v15;
  sub_768720();

  sub_BEB8(v18);
  return (*(v16 + 8))(v9, v17);
}

void sub_ADCCC(uint64_t a1)
{
  v2 = v1;
  v4 = qword_942E68;
  v5 = *(v1 + qword_942E68);

  v6 = sub_7625A0();
  v7 = sub_B2A04(v5, v6);

  v8 = *(v2 + v4);
  if (!v8 || (v7 & 1) != 0)
  {
    *(v2 + qword_942E48) = a1;

    v9 = *(v2 + qword_99A4F8);

    if (!v8 || v9 == 0)
    {

      sub_B0B7C();
    }
  }
}

uint64_t (*sub_ADDB0(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_B3468;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_B34C4;
}

uint64_t sub_ADE40(uint64_t a1)
{
  v2 = v1;
  v4 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_762540();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_AFF48();
  (*(v8 + 16))(v10, a1, v7);
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 == enum case for ArticleDiffablePagePresenter.FooterLockup.standard(_:))
  {
    (*(v8 + 96))(v10, v7);
    v12 = *v10;
    v13 = *(v1 + qword_942E88);
    if (v13)
    {
      v14 = *(v1 + qword_99E1B8);
      v15 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph);
      v16 = v13;
      sub_6DF260(v12, v14, v15);
    }

    sub_764E50();
LABEL_9:

    v21 = qword_99A530;
    swift_beginAccess();
    sub_B33C8(v6, v2 + v21, &unk_93FF30);
    return swift_endAccess();
  }

  if (v11 == enum case for ArticleDiffablePagePresenter.FooterLockup.arcade(_:))
  {
    (*(v8 + 96))(v10, v7);
    v17 = *v10;
    v18 = *(v1 + qword_942E88);
    if (v18)
    {
      v19 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph);
      v20 = v18;
      sub_6DFBAC(v17, v19);
    }

    sub_759BC0();
    goto LABEL_9;
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t (*sub_AE0F4(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_B33A4;
}

uint64_t sub_AE158(unint64_t a1)
{
  sub_BD88(&unk_943590);
  sub_768900();
  sub_768ED0();
  v2 = v11[0];
  if (!(a1 >> 62))
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v3 = sub_76A860();
  if (!v3)
  {
  }

LABEL_3:
  result = sub_BE70(0, &qword_940340);
  if (v3 >= 1)
  {
    v5 = result;
    v6 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_76A770();
      }

      else
      {
        v7 = *(a1 + 8 * v6 + 32);
      }

      ++v6;
      v11[0] = v7;
      sub_758C20();
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v9 = swift_allocObject();
      v9[2] = v7;
      v9[3] = v8;
      v9[4] = v2;
      swift_retain_n();

      v10 = sub_769970();
      v11[3] = v5;
      v11[4] = &protocol witness table for OS_dispatch_queue;
      v11[0] = v10;
      sub_768F10();

      sub_BEB8(v11);
    }

    while (v3 != v6);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_AE374(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_B30F8;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_B311C;
}

unint64_t sub_AE404@<X0>(uint64_t *a1@<X8>)
{
  sub_75A3C0();
  swift_allocObject();
  v2 = sub_75A3B0();
  a1[3] = &type metadata for ArticlePageGridProvider;
  result = sub_B30A4();
  a1[4] = result;
  *a1 = v2;
  return result;
}

unint64_t sub_AE45C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ArticlePageShelfLayoutSpacingProvider;
  result = sub_B3050();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_AE490()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph);
  v2 = sub_B3548(&qword_943528, &type metadata accessor for ArticleDiffablePagePresenter);
  type metadata accessor for ArticlePageShelfSupplementaryProvider();
  v3 = swift_allocObject();
  *(v3 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 32) = v2;
  swift_unknownObjectWeakAssign();
  *(v3 + 16) = v1;
  sub_B3548(&qword_943530, type metadata accessor for ArticlePageShelfSupplementaryProvider);

  return v3;
}

id sub_AE590(uint64_t a1)
{
  v2 = sub_BD88(&qword_943500);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  sub_5FEECC(a1);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  LODWORD(a1) = enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:);
  result = (*(v3 + 8))(v5, v2);
  if (v6 == a1)
  {
    v8 = sub_762560();
    sub_AE6E0(v8 & 1);
    return sub_AE7C0();
  }

  return result;
}

uint64_t sub_AE6E0(uint64_t result)
{
  v2 = *(v1 + qword_942E78);
  v3 = result & 1;
  *(v1 + qword_942E78) = result;
  if (v2 != v3)
  {
    v4 = qword_942E80;
    v5 = *(v1 + qword_942E80);
    *(v1 + qword_942E80) = v3;
    if (v5 != v3)
    {
      v6 = [objc_opt_self() sharedCoordinator];
      v7 = v6;
      if (*(v1 + v4))
      {
        v8 = &selRef_beginDelayingNotifications;
      }

      else
      {
        v8 = &selRef_endDelayingNotifications;
      }

      [v6 *v8];
    }

    sub_762560();
    return sub_768470();
  }

  return result;
}

id sub_AE7C0()
{
  v1 = sub_756AC0();
  __chkstk_darwin(v1);
  v26 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_7570A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75AE80();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_762530();
  if (result)
  {
    v25 = v0;
    sub_75C1F0();
    if (swift_dynamicCastClass())
    {
      sub_75C1B0();
      sub_75AE90();

      if ((*(v8 + 88))(v10, v7) == enum case for ShareSheetData.Metadata.article(_:))
      {
        (*(v8 + 96))(v10, v7);
        v12 = *v10;
        v13 = sub_7616F0();
        v24 = v14;
        v15 = sub_761700();
        v23[1] = v16;
        v23[2] = v15;
        v23[0] = v12;
        sub_761720();
        sub_75C1B0();
        sub_75AE70();

        sub_757020();
        v18 = v17;
        (*(v4 + 8))(v6, v3);
        sub_34A130(v13, v24, v18, &v30);
        v33[0] = v30;
        v19 = v31;
        v29 = _swiftEmptyArrayStorage;
        sub_B2F4C(v33, v27);
        sub_B3548(&qword_943508, &type metadata accessor for AppEntityVisualState);
        v24 = v19;

        sub_BD88(&qword_943510);
        sub_16194(&qword_943518, &qword_943510);
        sub_76A5A0();
        v27[0] = v30;
        v27[1] = v31;
        v28 = v32;
        v20 = objc_allocWithZone(sub_766300());
        sub_B2FA8();
        v21 = sub_7662F0();
        result = [v25 view];
        if (result)
        {
          v22 = result;
          sub_769E60();

          sub_B2FFC(v33);
        }

        else
        {
          __break(1u);
        }
      }

      else
      {

        return (*(v8 + 8))(v10, v7);
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_AEC60()
{
  v1 = v0;
  v2 = objc_allocWithZone(type metadata accessor for MuteButton());
  v3 = sub_66DFD8(20.0);
  [v3 setAlpha:0.0];
  [v3 addTarget:v0 action:"toggleMute" forControlEvents:64];
  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    [v4 addSubview:v3];

    v6 = *&v1[qword_99A520];
    *&v1[qword_99A520] = v3;
    v7 = v3;
    if (v6)
    {
      [v6 removeFromSuperview];
    }

    v8 = [v1 viewIfLoaded];
    [v8 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

void sub_AED94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v9 - 8);
  v11 = &v34 - v10;
  *(v4 + qword_942E68) = a1;

  v12 = sub_7656C0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v36 = a4;
  v14(v11, a4, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  v15 = qword_942E70;
  swift_beginAccess();

  sub_B33C8(v11, v4 + v15, &unk_955AA0);
  swift_endAccess();
  ObjectType = swift_getObjectType();
  v17 = swift_conformsToProtocol2();
  if (v17 && a2)
  {
    v18 = v17;
    v19 = swift_getObjectType();
    v20 = a2;
    v21 = a1;
    v22 = *(a3 + 136);
    v34 = v20;
    v23 = v20;
    v35 = a3;
    v24 = v22(ObjectType, a3);
    a1 = v21;
    sub_42E294(v21, v36, v24, *(v4 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph), v19, v18);
    v25 = *(v18 + 32);
    if (v25(v19, v18))
    {
      v27 = v26;
      v28 = swift_getObjectType();
      (*(v27 + 32))((*(v4 + qword_99A4E8) & 1) == 0, v28, v27);
      swift_unknownObjectRelease();
    }

    if (v25(v19, v18))
    {
      v30 = v29;
      v31 = swift_getObjectType();
      v32 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v33 = *(v30 + 88);

      v33(sub_B35C0, v32, v31, v30);
      swift_unknownObjectRelease();
    }

    a2 = v34;
    a3 = v35;
  }

  sub_AF0D0(a1, a2, a3);
  sub_AF4F4();
}

void sub_AF0D0(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_AFB74(a2, a3, a1);
  v10 = v9;
  v11 = type metadata accessor for ArticleHeaderViewController();
  v12 = objc_allocWithZone(v11);
  v12[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_isDisappearing] = 0;
  v12[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_isAppearing] = 0;
  v12[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_isCardModeEnabled] = 1;
  v13 = &v12[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_verticalSafeAreaInsets];
  v14 = *&UIEdgeInsetsZero.bottom;
  *v13 = *&UIEdgeInsetsZero.top;
  v13[1] = v14;
  *&v12[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_todayCard] = a1;
  v15 = &v12[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell];
  *v15 = a2;
  v15[1] = a3;
  v16 = &v12[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell];
  *v16 = v8;
  v16[1] = v10;
  v44.receiver = v12;
  v44.super_class = v11;

  a2;
  v17 = v8;
  v18 = objc_msgSendSuper2(&v44, "initWithNibName:bundle:", 0, 0);
  v18[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_isCardModeEnabled] = v4[qword_99A4E8];
  sub_3104E4();
  v19 = [v4 view];
  if (!v19)
  {
    __break(1u);
    goto LABEL_12;
  }

  v20 = v19;
  [v19 bounds];
  v22 = v21;

  v23 = [v18 view];
  if (!v23)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v24 = v23;
  v25 = &v18[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell];
  v26 = *&v18[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell];
  if (v26)
  {
    v27 = *(v25 + 1);
    v28 = *v25;
  }

  else
  {
    v27 = *&v18[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell + 8];
    v28 = *&v18[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell];
    v26 = 0;
  }

  v29 = v26;
  v30 = sub_311270(v22, v28, v27);
  v32 = v31;

  [v24 setFrame:{0.0, 0.0, v30, v32}];
  v33 = v18;
  sub_AF930(v18);
  v34 = [v4 collectionView];
  if (v34)
  {
    v35 = v34;
    ObjectType = swift_getObjectType();
    v37 = *(a3 + 208);
    v38 = v33;
    v39 = v35;
    LOBYTE(v35) = v37(ObjectType, a3);
    type metadata accessor for ArticleHeaderScrollObserver();
    v40 = swift_allocObject();
    *(v40 + 16) = v38;
    *(v40 + 24) = v39;
    *(v40 + 32) = v35 & 1;
    v41 = qword_942E60;
    if (*&v4[qword_942E60])
    {
      sub_B3548(&qword_9434E8, type metadata accessor for ArticleHeaderScrollObserver);
    }

    sub_75FA30();

    *&v4[v41] = v40;
    swift_retain_n();

    sub_B3548(&qword_9434E8, type metadata accessor for ArticleHeaderScrollObserver);
    sub_75FA40();
  }

  v4[qword_99A500] = 1;
  v42 = [v4 viewIfLoaded];
  [v42 setNeedsLayout];

  v4[qword_942E30] = 1;
  v43 = [v4 viewIfLoaded];
  [v43 setNeedsLayout];
}

void sub_AF4F4()
{
  v1 = v0;
  v2 = sub_75C330();
  __chkstk_darwin(v2);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v40 - v8;
  v10 = *(v0 + qword_942E50);
  if (!v10)
  {
    return;
  }

  v41 = v7;
  v42 = v6;
  v11 = &v10[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell];
  v12 = *&v10[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell + 8];
  ObjectType = swift_getObjectType();
  v14 = *(v12 + 272);
  v43 = v10;
  if (v14(ObjectType, v12) & 1) != 0 || (v15 = *(v11 + 1), v16 = swift_getObjectType(), (v17 = (*(v15 + 264))(v16, v15)) != 0) && (v18 = v17, v19 = sub_50D80(), v18, (v19))
  {
    if (!*(v1 + qword_99A520))
    {
      sub_AEC60();
    }
  }

  v20 = *(v1 + qword_99A520);
  if (v20)
  {
    v21 = *(v11 + 1);
    v22 = swift_getObjectType();
    v23 = *(v21 + 264);
    v24 = v20;
    v25 = v23(v22, v21);
    if (v25)
    {
      v26 = v25;
      if (sub_50D80())
      {
        v27 = qword_9405B0;
        v28 = *&v26[qword_9405B0];
        if (v28)
        {
          LOBYTE(v28) = [v28 isMuted];
        }

        v29 = v42;
        sub_66DC84(v28);
        v30 = *&v26[v27];
        if (v30)
        {
          v31 = v30;
          sub_759A20();

          v32 = v41;
          (*(v41 + 32))(v9, v4, v29);
        }

        else
        {
          v32 = v41;
          (*(v41 + 104))(v9, enum case for VideoPlayerState.unknown(_:), v29);
        }

        if ((*(v32 + 88))(v9, v29) != enum case for VideoPlayerState.playing(_:) || (v34 = 1.0, (sub_50D80() & 1) == 0))
        {
          v34 = 0.0;
        }

        (*(v32 + 8))(v9, v29);
        [v24 alpha];
        if (v35 == v34)
        {
        }

        else
        {
          v36 = objc_opt_self();
          v37 = swift_allocObject();
          *(v37 + 16) = v24;
          *(v37 + 24) = v34;
          aBlock[4] = sub_B2390;
          aBlock[5] = v37;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_23F0CC;
          aBlock[3] = &unk_882C80;
          v38 = _Block_copy(aBlock);
          v39 = v24;

          [v36 animateWithDuration:4 delay:v38 options:0 animations:0.15 completion:0.0];

          _Block_release(v38);
        }

        return;
      }
    }

    else
    {
    }
  }

  v33 = v43;
}

void sub_AF930(void *a1)
{
  v3 = qword_942E50;
  v4 = *&v1[qword_942E50];
  if (v4)
  {
    v5 = v4;
    [v5 willMoveToParentViewController:0];
    [v5 removeFromParentViewController];
    v6 = [v5 viewIfLoaded];
    [v6 removeFromSuperview];

    [v5 didMoveToParentViewController:0];
    v7 = *&v1[v3];
  }

  else
  {
    v7 = 0;
  }

  *&v1[v3] = a1;
  v8 = a1;

  if (a1)
  {
    [v8 willMoveToParentViewController:v1];
    [v1 addChildViewController:v8];
    if ([v1 isViewLoaded])
    {
      sub_A99B0();
    }

    [v8 didMoveToParentViewController:v1];
  }
}

id sub_AFA88(void *a1, id a2, SEL *a3, SEL *a4)
{
  result = [a2 *a3];
  if (result)
  {
    v8 = result;
    [a1 frame];
    v10 = v9;
    v12 = v11;
    v13 = [a2 *a4];
    [v8 convertPoint:v13 fromView:{v10, v12}];
    v15 = v14;
    v17 = v16;

    [a1 frame];

    return [a1 setFrame:{v15, v17}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_AFB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v4 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23[-v5];
  v7 = sub_7656C0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  ObjectType = swift_getObjectType();
  v12 = *(a2 + 136);
  if (v12(ObjectType, a2) != 4 && v12(ObjectType, a2) != 6)
  {
    return 0;
  }

  (*(a2 + 112))(ObjectType, a2);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10A2C(v6, &unk_955AA0);
    return 0;
  }

  (*(v8 + 32))(v10, v6, v7);
  v13 = sub_283ECC(v28, 5);
  v15 = v14;
  v16 = swift_getObjectType();
  if (!v13 || v16 == v13)
  {
    (*(v8 + 8))(v10, v7);
    return 0;
  }

  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v25 = [v27 traitCollection];
  v18 = sub_7699B0();
  v26 = type metadata accessor for ListTodayCardCollectionViewCell();
  if (!swift_dynamicCastClass())
  {

LABEL_15:
    v21 = 1;
    goto LABEL_16;
  }

  v19 = *(v15 + 160);
  v24 = v18;
  v18 = v19(v13, v15);

  v20 = v18 == 6;
  LOBYTE(v18) = v24;
  if (!v20)
  {
    goto LABEL_15;
  }

  v21 = 6;
LABEL_16:
  if ((v18 & 1) == 0)
  {
    v21 = 5;
  }

  LODWORD(v25) = v21;
  (*(a2 + 216))(v29, ObjectType, a2);
  (*(v15 + 224))(v29, v13, v15);
  (*(v15 + 296))(v28, v25, v10, *&v27[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph], v13, v15);
  if (swift_dynamicCastClass())
  {
    (*(v15 + 96))(1, v13, v15);
  }

  (*(v8 + 8))(v10, v7);
  return v17;
}

void sub_AFF48()
{
  v1 = v0;
  v2 = qword_942E88;
  v3 = *&v0[qword_942E88];
  if (v3)
  {
    [v3 removeFromSuperview];
    v4 = *&v0[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v0[v2] = 0;

  v5 = [v0 collectionView];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(type metadata accessor for FooterLockupView()) init];
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_672B58(sub_B3430, v8);

    v9 = *&v1[v2];
    *&v1[v2] = v7;
    v10 = v7;

    v11 = [v1 view];
    if (v11)
    {
      v12 = v11;
      v13 = v10;
      [v12 addSubview:v13];

      type metadata accessor for ArticleFooterViewScrollObserver();
      v14 = swift_allocObject();
      *(v14 + 32) = 0;
      *(v14 + 40) = 0;
      *(v14 + 48) = xmmword_782920;
      *(v14 + 64) = 0x4028000000000000;
      *(v14 + 16) = v13;
      *(v14 + 24) = v6;
      *(v14 + 72) = 0;
      v15 = v13;
      v20 = v6;
      sub_662A8C(0);

      v16 = qword_942E90;
      if (*&v1[qword_942E90])
      {
        sub_B3548(&qword_9435A0, type metadata accessor for ArticleFooterViewScrollObserver);
      }

      sub_75FA30();

      *&v1[v16] = v14;
      swift_retain_n();

      sub_B3548(&qword_9435A0, type metadata accessor for ArticleFooterViewScrollObserver);
      sub_75FA40();

      v17 = *&v1[v16];
      if (v17)
      {
        v18 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v19 = *(v17 + 32);
        *(v17 + 32) = sub_B3460;
        *(v17 + 40) = v18;

        sub_F704(v19);

        if (*&v1[v16])
        {

          sub_662A8C(1);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_B029C(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;

    a2();
  }

  return result;
}

void sub_B0320(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_B037C(a1 & 1);
  }
}

uint64_t sub_B037C(int a1)
{
  v18 = a1;
  v2 = sub_7572A0();
  v17 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_768AB0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = qword_99A530;
  swift_beginAccess();
  sub_1ED18(v1 + v12, v7, &unk_93FF30);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10A2C(v7, &unk_93FF30);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_761820();
  swift_getObjectType();
  sub_757290();
  v14 = (v17 + 8);
  v15 = (v9 + 8);
  if (v18)
  {
    sub_768B50();
  }

  else
  {
    sub_768B60();
  }

  swift_unknownObjectRelease();
  (*v14)(v4, v2);
  return (*v15)(v11, v8);
}

id sub_B063C()
{
  v1 = sub_7587B0();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v1, v3);
  sub_7625B0();
  sub_B3548(&qword_955E90, &type metadata accessor for ArticleDiffablePagePresenter);
  sub_75EBD0();
  (*(v2 + 8))(v5, v1);
  if (v0[qword_942E78] == 1)
  {
    sub_762480();
    if (qword_93DEF0 != -1)
    {
      swift_once();
    }

    v6 = sub_768FF0();
    sub_BE38(v6, qword_9A0400);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768EA0();
  }

  else
  {
    v8 = *&v0[qword_99A508];
    if (v8)
    {

      v8(v9);
      return sub_F704(v8);
    }

    else
    {
      return [v0 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_B0908(void *a1)
{
  v1 = a1;
  sub_B063C();
}

void sub_B0950()
{
  v1 = *(v0 + qword_942E50);
  if (v1)
  {
    v2 = v0;
    v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell);
    if (v3)
    {
      v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell + 8);
      v5 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell);
    }

    else
    {
      v6 = v1 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell;
      v4 = *(v6 + 8);
      v5 = *v6;
    }

    ObjectType = swift_getObjectType();
    v8 = *(v4 + 264);
    v9 = v3;
    v15 = v8(ObjectType, v4);

    if (v15)
    {
      sub_56974();
      v10 = v15;
      v11 = *(v2 + qword_99A520);
      if (v11)
      {
        v12 = *&v15[qword_9405B0];
        v13 = v11;
        if (v12)
        {
          v14 = [v12 isMuted];
        }

        else
        {
          v14 = 1;
        }

        sub_66DC84(v14);

        v10 = v15;
      }
    }
  }
}

void sub_B0AAC(void *a1)
{
  v1 = a1;
  sub_B0950();
}

char *sub_B0AF4(char *result)
{
  v1 = *&result[qword_99A510];
  if (v1)
  {
    v2 = result;
    v3 = sub_F714(v1);
    v1(v3);

    return sub_F704(v1);
  }

  return result;
}

void sub_B0B7C()
{
  v1 = *(v0 + qword_942E48);
  if (v1)
  {
    v2 = v0;

    sub_765B20();
    v3 = sub_75B080();

    v4 = qword_942E50;
    v5 = *(v2 + qword_942E50);
    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell);
      if (v6)
      {
        v7 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell + 8);
        v8 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell);
      }

      else
      {
        v7 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell + 8);
        v8 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell);
        v6 = 0;
      }

      v12 = v6;
      v11 = v8;
      v10 = v11;
    }

    else
    {
      sub_44EFD4(v3);
      v7 = v9;
      v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      if (!*(v2 + v4))
      {
        type metadata accessor for RiverTodayCardCollectionViewCell();
        if (swift_dynamicCastClass())
        {
          sub_AD270(v1, v10, v7, 7);
        }

        sub_AF0D0(v1, v10, v7);
      }

      v11 = 0;
    }

    sub_AD270(v1, v10, v7, 7);
    v13 = *(v2 + v4);
    if (!v13 || ((v14 = *(v13 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell), swift_getObjectType(), swift_conformsToProtocol2()) ? (v15 = v14 == 0) : (v15 = 1), v15))
    {
    }

    else
    {
      sub_761120();
      sub_768900();
      v16 = v14;
      sub_768ED0();
      swift_getObjectType();
      v17 = sub_75EF20();
      v18 = v16;
      sub_761100();
    }
  }
}

void sub_B0E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v36 = a3;
  v6 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - v7;
  v9 = sub_768FF0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v32 = *(a1 + 8);
  v33 = v13;
  if (qword_93DEF8 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v9, qword_9A0418);
  (*(v10 + 16))(v12, v14, v9);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_768540();
  v34 = a2;
  sub_75A260();
  v15 = sub_7570A0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v8, 1, v15) == 1)
  {
    sub_10A2C(v8, &unk_93FD30);
    aBlock = 0u;
    v38 = 0u;
  }

  else
  {
    *(&v38 + 1) = v15;
    v17 = sub_B1B4(&aBlock);
    (*(v16 + 32))(v17, v8, v15);
  }

  sub_7685E0();
  sub_10A2C(&aBlock, &unk_93FBD0);
  sub_768E90();

  (*(v10 + 8))(v12, v9);
  v18 = v36;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = *&Strong[qword_942E58];
    if (v21)
    {

      v22 = swift_allocObject();
      v23 = v34;
      v24 = v32;
      v25 = v33;
      v22[2] = v35;
      v22[3] = v25;
      v22[4] = v24;
      v22[5] = v23;
      v22[6] = v18;
      v41 = 1;
      v31 = *(v21 + 32);
      v26 = swift_allocObject();
      v26[2] = v21;
      v26[3] = sub_B3254;
      v26[4] = v22;
      v26[5] = &v41;
      v27 = swift_allocObject();
      *(v27 + 16) = sub_B32A4;
      *(v27 + 24) = v26;
      v39 = sub_47164;
      v40 = v27;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v38 = sub_1EB578;
      *(&v38 + 1) = &unk_882EB0;
      v28 = _Block_copy(&aBlock);

      v29 = v24;
      v30 = v35;
      sub_B32C0(v25, v29);

      dispatch_sync(v31, v28);
      _Block_release(v28);
      LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

      if (v28)
      {
        __break(1u);
      }

      else
      {
        if ((v41 & 1) == 0)
        {
          sub_B137C(v30, v33, v32, v34, v18);
        }
      }
    }

    else
    {
    }
  }
}

uint64_t sub_B137C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_768380();
  v21 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_7683C0();
  v12 = *(v20 - 8);
  __chkstk_darwin(v20);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = a2;
  v23 = a3;
  v28 = a4;
  sub_758C10();
  sub_BE70(0, &qword_940340);
  v15 = sub_769970();
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a4;
  v26 = sub_B3364;
  v27 = v16;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_23F0CC;
  v25 = &unk_882F00;
  v17 = _Block_copy(&aBlock);

  sub_7683A0();
  aBlock = _swiftEmptyArrayStorage;
  sub_B3548(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_BD88(&qword_940350);
  sub_16194(&qword_9406F0, &qword_940350);
  sub_76A5A0();
  sub_769980();
  _Block_release(v17);

  (*(v21 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v20);
}

void sub_B16A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;

    sub_762510();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 collectionView];

    if (v4)
    {
      v5 = [v4 collectionViewLayout];

      [v5 invalidateLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_B17A8()
{
  v0 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_768FF0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DEF8 != -1)
  {
    swift_once();
  }

  v7 = sub_BE38(v3, qword_9A0418);
  (*(v4 + 16))(v6, v7, v3);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_768540();
  sub_75A260();
  v8 = sub_7570A0();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v2, 1, v8) == 1)
  {
    sub_10A2C(v2, &unk_93FD30);
    v12 = 0u;
    v13 = 0u;
  }

  else
  {
    *(&v13 + 1) = v8;
    v10 = sub_B1B4(&v12);
    (*(v9 + 32))(v10, v2, v8);
  }

  sub_7685E0();
  sub_10A2C(&v12, &unk_93FBD0);
  sub_768E90();

  return (*(v4 + 8))(v6, v3);
}

id sub_B1ACC(id result, uint64_t a2, uint64_t a3)
{
  if ((*(result + qword_99A4E8) & 1) == 0)
  {
    v4.receiver = result;
    v4.super_class = swift_getObjectType();
    return objc_msgSendSuper2(&v4, "scrollViewDidScroll:", a3);
  }

  return result;
}

uint64_t sub_B1B28()
{
  v0 = sub_AACD0();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_76A770();
      }

      else
      {
        if (v3 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_12;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      [v4 setHidden:1];

      ++v3;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

uint64_t sub_B1C18()
{
  v0 = sub_AACD0();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_76A770();
      }

      else
      {
        if (v3 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_12;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      [v4 setHidden:0];

      ++v3;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

uint64_t sub_B1D08(void *a1)
{
  v1 = a1;
  sub_B063C();

  return 1;
}

uint64_t type metadata accessor for ArticleDiffablePageViewController()
{
  result = qword_942EC0;
  if (!qword_942EC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_B1D84()
{
  sub_B1EE4(319, qword_942ED0, &type metadata accessor for PageGrid);
  if (v0 <= 0x3F)
  {
    sub_B1EE4(319, &qword_948530, &type metadata accessor for ImpressionMetrics);
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_B1EE4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_76A480();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_B1F40(int a1)
{
  v3 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - v4;
  v6 = sub_7656C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v1[qword_942E68];
  if (!v10)
  {
    return;
  }

  v11 = *&v1[qword_942E50];
  if (!v11)
  {
    return;
  }

  v12 = v11 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell;
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = qword_942E70;
  swift_beginAccess();
  sub_1ED18(&v1[v15], v5, &unk_955AA0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10A2C(v5, &unk_955AA0);
    return;
  }

  (*(v7 + 32))(v9, v5, v6);
  v37 = v1;
  v36 = a1;
  if (a1)
  {

    v13;
    v16 = [v1 traitCollection];
    v17 = sub_7699B0();
    type metadata accessor for ListTodayCardCollectionViewCell();
    if (swift_dynamicCastClass())
    {
      ObjectType = swift_getObjectType();
      v19 = (*(v14 + 160))(ObjectType, v14);

      if (v19 == 6)
      {
        v20 = 6;
LABEL_15:
        v25 = v37;
        v30 = (v17 & 1) == 0;
        goto LABEL_19;
      }
    }

    else
    {
    }

    v20 = 1;
    goto LABEL_15;
  }

  v21 = swift_getObjectType();
  v22 = *(v14 + 160);

  v23 = v13;
  v34 = v21;
  v35 = v23;
  v33 = v22;
  v24 = (v22)(v21, v14);
  v25 = v37;
  v26 = v24;
  if (v24 != 7)
  {
    goto LABEL_22;
  }

  v27 = [v37 traitCollection];
  v28 = sub_7699B0();
  type metadata accessor for ListTodayCardCollectionViewCell();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_17;
  }

  v29 = v33(v34, v14);

  if (v29 != 6)
  {
LABEL_17:
    v20 = 1;
    goto LABEL_18;
  }

  v20 = 6;
LABEL_18:
  v25 = v37;
  v30 = (v28 & 1) == 0;
LABEL_19:
  if (v30)
  {
    v26 = 5;
  }

  else
  {
    v26 = v20;
  }

LABEL_22:
  v31 = swift_getObjectType();
  (*(v14 + 296))(v10, v26, v9, *&v25[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph], v31, v14);
  if (v36)
  {
    sub_AF4F4();
  }

  [v13 layoutIfNeeded];
  v38 = v13;
  (*(*(v14 + 16) + 8))(v31);

  (*(v7 + 8))(v9, v6);
}

uint64_t sub_B2358()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_B23A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_B23BC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_7684B0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_99A4E0;
  *(v2 + v8) = [objc_allocWithZone(type metadata accessor for TodayArticleTransitioningDelegate()) init];
  *(v2 + qword_942E30) = 0;
  *(v2 + qword_942E38) = 0;
  *(v2 + qword_99A4E8) = 1;
  v9 = qword_99A4F0;
  sub_BD88(&qword_9434F0);
  swift_allocObject();
  *(v2 + v9) = sub_768480();
  *(v2 + qword_99A4F8) = 1;
  *(v2 + qword_99A500) = 0;
  v10 = qword_942E40;
  type metadata accessor for TodayCardOverlayReusePool();
  swift_allocObject();
  v11 = sub_4AB838(2);
  *(v2 + v10) = v11;
  v12 = (v2 + qword_99A508);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v2 + qword_99A510);
  *v13 = 0;
  v13[1] = 0;
  *(v2 + qword_99A518) = 0;
  *(v2 + qword_99A520) = 0;
  *(v2 + qword_99A528) = 0;
  *(v2 + qword_942E48) = 0;
  *(v2 + qword_942E50) = 0;
  *(v2 + qword_942E58) = 0;
  *(v2 + qword_942E60) = 0;
  *(v2 + qword_942E68) = 0;
  v14 = qword_942E70;
  v15 = sub_7656C0();
  (*(*(v15 - 8) + 56))(v2 + v14, 1, 1, v15);
  *(v2 + qword_942E78) = 0;
  *(v2 + qword_942E80) = 0;
  *(v2 + qword_942E88) = 0;
  *(v2 + qword_942E90) = 0;
  v16 = qword_99A530;
  v17 = sub_768AB0();
  (*(*(v17 - 8) + 56))(v2 + v16, 1, 1, v17);
  v20[1] = v11;

  sub_768490();
  v18 = sub_7688C0();
  (*(v5 + 8))(v7, v4);
  return sub_46B3E0(a1, v18);
}

char *sub_B26E8(uint64_t a1, uint64_t a2, char a3)
{
  objc_allocWithZone(type metadata accessor for ArticleDiffablePageViewController());

  v6 = sub_B23BC(a1);

  if (a3)
  {
    type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
    v7 = type metadata accessor for StoreNavigationController();
    v8 = objc_allocWithZone(v7);
    *&v8[OBJC_IVAR____TtC18ASMessagesProvider25StoreNavigationController_objectGraph] = a2;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16.receiver = v8;
    v16.super_class = v7;

    v10 = objc_msgSendSuper2(&v16, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
    [v10 setDelegate:{v10, v16.receiver, v16.super_class}];
    sub_BD88(&unk_93F5C0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_77D9F0;
    *(v11 + 32) = v6;
    sub_BE70(0, &qword_9434E0);
    v12 = v6;
    isa = sub_769450().super.isa;

    [v10 setViewControllers:isa];

    v6 = sub_150700(v10, v12);
    [v6 setModalPresentationStyle:4];
    [v6 setTransitioningDelegate:*&v12[qword_99A4E0]];
    [v6 setModalPresentationCapturesStatusBarAppearance:1];
  }

  else
  {
    v14 = v6[qword_99A4E8];
    v6[qword_99A4E8] = 0;
    sub_A9864(v14);
    sub_A923C(0, 0);
  }

  return v6;
}

uint64_t sub_B2904()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_B296C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_B2A04(uint64_t a1, uint64_t a2)
{
  if (!a1 || (v4 = sub_765B60()) == 0 || (v19[0] = v4, sub_75C250(), sub_BD88(&unk_9435C0), (swift_dynamicCast() & 1) == 0))
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
  }

  if (!a2 || (v5 = sub_765B60()) == 0 || (*&v17[0] = v5, sub_75C250(), sub_BD88(&unk_9435C0), (swift_dynamicCast() & 1) == 0))
  {
    memset(v19, 0, 40);
  }

  if (!a1 || (*&v15[0] = sub_765B20(), sub_75B090(), sub_BD88(&qword_9435B8), (swift_dynamicCast() & 1) == 0))
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
  }

  if (!a2 || (v13[0] = sub_765B20(), sub_75B090(), sub_BD88(&qword_9435B8), (swift_dynamicCast() & 1) == 0))
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
  }

  sub_1ED18(v20, v13, &qword_9435A8);
  if (v14)
  {
    sub_B170(v13, v14);
    v6 = sub_762450();
    sub_BEB8(v13);
  }

  else
  {
    sub_10A2C(v13, &qword_9435A8);
    v6 = 0;
  }

  sub_1ED18(v19, v13, &qword_9435A8);
  if (v14)
  {
    sub_B170(v13, v14);
    v7 = sub_762450();
    sub_BEB8(v13);
    if (v6)
    {
      if (v7)
      {
        v8 = sub_11777C(v6, v7);

LABEL_26:

        goto LABEL_28;
      }

LABEL_23:
      v8 = 0;
      goto LABEL_26;
    }

    if (v7)
    {
      v8 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    sub_10A2C(v13, &qword_9435A8);
    if (v6)
    {
      goto LABEL_23;
    }
  }

  v8 = 1;
LABEL_28:
  sub_1ED18(v17, v13, &qword_9435B0);
  if (v14)
  {
    sub_B170(v13, v14);
    v9 = sub_7615E0();
    sub_BEB8(v13);
  }

  else
  {
    sub_10A2C(v13, &qword_9435B0);
    v9 = 0;
  }

  sub_1ED18(v15, v13, &qword_9435B0);
  if (v14)
  {
    sub_B170(v13, v14);
    v10 = sub_7615E0();
    sub_BEB8(v13);
    if (v9)
    {
      if (v10)
      {
        v11 = sub_11777C(v9, v10);

LABEL_39:

        goto LABEL_41;
      }

LABEL_36:
      v11 = 0;
      goto LABEL_39;
    }

    if (v10)
    {
      v11 = 0;
      goto LABEL_39;
    }
  }

  else
  {
    sub_10A2C(v13, &qword_9435B0);
    if (v9)
    {
      goto LABEL_36;
    }
  }

  v11 = 1;
LABEL_41:
  sub_1ED18(v20, v13, &qword_9435A8);
  if (v14)
  {
    sub_B170(v13, v14);
    sub_762450();
    sub_BEB8(v13);

    if (v8)
    {
      v11 = 1;
      goto LABEL_48;
    }
  }

  else
  {
    sub_10A2C(v13, &qword_9435A8);
  }

  sub_1ED18(v17, v13, &qword_9435B0);
  if (v14)
  {
    sub_B170(v13, v14);
    sub_7615E0();
    sub_BEB8(v13);
  }

  else
  {
    sub_10A2C(v13, &qword_9435B0);
    v11 = 0;
  }

LABEL_48:
  sub_10A2C(v15, &qword_9435B0);
  sub_10A2C(v17, &qword_9435B0);
  sub_10A2C(v19, &qword_9435A8);
  sub_10A2C(v20, &qword_9435A8);
  return v11 & 1;
}

unint64_t sub_B2FA8()
{
  result = qword_943520;
  if (!qword_943520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_943520);
  }

  return result;
}

unint64_t sub_B3050()
{
  result = qword_943538;
  if (!qword_943538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_943538);
  }

  return result;
}

unint64_t sub_B30A4()
{
  result = qword_943540;
  if (!qword_943540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_943540);
  }

  return result;
}

uint64_t sub_B3148()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_B31A4()
{

  v1 = *(v0 + 24);
  if ((~v1 & 0xF000000000000007) != 0)
  {
    sub_B3204(v1, *(v0 + 32));
  }

  return _swift_deallocObject(v0, 56, 7);
}

void sub_B3204(uint64_t a1, void *a2)
{
  if (a1 < 0)
  {
  }

  else
  {
  }
}

uint64_t sub_B3264()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_B32C0(uint64_t a1, void *a2)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
    return sub_B32D4(a1, a2);
  }

  return a1;
}

id sub_B32D4(uint64_t a1, void *a2)
{
  if (a1 < 0)
  {

    return a2;
  }

  else
  {
  }
}

uint64_t sub_B3324()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_B336C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_B33C8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_BD88(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_B348C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_B34F0()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_B3548(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for CappedSizeRoundedTitledButton()
{
  result = qword_943600;
  if (!qword_943600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_B3688(void *a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_76A920();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.receiver = a1;
  v15.super_class = ObjectType;
  v11 = a1;
  objc_msgSendSuper2(&v15, "sizeThatFits:", a2, a3);
  v13 = v12;
  sub_B170(&v11[qword_9435F0], *&v11[qword_9435F0 + 24]);
  sub_33964();
  sub_766700();

  (*(v8 + 8))(v10, v7);
  return v13;
}

void sub_B37F0(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "layoutSubviews");
  [v1 bounds];
  [v1 _setCornerRadius:CGRectGetHeight(v3) * 0.5];
}

char *sub_B386C(char *result)
{
  v1 = *&result[qword_9435F8];
  if (v1)
  {
    v2 = result;
    v3 = sub_F714(v1);
    v1(v3);

    return sub_F704(v1);
  }

  return result;
}

id sub_B38F0(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v9, "measurementsWithFitting:in:", a5, a2, a3);
}

uint64_t sub_B3988()
{
  sub_BEB8(v0 + qword_9435F0);
  v1 = *(v0 + qword_9435F8);

  return sub_F704(v1);
}

uint64_t sub_B39CC(uint64_t a1)
{
  sub_BEB8(a1 + qword_9435F0);
  v2 = *(a1 + qword_9435F8);

  return sub_F704(v2);
}

void sub_B3A24()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *&Strong[OBJC_IVAR____TtC18ASMessagesProvider33PresentationContextViewController_dismissOverride];
    if (v2)
    {

      v2(v3);

      sub_F704(v2);
    }

    else
    {
      v4 = [Strong presentingViewController];
      if (v4)
      {
        v5 = v4;
        [v4 dismissViewControllerAnimated:0 completion:0];
      }
    }
  }
}

uint64_t sub_B3AF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  if (a4)
  {
    v9 = sub_769460();
  }

  else
  {
    v9 = 0;
  }

  v10 = a2;
  v11 = a5;
  v8(a2, a3, v9, a5);
}

void sub_B3C30()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for PresentationContextViewController();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor:v3];

    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      [v4 setUserInteractionEnabled:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_B3DE8(char a1)
{
  v35.receiver = v1;
  v35.super_class = type metadata accessor for PresentationContextViewController();
  objc_msgSendSuper2(&v35, "viewDidAppear:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33PresentationContextViewController_contextViewController];
  if (v3)
  {
    v4 = OBJC_IVAR____TtC18ASMessagesProvider33PresentationContextViewController_hasPresentedViewController;
    if ((v1[OBJC_IVAR____TtC18ASMessagesProvider33PresentationContextViewController_hasPresentedViewController] & 1) == 0)
    {
      v5 = v3;
      v6 = [v5 popoverPresentationController];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 sourceView];
        if (v8)
        {
          v9 = v8;
          v10 = [v8 window];
          if (v10)
          {
            v11 = v10;
            v12 = [v9 superview];
            if (v12)
            {
              v13 = v12;
              [v9 frame];
              [v13 convertRect:v11 toCoordinateSpace:?];
              v15 = v14;
              v17 = v16;
              v19 = v18;
              v21 = v20;
            }

            else
            {
              v15 = 0.0;
              v17 = 0.0;
              v19 = 0.0;
              v21 = 0.0;
            }

            v22 = [v1 view];
            [v7 setSourceView:v22];

            [v7 sourceRect];
            v24 = v23;
            v26 = v25;
            v28 = v27;
            v30 = v29;
            v36.origin.x = v15;
            v36.origin.y = v17;
            v36.size.width = v19;
            v36.size.height = v21;
            MinX = CGRectGetMinX(v36);
            v32 = v15;
            v33 = MinX;
            v37.origin.x = v32;
            v37.origin.y = v17;
            v37.size.width = v19;
            v37.size.height = v21;
            MinY = CGRectGetMinY(v37);
            v38.origin.x = v24;
            v38.origin.y = v26;
            v38.size.width = v28;
            v38.size.height = v30;
            v39 = CGRectOffset(v38, v33, MinY);
            [v7 setSourceRect:{v39.origin.x, v39.origin.y, v39.size.width, v39.size.height}];

            v7 = v9;
          }

          else
          {
            v11 = v9;
          }

          v7 = v11;
        }
      }

      [v1 presentViewController:v5 animated:v1[OBJC_IVAR____TtC18ASMessagesProvider33PresentationContextViewController_animatedContext] completion:0];

      v1[v4] = 1;
    }
  }
}

void sub_B409C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider33PresentationContextViewController_contextViewController];
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider33PresentationContextViewController_contextViewController] = 0;

  v3[OBJC_IVAR____TtC18ASMessagesProvider33PresentationContextViewController_hasPresentedViewController] = 0;
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = v3;
  aBlock[4] = sub_B4520;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_8830B8;
  v9 = _Block_copy(aBlock);
  sub_F714(a2);
  v10 = v3;

  v11.receiver = v10;
  v11.super_class = type metadata accessor for PresentationContextViewController();
  objc_msgSendSuper2(&v11, "dismissViewControllerWithTransition:completion:", a1, v9);
  _Block_release(v9);
}

void sub_B41C4(void (*a1)(uint64_t), int a2, char *a3)
{
  if (a1)
  {

    a1(v5);
    sub_F704(a1);
  }

  v6 = [a3 presentedViewController];
  if (v6)
  {
LABEL_4:

    return;
  }

  if (a3[OBJC_IVAR____TtC18ASMessagesProvider33PresentationContextViewController_isPresentingActivityViewController])
  {
    return;
  }

  v7 = *&a3[OBJC_IVAR____TtC18ASMessagesProvider33PresentationContextViewController_dismissOverride];
  if (!v7)
  {
    v9 = [a3 presentingViewController];
    if (!v9)
    {
      return;
    }

    v10 = v9;
    [v9 dismissViewControllerAnimated:0 completion:0];
    v6 = v10;
    goto LABEL_4;
  }

  v7(v8);

  sub_F704(v7);
}

id sub_B43E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PresentationContextViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_B4490()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_B44D8()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_B452C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_B4544(void *a1, char a2)
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider33PresentationContextViewController_contextViewController;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider33PresentationContextViewController_contextViewController] = 0;
  v2[OBJC_IVAR____TtC18ASMessagesProvider33PresentationContextViewController_hasPresentedViewController] = 0;
  v5 = &v2[OBJC_IVAR____TtC18ASMessagesProvider33PresentationContextViewController_dismissOverride];
  *v5 = 0;
  v5[1] = 0;
  *&v2[v4] = a1;
  v2[OBJC_IVAR____TtC18ASMessagesProvider33PresentationContextViewController_animatedContext] = a2;
  type metadata accessor for ActivityViewController();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = a1;
  }

  v2[OBJC_IVAR____TtC18ASMessagesProvider33PresentationContextViewController_isPresentingActivityViewController] = v6 != 0;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for PresentationContextViewController();
  v8 = a1;
  v9 = objc_msgSendSuper2(&v15, "initWithNibName:bundle:", 0, 0);
  if (v6)
  {
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14[4] = sub_B4728;
    v14[5] = v10;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_B3AF0;
    v14[3] = &unk_883108;
    v11 = _Block_copy(v14);
    v12 = v6;

    [v12 setCompletionWithItemsHandler:v11];
    _Block_release(v11);
  }

  [v9 setModalPresentationStyle:5];

  return v9;
}

uint64_t sub_B46F0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_B4738()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = &type metadata for Double;
  v40 = &protocol witness table for Double;
  *&v38 = 0x4044000000000000;
  if (qword_93D630 != -1)
  {
    swift_once();
  }

  v4 = sub_7666D0();
  v5 = sub_BE38(v4, qword_99EA88);
  v6 = *(v4 - 8);
  v25 = *(v6 + 16);
  v26 = v6 + 16;
  v21 = v5;
  v22 = v4;
  v25(v3, v5, v4);
  v7 = enum case for FontSource.useCase(_:);
  v24 = v1[13];
  v20 = enum case for FontSource.useCase(_:);
  v24(v3, enum case for FontSource.useCase(_:), v0);
  v27 = sub_766CA0();
  v36 = v27;
  v37 = &protocol witness table for StaticDimension;
  sub_B1B4(&v35);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v8 = sub_B1B4(&v32);
  v23 = v1[2];
  v23(v8, v3, v0);
  sub_766CB0();
  v19 = v1[1];
  v19(v3, v0);
  v9 = v4;
  v10 = v25;
  v25(v3, v5, v9);
  v11 = v7;
  v12 = v24;
  v24(v3, v11, v0);
  v33 = v27;
  v34 = &protocol witness table for StaticDimension;
  sub_B1B4(&v32);
  v30 = v0;
  v31 = &protocol witness table for FontSource;
  v13 = sub_B1B4(v29);
  v14 = v23;
  v23(v13, v3, v0);
  sub_766CB0();
  v15 = v19;
  v19(v3, v0);
  v10(v3, v21, v22);
  v12(v3, v20, v0);
  v30 = v27;
  v31 = &protocol witness table for StaticDimension;
  sub_B1B4(v29);
  v28[3] = v0;
  v28[4] = &protocol witness table for FontSource;
  v16 = sub_B1B4(v28);
  v14(v16, v3, v0);
  sub_766CB0();
  v15(v3, v0);
  unk_943728 = 0u;
  qword_943738 = 0;
  xmmword_943718 = 0u;
  sub_34698(&v38, &unk_9436A0);
  sub_34698(&v35, &unk_9436C8);
  sub_34698(&v32, &unk_9436F0);
  return sub_33BF8(v29, &xmmword_943718);
}

char *sub_B4B48(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for DividerView.Style(0);
  __chkstk_darwin(v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_7666D0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_label;
  if (qword_93D630 != -1)
  {
    swift_once();
  }

  v19 = sub_BE38(v14, qword_99EA88);
  (*(v15 + 16))(v17, v19, v14);
  v20 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  *&v5[v18] = sub_4ECF40(v17, 0, 0);
  v21 = OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_topDivider;
  v22 = type metadata accessor for DividerView(0);
  *&v5[v21] = [objc_allocWithZone(v22) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v23 = OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_bottomDivider;
  *&v5[v23] = [objc_allocWithZone(v22) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v45.receiver = v5;
  v45.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v45, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v28 = v24;
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v29 = OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_topDivider;
  v30 = qword_93D2D8;
  v31 = *&v28[OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_topDivider];
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = sub_BE38(v11, qword_99E220);
  sub_395C4(v32, v13);
  v33 = &v31[OBJC_IVAR____TtC18ASMessagesProvider11DividerView_style];
  swift_beginAccess();
  sub_39628(v13, v33);
  swift_endAccess();
  v34 = &v31[OBJC_IVAR____TtC18ASMessagesProvider11DividerView_separatorInset];
  v35 = *(v33 + 1);
  *v34 = *v33;
  *(v34 + 1) = v35;
  [v31 setNeedsLayout];
  [v31 setNeedsLayout];

  sub_3968C(v13);
  v36 = OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_bottomDivider;
  v37 = *&v28[OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_bottomDivider];
  sub_395C4(v32, v13);
  v38 = &v37[OBJC_IVAR____TtC18ASMessagesProvider11DividerView_style];
  swift_beginAccess();
  v39 = v37;
  sub_39628(v13, v38);
  swift_endAccess();
  v40 = &v39[OBJC_IVAR____TtC18ASMessagesProvider11DividerView_separatorInset];
  v41 = *(v38 + 1);
  *v40 = *v38;
  *(v40 + 1) = v41;
  [v39 setNeedsLayout];
  [v39 setNeedsLayout];

  sub_3968C(v13);
  v42 = OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_label;
  [*&v28[OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_label] setTextAlignment:1];
  [v28 addSubview:*&v28[v29]];
  [v28 addSubview:*&v28[v36]];
  [v28 addSubview:*&v28[v42]];

  return v28;
}

uint64_t sub_B4FC0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v20 = sub_7664F0();
  v3 = *(v20 - 8);
  *&v4 = __chkstk_darwin(v20).n128_u64[0];
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v1;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "layoutSubviews", v4);
  if (qword_93C300 != -1)
  {
    swift_once();
  }

  sub_309E0(&unk_9436A0, v21);
  v7 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_topDivider];
  v8 = type metadata accessor for DividerView(0);
  v21[23] = v8;
  v21[24] = &protocol witness table for UIView;
  v21[20] = v7;
  v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_label];
  v21[28] = type metadata accessor for DynamicTypeLinkedLabel();
  v21[29] = &protocol witness table for UILabel;
  v21[25] = v9;
  v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_bottomDivider];
  v21[33] = v8;
  v21[34] = &protocol witness table for UIView;
  v21[30] = v10;
  v11 = v7;
  v12 = v9;
  v13 = v10;
  sub_75D650();
  LinkableHeaderViewLayout.placeChildren(relativeTo:in:)(v14, v15, v16, v17);
  (*(v3 + 8))(v6, v20);
  return sub_30A3C(v21);
}