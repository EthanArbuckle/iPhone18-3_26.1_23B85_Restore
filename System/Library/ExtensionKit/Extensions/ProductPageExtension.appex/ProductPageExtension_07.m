id sub_1000D8638()
{
  if (v0[OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_didProgressWhileForegrounded] == 1)
  {
    v1 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1002300FC(sub_1000DA644, v1);

    return sub_10022FF30(1.0);
  }

  else
  {
    v3 = &v0[OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 1);
      ObjectType = swift_getObjectType();
      (*(v4 + 8))(ObjectType, v4);

      return swift_unknownObjectRelease();
    }

    else
    {

      return [v0 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_1000D876C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000D8DB4();
  }
}

unint64_t sub_1000D87C0(unint64_t result)
{
  if (result <= 2)
  {
    v2 = off_1008883C8[result];
    v3 = *(v1 + *off_1008883B0[result]);
    v4 = (v1 + OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_activeView);
    *v4 = v3;
    v4[1] = v2;

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000D883C(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = [v1 view];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      [v2 sizeThatFits:{v10, v12}];
      v14 = v13;
      v15.origin.x = v6;
      v15.origin.y = v8;
      v15.size.width = v10;
      v15.size.height = v12;
      if (CGRectGetHeight(v15) >= v14)
      {
        v20.origin.x = v6;
        v20.origin.y = v8;
        v20.size.width = v10;
        v20.size.height = v12;
        CGRectGetMinY(v20);
        v21.origin.x = v6;
        v21.origin.y = v8;
        v21.size.width = v10;
        v21.size.height = v12;
        CGRectGetHeight(v21);
        v22.origin.x = v6;
        v22.origin.y = v8;
        v22.size.width = v10;
        v22.size.height = v12;
        CGRectGetMinX(v22);
        v23.origin.x = v6;
        v23.origin.y = v8;
        v23.size.width = v10;
        v23.size.height = v12;
        CGRectGetWidth(v23);
      }

      else
      {
        v16.origin.x = v6;
        v16.origin.y = v8;
        v16.size.width = v10;
        v16.size.height = v12;
        CGRectGetMinX(v16);
        v17.origin.x = v6;
        v17.origin.y = v8;
        v17.size.width = v10;
        v17.size.height = v12;
        CGRectGetMinY(v17);
        v18.origin.x = v6;
        v18.origin.y = v8;
        v18.size.width = v10;
        v18.size.height = v12;
        CGRectGetWidth(v18);
        v19.origin.x = v6;
        v19.origin.y = v8;
        v19.size.width = v10;
        v19.size.height = v12;
        CGRectGetHeight(v19);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1000D89F8(id a1, id a2)
{
  if (!a1)
  {
    if (!a2)
    {
      return;
    }

LABEL_6:
    v5 = a2;
    v6 = [v2 view];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      [v5 sizeThatFits:{v13, v15}];
      Height = v16;
      v39.origin.x = v9;
      v39.origin.y = v11;
      v39.size.width = v13;
      v39.size.height = v15;
      if (CGRectGetHeight(v39) >= Height)
      {
        v44.origin.x = v9;
        v44.origin.y = v11;
        v44.size.width = v13;
        v44.size.height = v15;
        MinY = CGRectGetMinY(v44);
        v45.origin.x = v9;
        v45.origin.y = v11;
        v45.size.width = v13;
        v45.size.height = v15;
        v19 = MinY + (CGRectGetHeight(v45) - Height) * 0.5;
        v46.origin.x = v9;
        v46.origin.y = v11;
        v46.size.width = v13;
        v46.size.height = v15;
        MinX = CGRectGetMinX(v46);
        v47.origin.x = v9;
        v47.origin.y = v11;
        v47.size.width = v13;
        v47.size.height = v15;
        Width = CGRectGetWidth(v47);
      }

      else
      {
        v40.origin.x = v9;
        v40.origin.y = v11;
        v40.size.width = v13;
        v40.size.height = v15;
        MinX = CGRectGetMinX(v40);
        v41.origin.x = v9;
        v41.origin.y = v11;
        v41.size.width = v13;
        v41.size.height = v15;
        v19 = CGRectGetMinY(v41);
        v42.origin.x = v9;
        v42.origin.y = v11;
        v42.size.width = v13;
        v42.size.height = v15;
        Width = CGRectGetWidth(v42);
        v43.origin.x = v9;
        v43.origin.y = v11;
        v43.size.width = v13;
        v43.size.height = v15;
        Height = CGRectGetHeight(v43);
      }

      [v5 setFrame:{MinX, v19, Width, Height}];
      [v5 layoutIfNeeded];
      [v5 setAlpha:0.0];
      v22 = v5;
      v23 = [v2 view];
      if (v23)
      {
        v24 = v23;
        [v23 addSubview:v22];

        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  if (a1 == a2)
  {
    return;
  }

  if (a2)
  {
    goto LABEL_6;
  }

  [0 layoutIfNeeded];
LABEL_12:
  v25 = objc_opt_self();
  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = a1;
  v37 = sub_1000DA59C;
  v38 = v26;
  v33 = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_10009AEDC;
  v36 = &unk_1008882E8;
  v27 = _Block_copy(&v33);
  v28 = a1;
  v29 = a2;

  v30 = swift_allocObject();
  *(v30 + 16) = a1;
  v37 = sub_1000DA634;
  v38 = v30;
  v33 = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_1000513F0;
  v36 = &unk_100888338;
  v31 = _Block_copy(&v33);
  v32 = v28;

  [v25 animateWithDuration:v27 animations:v31 completion:0.3];
  _Block_release(v31);
  _Block_release(v27);
}

uint64_t sub_1000D8DB4()
{
  v1 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v1 - 8);
  v33 = &v31 - v2;
  v3 = sub_10076F4FC();
  __chkstk_darwin(v3 - 8);
  v4 = sub_100764E5C();
  v32 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&qword_100942A80);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  v10 = sub_10076B96C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  swift_unknownObjectWeakInit();
  v17 = &v0[OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v18 = *(v17 + 1);
    ObjectType = swift_getObjectType();
    (*(v18 + 8))(ObjectType, v18);
    swift_unknownObjectRelease();
  }

  else
  {
    [v0 dismissViewControllerAnimated:1 completion:0];
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v22 = OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_appAdamId;
    swift_beginAccess();
    sub_100016E2C(&v21[v22], v9, &qword_100942A80);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {

      v23 = &qword_100942A80;
      v24 = v9;
    }

    else
    {
      (*(v11 + 32))(v16, v9, v10);
      (*(v11 + 16))(v13, v16, v10);
      (*(v32 + 104))(v6, enum case for OpenableDestination.app(_:), v4);
      sub_10076F4DC();
      sub_10075EA9C();
      swift_allocObject();
      v25 = sub_10075EA7C();
      v26 = OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_objectGraph;
      v27 = sub_10000A5D4(&unk_1009428E0);
      v28 = v33;
      sub_10076F5AC();
      v29 = *(v27 - 8);
      if ((*(v29 + 48))(v28, 1, v27) != 1)
      {
        sub_100264064(v25, 1, *&v21[v26], v28);

        (*(v11 + 8))(v16, v10);

        (*(v29 + 8))(v28, v27);
        return swift_unknownObjectWeakDestroy();
      }

      (*(v11 + 8))(v16, v10);
      v23 = &unk_100943200;
      v24 = v28;
    }

    sub_10000CFBC(v24, v23);
  }

  return swift_unknownObjectWeakDestroy();
}

uint64_t sub_1000D92E8()
{
  v0 = sub_10000A5D4(&qword_100942A80);
  __chkstk_darwin(v0 - 8);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v28 - v4;
  v6 = sub_10076B96C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  v13 = sub_10075D7AC();
  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = v13;
  v32 = sub_10076A3EC();
  v33 = v15;
  sub_10077140C();
  if (!*(v14 + 16) || (v16 = sub_10060FEFC(v34), (v17 & 1) == 0))
  {

    sub_100016C74(v34);
LABEL_10:
    v35 = 0u;
    v36 = 0u;
    goto LABEL_11;
  }

  sub_10000CD08(*(v14 + 56) + 32 * v16, &v35);
  sub_100016C74(v34);

  if (!*(&v36 + 1))
  {
LABEL_11:
    sub_10000CFBC(&v35, &unk_1009434C0);
    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_12;
  }

  v18 = swift_dynamicCast();
  v19 = *(v7 + 56);
  v19(v5, v18 ^ 1u, 1, v6);
  v31 = *(v7 + 48);
  if (v31(v5, 1, v6) == 1)
  {
LABEL_12:
    v23 = v5;
    return sub_10000CFBC(v23, &qword_100942A80);
  }

  v29 = *(v7 + 32);
  v30 = v7 + 32;
  v29(v12, v5, v6);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v7 + 8))(v12, v6);
    v19(v2, 1, 1, v6);
    goto LABEL_16;
  }

  v21 = OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_appAdamId;
  v22 = Strong;
  swift_beginAccess();
  sub_100016E2C(v22 + v21, v2, &qword_100942A80);

  if (v31(v2, 1, v6) == 1)
  {
    (*(v7 + 8))(v12, v6);
LABEL_16:
    v23 = v2;
    return sub_10000CFBC(v23, &qword_100942A80);
  }

  v29(v9, v2, v6);
  if (sub_10076B93C())
  {
    swift_beginAccess();
    v25 = swift_unknownObjectWeakLoadStrong();
    if (v25)
    {
      v26 = v25;
      sub_1000D8DB4();
    }
  }

  v27 = *(v7 + 8);
  v27(v9, v6);
  return (v27)(v12, v6);
}

uint64_t sub_1000D9758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v22 = a2;
  v5 = sub_10076F08C();
  v27 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076F0CC();
  v25 = *(v8 - 8);
  v26 = v8;
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10075D7BC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_100016F40(0, &qword_1009471F0);
  v21 = sub_10077068C();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v12 + 16))(&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = swift_allocObject();
  (*(v12 + 32))(v16 + v15, &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  *(v16 + ((v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
  aBlock[4] = v23;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = v24;
  v17 = _Block_copy(aBlock);

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000DAAAC(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0);
  sub_1000852B8();
  sub_1007712CC();
  v18 = v21;
  sub_10077069C();
  _Block_release(v17);

  (*(v27 + 8))(v7, v5);
  return (*(v25 + 8))(v10, v26);
}

void sub_1000D9B00()
{
  v0 = sub_10076B96C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10075D7AC();
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  v13[1] = sub_10076A7EC();
  v13[2] = v6;
  sub_10077140C();
  if (!*(v5 + 16) || (v7 = sub_10060FEFC(v14), (v8 & 1) == 0))
  {

    sub_100016C74(v14);
LABEL_9:
    v15 = 0u;
    v16 = 0u;
    goto LABEL_10;
  }

  sub_10000CD08(*(v5 + 56) + 32 * v7, &v15);
  sub_100016C74(v14);

  if (!*(&v16 + 1))
  {
LABEL_10:
    sub_10000CFBC(&v15, &unk_1009434C0);
    return;
  }

  sub_100016F40(0, &qword_100947E88);
  if (swift_dynamicCast())
  {
    v9 = v14[0];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;

      v12 = [v9 itemID];
      sub_10076B95C();
      sub_10075E97C();

      (*(v1 + 8))(v3, v0);
    }

    else
    {
    }
  }
}

uint64_t sub_1000D9D3C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_10075D7BC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075D79C();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

id sub_1000D9E5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppPurchaseInstallPageViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InAppPurchaseInstallPageViewController()
{
  result = qword_100947E50;
  if (!qword_100947E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000DA004()
{
  sub_1000DA104();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000DA104()
{
  if (!qword_100947E60)
  {
    sub_10076B96C();
    v0 = sub_1007711AC();
    if (!v1)
    {
      atomic_store(v0, &qword_100947E60);
    }
  }
}

uint64_t sub_1000DA160(uint64_t result, uint64_t a2, uint64_t a3)
{
  switch(result)
  {
    case 2:
      return sub_1002A3BE4(a2, a3);
    case 1:
      return sub_1000E07D4(a2, a3);
    case 0:
      return sub_10022FC8C(a2, a3);
  }

  return result;
}

uint64_t sub_1000DA230()
{

  return sub_1000D3F48(v0);
}

uint64_t sub_1000DA330()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000DA384(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000DA39C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1000DA408()
{
  v1 = sub_10075D7BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000DA4BC(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(sub_10075D7BC() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t sub_1000DA55C()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1000DA59C()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  if (result)
  {
    result = [result setAlpha:1.0];
  }

  if (v2)
  {

    return [v2 setAlpha:0.0];
  }

  return result;
}

uint64_t sub_1000DA5FC()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000DA64C()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_installOfferView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for InstallPageInstallingOfferView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_preInstallFreeOfferView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for InstallPagePreInstallFreeOfferView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_preInstallPaidOfferView;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for InstallPagePreInstallPaidOfferView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_inAppPurchaseIntentAction) = 0;
  v4 = (v0 + OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_activeView);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_offerViewTransitionFadeDuration) = 0x3FD3333333333333;
  v5 = OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_appAdamId;
  v6 = sub_10076B96C();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = v0 + OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_offerMode;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_isInBackground) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_didProgressWhileForegrounded) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_pendingAction) = 0;
  v8 = v0 + OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_lifecycleObserver;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_overlayViewController) = 0;
  sub_10077156C();
  __break(1u);
}

id sub_1000DA834(uint64_t a1, uint64_t a2, NSString a3, char *a4, uint64_t (*a5)(void), void (*a6)(char *, void))
{
  v10 = a5(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v19 - v12;
  (*(v14 + 16))(&v19 - v12, a1, v11);
  v15 = *&a4[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_descriptionLabel];
  if (a3)
  {
    a3 = sub_10076FF6C();
  }

  [v15 setText:a3];

  v16 = objc_opt_self();
  v17 = [v16 areAnimationsEnabled];
  [v16 setAnimationsEnabled:0];
  a6(v13, *&a4[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_offerButton]);
  [a4 setNeedsLayout];
  return [v16 setAnimationsEnabled:v17];
}

id sub_1000DA9B4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = *&a4[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_descriptionLabel];
  if (a3)
  {
    v6 = sub_10076FF6C();
  }

  else
  {
    v6 = 0;
  }

  [v5 setText:v6];

  v7 = objc_opt_self();
  v8 = [v7 areAnimationsEnabled];
  [v7 setAnimationsEnabled:0];
  v9 = *&a4[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_offerButton];

  sub_1001F62E8(v10, v9);
  [a4 setNeedsLayout];

  return [v7 setAnimationsEnabled:v8];
}

uint64_t sub_1000DAAAC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000DAB44()
{
  result = qword_100947E98;
  if (!qword_100947E98)
  {
    sub_10075E61C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947E98);
  }

  return result;
}

uint64_t sub_1000DAB9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100956730);
  __chkstk_darwin(v4 - 8);
  v72 = &v68 - v5;
  v70 = sub_10076F4FC();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v73 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100764E5C();
  v81 = *(v7 - 8);
  v82 = v7;
  __chkstk_darwin(v7);
  v71 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10075EBAC();
  v83 = *(v9 - 8);
  v84 = v9;
  __chkstk_darwin(v9);
  v85 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076B96C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v74 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v68 - v15;
  __chkstk_darwin(v17);
  v19 = &v68 - v18;
  v78 = sub_10000A5D4(&qword_100942C70);
  v89 = sub_10076FCEC();
  sub_10000A5D4(&unk_10094A8C0);
  sub_10076F64C();
  sub_10076FC1C();
  swift_getObjectType();
  sub_10075E60C();
  v88 = sub_10075EE2C();
  v86 = v20;
  swift_unknownObjectRelease();
  v21 = *(v12 + 8);
  v21(v19, v11);
  if (!sub_10075E58C())
  {
LABEL_6:
    v68 = a2;
    v80 = sub_10075E5BC();
    v29 = v28;
    v79 = sub_10075E5DC();
    v77 = v30;
    v87 = a1;
    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v76 = sub_10076FD4C();
    v75 = sub_10000A61C(v76, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100785C70;
    sub_10076F27C();
    sub_10076F27C();
    v94 = &type metadata for String;
    aBlock = v80;
    v92 = v29;

    sub_10076F28C();
    sub_10000CFBC(&aBlock, &unk_1009434C0);
    sub_10076F27C();
    v94 = &type metadata for String;
    v31 = v77;
    aBlock = v79;
    v92 = v77;

    sub_10076F28C();
    sub_10000CFBC(&aBlock, &unk_1009434C0);
    sub_10076FBDC();

    sub_10075E5FC();
    v33 = v32;
    sub_10075E5CC();
    v35 = v34;
    v76 = v29;
    v36 = sub_10076FF6C();
    v37 = sub_10076FF6C();
    if (v33)
    {
      v38 = sub_10076FF6C();

      v39 = v31;
      if (v35)
      {
LABEL_10:
        v40 = sub_10076FF6C();

        goto LABEL_13;
      }
    }

    else
    {
      v38 = 0;
      v39 = v31;
      if (v35)
      {
        goto LABEL_10;
      }
    }

    v40 = 0;
LABEL_13:
    v41 = v85;
    v42 = [objc_allocWithZone(SKPurchaseIntent) initWithBundleId:v36 productIdentifier:v37 appName:v38 productName:v40];

    sub_10075E5EC();
    if (v43)
    {
      v44 = sub_10076FF6C();
    }

    else
    {
      v44 = 0;
    }

    v45 = v76;
    [v42 setAdditionalBuyParams:v44];

    swift_getObjectType();
    sub_10075ED1C();
    v47 = v83;
    v46 = v84;
    if ((*(v83 + 88))(v41, v84) != enum case for LegacyAppState.openable(_:))
    {

      (*(v47 + 8))(v41, v46);
      goto LABEL_30;
    }

    (*(v47 + 96))(v41, v46);

    (*(v81 + 8))(v41, v82);
    sub_10075E5AC();
    if (v48)
    {
      v49 = sub_10075E5BC();
      v51 = v50;
      v52 = objc_allocWithZone(LSApplicationRecord);
      v53 = sub_10074D0AC(v49, v51, 1);
      if (!v53)
      {

LABEL_29:

        goto LABEL_30;
      }

      v88 = v53;
      v54 = [v53 shortVersionString];
      if (v54)
      {
        v55 = v54;
        sub_10076FF9C();

        LOBYTE(v55) = sub_100763C4C();

        if (v55)
        {
          v56 = swift_allocObject();
          v56[2] = v80;
          v56[3] = v45;
          v56[4] = v79;
          v56[5] = v39;
          v95 = sub_1000DC000;
          v96 = v56;
          aBlock = _NSConcreteStackBlock;
          v92 = 1107296256;
          v93 = sub_10009AEDC;
          v94 = &unk_100888428;
          v57 = _Block_copy(&aBlock);

          [v42 send:v57];
          _Block_release(v57);
          sub_10075E60C();
          (*(v81 + 104))(v71, enum case for OpenableDestination.app(_:), v82);
          if (sub_10075E59C())
          {
            v58 = v72;
            sub_10076B89C();

            v59 = v69;
            v60 = v70;
            (*(v69 + 56))(v58, 0, 1, v70);
            (*(v59 + 32))(v73, v58, v60);
            v27 = v89;
          }

          else
          {
            v63 = v69;
            v64 = v72;
            v65 = v70;
            (*(v69 + 56))(v72, 1, 1, v70);
            sub_10076F4DC();
            v66 = (*(v63 + 48))(v64, 1, v65);
            v27 = v89;
            if (v66 != 1)
            {
              sub_10000CFBC(v64, &qword_100956730);
            }
          }

          sub_10075EA9C();
          swift_allocObject();
          v67 = sub_10075EA7C();
          sub_100564010(v67, 1, v68);
          sub_10076FC4C();

          goto LABEL_34;
        }

LABEL_30:
        v61 = sub_10075E59C();
        if (v61)
        {
          sub_100563DC4(v61, 1, v68);
        }

        else
        {
          sub_1000DBF6C();
          swift_allocError();
          sub_10076FC7C();
        }

        v27 = v89;
        sub_10076FC4C();
LABEL_34:

        swift_unknownObjectRelease();

        return v27;
      }
    }

    goto LABEL_29;
  }

  sub_10076008C();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {

    goto LABEL_6;
  }

  v23 = v22;
  sub_10076006C();
  sub_10075E60C();
  v24 = sub_1000DC024(v19, v16, a1, a2);
  v25 = a2;
  v26 = v24;
  v21(v16, v11);
  v21(v19, v11);
  if (v26)
  {

    swift_unknownObjectRelease();

    return v26;
  }

  else
  {
    sub_10076002C();
    sub_1000DB88C(v90, &aBlock);
    sub_10000CD74(v90);
    sub_10076003C();

    sub_100564028(v23, 1, v25);

    v27 = v89;
    sub_10076FC4C();
    swift_unknownObjectRelease();
  }

  return v27;
}

uint64_t sub_1000DB88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10075EBAC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  swift_getObjectType();
  sub_10075ED2C();
  (*(v5 + 16))(v7, v10, v4);
  v11 = (*(v5 + 88))(v7, v4);
  v12 = enum case for LegacyAppState.openable(_:);
  if (v11 == enum case for LegacyAppState.openable(_:))
  {
    (*(v5 + 96))(v7, v4);

    v13 = sub_100764E5C();
    (*(*(v13 - 8) + 8))(v7, v13);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
  }

  sub_10000CD08(a1, v32);
  sub_100016F40(0, &qword_100947EA8);
  if (swift_dynamicCast())
  {
    v14 = a2;
    v15 = v30;
    v16 = sub_10076FF6C();
    v27 = v15;
    v17 = [v15 valueForKey:v16];

    if (v17)
    {
      sub_10077123C();
      swift_unknownObjectRelease();
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
    }

    v32[0] = v30;
    v32[1] = v31;
    a2 = v14;
    if (*(&v31 + 1))
    {
      if (swift_dynamicCast())
      {
        v18 = v29;
        if (v11 != v12)
        {
          v20 = v28;
          v21 = sub_100016F40(0, &qword_100947EB0);
          v22 = v27;
          v23 = a2;
          v24 = sub_1007704AC();
          *&v32[0] = v20;
          *(&v32[0] + 1) = v18;

          v33._object = 0x80000001007D30C0;
          v33._countAndFlagsBits = 0xD000000000000013;
          sub_1007700CC(v33);

          v25 = sub_10076FF6C();

          *&v32[0] = 0x6D61726150797562;
          *(&v32[0] + 1) = 0xE900000000000073;
          [v24 __swift_setObject:v25 forKeyedSubscript:sub_1007716BC()];

          swift_unknownObjectRelease();
          v23[3] = v21;

          *v23 = v24;
          return (*(v5 + 8))(v10, v4);
        }

        (*(v5 + 8))(v10, v4);
      }

      else
      {
        (*(v5 + 8))(v10, v4);
      }
    }

    else
    {
      (*(v5 + 8))(v10, v4);

      sub_10000CFBC(v32, &unk_1009434C0);
    }
  }

  else
  {
    (*(v5 + 8))(v10, v4);
  }

  return sub_10000CD08(a1, a2);
}

uint64_t sub_1000DBD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1009412E8 != -1)
  {
    swift_once();
  }

  v7 = sub_10076FD4C();
  sub_10000A61C(v7, qword_1009A2600);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100785C70;
  sub_10076F27C();
  sub_10076F27C();
  v12 = &type metadata for String;
  v10 = a1;
  v11 = a2;

  sub_10076F28C();
  sub_10000CFBC(&v10, &unk_1009434C0);
  sub_10076F27C();
  v12 = &type metadata for String;
  v10 = a3;
  v11 = a4;

  sub_10076F28C();
  sub_10000CFBC(&v10, &unk_1009434C0);
  sub_10076FBDC();
}

unint64_t sub_1000DBF6C()
{
  result = qword_100947EA0;
  if (!qword_100947EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947EA0);
  }

  return result;
}

