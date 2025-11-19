uint64_t sub_1000E20D4(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003AFCE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E213C()
{
  v1 = *(sub_100005AD4(&qword_1003AFCE0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 40) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;

  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v4, 1, v6))
  {
    (*(v7 + 8))(v0 + v4, v6);
  }

  if (!v8(v0 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v5, v6);
  }

  return _swift_deallocObject(v0, v5 + v3, v2 | 7);
}

uint64_t sub_1000E22B8()
{
  v1 = *(sub_100005AD4(&qword_1003AFCE0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0 + ((*(v1 + 64) + v2 + v3) & ~v2);

  return sub_1000E13E8(v4, v5, v6, v0 + v3, v7);
}

uint64_t sub_1000E2358(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000E2370()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000E23D8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000E242C()
{

  return _swift_deallocObject(v0, 24, 7);
}

_BYTE *sub_1000E2484()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController____lazy_storage___cardCell;
  v2 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController____lazy_storage___cardCell];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController____lazy_storage___cardCell];
  }

  else
  {
    v4 = sub_1000E24E8(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

_BYTE *sub_1000E24E8(void *a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for CardCollectionViewCell()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = v2[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_isExpanded];
  v2[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_isExpanded] = 1;
  if ((v3 & 1) == 0)
  {
    sub_100032D44();
  }

  v4 = sub_100032204();
  v13[3] = type metadata accessor for DictionaryWordSelectionController();
  v13[4] = &off_100383870;
  v13[0] = a1;
  v5 = OBJC_IVAR____TtC17SequoiaTranslator8CardView_delegate;
  swift_beginAccess();
  v6 = a1;
  sub_10003BD84(v13, v4 + v5, &unk_1003AB7B0);
  swift_endAccess();

  v7 = *&v2[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell____lazy_storage___cardView];
  v8 = OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_enableSelectable;
  v7[OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_enableSelectable] = 0;
  v9 = v7;
  v10 = sub_100293D50();
  [v10 setSelectable:v7[v8]];

  v11 = sub_1002942C8();
  [v11 setSelectable:v7[v8]];

  return v2;
}

id sub_1000E263C()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController____lazy_storage___scrollView;
  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController____lazy_storage___scrollView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController____lazy_storage___scrollView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIScrollView) init];
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 clearColor];
    [v6 setBackgroundColor:v7];

    [v6 _setContentInsetAdjustmentBehavior:2];
    [v6 setContentSize:{*(v0 + OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_originalCardFrame + 16), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_originalCardFrame + 24) + *(v0 + OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_scrollViewAdditionalContentHeight)}];
    v8 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1000E2748(double a1)
{
  v3 = &v1[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_originalCardFrame];
  *v3 = 0u;
  v3[1] = 0u;
  v4 = &v1[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_originalVisibleScrollRect];
  *v4 = 0u;
  v4[1] = 0u;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController____lazy_storage___cardCell] = 0;
  v5 = &v1[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_translationAlternativeSelectedHandler];
  *v5 = 0;
  v5[1] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_dictionaryController] = 0;
  v6 = &v1[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_initialTouchPointInTargetView];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v1[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_initiallySetHighlightToFirstWord] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_translation] = 0;
  v7 = &v1[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_word];
  *v7 = 0;
  v7[1] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_scrollViewAdditionalContentHeight] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController____lazy_storage___scrollView] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_backgroundView] = 0;
  v8 = OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_cardBackgroundView;
  v9 = [objc_allocWithZone(UIView) init];
  v10 = [objc_opt_self() secondarySystemBackgroundColor];
  [v9 setBackgroundColor:v10];

  *&v1[v8] = v9;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_highlightedView] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_cardBackgroundHeight] = a1;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for DictionaryWordSelectionController();
  return objc_msgSendSuper2(&v12, "initWithNibName:bundle:", 0, 0);
}

void sub_1000E299C(char a1)
{
  v2 = v1;
  v25.receiver = v2;
  v25.super_class = type metadata accessor for DictionaryWordSelectionController();
  objc_msgSendSuper2(&v25, "viewDidAppear:", a1 & 1);
  v4 = &v2[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_initialTouchPointInTargetView];
  if ((v2[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_initialTouchPointInTargetView + 16] & 1) == 0)
  {
    sub_1000E44EC(*v4, v4[1]);
    *v4 = 0.0;
    v4[1] = 0.0;
    *(v4 + 16) = 1;
  }

  if (v2[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_initiallySetHighlightToFirstWord] == 1)
  {
    v5 = OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_highlightedView;
    v6 = *&v2[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_highlightedView];
    if (v6)
    {
      v7 = v6;
      HighlightTextView.removeHighlights()();
    }

    v8 = sub_1000E2484();
    v9 = sub_100032204();

    v10 = sub_1002942C8();
    HighlightTextView.setHighlightToFirstWord()();

    v11 = *&v2[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController____lazy_storage___cardCell];
    v12 = sub_100032204();

    v13 = sub_1002942C8();
    v14 = *&v2[v5];
    *&v2[v5] = v13;
    v15 = v13;

    [v15 frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v24 = sub_1000E263C();
    [v24 scrollRectToVisible:0 animated:{v17, v19, v21, v23}];
  }

  sub_1000E2B88();
}

void sub_1000E2B88()
{
  v1 = v0;
  v2 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v2 - 8);
  v4 = &aBlock[-1] - v3;
  type metadata accessor for DictionaryViewController();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_dictionaryController;
  v7 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_dictionaryController];
  *&v0[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_dictionaryController] = v5;

  v8 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_translation];
  if (v8)
  {
    v9 = *&v1[v6];
    if (v9)
    {
      v10 = v9;
      v11 = v8;
      dispatch thunk of PersistedTranslation.sourceLocale.getter();
      v12 = type metadata accessor for Locale();
      v13 = *(*(v12 - 8) + 56);
      v13(v4, 0, 1, v12);
      v14 = OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_sourceLocale;
      swift_beginAccess();
      sub_10003BD84(v4, &v10[v14], &qword_1003AFCE0);
      swift_endAccess();
      dispatch thunk of PersistedTranslation.targetLocale.getter();
      v13(v4, 0, 1, v12);
      v15 = OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_targetLocale;
      swift_beginAccess();
      sub_10003BD84(v4, &v10[v15], &qword_1003AFCE0);
      swift_endAccess();
      v16 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_word + 8];
      v17 = &v10[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_text];
      *v17 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_word];
      *(v17 + 1) = v16;

      sub_1000E0A1C();
      *&v10[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_delegate + 8] = &off_100383860;
      swift_unknownObjectWeakAssign();
      v18 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v10];
      [v18 setModalPresentationStyle:7];
      v19 = [v18 presentationController];
      if (v19)
      {
        v20 = v19;
        [v19 setDelegate:v1];
      }

      v21 = [v18 popoverPresentationController];
      if (v21)
      {
        v22 = v21;
        [v21 setSourceView:*&v1[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_highlightedView]];
      }

      v23 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_highlightedView];
      if (v23)
      {
        v24 = v23;
        HighlightTextView.currentHightlightFrame()(v53);

        if ((v54 & 1) == 0)
        {
          v26 = *&v53[2];
          v25 = *&v53[3];
          v28 = *v53;
          v27 = *&v53[1];
          v29 = [v18 popoverPresentationController];
          [v29 setSourceRect:{v28, v27, v26, v25}];
        }
      }

      v30 = [v18 popoverPresentationController];
      if (v30)
      {
        v31 = v30;
        [v30 setPermittedArrowDirections:1];
      }

      v32 = [v18 popoverPresentationController];
      if (v32)
      {
        v33 = v32;
        sub_100005AD4(&unk_1003AFCC0);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_1002D95A0;
        v35 = sub_1000E2484();
        v36 = sub_100032204();

        *(v34 + 32) = v36;
        sub_10000A2CC(0, &qword_1003AFCF0);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v33 setPassthroughViews:isa];
      }

      v38 = [v18 popoverPresentationController];
      if (v38)
      {
        v39 = v38;
        [v38 setCanOverlapSourceViewRect:0];
      }

      v40 = [v18 popoverPresentationController];

      if (v40)
      {
        v41 = [v40 adaptiveSheetPresentationController];

        if (v41)
        {
          v42 = objc_opt_self();
          v43 = String._bridgeToObjectiveC()();
          v44 = swift_allocObject();
          swift_unknownObjectUnownedInit();
          aBlock[4] = sub_1000E4AF8;
          aBlock[5] = v44;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1000E3434;
          aBlock[3] = &unk_100383960;
          v45 = _Block_copy(aBlock);

          v46 = [v42 _detentWithIdentifier:v43 resolutionContextBlock:v45];
          _Block_release(v45);

          [v41 setDelegate:v1];
          [v41 _setShouldDismissWhenTappedOutside:0];
          sub_100005AD4(&unk_1003AFCC0);
          v47 = swift_allocObject();
          *(v47 + 16) = xmmword_1002D5560;
          *(v47 + 32) = v46;
          v48 = v46;
          *(v47 + 40) = [v42 largeDetent];
          sub_10000A2CC(0, &qword_1003AFCE8);
          v49 = Array._bridgeToObjectiveC()().super.isa;

          [v41 setDetents:v49];

          v50 = [v48 _identifier];
          [v41 setLargestUndimmedDetentIdentifier:v50];

          [v41 setPrefersGrabberVisible:1];
        }
      }

      [v1 presentViewController:v18 animated:1 completion:0];
    }
  }
}

double sub_1000E3280()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = sub_1000E2484();
  v2 = sub_100032204();

  v3 = *&v2[OBJC_IVAR____TtC17SequoiaTranslator8CardView_actions];
  [v3 setHidden:1];

  v4 = [objc_opt_self() mainScreen];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v33.origin.x = v6;
  v33.origin.y = v8;
  v33.size.width = v10;
  v33.size.height = v12;
  Height = CGRectGetHeight(v33);
  v14 = swift_unknownObjectUnownedLoadStrong();
  v15 = *&v14[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_originalCardFrame];
  v16 = *&v14[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_originalCardFrame + 8];
  v17 = *&v14[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_originalCardFrame + 16];
  v18 = *&v14[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_originalCardFrame + 24];

  v34.origin.x = v15;
  v34.origin.y = v16;
  v34.size.width = v17;
  v34.size.height = v18;
  MaxY = CGRectGetMaxY(v34);
  v20 = swift_unknownObjectUnownedLoadStrong();
  v21 = sub_1000E2484();
  v22 = sub_100032204();

  v23 = *&v22[OBJC_IVAR____TtC17SequoiaTranslator8CardView_actions];
  [v23 frame];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v35.origin.x = v25;
  v35.origin.y = v27;
  v35.size.width = v29;
  v35.size.height = v31;
  return Height - (MaxY - CGRectGetHeight(v35));
}

double sub_1000E3434(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v3 = v1(v2);

  swift_unknownObjectRelease();
  return v3;
}

id sub_1000E3498()
{
  v1 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_backgroundView];
  if (v1)
  {
    v2 = v1;
    result = [v0 view];
    if (!result)
    {
LABEL_11:
      __break(1u);
      return result;
    }

    v4 = result;
    [result addSubview:v2];
  }

  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  [result addSubview:*&v0[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_cardBackgroundView]];

  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  v7 = v0;
  v8 = sub_1000E263C();
  [v6 addSubview:v8];

  v9 = *&v7[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController____lazy_storage___scrollView];
  v10 = sub_1000E2484();
  v11 = sub_100032204();

  [v9 addSubview:v11];
  sub_100005AD4(&qword_1003AFCD0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1002D3160;
  *(v12 + 32) = type metadata accessor for UITraitUserInterfaceIdiom();
  *(v12 + 40) = &protocol witness table for UITraitUserInterfaceIdiom;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005AD4(&qword_1003AFCD8);
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();
}

void sub_1000E369C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong presentedViewController];

    if (v6)
    {
      aBlock[4] = sub_1000E4AB8;
      aBlock[5] = a3;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100096948;
      aBlock[3] = &unk_100383910;
      v7 = _Block_copy(aBlock);

      [v6 dismissViewControllerAnimated:1 completion:v7];
      _Block_release(v7);
    }
  }
}

void sub_1000E37AC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:0 completion:0];
  }
}

void sub_1000E3810()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_backgroundView];
  if (v2)
  {
    v3 = v2;
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v4 = [v0 view];
    if (!v4)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v5 = v4;
    sub_1002C31A4(v3);
  }

  v6 = OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_cardBackgroundView;
  [*(v1 + OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_cardBackgroundView) setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = sub_1000E263C();
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = sub_1000E2484();
  v9 = sub_100032204();

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController____lazy_storage___cardCell;
  v11 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController____lazy_storage___cardCell);
  v12 = sub_100032204();

  v13 = [v12 layer];
  [v13 setCornerRadius:10.0];

  v14 = [*(v1 + v6) layer];
  [v14 setCornerRadius:10.0];

  v15 = [v1 view];
  if (!v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v15;
  [v15 convertRect:0 fromView:{*(v1 + OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_originalCardFrame), *(v1 + OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_originalCardFrame + 8), *(v1 + OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_originalCardFrame + 16), *(v1 + OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_originalCardFrame + 24)}];
  v18 = v17;
  v20 = v19;

  v21 = [v1 view];
  if (!v21)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v22 = v21;
  v78 = v6;
  [v21 convertRect:0 fromView:{*(v1 + OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_originalVisibleScrollRect), *(v1 + OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_originalVisibleScrollRect + 8), *(v1 + OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_originalVisibleScrollRect + 16), *(v1 + OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_originalVisibleScrollRect + 24)}];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  sub_100005AD4(&unk_1003AFCC0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1002DC2D0;
  v32 = OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController____lazy_storage___scrollView;
  v33 = [*(v1 + OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController____lazy_storage___scrollView) topAnchor];
  v34 = [v1 view];
  if (!v34)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v35 = v34;
  v36 = [v34 topAnchor];

  v81.origin.x = v24;
  v81.origin.y = v26;
  v81.size.width = v28;
  v81.size.height = v30;
  v37 = [v33 constraintEqualToAnchor:v36 constant:CGRectGetMinY(v81)];

  *(v31 + 32) = v37;
  v38 = [*(v1 + v32) heightAnchor];
  v82.origin.x = v24;
  v82.origin.y = v26;
  v82.size.width = v28;
  v82.size.height = v30;
  v39 = [v38 constraintEqualToConstant:CGRectGetHeight(v82)];

  *(v31 + 40) = v39;
  v40 = [*(v1 + v32) leadingAnchor];
  v41 = [v1 view];
  if (!v41)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v42 = v41;
  v43 = [v41 leadingAnchor];

  v83.origin.x = v24;
  v83.origin.y = v26;
  v83.size.width = v28;
  v83.size.height = v30;
  v44 = [v40 constraintEqualToAnchor:v43 constant:CGRectGetMinX(v83)];

  *(v31 + 48) = v44;
  v45 = [*(v1 + v32) widthAnchor];
  v84.origin.x = v24;
  v84.origin.y = v26;
  v84.size.width = v28;
  v84.size.height = v30;
  v46 = [v45 constraintEqualToConstant:CGRectGetWidth(v84)];

  *(v31 + 56) = v46;
  v47 = *(v1 + v10);
  v48 = sub_100032204();

  v49 = [v48 topAnchor];
  v50 = [*(v1 + v32) topAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  *(v31 + 64) = v51;
  v52 = *(v1 + v10);
  v53 = sub_100032204();

  v54 = [v53 heightAnchor];
  v55 = [v54 constraintEqualToConstant:v20];

  *(v31 + 72) = v55;
  v56 = *(v1 + v10);
  v57 = sub_100032204();

  v58 = [v57 centerXAnchor];
  v59 = [*(v1 + v32) centerXAnchor];
  v60 = [v58 constraintEqualToAnchor:v59];

  *(v31 + 80) = v60;
  v61 = *(v1 + v10);
  v62 = sub_100032204();

  v63 = [v62 widthAnchor];
  v64 = [v63 constraintEqualToConstant:v18];

  *(v31 + 88) = v64;
  v65 = [*&v78[v1] topAnchor];
  v66 = [v1 view];
  if (!v66)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v67 = v66;
  v68 = objc_opt_self();
  v69 = [v67 topAnchor];

  v85.origin.x = v24;
  v85.origin.y = v26;
  v85.size.width = v28;
  v85.size.height = v30;
  v70 = [v65 constraintEqualToAnchor:v69 constant:CGRectGetMinY(v85)];

  *(v31 + 96) = v70;
  v71 = [*&v78[v1] heightAnchor];
  v72 = [v71 constraintEqualToConstant:*(v1 + OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_cardBackgroundHeight)];

  *(v31 + 104) = v72;
  v73 = [*&v78[v1] centerXAnchor];
  v74 = [*(v1 + v32) centerXAnchor];
  v75 = [v73 constraintEqualToAnchor:v74];

  *(v31 + 112) = v75;
  v76 = [*&v78[v1] widthAnchor];
  v77 = [v76 constraintEqualToConstant:v18];

  *(v31 + 120) = v77;
  sub_10000A2CC(0, &qword_1003B3480);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v68 activateConstraints:isa];
}

void sub_1000E3FF0(uint64_t a1, double a2, double a3)
{
  v13.receiver = v3;
  v13.super_class = type metadata accessor for DictionaryWordSelectionController();
  objc_msgSendSuper2(&v13, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = [v3 presentedViewController];
  if (v7)
  {
    v8 = v7;
    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    v12[4] = sub_1000E4D2C;
    v12[5] = v9;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_100096948;
    v12[3] = &unk_1003839B0;
    v10 = _Block_copy(v12);
    v11 = v3;

    [v8 dismissViewControllerAnimated:1 completion:v10];
    _Block_release(v10);
  }
}

void sub_1000E41A4(void *a1)
{
  v2 = v1;
  v4 = [a1 view];
  if (v4)
  {
    v40 = v4;
    type metadata accessor for HighlightTextView();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      [a1 locationInView:v5];
      v8 = v7;
      v10 = v9;
      HighlightTextView.getWordAtPoint(_:)(v7, v9);
      if (v11)
      {

        v12 = OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_highlightedView;
        v13 = *&v2[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_highlightedView];
        if (v13)
        {
          v14 = v13;
          HighlightTextView.removeHighlights()();
        }

        HighlightTextView.setHighlightToWord(at:)(v8, v10);
        v15 = *&v2[v12];
        *&v2[v12] = v6;
        v16 = v40;

        v17 = [v2 presentedViewController];
        if (v17)
        {
          v18 = v17;
          v19 = [v17 popoverPresentationController];

          if (v19)
          {
            [v19 setSourceView:*&v2[v12]];
          }
        }

        v20 = *&v2[v12];
        if (v20)
        {
          v21 = v20;
          HighlightTextView.currentHightlightFrame()(v41);

          if ((v42 & 1) == 0)
          {
            v23 = *&v41[2];
            v22 = *&v41[3];
            v25 = *v41;
            v24 = *&v41[1];
            v26 = [v2 presentedViewController];
            v27 = [v26 popoverPresentationController];

            [v27 setSourceRect:{v25, v24, v23, v22}];
          }
        }

        v28 = [v2 presentedViewController];
        if (v28)
        {
          v29 = v28;
          v30 = [v28 popoverPresentationController];

          if (v30)
          {
            v31 = [v30 containerView];

            [v31 setNeedsLayout];
          }
        }

        v32 = [v2 presentedViewController];
        if (v32)
        {
          v33 = v32;
          v34 = [v32 popoverPresentationController];

          if (v34)
          {
            v35 = [v34 containerView];

            [v35 layoutIfNeeded];
          }
        }

        v36 = *&v2[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_dictionaryController];
        if (v36)
        {
          v37 = *(v6 + OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlightedWord + 8);
          v38 = &v36[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_text];
          *v38 = *(v6 + OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlightedWord);
          *(v38 + 1) = v37;
          v39 = v36;

          sub_1000E0A1C();
        }
      }
    }
  }
}

void sub_1000E44EC(CGFloat a1, CGFloat a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_highlightedView;
  v7 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_highlightedView);
  if (v7)
  {
    v8 = v7;
    HighlightTextView.removeHighlights()();
  }

  v9 = sub_1000E2484();
  v10 = sub_100032204();

  v11 = sub_1002942C8();
  HighlightTextView.setHighlightToWord(at:)(a1, a2);

  v12 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController____lazy_storage___cardCell);
  v13 = sub_100032204();

  v14 = sub_1002942C8();
  v15 = *(v3 + v6);
  *(v3 + v6) = v14;
}

id sub_1000E45F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DictionaryWordSelectionController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000E4710(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_highlightedView;
  v5 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_highlightedView);
  v6 = v5;
  v7 = sub_1000E2484();
  v8 = sub_100032204();

  v9 = sub_1002942C8();
  if (!v5)
  {
    goto LABEL_6;
  }

  type metadata accessor for HighlightTextView();
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {
    v11 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController____lazy_storage___cardCell);
    v12 = sub_100032204();

    v13 = sub_1002942C8();
    HighlightTextView.setHighlightToFirstWord()();

    v14 = *(v2 + v4);
    if (v14)
    {
      v15 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_dictionaryController);
      if (v15)
      {
        v16 = *&v14[OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlightedWord + 8];
        v17 = &v15[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_text];
        *v17 = *&v14[OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlightedWord];
        *(v17 + 1) = v16;
        v9 = v14;
        v18 = v15;

        sub_1000E0A1C();

LABEL_6:
      }
    }
  }

  v19 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_translationAlternativeSelectedHandler);
  if (v19)
  {

    v19(a1);

    sub_10001ABE4(v19);
  }
}

void sub_1000E4914()
{
  v1 = [v0 presentedViewController];
  if (v1)
  {
    v2 = v1;
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v6[4] = sub_1000E4A48;
    v6[5] = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_100096948;
    v6[3] = &unk_1003838C0;
    v4 = _Block_copy(v6);
    v5 = v0;

    [v2 dismissViewControllerAnimated:1 completion:v4];
    _Block_release(v4);
  }
}

uint64_t sub_1000E4A10()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000E4A60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000E4A78()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000E4AC0()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000E4B00()
{
  v1 = (v0 + OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_originalCardFrame);
  *v1 = 0u;
  v1[1] = 0u;
  v2 = (v0 + OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_originalVisibleScrollRect);
  *v2 = 0u;
  v2[1] = 0u;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController____lazy_storage___cardCell) = 0;
  v3 = (v0 + OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_translationAlternativeSelectedHandler);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_dictionaryController) = 0;
  v4 = v0 + OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_initialTouchPointInTargetView;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_initiallySetHighlightToFirstWord) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_translation) = 0;
  v5 = (v0 + OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_word);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_scrollViewAdditionalContentHeight) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController____lazy_storage___scrollView) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_backgroundView) = 0;
  v6 = OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_cardBackgroundView;
  v7 = [objc_allocWithZone(UIView) init];
  v8 = [objc_opt_self() secondarySystemBackgroundColor];
  [v7 setBackgroundColor:v8];

  *(v0 + v6) = v7;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_highlightedView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1000E4C84()
{
  v1 = sub_1000E263C();
  [v1 contentSize];
  v3 = v2;

  v4 = OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController____lazy_storage___scrollView;
  [*(v0 + OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController____lazy_storage___scrollView) bounds];
  v6 = v3 - v5;
  [*(v0 + v4) contentInset];
  v8 = *(v0 + v4);

  return [v8 setContentOffset:0 animated:{0.0, v6 + v7}];
}

unint64_t sub_1000E4DBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v6 = type metadata accessor for DisambiguationResultModel.TextLocation();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, enum case for DisambiguationResultModel.TextLocation.source(_:), v6);
  v10 = static DisambiguationResultModel.TextLocation.== infix(_:_:)();
  (*(v7 + 8))(v9, v6);
  v11 = sub_10005CEB0();
  if (v10)
  {
    v12 = a3();
  }

  else
  {
    v12 = a4();
  }

  v13 = v12;
  sub_100005AD4(&unk_1003BBD30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002D3160;
  *(inited + 32) = NSForegroundColorAttributeName;
  *(inited + 64) = v11;
  *(inited + 40) = v13;
  v15 = NSForegroundColorAttributeName;
  v16 = sub_100292588(inited);
  swift_setDeallocating();
  sub_1000E4F60(inited + 32);
  return v16;
}

uint64_t sub_1000E4F60(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B3490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000E4FC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  (*(a2 + 32))(a1, a2);
  (*(a2 + 40))(a1, a2);
  v11 = objc_allocWithZone(_LTLocalePair);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v13 = Locale._bridgeToObjectiveC()().super.isa;
  v14 = [v11 initWithSourceLocale:isa targetLocale:v13];

  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v10, v4);
  return v14;
}

