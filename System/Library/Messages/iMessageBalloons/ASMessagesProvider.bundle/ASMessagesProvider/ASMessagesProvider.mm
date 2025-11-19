void sub_3BDC(uint64_t a1)
{
  InstanceMethod = class_getInstanceMethod(*(a1 + 32), "presentViewController:animated:completion:");
  v3 = class_getInstanceMethod(*(a1 + 32), "as_presentViewController:animated:completion:");
  v4 = *(a1 + 32);
  MethodImplementation = class_getMethodImplementation(v4, "presentViewController:animated:completion:");
  TypeEncoding = method_getTypeEncoding(InstanceMethod);
  class_addMethod(v4, "presentViewController:animated:completion:", MethodImplementation, TypeEncoding);
  v7 = *(a1 + 32);
  v8 = class_getMethodImplementation(v7, "as_presentViewController:animated:completion:");
  v9 = method_getTypeEncoding(v3);
  class_addMethod(v7, "as_presentViewController:animated:completion:", v8, v9);
  v10 = class_getInstanceMethod(*(a1 + 32), "presentViewController:animated:completion:");
  v11 = class_getInstanceMethod(*(a1 + 32), "as_presentViewController:animated:completion:");

  method_exchangeImplementations(v10, v11);
}

uint64_t sub_3E3C(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) as_viewDidBecomePartiallyVisible];
  }

  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_45E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_4600(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
  v7 = [WeakRetained configuration];
  v8 = [v7 completion];

  if (v8)
  {
    v9 = [WeakRetained configuration];
    v10 = [v9 completion];
    v11 = [v12 reasonID];
    (v10)[2](v10, WeakRetained, v11, v5);
  }
}

void sub_5318(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 beginUpdates];

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  [*(a1 + 32) keyboardOverlapHeight];
  v6 = v5;
  v7 = *(a1 + 64);
  v8 = [*(a1 + 32) tableView];
  [v8 setContentInset:{v3, v4, v6, v7}];

  if (JUScreenClassGetMain() == 1)
  {
    v9 = [*(a1 + 32) tableView];
    v10 = [NSIndexPath indexPathForRow:0 inSection:0];
    v11 = [v9 cellForRowAtIndexPath:v10];

    v12 = [*(a1 + 32) tableView];
    [v11 frame];
    MinY = CGRectGetMinY(v22);
    v14 = [*(a1 + 32) tableView];
    [v14 contentInset];
    v16 = MinY - v15;
    v17 = [*(a1 + 32) view];
    [v17 safeAreaInsets];
    [v12 setContentOffset:{0.0, v16 - v18}];
  }

  v19 = [*(a1 + 32) tableView];
  [v19 endUpdates];

  v20 = [*(a1 + 32) view];
  [v20 layoutIfNeeded];
}

void sub_5604(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  [*(a1 + 32) keyboardOverlapHeight];
  v5 = v4;
  v6 = *(a1 + 64);
  v7 = [*(a1 + 32) tableView];
  [v7 setContentInset:{v2, v3, v5, v6}];

  v8 = [*(a1 + 32) view];
  [v8 layoutIfNeeded];

  v9 = [*(a1 + 32) tableView];
  [v9 beginUpdates];

  v10 = [*(a1 + 32) tableView];
  [v10 endUpdates];
}

uint64_t sub_6B98(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void sub_74A0(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 1.0, 1.0);
  v2 = [*(a1 + 32) toastView];
  v4 = v5;
  [v2 setTransform:&v4];

  v3 = [*(a1 + 32) toastView];
  [v3 setAlpha:1.0];
}

id sub_7520(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 duration];

  return [v1 _dismissAfterDelay:?];
}

void sub_79DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_7A24(void *a1, void *a2, double a3)
{
  v21 = a2;
  [v21 frame];
  v5 = *(a1[4] + 8);
  v6 = *(v5 + 48);
  v7 = *(v5 + 56);
  [v21 sizeThatFits:{v6, v7}];
  v9 = v8;
  MinX = CGRectGetMinX(*(*(a1[4] + 8) + 32));
  v11 = *(*(a1[5] + 8) + 24);
  if (v11 <= 0.0)
  {
    v14 = CGRectGetMinY(*(*(a1[4] + 8) + 32)) + a3;
  }

  else
  {
    v12 = v11 + a3;
    [v21 _firstBaselineOffsetFromTop];
    *&v13 = v12 - v13;
    v14 = ceilf(*&v13);
  }

  if (v9 >= v7)
  {
    v15 = v7;
  }

  else
  {
    v15 = v9;
  }

  v16 = v15;
  v17 = ceilf(v16);
  [v21 setFrame:{MinX, v14, v6, v17}];
  v23.origin.x = MinX;
  v23.origin.y = v14;
  v23.size.width = v6;
  v23.size.height = v17;
  *(*(a1[4] + 8) + 56) = *(*(a1[4] + 8) + 56) - CGRectGetHeight(v23);
  Height = CGRectGetHeight(*(*(a1[4] + 8) + 32));
  if (Height < 0.0)
  {
    Height = 0.0;
  }

  *(*(a1[4] + 8) + 56) = Height;
  v24.origin.x = MinX;
  v24.origin.y = v14;
  v24.size.width = v6;
  v24.size.height = v17;
  MaxY = CGRectGetMaxY(v24);
  [v21 _baselineOffsetFromBottom];
  *(*(a1[5] + 8) + 24) = MaxY - v20;
  v25.origin.x = MinX;
  v25.origin.y = v14;
  v25.size.width = v6;
  v25.size.height = v17;
  *(*(a1[6] + 8) + 24) = CGRectGetMaxY(v25);
}

id sub_7CF8(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_7DC8;
  v3[3] = &unk_87D678;
  v4 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_7EA8;
  v2[3] = &unk_87D6A0;
  v2[4] = v4;
  return [UIView animateWithDuration:2 delay:v3 options:v2 animations:0.2 completion:0.0];
}

void sub_7DC8(uint64_t a1)
{
  v2 = [*(a1 + 32) toastView];
  v3 = [v2 contentView];
  v4 = [v3 superview];
  [v4 setAlpha:0.0];

  v5 = +[UIColor clearColor];
  v6 = [*(a1 + 32) toastView];
  [v6 setBackgroundColor:v5];

  CGAffineTransformMakeScale(&v9, 0.88, 0.88);
  v7 = [*(a1 + 32) view];
  v8 = v9;
  [v7 setTransform:&v8];
}

id sub_7EA8(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 1.0, 1.0);
  v2 = [*(a1 + 32) view];
  v4 = v5;
  [v2 setTransform:&v4];

  return [*(a1 + 32) dismissViewControllerAnimated:0 completion:0];
}

id sub_82B4()
{
  result = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.5 controlPoint2:{0.0, 1.0, 1.0}];
  qword_93C158 = result;
  return result;
}

id sub_82F8()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:350.0 damping:38.0 initialVelocity:{0.0, 0.0}];
  qword_93C168 = result;
  return result;
}

void sub_83E4()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_selectedBackgroundView];
  v7.receiver = v0;
  v7.super_class = ObjectType;
  [v2 setHidden:{objc_msgSendSuper2(&v7, "isSelected") ^ 1}];
  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_titleLabel];
  v6.receiver = v0;
  v6.super_class = ObjectType;
  if (objc_msgSendSuper2(&v6, "isSelected"))
  {
    v4 = [objc_opt_self() systemWhiteColor];
  }

  else
  {
    sub_BE70(0, &qword_93E540);
    v4 = sub_769FD0();
  }

  v5 = v4;
  [v3 setTextColor:v4];
}

id sub_84DC(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v5, *a3);
}

id sub_8570(char a1)
{
  ObjectType = swift_getObjectType();
  v11.receiver = v1;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, "setEnabled:", a1 & 1);
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_titleLabel];
  v10.receiver = v1;
  v10.super_class = ObjectType;
  if (objc_msgSendSuper2(&v10, "isEnabled"))
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.4;
  }

  [v4 setAlpha:v5];
  v6 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_artworkView];
  v9.receiver = v1;
  v9.super_class = ObjectType;
  if (objc_msgSendSuper2(&v9, "isEnabled"))
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.4;
  }

  return [v6 setAlpha:v7];
}

uint64_t sub_8648@<X0>(uint64_t *a1@<X8>)
{
  v37 = a1;
  v2 = sub_7672E0();
  v3 = *(v2 - 8);
  v4 = (__chkstk_darwin)();
  v34 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v31 = &v30 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v30 - v9;
  __chkstk_darwin(v8);
  v12 = &v30 - v11;
  v36 = sub_766BD0();
  v35 = *(v36 - 8);
  v13 = __chkstk_darwin(v36);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v32 = &v30 - v16;
  sub_766BA0();
  v30 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_artworkView);
  v17 = v30;
  v48 = sub_759210();
  v49 = sub_A208(&unk_93E520, &type metadata accessor for ArtworkView);
  v47[0] = v17;
  *(v12 + 3) = &type metadata for CGFloat;
  *(v12 + 4) = &protocol witness table for CGFloat;
  *v12 = 0x4046000000000000;
  v18 = enum case for Resize.Rule.replaced(_:);
  v19 = *(v3 + 104);
  v19(v12, enum case for Resize.Rule.replaced(_:), v2);
  *(v10 + 3) = &type metadata for CGFloat;
  *(v10 + 4) = &protocol witness table for CGFloat;
  *v10 = 0x4046000000000000;
  v19(v10, v18, v2);
  v20 = enum case for Resize.Rule.unchanged(_:);
  v19(v31, enum case for Resize.Rule.unchanged(_:), v2);
  v19(v34, v20, v2);
  v51 = sub_7672F0();
  v52 = &protocol witness table for Resize;
  sub_B1B4(v50);
  v21 = v30;
  sub_767300();
  v22 = v32;
  sub_766BB0();
  v23 = *(v35 + 8);
  v24 = v36;
  v23(v15, v36);
  sub_BEB8(v50);
  v25 = *(v33 + OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_titleLabel);
  v48 = sub_75BB20();
  v49 = &protocol witness table for UILabel;
  v47[0] = v25;
  v51 = v24;
  v52 = &protocol witness table for HorizontalStack;
  sub_B1B4(v50);
  v26 = v25;
  sub_766BB0();
  v23(v22, v24);
  sub_BEB8(v47);
  v49 = &protocol witness table for CGFloat;
  v48 = &type metadata for CGFloat;
  v46 = &protocol witness table for CGFloat;
  v47[0] = 0x4024000000000000;
  v45 = &type metadata for CGFloat;
  v43 = &protocol witness table for CGFloat;
  v44 = 0x4024000000000000;
  v42 = &type metadata for CGFloat;
  v40 = &protocol witness table for CGFloat;
  v41 = 0x4024000000000000;
  v39 = &type metadata for CGFloat;
  v38 = 0x4024000000000000;
  v27 = sub_767340();
  v28 = v37;
  v37[3] = v27;
  v28[4] = &protocol witness table for Margins;
  sub_B1B4(v28);
  return sub_767350();
}

id sub_8C00()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  sub_8648(v7);
  sub_B170(v7, v7[3]);
  sub_75D650();
  v2 = [v0 traitCollection];
  sub_7673E0();

  sub_BEB8(v7);
  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_shadowView];
  [v1 bounds];
  [v3 setFrame:?];
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_backgroundView];
  [v1 bounds];
  [v4 setFrame:?];
  v5 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_selectedBackgroundView];
  [v4 bounds];
  return [v5 setFrame:?];
}

void sub_8F00(void *a1)
{
  ObjectType = swift_getObjectType();
  if (qword_93C150 != -1)
  {
    swift_once();
  }

  v3 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_93C158 timingParameters:0.08];
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = ObjectType;
  v7[4] = sub_C3E4;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_23F0CC;
  v7[3] = &unk_87FB30;
  v5 = _Block_copy(v7);
  v6 = a1;

  [v3 addAnimations:v5];
  _Block_release(v5);
  [v3 startAnimation];
}

id MetadataRibbonView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_92D4()
{
  sub_8648(v3);
  sub_B170(v3, v3[3]);
  sub_7673F0();
  v1 = v0;
  sub_BEB8(v3);
  return v1;
}

id variable initialization expression of CondensedEditorialSearchResultContentView.viewButton()
{
  v0 = [objc_opt_self() buttonWithType:0];

  return v0;
}

uint64_t variable initialization expression of CondensedEditorialSearchResultContentView.configuration@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for CondensedSearchResultCardLayout.Configuration.standard(_:);
  v3 = sub_7631F0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

double variable initialization expression of CondensedEditorialSearchResultContentView.artworkSize()
{
  v0 = sub_7632B0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_7631F0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, enum case for CondensedSearchResultCardLayout.Configuration.standard(_:), v4);
  sub_7631D0();
  (*(v5 + 8))(v7, v4);
  sub_763210();
  v9 = v8;
  (*(v1 + 8))(v3, v0);
  return v9;
}

double variable initialization expression of LinkableHeaderViewLayout.Metrics.bottomSpace@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

char *variable initialization expression of CondensedInAppPurchaseContentView.inAppPurchaseView()
{
  v0 = sub_757CA0();
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757C20();
  v3 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  return sub_243D30(v2, 1);
}

uint64_t sub_979C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

