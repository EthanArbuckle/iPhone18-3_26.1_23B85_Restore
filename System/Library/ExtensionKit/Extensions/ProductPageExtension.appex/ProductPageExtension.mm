void sub_100003C7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100003C9C(uint64_t a1, void *a2, void *a3)
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

void sub_100003E58(uint64_t a1)
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

uint64_t sub_1000040B8(uint64_t a1)
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

void sub_100005014(uint64_t a1)
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

void sub_100005300(uint64_t a1)
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

uint64_t sub_100006290(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void sub_100006B98(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 1.0, 1.0);
  v2 = [*(a1 + 32) toastView];
  v4 = v5;
  [v2 setTransform:&v4];

  v3 = [*(a1 + 32) toastView];
  [v3 setAlpha:1.0];
}

id sub_100006C18(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 duration];

  return [v1 _dismissAfterDelay:?];
}

void sub_1000070D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_10000711C(void *a1, void *a2, double a3)
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

id sub_1000073F0(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000074C0;
  v3[3] = &unk_100881828;
  v4 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000075A0;
  v2[3] = &unk_100881850;
  v2[4] = v4;
  return [UIView animateWithDuration:2 delay:v3 options:v2 animations:0.2 completion:0.0];
}

void sub_1000074C0(uint64_t a1)
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

id sub_1000075A0(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 1.0, 1.0);
  v2 = [*(a1 + 32) view];
  v4 = v5;
  [v2 setTransform:&v4];

  return [*(a1 + 32) dismissViewControllerAnimated:0 completion:0];
}

void sub_1000082D4()
{
  v1 = v0;
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "tintColorDidChange");
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell_lockupView];
  v3 = OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_subtitleLabel;
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_subtitleLabel);
  if (v4)
  {
    v5 = [v4 attributedText];
    if (v5)
    {
      v6 = v5;
      v7 = *(v2 + v3);
      if (v7)
      {
        v8 = v7;
        v9 = [v1 tintColor];
        if (v9)
        {
          v10 = v9;
          v11 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v6];
          v12 = [v6 length];
          v13 = swift_allocObject();
          *(v13 + 16) = v11;
          *(v13 + 24) = v10;
          v14 = swift_allocObject();
          *(v14 + 16) = sub_10000A694;
          *(v14 + 24) = v13;
          v18[4] = sub_10000A6AC;
          v18[5] = v14;
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 1107296256;
          v18[2] = sub_1002464A8;
          v18[3] = &unk_100883C38;
          v15 = _Block_copy(v18);
          v16 = v11;
          v17 = v10;

          [v6 enumerateAttribute:NSForegroundColorAttributeName inRange:0 options:v12 usingBlock:{0x100000, v15}];

          _Block_release(v15);
          LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

          if ((v17 & 1) == 0)
          {
            [v8 setAttributedText:v16];

            goto LABEL_7;
          }

          __break(1u);
        }

        __break(1u);
        return;
      }

LABEL_7:
    }
  }
}

id MetadataRibbonView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10000863C()
{
  v3 = *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell_lockupView) + OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_iconView);
  v5.value.super.isa = 0;
  v5.is_nil = 0;
  sub_10075FCEC(v5, v1);
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  sub_10075FCEC(v6, v2);
  sub_10075FD2C();
  sub_10000999C(&qword_100941820, &type metadata accessor for ArtworkView);
  sub_100760BFC();
  sub_100760BFC();
}

id variable initialization expression of CondensedEditorialSearchResultContentView.viewButton()
{
  v0 = [objc_opt_self() buttonWithType:0];

  return v0;
}

uint64_t variable initialization expression of CondensedEditorialSearchResultContentView.configuration@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for CondensedSearchResultCardLayout.Configuration.standard(_:);
  v3 = sub_100769E4C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

double variable initialization expression of CondensedEditorialSearchResultContentView.artworkSize()
{
  v0 = sub_100769F0C();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100769E4C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, enum case for CondensedSearchResultCardLayout.Configuration.standard(_:), v4);
  sub_100769E2C();
  (*(v5 + 8))(v7, v4);
  sub_100769E6C();
  v9 = v8;
  (*(v1 + 8))(v3, v0);
  return v9;
}

char *variable initialization expression of CondensedInAppPurchaseContentView.inAppPurchaseView()
{
  v0 = sub_10075E77C();
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E6FC();
  v3 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  return sub_1005B7DD4(v2, 1);
}

