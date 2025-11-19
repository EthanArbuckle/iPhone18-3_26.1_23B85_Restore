void sub_100004708(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100004728(uint64_t a1, void *a2, void *a3)
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

void sub_1000048E4(uint64_t a1)
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

uint64_t sub_100004B44(uint64_t a1)
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

uint64_t sub_100005370(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void sub_100005C78(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 1.0, 1.0);
  v2 = [*(a1 + 32) toastView];
  v4 = v5;
  [v2 setTransform:&v4];

  v3 = [*(a1 + 32) toastView];
  [v3 setAlpha:1.0];
}

id sub_100005CF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 duration];

  return [v1 _dismissAfterDelay:?];
}

void sub_1000061B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_1000061FC(void *a1, void *a2, double a3)
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

id sub_1000064D0(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000065A0;
  v3[3] = &unk_1008611A0;
  v4 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100006680;
  v2[3] = &unk_1008611C8;
  v2[4] = v4;
  return [UIView animateWithDuration:2 delay:v3 options:v2 animations:0.2 completion:0.0];
}

void sub_1000065A0(uint64_t a1)
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

id sub_100006680(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 1.0, 1.0);
  v2 = [*(a1 + 32) view];
  v4 = v5;
  [v2 setTransform:&v4];

  return [*(a1 + 32) dismissViewControllerAnimated:0 completion:0];
}

void sub_100007354(uint64_t a1)
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

void sub_100007640(uint64_t a1)
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