uint64_t sub_1000DBFC0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000DC00C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000DC024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a3;
  v54 = a2;
  v52 = a1;
  v5 = sub_10000A5D4(&qword_100956730);
  __chkstk_darwin(v5 - 8);
  v7 = &v36 - v6;
  v8 = sub_10076F4FC();
  v46 = *(v8 - 8);
  v47 = v8;
  __chkstk_darwin(v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100764E5C();
  v42 = *(v11 - 8);
  v43 = v11;
  __chkstk_darwin(v11);
  v48 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076B96C();
  v40 = *(v13 - 8);
  v41 = v13;
  __chkstk_darwin(v13);
  v44 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10075EBAC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10075E56C();
  v53 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E1BC();
  result = sub_10075E19C();
  if (result)
  {
    v50 = v19;
    v37 = v7;
    v38 = v10;
    sub_10000A5D4(&unk_10094A8C0);
    sub_10076F64C();
    v39 = a4;
    sub_10076FC1C();
    v23 = v55;
    swift_getObjectType();
    v51 = sub_10075EE2C();
    v49 = v23;
    sub_10075EE2C();
    sub_10075E84C();
    if ((sub_10075E55C() & 1) != 0 || (swift_getObjectType(), sub_10075ED1C(), v24 = sub_10075EB4C(), (*(v16 + 8))(v18, v15), (v24)) && (swift_getObjectType(), sub_10075ED1C(), v25 = sub_10075EB5C(), (*(v16 + 8))(v18, v15), (v25))
    {
      (*(v40 + 16))(v44, v54, v41);
      (*(v42 + 104))(v48, enum case for OpenableDestination.app(_:), v43);
      if (sub_10075E59C())
      {
        v26 = v37;
        sub_10076B89C();

        v28 = v46;
        v27 = v47;
        (*(v46 + 56))(v26, 0, 1, v47);
        (*(v28 + 32))(v38, v26, v27);
        v29 = v50;
      }

      else
      {
        v31 = v46;
        v30 = v47;
        v32 = v37;
        (*(v46 + 56))(v37, 1, 1, v47);
        sub_10076F4DC();
        v33 = (*(v31 + 48))(v32, 1, v30);
        v29 = v50;
        if (v33 != 1)
        {
          sub_10000CFBC(v32, &qword_100956730);
        }
      }

      sub_10075EA9C();
      swift_allocObject();
      v34 = sub_10075EA7C();
      v35 = sub_100564010(v34, 1, v39);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      (*(v53 + 8))(v21, v29);
      return v35;
    }

    else
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      (*(v53 + 8))(v21, v50);
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000DC68C()
{
  result = qword_100947EB8;
  if (!qword_100947EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947EB8);
  }

  return result;
}

id sub_1000DC6E0(uint64_t a1, uint64_t a2, void *a3)
{
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002BAFEC;
  aBlock[3] = &unk_100888508;
  v5 = _Block_copy(aBlock);

  v11.receiver = v3;
  v11.super_class = type metadata accessor for SearchResultsCollectionCompositionalLayout();
  v6 = objc_msgSendSuper2(&v11, "initWithSectionProvider:configuration:", v5, a3);
  _Block_release(v5);
  type metadata accessor for SearchTransparencyView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = v6;
  sub_1007708EC();
  v9 = sub_10076FF6C();

  [v8 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v9];

  return v8;
}

double sub_1000DC8D4()
{
  v1 = v0;
  v2 = sub_10076C38C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for SearchResultsCollectionCompositionalLayout();
  v27.receiver = v0;
  v27.super_class = v12;
  objc_msgSendSuper2(&v27, "collectionViewContentSize");
  v14 = v13;
  v15 = [v0 collectionView];
  if (!v15)
  {
    return v14;
  }

  v16 = v15;
  v17 = [v0 collectionView];
  if (!v17 || (v18 = v17, v19 = [v17 delegate], v18, !v19))
  {

    return v14;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {

    swift_unknownObjectRelease();
    return v14;
  }

  sub_1000D32C8(v16);
  swift_unknownObjectRelease();
  (*(v3 + 32))(v11, v8, v2);
  v20 = [v1 collectionView];
  if (!v20 || (v21 = v20, v22 = [v20 delegate], v21, !v22))
  {

LABEL_12:
    (*(v3 + 8))(v11, v2);
    return v14;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {

    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v23 = sub_10076A5CC();
  if (v23)
  {
    v24 = v23;
    sub_1000D32C8(v16);
    sub_10076C8BC();
    sub_10076C2FC();
    sub_1000D3900(v25, v24, v16);
    swift_unknownObjectRelease();

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_10076C23C();

  (*(v3 + 8))(v11, v2);
  return v14;
}

uint64_t sub_1000DCC10(double a1)
{
  v2 = v1;
  v61 = sub_10000A5D4(&qword_10094BC30);
  __chkstk_darwin(v61);
  v5 = &v50 - v4;
  v6 = sub_10075E11C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v65 = &v50 - v11;
  v12 = sub_10000A5D4(&unk_10094DE60);
  __chkstk_darwin(v12 - 8);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v50 - v16;
  __chkstk_darwin(v18);
  v63 = &v50 - v19;
  v20 = sub_1000DD6DC(a1);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = type metadata accessor for SearchResultsCollectionCompositionalLayout();
  v67.receiver = v1;
  v67.super_class = v27;
  result = objc_msgSendSuper2(&v67, "layoutAttributesForElementsInRect:", v20, v22, v24, v26);
  if (!result)
  {
    return result;
  }

  v29 = result;
  sub_1000DE4D0();
  v55 = sub_1007701BC();

  v30 = [v2 collectionView];
  if (!v30)
  {
    return v55;
  }

  v31 = v30;
  v32 = [v30 delegate];

  if (!v32)
  {
    return v55;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    swift_unknownObjectRelease();
    return v55;
  }

  sub_1000D3158(v63);
  v66 = _swiftEmptyArrayStorage;
  if (v55 >> 62)
  {
    result = sub_10077158C();
    if (result)
    {
      goto LABEL_7;
    }

LABEL_30:
    v49 = _swiftEmptyArrayStorage;
LABEL_31:
    swift_unknownObjectRelease();

    sub_10000CFBC(v63, &unk_10094DE60);
    return v49;
  }

  result = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_30;
  }

LABEL_7:
  v50 = v32;
  v54 = v14;
  v52 = v9;
  v62 = v2;
  if (result >= 1)
  {
    v33 = 0;
    v34 = v55;
    v58 = (v7 + 16);
    v59 = v55 & 0xC000000000000001;
    v57 = (v7 + 56);
    v35 = (v7 + 48);
    v51 = (v7 + 32);
    v64 = (v7 + 8);
    v56 = (v7 + 48);
    v60 = result;
    while (1)
    {
      v36 = v59 ? sub_10077149C() : *(v34 + 8 * v33 + 32);
      v37 = v36;
      v38 = [v36 indexPath];
      v39 = v65;
      sub_10075E06C();

      (*v58)(v17, v39, v6);
      (*v57)(v17, 0, 1, v6);
      v40 = *(v61 + 48);
      sub_1000DE51C(v17, v5);
      sub_1000DE51C(v63, &v5[v40]);
      v41 = *v35;
      if ((*v35)(v5, 1, v6) == 1)
      {
        break;
      }

      v42 = v54;
      sub_1000DE51C(v5, v54);
      if (v41(&v5[v40], 1, v6) == 1)
      {
        sub_10000CFBC(v17, &unk_10094DE60);
        (*v64)(v42, v6);
        v34 = v55;
LABEL_17:
        sub_10000CFBC(v5, &qword_10094BC30);
        goto LABEL_23;
      }

      v43 = v52;
      (*v51)(v52, &v5[v40], v6);
      sub_1000DE58C();
      v53 = sub_10076FF1C();
      v44 = *v64;
      (*v64)(v43, v6);
      sub_10000CFBC(v17, &unk_10094DE60);
      v44(v42, v6);
      sub_10000CFBC(v5, &unk_10094DE60);
      v34 = v55;
      if (v53)
      {
        goto LABEL_19;
      }

LABEL_23:
      sub_1000DD7F0(v37);
      sub_10077019C();
      if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      ++v33;
      sub_10077025C();

      (*v64)(v65, v6);
      v35 = v56;
      if (v60 == v33)
      {
        v49 = v66;
        goto LABEL_31;
      }
    }

    sub_10000CFBC(v17, &unk_10094DE60);
    if (v41(&v5[v40], 1, v6) == 1)
    {
      sub_10000CFBC(v5, &unk_10094DE60);
LABEL_19:
      type metadata accessor for SearchTransparencyView();
      sub_1007708EC();
      v45 = sub_10076FF6C();

      isa = sub_10075E02C().super.isa;
      v47 = [v62 layoutAttributesForDecorationViewOfKind:v45 atIndexPath:isa];

      if (v47)
      {
        v48 = v47;
        sub_10077019C();
        if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();
      }

      goto LABEL_23;
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

double sub_1000DD6DC(double a1)
{
  v3 = [v1 collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 collectionView];
    if (v5 && (v6 = v5, v7 = [v5 delegate], v6, v7))
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        sub_1000D35A8(v4);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  return a1;
}

id sub_1000DD7F0(void *a1)
{
  v2 = v1;
  v28 = a1;
  v3 = sub_10000A5D4(&unk_10094DE60);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - v4;
  v6 = sub_10075E11C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v27 - v12;
  v14 = [v1 collectionView];
  if (v14)
  {
    v15 = v14;
    v16 = [v1 collectionView];
    if (v16 && (v17 = v16, v18 = [v16 delegate], v17, v18))
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        sub_1000D3158(v5);
        swift_unknownObjectRelease();
        if ((*(v7 + 48))(v5, 1, v6) == 1)
        {

LABEL_9:
          sub_10000CFBC(v5, &unk_10094DE60);
          goto LABEL_10;
        }

        (*(v7 + 32))(v13, v5, v6);
        v21 = [v28 indexPath];
        sub_10075E06C();

        LOBYTE(v21) = sub_10075E03C();
        v22 = *(v7 + 8);
        v22(v9, v6);
        if ((v21 & 1) == 0)
        {
          v22(v13, v6);

          goto LABEL_10;
        }

        sub_1000DE4D0();
        v23 = sub_10077116C();
        v24 = [v2 collectionView];
        if (v24)
        {
          v25 = v24;
          v26 = [v24 delegate];

          if (v26)
          {
            swift_getObjectType();
            if (!swift_conformsToProtocol2())
            {

              swift_unknownObjectRelease();
              goto LABEL_20;
            }

            sub_1000D35A8(v15);
            swift_unknownObjectRelease();
            [v23 frame];
            [v23 setFrame:?];
          }
        }

LABEL_20:
        v22(v13, v6);
        return v23;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_9;
  }

LABEL_10:
  v19 = v28;

  return v19;
}

id sub_1000DDBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v69 = a2;
  v70 = a1;
  v6 = sub_10076C38C();
  v65 = *(v6 - 8);
  v66 = v6;
  __chkstk_darwin(v6);
  v63 = &v59[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v64 = &v59[-v9];
  v10 = sub_10075E11C();
  v68 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v59[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10000A5D4(&qword_10094BC30);
  __chkstk_darwin(v13);
  v15 = &v59[-v14];
  v16 = sub_10000A5D4(&unk_10094DE60);
  __chkstk_darwin(v16 - 8);
  v18 = &v59[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v21 = &v59[-v20];
  __chkstk_darwin(v22);
  v24 = &v59[-v23];
  v67 = a3;
  isa = sub_10075E02C().super.isa;
  v26 = type metadata accessor for SearchResultsCollectionCompositionalLayout();
  v71.receiver = v4;
  v71.super_class = v26;
  v27 = objc_msgSendSuper2(&v71, "layoutAttributesForItemAtIndexPath:", isa);

  if (!v27)
  {
    return 0;
  }

  v28 = [v4 collectionView];
  if (!v28)
  {
    goto LABEL_19;
  }

  v62 = v28;
  v29 = [v4 collectionView];
  if (!v29 || (v30 = v29, v31 = [v29 delegate], v30, !v31))
  {

LABEL_19:
    return 0;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v61 = v31;
  type metadata accessor for SearchTransparencyView();
  if (sub_1007708EC() == v70 && v32 == v69)
  {
  }

  else
  {
    v33 = sub_10077167C();

    if ((v33 & 1) == 0)
    {
LABEL_18:

      swift_unknownObjectRelease();
      goto LABEL_19;
    }
  }

  v34 = v68;
  (*(v68 + 16))(v24, v67, v10);
  (*(v34 + 56))(v24, 0, 1, v10);
  sub_1000D3158(v21);
  v35 = *(v13 + 48);
  sub_1000DE51C(v24, v15);
  sub_1000DE51C(v21, &v15[v35]);
  v36 = *(v34 + 48);
  if (v36(v15, 1, v10) != 1)
  {
    sub_1000DE51C(v15, v18);
    if (v36(&v15[v35], 1, v10) != 1)
    {
      v38 = v68;
      (*(v68 + 32))(v12, &v15[v35], v10);
      sub_1000DE58C();
      v60 = sub_10076FF1C();
      v39 = *(v38 + 8);
      v39(v12, v10);
      sub_10000CFBC(v21, &unk_10094DE60);
      sub_10000CFBC(v24, &unk_10094DE60);
      v39(v18, v10);
      sub_10000CFBC(v15, &unk_10094DE60);
      if (v60)
      {
        goto LABEL_22;
      }

      goto LABEL_18;
    }

    sub_10000CFBC(v21, &unk_10094DE60);
    sub_10000CFBC(v24, &unk_10094DE60);
    (*(v68 + 8))(v18, v10);
    goto LABEL_17;
  }

  sub_10000CFBC(v21, &unk_10094DE60);
  sub_10000CFBC(v24, &unk_10094DE60);
  if (v36(&v15[v35], 1, v10) != 1)
  {
LABEL_17:
    sub_10000CFBC(v15, &qword_10094BC30);
    goto LABEL_18;
  }

  sub_10000CFBC(v15, &unk_10094DE60);
LABEL_22:
  v40 = sub_10076FF6C();
  v41 = sub_10075E02C().super.isa;
  v42 = [objc_opt_self() layoutAttributesForDecorationViewOfKind:v40 withIndexPath:v41];

  v43 = v64;
  v44 = v62;
  sub_1000D32C8(v62);
  sub_10076C2EC();
  v46 = v45;
  [v27 frame];
  MaxY = CGRectGetMaxY(v72);
  sub_10076C23C();
  v49 = v48;
  v50 = sub_10076A5CC();
  if (v50)
  {
    v51 = v50;
    v52 = v63;
    sub_1000D32C8(v44);
    sub_10076C8BC();
    sub_10076C2FC();
    v54 = sub_1000D3900(v53, v51, v44);
    v56 = v55;

    v58 = v65;
    v57 = v66;
    (*(v65 + 8))(v52, v66);
  }

  else
  {
    v54 = 0.0;
    v56 = 0.0;
    v58 = v65;
    v57 = v66;
  }

  [v42 setFrame:{v46, MaxY + v49, v54, v56}];
  swift_unknownObjectRelease();

  (*(v58 + 8))(v43, v57);
  return v42;
}

id sub_1000DE478()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchResultsCollectionCompositionalLayout();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000DE4D0()
{
  result = qword_100947EF0;
  if (!qword_100947EF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100947EF0);
  }

  return result;
}

uint64_t sub_1000DE51C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_10094DE60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000DE58C()
{
  result = qword_100947F00;
  if (!qword_100947F00)
  {
    sub_10075E11C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947F00);
  }

  return result;
}

uint64_t sub_1000DE5E4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000DE624(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000DE6C4()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for TransitionViewContainer();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong superview];

    if (v3)
    {
      sub_1000ACA5C();
      v4 = v0;
      v5 = sub_100770EEC();

      if (v5)
      {
        v6 = swift_unknownObjectWeakLoadStrong();
        if (v6)
        {
          v7 = v6;
          [v4 bounds];
          [v7 setFrame:?];
        }
      }
    }
  }
}

void sub_1000DE7DC(void *a1)
{
  v1 = a1;
  sub_1000DE6C4();
}

id sub_1000DE84C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransitionViewContainer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000DE8D0()
{
  swift_unknownObjectWeakInit();
  sub_10077156C();
  __break(1u);
}

double sub_1000DE9BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a3;
  v70 = a2;
  v71 = a1;
  v64 = sub_10076C38C();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_10076997C();
  v66 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v55 = &v52 - v6;
  __chkstk_darwin(v7);
  v53 = &v52 - v8;
  v9 = sub_10076545C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076C96C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1007675FC();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10076761C();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10093FAC8 != -1)
  {
    swift_once();
  }

  v22 = sub_10000A61C(v17, qword_10099D948);
  v23 = *(v18 + 16);
  v56 = v20;
  v23(v20, v22, v17);
  (*(v14 + 16))(v16, v70, v13);
  sub_100763D7C();
  swift_getKeyPath();
  sub_10076338C();

  v24 = v78;
  v25 = sub_1007706EC();

  v26 = &enum case for AchievementGroupView.Size.phone(_:);
  if ((v25 & 1) == 0)
  {
    v26 = &enum case for AchievementGroupView.Size.pad(_:);
  }

  (*(v10 + 104))(v12, *v26, v9);
  v27 = sub_10076546C();
  v28 = objc_allocWithZone(v27);
  v29 = sub_10076544C();
  v79 = v27;
  v80 = &protocol witness table for UIView;
  v78 = v29;
  v30 = sub_100763D8C();
  v81._object = 0x80000001007D1EE0;
  v81._countAndFlagsBits = 0xD000000000000032;
  v82._countAndFlagsBits = 0;
  v82._object = 0xE000000000000000;
  sub_100767D6C(v81, v30, v82);
  v31 = sub_10005312C();
  if (qword_100940D80 != -1)
  {
    swift_once();
  }

  v32 = sub_10076D3DC();
  sub_10000A61C(v32, qword_1009A1678);
  swift_getKeyPath();
  sub_10076338C();

  sub_100770B2C();
  swift_unknownObjectRelease();
  v33 = sub_10076C04C();
  v77[3] = v33;
  v70 = sub_1000DF968(&qword_100943230, &type metadata accessor for Feature);
  v77[4] = v70;
  v34 = sub_10000DB7C(v77);
  v35 = *(v33 - 8);
  v36 = *(v35 + 104);
  v69 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v68 = v36;
  v67 = v35 + 104;
  v36(v34);
  sub_10076C90C();
  v65 = v31;
  sub_10000CD74(v77);
  v37 = v53;
  sub_10076996C();
  sub_10076994C();
  v38 = v59;
  v66 = *(v66 + 8);
  (v66)(v37, v59);
  swift_getKeyPath();
  sub_10076338C();

  v39 = v76[0];
  sub_1000BFFCC();

  if (qword_100940D88 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v32, qword_1009A1690);
  swift_getKeyPath();
  sub_10076338C();

  sub_100770B2C();
  swift_unknownObjectRelease();
  v76[3] = v33;
  v76[4] = v70;
  v40 = sub_10000DB7C(v76);
  v68(v40, v69, v33);
  sub_10076C90C();
  sub_10000CD74(v76);
  v41 = v55;
  sub_10076996C();
  sub_10076994C();
  (v66)(v41, v38);
  sub_100763D6C();
  if (qword_100940D90 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v32, qword_1009A16A8);
  swift_getKeyPath();
  sub_10076338C();

  sub_100770B2C();
  swift_unknownObjectRelease();
  v75[3] = v33;
  v75[4] = v70;
  v42 = sub_10000DB7C(v75);
  v68(v42, v69, v33);
  sub_10076C90C();
  sub_10000CD74(v75);
  v43 = v57;
  sub_10076996C();
  sub_10076994C();
  (v66)(v43, v38);
  v44 = sub_10076DDDC();
  swift_allocObject();
  v45 = sub_10076DDBC();
  v74 = &protocol witness table for LayoutViewPlaceholder;
  v73 = v44;
  v72 = v45;
  v46 = v58;
  sub_10076760C();
  swift_getKeyPath();
  v47 = v62;
  sub_10076338C();

  sub_10076C2FC();
  (*(v63 + 8))(v47, v64);
  swift_getKeyPath();
  sub_10076338C();

  sub_1000DF968(&unk_100947480, &type metadata accessor for AchievementSummaryLayout);
  v48 = v61;
  sub_10076D2AC();
  v50 = v49;
  swift_unknownObjectRelease();
  (*(v60 + 8))(v46, v48);
  return v50;
}

uint64_t sub_1000DF528(uint64_t a1)
{
  v2 = sub_1007675FC();
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076C38C();
  v23 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076C96C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v23 - v13;
  sub_100763D9C();
  sub_1000DF968(&unk_100947420, &type metadata accessor for AchievementSummary);
  result = sub_10076332C();
  v16 = v26;
  if (v26)
  {
    v17 = sub_100763D5C();
    if (*(v17 + 16))
    {
      (*(v9 + 16))(v11, v17 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v8);

      (*(v9 + 32))(v14, v11, v8);
      swift_getKeyPath();
      sub_10076338C();

      v18 = v26;
      v19 = sub_10077071C();

      if (v19)
      {
        sub_1000DE9BC(v16, v14, a1);
      }

      else
      {
        swift_getKeyPath();
        sub_10076338C();

        sub_10076C2FC();
        (*(v23 + 8))(v7, v5);
        if (qword_10093FAC8 != -1)
        {
          swift_once();
        }

        v20 = v25;
        v21 = sub_10000A61C(v25, qword_10099D948);
        v22 = v24;
        (*(v24 + 16))(v4, v21, v20);
        sub_100630CB4();
        sub_1007675CC();
        swift_unknownObjectRelease();

        (*(v22 + 8))(v4, v20);
      }

      return (*(v9 + 8))(v14, v8);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1000DF968(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000DF9B0(void *a1, uint64_t a2, char a3)
{
  _s18PaletteContentViewCMa();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = &v7[OBJC_IVAR____TtCC20ProductPageExtension29NavigationBarPalettePresenter18PaletteContentView_didLayoutSubviews];
  v10 = *&v7[OBJC_IVAR____TtCC20ProductPageExtension29NavigationBarPalettePresenter18PaletteContentView_didLayoutSubviews];
  *v9 = sub_1000E0734;
  v9[1] = v8;

  sub_1000167E0(v10);

  v11 = [objc_allocWithZone(_UINavigationBarPalette) initWithContentView:v7];
  [v11 _setDisplaysWhenSearchActive:a3 & 1];
  [v11 _setContentViewMarginType:a2];
  [v11 setClipsToBounds:0];
  *(v3 + 65) = 0;
  [v11 setPreferredHeight:1.0];
  [v11 setMinimumHeight:0.0];
  [v11 setPreferredHeight:0.0];
  v12 = v11;
  [a1 _setBottomPalette:v12];

  swift_unknownObjectWeakAssign();
}

uint64_t sub_1000DFB5C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000DFF34();
  }

  return result;
}

void sub_1000DFBB4()
{
  if (*(v0 + 24))
  {
    if ((*(v0 + 65) & 1) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v2 = *(v0 + 32);
        if (v2)
        {
          v3 = *(v0 + 64);
          v4 = *(v0 + 48);
          v18 = Strong;

          sub_10001CE50(v4);
          v5 = [v18 contentView];
          sub_1000ACA5C();
          sub_10076422C();
          v7 = v6;
          v9 = v8;
          v11 = v10;
          v13 = v12;

          v20.origin.x = v7;
          v20.origin.y = v9;
          v20.size.width = v11;
          v20.size.height = v13;
          Width = CGRectGetWidth(v20);
          v15 = [v18 contentView];
          v16 = v2(Width);

          [v18 setPreferredHeight:v16];
          v17 = 0.0;
          if ((v3 & 1) == 0)
          {
            v17 = v16;
          }

          [v18 setMinimumHeight:v17];

          sub_1000167E0(v4);
          *(v0 + 65) = 1;
        }

        else
        {
        }
      }
    }
  }
}

void sub_1000DFD68()
{
  if (*(v0 + 24))
  {
    if (*(v0 + 65) == 1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v2 = Strong;
        v3 = *(v0 + 32);
        if (v3)
        {
          v4 = *(v0 + 48);
          v5 = *(v0 + 64);
          v19 = Strong;

          sub_10001CE50(v4);
          v6 = [v19 contentView];
          sub_1000ACA5C();
          sub_10076422C();
          v8 = v7;
          v10 = v9;
          v12 = v11;
          v14 = v13;

          v21.origin.x = v8;
          v21.origin.y = v10;
          v21.size.width = v12;
          v21.size.height = v14;
          Width = CGRectGetWidth(v21);
          v16 = [v19 contentView];
          v17 = v3(Width);

          [v19 preferredHeight];
          if (v18 != v17)
          {
            [v19 setPreferredHeight:v17];
            [v19 setMinimumHeight:v17];
            if (v5)
            {
              [v19 setMinimumHeight:0.0];
            }

            sub_1000DFF34();
          }

          Strong = sub_1000167E0(v4);
          v2 = v19;
        }

        _objc_release_x1(Strong, v2);
      }
    }
  }
}

void sub_1000DFF34()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return;
  }

  if (*(v0 + 65) != 1)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = *(v0 + 32);
  if (!v3)
  {
    goto LABEL_15;
  }

  v25 = Strong;
  v4 = *(v0 + 48);
  if (!v4)
  {
    sub_1000E073C(v3, *(v0 + 40), 0);
    v23 = v1;
    [v23 setAlpha:1.0];

    Strong = v25;
LABEL_15:

    return;
  }

  sub_1000E073C(v3, *(v0 + 40), *(v0 + 48));
  sub_10001CE50(v4);
  v5 = [v25 contentView];
  sub_1000ACA5C();
  sub_10076422C();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v27.origin.x = v7;
  v27.origin.y = v9;
  v27.size.width = v11;
  v27.size.height = v13;
  Width = CGRectGetWidth(v27);
  v15 = [v25 contentView];
  v16 = v3(Width);

  v17 = [v25 contentView];
  v18 = v4(Width);

  [v25 frame];
  Height = CGRectGetHeight(v28);
  v20 = *(v0 + 24);
  if (v20)
  {
    v21 = (Height - v18) / (v16 - v18);
    if (v21 <= 0.0)
    {
      v21 = 0.0;
    }

    if (v21 <= 1.0)
    {
      v22 = v21;
    }

    else
    {
      v22 = 1.0;
    }

    v24 = v20;
    [v24 setAlpha:v22];

    sub_1000167E0(v4);

    sub_1000167E0(v4);
    Strong = v24;
    goto LABEL_15;
  }

  sub_1000167E0(v4);

  sub_1000167E0(v4);
}

void sub_1000E01E8(void *a1)
{
  if (*(v1 + 24))
  {
    if ((*(v1 + 65) & 1) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        v5 = *(v1 + 32);
        if (!v5)
        {

          if (!*(v1 + 32))
          {
            return;
          }

          goto LABEL_9;
        }

        v22 = *(v1 + 64);
        v6 = *(v1 + 48);

        sub_10001CE50(v6);
        v7 = [v4 contentView];
        sub_1000ACA5C();
        sub_10076422C();
        v9 = v8;
        v11 = v10;
        v13 = v12;
        v15 = v14;

        v24.origin.x = v9;
        v24.origin.y = v11;
        v24.size.width = v13;
        v24.size.height = v15;
        Width = CGRectGetWidth(v24);
        v17 = [v4 contentView];
        v18 = v5(Width);

        [v4 setPreferredHeight:v18];
        v19 = 0.0;
        if ((v22 & 1) == 0)
        {
          v19 = v18;
        }

        [v4 setMinimumHeight:v19];

        sub_1000167E0(v6);
        *(v1 + 65) = 1;
      }
    }
  }

  if (!*(v1 + 32))
  {
    return;
  }

LABEL_9:
  v20 = *(v1 + 48);
  v21 = *(v1 + 64);

  sub_10001CE50(v20);
  if (v21)
  {
    [a1 _scrollToTopIfPossible:1];
  }

  sub_1000167E0(v20);
}

uint64_t sub_1000E0404()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 32);
    if (v3)
    {
      v4 = *(v0 + 48);
      v17 = v2;
      if (*(v0 + 64))
      {
        v5 = *(v0 + 24);
        if (v5)
        {

          sub_10001CE50(v4);
          v6 = [v5 isHidden];
          Height = 0.0;
          if ((v6 & 1) == 0)
          {
            v8 = [v17 contentView];
            [v8 frame];
            v10 = v9;
            v12 = v11;
            v14 = v13;
            v16 = v15;

            v19.origin.x = v10;
            v19.origin.y = v12;
            v19.size.width = v14;
            v19.size.height = v16;
            Height = CGRectGetHeight(v19);
          }
        }

        else
        {

          sub_10001CE50(v4);
          Height = 0.0;
        }

        [v17 setMinimumHeight:Height];
        [v17 minimumHeight];
        [v17 setPreferredHeight:?];
      }

      else
      {
        sub_1000E073C(v3, *(v0 + 40), v4);
      }

      return sub_1000167E0(v4);
    }

    else
    {

      return _objc_release_x1(0, v2);
    }
  }

  return result;
}