double variable initialization expression of AppPromotionDetailPageContentLayout.learnMoreButton@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_100008B78@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell()
{
  result = qword_100941708;
  if (!qword_100941708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_100008C7C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100008C88(uint64_t a1, int a2)
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

uint64_t sub_100008CA8(uint64_t result, int a2, int a3)
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

__n128 initializeBufferWithCopyOfBuffer for TodayCardMeshTransforms.MeshPoint(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for TodayCardMeshTransforms.MeshPoint(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TodayCardMeshTransforms.MeshPoint(uint64_t result, int a2, int a3)
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

BOOL sub_100008F38(void *a1, uint64_t *a2)
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

void *sub_100008F68@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_100008F94@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

_DWORD *sub_1000090C0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1000090E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076FF9C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_10000910C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_100009138(_DWORD *a1, int *a2)
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

uint64_t sub_1000091D4(uint64_t a1, id *a2)
{
  result = sub_10076FF7C();
  *a2 = 0;
  return result;
}

uint64_t sub_10000924C(uint64_t a1, id *a2)
{
  v3 = sub_10076FF8C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000092CC@<X0>(void *a1@<X8>)
{
  sub_10076FF9C();
  v2 = sub_10076FF6C();

  *a1 = v2;
  return result;
}

Swift::Int sub_100009310()
{
  v1 = *v0;
  sub_10077175C();
  sub_10077176C(v1);
  return sub_1007717AC();
}

Swift::Int sub_100009358()
{
  v1 = *v0;
  sub_10077175C();
  sub_10077176C(v1);
  return sub_1007717AC();
}

uint64_t sub_10000939C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10000B2FC(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1000093E8(uint64_t a1)
{
  v2 = sub_10000999C(&qword_100941900, type metadata accessor for UIContentSizeCategory);
  v3 = sub_10000999C(&qword_100941908, type metadata accessor for UIContentSizeCategory);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000094A4(uint64_t a1)
{
  v2 = sub_10000999C(&qword_100943320, type metadata accessor for Key);
  v3 = sub_10000999C(&qword_100941CF0, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100009560(uint64_t a1)
{
  v2 = sub_10000999C(&qword_100941CD8, type metadata accessor for TextStyle);
  v3 = sub_10000999C(&unk_100941CE0, type metadata accessor for TextStyle);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000961C(uint64_t a1)
{
  v2 = sub_10000999C(&qword_1009418F0, type metadata accessor for ActivityType);
  v3 = sub_10000999C(&qword_1009418F8, type metadata accessor for ActivityType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000096D8(uint64_t a1)
{
  v2 = sub_10000999C(&qword_100941CC8, type metadata accessor for DeviceType);
  v3 = sub_10000999C(&qword_100941CD0, type metadata accessor for DeviceType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100009794(uint64_t a1)
{
  v2 = sub_10000999C(&qword_100941D28, type metadata accessor for AIDAServiceType);
  v3 = sub_10000999C(&unk_100941D30, type metadata accessor for AIDAServiceType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100009850(uint64_t a1)
{
  v2 = sub_10000999C(&qword_100941910, type metadata accessor for CAGradientLayerType);
  v3 = sub_10000999C(&qword_100941918, type metadata accessor for CAGradientLayerType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000999C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100009A2C(uint64_t a1)
{
  v2 = sub_10000999C(&qword_100941C68, type metadata accessor for NSKeyValueChangeKey);
  v3 = sub_10000999C(&qword_100941C70, type metadata accessor for NSKeyValueChangeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100009AE8(uint64_t a1)
{
  v2 = sub_10000999C(&qword_100941C88, type metadata accessor for Category);
  v3 = sub_10000999C(&qword_100941C90, type metadata accessor for Category);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100009BA4(uint64_t a1)
{
  v2 = sub_10000999C(&qword_100941C78, type metadata accessor for Mode);
  v3 = sub_10000999C(&qword_100941C80, type metadata accessor for Mode);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100009C60(uint64_t a1)
{
  v2 = sub_10000999C(&qword_100941C98, type metadata accessor for AttributeName);
  v3 = sub_10000999C(&qword_100941CA0, type metadata accessor for AttributeName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100009D1C@<X0>(void *a1@<X8>)
{
  v2 = sub_10076FF6C();

  *a1 = v2;
  return result;
}

uint64_t sub_100009D64(uint64_t a1)
{
  v2 = sub_10000999C(&qword_100941CA8, type metadata accessor for FeatureKey);
  v3 = sub_10000999C(&qword_100941CB0, type metadata accessor for FeatureKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100009E20(uint64_t a1)
{
  v2 = sub_10000999C(&qword_100941CB8, type metadata accessor for BuildType);
  v3 = sub_10000999C(&qword_100941CC0, type metadata accessor for BuildType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000A0D4()
{
  sub_10076FF9C();
  v0 = sub_10077012C();

  return v0;
}

uint64_t sub_10000A110()
{
  sub_10076FF9C();
  sub_10077008C();
}

Swift::Int sub_10000A164()
{
  sub_10076FF9C();
  sub_10077175C();
  sub_10077008C();
  v0 = sub_1007717AC();

  return v0;
}

uint64_t sub_10000A1D8()
{
  v0 = sub_10076FF9C();
  v2 = v1;
  if (v0 == sub_10076FF9C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_10077167C();
  }

  return v5 & 1;
}

void sub_10000A260(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10075E57C();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  sub_10000A570(a1, v25);
  sub_10000A5D4(&unk_100942830);
  sub_10075E67C();
  if (swift_dynamicCast())
  {
    v23 = a2;
    v13 = v24;
    v14 = qword_10093F670;
    v15 = *(*&v3[OBJC_IVAR____TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_iconView);
    if (v14 != -1)
    {
      swift_once();
    }

    v16 = sub_10075E77C();
    sub_10000A61C(v16, qword_10099CD70);
    sub_10075E6DC();
    v22 = [v3 backgroundColor];
    sub_10075E65C();
    v17 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_theme;
    swift_beginAccess();
    (*(v7 + 24))(&v15[v17], v12, v6);
    swift_endAccess();
    v21 = *(v7 + 16);
    v21(v10, &v15[v17], v6);
    sub_1005B84F8(v10);
    v18 = *(v7 + 8);
    v18(v10, v6);
    v18(v12, v6);
    v19 = v22;
    [v15 setBackgroundColor:v22];
    sub_1006EC184(v13, v15, v23);
    v21(v12, &v15[v17], v6);
    sub_1005B84F8(v12);
    v18(v12, v6);
    [v15 setNeedsLayout];
  }
}

uint64_t sub_10000A570(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000A5D4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000A61C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000A654()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000A6B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_10000A6CC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10000A6E0(uint64_t a1, int a2)
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

uint64_t sub_10000A700(uint64_t result, int a2, int a3)
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

uint64_t sub_10000B2FC(uint64_t a1)
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

void sub_10000B370(uint64_t a1, unint64_t *a2)
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

char *sub_10000B53C(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_10099C880 + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_10076A14C();
  sub_10076F64C();
  sub_10076FC1C();
  *(v2 + qword_100941EC0) = v10;

  v5 = sub_100480A74(a1, a2);
  v6 = *&v5[qword_10099E390];
  v7 = v5;
  v8 = v6;

  sub_10076668C();

  return v7;
}

id sub_10000B648()
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

id sub_10000B6E0()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10076F9AC();
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
    sub_10076F96C();
    sub_10000CFBC(v14, &unk_1009434C0);
    sub_100770B9C();

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10000B8DC(void *a1)
{
  v1 = a1;
  sub_10000B6E0();
}

void sub_10000B988(void *a1, uint64_t a2, const char **a3, unsigned int *a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_10076A13C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = a1;
  v14.super_class = ObjectType;
  v12 = *a3;
  v13 = a1;
  objc_msgSendSuper2(&v14, v12);
  (*(v9 + 104))(v11, *a4, v8);
  sub_10076A0FC();
  (*(v9 + 8))(v11, v8);
}

void sub_10000BAD0(void *a1, uint64_t a2, uint64_t a3, const char **a4, unsigned int *a5)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10076A13C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = a1;
  v16.super_class = ObjectType;
  v14 = *a4;
  v15 = a1;
  objc_msgSendSuper2(&v16, v14, a3);
  (*(v11 + 104))(v13, *a5, v10);
  sub_10076A0FC();
  (*(v11 + 8))(v13, v10);
}

void sub_10000BC34(void *a1)
{
  v1 = a1;
  sub_10000BC0C();
}

uint64_t sub_10000BCA4(unsigned int *a1, void (*a2)(void), unsigned int *a3)
{
  v20 = a1;
  v6 = v3;
  v7 = sub_10076A13C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10075F2AC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_10000CF08(v6 + v15, v22);
  if (v23)
  {
    sub_10000A570(v22, v21);
    sub_10000CFBC(v22, &unk_10094E1F0);
    v18 = a2;
    v19 = v7;
    sub_10000CF78(v21, v21[3]);
    (*(v12 + 104))(v14, *v20, v11);
    a2 = v18;
    v7 = v19;
    sub_10075F2BC();
    (*(v12 + 8))(v14, v11);
    v16 = sub_10000CD74(v21);
  }

  else
  {
    v16 = sub_10000CFBC(v22, &unk_10094E1F0);
  }

  a2(v16);
  (*(v8 + 104))(v10, *a3, v7);
  sub_10076A0FC();
  return (*(v8 + 8))(v10, v7);
}

void sub_10000BF38(void *a1)
{
  v1 = a1;
  sub_10000BC7C();
}

id sub_10000BF80()
{
  v1 = v0;
  swift_getObjectType();
  sub_10000A5D4(&qword_100942480);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100783C60;
  sub_10000A5D4(&qword_100942488);
  swift_allocObject();
  swift_retain_n();

  v3 = sub_10076A80C();
  v4 = sub_10000CE14();
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  type metadata accessor for BackgroundConfigurationCollectionElementsObserver();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = sub_10000CEC0(&qword_100942498, type metadata accessor for BackgroundConfigurationCollectionElementsObserver);
  *(v2 + 48) = v5;
  *(v2 + 56) = v6;
  sub_10000CEC0(&qword_100942458, type metadata accessor for SearchLandingDiffablePageViewController);
  sub_10076A6DC();
  sub_10076848C();

  result = [v1 collectionView];
  if (result)
  {
    sub_10076AF7C();
    swift_allocObject();
    *(v2 + 64) = sub_10076AF6C();
    *(v2 + 72) = &protocol witness table for ImpressionsCollectionElementsObserver;
    sub_10076A43C();
    swift_allocObject();
    v8 = sub_10076A42C();
    sub_1006DCD48();
    if (swift_dynamicCastClass())
    {
      sub_10076A40C();
      sub_10076A41C();
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

unint64_t sub_10000C258@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for SearchLandingPageShelfLayoutSpacingProvider;
  result = sub_10000CDC0();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10000C28C()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph);
  v2 = sub_10000CEC0(&qword_100942468, &type metadata accessor for SearchLandingDiffablePagePresenter);
  type metadata accessor for SearchLandingPageShelfSupplementaryProvider();
  v3 = swift_allocObject();
  *(v3 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 32) = v2;
  swift_unknownObjectWeakAssign();
  *(v3 + 16) = v1;
  sub_10000CEC0(&qword_100942470, type metadata accessor for SearchLandingPageShelfSupplementaryProvider);

  return v3;
}

uint64_t sub_10000C38C@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  sub_10000CEC0(&qword_100942458, type metadata accessor for SearchLandingDiffablePageViewController);
  v2 = sub_10076A6BC();
  v18[3] = swift_getObjectType();
  v18[0] = v2;
  v3 = sub_10076A6AC();
  v19[3] = swift_getObjectType();
  v19[0] = v3;
  sub_10000CD08(v18, v17);
  sub_10000CD64(v17, v16);
  sub_10000A5D4(&qword_100942460);
  if (swift_dynamicCast() && *&v15[0])
  {
    v14 = v15[0];
    v4 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_10049CD38(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      v4 = sub_10049CD38((v5 > 1), v6 + 1, 1, v4);
    }

    v4[2] = v6 + 1;
    *&v4[2 * v6 + 4] = v14;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_10000CD08(v19, v17);
  sub_10000CD64(v17, v16);
  sub_10000A5D4(&qword_100942460);
  if (swift_dynamicCast() && *&v15[0])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_10049CD38(0, v4[2] + 1, 1, v4);
    }

    v8 = v4[2];
    v7 = v4[3];
    v9 = v15[0];
    if (v8 >= v7 >> 1)
    {
      v13 = sub_10049CD38((v7 > 1), v8 + 1, 1, v4);
      v9 = v15[0];
      v4 = v13;
    }

    v4[2] = v8 + 1;
    *&v4[2 * v8 + 4] = v9;
  }

  swift_arrayDestroy();
  sub_10076A6DC();
  v10 = type metadata accessor for SearchLandingLayoutSectionProvider();
  swift_allocObject();
  sub_10000A570(v17, v16);
  sub_10000A570(v16, v15);

  v11 = sub_1007697CC();
  sub_10000CD74(v16);
  result = sub_10000CD74(v17);
  a1[3] = v10;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = v11;
  return result;
}

unint64_t sub_10000C6A0@<X0>(uint64_t *a1@<X8>)
{
  sub_100760F1C();
  swift_allocObject();
  v2 = sub_100760F0C();
  swift_allocObject();
  v3 = sub_100760F0C();
  a1[3] = &type metadata for SearchLandingPageGridProvider;
  result = sub_10000CCB4();
  a1[4] = result;
  *a1 = v2;
  a1[1] = v3;
  return result;
}

void sub_10000C720(void *a1, uint64_t a2, void *a3)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v9.receiver;
  objc_msgSendSuper2(&v9, "scrollViewWillBeginDragging:", v4);
  v6 = &v5[qword_10099C880];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(ObjectType, v7);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10000C7D0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SearchLandingShelfComponentTypeMappingProvider();
  v3 = swift_allocObject();
  type metadata accessor for AppPromotionsShelfComponentTypeMappingProvider();
  *(v3 + 16) = swift_allocObject();
  type metadata accessor for SmallStoryCardShelfComponentTypeMappingProvider();
  *(v3 + 24) = swift_allocObject();
  a1[3] = v2;
  result = sub_10000CEC0(&qword_100942448, type metadata accessor for SearchLandingShelfComponentTypeMappingProvider);
  a1[4] = result;
  *a1 = v3;
  return result;
}

void sub_10000C884(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100942440);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v6 - v4;
  sub_100734640(a1);
  (*(v3 + 16))(v5, a1, v2);
  if ((*(v3 + 88))(v5, v2) == enum case for DiffablePagePresenter.UpdatePhase.initial<A>(_:))
  {
    sub_10076A0DC();
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }
}

void sub_10000C9BC(uint64_t a1)
{
  v2 = v1;
  v12.receiver = v1;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v4 = sub_10077071C() & 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [v1 traitCollection];
  v6 = sub_10077071C();

  if (v4 == 2 || ((v6 ^ v4) & 1) != 0 || (!a1 ? (v7 = 2) : (v7 = sub_10077070C() & 1), (v8 = [v2 traitCollection], v9 = sub_10077070C(), v8, v7 == 2) || ((v9 ^ v7) & 1) != 0))
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

void sub_10000CAF0(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_10000C9BC(a3);
}

uint64_t sub_10000CB5C()
{

  v1 = v0 + qword_10099C880;

  return sub_10000CC8C(v1);
}

uint64_t sub_10000CB9C(uint64_t a1)
{

  v2 = a1 + qword_10099C880;

  return sub_10000CC8C(v2);
}

uint64_t type metadata accessor for SearchLandingDiffablePageViewController()
{
  result = qword_100941EF0;
  if (!qword_100941EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10000CCB4()
{
  result = qword_100942450;
  if (!qword_100942450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942450);
  }

  return result;
}

uint64_t sub_10000CD08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_10000CD64(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000CD74(uint64_t a1)
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

unint64_t sub_10000CDC0()
{
  result = qword_100942478;
  if (!qword_100942478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942478);
  }

  return result;
}

unint64_t sub_10000CE14()
{
  result = qword_100942490;
  if (!qword_100942490)
  {
    sub_10000CE78(&qword_100942488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942490);
  }

  return result;
}

uint64_t sub_10000CE78(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000CEC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000CF08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_10094E1F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_10000CF78(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000CFBC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000A5D4(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000D01C()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_1009424A0);
  sub_10000A61C(v4, qword_1009424A0);
  if (qword_100940F80 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A1C78);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

char *sub_10000D1F0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension39InAppPurchaseShowcaseCollectionViewCell_itemLayoutContext;
  v10 = sub_10076341C();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC20ProductPageExtension39InAppPurchaseShowcaseCollectionViewCell_lockupView;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for InAppPurchaseShowcaseLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for InAppPurchaseShowcaseCollectionViewCell();
  v12 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v13 = [v12 contentView];
  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v14 = [v12 contentView];
  [v14 addSubview:*&v12[OBJC_IVAR____TtC20ProductPageExtension39InAppPurchaseShowcaseCollectionViewCell_lockupView]];

  return v12;
}

id sub_10000D530()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppPurchaseShowcaseCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InAppPurchaseShowcaseCollectionViewCell()
{
  result = qword_1009424E0;
  if (!qword_1009424E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000D608()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10000D6A4()
{
  if (!qword_100944F90)
  {
    sub_10076341C();
    v0 = sub_1007711AC();
    if (!v1)
    {
      atomic_store(v0, &qword_100944F90);
    }
  }
}

void sub_10000D700()
{
  v3 = *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension39InAppPurchaseShowcaseCollectionViewCell_lockupView) + OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_iconView);
  v5.value.super.isa = 0;
  v5.is_nil = 0;
  sub_10075FCEC(v5, v1);
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  sub_10075FCEC(v6, v2);
  sub_10075FD2C();
  sub_10000D7F8();
  sub_100760BFC();
  sub_100760BFC();
}

unint64_t sub_10000D7F8()
{
  result = qword_100941820;
  if (!qword_100941820)
  {
    sub_10075FD2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100941820);
  }

  return result;
}

void sub_10000D850(uint64_t a1, uint64_t a2)
{
  v5 = sub_10075E57C();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v17 - v10;
  sub_10000A570(a1, v22);
  sub_10000A5D4(&unk_100942830);
  sub_10075E6BC();
  if (swift_dynamicCast())
  {
    v12 = *&v2[OBJC_IVAR____TtC20ProductPageExtension39InAppPurchaseShowcaseCollectionViewCell_lockupView];
    v19 = v21;
    v13 = *(v12 + OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_iconView);
    v17 = sub_10075E69C();
    v20 = [v2 backgroundColor];
    sub_10075E65C();
    v18 = a2;
    v14 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_theme;
    swift_beginAccess();
    (*(v6 + 24))(&v13[v14], v11, v5);
    swift_endAccess();
    v15 = *(v6 + 16);
    v15(v9, &v13[v14], v5);
    sub_1005B84F8(v9);
    v16 = *(v6 + 8);
    v16(v9, v5);
    v16(v11, v5);
    [v13 setBackgroundColor:v20];
    sub_1006EC184(v17, v13, v18);
    v15(v11, &v13[v14], v5);
    sub_1005B84F8(v11);
    v16(v11, v5);
    [v13 setNeedsLayout];
  }
}

uint64_t *sub_10000DB18(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t *sub_10000DB7C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000DBE0(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_1009428D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000DC4C()
{
  result = sub_10076F63C();
  if (v1 == 2 || (v1 & 1) == 0)
  {
    sub_10075EADC();
    swift_allocObject();
    sub_10075EACC();
    sub_10075E85C();
    swift_allocObject();
    sub_10075E80C();
    sub_10075E81C();
    sub_10075E9AC();
    sub_10075E98C();
    sub_10075E9DC();
    sub_10075E9CC();
    sub_10075E1BC();
    sub_10075E1AC();
  }

  return result;
}

uint64_t sub_10000DD38(void *a1)
{
  v55 = a1;
  v1 = sub_10075EBBC();
  v2 = *(v1 - 8);
  v62 = v1;
  v63 = v2;
  __chkstk_darwin(v1);
  v67 = v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v70 = v53 - v5;
  v56 = sub_10076F04C();
  v69 = *(v56 - 8);
  __chkstk_darwin(v56);
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076EFAC();
  *&v54 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076F02C();
  v61 = *(v12 - 8);
  v13 = v61;
  __chkstk_darwin(v12);
  v15 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000DC4C();
  v68 = sub_10076F06C();
  v66 = sub_10076F05C();
  v76 = 0;
  v74 = 0u;
  v75 = 0u;
  sub_10076F01C();
  v64 = sub_10076EFCC();
  v16 = *(v9 + 104);
  v53[1] = v9 + 104;
  v16(v11, enum case for DeviceAppQuery.betaApps(_:), v8);
  v65 = v12;
  *(&v75 + 1) = v12;
  v76 = &protocol witness table for ASDDeviceAppFetcher;
  v17 = sub_10000DB7C(&v74);
  v18 = *(v13 + 16);
  v58 = v15;
  v18(v17, v15, v12);
  v59 = v18;
  v60 = v13 + 16;
  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  v19 = enum case for AppStoreType.default(_:);
  v20 = v69[13];
  v69 += 13;
  v21 = v56;
  v20(v7, enum case for AppStoreType.default(_:), v56);
  v53[0] = v11;
  v57 = sub_10076EFBC();
  v16(v11, enum case for DeviceAppQuery.allStoreApps(_:), v54);
  v22 = v65;
  *(&v75 + 1) = v65;
  v76 = &protocol witness table for ASDDeviceAppFetcher;
  v23 = sub_10000DB7C(&v74);
  v18(v23, v15, v22);
  *(&v72 + 1) = v68;
  v73 = &protocol witness table for DeviceUpdateRegistry;
  *&v71 = v66;
  v20(v7, v19, v21);

  v56 = sub_10076EFBC();
  sub_10075E32C();

  v69 = sub_10075E31C();
  sub_10000A5D4(&qword_1009424F0);
  v24 = sub_10076F03C();
  v25 = *(v24 - 8);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = swift_allocObject();
  v54 = xmmword_100783DD0;
  *(v27 + 16) = xmmword_100783DD0;
  v28 = enum case for App.Kind.store(_:);
  v29 = *(v25 + 104);
  v29(v27 + v26, enum case for App.Kind.store(_:), v24);
  v69 = v69;
  sub_10075EBCC();
  sub_10075E53C();

  v30 = sub_10075E52C();
  v31 = swift_allocObject();
  *(v31 + 16) = v54;
  v29(v31 + v26, v28, v24);
  v55 = v30;
  v32 = v67;
  sub_10075EBCC();
  sub_10000A5D4(&qword_1009424F8);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_100783DE0;
  v34 = sub_10076EF9C();
  swift_allocObject();
  v35 = sub_10076EF8C();
  *(v33 + 56) = v34;
  *(v33 + 64) = &protocol witness table for RemoteInstalledAppStateDataSource;
  *(v33 + 32) = v35;
  v36 = sub_10076F00C();
  swift_allocObject();
  v37 = sub_10076EFFC();
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
  v40 = sub_10000E570();
  *(v33 + 224) = v40;
  v41 = sub_10000DB7C((v33 + 192));
  v42 = v63;
  v43 = *(v63 + 16);
  v43(v41, v70, v39);
  *(v33 + 256) = v39;
  *(v33 + 264) = v40;
  v44 = sub_10000DB7C((v33 + 232));
  v43(v44, v32, v39);
  v45 = sub_10076EFEC();
  swift_allocObject();

  v46 = sub_10076EFDC();
  *(v33 + 296) = v45;
  *(v33 + 304) = &protocol witness table for DefaultAppStateDataSource;
  *(v33 + 272) = v46;
  v47 = v65;
  *(&v75 + 1) = v65;
  v76 = &protocol witness table for ASDDeviceAppFetcher;
  v48 = sub_10000DB7C(&v74);
  v49 = v58;
  v59(v48, v58, v47);
  *(&v72 + 1) = v68;
  v73 = &protocol witness table for DeviceUpdateRegistry;
  *&v71 = v66;

  v50 = sub_10075E17C();

  v51 = *(v42 + 8);
  v51(v67, v39);
  v51(v70, v39);
  (*(v61 + 8))(v49, v47);
  sub_10000CD74(&v71);
  sub_10000CD74(&v74);
  return v50;
}

unint64_t sub_10000E570()
{
  result = qword_100942500;
  if (!qword_100942500)
  {
    sub_10075EBBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942500);
  }

  return result;
}

unint64_t sub_10000E5EC()
{
  result = qword_100942508;
  if (!qword_100942508)
  {
    sub_10076169C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942508);
  }

  return result;
}

uint64_t sub_10000E644()
{
  v0 = sub_10076F50C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() generalPasteboard];
  sub_10076168C();
  v5 = sub_10076FF6C();

  [v4 setString:v5];

  sub_10000A5D4(&qword_100942C70);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  return sub_10076FC8C();
}

uint64_t sub_10000E790(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10076F2EC();
  __chkstk_darwin(v7 - 8);
  if (qword_100941300 != -1)
  {
    swift_once();
  }

  v8 = sub_10076FD4C();
  sub_10000A61C(v8, qword_1009A2648);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783DD0;
  sub_10076F2DC();
  v15._countAndFlagsBits = 0x5370696B53646964;
  v15._object = 0xED0000203A706574;
  sub_10076F2CC(v15);
  v9 = a1[3];
  v10 = sub_10000CF78(a1, v9);
  v14 = v9;
  v11 = sub_10000DB7C(v13);
  (*(*(v9 - 8) + 16))(v11, v10, v9);
  sub_10076F29C();
  sub_10000CFBC(v13, &unk_1009434C0);
  v16._countAndFlagsBits = 0x6E6F73616572202CLL;
  v16._object = 0xEA0000000000203ALL;
  sub_10076F2CC(v16);
  v14 = &type metadata for String;
  v13[0] = a2;
  v13[1] = a3;

  sub_10076F29C();
  sub_10000CFBC(v13, &unk_1009434C0);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_10076F2CC(v17);
  sub_10076F2FC();
  sub_10076FBCC();

  result = swift_beginAccess();
  if (*(*(v3 + 32) + 16))
  {
    sub_10061B5F4(0, 1);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000EA6C()
{
  v1 = sub_10000A5D4(&qword_1009425C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v11[-v2];
  v4 = sub_10076649C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v8 = *(v0 + 32);
  if (*(v8 + 16))
  {
    sub_10000A570(v8 + 32, v12);
    sub_10000A5D4(&qword_1009425C8);
    v9 = swift_dynamicCast();
    (*(v5 + 56))(v3, v9 ^ 1u, 1, v4);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v7, v3, v4);
      sub_10076643C();
      sub_10000EED8(v7, v0);
      return (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    (*(v5 + 56))(v3, 1, 1, v4);
  }

  return sub_10000CFBC(v3, &qword_1009425C0);
}

uint64_t sub_10000ECA4(char a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 32);
  if (*(v4 + 16))
  {
    sub_10000A570(v4 + 32, v8);
    sub_10000A5D4(&qword_1009425C8);
    type metadata accessor for AdPrivacyOnboardingStep();
    result = swift_dynamicCast();
    if (result)
    {
      v5 = v1;
      v6 = sub_10050D700();
      [v6 setPersonalizedAds:a1 & 1];

      sub_10050DFD0();
      sub_10000F1D0(v7, v5);
    }
  }

  return result;
}

uint64_t sub_10000ED80()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  if (*(v1 + 16))
  {
    sub_10000A570(v1 + 32, v6);
    sub_10000A5D4(&qword_1009425C8);
    if (swift_dynamicCast())
    {
      if (v3)
      {
        v6[0] = v3;
        v6[1] = v4;
        v6[2] = v5;
        sub_1002559FC();
        sub_10000F498(v6, v0);
        return sub_10000FA08(v6);
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

  return sub_10000CFBC(&v3, &qword_1009425E0);
}

uint64_t sub_10000EE74()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10000EED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10076F2EC();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10076649C();
  v14 = v5;
  v15 = sub_10000FB4C(&qword_1009425D0, &type metadata accessor for WelcomeOnboardingStep);
  v6 = sub_10000DB7C(v13);
  (*(*(v5 - 8) + 16))(v6, a1, v5);
  if (qword_100941300 != -1)
  {
    swift_once();
  }

  v7 = sub_10076FD4C();
  sub_10000A61C(v7, qword_1009A2648);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783DD0;
  sub_10076F2DC();
  v16._object = 0x80000001007CD4F0;
  v16._countAndFlagsBits = 0xD000000000000011;
  sub_10076F2CC(v16);
  v8 = v14;
  v9 = sub_10000CF78(v13, v14);
  v12[3] = v8;
  v10 = sub_10000DB7C(v12);
  (*(*(v8 - 8) + 16))(v10, v9, v8);
  sub_10076F29C();
  sub_10000CFBC(v12, &unk_1009434C0);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_10076F2CC(v17);
  sub_10076F2FC();
  sub_10076FBCC();

  result = swift_beginAccess();
  if (*(*(a2 + 32) + 16))
  {
    sub_10061B5F4(0, 1);
    swift_endAccess();
    return sub_10000CD74(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000F1D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10076F2EC();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for AdPrivacyOnboardingStep();
  v12[3] = v5;
  v12[4] = sub_10000FB4C(&qword_1009425D8, type metadata accessor for AdPrivacyOnboardingStep);
  v12[0] = a1;
  v6 = qword_100941300;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = sub_10076FD4C();
  sub_10000A61C(v7, qword_1009A2648);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783DD0;
  sub_10076F2DC();
  v13._object = 0x80000001007CD4F0;
  v13._countAndFlagsBits = 0xD000000000000011;
  sub_10076F2CC(v13);
  v8 = sub_10000CF78(v12, v5);
  v11[3] = v5;
  v9 = sub_10000DB7C(v11);
  (*(*(v5 - 8) + 16))(v9, v8, v5);
  sub_10076F29C();
  sub_10000CFBC(v11, &unk_1009434C0);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  sub_10076F2CC(v14);
  sub_10076F2FC();
  sub_10076FBCC();

  result = swift_beginAccess();
  if (*(*(a2 + 32) + 16))
  {
    sub_10061B5F4(0, 1);
    swift_endAccess();
    return sub_10000CD74(v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000F498(uint64_t a1, uint64_t a2)
{
  v4 = sub_10076F2EC();
  __chkstk_darwin(v4 - 8);
  v10[3] = &type metadata for LocationPrivacyOnboardingStep;
  v10[4] = sub_10000FA5C();
  v10[0] = swift_allocObject();
  sub_10000FAF0(a1, v10[0] + 16);
  if (qword_100941300 != -1)
  {
    swift_once();
  }

  v5 = sub_10076FD4C();
  sub_10000A61C(v5, qword_1009A2648);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783DD0;
  sub_10076F2DC();
  v11._object = 0x80000001007CD4F0;
  v11._countAndFlagsBits = 0xD000000000000011;
  sub_10076F2CC(v11);
  v6 = sub_10000CF78(v10, &type metadata for LocationPrivacyOnboardingStep);
  v9[3] = &type metadata for LocationPrivacyOnboardingStep;
  v7 = sub_10000DB7C(v9);
  _swift_cvw_initWithCopy(v7, v6);
  sub_10076F29C();
  sub_10000CFBC(v9, &unk_1009434C0);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_10076F2CC(v12);
  sub_10076F2FC();
  sub_10076FBCC();

  result = swift_beginAccess();
  if (*(*(a2 + 32) + 16))
  {
    sub_10061B5F4(0, 1);
    swift_endAccess();
    return sub_10000CD74(v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000F744(void *a1, uint64_t a2)
{
  v4 = sub_10076F2EC();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for JourneyDrivenOnboardingStep();
  v13[3] = v5;
  v13[4] = sub_10000FB4C(&qword_1009425F0, type metadata accessor for JourneyDrivenOnboardingStep);
  v13[0] = a1;
  v6 = qword_100941300;
  v7 = a1;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = sub_10076FD4C();
  sub_10000A61C(v8, qword_1009A2648);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783DD0;
  sub_10076F2DC();
  v14._object = 0x80000001007CD4F0;
  v14._countAndFlagsBits = 0xD000000000000011;
  sub_10076F2CC(v14);
  v9 = sub_10000CF78(v13, v5);
  v12[3] = v5;
  v10 = sub_10000DB7C(v12);
  (*(*(v5 - 8) + 16))(v10, v9, v5);
  sub_10076F29C();
  sub_10000CFBC(v12, &unk_1009434C0);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_10076F2CC(v15);
  sub_10076F2FC();
  sub_10076FBCC();

  result = swift_beginAccess();
  if (*(*(a2 + 32) + 16))
  {
    sub_10061B5F4(0, 1);
    swift_endAccess();
    return sub_10000CD74(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10000FA5C()
{
  result = qword_1009425E8;
  if (!qword_1009425E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009425E8);
  }

  return result;
}

uint64_t sub_10000FAB0()
{

  sub_10000CD74(v0 + 24);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000FB4C(unint64_t *a1, void (*a2)(uint64_t))
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
  v10 = sub_10000A5D4(&unk_10095B400);
  __chkstk_darwin(v10 - 8);
  v57 = &v54 - v11;
  v54 = sub_100769F0C();
  v12 = *(v54 - 8);
  __chkstk_darwin(v54);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100769E4C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_itemLayoutContext;
  v20 = sub_10076341C();
  (*(*(v20 - 8) + 56))(&v5[v19], 1, 1, v20);
  v21 = OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_headerLabel;
  sub_1007626BC();
  *&v5[v21] = sub_10076269C();
  v22 = OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_titleLabel;
  *&v5[v22] = sub_10076269C();
  v23 = OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_viewButton;
  *&v5[v23] = [objc_opt_self() buttonWithType:0];
  v24 = enum case for CondensedSearchResultCardLayout.Configuration.standard(_:);
  v55 = v16;
  v25 = *(v16 + 104);
  v25(&v5[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_configuration], enum case for CondensedSearchResultCardLayout.Configuration.standard(_:), v15);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_artworkView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_iconGrid] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_action] = 0;
  v26 = &v5[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_buttonHandler];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = &v5[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_artworkSize];
  v25(v18, v24, v15);
  sub_100769E2C();
  v56 = *(v16 + 8);
  v56(v18, v15);
  sub_100769E6C();
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
  v38 = OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_headerLabel;
  [v37 addSubview:*&v37[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_headerLabel]];
  v39 = OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_titleLabel;
  [v37 addSubview:*&v37[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_titleLabel]];
  v40 = OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_viewButton;
  [v37 addSubview:*&v37[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_viewButton]];
  [*&v37[v38] setLineBreakMode:4];
  [*&v37[v39] setLineBreakMode:4];
  v41 = *&v37[v40];
  v42 = v41;
  v43 = [v37 traitCollection];
  v44 = v57;
  v45 = ObjectType;
  sub_1006AA284(v41, v57);

  v46 = sub_10077111C();
  (*(*(v46 - 8) + 56))(v44, 0, 1, v46);
  sub_10077114C();

  v47 = v45;
  v48 = sub_1006AA520();
  sub_1000102A4(v48, v49, &OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_viewButton);

  v50 = OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_configuration;
  swift_beginAccess();
  (*(v55 + 16))(v18, &v37[v50], v15);
  v51 = [v37 traitCollection];

  sub_1000108A8(v18, v51);
  v56(v18, v15);
  sub_10000A5D4(&unk_100945BF0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_100783DD0;
  *(v52 + 32) = sub_10076E88C();
  *(v52 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(swift_allocObject() + 16) = v47;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v37;
}

uint64_t type metadata accessor for CondensedEditorialSearchResultContentView()
{
  result = qword_100942688;
  if (!qword_100942688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000102A4(uint64_t a1, uint64_t a2, void *a3)
{
  v51 = a3;
  v4 = sub_10000A5D4(&qword_100942698);
  __chkstk_darwin(v4 - 8);
  v44 = &v43 - v5;
  v6 = sub_10076D1AC();
  v48 = *(v6 - 8);
  v49 = v6;
  __chkstk_darwin(v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076D3DC();
  v45 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v43 - v13;
  v14 = sub_10075D9EC();
  __chkstk_darwin(v14 - 8);
  v15 = sub_10075D99C();
  v16 = *(v15 - 8);
  v52 = v15;
  v53 = v16;
  __chkstk_darwin(v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000A5D4(&unk_10095B400);
  v20 = __chkstk_darwin(v19 - 8);
  v47 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v43 - v22;
  v46 = *(v3 + *v51);
  sub_10077113C();

  sub_10075D9DC();
  sub_10075D9AC();
  v51 = v3;
  v24 = [v3 traitCollection];
  v25 = sub_1007700AC();
  if (v24 && (sub_10077071C() & 1) != 0)
  {
    if (v25 < 9)
    {
LABEL_4:
      v26 = v45;
      if (qword_100940E30 != -1)
      {
        swift_once();
      }

      v27 = qword_1009A1888;
      goto LABEL_11;
    }
  }

  else if (v25 <= 6)
  {
    goto LABEL_4;
  }

  v26 = v45;
  if (qword_100940E38 != -1)
  {
    swift_once();
  }

  v27 = qword_1009A18A0;
LABEL_11:
  v28 = sub_10000A61C(v9, v27);
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
  v35 = sub_10076D19C(v33).super.isa;

  (*(v32 + 8))(v8, v31);
  v54 = v35;
  sub_100016BD0();
  v36 = v35;
  sub_10075D9BC();
  v37 = sub_10077111C();
  v38 = (*(*(v37 - 8) + 48))(v23, 1, v37);
  v39 = v52;
  if (!v38)
  {
    v40 = v53;
    v41 = v44;
    (*(v53 + 16))(v44, v18, v52);
    (*(v40 + 56))(v41, 0, 1, v39);
    sub_10077101C();
  }

  sub_100016E2C(v23, v47, &unk_10095B400);
  sub_10077114C();

  (*(v26 + 8))(v30, v9);
  (*(v53 + 8))(v18, v39);
  return sub_10000CFBC(v23, &unk_10095B400);
}

void sub_1000108A8(uint64_t a1, objc_class *a2)
{
  v4 = sub_10076D3DC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_headerLabel);
  [v8 setNumberOfLines:sub_100769E1C()];
  v9 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_titleLabel);
  v10.super.isa = a2;
  [v9 setNumberOfLines:sub_100769E0C(v10)];
  sub_100016F40(0, &qword_100942F00);
  sub_100769DFC();
  v11 = sub_100770B3C();
  v12 = *(v5 + 8);
  v12(v7, v4);
  [v8 setFont:v11];

  sub_100769E3C();
  v13 = sub_100770B3C();
  v12(v7, v4);
  [v9 setFont:v13];

  v14 = [objc_opt_self() systemBlueColor];
  [v8 setTextColor:v14];
}

id sub_100010AA8(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100769E4C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1006AA520();
  sub_1006AA544(v9, v10, a3, &off_1008841A8);

  v11 = OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_configuration;
  swift_beginAccess();
  (*(v6 + 16))(v8, &a1[v11], v5);
  v12 = [a1 traitCollection];
  sub_1000108A8(v8, v12);

  (*(v6 + 8))(v8, v5);
  return [a1 setNeedsLayout];
}

Swift::Void __swiftcall CondensedEditorialSearchResultContentView.layoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_10000A5D4(&qword_100942638);
  v63 = *(v2 - 8);
  v64 = v2;
  __chkstk_darwin(v2);
  v61 = &v56 - v3;
  v4 = sub_100769F2C();
  v59 = *(v4 - 8);
  v60 = v4;
  __chkstk_darwin(v4);
  v58 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076D1FC();
  v65 = *(v6 - 8);
  v66 = v6;
  __chkstk_darwin(v6);
  v62 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100769E4C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100769F0C();
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
  sub_10076422C();
  v57 = OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_artworkView;
  v21 = *&v0[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_artworkView];
  if (v21)
  {
    *(&v85 + 1) = sub_10075FD2C();
    v86 = sub_100016E94(&qword_10094B250, &type metadata accessor for ArtworkView);
    *&v84 = v21;
  }

  else if (*&v0[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_iconGrid])
  {
    *&v72 = *&v0[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_iconGrid];
    type metadata accessor for IconArtworkGridView();
    sub_10076D2DC();
  }

  else
  {
    v86 = 0;
    v84 = 0u;
    v85 = 0u;
  }

  v22 = OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_iconGrid;
  v23 = *&v0[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_iconGrid];
  v24 = v21;
  if (v23)
  {
    [v23 _setContinuousCornerRadius:10.0];
  }

  v25 = [v1 traitCollection];
  v26 = sub_10077071C();

  if (v26)
  {
    v27 = OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_configuration;
    swift_beginAccess();
    (*(v9 + 16))(v11, &v1[v27], v8);
    sub_100769E2C();
    (*(v9 + 8))(v11, v8);
    sub_100769EEC();
    v28 = v70;
    v29 = *(v69 + 8);
    v29(v18, v70);
    v30 = *&v1[v57];
    if (v30)
    {
      v73 = sub_10075FD2C();
      v74 = &protocol witness table for UIView;
      *&v72 = v30;
      sub_100012498(&v72, v81);
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

    v47 = *&v1[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_headerLabel];
    v79 = sub_1007626BC();
    v80 = &protocol witness table for UIView;
    v78[0] = v47;
    v48 = *&v1[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_titleLabel];
    v76 = v79;
    v77 = &protocol witness table for UILabel;
    v75[0] = v48;
    v49 = *&v1[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_viewButton];
    v71[3] = sub_100016F40(0, &qword_100947240);
    v71[4] = &protocol witness table for UIView;
    v71[0] = v49;
    v50 = v30;
    v51 = v47;
    v52 = v48;
    v53 = v49;
    v54 = v68;
    sub_100011540(v68, v81, v78, v75, v71, &v72);
    v29(v54, v28);
    sub_10000CFBC(v81, &unk_10094DA00);
    sub_10000CD74(v71);
    sub_10000CD74(v75);
    sub_10000CD74(v78);
    sub_10000CF78(&v72, v73);
    v55 = v62;
    sub_10076DFCC();
    (*(v65 + 8))(v55, v66);
    sub_10000CFBC(&v84, &unk_10094B230);
    sub_10000CD74(&v72);
  }

  else
  {
    v31 = OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_configuration;
    swift_beginAccess();
    (*(v9 + 16))(v11, &v1[v31], v8);
    sub_100769E2C();
    (*(v9 + 8))(v11, v8);
    sub_100769EEC();
    (*(v69 + 8))(v15, v70);
    sub_100016E2C(&v84, &v72, &unk_10094B230);
    v32 = *&v1[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_headerLabel];
    v82 = sub_1007626BC();
    v83 = &protocol witness table for UILabel;
    v81[0] = v32;
    v33 = *&v1[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_titleLabel];
    v79 = v82;
    v80 = &protocol witness table for UILabel;
    v78[0] = v33;
    v34 = *&v1[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_viewButton];
    v76 = sub_100016F40(0, &qword_100947240);
    v77 = &protocol witness table for UIButton;
    v75[0] = v34;
    v35 = v32;
    v36 = v33;
    v37 = v34;
    v38 = v58;
    sub_100769F1C();
    v39 = [v1 traitCollection];
    sub_100016E94(&qword_100942640, &type metadata accessor for CondensedSearchResultCardLayout);
    v41 = v60;
    v40 = v61;
    sub_10076D43C();
    swift_getOpaqueTypeConformance2();
    v42 = v64;
    sub_10076E0EC();

    (*(v63 + 8))(v40, v42);
    (*(v59 + 8))(v38, v41);
    sub_10000CFBC(&v84, &unk_10094B230);
  }
}

uint64_t sub_100011540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v86 = a5;
  v83 = a4;
  v110 = a3;
  v87 = a6;
  v91 = sub_10076DB6C();
  v97 = *(v91 - 8);
  __chkstk_darwin(v91 - 8);
  v9 = v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_10076DB5C();
  v10 = *(v113 - 8);
  __chkstk_darwin(v113);
  v89 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076DB0C();
  v115 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  *&v114 = v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = v81 - v15;
  v93 = sub_10076DB9C();
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
  sub_100016E2C(a2, &v119, &unk_10094DA00);
  v90 = a1;
  v92 = v17;
  v84 = v16;
  v88 = v12;
  if (*(&v120 + 1))
  {
    sub_100012498(&v119, v122);
    sub_100769E9C();
    sub_100769EBC();
    (*(v115 + 104))(v16, enum case for VerticalFlowLayout.VerticalPlacement.top(_:), v12);
    sub_10000A5D4(&unk_100963750);
    v28 = v89;
    v29 = v10;
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_100783C60;
    sub_10076DB4C();
    sub_10076DB2C();
    v31 = v97;
    v32 = v91;
    sub_10076DB3C();
    v116 = v30;
    sub_100016E94(&qword_1009426B0, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
    sub_10000A5D4(&unk_100963760);
    sub_100016EDC();
    sub_1007712CC();
    (v31[13])(v9, enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:), v32);
    sub_10076DB8C();
    v33 = v31;
    v10 = v29;
    v12 = v88;
    v34 = v33[1];
    v108 = v9;
    v34(v9, v32);
    (*(v10 + 8))(v28, v113);
    (*(v115 + 8))(v16, v12);
    sub_10000CFBC(v117, &unk_100943240);
    sub_10000CD74(&v119);
    v35 = v92;
    v36 = v109;
    v37 = v93;
    (*(v92 + 16))(v109, v27, v93);
    v38 = sub_10049CEF0(0, 1, 1, _swiftEmptyArrayStorage);
    v40 = v38[2];
    v39 = v38[3];
    if (v40 >= v39 >> 1)
    {
      v38 = sub_10049CEF0(v39 > 1, v40 + 1, 1, v38);
    }

    (*(v35 + 8))(v27, v37);
    sub_10000CD74(v122);
    v38[2] = v40 + 1;
    (*(v35 + 32))(v38 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v40, v36, v37);
    v123 = v38;
    v9 = v108;
  }

  else
  {
    sub_10000CFBC(&v119, &unk_10094DA00);
  }

  sub_100769E8C();
  v121 = 0;
  v119 = 0u;
  v120 = 0u;
  sub_10000A570(v110, v117);
  sub_10000A5D4(&qword_10094CF50);
  sub_10000A5D4(&unk_100953E10);
  v41 = v9;
  if (swift_dynamicCast())
  {
    sub_10000CD74(&v116);
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
  v107 = sub_10000A5D4(&unk_100963750);
  v46 = *(v10 + 72);
  v106 = *(v10 + 80);
  v81[1] = (v106 + 32) & ~v106;
  v105 = 3 * v46;
  v104 = 2 * v46;
  v103 = v46;
  v47 = swift_allocObject();
  v114 = xmmword_100783C60;
  *(v47 + 16) = xmmword_100783C60;
  sub_10076DB4C();
  sub_10076DB2C();
  sub_10076DB3C();
  *&v117[0] = v47;
  v94 = sub_100016E94(&qword_1009426B0, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
  v102 = sub_10000A5D4(&unk_100963760);
  v101 = sub_100016EDC();
  v48 = v89;
  v49 = v10;
  v50 = v113;
  sub_1007712CC();
  v100 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v51 = v97;
  v52 = v97[13];
  v98 = (v97 + 13);
  v99 = v52;
  v53 = v91;
  v52(v41);
  sub_10076DB8C();
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
  sub_10000CFBC(&v119, &unk_100943240);
  sub_10000CD74(v122);
  v56 = v83[3];
  v57 = v83[4];
  v58 = v45;
  v59 = sub_10000CF78(v83, v56);
  v122[3] = v56;
  v122[4] = *(v57 + 8);
  v60 = sub_10000DB7C(v122);
  (*(*(v56 - 8) + 16))(v60, v59, v56);
  sub_100769E7C();
  v118 = 0;
  memset(v117, 0, sizeof(v117));
  v61 = v84;
  (v109)(v84, v82, v58);
  v62 = swift_allocObject();
  *(v62 + 16) = v114;
  sub_10076DB4C();
  sub_10076DB2C();
  sub_10076DB3C();
  v116 = v62;
  sub_1007712CC();
  v99(v41, v100, v53);
  sub_10076DB8C();
  v110(v41, v53);
  (v97)(v48, v50);
  v63 = v88;
  v95(v61, v88);
  sub_10000CFBC(v117, &unk_100943240);
  sub_10000CD74(&v119);
  sub_10000CD74(v122);
  sub_100769EDC();
  sub_100769EAC();
  (v109)(v61, enum case for VerticalFlowLayout.VerticalPlacement.top(_:), v63);
  v64 = swift_allocObject();
  *(v64 + 16) = v114;
  sub_10076DB4C();
  sub_10076DB2C();
  sub_10076DB3C();
  *&v117[0] = v64;
  sub_1007712CC();
  v99(v41, v100, v53);
  v65 = v85;
  sub_10076DB8C();
  v110(v41, v53);
  (v97)(v48, v50);
  v95(v61, v63);
  sub_10000CFBC(&v119, &unk_100943240);
  sub_10000CD74(v122);
  sub_10000A5D4(&qword_1009426C0);
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
  sub_1000F9288(v70);
  v77 = sub_10076DBAC();
  v78 = v87;
  v87[3] = v77;
  v78[4] = &protocol witness table for VerticalFlowLayout;
  v78[5] = &protocol witness table for VerticalFlowLayout;
  sub_10000DB7C(v78);
  sub_10076DB7C();
  v79 = *(v66 + 8);
  v79(v65, v74);
  v79(v76, v74);
  return (v79)(v73, v74);
}

uint64_t sub_100012498(__int128 *a1, uint64_t a2)
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
  v1 = sub_10000A5D4(&unk_10095B400);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_titleLabel] setText:0];
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_headerLabel] setText:0];
  v4 = OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_artworkView;
  v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_artworkView];
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
  v7 = OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_iconGrid;
  v8 = *&v0[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_iconGrid];
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
  v10 = sub_10077111C();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  sub_10077114C();
}

uint64_t sub_1000126A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076461C();
  *a1 = result;
  return result;
}

double sub_1000126CC(uint64_t a1, uint64_t a2, objc_class *a3)
{
  v68 = a3;
  v67 = sub_10076D1AC();
  v69 = *(v67 - 8);
  __chkstk_darwin(v67);
  v59 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_10076997C();
  v70 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076D39C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100769F0C();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v48 - v16;
  sub_100769E2C();
  sub_10076D3AC();
  v58 = a1;
  sub_1000148B8();
  (*(v8 + 8))(v10, v7);
  v18 = *(v12 + 8);
  v63 = v17;
  v65 = v11;
  v18(v17, v11);
  v64 = v18;
  v66 = v12 + 8;
  v19 = a2;
  sub_100769E2C();
  sub_100769EEC();
  v18(v15, v11);
  v20 = sub_10076DDDC();
  swift_allocObject();
  v61 = sub_10076DDBC();
  v53 = sub_100765ECC();
  v52 = v21;
  v22 = v59;
  v51 = v19;
  sub_100769DFC();
  v57 = enum case for FontSource.useCase(_:);
  v23 = v69;
  v56 = *(v69 + 104);
  v24 = v67;
  v56(v22);
  v25 = v68;
  v26.super.isa = v68;
  sub_10076D19C(v26);
  v27 = *(v23 + 8);
  v69 = v23 + 8;
  v55 = v27;
  v27(v22, v24);
  sub_100769E1C();
  v28 = sub_10076C04C();
  v75 = v28;
  v54 = sub_100016E94(&qword_100943230, &type metadata accessor for Feature);
  v76 = v54;
  v29 = sub_10000DB7C(&v74);
  v49 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v30 = *(v28 - 8);
  v48 = *(v30 + 104);
  v50 = v30 + 104;
  v48(v29);
  sub_10076C90C();
  sub_10000CD74(&v74);
  v31 = v60;
  sub_10076996C();
  sub_10076994C();
  v32 = *(v70 + 8);
  v70 += 8;
  v53 = v32;
  v33 = v62;
  v32(v31, v62);
  v58 = sub_100765F2C();
  v52 = v34;
  sub_100769E3C();
  v35 = v67;
  (v56)(v22, v57, v67);
  v36.super.isa = v25;
  sub_10076D19C(v36);
  v55(v22, v35);
  v37.super.isa = v25;
  sub_100769E0C(v37);
  v75 = v28;
  v76 = v54;
  v38 = sub_10000DB7C(&v74);
  (v48)(v38, v49, v28);
  sub_10076C90C();
  sub_10000CD74(&v74);
  sub_10076996C();
  sub_10076994C();
  v53(v31, v33);
  sub_100769E5C();
  swift_allocObject();
  v39 = sub_10076DDBC();
  v73[4] = &protocol witness table for LayoutViewPlaceholder;
  v73[3] = v20;
  v73[0] = v61;
  v40 = v79;
  v41 = v80;
  v42 = sub_10000CF78(&v78, v79);
  v72[3] = v40;
  v72[4] = *(v41 + 8);
  v43 = sub_10000DB7C(v72);
  (*(*(v40 - 8) + 16))(v43, v42, v40);
  v71[4] = &protocol witness table for LayoutViewPlaceholder;
  v71[3] = v20;
  v71[0] = v39;

  v44 = v63;
  sub_100011540(v63, v73, v72, &v77, v71, &v74);
  sub_10000CD74(v71);
  sub_10000CD74(v72);
  sub_10000CFBC(v73, &unk_10094DA00);
  sub_10000CF78(&v74, v75);
  sub_10076D2CC();
  v46 = v45;

  sub_10000CD74(&v77);
  v64(v44, v65);
  sub_10000CD74(&v74);
  sub_10000CD74(&v78);
  return v46;
}

void sub_100012F8C(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4)
{
  v8 = *(a1 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v13[0] = _swiftEmptyArrayStorage;
    sub_1007714EC();
    v10 = a1 + 32;
    do
    {
      v10 += 16;

      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
      --v8;
    }

    while (v8);
    v9 = v13[0];
  }

  if (qword_10093F9C0 == -1)
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
    sub_100016CD4();
    sub_10076C13C();

    v11 = OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_config;
    swift_beginAccess();
    sub_100016D28(v13, a2 + v11);
    swift_endAccess();
    sub_1001CA77C();
    sub_100016D84(v13);
    sub_1001CAB08(a3, a4);
    return;
  }

LABEL_10:
}

uint64_t CondensedEditorialSearchResultContentView.applyData(from:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v110 = a2;
  v5 = sub_10075FEEC();
  v102 = *(v5 - 8);
  v103 = v5;
  __chkstk_darwin(v5);
  v101 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076D39C();
  v105 = *(v7 - 8);
  v106 = v7;
  __chkstk_darwin(v7);
  v104 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100769F0C();
  v108 = *(v9 - 8);
  v109 = v9;
  __chkstk_darwin(v9);
  v114 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100767FDC();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v100 - v17;
  __chkstk_darwin(v16);
  v20 = &v100 - v19;
  v113 = sub_100769E4C();
  v115 = *(v113 - 8);
  v21 = __chkstk_darwin(v113);
  v23 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = &v100 - v25;
  __chkstk_darwin(v24);
  v112 = &v100 - v27;
  sub_100765F5C();
  sub_100016E94(&qword_10095A440, &type metadata accessor for EditorialSearchResult);
  v107 = a1;
  result = sub_10076332C();
  if (!v116)
  {
    return result;
  }

  v111 = v116;
  sub_100765F1C();
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
  sub_100769E2C();
  (*(v30 + 16))(v23, v33, v31);
  v34 = OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_configuration;
  swift_beginAccess();
  (*(v30 + 24))(&v3[v34], v23, v31);
  swift_endAccess();
  [v3 setNeedsLayout];
  v35 = *(v30 + 8);
  v115 = v30 + 8;
  v100 = v35;
  v35(v23, v31);
  swift_getKeyPath();
  sub_10076338C();

  v36 = v116;
  sub_1000108A8(v33, v116);

  v37 = sub_100765ECC();
  v39 = v38;
  sub_100765F1C();
  sub_100013E5C(v37, v39, v15);

  (*(v12 + 8))(v15, v11);
  v40 = *&v3[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_titleLabel];
  sub_100765F2C();
  if (v41)
  {
    v42 = sub_10076FF6C();
  }

  else
  {
    v42 = 0;
  }

  [v40 setText:v42];

  if (sub_100765EEC())
  {
    sub_10076B96C();
    v43 = sub_1007701EC();

    if (v43)
    {
      sub_10076148C();
      sub_10076F64C();
      sub_10076FC1C();
      sub_100769E6C();
      v45 = v44;
      v47 = v46;
      v48 = sub_10076135C();
      v49 = objc_allocWithZone(type metadata accessor for IconArtworkGridView());
      v50 = sub_1001CA294(v48 & 1, 0.0, 0.0, v45, v47);
      v51 = OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_iconGrid;
      v52 = *&v3[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_iconGrid];
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

      sub_100769E6C();
      v70 = &v3[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_artworkSize];
      *v70 = v71;
      *(v70 + 1) = v72;
      [v3 setNeedsLayout];

      goto LABEL_30;
    }
  }

  if (sub_100765EAC())
  {
    sub_10076B84C();

LABEL_19:

    v54 = v104;
    sub_10076D3AC();
    sub_1000148B8();
    v56 = v55;
    v58 = v57;
    (*(v105 + 8))(v54, v106);
    v59 = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, v56, v58}];
    v60 = OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_artworkView;
    v61 = *&v3[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_artworkView];
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
      sub_10075FD1C();

      (*(v64 + 8))(v65, v66);
    }

    [v3 setNeedsLayout];

    v67 = &v3[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_artworkSize];
    *v67 = v56;
    v67[1] = v58;
    goto LABEL_25;
  }

  if (sub_100765EDC())
  {
    goto LABEL_19;
  }

  if (!sub_100765E9C())
  {
    goto LABEL_30;
  }

  sub_100769E6C();
  v89 = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, v87, v88}];
  v90 = OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_artworkView;
  v91 = *&v3[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_artworkView];
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
    sub_10075FD1C();

    (*(v94 + 8))(v95, v96);
  }

  [v3 setNeedsLayout];

  sub_100769E6C();
  v97 = &v3[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_artworkSize];
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
  v76 = OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_action;
  v77 = *&v3[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_action];
  if (v77)
  {
    v78 = *&v3[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_viewButton];

    [v78 removeAction:v77 forControlEvents:4095];
    v79 = *&v3[v76];
  }

  else
  {

    v79 = 0;
  }

  *&v3[v76] = 0;

  v80 = &v3[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_buttonHandler];
  v81 = *&v3[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_buttonHandler];
  *v80 = sub_1000167D4;
  v80[1] = v75;

  sub_1000167E0(v81);
  sub_100016F40(0, &qword_1009641D0);

  v82 = sub_100770F1C();
  v83 = *&v3[v76];
  if (v83)
  {
    [*&v3[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_viewButton] removeAction:v83 forControlEvents:4095];
    v84 = *&v3[v76];
  }

  else
  {
    v84 = 0;
  }

  v85 = v114;
  *&v3[v76] = v82;
  v86 = v82;

  [*&v3[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_viewButton] addAction:v86 forControlEvents:64];

  (*(v108 + 8))(v85, v109);
  v100(v112, v113);

  [v3 setNeedsLayout];
}

void sub_100013E5C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10076048C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100767FDC();
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
        v29 = sub_10076FF6C();
        v30 = [v28 initWithString:v29];

        v27 = v30;
        v21 = 0;
        goto LABEL_12;
      }

      v18 = &enum case for SystemImage.personCropSquare(_:);
    }

    (*(v9 + 104))(v11, *v18, v8);
    v19 = sub_10076046C();
    (*(v9 + 8))(v11, v8);
    v20 = objc_opt_self();
    v21 = v19;
    v22 = [v20 textAttachmentWithImage:v21];
    v23 = [objc_opt_self() attributedStringWithAttachment:v22];
    v31[0] = 32;
    v31[1] = 0xE100000000000000;
    v32._countAndFlagsBits = a1;
    v32._object = a2;
    sub_1007700CC(v32);
    v24 = objc_allocWithZone(NSMutableAttributedString);
    v25 = sub_10076FF6C();

    v26 = [v24 initWithString:v25];

    v27 = v26;
    [v27 insertAttributedString:v23 atIndex:0];

LABEL_12:
    [*(v4 + OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_headerLabel) setAttributedText:v27];
  }
}

void sub_1000141EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v5 - 8);
  v7 = &v13[-v6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong() && (v10 = sub_100765E8C(), , v10))
    {
      v11 = sub_10000A5D4(&unk_1009428E0);
      sub_10076F5AC();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v7, 1, v11) == 1)
      {

        sub_10000CFBC(v7, &unk_100943200);
      }

      else
      {
        sub_100263BF0(v10, 1, a4, v7);

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
  v2 = sub_100766E4C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

id CondensedEditorialSearchResultContentView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CondensedEditorialSearchResultContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000145AC()
{
  v1 = v0;
  v2 = sub_100769F0C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100769E4C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_itemLayoutContext;
  v11 = sub_10076341C();
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_headerLabel;
  sub_1007626BC();
  *(v1 + v12) = sub_10076269C();
  v13 = OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_titleLabel;
  *(v1 + v13) = sub_10076269C();
  v14 = OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_viewButton;
  *(v1 + v14) = [objc_opt_self() buttonWithType:0];
  v15 = enum case for CondensedSearchResultCardLayout.Configuration.standard(_:);
  v16 = *(v7 + 104);
  v16(v1 + OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_configuration, enum case for CondensedSearchResultCardLayout.Configuration.standard(_:), v6);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_artworkView) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_iconGrid) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_action) = 0;
  v17 = (v1 + OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_buttonHandler);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v1 + OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_artworkSize);
  v16(v9, v15, v6);
  sub_100769E2C();
  (*(v7 + 8))(v9, v6);
  sub_100769E6C();
  v20 = v19;
  v22 = v21;
  (*(v3 + 8))(v5, v2);
  *v18 = v20;
  v18[1] = v22;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1000148B8()
{
  v0 = sub_10077164C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D39C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!sub_100765EAC())
  {
    return sub_100769E6C();
  }

  sub_10076B84C();

  sub_10076BEFC();
  sub_10076D3AC();
  sub_100769E6C();
  sub_10076D35C();
  sub_100769E6C();
  sub_10076D35C();
  sub_100769E6C();
  (*(v1 + 104))(v3, enum case for FloatingPointRoundingRule.up(_:), v0);
  sub_100770AAC();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

double sub_100014AF4(uint64_t a1, uint64_t a2, objc_class *a3)
{
  v93 = a3;
  v95 = a1;
  v84 = sub_10000A5D4(&qword_100942638);
  v85 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v67 - v4;
  v81 = sub_100769F2C();
  v83 = *(v81 - 8);
  __chkstk_darwin(v81);
  v80 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_10076DA7C();
  v79 = *(v78 - 8);
  v6 = __chkstk_darwin(v78);
  v92 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v89 = &v67 - v8;
  v90 = sub_10076D3DC();
  v94 = *(v90 - 8);
  __chkstk_darwin(v90);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_10076DD3C();
  v72 = *(v86 - 8);
  v11 = __chkstk_darwin(v86);
  v75 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v67 - v14;
  v16 = __chkstk_darwin(v13);
  v87 = &v67 - v17;
  __chkstk_darwin(v16);
  v91 = &v67 - v18;
  v19 = sub_10076D39C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100769F0C();
  v73 = *(v23 - 8);
  v24 = v73;
  v25 = __chkstk_darwin(v23);
  v27 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v67 - v28;
  sub_100769E2C();
  sub_10076D3AC();
  sub_1000148B8();
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
  sub_100769E2C();
  sub_100769EEC();
  v34(v27, v23);
  sub_10076DD2C();
  v67 = a2;
  sub_100769DFC();
  v35 = v87;
  sub_10076DCFC();
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
  sub_100769E1C();
  v41 = v91;
  sub_10076DD1C();
  v42 = v40;
  v39(v35, v40);
  sub_100765ECC();
  v72 = *(v37 + 16);
  (v72)(v35, v41, v40);
  sub_10076DA5C();
  v43 = v89;
  v44 = v35;
  sub_10076DA9C();
  v45 = v75;
  sub_10076DD2C();
  sub_100769E3C();
  sub_10076DCFC();
  v68(v10, v90);
  v74 = v39;
  v39(v45, v42);
  v46.super.isa = v93;
  sub_100769E0C(v46);
  sub_10076DD1C();
  v39(v15, v42);
  sub_100765F2C();
  (v72)(v15, v44, v42);
  sub_10076DA5C();
  v47 = v92;
  sub_10076DA9C();
  v48 = v71;
  v49 = v70;
  (*(v73 + 16))(v69, v71, v70);
  v100[8] = &type metadata for FixedSizedPlaceholder;
  v100[9] = sub_100016DD8();
  v100[5] = v31;
  v100[6] = v33;
  v50 = v78;
  v100[3] = v78;
  v100[4] = &protocol witness table for LabelPlaceholder;
  v51 = sub_10000DB7C(v100);
  v52 = v79;
  v53 = *(v79 + 16);
  v53(v51, v43, v50);
  v99[3] = v50;
  v99[4] = &protocol witness table for LabelPlaceholder;
  v54 = sub_10000DB7C(v99);
  v53(v54, v47, v50);
  v55 = sub_1007616FC();
  swift_allocObject();
  v56 = sub_1007616EC();
  v97 = v55;
  v98 = sub_100016E94(&qword_1009680E0, &type metadata accessor for EmptyPlaceable);
  v96 = v56;
  v57 = v80;
  sub_100769F1C();
  sub_100016E94(&qword_100942640, &type metadata accessor for CondensedSearchResultCardLayout);
  v58 = v82;
  v59 = v81;
  sub_10076D43C();
  swift_getOpaqueTypeConformance2();
  v60 = v84;
  sub_10076E0FC();
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

double _s20ProductPageExtension41CondensedEditorialSearchResultContentViewC6height2in8asPartOf12CoreGraphics7CGFloatV11AppStoreKit17ItemLayoutContextV_9JetEngine15BaseObjectGraphCtFZ_0()
{
  v0 = sub_100767FDC();
  v30 = *(v0 - 8);
  v1 = __chkstk_darwin(v0);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v29 - v4;
  v34 = sub_100769E4C();
  v6 = *(v34 - 8);
  v7 = __chkstk_darwin(v34);
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v29 - v9;
  v11 = sub_10076469C();
  __chkstk_darwin(v11 - 8);
  v33 = sub_10076C38C();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100765F5C();
  sub_100016E94(&qword_10095A440, &type metadata accessor for EditorialSearchResult);
  sub_10076332C();
  v14 = v35;
  if (!v35)
  {
    return 0.0;
  }

  v29 = v10;
  sub_1007632FC();
  if (qword_100940540 != -1)
  {
    swift_once();
  }

  sub_10076C32C();
  sub_100765F1C();
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
  sub_10076338C();

  v23 = v35;
  sub_10076C2FC();
  v24 = sub_10077071C();
  v25 = (v6 + 8);
  v26 = (v31 + 8);
  if (v24)
  {
    v27 = sub_1000126CC(v14, v19, v23);
  }

  else
  {
    v27 = sub_100014AF4(v14, v19, v23);
  }

  v20 = v27;

  (*v25)(v19, v18);
  (*v26)(v13, v33);
  return v20;
}

uint64_t _s20ProductPageExtension41CondensedEditorialSearchResultContentViewC5fetch3for2in2on8asPartOfy11AppStoreKit27ManagedArtworkModelProtocol_p_So6CGRectVAI0U6LoaderC9JetEngine15BaseObjectGraphCtF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a3;
  v78 = a2;
  v5 = sub_10076BF6C();
  __chkstk_darwin(v5 - 8);
  v69 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_10076BEDC();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076D39C();
  v75 = *(v8 - 8);
  v76 = v8;
  __chkstk_darwin(v8);
  v74 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_100769F0C();
  v10 = *(v79 - 8);
  v11 = __chkstk_darwin(v79);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v65 - v14;
  v16 = sub_100767FDC();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v77 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v65 - v21;
  __chkstk_darwin(v20);
  v24 = &v65 - v23;
  v25 = sub_100769E4C();
  v26 = *(v25 - 8);
  v82 = v25;
  v83 = v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v81 = &v65 - v30;
  sub_10000A570(a1, v85);
  sub_10000A5D4(&unk_100942830);
  sub_100765F5C();
  result = swift_dynamicCast();
  if (result)
  {
    v67 = v3;
    v80 = v15;
    sub_100765F1C();
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
          sub_100769E2C();
          sub_100769E2C();
          sub_100769E6C();
          v38 = v37;
          v40 = v39;
          v41 = *(v10 + 8);
          v42 = v79;
          v68 = v10 + 8;
          v41(v13, v79);
          v43 = v41;
          v44 = sub_100765EEC();
          v45 = v67;
          if (v44)
          {
            v46 = *&v67[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_iconGrid];
            if (v46)
            {
              sub_100763EEC();
              v47 = v46;
              sub_10076F63C();
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
                sub_100016E94(&qword_1009426A0, type metadata accessor for CondensedEditorialSearchResultContentView);
                v51 = v47;
                swift_retain_n();
                v52 = v51;
                v53 = v45;
                sub_10077140C();
                sub_100763EBC();

                sub_10000CFBC(v84, &qword_100943310);
                sub_100016C74(v85);
                (v77)(v80, v79);
                return (*(v83 + 8))(v81, v82);
              }
            }

            else
            {
            }
          }

          if (sub_100765EAC())
          {
            sub_10076B84C();
          }

          else if (!sub_100765EDC())
          {
            goto LABEL_24;
          }

          v54 = *&v45[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_artworkView];
          if (v54)
          {
            v55 = v54;
            v56 = v74;
            sub_10076D3AC();
            sub_1000148B8();
            (*(v75 + 8))(v56, v76);
            [v55 setContentMode:0];
            v57 = v77;
            sub_100765F1C();
            v58 = v66(v57, v16);
            if (v58 != enum case for EditorialSearchResultType.developer(_:) && v58 != enum case for EditorialSearchResultType.appEventStory(_:))
            {
              v59 = v70;
              sub_10076BEEC();
              sub_10076BE9C();
              (*(v71 + 8))(v59, v72);
              (*(v65 + 8))(v77, v16);
            }

            sub_10076BFCC();
            sub_10075FD2C();
            sub_100016E94(&qword_100941820, &type metadata accessor for ArtworkView);
            sub_100760B8C();

            v43(v80, v42);
            return (*(v83 + 8))(v81, v82);
          }

LABEL_24:
          if (sub_100765E9C())
          {
            v60 = *&v45[OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_artworkView];
            v61 = v80;
            if (v60)
            {
              v62 = v60;
              sub_100769E6C();
              v63 = v70;
              sub_10076BEEC();
              sub_10076BE9C();
              (*(v71 + 8))(v63, v72);
              sub_10076BFCC();
              sub_10076BF7C();
              sub_10075FCCC();
              [v62 setContentMode:sub_10076BDBC()];
              sub_100764ADC();
              sub_10075FD0C();
              if (!sub_10076BE1C())
              {
                sub_100016F40(0, &qword_100942F10);
                sub_100770D5C();
              }

              sub_10075FB8C();
              sub_10075FD2C();
              sub_100016E94(&qword_100941820, &type metadata accessor for ArtworkView);
              sub_100760B8C();
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

uint64_t sub_1000166F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076461C();
  *a1 = result;
  return result;
}

uint64_t sub_10001671C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100016754()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001678C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000167E0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void _s20ProductPageExtension41CondensedEditorialSearchResultContentViewC20cancelArtworkFetches2on8asPartOf014deprioritizingL0y11AppStoreKit0K6LoaderC_9JetEngine15BaseObjectGraphCSbtF_0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_iconGrid);
  if (v2)
  {
    v3 = *&v2[OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_iconViews];
    if (v3 >> 62)
    {
      v4 = sub_10077158C();
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
        v7 = sub_10077149C();
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      sub_10075FD2C();
      sub_100016E94(&qword_100941820, &type metadata accessor for ArtworkView);
      sub_100760BFC();
    }

    while (v4 != v6);
  }

LABEL_11:
  v9 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension41CondensedEditorialSearchResultContentView_artworkView);
  if (v9)
  {
    v10 = v9;
    v11 = v10;
    v12 = v10;
    v14.value.super.isa = 0;
    v14.is_nil = 0;
    sub_10075FCEC(v14, v11);
    sub_10075FD2C();
    sub_100016E94(&qword_100941820, &type metadata accessor for ArtworkView);
    sub_100760BFC();
  }
}

uint64_t sub_100016A04(uint64_t a1)
{
  *(a1 + 8) = sub_100016E94(&qword_100942648, type metadata accessor for CondensedEditorialSearchResultContentView);
  result = sub_100016E94(&qword_100942650, type metadata accessor for CondensedEditorialSearchResultContentView);
  *(a1 + 16) = result;
  return result;
}

void sub_100016AD8()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    sub_100769E4C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_100016BD0()
{
  result = qword_100954480;
  if (!qword_100954480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100954480);
  }

  return result;
}

uint64_t sub_100016C34()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_100016CD4()
{
  result = qword_1009426A8;
  if (!qword_1009426A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009426A8);
  }

  return result;
}

unint64_t sub_100016DD8()
{
  result = qword_10095DD90;
  if (!qword_10095DD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095DD90);
  }

  return result;
}

uint64_t sub_100016E2C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10000A5D4(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100016E94(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100016EDC()
{
  result = qword_1009426B8;
  if (!qword_1009426B8)
  {
    sub_10000CE78(&unk_100963760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009426B8);
  }

  return result;
}

uint64_t sub_100016F40(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100016F90()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v27[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10076D9AC();
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = __chkstk_darwin(v4);
  v32 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v5);
  v38 = &v27[-v8];
  __chkstk_darwin(v7);
  v36 = &v27[-v9];
  v10 = type metadata accessor for BadgeParagraphView.Metrics(0);
  sub_10000DB18(v10, qword_10099C8A8);
  v31 = v10;
  v30 = sub_10000A61C(v10, qword_10099C8A8);
  if (qword_100940B90 != -1)
  {
    swift_once();
  }

  v11 = sub_10076D3DC();
  v29 = sub_10000A61C(v11, qword_1009A10A8);
  v12 = *(v11 - 8);
  v35 = *(v12 + 16);
  v37 = v12 + 16;
  v35(v3, v29, v11);
  v13 = enum case for FontSource.useCase(_:);
  v14 = v1[13];
  v14(v3, enum case for FontSource.useCase(_:), v0);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(v39);
  v16 = v1[2];
  v16(v15, v3, v0);
  sub_10076D9BC();
  v17 = v1[1];
  v17(v3, v0);
  v35(v3, v29, v11);
  v28 = v13;
  v14(v3, v13, v0);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v18 = sub_10000DB7C(v39);
  v29 = v16;
  v16(v18, v3, v0);
  sub_10076D9BC();
  v17(v3, v0);
  if (qword_100940BA8 != -1)
  {
    swift_once();
  }

  v19 = sub_10000A61C(v11, qword_1009A10F0);
  v35(v3, v19, v11);
  v14(v3, v28, v0);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v20 = sub_10000DB7C(v39);
  v29(v20, v3, v0);
  v21 = v32;
  sub_10076D9BC();
  v17(v3, v0);
  v22 = v34;
  v23 = *(v33 + 32);
  v24 = v30;
  v23(v30, v36, v34);
  v25 = v31;
  v23(v24 + *(v31 + 20), v38, v22);
  return (v23)(v24 + *(v25 + 24), v21, v22);
}

char *sub_10001740C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10076771C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v14 - 8);
  v16 = v43 - v15;
  if (qword_10093F458 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for BadgeParagraphView.Metrics(0);
  v18 = sub_10000A61C(v17, qword_10099C8A8);
  sub_100018494(v18, &v5[OBJC_IVAR____TtC20ProductPageExtension18BadgeParagraphView_metrics]);
  if (qword_100940B90 != -1)
  {
    swift_once();
  }

  v19 = sub_10076D3DC();
  v20 = sub_10000A61C(v19, qword_1009A10A8);
  v21 = *(v19 - 8);
  (*(v21 + 16))(v16, v20, v19);
  (*(v21 + 56))(v16, 0, 1, v19);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v22 = objc_allocWithZone(sub_1007626BC());
  *&v5[OBJC_IVAR____TtC20ProductPageExtension18BadgeParagraphView_paragraphLabel] = sub_1007626AC();
  v23 = type metadata accessor for BadgeParagraphView(0);
  v44.receiver = v5;
  v44.super_class = v23;
  v24 = objc_msgSendSuper2(&v44, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v28 = v24;
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v29 = OBJC_IVAR____TtC20ProductPageExtension18BadgeParagraphView_paragraphLabel;
  v30 = *&v28[OBJC_IVAR____TtC20ProductPageExtension18BadgeParagraphView_paragraphLabel];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 systemGrayColor];
  [v32 setTextColor:v33];

  v34 = [v28 traitCollection];
  v35.super.isa = v34;
  isa = sub_10076D3BC(v35).super.isa;
  v37 = [(objc_class *)isa fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

  if (!v37)
  {
    goto LABEL_8;
  }

  v38 = [objc_opt_self() fontWithDescriptor:v37 size:0.0];

  if (v38)
  {
    [*&v28[v29] setFont:v38];
    v34 = v38;
LABEL_8:
  }

  [v28 addSubview:*&v28[v29]];
  v39 = [v28 traitCollection];
  sub_10077070C();

  sub_100770E7C();
  sub_10000A5D4(&unk_100945BF0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100783DD0;
  *(v40 + 32) = sub_10076E88C();
  *(v40 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v43[3] = v23;
  v43[0] = v28;
  v41 = v28;
  sub_100770C5C();
  swift_unknownObjectRelease();

  sub_10000CD74(v43);
  return v41;
}

id sub_100017A04()
{
  v1 = v0;
  v2 = sub_10077164C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BadgeParagraphView(0);
  v15.receiver = v0;
  v15.super_class = v6;
  objc_msgSendSuper2(&v15, "layoutSubviews");
  v7 = [v0 traitCollection];
  v8 = sub_1007706CC();

  if (v8)
  {
    type metadata accessor for BadgeParagraphView.Metrics(0);
  }

  sub_10076D17C();
  sub_10076D9AC();
  sub_10076D40C();
  v9 = *(v3 + 8);
  v9(v5, v2);
  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension18BadgeParagraphView_paragraphLabel];
  sub_10076422C();
  [v10 measurementsWithFitting:v1 in:{v11, v12}];
  (*(v3 + 104))(v5, enum case for FloatingPointRoundingRule.down(_:), v2);
  sub_100770CAC();
  v9(v5, v2);
  v13 = [v1 traitCollection];
  [v13 layoutDirection];

  sub_10076422C();
  sub_100770A5C();
  return [v10 setFrame:?];
}

uint64_t sub_100017CBC(uint64_t a1)
{
  v2 = v1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for BadgeParagraphView(0);
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_10077070C();

  if (!a1 || (result = sub_10077070C(), (result & 1) != (v5 & 1)))
  {
    v7 = [v2 traitCollection];
    sub_10077070C();

    return sub_100770E7C();
  }

  return result;
}

void sub_100017E0C()
{
  v1 = v0;
  if (qword_100940B90 != -1)
  {
    swift_once();
  }

  v2 = sub_10076D3DC();
  sub_10000A61C(v2, qword_1009A10A8);
  v3.super.isa = [v0 traitCollection];
  isa = v3.super.isa;
  v4 = sub_10076D3BC(v3).super.isa;
  v5 = [(objc_class *)v4 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

  if (v5)
  {
    v6 = [objc_opt_self() fontWithDescriptor:v5 size:0.0];

    if (!v6)
    {
      return;
    }

    [*&v1[OBJC_IVAR____TtC20ProductPageExtension18BadgeParagraphView_paragraphLabel] setFont:v6];
    v7 = v6;
  }

  else
  {
    v7 = isa;
  }
}

id sub_100017FB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BadgeParagraphView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100018060()
{
  result = type metadata accessor for BadgeParagraphView.Metrics(319);
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

uint64_t sub_100018120(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001816C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10076D9AC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000181EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10076D9AC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10001825C()
{
  result = sub_10076D9AC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_1000182D0(double a1, double a2)
{
  v4 = sub_10077164C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BadgeParagraphView.Metrics(0);
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10093F458 != -1)
  {
    swift_once();
  }

  v11 = sub_10000A61C(v8, qword_10099C8A8);
  sub_100018494(v11, v10);
  sub_1007706CC();
  sub_10076D17C();
  sub_10076D97C();
  (*(v5 + 8))(v7, v4);
  if (a2 >= a1)
  {
    v12 = a1;
  }

  else
  {
    v12 = a2;
  }

  v13 = ceil(v12);
  sub_1000184F8(v10);
  return v13;
}

uint64_t sub_100018494(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BadgeParagraphView.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000184F8(uint64_t a1)
{
  v2 = type metadata accessor for BadgeParagraphView.Metrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100018554()
{
  if (qword_1009411F0 != -1)
  {
    swift_once();
  }

  v0 = sub_10076D9AC();
  v1 = sub_10000A61C(v0, qword_1009A2350);
  qword_10099C8E0 = v0;
  unk_10099C8E8 = &protocol witness table for StaticDimension;
  v2 = sub_10000DB7C(qword_10099C8C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

char *sub_100018610(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_appEventView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for AppEventView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_appEventTapGestureRecognizer;
  *&v4[v11] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v12 = &v4[OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_appEventViewTappedAction];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_impressionsCalculator] = 0;
  v13 = &v4[OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_impressionsUpdateBlock];
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
  [v19 addSubview:*&v19[OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_lockupView]];
  v20 = OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_appEventView;
  [v19 addSubview:*&v19[OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_appEventView]];
  v21 = OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_appEventTapGestureRecognizer;
  [*&v19[OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_appEventTapGestureRecognizer] addTarget:v19 action:"handleTapWithGestureRecognizer:"];
  [*&v19[v21] setDelegate:v19];
  [*&v19[v20] addGestureRecognizer:*&v19[v21]];

  return v19;
}

id sub_10001883C()
{
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_appEventTapGestureRecognizer] removeTarget:v0 action:0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppEventSearchResultContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10001898C()
{
  v1 = v0;
  v2 = type metadata accessor for AppEventCardLayout(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_100942850);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - v7;
  v9 = type metadata accessor for AppEventSearchResultContentView();
  v36.receiver = v0;
  v36.super_class = v9;
  objc_msgSendSuper2(&v36, "layoutSubviews");
  sub_10076422C();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_lockupView];
  sub_10052225C();
  sub_100770A4C();
  v19 = &selRef_initWithTabBarSystemItem_tag_;
  [v18 setFrame:?];
  if (MetadataRibbonView.hasContent.getter() & 1) != 0 || (sub_1004EEFC8())
  {
    sub_10076ABBC();
    v20 = [v0 traitCollection];
    sub_10076DEDC();
    v21 = v6;
    sub_10000A5D4(&unk_100942870);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1007841E0;
    *(v22 + 32) = v20;
    v23 = v20;
    v19 = &selRef_initWithTabBarSystemItem_tag_;
    v24 = sub_10076DEEC();
    sub_10001CE64();
    sub_10076D3EC();
    v26 = v25;

    (*(v21 + 8))(v8, v5);
  }

  else
  {
    if (qword_10093F460 != -1)
    {
      swift_once();
    }

    sub_10000CF78(qword_10099C8C8, qword_10099C8E0);
    v27 = [v0 traitCollection];
    sub_10076D41C();
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
  v32 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_appEventView];
  if (qword_100940640 != -1)
  {
    v35 = v31;
    swift_once();
    v31 = v35;
  }

  sub_100244030(&unk_10099FD58, v32, Width, v31 - (v26 + MaxY));
  v33 = *&v32[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView];
  sub_100159754(v4);
  sub_100242754(v33, v4);
  sub_10001D3B8(v4);
  [v1 bounds];
  sub_100770A4C();
  return [v32 v19[217]];
}

void sub_100018F18(void *a1)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_appEventView) + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10001CF0C(&qword_100942810, 255, type metadata accessor for VideoView);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView];
    sub_100016F40(0, &qword_1009441F0);
    v8 = v7;
    v9 = sub_100770EEC();

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
    [*&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

void (*sub_1000190C8(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView;
  a1[1] = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_appEventView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_10001913C;
}

void sub_10001913C(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *a1;
  v5 = *(v3 + v2);
  if (a2)
  {
    v6 = v4;
    sub_10015ADA4();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      [*&v5[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView] insertSubview:Strong aboveSubview:*&v5[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_artworkView]];
      [v5 setNeedsLayout];
    }

    v10 = v6;
  }

  else
  {
    v10 = v4;
    sub_10015ADA4();
    swift_unknownObjectWeakAssign();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (!v9)
    {
      goto LABEL_8;
    }

    v6 = v9;
    [*&v5[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView] insertSubview:v9 aboveSubview:*&v5[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_artworkView]];
    [v5 setNeedsLayout];
  }

LABEL_8:
}

id sub_100019280()
{
  sub_100522870();
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_appEventView);
  sub_1004B1B8C();
  v2 = OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView;
  sub_10015A6F0();
  v3 = &v1[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_initialLongPressLocation];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_longPressGestureRecognizer] setEnabled:1];
  v4 = *&v1[v2];

  return [v1 addSubview:v4];
}

uint64_t sub_10001938C(uint64_t a1, char *a2)
{
  v3 = v2;
  swift_getObjectType();
  v5 = sub_10000A5D4(&unk_1009428D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = sub_10076C38C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075EEBC();
  sub_10001CF0C(&qword_100942860, 255, &type metadata accessor for AppEventSearchResult);
  result = sub_10076332C();
  v13 = v25;
  if (v25)
  {
    static SearchPageGridBreakpointOverridable.pageGridWithSearchOverrides(for:)();
    sub_10076C22C();
    v14 = *&v2[OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_lockupView];
    *&v14[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_regularWidthColumnSpacing] = v15;
    [v14 setNeedsLayout];
    v16 = sub_10075EEAC();
    v24 = v8;
    v17 = v16;
    v18 = sub_10076341C();
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
    sub_100386168(v17, v7, a2);

    sub_10000CFBC(v7, &unk_1009428D0);
    v19 = sub_10075EE9C();
    sub_100630CB4();
    sub_10069D2F0(v19, a2);

    swift_unknownObjectRelease();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    *(v21 + 2) = v20;
    *(v21 + 3) = v13;
    *(v21 + 4) = a2;
    v22 = &v3[OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_appEventViewTappedAction];
    v23 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_appEventViewTappedAction];
    *v22 = sub_10001D3AC;
    v22[1] = v21;

    sub_1000167E0(v23);

    [v3 setNeedsLayout];

    return (*(v9 + 8))(v11, v24);
  }

  return result;
}

void sub_1000196E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v4 - 8);
  v6 = v13 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_10075EE9C();
    v9 = sub_10075F27C();

    if (v9)
    {
      v13[4] = type metadata accessor for AppEventSearchResultContentView();
      v13[1] = v8;

      v10 = v8;
      sub_10076B88C();

      v11 = sub_10000A5D4(&unk_1009428E0);
      sub_10076F5AC();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v6, 1, v11) == 1)
      {

        sub_10000CFBC(v6, &unk_100943200);
      }

      else
      {
        sub_100263BF0(v9, 1, a3, v6);

        (*(v12 + 8))(v6, v11);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1000198D8()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  if (*(v0 + v1))
  {

    sub_10076611C();
  }

  *(v0 + v1) = 0;

  v2 = (v0 + OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_1000167E0(v3);
  return sub_100522B20();
}

uint64_t (*sub_1000199DC(uint64_t **a1))()
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
  v2[4] = sub_1000190C8(v2);
  return sub_100019A4C;
}

double sub_100019A88()
{
  [*(*(*v0 + OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_appEventView) + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_formattedDateView) frame];
  CGRectGetMaxY(v2);
  type metadata accessor for AppEventView();
  sub_10076422C();
  CGRectGetHeight(v3);
  sub_10076422C();
  CGRectGetWidth(v4);
  return 0.0;
}

CGFloat sub_100019B14()
{
  v1 = *(*v0 + OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_appEventView);
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_formattedDateView] frame];
  CGRectGetMaxY(v3);
  type metadata accessor for AppEventView();
  sub_10076422C();
  CGRectGetHeight(v4);
  [v1 bounds];
  return CGRectGetWidth(v5) * 0.5;
}

uint64_t sub_100019BEC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_100019CA8()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001CE50(*v1);
  return v2;
}

uint64_t sub_100019D04(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6);
}

uint64_t sub_100019DC4()
{
  type metadata accessor for SearchTagsRibbonView();
  sub_10001CF0C(&qword_10095C6D0, 255, type metadata accessor for SearchTagsRibbonView);
  return sub_10076A03C();
}

uint64_t sub_100019E70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_100019EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_100019F30(uint64_t *a1))()
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
  *(v3 + 32) = sub_10076483C();
  return sub_10001D41C;
}

void sub_100019FCC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_10001A014(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_appEventView) + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView);
  sub_100016F40(0, &qword_1009441F0);
  v6 = v5;
  v7 = sub_100770EEC();

  return v7 & 1;
}

uint64_t sub_10001A200(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_10001CF0C(&qword_100942818, a2, type metadata accessor for AppEventSearchResultContentView);
  result = sub_10001CF0C(&unk_100942820, v3, type metadata accessor for AppEventSearchResultContentView);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10001A288(unint64_t a1, unint64_t a2)
{
  v4 = sub_1007688CC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076C04C();
  v32[3] = v8;
  v32[4] = sub_10001CF0C(&qword_100943230, 255, &type metadata accessor for Feature);
  v9 = sub_10000DB7C(v32);
  (*(*(v8 - 8) + 104))(v9, enum case for Feature.search_tags(_:), v8);
  LOBYTE(v8) = sub_10076C90C();
  sub_10000CD74(v32);
  if (v8)
  {
    a2 = a1;
  }

  if (a2)
  {
    sub_10076439C();
    if (sub_1007701EC())
    {
      v10 = a2 & 0xFFFFFFFFFFFFFF8;
      if (a2 >> 62)
      {
        goto LABEL_40;
      }

      for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
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
          v5 = sub_10077149C();
          v10 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_38;
          }

LABEL_11:
          sub_10076432C();

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

uint64_t sub_10001A588(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = sub_1007688CC();
  v6 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007679DC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1007679EC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v50 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076439C();
  result = sub_1007701EC();
  if (result)
  {
    v43 = v11;
    v44 = v9;
    if (a1 >> 62)
    {
      result = sub_10077158C();
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
            v19 = sub_10077149C();
          }

          else
          {
            v19 = *(a1 + 8 * v17 + 32);
          }

          v20 = v58;
          sub_10076432C();
          v21 = (*v56)(v20, v59);
          if (v21 == v55)
          {
            break;
          }

          if (v21 == v53)
          {
            v22 = type metadata accessor for MetadataRibbonEditorsChoiceView();
            v23 = type metadata accessor for MetadataRibbonEditorsChoiceView;
            v24 = &unk_1009428B0;
            goto LABEL_24;
          }

          if (v21 == v52)
          {
            v22 = type metadata accessor for MetadataRibbonIconWithLabelView(0);
            v23 = type metadata accessor for MetadataRibbonIconWithLabelView;
            v24 = &unk_1009428A8;
            goto LABEL_24;
          }

          if (v21 == v51)
          {
            v22 = type metadata accessor for MetadataRibbonStarRatingView();
            v23 = type metadata accessor for MetadataRibbonStarRatingView;
            v24 = &unk_1009428C0;
            goto LABEL_24;
          }

          if (v21 == v42)
          {
            v22 = type metadata accessor for MetadataRibbonTagView();
            v23 = type metadata accessor for MetadataRibbonTagView;
            v24 = &unk_100942898;
            goto LABEL_24;
          }

          if (v21 == v41)
          {
            v22 = type metadata accessor for MetadataRibbonBarView();
            v23 = type metadata accessor for MetadataRibbonBarView;
            v24 = &unk_1009428A0;
            goto LABEL_24;
          }

          if (v21 == v40)
          {
            v22 = type metadata accessor for MetadataRibbonHighlightedTextView();
            v23 = type metadata accessor for MetadataRibbonHighlightedTextView;
            v24 = &unk_100942888;
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
        v24 = &unk_1009428B8;
LABEL_24:
        v25 = sub_10001CF0C(v24, 255, v23);
        v26 = swift_allocObject();
        v26[2] = v22;
        v26[3] = v25;
        v26[4] = v19;
        v27 = sub_10076DDDC();
        swift_allocObject();

        v28 = sub_10076DD9C();
        sub_10076434C();
        v71 = v27;
        v72 = &protocol witness table for LayoutViewPlaceholder;
        v70 = v28;
        v73 = sub_10076692C() & 1;
        v74 = sub_10076696C() & 1;
        sub_100016E2C(v69, v64, &qword_100942890);
        v29 = v67;
        LOBYTE(v25) = v68;
        v60 = v64[0];
        v61 = v64[1];
        *&v62[0] = v65;
        sub_100012498(&v66, v62 + 8);
        LOBYTE(v63) = v29;
        HIBYTE(v63) = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_10049CD80(0, v18[2] + 1, 1, v18);
        }

        a1 = v54;
        v31 = v18[2];
        v30 = v18[3];
        if (v31 >= v30 >> 1)
        {
          v18 = sub_10049CD80((v30 > 1), v31 + 1, 1, v18);
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
        sub_10000CFBC(v69, &qword_100942890);
        goto LABEL_29;
      }

      __break(1u);
    }

    else
    {
LABEL_33:
      (*(v44 + 16))(v43, v48, v46);
      v37 = v50;
      sub_10076798C();
      sub_10076799C();
      return (*(v45 + 8))(v37, v47);
    }
  }

  return result;
}

void sub_10001AD54()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_lockupView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_appEventView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for AppEventView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_appEventTapGestureRecognizer;
  *(v0 + v3) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v4 = (v0 + OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_appEventViewTappedAction);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_impressionsCalculator) = 0;
  v5 = (v0 + OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_impressionsUpdateBlock);
  *v5 = 0;
  v5[1] = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_10001AE6C(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_appEventView];
  v3 = *(*&v2[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView] + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupView);
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
  if (CGRectContainsPoint(v24, v21) && ([v5 bounds], v22.x = v16, v22.y = v18, !CGRectContainsPoint(v25, v22)) && *&v1[OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_appEventViewTappedAction])
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

uint64_t sub_10001B010(uint64_t a1, uint64_t a2)
{
  v132 = a2;
  v3 = sub_10000A5D4(&unk_100942850);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v101[-v5];
  v7 = sub_10076749C();
  v130 = *(v7 - 8);
  __chkstk_darwin(v7);
  v129 = &v101[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v135 = sub_1007679DC();
  *&v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v124 = &v101[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_10076997C();
  v126 = *(v10 - 8);
  v127 = v10;
  __chkstk_darwin(v10);
  v125 = &v101[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_10076443C();
  v139 = *(v12 - 8);
  v140 = v12;
  __chkstk_darwin(v12);
  v14 = &v101[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v138 = &v101[-v16];
  v146 = sub_10076747C();
  v137 = *(v146 - 8);
  __chkstk_darwin(v146);
  v128 = &v101[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v147 = &v101[-v19];
  v20 = sub_10000A5D4(&unk_100957F90);
  __chkstk_darwin(v20 - 8);
  v123 = &v101[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v145 = &v101[-v23];
  v24 = sub_10076469C();
  __chkstk_darwin(v24 - 8);
  v25 = sub_10076C38C();
  v131 = *(v25 - 8);
  __chkstk_darwin(v25);
  v142 = &v101[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10075EEBC();
  sub_10001CF0C(&qword_100942860, 255, &type metadata accessor for AppEventSearchResult);
  result = sub_10076332C();
  v141 = v184[0];
  if (v184[0])
  {
    v120 = v7;
    sub_1007632FC();
    if (qword_100940540 != -1)
    {
      swift_once();
    }

    sub_10076C32C();
    sub_10076C2FC();
    v29 = v28;
    v30 = sub_10075EEAC();

    v31 = sub_10076BB6C();
    v111 = v32;
    v112 = v31;
    v33 = sub_10076BBEC();
    v113 = v34;
    v114 = v33;
    v35 = sub_10076BB0C();
    v144 = v30;

    if (v35 && (v36 = sub_10076518C(), , v36))
    {
      v37 = sub_10076C3EC();
      v115 = v38;
      v116 = v37;
    }

    else
    {
      v115 = 0;
      v116 = 0;
    }

    v136 = sub_10076282C();
    (*(v134 + 56))(v145, 1, 1, v135);
    v133 = sub_10076284C();
    v102 = sub_10076286C();
    swift_getKeyPath();
    sub_10076338C();

    v39 = v184[5];
    if (qword_1009407E8 != -1)
    {
      swift_once();
    }

    v40 = v146;
    v41 = sub_10000A61C(v146, qword_1009A0690);
    v117 = *(v137 + 16);
    v118 = v137 + 16;
    v117(v147, v41, v40);
    v42 = sub_10077071C();
    v143 = v39;
    v121 = v25;
    v122 = a1;
    v104 = v4;
    v105 = v3;
    v103 = v6;
    if (v42)
    {
      if (qword_10093F520 != -1)
      {
        swift_once();
      }

      v43 = qword_100944C88;
    }

    else
    {
      if (qword_10093F528 != -1)
      {
        swift_once();
      }

      v43 = qword_100944CA0;
    }

    v44 = v140;
    v45 = sub_10000A61C(v140, v43);
    v46 = v139;
    (*(v139 + 16))(v14, v45, v44);
    (*(v46 + 32))(v138, v14, v44);
    v47 = [v143 preferredContentSizeCategory];
    sub_10077084C();

    sub_1007643EC();
    sub_10076441C();
    sub_10076746C();
    sub_10076745C();
    v110 = sub_10076DDDC();
    swift_allocObject();
    v119 = sub_10076DDBC();
    v48 = objc_opt_self();
    v108 = v48;
    v49 = [v48 preferredFontForTextStyle:UIFontTextStyleBody];
    v50 = sub_10076C04C();
    v184[3] = v50;
    v51 = sub_10001CF0C(&qword_100943230, 255, &type metadata accessor for Feature);
    v184[4] = v51;
    v107 = v51;
    v52 = sub_10000DB7C(v184);
    v53 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v54 = *(v50 - 8);
    v55 = *(v54 + 104);
    v109 = v54 + 104;
    v106 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v55(v52, enum case for Feature.measurement_with_labelplaceholder(_:), v50);
    sub_10076C90C();
    sub_10000CD74(v184);
    v56 = v125;
    sub_10076996C();
    sub_10076994C();
    v57 = v127;
    v126 = *(v126 + 8);
    (v126)(v56, v127);
    v58 = [v48 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v183[3] = v50;
    v183[4] = v51;
    v59 = sub_10000DB7C(v183);
    v55(v59, v53, v50);
    sub_10076C90C();
    sub_10000CD74(v183);
    sub_10076996C();
    sub_10076994C();
    v60 = v126;
    (v126)(v56, v57);
    v61 = [v108 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v182[3] = v50;
    v182[4] = v107;
    v62 = sub_10000DB7C(v182);
    v55(v62, v106, v50);
    sub_10076C90C();
    sub_10000CD74(v182);
    sub_10076996C();
    sub_10076994C();
    v60(v56, v57);
    v63 = v136;
    LODWORD(v127) = sub_10001A288(0, v136) & (v63 != 0);
    if (v127 == 1)
    {
      v64 = v110;
      v65 = objc_allocWithZone(sub_10076DEDC());
      v66 = v143;
      v67 = sub_10076DECC();
      v68 = v123;
      sub_100016E2C(v145, v123, &unk_100957F90);
      v69 = v134;
      v70 = *(v134 + 48);
      v71 = v135;
      if (v70(v68, 1, v135) == 1)
      {
        v72 = v124;
        _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
        if (v70(v68, 1, v71) != 1)
        {
          sub_10000CFBC(v68, &unk_100957F90);
        }
      }

      else
      {
        v72 = v124;
        (*(v69 + 32))(v124, v68, v71);
      }

      v74 = v67;
      sub_10001A588(v136, v72, v74);

      (*(v69 + 8))(v72, v71);
      swift_allocObject();
      v73 = sub_10076DDAC();
    }

    else
    {
      v64 = v110;
      swift_allocObject();
      v73 = sub_10076DDBC();
    }

    v75 = v73;

    v76 = v133;
    if ((sub_10001A288(v133, 0) & (v76 != 0)) == 1)
    {
      sub_1004EF9EC(v76, v102 & 1);
      swift_allocObject();
      v77 = sub_10076DDAC();
    }

    else
    {
      swift_allocObject();
      v77 = sub_10076DDBC();
    }

    v78 = v77;
    v117(v128, v147, v146);
    v181 = &protocol witness table for LayoutViewPlaceholder;
    v180 = v64;
    v179 = v119;
    v178 = 0;
    *&v176[40] = 0u;
    v177 = 0u;
    sub_10000A570(v184, v176);
    sub_10000A570(v183, &v175);
    v174 = 0;
    v172 = 0u;
    v173 = 0u;
    v171 = 0;
    v169 = 0u;
    v170 = 0u;

    v135 = v78;
    v79 = sub_10076DDCC();
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
    sub_10000A570(v182, v154);
    v152 = v64;
    v153 = &protocol witness table for LayoutViewPlaceholder;
    v150 = &protocol witness table for LayoutViewPlaceholder;
    v151 = v75;
    v149 = v64;
    v148 = v78;
    v80 = v129;
    sub_10076748C();
    sub_10076DEDC();
    sub_10000A5D4(&unk_100942870);
    v81 = swift_allocObject();
    v134 = xmmword_1007841E0;
    *(v81 + 16) = xmmword_1007841E0;
    v82 = v143;
    *(v81 + 32) = v143;
    v83 = v82;
    v84 = sub_10076DEEC();
    sub_10001CF0C(&unk_100958A50, 255, &type metadata accessor for SmallSearchLockupLayout);
    v85 = v120;
    sub_10076D2AC();

    (*(v130 + 8))(v80, v85);
    sub_10000CD74(v182);
    sub_10000CD74(v183);
    sub_10000CD74(v184);
    (*(v139 + 8))(v138, v140);
    (*(v137 + 8))(v147, v146);
    sub_10000CFBC(v145, &unk_100957F90);

    v86 = sub_10076284C();
    v87 = sub_10076282C();
    v88 = sub_10001A288(v86, v87);

    if (v88)
    {
      v89 = v103;
      sub_10076ABBC();
      swift_getKeyPath();
      sub_10076338C();

      v90 = v184[0];
      v91 = swift_allocObject();
      *(v91 + 16) = v134;
      *(v91 + 32) = v90;
      v92 = v90;
      v93 = sub_10076DEEC();
      sub_10001CE64();
      v94 = v105;
      sub_10076D3EC();

      (*(v104 + 8))(v89, v94);
    }

    else
    {
      if (qword_10093F460 != -1)
      {
        swift_once();
      }

      sub_10000CF78(qword_10099C8C8, qword_10099C8E0);
      swift_getKeyPath();
      sub_10076338C();

      v95 = v184[0];
      sub_10076D41C();
    }

    v96 = v121;
    v97 = type metadata accessor for AppEventView();
    v98 = sub_10075EE9C();
    v99 = sub_100630CB4();
    ObjectType = swift_getObjectType();
    sub_10069CFD8(v29, v98, v99, v132, v97, ObjectType);

    swift_unknownObjectRelease();

    return (*(v131 + 8))(v142, v96);
  }

  return result;
}

void sub_10001C238(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_lockupView);
  v4 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
  v5 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  v18.value.super.isa = 0;
  v18.is_nil = 0;
  sub_10075FCEC(v18, v6);

  v7 = *(v3 + v4);
  sub_10075FD2C();
  sub_10001CF0C(&qword_100941820, 255, &type metadata accessor for ArtworkView);
  v8 = v7;
  sub_100760BFC();

  v10 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_metadataRibbonView);
  v11 = *&v10[OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metadataRibbonItemViews];
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
        sub_10075FCEC(v19, v16);
        sub_100760BFC();
      }

      v13 += 16;
      --v12;
    }

    while (v12);
  }

  sub_10052FC50(a1, 1, v9);
}

uint64_t sub_10001C418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100763ADC();
  v37 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076BF6C();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10076BEDC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41[3] = sub_10075F1FC();
  v41[4] = &protocol witness table for AppPromotion;
  v41[0] = a1;
  sub_10000A570(v41, v40);

  sub_10000A5D4(&unk_100942830);
  if (!swift_dynamicCast())
  {
    return sub_10000CD74(v41);
  }

  v38 = v10;
  v14 = v39;
  if (qword_10093F850 != -1)
  {
    swift_once();
  }

  v34 = v11;
  v15 = type metadata accessor for AppEventCardLayout.Metrics(0);
  sub_10000A61C(v15, qword_10099D2B0);
  sub_10076D36C();
  v16 = sub_10075F12C();
  v35 = v14;
  v36 = a2;
  if (v16)
  {
    sub_10076B84C();

LABEL_7:

    sub_10076BEEC();
    sub_10076BE9C();
    (*(v34 + 1))(v13, v38);
    sub_10076BFCC();
    v17 = *(a3 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_artworkView);
    sub_10076BF7C();
    sub_10075FCCC();
    [v17 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_100016F40(0, &qword_100942F10);
      sub_100770D5C();
    }

    sub_10075FB8C();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = Strong;
      type metadata accessor for VideoView();
      sub_10001CF0C(&unk_100942840, 255, type metadata accessor for VideoView);
      sub_100760B8C();
    }

    else
    {
      sub_10075FD2C();
      sub_10001CF0C(&qword_100941820, 255, &type metadata accessor for ArtworkView);
      sub_100760B8C();
    }

    goto LABEL_13;
  }

  if (sub_10075F14C())
  {
    goto LABEL_7;
  }

LABEL_13:
  v20 = *(a3 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupView);
  if (v20)
  {
    v21 = v20;
    sub_10075F1DC();
    v22 = sub_10076BB9C();

    if (v22)
    {
      v23 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
      swift_beginAccess();
      v24 = v37;
      (*(v37 + 16))(v8, &v21[v23], v6);
      sub_1007639AC();
      (*(v24 + 8))(v8, v6);
      sub_10076BEEC();
      sub_10076BE9C();
      v33 = *(v34 + 1);
      v33(v13, v38);
      v25 = sub_10076BFCC();
      v26 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
      v27 = *&v21[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView];
      v34 = v21;
      v28 = v27;
      sub_10076BF7C();
      sub_10075FCCC();
      [v28 setContentMode:sub_10076BDBC()];
      v37 = v25;
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10);
        sub_100770D5C();
      }

      sub_10075FB8C();

      v29 = *&v21[v26];
      sub_10076BEEC();
      v30 = sub_10076BE9C();
      v33(v13, v38);
      [v29 setContentMode:v30];

      v21 = *&v21[v26];
      v31 = v34;

      sub_10075FD2C();
      sub_10001CF0C(&qword_100941820, 255, &type metadata accessor for ArtworkView);
      sub_100760B8C();
    }
  }

  else
  {
  }

  return sub_10000CD74(v41);
}

uint64_t sub_10001CB18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10076BF6C();
  __chkstk_darwin(v6 - 8);
  sub_10000A570(a1, v19);
  sub_10000A5D4(&unk_100942830);
  sub_10075EEBC();
  result = swift_dynamicCast();
  if (result)
  {
    sub_10001C238(a2);
    sub_10075EEAC();
    v8 = sub_10076BB5C();

    if (v8)
    {
      v9 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
      v18 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_lockupView);
      v10 = qword_10093FBE0;
      v11 = *(v18 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
      if (v10 != -1)
      {
        swift_once();
      }

      v12 = sub_100763ADC();
      sub_10000A61C(v12, qword_10099DDA0);
      sub_1007639AC();
      [v11 contentMode];
      sub_10076BFCC();
      sub_10076BF7C();
      sub_10075FCCC();
      [v11 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10);
        sub_100770D5C();
      }

      sub_10075FB8C();
      v13 = *(v18 + v9);
      sub_10075FD2C();
      sub_10001CF0C(&qword_100941820, 255, &type metadata accessor for ArtworkView);
      v14 = v13;
      sub_100760B8C();
    }

    v15 = *(*(v3 + OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_metadataRibbonView);
    sub_1005215E8(a1, a2);

    v16 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_appEventView);
    v17 = sub_10075EE9C();
    sub_10001C418(v17, a2, *(v16 + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView));
  }

  return result;
}

uint64_t sub_10001CE50(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10001CE64()
{
  result = qword_100942880;
  if (!qword_100942880)
  {
    sub_10000CE78(&unk_100942850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942880);
  }

  return result;
}

uint64_t sub_10001CEC8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001CF0C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10001CF54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10076469C();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10076C38C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075EEBC();
  sub_10001CF0C(&qword_100942860, 255, &type metadata accessor for AppEventSearchResult);
  result = sub_10076332C();
  if (v23)
  {
    v20 = a3;
    v21 = v6;
    v23 = _swiftEmptyArrayStorage;
    sub_10075EEAC();
    v11 = sub_10076BB5C();

    if (v11)
    {
      if (qword_10093FBE0 != -1)
      {
        swift_once();
      }

      v12 = sub_100763ADC();
      sub_10000A61C(v12, qword_10099DDA0);
      sub_1007639AC();
      sub_10076BFCC();
      sub_10077019C();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();
    }

    sub_10075EEAC();
    v13 = sub_10076282C();

    swift_getKeyPath();
    sub_10076338C();

    v14 = v22;
    v15 = sub_100521984(v13, v22);

    sub_1000F92B4(v15);
    sub_1007632FC();
    if (qword_100940540 != -1)
    {
      swift_once();
    }

    sub_10076C32C();
    sub_10076C22C();
    sub_10001B010(a1, v20);
    type metadata accessor for AppEventView();
    v16 = sub_10075EE9C();
    v17 = sub_100630CB4();
    swift_getObjectType();
    v18 = sub_10069D120(v16, v17);

    swift_unknownObjectRelease();
    sub_1000F92B4(v18);
    v19._rawValue = v23;
    sub_100760BAC(v19);

    return (*(v7 + 8))(v9, v21);
  }

  return result;
}

uint64_t sub_10001D32C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001D364()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001D3B8(uint64_t a1)
{
  v2 = type metadata accessor for AppEventCardLayout(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_10001D424()
{
  v0 = sub_10076469C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007632FC();
  v4 = sub_10001D554();
  (*(v1 + 8))(v3, v0);
  return v4;
}

double sub_10001D554()
{
  v0 = sub_10076B6EC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  v7 = sub_10076C38C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076460C();
  sub_10076C2FC();
  (*(v8 + 8))(v10, v7);
  sub_10076465C();
  sub_10076B6AC();
  sub_10001D878(&unk_100946780, &type metadata accessor for Shelf.PresentationHints);
  v11 = sub_10077124C();
  v12 = *(v1 + 8);
  v12(v3, v0);
  v12(v6, v0);
  if (v11)
  {
    if (qword_100940350 != -1)
    {
      swift_once();
    }

    v13 = qword_10099F740;
  }

  else
  {
    if (qword_100940358 != -1)
    {
      swift_once();
    }

    v13 = qword_10099F758;
  }

  v14 = sub_10075FD8C();
  sub_10000A61C(v14, v13);
  sub_10076462C();
  sub_10075FDAC();
  sub_10001D878(&qword_1009428F8, &type metadata accessor for BrickLayout);
  sub_10076DBDC();
  v16 = v15;
  swift_unknownObjectRelease();
  return v16;
}

uint64_t sub_10001D878(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001D8C4(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100942900);
  __chkstk_darwin(v2 - 8);
  v4 = &v44 - v3;
  v56 = sub_10076C2DC();
  v60 = *(v56 - 8);
  __chkstk_darwin(v56);
  v6 = (&v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10000A5D4(&qword_100942908);
  __chkstk_darwin(v7 - 8);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  __chkstk_darwin(v13);
  v15 = &v44 - v14;
  __chkstk_darwin(v16);
  v59 = &v44 - v17;
  sub_10000A5D4(&qword_100942910);
  v18 = *(sub_10076C20C() - 8);
  v57 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v49 = v20;
  *(v20 + 16) = xmmword_1007844F0;
  v21 = v20 + v19;
  v22 = a1;
  v61 = a1;
  sub_10001E290();
  sub_10076C29C();
  v61 = 15.0;
  sub_10076C29C();
  v61 = 0.0;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #16.0 }

  *v6 = _Q0;
  v54 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v28 = *(v60 + 104);
  v60 += 104;
  v55 = v28;
  v29 = v56;
  (v28)(v6);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v61) = 0;
  sub_10076C29C();
  v61 = 0.0;
  sub_10076C29C();
  v58 = v15;
  v52 = v12;
  sub_10076C1CC();
  v61 = a1;
  sub_10076C29C();
  v61 = 15.0;
  sub_10076C29C();
  v61 = 0.0;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #20.0 }

  *v6 = _Q0;
  v32 = v54;
  v55(v6, v54, v29);
  LOBYTE(v61) = 0;
  v50 = v4;
  sub_10076C29C();
  v61 = 0.0;
  v53 = v9;
  sub_10076C29C();
  v33 = v57;
  v51 = v21;
  top = UIEdgeInsetsZero.top;
  v48 = left;
  sub_10076C1CC();
  v45 = 2 * v33;
  v61 = v22;
  sub_10076C29C();
  v61 = 20.0;
  sub_10076C29C();
  v61 = 0.0;
  sub_10076C29C();
  v46 = vdupq_n_s64(0x4041000000000000uLL);
  v34 = v6;
  *v6 = v46;
  v35 = v32;
  v36 = v32;
  v37 = v55;
  v38 = v56;
  v55(v6, v36, v56);
  LOBYTE(v61) = 0;
  sub_10076C29C();
  v61 = 0.0;
  sub_10076C29C();
  v39 = v45;
  v40 = v34;
  sub_10076C1CC();
  v41 = v57;
  v45 = v39 + v57;
  v61 = v22;
  sub_10076C29C();
  v61 = 20.0;
  sub_10076C29C();
  v61 = 0.0;
  sub_10076C29C();
  *v40 = v46;
  v37(v40, v35, v38);
  sub_1007704BC();
  LOBYTE(v61) = 0;
  sub_10076C29C();
  v61 = 0.0;
  sub_10076C29C();
  sub_10076C1CC();
  v45 = 4 * v41;
  v61 = 3.0;
  sub_10076C29C();
  v61 = 24.0;
  sub_10076C29C();
  v61 = 0.0;
  sub_10076C29C();
  v46 = vdupq_n_s64(0x404A000000000000uLL);
  *v40 = v46;
  v42 = v56;
  v37(v40, v54, v56);
  LOBYTE(v61) = 0;
  sub_10076C29C();
  v61 = 0.0;
  sub_10076C29C();
  sub_10076C1CC();
  v61 = 3.0;
  sub_10076C29C();
  v61 = 24.0;
  sub_10076C29C();
  v61 = 0.0;
  sub_10076C29C();
  *v40 = v46;
  v55(v40, v54, v42);
  LOBYTE(v61) = 0;
  sub_10076C29C();
  v61 = 0.0;
  sub_10076C29C();
  sub_10076C1CC();
  return v49;
}

unint64_t sub_10001E290()
{
  result = qword_100942918;
  if (!qword_100942918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942918);
  }

  return result;
}

uint64_t sub_10001E2E4()
{
  v0 = sub_10076FD2C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009412D0 != -1)
  {
    swift_once();
  }

  v4 = sub_10000A61C(v0, qword_1009A25B8);
  (*(v1 + 16))(v3, v4, v0);
  qword_10099C908 = sub_10076FD4C();
  unk_10099C910 = &protocol witness table for OSLogger;
  sub_10000DB7C(qword_10099C8F0);
  return sub_10076FD3C();
}

char *sub_10001E428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10000A5D4(&qword_100942A80);
  __chkstk_darwin(v11 - 8);
  v13 = &v39 - v12;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension27MarketingItemViewController_dynamicDelegate] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension27MarketingItemViewController_gridPresenter] = 0;
  v14 = &v5[OBJC_IVAR____TtC20ProductPageExtension27MarketingItemViewController_gridView];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension27MarketingItemViewController_objectGraph] = a4;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension27MarketingItemViewController_requestInfo] = a1;
  v15 = &v5[OBJC_IVAR____TtC20ProductPageExtension27MarketingItemViewController_referrer];
  *v15 = a2;
  *(v15 + 1) = a3;
  sub_100760C4C();

  sub_10076F5CC();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension27MarketingItemViewController_artworkLoader] = v41;
  sub_1007678DC();
  v16 = sub_10076FF6C();

  sub_10076796C();
  v17 = sub_10076FF6C();

  sub_10076148C();
  sub_10076F5CC();
  v18 = sub_10076147C();

  v40.receiver = v5;
  v40.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v40, "initWithServiceType:placement:bag:", v16, v17, v18);
  swift_unknownObjectRelease();

  v20 = v19;
  sub_10076795C();
  v21 = sub_10076B96C();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v13, 1, v21) == 1)
  {
    sub_10000CFBC(v13, &qword_100942A80);
    v23 = 0;
  }

  else
  {
    sub_10076B92C();
    (*(v22 + 8))(v13, v21);
    v23 = sub_10076FF6C();
  }

  [v20 setSeed:v23];

  sub_1007678CC();
  if (v24)
  {
    v25 = sub_10076FF6C();
  }

  else
  {
    v25 = 0;
  }

  [v20 setOfferHints:v25];

  v26 = v20;
  v27 = sub_1007678EC();
  if (v27)
  {
    sub_100065D34(v27);

    v28.super.isa = sub_10076FE3C().super.isa;
  }

  else
  {
    v28.super.isa = 0;
  }

  [v26 setClientOptions:v28.super.isa];

  if (sub_1007678FC())
  {
    v29.super.isa = sub_10076FE3C().super.isa;
  }

  else
  {
    v29.super.isa = 0;
  }

  [v26 setMetricsOverlay:v29.super.isa];

  [v26 setAnonymousMetrics:1];
  sub_10076149C();
  v30 = sub_10076FF6C();

  [v26 setMediaClientIdentifier:v30];

  sub_1000200B4();
  v31 = v26;
  sub_10076F5CC();
  v32 = v41;
  v33 = [v41 ams_activeiTunesAccount];

  [v31 setAccount:v33];
  sub_100767E8C();
  sub_10076F5CC();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v34 = objc_allocWithZone(sub_10076986C());
  v35 = sub_10076985C();

  v36 = OBJC_IVAR____TtC20ProductPageExtension27MarketingItemViewController_dynamicDelegate;
  *&v31[OBJC_IVAR____TtC20ProductPageExtension27MarketingItemViewController_dynamicDelegate] = v35;
  swift_unknownObjectRelease();
  [v31 setDelegate:*&v31[v36]];
  sub_10076925C();
  v37 = sub_10076924C();
  [v31 setMediaContentDelegate:v37];

  return v31;
}

void sub_10001EAFC(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void *sub_10001EB58(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v9 = Strong;
  v10 = sub_10001F748(a1, a2, a3, a4);
  v11 = v10;

  return v10;
}

uint64_t sub_10001EF64()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension27MarketingItemViewController_referrer);

  return v1;
}