char *sub_10000811C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension32LinkableHeaderCollectionViewCell_headerView] = [objc_allocWithZone(type metadata accessor for LinkableHeaderView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for LinkableHeaderCollectionViewCell();
  v9 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v10 = [v9 contentView];
  [v10 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v11 = [v9 contentView];
  v12 = [objc_opt_self() systemBackgroundColor];
  [v11 setBackgroundColor:v12];

  v13 = [v9 contentView];
  [v13 addSubview:*&v9[OBJC_IVAR____TtC22SubscribePageExtension32LinkableHeaderCollectionViewCell_headerView]];

  return v9;
}

id sub_1000083EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkableHeaderCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id variable initialization expression of CondensedEditorialSearchResultContentView.viewButton()
{
  v0 = [objc_opt_self() buttonWithType:0];

  return v0;
}

uint64_t variable initialization expression of CondensedEditorialSearchResultContentView.configuration@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for CondensedSearchResultCardLayout.Configuration.standard(_:);
  v3 = sub_10074D1D4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

double variable initialization expression of CondensedEditorialSearchResultContentView.artworkSize()
{
  v0 = sub_10074D294();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074D1D4();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, enum case for CondensedSearchResultCardLayout.Configuration.standard(_:), v4);
  sub_10074D1B4();
  (*(v5 + 8))(v7, v4);
  sub_10074D1F4();
  v9 = v8;
  (*(v1 + 8))(v3, v0);
  return v9;
}

char *variable initialization expression of CondensedInAppPurchaseContentView.inAppPurchaseView()
{
  v0 = sub_100741E54();
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741DD4();
  v3 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  return sub_10027562C(v2, 1);
}

uint64_t sub_100008830@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

double variable initialization expression of AppPromotionDetailPageContentLayout.learnMoreButton@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

__n128 sub_100008990(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000899C(uint64_t a1, int a2)
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

uint64_t sub_1000089BC(uint64_t result, int a2, int a3)
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

__n128 initializeBufferWithCopyOfBuffer for FixedSizedPlaceholder(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
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

void *sub_100008B9C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_100008BE8(void *a1, uint64_t *a2)
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

BOOL sub_100008C5C(_DWORD *a1, int *a2)
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

void *sub_100008D44@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_100008D70@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_100008E34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100753094();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100008E60(uint64_t a1, id *a2)
{
  result = sub_100753074();
  *a2 = 0;
  return result;
}

uint64_t sub_100008ED8(uint64_t a1, id *a2)
{
  v3 = sub_100753084();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100008F58@<X0>(void *a1@<X8>)
{
  sub_100753094();
  v2 = sub_100753064();

  *a1 = v2;
  return result;
}

_DWORD *sub_100008F9C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

Swift::Int sub_100008FB8()
{
  v1 = *v0;
  sub_100754834();
  sub_100754844(v1);
  return sub_100754884();
}

Swift::Int sub_100009000()
{
  v1 = *v0;
  sub_100754834();
  sub_100754844(v1);
  return sub_100754884();
}

uint64_t sub_100009050@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10000AB28(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100009090(uint64_t a1)
{
  v2 = sub_1000093C8(&qword_1009224F8, type metadata accessor for DeviceType);
  v3 = sub_1000093C8(&qword_100922500, type metadata accessor for DeviceType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000914C(uint64_t a1)
{
  v2 = sub_1000093C8(&qword_100922150, type metadata accessor for UIContentSizeCategory);
  v3 = sub_1000093C8(&qword_100922158, type metadata accessor for UIContentSizeCategory);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100009208(uint64_t a1)
{
  v2 = sub_1000093C8(&qword_1009276F0, type metadata accessor for Key);
  v3 = sub_1000093C8(&qword_100922550, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000092C4(uint64_t a1)
{
  v2 = sub_1000093C8(&qword_100922170, type metadata accessor for CAGradientLayerType);
  v3 = sub_1000093C8(&qword_100922178, type metadata accessor for CAGradientLayerType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000093C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000094A0(uint64_t a1)
{
  v2 = sub_1000093C8(&qword_100922538, type metadata accessor for TextStyle);
  v3 = sub_1000093C8(&unk_100922540, type metadata accessor for TextStyle);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000955C(uint64_t a1)
{
  v2 = sub_1000093C8(&qword_100922160, type metadata accessor for ActivityType);
  v3 = sub_1000093C8(&qword_100922168, type metadata accessor for ActivityType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100009618(uint64_t a1)
{
  v2 = sub_1000093C8(&qword_1009224D8, type metadata accessor for Category);
  v3 = sub_1000093C8(&qword_1009224E0, type metadata accessor for Category);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000096D4(uint64_t a1)
{
  v2 = sub_1000093C8(&qword_1009224C8, type metadata accessor for Mode);
  v3 = sub_1000093C8(&qword_1009224D0, type metadata accessor for Mode);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100009790(uint64_t a1)
{
  v2 = sub_1000093C8(&qword_1009224E8, type metadata accessor for NSKeyValueChangeKey);
  v3 = sub_1000093C8(&qword_1009224F0, type metadata accessor for NSKeyValueChangeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000984C(uint64_t a1)
{
  v2 = sub_1000093C8(&qword_100922518, type metadata accessor for FeatureKey);
  v3 = sub_1000093C8(&qword_100922520, type metadata accessor for FeatureKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100009908(uint64_t a1)
{
  v2 = sub_1000093C8(&qword_100922508, type metadata accessor for AttributeName);
  v3 = sub_1000093C8(&qword_100922510, type metadata accessor for AttributeName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000099C4@<X0>(void *a1@<X8>)
{
  v2 = sub_100753064();

  *a1 = v2;
  return result;
}

uint64_t sub_100009A0C(uint64_t a1)
{
  v2 = sub_1000093C8(&qword_100922588, type metadata accessor for AIDAServiceType);
  v3 = sub_1000093C8(&unk_100922590, type metadata accessor for AIDAServiceType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100009AC8(uint64_t a1)
{
  v2 = sub_1000093C8(&qword_100922528, type metadata accessor for BuildType);
  v3 = sub_1000093C8(&qword_100922530, type metadata accessor for BuildType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

unint64_t sub_100009D34()
{
  result = qword_100922300;
  if (!qword_100922300)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100922300);
  }

  return result;
}

__n128 sub_100009D80(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100009D94(uint64_t a1, int a2)
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

uint64_t sub_100009DB4(uint64_t result, int a2, int a3)
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

uint64_t sub_10000A09C()
{
  sub_100753094();
  v0 = sub_100753214();

  return v0;
}

uint64_t sub_10000A0D8()
{
  sub_100753094();
  sub_100753174();
}

Swift::Int sub_10000A12C()
{
  sub_100753094();
  sub_100754834();
  sub_100753174();
  v0 = sub_100754884();

  return v0;
}

uint64_t sub_10000AAA0()
{
  v0 = sub_100753094();
  v2 = v1;
  if (v0 == sub_100753094() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_100754754();
  }

  return v5 & 1;
}

uint64_t sub_10000AB28(uint64_t a1)
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

void sub_10000AB9C(uint64_t a1, unint64_t *a2)
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

char *sub_10000AD68(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_10097C8B0 + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_10074D4D4();
  sub_100752764();
  sub_100752D34();
  *(v2 + qword_100922720) = v10;

  v5 = sub_100465F1C(a1, a2);
  v6 = *&v5[qword_10097EE38];
  v7 = v5;
  v8 = v6;

  sub_100749AD4();

  return v7;
}

id sub_10000AE74()
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

id sub_10000AF0C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100752AC4();
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
    sub_100752A84();
    sub_10000C8CC(v14, &unk_100923520);
    sub_100753C74();

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10000B108(void *a1)
{
  v1 = a1;
  sub_10000AF0C();
}

void sub_10000B1B4(void *a1, uint64_t a2, const char **a3, unsigned int *a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_10074D4C4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = a1;
  v14.super_class = ObjectType;
  v12 = *a3;
  v13 = a1;
  objc_msgSendSuper2(&v14, v12);
  (*(v9 + 104))(v11, *a4, v8);
  sub_10074D484();
  (*(v9 + 8))(v11, v8);
}

void sub_10000B2FC(void *a1, uint64_t a2, uint64_t a3, const char **a4, unsigned int *a5)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10074D4C4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = a1;
  v16.super_class = ObjectType;
  v14 = *a4;
  v15 = a1;
  objc_msgSendSuper2(&v16, v14, a3);
  (*(v11 + 104))(v13, *a5, v10);
  sub_10074D484();
  (*(v11 + 8))(v13, v10);
}

void sub_10000B460(void *a1)
{
  v1 = a1;
  sub_10000B438();
}

uint64_t sub_10000B4D0(unsigned int *a1, void (*a2)(void), unsigned int *a3)
{
  v20 = a1;
  v6 = v3;
  v7 = sub_10074D4C4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100742964();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_10000C7B4(v6 + v15, v22);
  if (v23)
  {
    sub_10000C824(v22, v21);
    sub_10000C8CC(v22, &unk_100930240);
    v18 = a2;
    v19 = v7;
    sub_10000C888(v21, v21[3]);
    (*(v12 + 104))(v14, *v20, v11);
    a2 = v18;
    v7 = v19;
    sub_100742974();
    (*(v12 + 8))(v14, v11);
    v16 = sub_10000C620(v21);
  }

  else
  {
    v16 = sub_10000C8CC(v22, &unk_100930240);
  }

  a2(v16);
  (*(v8 + 104))(v10, *a3, v7);
  sub_10074D484();
  return (*(v8 + 8))(v10, v7);
}

void sub_10000B764(void *a1)
{
  v1 = a1;
  sub_10000B4A8();
}

id sub_10000B7AC()
{
  v1 = v0;
  swift_getObjectType();
  sub_10000C518(&qword_100922CE0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007A5620;
  sub_10000C518(&qword_100922CE8);
  swift_allocObject();
  swift_retain_n();

  v3 = sub_10074DB94();
  v4 = sub_10000C6C0();
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  type metadata accessor for BackgroundConfigurationCollectionElementsObserver();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = sub_10000C76C(&qword_100922CF8, type metadata accessor for BackgroundConfigurationCollectionElementsObserver);
  *(v2 + 48) = v5;
  *(v2 + 56) = v6;
  sub_10000C76C(&qword_100922CB8, type metadata accessor for SearchLandingDiffablePageViewController);
  sub_10074DA64();
  sub_10074B884();

  result = [v1 collectionView];
  if (result)
  {
    sub_10074E304();
    swift_allocObject();
    *(v2 + 64) = sub_10074E2F4();
    *(v2 + 72) = &protocol witness table for ImpressionsCollectionElementsObserver;
    sub_10074D7C4();
    swift_allocObject();
    v8 = sub_10074D7B4();
    sub_1006B50FC();
    if (swift_dynamicCastClass())
    {
      sub_10074D794();
      sub_10074D7A4();
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

unint64_t sub_10000BA84@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for SearchLandingPageShelfLayoutSpacingProvider;
  result = sub_10000C66C();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10000BAB8()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph);
  v2 = sub_10000C76C(&qword_100922CC8, &type metadata accessor for SearchLandingDiffablePagePresenter);
  type metadata accessor for SearchLandingPageShelfSupplementaryProvider();
  v3 = swift_allocObject();
  *(v3 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 32) = v2;
  swift_unknownObjectWeakAssign();
  *(v3 + 16) = v1;
  sub_10000C76C(&qword_100922CD0, type metadata accessor for SearchLandingPageShelfSupplementaryProvider);

  return v3;
}

uint64_t sub_10000BBB8@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  sub_10000C76C(&qword_100922CB8, type metadata accessor for SearchLandingDiffablePageViewController);
  v2 = sub_10074DA44();
  v18[3] = swift_getObjectType();
  v18[0] = v2;
  v3 = sub_10074DA34();
  v19[3] = swift_getObjectType();
  v19[0] = v3;
  sub_10000C5B4(v18, v17);
  sub_10000C610(v17, v16);
  sub_10000C518(&qword_100922CC0);
  if (swift_dynamicCast() && *&v15[0])
  {
    v14 = v15[0];
    v4 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100254A80(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      v4 = sub_100254A80((v5 > 1), v6 + 1, 1, v4);
    }

    v4[2] = v6 + 1;
    *&v4[2 * v6 + 4] = v14;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_10000C5B4(v19, v17);
  sub_10000C610(v17, v16);
  sub_10000C518(&qword_100922CC0);
  if (swift_dynamicCast() && *&v15[0])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100254A80(0, v4[2] + 1, 1, v4);
    }

    v8 = v4[2];
    v7 = v4[3];
    v9 = v15[0];
    if (v8 >= v7 >> 1)
    {
      v13 = sub_100254A80((v7 > 1), v8 + 1, 1, v4);
      v9 = v15[0];
      v4 = v13;
    }

    v4[2] = v8 + 1;
    *&v4[2 * v8 + 4] = v9;
  }

  swift_arrayDestroy();
  sub_10074DA64();
  v10 = type metadata accessor for SearchLandingLayoutSectionProvider();
  swift_allocObject();
  sub_10000C824(v17, v16);
  sub_10000C824(v16, v15);

  v11 = sub_10074CB64();
  sub_10000C620(v16);
  result = sub_10000C620(v17);
  a1[3] = v10;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = v11;
  return result;
}

unint64_t sub_10000BECC@<X0>(uint64_t *a1@<X8>)
{
  sub_100744594();
  swift_allocObject();
  v2 = sub_100744584();
  swift_allocObject();
  v3 = sub_100744584();
  a1[3] = &type metadata for SearchLandingPageGridProvider;
  result = sub_10000C560();
  a1[4] = result;
  *a1 = v2;
  a1[1] = v3;
  return result;
}

void sub_10000BF4C(void *a1, uint64_t a2, void *a3)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v9.receiver;
  objc_msgSendSuper2(&v9, "scrollViewWillBeginDragging:", v4);
  v6 = &v5[qword_10097C8B0];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(ObjectType, v7);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10000BFFC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SearchLandingShelfComponentTypeMappingProvider();
  v3 = swift_allocObject();
  type metadata accessor for AppPromotionsShelfComponentTypeMappingProvider();
  *(v3 + 16) = swift_allocObject();
  type metadata accessor for SmallStoryCardShelfComponentTypeMappingProvider();
  *(v3 + 24) = swift_allocObject();
  a1[3] = v2;
  result = sub_10000C76C(&qword_100922CA8, type metadata accessor for SearchLandingShelfComponentTypeMappingProvider);
  a1[4] = result;
  *a1 = v3;
  return result;
}

void sub_10000C0B0(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100922CA0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v6 - v4;
  sub_10041BA44(a1);
  (*(v3 + 16))(v5, a1, v2);
  if ((*(v3 + 88))(v5, v2) == enum case for DiffablePagePresenter.UpdatePhase.initial<A>(_:))
  {
    sub_10074D464();
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }
}

void sub_10000C1E8(uint64_t a1)
{
  v2 = v1;
  v12.receiver = v1;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v4 = sub_100753804() & 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [v1 traitCollection];
  v6 = sub_100753804();

  if (v4 == 2 || ((v6 ^ v4) & 1) != 0 || (!a1 ? (v7 = 2) : (v7 = sub_1007537F4() & 1), (v8 = [v2 traitCollection], v9 = sub_1007537F4(), v8, v7 == 2) || ((v9 ^ v7) & 1) != 0))
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

void sub_10000C31C(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_10000C1E8(a3);
}

uint64_t sub_10000C388()
{

  v1 = v0 + qword_10097C8B0;

  return sub_10000C4F0(v1);
}

id MetadataRibbonView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000C400(uint64_t a1)
{

  v2 = a1 + qword_10097C8B0;

  return sub_10000C4F0(v2);
}

uint64_t type metadata accessor for SearchLandingDiffablePageViewController()
{
  result = qword_100922750;
  if (!qword_100922750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000C518(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000C560()
{
  result = qword_100922CB0;
  if (!qword_100922CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100922CB0);
  }

  return result;
}

uint64_t sub_10000C5B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_10000C610(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000C620(uint64_t a1)
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

unint64_t sub_10000C66C()
{
  result = qword_100922CD8;
  if (!qword_100922CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100922CD8);
  }

  return result;
}

unint64_t sub_10000C6C0()
{
  result = qword_100922CF0;
  if (!qword_100922CF0)
  {
    sub_10000C724(&qword_100922CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100922CF0);
  }

  return result;
}

uint64_t sub_10000C724(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000C76C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000C7B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100930240);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000C824(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_10000C888(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000C8CC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000C518(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000C960(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  v7 = sub_100750304();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921340 != -1)
  {
    swift_once();
  }

  v11 = sub_100750534();
  v12 = sub_10000D0FC(v11, qword_1009816F8);
  (*(*(v11 - 8) + 16))(v10, v12, v11);
  (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v7);
  *a2 = sub_100750B04();
  *a3 = &protocol witness table for StaticDimension;
  sub_10000D134(a4);
  v16[3] = v7;
  v16[4] = &protocol witness table for FontSource;
  v13 = sub_10000D134(v16);
  (*(v8 + 16))(v13, v10, v7);
  sub_100750B14();
  return (*(v8 + 8))(v10, v7);
}

char *sub_10000CB4C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_100750534();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension22SearchTransparencyView_linkedLabel;
  if (qword_100921340 != -1)
  {
    swift_once();
  }

  v15 = sub_10000D0FC(v10, qword_1009816F8);
  (*(v11 + 16))(v13, v15, v10);
  v16 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  *&v5[v14] = sub_10004DA8C(v13, 0, 0);
  v17 = type metadata accessor for SearchTransparencyView();
  v26.receiver = v5;
  v26.super_class = v17;
  v18 = objc_msgSendSuper2(&v26, "initWithFrame:", a1, a2, a3, a4);
  v19 = OBJC_IVAR____TtC22SubscribePageExtension22SearchTransparencyView_linkedLabel;
  v20 = *&v18[OBJC_IVAR____TtC22SubscribePageExtension22SearchTransparencyView_linkedLabel];
  v21 = v18;
  [v21 addSubview:v20];
  [v21 setLayoutMargins:{0.0, 32.0, 0.0, 32.0}];
  sub_10000D198();
  v22 = sub_100753E74();
  [v21 setBackgroundColor:v22];

  [v21 _setCornerRadius:10.0];
  v23 = *&v18[v19];
  v24 = sub_100753DF4();
  [v23 setTextColor:v24];

  [*&v18[v19] setTextAlignment:1];
  return v21;
}

id sub_10000D094()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchTransparencyView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000D0FC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10000D134(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_10000D198()
{
  result = qword_100923500;
  if (!qword_100923500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100923500);
  }

  return result;
}

uint64_t sub_10000D1E4()
{
  sub_10000C620(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_10000D244()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_10000D350()
{
  v24.receiver = v0;
  v24.super_class = type metadata accessor for MetricsViewController();
  objc_msgSendSuper2(&v24, "viewDidLoad");
  v1 = *(v0 + *((swift_isaMask & *v0) + 0x68));
  [v0 addChildViewController:v1];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  result = [v0 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  result = [v1 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  [v4 addSubview:result];

  result = [v1 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = [result superview];
  if (v7)
  {
    v8 = v7;
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = objc_opt_self();
    sub_10000C518(&unk_1009231A0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1007A57A0;
    v11 = [v6 leftAnchor];
    v12 = [v8 leftAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];

    *(v10 + 32) = v13;
    v14 = [v6 rightAnchor];
    v15 = [v8 rightAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];

    *(v10 + 40) = v16;
    v17 = [v6 topAnchor];
    v18 = [v8 topAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];

    *(v10 + 48) = v19;
    v20 = [v6 bottomAnchor];
    v21 = [v8 bottomAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];

    *(v10 + 56) = v22;
    sub_10000D984();
    isa = sub_100753294().super.isa;

    [v9 activateConstraints:isa];
  }

  return [v1 didMoveToParentViewController:v0];
}

void sub_10000D704(void *a1)
{
  v1 = a1;
  sub_10000D350();
}

void sub_10000D74C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_10000D954();
}

id sub_10000D7BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10000D82C(char *a1)
{
  (*(*(*((swift_isaMask & *a1) + 0x50) - 8) + 8))(&a1[*((swift_isaMask & *a1) + 0x60)]);
  v2 = *&a1[*((swift_isaMask & *a1) + 0x68)];
}

unint64_t sub_10000D984()
{
  result = qword_100922E80;
  if (!qword_100922E80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100922E80);
  }

  return result;
}

unint64_t sub_10000DA14()
{
  result = qword_100922E88;
  if (!qword_100922E88)
  {
    sub_100744CD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100922E88);
  }

  return result;
}

uint64_t sub_10000DA6C()
{
  v0 = sub_100752624();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() generalPasteboard];
  sub_100744CC4();
  v5 = sub_100753064();

  [v4 setString:v5];

  sub_10000C518(&qword_100930CA0);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  return sub_100752D84();
}

__n128 sub_10000DBB8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_10000DBEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000DC34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10000DCB0(uint64_t a1, uint64_t a2)
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

uint64_t sub_10000DCCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000DD14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_10000DD70(double a1)
{
  v2 = v1;
  sub_10000C888((v1 + 56), *(v1 + 80));
  sub_100751254();
  sub_10000C888(v2 + 12, v2[15]);
  sub_100751254();
  sub_10000C888(v2 + 17, v2[20]);
  sub_100751254();
  sub_10000E3C8(v1, v5);
  sub_10000C888(v5, v5[3]);
  sub_100750574();
  sub_10000C620(v5);
  return a1;
}

uint64_t sub_10000DEDC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  sub_10000C888((v4 + 56), *(v4 + 80));
  sub_100751254();
  v11 = v10 + 4.0;
  v31.origin.x = a1;
  v31.origin.y = a2;
  v31.size.width = a3;
  v31.size.height = a4;
  v12 = CGRectGetWidth(v31) - v11 - *(v4 + 40);
  sub_10000C888(v5 + 12, v5[15]);
  v32.origin.x = a1;
  v32.origin.y = a2;
  v32.size.width = a3;
  v32.size.height = a4;
  CGRectGetHeight(v32);
  sub_100751254();
  v28 = v13;
  v33.origin.x = a1;
  v33.origin.y = a2;
  v33.size.width = a3;
  v33.size.height = a4;
  CGRectGetHeight(v33);
  v29 = *(v4 + 48);
  sub_10000C888(v5 + 17, v5[20]);
  sub_100751254();
  v27 = v14;
  v16 = v15;
  v25 = v15;
  v26 = v17;
  v18 = v17;
  sub_10000E3C8(v4, v30);
  sub_10000C888(v30, v30[3]);
  sub_100750574();
  v20 = v19;
  sub_10000C620(v30);
  if (v20 <= v28 + v29 + v16 - v18)
  {
    v20 = v28 + v29 + v16 - v18;
  }

  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  CGRectGetMinX(v34);
  v35.origin.x = a1;
  v35.origin.y = a2;
  v35.size.width = a3;
  v35.size.height = a4;
  CGRectGetMinY(v35);
  if (v27 >= v12)
  {
    v21 = v12;
  }

  else
  {
    v21 = v27;
  }

  v36.origin.x = a1;
  v36.origin.y = a2;
  v36.size.width = a3;
  v36.size.height = a4;
  v22 = CGRectGetWidth(v36) - v21;
  v37.origin.x = a1;
  v37.origin.y = a2;
  v37.size.width = a3;
  v37.size.height = a4;
  v23 = v26 + v20 + CGRectGetMinY(v37) - v25;
  v38.origin.x = a1;
  v38.origin.y = a2;
  v38.size.width = a3;
  v38.size.height = a4;
  CGRectGetWidth(v38);
  v39.origin.x = v22;
  v39.origin.y = v23;
  v39.size.width = v27;
  v39.size.height = v25;
  CGRectGetMinY(v39);
  sub_10000C888((v4 + 56), *(v4 + 80));
  sub_100753AA4();
  sub_100751244();
  sub_10000C888((v4 + 136), *(v4 + 160));
  sub_100753AA4();
  sub_100751244();
  sub_10000C888((v4 + 96), *(v4 + 120));
  sub_100753AA4();
  return sub_100751244();
}

uint64_t sub_10000E270(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000E400();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, v4);
}

unint64_t sub_10000E2C8()
{
  result = qword_100922E90;
  if (!qword_100922E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100922E90);
  }

  return result;
}

unint64_t sub_10000E320()
{
  result = qword_100922E98;
  if (!qword_100922E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100922E98);
  }

  return result;
}

unint64_t sub_10000E400()
{
  result = qword_100922EA0;
  if (!qword_100922EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100922EA0);
  }

  return result;
}

uint64_t sub_10000E458(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100752404();
  __chkstk_darwin(v7 - 8);
  if (qword_100921EF8 != -1)
  {
    swift_once();
  }

  v8 = sub_100752E44();
  sub_10000D0FC(v8, qword_100983360);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A5A00;
  sub_1007523F4();
  v15._countAndFlagsBits = 0x5370696B53646964;
  v15._object = 0xED0000203A706574;
  sub_1007523E4(v15);
  v9 = a1[3];
  v10 = sub_10000C888(a1, v9);
  v14 = v9;
  v11 = sub_10000D134(v13);
  (*(*(v9 - 8) + 16))(v11, v10, v9);
  sub_1007523C4();
  sub_10000C8CC(v13, &unk_100923520);
  v16._countAndFlagsBits = 0x6E6F73616572202CLL;
  v16._object = 0xEA0000000000203ALL;
  sub_1007523E4(v16);
  v14 = &type metadata for String;
  v13[0] = a2;
  v13[1] = a3;

  sub_1007523C4();
  sub_10000C8CC(v13, &unk_100923520);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_1007523E4(v17);
  sub_100752414();
  sub_100752CE4();

  result = swift_beginAccess();
  if (*(*(v3 + 32) + 16))
  {
    sub_10015C4B0(0, 1);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000E734()
{
  v1 = sub_10000C518(&qword_100922F58);
  __chkstk_darwin(v1 - 8);
  v3 = &v11[-v2];
  v4 = sub_1007498E4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v8 = *(v0 + 32);
  if (*(v8 + 16))
  {
    sub_10000C824(v8 + 32, v12);
    sub_10000C518(&qword_100922F60);
    v9 = swift_dynamicCast();
    (*(v5 + 56))(v3, v9 ^ 1u, 1, v4);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v7, v3, v4);
      sub_100749884();
      sub_10000EBA0(v7, v0);
      return (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    (*(v5 + 56))(v3, 1, 1, v4);
  }

  return sub_10000C8CC(v3, &qword_100922F58);
}

uint64_t sub_10000E96C(char a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 32);
  if (*(v4 + 16))
  {
    sub_10000C824(v4 + 32, v8);
    sub_10000C518(&qword_100922F60);
    type metadata accessor for AdPrivacyOnboardingStep();
    result = swift_dynamicCast();
    if (result)
    {
      v5 = v1;
      v6 = sub_1004DE5E4();
      [v6 setPersonalizedAds:a1 & 1];

      sub_1004DEEB4();
      sub_10000EE98(v7, v5);
    }
  }

  return result;
}

uint64_t sub_10000EA48()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  if (*(v1 + 16))
  {
    sub_10000C824(v1 + 32, v6);
    sub_10000C518(&qword_100922F60);
    if (swift_dynamicCast())
    {
      if (v3)
      {
        v6[0] = v3;
        v6[1] = v4;
        v6[2] = v5;
        sub_10028A050();
        sub_10000F160(v6, v0);
        return sub_10000F6D0(v6);
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

  return sub_10000C8CC(&v3, &qword_100922F78);
}

uint64_t sub_10000EB3C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10000EBA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100752404();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1007498E4();
  v14 = v5;
  v15 = sub_10000F814(&qword_100922F68, &type metadata accessor for WelcomeOnboardingStep);
  v6 = sub_10000D134(v13);
  (*(*(v5 - 8) + 16))(v6, a1, v5);
  if (qword_100921EF8 != -1)
  {
    swift_once();
  }

  v7 = sub_100752E44();
  sub_10000D0FC(v7, qword_100983360);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A5A00;
  sub_1007523F4();
  v16._object = 0x80000001007654F0;
  v16._countAndFlagsBits = 0xD000000000000011;
  sub_1007523E4(v16);
  v8 = v14;
  v9 = sub_10000C888(v13, v14);
  v12[3] = v8;
  v10 = sub_10000D134(v12);
  (*(*(v8 - 8) + 16))(v10, v9, v8);
  sub_1007523C4();
  sub_10000C8CC(v12, &unk_100923520);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_1007523E4(v17);
  sub_100752414();
  sub_100752CE4();

  result = swift_beginAccess();
  if (*(*(a2 + 32) + 16))
  {
    sub_10015C4B0(0, 1);
    swift_endAccess();
    return sub_10000C620(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000EE98(uint64_t a1, uint64_t a2)
{
  v4 = sub_100752404();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for AdPrivacyOnboardingStep();
  v12[3] = v5;
  v12[4] = sub_10000F814(&qword_100922F70, type metadata accessor for AdPrivacyOnboardingStep);
  v12[0] = a1;
  v6 = qword_100921EF8;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = sub_100752E44();
  sub_10000D0FC(v7, qword_100983360);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A5A00;
  sub_1007523F4();
  v13._object = 0x80000001007654F0;
  v13._countAndFlagsBits = 0xD000000000000011;
  sub_1007523E4(v13);
  v8 = sub_10000C888(v12, v5);
  v11[3] = v5;
  v9 = sub_10000D134(v11);
  (*(*(v5 - 8) + 16))(v9, v8, v5);
  sub_1007523C4();
  sub_10000C8CC(v11, &unk_100923520);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  sub_1007523E4(v14);
  sub_100752414();
  sub_100752CE4();

  result = swift_beginAccess();
  if (*(*(a2 + 32) + 16))
  {
    sub_10015C4B0(0, 1);
    swift_endAccess();
    return sub_10000C620(v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000F160(uint64_t a1, uint64_t a2)
{
  v4 = sub_100752404();
  __chkstk_darwin(v4 - 8);
  v10[3] = &type metadata for LocationPrivacyOnboardingStep;
  v10[4] = sub_10000F724();
  v10[0] = swift_allocObject();
  sub_10000F7B8(a1, v10[0] + 16);
  if (qword_100921EF8 != -1)
  {
    swift_once();
  }

  v5 = sub_100752E44();
  sub_10000D0FC(v5, qword_100983360);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A5A00;
  sub_1007523F4();
  v11._object = 0x80000001007654F0;
  v11._countAndFlagsBits = 0xD000000000000011;
  sub_1007523E4(v11);
  v6 = sub_10000C888(v10, &type metadata for LocationPrivacyOnboardingStep);
  v9[3] = &type metadata for LocationPrivacyOnboardingStep;
  v7 = sub_10000D134(v9);
  _swift_cvw_initWithCopy(v7, v6);
  sub_1007523C4();
  sub_10000C8CC(v9, &unk_100923520);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_1007523E4(v12);
  sub_100752414();
  sub_100752CE4();

  result = swift_beginAccess();
  if (*(*(a2 + 32) + 16))
  {
    sub_10015C4B0(0, 1);
    swift_endAccess();
    return sub_10000C620(v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000F40C(void *a1, uint64_t a2)
{
  v4 = sub_100752404();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for JourneyDrivenOnboardingStep();
  v13[3] = v5;
  v13[4] = sub_10000F814(&qword_100922F88, type metadata accessor for JourneyDrivenOnboardingStep);
  v13[0] = a1;
  v6 = qword_100921EF8;
  v7 = a1;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = sub_100752E44();
  sub_10000D0FC(v8, qword_100983360);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A5A00;
  sub_1007523F4();
  v14._object = 0x80000001007654F0;
  v14._countAndFlagsBits = 0xD000000000000011;
  sub_1007523E4(v14);
  v9 = sub_10000C888(v13, v5);
  v12[3] = v5;
  v10 = sub_10000D134(v12);
  (*(*(v5 - 8) + 16))(v10, v9, v5);
  sub_1007523C4();
  sub_10000C8CC(v12, &unk_100923520);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_1007523E4(v15);
  sub_100752414();
  sub_100752CE4();

  result = swift_beginAccess();
  if (*(*(a2 + 32) + 16))
  {
    sub_10015C4B0(0, 1);
    swift_endAccess();
    return sub_10000C620(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10000F724()
{
  result = qword_100922F80;
  if (!qword_100922F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100922F80);
  }

  return result;
}

uint64_t sub_10000F778()
{

  sub_10000C620(v0 + 24);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000F814(unint64_t *a1, void (*a2)(uint64_t))
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

id CondensedEditorialSearchResultContentView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

char *CondensedEditorialSearchResultContentView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10000C518(&qword_100932470);
  __chkstk_darwin(v10 - 8);
  v57 = &v54 - v11;
  v54 = sub_10074D294();
  v12 = *(v54 - 8);
  __chkstk_darwin(v54);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10074D1D4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_itemLayoutContext;
  v20 = sub_1007469A4();
  (*(*(v20 - 8) + 56))(&v5[v19], 1, 1, v20);
  v21 = OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_headerLabel;
  sub_100745C84();
  *&v5[v21] = sub_100745C64();
  v22 = OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_titleLabel;
  *&v5[v22] = sub_100745C64();
  v23 = OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_viewButton;
  *&v5[v23] = [objc_opt_self() buttonWithType:0];
  v24 = enum case for CondensedSearchResultCardLayout.Configuration.standard(_:);
  v55 = v16;
  v25 = *(v16 + 104);
  v25(&v5[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_configuration], enum case for CondensedSearchResultCardLayout.Configuration.standard(_:), v15);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_artworkView] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_iconGrid] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_action] = 0;
  v26 = &v5[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_buttonHandler];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = &v5[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_artworkSize];
  v25(v18, v24, v15);
  sub_10074D1B4();
  v56 = *(v16 + 8);
  v56(v18, v15);
  sub_10074D1F4();
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
  v38 = OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_headerLabel;
  [v37 addSubview:*&v37[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_headerLabel]];
  v39 = OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_titleLabel;
  [v37 addSubview:*&v37[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_titleLabel]];
  v40 = OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_viewButton;
  [v37 addSubview:*&v37[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_viewButton]];
  [*&v37[v38] setLineBreakMode:4];
  [*&v37[v39] setLineBreakMode:4];
  v41 = *&v37[v40];
  v42 = v41;
  v43 = [v37 traitCollection];
  v44 = v57;
  v45 = ObjectType;
  sub_1006AB840(v41, v57);

  v46 = sub_1007541F4();
  (*(*(v46 - 8) + 56))(v44, 0, 1, v46);
  sub_100754224();

  v47 = v45;
  v48 = sub_1006ABADC();
  sub_10000FF6C(v48, v49, &OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_viewButton);

  v50 = OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_configuration;
  swift_beginAccess();
  (*(v55 + 16))(v18, &v37[v50], v15);
  v51 = [v37 traitCollection];

  sub_100010570(v18, v51);
  v56(v18, v15);
  sub_10000C518(&unk_1009249D0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1007A5A00;
  *(v52 + 32) = sub_1007519E4();
  *(v52 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(swift_allocObject() + 16) = v47;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v37;
}

uint64_t type metadata accessor for CondensedEditorialSearchResultContentView()
{
  result = qword_100923020;
  if (!qword_100923020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000FF6C(uint64_t a1, uint64_t a2, void *a3)
{
  v51 = a3;
  v4 = sub_10000C518(&qword_100923030);
  __chkstk_darwin(v4 - 8);
  v44 = &v43 - v5;
  v6 = sub_100750304();
  v48 = *(v6 - 8);
  v49 = v6;
  __chkstk_darwin(v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100750534();
  v45 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v43 - v13;
  v14 = sub_1007410D4();
  __chkstk_darwin(v14 - 8);
  v15 = sub_100741084();
  v16 = *(v15 - 8);
  v52 = v15;
  v53 = v16;
  __chkstk_darwin(v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000C518(&qword_100932470);
  v20 = __chkstk_darwin(v19 - 8);
  v47 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v43 - v22;
  v46 = *(v3 + *v51);
  sub_100754214();

  sub_1007410C4();
  sub_100741094();
  v51 = v3;
  v24 = [v3 traitCollection];
  v25 = sub_100753194();
  if (v24 && (sub_100753804() & 1) != 0)
  {
    if (v25 < 9)
    {
LABEL_4:
      v26 = v45;
      if (qword_1009212C0 != -1)
      {
        swift_once();
      }

      v27 = qword_100981578;
      goto LABEL_11;
    }
  }

  else if (v25 <= 6)
  {
    goto LABEL_4;
  }

  v26 = v45;
  if (qword_1009212C8 != -1)
  {
    swift_once();
  }

  v27 = qword_100981590;
LABEL_11:
  v28 = sub_10000D0FC(v9, v27);
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
  v35 = sub_1007502F4(v33).super.isa;

  (*(v32 + 8))(v8, v31);
  v54 = v35;
  sub_1000168F0();
  v36 = v35;
  sub_1007410A4();
  v37 = sub_1007541F4();
  v38 = (*(*(v37 - 8) + 48))(v23, 1, v37);
  v39 = v52;
  if (!v38)
  {
    v40 = v53;
    v41 = v44;
    (*(v53 + 16))(v44, v18, v52);
    (*(v40 + 56))(v41, 0, 1, v39);
    sub_1007540F4();
  }

  sub_100016B4C(v23, v47, &qword_100932470);
  sub_100754224();

  (*(v26 + 8))(v30, v9);
  (*(v53 + 8))(v18, v39);
  return sub_10000C8CC(v23, &qword_100932470);
}

void sub_100010570(uint64_t a1, objc_class *a2)
{
  v4 = sub_100750534();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_headerLabel);
  [v8 setNumberOfLines:sub_10074D1A4()];
  v9 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_titleLabel);
  v10.super.isa = a2;
  [v9 setNumberOfLines:sub_10074D194(v10)];
  sub_100016C60(0, &qword_100923AB0);
  sub_10074D184();
  v11 = sub_100753C14();
  v12 = *(v5 + 8);
  v12(v7, v4);
  [v8 setFont:v11];

  sub_10074D1C4();
  v13 = sub_100753C14();
  v12(v7, v4);
  [v9 setFont:v13];

  v14 = [objc_opt_self() systemBlueColor];
  [v8 setTextColor:v14];
}

id sub_100010770(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10074D1D4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1006ABADC();
  sub_1006ABB00(v9, v10, a3, &off_100863C90);

  v11 = OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_configuration;
  swift_beginAccess();
  (*(v6 + 16))(v8, &a1[v11], v5);
  v12 = [a1 traitCollection];
  sub_100010570(v8, v12);

  (*(v6 + 8))(v8, v5);
  return [a1 setNeedsLayout];
}

Swift::Void __swiftcall CondensedEditorialSearchResultContentView.layoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_10000C518(&qword_100922FD0);
  v63 = *(v2 - 8);
  v64 = v2;
  __chkstk_darwin(v2);
  v61 = &v56 - v3;
  v4 = sub_10074D2B4();
  v59 = *(v4 - 8);
  v60 = v4;
  __chkstk_darwin(v4);
  v58 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100750354();
  v65 = *(v6 - 8);
  v66 = v6;
  __chkstk_darwin(v6);
  v62 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074D1D4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10074D294();
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
  sub_1007477B4();
  v57 = OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_artworkView;
  v21 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_artworkView];
  if (v21)
  {
    *(&v85 + 1) = sub_1007433C4();
    v86 = sub_100016BB4(&qword_10092E370, &type metadata accessor for ArtworkView);
    *&v84 = v21;
  }

  else if (*&v0[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_iconGrid])
  {
    *&v72 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_iconGrid];
    type metadata accessor for IconArtworkGridView();
    sub_100750434();
  }

  else
  {
    v86 = 0;
    v84 = 0u;
    v85 = 0u;
  }

  v22 = OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_iconGrid;
  v23 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_iconGrid];
  v24 = v21;
  if (v23)
  {
    [v23 _setContinuousCornerRadius:10.0];
  }

  v25 = [v1 traitCollection];
  v26 = sub_100753804();

  if (v26)
  {
    v27 = OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_configuration;
    swift_beginAccess();
    (*(v9 + 16))(v11, &v1[v27], v8);
    sub_10074D1B4();
    (*(v9 + 8))(v11, v8);
    sub_10074D274();
    v28 = v70;
    v29 = *(v69 + 8);
    v29(v18, v70);
    v30 = *&v1[v57];
    if (v30)
    {
      v73 = sub_1007433C4();
      v74 = &protocol witness table for UIView;
      *&v72 = v30;
      sub_100012160(&v72, v81);
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

    v47 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_headerLabel];
    v79 = sub_100745C84();
    v80 = &protocol witness table for UIView;
    v78[0] = v47;
    v48 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_titleLabel];
    v76 = v79;
    v77 = &protocol witness table for UILabel;
    v75[0] = v48;
    v49 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_viewButton];
    v71[3] = sub_100016C60(0, &qword_10093B420);
    v71[4] = &protocol witness table for UIView;
    v71[0] = v49;
    v50 = v30;
    v51 = v47;
    v52 = v48;
    v53 = v49;
    v54 = v68;
    sub_100011208(v68, v81, v78, v75, v71, &v72);
    v29(v54, v28);
    sub_10000C8CC(v81, &unk_100928A00);
    sub_10000C620(v71);
    sub_10000C620(v75);
    sub_10000C620(v78);
    sub_10000C888(&v72, v73);
    v55 = v62;
    sub_100751124();
    (*(v65 + 8))(v55, v66);
    sub_10000C8CC(&v84, &unk_100924A60);
    sub_10000C620(&v72);
  }

  else
  {
    v31 = OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_configuration;
    swift_beginAccess();
    (*(v9 + 16))(v11, &v1[v31], v8);
    sub_10074D1B4();
    (*(v9 + 8))(v11, v8);
    sub_10074D274();
    (*(v69 + 8))(v15, v70);
    sub_100016B4C(&v84, &v72, &unk_100924A60);
    v32 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_headerLabel];
    v82 = sub_100745C84();
    v83 = &protocol witness table for UILabel;
    v81[0] = v32;
    v33 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_titleLabel];
    v79 = v82;
    v80 = &protocol witness table for UILabel;
    v78[0] = v33;
    v34 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_viewButton];
    v76 = sub_100016C60(0, &qword_10093B420);
    v77 = &protocol witness table for UIButton;
    v75[0] = v34;
    v35 = v32;
    v36 = v33;
    v37 = v34;
    v38 = v58;
    sub_10074D2A4();
    v39 = [v1 traitCollection];
    sub_100016BB4(&qword_100922FD8, &type metadata accessor for CondensedSearchResultCardLayout);
    v41 = v60;
    v40 = v61;
    sub_100750594();
    swift_getOpaqueTypeConformance2();
    v42 = v64;
    sub_100751244();

    (*(v63 + 8))(v40, v42);
    (*(v59 + 8))(v38, v41);
    sub_10000C8CC(&v84, &unk_100924A60);
  }
}

uint64_t sub_100011208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v86 = a5;
  v83 = a4;
  v110 = a3;
  v87 = a6;
  v91 = sub_100750CC4();
  v97 = *(v91 - 8);
  __chkstk_darwin(v91 - 8);
  v9 = v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_100750CB4();
  v10 = *(v113 - 8);
  __chkstk_darwin(v113);
  v89 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100750C64();
  v115 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  *&v114 = v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = v81 - v15;
  v93 = sub_100750CF4();
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
  sub_100016B4C(a2, &v119, &unk_100928A00);
  v90 = a1;
  v92 = v17;
  v84 = v16;
  v88 = v12;
  if (*(&v120 + 1))
  {
    sub_100012160(&v119, v122);
    sub_10074D224();
    sub_10074D244();
    (*(v115 + 104))(v16, enum case for VerticalFlowLayout.VerticalPlacement.top(_:), v12);
    sub_10000C518(&unk_100944F30);
    v28 = v89;
    v29 = v10;
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1007A5620;
    sub_100750CA4();
    sub_100750C84();
    v31 = v97;
    v32 = v91;
    sub_100750C94();
    v116 = v30;
    sub_100016BB4(&qword_100923050, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
    sub_10000C518(&unk_100944F40);
    sub_100016BFC();
    sub_1007543A4();
    (v31[13])(v9, enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:), v32);
    sub_100750CE4();
    v33 = v31;
    v10 = v29;
    v12 = v88;
    v34 = v33[1];
    v108 = v9;
    v34(v9, v32);
    (*(v10 + 8))(v28, v113);
    (*(v115 + 8))(v16, v12);
    sub_10000C8CC(v117, &qword_100931390);
    sub_10000C620(&v119);
    v35 = v92;
    v36 = v109;
    v37 = v93;
    (*(v92 + 16))(v109, v27, v93);
    v38 = sub_100254A58(0, 1, 1, _swiftEmptyArrayStorage);
    v40 = v38[2];
    v39 = v38[3];
    if (v40 >= v39 >> 1)
    {
      v38 = sub_100254A58(v39 > 1, v40 + 1, 1, v38);
    }

    (*(v35 + 8))(v27, v37);
    sub_10000C620(v122);
    v38[2] = v40 + 1;
    (*(v35 + 32))(v38 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v40, v36, v37);
    v123 = v38;
    v9 = v108;
  }

  else
  {
    sub_10000C8CC(&v119, &unk_100928A00);
  }

  sub_10074D214();
  v121 = 0;
  v119 = 0u;
  v120 = 0u;
  sub_10000C824(v110, v117);
  sub_10000C518(&qword_100926520);
  sub_10000C518(&unk_10092D520);
  v41 = v9;
  if (swift_dynamicCast())
  {
    sub_10000C620(&v116);
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
  v107 = sub_10000C518(&unk_100944F30);
  v46 = *(v10 + 72);
  v106 = *(v10 + 80);
  v81[1] = (v106 + 32) & ~v106;
  v105 = 3 * v46;
  v104 = 2 * v46;
  v103 = v46;
  v47 = swift_allocObject();
  v114 = xmmword_1007A5620;
  *(v47 + 16) = xmmword_1007A5620;
  sub_100750CA4();
  sub_100750C84();
  sub_100750C94();
  *&v117[0] = v47;
  v94 = sub_100016BB4(&qword_100923050, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
  v102 = sub_10000C518(&unk_100944F40);
  v101 = sub_100016BFC();
  v48 = v89;
  v49 = v10;
  v50 = v113;
  sub_1007543A4();
  v100 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v51 = v97;
  v52 = v97[13];
  v98 = (v97 + 13);
  v99 = v52;
  v53 = v91;
  v52(v41);
  sub_100750CE4();
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
  sub_10000C8CC(&v119, &qword_100931390);
  sub_10000C620(v122);
  v56 = v83[3];
  v57 = v83[4];
  v58 = v45;
  v59 = sub_10000C888(v83, v56);
  v122[3] = v56;
  v122[4] = *(v57 + 8);
  v60 = sub_10000D134(v122);
  (*(*(v56 - 8) + 16))(v60, v59, v56);
  sub_10074D204();
  v118 = 0;
  memset(v117, 0, sizeof(v117));
  v61 = v84;
  (v109)(v84, v82, v58);
  v62 = swift_allocObject();
  *(v62 + 16) = v114;
  sub_100750CA4();
  sub_100750C84();
  sub_100750C94();
  v116 = v62;
  sub_1007543A4();
  v99(v41, v100, v53);
  sub_100750CE4();
  v110(v41, v53);
  (v97)(v48, v50);
  v63 = v88;
  v95(v61, v88);
  sub_10000C8CC(v117, &qword_100931390);
  sub_10000C620(&v119);
  sub_10000C620(v122);
  sub_10074D264();
  sub_10074D234();
  (v109)(v61, enum case for VerticalFlowLayout.VerticalPlacement.top(_:), v63);
  v64 = swift_allocObject();
  *(v64 + 16) = v114;
  sub_100750CA4();
  sub_100750C84();
  sub_100750C94();
  *&v117[0] = v64;
  sub_1007543A4();
  v99(v41, v100, v53);
  v65 = v85;
  sub_100750CE4();
  v110(v41, v53);
  (v97)(v48, v50);
  v95(v61, v63);
  sub_10000C8CC(&v119, &qword_100931390);
  sub_10000C620(v122);
  sub_10000C518(&unk_100923060);
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
  sub_10049FCAC(v70);
  v77 = sub_100750D04();
  v78 = v87;
  v87[3] = v77;
  v78[4] = &protocol witness table for VerticalFlowLayout;
  v78[5] = &protocol witness table for VerticalFlowLayout;
  sub_10000D134(v78);
  sub_100750CD4();
  v79 = *(v66 + 8);
  v79(v65, v74);
  v79(v76, v74);
  return (v79)(v73, v74);
}

uint64_t sub_100012160(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

Swift::Void __swiftcall CondensedEditorialSearchResultContentView.prepareForReuse()()
{
  v1 = sub_10000C518(&qword_100932470);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_titleLabel] setText:0];
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_headerLabel] setText:0];
  v4 = OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_artworkView;
  v5 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_artworkView];
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
  v7 = OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_iconGrid;
  v8 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_iconGrid];
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
  v10 = sub_1007541F4();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  sub_100754224();
}

uint64_t sub_100012368@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100747B94();
  *a1 = result;
  return result;
}

double sub_100012394(uint64_t a1, uint64_t a2, objc_class *a3)
{
  v68 = a3;
  v67 = sub_100750304();
  v69 = *(v67 - 8);
  __chkstk_darwin(v67);
  v59 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_10074CD14();
  v70 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1007504F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074D294();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v48 - v16;
  sub_10074D1B4();
  sub_100750504();
  v58 = a1;
  sub_100014580();
  (*(v8 + 8))(v10, v7);
  v18 = *(v12 + 8);
  v63 = v17;
  v65 = v11;
  v18(v17, v11);
  v64 = v18;
  v66 = v12 + 8;
  v19 = a2;
  sub_10074D1B4();
  sub_10074D274();
  v18(v15, v11);
  v20 = sub_100750F34();
  swift_allocObject();
  v61 = sub_100750F14();
  v53 = sub_100749334();
  v52 = v21;
  v22 = v59;
  v51 = v19;
  sub_10074D184();
  v57 = enum case for FontSource.useCase(_:);
  v23 = v69;
  v56 = *(v69 + 104);
  v24 = v67;
  v56(v22);
  v25 = v68;
  v26.super.isa = v68;
  sub_1007502F4(v26);
  v27 = *(v23 + 8);
  v69 = v23 + 8;
  v55 = v27;
  v27(v22, v24);
  sub_10074D1A4();
  v28 = sub_10074F3F4();
  v75 = v28;
  v54 = sub_100016BB4(&qword_10092AC70, &type metadata accessor for Feature);
  v76 = v54;
  v29 = sub_10000D134(&v74);
  v49 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v30 = *(v28 - 8);
  v48 = *(v30 + 104);
  v50 = v30 + 104;
  v48(v29);
  sub_10074FC74();
  sub_10000C620(&v74);
  v31 = v60;
  sub_10074CD04();
  sub_10074CCE4();
  v32 = *(v70 + 8);
  v70 += 8;
  v53 = v32;
  v33 = v62;
  v32(v31, v62);
  v58 = sub_100749394();
  v52 = v34;
  sub_10074D1C4();
  v35 = v67;
  (v56)(v22, v57, v67);
  v36.super.isa = v25;
  sub_1007502F4(v36);
  v55(v22, v35);
  v37.super.isa = v25;
  sub_10074D194(v37);
  v75 = v28;
  v76 = v54;
  v38 = sub_10000D134(&v74);
  (v48)(v38, v49, v28);
  sub_10074FC74();
  sub_10000C620(&v74);
  sub_10074CD04();
  sub_10074CCE4();
  v53(v31, v33);
  sub_10074D1E4();
  swift_allocObject();
  v39 = sub_100750F14();
  v73[4] = &protocol witness table for LayoutViewPlaceholder;
  v73[3] = v20;
  v73[0] = v61;
  v40 = v79;
  v41 = v80;
  v42 = sub_10000C888(&v78, v79);
  v72[3] = v40;
  v72[4] = *(v41 + 8);
  v43 = sub_10000D134(v72);
  (*(*(v40 - 8) + 16))(v43, v42, v40);
  v71[4] = &protocol witness table for LayoutViewPlaceholder;
  v71[3] = v20;
  v71[0] = v39;

  v44 = v63;
  sub_100011208(v63, v73, v72, &v77, v71, &v74);
  sub_10000C620(v71);
  sub_10000C620(v72);
  sub_10000C8CC(v73, &unk_100928A00);
  sub_10000C888(&v74, v75);
  sub_100750424();
  v46 = v45;

  sub_10000C620(&v77);
  v64(v44, v65);
  sub_10000C620(&v74);
  sub_10000C620(&v78);
  return v46;
}

void sub_100012C54(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4)
{
  v8 = *(a1 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v13[0] = _swiftEmptyArrayStorage;
    sub_1007545C4();
    v10 = a1 + 32;
    do
    {
      v10 += 16;

      sub_1007545A4();
      sub_1007545D4();
      sub_1007545E4();
      sub_1007545B4();
      --v8;
    }

    while (v8);
    v9 = v13[0];
  }

  if (qword_1009205E0 == -1)
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
    sub_1000169F4();
    sub_10074F4B4();

    v11 = OBJC_IVAR____TtC22SubscribePageExtension19IconArtworkGridView_config;
    swift_beginAccess();
    sub_100016A48(v13, a2 + v11);
    swift_endAccess();
    sub_1001FF2C4();
    sub_100016AA4(v13);
    sub_1001FF650(a3, a4);
    return;
  }

LABEL_10:
}

uint64_t CondensedEditorialSearchResultContentView.applyData(from:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v110 = a2;
  v5 = sub_100743584();
  v102 = *(v5 - 8);
  v103 = v5;
  __chkstk_darwin(v5);
  v101 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1007504F4();
  v105 = *(v7 - 8);
  v106 = v7;
  __chkstk_darwin(v7);
  v104 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10074D294();
  v108 = *(v9 - 8);
  v109 = v9;
  __chkstk_darwin(v9);
  v114 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074B3E4();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v100 - v17;
  __chkstk_darwin(v16);
  v20 = &v100 - v19;
  v113 = sub_10074D1D4();
  v115 = *(v113 - 8);
  v21 = __chkstk_darwin(v113);
  v23 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = &v100 - v25;
  __chkstk_darwin(v24);
  v112 = &v100 - v27;
  sub_1007493C4();
  sub_100016BB4(&qword_100936A50, &type metadata accessor for EditorialSearchResult);
  v107 = a1;
  result = sub_1007468B4();
  if (!v116)
  {
    return result;
  }

  v111 = v116;
  sub_100749384();
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
  sub_10074D1B4();
  (*(v30 + 16))(v23, v33, v31);
  v34 = OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_configuration;
  swift_beginAccess();
  (*(v30 + 24))(&v3[v34], v23, v31);
  swift_endAccess();
  [v3 setNeedsLayout];
  v35 = *(v30 + 8);
  v115 = v30 + 8;
  v100 = v35;
  v35(v23, v31);
  swift_getKeyPath();
  sub_100746914();

  v36 = v116;
  sub_100010570(v33, v116);

  v37 = sub_100749334();
  v39 = v38;
  sub_100749384();
  sub_100013B24(v37, v39, v15);

  (*(v12 + 8))(v15, v11);
  v40 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_titleLabel];
  sub_100749394();
  if (v41)
  {
    v42 = sub_100753064();
  }

  else
  {
    v42 = 0;
  }

  [v40 setText:v42];

  if (sub_100749354())
  {
    sub_10074ED34();
    v43 = sub_1007532D4();

    if (v43)
    {
      sub_100744AC4();
      sub_100752764();
      sub_100752D34();
      sub_10074D1F4();
      v45 = v44;
      v47 = v46;
      v48 = sub_1007449C4();
      v49 = objc_allocWithZone(type metadata accessor for IconArtworkGridView());
      v50 = sub_1001FEDDC(v48 & 1, 0.0, 0.0, v45, v47);
      v51 = OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_iconGrid;
      v52 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_iconGrid];
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

      sub_10074D1F4();
      v70 = &v3[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_artworkSize];
      *v70 = v71;
      *(v70 + 1) = v72;
      [v3 setNeedsLayout];

      goto LABEL_30;
    }
  }

  if (sub_100749314())
  {
    sub_10074EC14();

LABEL_19:

    v54 = v104;
    sub_100750504();
    sub_100014580();
    v56 = v55;
    v58 = v57;
    (*(v105 + 8))(v54, v106);
    v59 = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, v56, v58}];
    v60 = OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_artworkView;
    v61 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_artworkView];
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
      sub_1007433B4();

      (*(v64 + 8))(v65, v66);
    }

    [v3 setNeedsLayout];

    v67 = &v3[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_artworkSize];
    *v67 = v56;
    v67[1] = v58;
    goto LABEL_25;
  }

  if (sub_100749344())
  {
    goto LABEL_19;
  }

  if (!sub_100749304())
  {
    goto LABEL_30;
  }

  sub_10074D1F4();
  v89 = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, v87, v88}];
  v90 = OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_artworkView;
  v91 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_artworkView];
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
    sub_1007433B4();

    (*(v94 + 8))(v95, v96);
  }

  [v3 setNeedsLayout];

  sub_10074D1F4();
  v97 = &v3[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_artworkSize];
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
  v76 = OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_action;
  v77 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_action];
  if (v77)
  {
    v78 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_viewButton];

    [v78 removeAction:v77 forControlEvents:4095];
    v79 = *&v3[v76];
  }

  else
  {

    v79 = 0;
  }

  *&v3[v76] = 0;

  v80 = &v3[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_buttonHandler];
  v81 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_buttonHandler];
  *v80 = sub_10001649C;
  v80[1] = v75;

  sub_1000164A8(v81);
  sub_100016C60(0, &qword_100929CC0);

  v82 = sub_100753FF4();
  v83 = *&v3[v76];
  if (v83)
  {
    [*&v3[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_viewButton] removeAction:v83 forControlEvents:4095];
    v84 = *&v3[v76];
  }

  else
  {
    v84 = 0;
  }

  v85 = v114;
  *&v3[v76] = v82;
  v86 = v82;

  [*&v3[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_viewButton] addAction:v86 forControlEvents:64];

  (*(v108 + 8))(v85, v109);
  v100(v112, v113);

  [v3 setNeedsLayout];
}

void sub_100013B24(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100743B04();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10074B3E4();
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
        v29 = sub_100753064();
        v30 = [v28 initWithString:v29];

        v27 = v30;
        v21 = 0;
        goto LABEL_12;
      }

      v18 = &enum case for SystemImage.personCropSquare(_:);
    }

    (*(v9 + 104))(v11, *v18, v8);
    v19 = sub_100743AE4();
    (*(v9 + 8))(v11, v8);
    v20 = objc_opt_self();
    v21 = v19;
    v22 = [v20 textAttachmentWithImage:v21];
    v23 = [objc_opt_self() attributedStringWithAttachment:v22];
    v31[0] = 32;
    v31[1] = 0xE100000000000000;
    v32._countAndFlagsBits = a1;
    v32._object = a2;
    sub_1007531B4(v32);
    v24 = objc_allocWithZone(NSMutableAttributedString);
    v25 = sub_100753064();

    v26 = [v24 initWithString:v25];

    v27 = v26;
    [v27 insertAttributedString:v23 atIndex:0];

LABEL_12:
    [*(v4 + OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_headerLabel) setAttributedText:v27];
  }
}

void sub_100013EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v5 - 8);
  v7 = &v13[-v6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong() && (v10 = sub_1007492F4(), , v10))
    {
      v11 = sub_10000C518(&unk_100923210);
      sub_1007526C4();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v7, 1, v11) == 1)
      {

        sub_10000C8CC(v7, &unk_100923960);
      }

      else
      {
        sub_1003C0E00(v10, 1, a4, v7);

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
  v2 = sub_10074A274();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

id CondensedEditorialSearchResultContentView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CondensedEditorialSearchResultContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100014274()
{
  v1 = v0;
  v2 = sub_10074D294();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074D1D4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_itemLayoutContext;
  v11 = sub_1007469A4();
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_headerLabel;
  sub_100745C84();
  *(v1 + v12) = sub_100745C64();
  v13 = OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_titleLabel;
  *(v1 + v13) = sub_100745C64();
  v14 = OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_viewButton;
  *(v1 + v14) = [objc_opt_self() buttonWithType:0];
  v15 = enum case for CondensedSearchResultCardLayout.Configuration.standard(_:);
  v16 = *(v7 + 104);
  v16(v1 + OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_configuration, enum case for CondensedSearchResultCardLayout.Configuration.standard(_:), v6);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_artworkView) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_iconGrid) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_action) = 0;
  v17 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_buttonHandler);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_artworkSize);
  v16(v9, v15, v6);
  sub_10074D1B4();
  (*(v7 + 8))(v9, v6);
  sub_10074D1F4();
  v20 = v19;
  v22 = v21;
  (*(v3 + 8))(v5, v2);
  *v18 = v20;
  v18[1] = v22;
  sub_100754644();
  __break(1u);
}

uint64_t sub_100014580()
{
  v0 = sub_100754724();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007504F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!sub_100749314())
  {
    return sub_10074D1F4();
  }

  sub_10074EC14();

  sub_10074F2A4();
  sub_100750504();
  sub_10074D1F4();
  sub_1007504B4();
  sub_10074D1F4();
  sub_1007504B4();
  sub_10074D1F4();
  (*(v1 + 104))(v3, enum case for FloatingPointRoundingRule.up(_:), v0);
  sub_100753B84();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

double sub_1000147BC(uint64_t a1, uint64_t a2, objc_class *a3)
{
  v93 = a3;
  v95 = a1;
  v84 = sub_10000C518(&qword_100922FD0);
  v85 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v67 - v4;
  v81 = sub_10074D2B4();
  v83 = *(v81 - 8);
  __chkstk_darwin(v81);
  v80 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_100750BD4();
  v79 = *(v78 - 8);
  v6 = __chkstk_darwin(v78);
  v92 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v89 = &v67 - v8;
  v90 = sub_100750534();
  v94 = *(v90 - 8);
  __chkstk_darwin(v90);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_100750E94();
  v72 = *(v86 - 8);
  v11 = __chkstk_darwin(v86);
  v75 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v67 - v14;
  v16 = __chkstk_darwin(v13);
  v87 = &v67 - v17;
  __chkstk_darwin(v16);
  v91 = &v67 - v18;
  v19 = sub_1007504F4();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10074D294();
  v73 = *(v23 - 8);
  v24 = v73;
  v25 = __chkstk_darwin(v23);
  v27 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v67 - v28;
  sub_10074D1B4();
  sub_100750504();
  sub_100014580();
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
  sub_10074D1B4();
  sub_10074D274();
  v34(v27, v23);
  sub_100750E84();
  v67 = a2;
  sub_10074D184();
  v35 = v87;
  sub_100750E54();
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
  sub_10074D1A4();
  v41 = v91;
  sub_100750E74();
  v42 = v40;
  v39(v35, v40);
  sub_100749334();
  v72 = *(v37 + 16);
  (v72)(v35, v41, v40);
  sub_100750BB4();
  v43 = v89;
  v44 = v35;
  sub_100750BF4();
  v45 = v75;
  sub_100750E84();
  sub_10074D1C4();
  sub_100750E54();
  v68(v10, v90);
  v74 = v39;
  v39(v45, v42);
  v46.super.isa = v93;
  sub_10074D194(v46);
  sub_100750E74();
  v39(v15, v42);
  sub_100749394();
  (v72)(v15, v44, v42);
  sub_100750BB4();
  v47 = v92;
  sub_100750BF4();
  v48 = v71;
  v49 = v70;
  (*(v73 + 16))(v69, v71, v70);
  v100[8] = &type metadata for FixedSizedPlaceholder;
  v100[9] = sub_100016AF8();
  v100[5] = v31;
  v100[6] = v33;
  v50 = v78;
  v100[3] = v78;
  v100[4] = &protocol witness table for LabelPlaceholder;
  v51 = sub_10000D134(v100);
  v52 = v79;
  v53 = *(v79 + 16);
  v53(v51, v43, v50);
  v99[3] = v50;
  v99[4] = &protocol witness table for LabelPlaceholder;
  v54 = sub_10000D134(v99);
  v53(v54, v47, v50);
  v55 = sub_100744D34();
  swift_allocObject();
  v56 = sub_100744D24();
  v97 = v55;
  v98 = sub_100016BB4(&qword_100923048, &type metadata accessor for EmptyPlaceable);
  v96 = v56;
  v57 = v80;
  sub_10074D2A4();
  sub_100016BB4(&qword_100922FD8, &type metadata accessor for CondensedSearchResultCardLayout);
  v58 = v82;
  v59 = v81;
  sub_100750594();
  swift_getOpaqueTypeConformance2();
  v60 = v84;
  sub_100751254();
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

double _s22SubscribePageExtension41CondensedEditorialSearchResultContentViewC6height2in8asPartOf12CoreGraphics7CGFloatV11AppStoreKit17ItemLayoutContextV_9JetEngine15BaseObjectGraphCtFZ_0()
{
  v0 = sub_10074B3E4();
  v30 = *(v0 - 8);
  v1 = __chkstk_darwin(v0);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v29 - v4;
  v34 = sub_10074D1D4();
  v6 = *(v34 - 8);
  v7 = __chkstk_darwin(v34);
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v29 - v9;
  v11 = sub_100747C14();
  __chkstk_darwin(v11 - 8);
  v33 = sub_10074F704();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007493C4();
  sub_100016BB4(&qword_100936A50, &type metadata accessor for EditorialSearchResult);
  sub_1007468B4();
  v14 = v35;
  if (!v35)
  {
    return 0.0;
  }

  v29 = v10;
  sub_100746884();
  if (qword_100920C20 != -1)
  {
    swift_once();
  }

  sub_10074F6A4();
  sub_100749384();
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
  sub_100746914();

  v23 = v35;
  sub_10074F674();
  v24 = sub_100753804();
  v25 = (v6 + 8);
  v26 = (v31 + 8);
  if (v24)
  {
    v27 = sub_100012394(v14, v19, v23);
  }

  else
  {
    v27 = sub_1000147BC(v14, v19, v23);
  }

  v20 = v27;

  (*v25)(v19, v18);
  (*v26)(v13, v33);
  return v20;
}

uint64_t _s22SubscribePageExtension41CondensedEditorialSearchResultContentViewC5fetch3for2in2on8asPartOfy11AppStoreKit27ManagedArtworkModelProtocol_p_So6CGRectVAI0U6LoaderC9JetEngine15BaseObjectGraphCtF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a3;
  v78 = a2;
  v5 = sub_10074F314();
  __chkstk_darwin(v5 - 8);
  v69 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_10074F284();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007504F4();
  v75 = *(v8 - 8);
  v76 = v8;
  __chkstk_darwin(v8);
  v74 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_10074D294();
  v10 = *(v79 - 8);
  v11 = __chkstk_darwin(v79);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v65 - v14;
  v16 = sub_10074B3E4();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v77 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v65 - v21;
  __chkstk_darwin(v20);
  v24 = &v65 - v23;
  v25 = sub_10074D1D4();
  v26 = *(v25 - 8);
  v82 = v25;
  v83 = v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v81 = &v65 - v30;
  sub_10000C824(a1, v85);
  sub_10000C518(&unk_100923100);
  sub_1007493C4();
  result = swift_dynamicCast();
  if (result)
  {
    v67 = v3;
    v80 = v15;
    sub_100749384();
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
          sub_10074D1B4();
          sub_10074D1B4();
          sub_10074D1F4();
          v38 = v37;
          v40 = v39;
          v41 = *(v10 + 8);
          v42 = v79;
          v68 = v10 + 8;
          v41(v13, v79);
          v43 = v41;
          v44 = sub_100749354();
          v45 = v67;
          if (v44)
          {
            v46 = *&v67[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_iconGrid];
            if (v46)
            {
              sub_100747474();
              v47 = v46;
              sub_100752754();
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
                sub_100016BB4(&qword_100923038, type metadata accessor for CondensedEditorialSearchResultContentView);
                v51 = v47;
                swift_retain_n();
                v52 = v51;
                v53 = v45;
                sub_1007544E4();
                sub_100747444();

                sub_10000C8CC(v84, &unk_1009276E0);
                sub_100016994(v85);
                (v77)(v80, v79);
                return (*(v83 + 8))(v81, v82);
              }
            }

            else
            {
            }
          }

          if (sub_100749314())
          {
            sub_10074EC14();
          }

          else if (!sub_100749344())
          {
            goto LABEL_24;
          }

          v54 = *&v45[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_artworkView];
          if (v54)
          {
            v55 = v54;
            v56 = v74;
            sub_100750504();
            sub_100014580();
            (*(v75 + 8))(v56, v76);
            [v55 setContentMode:0];
            v57 = v77;
            sub_100749384();
            v58 = v66(v57, v16);
            if (v58 != enum case for EditorialSearchResultType.developer(_:) && v58 != enum case for EditorialSearchResultType.appEventStory(_:))
            {
              v59 = v70;
              sub_10074F294();
              sub_10074F254();
              (*(v71 + 8))(v59, v72);
              (*(v65 + 8))(v77, v16);
            }

            sub_10074F374();
            sub_1007433C4();
            sub_100016BB4(&qword_100925570, &type metadata accessor for ArtworkView);
            sub_100744204();

            v43(v80, v42);
            return (*(v83 + 8))(v81, v82);
          }

LABEL_24:
          if (sub_100749304())
          {
            v60 = *&v45[OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_artworkView];
            v61 = v80;
            if (v60)
            {
              v62 = v60;
              sub_10074D1F4();
              v63 = v70;
              sub_10074F294();
              sub_10074F254();
              (*(v71 + 8))(v63, v72);
              sub_10074F374();
              sub_10074F324();
              sub_100743364();
              [v62 setContentMode:sub_10074F184()];
              sub_100747FB4();
              sub_1007433A4();
              if (!sub_10074F1E4())
              {
                sub_100016C60(0, &qword_100923500);
                sub_100753E34();
              }

              sub_100743224();
              sub_1007433C4();
              sub_100016BB4(&qword_100925570, &type metadata accessor for ArtworkView);
              sub_100744204();
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

uint64_t sub_1000163B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100747B94();
  *a1 = result;
  return result;
}

uint64_t sub_1000163E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001641C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100016454()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000164A8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void _s22SubscribePageExtension41CondensedEditorialSearchResultContentViewC20cancelArtworkFetches2on8asPartOf014deprioritizingL0y11AppStoreKit0K6LoaderC_9JetEngine15BaseObjectGraphCSbtF_0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_iconGrid);
  if (v2)
  {
    v3 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension19IconArtworkGridView_iconViews];
    if (v3 >> 62)
    {
      v4 = sub_100754664();
      if (!v4)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
        v7 = sub_100754574();
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      sub_1007433C4();
      sub_100016BB4(&qword_100925570, &type metadata accessor for ArtworkView);
      sub_100744274();
    }

    while (v4 != v6);
  }

LABEL_11:
  v9 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension41CondensedEditorialSearchResultContentView_artworkView);
  if (v9)
  {
    v10 = v9;
    v11 = v10;
    v12 = v10;
    v14.value.super.isa = 0;
    v14.is_nil = 0;
    sub_100743384(v14, v11);
    sub_1007433C4();
    sub_100016BB4(&qword_100925570, &type metadata accessor for ArtworkView);
    sub_100744274();
  }
}