uint64_t sub_1000E05C0()
{
  swift_unknownObjectWeakDestroy();

  sub_1000E0788(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_1000E0634(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000E064C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000E0660(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1000E06A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000E06FC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000E073C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {

    return sub_10001CE50(a3);
  }

  return result;
}

uint64_t sub_1000E0788(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {

    return sub_1000167E0(a3);
  }

  return result;
}

uint64_t sub_1000E07D4(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_offerButton);
  sub_10003F0D4(a1, v13);
  v5 = v14;
  if (v14)
  {
    v6 = sub_10000CF78(v13, v14);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_10077165C();
    (*(v7 + 8))(v10, v5);
    sub_10000CD74(v13);
  }

  else
  {
    v11 = 0;
  }

  [v4 addTarget:v11 action:a2 forControlEvents:64];
  return swift_unknownObjectRelease();
}

char *sub_1000E092C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v114 = sub_10076771C();
  v101 = *(v114 - 8);
  __chkstk_darwin(v114);
  v102 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v11 - 8);
  v100 = &v95 - v12;
  v13 = sub_10075E77C();
  __chkstk_darwin(v13 - 8);
  v99 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_100945BD0);
  __chkstk_darwin(v15 - 8);
  v107 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v110 = &v95 - v18;
  __chkstk_darwin(v19);
  v108 = &v95 - v20;
  __chkstk_darwin(v21);
  v106 = &v95 - v22;
  v23 = sub_10076D1AC();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_metrics;
  v140[13] = &type metadata for Double;
  v140[14] = &protocol witness table for Double;
  v140[9] = &protocol witness table for Double;
  v140[10] = 0x4024000000000000;
  v140[8] = &type metadata for Double;
  v140[5] = 0x4000000000000000;
  if (qword_100940E20 != -1)
  {
    swift_once();
  }

  v104 = v5;
  v98 = &v5[v27];
  v28 = sub_10076D3DC();
  v109 = sub_10000A61C(v28, qword_1009A1858);
  v29 = *(v28 - 8);
  v30 = v29 + 16;
  v121 = *(v29 + 16);
  v122 = v29;
  v121(v26, v109, v28);
  LODWORD(v118) = enum case for FontSource.useCase(_:);
  v119 = v24[13];
  v119(v26);
  v120 = sub_10076D9AC();
  v140[3] = v120;
  v140[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v140);
  v138 = v23;
  v139 = &protocol witness table for FontSource;
  v31 = sub_10000DB7C(v137);
  v111 = v24[2];
  v111(v31, v26, v23);
  sub_10076D9BC();
  v32 = v24[1];
  v113 = v24 + 1;
  v32(v26, v23);
  v137[0] = 0x405C000000000000;
  v134[0] = 0x4044000000000000;
  v33 = sub_10000A5D4(&unk_100943120);
  sub_10075FDEC();
  v115 = v28;
  v116 = v30;
  v121(v26, v109, v28);
  v112 = v24 + 13;
  (v119)(v26, v118, v23);
  v138 = v120;
  v139 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v137);
  v135 = v23;
  v136 = &protocol witness table for FontSource;
  v34 = sub_10000DB7C(v134);
  v117 = v24 + 2;
  v111(v34, v26, v23);
  sub_10076D9BC();
  v96 = v32;
  v32(v26, v23);
  v134[0] = 0x405C000000000000;
  v131[0] = 0x4044000000000000;
  v105 = v33;
  sub_10075FDEC();
  if (qword_100940E28 != -1)
  {
    swift_once();
  }

  v35 = v115;
  v97 = sub_10000A61C(v115, qword_1009A1870);
  v36 = v121;
  (v121)(v26);
  (v119)(v26, v118, v23);
  v135 = v120;
  v136 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v134);
  v132 = v23;
  v133 = &protocol witness table for FontSource;
  v37 = sub_10000DB7C(v131);
  v38 = v111;
  v111(v37, v26, v23);
  sub_10076D9BC();
  v39 = v96;
  v96(v26, v23);
  v131[0] = 0x405C000000000000;
  v128[0] = 0x4044000000000000;
  sub_10075FDEC();
  v40 = v36;
  v41 = v39;
  v42 = v35;
  if (qword_100940E10 != -1)
  {
    swift_once();
  }

  v43 = sub_10000A61C(v35, qword_1009A1828);
  v40(v26, v43, v35);
  v44 = v118;
  (v119)(v26, v118, v23);
  v132 = v120;
  v133 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v131);
  v129 = v23;
  v130 = &protocol witness table for FontSource;
  v45 = sub_10000DB7C(v128);
  v38(v45, v26, v23);
  sub_10076D9BC();
  v41(v26, v23);
  v128[0] = 0x4052000000000000;
  v125[0] = 0x4034000000000000;
  sub_10075FDEC();
  *v26 = UIFontTextStyleBody;
  *(v26 + 2) = 0;
  v46 = v41;
  LODWORD(v105) = enum case for FontUseCase.preferredFont(_:);
  v95 = *(v122 + 104);
  v95(v26);
  v47 = v119;
  (v119)(v26, v44, v23);
  v129 = v120;
  v130 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v128);
  v126 = v23;
  v127 = &protocol witness table for FontSource;
  v48 = sub_10000DB7C(v125);
  v49 = v111;
  v111(v48, v26, v23);
  v50 = UIFontTextStyleBody;
  sub_10076D9BC();
  v46(v26, v23);
  *v26 = v50;
  *(v26 + 2) = 0;
  (v95)(v26, v105, v42);
  (v47)(v26, v118, v23);
  v126 = v120;
  v127 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v125);
  v124[3] = v23;
  v124[4] = &protocol witness table for FontSource;
  v51 = sub_10000DB7C(v124);
  v49(v51, v26, v23);
  sub_10076D9BC();
  v46(v26, v23);
  sub_10075E20C();
  v52 = v99;
  sub_10075E6FC();
  v53 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  v54 = sub_1005B7DD4(v52, 1);
  v55 = v104;
  *&v104[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_inAppPurchaseView] = v54;
  v56 = v100;
  v57 = v109;
  v58 = v121;
  v121(v100, v109, v42);
  v59 = *(v122 + 56);
  v122 += 56;
  v59(v56, 0, 1, v42);
  LODWORD(v120) = enum case for DirectionalTextAlignment.none(_:);
  v60 = v102;
  v118 = *(v101 + 104);
  v118(v102);
  v119 = sub_1007626BC();
  v61 = objc_allocWithZone(v119);
  *&v55[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_titleLabel] = sub_1007626AC();
  v62 = v115;
  v58(v56, v57, v115);
  v63 = v59;
  v59(v56, 0, 1, v62);
  v64 = v120;
  v65 = v118;
  (v118)(v60, v120, v114);
  v66 = objc_allocWithZone(v119);
  *&v55[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_parentTitleLabel] = sub_1007626AC();
  v67 = v115;
  v121(v56, v97, v115);
  v63(v56, 0, 1, v67);
  v68 = v64;
  v69 = v114;
  v70 = v119;
  v65(v60, v68);
  v71 = objc_allocWithZone(v70);
  *&v55[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_subtitleLabel] = sub_1007626AC();
  if (qword_100940E18 != -1)
  {
    swift_once();
  }

  v72 = v115;
  v73 = sub_10000A61C(v115, qword_1009A1840);
  v121(v56, v73, v72);
  v63(v56, 0, 1, v72);
  (v65)(v60, v120, v69);
  v74 = objc_allocWithZone(v70);
  *&v55[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_descriptionLabel] = sub_1007626AC();
  v75 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v55[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_offerButton] = sub_1001E89B8(0);
  *&v55[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_ageRatingBadge] = [objc_allocWithZone(type metadata accessor for AgeRatingBadgeView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v123.receiver = v55;
  v123.super_class = ObjectType;
  v76 = objc_msgSendSuper2(&v123, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v80 = v76;
  [v80 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v80 setScrollEnabled:1];
  [v80 setTranslatesAutoresizingMaskIntoConstraints:0];
  v81 = OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_titleLabel;
  [*&v80[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_titleLabel] setTextAlignment:1];
  v82 = OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_parentTitleLabel;
  [*&v80[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_parentTitleLabel] setTextAlignment:1];
  v83 = OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_subtitleLabel;
  [*&v80[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_subtitleLabel] setTextAlignment:1];
  v84 = OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_descriptionLabel;
  [*&v80[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_descriptionLabel] setTextAlignment:1];
  v85 = *&v80[v81];
  sub_1000325F0();
  v86 = v85;
  v87 = sub_100770CFC();
  [v86 setTextColor:v87];

  v88 = *&v80[v82];
  v89 = sub_100770D1C();
  [v88 setTextColor:v89];

  v90 = *&v80[v83];
  v91 = sub_100770D0C();
  [v90 setTextColor:v91];

  v92 = *&v80[v84];
  v93 = sub_100770CFC();
  [v92 setTextColor:v93];

  [v80 addSubview:*&v80[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_inAppPurchaseView]];
  [v80 addSubview:*&v80[v81]];
  [v80 addSubview:*&v80[v82]];
  [v80 addSubview:*&v80[v83]];
  [v80 addSubview:*&v80[v84]];
  [v80 addSubview:*&v80[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_offerButton]];
  [v80 addSubview:*&v80[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_ageRatingBadge]];

  return v80;
}

double sub_1000E18FC()
{
  v1 = sub_10075E21C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[1] = v4;
  v5 = sub_10075E23C();
  v6 = *(v5 - 8);
  v29 = v5;
  v30 = v6;
  v7 = __chkstk_darwin(v5);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_metrics, v1, v7);
  v10 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_inAppPurchaseView);
  v50 = type metadata accessor for InAppPurchaseView();
  v51 = &protocol witness table for UIView;
  v49 = v10;
  v11 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_titleLabel);
  v47 = sub_1007626BC();
  v48 = &protocol witness table for UILabel;
  v46 = v11;
  v12 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_parentTitleLabel);
  v44 = v47;
  v45 = &protocol witness table for UILabel;
  v42 = &protocol witness table for UILabel;
  v43 = v12;
  v13 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_subtitleLabel);
  v41 = v47;
  v39 = &protocol witness table for UILabel;
  v40 = v13;
  v14 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_descriptionLabel);
  v38 = v47;
  v37 = v14;
  v15 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_ageRatingBadge);
  v35 = type metadata accessor for AgeRatingBadgeView();
  v36 = &protocol witness table for UIView;
  v34 = v15;
  v16 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_offerButton);
  v32 = type metadata accessor for OfferButton();
  v33 = &protocol witness table for UIView;
  v31 = v16;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v23 = v16;
  sub_10075E22C();
  sub_1000E21CC();
  v24 = v29;
  sub_10076D2AC();
  v26 = v25;
  (*(v30 + 8))(v9, v24);
  return v26;
}

uint64_t sub_1000E1C18()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v32 = ObjectType;
  v3 = sub_10076D1FC();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v33 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10075E21C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v8;
  v9 = sub_10075E23C();
  v34 = *(v9 - 8);
  v35 = v9;
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v31 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59.receiver = v1;
  v59.super_class = ObjectType;
  objc_msgSendSuper2(&v59, "layoutSubviews", v10);
  (*(v6 + 16))(v8, &v1[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_metrics], v5);
  v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_inAppPurchaseView];
  v57 = type metadata accessor for InAppPurchaseView();
  v58 = &protocol witness table for UIView;
  v56 = v12;
  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_titleLabel];
  v54 = sub_1007626BC();
  v55 = &protocol witness table for UILabel;
  v53 = v13;
  v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_parentTitleLabel];
  v51 = v54;
  v52 = &protocol witness table for UILabel;
  v49 = &protocol witness table for UILabel;
  v50 = v14;
  v15 = *&v1[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_subtitleLabel];
  v48 = v54;
  v46 = &protocol witness table for UILabel;
  v47 = v15;
  v16 = *&v1[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_descriptionLabel];
  v45 = v54;
  v44 = v16;
  v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_ageRatingBadge];
  v42 = type metadata accessor for AgeRatingBadgeView();
  v43 = &protocol witness table for UIView;
  v41 = v17;
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_offerButton];
  v39 = type metadata accessor for OfferButton();
  v40 = &protocol witness table for UIView;
  v38 = v18;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v24 = v17;
  v25 = v18;
  v26 = v31;
  sub_10075E22C();
  sub_10076422C();
  v27 = v33;
  sub_10075E1FC();
  [v1 frame];
  Width = CGRectGetWidth(v60);
  sub_10076D1DC();
  [v1 setContentSize:Width];
  (*(v36 + 8))(v27, v37);
  return (*(v34 + 8))(v26, v35);
}

uint64_t type metadata accessor for InstallPagePreInstallFreeOfferView()
{
  result = qword_100948090;
  if (!qword_100948090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E2124()
{
  result = sub_10075E21C();
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

unint64_t sub_1000E21CC()
{
  result = qword_1009480A8;
  if (!qword_1009480A8)
  {
    sub_10075E23C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009480A8);
  }

  return result;
}

void sub_1000E2224()
{
  v0 = sub_10000A5D4(&unk_100945BD0);
  __chkstk_darwin(v0 - 8);
  v39 = v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v41 = v33 - v3;
  __chkstk_darwin(v4);
  v40 = v33 - v5;
  __chkstk_darwin(v6);
  v38 = v33 - v7;
  v8 = sub_10076D1AC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_metrics;
  v67[13] = &type metadata for Double;
  v67[14] = &protocol witness table for Double;
  v67[9] = &protocol witness table for Double;
  v67[10] = 0x4024000000000000;
  v67[8] = &type metadata for Double;
  v67[5] = 0x4000000000000000;
  if (qword_100940E20 != -1)
  {
    swift_once();
  }

  v12 = sub_10076D3DC();
  v46 = sub_10000A61C(v12, qword_1009A1858);
  v34 = *(v12 - 8);
  v13 = v34 + 16;
  v37 = *(v34 + 16);
  v37(v11, v46, v12);
  v49 = enum case for FontSource.useCase(_:);
  v50 = v9[13];
  v50(v11);
  v47 = sub_10076D9AC();
  v67[3] = v47;
  v67[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v67);
  v65 = v8;
  v66 = &protocol witness table for FontSource;
  v14 = sub_10000DB7C(v64);
  v15 = v9[2];
  v15(v14, v11, v8);
  sub_10076D9BC();
  v42 = v9[1];
  v42(v11, v8);
  v64[0] = 0x405C000000000000;
  v61[0] = 0x4044000000000000;
  v16 = sub_10000A5D4(&unk_100943120);
  sub_10075FDEC();
  v44 = v12;
  v33[1] = v13;
  v37(v11, v46, v12);
  v46 = (v9 + 13);
  (v50)(v11, v49, v8);
  v65 = v47;
  v66 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v64);
  v62 = v8;
  v63 = &protocol witness table for FontSource;
  v17 = sub_10000DB7C(v61);
  v43 = v9 + 2;
  v48 = v15;
  v15(v17, v11, v8);
  sub_10076D9BC();
  v45 = v9 + 1;
  v42(v11, v8);
  v61[0] = 0x405C000000000000;
  v58[0] = 0x4044000000000000;
  v36 = v16;
  sub_10075FDEC();
  if (qword_100940E28 != -1)
  {
    swift_once();
  }

  v18 = v44;
  v19 = sub_10000A61C(v44, qword_1009A1870);
  v20 = v18;
  v21 = v37;
  v37(v11, v19, v20);
  (v50)(v11, v49, v8);
  v62 = v47;
  v63 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v61);
  v59 = v8;
  v60 = &protocol witness table for FontSource;
  v22 = sub_10000DB7C(v58);
  v48(v22, v11, v8);
  sub_10076D9BC();
  v42(v11, v8);
  v58[0] = 0x405C000000000000;
  v55[0] = 0x4044000000000000;
  sub_10075FDEC();
  if (qword_100940E10 != -1)
  {
    swift_once();
  }

  v23 = v44;
  v24 = sub_10000A61C(v44, qword_1009A1828);
  v21(v11, v24, v23);
  v25 = v49;
  (v50)(v11, v49, v8);
  v26 = v47;
  v59 = v47;
  v60 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v58);
  v56 = v8;
  v57 = &protocol witness table for FontSource;
  v27 = sub_10000DB7C(v55);
  v48(v27, v11, v8);
  sub_10076D9BC();
  v28 = v42;
  v42(v11, v8);
  v55[0] = 0x4052000000000000;
  v52[0] = 0x4034000000000000;
  sub_10075FDEC();
  *v11 = UIFontTextStyleBody;
  *(v11 + 2) = 0;
  LODWORD(v37) = enum case for FontUseCase.preferredFont(_:);
  v36 = *(v34 + 104);
  v36(v11);
  (v50)(v11, v25, v8);
  v56 = v26;
  v57 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v55);
  v53 = v8;
  v54 = &protocol witness table for FontSource;
  v29 = sub_10000DB7C(v52);
  v48(v29, v11, v8);
  v30 = UIFontTextStyleBody;
  sub_10076D9BC();
  v28(v11, v8);
  *v11 = v30;
  *(v11 + 2) = 0;
  (v36)(v11, v37, v44);
  (v50)(v11, v49, v8);
  v53 = v47;
  v54 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v52);
  v51[3] = v8;
  v51[4] = &protocol witness table for FontSource;
  v31 = sub_10000DB7C(v51);
  v48(v31, v11, v8);
  v32 = v30;
  sub_10076D9BC();
  v28(v11, v8);
  sub_10075E20C();
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1000E2ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D6>, double a8@<D7>)
{
  v36 = a5;
  v37 = a4;
  v42 = a3;
  v43 = a6;
  v44 = a7;
  v45 = a8;
  v40 = a1;
  v9 = sub_10076B5BC();
  v46 = *(v9 - 8);
  __chkstk_darwin(v9);
  v39 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076C36C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v35 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  v17 = sub_10000A5D4(&qword_100942C40);
  __chkstk_darwin(v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v34 - v21;
  sub_100016E2C(a2, &v34 - v21, &qword_1009499A0);
  sub_100016E2C(v42, &v22[*(v17 + 48)], &qword_1009499A0);
  swift_getKeyPath();
  sub_10000A5D4(&unk_100946720);
  sub_10076F49C();

  v23 = *(v12 + 104);
  v24 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v48)
  {
    v24 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v25 = *v24;
  v41 = v16;
  v42 = v11;
  v26 = v11;
  v27 = v39;
  v23(v16, v25, v26);
  swift_getKeyPath();
  sub_10076F49C();

  v28 = *(v46 + 88);
  v38 = v9;
  v29 = v28(v27, v9);
  if (v29 == enum case for Shelf.ContentType.accessibilityFeatures(_:) || v29 == enum case for Shelf.ContentType.accessibilityParagraph(_:))
  {
    v33 = v41;
    v32 = v42;
    (*(v12 + 16))(v35, v41, v42);
    sub_1000E345C();
    sub_10076C33C();
    (*(v12 + 8))(v33, v32);
    return sub_10000CFBC(v22, &qword_100942C40);
  }

  else
  {
    v47 = v36;
    sub_100016E2C(v22, v19, &qword_100942C40);
    v30 = *(v17 + 48);
    sub_100061E6C();
    sub_1007620BC();
    (*(v12 + 8))(v41, v42);
    sub_10000CFBC(v22, &qword_100942C40);
    sub_10000CFBC(&v19[v30], &qword_1009499A0);
    sub_10000CFBC(v19, &qword_1009499A0);
    return (*(v46 + 8))(v27, v38);
  }
}

uint64_t sub_1000E2FDC()
{
  sub_1000E3400();

  return sub_1007620BC();
}

uint64_t sub_1000E30C0()
{
  sub_1000E3400();

  return sub_1007620AC();
}

uint64_t sub_1000E31A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000E3D94();

  return PageGridCaching<>.invalidateCache()(a1, v4, a2);
}

uint64_t sub_1000E3200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D6>, double a7@<D7>)
{
  v20[4] = a4;
  *&v20[2] = a6;
  *&v20[3] = a7;
  v20[0] = a5;
  v20[1] = a1;
  v10 = sub_10000A5D4(&qword_100942C40);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v20 - v15;
  v17 = *v7;
  sub_100016E2C(a2, v20 - v15, &qword_1009499A0);
  sub_100016E2C(a3, &v16[*(v11 + 56)], &qword_1009499A0);
  v20[5] = v17;
  sub_100016E2C(v16, v13, &qword_100942C40);
  v18 = *(v11 + 56);
  sub_100061E6C();

  sub_1007620AC();
  sub_10000CFBC(v16, &qword_100942C40);

  sub_10000CFBC(&v13[v18], &qword_1009499A0);
  return sub_10000CFBC(v13, &qword_1009499A0);
}

unint64_t sub_1000E3400()
{
  result = qword_1009480B0;
  if (!qword_1009480B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009480B0);
  }

  return result;
}