uint64_t sub_1000E515C(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 96))();
  if (v2 == 0.5)
  {
    return 0;
  }

  if (v2 == 0.75)
  {
    return 1;
  }

  if (v2 == 1.0)
  {
    return 2;
  }

  if (v2 == 1.25)
  {
    return 3;
  }

  return 4;
}

id sub_1000E51E0(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 48))();
  v3 = [v2 isPassthrough];

  return v3;
}

uint64_t sub_1000E522C()
{
  dispatch thunk of PersistedTranslation.translationResult.getter();
  sub_1000085CC(v8, v9);
  v0 = dispatch thunk of TranslationResult.disambiguableResult.getter();
  if (!v0)
  {
    sub_100008664(v8);
    dispatch thunk of PersistedTranslation.translationResult.getter();
    sub_1000085CC(v7, v7[3]);
    v5 = dispatch thunk of TranslationResult.alternatives.getter();
    if (*(v5 + 16))
    {
      sub_100031DD8(v5 + 32, v8);

      sub_1000085CC(v8, v9);
      v4 = dispatch thunk of TranslationAlternative.romanization.getter();
      sub_100008664(v8);
      sub_100008664(v7);
      return v4;
    }

    sub_100008664(v7);
    return 0;
  }

  v1 = v0;
  sub_100008664(v8);
  v2 = [v1 romanization];
  if (!v2)
  {

    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_1000E5380()
{
  v1 = [v0 identifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_1000E540C(uint64_t a1)
{
  *(a1 + 8) = sub_1000E6778(&qword_1003AFD60, &type metadata accessor for PersistedTranslation);
  result = sub_1000E6778(&qword_1003AFD68, &type metadata accessor for PersistedTranslation);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000E5490@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PersistedTranslation();
  result = Identifiable<>.id.getter();
  *a1 = result;
  return result;
}

void sub_1000E54D4()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v22 = *(v2 - 8);
  v23 = v2;
  __chkstk_darwin(v2);
  v20 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005AD4(&unk_1003B8C90);
  __chkstk_darwin(v4 - 8);
  v21 = &v19 - v5;
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  String.hash(into:)();

  v10 = *(v7 + 16);
  v10(v9, v1 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_sourceLocale, v6);
  Locale.identifier.getter();
  v11 = *(v7 + 8);
  v11(v9, v6);
  String.hash(into:)();

  v10(v9, v1 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_targetLocale, v6);
  Locale.identifier.getter();
  v11(v9, v6);
  String.hash(into:)();

  Hasher._combine(_:)(*(v1 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_isFavorite));

  String.hash(into:)();

  String.hash(into:)();

  String.hash(into:)();

  if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_romanization + 8))
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v12 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_ttsPlaybackRateDouble);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  Hasher._combine(_:)(*&v12);
  Hasher._combine(_:)(*(v1 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_showDisambiguation));
  v13 = OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_selfLoggingInvocationId;
  swift_beginAccess();
  v14 = v1 + v13;
  v15 = v21;
  sub_100026D44(v14, v21);
  v17 = v22;
  v16 = v23;
  if ((*(v22 + 48))(v15, 1, v23) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v18 = v20;
    (*(v17 + 32))(v20, v15, v16);
    Hasher._combine(_:)(1u);
    sub_1000E6778(&qword_1003AFF90, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v17 + 8))(v18, v16);
  }
}

uint64_t sub_1000E5958()
{

  v1 = OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_sourceLocale;
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_targetLocale, v2);

  sub_100009EBC(v0 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_selfLoggingInvocationId, &unk_1003B8C90);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TestableTranslation()
{
  result = qword_1003AFD98;
  if (!qword_1003AFD98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000E5ADC()
{
  type metadata accessor for Locale();
  if (v0 <= 0x3F)
  {
    sub_1000E5BD8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000E5BD8()
{
  if (!qword_1003AF3C8)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1003AF3C8);
    }
  }
}

uint64_t sub_1000E5C78()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1000E5CC0@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for Locale();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000E5D38()
{
  v1 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_displaySourceText);

  return v1;
}

uint64_t sub_1000E5D74()
{
  v1 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_displayTargetText);

  return v1;
}

uint64_t sub_1000E5DD4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_selfLoggingInvocationId;
  swift_beginAccess();
  return sub_100026D44(v1 + v3, a1);
}

uint64_t sub_1000E5E2C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TestableTranslation();
  result = Identifiable<>.id.getter();
  *a1 = result;
  return result;
}

Swift::Int sub_1000E5E7C()
{
  Hasher.init(_seed:)();
  sub_1000E54D4();
  return Hasher._finalize()();
}

Swift::Int sub_1000E5EE4()
{
  Hasher.init(_seed:)();
  sub_1000E54D4();
  return Hasher._finalize()();
}

uint64_t sub_1000E5F24(uint64_t a1)
{
  *(a1 + 8) = sub_1000E6778(&qword_1003AFF70, type metadata accessor for TestableTranslation);
  result = sub_1000E6778(&qword_1003AFF78, type metadata accessor for TestableTranslation);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000E5FA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_100005AD4(&qword_1003AFF80);
  __chkstk_darwin(v69);
  v70 = &v65 - v8;
  v9 = sub_100005AD4(&unk_1003B8C90);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v71 = &v65 - v13;
  v14 = type metadata accessor for Locale();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v75 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v74 = &v65 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v65 - v21;
  __chkstk_darwin(v20);
  v24 = &v65 - v23;
  v25 = *(a1 + 16);
  v26 = *(a1 + 24);
  v76 = a1;
  if ((v25 != *(a2 + 16) || v26 != *(a2 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_13;
  }

  v65 = v7;
  v66 = v12;
  v67 = v4;
  v68 = v5;
  v27 = *(v15 + 16);
  v27(v24, v76 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_sourceLocale, v14);
  v28 = Locale.identifier.getter();
  v30 = v29;
  v31 = *(v15 + 8);
  v31(v24, v14);
  v73 = a2;
  v27(v22, a2 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_sourceLocale, v14);
  v32 = Locale.identifier.getter();
  v34 = v33;
  v72 = v31;
  v31(v22, v14);
  if (v28 == v32 && v30 == v34)
  {
  }

  else
  {
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v35 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v36 = v74;
  v27(v74, v76 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_targetLocale, v14);
  v37 = Locale.identifier.getter();
  v39 = v38;
  v40 = v72;
  v72(v36, v14);
  v41 = v73;
  v42 = v75;
  v27(v75, v73 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_targetLocale, v14);
  v43 = Locale.identifier.getter();
  v45 = v44;
  v40(v42, v14);
  if (v37 == v43 && v39 == v45)
  {
  }

  else
  {
    v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v46 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v47 = v76;
  if (*(v76 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_isFavorite) != *(v41 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_isFavorite))
  {
    goto LABEL_13;
  }

  v50 = v41;
  if ((*(v76 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_displaySourceText) != *(v41 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_displaySourceText) || *(v76 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_displaySourceText + 8) != *(v41 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_displaySourceText + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_13;
  }

  if ((*(v47 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_displayTargetText) != *(v41 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_displayTargetText) || *(v47 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_displayTargetText + 8) != *(v41 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_displayTargetText + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_13;
  }

  v51 = *(v47 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_romanization + 8);
  v52 = (v41 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_romanization);
  v53 = *(v41 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_romanization + 8);
  if (v51)
  {
    v54 = v71;
    if (!v53 || (*(v47 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_romanization) != *v52 || v51 != v53) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v54 = v71;
    if (v53)
    {
      goto LABEL_13;
    }
  }

  if (*(v47 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_ttsPlaybackRateDouble) == *(v50 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_ttsPlaybackRateDouble) && *(v47 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_showDisambiguation) == *(v50 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_showDisambiguation))
  {
    v55 = OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_selfLoggingInvocationId;
    swift_beginAccess();
    sub_100026D44(v47 + v55, v54);
    v56 = OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_selfLoggingInvocationId;
    swift_beginAccess();
    v57 = v70;
    v58 = *(v69 + 48);
    sub_100026D44(v54, v70);
    sub_100026D44(v50 + v56, v57 + v58);
    v59 = v67;
    v60 = *(v68 + 48);
    if (v60(v57, 1, v67) == 1)
    {
      sub_100009EBC(v54, &unk_1003B8C90);
      if (v60(v57 + v58, 1, v59) == 1)
      {
        sub_100009EBC(v57, &unk_1003B8C90);
        v48 = 1;
        return v48 & 1;
      }
    }

    else
    {
      v61 = v66;
      sub_100026D44(v57, v66);
      if (v60(v57 + v58, 1, v59) != 1)
      {
        v62 = v68;
        v63 = v65;
        (*(v68 + 32))(v65, v57 + v58, v59);
        sub_1000E6778(&qword_1003AFF88, &type metadata accessor for UUID);
        v48 = dispatch thunk of static Equatable.== infix(_:_:)();
        v64 = *(v62 + 8);
        v64(v63, v59);
        sub_100009EBC(v54, &unk_1003B8C90);
        v64(v61, v59);
        sub_100009EBC(v57, &unk_1003B8C90);
        return v48 & 1;
      }

      sub_100009EBC(v54, &unk_1003B8C90);
      (*(v68 + 8))(v61, v59);
    }

    sub_100009EBC(v57, &qword_1003AFF80);
    v48 = 0;
    return v48 & 1;
  }

LABEL_13:
  v48 = 0;
  return v48 & 1;
}

uint64_t sub_1000E6778(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000E67C8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1000E6824(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1000E68A0(uint64_t a1)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  else
  {
    type metadata accessor for ConversationContext(0);
    sub_1000E6C04(&unk_1003BC490, type metadata accessor for ConversationContext);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000E6970()
{
  LocalizedStringKey.init(stringLiteral:)();

  return Label<>.init(_:systemImage:)();
}

uint64_t sub_1000E69D0()
{
  v1 = sub_100005AD4(&qword_1003AA3C0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - v3;
  v5 = *v0;
  v6 = v0[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;

  sub_100005AD4(&qword_1003A93D8);
  sub_10001BAEC(&qword_1003AA3C8, &qword_1003A93D8);
  Button.init(action:label:)();
  sub_10001BAEC(&qword_1003AA3D0, &qword_1003AA3C0);
  View.accessibilityIdentifier(_:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1000E6BB8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000E6C04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000E6C4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47[1] = a2;
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v47 - v8;
  v10 = [a1 sourceLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  static Locale.current.getter();
  v11 = Locale.sqDisplayName(context:in:)();
  v13 = v12;
  v14 = *(v4 + 8);
  v14(v7, v3);
  v14(v9, v3);
  if (v13)
  {
    v15 = v11;
  }

  else
  {
    v15 = 0x45474155474E414CLL;
  }

  if (v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0xE800000000000000;
  }

  v48 = v16;
  v49 = v15;
  v17 = [a1 targetLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  static Locale.current.getter();
  v18 = Locale.sqDisplayName(context:in:)();
  v20 = v19;
  v14(v7, v3);
  v14(v9, v3);
  if (v20)
  {
    v21 = v18;
  }

  else
  {
    v21 = 0x45474155474E414CLL;
  }

  if (!v20)
  {
    v20 = 0xE800000000000000;
  }

  static UIContentUnavailableConfiguration.empty()();
  v22 = String._bridgeToObjectiveC()();
  v23 = [objc_opt_self() _systemImageNamed:v22];

  UIContentUnavailableConfiguration.image.setter();
  v24 = objc_opt_self();
  v25 = [v24 mainBundle];
  v26._countAndFlagsBits = 0xD000000000000010;
  v51._object = 0xE000000000000000;
  v26._object = 0x80000001002F4240;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v51._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v51);

  UIContentUnavailableConfiguration.text.setter();
  v28 = [v24 mainBundle];
  v52._object = 0xE000000000000000;
  v29._object = 0x80000001002F4260;
  v29._countAndFlagsBits = 0xD000000000000014;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v52._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v30, v52);

  sub_100005AD4(&qword_1003A9AB0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1002D1370;
  *(v31 + 56) = &type metadata for String;
  v32 = sub_100031CD0();
  v33 = v48;
  *(v31 + 32) = v49;
  *(v31 + 40) = v33;
  *(v31 + 96) = &type metadata for String;
  *(v31 + 104) = v32;
  *(v31 + 64) = v32;
  *(v31 + 72) = v21;
  *(v31 + 80) = v20;
  String.init(format:_:)();

  UIContentUnavailableConfiguration.secondaryText.setter();
  v34 = String._bridgeToObjectiveC()();
  v35 = SFLocalizableWAPIStringKeyForKey();

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  v39 = [v24 mainBundle];
  v53._object = 0xE000000000000000;
  v40._countAndFlagsBits = v36;
  v40._object = v38;
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  v53._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v40, 0, v39, v41, v53);

  v42 = UIContentUnavailableConfiguration.button.modify();
  UIButton.Configuration.title.setter();
  v42(v50, 0);
  sub_10000A2CC(0, &qword_1003B2990);
  static UIColor.translateAccentColor.getter();
  v43 = UIContentUnavailableConfiguration.button.modify();
  UIButton.Configuration.baseForegroundColor.setter();
  v43(v50, 0);
  v44 = UIContentUnavailableConfiguration.buttonProperties.modify();
  UIContentUnavailableConfiguration.ButtonProperties.role.setter();
  v44(v50, 0);
  UIContentUnavailableConfiguration.directionalLayoutMargins.setter();
  sub_10000A2CC(0, &qword_1003A9940);
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v45 = UIContentUnavailableConfiguration.buttonProperties.modify();
  UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
  return v45(v50, 0);
}

uint64_t sub_1000E7224()
{
  static UIContentUnavailableConfiguration.empty()();
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  UIContentUnavailableConfiguration.image.setter();
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v18._object = 0xE000000000000000;
  v4._object = 0xEF454C5449545F45;
  v4._countAndFlagsBits = 0x43495645445F4E4FLL;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v18);

  UIContentUnavailableConfiguration.text.setter();
  v6 = [v2 mainBundle];
  v19._object = 0xE000000000000000;
  v7._object = 0x80000001002F4200;
  v7._countAndFlagsBits = 0xD000000000000015;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v19);

  UIContentUnavailableConfiguration.secondaryText.setter();
  v9 = [v2 mainBundle];
  v20._object = 0xE000000000000000;
  v10._object = 0xEE004B4E494C5F45;
  v10._countAndFlagsBits = 0x43495645445F4E4FLL;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v20);

  v12 = UIContentUnavailableConfiguration.button.modify();
  UIButton.Configuration.title.setter();
  v12(v17, 0);
  sub_10000A2CC(0, &qword_1003B2990);
  static UIColor.translateAccentColor.getter();
  v13 = UIContentUnavailableConfiguration.button.modify();
  UIButton.Configuration.baseForegroundColor.setter();
  v13(v17, 0);
  v14 = UIContentUnavailableConfiguration.buttonProperties.modify();
  UIContentUnavailableConfiguration.ButtonProperties.role.setter();
  v14(v17, 0);
  UIContentUnavailableConfiguration.directionalLayoutMargins.setter();
  sub_10000A2CC(0, &qword_1003A9940);

  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v15 = UIContentUnavailableConfiguration.buttonProperties.modify();
  UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
  return v15(v17, 0);
}

void sub_1000E7590()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v13 = &type metadata for TranslateFeatures;
  v14 = sub_100009DF8();
  v12[0] = 2;
  v4 = isFeatureEnabled(_:)();
  sub_100008664(v12);
  if (v4)
  {
    v5 = [objc_opt_self() defaultWorkspace];
    if (v5)
    {
      v6 = v5;
      static URL.downloadLanguagesURL.getter();
      URL._bridgeToObjectiveC()(v7);
      v9 = v8;
      (*(v1 + 8))(v3, v0);
      sub_100292258(_swiftEmptyArrayStorage);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v6 openSensitiveURL:v9 withOptions:isa];
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v12[0] = 1;

    static Published.subscript.setter();
  }
}

void sub_1000E7778()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() defaultWorkspace];
  if (v4)
  {
    v5 = v4;
    static URL.topLevelSettingsURL.getter();
    URL._bridgeToObjectiveC()(v6);
    v8 = v7;
    (*(v1 + 8))(v3, v0);
    sub_100292258(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v5 openSensitiveURL:v8 withOptions:isa];
  }
}

uint64_t sub_1000E78D0()
{
  static UIContentUnavailableConfiguration.empty()();
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  UIContentUnavailableConfiguration.image.setter();
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v10._object = 0x80000001002F4330;
  v4._countAndFlagsBits = 0x524F5641465F4F4ELL;
  v4._object = 0xEC00000053455449;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000011;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v10);

  UIContentUnavailableConfiguration.text.setter();
  v6 = [v2 mainBundle];
  v11._object = 0x80000001002F4370;
  v7._countAndFlagsBits = 0xD000000000000014;
  v7._object = 0x80000001002F4350;
  v11._countAndFlagsBits = 0xD000000000000013;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v11);

  UIContentUnavailableConfiguration.secondaryText.setter();
  return UIContentUnavailableConfiguration.directionalLayoutMargins.setter();
}

uint64_t sub_1000E7A90()
{
  static UIContentUnavailableConfiguration.empty()();
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  UIContentUnavailableConfiguration.image.setter();
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v25._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000016;
  v4._object = 0x80000001002F4280;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v25);

  UIContentUnavailableConfiguration.text.setter();
  v6 = [v2 mainBundle];
  v26._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0xD00000000000001DLL;
  v7._object = 0x80000001002F42A0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v26._countAndFlagsBits = 0;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v26);

  v24 = v9;
  v10._countAndFlagsBits = 10;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  v11 = [v2 mainBundle];
  v27._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0xD000000000000031;
  v12._object = 0x80000001002F42C0;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v27);

  String.append(_:)(v14);

  UIContentUnavailableConfiguration.secondaryText.setter();
  v15 = [v2 mainBundle];
  v28._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0x45535F4F545F4F47;
  v16._object = 0xEE0053474E495454;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v28);

  v18 = UIContentUnavailableConfiguration.button.modify();
  UIButton.Configuration.title.setter();
  v18(v23, 0);
  sub_10000A2CC(0, &qword_1003B2990);
  static UIColor.translateAccentColor.getter();
  v19 = UIContentUnavailableConfiguration.button.modify();
  UIButton.Configuration.baseForegroundColor.setter();
  v19(v23, 0);
  v20 = UIContentUnavailableConfiguration.buttonProperties.modify();
  UIContentUnavailableConfiguration.ButtonProperties.role.setter();
  v20(v23, 0);
  sub_10000A2CC(0, &qword_1003A9940);
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v21 = UIContentUnavailableConfiguration.buttonProperties.modify();
  UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
  v21(v23, 0);
  return UIContentUnavailableConfiguration.directionalLayoutMargins.setter();
}

void sub_1000E7E6C()
{
  v0 = sub_100005AD4(&qword_1003AB2D8);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = [objc_opt_self() defaultWorkspace];
  if (v3)
  {
    v4 = v3;
    URL.init(string:)();
    v5 = type metadata accessor for URL();
    v6 = *(v5 - 8);
    v8 = 0;
    if ((*(v6 + 48))(v2, 1, v5) != 1)
    {
      URL._bridgeToObjectiveC()(v7);
      v8 = v9;
      (*(v6 + 8))(v2, v5);
    }

    sub_100292258(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v4 openSensitiveURL:v8 withOptions:isa];
  }
}

unint64_t sub_1000E801C()
{
  result = qword_1003AFF98;
  if (!qword_1003AFF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AFF98);
  }

  return result;
}

uint64_t sub_1000E812C()
{
  sub_1000E8694();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_1000E8184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000E8548();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_1000E81E8@<X0>(_BYTE *a1@<X8>)
{
  sub_1000E85EC();
  result = UITraitCollection.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000E8284()
{
  type metadata accessor for GenderTipManager(0);
  v0 = swift_allocObject();
  sub_100005AD4(&qword_1003AA740);
  Published.init(initialValue:)();
  v1 = OBJC_IVAR____TtC17SequoiaTranslator16GenderTipManager_mostRecentCreationDate;
  v2 = type metadata accessor for Date();
  result = (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  qword_1003D2688 = v0;
  return result;
}

uint64_t sub_1000E8364()
{
  if (qword_1003A91E0 != -1)
  {
    swift_once();
  }

  qword_1003D2690 = qword_1003D2688;
}

uint64_t sub_1000E83EC@<X0>(void *a1@<X2>, void *a2@<X3>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    v5 = a2;
    v6 = a3;
    swift_once();
    a3 = v6;
    a2 = v5;
  }

  *a3 = *a2;
}

uint64_t sub_1000E8450@<X0>(void *a1@<X8>)
{
  sub_1000E8640();
  result = UITraitCollection.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000E84A0(uint64_t a1)
{
  sub_1000E859C(a1, *(a1 + 24));

  return sub_1000E80D0();
}

unint64_t sub_1000E84F4()
{
  result = qword_1003AFFA0;
  if (!qword_1003AFFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AFFA0);
  }

  return result;
}

unint64_t sub_1000E8548()
{
  result = qword_1003AFFA8;
  if (!qword_1003AFFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AFFA8);
  }

  return result;
}

uint64_t sub_1000E859C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_1000E85EC()
{
  result = qword_1003BC540;
  if (!qword_1003BC540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC540);
  }

  return result;
}

unint64_t sub_1000E8640()
{
  result = qword_1003B8D10;
  if (!qword_1003B8D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B8D10);
  }

  return result;
}

unint64_t sub_1000E8694()
{
  result = qword_1003AFFB0;
  if (!qword_1003AFFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AFFB0);
  }

  return result;
}