__n128 initializeBufferWithCopyOfBuffer for SearchLockupListCollectionViewCell.ListConfiguration(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_9934(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_9968(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_9988(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for FixedSizedPlaceholder(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for FixedSizedPlaceholder(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_9B04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_769240();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_9B3C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_9B68(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_9BEC@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void *sub_9C30@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_9C5C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

BOOL sub_9D28(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_9DCC(uint64_t a1, id *a2)
{
  result = sub_769220();
  *a2 = 0;
  return result;
}

uint64_t sub_9E44(uint64_t a1, id *a2)
{
  v3 = sub_769230();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_9EC4@<X0>(void *a1@<X8>)
{
  sub_769240();
  v2 = sub_769210();

  *a1 = v2;
  return result;
}

uint64_t sub_9F10(uint64_t a1, uint64_t a2)
{
  result = sub_769680();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_9F64(uint64_t a1, uint64_t a2)
{
  v3 = sub_769690();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_9FBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_7696A0();
  *a1 = result;
  return result;
}

Swift::Int sub_9FE4()
{
  v1 = *v0;
  sub_76AA30();
  sub_76AA40(v1);
  return sub_76AA80();
}

Swift::Int sub_A02C()
{
  v1 = *v0;
  sub_76AA30();
  sub_76AA40(v1);
  return sub_76AA80();
}

uint64_t sub_A070@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_CED4(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_A0BC()
{
  sub_A208(&qword_93E5F0, type metadata accessor for UIContentSizeCategory);
  sub_A208(&qword_93E5F8, type metadata accessor for UIContentSizeCategory);

  return sub_76A8D0();
}

uint64_t sub_A208(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_A2E0()
{
  sub_A208(&qword_93E978, type metadata accessor for DeviceType);
  sub_A208(&qword_93E980, type metadata accessor for DeviceType);

  return sub_76A8D0();
}

uint64_t sub_A39C()
{
  sub_A208(&qword_93E9D8, type metadata accessor for AIDAServiceType);
  sub_A208(&unk_93E9E0, type metadata accessor for AIDAServiceType);

  return sub_76A8D0();
}

uint64_t sub_A458()
{
  sub_A208(&qword_93E928, type metadata accessor for Mode);
  sub_A208(&qword_93E930, type metadata accessor for Mode);

  return sub_76A8D0();
}

uint64_t sub_A514()
{
  sub_A208(&qword_93E5C0, type metadata accessor for Category);
  sub_A208(&qword_93E5C8, type metadata accessor for Category);

  return sub_76A8D0();
}

uint64_t sub_A5D0()
{
  sub_A208(&qword_93E5D0, type metadata accessor for ActivityType);
  sub_A208(&qword_93E5D8, type metadata accessor for ActivityType);

  return sub_76A8D0();
}

uint64_t sub_A68C()
{
  sub_A208(&qword_93E988, type metadata accessor for TextStyle);
  sub_A208(&unk_93E990, type metadata accessor for TextStyle);

  return sub_76A8D0();
}

uint64_t sub_A748()
{
  sub_A208(&qword_93E5E0, type metadata accessor for CAGradientLayerType);
  sub_A208(&qword_93E5E8, type metadata accessor for CAGradientLayerType);

  return sub_76A8D0();
}

uint64_t sub_A8DC()
{
  sub_A208(&qword_93EC10, type metadata accessor for Key);
  sub_A208(&qword_93E9A0, type metadata accessor for Key);

  return sub_76A8D0();
}

uint64_t sub_A998()
{
  sub_A208(&qword_93E918, type metadata accessor for NSKeyValueChangeKey);
  sub_A208(&qword_93E920, type metadata accessor for NSKeyValueChangeKey);

  return sub_76A8D0();
}

uint64_t sub_AA54()
{
  sub_A208(&qword_93E958, type metadata accessor for FeatureKey);
  sub_A208(&qword_93E960, type metadata accessor for FeatureKey);

  return sub_76A8D0();
}

uint64_t sub_AB10@<X0>(void *a1@<X8>)
{
  v2 = sub_769210();

  *a1 = v2;
  return result;
}

uint64_t sub_AB58()
{
  sub_A208(&qword_93E948, type metadata accessor for AttributeName);
  sub_A208(&qword_93E950, type metadata accessor for AttributeName);

  return sub_76A8D0();
}

uint64_t sub_AC14()
{
  sub_A208(&qword_93E968, type metadata accessor for BuildType);
  sub_A208(&qword_93E970, type metadata accessor for BuildType);

  return sub_76A8D0();
}

uint64_t sub_ACD0()
{
  sub_A208(&qword_93E938, type metadata accessor for UIBackgroundTaskIdentifier);
  sub_A208(&qword_93E940, type metadata accessor for UIBackgroundTaskIdentifier);
  return sub_76A8D0();
}

uint64_t sub_AEF4()
{
  sub_769240();
  v0 = sub_7693D0();

  return v0;
}

uint64_t sub_AF30()
{
  sub_769240();
  sub_769330();
}

Swift::Int sub_AF84()
{
  sub_769240();
  sub_76AA30();
  sub_769330();
  v0 = sub_76AA80();

  return v0;
}

void *sub_B170(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *sub_B1B4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_B218()
{
  v0 = sub_769240();
  v2 = v1;
  if (v0 == sub_769240() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_76A950();
  }

  return v5 & 1;
}

char *sub_B2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v82 = a2;
  v83 = a3;
  v91 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_7593D0();
  v88 = *(v5 - 8);
  v89 = v5;
  __chkstk_darwin(v5);
  v87 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&qword_94BAC0);
  __chkstk_darwin(v7 - 8);
  v86 = &v80 - v8;
  v9 = sub_768C60();
  v84 = *(v9 - 8);
  v85 = v9;
  __chkstk_darwin(v9);
  v81 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_760AD0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v15 - 8);
  v17 = &v80 - v16;
  v18 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_titleLabel;
  *v17 = UIFontTextStyleSubheadline;
  *(v17 + 1) = UIFontWeightSemibold;
  v19 = enum case for FontUseCase.preferredFontDerivative(_:);
  v20 = sub_7666D0();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v17, v19, v20);
  (*(v21 + 56))(v17, 0, 1, v20);
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v22 = objc_allocWithZone(sub_75BB20());
  v23 = UIFontTextStyleSubheadline;
  *&v4[v18] = sub_75BB10();
  v24 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_shadowView;
  sub_758E80();
  *&v4[v24] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v25 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_artworkView;
  sub_759210();
  *&v4[v25] = sub_759020();
  v26 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_backgroundView;
  sub_75CD70();
  *&v4[v26] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v27 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_selectedBackgroundView;
  *&v4[v27] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v28 = &v4[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_action];
  v29 = v83;
  *v28 = v82;
  *(v28 + 1) = v29;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_category] = v91;
  v95.receiver = v4;
  v95.super_class = ObjectType;

  v30 = objc_msgSendSuper2(&v95, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);

  v31 = sub_7619B0();
  v33 = v32;

  v94 = &type metadata for String;
  v93[0] = v31;
  v93[1] = v33;
  memset(v92, 0, sizeof(v92));
  v34 = v81;
  sub_768C50();
  sub_BDD0(v92);
  sub_BDD0(v93);
  sub_769E70();
  (*(v84 + 8))(v34, v85);
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v35 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_shadowView;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_shadowView]];
  v36 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_backgroundView;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_backgroundView]];
  v37 = *&v30[v36];
  v84 = v36;
  v85 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_selectedBackgroundView;
  [v37 addSubview:*&v30[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_selectedBackgroundView]];
  v38 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_artworkView;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_artworkView]];
  v39 = *&v30[v38];
  v40 = objc_opt_self();
  v41 = v39;
  v42 = [v40 clearColor];
  sub_7590B0();

  v83 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_titleLabel;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_titleLabel]];
  v43 = qword_93C5B0;
  v44 = *&v30[v35];
  if (v43 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v45 = sub_765080();
    v46 = sub_BE38(v45, qword_99B670);
    v47 = *(v45 - 8);
    v48 = v86;
    (*(v47 + 16))(v86, v46, v45);
    (*(v47 + 56))(v48, 0, 1, v45);
    sub_758E60();

    v49 = *&v30[v35];
    v50 = enum case for CornerStyle.continuous(_:);
    v51 = v87;
    v52 = v88;
    v86 = *(v88 + 104);
    v53 = v89;
    (v86)(v87, enum case for CornerStyle.continuous(_:), v89);
    v54 = v49;
    sub_758E70();

    v55 = *(v52 + 8);
    v55(v51, v53);
    v56 = v84;
    v57 = *&v30[v84];
    v88 = sub_BE70(0, &qword_93E540);
    v58 = v57;
    v59 = sub_76A090();
    [v58 setBackgroundColor:v59];

    v60 = *&v30[v56];
    (v86)(v51, v50, v53);
    v61 = v60;
    sub_75CCD0();

    v55(v51, v53);
    v62 = v83;
    v63 = *&v30[v83];
    sub_7619C0();
    v64 = sub_769210();

    [v63 setText:v64];

    v65 = *&v30[v62];
    v66 = sub_769FD0();
    [v65 setTextColor:v66];

    v67 = v85;
    [*&v30[v85] setHidden:1];
    v68 = *&v30[v67];
    sub_BD88(&unk_93F5C0);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_77B6C0;
    v70 = v68;
    *(v69 + 32) = sub_7619A0();
    *(v69 + 40) = sub_761980();
    *&v70[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = v69;

    sub_4AC204();

    v71 = [v30 subviews];
    sub_BE70(0, &qword_93E550);
    v72 = sub_769460();

    if (v72 >> 62)
    {
      break;
    }

    v44 = *(&dword_10 + (v72 & 0xFFFFFFFFFFFFFF8));
    if (!v44)
    {
      goto LABEL_16;
    }

LABEL_4:
    v35 = 0;
    while (1)
    {
      if ((v72 & 0xC000000000000001) != 0)
      {
        v73 = sub_76A770();
      }

      else
      {
        if (v35 >= *(&dword_10 + (v72 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_13;
        }

        v73 = *(v72 + 8 * v35 + 32);
      }

      v74 = v73;
      v75 = (v35 + 1);
      if (__OFADD__(v35, 1))
      {
        break;
      }

      [v73 setUserInteractionEnabled:0];

      ++v35;
      if (v75 == v44)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    swift_once();
  }

  v44 = sub_76A860();
  if (v44)
  {
    goto LABEL_4;
  }

LABEL_16:

  v76 = v30;
  [v76 addTarget:v76 action:"didTap" forControlEvents:64];
  [v76 addTarget:v76 action:"didPress:" forControlEvents:1];

  [v76 addTarget:v76 action:"didRelease:" forControlEvents:480];
  sub_BD88(&qword_9477F0);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_77B6D0;
  *(v77 + 32) = sub_767B80();
  *(v77 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v94 = ObjectType;
  v93[0] = v76;
  v78 = v76;
  sub_769F30();
  swift_unknownObjectRelease();

  sub_BEB8(v93);
  return v78;
}

uint64_t sub_BD88(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_BDD0(uint64_t a1)
{
  v2 = sub_BD88(&unk_93FBD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_BE38(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_BE70(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_BEB8(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_BF04()
{
  v1 = v0;
  v2 = sub_760AD0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&unk_93E530);
  __chkstk_darwin();
  v7 = &v17 - v6;
  v8 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_titleLabel;
  *v7 = UIFontTextStyleSubheadline;
  *(v7 + 1) = UIFontWeightSemibold;
  v9 = enum case for FontUseCase.preferredFontDerivative(_:);
  v10 = sub_7666D0();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v7, v9, v10);
  (*(v11 + 56))(v7, 0, 1, v10);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  objc_allocWithZone(sub_75BB20());
  v12 = UIFontTextStyleSubheadline;
  *(v1 + v8) = sub_75BB10();
  v13 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_shadowView;
  sub_758E80();
  *(v1 + v13) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_artworkView;
  sub_759210();
  *(v1 + v14) = sub_759020();
  v15 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_backgroundView;
  sub_75CD70();
  *(v1 + v15) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_selectedBackgroundView;
  *(v1 + v16) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  sub_76A840();
  __break(1u);
}

void sub_C1D4(void *a1)
{
  if (qword_93C160 != -1)
  {
    swift_once();
  }

  v2 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_93C168 timingParameters:0.5];
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_C354;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_23F0CC;
  v6[3] = &unk_87FAE0;
  v4 = _Block_copy(v6);
  v5 = a1;

  [v2 addAnimations:v4];
  _Block_release(v4);
  [v2 startAnimation];
}

uint64_t sub_C31C()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_C354()
{
  v1 = *(v0 + 16);
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform:v3];
}

uint64_t sub_C394(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_C3AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

__n128 sub_C43C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_C450(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_C470(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_CED4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_CF48(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id sub_D134(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_metadataRibbonItemViews] = &_swiftEmptyArrayStorage;
  sub_761D50();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_metadataRibbonItemModels] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_shouldEvenlyDistribute] = 2;
  v4[OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_isInsideSearchAd] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_impressionsCalculator] = 0;
  v10 = &v4[OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_impressionsUpdateBlock];
  *v10 = 0;
  v10[1] = 0;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v15 = v11;
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  if (qword_93C170 != -1)
  {
    swift_once();
  }

  [v15 setMaximumContentSizeCategory:qword_93EB70];
  sub_BD88(&qword_9477F0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_77B6D0;
  *(v16 + 32) = sub_7676F0();
  *(v16 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_769F40();

  swift_unknownObjectRelease();

  return v15;
}

uint64_t sub_D36C(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

unint64_t sub_D3A4(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_metadataRibbonItemViews;
  v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_metadataRibbonItemViews];
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = 32;
    do
    {
      [*(v5 + v7) removeFromSuperview];
      v7 += 16;
      --v6;
    }

    while (v6);
  }

  *&v2[v4] = a1;

  v8 = *&v2[v4];

  result = sub_761D40();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (*(v8 + 16) >= result)
    {
      v10 = result;
    }

    else
    {
      v10 = *(v8 + 16);
    }

    if (result)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = (v8 + 32);
      do
      {
        v13 = *v12;
        v12 += 2;
        [v2 addSubview:v13];
        --v10;
      }

      while (v10);
    }

    swift_unknownObjectRelease();

    return [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_D4B4()
{
  ObjectType = swift_getObjectType();
  v2 = sub_7664F0();
  v43 = *(v2 - 8);
  v44 = v2;
  __chkstk_darwin(v2);
  v41 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_761D60();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v36 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_93EBE0);
  v7 = __chkstk_darwin(v6 - 8);
  v48 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v35 - v9;
  v51 = sub_BD88(&qword_9419E0);
  v11 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v35 - v12;
  v13 = sub_761D70();
  v39 = *(v13 - 8);
  v40 = v13;
  __chkstk_darwin(v13);
  v35 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53.receiver = v0;
  v53.super_class = ObjectType;
  v42 = ObjectType;
  objc_msgSendSuper2(&v53, "layoutSubviews");
  v45 = v0;
  v15 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_metadataRibbonItemViews];
  v16 = *(v15 + 16);

  v49 = v16;
  if (v16)
  {
    v18 = 0;
    v46 = v11;
    v47 = (v11 + 48);
    v19 = v15 + 40;
    v52 = &_swiftEmptyArrayStorage;
    v20 = &unk_77DB20;
    while (v18 < *(v15 + 16))
    {
      v21 = *(v19 - 8);
      swift_getObjectType();
      v22 = v21;
      v23 = v20;
      v24 = v48;
      sub_75FCF0();
      v25 = v24;
      v20 = v23;
      sub_109C4(v25, v10, &unk_93EBE0);

      if ((*v47)(v10, 1, v51) == 1)
      {
        result = sub_10A2C(v10, &unk_93EBE0);
      }

      else
      {
        sub_109C4(v10, v50, &qword_9419E0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_7AC4C(0, v52[2] + 1, 1, v52);
        }

        v27 = v52[2];
        v26 = v52[3];
        if (v27 >= v26 >> 1)
        {
          v52 = sub_7AC4C(v26 > 1, v27 + 1, 1, v52);
        }

        v28 = v52;
        v52[2] = v27 + 1;
        result = sub_109C4(v50, v28 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v27, &qword_9419E0);
      }

      ++v18;
      v19 += 16;
      if (v49 == v18)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v52 = &_swiftEmptyArrayStorage;
LABEL_13:

    v29 = v45;
    (*(v37 + 16))(v36, &v45[OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_metrics], v38);
    v30 = v35;
    sub_761D10();
    sub_75D650();
    v31 = v41;
    sub_761D30();
    (*(v43 + 8))(v31, v44);
    v32 = &v29[OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_impressionsUpdateBlock];
    swift_beginAccess();
    v33 = *v32;
    if (*v32)
    {
      swift_endAccess();

      v33(v34);
      sub_F704(v33);
      return (*(v39 + 8))(v30, v40);
    }

    else
    {
      (*(v39 + 8))(v30, v40);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_DAB8(uint64_t a1)
{
  v30 = a1;
  v27 = sub_761D60();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_761D70();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v23 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&unk_93EBE0);
  v5 = __chkstk_darwin(v4 - 8);
  v33 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  v36 = sub_BD88(&qword_9419E0);
  v9 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v23 - v10;
  v29 = v1;
  v11 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_metadataRibbonItemViews);
  v12 = *(v11 + 16);

  v34 = v12;
  if (v12)
  {
    v14 = 0;
    v31 = v9;
    v32 = (v9 + 48);
    v15 = v11 + 40;
    v37 = &_swiftEmptyArrayStorage;
    while (v14 < *(v11 + 16))
    {
      v16 = *(v15 - 8);
      swift_getObjectType();
      v17 = v16;
      v18 = v33;
      sub_75FCF0();
      sub_109C4(v18, v8, &unk_93EBE0);

      if ((*v32)(v8, 1, v36) == 1)
      {
        result = sub_10A2C(v8, &unk_93EBE0);
      }

      else
      {
        sub_109C4(v8, v35, &qword_9419E0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_7AC4C(0, v37[2] + 1, 1, v37);
        }

        v20 = v37[2];
        v19 = v37[3];
        if (v20 >= v19 >> 1)
        {
          v37 = sub_7AC4C(v19 > 1, v20 + 1, 1, v37);
        }

        v21 = v37;
        v37[2] = v20 + 1;
        result = sub_109C4(v35, v21 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v20, &qword_9419E0);
      }

      ++v14;
      v15 += 16;
      if (v34 == v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = &_swiftEmptyArrayStorage;
LABEL_13:

    (*(v25 + 16))(v24, v29 + OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_metrics, v27);
    v22 = v23;
    sub_761D10();
    sub_761D20();
    return (*(v26 + 8))(v22, v28);
  }

  return result;
}

id sub_DFF8(unint64_t a1, char a2, char *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = sub_761C80();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_shouldEvenlyDistribute) = a2;
  v12 = _swiftEmptyArrayStorage;
  *&v42 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_49;
  }

  v37 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (v37)
  {
    while (1)
    {
      v29[1] = a3;
      v30 = v4;
      v13 = 0;
      v38 = a1;
      v40 = a1 & 0xFFFFFFFFFFFFFF8;
      v41 = a1 & 0xC000000000000001;
      v4 = (v9 + 88);
      a1 = enum case for MetadataRibbonItemViewType.borderedTextLabel(_:);
      v14 = enum case for MetadataRibbonItemViewType.editorsChoice(_:);
      v15 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
      LODWORD(v39) = enum case for MetadataRibbonItemViewType.starRating(_:);
      v35 = enum case for MetadataRibbonItemViewType.divider(_:);
      v36 = enum case for MetadataRibbonItemViewType.textLabel(_:);
      v31 = (v9 + 8);
      v32 = v11;
      v34 = enum case for MetadataRibbonItemViewType.highlightedText(_:);
      while (v41)
      {
        v9 = sub_76A770();
        a3 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
LABEL_31:
          __break(1u);
LABEL_32:
          v4 = v30;
          *(v30 + OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_metadataRibbonItemModels) = v42;

          v11 = 0;
          v8 = 0;
          v12 = _swiftEmptyArrayStorage;
          v23 = v38;
          while (1)
          {
            if (v41)
            {
              v24 = sub_76A770();
              a3 = (v11 + 1);
              if (__OFADD__(v11, 1))
              {
                goto LABEL_47;
              }
            }

            else
            {
              if (v11 >= *(v40 + 16))
              {
                goto LABEL_48;
              }

              v24 = *(v23 + 8 * v11 + 32);

              a3 = (v11 + 1);
              if (__OFADD__(v11, 1))
              {
                goto LABEL_47;
              }
            }

            v43 = v24;
            sub_E43C(&v43, v4, &v42);

            if (v42)
            {
              v39 = v42;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v12 = sub_7AC98(0, *(v12 + 2) + 1, 1, v12);
              }

              a1 = *(v12 + 2);
              v25 = *(v12 + 3);
              v26 = v39;
              if (a1 >= v25 >> 1)
              {
                v27 = sub_7AC98((v25 > 1), a1 + 1, 1, v12);
                v26 = v39;
                v12 = v27;
              }

              *(v12 + 2) = a1 + 1;
              *(v12 + a1 + 2) = v26;
            }

            ++v11;
            if (a3 == v9)
            {
              goto LABEL_51;
            }
          }
        }

LABEL_8:
        v12 = v9;
        sub_75D750();
        v16 = (*v4)(v11, v8);
        if (v16 == a1 || v16 == v14 || v16 == v15 || v16 == v39 || v16 == v36 || v16 == v35 || v16 == v34)
        {
          v12 = &v42;
          sub_76A7A0();
          sub_76A7D0();
          v11 = v32;
          sub_76A7E0();
          sub_76A7B0();
        }

        else
        {

          (*v31)(v11, v8);
        }

        ++v13;
        v9 = v37;
        if (a3 == v37)
        {
          goto LABEL_32;
        }
      }

      if (v13 < *(v40 + 16))
      {
        break;
      }

      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      v37 = sub_76A860();
      if (!v37)
      {
        goto LABEL_50;
      }
    }

    v9 = *(v38 + 8 * v13 + 32);

    a3 = (v13 + 1);
    if (__OFADD__(v13, 1))
    {
      goto LABEL_31;
    }

    goto LABEL_8;
  }

LABEL_50:
  *(v4 + OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_metadataRibbonItemModels) = v12;

LABEL_51:
  sub_D3A4(v12);
  return [v4 setNeedsLayout];
}

uint64_t sub_E43C@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v6 = sub_766D70();
  v67 = *(v6 - 8);
  v68 = v6;
  __chkstk_darwin(v6);
  v66 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_767030();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v61 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v62 = &v52 - v10;
  __chkstk_darwin(v11);
  v64 = &v52 - v12;
  v13 = sub_BD88(&qword_93EBC0);
  __chkstk_darwin(v13 - 8);
  v15 = &v52 - v14;
  v16 = *a1;
  result = sub_5CC98();
  if (result)
  {
    v19 = result;
    v20 = v18;
    v21 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    sub_75FD30();
    sub_75D770();
    sub_75FD10();
    sub_75D7A0();
    v22 = sub_75FC90();
    (*(*(v22 - 8) + 56))(v15, 0, 1, v22);
    sub_75FD40();
    v56 = sub_75D740();
    v24 = v23;
    v25 = [a2 traitCollection];
    v59 = v20;
    v60 = a3;
    v57 = v21;
    v58 = v19;
    if (v24)
    {
    }

    else
    {
      v52 = v25;
      v53 = v24;
      v54 = a2;
      v55 = v16;
      v26 = v61;
      sub_767020();
      sub_766B40();
      if (qword_93C740 != -1)
      {
        swift_once();
      }

      v27 = sub_760500();
      v28 = sub_BE38(v27, qword_99BB00);
      v70 = v27;
      v71 = sub_1092C(&qword_9443B0, &type metadata accessor for MetadataRibbonTextStyle);
      v29 = sub_B1B4(v69);
      (*(*(v27 - 8) + 16))(v29, v28, v27);
      v30 = v62;
      sub_766F80();
      v31 = v63;
      v32 = *(v63 + 8);
      v33 = v65;
      v32(v26, v65);
      sub_BEB8(v69);
      v34 = v64;
      sub_767010();
      v32(v30, v33);
      v72._countAndFlagsBits = 77;
      v72._object = 0xE100000000000000;
      sub_7693E0(v72, v56);
      (*(v31 + 16))(v30, v34, v33);
      sub_766D50();
      v35 = v66;
      sub_766D90();
      v36 = v52;
      sub_766D60();

      (*(v67 + 8))(v35, v68);
      v32(v34, v33);
      v20 = v59;
      a3 = v60;
      a2 = v54;
      v21 = v57;
    }

    sub_75FCB0();
    v56 = sub_75D780();
    v38 = v37;
    v39 = [a2 traitCollection];
    if (v38)
    {
    }

    else
    {
      v54 = v39;
      LODWORD(v55) = v38;
      v40 = v61;
      sub_767020();
      sub_766B40();
      if (qword_93C740 != -1)
      {
        swift_once();
      }

      v41 = sub_760500();
      v42 = sub_BE38(v41, qword_99BB00);
      v70 = v41;
      v71 = sub_1092C(&qword_9443B0, &type metadata accessor for MetadataRibbonTextStyle);
      v43 = sub_B1B4(v69);
      (*(*(v41 - 8) + 16))(v43, v42, v41);
      v44 = v62;
      sub_766F80();
      v45 = v63;
      v46 = *(v63 + 8);
      v47 = v40;
      v48 = v65;
      v46(v47, v65);
      sub_BEB8(v69);
      v49 = v64;
      sub_767010();
      v46(v44, v48);
      v73._countAndFlagsBits = 77;
      v73._object = 0xE100000000000000;
      sub_7693E0(v73, v56);
      (*(v45 + 16))(v44, v49, v48);
      sub_766D50();
      v50 = v66;
      sub_766D90();
      v51 = v54;
      sub_766D60();

      (*(v67 + 8))(v50, v68);
      v46(v49, v48);
      v20 = v59;
      a3 = v60;
      v21 = v57;
    }

    sub_75FD00();
    sub_75D720();
    result = sub_75FCD0();
    *a3 = v21;
    a3[1] = v20;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_EC48()
{
  swift_getObjectType();

  v1 = sub_101F5C(v0, 0);

  return v1 & 1;
}

void sub_ECB4()
{
  v0 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v0 - 8);
  v2 = v36 - v1;
  v3 = sub_768AB0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = swift_weakLoadStrong();
    if (v9)
    {
      v10 = v9;
      v11 = *&v8[OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_metadataRibbonItemModels];
      if (v11)
      {
        v42 = v6;
        v38 = v8;
        v12 = *&v8[OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_metadataRibbonItemViews];
        v13 = *(v12 + 16);

        v47 = v13;
        if (v13)
        {
          v14 = 0;
          v15 = v11 & 0xFFFFFFFFFFFFFF8;
          if (v11 >= 0)
          {
            v16 = v11 & 0xFFFFFFFFFFFFFF8;
          }

          else
          {
            v16 = v11;
          }

          v36[1] = v16;
          v43 = (v4 + 48);
          v44 = v11 & 0xFFFFFFFFFFFFFF8;
          v39 = (v4 + 8);
          v40 = (v4 + 32);
          v17 = 32;
          v45 = v11 & 0xC000000000000001;
          v46 = v11 >> 62;
          v37 = v2;
          v41 = v11;
          while (v14 < *(v12 + 16))
          {
            v18 = *(v12 + v17);
            if (v46)
            {
              if (v14 == sub_76A860())
              {
                goto LABEL_24;
              }
            }

            else if (v14 == *(v15 + 16))
            {
              goto LABEL_24;
            }

            if (v45)
            {
              v35 = v18;
              sub_76A770();
            }

            else
            {
              if (v14 >= *(v15 + 16))
              {
                goto LABEL_29;
              }

              v19 = v18;
            }

            sub_75D730();
            if ((*v43)(v2, 1, v3) == 1)
            {

              sub_10A2C(v2, &unk_93FF30);
            }

            else
            {
              v20 = v42;
              (*v40)(v42, v2, v3);
              if ([v18 isHidden])
              {
                (*v39)(v20, v3);
              }

              else
              {
                [v18 frame];
                v22 = v21;
                v24 = v23;
                v26 = v25;
                v28 = v27;
                v29 = v3;
                v30 = v12;
                v31 = v10;
                v32 = v38;
                v33 = [v38 superview];
                v34 = v32;
                v10 = v31;
                v12 = v30;
                v3 = v29;
                v2 = v37;
                [v34 convertRect:v33 toView:{v22, v24, v26, v28}];

                sub_75F4B0();

                (*v39)(v20, v3);
              }
            }

            ++v14;
            v17 += 16;
            v15 = v44;
            if (v47 == v14)
            {
              goto LABEL_24;
            }
          }

          __break(1u);
LABEL_29:
          __break(1u);
        }

        else
        {
LABEL_24:
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

uint64_t type metadata accessor for SearchTagsRibbonView()
{
  result = qword_93EBA8;
  if (!qword_93EBA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_F21C()
{
  result = sub_761D60();
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

uint64_t sub_F32C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_F3E8()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_F714(*v1);
  return v2;
}

uint64_t sub_F444(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_F704(v6);
}

void (*sub_F504())()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  return sub_F6FC;
}

uint64_t sub_F5A4()
{
  swift_getObjectType();

  return sub_7633E0();
}

uint64_t sub_F5FC()
{
  swift_getObjectType();

  return sub_7633D0();
}

uint64_t sub_F64C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_F684()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_F6BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_F704(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_F714(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_F730(void *a1)
{
  sub_B170(a1, a1[3]);
  v2 = sub_767660();
  if (qword_93C170 != -1)
  {
    swift_once();
  }

  v3 = qword_93EB70;
  if (sub_769B40())
  {
    v3;
  }

  sub_10974(a1, a1[3]);
  return sub_767670();
}

uint64_t sub_F7FC(unint64_t a1, int a2)
{
  v99 = a2;
  v3 = sub_761D60();
  __chkstk_darwin(v3 - 8);
  v98 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_761D70();
  v101 = *(v5 - 8);
  __chkstk_darwin(v5);
  v100 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_766D70();
  v7 = *(v120 - 8);
  __chkstk_darwin(v120);
  v119 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_767030();
  v9 = *(v118 - 8);
  __chkstk_darwin(v118);
  v11 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v117 = &v92 - v13;
  __chkstk_darwin(v14);
  v116 = &v92 - v15;
  v130 = sub_BD88(&qword_9419E0);
  v115 = *(v130 - 1);
  __chkstk_darwin(v130);
  v128 = (&v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v114 = &v92 - v18;
  __chkstk_darwin(v19);
  v131 = &v92 - v20;
  v122 = sub_761C80();
  v21 = *(v122 - 8);
  __chkstk_darwin(v122);
  v121 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75D7C0();
  v123 = a1;
  result = sub_769490();
  if (result)
  {
    v113 = sub_769A20();
    if (v123 >> 62)
    {
      result = sub_76A860();
    }

    else
    {
      result = *(&dword_10 + (v123 & 0xFFFFFFFFFFFFFF8));
    }

    v97 = v5;
    if (result)
    {
      if (result >= 1)
      {
        v24 = 0;
        v111 = v123 & 0xC000000000000001;
        v110 = (v21 + 88);
        v93 = (v21 + 8);
        v108 = (v9 + 8);
        v107 = (v9 + 16);
        v106 = (v7 + 8);
        v25 = _swiftEmptyArrayStorage;
        v109 = enum case for MetadataRibbonItemViewType.borderedTextLabel(_:);
        v104 = enum case for MetadataRibbonItemViewType.editorsChoice(_:);
        v103 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
        v102 = enum case for MetadataRibbonItemViewType.starRating(_:);
        v96 = enum case for MetadataRibbonItemViewType.textLabel(_:);
        v95 = enum case for MetadataRibbonItemViewType.divider(_:);
        v94 = enum case for MetadataRibbonItemViewType.highlightedText(_:);
        v105 = v11;
        v112 = result;
        while (1)
        {
          if (v111)
          {
            v26 = sub_76A770();
          }

          else
          {
            v26 = *(v123 + 8 * v24 + 32);
          }

          v27 = v121;
          sub_75D750();
          v28 = (*v110)(v27, v122);
          v126 = v25;
          v127 = v24;
          if (v28 == v109)
          {
            break;
          }

          if (v28 == v104)
          {
            v29 = type metadata accessor for MetadataRibbonEditorsChoiceView();
            v30 = type metadata accessor for MetadataRibbonEditorsChoiceView;
            v31 = &unk_93F600;
            goto LABEL_24;
          }

          if (v28 == v103)
          {
            v29 = type metadata accessor for MetadataRibbonIconWithLabelView(0);
            v30 = type metadata accessor for MetadataRibbonIconWithLabelView;
            v31 = &unk_93EBD0;
            goto LABEL_24;
          }

          if (v28 == v102)
          {
            v29 = type metadata accessor for MetadataRibbonStarRatingView();
            v30 = type metadata accessor for MetadataRibbonStarRatingView;
            v31 = &unk_93F610;
            goto LABEL_24;
          }

          if (v28 == v96)
          {
            v29 = type metadata accessor for MetadataRibbonTagView();
            v30 = type metadata accessor for MetadataRibbonTagView;
            v31 = &unk_93EBC8;
            goto LABEL_24;
          }

          if (v28 == v95)
          {
            v29 = type metadata accessor for MetadataRibbonBarView();
            v30 = type metadata accessor for MetadataRibbonBarView;
            v31 = &unk_93F5F0;
            goto LABEL_24;
          }

          if (v28 == v94)
          {
            v29 = type metadata accessor for MetadataRibbonHighlightedTextView();
            v30 = type metadata accessor for MetadataRibbonHighlightedTextView;
            v31 = &unk_93EBB8;
            goto LABEL_24;
          }

          (*v93)(v121, v122);
LABEL_37:
          if (v112 == ++v24)
          {
            goto LABEL_41;
          }
        }

        v29 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView();
        v30 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView;
        v31 = &unk_93EBD8;
LABEL_24:
        v32 = sub_1092C(v31, v30);
        v33 = swift_allocObject();
        v33[2] = v29;
        v33[3] = v32;
        v33[4] = v26;
        v34 = sub_7670D0();
        swift_allocObject();

        v35 = sub_767090();
        v36 = v131;
        v37 = v130[20];
        sub_75D770();
        *(v36 + 64) = v34;
        *(v36 + 72) = &protocol witness table for LayoutViewPlaceholder;
        *(v36 + 40) = v35;
        *(v36 + 80) = sub_75FD20() & 1;
        sub_75D7A0();
        v38 = sub_75FC90();
        (*(*(v38 - 8) + 56))(v36 + v37, 0, 1, v38);
        v39 = sub_75D740();
        v41 = v40;
        v42 = 0;
        v43 = 0;
        v129 = v26;
        if ((v40 & 1) == 0)
        {
          v44 = v39;
          sub_767020();
          sub_766B40();
          if (qword_93C740 != -1)
          {
            swift_once();
          }

          v45 = sub_760500();
          v46 = sub_BE38(v45, qword_99BB00);
          v133 = v45;
          v134 = sub_1092C(&qword_9443B0, &type metadata accessor for MetadataRibbonTextStyle);
          v47 = sub_B1B4(&v132);
          (*(*(v45 - 8) + 16))(v47, v46, v45);
          v48 = v117;
          sub_766F80();
          v49 = *v108;
          v50 = v118;
          (*v108)(v11, v118);
          sub_BEB8(&v132);
          v51 = v116;
          sub_767010();
          v49(v48, v50);
          v135._countAndFlagsBits = 77;
          v135._object = 0xE100000000000000;
          sub_7693E0(v135, v44);
          (*v107)(v48, v51, v50);
          sub_766D50();
          v52 = v119;
          sub_766D90();
          sub_766D60();
          v43 = v53;
          (*v106)(v52, v120);
          v49(v51, v50);
        }

        v54 = v131 + v130[24];
        *v54 = v43;
        *(v54 + 8) = v41 & 1;
        v55 = sub_75D780();
        v57 = v56;
        if ((v56 & 1) == 0)
        {
          v58 = v55;
          sub_767020();
          sub_766B40();
          if (qword_93C740 != -1)
          {
            swift_once();
          }

          v59 = sub_760500();
          v60 = sub_BE38(v59, qword_99BB00);
          v133 = v59;
          v134 = sub_1092C(&qword_9443B0, &type metadata accessor for MetadataRibbonTextStyle);
          v61 = sub_B1B4(&v132);
          (*(*(v59 - 8) + 16))(v61, v60, v59);
          v62 = v117;
          sub_766F80();
          v63 = *v108;
          v64 = v118;
          (*v108)(v11, v118);
          sub_BEB8(&v132);
          v65 = v116;
          sub_767010();
          v63(v62, v64);
          v136._countAndFlagsBits = 77;
          v136._object = 0xE100000000000000;
          sub_7693E0(v136, v58);
          (*v107)(v62, v65, v64);
          sub_766D50();
          v66 = v119;
          sub_766D90();
          sub_766D60();
          v42 = v67;
          (*v106)(v66, v120);
          v63(v65, v64);
        }

        v68 = v130;
        v69 = v131;
        v70 = v131 + v130[28];
        v71 = v130[32];
        *v70 = v42;
        *(v70 + 8) = v57 & 1;
        *(v69 + v71) = sub_75D720();
        v72 = v114;
        sub_108A4(v69, v114);
        v73 = *(v72 + 80);
        v74 = v68[20];
        v75 = v68[24];
        v125 = *(v72 + v75);
        v124 = *(v72 + v75 + 8);
        v76 = v68[28];
        v77 = *(v72 + v76);
        v78 = *(v72 + v76 + 8);
        v79 = v68[32];
        v80 = *(v72 + v79);
        v81 = v128;
        v82 = v128 + v75;
        v83 = v128 + v76;
        v84 = *(v72 + 16);
        *v128 = *v72;
        v81[1] = v84;
        *(v81 + 4) = *(v72 + 32);
        sub_10914((v72 + 40), v81 + 40);
        *(v81 + 80) = v73;
        sub_109C4(v72 + v74, v81 + v74, &qword_93EBC0);
        *v82 = v125;
        v82[8] = v124;
        *v83 = v77;
        v83[8] = v78;
        *(v81 + v79) = v80;
        v25 = v126;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_7AC4C(0, v25[2] + 1, 1, v25);
        }

        v24 = v127;
        v86 = v25[2];
        v85 = v25[3];
        v11 = v105;
        if (v86 >= v85 >> 1)
        {
          v25 = sub_7AC4C(v85 > 1, v86 + 1, 1, v25);
        }

        v25[2] = v86 + 1;
        sub_109C4(v128, v25 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v86, &qword_9419E0);
        sub_10A2C(v131, &qword_9419E0);
        goto LABEL_37;
      }

      __break(1u);
    }

    else
    {
LABEL_41:
      sub_761D50();
      v87 = v100;
      sub_761D10();
      sub_7671D0();
      sub_BD88(&unk_93F5C0);
      v88 = swift_allocObject();
      *(v88 + 16) = xmmword_77D9F0;
      v89 = v113;
      *(v88 + 32) = v113;
      v90 = v89;
      v91 = sub_7671E0();
      sub_761D20();

      return (*(v101 + 8))(v87, v97);
    }
  }

  return result;
}

uint64_t sub_1083C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_108A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_9419E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10914(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1092C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10974(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_109C4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_BD88(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10A2C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_BD88(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10A8C()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_metadataRibbonItemViews) = &_swiftEmptyArrayStorage;
  sub_761D50();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_metadataRibbonItemModels) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_shouldEvenlyDistribute) = 2;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_isInsideSearchAd) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_impressionsCalculator) = 0;
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_impressionsUpdateBlock);
  *v1 = 0;
  v1[1] = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_10BC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_75DA40();
  *a1 = result;
  return result;
}

uint64_t sub_10C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_11AA0(&qword_93EC10, type metadata accessor for Key);
  v9 = sub_7690F0();
  v8(v9, a3, a4, a5);
}

double sub_10CEC(uint64_t a1)
{
  v2 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v2 - 8);
  v4 = &v66 - v3;
  v5 = sub_766690();
  v74 = *(v5 - 8);
  __chkstk_darwin(v5);
  v73 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7656A0();
  v72 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v71 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v66 - v10;
  v12 = sub_7656C0();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v66 - v17;
  sub_759490();
  sub_11AA0(&unk_93EC00, &type metadata accessor for FramedVideo);
  sub_75C750();
  if (!aBlock[0])
  {
    return 0.0;
  }

  v70 = v5;
  v68 = v4;

  v19 = sub_759430();
  swift_getKeyPath();
  sub_75C7B0();

  v20 = (v13 + 8);
  v69 = a1;
  if (v19)
  {
    sub_765630();
    v22 = v21;
    (*v20)(v18, v12);
  }

  else
  {
    sub_765580();
    v24 = *v20;
    (*v20)(v18, v12);
    v67 = v24;
    swift_getKeyPath();
    sub_75C7B0();

    sub_7655A0();
    v24(v16, v12);
    v25 = v72;
    (*(v72 + 104))(v11, enum case for PageGrid.Direction.vertical(_:), v7);
    swift_getKeyPath();
    sub_75C7B0();

    sub_765590();
    v26 = v67;
    v67(v16, v12);
    (*(v25 + 16))(v71, v11, v7);
    sub_40DC7C(0.0);
    sub_765670();
    (*(v25 + 8))(v11, v7);
    sub_765630();
    v22 = v27;
    v26(v18, v12);
  }

  v28 = sub_759480();
  v29 = v70;
  if (v28)
  {
    sub_765260();
    v30 = v73;
    sub_7666A0();
    sub_766660();
    v32 = v31;
    (*(v74 + 8))(v30, v29);
    v33 = sub_759430();

    if (v22 >= v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = v22;
    }

    if (v33)
    {
      v34 = v32;
    }

    v23 = v34 + 0.0;
  }

  else
  {
    v23 = 0.0;
  }

  v35 = sub_759450();
  v36 = [v35 length];

  if (v36 < 1)
  {

    return v23;
  }

  sub_769DA0();
  sub_759460();
  if (v37)
  {
    if (qword_93DA18 != -1)
    {
      swift_once();
    }

    v38 = sub_7666D0();
    sub_BE38(v38, qword_99F640);
    swift_getKeyPath();
    sub_75C7B0();

    v39 = sub_7653B0();
    v77 = v39;
    v78 = sub_11AA0(&qword_93F9B0, &type metadata accessor for Feature);
    v40 = sub_B1B4(aBlock);
    (*(*(v39 - 8) + 104))(v40, enum case for Feature.measurement_with_labelplaceholder(_:), v39);
    sub_765C30();
    sub_BEB8(aBlock);
    sub_762CB0();
    swift_unknownObjectRelease();
  }

  v41 = sub_759450();

  swift_getKeyPath();
  sub_75C7B0();

  v42 = v80;
  v43 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v41];
  v44 = [v41 length];
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  *(v45 + 24) = v42;
  *(v45 + 32) = v43;
  *(v45 + 40) = 1;
  v46 = swift_allocObject();
  v46[2] = sub_119AC;
  v46[3] = v45;
  v78 = sub_119CC;
  v79 = v46;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10C1C;
  v77 = &unk_87FFF0;
  v47 = _Block_copy(aBlock);
  v48 = v42;
  v49 = v43;

  [v41 enumerateAttributesInRange:0 options:v44 usingBlock:{0x100000, v47}];

  _Block_release(v47);
  LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

  if (v41)
  {
    __break(1u);
    goto LABEL_29;
  }

  v50 = qword_93DA10;
  v46 = v49;
  if (v50 != -1)
  {
LABEL_29:
    swift_once();
  }

  v51 = sub_7666D0();
  v52 = sub_BE38(v51, qword_99F628);
  v53 = *(v51 - 8);
  v54 = v68;
  (*(v53 + 16))(v68, v52, v51);
  (*(v53 + 56))(v54, 0, 1, v51);
  swift_getKeyPath();
  sub_75C7B0();

  v55 = sub_7653B0();
  v77 = v55;
  v78 = sub_11AA0(&qword_93F9B0, &type metadata accessor for Feature);
  v56 = sub_B1B4(aBlock);
  (*(*(v55 - 8) + 104))(v56, enum case for Feature.measurement_with_labelplaceholder(_:), v55);
  sub_765C30();
  sub_BEB8(aBlock);
  sub_762CA0();
  v58 = v57;

  swift_unknownObjectRelease();
  sub_11A38(v54);
  if (qword_93E250 != -1)
  {
    swift_once();
  }

  v59 = sub_766CA0();
  sub_BE38(v59, qword_9A09B8);
  swift_getKeyPath();
  sub_75C7B0();

  sub_766720();
  v61 = v60;
  swift_unknownObjectRelease();
  v62 = v58 + v23 + v61;
  if (qword_93E258 != -1)
  {
    swift_once();
  }

  sub_BE38(v59, qword_9A09D0);
  swift_getKeyPath();
  sub_75C7B0();

  sub_7666F0();
  v64 = v63;
  swift_unknownObjectRelease();

  return v62 + v64;
}

uint64_t sub_11964()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_119F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_11A0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_75DA40();
  *a1 = result;
  return result;
}

uint64_t sub_11A38(uint64_t a1)
{
  v2 = sub_BD88(&unk_93E530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_11AA0(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_11AE8(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_999F00 + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_7634F0();
  sub_768900();
  sub_768ED0();
  *(v2 + qword_93EC20) = v10;

  v5 = sub_466E14(a1, a2);
  v6 = *&v5[qword_99E1D8];
  v7 = v5;
  v8 = v6;

  sub_75FA40();

  return v7;
}

id sub_11BF4()
{
  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 navigationItem];

    if (v3)
    {
      return v3;
    }
  }

  v5 = [v0 navigationItem];

  return v5;
}

id sub_11C8C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_768C60();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.receiver = v0;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, "viewDidLoad");
  v6 = [v0 collectionView];
  if (v6)
  {
    v7 = v6;
    [v6 setKeyboardDismissMode:1];
  }

  v8 = [v0 collectionView];
  if (v8)
  {
    v9 = v8;
    [v8 setAllowsSelection:1];
  }

  v10 = [v0 collectionView];
  if (v10)
  {
    v11 = v10;
    [v10 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  }

  result = [v0 collectionView];
  if (result)
  {
    v13 = result;
    memset(v14, 0, sizeof(v14));
    sub_768C20();
    sub_10A2C(v14, &unk_93FBD0);
    sub_769E70();

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_11E88(void *a1)
{
  v1 = a1;
  sub_11C8C();
}

void sub_11F34(void *a1, uint64_t a2, const char **a3, unsigned int *a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_7634E0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = a1;
  v14.super_class = ObjectType;
  v12 = *a3;
  v13 = a1;
  objc_msgSendSuper2(&v14, v12);
  (*(v9 + 104))(v11, *a4, v8);
  sub_7634A0();
  (*(v9 + 8))(v11, v8);
}

void sub_1207C(void *a1, uint64_t a2, uint64_t a3, const char **a4, unsigned int *a5)
{
  ObjectType = swift_getObjectType();
  v10 = sub_7634E0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = a1;
  v16.super_class = ObjectType;
  v14 = *a4;
  v15 = a1;
  objc_msgSendSuper2(&v16, v14, a3);
  (*(v11 + 104))(v13, *a5, v10);
  sub_7634A0();
  (*(v11 + 8))(v13, v10);
}

void sub_121E0(void *a1)
{
  v1 = a1;
  sub_121B8();
}

uint64_t sub_12250(unsigned int *a1, void (*a2)(void), unsigned int *a3)
{
  v20 = a1;
  v6 = v3;
  v7 = sub_7634E0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7587B0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_13468(v6 + v15, v22);
  if (v23)
  {
    sub_134D8(v22, v21);
    sub_10A2C(v22, &qword_93FED0);
    v18 = a2;
    v19 = v7;
    sub_B170(v21, v21[3]);
    (*(v12 + 104))(v14, *v20, v11);
    a2 = v18;
    v7 = v19;
    sub_7587C0();
    (*(v12 + 8))(v14, v11);
    v16 = sub_BEB8(v21);
  }

  else
  {
    v16 = sub_10A2C(v22, &qword_93FED0);
  }

  a2(v16);
  (*(v8 + 104))(v10, *a3, v7);
  sub_7634A0();
  return (*(v8 + 8))(v10, v7);
}

void sub_124E4(void *a1)
{
  v1 = a1;
  sub_12228();
}

id sub_1252C()
{
  v1 = v0;
  swift_getObjectType();
  sub_BD88(&qword_93F1E8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_77DC20;
  sub_BD88(&qword_93F1F0);
  swift_allocObject();
  swift_retain_n();

  v3 = sub_763BB0();
  v4 = sub_13374();
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  type metadata accessor for BackgroundConfigurationCollectionElementsObserver();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = sub_13420(&qword_93F200, type metadata accessor for BackgroundConfigurationCollectionElementsObserver);
  *(v2 + 48) = v5;
  *(v2 + 56) = v6;
  sub_13420(&qword_93F1C0, type metadata accessor for SearchLandingDiffablePageViewController);
  sub_763A80();
  sub_761840();

  result = [v1 collectionView];
  if (result)
  {
    sub_764320();
    swift_allocObject();
    *(v2 + 64) = sub_764310();
    *(v2 + 72) = &protocol witness table for ImpressionsCollectionElementsObserver;
    sub_7637E0();
    swift_allocObject();
    v8 = sub_7637D0();
    sub_5FBA38();
    if (swift_dynamicCastClass())
    {
      sub_7637B0();
      sub_7637C0();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_12804@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for SearchLandingPageShelfLayoutSpacingProvider;
  result = sub_13320();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_12838()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph);
  v2 = sub_13420(&qword_93F1D0, &type metadata accessor for SearchLandingDiffablePagePresenter);
  type metadata accessor for SearchLandingPageShelfSupplementaryProvider();
  v3 = swift_allocObject();
  *(v3 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 32) = v2;
  swift_unknownObjectWeakAssign();
  *(v3 + 16) = v1;
  sub_13420(&qword_93F1D8, type metadata accessor for SearchLandingPageShelfSupplementaryProvider);

  return v3;
}

uint64_t sub_12938@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  sub_13420(&qword_93F1C0, type metadata accessor for SearchLandingDiffablePageViewController);
  v2 = sub_763A60();
  v18[3] = swift_getObjectType();
  v18[0] = v2;
  v3 = sub_763A50();
  v19[3] = swift_getObjectType();
  v19[0] = v3;
  sub_132B4(v18, v17);
  sub_13310(v17, v16);
  sub_BD88(&qword_93F1C8);
  if (swift_dynamicCast() && *&v15[0])
  {
    v14 = v15[0];
    v4 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_7ACBC(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      v4 = sub_7ACBC((v5 > 1), v6 + 1, 1, v4);
    }

    v4[2] = v6 + 1;
    *&v4[2 * v6 + 4] = v14;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_132B4(v19, v17);
  sub_13310(v17, v16);
  sub_BD88(&qword_93F1C8);
  if (swift_dynamicCast() && *&v15[0])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_7ACBC(0, v4[2] + 1, 1, v4);
    }

    v8 = v4[2];
    v7 = v4[3];
    v9 = v15[0];
    if (v8 >= v7 >> 1)
    {
      v13 = sub_7ACBC((v7 > 1), v8 + 1, 1, v4);
      v9 = v15[0];
      v4 = v13;
    }

    v4[2] = v8 + 1;
    *&v4[2 * v8 + 4] = v9;
  }

  swift_arrayDestroy();
  sub_763A80();
  v10 = type metadata accessor for SearchLandingLayoutSectionProvider();
  swift_allocObject();
  sub_134D8(v17, v16);
  sub_134D8(v16, v15);

  v11 = sub_762B60();
  sub_BEB8(v16);
  result = sub_BEB8(v17);
  a1[3] = v10;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = v11;
  return result;
}

unint64_t sub_12C4C@<X0>(uint64_t *a1@<X8>)
{
  sub_75A3C0();
  swift_allocObject();
  v2 = sub_75A3B0();
  swift_allocObject();
  v3 = sub_75A3B0();
  a1[3] = &type metadata for SearchLandingPageGridProvider;
  result = sub_13260();
  a1[4] = result;
  *a1 = v2;
  a1[1] = v3;
  return result;
}

void sub_12CCC(void *a1, uint64_t a2, void *a3)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v9.receiver;
  objc_msgSendSuper2(&v9, "scrollViewWillBeginDragging:", v4);
  v6 = &v5[qword_999F00];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(ObjectType, v7);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_12D7C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SearchLandingShelfComponentTypeMappingProvider();
  v3 = swift_allocObject();
  type metadata accessor for AppPromotionsShelfComponentTypeMappingProvider();
  *(v3 + 16) = swift_allocObject();
  type metadata accessor for SmallStoryCardShelfComponentTypeMappingProvider();
  *(v3 + 24) = swift_allocObject();
  a1[3] = v2;
  result = sub_13420(&qword_93F1B0, type metadata accessor for SearchLandingShelfComponentTypeMappingProvider);
  a1[4] = result;
  *a1 = v3;
  return result;
}

void sub_12E30(uint64_t a1)
{
  v2 = sub_BD88(&qword_93F1A8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v6 - v4;
  sub_5FE2F8(a1);
  (*(v3 + 16))(v5, a1, v2);
  if ((*(v3 + 88))(v5, v2) == enum case for DiffablePagePresenter.UpdatePhase.initial<A>(_:))
  {
    sub_763480();
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }
}

void sub_12F68(uint64_t a1)
{
  v2 = v1;
  v12.receiver = v1;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v4 = sub_769A00() & 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [v1 traitCollection];
  v6 = sub_769A00();

  if (v4 == 2 || ((v6 ^ v4) & 1) != 0 || (!a1 ? (v7 = 2) : (v7 = sub_7699F0() & 1), (v8 = [v2 traitCollection], v9 = sub_7699F0(), v8, v7 == 2) || ((v9 ^ v7) & 1) != 0))
  {
    v10 = [v2 collectionView];
    if (v10)
    {
      v11 = v10;
      [v10 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1309C(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_12F68(a3);
}

uint64_t sub_13108()
{

  v1 = v0 + qword_999F00;

  return sub_13238(v1);
}

uint64_t sub_13148(uint64_t a1)
{

  v2 = a1 + qword_999F00;

  return sub_13238(v2);
}

uint64_t type metadata accessor for SearchLandingDiffablePageViewController()
{
  result = qword_93EC50;
  if (!qword_93EC50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_13260()
{
  result = qword_93F1B8;
  if (!qword_93F1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93F1B8);
  }

  return result;
}

uint64_t sub_132B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_13310(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_13320()
{
  result = qword_93F1E0;
  if (!qword_93F1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93F1E0);
  }

  return result;
}

unint64_t sub_13374()
{
  result = qword_93F1F8;
  if (!qword_93F1F8)
  {
    sub_133D8(&qword_93F1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93F1F8);
  }

  return result;
}

uint64_t sub_133D8(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_13420(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_13468(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_93FED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_134D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_13540()
{
  result = sub_7688F0();
  if (v1 == 2 || (v1 & 1) == 0)
  {
    sub_758000();
    swift_allocObject();
    sub_757FF0();
    sub_757D80();
    swift_allocObject();
    sub_757D30();
    sub_757D40();
    sub_757ED0();
    sub_757EB0();
    sub_757F00();
    sub_757EF0();
    sub_7576E0();
    sub_7576D0();
  }

  return result;
}

uint64_t sub_1362C(void *a1)
{
  v55 = a1;
  v1 = sub_7580E0();
  v2 = *(v1 - 8);
  v62 = v1;
  v63 = v2;
  __chkstk_darwin(v1);
  v67 = v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v70 = v53 - v5;
  v56 = sub_768340();
  v69 = *(v56 - 8);
  __chkstk_darwin(v56);
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7682A0();
  *&v54 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_768320();
  v61 = *(v12 - 8);
  v13 = v61;
  __chkstk_darwin(v12);
  v15 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13540();
  v68 = sub_768360();
  v66 = sub_768350();
  v76 = 0;
  v74 = 0u;
  v75 = 0u;
  sub_768310();
  v64 = sub_7682C0();
  v16 = *(v9 + 104);
  v53[1] = v9 + 104;
  v16(v11, enum case for DeviceAppQuery.betaApps(_:), v8);
  v65 = v12;
  *(&v75 + 1) = v12;
  v76 = &protocol witness table for ASDDeviceAppFetcher;
  v17 = sub_B1B4(&v74);
  v18 = *(v13 + 16);
  v58 = v15;
  v18(v17, v15, v12);
  v59 = v18;
  v60 = v13 + 16;
  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  v19 = enum case for AppStoreType.messages(_:);
  v20 = v69[13];
  v69 += 13;
  v21 = v56;
  v20(v7, enum case for AppStoreType.messages(_:), v56);
  v53[0] = v11;
  v57 = sub_7682B0();
  v16(v11, enum case for DeviceAppQuery.allStoreApps(_:), v54);
  v22 = v65;
  *(&v75 + 1) = v65;
  v76 = &protocol witness table for ASDDeviceAppFetcher;
  v23 = sub_B1B4(&v74);
  v18(v23, v15, v22);
  *(&v72 + 1) = v68;
  v73 = &protocol witness table for DeviceUpdateRegistry;
  *&v71 = v66;
  v20(v7, v19, v21);

  v56 = sub_7682B0();
  sub_757850();

  v69 = sub_757840();
  sub_BD88(&qword_93F208);
  v24 = sub_768330();
  v25 = *(v24 - 8);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = swift_allocObject();
  v54 = xmmword_77B6D0;
  *(v27 + 16) = xmmword_77B6D0;
  v28 = enum case for App.Kind.store(_:);
  v29 = *(v25 + 104);
  v29(v27 + v26, enum case for App.Kind.store(_:), v24);
  v69 = v69;
  sub_7580F0();
  sub_757A60();

  v30 = sub_757A50();
  v31 = swift_allocObject();
  *(v31 + 16) = v54;
  v29(v31 + v26, v28, v24);
  v55 = v30;
  v32 = v67;
  sub_7580F0();
  sub_BD88(&qword_93F210);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_77DCF0;
  v34 = sub_768290();
  swift_allocObject();
  v35 = sub_768280();
  *(v33 + 56) = v34;
  *(v33 + 64) = &protocol witness table for RemoteInstalledAppStateDataSource;
  *(v33 + 32) = v35;
  v36 = sub_768300();
  swift_allocObject();
  v37 = sub_7682F0();
  *(v33 + 96) = v36;
  *(v33 + 104) = &protocol witness table for WaitingAppStateDataSource;
  *(v33 + 72) = v37;
  v38 = v64;
  *(v33 + 136) = v64;
  *(v33 + 144) = &protocol witness table for DeviceAppStateDataSource;
  *(v33 + 112) = v57;
  *(v33 + 176) = v38;
  *(v33 + 184) = &protocol witness table for DeviceAppStateDataSource;
  *(v33 + 152) = v56;
  v39 = v62;
  *(v33 + 216) = v62;
  v40 = sub_13E64();
  *(v33 + 224) = v40;
  v41 = sub_B1B4((v33 + 192));
  v42 = v63;
  v43 = *(v63 + 16);
  v43(v41, v70, v39);
  *(v33 + 256) = v39;
  *(v33 + 264) = v40;
  v44 = sub_B1B4((v33 + 232));
  v43(v44, v32, v39);
  v45 = sub_7682E0();
  swift_allocObject();

  v46 = sub_7682D0();
  *(v33 + 296) = v45;
  *(v33 + 304) = &protocol witness table for DefaultAppStateDataSource;
  *(v33 + 272) = v46;
  v47 = v65;
  *(&v75 + 1) = v65;
  v76 = &protocol witness table for ASDDeviceAppFetcher;
  v48 = sub_B1B4(&v74);
  v49 = v58;
  v59(v48, v58, v47);
  *(&v72 + 1) = v68;
  v73 = &protocol witness table for DeviceUpdateRegistry;
  *&v71 = v66;

  v50 = sub_7576A0();

  v51 = *(v42 + 8);
  v51(v67, v39);
  v51(v70, v39);
  (*(v61 + 8))(v49, v47);
  sub_BEB8(&v71);
  sub_BEB8(&v74);
  return v50;
}

unint64_t sub_13E64()
{
  result = qword_93F218;
  if (!qword_93F218)
  {
    sub_7580E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93F218);
  }

  return result;
}

unint64_t sub_13EE0()
{
  result = qword_93F220;
  if (!qword_93F220)
  {
    sub_75AB30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93F220);
  }

  return result;
}

uint64_t sub_13F38()
{
  v0 = sub_7687C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() generalPasteboard];
  sub_75AB20();
  v5 = sub_769210();

  [v4 setString:v5];

  sub_BD88(&qword_94DDC0);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  return sub_768F30();
}

unint64_t sub_14098()
{
  result = qword_93F240;
  if (!qword_93F240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93F240);
  }

  return result;
}

uint64_t sub_140EC()
{
  v0 = sub_768FD0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_768FF0();
  sub_161DC(v4, qword_93F228);
  sub_BE38(v4, qword_93F228);
  if (qword_93DEE8 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_9A03E8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_768FE0();
}

uint64_t sub_14240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = sub_75BC10();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  sub_BD88(&unk_940200);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v5 = sub_764CF0();
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_143E0, 0, 0);
}

uint64_t sub_143E0()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  sub_BD88(&unk_944300);
  sub_768900();
  sub_768ED0();
  v4 = v0[8];
  v0[25] = v0[7];
  v0[26] = v4;
  v0[27] = swift_getObjectType();
  sub_BD88(&qword_93F258);
  sub_768ED0();
  sub_758170();
  v5 = *(v2 + 48);
  v0[28] = v5;
  v0[29] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v3, 1, v1) == 1)
  {
    sub_10A2C(v0[18], &unk_940200);
  }

  else
  {
    v6 = v0[24];
    v7 = v0[20];
    v13 = v0[19];
    v8 = v0[13];
    v9 = v0[14];
    v10 = v0[12];
    (*(v7 + 32))(v6, v0[18]);
    (*(v8 + 104))(v9, enum case for InstallationType.redownload(_:), v10);
    sub_758310();
    (*(v8 + 8))(v9, v10);
    (*(v7 + 8))(v6, v13);
  }

  v11 = swift_task_alloc();
  v0[30] = v11;
  *v11 = v0;
  v11[1] = sub_14608;

  return sub_151C4();
}

uint64_t sub_14608()
{
  v2 = *v1;
  *(v2 + 248) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1488C, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 256) = v3;
    *v3 = v2;
    v3[1] = sub_14778;

    return sub_1586C(v2 + 16);
  }
}

uint64_t sub_14778()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_14C0C;
  }

  else
  {
    v2 = sub_14A2C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1488C()
{
  v1 = v0[28];
  v2 = v0[19];
  v3 = v0[17];
  sub_758170();
  if (v1(v3, 1, v2) == 1)
  {
    v4 = v0[17];
    swift_unknownObjectRelease();
    sub_BEB8((v0 + 2));
    sub_10A2C(v4, &unk_940200);
  }

  else
  {
    v5 = v0[23];
    v6 = v0[19];
    v7 = v0[20];
    (*(v7 + 32))(v5, v0[17], v6);
    sub_758320();
    swift_unknownObjectRelease();
    (*(v7 + 8))(v5, v6);
    sub_BEB8((v0 + 2));
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_14A2C()
{
  v1 = v0[28];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[9];
  v5 = enum case for ActionOutcome.performed(_:);
  v6 = sub_7687C0();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  sub_758170();
  if (v1(v3, 1, v2) == 1)
  {
    v7 = v0[16];
    swift_unknownObjectRelease();
    sub_BEB8((v0 + 2));
    sub_10A2C(v7, &unk_940200);
  }

  else
  {
    v8 = v0[22];
    v9 = v0[19];
    v10 = v0[20];
    (*(v10 + 32))(v8, v0[16], v9);
    sub_758320();
    swift_unknownObjectRelease();
    (*(v10 + 8))(v8, v9);
    sub_BEB8((v0 + 2));
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_14C0C()
{
  v1 = v0[28];
  v2 = v0[19];
  v3 = v0[15];
  sub_758170();
  if (v1(v3, 1, v2) == 1)
  {
    v4 = v0[15];
    swift_unknownObjectRelease();
    sub_BEB8((v0 + 2));
    sub_10A2C(v4, &unk_940200);
  }

  else
  {
    v6 = v0[20];
    v5 = v0[21];
    v7 = v0[19];
    (*(v6 + 32))(v5, v0[15], v7);
    sub_758320();
    swift_unknownObjectRelease();
    (*(v6 + 8))(v5, v7);
    sub_BEB8((v0 + 2));
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_14DAC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_7572E0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *sub_B170((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_BD88(&unk_95F4D0);
    v10 = swift_allocError();
    *v11 = a3;
    v12 = a3;

    return _swift_continuation_throwingResumeWithError(v9, v10);
  }

  else
  {
    sub_7572C0();
    (*(v6 + 32))(*(*(v9 + 64) + 40), v8, v5);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_14F1C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_14FCC;

  return sub_14240(a1, v6, a3);
}

uint64_t sub_14FCC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_150C4()
{
  result = qword_93F248;
  if (!qword_93F248)
  {
    sub_758190();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93F248);
  }

  return result;
}

uint64_t sub_1511C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_15170();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, v6);
}

unint64_t sub_15170()
{
  result = qword_93F250;
  if (!qword_93F250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93F250);
  }

  return result;
}

uint64_t sub_151C4()
{
  sub_7685A0();
  v0[22] = swift_task_alloc();
  v1 = sub_7572E0();
  v0[23] = v1;
  v0[24] = *(v1 - 8);
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();

  return _swift_task_switch(sub_152B8, 0, 0);
}

uint64_t sub_152B8()
{
  v1 = v0[25];
  v2 = objc_allocWithZone(ASDSystemAppMetadata);
  v3 = sub_769210();
  v4 = [v2 initWithBundleID:v3];
  v0[27] = v4;

  [v4 setUserInitiated:1];
  v5 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_15454;
  v6 = swift_continuation_init();
  v0[17] = sub_BD88(&qword_93F288);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_14DAC;
  v0[13] = &unk_880078;
  v0[14] = v6;
  [v5 installApp:v4 withCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_15454()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_157D0;
  }

  else
  {
    v2 = sub_15564;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_15564()
{
  v1 = v0[27];
  (*(v0[24] + 32))(v0[26], v0[25], v0[23]);

  if (qword_93C178 != -1)
  {
    swift_once();
  }

  v2 = v0[26];
  v3 = v0[24];
  v9 = v0[27];
  v4 = v0[23];
  v5 = sub_768FF0();
  sub_BE38(v5, qword_93F228);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77B6D0;
  sub_768590();
  v11._object = 0x80000000007C96C0;
  v11._countAndFlagsBits = 0xD000000000000036;
  sub_768580(v11);
  v0[21] = v4;
  v6 = sub_B1B4(v0 + 18);
  (*(v3 + 16))(v6, v2, v4);
  sub_768560();
  sub_10A2C((v0 + 18), &unk_93FBD0);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_768580(v12);
  sub_7685B0();
  sub_768E80();

  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_157D0()
{
  v1 = *(v0 + 216);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1586C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_BD88(&qword_93F260);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_BD88(&qword_93F268);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_159AC, 0, 0);
}

uint64_t sub_159AC()
{
  v1 = *(v0 + 16);
  sub_B170(v1, v1[3]);
  if (sub_758920())
  {
    if (qword_93C178 != -1)
    {
      swift_once();
    }

    v2 = sub_768FF0();
    sub_BE38(v2, qword_93F228);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768E80();

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    if (qword_93C178 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 72);
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    v14 = *(v0 + 64);
    v8 = *(v0 + 16);
    v9 = sub_768FF0();
    *(v0 + 80) = v9;
    *(v0 + 88) = sub_BE38(v9, qword_93F228);
    *(v0 + 96) = sub_BD88(&qword_93FD00);
    v10 = *(sub_7685F0() - 8);
    *(v0 + 104) = *(v10 + 72);
    *(v0 + 120) = *(v10 + 80);
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768E80();

    sub_B170(v8, v1[3]);
    sub_758910();
    sub_BD88(&qword_9434F0);
    sub_16194(&qword_93F270, &qword_9434F0);
    sub_768740();

    (*(v7 + 16))(v14, v5, v6);
    sub_16194(&qword_93F278, &qword_93F268);
    sub_7695D0();
    v11 = sub_16194(&qword_93F280, &qword_93F260);
    v12 = swift_task_alloc();
    *(v0 + 112) = v12;
    *v12 = v0;
    v12[1] = sub_15E64;
    v13 = *(v0 + 24);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 124, v13, v11);
  }
}

uint64_t sub_15E64()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[4];
    v3 = v2[5];
    v5 = v2[3];

    (*(v4 + 8))(v3, v5);
    v6 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  }

  else
  {
    v6 = sub_15FA4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_15FA4()
{
  v1 = *(v0 + 124);
  if (v1 == 2)
  {
LABEL_4:
    v2 = *(v0 + 72);
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);
    (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));
    (*(v4 + 8))(v2, v3);

    v5 = *(v0 + 8);

    return v5();
  }

  if (v1)
  {
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768E80();

    goto LABEL_4;
  }

  v7 = sub_16194(&qword_93F280, &qword_93F260);
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_15E64;
  v9 = *(v0 + 24);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 124, v9, v7);
}

uint64_t sub_16194(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_133D8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_161DC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1626C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_7685A0();
  __chkstk_darwin(v7 - 8);
  if (qword_93DF18 != -1)
  {
    swift_once();
  }

  v8 = sub_768FF0();
  sub_BE38(v8, qword_9A0478);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77B6D0;
  sub_768590();
  v15._countAndFlagsBits = 0x5370696B53646964;
  v15._object = 0xED0000203A706574;
  sub_768580(v15);
  v9 = a1[3];
  v10 = sub_B170(a1, v9);
  v14 = v9;
  v11 = sub_B1B4(v13);
  (*(*(v9 - 8) + 16))(v11, v10, v9);
  sub_768560();
  sub_10A2C(v13, &unk_93FBD0);
  v16._countAndFlagsBits = 0x6E6F73616572202CLL;
  v16._object = 0xEA0000000000203ALL;
  sub_768580(v16);
  v14 = &type metadata for String;
  v13[0] = a2;
  v13[1] = a3;

  sub_768560();
  sub_10A2C(v13, &unk_93FBD0);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_768580(v17);
  sub_7685B0();
  sub_768E80();

  result = swift_beginAccess();
  if (*(*(v3 + 32) + 16))
  {
    sub_4A6908(0, 1);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_16548()
{
  v1 = sub_BD88(&qword_93F340);
  __chkstk_darwin(v1 - 8);
  v3 = &v11[-v2];
  v4 = sub_75F850();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v8 = *(v0 + 32);
  if (*(v8 + 16))
  {
    sub_134D8(v8 + 32, v12);
    sub_BD88(&qword_93F348);
    v9 = swift_dynamicCast();
    (*(v5 + 56))(v3, v9 ^ 1u, 1, v4);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v7, v3, v4);
      sub_75F7F0();
      sub_169B4(v7, v0);
      return (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    (*(v5 + 56))(v3, 1, 1, v4);
  }

  return sub_10A2C(v3, &qword_93F340);
}

uint64_t sub_16780(char a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 32);
  if (*(v4 + 16))
  {
    sub_134D8(v4 + 32, v8);
    sub_BD88(&qword_93F348);
    type metadata accessor for AdPrivacyOnboardingStep();
    result = swift_dynamicCast();
    if (result)
    {
      v5 = v1;
      v6 = sub_4F17F4();
      [v6 setPersonalizedAds:a1 & 1];

      sub_4F20C4();
      sub_16CAC(v7, v5);
    }
  }

  return result;
}

uint64_t sub_1685C()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  if (*(v1 + 16))
  {
    sub_134D8(v1 + 32, v6);
    sub_BD88(&qword_93F348);
    if (swift_dynamicCast())
    {
      if (v3)
      {
        v6[0] = v3;
        v6[1] = v4;
        v6[2] = v5;
        sub_270D8C();
        sub_16F74(v6, v0);
        return sub_174E4(v6);
      }
    }

    else
    {
      v4 = 0u;
      v5 = 0u;
      v3 = 0u;
    }
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
    v5 = 0u;
  }

  return sub_10A2C(&v3, &qword_93F360);
}

uint64_t sub_16950()
{

  return swift_deallocClassInstance();
}

uint64_t sub_169B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_7685A0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_75F850();
  v14 = v5;
  v15 = sub_17628(&qword_93F350, &type metadata accessor for WelcomeOnboardingStep);
  v6 = sub_B1B4(v13);
  (*(*(v5 - 8) + 16))(v6, a1, v5);
  if (qword_93DF18 != -1)
  {
    swift_once();
  }

  v7 = sub_768FF0();
  sub_BE38(v7, qword_9A0478);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77B6D0;
  sub_768590();
  v16._object = 0x80000000007C9740;
  v16._countAndFlagsBits = 0xD000000000000011;
  sub_768580(v16);
  v8 = v14;
  v9 = sub_B170(v13, v14);
  v12[3] = v8;
  v10 = sub_B1B4(v12);
  (*(*(v8 - 8) + 16))(v10, v9, v8);
  sub_768560();
  sub_10A2C(v12, &unk_93FBD0);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_768580(v17);
  sub_7685B0();
  sub_768E80();

  result = swift_beginAccess();
  if (*(*(a2 + 32) + 16))
  {
    sub_4A6908(0, 1);
    swift_endAccess();
    return sub_BEB8(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_16CAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_7685A0();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for AdPrivacyOnboardingStep();
  v12[3] = v5;
  v12[4] = sub_17628(&qword_93F358, type metadata accessor for AdPrivacyOnboardingStep);
  v12[0] = a1;
  v6 = qword_93DF18;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = sub_768FF0();
  sub_BE38(v7, qword_9A0478);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77B6D0;
  sub_768590();
  v13._object = 0x80000000007C9740;
  v13._countAndFlagsBits = 0xD000000000000011;
  sub_768580(v13);
  v8 = sub_B170(v12, v5);
  v11[3] = v5;
  v9 = sub_B1B4(v11);
  (*(*(v5 - 8) + 16))(v9, v8, v5);
  sub_768560();
  sub_10A2C(v11, &unk_93FBD0);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  sub_768580(v14);
  sub_7685B0();
  sub_768E80();

  result = swift_beginAccess();
  if (*(*(a2 + 32) + 16))
  {
    sub_4A6908(0, 1);
    swift_endAccess();
    return sub_BEB8(v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_16F74(uint64_t a1, uint64_t a2)
{
  v4 = sub_7685A0();
  __chkstk_darwin(v4 - 8);
  v10[3] = &type metadata for LocationPrivacyOnboardingStep;
  v10[4] = sub_17538();
  v10[0] = swift_allocObject();
  sub_175CC(a1, v10[0] + 16);
  if (qword_93DF18 != -1)
  {
    swift_once();
  }

  v5 = sub_768FF0();
  sub_BE38(v5, qword_9A0478);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77B6D0;
  sub_768590();
  v11._object = 0x80000000007C9740;
  v11._countAndFlagsBits = 0xD000000000000011;
  sub_768580(v11);
  v6 = sub_B170(v10, &type metadata for LocationPrivacyOnboardingStep);
  v9[3] = &type metadata for LocationPrivacyOnboardingStep;
  v7 = sub_B1B4(v9);
  _swift_cvw_initWithCopy(v7, v6);
  sub_768560();
  sub_10A2C(v9, &unk_93FBD0);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_768580(v12);
  sub_7685B0();
  sub_768E80();

  result = swift_beginAccess();
  if (*(*(a2 + 32) + 16))
  {
    sub_4A6908(0, 1);
    swift_endAccess();
    return sub_BEB8(v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_17220(void *a1, uint64_t a2)
{
  v4 = sub_7685A0();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for JourneyDrivenOnboardingStep();
  v13[3] = v5;
  v13[4] = sub_17628(&qword_93F370, type metadata accessor for JourneyDrivenOnboardingStep);
  v13[0] = a1;
  v6 = qword_93DF18;
  v7 = a1;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = sub_768FF0();
  sub_BE38(v8, qword_9A0478);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77B6D0;
  sub_768590();
  v14._object = 0x80000000007C9740;
  v14._countAndFlagsBits = 0xD000000000000011;
  sub_768580(v14);
  v9 = sub_B170(v13, v5);
  v12[3] = v5;
  v10 = sub_B1B4(v12);
  (*(*(v5 - 8) + 16))(v10, v9, v5);
  sub_768560();
  sub_10A2C(v12, &unk_93FBD0);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_768580(v15);
  sub_7685B0();
  sub_768E80();

  result = swift_beginAccess();
  if (*(*(a2 + 32) + 16))
  {
    sub_4A6908(0, 1);
    swift_endAccess();
    return sub_BEB8(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_17538()
{
  result = qword_93F368;
  if (!qword_93F368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93F368);
  }

  return result;
}

uint64_t sub_1758C()
{

  sub_BEB8(v0 + 24);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_17628(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_17670@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_1799C(v1 + v3, a1);
}

uint64_t sub_176CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1792C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_177A4()
{
  sub_75A530();
  sub_17A0C(&qword_93F378, &type metadata accessor for RibbonBarItem);
  result = sub_75C750();
  if (v1)
  {
    sub_75A110();
    sub_768900();
    sub_768ED0();
    sub_1707C8(v1, v1);
  }

  return result;
}

uint64_t sub_17890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_17A0C(&qword_93F380, type metadata accessor for RibbonBarItemCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1792C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93F620);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1799C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93F620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_17A0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_17A54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_75DA30();
  *a1 = result;
  return result;
}

id CondensedEditorialSearchResultContentView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

char *CondensedEditorialSearchResultContentView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_BD88(&unk_954ED0);
  __chkstk_darwin(v10 - 8);
  v57 = &v54 - v11;
  v54 = sub_7632B0();
  v12 = *(v54 - 8);
  __chkstk_darwin(v54);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_7631F0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_itemLayoutContext;
  v20 = sub_75C840();
  (*(*(v20 - 8) + 56))(&v5[v19], 1, 1, v20);
  v21 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_headerLabel;
  sub_75BB20();
  *&v5[v21] = sub_75BB00();
  v22 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_titleLabel;
  *&v5[v22] = sub_75BB00();
  v23 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_viewButton;
  *&v5[v23] = [objc_opt_self() buttonWithType:0];
  v24 = enum case for CondensedSearchResultCardLayout.Configuration.standard(_:);
  v55 = v16;
  v25 = *(v16 + 104);
  v25(&v5[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_configuration], enum case for CondensedSearchResultCardLayout.Configuration.standard(_:), v15);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_artworkView] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_iconGrid] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_action] = 0;
  v26 = &v5[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_buttonHandler];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = &v5[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_artworkSize];
  v25(v18, v24, v15);
  sub_7631D0();
  v56 = *(v16 + 8);
  v56(v18, v15);
  sub_763210();
  v29 = v28;
  v31 = v30;
  (*(v12 + 8))(v14, v54);
  *v27 = v29;
  *(v27 + 1) = v31;
  v32 = type metadata accessor for CondensedEditorialSearchResultContentView();
  v59.receiver = v5;
  v59.super_class = v32;
  v33 = objc_msgSendSuper2(&v59, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v37 = v33;
  [v37 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v38 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_headerLabel;
  [v37 addSubview:*&v37[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_headerLabel]];
  v39 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_titleLabel;
  [v37 addSubview:*&v37[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_titleLabel]];
  v40 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_viewButton;
  [v37 addSubview:*&v37[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_viewButton]];
  [*&v37[v38] setLineBreakMode:4];
  [*&v37[v39] setLineBreakMode:4];
  v41 = *&v37[v40];
  v42 = v41;
  v43 = [v37 traitCollection];
  v44 = v57;
  v45 = ObjectType;
  sub_6960C0(v41, v57);

  v46 = sub_76A3F0();
  (*(*(v46 - 8) + 56))(v44, 0, 1, v46);
  sub_76A420();

  v47 = v45;
  v48 = sub_69635C();
  sub_18190(v48, v49, &OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_viewButton);

  v50 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_configuration;
  swift_beginAccess();
  (*(v55 + 16))(v18, &v37[v50], v15);
  v51 = [v37 traitCollection];

  sub_18794(v18, v51);
  v56(v18, v15);
  sub_BD88(&qword_9477F0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_77B6D0;
  *(v52 + 32) = sub_767B80();
  *(v52 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(swift_allocObject() + 16) = v47;
  sub_769F40();

  swift_unknownObjectRelease();

  return v37;
}

uint64_t type metadata accessor for CondensedEditorialSearchResultContentView()
{
  result = qword_93F418;
  if (!qword_93F418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18190(uint64_t a1, uint64_t a2, void *a3)
{
  v51 = a3;
  v4 = sub_BD88(&qword_93F428);
  __chkstk_darwin(v4 - 8);
  v44 = &v43 - v5;
  v6 = sub_7664A0();
  v48 = *(v6 - 8);
  v49 = v6;
  __chkstk_darwin(v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7666D0();
  v45 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v43 - v13;
  v14 = sub_756F10();
  __chkstk_darwin(v14 - 8);
  v15 = sub_756EB0();
  v16 = *(v15 - 8);
  v52 = v15;
  v53 = v16;
  __chkstk_darwin(v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_BD88(&unk_954ED0);
  v20 = __chkstk_darwin(v19 - 8);
  v47 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v43 - v22;
  v46 = *(v3 + *v51);
  sub_76A410();

  sub_756F00();
  sub_756EC0();
  v51 = v3;
  v24 = [v3 traitCollection];
  v25 = sub_769350();
  if (v24 && (sub_769A00() & 1) != 0)
  {
    if (v25 < 9)
    {
LABEL_4:
      v26 = v45;
      if (qword_93D8E0 != -1)
      {
        swift_once();
      }

      v27 = qword_99F298;
      goto LABEL_11;
    }
  }

  else if (v25 <= 6)
  {
    goto LABEL_4;
  }

  v26 = v45;
  if (qword_93D8E8 != -1)
  {
    swift_once();
  }

  v27 = qword_99F2B0;
LABEL_11:
  v28 = sub_BE38(v9, v27);
  v29 = *(v26 + 16);
  v29(v12, v28, v9);

  v30 = v50;
  (*(v26 + 32))(v50, v12, v9);
  v29(v8, v30, v9);
  v32 = v48;
  v31 = v49;
  (*(v48 + 104))(v8, enum case for FontSource.useCase(_:), v49);
  v33.super.isa = [v51 traitCollection];
  isa = v33.super.isa;
  v35 = sub_766490(v33).super.isa;

  (*(v32 + 8))(v8, v31);
  v54 = v35;
  sub_1EABC();
  v36 = v35;
  sub_756ED0();
  v37 = sub_76A3F0();
  v38 = (*(*(v37 - 8) + 48))(v23, 1, v37);
  v39 = v52;
  if (!v38)
  {
    v40 = v53;
    v41 = v44;
    (*(v53 + 16))(v44, v18, v52);
    (*(v40 + 56))(v41, 0, 1, v39);
    sub_76A2F0();
  }

  sub_1ED18(v23, v47, &unk_954ED0);
  sub_76A420();

  (*(v26 + 8))(v30, v9);
  (*(v53 + 8))(v18, v39);
  return sub_10A2C(v23, &unk_954ED0);
}

void sub_18794(uint64_t a1, objc_class *a2)
{
  v4 = sub_7666D0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_headerLabel);
  [v8 setNumberOfLines:sub_7631C0()];
  v9 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_titleLabel);
  v10.super.isa = a2;
  [v9 setNumberOfLines:sub_7631B0(v10)];
  sub_BE70(0, &qword_93F900);
  sub_7631A0();
  v11 = sub_769E10();
  v12 = *(v5 + 8);
  v12(v7, v4);
  [v8 setFont:v11];

  sub_7631E0();
  v13 = sub_769E10();
  v12(v7, v4);
  [v9 setFont:v13];

  v14 = [objc_opt_self() systemBlueColor];
  [v8 setTextColor:v14];
}

id sub_18994(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_7631F0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_69635C();
  sub_696380(v9, v10, a3, &off_8801B0);

  v11 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_configuration;
  swift_beginAccess();
  (*(v6 + 16))(v8, &a1[v11], v5);
  v12 = [a1 traitCollection];
  sub_18794(v8, v12);

  (*(v6 + 8))(v8, v5);
  return [a1 setNeedsLayout];
}

Swift::Void __swiftcall CondensedEditorialSearchResultContentView.layoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_BD88(&qword_93F3C8);
  v63 = *(v2 - 8);
  v64 = v2;
  __chkstk_darwin(v2);
  v61 = &v56 - v3;
  v4 = sub_7632D0();
  v59 = *(v4 - 8);
  v60 = v4;
  __chkstk_darwin(v4);
  v58 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7664F0();
  v65 = *(v6 - 8);
  v66 = v6;
  __chkstk_darwin(v6);
  v62 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7631F0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_7632B0();
  v69 = *(v12 - 8);
  v70 = v12;
  v13 = __chkstk_darwin(v12);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v56 - v17;
  __chkstk_darwin(v16);
  v68 = &v56 - v19;
  v20 = type metadata accessor for CondensedEditorialSearchResultContentView();
  v87.receiver = v0;
  v87.super_class = v20;
  objc_msgSendSuper2(&v87, "layoutSubviews");
  sub_75D650();
  v57 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_artworkView;
  v21 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_artworkView];
  if (v21)
  {
    *(&v85 + 1) = sub_759210();
    v86 = sub_1ED80(&unk_93E520, &type metadata accessor for ArtworkView);
    *&v84 = v21;
  }

  else if (*&v0[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_iconGrid])
  {
    *&v72 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_iconGrid];
    type metadata accessor for IconArtworkGridView();
    sub_7665D0();
  }

  else
  {
    v86 = 0;
    v84 = 0u;
    v85 = 0u;
  }

  v22 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_iconGrid;
  v23 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_iconGrid];
  v24 = v21;
  if (v23)
  {
    [v23 _setContinuousCornerRadius:10.0];
  }

  v25 = [v1 traitCollection];
  v26 = sub_769A00();

  if (v26)
  {
    v27 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_configuration;
    swift_beginAccess();
    (*(v9 + 16))(v11, &v1[v27], v8);
    sub_7631D0();
    (*(v9 + 8))(v11, v8);
    sub_763290();
    v28 = v70;
    v29 = *(v69 + 8);
    v29(v18, v70);
    v30 = *&v1[v57];
    if (v30)
    {
      v73 = sub_759210();
      v74 = &protocol witness table for UIView;
      *&v72 = v30;
      sub_10914(&v72, v81);
    }

    else
    {
      v43 = *&v1[v22];
      if (v43)
      {
        v44 = type metadata accessor for IconArtworkGridView();
        v45 = &protocol witness table for UIView;
      }

      else
      {
        v44 = 0;
        v45 = 0;
        v81[1] = 0;
        v81[2] = 0;
      }

      v81[0] = v43;
      v82 = v44;
      v83 = v45;
      v46 = v43;
      v30 = 0;
    }

    v47 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_headerLabel];
    v79 = sub_75BB20();
    v80 = &protocol witness table for UIView;
    v78[0] = v47;
    v48 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_titleLabel];
    v76 = v79;
    v77 = &protocol witness table for UILabel;
    v75[0] = v48;
    v49 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_viewButton];
    v71[3] = sub_BE70(0, &qword_960F00);
    v71[4] = &protocol witness table for UIView;
    v71[0] = v49;
    v50 = v30;
    v51 = v47;
    v52 = v48;
    v53 = v49;
    v54 = v68;
    sub_1942C(v68, v81, v78, v75, v71, &v72);
    v29(v54, v28);
    sub_10A2C(v81, &unk_943B10);
    sub_BEB8(v71);
    sub_BEB8(v75);
    sub_BEB8(v78);
    sub_B170(&v72, v73);
    v55 = v62;
    sub_7672C0();
    (*(v65 + 8))(v55, v66);
    sub_10A2C(&v84, &unk_941EB0);
    sub_BEB8(&v72);
  }

  else
  {
    v31 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_configuration;
    swift_beginAccess();
    (*(v9 + 16))(v11, &v1[v31], v8);
    sub_7631D0();
    (*(v9 + 8))(v11, v8);
    sub_763290();
    (*(v69 + 8))(v15, v70);
    sub_1ED18(&v84, &v72, &unk_941EB0);
    v32 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_headerLabel];
    v82 = sub_75BB20();
    v83 = &protocol witness table for UILabel;
    v81[0] = v32;
    v33 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_titleLabel];
    v79 = v82;
    v80 = &protocol witness table for UILabel;
    v78[0] = v33;
    v34 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_viewButton];
    v76 = sub_BE70(0, &qword_960F00);
    v77 = &protocol witness table for UIButton;
    v75[0] = v34;
    v35 = v32;
    v36 = v33;
    v37 = v34;
    v38 = v58;
    sub_7632C0();
    v39 = [v1 traitCollection];
    sub_1ED80(&qword_93F3D0, &type metadata accessor for CondensedSearchResultCardLayout);
    v41 = v60;
    v40 = v61;
    sub_766730();
    swift_getOpaqueTypeConformance2();
    v42 = v64;
    sub_7673E0();

    (*(v63 + 8))(v40, v42);
    (*(v59 + 8))(v38, v41);
    sub_10A2C(&v84, &unk_941EB0);
  }
}

uint64_t sub_1942C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v86 = a5;
  v83 = a4;
  v110 = a3;
  v87 = a6;
  v91 = sub_766E60();
  v97 = *(v91 - 8);
  __chkstk_darwin(v91 - 8);
  v9 = v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_766E50();
  v10 = *(v113 - 8);
  __chkstk_darwin(v113);
  v89 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_766E00();
  v115 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  *&v114 = v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = v81 - v15;
  v93 = sub_766E90();
  v17 = *(v93 - 8);
  v18 = __chkstk_darwin(v93);
  v85 = v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v112 = v81 - v21;
  v22 = __chkstk_darwin(v20);
  v111 = v81 - v23;
  v24 = __chkstk_darwin(v22);
  v109 = v81 - v25;
  __chkstk_darwin(v24);
  v27 = v81 - v26;
  v123 = _swiftEmptyArrayStorage;
  sub_1ED18(a2, &v119, &unk_943B10);
  v90 = a1;
  v92 = v17;
  v84 = v16;
  v88 = v12;
  if (*(&v120 + 1))
  {
    sub_10914(&v119, v122);
    sub_763240();
    sub_763260();
    (*(v115 + 104))(v16, enum case for VerticalFlowLayout.VerticalPlacement.top(_:), v12);
    sub_BD88(&unk_960ED0);
    v28 = v89;
    v29 = v10;
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_77DC20;
    sub_766E40();
    sub_766E20();
    v31 = v97;
    v32 = v91;
    sub_766E30();
    v116 = v30;
    sub_1ED80(&qword_93F448, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
    sub_BD88(&unk_960EE0);
    sub_1EDC8();
    sub_76A5A0();
    (v31[13])(v9, enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:), v32);
    sub_766E80();
    v33 = v31;
    v10 = v29;
    v12 = v88;
    v34 = v33[1];
    v108 = v9;
    v34(v9, v32);
    (*(v10 + 8))(v28, v113);
    (*(v115 + 8))(v16, v12);
    sub_10A2C(v117, &unk_93F9C0);
    sub_BEB8(&v119);
    v35 = v92;
    v36 = v109;
    v37 = v93;
    (*(v92 + 16))(v109, v27, v93);
    v38 = sub_7AC70(0, 1, 1, _swiftEmptyArrayStorage);
    v40 = v38[2];
    v39 = v38[3];
    if (v40 >= v39 >> 1)
    {
      v38 = sub_7AC70(v39 > 1, v40 + 1, 1, v38);
    }

    (*(v35 + 8))(v27, v37);
    sub_BEB8(v122);
    v38[2] = v40 + 1;
    (*(v35 + 32))(v38 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v40, v36, v37);
    v123 = v38;
    v9 = v108;
  }

  else
  {
    sub_10A2C(&v119, &unk_943B10);
  }

  sub_763230();
  v121 = 0;
  v119 = 0u;
  v120 = 0u;
  sub_134D8(v110, v117);
  sub_BD88(&unk_9418A0);
  sub_BD88(&unk_941890);
  v41 = v9;
  if (swift_dynamicCast())
  {
    sub_BEB8(&v116);
    v42 = *(v115 + 104);
    v108 = (v115 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v43 = v114;
    v82 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
    v109 = v42;
    (v42)(v114);
  }

  else
  {
    v44 = *(v115 + 104);
    v108 = (v115 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v43 = v114;
    v109 = v44;
    (v44)(v114, enum case for VerticalFlowLayout.VerticalPlacement.top(_:), v12);
    v82 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  }

  v45 = v12;
  v107 = sub_BD88(&unk_960ED0);
  v46 = *(v10 + 72);
  v106 = *(v10 + 80);
  v81[1] = (v106 + 32) & ~v106;
  v105 = 3 * v46;
  v104 = 2 * v46;
  v103 = v46;
  v47 = swift_allocObject();
  v114 = xmmword_77DC20;
  *(v47 + 16) = xmmword_77DC20;
  sub_766E40();
  sub_766E20();
  sub_766E30();
  *&v117[0] = v47;
  v94 = sub_1ED80(&qword_93F448, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
  v102 = sub_BD88(&unk_960EE0);
  v101 = sub_1EDC8();
  v48 = v89;
  v49 = v10;
  v50 = v113;
  sub_76A5A0();
  v100 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v51 = v97;
  v52 = v97[13];
  v98 = (v97 + 13);
  v99 = v52;
  v53 = v91;
  v52(v41);
  sub_766E80();
  v110 = v51[1];
  v110(v41, v53);
  v54 = *(v49 + 8);
  v96 = v49 + 8;
  v97 = v54;
  (v54)(v48, v50);
  v55 = *(v115 + 8);
  v115 += 8;
  v95 = v55;
  v55(v43, v45);
  sub_10A2C(&v119, &unk_93F9C0);
  sub_BEB8(v122);
  v56 = v83[3];
  v57 = v83[4];
  v58 = v45;
  v59 = sub_B170(v83, v56);
  v122[3] = v56;
  v122[4] = *(v57 + 8);
  v60 = sub_B1B4(v122);
  (*(*(v56 - 8) + 16))(v60, v59, v56);
  sub_763220();
  v118 = 0;
  memset(v117, 0, sizeof(v117));
  v61 = v84;
  (v109)(v84, v82, v58);
  v62 = swift_allocObject();
  *(v62 + 16) = v114;
  sub_766E40();
  sub_766E20();
  sub_766E30();
  v116 = v62;
  sub_76A5A0();
  v99(v41, v100, v53);
  sub_766E80();
  v110(v41, v53);
  (v97)(v48, v50);
  v63 = v88;
  v95(v61, v88);
  sub_10A2C(v117, &unk_93F9C0);
  sub_BEB8(&v119);
  sub_BEB8(v122);
  sub_763280();
  sub_763250();
  (v109)(v61, enum case for VerticalFlowLayout.VerticalPlacement.top(_:), v63);
  v64 = swift_allocObject();
  *(v64 + 16) = v114;
  sub_766E40();
  sub_766E20();
  sub_766E30();
  *&v117[0] = v64;
  sub_76A5A0();
  v99(v41, v100, v53);
  v65 = v85;
  sub_766E80();
  v110(v41, v53);
  (v97)(v48, v50);
  v95(v61, v63);
  sub_10A2C(&v119, &unk_93F9C0);
  sub_BEB8(v122);
  sub_BD88(&qword_93F458);
  v66 = v92;
  v67 = *(v92 + 72);
  v68 = (*(v92 + 80) + 32) & ~*(v92 + 80);
  v69 = 2 * v67;
  v70 = swift_allocObject();
  *(v70 + 16) = v114;
  v71 = v70 + v68;
  v72 = *(v66 + 16);
  v73 = v111;
  v74 = v93;
  v72(v71, v111, v93);
  v75 = v71 + v67;
  v76 = v112;
  v72(v75, v112, v74);
  v72(v71 + v69, v65, v74);
  sub_10A0B8(v70);
  v77 = sub_766EA0();
  v78 = v87;
  v87[3] = v77;
  v78[4] = &protocol witness table for VerticalFlowLayout;
  v78[5] = &protocol witness table for VerticalFlowLayout;
  sub_B1B4(v78);
  sub_766E70();
  v79 = *(v66 + 8);
  v79(v65, v74);
  v79(v76, v74);
  return (v79)(v73, v74);
}

Swift::Void __swiftcall CondensedEditorialSearchResultContentView.prepareForReuse()()
{
  v1 = sub_BD88(&unk_954ED0);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_titleLabel] setText:0];
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_headerLabel] setText:0];
  v4 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_artworkView;
  v5 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_artworkView];
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *&v0[v4];
  }

  else
  {
    v6 = 0;
  }

  *&v0[v4] = 0;

  [v0 setNeedsLayout];
  v7 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_iconGrid;
  v8 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_iconGrid];
  if (v8)
  {
    [v8 removeFromSuperview];
    v9 = *&v0[v7];
  }

  else
  {
    v9 = 0;
  }

  *&v0[v7] = 0;

  [v0 setNeedsLayout];
  v10 = sub_76A3F0();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  sub_76A420();
}

double sub_1A574(uint64_t a1, uint64_t a2, objc_class *a3)
{
  v68 = a3;
  v67 = sub_7664A0();
  v69 = *(v67 - 8);
  __chkstk_darwin(v67);
  v59 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_762D10();
  v70 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_766690();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7632B0();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v48 - v16;
  sub_7631D0();
  sub_7666A0();
  v58 = a1;
  sub_1C75C();
  (*(v8 + 8))(v10, v7);
  v18 = *(v12 + 8);
  v63 = v17;
  v65 = v11;
  v18(v17, v11);
  v64 = v18;
  v66 = v12 + 8;
  v19 = a2;
  sub_7631D0();
  sub_763290();
  v18(v15, v11);
  v20 = sub_7670D0();
  swift_allocObject();
  v61 = sub_7670B0();
  v53 = sub_75F2A0();
  v52 = v21;
  v22 = v59;
  v51 = v19;
  sub_7631A0();
  v57 = enum case for FontSource.useCase(_:);
  v23 = v69;
  v56 = *(v69 + 104);
  v24 = v67;
  v56(v22);
  v25 = v68;
  v26.super.isa = v68;
  sub_766490(v26);
  v27 = *(v23 + 8);
  v69 = v23 + 8;
  v55 = v27;
  v27(v22, v24);
  sub_7631C0();
  v28 = sub_7653B0();
  v75 = v28;
  v54 = sub_1ED80(&qword_93F9B0, &type metadata accessor for Feature);
  v76 = v54;
  v29 = sub_B1B4(&v74);
  v49 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v30 = *(v28 - 8);
  v48 = *(v30 + 104);
  v50 = v30 + 104;
  v48(v29);
  sub_765C30();
  sub_BEB8(&v74);
  v31 = v60;
  sub_762D00();
  sub_762CE0();
  v32 = *(v70 + 8);
  v70 += 8;
  v53 = v32;
  v33 = v62;
  v32(v31, v62);
  v58 = sub_75F300();
  v52 = v34;
  sub_7631E0();
  v35 = v67;
  (v56)(v22, v57, v67);
  v36.super.isa = v25;
  sub_766490(v36);
  v55(v22, v35);
  v37.super.isa = v25;
  sub_7631B0(v37);
  v75 = v28;
  v76 = v54;
  v38 = sub_B1B4(&v74);
  (v48)(v38, v49, v28);
  sub_765C30();
  sub_BEB8(&v74);
  sub_762D00();
  sub_762CE0();
  v53(v31, v33);
  sub_763200();
  swift_allocObject();
  v39 = sub_7670B0();
  v73[4] = &protocol witness table for LayoutViewPlaceholder;
  v73[3] = v20;
  v73[0] = v61;
  v40 = v79;
  v41 = v80;
  v42 = sub_B170(&v78, v79);
  v72[3] = v40;
  v72[4] = *(v41 + 8);
  v43 = sub_B1B4(v72);
  (*(*(v40 - 8) + 16))(v43, v42, v40);
  v71[4] = &protocol witness table for LayoutViewPlaceholder;
  v71[3] = v20;
  v71[0] = v39;

  v44 = v63;
  sub_1942C(v63, v73, v72, &v77, v71, &v74);
  sub_BEB8(v71);
  sub_BEB8(v72);
  sub_10A2C(v73, &unk_943B10);
  sub_B170(&v74, v75);
  sub_7665C0();
  v46 = v45;

  sub_BEB8(&v77);
  v64(v44, v65);
  sub_BEB8(&v74);
  sub_BEB8(&v78);
  return v46;
}

void sub_1AE34(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4)
{
  v8 = *(a1 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v13[0] = _swiftEmptyArrayStorage;
    sub_76A7C0();
    v10 = a1 + 32;
    do
    {
      v10 += 16;

      sub_76A7A0();
      sub_76A7D0();
      sub_76A7E0();
      sub_76A7B0();
      --v8;
    }

    while (v8);
    v9 = v13[0];
  }

  if (qword_93C680 == -1)
  {
    if (a3 <= 0.0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = v9;
    swift_once();
    v9 = v12;
    if (a3 <= 0.0)
    {
      goto LABEL_10;
    }
  }

  if (a4 > 0.0)
  {
    __chkstk_darwin(v9);
    sub_1EBC0();
    sub_765470();

    v11 = OBJC_IVAR____TtC18ASMessagesProvider19IconArtworkGridView_config;
    swift_beginAccess();
    sub_1EC14(v13, a2 + v11);
    swift_endAccess();
    sub_1FEEE0();
    sub_1EC70(v13);
    sub_1FF26C(a3, a4);
    return;
  }

LABEL_10:
}

uint64_t CondensedEditorialSearchResultContentView.applyData(from:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v110 = a2;
  v5 = sub_7593D0();
  v102 = *(v5 - 8);
  v103 = v5;
  __chkstk_darwin(v5);
  v101 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_766690();
  v105 = *(v7 - 8);
  v106 = v7;
  __chkstk_darwin(v7);
  v104 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7632B0();
  v108 = *(v9 - 8);
  v109 = v9;
  __chkstk_darwin(v9);
  v114 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_761380();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v100 - v17;
  __chkstk_darwin(v16);
  v20 = &v100 - v19;
  v113 = sub_7631F0();
  v115 = *(v113 - 8);
  v21 = __chkstk_darwin(v113);
  v23 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = &v100 - v25;
  __chkstk_darwin(v24);
  v112 = &v100 - v27;
  sub_75F330();
  sub_1ED80(&qword_956680, &type metadata accessor for EditorialSearchResult);
  v107 = a1;
  result = sub_75C750();
  if (!v116)
  {
    return result;
  }

  v111 = v116;
  sub_75F2F0();
  (*(v12 + 32))(v18, v20, v11);
  v29 = (*(v12 + 88))(v18, v11);
  if (v29 == enum case for EditorialSearchResultType.category(_:))
  {
    v30 = v115;
    v31 = v113;
    (*(v115 + 104))(v26, enum case for CondensedSearchResultCardLayout.Configuration.category(_:), v113);
    goto LABEL_9;
  }

  v31 = v113;
  if (v29 == enum case for EditorialSearchResultType.story(_:))
  {
    v32 = &enum case for CondensedSearchResultCardLayout.Configuration.stories(_:);
LABEL_8:
    v30 = v115;
    (*(v115 + 104))(v26, *v32, v113);
    goto LABEL_9;
  }

  if (v29 == enum case for EditorialSearchResultType.developer(_:))
  {
    v32 = &enum case for CondensedSearchResultCardLayout.Configuration.developer(_:);
    goto LABEL_8;
  }

  v68 = *(v115 + 104);
  if (v29 == enum case for EditorialSearchResultType.appEventStory(_:))
  {
    v68(v26, enum case for CondensedSearchResultCardLayout.Configuration.appEvent(_:), v113);
  }

  else
  {
    v68(v26, enum case for CondensedSearchResultCardLayout.Configuration.standard(_:), v113);
    (*(v12 + 8))(v18, v11);
  }

  v30 = v115;
LABEL_9:
  v33 = v112;
  (*(v30 + 32))(v112, v26, v31);
  sub_7631D0();
  (*(v30 + 16))(v23, v33, v31);
  v34 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_configuration;
  swift_beginAccess();
  (*(v30 + 24))(&v3[v34], v23, v31);
  swift_endAccess();
  [v3 setNeedsLayout];
  v35 = *(v30 + 8);
  v115 = v30 + 8;
  v100 = v35;
  v35(v23, v31);
  swift_getKeyPath();
  sub_75C7B0();

  v36 = v116;
  sub_18794(v33, v116);

  v37 = sub_75F2A0();
  v39 = v38;
  sub_75F2F0();
  sub_1BD04(v37, v39, v15);

  (*(v12 + 8))(v15, v11);
  v40 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_titleLabel];
  sub_75F300();
  if (v41)
  {
    v42 = sub_769210();
  }

  else
  {
    v42 = 0;
  }

  [v40 setText:v42];

  if (sub_75F2C0())
  {
    sub_764CF0();
    v43 = sub_769490();

    if (v43)
    {
      sub_75A920();
      sub_768900();
      sub_768ED0();
      sub_763210();
      v45 = v44;
      v47 = v46;
      v48 = sub_75A810();
      v49 = objc_allocWithZone(type metadata accessor for IconArtworkGridView());
      v50 = sub_1FE9F8(v48 & 1, 0.0, 0.0, v45, v47);
      v51 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_iconGrid;
      v52 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_iconGrid];
      if (v52)
      {
        [v52 removeFromSuperview];
        v53 = *&v3[v51];
      }

      else
      {
        v53 = 0;
      }

      *&v3[v51] = v50;
      v69 = v50;

      [v3 addSubview:v69];
      [v3 setNeedsLayout];

      sub_763210();
      v70 = &v3[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_artworkSize];
      *v70 = v71;
      *(v70 + 1) = v72;
      [v3 setNeedsLayout];

      goto LABEL_30;
    }
  }

  if (sub_75F280())
  {
    sub_764BC0();

LABEL_19:

    v54 = v104;
    sub_7666A0();
    sub_1C75C();
    v56 = v55;
    v58 = v57;
    (*(v105 + 8))(v54, v106);
    v59 = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, v56, v58}];
    v60 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_artworkView;
    v61 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_artworkView];
    if (v61)
    {
      [v61 removeFromSuperview];
      v62 = *&v3[v60];
    }

    else
    {
      v62 = 0;
    }

    *&v3[v60] = v59;
    v63 = v59;

    if (v63)
    {
      [v3 addSubview:v63];
      v65 = v101;
      v64 = v102;
      v66 = v103;
      (*(v102 + 104))(v101, enum case for CornerStyle.continuous(_:), v103);
      sub_759200();

      (*(v64 + 8))(v65, v66);
    }

    [v3 setNeedsLayout];

    v67 = &v3[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_artworkSize];
    *v67 = v56;
    v67[1] = v58;
    goto LABEL_25;
  }

  if (sub_75F2B0())
  {
    goto LABEL_19;
  }

  if (!sub_75F270())
  {
    goto LABEL_30;
  }

  sub_763210();
  v89 = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, v87, v88}];
  v90 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_artworkView;
  v91 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_artworkView];
  if (v91)
  {
    [v91 removeFromSuperview];
    v92 = *&v3[v90];
  }

  else
  {
    v92 = 0;
  }

  *&v3[v90] = v89;
  v93 = v89;

  if (v93)
  {
    [v3 addSubview:v93];
    v95 = v101;
    v94 = v102;
    v96 = v103;
    (*(v102 + 104))(v101, enum case for CornerStyle.continuous(_:), v103);
    sub_759200();

    (*(v94 + 8))(v95, v96);
  }

  [v3 setNeedsLayout];

  sub_763210();
  v97 = &v3[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_artworkSize];
  *v97 = v98;
  *(v97 + 1) = v99;