id sub_10001F08C()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension27MarketingItemViewController_gridView);
  swift_beginAccess();
  v2 = *v1;
  v3 = *v1;
  return v2;
}

void sub_10001F0E0(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC20ProductPageExtension27MarketingItemViewController_gridView;
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  *(v5 + 8) = a2;
}

uint64_t sub_10001F1A0()
{
  v1 = [v0 metricsOverlay];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_10076FE4C();

  return v3;
}

void sub_10001F210(uint64_t a1)
{
  if (a1)
  {
    isa = sub_10076FE3C().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v1 setMetricsOverlay:isa];
}

void (*sub_10001F298(uint64_t **a1))(void *a1)
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
  v2[4] = sub_10001F308(v2);
  return sub_100019FCC;
}

void (*sub_10001F308(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 metricsOverlay];
  if (v3)
  {
    v4 = v3;
    v5 = sub_10076FE4C();
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_10001F3A4;
}

void sub_10001F3A4(uint64_t *a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if (v3)
    {

      isa = sub_10076FE3C().super.isa;
    }

    else
    {
      isa = 0;
    }

    [a1[1] setMetricsOverlay:isa];
  }

  else if (v3)
  {
    isa = sub_10076FE3C().super.isa;

    [a1[1] setMetricsOverlay:isa];
  }

  else
  {
    isa = 0;
    [a1[1] setMetricsOverlay:0];
  }
}