uint64_t sub_1000166CC(uint64_t a1)
{
  *(a1 + 8) = sub_100016BB4(&qword_100922FE0, type metadata accessor for CondensedEditorialSearchResultContentView);
  result = sub_100016BB4(&qword_100922FE8, type metadata accessor for CondensedEditorialSearchResultContentView);
  *(a1 + 16) = result;
  return result;
}

void sub_1000167A0()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    sub_10074D1D4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100016898()
{
  if (!qword_100928E60)
  {
    sub_1007469A4();
    v0 = sub_100754284();
    if (!v1)
    {
      atomic_store(v0, &qword_100928E60);
    }
  }
}

unint64_t sub_1000168F0()
{
  result = qword_10092E4E0;
  if (!qword_10092E4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092E4E0);
  }

  return result;
}

uint64_t sub_100016954()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_1000169F4()
{
  result = qword_100923040;
  if (!qword_100923040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100923040);
  }

  return result;
}

unint64_t sub_100016AF8()
{
  result = qword_10092E4A0;
  if (!qword_10092E4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092E4A0);
  }

  return result;
}

uint64_t sub_100016B4C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10000C518(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100016BB4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100016BFC()
{
  result = qword_100923058;
  if (!qword_100923058)
  {
    sub_10000C724(&unk_100944F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100923058);
  }

  return result;
}

uint64_t sub_100016C60(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100016CB0()
{
  if (qword_100921708 != -1)
  {
    swift_once();
  }

  v0 = sub_100750B04();
  v1 = sub_10000D0FC(v0, qword_100982098);
  qword_10097C930 = v0;
  unk_10097C938 = &protocol witness table for StaticDimension;
  v2 = sub_10000D134(qword_10097C918);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

char *sub_100016D6C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_appEventView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for AppEventView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_appEventTapGestureRecognizer;
  *&v4[v11] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v12 = &v4[OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_appEventViewTappedAction];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_impressionsCalculator] = 0;
  v13 = &v4[OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_impressionsUpdateBlock];
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
  [v19 addSubview:*&v19[OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_lockupView]];
  v20 = OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_appEventView;
  [v19 addSubview:*&v19[OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_appEventView]];
  v21 = OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_appEventTapGestureRecognizer;
  [*&v19[OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_appEventTapGestureRecognizer] addTarget:v19 action:"handleTapWithGestureRecognizer:"];
  [*&v19[v21] setDelegate:v19];
  [*&v19[v20] addGestureRecognizer:*&v19[v21]];

  return v19;
}

id sub_100016F98()
{
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_appEventTapGestureRecognizer] removeTarget:v0 action:0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppEventSearchResultContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000170E8()
{
  v1 = v0;
  v2 = type metadata accessor for AppEventCardLayout(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&unk_100923180);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - v7;
  v9 = type metadata accessor for AppEventSearchResultContentView();
  v36.receiver = v0;
  v36.super_class = v9;
  objc_msgSendSuper2(&v36, "layoutSubviews");
  sub_1007477B4();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_lockupView];
  sub_10017CB48();
  sub_100753B24();
  v19 = &selRef_initWithTitle_style_target_action_;
  [v18 setFrame:?];
  if (MetadataRibbonView.hasContent.getter() & 1) != 0 || (sub_100076CBC())
  {
    sub_10074DF44();
    v20 = [v0 traitCollection];
    sub_100751034();
    v21 = v6;
    sub_10000C518(&unk_1009231A0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1007A5CF0;
    *(v22 + 32) = v20;
    v23 = v20;
    v19 = &selRef_initWithTitle_style_target_action_;
    v24 = sub_100751044();
    sub_10001B5C0();
    sub_100750544();
    v26 = v25;

    (*(v21 + 8))(v8, v5);
  }

  else
  {
    if (qword_10091FDE0 != -1)
    {
      swift_once();
    }

    sub_10000C888(qword_10097C918, qword_10097C930);
    v27 = [v0 traitCollection];
    sub_100750574();
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
  v32 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_appEventView];
  if (qword_100920180 != -1)
  {
    v35 = v31;
    swift_once();
    v31 = v35;
  }

  sub_1006D51C0(&unk_10097D3C0, v32, Width, v31 - (v26 + MaxY));
  v33 = *&v32[OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_appEventCardView];
  sub_10018DF10(v4);
  sub_1006D38E4(v33, v4);
  sub_10001BB14(v4);
  [v1 bounds];
  sub_100753B24();
  return [v32 v19[72]];
}

void sub_100017674(void *a1)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_appEventView) + OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_appEventCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10001B668(&qword_1009230E0, 255, type metadata accessor for VideoView);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView];
    sub_100016C60(0, &qword_100922300);
    v8 = v7;
    v9 = sub_100753FC4();

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
    [*&v2[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

void (*sub_100017824(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_appEventCardView;
  a1[1] = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_appEventView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100017898;
}

void sub_100017898(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *a1;
  v5 = *(v3 + v2);
  if (a2)
  {
    v6 = v4;
    sub_10018F560();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      [*&v5[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView] insertSubview:Strong aboveSubview:*&v5[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_artworkView]];
      [v5 setNeedsLayout];
    }

    v10 = v6;
  }

  else
  {
    v10 = v4;
    sub_10018F560();
    swift_unknownObjectWeakAssign();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (!v9)
    {
      goto LABEL_8;
    }

    v6 = v9;
    [*&v5[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView] insertSubview:v9 aboveSubview:*&v5[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_artworkView]];
    [v5 setNeedsLayout];
  }

LABEL_8:
}

id sub_1000179DC()
{
  sub_10017D15C();
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_appEventView);
  sub_1000CC798();
  v2 = OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_appEventCardView;
  sub_10018EEAC();
  v3 = &v1[OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_initialLongPressLocation];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_longPressGestureRecognizer] setEnabled:1];
  v4 = *&v1[v2];

  return [v1 addSubview:v4];
}