LABEL_25:
  [v3 setNeedsLayout];
LABEL_30:
  v73 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v74 = swift_allocObject();
  swift_weakInit();
  v75 = swift_allocObject();
  *(v75 + 2) = v73;
  *(v75 + 3) = v74;
  *(v75 + 4) = v110;
  v76 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_action;
  v77 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_action];
  if (v77)
  {
    v78 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_viewButton];

    [v78 removeAction:v77 forControlEvents:4095];
    v79 = *&v3[v76];
  }

  else
  {

    v79 = 0;
  }

  *&v3[v76] = 0;

  v80 = &v3[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_buttonHandler];
  v81 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_buttonHandler];
  *v80 = sub_1E678;
  v80[1] = v75;

  sub_F704(v81);
  sub_BE70(0, &qword_955FA0);

  v82 = sub_76A1F0();
  v83 = *&v3[v76];
  if (v83)
  {
    [*&v3[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_viewButton] removeAction:v83 forControlEvents:4095];
    v84 = *&v3[v76];
  }

  else
  {
    v84 = 0;
  }

  v85 = v114;
  *&v3[v76] = v82;
  v86 = v82;

  [*&v3[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_viewButton] addAction:v86 forControlEvents:64];

  (*(v108 + 8))(v85, v109);
  v100(v112, v113);

  [v3 setNeedsLayout];
}