void *sub_10001F498(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v4 = sub_10001F748(a1, a2, a3, a4);
  v5 = v4;
  return v4;
}

void sub_10001F4C4()
{
  swift_getObjectType();

  sub_100769F3C();
}

uint64_t sub_10001F510(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_10002006C(&unk_100942A70, v5, type metadata accessor for MarketingItemViewController);

  return DynamicViewControllerDisplaying.loadGrid(primaryIcon:remainingIcons:)(a1, a2, ObjectType, v6);
}

uint64_t sub_10001F5CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v5 = sub_10002006C(&unk_100942A70, v4, type metadata accessor for MarketingItemViewController);

  return a3(ObjectType, v5);
}

void *sub_10001F748(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  sub_10076536C();
  swift_allocObject();

  sub_10076534C();
  v10 = objc_allocWithZone(type metadata accessor for UpsellGridView());
  v11 = sub_100517380(0);
  [v11 setFrame:{a1, a2, a3, a4}];
  v12 = sub_10002006C(&qword_100942A58, 255, type metadata accessor for UpsellGridView);
  v13 = (v5 + OBJC_IVAR____TtC20ProductPageExtension27MarketingItemViewController_gridView);
  swift_beginAccess();
  v14 = *v13;
  *v13 = v11;
  v13[1] = v12;
  v20 = v11;

  sub_10002006C(&qword_100942A50, v15, type metadata accessor for MarketingItemViewController);
  swift_unknownObjectRetain();
  sub_10076535C();
  sub_100760C9C();
  if (qword_1009412D8 != -1)
  {
    swift_once();
  }

  v16 = sub_10076FD4C();
  sub_10000A61C(v16, qword_1009A25D0);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  type metadata accessor for CGRect(0);
  v21[3] = v17;
  v18 = swift_allocObject();
  v21[0] = v18;
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  sub_10076F30C();
  sub_10000CFBC(v21, &unk_1009434C0);
  sub_10076FBCC();

  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  if (CGRectIsEmpty(v22))
  {
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBEC();
  }

  return *v13;
}