uint64_t sub_100017AE8(uint64_t a1, char *a2)
{
  v3 = v2;
  swift_getObjectType();
  v5 = sub_10000C518(&unk_100923200);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = sub_10074F704();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100742574();
  sub_10001B668(&qword_100923190, 255, &type metadata accessor for AppEventSearchResult);
  result = sub_1007468B4();
  v13 = v25;
  if (v25)
  {
    static SearchPageGridBreakpointOverridable.pageGridWithSearchOverrides(for:)();
    sub_10074F5A4();
    v14 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_lockupView];
    *&v14[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_regularWidthColumnSpacing] = v15;
    [v14 setNeedsLayout];
    v16 = sub_100742564();
    v24 = v8;
    v17 = v16;
    v18 = sub_1007469A4();
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
    sub_100028DB0(v17, v7, a2);

    sub_10000C8CC(v7, &unk_100923200);
    v19 = sub_100742554();
    sub_10007DC04();
    sub_100195300(v19, a2);

    swift_unknownObjectRelease();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    *(v21 + 2) = v20;
    *(v21 + 3) = v13;
    *(v21 + 4) = a2;
    v22 = &v3[OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_appEventViewTappedAction];
    v23 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_appEventViewTappedAction];
    *v22 = sub_10001BB08;
    v22[1] = v21;

    sub_1000164A8(v23);

    [v3 setNeedsLayout];

    return (*(v9 + 8))(v11, v24);
  }

  return result;
}