void sub_1BD04(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_759950();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_761380();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (*(v13 + 16))(v15, a3, v12);
    v16 = (*(v13 + 88))(v15, v12);
    if (v16 == enum case for EditorialSearchResultType.category(_:) || v16 == enum case for EditorialSearchResultType.story(_:))
    {
      v18 = &enum case for SystemImage.appstore(_:);
    }

    else
    {
      if (v16 != enum case for EditorialSearchResultType.developer(_:))
      {
        (*(v13 + 8))(v15, v12);
        v28 = objc_allocWithZone(NSMutableAttributedString);
        v29 = sub_769210();
        v30 = [v28 initWithString:v29];

        v27 = v30;
        v21 = 0;
        goto LABEL_12;
      }

      v18 = &enum case for SystemImage.personCropSquare(_:);
    }

    (*(v9 + 104))(v11, *v18, v8);
    v19 = sub_759930();
    (*(v9 + 8))(v11, v8);
    v20 = objc_opt_self();
    v21 = v19;
    v22 = [v20 textAttachmentWithImage:v21];
    v23 = [objc_opt_self() attributedStringWithAttachment:v22];
    v31[0] = 32;
    v31[1] = 0xE100000000000000;
    v32._countAndFlagsBits = a1;
    v32._object = a2;
    sub_769370(v32);
    v24 = objc_allocWithZone(NSMutableAttributedString);
    v25 = sub_769210();

    v26 = [v24 initWithString:v25];

    v27 = v26;
    [v27 insertAttributedString:v23 atIndex:0];

LABEL_12:
    [*(v4 + OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_headerLabel) setAttributedText:v27];
  }
}