uint64_t sub_1000E8754(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000E879C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000E8814()
{
  sub_100008E34(*v0);
  sub_100005AD4(&qword_1003BA760);
  Binding.projectedValue.getter();
  sub_100005AD4(&qword_1003AFFB8);
  sub_100005AD4(&qword_1003AA540);
  sub_10001BAEC(&qword_1003AFFC0, &qword_1003AFFB8);
  sub_10001F278();
  sub_10001BAEC(&qword_1003AA548, &qword_1003AA540);
  View.alert<A, B, C, D>(_:isPresented:presenting:actions:message:)();
}

uint64_t sub_1000E89EC(uint64_t a1, _OWORD *a2)
{
  LocalizedStringKey.init(stringLiteral:)();
  v3 = swift_allocObject();
  v4 = a2[1];
  v3[1] = *a2;
  v3[2] = v4;
  v3[3] = a2[2];
  sub_1000B030C(a2, &v6);
  return Button<>.init(_:action:)();
}

uint64_t sub_1000E8AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100008E34(*(a1 + 1));
  sub_10001F278();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1000E8B50()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000E8B98()
{
  sub_100005EA8(&qword_1003AFFB8);
  sub_100005EA8(&qword_1003AA540);
  sub_10001BAEC(&qword_1003AFFC0, &qword_1003AFFB8);
  sub_10001F278();
  sub_10001BAEC(&qword_1003AA548, &qword_1003AA540);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000E8CBC(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xE90000000000006BLL;
  v3 = 0x726F7774654E6F6ELL;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0x726F7774654E6F6ELL;
  }

  else
  {
    v5 = 0xD000000000000014;
  }

  if (v4 == 1)
  {
    v6 = 0xE90000000000006BLL;
  }

  else
  {
    v6 = 0x80000001002EF720;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x80000001002EF700;
  }

  if (*a2 != 1)
  {
    v3 = 0xD000000000000014;
    v2 = 0x80000001002EF720;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000013;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x80000001002EF700;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1000E8D98()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000E8E40()
{
  String.hash(into:)();
}

Swift::Int sub_1000E8ED4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000E8F78@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000EB6C8(*a1);
  *a2 = result;
  return result;
}

void sub_1000E8FA8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE90000000000006BLL;
  v4 = 0x726F7774654E6F6ELL;
  if (v2 != 1)
  {
    v4 = 0xD000000000000014;
    v3 = 0x80000001002EF720;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000013;
  }

  if (v5)
  {
    v3 = 0x80000001002EF700;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1000E9048()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v79 = *(v2 - 8);
  v80 = v2;
  __chkstk_darwin(v2);
  v78 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v77);
  v76 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v75 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&qword_1003AE3E0);
  v8 = *(v7 - 8);
  v73 = v7;
  v74 = v8;
  __chkstk_darwin(v7);
  v72 = v55 - v9;
  v10 = sub_100005AD4(&qword_1003B23F0);
  __chkstk_darwin(v10 - 8);
  v68 = v55 - v11;
  v69 = type metadata accessor for NSNotificationCenter.Publisher();
  v82 = *(v69 - 8);
  __chkstk_darwin(v69);
  v66 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100005AD4(&unk_1003BA6A0);
  v14 = *(v13 - 8);
  v70 = v13;
  v71 = v14;
  __chkstk_darwin(v13);
  v67 = v55 - v15;
  v16 = sub_100005AD4(&qword_1003AE3D8);
  __chkstk_darwin(v16 - 8);
  v18 = v55 - v17;
  v57 = sub_100005AD4(&qword_1003AE3D0);
  v58 = *(v57 - 8);
  __chkstk_darwin(v57);
  v56 = v55 - v19;
  v20 = sub_100005AD4(&unk_1003B8DF0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v55 - v22;
  *(v1 + 16) = [objc_allocWithZone(type metadata accessor for AirplaneModeConfiguration()) init];
  v24 = OBJC_IVAR____TtC17SequoiaTranslator17ErrorStateContext__airplaneModeEnabled;
  LOBYTE(v83) = 0;
  Published.init(initialValue:)();
  v25 = *(v21 + 32);
  v25(v1 + v24, v23, v20);
  v26 = OBJC_IVAR____TtC17SequoiaTranslator17ErrorStateContext__onDeviceModeEnabled;
  LOBYTE(v83) = 0;
  Published.init(initialValue:)();
  v25(v1 + v26, v23, v20);
  v27 = OBJC_IVAR____TtC17SequoiaTranslator17ErrorStateContext__noNetwork;
  LOBYTE(v83) = 0;
  Published.init(initialValue:)();
  v25(v1 + v27, v23, v20);
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator17ErrorStateContext_subscriptions) = _swiftEmptyArrayStorage;
  v28 = OBJC_IVAR____TtC17SequoiaTranslator17ErrorStateContext_networkMonitor;
  type metadata accessor for NWPathMonitor();
  swift_allocObject();
  *(v1 + v28) = NWPathMonitor.init()();
  v29 = *(v1 + 16);
  v30 = dispatch thunk of AirplaneModeConfiguration.isEnabled.getter();

  v83 = v30;
  v65 = objc_opt_self();
  v31 = [v65 mainRunLoop];
  v84 = v31;
  v63 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v32 = *(v63 - 8);
  v62 = *(v32 + 56);
  v64 = v32 + 56;
  v59 = v18;
  v62(v18, 1, 1, v63);
  sub_100005AD4(&qword_1003AE448);
  v61 = sub_10000A2CC(0, &qword_1003AE420);
  sub_10001BAEC(&qword_1003AE450, &qword_1003AE448);
  v60 = sub_1000819A8(&qword_1003AE430, &qword_1003AE420);
  v33 = v56;
  Publisher.receive<A>(on:options:)();
  sub_100009EBC(v18, &qword_1003AE3D8);

  swift_allocObject();
  swift_weakInit();
  v81 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_10001BAEC(&qword_1003AE458, &qword_1003AE3D0);
  v34 = v57;
  Publisher<>.sink(receiveValue:)();

  (*(v58 + 8))(v33, v34);
  v55[1] = OBJC_IVAR____TtC17SequoiaTranslator17ErrorStateContext_subscriptions;
  swift_beginAccess();
  v57 = sub_100005AD4(&unk_1003B8DE0);
  v56 = sub_10001BAEC(&qword_1003AE440, &unk_1003B8DE0);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  sub_10000A2CC(0, &qword_1003A9B80);
  v35 = static NSUserDefaults.translationGroupDefaults.getter();
  LOBYTE(v28) = NSUserDefaults.onDeviceOnly.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v83) = v28 & 1;

  static Published.subscript.setter();
  v36 = objc_opt_self();
  v37 = [v36 defaultCenter];
  v38 = String._bridgeToObjectiveC()();
  v39 = v66;
  NSNotificationCenter.publisher(for:object:)();

  v58 = sub_10000A2CC(0, &qword_1003A9C40);
  v40 = static OS_dispatch_queue.main.getter();
  v83 = v40;
  v41 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v42 = v68;
  (*(*(v41 - 8) + 56))(v68, 1, 1, v41);
  v55[0] = sub_1000EB7A4(&qword_1003AE428, &type metadata accessor for NSNotificationCenter.Publisher);
  sub_1000819A8(&qword_1003B2410, &qword_1003A9C40);
  v43 = v67;
  v44 = v69;
  Publisher.receive<A>(on:options:)();
  sub_100009EBC(v42, &qword_1003B23F0);

  v45 = *(v82 + 8);
  v82 += 8;
  v68 = v45;
  v46 = v44;
  (v45)(v39, v44);
  sub_10001BAEC(&unk_1003BA750, &unk_1003BA6A0);

  v47 = v70;
  Publisher<>.sink(receiveValue:)();

  (*(v71 + 8))(v43, v47);
  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  v48 = [v36 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v49 = [v65 mainRunLoop];
  v83 = v49;
  v50 = v59;
  v62(v59, 1, 1, v63);
  v51 = v72;
  Publisher.receive<A>(on:options:)();
  sub_100009EBC(v50, &qword_1003AE3D8);

  (v68)(v39, v46);
  sub_10001BAEC(&qword_1003AE438, &qword_1003AE3E0);

  v52 = v73;
  Publisher<>.sink(receiveValue:)();

  (*(v74 + 8))(v51, v52);
  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  static DispatchQoS.unspecified.getter();
  v83 = _swiftEmptyArrayStorage;
  sub_1000EB7A4(&qword_1003AED78, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100005AD4(&qword_1003AED80);
  sub_10001BAEC(&qword_1003AED88, &qword_1003AED80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v79 + 104))(v78, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v80);
  v53 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  NWPathMonitor.start(queue:)();

  sub_10001AD18(sub_1000EB808);
  NWPathMonitor.pathUpdateHandler.setter();

  return v1;
}