uint64_t sub_1000E345C()
{
  v0 = sub_10000A5D4(&qword_100942900);
  __chkstk_darwin(v0 - 8);
  v34 = &v31 - v1;
  v39 = sub_10076C2DC();
  v2 = *(v39 - 8);
  __chkstk_darwin(v39);
  v4 = (&v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10000A5D4(&qword_100942908);
  __chkstk_darwin(v5 - 8);
  v43 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  sub_10000A5D4(&qword_100942910);
  v16 = *(sub_10076C20C() - 8);
  v40 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v32 = v18;
  *(v18 + 16) = xmmword_1007844F0;
  v19 = v18 + v17;
  v45 = 0x3FF0000000000000;
  sub_10001E290();
  sub_10076C29C();
  v44 = 0x4030000000000000;
  v45 = 0x4020000000000000;
  sub_10076C27C();
  v45 = 0x4034000000000000;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  v35 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v42 = *(v2 + 104);
  v38 = v2 + 104;
  v42(v4);
  LOBYTE(v45) = 0;
  sub_10076C29C();
  v45 = 0;
  sub_10076C29C();
  v37 = v19;
  v41 = v15;
  sub_10076C1CC();
  v45 = 0x3FF0000000000000;
  sub_10076C29C();
  v44 = 0x4034000000000000;
  v45 = 0x4024000000000000;
  sub_10076C27C();
  v45 = 0x4034000000000000;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = _Q0;
  (v42)(v4, v35, v39);
  LOBYTE(v45) = 0;
  sub_10076C29C();
  v45 = 0;
  sub_10076C29C();
  v26 = v40;
  v36 = v12;
  sub_10076C1CC();
  v31 = 2 * v26;
  v45 = 0x3FF0000000000000;
  sub_10076C29C();
  v45 = 0x4034000000000000;
  sub_10076C29C();
  v45 = 0x4034000000000000;
  sub_10076C29C();
  *v4 = vdupq_n_s64(0x4041000000000000uLL);
  (v42)(v4, v35, v39);
  LOBYTE(v45) = 0;
  sub_10076C29C();
  v45 = 0;
  sub_10076C29C();
  v33 = v9;
  sub_10076C1CC();
  v27 = v40;
  v45 = 0x3FF0000000000000;
  sub_10076C29C();
  v45 = 0x4034000000000000;
  sub_10076C29C();
  v45 = 0x4034000000000000;
  sub_10076C29C();
  v35 = enum case for PageGrid.HorizontalMargins.readableContentGuide(_:);
  v28 = v42;
  v42(v4);
  LOBYTE(v45) = 0;
  sub_10076C29C();
  v45 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v31 = 4 * v27;
  v45 = 0x3FF0000000000000;
  sub_10076C29C();
  v45 = 0x4038000000000000;
  sub_10076C29C();
  v45 = 0x4034000000000000;
  sub_10076C29C();
  v29 = v39;
  v28(v4, v35, v39);
  LOBYTE(v45) = 0;
  sub_10076C29C();
  v45 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v45 = 0x3FF0000000000000;
  sub_10076C29C();
  v45 = 0x4038000000000000;
  sub_10076C29C();
  v45 = 0x4034000000000000;
  sub_10076C29C();
  (v42)(v4, v35, v29);
  LOBYTE(v45) = 0;
  sub_10076C29C();
  v45 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  return v32;
}

unint64_t sub_1000E3D94()
{
  result = qword_1009480B8;
  if (!qword_1009480B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009480B8);
  }

  return result;
}

id sub_1000E3DF0()
{
  result = [objc_allocWithZone(UISegmentedControl) init];
  qword_1009480C0 = result;
  return result;
}

double sub_1000E3E30(uint64_t a1, double a2, double a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = a1 + 40;
    do
    {
      v7 = qword_10093F690;

      if (v7 != -1)
      {
        swift_once();
      }

      v8 = qword_1009480C0;
      v9 = sub_10076FF6C();
      [v8 addSegmentWithTitle:v9];

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  if (qword_10093F690 != -1)
  {
    swift_once();
  }

  v10 = qword_1009480C0;
  [qword_1009480C0 sizeThatFits:{a2, a3}];
  v12 = v11;
  [v10 removeAllSegments];
  return v12;
}

uint64_t sub_1000E3FA4()
{
  v0 = sub_10076D3DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076715C();
  sub_10000DB18(v4, qword_10099CE50);
  sub_10000A61C(v4, qword_10099CE50);
  if (qword_100940D40 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_1009A15B8);
  (*(v1 + 16))(v3, v5, v0);
  sub_10076714C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1000E4124(uint64_t a1, uint64_t *a2, NSString **a3)
{
  v5 = sub_10076D3DC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10076715C();
  sub_10000DB18(v9, a2);
  sub_10000A61C(v9, a2);
  v10 = *a3;
  *v8 = UIFontTextStyleCaption1;
  v8[1] = v10;
  (*(v6 + 104))(v8, enum case for FontUseCase.preferredFontDerivative(_:), v5);
  v11 = UIFontTextStyleCaption1;
  sub_10076714C();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000E4260()
{
  v0 = sub_10076D3DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076715C();
  sub_10000DB18(v4, qword_10099CE98);
  sub_10000A61C(v4, qword_10099CE98);
  *v3 = 0xD000000000000018;
  *(v3 + 1) = 0x80000001007D3360;
  *(v3 + 2) = sub_1000E43C0;
  *(v3 + 3) = 0;
  *(v3 + 4) = UIFontWeightRegular;
  (*(v1 + 104))(v3, enum case for FontUseCase.systemFont(_:), v0);
  sub_10076714C();
  return (*(v1 + 8))(v3, v0);
}

void sub_1000E43C4()
{
  v0 = UIContentSizeCategoryExtraSmall;
  v1 = UIContentSizeCategoryLarge;
  if ((sub_10077088C() & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (sub_10077088C())
  {
    v2 = sub_10077086C();

    if (v2)
    {
      return;
    }
  }

  else
  {
  }

  v3 = v1;
  v4 = UIContentSizeCategoryAccessibilityMedium;
  if ((sub_10077088C() & 1) == 0)
  {
LABEL_12:
    __break(1u);
    return;
  }

  if (sub_10077088C())
  {
    sub_10077086C();
  }
}

id sub_1000E44E8()
{
  result = [objc_opt_self() colorEffectSaturate:1.5];
  qword_1009480D0 = result;
  return result;
}

void sub_1000E4568(double a1, uint64_t a2, SEL *a3, uint64_t a4, void *a5)
{
  sub_100016F40(0, &qword_100952240);
  v9 = [objc_opt_self() *a3];
  v10 = [swift_getObjCClassFromMetadata() effectCompositingColor:v9 withMode:a4 alpha:a1];

  if (v10)
  {
    *a5 = v10;
  }

  else
  {
    __break(1u);
  }
}

id sub_1000E464C(double a1, uint64_t a2, void *a3)
{
  result = [objc_opt_self() _effectWithBlurRadius:a1 scale:0.125];
  if (result)
  {
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000E46CC()
{
  sub_10000A5D4(&unk_100942870);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100784DC0;
  if (qword_10093F6C0 != -1)
  {
    swift_once();
  }

  v1 = qword_1009480C8;
  *(v0 + 32) = qword_1009480C8;
  v2 = qword_10093F6C8;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1009480D0;
  *(v0 + 40) = qword_1009480D0;
  v5 = qword_10093F6D0;
  v6 = v4;
  if (v5 == -1)
  {
    v7 = v6;
  }

  else
  {
    swift_once();
    v7 = qword_1009480D0;
  }

  v8 = qword_1009480D8;
  *(v0 + 48) = qword_1009480D8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100784DC0;
  v10 = qword_1009480C8;
  *(v9 + 32) = qword_1009480C8;
  *(v9 + 40) = v7;
  v11 = qword_10093F6D8;
  v12 = v8;
  v13 = v10;
  v14 = v7;
  if (v11 != -1)
  {
    swift_once();
  }

  v15 = qword_1009480E0;
  *(v9 + 48) = qword_1009480E0;
  *&xmmword_10099CEB0 = v0;
  *(&xmmword_10099CEB0 + 1) = v9;

  return v15;
}

uint64_t sub_1000E4884()
{
  sub_10000A5D4(&unk_100942870);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100784DC0;
  if (qword_10093F6C0 != -1)
  {
    swift_once();
  }

  v1 = qword_1009480C8;
  *(v0 + 32) = qword_1009480C8;
  v2 = qword_10093F6C8;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1009480D0;
  *(v0 + 40) = qword_1009480D0;
  v5 = qword_10093F6E0;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1009480E8;
  *(v0 + 48) = qword_1009480E8;
  v8 = qword_10093F6F8;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  qword_10099CEC0 = v0;
  *algn_10099CEC8 = *(&xmmword_10099CEB0 + 1);
}

id sub_1000E49E4()
{
  sub_10000A5D4(&unk_100942870);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100785D70;
  if (qword_10093F6C0 != -1)
  {
    swift_once();
  }

  v1 = qword_1009480C8;
  *(v0 + 32) = qword_1009480C8;
  v2 = qword_10093F6D0;
  v3 = v1;
  if (v2 == -1)
  {
    v4 = v3;
  }

  else
  {
    swift_once();
    v4 = qword_1009480C8;
  }

  v5 = qword_1009480D8;
  *(v0 + 40) = qword_1009480D8;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100785D70;
  *(v6 + 32) = v4;
  v7 = qword_10093F6D8;
  v8 = v5;
  v9 = v4;
  if (v7 != -1)
  {
    swift_once();
  }

  v10 = qword_1009480E0;
  *(v6 + 40) = qword_1009480E0;
  qword_10099CED0 = v0;
  *algn_10099CED8 = v6;

  return v10;
}

char *sub_1000E4B54(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_effectsView;
  *&v1[v4] = [objc_allocWithZone(UIVisualEffectView) init];
  v5 = OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientMaskView;
  *&v1[v5] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientType] = kCAGradientLayerAxial;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientStartY] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientEndY] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_rotationAngle] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_blurUserInterfaceStyle] = 0;
  v6 = &v1[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_style];
  v7 = qword_10093F6F8;
  v8 = kCAGradientLayerAxial;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = *(&xmmword_10099CEB0 + 1);
  *v6 = xmmword_10099CEB0;
  v6[1] = v9;
  v1[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_includeTopGradientFade] = 1;
  v42.receiver = v1;
  v42.super_class = ObjectType;

  v10 = objc_msgSendSuper2(&v42, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v14 = v10;
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v14 setClipsToBounds:0];
  v15 = [v14 layer];
  [v15 setAllowsGroupBlending:1];

  [v14 setUserInteractionEnabled:0];
  v16 = OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_effectsView;
  [*&v14[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_effectsView] setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [*&v14[v16] setClipsToBounds:0];
  v17 = [*&v14[v16] layer];
  [v17 setAllowsGroupBlending:0];

  [*&v14[v16] setUserInteractionEnabled:0];
  [v14 addSubview:*&v14[v16]];
  if (v14[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_includeTopGradientFade] == 1)
  {
    [v14 insertSubview:*&v14[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientMaskView] aboveSubview:*&v14[v16]];
  }

  else
  {
    [*&v14[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientMaskView] removeFromSuperview];
  }

  v18 = OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientMaskView;
  v19 = *&v14[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientMaskView];
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = v19;
    sub_1004BBAA4(0, v20, 0);
    v22 = _swiftEmptyArrayStorage;
    v23 = _swiftEmptyArrayStorage[2];
    v24 = (a1 + 40);
    v25 = v20;
    do
    {
      v26 = *v24;
      v41 = v22;
      v27 = v22[3];
      if (v23 >= v27 >> 1)
      {
        sub_1004BBAA4((v27 > 1), v23 + 1, 1);
        v22 = v41;
      }

      v22[2] = v23 + 1;
      v22[v23 + 4] = v26;
      v24 += 2;
      ++v23;
      --v25;
    }

    while (v25);
  }

  else
  {
    v28 = v19;
    v22 = _swiftEmptyArrayStorage;
  }

  sub_1001C0414(v22);

  v29 = *&v14[v18];
  if (v20)
  {
    v40 = *&v14[v18];
    v30 = v29;
    sub_1007714EC();
    v31 = objc_opt_self();
    v32 = 32;
    do
    {
      v33 = *(a1 + v32);
      v34 = [v31 blackColor];
      v35 = [v34 colorWithAlphaComponent:v33];

      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
      v32 += 16;
      --v20;
    }

    while (v20);

    v29 = v40;
  }

  else
  {
    v36 = v29;
  }

  *&v29[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = _swiftEmptyArrayStorage;

  sub_1001C05B8();

  v37 = [*&v14[v18] layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setMasksToBounds:0];

  v38 = [*&v14[v18] layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setCompositingFilter:kCAFilterDestOut];

  return v14;
}

void sub_1000E50CC()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientMaskView);
  v3 = [v2 layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClassUnconditional();
  v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientType);
  [v4 setType:v5];

  v6 = sub_10076FF9C();
  v8 = v7;
  if (v6 == sub_10076FF9C() && v8 == v9)
  {

    v12 = &off_100882C88;
    v13 = 5;
  }

  else
  {
    v11 = sub_10077167C();

    if (v11)
    {
      v12 = &off_100882C88;
    }

    else
    {
      v12 = &off_100882C28;
    }

    v13 = v12[2];
    if (!v13)
    {

      sub_1001C0414(_swiftEmptyArrayStorage);

      goto LABEL_18;
    }
  }

  v25 = v1;

  sub_1004BBAA4(0, v13, 0);
  v14 = _swiftEmptyArrayStorage;
  v15 = _swiftEmptyArrayStorage[2];
  v16 = 5;
  v17 = v13;
  do
  {
    v18 = v12[v16];
    v26 = v14;
    v19 = v14[3];
    if (v15 >= v19 >> 1)
    {
      sub_1004BBAA4((v19 > 1), v15 + 1, 1);
      v14 = v26;
    }

    v14[2] = v15 + 1;
    v14[v15 + 4] = v18;
    v16 += 2;
    ++v15;
    --v17;
  }

  while (v17);
  sub_1001C0414(v14);
  sub_1007714EC();
  v20 = objc_opt_self();
  v21 = 4;
  do
  {
    v22 = *&v12[v21];
    v23 = [v20 blackColor];
    v24 = [v23 colorWithAlphaComponent:v22];

    sub_1007714CC();
    sub_1007714FC();
    sub_10077150C();
    sub_1007714DC();
    v21 += 2;
    --v13;
  }

  while (v13);

LABEL_18:
  *&v2[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = _swiftEmptyArrayStorage;

  sub_1001C05B8();

  sub_1000E53E0();
}

void sub_1000E53E0()
{
  v1 = v0;
  v2 = sub_10076FF9C();
  v4 = v3;
  if (v2 == sub_10076FF9C() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_10077167C();

    if ((v7 & 1) == 0)
    {
      v8 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_rotationAngle];
      v9 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientStartY];
      v10 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientEndY];
      v11 = 0.5;
      if (v8 == 0.0)
      {
        v12 = 0.5;
      }

      else
      {
        v21 = (v9 + v10) * 0.5;
        CGAffineTransformMakeRotation(&v28, *&v0[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_rotationAngle]);
        v30.x = 0.0;
        v30.y = v9 - v21;
        v22 = CGPointApplyAffineTransform(v30, &v28);
        v11 = v22.x + 0.5;
        v9 = v21 + v22.y;
        CGAffineTransformMakeRotation(&v28, v8);
        v31.x = 0.0;
        v31.y = v10 - v21;
        v23 = CGPointApplyAffineTransform(v31, &v28);
        v12 = v23.x + 0.5;
        v10 = v21 + v23.y;
      }

      v24 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientMaskView];
      v25 = [v24 layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v11, v9}];

      v26 = [v24 layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v12, v10}];

      return;
    }
  }

  v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientMaskView];
  v14 = [v0 traitCollection];
  v15 = sub_10077070C();

  if (v15)
  {
    v16 = 0.7;
  }

  else
  {
    v16 = 0.3;
  }

  v17 = [v13 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v16, 1.0}];

  v18 = [v1 traitCollection];
  v19 = sub_10077070C();

  if (v19)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = 1.0;
  }

  v27 = [v13 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v20, 0.0}];
}

void sub_1000E5778(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_style + 8);
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_style) = a1;
  *v3 = a2;

  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_effectsView);

  sub_100016F40(0, &qword_1009492C0);
  isa = sub_1007701AC().super.isa;

  [v4 setBackgroundEffects:isa];
}

id sub_1000E5858()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_effectsView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientMaskView];
  result = [v2 superview];
  if (result)
  {

    [v0 bounds];
    return [v2 setFrame:?];
  }

  return result;
}

id sub_1000E59A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_10076C7EC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v20 - v12;

  sub_1000E5778(a2, a3);
  sub_10076C80C();
  (*(v8 + 104))(v10, enum case for TodayCard.Style.white(_:), v7);
  sub_10005AE00();
  sub_10077018C();
  sub_10077018C();
  if (v20[2] == v20[0] && v20[3] == v20[1])
  {
    v14 = 1;
  }

  else if (sub_10077167C())
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v15 = *(v8 + 8);
  v15(v10, v7);
  v15(v13, v7);

  v16 = OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_blurUserInterfaceStyle;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_blurUserInterfaceStyle] = v14;
  v17 = *&v4[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_effectsView];

  sub_100016F40(0, &qword_1009492C0);
  isa = sub_1007701AC().super.isa;

  [v17 setBackgroundEffects:isa];

  [v17 setOverrideUserInterfaceStyle:*&v4[v16]];
  return [v4 setNeedsLayout];
}

id sub_1000E5C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1000E5778(a2, a3);
  v7 = OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_blurUserInterfaceStyle;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_blurUserInterfaceStyle] = a1;
  v8 = *&v3[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_effectsView];

  sub_100016F40(0, &qword_1009492C0);
  isa = sub_1007701AC().super.isa;

  [v8 setBackgroundEffects:isa];

  [v8 setOverrideUserInterfaceStyle:*&v3[v7]];

  return [v3 setNeedsLayout];
}

char *sub_1000E5D30(int64_t *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientMaskView);
  v3 = a1[2];
  if (v3)
  {
    sub_1004BBAA4(0, v3, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = (a1 + 4);
    v7 = _swiftEmptyArrayStorage[2];
    v8 = a1 + 5;
    v9 = v3;
    do
    {
      v10 = *v8;
      v17 = v5;
      v11 = v5[3];
      if (v7 >= v11 >> 1)
      {
        sub_1004BBAA4((v11 > 1), v7 + 1, 1);
        v5 = v17;
      }

      v5[2] = v7 + 1;
      v5[v7 + 4] = v10;
      v8 += 2;
      ++v7;
      --v9;
    }

    while (v9);
    sub_1001C0414(v5);
    sub_1007714EC();
    v12 = objc_opt_self();
    do
    {
      v13 = *v6;
      v6 += 2;
      v14 = [v12 blackColor];
      v15 = [v14 colorWithAlphaComponent:v13];

      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
      --v3;
    }

    while (v3);
  }

  else
  {
    sub_1001C0414(_swiftEmptyArrayStorage);
  }

  *(v2 + OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors) = _swiftEmptyArrayStorage;

  return sub_1001C05B8();
}

id sub_1000E5FDC(uint64_t a1)
{
  sub_100016F40(0, &qword_100952240);
  result = [swift_getObjCClassFromMetadata() effectCompositingColor:a1 withMode:0 alpha:0.4];
  if (result)
  {
    v3 = result;
    sub_10000A5D4(&unk_100942870);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100784DC0;
    if (qword_10093F6E8 != -1)
    {
      swift_once();
    }

    v5 = qword_1009480F0;
    *(v4 + 32) = qword_1009480F0;
    *(v4 + 40) = v3;
    v6 = qword_10093F6F0;
    v7 = v5;
    v8 = v3;
    if (v6 != -1)
    {
      swift_once();
    }

    v9 = qword_1009480F8;
    *(v4 + 48) = qword_1009480F8;
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100784DC0;
    *(v10 + 32) = v7;
    *(v10 + 40) = v8;
    *(v10 + 48) = v9;
    v11 = v9;
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000E6158()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_effectsView;
  *(v0 + v1) = [objc_allocWithZone(UIVisualEffectView) init];
  v2 = OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientMaskView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientType) = kCAGradientLayerAxial;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientStartY) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientEndY) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_rotationAngle) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_blurUserInterfaceStyle) = 0;
  v3 = OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_style;
  v4 = qword_10093F6F8;
  v5 = kCAGradientLayerAxial;
  if (v4 != -1)
  {
    swift_once();
  }

  *(v0 + v3) = xmmword_10099CEB0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_includeTopGradientFade) = 1;
  sub_10077156C();
  __break(1u);
}

double sub_1000E62EC(void *a1)
{
  v2 = sub_10076443C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = sub_10075E8CC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10093F668 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A61C(v9, qword_10099CD58);
  (*(v10 + 16))(v12, v13, v9);
  v14 = [a1 traitCollection];
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v15 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v15 = qword_100944CA0;
  }

  v16 = sub_10000A61C(v2, v15);
  (*(v3 + 16))(v5, v16, v2);

  (*(v3 + 32))(v8, v5, v2);
  sub_1007643EC();
  sub_10076441C();
  sub_10075E88C();
  sub_10075E8EC();
  sub_1000E6958(&qword_1009476F8, &type metadata accessor for InAppPurchaseLockupViewLayout);
  sub_10076DBDC();
  v18 = v17;
  (*(v3 + 8))(v8, v2);
  (*(v10 + 8))(v12, v9);
  return v18;
}

uint64_t sub_1000E666C()
{
  v22 = sub_10076B6EC();
  v0 = *(v22 - 8);
  __chkstk_darwin(v22);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v21 - v4;
  v6 = sub_10076C38C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076460C();
  sub_10076C24C();
  v11 = v10;
  v12 = *(v7 + 8);
  v12(v9, v6);
  v13 = sub_10076461C();
  v14 = type metadata accessor for SnapshotPageTraitEnvironment();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v16 = v11;
  *(v16 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v15[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v13;
  v23.receiver = v15;
  v23.super_class = v14;
  v17 = objc_msgSendSuper2(&v23, "init");
  sub_10076460C();
  sub_10076C2FC();
  v12(v9, v6);
  sub_1000E62EC(v17);

  sub_10076465C();
  sub_10076B6BC();
  sub_1000E6958(&unk_100946780, &type metadata accessor for Shelf.PresentationHints);
  v18 = v22;
  sub_10077124C();
  v19 = *(v0 + 8);
  v19(v2, v18);
  return (v19)(v5, v18);
}

uint64_t sub_1000E6958(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000E69A0()
{
  v0 = sub_10076D39C();
  sub_10000DB18(v0, qword_10099CEE0);
  sub_10000A61C(v0, qword_10099CEE0);
  return sub_10076D3AC();
}

uint64_t sub_1000E69F4()
{
  sub_100016F40(0, &qword_100942F10);
  result = sub_100770D9C();
  qword_10099CEF8 = result;
  return result;
}

uint64_t sub_1000E6A38()
{
  sub_100016F40(0, &qword_100942F10);
  result = sub_100770D5C();
  qword_10099CF00 = result;
  return result;
}

uint64_t sub_1000E6B00(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = sub_10076D3DC();
  sub_10000DB18(v7, a2);
  v8 = sub_10000A61C(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = sub_10000A61C(v7, a4);
  v10 = *(*(v7 - 8) + 16);

  return v10(v8, v9, v7);
}

uint64_t sub_1000E6BC8()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_10099CF50);
  sub_10000A61C(v4, qword_10099CF50);
  if (qword_10093F728 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_10099CF08);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1000E6D9C()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_10099CF68);
  sub_10000A61C(v4, qword_10099CF68);
  if (qword_10093F730 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_10099CF20);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1000E6F70()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_10099CF80);
  sub_10000A61C(v4, qword_10099CF80);
  if (qword_10093F738 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_10099CF38);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

id sub_1000E7144(uint64_t a1, uint64_t a2)
{
  v4 = *&v2[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_editorialTypeLabel];
  if (a2)
  {
    v5 = sub_10076FF6C();
  }

  else
  {
    v5 = 0;
  }

  [v4 setText:v5];

  [v4 setHidden:a2 == 0];
  v6 = *&v2[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_subtitleLabel];
  if ([v4 isHidden])
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v6 setNumberOfLines:v7];

  return [v2 setNeedsLayout];
}

uint64_t sub_1000E7228(void *a1)
{
  if (a1)
  {
    v2 = [a1 superview];
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 contentView];
  v4 = v3;
  if (v2)
  {
    if (v3)
    {
      sub_100016F40(0, &qword_1009441F0);
      v5 = sub_100770EEC();
    }

    else
    {
      v5 = 0;
    }

    v4 = v2;
  }

  else
  {
    if (!v3)
    {
      v5 = 1;
      return v5 & 1;
    }

    v5 = 0;
  }

  return v5 & 1;
}

void (*sub_1000E72EC(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1000E7340;
}

void sub_1000E7340(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v9 = *a1;
    sub_1000E9610();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = [v2 contentView];
      [v5 addSubview:v4];
    }

    [v2 setNeedsLayout];
  }

  else
  {
    v9 = *a1;
    sub_1000E9610();
    swift_unknownObjectWeakAssign();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = [v2 contentView];
      [v8 addSubview:v7];
    }

    [v2 setNeedsLayout];
  }
}