void sub_1C094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v5 - 8);
  v7 = &v13[-v6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong() && (v10 = sub_75F260(), , v10))
    {
      v11 = sub_BD88(&unk_93F630);
      sub_768860();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v7, 1, v11) == 1)
      {

        sub_10A2C(v7, &unk_93F980);
      }

      else
      {
        sub_32A6C0(v10, 1, a4, v7);

        (*(v12 + 8))(v7, v11);
      }
    }

    else
    {
    }
  }
}

uint64_t static CondensedEditorialSearchResultContentView.sizingForArtworkPrefetch(in:asPartOf:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_7601F0();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

id CondensedEditorialSearchResultContentView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CondensedEditorialSearchResultContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1C450()
{
  v1 = v0;
  v2 = sub_7632B0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7631F0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_itemLayoutContext;
  v11 = sub_75C840();
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_headerLabel;
  sub_75BB20();
  *(v1 + v12) = sub_75BB00();
  v13 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_titleLabel;
  *(v1 + v13) = sub_75BB00();
  v14 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_viewButton;
  *(v1 + v14) = [objc_opt_self() buttonWithType:0];
  v15 = enum case for CondensedSearchResultCardLayout.Configuration.standard(_:);
  v16 = *(v7 + 104);
  v16(v1 + OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_configuration, enum case for CondensedSearchResultCardLayout.Configuration.standard(_:), v6);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_artworkView) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_iconGrid) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_action) = 0;
  v17 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_buttonHandler);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_artworkSize);
  v16(v9, v15, v6);
  sub_7631D0();
  (*(v7 + 8))(v9, v6);
  sub_763210();
  v20 = v19;
  v22 = v21;
  (*(v3 + 8))(v5, v2);
  *v18 = v20;
  v18[1] = v22;
  sub_76A840();
  __break(1u);
}