void *sub_10001FAF8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  sub_10076536C();
  swift_allocObject();

  sub_10076534C();
  v10 = objc_allocWithZone(type metadata accessor for UpsellGridView());
  v11 = sub_100517380(0);
  [v11 setFrame:{a1, a2, a3, a4}];
  v12 = sub_10002006C(&qword_100942A58, 255, type metadata accessor for UpsellGridView);
  v13 = (v5 + OBJC_IVAR____TtC20ProductPageExtension21DynamicViewController_gridView);
  swift_beginAccess();
  v14 = *v13;
  *v13 = v11;
  v13[1] = v12;
  v19 = v11;

  sub_10002006C(&qword_100944EE0, 255, type metadata accessor for DynamicViewController);
  swift_unknownObjectRetain();
  sub_10076535C();
  sub_100760C9C();
  if (qword_1009412D8 != -1)
  {
    swift_once();
  }

  v15 = sub_10076FD4C();
  sub_10000A61C(v15, qword_1009A25D0);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  type metadata accessor for CGRect(0);
  v20[3] = v16;
  v17 = swift_allocObject();
  v20[0] = v17;
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  sub_10076F30C();
  sub_10000CFBC(v20, &unk_1009434C0);
  sub_10076FBCC();

  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  if (CGRectIsEmpty(v21))
  {
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBEC();
  }

  return *v13;
}