uint64_t sub_1000E9F08()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_1000E9F94()
{
  sub_10000A2CC(0, &qword_1003A9B80);
  v0 = static NSUserDefaults.translationGroupDefaults.getter();
  NSUserDefaults.onDeviceOnly.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1000EA038(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v18 = *(v6 - 8);
  v19 = v6;
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NWPath();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_10000A2CC(0, &qword_1003A9C40);
  v12 = static OS_dispatch_queue.main.getter();
  (*(v10 + 16))(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  *(v14 + ((v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v17;
  aBlock[4] = sub_1000EB8AC;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_100383E40;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000EB7A4(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50);
  sub_10001BAEC(&qword_1003AB9A0, &unk_1003A9C50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v20 + 8))(v5, v3);
  return (*(v18 + 8))(v8, v19);
}

uint64_t sub_1000EA404()
{
  v0 = type metadata accessor for NWPath.Status();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  NWPath.status.getter();
  v4 = (*(v1 + 88))(v3, v0);
  v5 = enum case for NWPath.Status.unsatisfied(_:);
  swift_getKeyPath();
  swift_getKeyPath();
  if (v4 == v5)
  {
    v7[14] = 1;

    return static Published.subscript.setter();
  }

  else
  {
    v7[15] = 0;

    static Published.subscript.setter();
    return (*(v1 + 8))(v3, v0);
  }
}

uint64_t sub_1000EA57C()
{
  v0 = LanguageModel.id.getter();
  v2 = v1;
  if (v0 == Locale.ltIdentifier.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

uint64_t sub_1000EA618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v26 = a1;
  v27 = a2;
  v3 = sub_100005AD4(&qword_1003B01D0);
  v4 = *(v3 - 8);
  v31 = v3;
  v32 = v4;
  __chkstk_darwin(v3);
  v29 = v21 - v5;
  v28 = sub_100005AD4(&qword_1003B01D8);
  v30 = *(v28 - 8);
  __chkstk_darwin(v28);
  v25 = v21 - v6;
  v7 = sub_100005AD4(&unk_1003BC4E0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v21 - v9;
  swift_beginAccess();
  v21[0] = sub_100005AD4(&unk_1003B8DF0);
  Published.projectedValue.getter();
  swift_endAccess();
  v21[1] = &protocol conformance descriptor for Published<A>.Publisher;
  sub_10001BAEC(&qword_1003AD900, &unk_1003BC4E0);
  v23 = Publisher.eraseToAnyPublisher()();
  v11 = *(v8 + 8);
  v11(v10, v7);
  swift_beginAccess();
  Published.projectedValue.getter();
  swift_endAccess();
  v22 = Publisher.eraseToAnyPublisher()();
  v11(v10, v7);
  sub_100005AD4(&qword_1003AD850);
  sub_10001BAEC(&qword_1003B01A8, &qword_1003AD850);
  v12 = Publisher.eraseToAnyPublisher()();
  v24 = v12;
  swift_beginAccess();
  Published.projectedValue.getter();
  swift_endAccess();
  v13 = Publisher.eraseToAnyPublisher()();
  v11(v10, v7);
  v35 = v12;
  swift_allocObject();
  swift_weakInit();
  sub_100005AD4(&qword_1003B01B0);
  sub_100005AD4(&qword_1003AD858);
  sub_10001BAEC(&qword_1003B01B8, &qword_1003B01B0);
  sub_10001BAEC(&qword_1003BA720, &qword_1003AD858);
  v14 = v25;
  Publisher.combineLatest<A, B, C>(_:_:_:)();

  v34 = v23;
  v35 = v22;
  v33 = v13;
  sub_100005AD4(&qword_1003AE448);
  sub_100005AD4(&qword_1003ACD68);
  sub_10001BAEC(&qword_1003AE450, &qword_1003AE448);
  sub_10001BAEC(&qword_1003B01E0, &qword_1003B01D8);
  v16 = v28;
  v15 = v29;
  Publisher.combineLatest<A, B, C, D>(_:_:_:_:)();
  sub_10001BAEC(&qword_1003B01E8, &qword_1003B01D0);
  v17 = v31;
  v18 = v15;
  v19 = Publisher.eraseToAnyPublisher()();

  (*(v32 + 8))(v18, v17);
  (*(v30 + 8))(v14, v16);
  return v19;
}

uint64_t sub_1000EAC30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = sub_1000EBBAC(a2, a3, v7);

    v10 = v9 & 1;
  }

  else
  {
    v10 = 0;
  }

  *a4 = v10;
  return result;
}

_BYTE *sub_1000EACC8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, _BYTE *a4@<X3>, char *a5@<X8>)
{
  v5 = 3;
  if ((*a2 & 1) == 0)
  {
    if (*a4)
    {
      v5 = 1;
    }

    else
    {
      v5 = 3;
    }

    if (*a3)
    {
      v5 = 0;
    }

    if (*result)
    {
      v5 = 2;
    }
  }

  *a5 = v5;
  return result;
}

uint64_t sub_1000EAD04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v40 = a1;
  v41 = a2;
  v39 = type metadata accessor for Locale();
  v37 = *(v39 - 8);
  v38 = *(v37 + 64);
  v3 = __chkstk_darwin(v39);
  v36 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v35 = v32 - v5;
  v6 = sub_100005AD4(&qword_1003B01A0);
  v7 = *(v6 - 8);
  v43 = v6;
  v44 = v7;
  __chkstk_darwin(v6);
  v42 = v32 - v8;
  v9 = sub_100005AD4(&unk_1003BC4E0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v32 - v11;
  swift_beginAccess();
  v32[0] = sub_100005AD4(&unk_1003B8DF0);
  Published.projectedValue.getter();
  swift_endAccess();
  v33 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_10001BAEC(&qword_1003AD900, &unk_1003BC4E0);
  v45 = Publisher.eraseToAnyPublisher()();
  v13 = *(v10 + 8);
  v13(v12, v9);
  swift_beginAccess();
  Published.projectedValue.getter();
  swift_endAccess();
  v14 = Publisher.eraseToAnyPublisher()();
  v32[1] = v14;
  v13(v12, v9);
  sub_100005AD4(&qword_1003AD850);
  sub_10001BAEC(&qword_1003B01A8, &qword_1003AD850);
  v15 = Publisher.eraseToAnyPublisher()();
  v33 = v15;
  swift_beginAccess();
  Published.projectedValue.getter();
  swift_endAccess();
  v16 = Publisher.eraseToAnyPublisher()();
  v34 = v16;
  v13(v12, v9);
  v48 = v15;
  v49 = v14;
  v46 = v16;
  v47 = v45;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = v37;
  v19 = *(v37 + 16);
  v20 = v35;
  v21 = v39;
  v19(v35, v40, v39);
  v22 = v36;
  v19(v36, v41, v21);
  v23 = *(v18 + 80);
  v24 = (v23 + 24) & ~v23;
  v25 = (v38 + v23 + v24) & ~v23;
  v26 = swift_allocObject();
  *(v26 + 16) = v17;
  v27 = *(v18 + 32);
  v27(v26 + v24, v20, v21);
  v27(v26 + v25, v22, v21);
  sub_100005AD4(&qword_1003AE448);
  sub_100005AD4(&qword_1003B01B0);
  sub_100005AD4(&qword_1003ACD68);
  sub_10001BAEC(&qword_1003AE450, &qword_1003AE448);
  sub_10001BAEC(&qword_1003B01B8, &qword_1003B01B0);
  v28 = v42;
  Publisher.combineLatest<A, B, C, D>(_:_:_:_:)();

  sub_10001BAEC(&qword_1003B01C0, &qword_1003B01A0);
  v29 = v43;
  v30 = Publisher.eraseToAnyPublisher()();

  (*(v44 + 8))(v28, v29);
  return v30;
}

uint64_t sub_1000EB31C@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, char *a7@<X8>)
{
  v10 = *a1;
  v11 = *a2;
  v12 = *a3;
  v13 = *a4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v15 = 3;
  if (result)
  {
    v16 = sub_1000EBBAC(a5, a6, v11);

    if (v16)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    if (v13)
    {
      v18 = 1;
    }

    else
    {
      v18 = 3;
    }

    if (v12)
    {
      v18 = 0;
    }

    if ((v16 | v10))
    {
      v15 = v17;
    }

    else
    {
      v15 = v18;
    }
  }

  *a7 = v15;
  return result;
}

uint64_t sub_1000EB3F0()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator17ErrorStateContext__airplaneModeEnabled;
  v2 = sub_100005AD4(&unk_1003B8DF0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC17SequoiaTranslator17ErrorStateContext__onDeviceModeEnabled, v2);
  v3(v0 + OBJC_IVAR____TtC17SequoiaTranslator17ErrorStateContext__noNetwork, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ErrorStateContext()
{
  result = qword_1003B0010;
  if (!qword_1003B0010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000EB560()
{
  sub_1000C1BC0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1000EB634()
{
  result = qword_1003B0198;
  if (!qword_1003B0198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B0198);
  }

  return result;
}

uint64_t sub_1000EB688@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ErrorStateContext();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1000EB6C8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10037D6D0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000EB714()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000EB7A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000EB810()
{
  v1 = type metadata accessor for NWPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000EB8AC()
{
  type metadata accessor for NWPath();

  return sub_1000EA404();
}

uint64_t sub_1000EB938(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000EB9F0()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v5, v3 | 7);
}

uint64_t sub_1000EBADC@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 *a4@<X3>, char *a5@<X8>)
{
  v11 = *(type metadata accessor for Locale() - 8);
  v12 = *(v11 + 80);
  v13 = (v12 + 24) & ~v12;
  v14 = v5 + ((*(v11 + 64) + v12 + v13) & ~v12);

  return sub_1000EB31C(a1, a2, a3, a4, v5 + v13, v14, a5);
}

uint64_t sub_1000EBBAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a2;
  v5 = type metadata accessor for LanguageState();
  v55 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v41 - v9;
  v11 = sub_100005AD4(&qword_1003B01C8);
  v12 = __chkstk_darwin(v11 - 8);
  v52 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v41 - v14;
  v16 = type metadata accessor for LanguageModel();
  v17 = __chkstk_darwin(v16);
  v51 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v41 - v19;
  v57 = a1;
  v22 = v21;
  v54 = a3;
  sub_100198FB4(sub_1000EC0A0, a3, v15);
  v23 = *(v22 + 48);
  v56 = v16;
  if (v23(v15, 1, v16) == 1)
  {
    sub_100009EBC(v15, &qword_1003B01C8);
  }

  else
  {
    v50 = v23;
    v24 = v5;
    v25 = v55;
    v47 = *(v22 + 32);
    v48 = v22 + 32;
    v47(v20, v15, v56);
    v26 = v22;
    LanguageModel.state.getter();
    v27 = *(v25 + 104);
    v44 = enum case for LanguageState.installed(_:);
    v45 = v25 + 104;
    v43 = v27;
    v27(v8);
    v28 = static LanguageState.== infix(_:_:)();
    v29 = *(v25 + 8);
    v49 = v8;
    v29(v8, v24);
    v55 = v24;
    v46 = v29;
    v30 = (v29)(v10, v24);
    if (v28)
    {
      v42 = v20;
      __chkstk_darwin(v30);
      v31 = v52;
      *(&v41 - 2) = v53;
      sub_100198FB4(sub_1000EC078, v54, v31);
      if (v50(v31, 1, v56) == 1)
      {
        (*(v26 + 8))(v42, v56);
        sub_100009EBC(v31, &qword_1003B01C8);
      }

      else
      {
        v33 = v51;
        v34 = v56;
        v47(v51, v31, v56);
        LanguageModel.state.getter();
        v35 = v49;
        v36 = v55;
        v43(v49, v44, v55);
        v37 = static LanguageState.== infix(_:_:)();
        v38 = v35;
        v39 = v46;
        v46(v38, v36);
        v39(v10, v36);
        v40 = *(v26 + 8);
        v40(v33, v34);
        v40(v42, v34);
        if (v37)
        {
          return 1;
        }
      }
    }

    else
    {
      (*(v26 + 8))(v20, v56);
    }
  }

  return 0;
}

uint64_t sub_1000EC0C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B02A8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-v6];
  static Axis.Set.vertical.getter();
  v15 = a2;
  v16 = a1;
  sub_100005AD4(&qword_1003B02B0);
  v8 = sub_100005EA8(&qword_1003B02B8);
  v9 = sub_100005EA8(&qword_1003B02C0);
  v10 = sub_10001BAEC(&qword_1003B02C8, &qword_1003B02C0);
  v11 = sub_1000EDE34();
  v17 = v9;
  v18 = &type metadata for UnitPoint;
  v19 = v10;
  v20 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = v8;
  v18 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  ScrollView.init(_:showsIndicators:content:)();
  sub_10001BAEC(&qword_1003B02D8, &qword_1003B02A8);
  View.scrollDisabled(_:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000EC300@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a2;
  v79 = a3;
  v77 = type metadata accessor for ScrollViewProxy();
  v75 = *(v77 - 8);
  v76 = *(v75 + 64);
  __chkstk_darwin(v77);
  v74 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ExpandingLineLimitedTextView();
  v6 = *(v5 - 8);
  v71 = v5 - 8;
  v80 = v6;
  v84 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v82 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TranslateText();
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = (&v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_100005AD4(&qword_1003B02E0);
  __chkstk_darwin(v12);
  v14 = &v59 - v13;
  v67 = sub_100005AD4(&qword_1003B02E8);
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v62 = &v59 - v15;
  v64 = sub_100005AD4(&qword_1003B02F0);
  __chkstk_darwin(v64);
  v17 = &v59 - v16;
  v69 = sub_100005AD4(&qword_1003B02F8);
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v66 = &v59 - v18;
  v83 = sub_100005AD4(&qword_1003B02C0);
  __chkstk_darwin(v83);
  v81 = &v59 - v19;
  v72 = sub_100005AD4(&qword_1003B02B8);
  v73 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v59 - v20;
  v22 = *(a1 + 1);
  v63 = *a1;
  v21 = v63;
  *v11 = swift_getKeyPath();
  sub_100005AD4(&qword_1003B0300);
  swift_storeEnumTagMultiPayload();
  v23 = (v11 + *(v9 + 32));
  *v23 = v21;
  *(v23 + 1) = v22;
  v61 = v22;
  *(v11 + *(v9 + 28)) = 0;
  swift_bridgeObjectRetain_n();
  static Alignment.topLeading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1000EDE90(v11, v14, type metadata accessor for TranslateText);
  v24 = &v14[*(v12 + 36)];
  v25 = v97;
  v26 = v98;
  *(v24 + 4) = v96;
  *(v24 + 5) = v25;
  *(v24 + 6) = v26;
  v27 = v93;
  *v24 = v92;
  *(v24 + 1) = v27;
  v28 = v95;
  *(v24 + 2) = v94;
  *(v24 + 3) = v28;
  v30 = a1[7];
  v90 = *(a1 + 6);
  v29 = v90;
  v91 = v30;
  sub_100005AD4(&qword_1003AA820);
  State.projectedValue.getter();
  sub_1000EDEF8();
  v31 = v62;
  View.bindGeometry(to:reader:)();

  sub_1000EDFB4(v14);
  (*(v65 + 4))(v17, v31, v67);
  *&v17[*(v64 + 36)] = 256;
  v85 = v29;
  v86 = v30;
  State.wrappedValue.getter();
  v32 = v82;
  sub_1000EDD3C(a1, v82);
  v33 = *(v80 + 80);
  v80 = v33 | 7;
  v67 = (v33 + 16) & ~v33;
  v34 = swift_allocObject();
  v65 = type metadata accessor for ExpandingLineLimitedTextView;
  sub_1000EDE90(v32, v34 + ((v33 + 16) & ~v33), type metadata accessor for ExpandingLineLimitedTextView);
  sub_1000EE09C();
  sub_1000EE164();
  v35 = v66;
  View.onChange<A>(of:initial:_:)();

  sub_100009EBC(v17, &qword_1003B02F0);
  v36 = v81;
  (*(v68 + 32))(v81, v35, v69);
  v37 = &v36[*(v83 + 52)];
  v38 = v61;
  *v37 = v63;
  *(v37 + 1) = v38;
  v39 = *(v71 + 52);
  v60 = a1;
  v40 = *(a1 + v39);
  swift_getKeyPath();
  v85 = v40;
  sub_1000EE1C0(&qword_1003B0328, type metadata accessor for KaraokeProgressMonitor);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v89 = *(v40 + 16);
  v85 = 0x3F80000000000000;
  sub_1000EE208();
  BinaryFloatingPoint.clip(to:)();
  v85 = 0x3FE0000000000000;
  v86 = *&v90;
  v41 = v75;
  v42 = v74;
  v43 = v77;
  (*(v75 + 16))(v74, v78, v77);
  sub_1000EDD3C(a1, v32);
  v44 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v45 = (v76 + v33 + v44) & ~v33;
  v46 = swift_allocObject();
  (*(v41 + 32))(v46 + v44, v42, v43);
  v47 = v32;
  v48 = v65;
  sub_1000EDE90(v47, v46 + v45, v65);
  v49 = sub_10001BAEC(&qword_1003B02C8, &qword_1003B02C0);
  v50 = sub_1000EDE34();
  v51 = v70;
  v52 = v83;
  v53 = v81;
  View.onChange<A>(of:initial:_:)();

  sub_100009EBC(v53, &qword_1003B02C0);
  v54 = v82;
  sub_1000EDD3C(v60, v82);
  v55 = v67;
  v56 = swift_allocObject();
  sub_1000EDE90(v54, v56 + v55, v48);
  v85 = v52;
  v86 = COERCE_DOUBLE(&type metadata for UnitPoint);
  v87 = v49;
  v88 = v50;
  swift_getOpaqueTypeConformance2();
  v57 = v72;
  View.onTapGesture(count:perform:)();

  return (*(v73 + 8))(v51, v57);
}

void sub_1000ECE10(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = type metadata accessor for ExpandingLineLimitedTextView();
  v6 = v5 - 8;
  v7 = __chkstk_darwin(v5);
  v69 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v68 = v53 - v9;
  v10 = sub_100005AD4(&qword_1003B0338);
  __chkstk_darwin(v10 - 8);
  v12 = v53 - v11;
  v13 = sub_100005AD4(&qword_1003B0340);
  __chkstk_darwin(v13 - 8);
  v15 = v53 - v14;
  v16 = type metadata accessor for Text.Measurements.Context();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a2;
  v70 = *(v6 + 48);
  v21 = a3;
  v22 = a3[1];
  v63 = *a3;
  *&v72 = v63;
  *(&v72 + 1) = v22;
  v23 = sub_10001F278();
  v62 = v22;
  swift_bridgeObjectRetain_n();
  v61 = v23;
  v24 = Text.init<A>(_:)();
  v26 = v25;
  v28 = v27;
  v29 = type metadata accessor for Text.WritingMode();
  v30 = *(v29 - 8);
  v59 = *(v30 + 56);
  v60 = v29;
  v58 = v30 + 56;
  v59(v15, 1, 1);
  v31 = type metadata accessor for Text.Suffix();
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v57 = v31;
  v56 = v33;
  v55 = v32 + 56;
  (v33)(v12, 1, 1);
  v64 = v15;
  v65 = v12;
  Text.Measurements.Context.init(writingMode:textSuffix:)();
  v66 = v21;
  v34 = Text.Measurements.numberOfLines(of:in:context:)();
  sub_10002EA54(v24, v26, v28 & 1);

  v35 = *(v17 + 8);
  v67 = v16;
  (v35)(v19, v16);
  if (v34 < 0)
  {
    __break(1u);
  }

  else
  {
    v54 = v35;
    v35 = v66;
    v72 = *(v66 + 32);
    v71 = v34;
    v53[1] = sub_100005AD4(&qword_1003AF578);
    State.wrappedValue.setter();
    *&v72 = v63;
    *(&v72 + 1) = v62;
    v36 = Text.init<A>(_:)();
    v38 = v37;
    v40 = v39;
    (v59)(v64, 1, 1, v60);
    v56(v65, 1, 1, v57);
    Text.Measurements.Context.init(writingMode:textSuffix:)();
    Text.Measurements.size(of:in:context:)();
    v42 = v41;
    sub_10002EA54(v36, v38, v40 & 1);

    v54(v19, v67);
    v43 = *(v35 + 72);
    *&v72 = *(v35 + 64);
    *(&v72 + 1) = v43;
    v71 = v42;
    sub_100005AD4(&qword_1003AA820);
    State.wrappedValue.setter();
    if (qword_1003A9258 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v44 = type metadata accessor for Logger();
  sub_1000078E8(v44, qword_1003D2818);
  v45 = v68;
  sub_1000EDD3C(v35, v68);
  v46 = v69;
  sub_1000EDD3C(v35, v69);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 134218496;
    *(v49 + 4) = v20;
    *(v49 + 12) = 2048;
    v72 = *(v45 + 32);
    State.wrappedValue.getter();
    v50 = v71;
    sub_1000EE690(v45);
    *(v49 + 14) = v50;
    *(v49 + 22) = 2048;
    v51 = *(v46 + 72);
    *&v72 = *(v46 + 64);
    *(&v72 + 1) = v51;
    State.wrappedValue.getter();
    v52 = v71;
    sub_1000EE690(v46);
    *(v49 + 24) = v52;
    _os_log_impl(&_mh_execute_header, v47, v48, "availableWidth changed to %f, %ld lines, %f pt high", v49, 0x20u);
  }

  else
  {
    sub_1000EE690(v45);

    sub_1000EE690(v46);
  }
}

void sub_1000ED438(double *a1, double *a2, uint64_t a3, double *a4)
{
  v6 = *a1;
  v5 = a1[1];
  v8 = *a2;
  v7 = a2[1];
  if (qword_1003A9258 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000078E8(v9, qword_1003D2818);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v12 = 136315394;
    v24 = v6;
    v25 = v5;
    v13 = String.init<A>(describing:)();
    v15 = sub_10028D78C(v13, v14, &v23);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v24 = v8;
    v25 = v7;
    v16 = String.init<A>(describing:)();
    v18 = sub_10028D78C(v16, v17, &v23);

    *(v12 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "monitor changed from %s to %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  v19 = round(v5);
  if (v7 != 0.0 || v19 != 1.0)
  {
    v21 = a4[1];
    v24 = *a4;
    v25 = v21;
    v22 = *(a4 + *(type metadata accessor for ExpandingLineLimitedTextView() + 44));
    swift_getKeyPath();
    v23 = v22;
    sub_1000EE1C0(&qword_1003B0328, type metadata accessor for KaraokeProgressMonitor);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v23 = 0x3F80000000000000;
    sub_1000EE208();
    BinaryFloatingPoint.clip(to:)();
    ScrollViewProxy.scrollTo<A>(_:anchor:)();
  }
}

uint64_t sub_1000ED70C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  State.init(wrappedValue:)();
  *(a5 + 32) = v10;
  State.init(wrappedValue:)();
  *(a5 + 48) = v10;
  State.init(wrappedValue:)();
  *(a5 + 64) = v10;
  sub_100005AD4(&qword_1003B01F0);
  State.init(wrappedValue:)();
  *(a5 + 80) = v10;
  *(a5 + 88) = BYTE8(v10);
  *(a5 + 96) = v11;
  v6 = type metadata accessor for ExpandingLineLimitedTextView();
  Text.Measurements.init()();
  v7 = *(v6 + 44);
  type metadata accessor for KaraokeProgressMonitor(0);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  result = ObservationRegistrar.init()();
  *(a5 + v7) = v8;
  return result;
}

uint64_t type metadata accessor for ExpandingLineLimitedTextView()
{
  result = qword_1003B0250;
  if (!qword_1003B0250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000ED8A8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Text.Measurements();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000ED968(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Text.Measurements();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000EDA0C()
{
  sub_1000EDB78(319, &qword_1003B29B0, &unk_1003B27F0, &unk_1002D4010, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1000A9B3C(319, &qword_1003AEF18);
    if (v1 <= 0x3F)
    {
      sub_1000A9B3C(319, &qword_1003AE538);
      if (v2 <= 0x3F)
      {
        sub_1000EDB78(319, &unk_1003B0260, &qword_1003B01F0, &unk_1002DCBB0, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Text.Measurements();
          if (v4 <= 0x3F)
          {
            type metadata accessor for KaraokeProgressMonitor(319);
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

void sub_1000EDB78(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100005EA8(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1000EDBF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1 - 8;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  v7 = static Alignment.bottomTrailing.getter();
  v9 = v8;
  sub_1000EDD3C(v2, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_1000EDE90(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for ExpandingLineLimitedTextView);
  KeyPath = swift_getKeyPath();
  v13 = *(v2 + *(v4 + 52));
  *a2 = v7;
  a2[1] = v9;
  a2[2] = sub_1000EDDA4;
  a2[3] = v11;
  a2[4] = KeyPath;
  a2[5] = v13;
}

uint64_t sub_1000EDD3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExpandingLineLimitedTextView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EDDA4(uint64_t a1)
{
  v3 = *(type metadata accessor for ExpandingLineLimitedTextView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000EC0C0(a1, v4);
}

unint64_t sub_1000EDE34()
{
  result = qword_1003B02D0;
  if (!qword_1003B02D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B02D0);
  }

  return result;
}

uint64_t sub_1000EDE90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000EDEF8()
{
  result = qword_1003B0308;
  if (!qword_1003B0308)
  {
    sub_100005EA8(&qword_1003B02E0);
    sub_1000EE1C0(&qword_1003B0310, type metadata accessor for TranslateText);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B0308);
  }

  return result;
}

uint64_t sub_1000EDFB4(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B02E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000EE01C(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for ExpandingLineLimitedTextView() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_1000ECE10(a1, a2, v6);
}

unint64_t sub_1000EE09C()
{
  result = qword_1003B0318;
  if (!qword_1003B0318)
  {
    sub_100005EA8(&qword_1003B02F0);
    sub_100005EA8(&qword_1003B02E0);
    sub_1000EDEF8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B0318);
  }

  return result;
}

unint64_t sub_1000EE164()
{
  result = qword_1003B0320;
  if (!qword_1003B0320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B0320);
  }

  return result;
}

uint64_t sub_1000EE1C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000EE208()
{
  result = qword_1003B0330;
  if (!qword_1003B0330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B0330);
  }

  return result;
}

uint64_t sub_1000EE25C()
{
  v1 = type metadata accessor for ScrollViewProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for ExpandingLineLimitedTextView();
  v7 = *(*(v6 - 8) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 8) + 64);
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v8 + 16))
  {
  }

  v10 = v3 | v7;

  v11 = *(v6 + 40);
  v12 = type metadata accessor for Text.Measurements();
  (*(*(v12 - 8) + 8))(v0 + v8 + v11, v12);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

void sub_1000EE410(double *a1, double *a2)
{
  v5 = *(type metadata accessor for ScrollViewProxy() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ExpandingLineLimitedTextView() - 8);
  v9 = (v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)));

  sub_1000ED438(a1, a2, v2 + v6, v9);
}

uint64_t sub_1000EE4F4()
{
  v1 = type metadata accessor for ExpandingLineLimitedTextView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  if (*(v0 + v3 + 16))
  {
  }

  v5 = *(v1 + 40);
  v6 = type metadata accessor for Text.Measurements();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000EE624()
{
  v1 = type metadata accessor for ExpandingLineLimitedTextView();
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = *(v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 16);
  if (v4)
  {
    return v4();
  }

  return result;
}

uint64_t sub_1000EE690(uint64_t a1)
{
  v2 = type metadata accessor for ExpandingLineLimitedTextView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000EE74C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100005AD4(&qword_1003B2300);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000EE81C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100005AD4(&qword_1003B2300);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for FaceToFaceHalfView()
{
  result = qword_1003B03B0;
  if (!qword_1003B03B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000EE918()
{
  sub_10008217C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DeviceHelper();
    if (v1 <= 0x3F)
    {
      sub_1000A9AA8();
      if (v2 <= 0x3F)
      {
        sub_1000EEB40(319, &qword_1003B2380, &qword_1003AC848, &unk_1002D66A0, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_10005C478();
          if (v4 <= 0x3F)
          {
            sub_10005C50C();
            if (v5 <= 0x3F)
            {
              sub_1000EEAF0();
              if (v6 <= 0x3F)
              {
                sub_10002ACA4();
                if (v7 <= 0x3F)
                {
                  sub_1000EEB40(319, &qword_1003B03C0, &unk_1003B03C8, &unk_1002DCD30, &type metadata accessor for State);
                  if (v8 <= 0x3F)
                  {
                    sub_1000EEB40(319, &qword_1003B29B0, &unk_1003B27F0, &unk_1002D4010, &type metadata accessor for Optional);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1000EEAF0()
{
  if (!qword_1003AE538)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1003AE538);
    }
  }
}

void sub_1000EEB40(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100005EA8(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

BOOL sub_1000EEBC0()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_translationOptions);
  v3 = sub_1000B7FE0();

  v4 = sub_10022CDDC(v3);

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v9[3] = &type metadata for TranslateFeatures;
  v9[4] = sub_100009DF8();
  LOBYTE(v9[0]) = 8;
  v5 = isFeatureEnabled(_:)();
  sub_100008664(v9);
  if ((v5 & 1) != 0 && (v6 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_deviceHelper), swift_getKeyPath(), v9[0] = v6, sub_1000F0BF8(&qword_1003AE978, type metadata accessor for DeviceHelper), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v7 = v6 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice, swift_beginAccess(), *(v7 + 8)))
  {
    return (*(v7 + 72) & 0xFFFFFFFFFFFFFFFELL) == 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000EED4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for ConversationList();
  __chkstk_darwin(v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 8);
  v30 = *(a1 + 40);
  v7 = (a1 + *(type metadata accessor for FaceToFaceHalfView() + 64));
  v8 = *v7;
  v9 = v7[1];
  v29 = v6;
  sub_10001AD18(v8);
  type metadata accessor for SceneContext();
  sub_1000F0BF8(&qword_1003AC860, type metadata accessor for SceneContext);
  v10 = EnvironmentObject.init()();
  v12 = v11;
  type metadata accessor for ConversationContext(0);
  sub_1000F0BF8(&unk_1003BC490, type metadata accessor for ConversationContext);
  v13 = EnvironmentObject.init()();
  v15 = v14;
  *&v5[*(v3 + 32)] = swift_getKeyPath();
  sub_100005AD4(&qword_1003B23E0);
  swift_storeEnumTagMultiPayload();
  *v5 = v29;
  v5[8] = v30;
  *(v5 + 2) = v10;
  *(v5 + 3) = v12;
  *(v5 + 4) = v13;
  *(v5 + 5) = v15;
  v16 = &v5[*(v3 + 36)];
  *v16 = v8;
  v16[1] = v9;
  Solarium.init()();
  v32 = a1;
  sub_100005AD4(&qword_1003B0448);
  v17 = sub_1000F0BF8(&qword_1003AE880, type metadata accessor for ConversationList);
  v18 = sub_100005EA8(&qword_1003B0450);
  v19 = sub_100005EA8(&qword_1003B0458);
  v20 = sub_1000F0914();
  v33 = v19;
  v34 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v3;
  v34 = v18;
  v35 = v17;
  v36 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v22 = v31;
  View.staticIf<A, B>(_:then:)();
  sub_1000F09D4(v5);
  v23 = static Color.appBackgroundColor.getter();
  LOBYTE(v3) = static Edge.Set.all.getter();
  v24 = v22 + *(sub_100005AD4(&qword_1003B0440) + 36);
  *v24 = v23;
  *(v24 + 8) = v3;
  v25 = static SafeAreaRegions.all.getter();
  LOBYTE(v3) = static Edge.Set.vertical.getter();
  result = sub_100005AD4(&qword_1003B0428);
  v27 = v22 + *(result + 36);
  *v27 = v25;
  *(v27 + 8) = v3;
  return result;
}

uint64_t sub_1000EF0B0()
{
  type metadata accessor for ConversationList();
  sub_100005AD4(&qword_1003B0450);
  sub_1000F0BF8(&qword_1003AE880, type metadata accessor for ConversationList);
  sub_100005EA8(&qword_1003B0458);
  sub_1000F0914();
  swift_getOpaqueTypeConformance2();
  return View.toolbar<A>(content:)();
}

uint64_t sub_1000EF1BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = sub_100005AD4(&qword_1003B0478);
  __chkstk_darwin(v3);
  v51 = v41 - v4;
  v5 = sub_100005AD4(&qword_1003B0470);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v41 - v7;
  v9 = sub_100005AD4(&qword_1003B0480);
  v49 = *(v9 - 8);
  __chkstk_darwin(v9);
  v52 = v41 - v10;
  v11 = type metadata accessor for SpacerSizing();
  __chkstk_darwin(v11 - 8);
  v47 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for ToolbarSpacer();
  v50 = *(v56 - 8);
  __chkstk_darwin(v56);
  v58 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v14 - 8);
  v54 = sub_100005AD4(&qword_1003AF038);
  v48 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = v41 - v15;
  v55 = sub_100005AD4(&qword_1003B0458);
  v16 = __chkstk_darwin(v55);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v41 - v19;
  if (*(a1 + 40))
  {
    (*(v6 + 56))(v18, 1, 1, v5);
    sub_10001BAEC(&qword_1003B0468, &qword_1003B0470);
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_1000F0A38(v18);
  }

  else
  {
    v21 = static ToolbarItemPlacement.bottomBar.getter();
    v41[1] = v41;
    __chkstk_darwin(v21);
    v45 = v9;
    v46 = v6;
    v22 = a1;
    v41[-2] = a1;
    sub_100005AD4(&qword_1003AF050);
    v42 = v3;
    v43 = v8;
    v23 = sub_100005EA8(&qword_1003AF058);
    v44 = v5;
    v24 = v23;
    v25 = sub_1000B05A4();
    v26 = sub_10001BAEC(&qword_1003AF068, &qword_1003AF058);
    v59 = &type metadata for MoreOptionsMenu;
    v60 = v24;
    v61 = v25;
    v62 = v26;
    swift_getOpaqueTypeConformance2();
    v27 = v53;
    ToolbarItem<>.init(placement:content:)();
    static ToolbarItemPlacement.bottomBar.getter();
    static SpacerSizing.flexible.getter();
    ToolbarSpacer.init(_:placement:)();
    v28 = static ToolbarItemPlacement.bottomBar.getter();
    __chkstk_darwin(v28);
    v41[-2] = v22;
    sub_100005AD4(&qword_1003AB5A8);
    sub_10002EFE4();
    v29 = v52;
    ToolbarItem<>.init(placement:content:)();
    v30 = *(v42 + 48);
    v31 = *(v42 + 64);
    v47 = v20;
    v32 = v48;
    v33 = v51;
    (*(v48 + 16))(v51, v27, v54);
    v34 = v50;
    (*(v50 + 16))(&v33[v30], v58, v56);
    v35 = v49;
    v36 = v45;
    (*(v49 + 16))(&v33[v31], v29, v45);
    v37 = v43;
    v20 = v47;
    TupleToolbarContent.init(_:)();
    v38 = v46;
    v39 = v44;
    (*(v46 + 16))(v18, v37, v44);
    (*(v38 + 56))(v18, 0, 1, v39);
    sub_10001BAEC(&qword_1003B0468, &qword_1003B0470);
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_1000F0A38(v18);
    (*(v38 + 8))(v37, v39);
    (*(v35 + 8))(v29, v36);
    (*(v34 + 8))(v58, v56);
    (*(v32 + 8))(v53, v54);
  }

  sub_1000F0914();
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return sub_1000F0A38(v20);
}

uint64_t sub_1000EF958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = sub_1000EEBC0();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*&v21[0] >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((*&v21[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = v4 != 0;
  v6 = *(a1 + 16);
  swift_getKeyPath();
  *&v21[0] = v6;
  sub_1000F0BF8(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v6) = *(v6 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAnyHeadsetConnected);
  type metadata accessor for SharedTranslationOptions();
  sub_1000F0BF8(&qword_1003AE918, type metadata accessor for SharedTranslationOptions);
  v7 = EnvironmentObject.init()();
  v9 = v8;
  type metadata accessor for SceneContext();
  sub_1000F0BF8(&qword_1003AC860, type metadata accessor for SceneContext);
  *&v18 = v7;
  *(&v18 + 1) = v9;
  *&v19 = EnvironmentObject.init()();
  *(&v19 + 1) = v10;
  *v20 = xmmword_1002D3300;
  v20[16] = v3;
  v20[17] = v5;
  v20[18] = v6;
  v16 = LocalizedStringKey.init(stringLiteral:)();
  v15 = v11;
  type metadata accessor for FaceToFaceHalfView();
  EnvironmentObject.projectedValue.getter();
  swift_getKeyPath();
  EnvironmentObject.Wrapper.subscript.getter();

  v14 = &v14;
  __chkstk_darwin(v12);
  sub_100005AD4(&qword_1003AF058);
  sub_1000B05A4();
  sub_10001BAEC(&qword_1003AF068, &qword_1003AF058);
  View.confirmationDialog<A>(_:isPresented:titleVisibility:actions:)();

  v21[0] = v18;
  v21[1] = v19;
  v22[0] = *v20;
  *(v22 + 15) = *&v20[15];
  return sub_1000B0958(v21);
}

uint64_t sub_1000EFD2C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a1;
  v48 = a2;
  v3 = type metadata accessor for FaceToFaceHalfView();
  v44 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v38 = v4;
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005AD4(&qword_1003ADA30);
  __chkstk_darwin(v6 - 8);
  v8 = v37 - v7;
  v9 = sub_100005AD4(&qword_1003AA540);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v47 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v46 = v37 - v14;
  v15 = __chkstk_darwin(v13);
  v45 = v37 - v16;
  __chkstk_darwin(v15);
  v18 = v37 - v17;
  v19 = LocalizedStringKey.init(stringLiteral:)();
  v40 = v20;
  v41 = v19;
  v37[1] = v21;
  v39 = v22;
  static ButtonRole.destructive.getter();
  v23 = type metadata accessor for ButtonRole();
  v42 = *(*(v23 - 8) + 56);
  v42(v8, 0, 1, v23);
  sub_1000F0AB0(a1, v5);
  v24 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v25 = swift_allocObject();
  sub_1000F0B18(v5, v25 + v24);
  Button<>.init(_:role:action:)();
  v44 = LocalizedStringKey.init(stringLiteral:)();
  v40 = v27;
  v41 = v26;
  static ButtonRole.cancel.getter();
  v42(v8, 0, 1, v23);
  sub_1000F0AB0(v43, v5);
  v28 = swift_allocObject();
  sub_1000F0B18(v5, v28 + v24);
  v29 = v45;
  Button<>.init(_:role:action:)();
  v30 = *(v10 + 16);
  v31 = v46;
  v30(v46, v18, v9);
  v32 = v47;
  v30(v47, v29, v9);
  v33 = v48;
  v30(v48, v31, v9);
  v34 = sub_100005AD4(&qword_1003AF070);
  v30(&v33[*(v34 + 48)], v32, v9);
  v35 = *(v10 + 8);
  v35(v29, v9);
  v35(v18, v9);
  v35(v32, v9);
  return (v35)(v31, v9);
}

uint64_t sub_1000F01A0(uint64_t a1)
{
  v1 = *(*(a1 + 8) + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_session);
  sub_1000085CC((v1 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store), *(v1 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store + 24));
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  dispatch thunk of TranslationStore.clearHistory(sessionID:completion:)();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_lidDisambiguationCounter) = 0;
}

uint64_t sub_1000F02E4(uint64_t a1)
{
  if (*(a1 + *(type metadata accessor for FaceToFaceHalfView() + 40)))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  else
  {
    type metadata accessor for SceneContext();
    sub_1000F0BF8(&qword_1003AC860, type metadata accessor for SceneContext);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000F03C8(uint64_t a1)
{
  v2 = type metadata accessor for FaceToFaceHalfView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_100005AD4(&qword_1003AB5A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_1000F0AB0(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1000F0B18(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  Button.init(action:label:)();
  sub_10001BAEC(&qword_1003AB5B8, &qword_1003AB5A0);
  View.accessibilityIdentifier(_:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000F05FC@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_1000F0634()
{
  sub_100005AD4(&qword_1003B0428);
  sub_1000F06AC();
  return NavigationStack.init<>(root:)();
}

unint64_t sub_1000F06AC()
{
  result = qword_1003B0430;
  if (!qword_1003B0430)
  {
    sub_100005EA8(&qword_1003B0428);
    sub_1000F0738();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B0430);
  }

  return result;
}

unint64_t sub_1000F0738()
{
  result = qword_1003B0438;
  if (!qword_1003B0438)
  {
    sub_100005EA8(&qword_1003B0440);
    type metadata accessor for ConversationList();
    sub_100005EA8(&qword_1003B0448);
    sub_1000F0BF8(&qword_1003AE880, type metadata accessor for ConversationList);
    sub_100005EA8(&qword_1003B0450);
    sub_100005EA8(&qword_1003B0458);
    sub_1000F0914();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10001BAEC(&qword_1003ADB10, &qword_1003ADB18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B0438);
  }

  return result;
}

unint64_t sub_1000F0914()
{
  result = qword_1003B0460;
  if (!qword_1003B0460)
  {
    sub_100005EA8(&qword_1003B0458);
    sub_10001BAEC(&qword_1003B0468, &qword_1003B0470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B0460);
  }

  return result;
}

uint64_t sub_1000F09D4(uint64_t a1)
{
  v2 = type metadata accessor for ConversationList();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F0A38(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B0458);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F0AB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FaceToFaceHalfView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F0B18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FaceToFaceHalfView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F0BF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000F0C68()
{
  v1 = type metadata accessor for FaceToFaceHalfView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[8];
  sub_100005AD4(&qword_1003B23E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for UserInterfaceSizeClass();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  if (*(v5 + v1[16]))
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000F0E78(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for FaceToFaceHalfView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1000F0F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v49 = a2;
  v4 = sub_100005AD4(&qword_1003B0498);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = v40 - v6;
  v47 = sub_100005AD4(&qword_1003B04A0);
  __chkstk_darwin(v47);
  v46 = v40 - v8;
  v9 = *(v2 + 16);
  v80 = *(v2 + 24);
  v69 = *(v2 + 24);
  v45 = v9;
  sub_100005AD4(&qword_1003B04A8);
  State.wrappedValue.getter();
  v44 = v58;
  v10 = type metadata accessor for ConversationContext(0);
  v40[1] = sub_1000F154C(&unk_1003BC490, type metadata accessor for ConversationContext);
  v40[2] = v10;
  v11 = EnvironmentObject.init()();
  v42 = v12;
  v43 = v11;
  v13 = v12;
  type metadata accessor for SceneContext();
  sub_1000F154C(&qword_1003AC860, type metadata accessor for SceneContext);
  v14 = EnvironmentObject.init()();
  v41 = v14;
  v16 = v15;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *(v79 + 7) = *&v79[7];
  *(&v79[2] + 7) = *&v79[9];
  *(&v79[4] + 7) = *&v79[11];
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v17 = static Alignment.center.getter();
  v19 = v18;
  *&v58 = v11;
  *(&v58 + 1) = v13;
  *&v59 = v14;
  *(&v59 + 1) = v16;
  v20 = v45;
  *&v60[0] = v45;
  LOBYTE(v14) = v44;
  BYTE8(v60[0]) = v44;
  *(v60 + 9) = *v79;
  *(&v60[1] + 9) = *&v79[2];
  *(&v60[2] + 9) = *&v79[4];
  *(&v60[3] + 1) = *(&v79[5] + 7);
  v61 = v51;
  v62 = v52;
  v66 = v56;
  v67 = v57;
  v64 = v54;
  v65 = v55;
  v63 = v53;
  *&v68 = v17;
  *(&v68 + 1) = v18;
  v21 = sub_100005AD4(&qword_1003B04B0);
  (*(*(v21 - 8) + 16))(v7, v48, v21);
  v22 = *(v5 + 44);
  v48 = v7;
  v23 = &v7[v22];
  v24 = v66;
  *(v23 + 10) = v65;
  *(v23 + 11) = v24;
  v25 = v68;
  *(v23 + 12) = v67;
  *(v23 + 13) = v25;
  v26 = v62;
  *(v23 + 6) = v61;
  *(v23 + 7) = v26;
  v27 = v64;
  *(v23 + 8) = v63;
  *(v23 + 9) = v27;
  v28 = v60[1];
  *(v23 + 2) = v60[0];
  *(v23 + 3) = v28;
  v29 = v60[3];
  *(v23 + 4) = v60[2];
  *(v23 + 5) = v29;
  v30 = v59;
  *v23 = v58;
  *(v23 + 1) = v30;
  *&v69 = v43;
  *(&v69 + 1) = v42;
  v70 = v41;
  v71 = v16;
  v72 = v20;
  v73 = v14;
  v74 = *v79;
  v75 = *&v79[2];
  *v76 = *&v79[4];
  *&v76[15] = *(&v79[5] + 7);
  *&v76[23] = v51;
  *&v76[39] = v52;
  *&v76[103] = v56;
  *&v76[119] = v57;
  *&v76[71] = v54;
  *&v76[87] = v55;
  *&v76[55] = v53;
  v77 = v17;
  v78 = v19;
  sub_10001F620(&v58, v50, &qword_1003B04B8);
  sub_100009EBC(&v69, &qword_1003B04B8);
  v31 = *v3;
  if (*v3)
  {

    v32 = sub_100199AD8(v20, v31);

    v33 = swift_allocObject();
    v34 = *(v3 + 16);
    *(v33 + 16) = *v3;
    *(v33 + 32) = v34;
    *(v33 + 48) = *(v3 + 32);
    v35 = v46;
    sub_100023BD4(v48, v46, &qword_1003B0498);
    v36 = v47;
    *(v35 + *(v47 + 52)) = v32;
    v37 = (v35 + *(v36 + 56));
    *v37 = sub_1000F15DC;
    v37[1] = v33;
    sub_100023BD4(v35, v49, &qword_1003B04A0);
    v38 = v20;

    return sub_10001F620(&v80, v50, &qword_1003B04A8);
  }

  else
  {
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000F1484(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v5 = *(a2 + 24);
  v6 = v5;
  v7 = *(&v5 + 1);
  sub_10001F620(&v7, v4, &qword_1003B04C0);
  sub_100005AD4(&qword_1003B04A8);
  State.wrappedValue.getter();
  if (v4[0] != v2)
  {
    v5 = v6;
    v4[0] = v2;
    State.wrappedValue.setter();
  }

  return sub_100009EBC(&v6, &qword_1003B04A8);
}

uint64_t sub_1000F154C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000F1594()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_1000F15E8()
{
  result = qword_1003B04C8;
  if (!qword_1003B04C8)
  {
    sub_100005EA8(&qword_1003B04A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B04C8);
  }

  return result;
}

uint64_t sub_1000F164C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000F1694(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1000F16F0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v39 = *(v7 - 1);
  __chkstk_darwin(v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 2);
  if (!v10)
  {
    type metadata accessor for SceneContext();
    sub_1000F2284(&qword_1003AC860, type metadata accessor for SceneContext);
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_18;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  static Published.subscript.getter();

  v11 = LOBYTE(aBlock[0]);
  if (*(v1 + 40))
  {
    if (aBlock[0])
    {
      v12 = [a1 presentedViewController];
      if (v12)
      {
        v13 = v12;
        type metadata accessor for FaceToFaceViewController();
        v14 = swift_dynamicCastClass();

        if (v14)
        {
          sub_100026AA0();
          v38 = static OS_dispatch_queue.main.getter();
          v43 = *v2;
          v15 = *(v2 + 4);
          v16 = swift_allocObject();
          v17 = v2[1];
          *(v16 + 16) = *v2;
          *(v16 + 32) = v17;
          *(v16 + 41) = *(v2 + 25);
          *(v16 + 64) = a1;
          aBlock[4] = sub_1000F224C;
          aBlock[5] = v16;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100096948;
          aBlock[3] = &unk_100384130;
          v37 = _Block_copy(aBlock);

          sub_10001F620(&v43, v41, &qword_1003B04D8);
          v18 = v15;
          v19 = a1;

          static DispatchQoS.unspecified.getter();
          aBlock[0] = _swiftEmptyArrayStorage;
          sub_1000F2284(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
          sub_100005AD4(&unk_1003A9C50);
          sub_100011604();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v21 = v37;
          v20 = v38;
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v21);

          (*(v40 + 8))(v6, v4);
          (*(v39 + 8))(v9, v7);
        }
      }
    }
  }

  v22 = [a1 presentedViewController];
  if (!v22)
  {
    if ((v11 & 1) == 0)
    {
      goto LABEL_12;
    }

    v7 = *(v2 + 4);
    v23 = *v2;
    if (*v2)
    {
      v24 = objc_allocWithZone(type metadata accessor for FaceToFaceViewController());
      v25 = v7;

      v26 = sub_1000F2868(v25, v23, v10);
      [v26 setModalPresentationStyle:5];
      [v26 setModalTransitionStyle:2];
      v27 = swift_allocObject();
      v28 = v2[1];
      *(v27 + 16) = *v2;
      *(v27 + 32) = v28;
      *(v27 + 41) = *(v2 + 25);
      *(v27 + 64) = a1;
      v29 = &v26[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_onCloseTap];
      v30 = *&v26[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_onCloseTap];
      *v29 = sub_1000F2240;
      v29[1] = v27;

      v31 = a1;
      v32 = v25;

      sub_10001ABE4(v30);
      [v31 presentViewController:v26 animated:1 completion:0];

      goto LABEL_13;
    }

LABEL_18:
    type metadata accessor for ConversationContext(0);
    sub_1000F2284(&unk_1003BC490, type metadata accessor for ConversationContext);
    v36 = v7;
    EnvironmentObject.error()();
    __break(1u);
    return;
  }

LABEL_12:

LABEL_13:
  v33 = [a1 presentedViewController];
  if (v33)
  {
    v34 = v33;
    type metadata accessor for FaceToFaceViewController();
    v35 = swift_dynamicCastClass() == 0;

    if (((v35 | v11) & 1) == 0)
    {
      [a1 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t sub_1000F1CEC(__int128 *a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v8 = *(v21 - 8);
  __chkstk_darwin(v21);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026AA0();
  v11 = static OS_dispatch_queue.main.getter();
  v12 = *a1;
  v24 = a1[1];
  v25 = v12;
  v13 = *(a1 + 4);
  v14 = swift_allocObject();
  v15 = a1[1];
  *(v14 + 16) = *a1;
  *(v14 + 32) = v15;
  *(v14 + 41) = *(a1 + 25);
  *(v14 + 64) = a2;
  aBlock[4] = sub_1000F2380;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_100384180;
  v16 = _Block_copy(aBlock);
  sub_10001F620(&v25, v22, &qword_1003B04D8);
  sub_10001F620(&v24, v22, &qword_1003B04E0);
  v17 = v13;
  v18 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000F2284(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50);
  sub_100011604();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v21);
}

id sub_1000F1FFC(uint64_t a1, void *a2)
{
  if (*(a1 + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
    return [a2 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    type metadata accessor for SceneContext();
    sub_1000F2284(&qword_1003AC860, type metadata accessor for SceneContext);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000F20EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F231C();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000F2150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F231C();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000F21B4()
{
  sub_1000F231C();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1000F21E0()
{
  result = qword_1003B04D0;
  if (!qword_1003B04D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B04D0);
  }

  return result;
}

uint64_t sub_1000F226C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000F2284(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000F22CC()
{

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_1000F231C()
{
  result = qword_1003B04E8;
  if (!qword_1003B04E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B04E8);
  }

  return result;
}

id sub_1000F2384()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController____lazy_storage___closeButton;
  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController____lazy_storage___closeButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController____lazy_storage___closeButton);
  }

  else
  {
    v4 = sub_1000F23E8(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1000F23E8(uint64_t a1)
{
  v2 = type metadata accessor for UIButton.Configuration.Size();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UIButton.Configuration();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  if (qword_1003A91F0 != -1)
  {
    swift_once();
  }

  if (byte_1003D26A0 == 1)
  {
    v13 = [objc_opt_self() configurationWithPointSize:4 weight:16.0];
    v24 = a1;
    v14 = v13;
    v15 = String._bridgeToObjectiveC()();
    v16 = [objc_opt_self() systemImageNamed:v15 withConfiguration:v14];

    static UIButton.Configuration._glass()();
    v23 = v16;
    UIButton.Configuration.image.setter();
    (*(v3 + 104))(v5, enum case for UIButton.Configuration.Size.large(_:), v2);
    UIButton.Configuration.buttonSize.setter();
    sub_10000A2CC(0, &qword_1003B0608);
    (*(v7 + 16))(v10, v12, v6);
    v17 = UIButton.init(configuration:primaryAction:)();
    sub_10000A2CC(0, &qword_1003B2990);
    v18 = v17;
    v19 = static UIColor.translateAccentColor.getter();
    [v18 setTintColor:v19];

    a1 = v24;
    (*(v7 + 8))(v12, v6);
  }

  else
  {
    v18 = [objc_opt_self() buttonWithType:7];
  }

  v20 = v18;
  v21 = String._bridgeToObjectiveC()();
  [v20 setAccessibilityIdentifier:v21];

  [v20 addTarget:a1 action:"closeButtonPressed" forControlEvents:0x2000];
  return v20;
}

uint64_t sub_1000F27A0()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 != 1)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

id sub_1000F2868(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100005AD4(&qword_1003B23F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v29 - v8;
  v10 = sub_100005AD4(&qword_1003B0610);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - v12;
  v14 = sub_100005AD4(&qword_1003B0618);
  v31 = *(v14 - 8);
  v32 = v14;
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_sourceWindow] = 0;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_targetWindow] = 0;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_flipperWindow] = 0;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_sourceViewController] = 0;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_targetViewController] = 0;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_languageFlipperViewController] = 0;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_deviceOwnerCollectionView] = 0;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_partnerCollectionView] = 0;
  v17 = &v3[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController__flipperHeight];
  v36 = 0x4044000000000000;
  State.init(wrappedValue:)();
  v18 = v34;
  *v17 = v33;
  *(v17 + 1) = v18;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController____lazy_storage___closeButton] = 0;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_closeBottomConstraint] = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v19 = sub_10011ED3C(_swiftEmptyArrayStorage);
  }

  else
  {
    v19 = &_swiftEmptySetSingleton;
  }

  *&v3[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_subscriptions] = v19;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_transitionAnimationDuration] = 0x3FD0000000000000;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_speakButtonMinimumBottomPadding] = 0x4040000000000000;
  v20 = &v3[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_onCloseTap];
  *v20 = 0;
  *(v20 + 1) = 0;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_viewModel] = a1;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_conversationContext] = a2;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_sceneContext] = a3;
  v21 = type metadata accessor for FaceToFaceViewController();
  v35.receiver = v3;
  v35.super_class = v21;
  v30 = a1;

  v22 = objc_msgSendSuper2(&v35, "initWithNibName:bundle:", 0, 0);
  swift_beginAccess();
  v23 = v22;
  v29 = a3;
  v24 = v23;
  sub_100005AD4(&qword_1003AE3F0);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_10000A2CC(0, &qword_1003A9C40);
  v25 = static OS_dispatch_queue.main.getter();
  v33 = v25;
  v26 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
  sub_10001BAEC(&qword_1003B0620, &qword_1003B0610);
  sub_100051450();
  Publisher.receive<A>(on:options:)();
  sub_100009EBC(v9, &qword_1003B23F0);

  (*(v11 + 8))(v13, v10);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10001BAEC(&qword_1003B0628, &qword_1003B0618);
  v27 = v32;
  Publisher<>.sink(receiveValue:)();

  (*(v31 + 8))(v16, v27);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v24;
}

void sub_1000F2DD4(double *a1)
{
  v1 = *a1;
  v2 = a1[2];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_closeBottomConstraint);
    if (v5)
    {
      v6 = fmax(v2, 32.0);
      if (v1 > v2)
      {
        v7 = v1;
      }

      else
      {
        v7 = v2;
      }

      if (v1 < 32.0)
      {
        v8 = v6;
      }

      else
      {
        v8 = v7;
      }

      v9 = v5;
      [v9 setConstant:v8];
      if ([v9 isActive])
      {
        v10 = [v4 view];
        if (!v10)
        {
          __break(1u);
          return;
        }

        v11 = v10;
        [v10 setNeedsLayout];
      }

      v4 = v9;
    }
  }
}

uint64_t sub_1000F2EF8()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for FaceToFaceViewController();
  objc_msgSendSuper2(&v4, "viewDidLoad");
  sub_1000F3538();
  result = sub_1000F27A0();
  if ((result & 1) == 0)
  {
    v2 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_sourceWindow];
    if (v2)
    {
      [v2 setAlpha:0.0];
    }

    v3 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_targetWindow];
    if (v3)
    {
      [v3 setAlpha:0.0];
    }

    result = *&v0[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_flipperWindow];
    if (result)
    {
      return [result setAlpha:0.0];
    }
  }

  return result;
}

void sub_1000F3100(void *a1, double a2, double a3)
{
  v4 = v3;
  v44.receiver = v3;
  v44.super_class = type metadata accessor for FaceToFaceViewController();
  objc_msgSendSuper2(&v44, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  [v3 setNeedsStatusBarAppearanceUpdate];
  v8 = [objc_opt_self() sharedApplication];
  v9 = sub_1002BF214();

  v10 = [v9 windowScene];
  if (v10)
  {

    sub_1000F4D48();
    v11 = objc_opt_self();
    v12 = [v11 mainScreen];
    [v12 bounds];
    v14 = v13;

    v15 = [v4 view];
    if (v15)
    {
      v16 = v15;
      [v15 frame];
      v18 = v17;

      if (v14 != v18)
      {
        goto LABEL_6;
      }

      v19 = [v4 view];
      if (v19)
      {
        v20 = v19;
        [v19 frame];
        v22 = v21;

        if (v22 != a2)
        {
          v24 = [v4 view];
          if (!v24)
          {
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

          v25 = v24;
          [v24 frame];
          v27 = v26;

          v23 = v27 == a3;
          goto LABEL_9;
        }

LABEL_6:
        v23 = 0;
LABEL_9:
        v28 = [v11 mainScreen];
        [v28 bounds];
        v30 = v29;

        if (v30 != a2)
        {
          goto LABEL_12;
        }

        v31 = [v4 view];
        if (v31)
        {
          v32 = v31;
          [v31 frame];
          v34 = v33;

          if (v34 == a2)
          {
LABEL_12:
            if (v23)
            {
LABEL_13:
              v35 = swift_allocObject();
              *(v35 + 16) = v4;
              v43[4] = sub_1000F7E0C;
              v43[5] = v35;
              v43[0] = _NSConcreteStackBlock;
              v43[1] = 1107296256;
              v43[2] = sub_1002A39AC;
              v43[3] = &unk_1003843D8;
              v36 = _Block_copy(v43);
              v37 = v4;

              [a1 animateAlongsideTransition:0 completion:v36];
              _Block_release(v36);
              return;
            }

            goto LABEL_19;
          }

          v38 = [v4 view];
          if (v38)
          {
            v39 = v38;
            [v38 frame];
            v41 = v40;

            v42 = v41 == a3 || v23;
            if (v42)
            {
              goto LABEL_13;
            }

LABEL_19:
            sub_1000F3538();
            return;
          }

LABEL_25:
          __break(1u);
          return;
        }

        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }
}

uint64_t sub_1000F3538()
{
  v136 = type metadata accessor for DispatchWorkItemFlags();
  v135 = *(v136 - 8);
  __chkstk_darwin(v136);
  v134 = &v106 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for DispatchQoS();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v131 = &v106 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for BorderedButtonStyle();
  v130 = *(v129 - 8);
  __chkstk_darwin(v129);
  v126 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_100005AD4(&qword_1003B05A8) - 8;
  __chkstk_darwin(v128);
  v127 = &v106 - v4;
  v142 = sub_100005AD4(&qword_1003B05B0) - 8;
  __chkstk_darwin(v142);
  v6 = &v106 - v5;
  v7 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_viewModel];
  v125 = OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_deviceHelper;
  v8 = *&v7[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_deviceHelper];
  v124 = OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_session;
  v9 = v7;
  v122 = v7;
  v119 = swift_allocObject();
  *(v119 + 16) = v0;
  v138 = swift_allocObject();
  *(v138 + 2) = v0;
  KeyPath = swift_getKeyPath();
  v11 = type metadata accessor for FaceToFaceHalfView();
  *&v6[v11[8]] = KeyPath;
  v123 = sub_100005AD4(&qword_1003B23E0);
  swift_storeEnumTagMultiPayload();
  v139 = type metadata accessor for ConversationContext(0);
  v140 = sub_1000F7BAC(&unk_1003BC490, type metadata accessor for ConversationContext);
  v109 = v0;
  v12 = v9;

  v118 = EnvironmentObject.init()();
  v14 = v13;
  v144 = type metadata accessor for SceneContext();
  v137 = sub_1000F7BAC(&qword_1003AC860, type metadata accessor for SceneContext);
  v15 = EnvironmentObject.init()();
  v17 = v16;
  v143 = type metadata accessor for ConversationViewModel();
  v141 = sub_1000F7BAC(&qword_1003AE4F8, type metadata accessor for ConversationViewModel);
  v18 = v12;
  *v6 = ObservedObject.init(wrappedValue:)();
  *(v6 + 1) = v19;
  *(v6 + 2) = v8;
  v121 = type metadata accessor for TranslationSession_RD();
  v120 = sub_1000F7BAC(&qword_1003AEF10, type metadata accessor for TranslationSession_RD);
  *(v6 + 3) = ObservedObject.init(wrappedValue:)();
  *(v6 + 4) = v20;
  v6[40] = 0;
  v21 = &v6[v11[9]];
  *v21 = v118;
  v21[1] = v14;
  v22 = &v6[v11[10]];
  *v22 = v15;
  v22[1] = v17;
  *&v6[v11[11]] = 0x4040000000000000;
  v23 = &v6[v11[12]];
  *&aBlock = 0x4044000000000000;
  State.init(wrappedValue:)();
  v24 = *(&v152[0] + 1);
  *v23 = *&v152[0];
  *(v23 + 1) = v24;
  *&v6[v11[13]] = 0x4034000000000000;
  v25 = &v6[v11[14]];
  v26 = v119;
  *v25 = sub_1000F801C;
  v25[1] = v26;
  v27 = v11[15];
  *&aBlock = 0;
  v119 = sub_100005AD4(&unk_1003B03C8);
  State.init(wrappedValue:)();
  *&v6[v27] = v152[0];
  v28 = &v6[v11[16]];
  v29 = v138;
  *v28 = sub_1000F7B58;
  v28[1] = v29;
  v30 = static Color.translateAccentColor.getter();
  v31 = swift_getKeyPath();
  v118 = sub_100005AD4(&qword_1003B05B8);
  v32 = &v6[*(v118 + 36)];
  *v32 = v31;
  v32[1] = v30;
  v117 = OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_translationOptions;
  v33 = *&v18[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_translationOptions];
  v34 = type metadata accessor for SharedTranslationOptions();
  v116 = sub_1000F7BAC(&qword_1003AE918, type metadata accessor for SharedTranslationOptions);
  v35 = v33;
  v115 = v34;
  v36 = static ObservableObject.environmentStore.getter();
  v114 = sub_100005AD4(&qword_1003B05C0);
  v37 = &v6[*(v114 + 36)];
  *v37 = v36;
  v37[1] = v35;
  v38 = v109;
  v39 = *&v109[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_sceneContext];
  v40 = static ObservableObject.environmentStore.getter();
  v113 = sub_100005AD4(&qword_1003B05C8);
  v41 = &v6[*(v113 + 36)];
  *v41 = v40;
  v41[1] = v39;
  v112 = v39;

  v42 = static ObservableObject.environmentStore.getter();
  v111 = sub_100005AD4(&qword_1003B05D0);
  v43 = &v6[*(v111 + 36)];
  *v43 = v42;
  v43[1] = v18;
  v107 = v18;
  v44 = *&v38[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_conversationContext];
  v138 = v18;
  v45 = static ObservableObject.environmentStore.getter();
  v46 = &v6[*(v142 + 44)];
  *v46 = v45;
  v46[1] = v44;
  v108 = v44;
  v110 = sub_100005AD4(&qword_1003B05D8);
  v47 = objc_allocWithZone(v110);

  v48 = UIHostingController.init(rootView:)();
  v49 = *&v38[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_sourceViewController];
  *&v38[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_sourceViewController] = v48;

  v50 = *&v125[v122];
  v51 = swift_allocObject();
  *(v51 + 16) = v38;
  v124 = swift_allocObject();
  *(v124 + 16) = v38;
  *&v6[v11[8]] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v125 = v38;

  v52 = EnvironmentObject.init()();
  v54 = v53;
  v55 = EnvironmentObject.init()();
  v57 = v56;
  *v6 = ObservedObject.init(wrappedValue:)();
  *(v6 + 1) = v58;
  *(v6 + 2) = v50;
  *(v6 + 3) = ObservedObject.init(wrappedValue:)();
  *(v6 + 4) = v59;
  v6[40] = 1;
  v60 = &v6[v11[9]];
  *v60 = v52;
  v60[1] = v54;
  v61 = &v6[v11[10]];
  *v61 = v55;
  v61[1] = v57;
  *&v6[v11[11]] = 0x4040000000000000;
  v62 = &v6[v11[12]];
  *&aBlock = 0x4044000000000000;
  State.init(wrappedValue:)();
  v63 = *(&v152[0] + 1);
  *v62 = *&v152[0];
  *(v62 + 1) = v63;
  *&v6[v11[13]] = 0x4034000000000000;
  v64 = &v6[v11[14]];
  *v64 = sub_1000F7BFC;
  v64[1] = v51;
  v65 = v11[15];
  *&aBlock = 0;
  State.init(wrappedValue:)();
  *&v6[v65] = v152[0];
  v66 = &v6[v11[16]];
  v67 = v124;
  *v66 = sub_1000F7C20;
  v66[1] = v67;
  v68 = static Color.translateAccentColor.getter();
  v69 = swift_getKeyPath();
  v70 = &v6[*(v118 + 36)];
  *v70 = v69;
  v70[1] = v68;
  v71 = v107;
  v72 = *&v107[v117];
  v73 = static ObservableObject.environmentStore.getter();
  v74 = &v6[*(v114 + 36)];
  *v74 = v73;
  v74[1] = v72;
  v75 = static ObservableObject.environmentStore.getter();
  v76 = &v6[*(v113 + 36)];
  *v76 = v75;
  v76[1] = v112;

  v77 = v125;
  v78 = static ObservableObject.environmentStore.getter();
  v79 = &v6[*(v111 + 36)];
  *v79 = v78;
  v79[1] = v71;
  v80 = v138;
  v81 = static ObservableObject.environmentStore.getter();
  v82 = &v6[*(v142 + 44)];
  v83 = v108;
  *v82 = v81;
  v82[1] = v83;
  v84 = objc_allocWithZone(v110);

  v85 = UIHostingController.init(rootView:)();
  v86 = *&v77[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_targetViewController];
  *&v77[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_targetViewController] = v85;

  v87 = swift_allocObject();
  swift_unknownObjectWeakInit();
  LOBYTE(aBlock) = 0;
  State.init(wrappedValue:)();
  LOBYTE(v71) = v152[0];
  v88 = *(&v152[0] + 1);
  v89 = static Color.translateAccentColor.getter();
  v90 = swift_getKeyPath();
  LOWORD(aBlock) = 257;
  BYTE2(aBlock) = 1;
  *(&aBlock + 3) = v150;
  BYTE7(aBlock) = v151;
  *(&aBlock + 1) = sub_1000F7CA4;
  *&v146 = v87;
  BYTE8(v146) = v71;
  *(&v146 + 9) = *v149;
  HIDWORD(v146) = *&v149[3];
  *&v147 = v88;
  *(&v147 + 1) = v90;
  v148 = v89;
  v91 = v126;
  BorderedButtonStyle.init()();
  sub_100005AD4(&qword_1003B05E0);
  sub_1000F7CB4();
  sub_1000F7BAC(&qword_1003B05F8, &type metadata accessor for BorderedButtonStyle);
  v92 = v127;
  v93 = v129;
  View.buttonStyle<A>(_:)();
  (*(v130 + 8))(v91, v93);
  v152[0] = aBlock;
  v152[1] = v146;
  v152[2] = v147;
  v153 = v148;
  sub_100009EBC(v152, &qword_1003B05E0);
  v94 = &v92[*(v128 + 44)];
  sub_100005AD4(&qword_1003AAD10);
  static ButtonBorderShape.circle.getter();
  *v94 = swift_getKeyPath();
  v95 = objc_allocWithZone(sub_100005AD4(&qword_1003B0600));
  v96 = UIHostingController.init(rootView:)();
  v97 = *&v77[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_languageFlipperViewController];
  *&v77[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_languageFlipperViewController] = v96;

  if (sub_1000F27A0())
  {
    sub_1000F4F48();
  }

  else
  {
    sub_1000F5F34();
  }

  sub_10000A2CC(0, &qword_1003A9C40);
  v98 = static OS_dispatch_queue.main.getter();
  v99 = swift_allocObject();
  *(v99 + 16) = v77;
  *&v147 = sub_1000F7DE8;
  *(&v147 + 1) = v99;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v146 = sub_100096948;
  *(&v146 + 1) = &unk_100384388;
  v100 = _Block_copy(&aBlock);
  v101 = v77;

  v102 = v131;
  static DispatchQoS.unspecified.getter();
  *&aBlock = _swiftEmptyArrayStorage;
  sub_1000F7BAC(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50);
  sub_10001BAEC(&qword_1003AB9A0, &unk_1003A9C50);
  v103 = v134;
  v104 = v136;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v100);

  (*(v135 + 8))(v103, v104);
  return (*(v132 + 8))(v102, v133);
}

void sub_1000F4494()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000F4690();
  }
}

void sub_1000F44E8()
{
  v16 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_languageFlipperViewController);
  if (!v16)
  {
    return;
  }

  v1 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_deviceOwnerCollectionView);
  if (v1)
  {
    v2 = objc_allocWithZone(_UIScrollPocketInteraction);
    v3 = v16;
    v4 = v1;
    v5 = [v2 initWithScrollView:v4 edge:1 style:0];
    v6 = [v3 view];
    if (!v6)
    {
      __break(1u);
      goto LABEL_14;
    }

    v7 = v6;
    [v6 addInteraction:v5];
  }

  else
  {
    v8 = v16;
  }

  v9 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_partnerCollectionView);
  if (v9)
  {
    v10 = objc_allocWithZone(_UIScrollPocketInteraction);
    v11 = v9;
    v12 = [v10 initWithScrollView:v11 edge:1 style:0];
    v13 = [v16 view];
    if (v13)
    {
      v14 = v13;
      v15 = v12;
      [v14 addInteraction:v15];

      goto LABEL_10;
    }

LABEL_14:
    __break(1u);
    return;
  }

LABEL_10:
}

uint64_t sub_1000F4690()
{
  v24 = type metadata accessor for Locale();
  v1 = *(v24 - 8);
  v2 = __chkstk_darwin(v24);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = v23 - v6;
  __chkstk_darwin(v5);
  v25 = v23 - v8;
  v9 = String._bridgeToObjectiveC()();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_1000F7A54;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100241654;
  aBlock[3] = &unk_100384270;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  AnalyticsSendEventLazy();
  _Block_release(v11);

  v13 = *&v12[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v14 = v1;
  v15 = *(v1 + 16);
  v16 = v4;
  v17 = v24;
  v15(v4, v7, v24);
  v18 = v13;
  static Published.subscript.setter();
  sub_1000B7CA8();
  v19 = *(v14 + 8);
  v23[1] = v14 + 8;
  v19(v7, v17);
  v20 = v25;
  v15(v7, v25, v17);
  swift_getKeyPath();
  swift_getKeyPath();
  v15(v16, v7, v17);
  v21 = v18;
  static Published.subscript.setter();
  sub_1000B7E44();
  v19(v7, v17);
  return (v19)(v20, v17);
}

unint64_t sub_1000F4A20()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v13[-v5];
  sub_100005AD4(&qword_1003AD9A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002D3550;
  *(inited + 32) = 0x6D614E746E657665;
  *(inited + 40) = 0xE900000000000065;
  sub_10000A2CC(0, &qword_1003A9AA8);
  *(inited + 48) = NSString.init(stringLiteral:)();
  *(inited + 56) = 0x6E6F697461636F6CLL;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = NSString.init(stringLiteral:)();
  strcpy((inited + 80), "sourceLocale");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  Locale.ltIdentifier.getter();
  v8 = *(v1 + 8);
  v8(v6, v0);
  v9 = String._bridgeToObjectiveC()();

  *(inited + 96) = v9;
  strcpy((inited + 104), "targetLocale");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  Locale.ltIdentifier.getter();
  v8(v4, v0);
  v10 = String._bridgeToObjectiveC()();

  *(inited + 120) = v10;
  v11 = sub_1002927F0(inited);
  swift_setDeallocating();
  sub_100005AD4(&qword_1003AD9A8);
  swift_arrayDestroy();
  return v11;
}

void sub_1000F4D48()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_sourceWindow;
  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_sourceWindow);
  if (v2)
  {
    [v2 setHidden:1];
  }

  v3 = OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_targetWindow;
  v4 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_targetWindow);
  if (v4)
  {
    [v4 setHidden:1];
  }

  v5 = OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_flipperWindow;
  v6 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_flipperWindow);
  if (v6)
  {
    [v6 setHidden:1];
  }

  v7 = *(v0 + v1);
  *(v0 + v1) = 0;

  v8 = *(v0 + v3);
  *(v0 + v3) = 0;

  v9 = *(v0 + v5);
  *(v0 + v5) = 0;

  if (qword_1003A91F0 != -1)
  {
    swift_once();
  }

  if ((byte_1003D26A0 & 1) == 0)
  {
    v10 = sub_1000F2384();
    [v10 removeFromSuperview];
  }

  v11 = OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_sourceViewController;
  [*(v0 + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_sourceViewController) removeFromParentViewController];
  v12 = OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_targetViewController;
  [*(v0 + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_targetViewController) removeFromParentViewController];
  v13 = OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_languageFlipperViewController;
  [*(v0 + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_languageFlipperViewController) removeFromParentViewController];
  v14 = *(v0 + v11);
  if (v14)
  {
    v15 = [v14 view];
    if (!v15)
    {
      __break(1u);
      goto LABEL_24;
    }

    v16 = v15;
    [v15 removeFromSuperview];
  }

  v17 = *(v0 + v12);
  if (!v17)
  {
    goto LABEL_17;
  }

  v18 = [v17 view];
  if (!v18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v19 = v18;
  [v18 removeFromSuperview];

LABEL_17:
  v20 = *(v0 + v13);
  if (!v20)
  {
    return;
  }

  v21 = [v20 view];
  if (!v21)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v22 = v21;
  [v21 removeFromSuperview];
}

void sub_1000F4F48()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_sourceViewController];
  if (v2)
  {
    v3 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_targetViewController];
    if (v3)
    {
      v4 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_languageFlipperViewController];
      if (v4)
      {
        v5 = v4;
        v6 = v3;
        v7 = v2;
        v8 = [v1 view];
        if (v8)
        {
          v9 = v8;
          sub_10000A2CC(0, &qword_1003B2990);
          v10 = static UIColor.appBackgroundColor.getter();
          [v9 setBackgroundColor:v10];

          v11 = [v7 view];
          if (v11)
          {
            v12 = v11;
            v13 = objc_opt_self();
            v14 = [v13 clearColor];
            [v12 setBackgroundColor:v14];

            v15 = [v6 view];
            if (v15)
            {
              v16 = v15;
              v17 = [v13 clearColor];
              [v16 setBackgroundColor:v17];

              v18 = [v5 view];
              if (v18)
              {
                v19 = v18;
                v20 = [v13 clearColor];
                [v19 setBackgroundColor:v20];

                [v1 addChildViewController:v7];
                v21 = [v1 view];
                if (v21)
                {
                  v22 = v21;
                  v23 = [v7 view];
                  if (v23)
                  {
                    v24 = v23;
                    [v22 addSubview:v23];

                    [v7 didMoveToParentViewController:v1];
                    [v1 addChildViewController:v6];
                    v25 = [v1 view];
                    if (v25)
                    {
                      v26 = v25;
                      v27 = [v6 view];
                      if (v27)
                      {
                        v28 = v27;
                        [v26 addSubview:v27];

                        [v6 didMoveToParentViewController:v1];
                        [v1 addChildViewController:v5];
                        v29 = [v1 view];
                        if (v29)
                        {
                          v30 = v29;
                          v31 = [v5 view];
                          if (v31)
                          {
                            v32 = v31;
                            [v30 addSubview:v31];

                            [v5 didMoveToParentViewController:v1];
                            if (qword_1003A91F0 != -1)
                            {
                              swift_once();
                            }

                            if ((byte_1003D26A0 & 1) == 0)
                            {
                              v33 = [v1 view];
                              if (!v33)
                              {
LABEL_105:
                                __break(1u);
                                goto LABEL_106;
                              }

                              v34 = v33;
                              v35 = sub_1000F2384();
                              [v34 addSubview:v35];
                            }

                            v36 = [v7 view];
                            if (v36)
                            {
                              v37 = v36;
                              [v36 setTranslatesAutoresizingMaskIntoConstraints:0];

                              v38 = [v6 view];
                              if (v38)
                              {
                                v39 = v38;
                                [v38 setTranslatesAutoresizingMaskIntoConstraints:0];

                                v40 = [v5 view];
                                if (v40)
                                {
                                  v41 = v40;
                                  [v40 setTranslatesAutoresizingMaskIntoConstraints:0];

                                  v157 = v6;
                                  if ((byte_1003D26A0 & 1) == 0)
                                  {
                                    v42 = sub_1000F2384();
                                    [v42 setTranslatesAutoresizingMaskIntoConstraints:0];

                                    swift_getKeyPath();
                                    swift_getKeyPath();
                                    static Published.subscript.getter();

                                    swift_getKeyPath();
                                    swift_getKeyPath();
                                    static Published.subscript.getter();

                                    v43 = [*&v1[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController____lazy_storage___closeButton] topAnchor];
                                    v44 = [v1 view];
                                    if (!v44)
                                    {
LABEL_106:
                                      __break(1u);
                                      goto LABEL_107;
                                    }

                                    v45 = v44;
                                    if (v159 > v160)
                                    {
                                      v46 = v159;
                                    }

                                    else
                                    {
                                      v46 = v160;
                                    }

                                    v47 = fmax(v160, 32.0);
                                    if (v159 < 32.0)
                                    {
                                      v48 = v47;
                                    }

                                    else
                                    {
                                      v48 = v46;
                                    }

                                    v49 = [v44 topAnchor];

                                    v50 = [v43 constraintEqualToAnchor:v49 constant:v48];
                                    v51 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_closeBottomConstraint];
                                    *&v1[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_closeBottomConstraint] = v50;
                                  }

                                  v52 = [v1 traitCollection];
                                  v53 = [v52 horizontalSizeClass];

                                  if (v53 == 1)
                                  {
                                    v54 = 18.0;
                                  }

                                  else
                                  {
                                    v54 = 72.0;
                                  }

                                  sub_100005AD4(&unk_1003AFCC0);
                                  v55 = swift_allocObject();
                                  *(v55 + 16) = xmmword_1002DC2D0;
                                  v56 = [v7 view];
                                  if (v56)
                                  {
                                    v57 = v56;
                                    v58 = [v56 heightAnchor];

                                    v59 = [v1 view];
                                    if (v59)
                                    {
                                      v60 = v59;
                                      v61 = [v59 heightAnchor];

                                      v62 = [v58 constraintEqualToAnchor:v61 multiplier:0.5];
                                      *(v55 + 32) = v62;
                                      v63 = [v7 view];
                                      if (v63)
                                      {
                                        v64 = v63;
                                        v65 = [v63 bottomAnchor];

                                        v66 = [v1 view];
                                        if (v66)
                                        {
                                          v67 = v66;
                                          v156 = v5;
                                          v68 = [v66 bottomAnchor];

                                          v69 = [v65 constraintEqualToAnchor:v68];
                                          *(v55 + 40) = v69;
                                          v70 = [v7 view];
                                          if (v70)
                                          {
                                            v71 = v70;
                                            v72 = [v70 leadingAnchor];

                                            v73 = [v1 view];
                                            if (v73)
                                            {
                                              v74 = v73;
                                              v75 = [v73 leadingAnchor];

                                              v76 = [v72 constraintEqualToAnchor:v75];
                                              *(v55 + 48) = v76;
                                              v77 = [v7 view];
                                              if (v77)
                                              {
                                                v78 = v77;
                                                v79 = [v77 trailingAnchor];

                                                v80 = [v1 view];
                                                if (v80)
                                                {
                                                  v81 = v80;
                                                  v82 = [v80 trailingAnchor];

                                                  v83 = [v79 constraintEqualToAnchor:v82];
                                                  *(v55 + 56) = v83;
                                                  v84 = [v157 view];
                                                  if (v84)
                                                  {
                                                    v85 = v84;
                                                    v86 = [v84 heightAnchor];

                                                    v87 = [v1 view];
                                                    if (v87)
                                                    {
                                                      v88 = v87;
                                                      v89 = [v87 heightAnchor];

                                                      v90 = [v86 constraintEqualToAnchor:v89 multiplier:0.5];
                                                      *(v55 + 64) = v90;
                                                      v91 = [v157 view];
                                                      if (v91)
                                                      {
                                                        v92 = v91;
                                                        v93 = [v91 topAnchor];

                                                        v94 = [v1 view];
                                                        if (v94)
                                                        {
                                                          v95 = v94;
                                                          v96 = [v94 topAnchor];

                                                          v97 = [v93 constraintEqualToAnchor:v96];
                                                          *(v55 + 72) = v97;
                                                          v98 = [v157 view];
                                                          if (v98)
                                                          {
                                                            v99 = v98;
                                                            v100 = [v98 leadingAnchor];

                                                            v101 = [v1 view];
                                                            if (v101)
                                                            {
                                                              v102 = v101;
                                                              v103 = [v101 leadingAnchor];

                                                              v104 = [v100 constraintEqualToAnchor:v103];
                                                              *(v55 + 80) = v104;
                                                              v105 = [v157 view];
                                                              if (v105)
                                                              {
                                                                v106 = v105;
                                                                v107 = [v105 trailingAnchor];

                                                                v108 = [v1 view];
                                                                if (v108)
                                                                {
                                                                  v109 = v108;
                                                                  v110 = [v108 trailingAnchor];

                                                                  v111 = [v107 constraintEqualToAnchor:v110];
                                                                  *(v55 + 88) = v111;
                                                                  v112 = [v5 view];
                                                                  if (v112)
                                                                  {
                                                                    v113 = v112;
                                                                    v114 = [v112 leadingAnchor];

                                                                    v115 = [v1 view];
                                                                    if (v115)
                                                                    {
                                                                      v116 = v115;
                                                                      v117 = [v115 leadingAnchor];

                                                                      v118 = [v114 constraintEqualToAnchor:v117 constant:v54];
                                                                      *(v55 + 96) = v118;
                                                                      v119 = [v5 view];
                                                                      if (v119)
                                                                      {
                                                                        v120 = v119;
                                                                        v121 = [v119 trailingAnchor];

                                                                        v122 = [v1 view];
                                                                        if (v122)
                                                                        {
                                                                          v123 = v122;
                                                                          v124 = [v122 trailingAnchor];

                                                                          v125 = [v121 constraintEqualToAnchor:v124 constant:-v54];
                                                                          *(v55 + 104) = v125;
                                                                          v126 = [v5 view];
                                                                          if (v126)
                                                                          {
                                                                            v127 = v126;
                                                                            v128 = [v126 centerYAnchor];

                                                                            v129 = [v1 view];
                                                                            if (v129)
                                                                            {
                                                                              v130 = v129;
                                                                              v131 = [v129 centerYAnchor];

                                                                              v132 = [v128 constraintEqualToAnchor:v131];
                                                                              *(v55 + 112) = v132;
                                                                              v133 = [v5 view];
                                                                              if (v133)
                                                                              {
                                                                                v134 = v133;
                                                                                v135 = objc_opt_self();
                                                                                v136 = [v134 heightAnchor];

                                                                                sub_100005AD4(&qword_1003AA820);
                                                                                State.wrappedValue.getter();
                                                                                v137 = [v136 constraintEqualToConstant:v158];

                                                                                *(v55 + 120) = v137;
                                                                                sub_10000A2CC(0, &qword_1003B3480);
                                                                                isa = Array._bridgeToObjectiveC()().super.isa;

                                                                                [v135 activateConstraints:isa];

                                                                                if ((byte_1003D26A0 & 1) == 0)
                                                                                {
                                                                                  v139 = swift_allocObject();
                                                                                  *(v139 + 16) = xmmword_1002D5560;
                                                                                  v140 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_closeBottomConstraint];
                                                                                  if (!v140)
                                                                                  {
LABEL_107:
                                                                                    __break(1u);
                                                                                    goto LABEL_108;
                                                                                  }

                                                                                  v141 = v139;
                                                                                  *(v139 + 32) = v140;
                                                                                  v142 = v140;
                                                                                  v143 = [v1 view];
                                                                                  if (!v143)
                                                                                  {
LABEL_108:
                                                                                    __break(1u);
                                                                                    return;
                                                                                  }

                                                                                  v144 = v143;
                                                                                  v145 = [v143 trailingAnchor];

                                                                                  v146 = sub_1000F2384();
                                                                                  v147 = [v146 trailingAnchor];

                                                                                  v148 = [v145 constraintEqualToAnchor:v147 constant:32.0];
                                                                                  *(v141 + 40) = v148;
                                                                                  v149 = Array._bridgeToObjectiveC()().super.isa;

                                                                                  [v135 activateConstraints:v149];
                                                                                }

                                                                                v150 = [v7 view];
                                                                                if (v150)
                                                                                {
                                                                                  v151 = v150;
                                                                                  v152 = [v157 view];
                                                                                  if (v152)
                                                                                  {
                                                                                    v153 = v152;
                                                                                    v154 = [v156 view];
                                                                                    if (v154)
                                                                                    {
                                                                                      v155 = v154;
                                                                                      sub_1000F7280(v151, v153, v154);

                                                                                      return;
                                                                                    }

                                                                                    goto LABEL_104;
                                                                                  }

LABEL_103:
                                                                                  __break(1u);
LABEL_104:
                                                                                  __break(1u);
                                                                                  goto LABEL_105;
                                                                                }

LABEL_102:
                                                                                __break(1u);
                                                                                goto LABEL_103;
                                                                              }

LABEL_101:
                                                                              __break(1u);
                                                                              goto LABEL_102;
                                                                            }

LABEL_100:
                                                                            __break(1u);
                                                                            goto LABEL_101;
                                                                          }

LABEL_99:
                                                                          __break(1u);
                                                                          goto LABEL_100;
                                                                        }

LABEL_98:
                                                                        __break(1u);
                                                                        goto LABEL_99;
                                                                      }

LABEL_97:
                                                                      __break(1u);
                                                                      goto LABEL_98;
                                                                    }

LABEL_96:
                                                                    __break(1u);
                                                                    goto LABEL_97;
                                                                  }

LABEL_95:
                                                                  __break(1u);
                                                                  goto LABEL_96;
                                                                }

LABEL_94:
                                                                __break(1u);
                                                                goto LABEL_95;
                                                              }

LABEL_93:
                                                              __break(1u);
                                                              goto LABEL_94;
                                                            }

LABEL_92:
                                                            __break(1u);
                                                            goto LABEL_93;
                                                          }

LABEL_91:
                                                          __break(1u);
                                                          goto LABEL_92;
                                                        }

LABEL_90:
                                                        __break(1u);
                                                        goto LABEL_91;
                                                      }

LABEL_89:
                                                      __break(1u);
                                                      goto LABEL_90;
                                                    }

LABEL_88:
                                                    __break(1u);
                                                    goto LABEL_89;
                                                  }

LABEL_87:
                                                  __break(1u);
                                                  goto LABEL_88;
                                                }

LABEL_86:
                                                __break(1u);
                                                goto LABEL_87;
                                              }

LABEL_85:
                                              __break(1u);
                                              goto LABEL_86;
                                            }

LABEL_84:
                                            __break(1u);
                                            goto LABEL_85;
                                          }

LABEL_83:
                                          __break(1u);
                                          goto LABEL_84;
                                        }

LABEL_82:
                                        __break(1u);
                                        goto LABEL_83;
                                      }

LABEL_81:
                                      __break(1u);
                                      goto LABEL_82;
                                    }

LABEL_80:
                                    __break(1u);
                                    goto LABEL_81;
                                  }

LABEL_79:
                                  __break(1u);
                                  goto LABEL_80;
                                }

LABEL_78:
                                __break(1u);
                                goto LABEL_79;
                              }

LABEL_77:
                              __break(1u);
                              goto LABEL_78;
                            }

LABEL_76:
                            __break(1u);
                            goto LABEL_77;
                          }

LABEL_75:
                          __break(1u);
                          goto LABEL_76;
                        }

LABEL_74:
                        __break(1u);
                        goto LABEL_75;
                      }

LABEL_73:
                      __break(1u);
                      goto LABEL_74;
                    }

LABEL_72:
                    __break(1u);
                    goto LABEL_73;
                  }

LABEL_71:
                  __break(1u);
                  goto LABEL_72;
                }

LABEL_70:
                __break(1u);
                goto LABEL_71;
              }

LABEL_69:
              __break(1u);
              goto LABEL_70;
            }

LABEL_68:
            __break(1u);
            goto LABEL_69;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_68;
      }
    }
  }
}

void sub_1000F5F34()
{
  v1 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_sourceViewController);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_targetViewController);
    if (v2)
    {
      v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_languageFlipperViewController);
      if (v3)
      {
        v4 = objc_opt_self();
        v140 = v3;
        v5 = v2;
        v6 = v1;
        v7 = [v4 sharedApplication];
        v8 = sub_1002BF214();

        if (v8 && (v141 = [v8 windowScene], v8, v141))
        {
          v9 = [objc_allocWithZone(UIWindow) initWithWindowScene:v141];
          v10 = OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_sourceWindow;
          v11 = v139;
          v12 = *&v139[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_sourceWindow];
          *&v139[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_sourceWindow] = v9;

          v13 = [objc_allocWithZone(type metadata accessor for HitPassthroughWindow()) initWithWindowScene:v141];
          v14 = OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_targetWindow;
          v15 = *&v139[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_targetWindow];
          *&v139[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_targetWindow] = v13;

          v16 = [objc_allocWithZone(type metadata accessor for PassthroughWindow()) initWithWindowScene:v141];
          v17 = OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_flipperWindow;
          v18 = *&v139[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_flipperWindow];
          *&v139[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_flipperWindow] = v16;

          v19 = *&v139[v10];
          if (v19)
          {
            v20 = *&v139[v14];
            v21 = v140;
            if (v20)
            {
              v22 = *&v139[v17];
              if (v22)
              {
                v23 = v19;
                v24 = v20;
                v25 = v22;
                v26 = [v139 view];
                if (v26)
                {
                  v27 = v26;
                  v28 = String._bridgeToObjectiveC()();
                  v29 = objc_opt_self();
                  v30 = [v29 colorNamed:v28];

                  [v27 setBackgroundColor:v30];
                  v31 = v23;
                  v32 = [v29 clearColor];
                  v138 = v31;
                  [v31 setBackgroundColor:v32];

                  v33 = v24;
                  v34 = [v29 clearColor];
                  [v33 setBackgroundColor:v34];

                  v35 = v25;
                  v36 = [v29 clearColor];
                  v137 = v35;
                  [v35 setBackgroundColor:v36];

                  v37 = [v6 view];
                  if (v37)
                  {
                    v38 = v37;
                    v39 = [v29 clearColor];
                    [v38 setBackgroundColor:v39];

                    v40 = [v5 view];
                    if (v40)
                    {
                      v41 = v40;
                      v42 = [v29 clearColor];
                      [v41 setBackgroundColor:v42];

                      v43 = [v140 view];
                      if (v43)
                      {
                        v44 = v43;
                        v45 = [v29 clearColor];
                        [v44 setBackgroundColor:v45];

                        [v138 makeKeyAndVisible];
                        v46 = v33;
                        [v46 makeKeyAndVisible];
                        [v137 setHidden:0];
                        [v138 setRootViewController:v6];
                        [v46 setRootViewController:v5];

                        [v137 setRootViewController:v140];
                        if (qword_1003A91F0 != -1)
                        {
                          swift_once();
                        }

                        if ((byte_1003D26A0 & 1) == 0)
                        {
                          v11 = v139;
                          v47 = sub_1000F2384();
                          [v46 addSubview:v47];
                        }

                        v48 = [v6 view];
                        if (v48)
                        {
                          v49 = v48;
                          [v48 setTranslatesAutoresizingMaskIntoConstraints:0];

                          v50 = [v5 view];
                          if (v50)
                          {
                            v51 = v50;
                            [v50 setTranslatesAutoresizingMaskIntoConstraints:0];

                            v52 = [v140 view];
                            if (v52)
                            {
                              v53 = v52;
                              [v52 setTranslatesAutoresizingMaskIntoConstraints:0];

                              if ((byte_1003D26A0 & 1) == 0)
                              {
                                v11 = v139;
                                v54 = sub_1000F2384();
                                [v54 setTranslatesAutoresizingMaskIntoConstraints:0];

                                swift_getKeyPath();
                                swift_getKeyPath();
                                static Published.subscript.getter();

                                swift_getKeyPath();
                                swift_getKeyPath();
                                static Published.subscript.getter();

                                v55 = v144;
                                v56 = fmax(v144, 32.0);
                                if (v143 > v144)
                                {
                                  v55 = v143;
                                }

                                if (v143 < 32.0)
                                {
                                  v57 = v56;
                                }

                                else
                                {
                                  v57 = v55;
                                }

                                v58 = [v46 bottomAnchor];
                                v59 = [*&v139[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController____lazy_storage___closeButton] bottomAnchor];
                                v60 = [v58 constraintEqualToAnchor:v59 constant:v57];

                                v61 = *&v139[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_closeBottomConstraint];
                                *&v139[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_closeBottomConstraint] = v60;
                              }

                              v62 = [v11 traitCollection];
                              v63 = [v62 horizontalSizeClass];

                              if (v63 == 1)
                              {
                                v64 = 18.0;
                              }

                              else
                              {
                                v64 = 72.0;
                              }

                              sub_100005AD4(&unk_1003AFCC0);
                              v65 = swift_allocObject();
                              *(v65 + 16) = xmmword_1002DC2D0;
                              v66 = [v6 view];
                              if (v66)
                              {
                                v67 = v66;
                                v68 = [v66 topAnchor];

                                v69 = [v138 topAnchor];
                                v70 = [v68 constraintEqualToAnchor:v69];

                                *(v65 + 32) = v70;
                                v71 = [v6 view];
                                if (v71)
                                {
                                  v72 = v71;
                                  v73 = [v71 bottomAnchor];

                                  v74 = [v138 bottomAnchor];
                                  v75 = [v73 constraintEqualToAnchor:v74];

                                  *(v65 + 40) = v75;
                                  v76 = [v6 view];
                                  if (v76)
                                  {
                                    v77 = v76;
                                    v78 = [v76 leadingAnchor];

                                    v79 = [v138 leadingAnchor];
                                    v80 = [v78 constraintEqualToAnchor:v79];

                                    *(v65 + 48) = v80;
                                    v81 = [v6 view];
                                    if (v81)
                                    {
                                      v82 = v81;
                                      v83 = [v81 trailingAnchor];

                                      v84 = [v138 trailingAnchor];
                                      v85 = [v83 constraintEqualToAnchor:v84];

                                      *(v65 + 56) = v85;
                                      v86 = [v5 view];
                                      if (v86)
                                      {
                                        v87 = v86;
                                        v88 = [v86 topAnchor];

                                        v89 = [v46 topAnchor];
                                        v90 = [v88 constraintEqualToAnchor:v89];

                                        *(v65 + 64) = v90;
                                        v91 = [v5 view];
                                        if (v91)
                                        {
                                          v92 = v91;
                                          v93 = [v91 bottomAnchor];

                                          v94 = [v46 bottomAnchor];
                                          v95 = [v93 constraintEqualToAnchor:v94];

                                          *(v65 + 72) = v95;
                                          v96 = [v5 view];
                                          if (v96)
                                          {
                                            v97 = v96;
                                            v98 = [v96 leadingAnchor];

                                            v99 = [v46 leadingAnchor];
                                            v100 = [v98 constraintEqualToAnchor:v99];

                                            *(v65 + 80) = v100;
                                            v101 = [v5 view];
                                            if (v101)
                                            {
                                              v102 = v101;
                                              v103 = [v101 trailingAnchor];

                                              v104 = [v46 trailingAnchor];
                                              v105 = [v103 constraintEqualToAnchor:v104];

                                              *(v65 + 88) = v105;
                                              v106 = [v140 view];
                                              if (v106)
                                              {
                                                v107 = v106;
                                                v108 = [v106 leadingAnchor];

                                                v109 = [v137 leadingAnchor];
                                                v110 = [v108 constraintEqualToAnchor:v109 constant:v64];

                                                *(v65 + 96) = v110;
                                                v111 = [v140 view];
                                                if (v111)
                                                {
                                                  v112 = v111;
                                                  v113 = [v111 trailingAnchor];

                                                  v114 = [v137 trailingAnchor];
                                                  v115 = [v113 constraintEqualToAnchor:v114 constant:-v64];

                                                  *(v65 + 104) = v115;
                                                  v116 = [v140 view];
                                                  if (v116)
                                                  {
                                                    v117 = v116;
                                                    v118 = [v116 centerYAnchor];

                                                    v119 = [v137 centerYAnchor];
                                                    v120 = [v118 constraintEqualToAnchor:v119];

                                                    *(v65 + 112) = v120;
                                                    v121 = [v140 view];
                                                    if (v121)
                                                    {
                                                      v122 = v121;
                                                      v123 = objc_opt_self();
                                                      v124 = [v122 heightAnchor];

                                                      sub_100005AD4(&qword_1003AA820);
                                                      State.wrappedValue.getter();
                                                      v125 = [v124 constraintEqualToConstant:v142];

                                                      *(v65 + 120) = v125;
                                                      sub_10000A2CC(0, &qword_1003B3480);
                                                      isa = Array._bridgeToObjectiveC()().super.isa;

                                                      [v123 activateConstraints:isa];

                                                      v127 = v46;
                                                      if (byte_1003D26A0)
                                                      {
LABEL_45:

                                                        sub_1000F6E98();
                                                        sub_1000F7280(v138, v46, v137);

                                                        return;
                                                      }

                                                      v128 = swift_allocObject();
                                                      *(v128 + 16) = xmmword_1002D5560;
                                                      v129 = *&v139[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_closeBottomConstraint];
                                                      if (v129)
                                                      {
                                                        *(v128 + 32) = v129;
                                                        v130 = v128;
                                                        v131 = v129;
                                                        v132 = [v46 leadingAnchor];

                                                        v133 = sub_1000F2384();
                                                        v134 = [v133 leadingAnchor];

                                                        v135 = [v132 constraintEqualToAnchor:v134 constant:-32.0];
                                                        *(v130 + 40) = v135;
                                                        v127 = Array._bridgeToObjectiveC()().super.isa;

                                                        [v123 activateConstraints:v127];
                                                        goto LABEL_45;
                                                      }

LABEL_72:
                                                      __break(1u);
                                                      return;
                                                    }

LABEL_71:
                                                    __break(1u);
                                                    goto LABEL_72;
                                                  }

LABEL_70:
                                                  __break(1u);
                                                  goto LABEL_71;
                                                }

LABEL_69:
                                                __break(1u);
                                                goto LABEL_70;
                                              }

LABEL_68:
                                              __break(1u);
                                              goto LABEL_69;
                                            }

LABEL_67:
                                            __break(1u);
                                            goto LABEL_68;
                                          }

LABEL_66:
                                          __break(1u);
                                          goto LABEL_67;
                                        }

LABEL_65:
                                        __break(1u);
                                        goto LABEL_66;
                                      }

LABEL_64:
                                      __break(1u);
                                      goto LABEL_65;
                                    }

LABEL_63:
                                    __break(1u);
                                    goto LABEL_64;
                                  }

LABEL_62:
                                  __break(1u);
                                  goto LABEL_63;
                                }

LABEL_61:
                                __break(1u);
                                goto LABEL_62;
                              }

LABEL_60:
                              __break(1u);
                              goto LABEL_61;
                            }

LABEL_59:
                            __break(1u);
                            goto LABEL_60;
                          }

LABEL_58:
                          __break(1u);
                          goto LABEL_59;
                        }

LABEL_57:
                        __break(1u);
                        goto LABEL_58;
                      }

LABEL_56:
                      __break(1u);
                      goto LABEL_57;
                    }

LABEL_55:
                    __break(1u);
                    goto LABEL_56;
                  }
                }

                else
                {
                  __break(1u);
                }

                __break(1u);
                goto LABEL_55;
              }
            }
          }

          else
          {
            v21 = v140;
          }

          v136 = v141;
        }

        else
        {

          v136 = v140;
        }
      }
    }
  }
}

void sub_1000F6E98()
{
  v1 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_sourceWindow);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_targetWindow);
    if (v2)
    {
      v3 = objc_opt_self();
      v4 = v2;
      v5 = v1;
      v6 = [v3 sharedApplication];
      v7 = sub_1002BF214();

      if (v7 && (v8 = [v7 windowScene], v7, v8) && (v9 = objc_msgSend(v8, "interfaceOrientation"), v8, !sub_1000F7A3C(v9)))
      {
        v10 = objc_opt_self();
        v61 = [v10 mainScreen];
        [v61 bounds];
        v13 = v62;

        v63 = [v10 mainScreen];
        [v63 bounds];
        v16 = v64;

        v20 = 0.25;
        v18 = 0.75;
        v19 = 0.5;
        v17 = 0.5;
      }

      else
      {
        v10 = objc_opt_self();
        v11 = [v10 mainScreen];
        [v11 bounds];
        v13 = v12;

        v14 = [v10 mainScreen];
        [v14 bounds];
        v16 = v15;

        v17 = 0.25;
        v18 = 0.5;
        v19 = 0.75;
        v20 = 0.5;
      }

      v21 = v16 * 0.5;
      v65 = v5;
      [v65 setFrame:{0.0, 0.0, v13, v21}];
      v22 = v4;
      [v22 setFrame:{0.0, 0.0, v13, v21}];
      v23 = [v10 mainScreen];
      [v23 bounds];
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;

      v67.origin.x = v25;
      v67.origin.y = v27;
      v67.size.width = v29;
      v67.size.height = v31;
      v32 = CGRectGetWidth(v67) * v19;
      v33 = [v10 mainScreen];
      [v33 bounds];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;

      v68.origin.x = v35;
      v68.origin.y = v37;
      v68.size.width = v39;
      v68.size.height = v41;
      [v65 setCenter:{v32, CGRectGetHeight(v68) * v18}];

      v42 = [v10 mainScreen];
      [v42 bounds];
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;

      v69.origin.x = v44;
      v69.origin.y = v46;
      v69.size.width = v48;
      v69.size.height = v50;
      v51 = CGRectGetWidth(v69) * v17;
      v52 = [v10 mainScreen];
      [v52 bounds];
      v54 = v53;
      v56 = v55;
      v58 = v57;
      v60 = v59;

      v70.origin.x = v54;
      v70.origin.y = v56;
      v70.size.width = v58;
      v70.size.height = v60;
      [v22 setCenter:{v51, CGRectGetHeight(v70) * v20}];
    }
  }
}