uint64_t sub_1C75C()
{
  v0 = sub_76A920();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766690();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!sub_75F280())
  {
    return sub_763210();
  }

  sub_764BC0();

  sub_765260();
  sub_7666A0();
  sub_763210();
  sub_766650();
  sub_763210();
  sub_766650();
  sub_763210();
  (*(v1 + 104))(v3, enum case for FloatingPointRoundingRule.up(_:), v0);
  sub_769D80();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

double sub_1C998(uint64_t a1, uint64_t a2, objc_class *a3)
{
  v93 = a3;
  v95 = a1;
  v84 = sub_BD88(&qword_93F3C8);
  v85 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v67 - v4;
  v81 = sub_7632D0();
  v83 = *(v81 - 8);
  __chkstk_darwin(v81);
  v80 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_766D70();
  v79 = *(v78 - 8);
  v6 = __chkstk_darwin(v78);
  v92 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v89 = &v67 - v8;
  v90 = sub_7666D0();
  v94 = *(v90 - 8);
  __chkstk_darwin(v90);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_767030();
  v72 = *(v86 - 8);
  v11 = __chkstk_darwin(v86);
  v75 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v67 - v14;
  v16 = __chkstk_darwin(v13);
  v87 = &v67 - v17;
  __chkstk_darwin(v16);
  v91 = &v67 - v18;
  v19 = sub_766690();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_7632B0();
  v73 = *(v23 - 8);
  v24 = v73;
  v25 = __chkstk_darwin(v23);
  v27 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v67 - v28;
  sub_7631D0();
  sub_7666A0();
  sub_1C75C();
  v31 = v30;
  v33 = v32;
  (*(v20 + 8))(v22, v19);
  v34 = *(v24 + 8);
  v71 = v29;
  v70 = v23;
  v34(v29, v23);
  v76 = v34;
  v77 = v24 + 8;
  v69 = v27;
  sub_7631D0();
  sub_763290();
  v34(v27, v23);
  sub_767020();
  v67 = a2;
  sub_7631A0();
  v35 = v87;
  sub_766FF0();
  v36 = *(v94 + 8);
  v94 += 8;
  v68 = v36;
  v36(v10, v90);
  v37 = v72;
  v38 = v72 + 8;
  v39 = *(v72 + 8);
  v40 = v86;
  v39(v15, v86);
  v88 = v38;
  sub_7631C0();
  v41 = v91;
  sub_767010();
  v42 = v40;
  v39(v35, v40);
  sub_75F2A0();
  v72 = *(v37 + 16);
  (v72)(v35, v41, v40);
  sub_766D50();
  v43 = v89;
  v44 = v35;
  sub_766D90();
  v45 = v75;
  sub_767020();
  sub_7631E0();
  sub_766FF0();
  v68(v10, v90);
  v74 = v39;
  v39(v45, v42);
  v46.super.isa = v93;
  sub_7631B0(v46);
  sub_767010();
  v39(v15, v42);
  sub_75F300();
  (v72)(v15, v44, v42);
  sub_766D50();
  v47 = v92;
  sub_766D90();
  v48 = v71;
  v49 = v70;
  (*(v73 + 16))(v69, v71, v70);
  v100[8] = &type metadata for FixedSizedPlaceholder;
  v100[9] = sub_1ECC4();
  v100[5] = v31;
  v100[6] = v33;
  v50 = v78;
  v100[3] = v78;
  v100[4] = &protocol witness table for LabelPlaceholder;
  v51 = sub_B1B4(v100);
  v52 = v79;
  v53 = *(v79 + 16);
  v53(v51, v43, v50);
  v99[3] = v50;
  v99[4] = &protocol witness table for LabelPlaceholder;
  v54 = sub_B1B4(v99);
  v53(v54, v47, v50);
  v55 = sub_75AB90();
  swift_allocObject();
  v56 = sub_75AB80();
  v97 = v55;
  v98 = sub_1ED80(&qword_93F440, &type metadata accessor for EmptyPlaceable);
  v96 = v56;
  v57 = v80;
  sub_7632C0();
  sub_1ED80(&qword_93F3D0, &type metadata accessor for CondensedSearchResultCardLayout);
  v58 = v82;
  v59 = v81;
  sub_766730();
  swift_getOpaqueTypeConformance2();
  v60 = v84;
  sub_7673F0();
  v62 = v61;
  (*(v85 + 8))(v58, v60);
  (*(v83 + 8))(v57, v59);
  v63 = *(v52 + 8);
  v63(v92, v50);
  v64 = v86;
  v65 = v74;
  v74(v87, v86);
  v63(v89, v50);
  v65(v91, v64);
  v76(v48, v49);
  return v62;
}

double _s18ASMessagesProvider41CondensedEditorialSearchResultContentViewC6height2in8asPartOf12CoreGraphics7CGFloatV11AppStoreKit17ItemLayoutContextV_9JetEngine15BaseObjectGraphCtFZ_0()
{
  v0 = sub_761380();
  v30 = *(v0 - 8);
  v1 = __chkstk_darwin(v0);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v29 - v4;
  v34 = sub_7631F0();
  v6 = *(v34 - 8);
  v7 = __chkstk_darwin(v34);
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v29 - v9;
  v11 = sub_75DAB0();
  __chkstk_darwin(v11 - 8);
  v33 = sub_7656C0();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75F330();
  sub_1ED80(&qword_956680, &type metadata accessor for EditorialSearchResult);
  sub_75C750();
  v14 = v35;
  if (!v35)
  {
    return 0.0;
  }

  v29 = v10;
  sub_75C720();
  if (qword_93D050 != -1)
  {
    swift_once();
  }

  sub_765660();
  sub_75F2F0();
  v15 = v30;
  (*(v30 + 32))(v3, v5, v0);
  v16 = (*(v15 + 88))(v3, v0);
  if (v16 == enum case for EditorialSearchResultType.category(_:))
  {
    v17 = v32;
    v18 = v34;
    (*(v6 + 104))(v32, enum case for CondensedSearchResultCardLayout.Configuration.category(_:), v34);
    v19 = v29;
  }

  else
  {
    v17 = v32;
    if (v16 == enum case for EditorialSearchResultType.story(_:))
    {
      v18 = v34;
      (*(v6 + 104))(v32, enum case for CondensedSearchResultCardLayout.Configuration.stories(_:), v34);
      v19 = v29;
    }

    else
    {
      v19 = v29;
      if (v16 == enum case for EditorialSearchResultType.developer(_:))
      {
        v21 = enum case for CondensedSearchResultCardLayout.Configuration.developer(_:);
        v22 = *(v6 + 104);
      }

      else
      {
        v22 = *(v6 + 104);
        if (v16 != enum case for EditorialSearchResultType.appEventStory(_:))
        {
          v18 = v34;
          v22(v32, enum case for CondensedSearchResultCardLayout.Configuration.standard(_:), v34);
          (*(v15 + 8))(v3, v0);
          goto LABEL_15;
        }

        v21 = enum case for CondensedSearchResultCardLayout.Configuration.appEvent(_:);
      }

      v18 = v34;
      v22(v32, v21, v34);
    }
  }

LABEL_15:
  (*(v6 + 32))(v19, v17, v18);
  swift_getKeyPath();
  sub_75C7B0();

  v23 = v35;
  sub_765630();
  v24 = sub_769A00();
  v25 = (v6 + 8);
  v26 = (v31 + 8);
  if (v24)
  {
    v27 = sub_1A574(v14, v19, v23);
  }

  else
  {
    v27 = sub_1C998(v14, v19, v23);
  }

  v20 = v27;

  (*v25)(v19, v18);
  (*v26)(v13, v33);
  return v20;
}

uint64_t _s18ASMessagesProvider41CondensedEditorialSearchResultContentViewC5fetch3for2in2on8asPartOfy11AppStoreKit27ManagedArtworkModelProtocol_p_So6CGRectVAI0T6LoaderC9JetEngine15BaseObjectGraphCtF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a3;
  v78 = a2;
  v5 = sub_7652D0();
  __chkstk_darwin(v5 - 8);
  v69 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_765240();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_766690();
  v75 = *(v8 - 8);
  v76 = v8;
  __chkstk_darwin(v8);
  v74 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_7632B0();
  v10 = *(v79 - 8);
  v11 = __chkstk_darwin(v79);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v65 - v14;
  v16 = sub_761380();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v77 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v65 - v21;
  __chkstk_darwin(v20);
  v24 = &v65 - v23;
  v25 = sub_7631F0();
  v26 = *(v25 - 8);
  v82 = v25;
  v83 = v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v81 = &v65 - v30;
  sub_134D8(a1, v85);
  sub_BD88(&unk_93F520);
  sub_75F330();
  result = swift_dynamicCast();
  if (result)
  {
    v67 = v3;
    v80 = v15;
    sub_75F2F0();
    (*(v17 + 32))(v22, v24, v16);
    v66 = *(v17 + 88);
    v32 = v66(v22, v16);
    v65 = v17;
    if (v32 == enum case for EditorialSearchResultType.category(_:))
    {
      v33 = enum case for CondensedSearchResultCardLayout.Configuration.category(_:);
      v35 = v82;
      v34 = v83;
    }

    else
    {
      v35 = v82;
      if (v32 == enum case for EditorialSearchResultType.story(_:))
      {
        v36 = &enum case for CondensedSearchResultCardLayout.Configuration.stories(_:);
      }

      else
      {
        if (v32 != enum case for EditorialSearchResultType.developer(_:))
        {
          v64 = *(v83 + 104);
          if (v32 == enum case for EditorialSearchResultType.appEventStory(_:))
          {
            v64(v29, enum case for CondensedSearchResultCardLayout.Configuration.appEvent(_:), v82);
          }

          else
          {
            v64(v29, enum case for CondensedSearchResultCardLayout.Configuration.standard(_:), v82);
            (*(v17 + 8))(v22, v16);
          }

          v34 = v83;
LABEL_10:
          (*(v34 + 32))(v81, v29, v35);
          sub_7631D0();
          sub_7631D0();
          sub_763210();
          v38 = v37;
          v40 = v39;
          v41 = *(v10 + 8);
          v42 = v79;
          v68 = v10 + 8;
          v41(v13, v79);
          v43 = v41;
          v44 = sub_75F2C0();
          v45 = v67;
          if (v44)
          {
            v46 = *&v67[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_iconGrid];
            if (v46)
            {
              sub_75D310();
              v47 = v46;
              sub_7688F0();
              if (v85[0])
              {
                v48 = swift_allocObject();
                v49 = v78;
                v48[2] = v47;
                v48[3] = v49;
                v48[4] = v38;
                v48[5] = v40;
                v50 = swift_allocObject();
                v50[2] = v47;
                v50[3] = v49;
                v50[4] = v38;
                v50[5] = v40;
                v85[0] = v45;
                type metadata accessor for CondensedEditorialSearchResultContentView();
                v77 = v41;
                sub_1ED80(&qword_93F430, type metadata accessor for CondensedEditorialSearchResultContentView);
                v51 = v47;
                swift_retain_n();
                v52 = v51;
                v53 = v45;
                sub_76A6E0();
                sub_75D2E0();

                sub_10A2C(v84, &unk_9443A0);
                sub_1EB60(v85);
                (v77)(v80, v79);
                return (*(v83 + 8))(v81, v82);
              }
            }

            else
            {
            }
          }

          if (sub_75F280())
          {
            sub_764BC0();
          }

          else if (!sub_75F2B0())
          {
            goto LABEL_24;
          }

          v54 = *&v45[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_artworkView];
          if (v54)
          {
            v55 = v54;
            v56 = v74;
            sub_7666A0();
            sub_1C75C();
            (*(v75 + 8))(v56, v76);
            [v55 setContentMode:0];
            v57 = v77;
            sub_75F2F0();
            v58 = v66(v57, v16);
            if (v58 != enum case for EditorialSearchResultType.developer(_:) && v58 != enum case for EditorialSearchResultType.appEventStory(_:))
            {
              v59 = v70;
              sub_765250();
              sub_765210();
              (*(v71 + 8))(v59, v72);
              (*(v65 + 8))(v77, v16);
            }

            sub_765330();
            sub_759210();
            sub_1ED80(&qword_945810, &type metadata accessor for ArtworkView);
            sub_75A050();

            v43(v80, v42);
            return (*(v83 + 8))(v81, v82);
          }

LABEL_24:
          if (sub_75F270())
          {
            v60 = *&v45[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_artworkView];
            v61 = v80;
            if (v60)
            {
              v62 = v60;
              sub_763210();
              v63 = v70;
              sub_765250();
              sub_765210();
              (*(v71 + 8))(v63, v72);
              sub_765330();
              sub_7652E0();
              sub_7591B0();
              [v62 setContentMode:sub_765140()];
              sub_75DEF0();
              sub_7591F0();
              if (!sub_7651A0())
              {
                sub_BE70(0, &qword_93E540);
                sub_76A030();
              }

              sub_759070();
              sub_759210();
              sub_1ED80(&qword_945810, &type metadata accessor for ArtworkView);
              sub_75A050();
            }

            v41(v61, v42);
          }

          else
          {

            v41(v80, v42);
          }

          return (*(v83 + 8))(v81, v82);
        }

        v36 = &enum case for CondensedSearchResultCardLayout.Configuration.developer(_:);
      }

      v33 = *v36;
      v34 = v83;
    }

    (*(v34 + 104))(v29, v33, v35);
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1E594@<X0>(uint64_t *a1@<X8>)
{
  result = sub_75DA30();
  *a1 = result;
  return result;
}

uint64_t sub_1E5C0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1E5F8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1E630()
{

  return _swift_deallocObject(v0, 40, 7);
}

void _s18ASMessagesProvider41CondensedEditorialSearchResultContentViewC20cancelArtworkFetches2on8asPartOf014deprioritizingK0y11AppStoreKit0J6LoaderC_9JetEngine15BaseObjectGraphCSbtF_0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_iconGrid);
  if (v2)
  {
    v3 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider19IconArtworkGridView_iconViews];
    if (v3 >> 62)
    {
      v4 = sub_76A860();
      if (!v4)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
      if (!v4)
      {
        goto LABEL_11;
      }
    }

    if (v4 < 1)
    {
      __break(1u);
      return;
    }

    v5 = v2;

    v6 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = sub_76A770();
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      sub_759210();
      sub_1ED80(&qword_945810, &type metadata accessor for ArtworkView);
      sub_75A0C0();
    }

    while (v4 != v6);
  }

LABEL_11:
  v9 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_artworkView);
  if (v9)
  {
    v10 = v9;
    v11 = v10;
    v12 = v10;
    v14.value.super.isa = 0;
    v14.is_nil = 0;
    sub_7591D0(v14, v11);
    sub_759210();
    sub_1ED80(&qword_945810, &type metadata accessor for ArtworkView);
    sub_75A0C0();
  }
}

uint64_t sub_1E898(uint64_t a1)
{
  *(a1 + 24) = sub_1ED80(&qword_93F3D8, type metadata accessor for CondensedEditorialSearchResultContentView);
  result = sub_1ED80(&qword_93F3E0, type metadata accessor for CondensedEditorialSearchResultContentView);
  *(a1 + 32) = result;
  return result;
}

void sub_1E96C()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    sub_7631F0();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1EA64()
{
  if (!qword_940840)
  {
    sub_75C840();
    v0 = sub_76A480();
    if (!v1)
    {
      atomic_store(v0, &qword_940840);
    }
  }
}

unint64_t sub_1EABC()
{
  result = qword_9562B0;
  if (!qword_9562B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9562B0);
  }

  return result;
}

uint64_t sub_1EB20()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_1EBC0()
{
  result = qword_93F438;
  if (!qword_93F438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93F438);
  }

  return result;
}

unint64_t sub_1ECC4()
{
  result = qword_956280;
  if (!qword_956280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_956280);
  }

  return result;
}