id sub_1000E746C()
{
  v1 = v0;
  v2 = sub_10075FEEC();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v1[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_iconArtworkView];
  if (v7)
  {
    sub_10076394C();
    (*(v3 + 104))(v6, enum case for CornerStyle.arc(_:), v2);
    v8 = v7;
    v9 = sub_10076393C();
    v10 = OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_iconBackingView;
    v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_iconBackingView];
    if (v11)
    {
      [v11 removeFromSuperview];
      v12 = *&v1[v10];
    }

    else
    {
      v12 = 0;
    }

    *&v1[v10] = v9;
    v16 = v9;

    sub_1000E762C();
    v17 = *&v1[v10];
    if (v17)
    {
      v18 = v17;
      [v18 addSubview:v8];
    }
  }

  else
  {
    v13 = OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_iconBackingView;
    v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_iconBackingView];
    if (v14)
    {
      [v14 removeFromSuperview];
      v15 = *&v1[v13];
    }

    else
    {
      v15 = 0;
    }

    *&v1[v13] = 0;

    sub_1000E762C();
  }

  return [v1 setNeedsLayout];
}

id sub_1000E762C()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_iconBackingView];
  if (v1)
  {
    v2 = v1;
    [v2 setClipsToBounds:1];
    if (qword_10093F720 != -1)
    {
      swift_once();
    }

    [v2 setBackgroundColor:qword_10099CF00];
    v3 = [v0 contentView];
    [v3 addSubview:v2];

    v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_iconArtworkView];
    if (v4)
    {
      v5 = v4;
      v6 = [v0 contentView];
      [v6 addSubview:v5];
    }
  }

  return [v0 setNeedsLayout];
}

id sub_1000E775C()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_artworkGrid];
  if (v1)
  {
    v1[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_showBorder] = 1;
    v2 = *&v1[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_imageBorderView];
    v3 = v1;
    [v2 setHidden:0];
    v4 = v3;
    [v4 _setCornerRadius:20.0];
    [v4 setNeedsLayout];
    if (qword_10093F718 != -1)
    {
      swift_once();
    }

    [v4 setBackgroundColor:qword_10099CEF8];

    v5 = [v0 contentView];
    [v5 addSubview:v4];
  }

  return [v0 setNeedsLayout];
}

char *sub_1000E788C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v61 = sub_10076771C();
  v10 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v12 - 8);
  v14 = &v56 - v13;
  v15 = sub_10076048C();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_editorialIcon;
  (*(v16 + 104))(v19, enum case for SystemImage.appstore(_:), v15, v17);
  v21 = sub_10076046C();
  (*(v16 + 8))(v19, v15);
  v22 = [objc_allocWithZone(UIImageView) initWithImage:v21];

  *&v5[v20] = v22;
  v5[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_showEditorialIcon] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_editorialArtworkView] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_iconArtworkView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_iconBackingView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_artworkGrid] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView] = 0;
  if (qword_10093F728 != -1)
  {
    swift_once();
  }

  v23 = sub_10076D3DC();
  v24 = sub_10000A61C(v23, qword_10099CF08);
  v25 = *(v23 - 8);
  v58 = *(v25 + 16);
  v59 = v25 + 16;
  v58(v14, v24, v23);
  v57 = *(v25 + 56);
  v57(v14, 0, 1, v23);
  v26 = enum case for DirectionalTextAlignment.none(_:);
  v27 = *(v10 + 104);
  v27(v60, enum case for DirectionalTextAlignment.none(_:), v61);
  v28 = sub_1007626BC();
  v29 = objc_allocWithZone(v28);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_editorialTypeLabel] = sub_1007626AC();
  if (qword_10093F730 != -1)
  {
    swift_once();
  }

  v30 = sub_10000A61C(v23, qword_10099CF20);
  v58(v14, v30, v23);
  v57(v14, 0, 1, v23);
  v27(v60, v26, v61);
  v31 = objc_allocWithZone(v28);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_titleLabel] = sub_1007626AC();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_subtitleLabel] = sub_10076269C();
  v32 = type metadata accessor for EditorialSearchResultCollectionViewCell();
  v62.receiver = v5;
  v62.super_class = v32;
  v33 = objc_msgSendSuper2(&v62, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v37 = v33;
  [v37 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v38 = OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_subtitleLabel;
  v39 = qword_10093F738;
  v40 = *&v37[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_subtitleLabel];
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = sub_10000A61C(v23, qword_10099CF38);
  v58(v14, v41, v23);
  v57(v14, 0, 1, v23);
  sub_1007625DC();

  [*&v37[v38] setLineBreakMode:4];
  v42 = [v37 contentView];
  v43 = OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_editorialTypeLabel;
  [v42 addSubview:*&v37[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_editorialTypeLabel]];

  v44 = [v37 contentView];
  v45 = OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_editorialIcon;
  [v44 addSubview:*&v37[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_editorialIcon]];

  v46 = [v37 contentView];
  [v46 addSubview:*&v37[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_titleLabel]];

  v47 = [v37 contentView];
  [v47 addSubview:*&v37[v38]];

  v48 = *&v37[v43];
  v49 = [v37 tintColor];
  [v48 setTextColor:v49];

  v50 = *&v37[v38];
  sub_100016F40(0, &qword_100942F10);
  v51 = v50;
  v52 = sub_100770D1C();
  [v51 setTextColor:v52];

  v53 = *&v37[v45];
  v54 = [v37 tintColor];

  [v53 setTintColor:v54];
  return v37;
}

void sub_1000E8024()
{
  v1 = v0;
  v174 = sub_10077164C();
  v163 = *(v174 - 8);
  __chkstk_darwin(v174);
  v173 = &v156 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = COERCE_DOUBLE(sub_10076D9AC());
  v167 = *(*&v181 - 8);
  __chkstk_darwin(*&v181);
  v175 = &v156 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&qword_100948208);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v159 = (&v156 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  *&v178 = &v156 - v8;
  __chkstk_darwin(v9);
  v11 = (&v156 - v10);
  __chkstk_darwin(v12);
  v172 = (&v156 - v13);
  __chkstk_darwin(v14);
  v16 = &v156 - v15;
  v17 = type metadata accessor for EditorialSearchResultCollectionViewCell();
  v184.receiver = v0;
  v184.super_class = v17;
  objc_msgSendSuper2(&v184, "layoutSubviews");
  v18 = [v0 contentView];
  sub_100016F40(0, &qword_1009441F0);
  sub_10076422C();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_10000A5D4(&qword_100948210);
  v27 = *(v5 + 72);
  v28 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *&v29 = COERCE_DOUBLE(swift_allocObject());
  v168 = v28;
  v176 = *&v29;
  v30 = v29 + v28;
  v31 = *(v4 + 48);
  v160 = v1;
  v32 = *&v1[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_editorialTypeLabel];
  *(v29 + v28) = v32;
  v33 = qword_10093F740;
  v171 = v32;
  if (v33 != -1)
  {
    swift_once();
  }

  v34 = v181;
  v35 = sub_10000A61C(*&v181, qword_10099CF50);
  v179 = *(v167 + 16);
  (*&v179)(v30 + v31, v35, *&v34);
  v36 = *(v4 + 48);
  v37 = *&v160[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_titleLabel];
  *(v30 + *&v27) = v37;
  v38 = v4;
  v39 = qword_10093F748;
  v40 = v37;
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = v181;
  v42 = sub_10000A61C(*&v181, qword_10099CF68);
  (*&v179)(v30 + *&v27 + v36, v42, *&v41);
  v180 = v27;
  v43 = (v30 + 2 * *&v27);
  v177 = v38;
  v44 = *(v38 + 48);
  v45 = *&v160[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_subtitleLabel];
  *v43 = v45;
  v46 = qword_10093F750;
  v47 = v45;
  if (v46 != -1)
  {
    swift_once();
  }

  v48 = v181;
  v49 = sub_10000A61C(*&v181, qword_10099CF80);
  (*&v179)(&v43[v44], v49, *&v48);
  *&v179 = v167 + 8;
  v50 = _swiftEmptyArrayStorage;
  v51 = 3;
  v170 = v30;
  v52 = v30;
  do
  {
    sub_1000E96E4(v52, v16);
    sub_1000E96E4(v16, v11);
    v54 = *v11;
    v55 = *(v177 + 48);
    v56 = [*v11 isHidden];

    v57 = **&v179;
    (**&v179)(v11 + v55, COERCE_DOUBLE(*&v181));
    if (v56)
    {
      sub_1000E97C4(v16);
      v53 = v180;
    }

    else
    {
      sub_1000E9754(v16, *&v178);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v183[0] = v50;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1004BBBA8(0, v50[2] + 1, 1);
        v50 = v183[0];
      }

      v60 = v50[2];
      v59 = v50[3];
      if (v60 >= v59 >> 1)
      {
        sub_1004BBBA8(v59 > 1, v60 + 1, 1);
        v50 = v183[0];
      }

      v50[2] = v60 + 1;
      v53 = v180;
      sub_1000E9754(*&v178, v168 + v50 + v60 * *&v180);
    }

    v52 += *&v53;
    --v51;
  }

  while (v51);
  swift_setDeallocating();
  v61 = v177;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v62 = v50[2];
  v63 = v160;
  v165 = v24;
  v166 = v26;
  v176 = v20;
  if (v62)
  {
    v170 = *(v61 + 48);
    v64 = sub_100016F40(0, &qword_10094D040);
    v164 = OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_showEditorialIcon;
    v161 = OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_editorialIcon;
    v65 = v168 + v50;
    v168 = (v167 + 32);
    v169 = v64;
    v167 = *&v163 + 8;
    v66 = 0.0;
    v157 = v65;
    v158 = v62;
    v67 = *&v181;
    v68 = v175;
    do
    {
      v69 = v172;
      sub_1000E96E4(v65, v172);
      v70 = *v69;
      (*v168)(v68, v69 + v170, v67);
      v71 = v70;
      [v71 sizeThatFits:{v24, v26}];
      v74 = v73;
      if (v72 >= v24)
      {
        v72 = v24;
      }

      v178 = v72;
      v75 = [v63 traitCollection];
      v76 = v63;
      v77 = v173;
      sub_10076D17C();
      sub_10076D97C();
      v79 = v78;

      v80 = v77;
      v63 = v76;
      (*v167)(v80, v174);
      v186.origin.x = v20;
      v186.origin.y = v22;
      v186.size.width = v24;
      v186.size.height = v26;
      v81 = v66 + CGRectGetMinY(v186);
      [v71 firstBaselineFromTop];
      v83 = v81 + v79 - v82;
      if ((sub_100770EEC() & 1) != 0 && v76[v164] == 1)
      {
        v84 = *&v76[v161];
        [v84 bounds];
        v85 = v24;
        v87 = v86;
        v89 = v88;
        v20 = v176;
        v187.origin.x = v176;
        v187.origin.y = v22;
        v187.size.width = v85;
        v187.size.height = v166;
        MinX = CGRectGetMinX(v187);
        v163 = v74;
        v90 = v74 * 0.5 + v83;
        v91 = v22;
        v92 = v90 - v89 * 0.5;
        sub_100770A4C();
        [v84 setFrame:?];
        v188.origin.y = v92;
        v22 = v91;
        v188.origin.x = MinX;
        v188.size.width = v87;
        v24 = v165;
        v188.size.height = v89;
        v26 = v166;
        CGRectGetMaxX(v188);
      }

      else
      {
        v20 = v176;
        v185.origin.x = v176;
        v185.origin.y = v22;
        v185.size.width = v24;
        v185.size.height = v26;
        CGRectGetMinX(v185);
      }

      sub_100770A4C();
      [v71 setFrame:?];

      v68 = v175;
      v67 = *&v181;
      v57(v175, *&v181);
      v66 = v66 + v79;
      v65 += *&v180;
      --v62;
    }

    while (v62);
    if (v158 > v50[2])
    {
      __break(1u);
      return;
    }

    v93 = v159;
    sub_1000E96E4(v157 + (v158 - 1) * *&v180, v159);

    v94 = *v93;
    v95 = *(v177 + 48);
    [*v93 frame];
    v97 = v96;
    v99 = v98;
    v101 = v100;
    v103 = v102;

    v189.origin.x = v97;
    v189.origin.y = v99;
    v189.size.width = v101;
    v189.size.height = v103;
    v24 = v165;
    v26 = v166;
    MaxY = CGRectGetMaxY(v189);
    v57(v93 + v95, v67);
  }

  else
  {

    MaxY = 0.0;
    v67 = *&v181;
  }

  if (qword_1009411F0 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v67, qword_1009A2350);
  v105 = [v63 traitCollection];
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870);
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_1007841E0;
  *(v106 + 32) = v105;
  v107 = v105;
  v108 = sub_10076DEEC();
  sub_10076D3EC();
  v110 = v109;

  v111 = MaxY + v110;
  v112 = v176;
  v190.origin.x = v176;
  v190.origin.y = v22;
  v190.size.width = v24;
  v190.size.height = v26;
  v181 = CGRectGetMinX(v190);
  v191.origin.x = v112;
  v191.origin.y = v22;
  v191.size.width = v24;
  v191.size.height = v26;
  v113 = CGRectGetMaxY(v191) - (MaxY + v110);
  if (qword_10093F710 != -1)
  {
    swift_once();
  }

  v114 = sub_10076D39C();
  sub_10000A61C(v114, qword_10099CEE0);
  sub_10076D35C();
  v116 = v115;
  v192.origin.x = v112;
  v192.origin.y = v22;
  v192.size.width = v24;
  v192.size.height = v26;
  Width = CGRectGetWidth(v192);
  sub_10076D36C();
  if (Width >= v116)
  {
    v119 = v116;
  }

  else
  {
    v119 = Width;
  }

  if (Width >= v116)
  {
    v118 = v113;
  }

  v120 = v119;
  v121 = *&v63[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_editorialArtworkView];
  v122 = v118;
  if (v121)
  {
    v123 = v121;
    sub_100770A4C();
    sub_10075FC8C();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v125 = Strong;
    sub_100770A4C();
    [v125 setFrame:?];
  }

  v126 = *&v63[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_artworkGrid];
  if (v126)
  {
    v127 = v126;
    sub_100770A4C();
    v129 = v128;
    v131 = v130;
    v132 = v122;
    v134 = v133;
    v136 = v135;
    v137 = type metadata accessor for ArtworkGrid();
    v182.receiver = v127;
    v182.super_class = v137;
    v138 = v134;
    v122 = v132;
    objc_msgSendSuper2(&v182, "setFrame:", v129, v131, v138, v136);
    sub_10070ED18();
    [v127 setNeedsLayout];
  }

  v139 = *&v63[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_iconArtworkView];
  if (v139)
  {
    v140 = *&v63[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_iconBackingView];
    if (v140)
    {
      v141 = v139;
      v142 = v140;
      v63 = v160;
      [v142 setFrame:{v181, v111, v120, v122}];
      [v142 bounds];
      v144 = v143;
      v146 = v145;
      v178 = v122;
      v148 = v147;
      v150 = v149;
      sub_10075FCFC();
      v180 = v111;
      v193.origin.x = v144;
      v193.origin.y = v146;
      v193.size.width = v148;
      v193.size.height = v150;
      CGRectGetMidX(v193);
      v179 = v120;
      v194.origin.x = v144;
      v194.origin.y = v146;
      v194.size.width = v148;
      v122 = v178;
      v194.size.height = v150;
      CGRectGetMidY(v194);
      v120 = v179;
      v111 = v180;
      sub_100770A4C();
      sub_10075FC8C();
    }
  }

  v151 = *&v63[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView];
  if (v151)
  {
    v152 = v151;
    sub_1004B67D8(v183);
    sub_1004B8E04(v63, v183, v120, v122);
    v179 = v22;
    v180 = v153;
    v154 = v181;
    sub_10005AE58(v183);
    v195.origin.x = v154;
    v195.origin.y = v111;
    v195.size.width = v120;
    v195.size.height = v122;
    CGRectGetMinX(v195);
    v196.size.height = v122;
    v196.origin.x = v154;
    v196.origin.y = v111;
    v196.size.width = v120;
    CGRectGetMinY(v196);
    v155 = v152;
    sub_100770A4C();
    [v155 setFrame:?];
  }
}

id sub_1000E8EBC()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for EditorialSearchResultCollectionViewCell();
  objc_msgSendSuper2(&v17, "prepareForReuse");
  v1 = OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_editorialArtworkView;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_editorialArtworkView];
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;

  [v0 setNeedsLayout];
  sub_1000E9610();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [v0 contentView];
    [v6 addSubview:v5];
  }

  [v0 setNeedsLayout];
  v7 = OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_iconArtworkView;
  v8 = *&v0[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_iconArtworkView];
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

  sub_1000E746C();
  v10 = OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_artworkGrid;
  v11 = *&v0[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_artworkGrid];
  if (v11)
  {
    [v11 removeFromSuperview];
    v12 = *&v0[v10];
  }

  else
  {
    v12 = 0;
  }

  *&v0[v10] = 0;

  sub_1000E775C();
  v13 = OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView;
  v14 = *&v0[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView];
  if (v14)
  {
    [v14 removeFromSuperview];
    v15 = *&v0[v13];
  }

  else
  {
    v15 = 0;
  }

  *&v0[v13] = 0;

  return [v0 setNeedsLayout];
}

id sub_1000E90D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditorialSearchResultCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000E9204(void *a1)
{
  sub_1000E9610();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v1 contentView];
    [v4 addSubview:v3];
  }

  [v1 setNeedsLayout];
}

uint64_t (*sub_1000E92B4(uint64_t **a1))()
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
  v2[4] = sub_1000E72EC(v2);
  return sub_100019A4C;
}

void sub_1000E9324()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView);
  if (v1)
  {
    v2 = v1;
    sub_1004B1A0C();
  }
}

uint64_t sub_1000E938C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_1000E93E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_1000E944C(uint64_t *a1))()
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

uint64_t sub_1000E95C8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1000E9610()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    sub_1000E95C8(&qword_100942810, 255, type metadata accessor for VideoView);
    Strong = v1;
  }

  v2 = sub_1000E7228(Strong);

  if (v2)
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v3 removeFromSuperview];
    }
  }
}

uint64_t sub_1000E96E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100948208);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E9754(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100948208);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E97C4(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100948208);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000E982C()
{
  v1 = sub_10076048C();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_editorialIcon;
  (*(v2 + 104))(v5, enum case for SystemImage.appstore(_:), v1, v3);
  v7 = sub_10076046C();
  (*(v2 + 8))(v5, v1);
  v8 = [objc_allocWithZone(UIImageView) initWithImage:v7];

  *(v0 + v6) = v8;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_showEditorialIcon) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_editorialArtworkView) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_iconArtworkView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_iconBackingView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_artworkGrid) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1000E99EC(unint64_t a1, unint64_t a2)
{
  v4 = sub_1007688CC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076C04C();
  v32[3] = v8;
  v32[4] = sub_1000EA418(&qword_100943230, &type metadata accessor for Feature);
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

uint64_t sub_1000E9CE8()
{
  result = sub_1000E9FA0();
  if (!result)
  {
    sub_10076499C();
    if (swift_dynamicCastClass())
    {
      v1 = type metadata accessor for AdvertsSearchResultContentView();
      v2 = &unk_100948250;
      v3 = type metadata accessor for AdvertsSearchResultContentView;
    }

    else
    {
      sub_100763F3C();
      if (swift_dynamicCastClass())
      {
        v1 = type metadata accessor for BundleSearchResultContentView();
        v2 = &unk_100948248;
        v3 = type metadata accessor for BundleSearchResultContentView;
      }

      else
      {
        sub_10075ECBC();
        if (swift_dynamicCastClass())
        {
          v1 = type metadata accessor for AppSearchResultContentView();
          v2 = &unk_100948240;
          v3 = type metadata accessor for AppSearchResultContentView;
        }

        else
        {
          sub_100765F5C();
          if (swift_dynamicCastClass())
          {
            v1 = type metadata accessor for EditorialSearchResultContentView();
            v2 = &unk_100948238;
            v3 = type metadata accessor for EditorialSearchResultContentView;
          }

          else
          {
            sub_10075E7FC();
            if (swift_dynamicCastClass())
            {
              v1 = type metadata accessor for InAppPurchaseSearchResultContentView();
              v2 = &unk_100948230;
              v3 = type metadata accessor for InAppPurchaseSearchResultContentView;
            }

            else
            {
              sub_10076947C();
              if (swift_dynamicCastClass())
              {
                v1 = type metadata accessor for LockupCollectionSearchResultContentView();
                v2 = &unk_100948228;
                v3 = type metadata accessor for LockupCollectionSearchResultContentView;
              }

              else
              {
                sub_10075EEBC();
                if (swift_dynamicCastClass())
                {
                  v1 = type metadata accessor for AppEventSearchResultContentView();
                  v2 = &unk_100948220;
                  v3 = type metadata accessor for AppEventSearchResultContentView;
                }

                else
                {
                  sub_10076414C();
                  result = swift_dynamicCastClass();
                  if (!result)
                  {
                    return result;
                  }

                  v1 = type metadata accessor for GuidedSearchResultContentView();
                  v2 = &unk_100948218;
                  v3 = type metadata accessor for GuidedSearchResultContentView;
                }
              }
            }
          }
        }
      }
    }

    sub_1000EA418(v2, v3);
    return v1;
  }

  return result;
}

uint64_t sub_1000E9FA0()
{
  v0 = sub_100769AAC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v22[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v22[-v5];
  __chkstk_darwin(v7);
  v9 = &v22[-v8];
  __chkstk_darwin(v10);
  v12 = &v22[-v11];
  sub_100765F5C();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_7;
  }

  v24 = v3;
  sub_100760A7C();
  (*(v1 + 104))(v9, enum case for SearchResultCondensedBehavior.always(_:), v0);
  sub_1000EA418(&qword_100948258, &type metadata accessor for SearchResultCondensedBehavior);
  sub_10077018C();
  sub_10077018C();
  if (v27 != v25 || v28 != v26)
  {
    v23 = sub_10077167C();
    v14 = *(v1 + 8);
    v14(v9, v0);
    v14(v12, v0);

    v3 = v24;
    if (v23)
    {
      goto LABEL_6;
    }

LABEL_7:
    sub_10075E7FC();
    if (swift_dynamicCastClass())
    {
      sub_100760A7C();
      (*(v1 + 104))(v3, enum case for SearchResultCondensedBehavior.always(_:), v0);
      sub_1000EA418(&qword_100948258, &type metadata accessor for SearchResultCondensedBehavior);
      sub_10077018C();
      sub_10077018C();
      if (v27 == v25 && v28 == v26)
      {
        v18 = *(v1 + 8);
        v18(v3, v0);
        v18(v6, v0);

LABEL_12:
        v15 = type metadata accessor for CondensedInAppPurchaseContentView();
        v16 = &unk_100948260;
        v17 = type metadata accessor for CondensedInAppPurchaseContentView;
        goto LABEL_13;
      }

      v19 = sub_10077167C();
      v20 = *(v1 + 8);
      v20(v3, v0);
      v20(v6, v0);

      if (v19)
      {
        goto LABEL_12;
      }
    }

    return 0;
  }

  v13 = *(v1 + 8);
  v13(v9, v0);
  v13(v12, v0);

LABEL_6:
  v15 = type metadata accessor for CondensedEditorialSearchResultContentView();
  v16 = &unk_100948268;
  v17 = type metadata accessor for CondensedEditorialSearchResultContentView;
LABEL_13:
  sub_1000EA418(v16, v17);
  return v15;
}

uint64_t sub_1000EA418(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1000EA460(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = *a1;
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v11 = v10;
  v12 = type metadata accessor for AppEventView();

  return sub_10069CFD8(v11, v8, a6, a4, v12, ObjectType);
}

id sub_1000EA4E4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_10069D2F0(*a1, a3);

  return [v3 setNeedsLayout];
}

uint64_t sub_1000EA53C(void *a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension26AppEventCollectionViewCell_appEventView];
  [v2 bounds];
  v6 = a1[3];
  v7 = a1[4];
  v8 = sub_10000CF78(a1, v6);

  return sub_10069D5CC(v8, a2, v5, v6, v7);
}

uint64_t sub_1000EA6AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000EA6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v10 = v9;
  v11 = [a5 traitCollection];
  v12 = [v11 preferredContentSizeCategory];
  v13 = sub_10077087C();

  if ((v13 & 1) == 0)
  {
    if (qword_100940640 != -1)
    {
      swift_once();
    }

    sub_1002ECDCC(&unk_10099FD58, a5);
    if (qword_10093F850 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for AppEventCardLayout.Metrics(0);
    v18 = sub_10000A61C(v17, qword_10099D2B0);
    sub_1006076C4(v18, a1, a4, a5, ObjectType);
    goto LABEL_28;
  }

  v14 = _swiftEmptyArrayStorage;
  v33 = _swiftEmptyArrayStorage;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = a1 + 32;
    do
    {
      sub_10000A570(v16, v32);
      sub_100012498(v32, v30);
      sub_10000A5D4(&qword_1009575A0);
      sub_10075F1FC();
      if ((swift_dynamicCast() & 1) != 0 && v31)
      {
        sub_10077019C();
        if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();
        v14 = v33;
      }

      v16 += 40;
      --v15;
    }

    while (v15);
  }

  if (!(v14 >> 62))
  {
    v19 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_17;
    }