id sub_1000F7280(void *a1, void *a2, void *a3)
{
  *&v12.a = 0x3FF0000000000000uLL;
  v12.c = 0.0;
  v12.d = 1.0;
  *&v12.tx = 0uLL;
  [a1 setTransform:&v12];
  *&v12.a = 0x3FF0000000000000uLL;
  v12.c = 0.0;
  v12.d = 1.0;
  *&v12.tx = 0uLL;
  [a2 setTransform:&v12];
  *&v12.a = 0x3FF0000000000000uLL;
  v12.c = 0.0;
  v12.d = 1.0;
  *&v12.tx = 0uLL;
  [a3 setTransform:&v12];
  v6 = [objc_opt_self() sharedApplication];
  v7 = sub_1002BF214();

  if (v7 && (v8 = [v7 windowScene], v7, v8) && (v9 = objc_msgSend(v8, "interfaceOrientation"), v8, !sub_1000F7A3C(v9)) || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , (LOBYTE(v12.a) & 1) != 0))
  {
    CGAffineTransformMakeRotation(&v12, 0.0);
    [a1 setTransform:&v12];
    CGAffineTransformMakeRotation(&v12, 3.14159265);
    [a2 setTransform:&v12];
    v10 = 0.0;
  }

  else
  {
    CGAffineTransformMakeRotation(&v12, -1.57079633);
    [a1 setTransform:&v12];
    CGAffineTransformMakeRotation(&v12, 1.57079633);
    [a2 setTransform:&v12];
    v10 = -1.57079633;
  }

  CGAffineTransformMakeRotation(&v12, v10);
  return [a3 setTransform:&v12];
}