void sub_100017E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v4 - 8);
  v6 = v13 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_100742554();
    v9 = sub_100742934();

    if (v9)
    {
      v13[4] = type metadata accessor for AppEventSearchResultContentView();
      v13[1] = v8;

      v10 = v8;
      sub_10074EC54();

      v11 = sub_10000C518(&unk_100923210);
      sub_1007526C4();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v6, 1, v11) == 1)
      {

        sub_10000C8CC(v6, &unk_100923960);
      }

      else
      {
        sub_1003C0E00(v9, 1, a3, v6);

        (*(v12 + 8))(v6, v11);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_100018034()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  if (*(v0 + v1))
  {

    sub_100749574();
  }

  *(v0 + v1) = 0;

  v2 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_1000164A8(v3);
  return sub_10017D40C();
}

uint64_t (*sub_100018138(uint64_t **a1))()
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
  v2[4] = sub_100017824(v2);
  return sub_1000181A8;
}

double sub_1000181E4()
{
  [*(*(*v0 + OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_appEventView) + OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_formattedDateView) frame];
  CGRectGetMaxY(v2);
  type metadata accessor for AppEventView();
  sub_1007477B4();
  CGRectGetHeight(v3);
  sub_1007477B4();
  CGRectGetWidth(v4);
  return 0.0;
}

CGFloat sub_100018270()
{
  v1 = *(*v0 + OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_appEventView);
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_formattedDateView] frame];
  CGRectGetMaxY(v3);
  type metadata accessor for AppEventView();
  sub_1007477B4();
  CGRectGetHeight(v4);
  [v1 bounds];
  return CGRectGetWidth(v5) * 0.5;
}

uint64_t sub_100018348(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_100018404()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001B5AC(*v1);
  return v2;
}

uint64_t sub_100018460(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000164A8(v6);
}

uint64_t sub_100018520()
{
  type metadata accessor for SearchTagsRibbonView();
  sub_10001B668(&qword_1009393D0, 255, type metadata accessor for SearchTagsRibbonView);
  return sub_10074D3C4();
}

uint64_t sub_1000185CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_100018620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_10001868C(uint64_t *a1))()
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

void sub_100018728(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_100018770(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_appEventView) + OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_appEventCardView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView);
  sub_100016C60(0, &qword_100922300);
  v6 = v5;
  v7 = sub_100753FC4();

  return v7 & 1;
}

uint64_t sub_10001895C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_10001B668(&qword_1009230E8, a2, type metadata accessor for AppEventSearchResultContentView);
  result = sub_10001B668(&unk_1009230F0, v3, type metadata accessor for AppEventSearchResultContentView);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000189E4(unint64_t a1, unint64_t a2)
{
  v4 = sub_10074BCC4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074F3F4();
  v32[3] = v8;
  v32[4] = sub_10001B668(&qword_10092AC70, 255, &type metadata accessor for Feature);
  v9 = sub_10000D134(v32);
  (*(*(v8 - 8) + 104))(v9, enum case for Feature.search_tags(_:), v8);
  LOBYTE(v8) = sub_10074FC74();
  sub_10000C620(v32);
  if (v8)
  {
    a2 = a1;
  }

  if (a2)
  {
    sub_100747924();
    if (sub_1007532D4())
    {
      v10 = a2 & 0xFFFFFFFFFFFFFF8;
      if (a2 >> 62)
      {
        goto LABEL_40;
      }

      for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
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
          v5 = sub_100754574();
          v10 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_38;
          }

LABEL_11:
          sub_1007478B4();

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

uint64_t sub_100018CE4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = sub_10074BCC4();
  v6 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074AE04();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10074AE14();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v50 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747924();
  result = sub_1007532D4();
  if (result)
  {
    v43 = v11;
    v44 = v9;
    if (a1 >> 62)
    {
      result = sub_100754664();
      v16 = result;
    }

    else
    {
      v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
            v19 = sub_100754574();
          }

          else
          {
            v19 = *(a1 + 8 * v17 + 32);
          }

          v20 = v58;
          sub_1007478B4();
          v21 = (*v56)(v20, v59);
          if (v21 == v55)
          {
            break;
          }

          if (v21 == v53)
          {
            v22 = type metadata accessor for MetadataRibbonEditorsChoiceView();
            v23 = type metadata accessor for MetadataRibbonEditorsChoiceView;
            v24 = &unk_1009231E0;
            goto LABEL_24;
          }

          if (v21 == v52)
          {
            v22 = type metadata accessor for MetadataRibbonIconWithLabelView(0);
            v23 = type metadata accessor for MetadataRibbonIconWithLabelView;
            v24 = &unk_1009231D8;
            goto LABEL_24;
          }

          if (v21 == v51)
          {
            v22 = type metadata accessor for MetadataRibbonStarRatingView();
            v23 = type metadata accessor for MetadataRibbonStarRatingView;
            v24 = &unk_1009231F0;
            goto LABEL_24;
          }

          if (v21 == v42)
          {
            v22 = type metadata accessor for MetadataRibbonTagView();
            v23 = type metadata accessor for MetadataRibbonTagView;
            v24 = &unk_1009231C8;
            goto LABEL_24;
          }

          if (v21 == v41)
          {
            v22 = type metadata accessor for MetadataRibbonBarView();
            v23 = type metadata accessor for MetadataRibbonBarView;
            v24 = &unk_1009231D0;
            goto LABEL_24;
          }

          if (v21 == v40)
          {
            v22 = type metadata accessor for MetadataRibbonHighlightedTextView();
            v23 = type metadata accessor for MetadataRibbonHighlightedTextView;
            v24 = &unk_1009231B8;
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
        v24 = &unk_1009231E8;
LABEL_24:
        v25 = sub_10001B668(v24, 255, v23);
        v26 = swift_allocObject();
        v26[2] = v22;
        v26[3] = v25;
        v26[4] = v19;
        v27 = sub_100750F34();
        swift_allocObject();

        v28 = sub_100750EF4();
        sub_1007478D4();
        v71 = v27;
        v72 = &protocol witness table for LayoutViewPlaceholder;
        v70 = v28;
        v73 = sub_100749D74() & 1;
        v74 = sub_100749DB4() & 1;
        sub_100016B4C(v69, v64, &qword_1009231C0);
        v29 = v67;
        LOBYTE(v25) = v68;
        v60 = v64[0];
        v61 = v64[1];
        *&v62[0] = v65;
        sub_100012160(&v66, v62 + 8);
        LOBYTE(v63) = v29;
        HIBYTE(v63) = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1002548E8(0, v18[2] + 1, 1, v18);
        }

        a1 = v54;
        v31 = v18[2];
        v30 = v18[3];
        if (v31 >= v30 >> 1)
        {
          v18 = sub_1002548E8((v30 > 1), v31 + 1, 1, v18);
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
        sub_10000C8CC(v69, &qword_1009231C0);
        goto LABEL_29;
      }

      __break(1u);
    }

    else
    {
LABEL_33:
      (*(v44 + 16))(v43, v48, v46);
      v37 = v50;
      sub_10074ADB4();
      sub_10074ADC4();
      return (*(v45 + 8))(v37, v47);
    }
  }

  return result;
}

void sub_1000194B0()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_lockupView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_appEventView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for AppEventView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_appEventTapGestureRecognizer;
  *(v0 + v3) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v4 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_appEventViewTappedAction);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_impressionsCalculator) = 0;
  v5 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_impressionsUpdateBlock);
  *v5 = 0;
  v5[1] = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_1000195C8(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_appEventView];
  v3 = *(*&v2[OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_appEventCardView] + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupView);
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
  if (CGRectContainsPoint(v24, v21) && ([v5 bounds], v22.x = v16, v22.y = v18, !CGRectContainsPoint(v25, v22)) && *&v1[OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_appEventViewTappedAction])
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

uint64_t sub_10001976C(uint64_t a1, uint64_t a2)
{
  v132 = a2;
  v3 = sub_10000C518(&unk_100923180);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v101[-v5];
  v7 = sub_10074A8C4();
  v130 = *(v7 - 8);
  __chkstk_darwin(v7);
  v129 = &v101[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v135 = sub_10074AE04();
  *&v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v124 = &v101[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_10074CD14();
  v126 = *(v10 - 8);
  v127 = v10;
  __chkstk_darwin(v10);
  v125 = &v101[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1007479B4();
  v139 = *(v12 - 8);
  v140 = v12;
  __chkstk_darwin(v12);
  v14 = &v101[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v138 = &v101[-v16];
  v146 = sub_10074A8A4();
  v137 = *(v146 - 8);
  __chkstk_darwin(v146);
  v128 = &v101[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v147 = &v101[-v19];
  v20 = sub_10000C518(&unk_1009393C0);
  __chkstk_darwin(v20 - 8);
  v123 = &v101[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v145 = &v101[-v23];
  v24 = sub_100747C14();
  __chkstk_darwin(v24 - 8);
  v25 = sub_10074F704();
  v131 = *(v25 - 8);
  __chkstk_darwin(v25);
  v142 = &v101[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100742574();
  sub_10001B668(&qword_100923190, 255, &type metadata accessor for AppEventSearchResult);
  result = sub_1007468B4();
  v141 = v184[0];
  if (v184[0])
  {
    v120 = v7;
    sub_100746884();
    if (qword_100920C20 != -1)
    {
      swift_once();
    }

    sub_10074F6A4();
    sub_10074F674();
    v29 = v28;
    v30 = sub_100742564();

    v31 = sub_10074EF34();
    v111 = v32;
    v112 = v31;
    v33 = sub_10074EFB4();
    v113 = v34;
    v114 = v33;
    v35 = sub_10074EED4();
    v144 = v30;

    if (v35 && (v36 = sub_100748644(), , v36))
    {
      v37 = sub_10074F764();
      v115 = v38;
      v116 = v37;
    }

    else
    {
      v115 = 0;
      v116 = 0;
    }

    v136 = sub_100745DF4();
    (*(v134 + 56))(v145, 1, 1, v135);
    v133 = sub_100745E14();
    v102 = sub_100745E34();
    swift_getKeyPath();
    sub_100746914();

    v39 = v184[5];
    if (qword_100920410 != -1)
    {
      swift_once();
    }

    v40 = v146;
    v41 = sub_10000D0FC(v146, qword_10097E010);
    v117 = *(v137 + 16);
    v118 = v137 + 16;
    v117(v147, v41, v40);
    v42 = sub_100753804();
    v143 = v39;
    v121 = v25;
    v122 = a1;
    v104 = v4;
    v105 = v3;
    v103 = v6;
    if (v42)
    {
      if (qword_100921988 != -1)
      {
        swift_once();
      }

      v43 = qword_10093FF40;
    }

    else
    {
      if (qword_100921990 != -1)
      {
        swift_once();
      }

      v43 = qword_10093FF58;
    }

    v44 = v140;
    v45 = sub_10000D0FC(v140, v43);
    v46 = v139;
    (*(v139 + 16))(v14, v45, v44);
    (*(v46 + 32))(v138, v14, v44);
    v47 = [v143 preferredContentSizeCategory];
    sub_100753924();

    sub_100747964();
    sub_100747994();
    sub_10074A894();
    sub_10074A884();
    v110 = sub_100750F34();
    swift_allocObject();
    v119 = sub_100750F14();
    v48 = objc_opt_self();
    v108 = v48;
    v49 = [v48 preferredFontForTextStyle:UIFontTextStyleBody];
    v50 = sub_10074F3F4();
    v184[3] = v50;
    v51 = sub_10001B668(&qword_10092AC70, 255, &type metadata accessor for Feature);
    v184[4] = v51;
    v107 = v51;
    v52 = sub_10000D134(v184);
    v53 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v54 = *(v50 - 8);
    v55 = *(v54 + 104);
    v109 = v54 + 104;
    v106 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v55(v52, enum case for Feature.measurement_with_labelplaceholder(_:), v50);
    sub_10074FC74();
    sub_10000C620(v184);
    v56 = v125;
    sub_10074CD04();
    sub_10074CCE4();
    v57 = v127;
    v126 = *(v126 + 8);
    (v126)(v56, v127);
    v58 = [v48 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v183[3] = v50;
    v183[4] = v51;
    v59 = sub_10000D134(v183);
    v55(v59, v53, v50);
    sub_10074FC74();
    sub_10000C620(v183);
    sub_10074CD04();
    sub_10074CCE4();
    v60 = v126;
    (v126)(v56, v57);
    v61 = [v108 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v182[3] = v50;
    v182[4] = v107;
    v62 = sub_10000D134(v182);
    v55(v62, v106, v50);
    sub_10074FC74();
    sub_10000C620(v182);
    sub_10074CD04();
    sub_10074CCE4();
    v60(v56, v57);
    v63 = v136;
    LODWORD(v127) = sub_1000189E4(0, v136) & (v63 != 0);
    if (v127 == 1)
    {
      v64 = v110;
      v65 = objc_allocWithZone(sub_100751034());
      v66 = v143;
      v67 = sub_100751024();
      v68 = v123;
      sub_100016B4C(v145, v123, &unk_1009393C0);
      v69 = v134;
      v70 = *(v134 + 48);
      v71 = v135;
      if (v70(v68, 1, v135) == 1)
      {
        v72 = v124;
        _s22SubscribePageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
        if (v70(v68, 1, v71) != 1)
        {
          sub_10000C8CC(v68, &unk_1009393C0);
        }
      }

      else
      {
        v72 = v124;
        (*(v69 + 32))(v124, v68, v71);
      }

      v74 = v67;
      sub_100018CE4(v136, v72, v74);

      (*(v69 + 8))(v72, v71);
      swift_allocObject();
      v73 = sub_100750F04();
    }

    else
    {
      v64 = v110;
      swift_allocObject();
      v73 = sub_100750F14();
    }

    v75 = v73;

    v76 = v133;
    if ((sub_1000189E4(v133, 0) & (v76 != 0)) == 1)
    {
      sub_100077794(v76, v102 & 1);
      swift_allocObject();
      v77 = sub_100750F04();
    }

    else
    {
      swift_allocObject();
      v77 = sub_100750F14();
    }

    v78 = v77;
    v117(v128, v147, v146);
    v181 = &protocol witness table for LayoutViewPlaceholder;
    v180 = v64;
    v179 = v119;
    v178 = 0;
    *&v176[40] = 0u;
    v177 = 0u;
    sub_10000C824(v184, v176);
    sub_10000C824(v183, &v175);
    v174 = 0;
    v172 = 0u;
    v173 = 0u;
    v171 = 0;
    v169 = 0u;
    v170 = 0u;

    v135 = v78;
    v79 = sub_100750F24();
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
    sub_10000C824(v182, v154);
    v152 = v64;
    v153 = &protocol witness table for LayoutViewPlaceholder;
    v150 = &protocol witness table for LayoutViewPlaceholder;
    v151 = v75;
    v149 = v64;
    v148 = v78;
    v80 = v129;
    sub_10074A8B4();
    sub_100751034();
    sub_10000C518(&unk_1009231A0);
    v81 = swift_allocObject();
    v134 = xmmword_1007A5CF0;
    *(v81 + 16) = xmmword_1007A5CF0;
    v82 = v143;
    *(v81 + 32) = v143;
    v83 = v82;
    v84 = sub_100751044();
    sub_10001B668(&unk_10092AC80, 255, &type metadata accessor for SmallSearchLockupLayout);
    v85 = v120;
    sub_100750404();

    (*(v130 + 8))(v80, v85);
    sub_10000C620(v182);
    sub_10000C620(v183);
    sub_10000C620(v184);
    (*(v139 + 8))(v138, v140);
    (*(v137 + 8))(v147, v146);
    sub_10000C8CC(v145, &unk_1009393C0);

    v86 = sub_100745E14();
    v87 = sub_100745DF4();
    v88 = sub_1000189E4(v86, v87);

    if (v88)
    {
      v89 = v103;
      sub_10074DF44();
      swift_getKeyPath();
      sub_100746914();

      v90 = v184[0];
      v91 = swift_allocObject();
      *(v91 + 16) = v134;
      *(v91 + 32) = v90;
      v92 = v90;
      v93 = sub_100751044();
      sub_10001B5C0();
      v94 = v105;
      sub_100750544();

      (*(v104 + 8))(v89, v94);
    }

    else
    {
      if (qword_10091FDE0 != -1)
      {
        swift_once();
      }

      sub_10000C888(qword_10097C918, qword_10097C930);
      swift_getKeyPath();
      sub_100746914();

      v95 = v184[0];
      sub_100750574();
    }

    v96 = v121;
    v97 = type metadata accessor for AppEventView();
    v98 = sub_100742554();
    v99 = sub_10007DC04();
    ObjectType = swift_getObjectType();
    sub_100194FE8(v29, v98, v99, v132, v97, ObjectType);

    swift_unknownObjectRelease();

    return (*(v131 + 8))(v142, v96);
  }

  return result;
}

void sub_10001A994(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_lockupView);
  v4 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
  v5 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  v18.value.super.isa = 0;
  v18.is_nil = 0;
  sub_100743384(v18, v6);

  v7 = *(v3 + v4);
  sub_1007433C4();
  sub_10001B668(&qword_100925570, 255, &type metadata accessor for ArtworkView);
  v8 = v7;
  sub_100744274();

  v10 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_metadataRibbonView);
  v11 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metadataRibbonItemViews];
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
        sub_100743384(v19, v16);
        sub_100744274();
      }

      v13 += 16;
      --v12;
    }

    while (v12);
  }

  sub_10051207C(a1, 1, v9);
}

uint64_t sub_10001AB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100747064();
  v37 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10074F314();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10074F284();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41[3] = sub_1007428B4();
  v41[4] = &protocol witness table for AppPromotion;
  v41[0] = a1;
  sub_10000C824(v41, v40);

  sub_10000C518(&unk_100923100);
  if (!swift_dynamicCast())
  {
    return sub_10000C620(v41);
  }

  v38 = v10;
  v14 = v39;
  if (qword_100920458 != -1)
  {
    swift_once();
  }

  v34 = v11;
  v15 = type metadata accessor for AppEventCardLayout.Metrics(0);
  sub_10000D0FC(v15, qword_10097E0D8);
  sub_1007504C4();
  v16 = sub_1007427E4();
  v35 = v14;
  v36 = a2;
  if (v16)
  {
    sub_10074EC14();

LABEL_7:

    sub_10074F294();
    sub_10074F254();
    (*(v34 + 1))(v13, v38);
    sub_10074F374();
    v17 = *(a3 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_artworkView);
    sub_10074F324();
    sub_100743364();
    [v17 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500);
      sub_100753E34();
    }

    sub_100743224();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = Strong;
      type metadata accessor for VideoView();
      sub_10001B668(&unk_100923110, 255, type metadata accessor for VideoView);
      sub_100744204();
    }

    else
    {
      sub_1007433C4();
      sub_10001B668(&qword_100925570, 255, &type metadata accessor for ArtworkView);
      sub_100744204();
    }

    goto LABEL_13;
  }

  if (sub_100742804())
  {
    goto LABEL_7;
  }

LABEL_13:
  v20 = *(a3 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupView);
  if (v20)
  {
    v21 = v20;
    sub_100742894();
    v22 = sub_10074EF64();

    if (v22)
    {
      v23 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
      swift_beginAccess();
      v24 = v37;
      (*(v37 + 16))(v8, &v21[v23], v6);
      sub_100746F34();
      (*(v24 + 8))(v8, v6);
      sub_10074F294();
      sub_10074F254();
      v33 = *(v34 + 1);
      v33(v13, v38);
      v25 = sub_10074F374();
      v26 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
      v27 = *&v21[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView];
      v34 = v21;
      v28 = v27;
      sub_10074F324();
      sub_100743364();
      [v28 setContentMode:sub_10074F184()];
      v37 = v25;
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_100016C60(0, &qword_100923500);
        sub_100753E34();
      }

      sub_100743224();

      v29 = *&v21[v26];
      sub_10074F294();
      v30 = sub_10074F254();
      v33(v13, v38);
      [v29 setContentMode:v30];

      v21 = *&v21[v26];
      v31 = v34;

      sub_1007433C4();
      sub_10001B668(&qword_100925570, 255, &type metadata accessor for ArtworkView);
      sub_100744204();
    }
  }

  else
  {
  }

  return sub_10000C620(v41);
}