uint64_t sub_1ED18(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_BD88(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1ED80(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1EDC8()
{
  result = qword_93F450;
  if (!qword_93F450)
  {
    sub_133D8(&unk_960EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93F450);
  }

  return result;
}

unint64_t sub_1EE48()
{
  result = qword_93F478;
  if (!qword_93F478)
  {
    sub_75A5D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93F478);
  }

  return result;
}

uint64_t sub_1EEA0()
{
  v0 = sub_768FD0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_768FF0();
  sub_161DC(v4, qword_93F460);
  sub_BE38(v4, qword_93F460);
  if (qword_93DEE8 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_9A03E8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_768FE0();
}

uint64_t sub_1EFF4(id *a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  [*a1 setActive:0];
  sub_BD88(&qword_93F488);
  v6 = [a2 ams_saveAccount:v5 verifyCredentials:0];
  sub_768F80();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1F7DC;
  *(v7 + 24) = a3;
  v8 = sub_BE70(0, &qword_940340);
  swift_retain_n();
  v10[3] = v8;
  v10[4] = &protocol witness table for OS_dispatch_queue;
  v10[0] = sub_769970();
  sub_768F10();

  return sub_BEB8(v10);
}

uint64_t sub_1F148()
{
  v0 = sub_7687C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  sub_768F60();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1F234()
{
  if (qword_93C180 != -1)
  {
    swift_once();
  }

  v0 = sub_768FF0();
  sub_BE38(v0, qword_93F460);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_768540();
  swift_getErrorValue();
  v4[3] = v3;
  v1 = sub_B1B4(v4);
  (*(*(v3 - 8) + 16))(v1);
  sub_7685C0();
  sub_BDD0(v4);
  sub_768EA0();

  return sub_768F50();
}

uint64_t sub_1F40C()
{
  if (qword_93C180 != -1)
  {
    swift_once();
  }

  v0 = sub_768FF0();
  sub_BE38(v0, qword_93F460);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_768540();
  swift_getErrorValue();
  v4[3] = v3;
  v1 = sub_B1B4(v4);
  (*(*(v3 - 8) + 16))(v1);
  sub_7685C0();
  sub_BDD0(v4);
  sub_768EA0();

  return sub_768F50();
}

uint64_t sub_1F5EC()
{
  sub_BD88(&qword_94DDC0);
  v0 = sub_768F90();
  sub_BE70(0, &qword_959CF0);
  sub_768900();
  sub_768ED0();
  v1 = v7[0];
  sub_BD88(&qword_93F480);
  v2 = [v7[0] ams_activeiTunesAccountForMediaType:AMSAccountMediaTypeProduction];
  sub_768F70();
  v3 = swift_allocObject();
  *(v3 + 16) = v7[0];
  *(v3 + 24) = v0;
  v4 = sub_BE70(0, &qword_940340);
  swift_retain_n();
  v5 = v1;
  v7[3] = v4;
  v7[4] = &protocol witness table for OS_dispatch_queue;
  v7[0] = sub_769970();
  sub_768F10();

  sub_BEB8(v7);
  return v0;
}

uint64_t sub_1F78C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1F7E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1F830(unint64_t a1, unint64_t a2)
{
  v4 = sub_761C80();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7653B0();
  v32[3] = v8;
  v32[4] = sub_241D0(&qword_93F9B0, 255, &type metadata accessor for Feature);
  v9 = sub_B1B4(v32);
  (*(*(v8 - 8) + 104))(v9, enum case for Feature.search_tags(_:), v8);
  LOBYTE(v8) = sub_765C30();
  sub_BEB8(v32);
  if (v8)
  {
    a2 = a1;
  }

  if (a2)
  {
    sub_75D7C0();
    if (sub_769490())
    {
      v10 = a2 & 0xFFFFFFFFFFFFFF8;
      if (a2 >> 62)
      {
        goto LABEL_40;
      }

      for (i = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
      {
        v12 = 0;
        v31 = a2 & 0xC000000000000001;
        v13 = (v5 + 88);
        v29 = enum case for MetadataRibbonItemViewType.editorsChoice(_:);
        v30 = enum case for MetadataRibbonItemViewType.borderedTextLabel(_:);
        v27 = enum case for MetadataRibbonItemViewType.starRating(_:);
        v28 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
        v25 = enum case for MetadataRibbonItemViewType.divider(_:);
        v26 = enum case for MetadataRibbonItemViewType.textLabel(_:);
        v14 = (v5 + 8);
        v15 = enum case for MetadataRibbonItemViewType.highlightedText(_:);
        v24 = v10;
        while (v31)
        {
          v5 = sub_76A770();
          v10 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_38;
          }

LABEL_11:
          sub_75D750();

          v16 = (*v13)(v7, v4);
          v17 = v16 == v30 || v16 == v29;
          v22 = v17 || v16 == v28 || v16 == v27 || v16 == v26 || v16 == v25 || v16 == v15;
          v5 = v22;
          if (!v22)
          {
            (*v14)(v7, v4);
            ++v12;
            v17 = v10 == i;
            v10 = v24;
            if (!v17)
            {
              continue;
            }
          }

          return v5;
        }

        if (v12 >= *(v10 + 16))
        {
          goto LABEL_39;
        }

        v5 = *(a2 + 8 * v12 + 32);

        v10 = v12 + 1;
        if (!__OFADD__(v12, 1))
        {
          goto LABEL_11;
        }

LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        ;
      }
    }
  }

  return 0;
}

uint64_t sub_1FB30()
{
  if (qword_93DCE0 != -1)
  {
    swift_once();
  }

  v0 = sub_766CA0();
  v1 = sub_BE38(v0, qword_99FDE8);
  qword_999F30 = v0;
  unk_999F38 = &protocol witness table for StaticDimension;
  v2 = sub_B1B4(qword_999F18);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

char *sub_1FBEC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for AppEventView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventTapGestureRecognizer;
  *&v4[v11] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v12 = &v4[OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventViewTappedAction];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_impressionsCalculator] = 0;
  v13 = &v4[OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_impressionsUpdateBlock];
  v14 = type metadata accessor for AppEventSearchResultContentView();
  *v13 = 0;
  *(v13 + 1) = 0;
  v23.receiver = v4;
  v23.super_class = v14;
  v15 = objc_msgSendSuper2(&v23, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v19 = v15;
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v19 addSubview:*&v19[OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_lockupView]];
  v20 = OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventView;
  [v19 addSubview:*&v19[OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventView]];
  v21 = OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventTapGestureRecognizer;
  [*&v19[OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventTapGestureRecognizer] addTarget:v19 action:"handleTapWithGestureRecognizer:"];
  [*&v19[v21] setDelegate:v19];
  [*&v19[v20] addGestureRecognizer:*&v19[v21]];

  return v19;
}

id sub_1FE18()
{
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventTapGestureRecognizer] removeTarget:v0 action:0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppEventSearchResultContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1FF68()
{
  v1 = v0;
  v2 = type metadata accessor for AppEventCardLayout(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&unk_93F5A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - v7;
  v9 = type metadata accessor for AppEventSearchResultContentView();
  v36.receiver = v0;
  v36.super_class = v9;
  objc_msgSendSuper2(&v36, "layoutSubviews");
  sub_75D650();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_lockupView];
  sub_12EE70();
  sub_769D20();
  v19 = &selRef_setSpeed_;
  [v18 setFrame:?];
  if (MetadataRibbonView.hasContent.getter() & 1) != 0 || (sub_EC48())
  {
    sub_763F60();
    v20 = [v0 traitCollection];
    sub_7671D0();
    v21 = v6;
    sub_BD88(&unk_93F5C0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_77D9F0;
    *(v22 + 32) = v20;
    v23 = v20;
    v19 = &selRef_setSpeed_;
    v24 = sub_7671E0();
    sub_24128();
    sub_7666E0();
    v26 = v25;

    (*(v21 + 8))(v8, v5);
  }

  else
  {
    if (qword_93C188 != -1)
    {
      swift_once();
    }

    sub_B170(qword_999F18, qword_999F30);
    v27 = [v0 traitCollection];
    sub_766710();
    v26 = v28;
  }

  v37.origin.x = v11;
  v37.origin.y = v13;
  v37.size.width = v15;
  v37.size.height = v17;
  CGRectGetMinX(v37);
  [v18 frame];
  MaxY = CGRectGetMaxY(v38);
  v39.origin.x = v11;
  v39.origin.y = v13;
  v39.size.width = v15;
  v39.size.height = v17;
  Width = CGRectGetWidth(v39);
  v40.origin.x = v11;
  v40.origin.y = v13;
  v40.size.width = v15;
  v40.size.height = v17;
  v31 = CGRectGetMaxY(v40);
  v32 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventView];
  if (qword_93C808 != -1)
  {
    v35 = v31;
    swift_once();
    v31 = v35;
  }

  sub_634BB8(&unk_99BE98, v32, Width, v31 - (v26 + MaxY));
  v33 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView];
  sub_17BC9C(v4);
  sub_5CB710(v33, v4);
  sub_2467C(v4);
  [v1 bounds];
  sub_769D20();
  return [v32 v19[478]];
}

void sub_204F4(void *a1)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventView) + OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_241D0(&qword_93F500, 255, type metadata accessor for VideoView);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView];
    sub_BE70(0, &qword_93E550);
    v8 = v7;
    v9 = sub_76A1C0();

    if (v9)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v4 = v10;
        [v10 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

void (*sub_206A4(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView;
  a1[1] = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_20718;
}

void sub_20718(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *a1;
  v5 = *(v3 + v2);
  if (a2)
  {
    v6 = v4;
    sub_17D2EC();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      [*&v5[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView] insertSubview:Strong aboveSubview:*&v5[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_artworkView]];
      [v5 setNeedsLayout];
    }

    v10 = v6;
  }

  else
  {
    v10 = v4;
    sub_17D2EC();
    swift_unknownObjectWeakAssign();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (!v9)
    {
      goto LABEL_8;
    }

    v6 = v9;
    [*&v5[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView] insertSubview:v9 aboveSubview:*&v5[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_artworkView]];
    [v5 setNeedsLayout];
  }

LABEL_8:
}

id sub_2085C()
{
  sub_12F484();
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventView);
  sub_26E5C0();
  v2 = OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView;
  sub_17CC38();
  v3 = &v1[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_initialLongPressLocation];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_longPressGestureRecognizer] setEnabled:1];
  v4 = *&v1[v2];

  return [v1 addSubview:v4];
}

uint64_t sub_20968(uint64_t a1, char *a2)
{
  v3 = v2;
  swift_getObjectType();
  v5 = sub_BD88(&unk_93F620);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = sub_7656C0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7583C0();
  sub_241D0(&qword_93F5B0, 255, &type metadata accessor for AppEventSearchResult);
  result = sub_75C750();
  v13 = v25;
  if (v25)
  {
    static SearchPageGridBreakpointOverridable.pageGridWithSearchOverrides(for:)();
    sub_765560();
    v14 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_lockupView];
    *&v14[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_regularWidthColumnSpacing] = v15;
    [v14 setNeedsLayout];
    v16 = sub_7583B0();
    v24 = v8;
    v17 = v16;
    v18 = sub_75C840();
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
    sub_223E1C(v17, v7, a2);

    sub_10A2C(v7, &unk_93F620);
    v19 = sub_7583A0();
    sub_527DE4();
    sub_650D38(v19, a2);

    swift_unknownObjectRelease();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    *(v21 + 2) = v20;
    *(v21 + 3) = v13;
    *(v21 + 4) = a2;
    v22 = &v3[OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventViewTappedAction];
    v23 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventViewTappedAction];
    *v22 = sub_24670;
    v22[1] = v21;

    sub_F704(v23);

    [v3 setNeedsLayout];

    return (*(v9 + 8))(v11, v24);
  }

  return result;
}

void sub_20CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v4 - 8);
  v6 = v13 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_7583A0();
    v9 = sub_758780();

    if (v9)
    {
      v13[4] = type metadata accessor for AppEventSearchResultContentView();
      v13[1] = v8;

      v10 = v8;
      sub_764C00();

      v11 = sub_BD88(&unk_93F630);
      sub_768860();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v6, 1, v11) == 1)
      {

        sub_10A2C(v6, &unk_93F980);
      }

      else
      {
        sub_32A6C0(v9, 1, a3, v6);

        (*(v12 + 8))(v6, v11);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_20EB4()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  if (*(v0 + v1))
  {

    sub_75F4E0();
  }

  *(v0 + v1) = 0;

  v2 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_F704(v3);
  return sub_12F734();
}

uint64_t (*sub_20FB8(uint64_t **a1))()
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
  v2[4] = sub_206A4(v2);
  return sub_21028;
}

double sub_21064()
{
  [*(*(*v0 + OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventView) + OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_formattedDateView) frame];
  CGRectGetMaxY(v2);
  type metadata accessor for AppEventView();
  sub_75D650();
  CGRectGetHeight(v3);
  sub_75D650();
  CGRectGetWidth(v4);
  return 0.0;
}

CGFloat sub_210F0()
{
  v1 = *(*v0 + OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventView);
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_formattedDateView] frame];
  CGRectGetMaxY(v3);
  type metadata accessor for AppEventView();
  sub_75D650();
  CGRectGetHeight(v4);
  [v1 bounds];
  return CGRectGetWidth(v5) * 0.5;
}

uint64_t sub_211C8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_21280()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_F714(*v1);
  return v2;
}

uint64_t sub_212DC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_F704(v6);
}

uint64_t sub_2139C()
{
  type metadata accessor for SearchTagsRibbonView();
  sub_241D0(&qword_94AE40, 255, type metadata accessor for SearchTagsRibbonView);
  return sub_7633E0();
}

uint64_t sub_21448(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_2149C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_21508(uint64_t *a1))()
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
  *(v3 + 32) = sub_75DC50();
  return sub_246E0;
}

void sub_215A4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_215EC(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventView) + OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView);
  sub_BE70(0, &qword_93E550);
  v6 = v5;
  v7 = sub_76A1C0();

  return v7 & 1;
}

uint64_t sub_217D8(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = sub_241D0(&qword_93F508, a2, type metadata accessor for AppEventSearchResultContentView);
  result = sub_241D0(&unk_93F510, v3, type metadata accessor for AppEventSearchResultContentView);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2185C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = sub_761C80();
  v6 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_760D90();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_760DA0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v50 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75D7C0();
  result = sub_769490();
  if (result)
  {
    v43 = v11;
    v44 = v9;
    if (a1 >> 62)
    {
      result = sub_76A860();
      v16 = result;
    }

    else
    {
      v16 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    }

    v48 = a2;
    v49 = a3;
    v46 = v8;
    v47 = v12;
    v45 = v13;
    if (v16)
    {
      if (v16 >= 1)
      {
        v17 = 0;
        v57 = a1 & 0xC000000000000001;
        v56 = (v6 + 88);
        v55 = enum case for MetadataRibbonItemViewType.borderedTextLabel(_:);
        v52 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
        v53 = enum case for MetadataRibbonItemViewType.editorsChoice(_:);
        v51 = enum case for MetadataRibbonItemViewType.starRating(_:);
        v42 = enum case for MetadataRibbonItemViewType.textLabel(_:);
        v41 = enum case for MetadataRibbonItemViewType.divider(_:);
        v39 = (v6 + 8);
        v40 = enum case for MetadataRibbonItemViewType.highlightedText(_:);
        v18 = _swiftEmptyArrayStorage;
        v54 = a1;
        while (1)
        {
          if (v57)
          {
            v19 = sub_76A770();
          }

          else
          {
            v19 = *(a1 + 8 * v17 + 32);
          }

          v20 = v58;
          sub_75D750();
          v21 = (*v56)(v20, v59);
          if (v21 == v55)
          {
            break;
          }

          if (v21 == v53)
          {
            v22 = type metadata accessor for MetadataRibbonEditorsChoiceView();
            v23 = type metadata accessor for MetadataRibbonEditorsChoiceView;
            v24 = &unk_93F600;
            goto LABEL_24;
          }

          if (v21 == v52)
          {
            v22 = type metadata accessor for MetadataRibbonIconWithLabelView(0);
            v23 = type metadata accessor for MetadataRibbonIconWithLabelView;
            v24 = &unk_93EBD0;
            goto LABEL_24;
          }

          if (v21 == v51)
          {
            v22 = type metadata accessor for MetadataRibbonStarRatingView();
            v23 = type metadata accessor for MetadataRibbonStarRatingView;
            v24 = &unk_93F610;
            goto LABEL_24;
          }

          if (v21 == v42)
          {
            v22 = type metadata accessor for MetadataRibbonTagView();
            v23 = type metadata accessor for MetadataRibbonTagView;
            v24 = &unk_93EBC8;
            goto LABEL_24;
          }

          if (v21 == v41)
          {
            v22 = type metadata accessor for MetadataRibbonBarView();
            v23 = type metadata accessor for MetadataRibbonBarView;
            v24 = &unk_93F5F0;
            goto LABEL_24;
          }

          if (v21 == v40)
          {
            v22 = type metadata accessor for MetadataRibbonHighlightedTextView();
            v23 = type metadata accessor for MetadataRibbonHighlightedTextView;
            v24 = &unk_93EBB8;
            goto LABEL_24;
          }

          (*v39)(v58, v59);
LABEL_29:
          if (v16 == ++v17)
          {
            goto LABEL_33;
          }
        }

        v22 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView();
        v23 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView;
        v24 = &unk_93EBD8;
LABEL_24:
        v25 = sub_241D0(v24, 255, v23);
        v26 = swift_allocObject();
        v26[2] = v22;
        v26[3] = v25;
        v26[4] = v19;
        v27 = sub_7670D0();
        swift_allocObject();

        v28 = sub_767090();
        sub_75D770();
        v71 = v27;
        v72 = &protocol witness table for LayoutViewPlaceholder;
        v70 = v28;
        v73 = sub_75FCE0() & 1;
        v74 = sub_75FD20() & 1;
        sub_1ED18(v69, v64, &unk_93F5E0);
        v29 = v67;
        LOBYTE(v25) = v68;
        v60 = v64[0];
        v61 = v64[1];
        *&v62[0] = v65;
        sub_10914(&v66, v62 + 8);
        LOBYTE(v63) = v29;
        HIBYTE(v63) = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_7AB00(0, v18[2] + 1, 1, v18);
        }

        a1 = v54;
        v31 = v18[2];
        v30 = v18[3];
        if (v31 >= v30 >> 1)
        {
          v18 = sub_7AB00((v30 > 1), v31 + 1, 1, v18);
        }

        v18[2] = v31 + 1;
        v32 = &v18[11 * v31];
        v33 = v61;
        *(v32 + 2) = v60;
        *(v32 + 3) = v33;
        v34 = v62[0];
        v35 = v62[1];
        v36 = v62[2];
        *(v32 + 56) = v63;
        *(v32 + 5) = v35;
        *(v32 + 6) = v36;
        *(v32 + 4) = v34;
        sub_10A2C(v69, &unk_93F5E0);
        goto LABEL_29;
      }

      __break(1u);
    }

    else
    {
LABEL_33:
      (*(v44 + 16))(v43, v48, v46);
      v37 = v50;
      sub_760D40();
      sub_760D50();
      return (*(v45 + 8))(v37, v47);
    }
  }

  return result;
}

void sub_22028()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_lockupView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for AppEventView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventTapGestureRecognizer;
  *(v0 + v3) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v4 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventViewTappedAction);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_impressionsCalculator) = 0;
  v5 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_impressionsUpdateBlock);
  *v5 = 0;
  v5[1] = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_22140(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventView];
  v3 = *(*&v2[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView] + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupView);
  if (!v3)
  {
    return 0;
  }

  v5 = v3;
  [a1 locationInView:v1];
  v7 = v6;
  v9 = v8;
  v10 = [v1 hitTest:0 withEvent:?];
  [a1 locationInView:v2];
  v12 = v11;
  v14 = v13;
  [a1 locationInView:v5];
  v16 = v15;
  v18 = v17;
  [v2 bounds];
  v21.x = v12;
  v21.y = v14;
  if (CGRectContainsPoint(v24, v21) && ([v5 bounds], v22.x = v16, v22.y = v18, !CGRectContainsPoint(v25, v22)) && *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventViewTappedAction])
  {
    [v1 bounds];
    v23.x = v7;
    v23.y = v9;
    v19 = CGRectContainsPoint(v26, v23);

    if (v19)
    {
      if (!v10)
      {
        return 1;
      }

      objc_opt_self();
      v19 = swift_dynamicCastObjCClass() == 0;
    }
  }

  else
  {

    v19 = 0;
  }

  return v19;
}