void sub_1000F74FC()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v14 = sub_1000F79D8;
  v15 = v2;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_100096948;
  v13 = &unk_1003841D0;
  v3 = _Block_copy(&v10);
  v4 = v0;

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v14 = sub_1000F7A10;
  v15 = v5;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_1001D1870;
  v13 = &unk_100384220;
  v6 = _Block_copy(&v10);
  v7 = v4;

  [v1 animateWithDuration:v3 animations:v6 completion:0.25];
  _Block_release(v6);
  _Block_release(v3);
  v8 = *&v7[OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_onCloseTap];
  if (v8)
  {

    v8(v9);
    sub_10001ABE4(v8);
  }
}

uint64_t sub_1000F76B8(uint64_t a1, double a2)
{
  result = sub_1000F27A0();
  if ((result & 1) == 0)
  {
    v5 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_sourceWindow);
    if (v5)
    {
      [v5 setAlpha:a2];
    }

    v6 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_targetWindow);
    if (v6)
    {
      [v6 setAlpha:a2];
    }

    result = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_flipperWindow);
    if (result)
    {

      return [result setAlpha:a2];
    }
  }

  return result;
}

id sub_1000F77D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FaceToFaceViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000F7964@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FaceToFaceViewController();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000F79A0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000F79F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000F7A90(uint64_t a1)
{
  v2 = type metadata accessor for ButtonBorderShape();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues._buttonBorderShape.setter();
}