uint64_t sub_10001FEA4()
{
  if (qword_10093F468 != -1)
  {
    swift_once();
  }

  sub_10000CF78(qword_10099C8F0, qword_10099C908);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  swift_getErrorValue();
  v3[3] = v2;
  v0 = sub_10000DB7C(v3);
  (*(*(v2 - 8) + 16))(v0);
  sub_10076F30C();
  sub_10000CFBC(v3, &unk_1009434C0);
  sub_10076FBEC();
}

uint64_t sub_10002006C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1000200B4()
{
  result = qword_100944EF0;
  if (!qword_100944EF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100944EF0);
  }

  return result;
}

uint64_t sub_100020100()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100020230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v88 = a2;
  v89 = a3;
  v90 = sub_10076CF6C();
  v87 = *(v90 - 8);
  __chkstk_darwin(v90);
  v86 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_10000A5D4(&qword_100942B30) - 8;
  __chkstk_darwin(v81);
  v93 = v75 - v6;
  v79 = sub_10076491C();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v94 = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007648DC();
  v99 = *(v8 - 8);
  v100 = v8;
  __chkstk_darwin(v8);
  v82 = v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v75 - v11;
  v92 = sub_1007648BC();
  v77 = *(v92 - 8);
  __chkstk_darwin(v92);
  v14 = v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_10076B96C();
  v97 = *(v101 - 8);
  __chkstk_darwin(v101);
  v84 = v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v75 - v17;
  v19 = sub_10076CF4C();
  v98 = *(v19 - 8);
  __chkstk_darwin(v19);
  v83 = v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v75 - v22;
  v96 = v3;
  v24 = *(v3 + 24);
  sub_10076493C();
  sub_1007648EC();
  sub_10076490C();
  v85 = a1;
  sub_10076492C();
  v75[2] = v24;
  swift_getObjectType();
  sub_10075EE2C();
  v75[1] = v25;
  v26 = *(v81 + 56);
  v27 = v99;
  v28 = *(v99 + 16);
  v29 = v93;
  v80 = v12;
  v30 = v100;
  v28(v93, v12, v100);
  v31 = v77;
  v32 = *(v77 + 16);
  v76 = v26;
  v81 = v14;
  v32(v29 + v26, v14, v92);
  v33 = (*(v27 + 88))(v29, v30);
  v91 = v19;
  v34 = v98;
  v95 = v23;
  if (v33 == enum case for AdvertActionMetrics.Invocation.advertPressed(_:))
  {
    swift_unknownObjectRelease();
    (*(v78 + 8))(v94, v79);
    v35 = *(v27 + 8);
    v35(v80, v30);
    v36 = *(v31 + 8);
    v37 = v92;
    v36(v81, v92);
    (*(v97 + 8))(v18, v101);
    (*(v34 + 104))(v95, enum case for AdInteractionType.normal(_:), v91);
    v38 = v93;
    v36(v93 + v76, v37);
    v94 = v35;
    v35(v38, v30);
    goto LABEL_12;
  }

  v39 = v94;
  v75[0] = v18;
  v40 = v78;
  v41 = v79;
  v42 = v92;
  v43 = v93;
  if (v33 == enum case for AdvertActionMetrics.Invocation.markerPress(_:))
  {
    swift_unknownObjectRelease();
    (*(v40 + 8))(v39, v41);
    v44 = v100;
    v45 = *(v99 + 8);
    v45(v80, v100);
    v46 = *(v31 + 8);
    v46(v81, v42);
    (*(v97 + 8))(v75[0], v101);
    (*(v98 + 104))(v95, enum case for AdInteractionType.adMarker(_:), v91);
    v46(v43 + v76, v42);
    v94 = v45;
    v45(v43, v44);
    goto LABEL_12;
  }

  v47 = v97;
  v48 = v95;
  v49 = v93;
  v50 = v92;
  v51 = v31;
  v52 = v79;
  v53 = v75[0];
  if (v33 == enum case for AdvertActionMetrics.Invocation.offerButtonPress(_:))
  {
    v54 = v93;
    v55 = (*(v51 + 88))(v93 + v76, v92);
    if (v55 == enum case for AdvertActionMetrics.AdvertType.standardApp(_:))
    {
      sub_10065C770(v48);
LABEL_10:
      swift_unknownObjectRelease();
      (*(v40 + 8))(v39, v52);
      v56 = v100;
      v57 = *(v99 + 8);
      v57(v80, v100);
      (*(v51 + 8))(v81, v50);
      (*(v97 + 8))(v53, v101);
      v94 = v57;
      v57(v54, v56);
      goto LABEL_12;
    }

    v49 = v54;
    if (v55 == enum case for AdvertActionMetrics.AdvertType.arcadeApp(_:))
    {
      sub_10065C39C(v48);
      goto LABEL_10;
    }
  }

  v58 = v49;
  swift_unknownObjectRelease();
  (*(v40 + 8))(v39, v52);
  v94 = *(v99 + 8);
  (v94)(v80, v100);
  (*(v51 + 8))(v81, v50);
  (*(v47 + 8))(v53, v101);
  (*(v98 + 104))(v48, enum case for AdInteractionType.open(_:), v91);
  sub_10000CFBC(v58, &qword_100942B30);