uint64_t sub_222E4(uint64_t a1, uint64_t a2)
{
  v132 = a2;
  v3 = sub_BD88(&unk_93F5A0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v101[-v5];
  v7 = sub_760840();
  v130 = *(v7 - 8);
  __chkstk_darwin(v7);
  v129 = &v101[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v135 = sub_760D90();
  *&v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v124 = &v101[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_762D10();
  v126 = *(v10 - 8);
  v127 = v10;
  __chkstk_darwin(v10);
  v125 = &v101[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_75D850();
  v139 = *(v12 - 8);
  v140 = v12;
  __chkstk_darwin(v12);
  v14 = &v101[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v138 = &v101[-v16];
  v146 = sub_760820();
  v137 = *(v146 - 8);
  __chkstk_darwin(v146);
  v128 = &v101[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v147 = &v101[-v19];
  v20 = sub_BD88(&unk_94AE30);
  __chkstk_darwin(v20 - 8);
  v123 = &v101[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v145 = &v101[-v23];
  v24 = sub_75DAB0();
  __chkstk_darwin(v24 - 8);
  v25 = sub_7656C0();
  v131 = *(v25 - 8);
  __chkstk_darwin(v25);
  v142 = &v101[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_7583C0();
  sub_241D0(&qword_93F5B0, 255, &type metadata accessor for AppEventSearchResult);
  result = sub_75C750();
  v141 = v184[0];
  if (v184[0])
  {
    v120 = v7;
    sub_75C720();
    if (qword_93D050 != -1)
    {
      swift_once();
    }

    sub_765660();
    sub_765630();
    v29 = v28;
    v30 = sub_7583B0();

    v31 = sub_764EF0();
    v111 = v32;
    v112 = v31;
    v33 = sub_764F70();
    v113 = v34;
    v114 = v33;
    v35 = sub_764E90();
    v144 = v30;

    if (v35 && (v36 = sub_75E5C0(), , v36))
    {
      v37 = sub_765720();
      v115 = v38;
      v116 = v37;
    }

    else
    {
      v115 = 0;
      v116 = 0;
    }

    v136 = sub_75BC90();
    (*(v134 + 56))(v145, 1, 1, v135);
    v133 = sub_75BCB0();
    v102 = sub_75BCD0();
    swift_getKeyPath();
    sub_75C7B0();

    v39 = v184[5];
    if (qword_93C3F8 != -1)
    {
      swift_once();
    }

    v40 = v146;
    v41 = sub_BE38(v146, qword_99B150);
    v117 = *(v137 + 16);
    v118 = v137 + 16;
    v117(v147, v41, v40);
    v42 = sub_769A00();
    v143 = v39;
    v121 = v25;
    v122 = a1;
    v104 = v4;
    v105 = v3;
    v103 = v6;
    if (v42)
    {
      if (qword_93C440 != -1)
      {
        swift_once();
      }

      v43 = qword_946920;
    }

    else
    {
      if (qword_93C448 != -1)
      {
        swift_once();
      }

      v43 = qword_946938;
    }

    v44 = v140;
    v45 = sub_BE38(v140, v43);
    v46 = v139;
    (*(v139 + 16))(v14, v45, v44);
    (*(v46 + 32))(v138, v14, v44);
    v47 = [v143 preferredContentSizeCategory];
    sub_769B20();

    sub_75D800();
    sub_75D830();
    sub_760810();
    sub_760800();
    v110 = sub_7670D0();
    swift_allocObject();
    v119 = sub_7670B0();
    v48 = objc_opt_self();
    v108 = v48;
    v49 = [v48 preferredFontForTextStyle:UIFontTextStyleBody];
    v50 = sub_7653B0();
    v184[3] = v50;
    v51 = sub_241D0(&qword_93F9B0, 255, &type metadata accessor for Feature);
    v184[4] = v51;
    v107 = v51;
    v52 = sub_B1B4(v184);
    v53 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v54 = *(v50 - 8);
    v55 = *(v54 + 104);
    v109 = v54 + 104;
    v106 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v55(v52, enum case for Feature.measurement_with_labelplaceholder(_:), v50);
    sub_765C30();
    sub_BEB8(v184);
    v56 = v125;
    sub_762D00();
    sub_762CE0();
    v57 = v127;
    v126 = *(v126 + 8);
    (v126)(v56, v127);
    v58 = [v48 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v183[3] = v50;
    v183[4] = v51;
    v59 = sub_B1B4(v183);
    v55(v59, v53, v50);
    sub_765C30();
    sub_BEB8(v183);
    sub_762D00();
    sub_762CE0();
    v60 = v126;
    (v126)(v56, v57);
    v61 = [v108 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v182[3] = v50;
    v182[4] = v107;
    v62 = sub_B1B4(v182);
    v55(v62, v106, v50);
    sub_765C30();
    sub_BEB8(v182);
    sub_762D00();
    sub_762CE0();
    v60(v56, v57);
    v63 = v136;
    LODWORD(v127) = sub_1F830(0, v136) & (v63 != 0);
    if (v127 == 1)
    {
      v64 = v110;
      v65 = objc_allocWithZone(sub_7671D0());
      v66 = v143;
      v67 = sub_7671C0();
      v68 = v123;
      sub_1ED18(v145, v123, &unk_94AE30);
      v69 = v134;
      v70 = *(v134 + 48);
      v71 = v135;
      if (v70(v68, 1, v135) == 1)
      {
        v72 = v124;
        _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
        if (v70(v68, 1, v71) != 1)
        {
          sub_10A2C(v68, &unk_94AE30);
        }
      }

      else
      {
        v72 = v124;
        (*(v69 + 32))(v124, v68, v71);
      }

      v74 = v67;
      sub_2185C(v136, v72, v74);

      (*(v69 + 8))(v72, v71);
      swift_allocObject();
      v73 = sub_7670A0();
    }

    else
    {
      v64 = v110;
      swift_allocObject();
      v73 = sub_7670B0();
    }

    v75 = v73;

    v76 = v133;
    if ((sub_1F830(v133, 0) & (v76 != 0)) == 1)
    {
      sub_F7FC(v76, v102 & 1);
      swift_allocObject();
      v77 = sub_7670A0();
    }

    else
    {
      swift_allocObject();
      v77 = sub_7670B0();
    }

    v78 = v77;
    v117(v128, v147, v146);
    v181 = &protocol witness table for LayoutViewPlaceholder;
    v180 = v64;
    v179 = v119;
    v178 = 0;
    *&v176[40] = 0u;
    v177 = 0u;
    sub_134D8(v184, v176);
    sub_134D8(v183, &v175);
    v174 = 0;
    v172 = 0u;
    v173 = 0u;
    v171 = 0;
    v169 = 0u;
    v170 = 0u;

    v135 = v78;
    v79 = sub_7670C0();
    v168 = &protocol witness table for LayoutViewPlaceholder;
    v167 = v64;
    v166 = v79;
    v165 = 0;
    v163 = 0u;
    v164 = 0u;
    v162 = 0;
    v160 = 0u;
    v161 = 0u;
    v159 = 0;
    v157 = 0u;
    v158 = 0u;
    v156 = 0;
    v155 = 0u;
    *&v154[40] = 0u;
    sub_134D8(v182, v154);
    v152 = v64;
    v153 = &protocol witness table for LayoutViewPlaceholder;
    v150 = &protocol witness table for LayoutViewPlaceholder;
    v151 = v75;
    v149 = v64;
    v148 = v78;
    v80 = v129;
    sub_760830();
    sub_7671D0();
    sub_BD88(&unk_93F5C0);
    v81 = swift_allocObject();
    v134 = xmmword_77D9F0;
    *(v81 + 16) = xmmword_77D9F0;
    v82 = v143;
    *(v81 + 32) = v143;
    v83 = v82;
    v84 = sub_7671E0();
    sub_241D0(&qword_945FA0, 255, &type metadata accessor for SmallSearchLockupLayout);
    v85 = v120;
    sub_7665A0();

    (*(v130 + 8))(v80, v85);
    sub_BEB8(v182);
    sub_BEB8(v183);
    sub_BEB8(v184);
    (*(v139 + 8))(v138, v140);
    (*(v137 + 8))(v147, v146);
    sub_10A2C(v145, &unk_94AE30);

    v86 = sub_75BCB0();
    v87 = sub_75BC90();
    v88 = sub_1F830(v86, v87);

    if (v88)
    {
      v89 = v103;
      sub_763F60();
      swift_getKeyPath();
      sub_75C7B0();

      v90 = v184[0];
      v91 = swift_allocObject();
      *(v91 + 16) = v134;
      *(v91 + 32) = v90;
      v92 = v90;
      v93 = sub_7671E0();
      sub_24128();
      v94 = v105;
      sub_7666E0();

      (*(v104 + 8))(v89, v94);
    }

    else
    {
      if (qword_93C188 != -1)
      {
        swift_once();
      }

      sub_B170(qword_999F18, qword_999F30);
      swift_getKeyPath();
      sub_75C7B0();

      v95 = v184[0];
      sub_766710();
    }

    v96 = v121;
    v97 = type metadata accessor for AppEventView();
    v98 = sub_7583A0();
    v99 = sub_527DE4();
    ObjectType = swift_getObjectType();
    sub_650A20(v29, v98, v99, v132, v97, ObjectType);

    swift_unknownObjectRelease();

    return (*(v131 + 8))(v142, v96);
  }

  return result;
}

void sub_2350C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_lockupView);
  v4 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
  v5 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  v18.value.super.isa = 0;
  v18.is_nil = 0;
  sub_7591D0(v18, v6);

  v7 = *(v3 + v4);
  sub_759210();
  sub_241D0(&qword_945810, 255, &type metadata accessor for ArtworkView);
  v8 = v7;
  sub_75A0C0();

  v10 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_metadataRibbonView);
  v11 = *&v10[OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metadataRibbonItemViews];
  v12 = *(v11 + 16);
  if (v12)
  {
    type metadata accessor for MetadataRibbonIconWithLabelView(0);
    v17 = v10;

    v13 = 32;
    do
    {
      v14 = *(v11 + v13);
      if (swift_dynamicCastClass())
      {
        v15 = v14;
        v19.value.super.isa = 0;
        v19.is_nil = 0;
        sub_7591D0(v19, v16);
        sub_75A0C0();
      }

      v13 += 16;
      --v12;
    }

    while (v12);
  }

  sub_524C60(a1, 1, v9);
}

uint64_t sub_236EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_75CF00();
  v37 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7652D0();
  __chkstk_darwin(v9 - 8);
  v10 = sub_765240();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41[3] = sub_758700();
  v41[4] = &protocol witness table for AppPromotion;
  v41[0] = a1;
  sub_134D8(v41, v40);

  sub_BD88(&unk_93F520);
  if (!swift_dynamicCast())
  {
    return sub_BEB8(v41);
  }

  v38 = v10;
  v14 = v39;
  if (qword_93C4F0 != -1)
  {
    swift_once();
  }

  v34 = v11;
  v15 = type metadata accessor for AppEventCardLayout.Metrics(0);
  sub_BE38(v15, qword_99B3E8);
  sub_766660();
  v16 = sub_758630();
  v35 = v14;
  v36 = a2;
  if (v16)
  {
    sub_764BC0();

LABEL_7:

    sub_765250();
    sub_765210();
    (*(v34 + 1))(v13, v38);
    sub_765330();
    v17 = *(a3 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_artworkView);
    sub_7652E0();
    sub_7591B0();
    [v17 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540);
      sub_76A030();
    }

    sub_759070();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = Strong;
      type metadata accessor for VideoView();
      sub_241D0(&unk_93F530, 255, type metadata accessor for VideoView);
      sub_75A050();
    }

    else
    {
      sub_759210();
      sub_241D0(&qword_945810, 255, &type metadata accessor for ArtworkView);
      sub_75A050();
    }

    goto LABEL_13;
  }

  if (sub_758650())
  {
    goto LABEL_7;
  }

LABEL_13:
  v20 = *(a3 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupView);
  if (v20)
  {
    v21 = v20;
    sub_7586E0();
    v22 = sub_764F20();

    if (v22)
    {
      v23 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
      swift_beginAccess();
      v24 = v37;
      (*(v37 + 16))(v8, &v21[v23], v6);
      sub_75CDD0();
      (*(v24 + 8))(v8, v6);
      sub_765250();
      sub_765210();
      v33 = *(v34 + 1);
      v33(v13, v38);
      v25 = sub_765330();
      v26 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
      v27 = *&v21[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView];
      v34 = v21;
      v28 = v27;
      sub_7652E0();
      sub_7591B0();
      [v28 setContentMode:sub_765140()];
      v37 = v25;
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_BE70(0, &qword_93E540);
        sub_76A030();
      }

      sub_759070();

      v29 = *&v21[v26];
      sub_765250();
      v30 = sub_765210();
      v33(v13, v38);
      [v29 setContentMode:v30];

      v21 = *&v21[v26];
      v31 = v34;

      sub_759210();
      sub_241D0(&qword_945810, 255, &type metadata accessor for ArtworkView);
      sub_75A050();
    }
  }

  else
  {
  }

  return sub_BEB8(v41);
}

uint64_t sub_23DEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_7652D0();
  __chkstk_darwin(v6 - 8);
  sub_134D8(a1, v19);
  sub_BD88(&unk_93F520);
  sub_7583C0();
  result = swift_dynamicCast();
  if (result)
  {
    sub_2350C(a2);
    sub_7583B0();
    v8 = sub_764EE0();

    if (v8)
    {
      v9 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
      v18 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_lockupView);
      v10 = qword_93C668;
      v11 = *(v18 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
      if (v10 != -1)
      {
        swift_once();
      }

      v12 = sub_75CF00();
      sub_BE38(v12, qword_99B898);
      sub_75CDD0();
      [v11 contentMode];
      sub_765330();
      sub_7652E0();
      sub_7591B0();
      [v11 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_BE70(0, &qword_93E540);
        sub_76A030();
      }

      sub_759070();
      v13 = *(v18 + v9);
      sub_759210();
      sub_241D0(&qword_945810, 255, &type metadata accessor for ArtworkView);
      v14 = v13;
      sub_75A050();
    }

    v15 = *(*(v3 + OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_metadataRibbonView);
    sub_1BA288(a1, a2);

    v16 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventView);
    v17 = sub_7583A0();
    sub_236EC(v17, a2, *(v16 + OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView));
  }

  return result;
}

unint64_t sub_24128()
{
  result = qword_93F5D0;
  if (!qword_93F5D0)
  {
    sub_133D8(&unk_93F5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93F5D0);
  }

  return result;
}

uint64_t sub_2418C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_241D0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_24218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_75DAB0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_7656C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7583C0();
  sub_241D0(&qword_93F5B0, 255, &type metadata accessor for AppEventSearchResult);
  result = sub_75C750();
  if (v23)
  {
    v20 = a3;
    v21 = v6;
    v23 = _swiftEmptyArrayStorage;
    sub_7583B0();
    v11 = sub_764EE0();

    if (v11)
    {
      if (qword_93C668 != -1)
      {
        swift_once();
      }

      v12 = sub_75CF00();
      sub_BE38(v12, qword_99B898);
      sub_75CDD0();
      sub_765330();
      sub_769440();
      if (*(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v23 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      sub_769500();
    }

    sub_7583B0();
    v13 = sub_75BC90();

    swift_getKeyPath();
    sub_75C7B0();

    v14 = v22;
    v15 = sub_1BA624(v13, v22);

    sub_10A0E4(v15);
    sub_75C720();
    if (qword_93D050 != -1)
    {
      swift_once();
    }

    sub_765660();
    sub_765560();
    sub_222E4(a1, v20);
    type metadata accessor for AppEventView();
    v16 = sub_7583A0();
    v17 = sub_527DE4();
    swift_getObjectType();
    v18 = sub_650B68(v16, v17);

    swift_unknownObjectRelease();
    sub_10A0E4(v18);
    v19._rawValue = v23;
    sub_75A070(v19);

    return (*(v7 + 8))(v9, v21);
  }

  return result;
}

uint64_t sub_245F0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_24628()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_2467C(uint64_t a1)
{
  v2 = type metadata accessor for AppEventCardLayout(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2470C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_766690();
  sub_161DC(v3, a2);
  sub_BE38(v3, a2);
  return sub_7666A0();
}

id sub_2476C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v84 = a3;
  v10 = sub_BD88(&unk_948710);
  __chkstk_darwin(v10 - 8);
  v83 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v82 = &v73 - v13;
  v14 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v14 - 8);
  v81 = &v73 - v15;
  v16 = sub_75A6B0();
  __chkstk_darwin(v16 - 8);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v73 - v20;
  v22 = sub_BD88(&unk_948720);
  __chkstk_darwin(v22 - 8);
  v24 = &v73 - v23;
  v25 = sub_75A6E0();
  v80 = *(v25 - 8);
  __chkstk_darwin(v25);
  v90 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_75DC30();
  v85 = *(v27 - 8);
  v86 = v27;
  __chkstk_darwin(v27);
  v91 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_766690();
  v30 = *(v29 - 8);
  v88 = v29;
  v89 = v30;
  __chkstk_darwin(v29);
  v79 = &v73 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_759450();
  v33 = [v32 length];

  v87 = a6;
  if (v33 < 1)
  {
    [*&v7[qword_964310] setText:0];
    v7[qword_9A0A18] = 0;
    [*&v7[qword_964300] setHidden:1];
  }

  else
  {
    v74 = v25;
    v75 = v24;
    v76 = v21;
    v77 = v18;
    v78 = a1;
    v34 = sub_759450();
    v35 = [a6 traitCollection];
    v36 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v34];
    v37 = [v34 length];
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    *(v38 + 24) = v35;
    *(v38 + 32) = v36;
    *(v38 + 40) = 1;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_119AC;
    *(v39 + 24) = v38;
    aBlock[4] = sub_2636C;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10C1C;
    aBlock[3] = &unk_880470;
    v40 = _Block_copy(aBlock);
    v41 = v35;
    v42 = v36;

    [v34 enumerateAttributesInRange:0 options:v37 usingBlock:{0x100000, v40}];

    _Block_release(v40);
    LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

    if (v34)
    {
      __break(1u);
      return result;
    }

    [*&v7[qword_964310] setAttributedText:v42];
    v7[qword_9A0A18] = 1;
    [*&v7[qword_964300] setHidden:0];

    v24 = v75;
    v25 = v74;
  }

  v44 = *&v7[qword_964308];
  sub_759460();
  if (v45)
  {
    v46 = sub_769210();
  }

  else
  {
    v46 = 0;
  }

  v47 = v87;
  [v44 setText:v46];

  bottom = UIEdgeInsetsZero.bottom;
  if (sub_759430())
  {
    left = UIEdgeInsetsZero.left;
    right = UIEdgeInsetsZero.right;
  }

  else
  {
    [v47 pageMarginInsets];
    left = v51;
    right = v52;
  }

  v53 = v88;
  v54 = [v7 contentView];
  [v54 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  if (sub_759480())
  {
    v55 = [v7 contentView];
    sub_2630C();
    sub_75D650();

    sub_765260();
    v56 = v79;
    sub_7666A0();
    sub_766600();
    v58 = v57;
    v60 = v59;

    (*(v89 + 8))(v56, v53);
    v61 = &v7[qword_99C4E0];
    *v61 = v58;
    v61[1] = v60;
  }

  if (sub_759470())
  {
    (*(v80 + 104))(v90, enum case for VideoFillMode.scaleAspectFill(_:), v25);
    if (sub_759480())
    {
      sub_765260();
      sub_7666A0();

      v62 = 0;
    }

    else
    {
      v62 = 1;
    }

    (*(v89 + 56))(v24, v62, 1, v53);
    sub_764B60();
    sub_764BA0();
    sub_764B70();
    sub_764B50();
    sub_764BB0();
    sub_75DC10();
    sub_75C360();
    sub_768880();
    sub_764B40();
    v63 = v81;
    sub_764BD0();
    v64 = sub_7570A0();
    (*(*(v64 - 8) + 56))(v63, 0, 1, v64);
    v65 = v82;
    sub_764B90();
    v66 = v83;
    sub_764B80();
    type metadata accessor for VideoView();
    sub_263D4(&qword_93F500, type metadata accessor for VideoView);
    v67 = sub_75C340();
    sub_10A2C(v66, &unk_948710);
    sub_10A2C(v65, &unk_948710);
    sub_10A2C(v63, &unk_93FD30);
    sub_10A2C(aBlock, &unk_9443A0);
    sub_287808();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v69 = Strong;
      v70 = *&v7[qword_94C798];
      if (v70)
      {
        v71 = *&v7[qword_94C798];
      }

      else
      {
        v71 = [v7 contentView];
        v70 = 0;
      }

      v72 = v70;
      [v71 addSubview:v69];
      [v7 setNeedsLayout];
    }

    else
    {
    }

    (*(v85 + 8))(v91, v86);
  }

  v7[qword_9A0A10] = sub_759440() & 1;
  return sub_253F8();
}

double sub_2526C(char a1)
{
  if ((a1 & 1) == 0)
  {
    return 0.0;
  }

  return result;
}

void sub_25294()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    type metadata accessor for VideoView();
    sub_263D4(&unk_93F530, type metadata accessor for VideoView);
    sub_75A0C0();
  }
}

id sub_253F8()
{
  v1 = sub_7593D0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[qword_9A0A10] == 1)
  {
    sub_759210();
    sub_759090();
    sub_75CD10();
    sub_759080();
    sub_75CD00();
  }

  (*(v2 + 104))(v4, enum case for CornerStyle.continuous(_:), v1);
  sub_75CCD0();
  (*(v2 + 8))(v4, v1);
  return [v0 setNeedsLayout];
}

uint64_t sub_25570()
{
  v0 = sub_766690();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = ASKDeviceTypeGetCurrent();
  v5 = sub_769240();
  v7 = v6;
  if (v5 == sub_769240() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_76A950();

    if ((v10 & 1) == 0)
    {
      if (qword_93C190 != -1)
      {
        swift_once();
      }

      v11 = qword_999F40;
      goto LABEL_13;
    }
  }

  if (qword_93C198 != -1)
  {
    swift_once();
  }

  v11 = qword_999F58;
LABEL_13:
  v12 = sub_BE38(v0, v11);
  (*(v1 + 16))(v3, v12, v0);
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v14 = v13;
  sub_766660();
  v15 = [objc_opt_self() absoluteDimension:v14];
  v16 = sub_75F970();

  (*(v1 + 8))(v3, v0);
  return v16;
}

uint64_t sub_257D4(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = a3;
  v16 = a2;
  v18 = sub_766690();
  v3 = *(v18 - 8);
  __chkstk_darwin(v18);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_764AD0();
  v7 = *(v6 + 16);
  v20 = v6 + 32;
  v17 = (v3 + 8);
  v21 = v6;

  v9 = 0;
  v10 = &unk_944DA0;
  v11 = v18;
  while (1)
  {
    if (v9 == v7)
    {
      v29 = 0;
      v9 = v7;
      v27 = 0u;
      v28 = 0u;
      goto LABEL_8;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *(v21 + 16))
    {
      goto LABEL_18;
    }

    sub_134D8(v20 + 40 * v9++, &v27);
LABEL_8:
    v25[0] = v27;
    v25[1] = v28;
    v26 = v29;
    if (!*(&v28 + 1))
    {
      return swift_bridgeObjectRelease_n();
    }

    sub_10914(v25, v24);
    sub_134D8(v24, v22);
    sub_BD88(v10);
    sub_759490();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v23 = 0;
    }

    result = sub_BEB8(v24);
    if (v23)
    {
      if (sub_759470())
      {
        v13 = v10;
        sub_764BC0();

        v14 = sub_759430();

        if ((v14 & 1) == 0)
        {
          [v16 pageMarginInsets];
        }

        sub_765260();
        sub_7666A0();
        sub_766610();
        v12 = *v17;
        (*v17)(v5, v11);
        sub_765260();
        sub_7666A0();
        sub_766600();
        v12(v5, v11);
        sub_765330();
        sub_75A060();

        v10 = v13;
      }

      else
      {
      }
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25B4C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v5 - 8);
  v7 = v35 - v6;
  v8 = sub_766690();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_759430() & 1) == 0)
  {
    [a4 pageMarginInsets];
  }

  if (sub_759480())
  {
    sub_765260();
    sub_7666A0();
    sub_766660();
    (*(v9 + 8))(v11, v8);
    sub_759430();
  }

  v12 = sub_759450();
  v13 = [v12 length];

  if (v13 >= 1)
  {
    sub_759460();
    if (v14)
    {
      if (qword_93DA18 != -1)
      {
        swift_once();
      }

      v15 = sub_7666D0();
      sub_BE38(v15, qword_99F640);
      v16 = sub_7653B0();
      v37 = v16;
      v38 = sub_263D4(&qword_93F9B0, &type metadata accessor for Feature);
      v17 = sub_B1B4(aBlock);
      (*(*(v16 - 8) + 104))(v17, enum case for Feature.measurement_with_labelplaceholder(_:), v16);
      sub_765C30();
      sub_BEB8(aBlock);
      sub_762CB0();
    }

    v18 = sub_759450();
    v35[1] = a4;
    v19 = [a4 traitCollection];
    v20 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v18];
    v21 = [v18 length];
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = v19;
    *(v22 + 32) = v20;
    *(v22 + 40) = 1;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_266A8;
    *(v23 + 24) = v22;
    v38 = sub_26694;
    v39 = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10C1C;
    v37 = &unk_8804E8;
    v24 = _Block_copy(aBlock);
    v25 = v19;
    v26 = v20;

    [v18 enumerateAttributesInRange:0 options:v21 usingBlock:{0x100000, v24}];

    _Block_release(v24);
    LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

    if (v25)
    {
      __break(1u);
    }

    else
    {
      v27 = qword_93DA10;
      v18 = v26;
      if (v27 == -1)
      {
LABEL_12:
        v28 = sub_7666D0();
        v29 = sub_BE38(v28, qword_99F628);
        v30 = *(v28 - 8);
        (*(v30 + 16))(v7, v29, v28);
        (*(v30 + 56))(v7, 0, 1, v28);
        v31 = sub_7653B0();
        v37 = v31;
        v38 = sub_263D4(&qword_93F9B0, &type metadata accessor for Feature);
        v32 = sub_B1B4(aBlock);
        (*(*(v31 - 8) + 104))(v32, enum case for Feature.measurement_with_labelplaceholder(_:), v31);
        sub_765C30();
        sub_BEB8(aBlock);
        sub_762CA0();

        sub_10A2C(v7, &unk_93E530);
        if (qword_93E250 != -1)
        {
          swift_once();
        }

        v33 = sub_766CA0();
        sub_BE38(v33, qword_9A09B8);
        sub_766720();
        if (qword_93E258 != -1)
        {
          swift_once();
        }

        sub_BE38(v33, qword_9A09D0);
        sub_7666F0();

        return sub_769D90();
      }
    }

    swift_once();
    goto LABEL_12;
  }

  return sub_769D90();
}

unint64_t sub_2630C()
{
  result = qword_93E550;
  if (!qword_93E550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_93E550);
  }

  return result;
}

uint64_t sub_26374(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2638C()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_263D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2641C(uint64_t a1)
{
  v2 = sub_766690();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_134D8(a1, v11);
  sub_BD88(&unk_93F520);
  sub_759490();
  result = swift_dynamicCast();
  if (result)
  {
    if (sub_759470())
    {
      sub_764BC0();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v8 = Strong;
        sub_765260();
        sub_7666A0();
        sub_766610();
        v9 = *(v3 + 8);
        v9(v5, v2);
        sub_765260();
        sub_7666A0();
        sub_766600();
        v9(v5, v2);
        sub_765330();
        type metadata accessor for VideoView();
        sub_263D4(&unk_93F530, type metadata accessor for VideoView);
        sub_75A050();
      }
    }
  }

  return result;
}

uint64_t sub_266D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_75BB70();
  if (v7)
  {
    v8 = v7;
    v9 = sub_BD88(&unk_93F630);
    sub_768860();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v6, 1, v9) == 1)
    {

      sub_268C8(v6);
    }

    else
    {
      sub_32A6C0(v8, 1, a3, v6);

      (*(v10 + 8))(v6, v9);
    }
  }

  return 3;
}

uint64_t sub_268C8(uint64_t a1)
{
  v2 = sub_BD88(&unk_93F980);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_26930(uint64_t a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_762D10();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93D158 != -1)
  {
    v29 = v10;
    swift_once();
    v10 = v29;
  }

  v39 = v10;
  v38 = sub_7670D0();
  swift_allocObject();
  v37 = sub_7670B0();
  sub_75BB60();
  v13 = sub_26F08();
  v34 = a1;
  v14 = v13;
  if (qword_93D850 != -1)
  {
    swift_once();
  }

  v15 = sub_7666D0();
  sub_BE38(v15, qword_99F0E8);
  ObjectType = swift_getObjectType();
  v16 = [a5 traitCollection];
  v35 = a5;
  v17 = v16;
  sub_769E10();

  v18 = sub_7653B0();
  v41 = v18;
  v33 = sub_26F54(&qword_93F9B0, &type metadata accessor for Feature);
  v42 = v33;
  v19 = sub_B1B4(v40);
  v20 = *(*(v18 - 8) + 104);
  v30[1] = v14;
  v31 = v20;
  v32 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v20(v19);
  sub_765C30();
  sub_BEB8(v40);
  sub_762D00();
  sub_762CE0();
  v21 = *(v9 + 8);
  v22 = v39;
  v21(v12, v39);
  v34 = sub_75BB50();
  v30[0] = v23;
  if (qword_93D858 != -1)
  {
    swift_once();
  }

  sub_BE38(v15, qword_99F100);
  v24 = v35;
  v25 = [v35 traitCollection];
  sub_769E10();

  v41 = v18;
  v42 = v33;
  v26 = sub_B1B4(v40);
  v31(v26, v32, v18);
  sub_765C30();
  sub_BEB8(v40);
  sub_762D00();
  sub_762CE0();
  v21(v12, v22);
  sub_26F9C(&xmmword_99DBA0, v40);
  v44 = v38;
  v45 = &protocol witness table for LayoutViewPlaceholder;
  v43 = v37;
  sub_134D8(v49, &v47);
  sub_134D8(v48, &v46);
  v27 = sub_646C6C(v24, v40, a2);
  sub_26FF8(v40);
  sub_BEB8(v48);
  sub_BEB8(v49);
  return v27;
}

void sub_26DD0(int a1, int a2, int a3, int a4, id a5)
{
  v6 = v5;
  [a5 pageMarginInsets];
  v7 = (v5 + OBJC_IVAR____TtC18ASMessagesProvider39SmallGameCenterPlayerCollectionViewCell_insets);
  *v7 = v8;
  v7[1] = v9;
  v7[2] = v10;
  v7[3] = v11;
  v12 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider39SmallGameCenterPlayerCollectionViewCell_artworkView);
  v21.value.super.isa = 0;
  v21.is_nil = 0;
  sub_7591D0(v21, v13);

  v14 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider39SmallGameCenterPlayerCollectionViewCell_displayName);
  sub_75BB50();
  if (v15)
  {
    v16 = sub_769210();
  }

  else
  {
    v16 = 0;
  }

  [v14 setText:v16];

  v17 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider39SmallGameCenterPlayerCollectionViewCell_alias);
  sub_75BB60();
  if (v18)
  {
    v19 = sub_769210();
  }

  else
  {
    v19 = 0;
  }

  [v17 setText:v19];
}

unint64_t sub_26F08()
{
  result = qword_93F900;
  if (!qword_93F900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_93F900);
  }

  return result;
}

uint64_t sub_26F54(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_2704C(uint64_t *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = *a1;
  ObjectType = swift_getObjectType();

  return sub_271EC(a2, v9, a7, ObjectType);
}

uint64_t sub_270AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_75B370();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;

    sub_27484(v5, a3);
  }

  else
  {
    sub_765860();
    result = swift_dynamicCastClass();
    if (!result)
    {
      return result;
    }

    v7 = result;

    sub_27698(v7, a3);
  }
}