uint64_t sub_10001B274(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10074F314();
  __chkstk_darwin(v6 - 8);
  sub_10000C824(a1, v19);
  sub_10000C518(&unk_100923100);
  sub_100742574();
  result = swift_dynamicCast();
  if (result)
  {
    sub_10001A994(a2);
    sub_100742564();
    v8 = sub_10074EF24();

    if (v8)
    {
      v9 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
      v18 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_lockupView);
      v10 = qword_100920548;
      v11 = *(v18 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
      if (v10 != -1)
      {
        swift_once();
      }

      v12 = sub_100747064();
      sub_10000D0FC(v12, qword_10097E3A8);
      sub_100746F34();
      [v11 contentMode];
      sub_10074F374();
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
      v13 = *(v18 + v9);
      sub_1007433C4();
      sub_10001B668(&qword_100925570, 255, &type metadata accessor for ArtworkView);
      v14 = v13;
      sub_100744204();
    }

    v15 = *(*(v3 + OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_metadataRibbonView);
    sub_100265EBC(a1, a2);

    v16 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_appEventView);
    v17 = sub_100742554();
    sub_10001AB74(v17, a2, *(v16 + OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_appEventCardView));
  }

  return result;
}

uint64_t sub_10001B5AC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10001B5C0()
{
  result = qword_1009231B0;
  if (!qword_1009231B0)
  {
    sub_10000C724(&unk_100923180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009231B0);
  }

  return result;
}

uint64_t sub_10001B624()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001B668(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10001B6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100747C14();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10074F704();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100742574();
  sub_10001B668(&qword_100923190, 255, &type metadata accessor for AppEventSearchResult);
  result = sub_1007468B4();
  if (v23)
  {
    v20 = a3;
    v21 = v6;
    v23 = _swiftEmptyArrayStorage;
    sub_100742564();
    v11 = sub_10074EF24();

    if (v11)
    {
      if (qword_100920548 != -1)
      {
        swift_once();
      }

      v12 = sub_100747064();
      sub_10000D0FC(v12, qword_10097E3A8);
      sub_100746F34();
      sub_10074F374();
      sub_100753284();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      sub_100753344();
    }

    sub_100742564();
    v13 = sub_100745DF4();

    swift_getKeyPath();
    sub_100746914();

    v14 = v22;
    v15 = sub_100266258(v13, v22);

    sub_10049FCD8(v15);
    sub_100746884();
    if (qword_100920C20 != -1)
    {
      swift_once();
    }

    sub_10074F6A4();
    sub_10074F5A4();
    sub_10001976C(a1, v20);
    type metadata accessor for AppEventView();
    v16 = sub_100742554();
    v17 = sub_10007DC04();
    swift_getObjectType();
    v18 = sub_100195130(v16, v17);

    swift_unknownObjectRelease();
    sub_10049FCD8(v18);
    v19._rawValue = v23;
    sub_100744224(v19);

    return (*(v7 + 8))(v9, v21);
  }

  return result;
}

uint64_t sub_10001BA88()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001BAC0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001BB14(uint64_t a1)
{
  v2 = type metadata accessor for AppEventCardLayout(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 initializeBufferWithCopyOfBuffer for TodayCardGridTracker.TrackedSectionKey(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10001BB94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10001BBDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001BC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, double a8@<D6>, double a9@<D7>)
{
  v73 = a6;
  v71 = a5;
  v85 = a4;
  v88 = a3;
  v89 = a2;
  v91 = a8;
  v92 = a9;
  v93 = a1;
  v90 = a7;
  v78 = sub_10000C518(&qword_100923230);
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v75 = &v67 - v11;
  v74 = sub_10074DF34();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v70 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_10074EA34();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_100751BC4();
  v87 = *(v83 - 8);
  __chkstk_darwin(v83);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10074F6E4();
  v86 = *(v16 - 8);
  __chkstk_darwin(v16);
  v69 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v82 = &v67 - v19;
  __chkstk_darwin(v20);
  v84 = &v67 - v21;
  __chkstk_darwin(v22);
  v24 = &v67 - v23;
  v25 = sub_10074E984();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10000C518(&qword_100923228);
  __chkstk_darwin(v29);
  v68 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v67 - v32;
  sub_100016B4C(v89, &v67 - v32, &unk_10093D6E0);
  v34 = *(v29 + 48);
  v89 = v33;
  sub_100016B4C(v88, &v33[v34], &unk_10093D6E0);
  swift_getKeyPath();
  sub_10000C518(&unk_10092E450);
  sub_1007525B4();

  v88 = v26;
  v35 = v26;
  v36 = v25;
  v37 = (*(v35 + 88))(v28, v25);
  if (v37 == enum case for Shelf.ContentType.singleColumnList(_:))
  {
    v38 = v86;
    (*(v86 + 104))(v24, enum case for PageGrid.Direction.vertical(_:), v16);
    sub_1007455F4();
    v39 = sub_100751BA4();
    (*(v87 + 8))(v15, v83);
    if (v39)
    {
      sub_100745614();
    }

    (*(v38 + 16))(v84, v24, v16);
    sub_1007241C0(1);
    sub_10074F6B4();
    (*(v38 + 8))(v24, v16);
    return sub_10000C8CC(v89, &qword_100923228);
  }

  v67 = v15;
  v40 = v86;
  v41 = v87;
  if (v37 == enum case for Shelf.ContentType.twoColumnList(_:))
  {
    v42 = v82;
    v43 = v16;
    (*(v86 + 104))(v82, enum case for PageGrid.Direction.vertical(_:), v16);
    swift_getKeyPath();
    v44 = v79;
    sub_1007525B4();

    v45 = v80;
    v46 = v81;
    if ((*(v80 + 88))(v44, v81) == enum case for Shelf.ContentsMetadata.searchFocusTwoColumnList(_:))
    {
      (*(v45 + 96))(v44, v46);
      v47 = v72;
      v48 = v70;
      v49 = v44;
      v50 = v74;
      (*(v72 + 32))(v70, v49, v74);
      v51 = sub_10074DF24();
      (*(v47 + 8))(v48, v50);
    }

    else
    {
      (*(v45 + 8))(v44, v46);
      v51 = 1;
    }

    v59 = v83;
    v60 = v41;
    v61 = v67;
    sub_1007455F4();
    v62 = sub_100751BA4();
    (*(v60 + 8))(v61, v59);
    if (v62 & 1) != 0 && (sub_100745614())
    {
      v51 = 1;
    }

    (*(v40 + 16))(v84, v42, v43);
    sub_1007241C0(v51);
    sub_10074F6B4();
    (*(v40 + 8))(v42, v43);
    return sub_10000C8CC(v89, &qword_100923228);
  }

  if (v37 == enum case for Shelf.ContentType.scrollablePill(_:))
  {
    v52 = v86;
    v53 = v84;
    v54 = v16;
    (*(v86 + 104))(v84, enum case for PageGrid.Direction.horizontal(_:), v16);
    v94 = 0x4020000000000000;
    sub_10001CC10();
    v55 = v75;
    sub_10074F614();
    v94 = 0x4020000000000000;
    v56 = v76;
    sub_10074F614();
    (*(v52 + 16))(v69, v53, v54);
    sub_100632ED4(v55, v56);
    sub_10074F6B4();
    v57 = *(v77 + 8);
    v58 = v78;
    v57(v56, v78);
    v57(v55, v58);
    (*(v52 + 8))(v53, v54);
    return sub_10000C8CC(v89, &qword_100923228);
  }

  v94 = v71;
  v95 = v73;
  v64 = v89;
  v65 = v68;
  sub_100016B4C(v89, v68, &qword_100923228);
  v66 = *(v29 + 48);
  sub_10001CBBC();
  sub_100745684();
  sub_10000C8CC(v64, &qword_100923228);
  sub_10000C8CC(v65 + v66, &unk_10093D6E0);
  sub_10000C8CC(v65, &unk_10093D6E0);
  return (*(v88 + 8))(v28, v36);
}

uint64_t sub_10001C77C()
{
  sub_10001CB64();

  return sub_100745684();
}

uint64_t sub_10001C860()
{
  sub_10001CB64();

  return sub_100745674();
}

uint64_t sub_10001C96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  v27[4] = a5;
  v27[5] = a6;
  v27[3] = a4;
  *&v27[1] = a13;
  *&v27[2] = a14;
  v27[0] = a1;
  v17 = sub_10000C518(&qword_100923228);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v27 - v22;
  v24 = *(v14 + 2);
  sub_100016B4C(a2, v27 - v22, &unk_10093D6E0);
  sub_100016B4C(a3, &v23[*(v18 + 56)], &unk_10093D6E0);
  v28 = *v14;
  v29 = v24;
  sub_100016B4C(v23, v20, &qword_100923228);
  v25 = *(v18 + 56);
  sub_100745684();
  sub_10000C8CC(v23, &qword_100923228);
  sub_10000C8CC(&v20[v25], &unk_10093D6E0);
  return sub_10000C8CC(v20, &unk_10093D6E0);
}

unint64_t sub_10001CB64()
{
  result = qword_100923220;
  if (!qword_100923220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100923220);
  }

  return result;
}

unint64_t sub_10001CBBC()
{
  result = qword_100923238;
  if (!qword_100923238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100923238);
  }

  return result;
}

unint64_t sub_10001CC10()
{
  result = qword_100923240;
  if (!qword_100923240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100923240);
  }

  return result;
}

char *sub_10001CC68(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC22SubscribePageExtension34SegmentedControlCollectionViewCell_itemLayoutContext;
  v11 = sub_1007469A4();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v4[OBJC_IVAR____TtC22SubscribePageExtension34SegmentedControlCollectionViewCell_isFirstSetup] = 1;
  v12 = [objc_allocWithZone(UISegmentedControl) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension34SegmentedControlCollectionViewCell_segmentedControl] = v12;
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC22SubscribePageExtension34SegmentedControlCollectionViewCell_segmentedControl]];

  return v17;
}

uint64_t sub_10001CF88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = a2;
  v35 = sub_1007469A4();
  v38 = *(v35 - 8);
  v5 = *(v38 + 64);
  __chkstk_darwin(v35);
  v34 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074F734();
  sub_10001DE98(&qword_1009232A0, &type metadata accessor for PageTabs);
  v39 = a1;
  result = sub_1007468B4();
  v7 = v45;
  if (v45)
  {
    v33 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension34SegmentedControlCollectionViewCell_segmentedControl);
    [v33 removeAllSegments];
    v8 = sub_10074F724();
    v9 = v8;
    v37 = v3;
    v25 = v7;
    if (v8 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
    {
      v11 = 0;
      v31 = v9 & 0xFFFFFFFFFFFFFF8;
      v32 = v9 & 0xC000000000000001;
      v27 = v5 + 7;
      v28 = v38 + 16;
      v26 = v38 + 32;
      v29 = i;
      v30 = v9;
      v12 = v35;
      while (v32)
      {
        v5 = sub_100754574();
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_12;
        }

LABEL_8:
        v44 = v13;
        v43 = sub_10001DEE0();
        v14 = sub_10074F414();
        v41 = v15;
        v42 = v14;
        v16 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v17 = swift_allocObject();
        swift_weakInit();
        v18 = swift_allocObject();
        swift_weakInit();
        v19 = v38;
        v20 = *(v38 + 16);
        v40 = v5;
        v5 = v34;
        v20(v34, v39, v12);
        v21 = (*(v19 + 80) + 40) & ~*(v19 + 80);
        v22 = (v27 + v21) & 0xFFFFFFFFFFFFFFF8;
        v23 = swift_allocObject();
        *(v23 + 2) = v16;
        *(v23 + 3) = v17;
        *(v23 + 4) = v18;
        v9 = v30;
        (*(v19 + 32))(&v23[v21], v5, v12);
        *&v23[v22] = v11;
        v24 = sub_100753FF4();
        [v33 insertSegmentWithAction:v24 atIndex:v11 animated:{0, v25, v26}];

        ++v11;
        if (v44 == v29)
        {
          goto LABEL_15;
        }
      }

      if (v11 >= *(v31 + 16))
      {
        goto LABEL_13;
      }

      v5 = *(v9 + 8 * v11 + 32);

      v13 = v11 + 1;
      if (!__OFADD__(v11, 1))
      {
        goto LABEL_8;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:

    sub_10001D34C(v25, v39);
  }

  return result;
}