LABEL_12:
  if (qword_1009412F8 != -1)
  {
    swift_once();
  }

  v93 = sub_10076FD4C();
  v92 = sub_10000A61C(v93, qword_1009A2630);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_1007846C0;
  sub_10076F31C();
  sub_10076F27C();
  sub_10076F27C();
  v59 = sub_1007648FC();
  v104 = &type metadata for String;
  v102 = v59;
  v103 = v60;
  sub_10076F30C();
  sub_10000CFBC(&v102, &unk_1009434C0);
  sub_10076F27C();
  v104 = v101;
  sub_10000DB7C(&v102);
  sub_10076493C();
  sub_10076F28C();
  sub_10000CFBC(&v102, &unk_1009434C0);
  sub_10076F27C();
  v61 = v82;
  sub_10076490C();
  v62 = sub_1007648CC();
  v64 = v63;
  (v94)(v61, v100);
  v104 = &type metadata for String;
  v102 = v62;
  v103 = v64;
  sub_10076F30C();
  sub_10000CFBC(&v102, &unk_1009434C0);
  sub_10076F27C();
  v65 = v91;
  v104 = v91;
  v66 = sub_10000DB7C(&v102);
  v67 = v98;
  v68 = *(v98 + 16);
  v69 = v95;
  v68(v66, v95, v65);
  sub_10076F28C();
  sub_10000CFBC(&v102, &unk_1009434C0);
  sub_10076FBCC();

  v70 = sub_1007648FC();
  v99 = v71;
  v100 = v70;
  v68(v83, v69, v65);
  sub_10076494C();
  v72 = v84;
  sub_10076493C();
  sub_10076B92C();
  (*(v97 + 8))(v72, v101);
  v73 = v86;
  sub_10076CF5C();
  sub_10076CC8C();
  (*(v87 + 8))(v73, v90);
  return (*(v67 + 8))(v69, v65);
}

uint64_t sub_100020F50()
{

  return swift_deallocClassInstance();
}

void *sub_100020FD8(uint64_t a1, uint64_t a2)
{
  v14 = a2;
  v3 = sub_10076B5BC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&unk_100946720);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - v9;
  v15 = _swiftEmptyArrayStorage;
  swift_getKeyPath();
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  (*(v8 + 8))(v10, v7);
  if ((*(v4 + 88))(v6, v3) == enum case for Shelf.ContentType.productBadge(_:))
  {
    v11 = sub_100021210(a1, v14);
    sub_1000F92CC(v11);
  }

  else
  {
    v12 = sub_10044B6E4(a1);
    sub_1000F92CC(v12);
    (*(v4 + 8))(v6, v3);
  }

  return v15;
}