LABEL_27:

LABEL_28:
    v27 = objc_opt_self();
    PageTraitEnvironment.pageColumnWidth.getter();
    v28 = [v27 absoluteDimension:?];
    v29 = sub_1007665BC();

    return v29;
  }

  v19 = sub_10077158C();
  if (!v19)
  {
    goto LABEL_27;
  }

LABEL_17:
  result = type metadata accessor for AppEventView();
  if (v19 >= 1)
  {
    v21 = result;
    v22 = 0;
    v23 = 0.0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v24 = sub_10077149C();
      }

      else
      {
        v24 = *(v14 + 8 * v22 + 32);
      }

      ++v22;
      sub_10069CFD8(v10, v24, a5, a4, v21, ObjectType);
      v26 = v25;

      if (v23 <= v26)
      {
        v23 = v26;
      }
    }

    while (v19 != v22);
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

id sub_1000EAA88()
{
  swift_getWitnessTable();
  v0 = LinkPresentationProvider.deinit();

  return v0;
}

uint64_t type metadata accessor for CardHeaderButton()
{
  result = qword_100948308;
  if (!qword_100948308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000EABAC(char a1)
{
  v2 = sub_10076048C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = (v3 + 32);
  v11 = *(v3 + 104);
  if (a1)
  {
    if (a1 != 1)
    {
      v11(v5, enum case for SystemImage.appstore(_:), v2, v7);
      (*v10)(v9, v5, v2);
      v13 = [objc_opt_self() configurationWithPointSize:6 weight:2 scale:12.0];
      goto LABEL_7;
    }

    v12 = &enum case for SystemImage.chevronBackward(_:);
  }

  else
  {
    v12 = &enum case for SystemImage.xmark(_:);
  }

  v11(v5, *v12, v2, v7);
  (*v10)(v9, v5, v2);
  v13 = [objc_opt_self() configurationWithPointSize:7 weight:2 scale:15.0];
LABEL_7:
  v14 = v13;
  v15 = sub_10076046C();

  (*(v3 + 8))(v9, v2);
  return v15;
}

uint64_t sub_1000EAD98(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x746867696CLL;
  if (v2 != 1)
  {
    v4 = 1802658148;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6974616D6F747561;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000063;
  }

  v7 = 0xE500000000000000;
  v8 = 0x746867696CLL;
  if (*a2 != 1)
  {
    v8 = 1802658148;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6974616D6F747561;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000063;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_10077167C();
  }

  return v11 & 1;
}

Swift::Int sub_1000EAE84()
{
  sub_10077175C();
  sub_10077008C();

  return sub_1007717AC();
}

uint64_t sub_1000EAF20()
{
  sub_10077008C();
}

Swift::Int sub_1000EAFA8()
{
  sub_10077175C();
  sub_10077008C();

  return sub_1007717AC();
}

uint64_t sub_1000EB040@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000EC214(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1000EB070(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000063;
  v4 = 0xE500000000000000;
  v5 = 0x746867696CLL;
  if (v2 != 1)
  {
    v5 = 1802658148;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6974616D6F747561;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

id sub_1000EB0E8(uint64_t a1, uint64_t a2, void *a3)
{
  result = [objc_opt_self() effectWithStyle:a2];
  *a3 = result;
  return result;
}

id sub_1000EB134(unsigned __int8 a1)
{
  v2 = 0xE900000000000063;
  v3 = 0x6974616D6F747561;
  v4 = qword_1009482D0;
  v5 = v1[qword_1009482D0];
  v1[qword_1009482D0] = a1;
  v6 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v7 = 0x746867696CLL;
    }

    else
    {
      v7 = 1802658148;
    }

    if (v6 == 1)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = 0x6974616D6F747561;
    v8 = 0xE900000000000063;
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  if (v5 != 1)
  {
    v2 = 0xE400000000000000;
    if (v7 != 1802658148)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v2 = 0xE500000000000000;
  v3 = 0x746867696CLL;
LABEL_13:
  if (v7 != v3)
  {
LABEL_20:
    v10 = sub_10077167C();

    if ((v10 & 1) == 0)
    {
      sub_1000EBD60(v1[v4]);

      return [v1 setNeedsDisplay];
    }

    return result;
  }

LABEL_16:
  if (v8 != v2)
  {
    goto LABEL_20;
  }
}

char *sub_1000EB2A0(unsigned __int8 a1)
{
  v3 = a1;
  v4 = sub_10076F9AC();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[qword_1009482D0] = 0;
  v7 = qword_1009482D8;
  *&v1[v7] = [objc_opt_self() secondaryLabelColor];
  v8 = [objc_allocWithZone(UIVisualEffectView) init];
  *&v1[qword_1009482E0] = v8;
  v9 = [objc_allocWithZone(UIVisualEffectView) init];
  *&v1[qword_1009482E8] = v9;
  v10 = [objc_allocWithZone(UIImageView) init];
  v11 = 0;
  *&v1[qword_1009482F0] = v10;
  if (v3 == 2)
  {
    v11 = [objc_allocWithZone(UILabel) init];
  }

  *&v1[qword_1009482F8] = v11;
  v1[qword_100948300] = a1;
  v12 = type metadata accessor for CardHeaderButton();
  v47.receiver = v1;
  v47.super_class = v12;
  v13 = objc_msgSendSuper2(&v47, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v14 = qword_1009482E0;
  v15 = *&v13[qword_1009482E0];
  v16 = v13;
  [v15 setClipsToBounds:1];
  v17 = [*&v13[v14] layer];
  [v17 setCornerRadius:15.0];

  [*&v13[v14] setUserInteractionEnabled:0];
  v18 = *&v13[v14];
  v19 = [v16 imageView];
  [v16 insertSubview:v18 below:v19];

  v20 = [*&v13[v14] contentView];
  v21 = qword_1009482E8;
  [v20 addSubview:*&v16[qword_1009482E8]];

  v22 = qword_1009482F0;
  v23 = *&v16[qword_1009482F0];
  v24 = sub_1000EABAC(a1);
  [v23 setImage:v24];

  v25 = *&v16[v22];
  v26 = objc_opt_self();
  v27 = v25;
  if (v3 >= 2)
  {
    v28 = 12.0;
    v29 = v26;
    v30 = 6;
  }

  else
  {
    v28 = 15.0;
    v29 = v26;
    v30 = 7;
  }

  v31 = [v29 configurationWithPointSize:v30 weight:2 scale:{v28, v45, v46}];
  [v27 setPreferredSymbolConfiguration:v31];

  v32 = [*&v16[v21] contentView];
  [v32 addSubview:*&v16[v22]];

  v33 = *&v16[qword_1009482F8];
  if (v33)
  {
    v34 = v33;
    if (a1 >= 2u)
    {
      v48._object = 0x80000001007D2420;
      v48._countAndFlagsBits = 0xD00000000000001DLL;
      v49._countAndFlagsBits = 0;
      v49._object = 0xE000000000000000;
      sub_1007622EC(v48, v49);
      v35 = sub_10076FF6C();
    }

    else
    {
      v35 = 0;
    }

    [v33 setText:v35];

    v36 = [objc_opt_self() systemFontOfSize:12.0 weight:UIFontWeightSemibold];
    [v33 setFont:v36];

    [v33 setNumberOfLines:2];
    v37 = [*&v16[v21] contentView];
    [v37 addSubview:v33];
  }

  else
  {
    [*&v16[v22] setContentMode:4];
  }

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v16 setContentEdgeInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v16 setTitleEdgeInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v16 setImageEdgeInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
  if (a1)
  {
    if (a1 == 1)
    {
      v41 = 0xEC0000004E4F5454;
      v42._countAndFlagsBits = 0x55425F45534F4C43;
    }

    else
    {
      v42._countAndFlagsBits = 0xD00000000000001DLL;
      v41 = 0x80000001007D2420;
    }
  }

  else
  {
    v41 = 0xEB000000004E4F54;
    v42._countAndFlagsBits = 0x5455425F4B434142;
  }

  v42._object = v41;
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  sub_1007622EC(v42, v50);

  v43 = sub_10076FF6C();

  [v16 setAccessibilityLabel:v43];

  sub_10076F94C();
  sub_100770B9C();
  (*(v45 + 8))(v6, v46);
  sub_1000EB8D0();
  sub_1000EBD60(v16[qword_1009482D0]);

  return v16;
}

void sub_1000EB8D0()
{
  v1 = v0;
  v2 = *&v0[qword_1009482E0];
  [v1 intrinsicContentSize];
  [v2 setFrame:{0.0, 0.0, v3, v4}];
  v5 = *&v1[qword_1009482E8];
  [v1 intrinsicContentSize];
  [v5 setFrame:{0.0, 0.0, v6, v7}];
  v8 = *&v1[qword_1009482F8];
  if (v8)
  {
    v9 = v8;
    [v1 intrinsicContentSize];
    v10 = v1[qword_100948300];
    v11 = sub_1000EABAC(v10);
    [v11 size];
    v13 = v12;

    [v9 measurementsWithFitting:v1 in:{280.0, 1.79769313e308}];
    v25 = v9;
    [v25 sizeThatFits:{280.0, 1.79769313e308}];
    v15 = v14;
    v17 = v16;
    [v1 intrinsicContentSize];
    v19 = v18 * 0.5 - v17 * 0.5 + 0.5;
    sub_100770A4C();
    [v25 setFrame:?];

    v20 = sub_1000EABAC(v10);
    sub_100770E5C();

    v27.origin.x = v13 + 12.0 + 4.0;
    v27.origin.y = v19;
    v27.size.width = v15;
    v27.size.height = v17;
    CGRectGetMinY(v27);
    v21 = *&v1[qword_1009482F0];
    sub_100770A4C();
    [v21 setFrame:?];
  }

  else
  {
    v22 = *&v1[qword_1009482F0];
    [v1 intrinsicContentSize];

    [v22 setFrame:{0.0, 0.0, v23, v24}];
  }
}

double sub_1000EBBC4(void *a1)
{
  v1 = a1;
  sub_1000EBC08();
  v3 = v2;

  return v3;
}

void sub_1000EBC08()
{
  if (*(v0 + qword_100948300) >= 2u)
  {
    v1 = sub_1000EABAC(2);
    [v1 size];

    v2 = *(v0 + qword_1009482F8);
    if (v2)
    {
      [v2 sizeThatFits:{280.0, 1.79769313e308}];
    }
  }
}

id sub_1000EBCD4(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      return 0;
    }
  }

  else
  {
    v3 = [v1 traitCollection];
    v4 = [v3 userInterfaceStyle];

    if (v4 == 2)
    {
      return 0;
    }
  }

  return [objc_opt_self() whiteColor];
}

void sub_1000EBD60(char a1)
{
  v3 = sub_1000EC138(a1);
  v4 = *&v1[qword_1009482E0];
  v12 = v3;
  [v4 setEffect:?];
  v5 = sub_1000EBCD4(a1);
  [v1 setTintColor:v5];

  if (a1)
  {
    if (a1 == 1)
    {
LABEL_3:
      v6 = 4;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = [v1 traitCollection];
    v8 = [v7 userInterfaceStyle];

    if (v8 == 2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v9 = [objc_opt_self() effectForBlurEffect:v12 style:v6];
  v10 = *&v1[qword_1009482E8];
  v11 = v9;
  [v10 setEffect:v11];
}

void sub_1000EBE9C(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for CardHeaderButton();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "_dynamicUserInterfaceTraitDidChange");
  sub_1000EBD60(v1[qword_1009482D0]);
}

void sub_1000EBF34()
{
  v1 = *(v0 + qword_1009482F8);
}

id sub_1000EBFA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardHeaderButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000EBFDC(uint64_t a1)
{
  v2 = *(a1 + qword_1009482F8);
}

unint64_t sub_1000EC08C()
{
  result = qword_100948358;
  if (!qword_100948358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948358);
  }

  return result;
}

unint64_t sub_1000EC0E4()
{
  result = qword_100948360;
  if (!qword_100948360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948360);
  }

  return result;
}

uint64_t sub_1000EC138(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
LABEL_3:
      if (qword_10093F758 != -1)
      {
        swift_once();
      }

      v2 = &qword_1009482C0;
      return *v2;
    }
  }

  else
  {
    v3 = [v1 traitCollection];
    v4 = [v3 userInterfaceStyle];

    if (v4 == 2)
    {
      goto LABEL_3;
    }
  }

  if (qword_10093F760 != -1)
  {
    swift_once();
  }

  v2 = &qword_1009482C8;
  return *v2;
}

uint64_t sub_1000EC214(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100882CF8;
  v6._object = a2;
  v4 = sub_10077160C(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000EC2B0()
{
  v1 = v0;
  v2 = sub_10075E11C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E08C();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    type metadata accessor for InteractiveProductReviewsShelfHeaderView();
    sub_1007708EC();
    v8 = sub_10076FF6C();

    isa = sub_10075E02C().super.isa;
    v10 = [v7 _visibleSupplementaryViewOfKind:v8 atIndexPath:isa];

    if (v10)
    {
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = v1 + OBJC_IVAR____TtC20ProductPageExtension44InteractiveProductReviewsShelfScrollObserver_currentState;
        if ((*(v1 + OBJC_IVAR____TtC20ProductPageExtension44InteractiveProductReviewsShelfScrollObserver_currentState + 40) & 1) == 0)
        {
          v13 = *v12;
          v14 = *(v12 + 16);
          v15 = *(v12 + 24);
          v16 = &v11[OBJC_IVAR____TtC20ProductPageExtension40InteractiveProductReviewsShelfHeaderView_currentState];
          if ((v11[OBJC_IVAR____TtC20ProductPageExtension40InteractiveProductReviewsShelfHeaderView_currentState + 40] & 1) != 0 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v16, v13), vceqq_f64(*(v16 + 24), v15)))) & 1) == 0 || *(v16 + 2) != v14)
          {
            *v16 = v13;
            *(v16 + 2) = v14;
            *(v16 + 24) = v15;
            v16[40] = 0;
            [v11 setNeedsLayout];
          }
        }
      }
    }
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1000EC4B4()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension44InteractiveProductReviewsShelfScrollObserver_shelfLayoutContext;
  v2 = sub_10076469C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InteractiveProductReviewsShelfScrollObserver()
{
  result = qword_1009483A0;
  if (!qword_1009483A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000EC5C4()
{
  result = sub_10076469C();
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

uint64_t sub_1000EC674(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000EC694(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

unint64_t sub_1000EC6E4()
{
  result = qword_1009484A0;
  if (!qword_1009484A0)
  {
    type metadata accessor for InteractiveProductReviewsShelfScrollObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009484A0);
  }

  return result;
}

uint64_t sub_1000EC73C(unint64_t a1, __n128 a2, __n128 a3)
{
  v59 = a3;
  v60 = a2;
  v5 = sub_10076C38C();
  *&v58 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v49 - v9;
  v11 = sub_10076469C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v53 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v49 - v15;
  v17 = sub_10075E11C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    *&v51 = v19;
    result = sub_10077158C();
    v19 = v51;
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v56 = v11;
  v57 = v7;
  v54 = v10;
  v55 = v5;
  if (result)
  {
    *&v51 = v19;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v23 = v3;
      v24 = sub_10077149C();
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v23 = v3;
      v24 = *(a1 + 32);
      swift_unknownObjectRetain();
    }

    v25 = [v24 indexPath];
    swift_unknownObjectRelease();
    sub_10075E06C();

    v52 = sub_10075E0AC();
    (*(v18 + 8))(v21, v51);
  }

  else
  {
    v23 = v3;
    v52 = 0;
  }

  v26 = OBJC_IVAR____TtC20ProductPageExtension44InteractiveProductReviewsShelfScrollObserver_shelfLayoutContext;
  v50 = *(v12 + 16);
  v27 = v23;
  v28 = v23 + OBJC_IVAR____TtC20ProductPageExtension44InteractiveProductReviewsShelfScrollObserver_shelfLayoutContext;
  v29 = v56;
  v50(v16, v28, v56);
  v30 = v54;
  sub_10076460C();
  v31 = *(v12 + 8);
  v31(v16, v29);
  sub_10076C22C();
  v51 = v32;
  v33 = *(v58 + 8);
  v34 = v30;
  v35 = v55;
  v33(v34, v55);
  v36 = v53;
  v50(v53, v27 + v26, v29);
  v37 = v57;
  sub_10076460C();
  v31(v36, v29);
  sub_10076C2BC();
  v58 = v38;
  result = (v33)(v37, v35);
  v40 = *&v58;
  v39 = v59.n128_u64[0];
  *&v41.f64[0] = v51;
  *&v42.f64[0] = v60.n128_u64[0];
  v61 = v60.n128_u64[0];
  v62 = v59.n128_u64[0];
  v43 = v52;
  v63 = v52;
  v64 = v51;
  v65 = v58;
  v44 = v27 + OBJC_IVAR____TtC20ProductPageExtension44InteractiveProductReviewsShelfScrollObserver_currentState;
  v45 = *(v27 + OBJC_IVAR____TtC20ProductPageExtension44InteractiveProductReviewsShelfScrollObserver_currentState);
  v46 = *(v27 + OBJC_IVAR____TtC20ProductPageExtension44InteractiveProductReviewsShelfScrollObserver_currentState + 16);
  v47 = *(v27 + OBJC_IVAR____TtC20ProductPageExtension44InteractiveProductReviewsShelfScrollObserver_currentState + 24);
  v48 = *(v27 + OBJC_IVAR____TtC20ProductPageExtension44InteractiveProductReviewsShelfScrollObserver_currentState + 40);
  *v44 = v60.n128_u64[0];
  *(v44 + 8) = v39;
  *(v44 + 16) = v43;
  *(v44 + 24) = v41.f64[0];
  *(v44 + 32) = v40;
  *(v44 + 40) = 0;
  if (v48)
  {
    return sub_1000EC2B0();
  }

  *&v42.f64[1] = v39;
  v41.f64[1] = v40;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v42, v45), vceqq_f64(v41, v47)))) & 1) == 0 || v43 != v46)
  {
    return sub_1000EC2B0();
  }

  return result;
}

void sub_1000ECC14(void *a1@<X0>, __int128 *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  if (a2[2])
  {

    swift_unknownObjectRelease();
    v12 = 0;
    v8 = 0;
LABEL_3:
    v10 = 0;
LABEL_10:
    v9 = 0;
LABEL_11:
    v7 = 0;
LABEL_12:
    v14 = 0uLL;
    v15 = 0uLL;
    goto LABEL_13;
  }

  if (!a3)
  {

    swift_unknownObjectRelease();
    v12 = 0;
    v8 = 0;
    goto LABEL_10;
  }

  if (!a4)
  {

    swift_unknownObjectRelease();
    v12 = 0;
    v8 = 0;
    v10 = 0;
    goto LABEL_11;
  }

  if (!a5)
  {

    swift_unknownObjectRelease();
    v12 = 0;
    goto LABEL_3;
  }

  if (!a6)
  {

    v12 = 0;
    v8 = 0;
    v10 = 0;
    v9 = 0;
    goto LABEL_12;
  }

  v14 = *a2;
  v15 = a2[1];
  v12 = a1;
LABEL_13:
  *a7 = v12;
  *(a7 + 8) = v8;
  *(a7 + 16) = v14;
  *(a7 + 32) = v15;
  *(a7 + 48) = v10;
  *(a7 + 56) = v9;
  *(a7 + 64) = v7;
}

__n128 sub_1000ECDA8@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + qword_1009484D8 + 32);
  result = *(v1 + qword_1009484D8);
  v4 = *(v1 + qword_1009484D8 + 16);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 sub_1000ECDE0@<Q0>(uint64_t a1@<X8>)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = *(v1 + qword_1009484D8 + 32);
  v5 = *(v1 + qword_1009484D8 + 16);
  v12[0] = *(v1 + qword_1009484D8);
  v12[1] = v5;
  v13 = v4;
  v6 = swift_unknownObjectWeakLoadStrong();
  v7 = swift_unknownObjectWeakLoadStrong();
  v8 = swift_unknownObjectWeakLoadStrong();
  v9 = *(v1 + qword_1009484E8);
  swift_unknownObjectRetain();
  sub_1000ECC14(Strong, v12, v6, v7, v8, v9, v14);
  v10 = v14[3];
  *(a1 + 32) = v14[2];
  *(a1 + 48) = v10;
  *(a1 + 64) = v15;
  result = v14[1];
  *a1 = v14[0];
  *(a1 + 16) = result;
  return result;
}

id sub_1000ECED8(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a1;
  v12 = sub_1000EDBC8(v8);

  return v12;
}

id sub_1000ECF64()
{
  sub_1000EDC70();
  v0 = swift_unknownObjectRetain();

  return v0;
}

id sub_1000ECF9C()
{
  LinkPresentationProvider.deinit();
  v0 = swift_unknownObjectRetain();

  return v0;
}

uint64_t sub_1000ECFFC(uint64_t a1)
{
  *(v1 + qword_1009484E8) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (*(v1 + qword_1009484F8))
  {
    sub_1000ECDE0(v5);
    type metadata accessor for FullScreenTransitionContext();
  }

  else
  {
    *&v2 = sub_1000ECDE0(v5).n128_u64[0];
    if (v5[0])
    {
      [v5[8] completeTransition:{0, v2}];
    }

    type metadata accessor for FullScreenTransitionContext();
  }

  v3 = sub_1007711AC();
  return (*(*(v3 - 8) + 8))(v5, v3);
}

void sub_1000ED134(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  sub_1000ECFFC(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_1000ED1D4(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + qword_100948500;
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  return result;
}

void sub_1000ED1F0(void *a1)
{
  v3 = swift_isaMask & *v1;
  v4 = [a1 view];
  [a1 translationInView:v4];
  v6 = v5;
  v8 = v7;

  if ([a1 state] == 1)
  {
    v9 = (v1 + qword_100948500);
    *v9 = v6;
    v9[1] = v8;
    *(v9 + 16) = 0;
    *(v1 + qword_1009484F8) = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      [Strong dismissViewControllerAnimated:1 completion:0];
    }
  }

  v12 = (v1 + qword_100948500);
  if ((*(v1 + qword_100948500 + 16) & 1) == 0 && *(v1 + qword_1009484E8))
  {
    v13 = *v12;
    v58 = v12[1];
    v14 = [swift_unknownObjectRetain() containerView];
    [v14 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v67.origin.x = v16;
    v67.origin.y = v18;
    v67.size.width = v20;
    v67.size.height = v22;
    MidX = CGRectGetMidX(v67);
    v68.origin.x = v16;
    v68.origin.y = v18;
    v68.size.width = v20;
    v68.size.height = v22;
    MidY = CGRectGetMidY(v68);
    v25 = v8 - v58;
    v26 = v6 - v13 + MidX;
    v27 = v25 + MidY;
    v28 = [a1 state];
    if (v28 != 3)
    {
      if (v28 == 2)
      {
        hypot(MidX - v26, MidY - v27);
        v29 = swift_unknownObjectUnownedLoadStrong();
        [v29 setCenter:{v26, v27}];

        sub_10000A5D4(&unk_1009434B0);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_100783DD0;
        aBlock = sub_10077034C();
        v60 = v31;
        v66._countAndFlagsBits = 0x656C706D6F632025;
        v66._object = 0xEA00000000006574;
        sub_1007700CC(v66);
        v32 = aBlock;
        v33 = v60;
        *(v30 + 56) = &type metadata for String;
        *(v30 + 32) = v32;
        *(v30 + 40) = v33;
        sub_10077173C();
      }

      type metadata accessor for FullScreenTransitionContext();
      v34 = sub_1007711AC();
      (*(*(v34 - 8) + 8))(v65, v34);
      swift_unknownObjectRelease();
      return;
    }

    v35 = [a1 view];
    [a1 velocityInView:v35];
    v37 = v36;
    v39 = v38;

    v40 = hypot(v37, v39) / 500.0;
    v41 = fabs(v37);
    v42 = fabs(v39);
    v43 = v41 * v40;
    v44 = v42 * v40;
    if (v43 > v44)
    {
      v44 = v43;
    }

    if (v44 > 50.0)
    {
      v44 = 50.0;
    }

    if (v37 == 0.0 && v39 == 0.0)
    {
      v45 = 0.0;
      if (v42 >= v41)
      {
LABEL_17:
        v46 = v44;
        v44 = v44 * v45;
LABEL_26:
        if (v44 > v46)
        {
          v49 = v44;
        }

        else
        {
          v49 = v46;
        }

        v50 = v49 / 50.0 * 0.2;
        v51 = v26 + v44;
        v52 = v27 + v46;
        v53 = objc_opt_self();
        v54 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v55 = swift_allocObject();
        *(v55 + 16) = *(v3 + 80);
        *(v55 + 24) = *(v3 + 88);
        *(v55 + 32) = v54;
        *(v55 + 40) = v51;
        *(v55 + 48) = v52;
        v63 = sub_1000EDBA0;
        v64 = v55;
        aBlock = _NSConcreteStackBlock;
        v60 = 1107296256;
        v61 = sub_10009AEDC;
        v62 = &unk_100888B88;
        v56 = _Block_copy(&aBlock);

        [v53 animateWithDuration:0x20000 delay:v56 options:0 animations:v50 completion:0.0];
        swift_unknownObjectRelease();
        _Block_release(v56);
        type metadata accessor for FullScreenTransitionContext();
        v57 = sub_1007711AC();
        (*(*(v57 - 8) + 8))(v65, v57);
        return;
      }
    }

    else
    {
      if (v41 > v42)
      {
        v47 = v41;
      }

      else
      {
        v47 = v42;
      }

      v48 = v42 < v41;
      if (v42 < v41)
      {
        v41 = v42;
      }

      v45 = v41 / v47;
      if (!v48)
      {
        goto LABEL_17;
      }
    }

    v46 = v44 * v45;
    goto LABEL_26;
  }
}

void sub_1000ED760(double a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectUnownedLoadStrong();

    [v6 setCenter:{a1, a2}];
  }
}

void sub_1000ED7F0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1000ED1F0(v4);
}