uint64_t sub_10001D34C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10000C518(&unk_100925370);
  __chkstk_darwin(v5 - 8);
  v39 = &v30 - v6;
  v7 = sub_10000C518(&qword_1009232A8);
  v40 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  v10 = sub_10000C518(&qword_1009232B0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - v12;
  v14 = sub_10001E120();
  sub_1007468E4();
  v38 = v14;
  sub_100752E84();
  if (v42)
  {
    v31 = v9;
    v32 = v13;
    v33 = a2;
    v34 = v11;
    v36 = v10;
    v37 = v2;
    v15 = sub_10074F724();
    v16 = v15;
    v35 = v7;
    v17 = v15 & 0xFFFFFFFFFFFFFF8;
    if (v15 >> 62)
    {
LABEL_23:
      v18 = sub_100754664();
    }

    else
    {
      v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = 0;
    while (1)
    {
      if (v18 == v19)
      {
        v19 = 0;
        goto LABEL_19;
      }

      if ((v16 & 0xC000000000000001) != 0)
      {
        sub_100754574();
      }

      else
      {
        if (v19 >= *(v17 + 16))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }
      }

      v20 = sub_10074F404();
      v22 = v21;
      if (v20 == sub_10074F714() && v22 == v23)
      {
        break;
      }

      v24 = sub_100754754();

      if (v24)
      {
        goto LABEL_19;
      }

      if (__OFADD__(v19++, 1))
      {
        goto LABEL_22;
      }
    }

LABEL_19:

    sub_1007468F4();
    v26 = v31;
    v27 = sub_100752994();
    __chkstk_darwin(v27);
    *(&v30 - 2) = v19;
    *(&v30 - 8) = 0;
    v28 = v35;
    sub_100752954();
    (*(v40 + 8))(v26, v28);
    v10 = v36;
    v3 = v37;
    v11 = v34;
    v13 = v32;
  }

  else
  {
    v19 = v41;
  }

  [*(v3 + OBJC_IVAR____TtC22SubscribePageExtension34SegmentedControlCollectionViewCell_segmentedControl) setSelectedSegmentIndex:v19];
  return (*(v11 + 8))(v13, v10);
}

void sub_10001D764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_10000C518(&unk_100925370);
  __chkstk_darwin(v8 - 8);
  v9 = sub_10000C518(&qword_1009232A8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  v13 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v13 - 8);
  v15 = &v24 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v27 = a5;
      swift_beginAccess();
      v18 = swift_weakLoadStrong();
      if (v18)
      {
        v19 = v18;
        v25 = v10;
        v26 = a6;
        v20 = sub_10000C518(&unk_100923210);
        sub_1007526C4();
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(v15, 1, v20) == 1)
        {
          sub_10000C8CC(v15, &unk_100923960);
        }

        else
        {
          v22 = sub_10074F424();
          v24 = sub_1003C0F98(v22, 1, v19, v15);

          (*(v21 + 8))(v15, v20);
        }

        sub_1007468F4();
        v23 = sub_100752994();
        __chkstk_darwin(v23);
        *(&v24 - 2) = v26;
        *(&v24 - 8) = 0;
        sub_10001E120();
        sub_100752954();

        (*(v25 + 8))(v12, v9);
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

uint64_t sub_10001DB00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = *(a2 + 8);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