void sub_1000F7B58(void *a1)
{
  v2 = *(v1 + 16);
  v4 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_deviceOwnerCollectionView);
  *(v2 + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_deviceOwnerCollectionView) = a1;
  v3 = a1;
}

uint64_t sub_1000F7BAC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000F7C20(void *a1)
{
  v2 = *(v1 + 16);
  v4 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_partnerCollectionView);
  *(v2 + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_partnerCollectionView) = a1;
  v3 = a1;
}

uint64_t sub_1000F7C6C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000F7CB4()
{
  result = qword_1003B05E8;
  if (!qword_1003B05E8)
  {
    sub_100005EA8(&qword_1003B05E0);
    sub_1000F7D6C();
    sub_10001BAEC(&qword_1003AA870, &qword_1003AA878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B05E8);
  }

  return result;
}

unint64_t sub_1000F7D6C()
{
  result = qword_1003B05F0;
  if (!qword_1003B05F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B05F0);
  }

  return result;
}

void sub_1000F7E50()
{
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_sourceWindow) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_targetWindow) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_flipperWindow) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_sourceViewController) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_targetViewController) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_languageFlipperViewController) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_deviceOwnerCollectionView) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_partnerCollectionView) = 0;
  v1 = (v0 + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController__flipperHeight);
  State.init(wrappedValue:)();
  *v1 = v4;
  v1[1] = v5;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController____lazy_storage___closeButton) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_closeBottomConstraint) = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v2 = sub_10011ED3C(_swiftEmptyArrayStorage);
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_subscriptions) = v2;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_transitionAnimationDuration) = 0x3FD0000000000000;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_speakButtonMinimumBottomPadding) = 0x4040000000000000;
  v3 = (v0 + OBJC_IVAR____TtC17SequoiaTranslator24FaceToFaceViewController_onCloseTap);
  *v3 = 0;
  v3[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000F81DC()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v24[4] = sub_1000FBD04;
  v24[5] = v11;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 1107296256;
  v24[2] = sub_1002A3A0C;
  v24[3] = &unk_1003845D0;
  v13 = _Block_copy(v24);
  v14 = [v12 initWithSectionProvider:v13];
  _Block_release(v13);

  v15 = [objc_allocWithZone(UICollectionView) initWithFrame:v14 collectionViewLayout:{v4, v6, v8, v10}];

  v16 = OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_collectionView;
  v17 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_collectionView];
  *&v0[OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_collectionView] = v15;
  v18 = v15;

  if (!v18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v19 = [objc_opt_self() systemGroupedBackgroundColor];
  [v18 setBackgroundColor:v19];

  v20 = *&v0[v16];
  if (!v20)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [v20 setAutoresizingMask:18];
  v21 = *&v0[v16];
  if (!v21)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  [v21 setAllowsSelection:0];
  v22 = [v0 view];
  if (!v22)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*&v0[v16])
  {
    v23 = v22;
    [v22 addSubview:?];

    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_1000F8430(unint64_t a1)
{
  v3 = sub_100005AD4(&qword_1003B0728);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_dataSource);
  if (!v10)
  {
    LOBYTE(v14) = 0;
    return v14 & 1;
  }

  v11 = v10;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  (*(v4 + 32))(v9, v7, v3);
  result = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(result + 16) > a1)
  {
    v13 = result + 24 * a1;
    v15 = *(v13 + 32);
    v14 = *(v13 + 40);
    sub_1000FBCBC(v15, v14);

    if (v14 > 2)
    {
      sub_1000FBBCC(v15, v14);
      LOBYTE(v14) = 1;
    }

    else
    {
      LODWORD(v14) = 6u >> (v14 & 7);
    }

    (*(v4 + 8))(v9, v3);
    return v14 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F85F4(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27 = a2;
  v5 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for UICollectionLayoutListConfiguration();
  v13 = *(v26 - 8);
  __chkstk_darwin(v26);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v12, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v9);
  UICollectionLayoutListConfiguration.init(appearance:)();
  UICollectionLayoutListConfiguration.showsSeparators.setter();
  v16 = sub_1000F8430(a1);
  v17 = &enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:);
  if ((v16 & 1) == 0)
  {
    v17 = &enum case for UICollectionLayoutListConfiguration.HeaderMode.none(_:);
  }

  (*(v6 + 104))(v8, *v17, v5);
  UICollectionLayoutListConfiguration.headerMode.setter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter();
  sub_10000A2CC(0, &unk_1003B0730);
  result = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  v19 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_collectionView);
  if (v19)
  {
    v20 = result;
    v21 = v19;
    v22 = [v21 traitCollection];
    [v22 displayScale];
    v24 = v23;

    v25 = 16.0;
    if (v24 != 0.0)
    {
      v25 = sub_1000FBCB4(v24 * 16.0) / v24;
    }

    [v20 setInterGroupSpacing:{v25, v26, v27}];
    (*(v13 + 8))(v15, v26);
    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000F893C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(result + OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_dataSource);
    if (v4)
    {
      v5 = v4;
      dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

      if ((~v11 & 0xF000000000000007) != 0)
      {
        if (!(v11 >> 62))
        {
          v9 = (v11 & 0x3FFFFFFFFFFFFFFFLL);
          v6 = v11;
          v7 = a1;
          v8 = 1;
          goto LABEL_9;
        }

        if (v11 >> 62 == 1)
        {
          v6 = (v11 & 0x3FFFFFFFFFFFFFFFLL);
          v7 = a1;
          v8 = 0;
LABEL_9:
          v10 = sub_1000F95A4(v6, v7, v8);
          sub_1000FBBA4(v11);
          sub_1000FBBA4(v11);

          return v10;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1000F8A34(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a2)
  {
    if (a2 == 1)
    {
      v4 = [objc_opt_self() mainBundle];
      v8._object = 0x80000001002F4760;
      v5._object = 0x80000001002F4740;
      v8._countAndFlagsBits = 0xD000000000000015;
      v5._countAndFlagsBits = 0xD000000000000011;
      v6._countAndFlagsBits = 0;
      v6._object = 0xE000000000000000;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v8)._countAndFlagsBits;

      return countAndFlagsBits;
    }

    else if (a2 != 2)
    {

      return a1;
    }
  }

  return result;
}

uint64_t sub_1000F8B24(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = Strong;
  v6 = sub_1000F85F4(a1, a2);

  return v6;
}

uint64_t sub_1000F8BA4(uint64_t a1, unint64_t a2)
{
  v44 = a1;
  v4 = sub_100005AD4(&qword_1003B0728);
  result = __chkstk_darwin(v4);
  v8 = &v38 - v7;
  v9 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_dataSource);
  if (v9)
  {
    v42 = v6;
    v41 = v9;
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
    v43 = v8;
    v10 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = 0;
      v38 = v11 - 1;
      v13 = _swiftEmptyArrayStorage;
      v39 = v4;
      while (1)
      {
        v40 = v13;
        v4 = v12;
        while (1)
        {
          if (v4 >= *(v10 + 16))
          {
            __break(1u);
            goto LABEL_39;
          }

          v14 = *(v10 + 32 + 8 * v4);
          v13 = (v14 & 0x3FFFFFFFFFFFFFFFLL);
          if (static FavoritesItem.== infix(_:_:)())
          {
            goto LABEL_5;
          }

          v15 = FavoritesItem.translation.getter();
          if (!v15)
          {
            goto LABEL_5;
          }

          v16 = v15;
          v17 = [v15 identifier];

          v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v20 = v19;

          v21 = v18 == v44 && v20 == a2;
          if (v21)
          {
            break;
          }

          v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v22)
          {
            goto LABEL_16;
          }

LABEL_5:
          ++v4;

          if (v11 == v4)
          {
            v4 = v39;
            v13 = v40;
            goto LABEL_25;
          }
        }

LABEL_16:
        v23 = v40;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_10028CD24(0, *(v23 + 2) + 1, 1, v23);
        }

        v25 = *(v23 + 2);
        v24 = *(v23 + 3);
        v26 = v23;
        if (v25 >= v24 >> 1)
        {
          v26 = sub_10028CD24((v24 > 1), v25 + 1, 1, v23);
        }

        v12 = v4 + 1;
        *(v26 + 2) = v25 + 1;
        v13 = v26;
        *&v26[8 * v25 + 32] = v14;
        v21 = v38 == v4;
        v4 = v39;
        if (v21)
        {
          goto LABEL_25;
        }
      }
    }

    v13 = _swiftEmptyArrayStorage;
LABEL_25:

    if (*(v13 + 2))
    {
      v11 = v43;
      if (qword_1003A9240 != -1)
      {
LABEL_39:
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_1000078E8(v27, qword_1003D27D0);

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v45 = v31;
        *v30 = 136446466;
        *(v30 + 4) = sub_10028D78C(v44, a2, &v45);
        *(v30 + 12) = 2050;
        *(v30 + 14) = *(v13 + 2);

        _os_log_impl(&_mh_execute_header, v28, v29, "Forcing reload of item with identifier %{public}s; found in %{public}ld cells", v30, 0x16u);
        sub_100008664(v31);
      }

      else
      {
      }

      NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v13);

      v37 = v41;
      dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
    }

    else
    {

      v11 = v43;
      if (qword_1003A9240 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_1000078E8(v32, qword_1003D27D0);

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v45 = v36;
        *v35 = 136446210;
        *(v35 + 4) = sub_10028D78C(v44, a2, &v45);
        _os_log_impl(&_mh_execute_header, v33, v34, "Received request to force reconfigure translation cell with identifier %{public}s, but it wasn't found in the data store; ignoring the request", v35, 0xCu);
        sub_100008664(v36);
      }
    }

    return (*(v42 + 8))(v11, v4);
  }

  return result;
}