id sub_1000ED898()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenTransitionManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000ED908(uint64_t a1)
{
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectUnownedDestroy();

  return swift_unknownObjectRelease();
}

unint64_t sub_1000ED9C0()
{
  result = qword_1009485E8[0];
  if (!qword_1009485E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1009485E8);
  }

  return result;
}

void sub_1000EDA14(SEL *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  v5 = [Strong view];

  if (!v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (!*(v1 + qword_1009484E0))
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v5 *a1];
}

void sub_1000EDACC()
{
  sub_1000EDA14(&selRef_removeGestureRecognizer_);
  swift_unknownObjectWeakAssign();
  sub_1000EDA14(&selRef_addGestureRecognizer_);
}

uint64_t sub_1000EDB30()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000EDB68()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000EDBB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000EDBC8(void *a1)
{
  if (!swift_dynamicCastUnknownClass())
  {
    return 0;
  }

  swift_unknownObjectWeakAssign();
  v3 = a1;
  sub_1000EDACC();

  *(v1 + qword_1009484C8) = 1;
  swift_unknownObjectRetain();
  return v1;
}

uint64_t sub_1000EDC70()
{
  result = v0;
  *(v0 + qword_1009484C8) = 0;
  return result;
}

uint64_t sub_1000EDCC4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1000EDD00(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000EDD24(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1000EDD6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000EDDC8()
{
  sub_100016F40(0, &qword_100942F10);
  result = sub_100770D9C();
  qword_10099CFB8 = result;
  return result;
}

char *sub_1000EDE0C(double a1, double a2, double a3, double a4)
{
  v9 = sub_10075E77C();
  __chkstk_darwin(v9 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_headerLabel;
  sub_1007626BC();
  *&v4[v12] = sub_10076269C();
  v13 = OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_titleLabel;
  *&v4[v13] = sub_10076269C();
  v14 = OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_subtitleLabel;
  *&v4[v14] = sub_10076269C();
  v15 = OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_offerButton;
  v16 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v4[v15] = sub_1001E89B8(0);
  v17 = OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_inAppPurchaseView;
  sub_10075E6FC();
  v18 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  *&v4[v17] = sub_1005B7DD4(v11, 1);
  _s20ProductPageExtension33CondensedInAppPurchaseContentViewC7metrics0F8StoreKit0d6SearchefG10CardLayoutV7MetricsVvpfi_0();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_tileOffset] = 0;
  v19 = type metadata accessor for CondensedInAppPurchaseContentView();
  v37.receiver = v4;
  v37.super_class = v19;
  v20 = objc_msgSendSuper2(&v37, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v24 = v20;
  [v24 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v25 = OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_headerLabel;
  [v24 addSubview:*&v24[OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_headerLabel]];
  v26 = OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_titleLabel;
  [v24 addSubview:*&v24[OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_titleLabel]];
  v27 = OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_subtitleLabel;
  [v24 addSubview:*&v24[OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_subtitleLabel]];
  [v24 addSubview:*&v24[OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_offerButton]];
  [v24 addSubview:*&v24[OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_inAppPurchaseView]];
  v28 = *&v24[v25];
  v29 = [v24 tintColor];
  [v28 setTextColor:v29];

  [*&v24[v25] setNumberOfLines:1];
  [*&v24[v26] setNumberOfLines:1];
  v30 = *&v24[v26];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 labelColor];
  [v32 setTextColor:v33];

  v34 = *&v24[v27];
  v35 = [v31 secondaryLabelColor];
  [v34 setTextColor:v35];

  sub_1000F0578();
  return v24;
}

Swift::Void __swiftcall CondensedInAppPurchaseContentView.layoutSubviews()()
{
  v1 = v0;
  v191 = sub_10076DDFC();
  v189 = *(v191 - 8);
  __chkstk_darwin(v191);
  v190 = (v176 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v188 = v176 - v4;
  v5 = sub_10076DE2C();
  v193 = *(v5 - 8);
  __chkstk_darwin(v5);
  v192 = v176 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_10076D1FC();
  v204 = *(v206 - 8);
  __chkstk_darwin(v206);
  v203 = v176 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = sub_10076DB6C();
  v228 = *(v224 - 8);
  __chkstk_darwin(v224);
  v199 = v176 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = sub_10076DB5C();
  v227 = *(v222 - 8);
  __chkstk_darwin(v222);
  v198 = v176 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_10076DB0C();
  v229 = *(v223 - 8);
  __chkstk_darwin(v223);
  v197 = v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_10076DBAC();
  v205 = *(v200 - 8);
  __chkstk_darwin(v200);
  v187 = v176 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v186 = v176 - v13;
  v14 = sub_10075E4BC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v176 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v226 = v176 - v19;
  v20 = type metadata accessor for CondensedInAppPurchaseContentView();
  v257.receiver = v0;
  v257.super_class = v20;
  objc_msgSendSuper2(&v257, "layoutSubviews");
  sub_10076422C();
  v21 = [v0 traitCollection];
  v22 = sub_10077071C();

  (*(v15 + 16))(v17, &v1[OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_metrics], v14);
  v225 = v1;
  v202 = v14;
  if (v22)
  {
    sub_10075E46C();
    v23 = *(v15 + 8);
    v201 = v15 + 8;
    v190 = v23;
    v23(v17, v14);
    v24 = *&v225[OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_inAppPurchaseView];
    v253 = type metadata accessor for InAppPurchaseView();
    v254 = &protocol witness table for UIView;
    v252[0] = v24;
    v25 = *&v225[OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_headerLabel];
    v26 = sub_1007626BC();
    v251 = &protocol witness table for UILabel;
    v250 = v26;
    v249[0] = v25;
    v27 = *&v225[OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_titleLabel];
    v248 = &protocol witness table for UILabel;
    v247 = v26;
    v246[0] = v27;
    v28 = *&v225[OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_subtitleLabel];
    v245 = &protocol witness table for UILabel;
    v244 = v26;
    v243[0] = v28;
    v29 = *&v225[OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_offerButton];
    v30 = type metadata accessor for OfferButton();
    v242 = &protocol witness table for UIView;
    v241 = v30;
    v240[0] = v29;
    sub_10000A5D4(&qword_1009426C0);
    v31 = *(sub_10076DB9C() - 8);
    v193 = *(v31 + 72);
    v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v188 = (4 * v193);
    v33 = swift_allocObject();
    v189 = v33;
    *(v33 + 16) = xmmword_100785C70;
    *&v221 = v33 + v32;
    v187 = v24;
    v34 = v25;
    v35 = v27;
    v36 = v28;
    v37 = v29;
    sub_10075E3BC();
    *(&v238 + 1) = &type metadata for CGFloat;
    v239 = &protocol witness table for CGFloat;
    *&v237 = v38;
    sub_10075E47C();
    LODWORD(v185) = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
    v194 = v229[13];
    v196 = (v229 + 13);
    v39 = v197;
    (v194)(v197);
    v209 = sub_10000A5D4(&unk_100963750);
    v40 = v227;
    v41 = *(v227 + 72);
    v195 = *(v227 + 80);
    v42 = (v195 + 32) & ~v195;
    v207 = 3 * v41;
    v219 = v41;
    v220 = 2 * v41;
    v43 = swift_allocObject();
    v218 = xmmword_100783C60;
    *(v43 + 16) = xmmword_100783C60;
    sub_10076DB4C();
    sub_10076DB2C();
    sub_10076DB3C();
    *&v231 = v43;
    *&v217 = sub_1000F0ED8(&qword_1009426B0, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
    v216 = sub_10000A5D4(&unk_100963760);
    v215 = sub_100016EDC();
    v44 = v198;
    v45 = v222;
    sub_1007712CC();
    LODWORD(v214) = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v46 = v228;
    v47 = *(v228 + 104);
    v212 = (v228 + 104);
    v213 = v47;
    v48 = v199;
    v49 = v224;
    v47(v199);
    sub_10076DB8C();
    v208 = *(v46 + 8);
    v228 = v46 + 8;
    v208(v48, v49);
    v50 = *(v40 + 8);
    v227 = v40 + 8;
    v211 = v50;
    v50(v44, v45);
    v51 = v229[1];
    ++v229;
    v210 = v51;
    v52 = v223;
    v51(v39, v223);
    sub_1000F00E0(&v234);
    sub_10000CD74(&v237);
    v53 = v250;
    v54 = v251;
    v55 = sub_10000CF78(v249, v250);
    *(&v238 + 1) = v53;
    v239 = v54[1];
    v56 = sub_10000DB7C(&v237);
    (*(*(v53 - 8) + 16))(v56, v55, v53);
    sub_10075E41C();
    v233 = 0;
    v231 = 0u;
    v232 = 0u;
    LODWORD(v192) = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
    v57 = v194;
    (v194)(v39);
    v191 = v42;
    v58 = swift_allocObject();
    *(v58 + 16) = v218;
    sub_10076DB4C();
    sub_10076DB2C();
    sub_10076DB3C();
    v230[0] = v58;
    v59 = v222;
    sub_1007712CC();
    v213(v48, v214, v49);
    v60 = v193;
    sub_10076DB8C();
    v208(v48, v49);
    v211(v44, v59);
    v210(v39, v52);
    sub_1000F00E0(&v231);
    sub_10000CD74(&v234);
    sub_10000CD74(&v237);
    v184 = (2 * v60);
    v61 = v247;
    v62 = v248;
    v63 = sub_10000CF78(v246, v247);
    *(&v238 + 1) = v61;
    v239 = v62[1];
    v64 = sub_10000DB7C(&v237);
    (*(*(v61 - 8) + 16))(v64, v63, v61);
    sub_10075E40C();
    v233 = 0;
    v231 = 0u;
    v232 = 0u;
    (v57)(v39, v192, v52);
    v65 = swift_allocObject();
    *(v65 + 16) = v218;
    sub_10076DB4C();
    sub_10076DB2C();
    sub_10076DB3C();
    v230[0] = v65;
    v66 = v222;
    sub_1007712CC();
    v67 = v224;
    v213(v48, v214, v224);
    v68 = v184;
    sub_10076DB8C();
    v208(v48, v67);
    v211(v44, v66);
    v69 = v39;
    v70 = v39;
    v71 = v223;
    v210(v69, v223);
    sub_1000F00E0(&v231);
    sub_10000CD74(&v234);
    sub_10000CD74(&v237);
    v193 += v68;
    v72 = v244;
    v73 = v245;
    v74 = sub_10000CF78(v243, v244);
    *(&v238 + 1) = v72;
    v239 = v73[1];
    v75 = sub_10000DB7C(&v237);
    (*(*(v72 - 8) + 16))(v75, v74, v72);
    sub_10075E42C();
    v233 = 0;
    v231 = 0u;
    v232 = 0u;
    v76 = v71;
    (v194)(v70, v192, v71);
    v77 = swift_allocObject();
    *(v77 + 16) = v218;
    sub_10076DB4C();
    sub_10076DB2C();
    sub_10076DB3C();
    v230[0] = v77;
    v78 = v222;
    sub_1007712CC();
    v79 = v224;
    v213(v48, v214, v224);
    sub_10076DB8C();
    v208(v48, v79);
    v211(v44, v78);
    v210(v70, v76);
    sub_1000F00E0(&v231);
    sub_10000CD74(&v234);
    sub_10000CD74(&v237);
    sub_10075E47C();
    v236 = 0;
    v234 = 0u;
    v235 = 0u;
    (v194)(v70, v185, v76);
    v80 = swift_allocObject();
    *(v80 + 16) = v218;
    sub_10076DB4C();
    sub_10076DB2C();
    sub_10076DB3C();
    *&v231 = v80;
    sub_1007712CC();
    v213(v48, v214, v79);
    sub_10076DB8C();
    v81 = v48;
    v82 = v225;
    v83 = v187;
    v208(v81, v79);
    v211(v44, v78);
    v210(v70, v76);
    sub_1000F00E0(&v234);
    sub_10000CD74(&v237);
    v84 = v186;
    sub_10076DB7C();
    sub_10000CD74(v240);
    sub_10000CD74(v243);
    sub_10000CD74(v246);
    sub_10000CD74(v249);
    sub_10000CD74(v252);
    v85 = v203;
    v86 = v200;
    sub_10076DFCC();
    (*(v204 + 8))(v85, v206);
    [v83 frame];
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v94 = v93;
    v95 = [v82 traitCollection];
    LOBYTE(v85) = sub_10077070C();

    sub_10075E3DC();
    sub_10000CF78(v252, v253);
    v96 = [v82 traitCollection];
    sub_10076D41C();
    v98 = v97;

    if (v85)
    {
      sub_10000CD74(v252);
      v99 = v88 - v98;
    }

    else
    {
      v99 = v88 + v98;
      sub_10000CD74(v252);
    }

    v175 = v205;
    [v83 setFrame:{v99, v90 + 0.0, v92, v94}];
    v190(v226, v202);
    (*(v175 + 8))(v84, v86);
  }

  else
  {
    v100 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_inAppPurchaseView];
    v255 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_headerLabel];
    v101 = v255;
    v256 = v100;
    v102 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_titleLabel];
    v253 = sub_1007626BC();
    v254 = &protocol witness table for UILabel;
    v252[0] = v102;
    v201 = v15;
    v103 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_subtitleLabel];
    v251 = &protocol witness table for UILabel;
    v250 = v253;
    v249[0] = v103;
    v182 = v5;
    v104 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_offerButton];
    v105 = type metadata accessor for OfferButton();
    v248 = &protocol witness table for UIView;
    v247 = v105;
    v246[0] = v104;
    v181 = v100;
    v180 = v101;
    v106 = v102;
    v107 = v103;
    v108 = v104;
    v109 = [v1 traitCollection];
    sub_10075E3FC();
    sub_10000CF78(v243, v244);
    sub_10076D41C();
    v194 = v17;
    sub_10075E3BC();
    v178 = sub_10076DEDC();
    v179 = sub_10000A5D4(&unk_100942870);
    v110 = swift_allocObject();
    v221 = xmmword_1007841E0;
    *(v110 + 16) = xmmword_1007841E0;
    *(v110 + 32) = v109;
    v177 = v109;
    v111 = sub_10076DEEC();
    sub_10076C8FC();

    sub_10000CD74(v243);
    sub_10000A5D4(&qword_1009426C0);
    v112 = *(sub_10076DB9C() - 8);
    v185 = *(v112 + 72);
    v113 = (*(v112 + 80) + 32) & ~*(v112 + 80);
    v114 = swift_allocObject();
    v176[1] = v114;
    *(v114 + 16) = xmmword_100788B20;
    v226 = (v114 + v113);
    sub_10076D26C();
    sub_10075E41C();
    v239 = 0;
    v237 = 0u;
    v238 = 0u;
    LODWORD(v186) = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
    v115 = v229;
    v116 = v229[13];
    v184 = (v229 + 13);
    v195 = v116;
    v117 = v197;
    v118 = v223;
    v116(v197);
    v196 = sub_10000A5D4(&unk_100963750);
    v119 = v227;
    v120 = *(v227 + 72);
    v121 = *(v227 + 80);
    v207 = 3 * v120;
    v219 = 2 * v120;
    v220 = v121;
    *&v218 = v120;
    v183 = (v121 + 32) & ~v121;
    v122 = swift_allocObject();
    v217 = xmmword_100783C60;
    *(v122 + 16) = xmmword_100783C60;
    sub_10076DB4C();
    sub_10076DB2C();
    sub_10076DB3C();
    *&v234 = v122;
    v215 = sub_1000F0ED8(&qword_1009426B0, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
    v214 = sub_10000A5D4(&unk_100963760);
    v216 = sub_100016EDC();
    v123 = v198;
    v124 = v222;
    sub_1007712CC();
    LODWORD(v213) = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v125 = v118;
    v126 = v228;
    v127 = *(v228 + 104);
    v211 = (v228 + 104);
    v212 = v127;
    v128 = v199;
    v129 = v224;
    v127(v199);
    sub_10076DB8C();
    v130 = *(v126 + 8);
    v228 = v126 + 8;
    v210 = v130;
    v130(v128, v129);
    v131 = *(v119 + 8);
    v227 = v119 + 8;
    v209 = v131;
    v132 = v124;
    v131(v123, v124);
    v133 = v115[1];
    v229 = v115 + 1;
    v208 = v133;
    v133(v117, v125);
    sub_1000F00E0(&v237);
    sub_10000CD74(v240);
    sub_10000CD74(v243);
    v134 = v253;
    v135 = v254;
    v136 = sub_10000CF78(v252, v253);
    v244 = v134;
    v245 = v135[1];
    v137 = sub_10000DB7C(v243);
    (*(*(v134 - 8) + 16))(v137, v136, v134);
    sub_10075E40C();
    v239 = 0;
    v237 = 0u;
    v238 = 0u;
    v138 = v125;
    (v195)(v117, v186, v125);
    v139 = swift_allocObject();
    *(v139 + 16) = v217;
    sub_10076DB4C();
    sub_10076DB2C();
    sub_10076DB3C();
    *&v234 = v139;
    sub_1007712CC();
    v140 = v224;
    v212(v128, v213, v224);
    v141 = v185;
    sub_10076DB8C();
    v210(v128, v140);
    v209(v123, v132);
    v142 = v117;
    v143 = v117;
    v144 = v138;
    v208(v142, v138);
    sub_1000F00E0(&v237);
    sub_10000CD74(v240);
    sub_10000CD74(v243);
    v176[0] = 2 * v141;
    v145 = v250;
    v146 = v251;
    v147 = sub_10000CF78(v249, v250);
    v244 = v145;
    v245 = v146[1];
    v148 = sub_10000DB7C(v243);
    (*(*(v145 - 8) + 16))(v148, v147, v145);
    sub_10075E42C();
    v239 = 0;
    v237 = 0u;
    v238 = 0u;
    (v195)(v143, v186, v144);
    v149 = swift_allocObject();
    *(v149 + 16) = v217;
    sub_10076DB4C();
    sub_10076DB2C();
    sub_10076DB3C();
    *&v234 = v149;
    sub_1007712CC();
    v150 = v224;
    v212(v128, v213, v224);
    v151 = v176[0];
    sub_10076DB8C();
    v210(v128, v150);
    v209(v123, v132);
    v152 = v223;
    v208(v143, v223);
    sub_1000F00E0(&v237);
    sub_10000CD74(v240);
    sub_10000CD74(v243);
    v186 = (v151 + v185);
    sub_10075E45C();
    sub_10075E3BC();
    v241 = &type metadata for CGFloat;
    v242 = &protocol witness table for CGFloat;
    v240[0] = v153;
    (v195)(v143, enum case for VerticalFlowLayout.VerticalPlacement.top(_:), v152);
    v154 = swift_allocObject();
    *(v154 + 16) = v217;
    sub_10076DB4C();
    sub_10076DB2C();
    sub_10076DB3C();
    *&v237 = v154;
    sub_1007712CC();
    v155 = v224;
    v212(v128, v213, v224);
    sub_10076DB8C();
    v210(v128, v155);
    v209(v123, v132);
    v208(v143, v152);
    sub_10000CD74(v243);
    sub_1000F00E0(v240);
    v156 = v187;
    sub_10076DB7C();
    sub_10075E3BC();
    v157 = swift_allocObject();
    *(v157 + 16) = v221;
    v158 = v177;
    *(v157 + 32) = v177;
    v159 = v158;
    v160 = sub_10076DEEC();
    sub_10076C8FC();

    sub_10075E3BC();
    v161 = swift_allocObject();
    *(v161 + 16) = v221;
    *(v161 + 32) = v159;
    v162 = v159;
    v163 = sub_10076DEEC();
    sub_10076C8FC();

    sub_10075E3BC();
    v164 = swift_allocObject();
    *(v164 + 16) = v221;
    *(v164 + 32) = v162;
    v229 = v162;
    v165 = sub_10076DEEC();
    sub_10076C8FC();

    sub_10075E48C();
    sub_10000CF78(v243, v244);
    sub_10076D41C();
    sub_10000CD74(v243);
    type metadata accessor for InAppPurchaseView();
    sub_10076D26C();
    v166 = v200;
    v241 = v200;
    v242 = &protocol witness table for VerticalFlowLayout;
    v167 = sub_10000DB7C(v240);
    v168 = v205;
    (*(v205 + 16))(v167, v156, v166);
    sub_10000A570(v243, &v237);
    v236 = &protocol witness table for Double;
    *(&v235 + 1) = &type metadata for Double;
    *&v234 = 0;
    v233 = 0;
    v231 = 0u;
    v232 = 0u;
    v169 = enum case for FlankedHorizontalLayout.ViewAlignment.center(_:);
    v170 = *(v189 + 104);
    v171 = v191;
    v170(v188, enum case for FlankedHorizontalLayout.ViewAlignment.center(_:), v191);
    v230[3] = sub_10076D67C();
    v230[4] = &protocol witness table for ZeroDimension;
    sub_10000DB7C(v230);
    sub_10076D66C();
    v170(v190, v169, v171);
    v172 = v192;
    sub_10076DE1C();

    sub_10000CD74(v243);
    (*(v168 + 8))(v156, v166);
    (*(v201 + 8))(v194, v202);
    sub_10000CD74(v246);
    sub_10000CD74(v249);
    sub_10000CD74(v252);

    v173 = v203;
    v174 = v182;
    sub_10076DFCC();
    (*(v204 + 8))(v173, v206);
    (*(v193 + 8))(v172, v174);
  }
}

uint64_t type metadata accessor for CondensedInAppPurchaseContentView()
{
  result = qword_1009486E8;
  if (!qword_1009486E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F00E0(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100943240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall CondensedInAppPurchaseContentView.prepareForReuse()()
{
  [*(v0 + OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_headerLabel) setText:0];
  [*(v0 + OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_titleLabel) setText:0];
  [*(v0 + OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_subtitleLabel) setText:0];
  [*(v0 + OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_offerButton) setHidden:1];
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_inAppPurchaseView);

  [v1 setHidden:1];
}

Swift::Void __swiftcall CondensedInAppPurchaseContentView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v4 = sub_10075E4BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CondensedInAppPurchaseContentView();
  v27.receiver = v1;
  v27.super_class = v8;
  objc_msgSendSuper2(&v27, "traitCollectionDidChange:", isa);
  if (isa)
  {
    v9 = [(objc_class *)isa preferredContentSizeCategory];
  }

  else
  {
    v9 = 0;
  }

  v10 = &selRef_initWithTabBarSystemItem_tag_;
  v11 = [v2 traitCollection];
  v12 = [v11 preferredContentSizeCategory];

  v13 = &off_100911000;
  if (!v9)
  {

LABEL_12:
    sub_1000F0578();
    [v2 v13[194]];
    goto LABEL_13;
  }

  v14 = sub_10076FF9C();
  v16 = v15;
  if (v14 == sub_10076FF9C() && v16 == v17)
  {

    v13 = &off_100911000;
    v10 = &selRef_initWithTabBarSystemItem_tag_;
    if (isa)
    {
      goto LABEL_14;
    }

LABEL_16:
    v20 = 2;
    goto LABEL_17;
  }

  v19 = sub_10077167C();

  v13 = &off_100911000;
  v10 = &selRef_initWithTabBarSystemItem_tag_;
  if ((v19 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (!isa)
  {
    goto LABEL_16;
  }

LABEL_14:
  v20 = sub_10077071C() & 1;
LABEL_17:
  v21 = [v2 v10[274]];
  v22 = sub_10077071C();

  if (v20 == 2 || ((v22 ^ v20) & 1) != 0)
  {
    v23 = *&v2[OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_subtitleLabel];
    (*(v5 + 16))(v7, &v2[OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_metrics], v4);
    v24.super.isa = [v2 v10[274]];
    v25 = v24.super.isa;
    v26 = sub_10075E49C(v24);

    (*(v5 + 8))(v7, v4);
    [v23 setNumberOfLines:v26];
    [v2 v13[194]];
  }
}

id sub_1000F0578()
{
  v1 = v0;
  v40 = sub_10076D3DC();
  v44 = *(v40 - 8);
  __chkstk_darwin(v40);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10075E4BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v0[OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_headerLabel];
  v9 = sub_100016F40(0, &qword_100942F00);
  v39 = OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_metrics;
  v10 = *(v5 + 16);
  v42 = v9;
  v43 = v5 + 16;
  v37 = v4;
  v10(v7, &v0[OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_metrics], v4);
  v11 = v10;
  v35 = v10;
  sub_10075E3CC();
  v38 = *(v5 + 8);
  v36 = v5 + 8;
  v38(v7, v4);
  v12 = [v0 traitCollection];
  v13 = sub_100770B3C();

  v14 = *(v44 + 8);
  v44 += 8;
  v41 = v14;
  v15 = v40;
  v14(v3, v40);
  [v8 setFont:v13];

  [v8 setLineBreakMode:4];
  v16 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_titleLabel];
  v17 = v39;
  v18 = v37;
  v11(v7, &v1[v39], v37);
  sub_10075E4AC();
  v19 = v18;
  v20 = v38;
  v38(v7, v19);
  v21 = [v1 traitCollection];
  v22 = sub_100770B3C();

  v41(v3, v15);
  [v16 setFont:v22];

  [v16 setLineBreakMode:4];
  v34 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_subtitleLabel];
  v23 = &v1[v17];
  v24 = v37;
  v25 = v35;
  v35(v7, v23, v37);
  sub_10075E3EC();
  v20(v7, v24);
  v26 = [v1 traitCollection];
  v27 = sub_100770B3C();

  v41(v3, v40);
  v28 = v34;
  [v34 setFont:v27];

  v25(v7, &v1[v39], v24);
  v29.super.isa = [v1 traitCollection];
  isa = v29.super.isa;
  v31 = sub_10075E49C(v29);

  v38(v7, v24);
  [v28 setNumberOfLines:v31];
  return [v28 setLineBreakMode:4];
}

id CondensedInAppPurchaseContentView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CondensedInAppPurchaseContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000F0AD8()
{
  sub_10075E7FC();
  sub_1000F0ED8(&qword_1009486F8, &type metadata accessor for InAppPurchaseSearchResult);
  result = sub_10076332C();
  if (v3)
  {
    sub_10075E7EC();
    v1 = sub_1006EC764();

    v2._rawValue = v1;
    sub_100760BAC(v2);
  }

  return result;
}

uint64_t sub_1000F0BB0(uint64_t a1)
{
  *(a1 + 8) = sub_1000F0ED8(&qword_1009486A8, type metadata accessor for CondensedInAppPurchaseContentView);
  result = sub_1000F0ED8(&qword_1009486B0, type metadata accessor for CondensedInAppPurchaseContentView);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000F0C84()
{
  result = sub_10075E4BC();
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

void sub_1000F0D38()
{
  v1 = sub_10075E77C();
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_headerLabel;
  sub_1007626BC();
  *(v0 + v4) = sub_10076269C();
  v5 = OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_titleLabel;
  *(v0 + v5) = sub_10076269C();
  v6 = OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_subtitleLabel;
  *(v0 + v6) = sub_10076269C();
  v7 = OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_offerButton;
  v8 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v0 + v7) = sub_1001E89B8(0);
  v9 = OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_inAppPurchaseView;
  sub_10075E6FC();
  v10 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  *(v0 + v9) = sub_1005B7DD4(v3, 1);
  _s20ProductPageExtension33CondensedInAppPurchaseContentViewC7metrics0F8StoreKit0d6SearchefG10CardLayoutV7MetricsVvpfi_0();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_tileOffset) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1000F0ED8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000F0F40()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SearchResultsContextCardView.Style(319);
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_1000F1030()
{
  v36 = type metadata accessor for SearchResultsContextCardView.Style.Message(0);
  __chkstk_darwin(v36);
  v33 = &v30 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_10076D3DC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076BCFC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v37 = &v30 - v10;
  v11 = type metadata accessor for SearchResultsContextCardView.Style.Metrics(0);
  __chkstk_darwin(v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SearchResultsContextCardView.Style(0);
  sub_10000DB18(v14, qword_10099CFD0);
  v15 = sub_10000A61C(v14, qword_10099CFD0);
  if (qword_10093F778 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v11, qword_10099CFE8);
  v34 = v13;
  sub_1000F427C(v16, v13, type metadata accessor for SearchResultsContextCardView.Style.Metrics);
  v31 = objc_opt_self();
  v32 = [v31 secondarySystemGroupedBackgroundColor];
  if (qword_10093F8B8 != -1)
  {
    swift_once();
  }

  v17 = v5;
  v18 = sub_10000A61C(v5, qword_10099D4C8);
  v35 = v6;
  v19 = *(v6 + 16);
  v19(v37, v18, v17);
  if (qword_10093F8C0 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A61C(v17, qword_10099D4E0);
  v30 = v8;
  v19(v8, v20, v17);
  v21 = v17;
  if (qword_100940EC8 != -1)
  {
    swift_once();
  }

  v22 = sub_10000A61C(v1, qword_1009A1A50);
  v23 = v2;
  v24 = *(v2 + 16);
  v24(v4, v22, v1);
  v25 = v33;
  v24(v33, v22, v1);
  v26 = [v31 labelColor];
  v27 = v36;
  *(v25 + *(v36 + 20)) = v26;
  *(v25 + *(v27 + 24)) = 0;
  *(v25 + *(v27 + 28)) = 0;
  sub_1000F4214(v34, v15, type metadata accessor for SearchResultsContextCardView.Style.Metrics);
  *(v15 + v14[5]) = v32;
  v28 = *(v35 + 32);
  v28(v15 + v14[6], v37, v21);
  v28(v15 + v14[7], v30, v21);
  (*(v23 + 32))(v15 + v14[8], v4, v1);
  return sub_1000F4214(v25, v15 + v14[9], type metadata accessor for SearchResultsContextCardView.Style.Message);
}

uint64_t sub_1000F1508()
{
  v0 = sub_100769C7C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10075FEEC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SearchResultsContextCardView.Style.Metrics(0);
  sub_10000DB18(v8, qword_10099CFE8);
  v9 = sub_10000A61C(v8, qword_10099CFE8);
  (*(v5 + 104))(v7, enum case for CornerStyle.continuous(_:), v4);
  sub_100769C6C();
  *v9 = 0x4038000000000000;
  (*(v5 + 32))(&v9[v8[5]], v7, v4);
  *&v9[v8[6]] = 0x4014000000000000;
  return (*(v1 + 32))(&v9[v8[7]], v3, v0);
}

id sub_1000F16E0()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v2 - 8);
  v4 = &v32 - v3;
  v5 = sub_10076D3DC();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v6 + 16);
  v10(v9, v1, v5, v7);
  v11 = type metadata accessor for SearchResultsContextCardView.Style.Message(0);
  v12 = *(v11 + 20);
  v32 = *(v1 + *(v11 + 24));
  v13 = *(v1 + v12);
  v14 = type metadata accessor for DynamicTypeLinkedTextView();
  v15 = objc_allocWithZone(v14);
  *&v15[qword_10094E720] = _swiftEmptyArrayStorage;
  *&v15[qword_10094E728] = 0;
  v37.receiver = v15;
  v37.super_class = v14;
  v16 = v13;
  v17 = objc_msgSendSuper2(&v37, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v33 = v9;
  v18 = v9;
  v19 = v5;
  (v10)(v4, v18, v5);
  v20 = v6;
  (*(v6 + 56))(v4, 0, 1, v19);
  v21 = v17;
  sub_100764BBC();
  sub_100764BEC();

  sub_100764BDC();
  v36.receiver = v21;
  v36.super_class = v14;
  v22 = v16;
  v23 = objc_msgSendSuper2(&v36, "textColor");
  v35.receiver = v21;
  v35.super_class = v14;
  objc_msgSendSuper2(&v35, "setTextColor:", v22);
  v34.receiver = v21;
  v34.super_class = v14;
  v24 = objc_msgSendSuper2(&v34, "textColor");
  if (v24)
  {
    v25 = v24;
    if (v23)
    {
      sub_100016F40(0, &qword_100942F10);
      v26 = v23;
      v27 = sub_100770EEC();

      if (v27)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  else
  {
    v26 = v22;
    if (!v23)
    {
      goto LABEL_10;
    }
  }

  sub_1002448C4();
  v26 = v23;
LABEL_9:

LABEL_10:
  v28 = v21;
  [v28 setSelectable:1];
  v29 = v28;
  [v29 setEditable:0];
  [v29 setScrollEnabled:0];
  [v29 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v29 setContentInsetAdjustmentBehavior:2];
  v30 = [objc_opt_self() clearColor];
  [v29 setBackgroundColor:v30];

  [v29 setDelegate:v29];
  [v29 _setInteractiveTextSelectionDisabled:1];

  (*(v20 + 8))(v33, v19);
  return v29;
}

void sub_1000F1ADC(void *a1)
{
  v2 = sub_10000A5D4(&unk_10095E850);
  __chkstk_darwin(v2 - 8);
  v4 = &v21[-v3];
  sub_100016F40(0, &qword_100942F00);
  type metadata accessor for SearchResultsContextCardView.Style(0);
  v5 = sub_100770B3C();
  sub_1007710CC();
  v6 = sub_100770FDC();
  *(v7 + 8) = 0;
  v6(v21, 0);
  v8 = sub_100770FDC();
  *(v9 + 24) = 0;
  v8(v21, 0);
  v10 = [a1 title];
  sub_10076FF9C();

  sub_1007710EC();
  *(swift_allocObject() + 16) = v5;
  v11 = v5;
  sub_10076E8AC();
  v12 = sub_10076E89C();
  (*(*(v12 - 8) + 56))(v4, 0, 1, v12);
  sub_10077106C();
  v13 = [a1 image];
  if (v13)
  {
    v14 = v13;
    sub_1007710BC();
    if ([v14 isSymbolImage])
    {
      v15 = [objc_opt_self() configurationWithFont:v11 scale:1];
      sub_100770F4C();
    }

    v16 = [a1 title];
    v17 = sub_10076FF9C();
    v19 = v18;

    v20 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v20 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      sub_100770FFC();
      type metadata accessor for SearchResultsContextCardView.Style.Metrics(0);
      sub_100770FBC();
    }
  }
}

uint64_t sub_1000F1DC0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10075D9EC();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  sub_100016BD0();
  v7 = a2;
  return sub_10075D9FC();
}

char *sub_1000F1E60(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_10000A5D4(&qword_1009473D0);
  __chkstk_darwin(v4 - 8);
  v42 = v37 - v5;
  v6 = sub_10075FEEC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_10099D000;
  v11 = sub_10076341C();
  (*(*(v11 - 8) + 56))(&v2[v10], 1, 1, v11);
  *&v2[qword_100948710] = 0;
  v12 = a1;
  sub_1000F427C(a1, &v2[qword_100948700], type metadata accessor for SearchResultsContextCardView.Style);
  sub_10076394C();
  v13 = type metadata accessor for SearchResultsContextCardView.Style.Metrics(0);
  v14 = *(v7 + 16);
  v15 = a1 + *(v13 + 20);
  v16 = *(v13 + 20);
  v41 = v16;
  v39 = v6;
  v14(v9, v15, v6);
  v38 = v14;
  v40 = v7 + 16;
  v17 = sub_10076393C();
  v18 = type metadata accessor for SearchResultsContextCardView.Style(0);
  v19 = *(v18 + 20);
  v20 = v18;
  v37[0] = v18;
  [v17 setBackgroundColor:*(v12 + v19)];
  *&v2[qword_100948728] = v17;
  v37[1] = sub_10075F99C();
  v14(v9, v12 + v16, v6);
  v21 = sub_10075F96C();
  v22 = *(v20 + 24);
  v23 = sub_10076BCFC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 16);
  v26 = v12 + v22;
  v27 = v12;
  v28 = v42;
  v25(v42, v26, v23);
  v29 = *(v24 + 56);
  v29(v28, 0, 1, v23);
  sub_10075F97C();
  *&v2[qword_100948718] = v21;
  v38(v9, v27 + v41, v39);
  v30 = sub_10075F96C();
  v25(v28, v27 + *(v37[0] + 28), v23);
  v29(v28, 0, 1, v23);
  sub_10075F97C();
  *&v2[qword_100948720] = v30;
  *&v2[qword_100948708] = sub_1000F16E0();
  v44.receiver = v2;
  v44.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v44, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v35 = v31;
  [v35 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v35 addSubview:*&v35[qword_100948718]];
  [v35 addSubview:*&v35[qword_100948720]];
  [v35 addSubview:*&v35[qword_100948728]];
  [v35 addSubview:*&v35[qword_100948708]];

  sub_1000F42E4(v27);
  return v35;
}

void sub_1000F22D4(uint64_t a1)
{
  v2 = qword_10099D000;
  v3 = sub_10076341C();
  (*(*(v3 - 8) + 56))(a1 + v2, 1, 1, v3);
  *(a1 + qword_100948710) = 0;
  sub_10077156C();
  __break(1u);
}

void sub_1000F238C(void *a1)
{
  v2 = qword_100948710;
  v3 = *&v1[qword_100948710];
  if (a1)
  {
    if (v3 == a1)
    {
      return;
    }

    [a1 removeFromSuperview];
    v3 = *&v1[v2];
    if (!v3)
    {
      return;
    }
  }

  else if (!v3)
  {
    return;
  }

  v4 = v3;
  [v1 addSubview:v4];
  [v1 setNeedsLayout];
}

uint64_t sub_1000F2430@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_100769C7C();
  __chkstk_darwin(v3 - 8);
  type metadata accessor for DynamicTypeLinkedTextView();
  sub_10076D2DC();
  v4 = *(v1 + qword_100948710);
  if (v4)
  {
    sub_100016F40(0, &qword_100947240);
  }

  v5 = v4;
  sub_100769C6C();
  a1[3] = sub_100769C9C();
  a1[4] = sub_1000F4340(&qword_100948968, &type metadata accessor for SearchResultsContextCardLayout);
  sub_10000DB7C(a1);
  return sub_100769C8C();
}

id sub_1000F2588()
{
  sub_10076D9FC();
  v1 = sub_10076DA0C();
  v1();
  v2 = *&v0[qword_100948718];
  [v0 bounds];
  [v2 setFrame:?];
  v3 = *&v0[qword_100948720];
  [v0 bounds];
  [v3 setFrame:?];
  v4 = *&v0[qword_100948728];
  [v0 bounds];

  return [v4 setFrame:?];
}

id sub_1000F2654(uint64_t a1, void *a2)
{
  v4 = sub_10077111C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10076081C();
  v6 = sub_10076082C();
  v7 = sub_100032368(v6, sub_100032360);

  sub_100245548(v5, v7);

  if (a2)
  {
    sub_100016F40(0, &qword_100947240);
    v8 = [v2 traitCollection];
    sub_1000F1ADC(a2);

    v9 = a2;
    v10 = sub_10077112C();
  }

  else
  {
    v10 = 0;
  }

  v11 = *&v2[qword_100948710];
  *&v2[qword_100948710] = v10;
  v12 = v10;
  sub_1000F238C(v11);

  return [v2 setNeedsLayout];
}

void sub_1000F2830()
{
  sub_10000DBE0(v0 + qword_10099D000);
  sub_1000F42E4(v0 + qword_100948700);

  v1 = *(v0 + qword_100948728);
}

void sub_1000F28C0(uint64_t a1)
{
  sub_10000DBE0(a1 + qword_10099D000);
  sub_1000F42E4(a1 + qword_100948700);

  v2 = *(a1 + qword_100948728);
}

uint64_t sub_1000F2998(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for SearchResultsContextCardView.Style.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_10076BCFC();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_10076D3DC();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_11;
  }

  v17 = type metadata accessor for SearchResultsContextCardView.Style.Message(0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[9];

  return v18(v19, a2, v17);
}

uint64_t sub_1000F2BA8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for SearchResultsContextCardView.Style.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = sub_10076BCFC();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_10076D3DC();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  v17 = type metadata accessor for SearchResultsContextCardView.Style.Message(0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1000F2D64()
{
  result = type metadata accessor for SearchResultsContextCardView.Style.Metrics(319);
  if (v1 <= 0x3F)
  {
    result = sub_100016F40(319, &qword_100942F10);
    if (v2 <= 0x3F)
    {
      result = sub_10076BCFC();
      if (v3 <= 0x3F)
      {
        result = sub_10076D3DC();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for SearchResultsContextCardView.Style.Message(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000F2E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10076D3DC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000F2F24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10076D3DC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1000F2FDC()
{
  sub_10076D3DC();
  if (v0 <= 0x3F)
  {
    sub_100016F40(319, &qword_100942F10);
    if (v1 <= 0x3F)
    {
      type metadata accessor for NSLineBreakMode(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000F30A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10075FEEC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = sub_100769C7C();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1000F31AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10075FEEC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = sub_100769C7C();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 28);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_1000F32AC()
{
  result = sub_10075FEEC();
  if (v1 <= 0x3F)
  {
    result = sub_100769C7C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000F3340()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000F3380(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v107 = a3;
  v115 = sub_10000A5D4(&qword_100948950);
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v112 = &v91 - v6;
  v7 = sub_100769C7C();
  __chkstk_darwin(v7 - 8);
  v111 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_10077111C();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v92 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_10076D7FC();
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v99 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v100 = &v91 - v12;
  __chkstk_darwin(v13);
  v101 = &v91 - v14;
  __chkstk_darwin(v15);
  v102 = &v91 - v16;
  __chkstk_darwin(v17);
  v103 = &v91 - v18;
  __chkstk_darwin(v19);
  v104 = &v91 - v20;
  v110 = sub_100769C9C();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v108 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100016F40(0, &qword_100942F00);
  v23 = *(type metadata accessor for SearchResultsContextCardView.Style(0) + 36);
  v95 = a4;
  v24 = a4 + v23;
  v113 = a1;
  v25 = sub_100770B3C();
  v118 = type metadata accessor for DynamicTypeLinkedTextView();
  v26 = *(v24 + *(type metadata accessor for SearchResultsContextCardView.Style.Message(0) + 24));
  v27 = [objc_opt_self() labelColor];
  v28 = sub_10076081C();
  v29 = sub_10076082C();
  v119 = sub_100032368(v29, sub_100032360);

  v30 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v30 setAlignment:4];
  [v30 setLineBreakMode:v26];
  sub_10000A5D4(&unk_10094E7E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100784500;
  *(inited + 32) = NSParagraphStyleAttributeName;
  v32 = sub_100016F40(0, &unk_10095D790);
  *(inited + 40) = v30;
  *(inited + 64) = v32;
  *(inited + 72) = NSFontAttributeName;
  *(inited + 104) = v22;
  *(inited + 80) = v25;
  v33 = NSParagraphStyleAttributeName;
  v34 = v30;
  v35 = NSFontAttributeName;
  v36 = v25;
  v37 = sub_1000FC5F4(inited);
  swift_setDeallocating();
  sub_10000A5D4(&unk_100948B10);
  swift_arrayDestroy();
  v130 = sub_100016F40(0, &qword_100942F10);
  *&aBlock = v27;
  sub_10000CD64(&aBlock, &v124);
  v97 = v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v133 = v37;
  sub_10024A2F4(&v124, NSForegroundColorAttributeName, isUniquelyReferenced_nonNull_native);
  v134 = v133;

  sub_100016F40(0, &unk_10094E7F0);
  v117 = v36;
  v98 = v28;
  v39 = sub_10075F9DC();
  v40 = v134;

  v41.super.isa = v39;
  v42._rawValue = v40;
  isa = sub_10077079C(v41, v42).super.isa;
  v44 = v34;
  v45 = isa;
  v46 = [(objc_class *)v45 fullRange];
  [(objc_class *)v45 addAttribute:v33 value:v44 range:v46, v47];
  v96 = v44;

  v116 = swift_allocObject();
  *(v116 + 16) = 0;
  *&v124 = 0;
  v48 = *(v119 + 16);
  v121 = NSLinkAttributeName;
  if (v48)
  {
    v120 = NSUnderlineStyleAttributeName;
    v49 = v119 + 72;
    do
    {
      v50 = *(v49 - 24);
      v122 = *(v49 - 8);

      v123 = v50;

      v51 = v45;
      v52 = sub_100245D94(&v124, v45);
      v53 = sub_10076FF6C();
      v54 = [v52 rangeOfString:v53 options:4];
      v56 = v55;

      v45 = v51;
      if (v54 != sub_10075D75C())
      {
        v57 = sub_10076FF6C();
        [(objc_class *)v51 addAttribute:v121 value:v57 range:v54, v56];

        if (UIAccessibilityButtonShapesEnabled())
        {
          v58 = sub_1007703CC().super.super.isa;
          [(objc_class *)v51 addAttribute:v120 value:v58 range:v54, v56];
        }
      }

      v49 += 48;

      --v48;
    }

    while (v48);
  }

  v59 = [(objc_class *)v45 fullRange];
  v61 = v60;
  v62 = v45;
  v63 = swift_allocObject();
  v64 = v119;
  v63[2] = v118;
  v63[3] = v64;
  v65 = v117;
  v63[4] = v116;
  v63[5] = v65;
  v63[6] = &v134;
  v63[7] = v62;
  v66 = swift_allocObject();
  *(v66 + 16) = sub_1000F41BC;
  *(v66 + 24) = v63;
  v131 = sub_10000A6AC;
  v132 = v66;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v129 = sub_1002464A8;
  v130 = &unk_100888D08;
  v67 = _Block_copy(&aBlock);
  v68 = v65;

  [(objc_class *)v62 enumerateAttribute:v121 inRange:v59 options:v61 usingBlock:0, v67];
  _Block_release(v67);
  LOBYTE(v65) = swift_isEscapingClosureAtFileLocation();

  if (v65)
  {
    __break(1u);
  }

  else
  {
    v70 = [objc_allocWithZone(NSAttributedString) initWithAttributedString:v62];

    v71 = v124;

    v130 = sub_10076DA7C();
    v131 = &protocol witness table for LabelPlaceholder;
    sub_10000DB7C(&aBlock);
    v72 = v68;
    v73 = v70;
    v74 = v99;
    sub_10076D7EC();
    v75 = v100;
    sub_10076D7DC();
    v76 = *(v105 + 8);
    v77 = v106;
    v76(v74, v106);
    v78 = v101;
    sub_10076D73C();
    v76(v75, v77);
    v79 = v102;
    sub_10076D79C();
    v76(v78, v77);
    v80 = v103;
    sub_10076D78C();
    v76(v79, v77);
    sub_10076D7AC();
    v76(v80, v77);
    sub_10076DA5C();
    v81 = v73;
    sub_10076DAAC();

    if (v107)
    {
      v82 = v107;
      v83 = v92;
      sub_1000F1ADC(v82);
      v84 = type metadata accessor for ButtonPlaceholder();
      v85 = swift_allocObject();
      *(v85 + OBJC_IVAR____TtC20ProductPageExtension17ButtonPlaceholder____lazy_storage___button) = 0;
      (*(v93 + 32))(v85 + OBJC_IVAR____TtC20ProductPageExtension17ButtonPlaceholder_configuration, v83, v94);

      v86 = sub_1000F4340(&qword_100948960, type metadata accessor for ButtonPlaceholder);
    }

    else
    {
      v85 = 0;
      v84 = 0;
      v86 = 0;
      v125 = 0;
      *(&v124 + 1) = 0;
    }

    *&v124 = v85;
    v126 = v84;
    v127 = v86;
    sub_100769C6C();
    v87 = v108;
    sub_100769C8C();
    sub_1000F4340(&qword_100948958, &type metadata accessor for SearchResultsContextCardLayout);
    v88 = v112;
    v89 = v110;
    sub_10076D43C();
    swift_getOpaqueTypeConformance2();
    v90 = v115;
    sub_10076E0FC();

    (*(v114 + 8))(v88, v90);
    return (*(v109 + 8))(v87, v89);
  }

  return result;
}

uint64_t sub_1000F416C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000F41FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000F4214(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000F427C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000F42E4(uint64_t a1)
{
  v2 = type metadata accessor for SearchResultsContextCardView.Style(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F4340(unint64_t *a1, void (*a2)(uint64_t))
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