uint64_t type metadata accessor for SegmentedControlCollectionViewCell()
{
  result = qword_100923280;
  if (!qword_100923280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001DBD8()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10001DCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10001DE98(&qword_100923298, type metadata accessor for SegmentedControlCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_10001DD68@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension34SegmentedControlCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100020514(v1 + v3, a1);
}

uint64_t sub_10001DDC0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension34SegmentedControlCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000204A4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_10001DE98(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10001DEE0()
{
  result = qword_100929CC0;
  if (!qword_100929CC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100929CC0);
  }

  return result;
}

uint64_t sub_10001DF2C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001DF64()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001DF9C()
{
  v1 = sub_1007469A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_10001E07C(uint64_t a1)
{
  v3 = *(sub_1007469A4() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10001D764(a1, v5, v6, v7, v1 + v4, v8);
}

unint64_t sub_10001E120()
{
  result = qword_1009232B8;
  if (!qword_1009232B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009232B8);
  }

  return result;
}

uint64_t sub_10001E174(uint64_t result)
{
  v2 = *(v1 + 24);
  *result = *(v1 + 16);
  *(result + 8) = v2;
  return result;
}

void *sub_10001E188(void *a1, int64_t a2, char a3)
{
  result = sub_10002011C(a1, a2, a3, *v3, &qword_100923388, &unk_1007B4FB0, &qword_100922F60);
  *v3 = result;
  return result;
}

void *sub_10001E1C8(void *a1, int64_t a2, char a3)
{
  result = sub_10001E81C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10001E1E8(char *a1, int64_t a2, char a3)
{
  result = sub_10001E950(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10001E208(void *a1, int64_t a2, char a3)
{
  result = sub_10002011C(a1, a2, a3, *v3, &qword_100923340, &unk_1007A6350, &qword_100926520);
  *v3 = result;
  return result;
}

void *sub_10001E248(void *a1, int64_t a2, char a3)
{
  result = sub_10002011C(a1, a2, a3, *v3, &qword_100946760, &unk_1007A63A0, &qword_100923378);
  *v3 = result;
  return result;
}

char *sub_10001E288(char *a1, int64_t a2, char a3)
{
  result = sub_10001EA5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10001E2A8(char *a1, int64_t a2, char a3)
{
  result = sub_10001EB6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10001E2C8(void *a1, int64_t a2, char a3)
{
  result = sub_10001EC8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10001E2E8(size_t a1, int64_t a2, char a3)
{
  result = sub_10001F7B0(a1, a2, a3, *v3, &qword_100923370, &unk_1007A6390, &unk_100935110);
  *v3 = result;
  return result;
}

size_t sub_10001E328(size_t a1, int64_t a2, char a3)
{
  result = sub_10001F7B0(a1, a2, a3, *v3, &qword_1009232C8, &unk_1007A62B0, &qword_1009232D0);
  *v3 = result;
  return result;
}

void *sub_10001E368(void *a1, int64_t a2, char a3)
{
  result = sub_10001EDC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10001E388(size_t a1, int64_t a2, char a3)
{
  result = sub_10001F9C0(a1, a2, a3, *v3, &qword_1009232E8, &unk_1007A62D0, &type metadata accessor for AdamId);
  *v3 = result;
  return result;
}

char *sub_10001E3CC(char *a1, int64_t a2, char a3)
{
  result = sub_10001EEF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10001E3EC(char *a1, int64_t a2, char a3)
{
  result = sub_10001F01C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10001E40C(void *a1, int64_t a2, char a3)
{
  result = sub_10001F358(a1, a2, a3, *v3, &qword_1009232F8, &unk_1007AE120, &unk_100939AF0);
  *v3 = result;
  return result;
}

void *sub_10001E44C(void *a1, int64_t a2, char a3)
{
  result = sub_10001F120(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10001E46C(char *a1, int64_t a2, char a3)
{
  result = sub_10001F254(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10001E48C(void *a1, int64_t a2, char a3)
{
  result = sub_10001F358(a1, a2, a3, *v3, &qword_100923350, &unk_1007A6370, &qword_100923358);
  *v3 = result;
  return result;
}

size_t sub_10001E4CC(size_t a1, int64_t a2, char a3)
{
  result = sub_10001F9C0(a1, a2, a3, *v3, &qword_100923318, &unk_1007A6310, &type metadata accessor for SponsoredSearchAdvert);
  *v3 = result;
  return result;
}

size_t sub_10001E510(size_t a1, int64_t a2, char a3)
{
  result = sub_10001F9C0(a1, a2, a3, *v3, &qword_1009233F8, &unk_1007A64D0, &type metadata accessor for DebugMetricsEvent);
  *v3 = result;
  return result;
}

char *sub_10001E554(char *a1, int64_t a2, char a3)
{
  result = sub_10001F48C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10001E574(char *a1, int64_t a2, char a3)
{
  result = sub_10001F590(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10001E594(void *a1, int64_t a2, char a3)
{
  result = sub_10002011C(a1, a2, a3, *v3, &qword_100923398, &unk_1007A63C0, &qword_1009233A0);
  *v3 = result;
  return result;
}

char *sub_10001E5D4(char *a1, int64_t a2, char a3)
{
  result = sub_10001F6AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10001E5F4(void *a1, int64_t a2, char a3)
{
  result = sub_10002011C(a1, a2, a3, *v3, &qword_1009233C0, &unk_1007A63F8, &qword_1009242A0);
  *v3 = result;
  return result;
}

size_t sub_10001E634(size_t a1, int64_t a2, char a3)
{
  result = sub_10001F7B0(a1, a2, a3, *v3, &qword_1009233B0, &unk_1007B60B0, &qword_1009233B8);
  *v3 = result;
  return result;
}

size_t sub_10001E674(size_t a1, int64_t a2, char a3)
{
  result = sub_10001F9C0(a1, a2, a3, *v3, &unk_1009405F0, &unk_1007A6410, &type metadata accessor for IndexPath);
  *v3 = result;
  return result;
}

size_t sub_10001E6B8(size_t a1, int64_t a2, char a3)
{
  result = sub_10001F9C0(a1, a2, a3, *v3, &qword_1009233C8, &unk_1007A6408, &type metadata accessor for PageFacets.Facet.Option);
  *v3 = result;
  return result;
}

char *sub_10001E6FC(char *a1, int64_t a2, char a3)
{
  result = sub_10001FB9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10001E71C(char *a1, int64_t a2, char a3)
{
  result = sub_10001FCA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10001E73C(void *a1, int64_t a2, char a3)
{
  result = sub_10001FDC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10001E75C(char *a1, int64_t a2, char a3)
{
  result = sub_10001FEFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10001E77C(char *a1, int64_t a2, char a3)
{
  result = sub_10002001C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10001E79C(void *a1, int64_t a2, char a3)
{
  result = sub_10002011C(a1, a2, a3, *v3, &qword_100923348, &unk_1007A6360, &unk_10092D520);
  *v3 = result;
  return result;
}

char *sub_10001E7DC(char *a1, int64_t a2, char a3)
{
  result = sub_100020264(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10001E7FC(char *a1, int64_t a2, char a3)
{
  result = sub_100020384(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10001E81C(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C518(&qword_100923330);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C518(&qword_100923338);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10001E950(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C518(&qword_1009232C0);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10001EA5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C518(&unk_1009259C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10001EB6C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C518(&qword_100923310);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

void *sub_10001EC8C(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C518(&qword_100923328);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C518(&unk_10092BC50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10001EDC0(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C518(&qword_1009232D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C518(&qword_1009232E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10001EEF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C518(&qword_100923380);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10001F01C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C518(&qword_1009232F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_10001F120(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C518(&qword_100923300);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C518(&qword_100923308);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10001F254(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C518(&unk_10092F780);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_10001F358(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    sub_10000C518(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C518(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_10001F48C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C518(&qword_100923320);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_10001F590(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C518(&qword_1009233D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10001F6AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C518(&qword_1009253E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_10001F7B0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000C518(a5);
  v14 = *(sub_10000C518(a7) - 8);
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
  v19 = *(sub_10000C518(a7) - 8);
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

size_t sub_10001F9C0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000C518(a5);
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

char *sub_10001FB9C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C518(&qword_100923360);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10001FCA8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C518(&qword_1009233E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10001FDC8(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C518(&unk_10092F9F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C518(&qword_10092FE70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10001FEFC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C518(&qword_100923368);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10002001C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C518(&qword_1009233A8);
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
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

void *sub_10002011C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    sub_10000C518(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C518(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_100020264(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C518(&qword_1009233D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100020384(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C518(&qword_100923390);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000204A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100923200);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100020514(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100923200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100020584(uint64_t a1)
{
  v2 = sub_10074F704();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074F734();
  sub_10001DE98(&qword_1009232A0, &type metadata accessor for PageTabs);
  result = sub_1007468B4();
  v7 = v30;
  if (!v30)
  {
    return result;
  }

  v8 = sub_10074F724();
  v9 = v8;
  if (v8 >> 62)
  {
    v10 = sub_100754664();
    v29 = v5;
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_15:

    v12 = _swiftEmptyArrayStorage;
LABEL_16:
    swift_getKeyPath();
    v19 = v29;
    sub_100746914();

    sub_10074F674();
    v21 = v20;
    v23 = v22;
    (*(v3 + 8))(v19, v2);
    swift_getKeyPath();
    sub_100746914();

    v24 = v30;
    sub_100410108(v12, v21, v23);
  }

  v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v29 = v5;
  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_4:
  v30 = _swiftEmptyArrayStorage;
  result = sub_10001E1E8(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v25 = v7;
    v26 = v3;
    v27 = v2;
    v28 = a1;
    v11 = 0;
    v12 = v30;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        sub_100754574();
      }

      else
      {
      }

      v13 = sub_10074F414();
      v15 = v14;

      v30 = v12;
      v17 = v12[2];
      v16 = v12[3];
      if (v17 >= v16 >> 1)
      {
        sub_10001E1E8((v16 > 1), v17 + 1, 1);
        v12 = v30;
      }

      ++v11;
      v12[2] = v17 + 1;
      v18 = &v12[2 * v17];
      v18[4] = v13;
      v18[5] = v15;
    }

    while (v10 != v11);

    v2 = v27;
    v3 = v26;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for SegmentedControlCollectionViewCell.State(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SegmentedControlCollectionViewCell.State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SegmentedControlCollectionViewCell.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

unint64_t sub_100020934()
{
  result = qword_1009233E8;
  if (!qword_1009233E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009233E8);
  }

  return result;
}

unint64_t sub_10002098C()
{
  result = qword_1009233F0;
  if (!qword_1009233F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009233F0);
  }

  return result;
}

double sub_1000209FC(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v58 = a3;
  v57 = a2;
  v65 = a1;
  v63 = sub_100749E94();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10074CD14();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100749E34();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v64 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v52 - v12;
  __chkstk_darwin(v14);
  v16 = &v52 - v15;
  v17 = sub_10000C518(&qword_100934D90);
  __chkstk_darwin(v17 - 8);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v52 - v21;
  v60 = sub_100749E74();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v56 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v66 = &v52 - v25;
  swift_getObjectType();
  sub_1000241D0();
  (*(v9 + 56))(v22, 1, 1, v8);
  sub_100016B4C(v22, v19, &qword_100934D90);
  v26 = *(v9 + 48);
  if (v26(v19, 1, v8) == 1)
  {
    (*(v4 + 224))();
    if (v26(v19, 1, v8) != 1)
    {
      sub_10000C8CC(v19, &qword_100934D90);
    }
  }

  else
  {
    (*(v9 + 32))(v16, v19, v8);
  }

  v27 = *(v9 + 16);
  v27(v13, v16, v8);
  v28 = (*(v9 + 88))(v13, v8);
  if (v28 == enum case for MixedMediaLockupLayout.LockupPosition.top(_:))
  {
    if (qword_100920A88 != -1)
    {
      swift_once();
    }

    sub_10000C824(qword_10097FE28, &v72);
  }

  else if (v28 == enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:))
  {
    if (qword_100920A80 != -1)
    {
      swift_once();
    }

    sub_10000C824(qword_10097FE00, &v72);
  }

  else
  {
    if (qword_100920A88 != -1)
    {
      swift_once();
    }

    sub_10000C824(qword_10097FE28, &v72);
    (*(v9 + 8))(v13, v8);
  }

  v27(v64, v16, v8);
  sub_10000C824(&v72, v71);
  sub_100016C60(0, &qword_100923AB0);
  if (qword_100921460 != -1)
  {
    swift_once();
  }

  v29 = sub_100750534();
  sub_10000D0FC(v29, qword_100981A58);
  v55 = a4;
  v30 = [a4 traitCollection];
  sub_100753C14();

  if (qword_100921708 != -1)
  {
    swift_once();
  }

  v31 = sub_100750B04();
  v32 = sub_10000D0FC(v31, qword_100982098);
  v69 = v31;
  v70 = &protocol witness table for StaticDimension;
  v33 = sub_10000D134(v68);
  (*(*(v31 - 8) + 16))(v33, v32, v31);
  v34 = v65;
  sub_100749E54();
  sub_10000C620(&v72);
  (*(v9 + 8))(v16, v8);
  sub_10000C8CC(v22, &qword_100934D90);
  v35 = sub_100750F34();
  swift_allocObject();
  v36 = sub_100750EF4();
  if (v58)
  {
    v37 = HIBYTE(v58) & 0xF;
    if ((v58 & 0x2000000000000000) == 0)
    {
      v37 = v57 & 0xFFFFFFFFFFFFLL;
    }

    v38 = v55;
    if (!v37 && (v34 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_27:

    v39 = [v38 traitCollection];
    sub_100753C14();

    v40 = sub_10074F3F4();
    *(&v73 + 1) = v40;
    v74 = sub_100026694(&qword_10092AC70, &type metadata accessor for Feature);
    v41 = sub_10000D134(&v72);
    (*(*(v40 - 8) + 104))(v41, enum case for Feature.measurement_with_labelplaceholder(_:), v40);
    sub_10074FC74();
    sub_10000C620(&v72);
    v42 = v52;
    sub_10074CD04();
    sub_10074CCE4();
    (*(v53 + 8))(v42, v54);
    goto LABEL_28;
  }

  v38 = v55;
  if (v34)
  {
    goto LABEL_27;
  }

LABEL_25:
  v74 = 0;
  v72 = 0u;
  v73 = 0u;
LABEL_28:
  v43 = v59;
  v44 = v66;
  v45 = v60;
  (*(v59 + 16))(v56, v66, v60);
  v71[3] = v35;
  v71[4] = &protocol witness table for LayoutViewPlaceholder;
  v71[0] = v36;
  swift_allocObject();

  v46 = sub_100750F14();
  v69 = v35;
  v70 = &protocol witness table for LayoutViewPlaceholder;
  v68[0] = v46;
  sub_100016B4C(&v72, v67, &qword_10092BC30);
  v47 = v61;
  sub_100749E84();
  sub_100026694(&qword_100923460, &type metadata accessor for MixedMediaLockupLayout);
  v48 = v63;
  sub_100750404();
  v50 = v49;

  (*(v62 + 8))(v47, v48);
  sub_10000C8CC(&v72, &qword_10092BC30);
  (*(v43 + 8))(v44, v45);
  return v50;
}

unint64_t sub_1000214FC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, void, uint64_t, uint64_t), uint64_t a5, void *a6)
{
  v7 = v6;
  v237 = a5;
  v246 = a4;
  v257 = a3;
  ObjectType = swift_getObjectType();
  v10 = sub_10000C518(&qword_100923450);
  __chkstk_darwin(v10 - 8);
  v219 = &v215 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v224 = &v215 - v13;
  v236 = sub_10074EAB4();
  v248 = *(v236 - 8);
  __chkstk_darwin(v236);
  v15 = &v215 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000C518(&unk_1009281C0);
  __chkstk_darwin(v16 - 8);
  v232 = &v215 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v233 = &v215 - v19;
  v20 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v20 - 8);
  v231 = &v215 - v21;
  v22 = sub_100744864();
  __chkstk_darwin(v22 - 8);
  v223 = &v215 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v222 = &v215 - v25;
  __chkstk_darwin(v26);
  v228 = &v215 - v27;
  __chkstk_darwin(v28);
  v227 = &v215 - v29;
  v230 = sub_100744894();
  v229 = *(v230 - 8);
  __chkstk_darwin(v230);
  v221 = &v215 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v226 = &v215 - v32;
  v235 = sub_100747D94();
  v234 = *(v235 - 8);
  __chkstk_darwin(v235);
  v225 = &v215 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v250 = &v215 - v35;
  v218 = type metadata accessor for ScreenshotDisplayConfiguration();
  v217 = *(v218 - 8);
  __chkstk_darwin(v218);
  v242 = &v215 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = sub_1007504F4();
  v265 = *(v256 - 8);
  __chkstk_darwin(v256);
  v247 = &v215 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = sub_100746B04();
  v239 = *(v240 - 8);
  __chkstk_darwin(v240);
  v238 = &v215 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_100746A94();
  v261 = *(v39 - 8);
  v262 = v39;
  __chkstk_darwin(v39);
  v216 = &v215 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v251 = (&v215 - v42);
  __chkstk_darwin(v43);
  v260 = &v215 - v44;
  v259 = sub_10074A7F4();
  v266 = *(v259 - 8);
  __chkstk_darwin(v259);
  v241 = &v215 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v267 = &v215 - v47;
  v245 = sub_100749A94();
  v244 = *(v245 - 8);
  __chkstk_darwin(v245);
  v243 = &v215 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v49 - 8);
  v220 = &v215 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v255 = &v215 - v52;
  __chkstk_darwin(v53);
  v268 = &v215 - v54;
  v55 = sub_10000C518(&unk_100925520);
  __chkstk_darwin(v55 - 8);
  v264 = &v215 - v56;
  v57 = sub_10000C518(&unk_100925990);
  __chkstk_darwin(v57 - 8);
  v269 = &v215 - v58;
  v59 = sub_10000C518(&unk_1009259A0);
  __chkstk_darwin(v59 - 8);
  v263 = &v215 - v60;
  v61 = sub_10000C518(&unk_100925530);
  __chkstk_darwin(v61 - 8);
  v258 = &v215 - v62;
  v63 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v63 - 8);
  v65 = (&v215 - v64);
  v66 = sub_100745DC4();
  v67 = *(v66 - 8);
  __chkstk_darwin(v66);
  v69 = &v215 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_10000C518(&qword_100923458);
  __chkstk_darwin(v70 - 8);
  v72 = &v215 - v71;
  v73 = sub_10000C518(&qword_100934D90);
  *&v74 = __chkstk_darwin(v73 - 8).n128_u64[0];
  v76 = &v215 - v75;
  v77 = [a6 snapshotPageTraitEnvironment];
  *&v7[OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_pageTraits] = v77;
  swift_unknownObjectRelease();
  v253 = a1;
  sub_100745DB4();
  v78 = (*(v67 + 48))(v72, 1, v66);
  v254 = v7;
  v249 = v15;
  if (v78 == 1)
  {
    sub_10000C8CC(v72, &qword_100923458);
    v79 = sub_100749E34();
    (*(*(v79 - 8) + 56))(v76, 1, 1, v79);
  }

  else
  {
    (*(v67 + 16))(v69, v72, v66);
    v80 = (*(v67 + 88))(v69, v66);
    if (v80 == enum case for MixedMediaLockup.LockupPosition.top(_:))
    {
      v81 = enum case for MixedMediaLockupLayout.LockupPosition.top(_:);
      v82 = sub_100749E34();
      (*(*(v82 - 8) + 104))(v76, v81, v82);
    }

    else
    {
      v83 = v80;
      v84 = enum case for MixedMediaLockup.LockupPosition.bottom(_:);
      v82 = sub_100749E34();
      v85 = *(*(v82 - 8) + 104);
      if (v83 == v84)
      {
        v85(v76, enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:), v82);
      }

      else
      {
        v85(v76, enum case for MixedMediaLockupLayout.LockupPosition.top(_:), v82);
        (*(v67 + 8))(v69, v66);
      }
    }

    (*(v67 + 8))(v72, v66);
    sub_100749E34();
    (*(*(v82 - 8) + 56))(v76, 0, 1, v82);
    v7 = v254;
  }

  v86 = ObjectType;
  v87 = OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_overrideLockupPosition;
  swift_beginAccess();
  sub_100024160(v76, &v7[v87]);
  swift_endAccess();
  [v7 setNeedsLayout];
  sub_10000C8CC(v76, &qword_100934D90);
  v88 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_lockupView];
  v89 = sub_10000C518(&unk_10092EEA0);
  (*(*(v89 - 8) + 56))(v65, 1, 1, v89);
  v90 = sub_100742E24();
  v91 = v258;
  (*(*(v90 - 8) + 56))(v258, 1, 1, v90);
  v92 = sub_100745E94();
  v93 = v263;
  (*(*(v92 - 8) + 56))(v263, 1, 1, v92);
  v94 = sub_10000C518(&unk_100925560);
  v95 = v269;
  (*(*(v94 - 8) + 56))(v269, 1, 1, v94);
  v96 = sub_10074F8B4();
  v97 = v264;
  (*(*(v96 - 8) + 56))(v264, 1, 1, v96);
  v98 = v88;
  v99 = v253;
  sub_100656038(v253, v98, v65, v257, 0, 0, v91, v93, v97, v95);
  sub_10000C8CC(v97, &unk_100925520);
  v98[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_1001CE71C();
  [v98 setNeedsLayout];

  sub_10000C8CC(v95, &unk_100925990);
  sub_10000C8CC(v93, &unk_1009259A0);
  sub_10000C8CC(v91, &unk_100925530);
  v100 = sub_10000C8CC(v65, &unk_100925540);
  v101 = (*(v86 + 192))(v100);
  v264 = 0;
  v102 = v268;
  if ((v101 & 1) == 0)
  {
    goto LABEL_19;
  }

  result = sub_100745DD4();
  if (result >> 62)
  {
    v104 = result;
    v105 = sub_100754664();
    result = v104;
    if (v105)
    {
      goto LABEL_13;
    }

LABEL_18:

    v264 = 0;
    goto LABEL_19;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_18;
  }

LABEL_13:
  if ((result & 0xC000000000000001) != 0)
  {
    v264 = sub_100754574();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_90;
    }

    v264 = *(result + 32);
  }

LABEL_19:
  if (((*(v86 + 216))() & 1) == 0)
  {
    v106 = 0;
    v263 = 0;
    goto LABEL_30;
  }

  result = sub_100745E54();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

LABEL_28:

    v263 = 0;
    goto LABEL_29;
  }

  v107 = result;
  v108 = sub_100754664();
  result = v107;
  if (!v108)
  {
    goto LABEL_28;
  }

LABEL_22:
  if ((result & 0xC000000000000001) != 0)
  {
    v263 = sub_100754574();
    goto LABEL_25;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v263 = *(result + 32);

LABEL_25:

LABEL_29:
  v106 = sub_100745DE4();
LABEL_30:
  v269 = v106;
  v258 = sub_100745E04();
  v109 = v243;
  sub_100749A74();
  sub_100026694(&unk_100929800, &type metadata accessor for ComponentLayoutOptions);
  v110 = v245;
  v111 = sub_100754324();
  (*(v244 + 8))(v109, v110);
  if (v111)
  {
    v112 = 1;
  }

  else
  {
    v113 = ASKDeviceTypeGetCurrent();
    sub_100393210();

    v112 = 0;
  }

  v114 = *(v265 + 56);
  v265 += 56;
  v246 = v114;
  v114(v102, v112, 1, v256);
  v115 = v267;
  sub_100745E24();
  v99 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_mediaView];
  v116 = sub_100745E04();
  v117 = sub_100745DE4();
  v118 = ASKDeviceTypeGetCurrent();
  v119 = v260;
  v121 = v263;
  v120 = v264;
  (*(v86 + 456))(v116, v117, v264, v263, v118, v115);

  v271[3] = &type metadata for CGFloat;
  v271[4] = &protocol witness table for CGFloat;
  v271[0] = 0x4021000000000000;
  sub_10000C824(v271, v270);
  v97 = *(v261 + 16);
  (v97)(v251, v119, v262);
  if (v269 | v258)
  {
    sub_100750504();
    v93 = v249;
    v122 = v120;
    v65 = &stru_1008F2000;
  }

  else
  {
    result = sub_100631A30(v120, v121, 0, 1);
    v122 = v120;
    if (result >> 62)
    {
      v192 = result;
      v123 = sub_100754664();
      result = v192;
    }

    else
    {
      v123 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v93 = v249;
    v65 = &stru_1008F2000;
    if (v123)
    {
      if ((result & 0xC000000000000001) != 0)
      {
        sub_100754574();
        goto LABEL_40;
      }

      if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

LABEL_40:

        sub_10074F2A4();
        sub_100750504();

        goto LABEL_43;
      }

LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    sub_100750504();
  }

LABEL_43:
  sub_100016B4C(v268, v255, &unk_1009281D0);
  v124 = v238;
  sub_100746AD4();
  sub_10000C620(v271);
  v125 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_metrics;
  swift_beginAccess();
  v126 = v239;
  v127 = &v99[v125];
  v128 = v240;
  (*(v239 + 24))(v127, v124, v240);
  swift_endAccess();
  [v99 v65[51].attr];
  (*(v126 + 8))(v124, v128);
  if (v122)
  {
    v129 = sub_100743844();
  }

  else
  {
    v129 = 0;
  }

  sub_100743864();
  v130 = v242;
  sub_1002898DC(v129, v242);

  v131 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_screenshotsDisplayConfiguration;
  swift_beginAccess();
  sub_1000243DC(v130, &v99[v131]);
  swift_endAccess();
  sub_10062F1F4();
  sub_100024440(v130);
  if (v122)
  {
    v122 = sub_100743844();
  }

  v132 = v241;
  *&v99[OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_platform] = v122;

  sub_10062F3F8();

  v133 = v266;
  v134 = v259;
  (*(v266 + 16))(v132, v267, v259);
  v135 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (*(v133 + 24))(&v99[v135], v132, v134);
  swift_endAccess();
  [v99 v65[51].attr];
  v136 = *(v133 + 8);
  v266 = v133 + 8;
  v251 = v136;
  v136(v132, v134);
  if (!v269)
  {
    if (!v263)
    {
      goto LABEL_94;
    }

    result = sub_10074F794();
    if (!(result >> 62))
    {
      if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }

LABEL_93:

LABEL_94:
      v195 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView;
      v196 = *&v99[OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView];
      if (v196)
      {
        [v196 removeFromSuperview];
        v197 = *&v99[v195];
      }

      else
      {
        v197 = 0;
      }

      v156 = v254;
      v157 = v248;
      *&v99[v195] = 0;

      v152 = v65;
      [v99 v65[51].attr];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_103;
      }

      v199 = Strong;
      sub_100026694(&qword_1009230E0, type metadata accessor for VideoView);
      v200 = [v199 superview];
      if (v200)
      {
        v201 = v200;
        sub_100016C60(0, &qword_100922300);
        v202 = v99;
        v203 = sub_100753FC4();

        v157 = v248;
        if ((v203 & 1) == 0)
        {
          goto LABEL_103;
        }

        v204 = swift_unknownObjectWeakLoadStrong();
        if (!v204)
        {
          goto LABEL_103;
        }

        v199 = v204;
        [v204 removeFromSuperview];
      }

LABEL_103:
      swift_unknownObjectWeakAssign();
      v205 = swift_unknownObjectWeakLoadStrong();
      if (v205)
      {
        v206 = v205;
        [v99 addSubview:v205];
      }

      sub_10062FDFC();
      [v99 v65[51].attr];
      goto LABEL_106;
    }

LABEL_92:
    v193 = result;
    v194 = sub_100754664();
    result = v193;
    if (v194)
    {
LABEL_62:
      if ((result & 0xC000000000000001) != 0)
      {
        v255 = sub_100754574();
      }

      else
      {
        if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v255 = *(result + 32);
      }

      v159 = v216;
      v160 = v262;
      (v97)(v216, v260, v262);
      v161 = v261;
      v162 = (*(v261 + 88))(v159, v160);
      v163 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
      (*(v161 + 8))(v159, v160);
      if (v162 == v163)
      {
        v164 = 1;
        v156 = v254;
        v93 = v249;
        v165 = v224;
      }

      else
      {
        v167 = sub_10074F784();
        v165 = v224;
        sub_1002898DC(v167, v224);

        v164 = 0;
        v156 = v254;
        v93 = v249;
      }

      v168 = v217;
      v169 = v218;
      (*(v217 + 56))(v165, v164, 1, v218);
      (*(v229 + 104))(v221, enum case for VideoFillMode.scaleAspectFill(_:), v230);
      sub_10074EC14();
      sub_10074F2A4();
      v170 = v220;
      sub_100750504();

      v246(v170, 0, 1, v256);
      sub_10074EBB4();
      sub_10074EBF4();
      LODWORD(v265) = sub_10074EBC4();
      sub_10074EBA4();
      sub_10074EC04();
      v171 = v219;
      sub_100016B4C(v165, v219, &qword_100923450);
      if ((*(v168 + 48))(v171, 1, v169) == 1)
      {
        sub_10000C8CC(v171, &qword_100923450);
      }

      else
      {
        sub_100024440(v171);
      }

      sub_100747D74();
      sub_1007464C4();
      sub_1007526E4();
      v172 = v271[0];
      sub_10074EB94();
      v173 = v231;
      sub_10074EC24();
      v174 = sub_100741264();
      (*(*(v174 - 8) + 56))(v173, 0, 1, v174);
      v175 = v233;
      sub_10074EBE4();
      v176 = v232;
      sub_10074EBD4();
      type metadata accessor for VideoView();
      sub_100026694(&qword_1009230E0, type metadata accessor for VideoView);
      v265 = v172;
      v177 = sub_1007464A4();
      sub_10000C8CC(v176, &unk_1009281C0);
      sub_10000C8CC(v175, &unk_1009281C0);
      sub_10000C8CC(v173, &unk_100923970);
      sub_10000C8CC(v271, &unk_1009276E0);
      v178 = swift_unknownObjectWeakLoadStrong();
      if (!v178)
      {
        goto LABEL_79;
      }

      v179 = v178;
      v180 = [v178 superview];
      if (v180)
      {
        v181 = v180;
        sub_100016C60(0, &qword_100922300);
        v182 = v99;
        v183 = sub_100753FC4();

        v156 = v254;
        if ((v183 & 1) == 0)
        {
          goto LABEL_79;
        }

        v184 = swift_unknownObjectWeakLoadStrong();
        if (!v184)
        {
          goto LABEL_79;
        }

        v179 = v184;
        [v184 removeFromSuperview];
      }

LABEL_79:
      swift_unknownObjectWeakAssign();
      v185 = swift_unknownObjectWeakLoadStrong();
      if (v185)
      {
        v186 = v185;
        [v99 addSubview:v185];
      }

      sub_10062FDFC();
      [v99 setNeedsLayout];

      v187 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView;
      v188 = *&v99[OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView];
      v157 = v248;
      v189 = v224;
      if (v188)
      {
        [v188 removeFromSuperview];
        v190 = *&v99[v187];
      }

      else
      {
        v190 = 0;
      }

      v191 = v235;
      *&v99[v187] = 0;

      v152 = &stru_1008F2000;
      [v99 setNeedsLayout];

      (*(v234 + 8))(v225, v191);
      sub_10000C8CC(v189, &qword_100923450);
      goto LABEL_106;
    }

    goto LABEL_93;
  }

  (*(v229 + 104))(v226, enum case for VideoFillMode.scaleAspectFill(_:), v230);

  sub_10074EC14();
  sub_10074F2A4();
  v137 = v93;
  v138 = v255;
  sub_100750504();

  v246(v138, 0, 1, v256);
  sub_10074EBB4();
  sub_10074EBF4();
  sub_10074EBC4();
  sub_10074EBA4();
  sub_10074EC04();
  v93 = v137;
  sub_100747D74();
  sub_1007464C4();
  sub_1007526E4();
  sub_10074EB94();
  v139 = v231;
  sub_10074EC24();
  v140 = sub_100741264();
  (*(*(v140 - 8) + 56))(v139, 0, 1, v140);
  v141 = v233;
  sub_10074EBE4();
  v142 = v232;
  sub_10074EBD4();
  type metadata accessor for VideoView();
  sub_100026694(&qword_1009230E0, type metadata accessor for VideoView);
  v143 = sub_1007464A4();
  sub_10000C8CC(v142, &unk_1009281C0);
  sub_10000C8CC(v141, &unk_1009281C0);
  sub_10000C8CC(v139, &unk_100923970);
  sub_10000C8CC(v271, &unk_1009276E0);
  v144 = swift_unknownObjectWeakLoadStrong();
  if (v144)
  {
    v145 = v144;
    v146 = [v144 superview];
    if (v146)
    {
      v147 = v146;
      sub_100016C60(0, &qword_100922300);
      v148 = v99;
      v149 = sub_100753FC4();

      if ((v149 & 1) == 0)
      {
        goto LABEL_55;
      }

      v150 = swift_unknownObjectWeakLoadStrong();
      if (!v150)
      {
        goto LABEL_55;
      }

      v145 = v150;
      [v150 removeFromSuperview];
    }
  }

LABEL_55:
  swift_unknownObjectWeakAssign();
  v151 = swift_unknownObjectWeakLoadStrong();
  v152 = &stru_1008F2000;
  if (v151)
  {
    v153 = v151;
    [v99 addSubview:v151];
  }

  sub_10062FDFC();
  [v99 setNeedsLayout];

  v154 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView;
  v155 = *&v99[OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView];
  v156 = v254;
  v157 = v248;
  if (v155)
  {
    [v155 removeFromSuperview];
    v158 = *&v99[v154];
  }

  else
  {
    v158 = 0;
  }

  v166 = v235;
  *&v99[v154] = 0;

  [v99 setNeedsLayout];

  (*(v234 + 8))(v250, v166);
LABEL_106:
  v207 = v152;
  [v99 v152[51].attr];

  (*(v261 + 8))(v260, v262);
  v208 = *&v156[OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_taglineLabel];
  sub_10074EA74();
  sub_100026694(&unk_100925360, &type metadata accessor for Shelf.PresentationHints);
  v209 = v236;
  v210 = sub_100754324();
  v211 = *(v157 + 8);
  v211(v93, v209);
  if ((v210 & 1) != 0 && ((*(ObjectType + 472))(v253), v212))
  {
    v213 = sub_100753064();
    v207 = 0x1008F2000;
  }

  else
  {
    v213 = 0;
  }

  [v208 setText:v213];

  sub_10074EA74();
  v214 = sub_100754324();
  v211(v93, v209);
  v156[OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_alwaysIncludeTaglineSpace] = v214 & 1;
  [v156 *(v207 + 824)];
  [v156 *(v207 + 824)];

  v251(v267, v259);
  return sub_10000C8CC(v268, &unk_1009281D0);
}