uint64_t sub_1000F90F8(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for GenderTipManager.Registration(0);
  __chkstk_darwin(v5 - 8);
  v25 = (v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v2[OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_store];
  v8 = *&v2[OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_ttsManager];
  v24[0] = v2;
  v9 = [v2 traitCollection];
  v24[1] = sub_1000E8640();
  UITraitCollection.subscript.getter();

  v10 = v27[0];
  v27[3] = type metadata accessor for TranslationStoreCoreData();
  v27[4] = &protocol witness table for TranslationStoreCoreData;
  v27[0] = v7;
  type metadata accessor for CommittedTranslationViewModel();
  v11 = swift_allocObject();
  v12 = v11;
  *(v11 + 16) = 0;
  *(v11 + 152) = 0;
  *(v11 + 160) = 0;
  *(v11 + 80) = 0u;
  *(v11 + 96) = 0u;
  *(v11 + 112) = 0u;
  *(v11 + 128) = 0;
  *(v11 + 162) = 4;
  *(v11 + 176) = 0;
  *(v11 + 184) = 0;
  *(v11 + 168) = 0;
  *(v11 + 191) = 0;
  *(v11 + 200) = 0;
  *(v11 + 208) = 0;
  *(v11 + 216) = 1;
  *(v11 + 224) = 0;
  *(v11 + 232) = 0;
  *(v11 + 240) = 1;
  *(v11 + 241) = 1;
  *(v11 + 243) = 0;
  if (_swiftEmptyArrayStorage >> 62)
  {
    v22 = _CocoaArrayWrapper.endIndex.getter();

    if (v22)
    {
      v23 = sub_10011ED3C(_swiftEmptyArrayStorage);
    }

    else
    {
      v23 = &_swiftEmptySetSingleton;
    }

    *(v12 + 248) = v23;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v13 = sub_10011ED3C(_swiftEmptyArrayStorage);
    }

    else
    {
      v13 = &_swiftEmptySetSingleton;
    }
  }

  else
  {
    v13 = &_swiftEmptySetSingleton;
    *(v11 + 248) = &_swiftEmptySetSingleton;
  }

  *(v12 + 256) = v13;
  *(v12 + 296) = 0;
  *(v12 + 264) = 0u;
  *(v12 + 280) = 0u;
  ObservationRegistrar.init()();
  *(v12 + 72) = a1;
  v14 = a1;

  *(v12 + 16) = a2;
  sub_100031DD8(v27, v12 + 24);
  *(v12 + 64) = v8;
  v15 = *(v12 + 80);

  *(v12 + 80) = 0;

  *(v12 + 152) = v10;
  *(v12 + 136) = xmmword_1002D3320;
  *(v12 + 304) = [objc_allocWithZone(_LTDisambiguationChangeManager) init];
  sub_1000476D0(v14, 1);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v24[-4] = v12;
  v24[-3] = nullsub_1;
  v24[-2] = 0;
  v26 = v12;
  sub_1000FBC3C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v17 = swift_getKeyPath();
  __chkstk_darwin(v17);
  v24[-4] = v12;
  v24[-3] = nullsub_1;
  v24[-2] = 0;
  v26 = v12;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_100048238();

  sub_100008664(v27);
  v18 = [v24[0] traitCollection];
  UITraitCollection.subscript.getter();

  v19 = v14;
  v20 = v25;
  sub_10010993C(v19, 0, v25);
  sub_100109EB0(v20);

  sub_1000FBD70(v20, type metadata accessor for GenderTipManager.Registration);
  return v12;
}

id sub_1000F95A4(void *a1, uint64_t a2, int a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003A91F0 != -1)
  {
    swift_once();
  }

  if (byte_1003D26A0)
  {
    v28 = 0;
    v10 = 0;
  }

  else
  {
    v28 = sub_1000F999C(a3 & 1);
    v10 = v11;
  }

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v7 + 16))(&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v13 = (*(v7 + 80) + 33) & ~*(v7 + 80);
  v29 = a3;
  v14 = a3 & 1;
  if (v14)
  {
    v15 = sub_1000FB8EC;
  }

  else
  {
    v15 = sub_1000FB9E8;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  *(v16 + 24) = a1;
  *(v16 + 32) = v14;
  (*(v7 + 32))(v16 + v13, v9, v6);
  v17 = a1;
  if (v10)
  {
    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v18 = 0;
  }

  aBlock[4] = v15;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002A34F8;
  aBlock[3] = &unk_100384530;
  v19 = _Block_copy(aBlock);
  v20 = [objc_opt_self() contextualActionWithStyle:1 title:v18 handler:{v19, v28}];

  _Block_release(v19);

  v21 = String._bridgeToObjectiveC()();
  v22 = [objc_opt_self() _systemImageNamed:v21];

  [v20 setImage:v22];
  sub_100005AD4(&unk_1003AFCC0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1002D95A0;
  *(v23 + 32) = v20;
  sub_10000A2CC(0, &qword_1003AB960);
  v24 = v20;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v26 = [objc_opt_self() configurationWithActions:isa];

  [v26 _setSwipeActionsStyle:3];
  return v26;
}

uint64_t sub_1000F999C(char a1)
{
  v2 = [objc_opt_self() mainBundle];
  if (a1)
  {
    v11 = 0x80000001002F14D0;
    v3 = 0x49524F5641464E55;
    v4 = 0xD00000000000002BLL;
    v5 = 0xEA00000000004554;
    v6.super.isa = v2;
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  else
  {
    v11 = 0x80000001002F4780;
    v3 = 0x4554454C4544;
    v5 = 0xE600000000000000;
    v6.super.isa = v2;
    v7 = 0;
    v8 = 0xE000000000000000;
    v4 = 0xD000000000000013;
  }

  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, 0, v6, *&v7, *&v4)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1000F9A9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a3();
  }

  v12 = Strong;
  if (qword_1003A9228 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000078E8(v13, qword_1003D2788);
  v14 = a6;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v35 = a8;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v36 = v18;
    *v17 = 136446210;
    v19 = [v14 identifier];
    v20 = a3;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10028D78C(v21, v23, &v36);

    *(v17 + 4) = v24;
    a3 = v20;
    _os_log_impl(&_mh_execute_header, v15, v16, "User deleted card item %{public}s via swipe action", v17, 0xCu);
    sub_100008664(v18);

    a8 = v35;
  }

  v25 = sub_1000FA0C0(v14);
  if (v25)
  {
    v26 = v25;
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    *(v27 + 24) = v14;
    v28 = sub_1000FBB7C;
  }

  else
  {
    v30 = swift_allocObject();
    *(v30 + 16) = v12;
    *(v30 + 24) = v14;
    v31 = v12;
    v28 = sub_1000FBAF4;
  }

  v32 = v28;
  v33 = v14;

  sub_1000FAFF8(a8, v12);
  v34 = (a3)(1);
  v32(v34);
}

void sub_1000F9D40(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (dispatch thunk of PersistedTranslation.isFavorite.getter())
    {
      if (qword_1003A9240 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_1000078E8(v13, qword_1003D27D0);
      v14 = a6;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v36 = a3;
        v37 = swift_slowAlloc();
        v18 = v37;
        *v17 = 136446210;
        v19 = [v14 identifier];
        v35 = a8;
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v23 = sub_10028D78C(v20, v22, &v37);

        *(v17 + 4) = v23;
        a8 = v35;
        _os_log_impl(&_mh_execute_header, v15, v16, "Unfavoriting translation with id %{public}s via swipe action", v17, 0xCu);
        sub_100008664(v18);
        a3 = v36;
      }

      sub_1000FAFF8(a8, v12);
      (a3)(1);

      TranslationStoreCoreData.toggleFavoriteBackground(_:)();
    }

    else
    {
      if (qword_1003A9240 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_1000078E8(v24, qword_1003D27D0);
      v25 = a6;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v37 = v29;
        *v28 = 136446210;
        v30 = [v25 identifier];
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        v34 = sub_10028D78C(v31, v33, &v37);

        *(v28 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v26, v27, "Translation %{public}s was already unfavorited, doing nothing", v28, 0xCu);
        sub_100008664(v29);
      }

      (a3)(0);
    }
  }

  else
  {
    a3();
  }
}

uint64_t sub_1000FA0C0(void *a1)
{
  sub_100005AD4(&unk_1003AFCC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002D5560;
  v4 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_translationSession);
  *(inited + 32) = v4;
  *(inited + 40) = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_conversationSession);

  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_18;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

  while (1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v5 = [a1 sessionID];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (v16 == v6 && v17 == v8)
    {
      goto LABEL_6;
    }

    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      goto LABEL_8;
    }

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v4 = *(inited + 40);

      goto LABEL_13;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_13:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v11 = [a1 sessionID];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (v16 == v12 && v17 == v14)
  {
LABEL_6:

LABEL_8:

    return v4;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
    goto LABEL_8;
  }

  return 0;
}

id sub_1000FA3A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FavoritesCardListController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000FA488(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 >= 3)
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
    v5 = *(a4 + 16);
    Hasher._combine(_:)(v5);
    if (v5)
    {
      v6 = (a4 + 32);
      do
      {
        v7 = *v6++;
        v8 = (v7 & 0x3FFFFFFFFFFFFFFFLL);
        FavoritesItem.hash(into:)();

        --v5;
      }

      while (v5);
    }
  }

  else
  {
    Hasher._combine(_:)(qword_1002DD610[a3]);
  }
}

Swift::Int sub_1000FA534()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  sub_1000FA488(v5, v1, v2, v3);
  return Hasher._finalize()();
}

Swift::Int sub_1000FA59C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  sub_1000FA488(v5, v1, v2, v3);
  return Hasher._finalize()();
}

void sub_1000FA5F4(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3 > 2 && v4 >= 3)
  {
    if (v5 = a2[2], v6 = a1[2], *a1 == *a2) && v3 == v4 || (_stringCompareWithSmolCheck(_:_:expecting:)())
    {

      sub_1000FAAC4(v6, v5);
    }
  }
}

uint64_t sub_1000FA970(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000FA988(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000FA9E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_1000FAA38(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1000FAA70()
{
  result = qword_1003B06E8;
  if (!qword_1003B06E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B06E8);
  }

  return result;
}

void sub_1000FAAC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4++;
      v8 = (v7 & 0x3FFFFFFFFFFFFFFFLL);
      v9 = (v5 & 0x3FFFFFFFFFFFFFFFLL);
      LOBYTE(v5) = static FavoritesItem.== infix(_:_:)();

      if ((v5 & 1) == 0)
      {
        break;
      }

      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1000FAB84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslateTip(0) - 8;
  v5 = __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1000FBD0C(v13, v10);
        sub_1000FBD0C(v14, v7);
        v16 = static UUID.== infix(_:_:)();
        sub_1000FBD70(v7, type metadata accessor for TranslateTip);
        sub_1000FBD70(v10, type metadata accessor for TranslateTip);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1000FAD14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 104);
    v4 = (a1 + 56);
    do
    {
      v7 = v4[5];
      v6 = v4[6];
      v9 = *(v3 - 1);
      v8 = *v3;
      if (*(v4 - 1) == *(v3 - 7) && *v4 == *(v3 - 6))
      {
        if (v7 != v9 || v6 != v8)
        {
          return 0;
        }
      }

      else
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
        result = 0;
        if ((v11 & 1) == 0 || v7 != v9 || v6 != v8)
        {
          return result;
        }
      }

      v3 += 14;
      v4 += 14;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1000FADE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_1000FBC3C(&unk_1003B06F0, &type metadata accessor for Locale);
    v21 = dispatch thunk of static Equatable.== infix(_:_:)();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

void sub_1000FAFF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005AD4(&unk_1003B0700);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - v10;
  v12 = *(a2 + OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_dataSource);
  if (v12)
  {
    v13 = v12;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();
    v14 = v30;
    if ((~v30 & 0xF000000000000007) != 0)
    {
      v29 = v9;
      IndexPath.section.getter();
      dispatch thunk of UICollectionViewDiffableDataSource.sectionIdentifier(for:)();
      v15 = v31;
      if (v31 != 3)
      {
        v25 = v32;
        v26 = v30;
        UICollectionViewDiffableDataSource.snapshot(for:)();
        sub_100005AD4(&unk_1003B0710);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_1002D3160;
        *(v27 + 32) = v14;
        v28 = (v14 & 0x3FFFFFFFFFFFFFFFLL);
        NSDiffableDataSourceSectionSnapshot.delete(_:)(v27);

        v30 = v26;
        v31 = v15;
        v32 = v25;
        UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();

        sub_1000FBBA4(v14);
        (*(v29 + 8))(v11, v8);
        sub_1000FBBBC(v26, v15);
        return;
      }

      sub_1000FBBA4(v14);
    }
  }

  if (qword_1003A9240 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000078E8(v16, qword_1003D27D0);
  (*(v5 + 16))(v7, a1, v4);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30 = v20;
    *v19 = 136446210;
    sub_1000FBC3C(&qword_1003AA718, &type metadata accessor for IndexPath);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v5 + 8))(v7, v4);
    v24 = sub_10028D78C(v21, v23, &v30);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "Failed to remove item at indexPath %{public}s from snapshot because it can't be found in the data source", v19, 0xCu);
    sub_100008664(v20);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }
}

void sub_1000FB424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005AD4(&unk_1003AB970);
  v7 = __chkstk_darwin(v6);
  v9 = &v35[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v35[-1] - v10;
  if (a3 == 4)
  {
    if (qword_1003A9240 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000078E8(v12, qword_1003D27D0);
    sub_1000FB838(a2, v11);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v37[0] = v16;
      *v15 = 136446210;
      sub_1000FB838(v11, v9);
      v17 = String.init<A>(describing:)();
      v19 = v18;
      sub_1000FB7D0(v11);
      v20 = sub_10028D78C(v17, v19, v37);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "Got an update for item at indexPath %{public}s", v15, 0xCu);
      sub_100008664(v16);
    }

    else
    {

      sub_1000FB7D0(v11);
    }

    sub_10000A37C(a1, v37);
    type metadata accessor for PersistedTranslation();
    if (swift_dynamicCast())
    {
      v21 = v35[0];
      v22 = [v35[0] identifier];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      sub_1000F8BA4(v23, v25);
    }

    else
    {
      sub_10000A37C(a1, v37);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v36 = v29;
        *v28 = 136380675;
        sub_10000A37C(v37, v35);
        v30 = String.init<A>(describing:)();
        v32 = v31;
        sub_100008664(v37);
        v33 = sub_10028D78C(v30, v32, &v36);

        *(v28 + 4) = v33;
        sub_100008664(v29);
      }

      else
      {

        sub_100008664(v37);
      }
    }
  }
}

uint64_t sub_1000FB7D0(uint64_t a1)
{
  v2 = sub_100005AD4(&unk_1003AB970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000FB838(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&unk_1003AB970);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FB8B0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000FB904(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000FB91C()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000FBA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *(type metadata accessor for IndexPath() - 8);
  v11 = *(v5 + 16);
  v12 = *(v5 + 24);
  v13 = *(v5 + 32);
  v14 = v5 + ((*(v10 + 80) + 33) & ~*(v10 + 80));

  return a5(a1, a2, a3, a4, v11, v12, v13, v14);
}

uint64_t sub_1000FBAB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000FBB3C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000FBBA4(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }
}

uint64_t sub_1000FBBBC(uint64_t a1, unint64_t a2)
{
  if (a2 != 3)
  {
    return sub_1000FBBCC(a1, a2);
  }

  return a1;
}

uint64_t sub_1000FBBCC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_1000FBC3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000FBCBC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_1000FBD0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslateTip(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FBD70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000FBDDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1000FBE24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000FBE84()
{
  result = qword_1003B0740;
  if (!qword_1003B0740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B0740);
  }

  return result;
}

id sub_1000FBED8()
{
  v9 = *v0;
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  v4 = *(v0 + 5);
  v5 = objc_allocWithZone(type metadata accessor for FavoritesDetailListController());
  *&v5[OBJC_IVAR____TtC17SequoiaTranslator29FavoritesDetailListController____lazy_storage___favoritesLocalePairResultsController] = 1;
  *&v5[OBJC_IVAR____TtC17SequoiaTranslator29FavoritesDetailListController_displayLocalePairText] = v9;
  *&v5[OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_collectionView] = 0;
  *&v5[OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_dataSource] = 0;
  *&v5[OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_store] = v1;
  *&v5[OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_ttsManager] = v4;
  *&v5[OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_translationSession] = v2;
  *&v5[OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_conversationSession] = v3;
  sub_10005DFF4(&v9, v8);
  v7.receiver = v5;
  v7.super_class = type metadata accessor for FavoritesCardListController();

  return objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
}

uint64_t sub_1000FC008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000FC0F8();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000FC06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000FC0F8();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000FC0D0()
{
  sub_1000FC0F8();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1000FC0F8()
{
  result = qword_1003B0748;
  if (!qword_1003B0748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B0748);
  }

  return result;
}

uint64_t sub_1000FC28C()
{
  v34 = sub_100005AD4(&qword_1003B0798);
  v1 = *(v34 - 8);
  v2 = __chkstk_darwin(v34);
  v30[1] = v3;
  v31 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v33 = v30 - v4;
  v5 = sub_100005AD4(&qword_1003B07A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v30 - v10;
  *(swift_allocObject() + 16) = v0;
  v12 = sub_1000FD7B8();
  v13 = v0;
  v32 = v12;
  result = UICollectionView.CellRegistration.init(handler:)();
  v15 = *&v13[OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_collectionView];
  if (v15)
  {
    (*(v6 + 16))(v9, v11, v5);
    v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v17 = swift_allocObject();
    (*(v6 + 32))(v17 + v16, v9, v5);
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1000FD818;
    *(v18 + 24) = v17;
    objc_allocWithZone(sub_100005AD4(&qword_1003B07A8));
    v19 = v15;
    v20 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
    v21 = OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_dataSource;
    v22 = *&v13[OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_dataSource];
    *&v13[OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_dataSource] = v20;

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = v33;
    UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
    v24 = *&v13[v21];
    v25 = v34;
    if (v24)
    {
      v26 = v31;
      (*(v1 + 16))(v31, v23, v34);
      v27 = (*(v1 + 80) + 16) & ~*(v1 + 80);
      v28 = swift_allocObject();
      (*(v1 + 32))(v28 + v27, v26, v25);
      v29 = v24;
      dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();
    }

    (*(v1 + 8))(v23, v25);
    return (*(v6 + 8))(v11, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000FC6B8(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = sub_100005AD4(&unk_1003BC4C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  v8 = *a3;
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  UICollectionViewCell.contentConfiguration.setter();
  if (v8 >> 62 == 2)
  {
    if (qword_1003A9240 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000078E8(v10, qword_1003D27D0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Unsupported item in FavoritesDetailListController UICollectionView cell registration", v13, 2u);
    }

    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    return UICollectionViewCell.contentConfiguration.setter();
  }

  else
  {
    v9 = (v8 & 0x3FFFFFFFFFFFFFFFLL);
    if (v8 >> 62 == 1)
    {
      v8 &= 0x3FFFFFFFFFFFFFFFuLL;
    }

    v15 = v9;
    v16 = sub_1000FA0C0(v8);
    sub_1000F90F8(v8, v16);

    type metadata accessor for TranslationCardView();
    sub_1000FDAC4(&qword_1003B07B0, type metadata accessor for TranslationCardView);
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    *(&v18 + 1) = v4;
    v19 = sub_1000FDA58();
    sub_100050D60(&v17);
    UIHostingConfiguration.margins(_:_:)();
    (*(v5 + 8))(v7, v4);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_1000FC994@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SharedTranslationOptions();
  sub_1000FDAC4(&qword_1003AE918, type metadata accessor for SharedTranslationOptions);
  v2 = EnvironmentObject.init()();
  v4 = v3;
  KeyPath = swift_getKeyPath();
  v6 = type metadata accessor for TranslationCardView();
  *(a1 + v6[8]) = KeyPath;
  sub_100005AD4(&qword_1003B23E0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for CommittedTranslationViewModel();
  sub_1000FDAC4(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);

  Bindable<A>.init(wrappedValue:)();
  v7 = (a1 + v6[5]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a1 + v6[6]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a1 + v6[7]);
  *v9 = v2;
  v9[1] = v4;
  v10 = (a1 + v6[9]);
  type metadata accessor for SceneContext();
  sub_1000FDAC4(&qword_1003AC860, type metadata accessor for SceneContext);
  *v10 = EnvironmentObject.init()();
  v10[1] = v11;
  v12 = a1 + v6[10];
  State.init(wrappedValue:)();
  *v12 = v15;
  *(v12 + 8) = v16;
  v13 = v6[11];
  result = Image.init(systemName:)();
  *(a1 + v13) = result;
  return result;
}

uint64_t sub_1000FCBA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a3 & 0x3FFFFFFFFFFFFFFFLL);
  sub_1000FD7B8();
  v4 = v3;
  v5 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

  return v5;
}

unint64_t sub_1000FCC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[1] = a4;
  v5 = type metadata accessor for UIListContentConfiguration();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v25 - v10;
  v12 = sub_100005AD4(&qword_1003B0728);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v25 - v14;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v18 = *(result + OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_dataSource);
    if (v18)
    {
      v25[0] = a1;
      v19 = v18;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

      v20 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
      (*(v13 + 8))(v15, v12);
      result = IndexPath.section.getter();
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *(v20 + 16))
      {
        v21 = v20 + 24 * result;
        v22 = *(v21 + 32);
        v23 = *(v21 + 40);
        sub_1000FBCBC(v22, v23);

        static UIListContentConfiguration.extraProminentInsetGroupedHeader()();
        if (v23 != 3)
        {
          sub_1000F8A34(v22, v23);
          UIListContentConfiguration.text.setter();
          sub_1000FBBBC(v22, v23);
        }

        goto LABEL_8;
      }

      __break(1u);
      return result;
    }

    static UIListContentConfiguration.extraProminentInsetGroupedHeader()();
LABEL_8:
    (*(v6 + 32))(v11, v9, v5);
    v26[3] = v5;
    v26[4] = &protocol witness table for UIListContentConfiguration;
    v24 = sub_100050D60(v26);
    (*(v6 + 16))(v24, v11, v5);
    UICollectionViewCell.contentConfiguration.setter();

    return (*(v6 + 8))(v11, v5);
  }

  return result;
}

char *sub_1000FCF10(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIContentUnavailableConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005AD4(&qword_1003B0728);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - v10;
  sub_1000FD6D0();
  sub_1000FD724();
  NSDiffableDataSourceSnapshot.init()();
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_10037D738);
  v12 = sub_1000FD2D0();
  if (!v12)
  {
    goto LABEL_17;
  }

  v13 = v12;
  v14 = [v12 fetchedObjects];

  if (!v14)
  {
    goto LABEL_17;
  }

  v33 = v7;
  v34 = v9;
  type metadata accessor for PersistedTranslation();
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v15 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
    v32 = a1;
    if (v16)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v32 = a1;
    if (v16)
    {
LABEL_5:
      v28 = v8;
      v29 = v5;
      v30 = v4;
      v31 = v2;
      *&v35 = _swiftEmptyArrayStorage;
      result = sub_1000C4B6C(0, v16 & ~(v16 >> 63), 0);
      if (v16 < 0)
      {
        __break(1u);
        return result;
      }

      v18 = 0;
      v19 = v35;
      do
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v20 = *(v15 + 8 * v18 + 32);
        }

        v21 = v20;
        *&v35 = v19;
        v23 = *(v19 + 16);
        v22 = *(v19 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1000C4B6C((v22 > 1), v23 + 1, 1);
          v19 = v35;
        }

        ++v18;
        *(v19 + 16) = v23 + 1;
        *(v19 + 8 * v23 + 32) = v21;
      }

      while (v16 != v18);

      v4 = v30;
      v2 = v31;
      v8 = v28;
      v5 = v29;
      goto LABEL_16;
    }
  }

LABEL_16:
  v35 = xmmword_1002D3300;
  *&v36 = 0;
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

  v7 = v33;
  v9 = v34;
LABEL_17:
  v24 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_dataSource);
  if (v24)
  {
    v25 = v24;
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
  }

  if (NSDiffableDataSourceSnapshot.numberOfItems.getter() <= 0)
  {
    sub_1000E78D0();
    *(&v36 + 1) = v4;
    v37 = &protocol witness table for UIContentUnavailableConfiguration;
    v26 = sub_100050D60(&v35);
    (*(v5 + 32))(v26, v7, v4);
  }

  else
  {
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
  }

  UIViewController.contentUnavailableConfiguration.setter();
  return (*(v9 + 8))(v11, v8);
}

id sub_1000FD2D0()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator29FavoritesDetailListController____lazy_storage___favoritesLocalePairResultsController;
  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator29FavoritesDetailListController____lazy_storage___favoritesLocalePairResultsController);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_1000FD340(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_1000FD6C0(v4);
  }

  sub_1000FDB0C(v2);
  return v3;
}

id sub_1000FD340(uint64_t a1)
{
  type metadata accessor for PersistedTranslation();
  v2 = static PersistedTranslation.favoritedSortedByCreationDateFetchRequest(localePair:)();
  v3 = dispatch thunk of TranslationStoreCoreData.viewContext.getter();
  v4 = objc_allocWithZone(NSFetchedResultsController);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithFetchRequest:v2 managedObjectContext:v3 sectionNameKeyPath:v5 cacheName:0];

  [v6 setDelegate:a1];
  v16 = 0;
  if ([v6 performFetch:&v16])
  {
    v7 = v16;
  }

  else
  {
    v8 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1003A9228 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000078E8(v9, qword_1003D2788);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = _convertErrorToNSError(_:)();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed initial fetch of favorites data: %@", v12, 0xCu);
      sub_1000DDF70(v13);
    }

    else
    {
    }
  }

  return v6;
}