unint64_t sub_100021210(uint64_t a1, uint64_t a2)
{
  v129 = a2;
  v3 = sub_100763F9C();
  v127 = *(v3 - 8);
  v128 = v3;
  __chkstk_darwin(v3);
  v126 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_10076C38C();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v123 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_10076B5BC();
  v119 = *(v121 - 8);
  __chkstk_darwin(v121);
  v108 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_10000A5D4(&qword_100942C28);
  __chkstk_darwin(v118);
  v120 = &v107 - v7;
  v8 = sub_10000A5D4(&unk_1009568A0);
  __chkstk_darwin(v8 - 8);
  v111 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v132 = &v107 - v11;
  __chkstk_darwin(v12);
  v133 = &v107 - v13;
  v14 = sub_10076B21C();
  v131 = *(v14 - 8);
  __chkstk_darwin(v14);
  v107 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_10000A5D4(&qword_100942C30);
  __chkstk_darwin(v114);
  v17 = &v107 - v16;
  v18 = sub_10000A5D4(&qword_100942C38);
  __chkstk_darwin(v18 - 8);
  v110 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v107 - v21;
  __chkstk_darwin(v23);
  v130 = &v107 - v24;
  v25 = sub_10000A5D4(&qword_100942C40);
  __chkstk_darwin(v25);
  v117 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v107 - v28;
  v30 = sub_10000A5D4(&qword_1009499A0);
  __chkstk_darwin(v30 - 8);
  v116 = &v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v107 - v33;
  v139 = _swiftEmptyArrayStorage;
  swift_getKeyPath();
  v134 = a1;
  sub_10076338C();

  v115 = v25;
  v35 = *(v25 + 48);
  sub_100023AD0(v29, v34, &qword_1009499A0);
  v36 = sub_10000A5D4(&unk_100946720);
  v37 = *(v36 - 8);
  v38 = *(v37 + 48);
  v113 = v37 + 48;
  v112 = v38;
  v39 = v38(v34, 1, v36);
  v109 = v37;
  if (v39 == 1)
  {
    sub_10000CFBC(&v29[v35], &qword_1009499A0);
    sub_10000CFBC(v34, &qword_1009499A0);
    v136 = 0u;
    v137 = 0u;
    v138 = 0;
    v40 = v130;
LABEL_10:
    sub_10000CFBC(&v136, &unk_10094F720);
    goto LABEL_11;
  }

  swift_getKeyPath();
  sub_10076F49C();

  v41 = v135;
  (*(v37 + 8))(v34, v36);
  if (*(v41 + 16))
  {
    sub_10000A570(v41 + 32, &v136);
  }

  else
  {

    v138 = 0;
    v136 = 0u;
    v137 = 0u;
  }

  v40 = v130;
  sub_10000CFBC(&v29[v35], &qword_1009499A0);
  if (!*(&v137 + 1))
  {
    goto LABEL_10;
  }

  sub_10000A5D4(&qword_1009575A0);
  sub_100762BEC();
  if (swift_dynamicCast())
  {
    v42 = sub_100762B8C();

    if (v42)
    {
      v43 = v36;

      sub_10076B23C();
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
  sub_100016E2C(v40, v17, &qword_100942C38);
  sub_100016E2C(v22, &v17[v47], &qword_100942C38);
  v48 = v40;
  v49 = *(v45 + 48);
  if (v49(v17, 1, v14) == 1)
  {
    sub_10000CFBC(v22, &qword_100942C38);
    sub_10000CFBC(v48, &qword_100942C38);
    v50 = v49(&v17[v47], 1, v14);
    v51 = v119;
    v52 = v116;
    v53 = v43;
    if (v50 == 1)
    {
      sub_10000CFBC(v17, &qword_100942C38);
      LODWORD(v114) = 1;
LABEL_18:
      v55 = v120;
      v57 = v132;
      v56 = v133;
      goto LABEL_20;
    }

LABEL_17:
    sub_10000CFBC(v17, &qword_100942C30);
    LODWORD(v114) = 0;
    goto LABEL_18;
  }

  v54 = v110;
  sub_100016E2C(v17, v110, &qword_100942C38);
  v53 = v43;
  if (v49(&v17[v47], 1, v14) == 1)
  {
    sub_10000CFBC(v22, &qword_100942C38);
    sub_10000CFBC(v130, &qword_100942C38);
    (*(v131 + 8))(v54, v14);
    v51 = v119;
    v52 = v116;
    goto LABEL_17;
  }

  v58 = v131;
  v59 = v107;
  (*(v131 + 32))(v107, &v17[v47], v14);
  sub_100023B40(&qword_100942C50, &type metadata accessor for Uber.Style);
  LODWORD(v114) = sub_10076FF1C();
  v60 = *(v58 + 8);
  v60(v59, v14);
  sub_10000CFBC(v22, &qword_100942C38);
  sub_10000CFBC(v130, &qword_100942C38);
  v60(v54, v14);
  sub_10000CFBC(v17, &qword_100942C38);
  v56 = v133;
  v55 = v120;
  v51 = v119;
  v57 = v132;
  v52 = v116;
LABEL_20:
  swift_getKeyPath();
  v61 = v117;
  sub_10076338C();

  sub_100023AD0(v61 + *(v115 + 48), v52, &qword_1009499A0);
  if (v112(v52, 1, v53) == 1)
  {
    sub_10000CFBC(v61, &qword_1009499A0);
    sub_10000CFBC(v52, &qword_1009499A0);
    v62 = *(v51 + 56);
    v63 = v121;
    v62(v56, 1, 1, v121);
  }

  else
  {
    swift_getKeyPath();
    sub_10076F49C();

    (*(v109 + 8))(v52, v53);
    v62 = *(v51 + 56);
    v63 = v121;
    v62(v56, 0, 1, v121);
    sub_10000CFBC(v61, &qword_1009499A0);
  }

  (*(v51 + 104))(v57, enum case for Shelf.ContentType.productMediaItem(_:), v63);
  v62(v57, 0, 1, v63);
  v64 = *(v118 + 48);
  sub_100016E2C(v56, v55, &unk_1009568A0);
  sub_100016E2C(v57, v55 + v64, &unk_1009568A0);
  v65 = v57;
  v66 = *(v51 + 48);
  if (v66(v55, 1, v63) == 1)
  {
    sub_10000CFBC(v65, &unk_1009568A0);
    sub_10000CFBC(v56, &unk_1009568A0);
    v67 = v66(v55 + v64, 1, v63);
    v68 = v134;
    if (v67 == 1)
    {
      sub_10000CFBC(v55, &unk_1009568A0);
      v69 = 1;
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v70 = v111;
  sub_100016E2C(v55, v111, &unk_1009568A0);
  v71 = v66(v55 + v64, 1, v63);
  v68 = v134;
  if (v71 == 1)
  {
    sub_10000CFBC(v132, &unk_1009568A0);
    sub_10000CFBC(v133, &unk_1009568A0);
    (*(v51 + 8))(v70, v63);
LABEL_28:
    sub_10000CFBC(v55, &qword_100942C28);
    v69 = 0;
    goto LABEL_30;
  }

  v72 = v108;
  (*(v51 + 32))(v108, v55 + v64, v63);
  sub_100023B40(&qword_100942C48, &type metadata accessor for Shelf.ContentType);
  v69 = sub_10076FF1C();
  v73 = *(v51 + 8);
  v73(v72, v63);
  sub_10000CFBC(v132, &unk_1009568A0);
  sub_10000CFBC(v133, &unk_1009568A0);
  v73(v70, v63);
  sub_10000CFBC(v55, &unk_1009568A0);
LABEL_30:
  v74 = objc_opt_self();
  v75 = [v74 fractionalWidthDimension:1.0];
  swift_getKeyPath();
  sub_10076338C();

  v76 = v136;
  sub_100763FCC();
  v78 = v77;

  v79 = [v74 absoluteDimension:v78];
  v80 = [objc_opt_self() sizeWithWidthDimension:v75 heightDimension:v79];

  if ((v114 & 1) == 0)
  {
    LODWORD(v133) = v69;
    swift_getKeyPath();
    v81 = v123;
    sub_10076338C();

    sub_10076C23C();
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
    sub_10077151C();
    v140._countAndFlagsBits = 95;
    v140._object = 0xE100000000000000;
    sub_1007700CC(v140);
    v141._countAndFlagsBits = sub_10077091C();
    sub_1007700CC(v141);

    (*(v86 + 8))(v87, v85);
    v89 = v84;
    v90 = sub_10076FF6C();

    v91 = [objc_opt_self() supplementaryItemWithLayoutSize:v88 elementKind:v90 containerAnchor:v89];

    v92 = v91;
    sub_10077019C();
    if (*((v139 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v139 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();

    v68 = v134;
    LOBYTE(v69) = v133;
  }

  if ((v69 & 1) == 0)
  {
    swift_getKeyPath();
    v93 = v123;
    sub_10076338C();

    sub_10076C23C();
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
    sub_10077151C();
    v142._countAndFlagsBits = 95;
    v142._object = 0xE100000000000000;
    sub_1007700CC(v142);
    v143._countAndFlagsBits = sub_10077091C();
    sub_1007700CC(v143);

    (*(v97 + 8))(v98, v99);
    v101 = v96;
    v102 = sub_10076FF6C();

    v103 = [objc_opt_self() supplementaryItemWithLayoutSize:v100 elementKind:v102 containerAnchor:v101];

    v104 = v103;
    sub_10077019C();
    if (*((v139 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v139 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();
  }

  v105 = sub_10044B6E4(v68);
  sub_1000F92CC(v105);

  return v139;
}

void sub_10002260C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v33 = a4;
  v36 = a1;
  v37 = a2;
  v35 = a5;
  v6 = sub_10076341C();
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  __chkstk_darwin(v6);
  v29 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076B5BC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_100946720);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - v14;
  swift_getKeyPath();
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  (*(v13 + 8))(v15, v12);
  v16 = *(v9 + 88);
  v32 = v8;
  if (v16(v11, v8) == enum case for Shelf.ContentType.productBadge(_:))
  {
    sub_1000229F4(v36, v37, a3, v33, v35);
  }

  else
  {
    v17 = a3;
    type metadata accessor for SeparatorSupplementaryView();
    if (sub_10077090C())
    {

      v34 = sub_1007708FC();
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
      v25 = sub_10000A5D4(&qword_100942C18);
      v26 = v35;
      v35[3] = v25;
      v26[4] = sub_100023880();
      sub_10000DB7C(v26);

      sub_10076A3BC();
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

double sub_1000229F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v80 = a3;
  v81 = a4;
  v78 = a5;
  v7 = sub_10076341C();
  v68 = *(v7 - 8);
  v69 = v7;
  __chkstk_darwin(v7);
  v66 = v8;
  v67 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_100763F9C();
  v73 = *(v83 - 8);
  __chkstk_darwin(v83);
  v70 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_10000A5D4(&qword_100942C00);
  __chkstk_darwin(v72);
  v11 = v64 - v10;
  v12 = sub_10000A5D4(&qword_100942C08);
  __chkstk_darwin(v12 - 8);
  v14 = v64 - v13;
  v15 = sub_100763FDC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000A5D4(&qword_100942C10);
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
  sub_100635488(a1, a2, v28);
  v30 = *(v76 + 56);
  sub_10044C394(v14);
  v31 = *(v16 + 48);
  v76 = v15;
  if (v31(v14, 1, v15) == 1)
  {
    sub_10000CFBC(v14, &qword_100942C08);
LABEL_10:

    sub_1007708FC();
    v38 = v75;
    sub_100016E2C(v28, v75, &qword_100942C10);
    v39 = (*(v74 + 80) + 16) & ~*(v74 + 80);
    v40 = swift_allocObject();
    sub_100023AD0(v38, v40 + v39, &qword_100942C10);
    v41 = sub_10000A5D4(&qword_100942C18);
    v42 = v28;
    v43 = v78;
    v78[3] = v41;
    v43[4] = sub_100023880();
    sub_10000DB7C(v43);
    sub_10076A3BC();
    v44 = v42;
    goto LABEL_11;
  }

  v64[1] = v30;
  (*(v16 + 32))(v18, v14, v76);
  v65 = v18;
  sub_100763FBC();
  v32 = v73;
  v33 = v83;
  (*(v73 + 56))(v25, 0, 1, v83);
  v34 = *(v72 + 48);
  sub_100016E2C(v25, v11, &qword_100942C10);
  sub_100016E2C(v28, &v11[v34], &qword_100942C10);
  v35 = *(v32 + 48);
  if (v35(v11, 1, v33) != 1)
  {
    v37 = v71;
    sub_100016E2C(v11, v71, &qword_100942C10);
    if (v35(&v11[v34], 1, v83) != 1)
    {
      v46 = &v11[v34];
      v47 = v70;
      v48 = v37;
      v49 = v83;
      (*(v32 + 32))(v70, v46, v83);
      sub_100023B40(&qword_100942C20, &type metadata accessor for ComponentSeparator.Position);
      LODWORD(v72) = sub_10076FF1C();
      v50 = *(v32 + 8);
      v50(v47, v49);
      sub_10000CFBC(v25, &qword_100942C10);
      v50(v48, v49);
      sub_10000CFBC(v11, &qword_100942C10);
      v36 = v65;
      if (v72)
      {
        goto LABEL_14;
      }

LABEL_9:
      (*(v16 + 8))(v36, v76);
      goto LABEL_10;
    }

    sub_10000CFBC(v25, &qword_100942C10);
    (*(v32 + 8))(v37, v83);
LABEL_8:
    sub_10000CFBC(v11, &qword_100942C00);
    v36 = v65;
    goto LABEL_9;
  }

  sub_10000CFBC(v25, &qword_100942C10);
  if (v35(&v11[v34], 1, v83) != 1)
  {
    goto LABEL_8;
  }

  sub_10000CFBC(v11, &qword_100942C10);
  v36 = v65;
LABEL_14:
  if ((sub_10077090C() & 1) == 0)
  {
    (*(v16 + 8))(v36, v76);
    sub_10000CFBC(v28, &qword_100942C10);
    result = 0.0;
    v63 = v78;
    *v78 = 0u;
    *(v63 + 1) = 0u;
    v63[4] = 0;
    return result;
  }

  v51 = sub_1007708FC();
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
  v61 = sub_10000A5D4(&qword_100942C18);
  v62 = v78;
  v78[3] = v61;
  v62[4] = sub_100023880();
  sub_10000DB7C(v62);

  sub_10076A3BC();
  (*(v57 + 8))(v65, v76);
  v44 = v83;
LABEL_11:
  sub_10000CFBC(v44, &qword_100942C10);
  return result;
}

uint64_t sub_10002332C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a1;
  v28 = a5;
  v5 = sub_100763FDC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = sub_10000A5D4(&qword_100942C10);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  v15 = sub_100763F9C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v26 - v20;
  sub_100016E2C(v28, v14, &qword_100942C10);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_10000CFBC(v14, &qword_100942C10);
  }

  (*(v16 + 32))(v21, v14, v15);
  (*(v16 + 16))(v18, v21, v15);
  sub_100763FAC();
  (*(v6 + 16))(v8, v11, v5);
  v23 = OBJC_IVAR____TtC20ProductPageExtension26SeparatorSupplementaryView_separator;
  v24 = v27;
  swift_beginAccess();
  (*(v6 + 24))(v24 + v23, v8, v5);
  swift_endAccess();
  sub_1006359A8();
  v25 = *(v6 + 8);
  v25(v8, v5);
  v25(v11, v5);
  return (*(v16 + 8))(v21, v15);
}

uint64_t sub_100023658()
{
  sub_10000CD74(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1000236C4()
{
  v1 = *(sub_10000A5D4(&qword_100942C10) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_100763F9C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000237DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_10000A5D4(&qword_100942C10) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_10002332C(a1, a2, a3, a4, v10);
}

unint64_t sub_100023880()
{
  result = qword_100949980;
  if (!qword_100949980)
  {
    sub_10000CE78(&qword_100942C18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949980);
  }

  return result;
}

uint64_t sub_1000238E4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002392C()
{
  v1 = sub_10076341C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100023A04(uint64_t a1)
{
  sub_10076341C();

  return sub_10044C56C(a1);
}

uint64_t sub_100023AD0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10000A5D4(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100023B40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100023B94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_100023BD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

unint64_t sub_100023C28()
{
  result = qword_100942C60;
  if (!qword_100942C60)
  {
    sub_100763CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942C60);
  }

  return result;
}

Swift::Int sub_100023C80()
{
  sub_10077175C();
  sub_10077176C(0);
  return sub_1007717AC();
}

Swift::Int sub_100023CEC()
{
  sub_10077175C();
  sub_10077176C(0);
  return sub_1007717AC();
}

void sub_100023D3C(uint64_t a1, void **a2)
{
  v98 = a2;
  v103 = a1;
  v3 = sub_10000A5D4(&qword_1009451A0);
  __chkstk_darwin(v3 - 8);
  v92 = v79 - v4;
  v94 = sub_10075EBAC();
  v93 = *(v94 - 1);
  __chkstk_darwin(v94);
  v6 = v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_10076B96C();
  v95 = *(v99 - 8);
  __chkstk_darwin(v99);
  v8 = v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_10076BF9C();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v10 = v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076BD9C();
  v89 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076BEDC();
  v86 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_10076FBBC();
  v97 = *(v100 - 8);
  v17 = *(v97 + 64);
  __chkstk_darwin(v100);
  v90 = v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v101 = v79 - v19;
  v91 = sub_10000A5D4(&qword_100942C70);
  v102 = sub_10076FCEC();
  v96 = v2;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v21 = [Strong view];

  if (!v21)
  {
    __break(1u);
    return;
  }

  v22 = [v21 window];

  if (!v22 || (v23 = [v22 windowScene], v22, !v23))
  {
    sub_1000252D0();
    swift_allocError();
    sub_10076FCAC();

    return;
  }

  v85 = v23;
  v24 = sub_10076F64C();
  sub_10076FC1C();
  sub_100025324();
  v83 = v24;
  sub_10076FC1C();
  v84 = aBlock;
  v25 = sub_100763CDC();
  if (v26)
  {
    v81 = v25;
    v82 = v26;
    v27 = sub_100763CAC();
    if (v28)
    {
      v79[1] = v27;
      v79[2] = v28;
      if (sub_100763CCC())
      {
        sub_10076624C();
        if (sub_100763CCC())
        {
          v29 = sub_10076BFBC();

          sub_100764ACC();
          v30 = sub_10076BECC();
          v79[0] = v31;
          (*(v86 + 8))(v16, v14);
          aBlock = v30;
          v110 = v79[0];
          v86 = v29;
          v32 = sub_100764B0C();
          if ((v33 & 1) == 0)
          {
            v108._countAndFlagsBits = 45;
            v108._object = 0xE100000000000000;
            v106 = v32;
            v115._countAndFlagsBits = sub_10077163C();
            sub_1007700CC(v115);

            sub_1007700CC(v108);
          }

          sub_10076C01C();
          v34 = sub_10076BD8C();
          v36 = v35;
          v89[1](v13, v11);
          v108._countAndFlagsBits = v34;
          v108._object = v36;
          v106 = 8217467;
          v107 = 0xE300000000000000;
          v104 = aBlock;
          v105 = v110;
          sub_10002564C();
          v37 = sub_10077121C();
          v39 = v38;

          v108._countAndFlagsBits = v37;
          v108._object = v39;
          v106 = 8218235;
          v107 = 0xE300000000000000;
          sub_100764AFC();
          v40 = sub_10076BF8C();
          v42 = v41;
          (*(v87 + 8))(v10, v88);
          v104 = v40;
          v105 = v42;
          sub_10077121C();
        }

        else
        {
          sub_10076C01C();
          sub_10076BD8C();
          v89[1](v13, v11);
        }

        v43 = objc_allocWithZone(sub_10076D10C());
        v44 = sub_10076D0FC();

        v89 = v44;
        v45 = v44;
        goto LABEL_18;
      }
    }
  }

  v89 = 0;
LABEL_18:
  sub_10000A5D4(&unk_10094A8C0);
  sub_10076FC1C();
  v46 = aBlock;
  swift_getObjectType();
  sub_100763CBC();
  v98 = v46;
  v47 = sub_10075EE2C();
  v48 = *(v95 + 8);
  v48(v8, v99);
  swift_getObjectType();
  v95 = v47;
  sub_10075ED1C();
  v49 = v93;
  v50 = v94;
  if ((*(v93 + 88))(v6, v94) == enum case for LegacyAppState.openable(_:))
  {
    (*(v49 + 96))(v6, v50);
    v51 = *&v6[*(sub_10000A5D4(&unk_100942CF0) + 48)];
    v52 = sub_100764E5C();
    (*(*(v52 - 8) + 8))(v6, v52);
    v53 = [v51 stringValue];
    sub_10076FF9C();
  }

  else
  {
    (*(v49 + 8))(v6, v50);
  }

  sub_10076623C();
  v94 = v84;
  sub_100763CBC();
  sub_10076B92C();
  v48(v8, v99);
  v54 = objc_allocWithZone(sub_10076D0CC());
  v55 = v89;
  v56 = sub_10076D0BC();
  v57 = v96;
  v58 = swift_unknownObjectUnownedLoadStrong();
  v59 = [v58 presentedViewController];

  if (!v59)
  {
    goto LABEL_24;
  }

  if ([v59 isBeingDismissed])
  {

LABEL_24:
    v60 = v101;
    v61 = sub_10076FB7C();
    v62 = sub_10076FCEC();
    v63 = sub_1007702EC();
    v64 = v92;
    (*(*(v63 - 8) + 56))(v92, 1, 1, v63);
    v65 = swift_allocObject();
    v65[2] = 0;
    v65[3] = 0;
    v66 = v85;
    v65[4] = v85;
    v65[5] = v56;
    v65[6] = v61;
    v65[7] = v62;
    v67 = v66;
    v68 = v56;

    sub_10016FE40(0, 0, v64, &unk_100784A58, v65);

    sub_10076FC4C();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v97 + 8))(v60, v100);
    return;
  }

  sub_100025448(v57, &v108);
  v69 = v97;
  v70 = v90;
  v71 = v100;
  (*(v97 + 16))(v90, v101, v100);
  v72 = (*(v69 + 80) + 40) & ~*(v69 + 80);
  v73 = (v17 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  sub_100025568(&v108, v74 + 16);
  v75 = v85;
  *(v74 + 24) = v85;
  *(v74 + 32) = v56;
  (*(v69 + 32))(v74 + v72, v70, v71);
  *(v74 + v73) = v102;
  v113 = sub_1000255A0;
  v114 = v74;
  aBlock = _NSConcreteStackBlock;
  v110 = 1107296256;
  v111 = sub_10009AEDC;
  v112 = &unk_100884510;
  v76 = _Block_copy(&aBlock);
  v77 = v75;
  v78 = v56;

  [v59 dismissViewControllerAnimated:1 completion:v76];
  _Block_release(v76);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v69 + 8))(v101, v71);
}

uint64_t sub_100024B20(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_10000A5D4(&qword_1009451A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_10076FB7C();
  v9 = sub_10076FCEC();
  v10 = sub_1007702EC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = v8;
  v11[7] = v9;
  v12 = a2;
  v13 = a3;

  sub_10016FE40(0, 0, v7, &unk_100784A68, v11);

  sub_10076FC4C();
}

uint64_t sub_100024CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v8 = sub_10076F50C();
  v7[14] = v8;
  v7[15] = *(v8 - 8);
  v7[16] = swift_task_alloc();
  v9 = sub_10076D0AC();
  v7[17] = v9;
  v7[18] = *(v9 - 8);
  v7[19] = swift_task_alloc();

  return _swift_task_switch(sub_100024DC0, 0, 0);
}

uint64_t sub_100024DC0()
{
  sub_10076D0EC();
  swift_allocObject();
  v0[20] = sub_10076D0DC();
  v7 = (&async function pointer to dispatch thunk of ReviewCoordinator.presentReviewComposer(scene:context:bag:) + async function pointer to dispatch thunk of ReviewCoordinator.presentReviewComposer(scene:context:bag:));
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_100024E94;
  v2 = v0[19];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];

  return v7(v2, v5, v3, v4);
}

uint64_t sub_100024E94()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_100025098;
  }

  else
  {
    (*(v2[18] + 8))(v2[19], v2[17]);
    v3 = sub_100024FC0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100024FC0()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  (*(v2 + 104))(v1, enum case for ActionOutcome.performed(_:), v3);
  sub_10076FCBC();

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100025098()
{

  if (qword_1009412E8 != -1)
  {
    swift_once();
  }

  v1 = sub_10076FD4C();
  sub_10000A61C(v1, qword_1009A2600);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  swift_getErrorValue();
  v2 = v0[6];
  v3 = v0[7];
  v0[5] = v3;
  v4 = sub_10000DB7C(v0 + 2);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  sub_10076F32C();
  sub_1000258C0((v0 + 2));
  sub_10076FBEC();

  sub_10076FCAC();

  v5 = v0[1];

  return v5();
}

unint64_t sub_1000252D0()
{
  result = qword_100942C78;
  if (!qword_100942C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942C78);
  }

  return result;
}

unint64_t sub_100025324()
{
  result = qword_100942C80;
  if (!qword_100942C80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100942C80);
  }

  return result;
}

uint64_t sub_100025374(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100025A64;

  return sub_100024CA0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100025480()
{
  v1 = sub_10076FBBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectUnownedDestroy();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000255A0()
{
  sub_10076FBBC();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return sub_100024B20(v0 + 16, v1, v2);
}

uint64_t sub_100025634(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10002564C()
{
  result = qword_100961DC0;
  if (!qword_100961DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100961DC0);
  }

  return result;
}

uint64_t sub_1000256A0()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000256F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000257CC;

  return sub_100024CA0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1000257CC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000258C0(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_1009434C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for WriteReviewActionImplementation.ImplementationError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for WriteReviewActionImplementation.ImplementationError(_WORD *result, int a2, int a3)
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

unint64_t sub_100025A0C()
{
  result = qword_100942D00;
  if (!qword_100942D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942D00);
  }

  return result;
}

double sub_100025A68(uint64_t *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = sub_10077164C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  type metadata accessor for InAppPurchaseShowcaseLockupView();
  sub_100449358(v14, a7);
  if (qword_10093F450 != -1)
  {
    swift_once();
  }

  v15 = sub_10076D9AC();
  sub_10000A61C(v15, qword_1009424A0);
  sub_10076D17C();
  sub_10076D40C();
  (*(v11 + 8))(v13, v10);
  return a2;
}

uint64_t sub_100025C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v4 = sub_10000A5D4(&unk_100945560);
  __chkstk_darwin(v4 - 8);
  v34 = &v31 - v5;
  v6 = sub_100768FEC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v31 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100946750);
  v32 = *(v9 - 8);
  v33 = v9;
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  v12 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v12 - 8);
  v14 = &v31 - v13;
  sub_10075E69C();
  v36 = v3;
  v15 = *&v3[OBJC_IVAR____TtC20ProductPageExtension39InAppPurchaseShowcaseCollectionViewCell_lockupView];
  v16 = *(v15 + OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_titleLabel);

  sub_10076BB6C();
  if (v17)
  {
    v18 = sub_10076FF6C();
  }

  else
  {
    v18 = 0;
  }

  v19 = &selRef_initWithTabBarSystemItem_tag_;
  [v16 setText:v18];

  v20 = *(v15 + OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_subtitleLabel);
  sub_10075E6AC();
  if (v21)
  {
    v22 = sub_10076FF6C();
    v19 = &selRef_initWithTabBarSystemItem_tag_;
  }

  else
  {
    v22 = 0;
  }

  [v20 v19[250]];

  v23 = *(v15 + OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_descriptionLabel);
  sub_10075E68C();
  if (v24)
  {
    v25 = sub_10076FF6C();
  }

  else
  {
    v25 = 0;
  }

  [v23 v19[250]];

  v26 = *(v15 + OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_offerButton);
  v27 = sub_10076BB3C();
  v28 = sub_10076BA2C();

  v29 = sub_10000A5D4(&qword_100945590);
  (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
  (*(v7 + 104))(v31, enum case for OfferButtonSubtitlePosition.below(_:), v6);
  (*(v7 + 56))(v34, 1, 1, v6);
  sub_100026148(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition);
  sub_10076759C();
  sub_1001F12C8(v27, v28, 0, v14, v11, v35, 0, 0);

  (*(v32 + 8))(v11, v33);
  sub_100026190(v14);
  [v36 setNeedsLayout];
}

uint64_t sub_100026148(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100026190(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100946760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000261F8()
{
  v0 = sub_10076B75C();
  v1 = *(v0 + 16);

  v3 = 0;
  while (1)
  {
    if (v3 == v1)
    {
      v13 = 0;
      v3 = v1;
      v11 = 0u;
      v12 = 0u;
      goto LABEL_7;
    }

    if ((v3 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v3 >= *(v0 + 16))
    {
      goto LABEL_14;
    }

    sub_10000A570(v0 + 32 + 40 * v3++, &v11);
LABEL_7:
    v9[0] = v11;
    v9[1] = v12;
    v10 = v13;
    if (!*(&v12 + 1))
    {
      return swift_bridgeObjectRelease_n();
    }

    sub_100012498(v9, v8);
    sub_10000A570(v8, v6);
    sub_10000A5D4(&qword_1009575A0);
    sub_10075E6BC();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v7 = 0;
    }

    result = sub_10000CD74(v8);
    if (v7)
    {
      sub_10075E69C();
      v4 = sub_1006EC764();

      v5._rawValue = v4;
      sub_100760BAC(v5);
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

id sub_100026470()
{
  v1 = sub_10075FEEC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[qword_10099D790] == 1)
  {
    sub_10075FD2C();
    sub_10075FBAC();
    sub_1007638EC();
    sub_10075FB9C();
    sub_1007638DC();
  }

  (*(v2 + 104))(v4, enum case for CornerStyle.continuous(_:), v1);
  sub_1007638AC();
  (*(v2 + 8))(v4, v1);
  return [v0 setNeedsLayout];
}

uint64_t sub_100026610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_100027694(&qword_100943320, type metadata accessor for Key);
  v9 = sub_10076FE4C();
  v8(v9, a3, a4, a5);
}

uint64_t sub_1000266E0(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v8 - 8);
  v49 = &v48 - v9;
  v10 = sub_10077164C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076D39C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10075FF4C();
  v48 = v11;
  if ((v18 & 1) == 0)
  {
    [a6 pageMarginInsets];
  }

  if (sub_100760DFC())
  {
    sub_10076BEFC();
    sub_10076D3AC();
    sub_10076D36C();
    v20 = v19;
    v21 = *(v15 + 8);
    v21(v17, v14);
    sub_10075FF4C();
    if ((sub_10075FF4C() & 1) != 0 || v20 <= a2)
    {
    }

    else
    {
      sub_10076BEFC();
      sub_10076D3AC();
      sub_10076D35C();
      v21(v17, v14);
    }
  }

  v22 = sub_10075FF6C();
  v23 = [v22 length];

  if (v23 >= 1)
  {
    sub_10075FF7C();
    if (v24)
    {
      if (qword_100940F68 != -1)
      {
        swift_once();
      }

      v25 = sub_10076D3DC();
      sub_10000A61C(v25, qword_1009A1C30);
      v26 = sub_10076C04C();
      v51 = v26;
      v52 = sub_100027694(&qword_100943230, &type metadata accessor for Feature);
      v27 = sub_10000DB7C(aBlock);
      (*(*(v26 - 8) + 104))(v27, enum case for Feature.measurement_with_labelplaceholder(_:), v26);
      sub_10076C90C();
      sub_10000CD74(aBlock);
      sub_10076991C();

      if (qword_10093F990 != -1)
      {
        swift_once();
      }

      v28 = sub_10076D9AC();
      sub_10000A61C(v28, qword_10099D738);
      sub_10076D17C();
      sub_10076D40C();
      v29 = *(v48 + 8);
      v29(v13, v10);
      if (qword_10093F9A0 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v28, qword_10099D768);
      sub_10076D17C();
      sub_10076D40C();
      v29(v13, v10);
      if (qword_10093F998 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v28, qword_10099D750);
      sub_10076D17C();
      sub_10076D40C();
      v29(v13, v10);
    }

    v30 = sub_10075FF6C();
    v31 = [a6 traitCollection];
    v32 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v30];
    v33 = [v30 length];
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    *(v34 + 24) = v31;
    *(v34 + 32) = v32;
    *(v34 + 40) = 1;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_100027A88;
    *(v35 + 24) = v34;
    v52 = sub_100027A74;
    v53 = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026610;
    v51 = &unk_100884788;
    v36 = _Block_copy(aBlock);
    v37 = v31;
    v38 = v32;

    [v30 enumerateAttributesInRange:0 options:v33 usingBlock:{0x100000, v36}];

    _Block_release(v36);
    LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

    if (v37)
    {
      __break(1u);
    }

    else
    {
      v39 = qword_100940F60;
      v30 = v38;
      if (v39 == -1)
      {
LABEL_21:
        v40 = sub_10076D3DC();
        v41 = sub_10000A61C(v40, qword_1009A1C18);
        v42 = *(v40 - 8);
        v43 = v49;
        (*(v42 + 16))(v49, v41, v40);
        (*(v42 + 56))(v43, 0, 1, v40);
        v44 = sub_10076C04C();
        v51 = v44;
        v52 = sub_100027694(&qword_100943230, &type metadata accessor for Feature);
        v45 = sub_10000DB7C(aBlock);
        (*(*(v44 - 8) + 104))(v45, enum case for Feature.measurement_with_labelplaceholder(_:), v44);
        sub_10076C90C();
        sub_10000CD74(aBlock);
        sub_10076990C();

        sub_1000276DC(v43);
        if (qword_10093F990 != -1)
        {
          swift_once();
        }

        v46 = sub_10076D9AC();
        sub_10000A61C(v46, qword_10099D738);
        sub_10076D42C();
        if (qword_10093F998 != -1)
        {
          swift_once();
        }

        sub_10000A61C(v46, qword_10099D750);
        sub_10076D3FC();

        return sub_100770ABC();
      }
    }

    swift_once();
    goto LABEL_21;
  }

  return sub_100770ABC();
}

uint64_t sub_1000270FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v8 = sub_10075FF6C();
  v9 = [v8 length];

  v10 = &selRef_initWithTabBarSystemItem_tag_;
  if (v9 >= 1)
  {
    v11 = sub_10075FF6C();
    v12 = [a5 traitCollection];
    v13 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v11];
    v34 = [v11 length];
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = v12;
    *(v14 + 32) = v13;
    *(v14 + 40) = 1;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1000275EC;
    *(v15 + 24) = v14;
    aBlock[4] = sub_10002760C;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026610;
    aBlock[3] = &unk_100884710;
    v16 = _Block_copy(aBlock);
    v17 = v12;
    v18 = v13;

    [v11 enumerateAttributesInRange:0 options:v34 usingBlock:{0x100000, v16}];

    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      isEscapingClosureAtFileLocation = *&v6[qword_10094C5D8];
      [isEscapingClosureAtFileLocation setAttributedText:v18];
      if (qword_10093F9A8 == -1)
      {
LABEL_4:
        [isEscapingClosureAtFileLocation setTextColor:qword_10099D780];
        v6[qword_10099D798] = 1;
        v20 = *&v6[qword_10094C5C8];
        [v20 setHidden:0];

        v10 = &selRef_initWithTabBarSystemItem_tag_;
        goto LABEL_6;
      }
    }

    swift_once();
    goto LABEL_4;
  }

  [*&v6[qword_10094C5D8] setText:0];
  v6[qword_10099D798] = 0;
  v20 = *&v6[qword_10094C5C8];
  [v20 setHidden:1];
LABEL_6:
  v21 = *&v6[qword_10094C5D0];
  sub_10075FF7C();
  if (v22)
  {
    v23 = sub_10076FF6C();
  }

  else
  {
    v23 = 0;
  }

  [v21 v10[250]];

  v6[qword_10099D790] = (sub_10075FF4C() & 1) == 0;
  sub_100026470();
  if ((sub_10075FF4C() & 1) == 0 && v6[qword_10099D798] != 1)
  {
    sub_10075FD2C();
    sub_10075FBAC();
  }

  sub_1007638EC();
  if (sub_10075FF4C())
  {
    [v20 setBackgroundColor:0];
  }

  else
  {
    sub_100016F40(0, &qword_100942F10);
    v24 = sub_100770D5C();
    [v20 setBackgroundColor:v24];
  }

  result = sub_100760DFC();
  if (result)
  {
    v26 = [v6 contentView];
    sub_100016F40(0, &qword_1009441F0);
    sub_10076422C();
    v28 = v27;

    sub_10076BEFC();
    v30 = v29;
    sub_10076BEFC();
    v32 = v31;

    v33 = &v6[qword_1009A3418];
    *v33 = v28;
    v33[1] = v28 * (v30 / v32);
  }

  return result;
}

uint64_t sub_100027634(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002764C()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100027694(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000276DC(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100943250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100027744(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = a3;
  v11 = a2;
  v13 = sub_10076D39C();
  v3 = *(v13 - 8);
  __chkstk_darwin(v13);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076B75C();
  v7 = *(v6 + 16);
  v15 = v6 + 32;
  v12 = (v3 + 8);
  v16 = v6;

  v9 = 0;
  while (1)
  {
    if (v9 == v7)
    {
      v24 = 0;
      v9 = v7;
      v22 = 0u;
      v23 = 0u;
      goto LABEL_8;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *(v16 + 16))
    {
      goto LABEL_18;
    }

    sub_10000A570(v15 + 40 * v9++, &v22);
LABEL_8:
    v20[0] = v22;
    v20[1] = v23;
    v21 = v24;
    if (!*(&v23 + 1))
    {
      return swift_bridgeObjectRelease_n();
    }

    sub_100012498(v20, v19);
    sub_10000A570(v19, v17);
    sub_10000A5D4(&qword_1009575A0);
    sub_100760E0C();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v18 = 0;
    }

    result = sub_10000CD74(v19);
    if (v18)
    {
      if (sub_100760DFC())
      {

        if ((sub_10075FF4C() & 1) == 0)
        {
          [v11 pageMarginInsets];
        }

        sub_10076BEFC();
        sub_10076D3AC();
        sub_10076D36C();
        sub_10075FF4C();

        sub_10076D35C();
        sub_10076BFCC();
        sub_100760B9C();

        result = (*v12)(v5, v13);
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

uint64_t sub_100027A8C()
{
  v0 = sub_10000A5D4(&unk_100942EF0);
  sub_10000DB18(v0, qword_10099C918);
  sub_10000A61C(v0, qword_10099C918);
  sub_10000A5D4(&unk_100943120);
  type metadata accessor for NSTextAlignment(0);
  return sub_10075FDDC();
}

uint64_t sub_100027B28()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_100942DB0);
  sub_10000A61C(v4, qword_100942DB0);
  if (qword_100940EF8 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A1AE0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100027D04()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_100942DC8);
  sub_10000A61C(v4, qword_100942DC8);
  if (qword_100940F20 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A1B58);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

char *sub_100027ED8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10076F9AC();
  v50 = *(v10 - 8);
  v51 = v10;
  __chkstk_darwin(v10);
  v49 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076771C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v16 - 8);
  v18 = &v48 - v17;
  v48 = OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_headingLabel;
  if (qword_100940EF0 != -1)
  {
    swift_once();
  }

  v19 = sub_10076D3DC();
  v20 = sub_10000A61C(v19, qword_1009A1AC8);
  v21 = *(v19 - 8);
  v55 = *(v21 + 16);
  v55(v18, v20, v19);
  v54 = *(v21 + 56);
  v54(v18, 0, 1, v19);
  v22 = enum case for DirectionalTextAlignment.none(_:);
  v23 = *(v13 + 104);
  v53 = v13 + 104;
  v23(v15, enum case for DirectionalTextAlignment.none(_:), v12);
  v24 = sub_1007626BC();
  v25 = objc_allocWithZone(v24);
  v52 = v12;
  *&v5[v48] = sub_1007626AC();
  v48 = OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_titleLabel;
  if (qword_100940EF8 != -1)
  {
    swift_once();
  }

  v26 = sub_10000A61C(v19, qword_1009A1AE0);
  v55(v18, v26, v19);
  v54(v18, 0, 1, v19);
  v23(v15, v22, v52);
  v27 = objc_allocWithZone(v24);
  *&v5[v48] = sub_1007626AC();
  v48 = OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_descriptionLabel;
  if (qword_100940F20 != -1)
  {
    swift_once();
  }

  v28 = sub_10000A61C(v19, qword_1009A1B58);
  v55(v18, v28, v19);
  v54(v18, 0, 1, v19);
  v23(v15, v22, v52);
  v29 = objc_allocWithZone(v24);
  *&v5[v48] = sub_1007626AC();
  v5[OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_isExpanded] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_sizeCategory] = 7;
  v5[OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_wantsCardConsistentMargins] = 1;
  v30 = &v5[OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_clickActionHandler];
  v31 = type metadata accessor for TodayCardThreeLineOverlayView();
  *v30 = 0;
  v30[1] = 0;
  v60.receiver = v5;
  v60.super_class = v31;
  v32 = objc_msgSendSuper2(&v60, "initWithFrame:", a1, a2, a3, a4);
  sub_100016F40(0, &qword_100942F10);
  v33 = v32;
  v34 = sub_100770D8C();
  [v33 setBackgroundColor:v34];

  v35 = OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_headingLabel;
  v36 = *&v33[OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_headingLabel];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v37 = v36;
  v38 = v49;
  sub_10076F95C();
  sub_1000258C0(&v56);
  sub_1000258C0(&v58);
  sub_100770B9C();

  v39 = v51;
  v40 = *(v50 + 8);
  v40(v38, v51);
  v41 = OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_titleLabel;
  v42 = *&v33[OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_titleLabel];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v43 = v42;
  sub_10076F95C();
  sub_1000258C0(&v56);
  sub_1000258C0(&v58);
  sub_100770B9C();

  v40(v38, v39);
  v44 = OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_descriptionLabel;
  v45 = *&v33[OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_descriptionLabel];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v46 = v45;
  sub_10076F95C();
  sub_1000258C0(&v56);
  sub_1000258C0(&v58);
  sub_100770B9C();

  v40(v38, v39);
  [v33 addSubview:*&v33[v35]];
  [v33 addSubview:*&v33[v41]];
  [v33 addSubview:*&v33[v44]];

  return v33;
}