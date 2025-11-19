unint64_t sub_100043730(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_100043740(Swift::String a1)
{
  if (a1._countAndFlagsBits)
  {
    if (a1._object)
    {
      a1._object = 0x80000001007CEB90;
      a1._countAndFlagsBits = 0xD000000000000017;
      return sub_100769B9C(a1);
    }

    a1._object = 0x80000001007CEB90;
    v2._countAndFlagsBits = 0xD000000000000050;
    v2._object = 0x80000001007CEBB0;
    a1._countAndFlagsBits = 0xD000000000000017;
  }

  else
  {
    a1._countAndFlagsBits = 0xD00000000000001ALL;
    if (a1._object)
    {
      a1._object = 0x80000001007CEC10;
      return sub_100769B9C(a1);
    }

    a1._object = 0x80000001007CEC10;
    v2._countAndFlagsBits = 0;
    v2._object = 0xE000000000000000;
  }

  return sub_1007622EC(a1, v2);
}

void sub_1000437BC()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_useAdsLocale) = 0;
  v1 = OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_titleLabel;
  sub_1007626BC();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_leftLaurelView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_rightLaurelView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) init];
  sub_10077156C();
  __break(1u);
}

void sub_100043890(uint64_t a1, char a2, int a3, id a4, char a5, int a6, uint64_t a7)
{
  v13 = a6;
  v14 = [a4 traitCollection];
  if (v13 == 1)
  {
    v15 = v14;
    v16 = [v14 preferredContentSizeCategory];
    v17 = sub_10077084C();

    if (v17)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v18 = sub_1000400FC(a1);
  v19 = sub_1000403C8(a1);
  [v18 size];
  [v19 size];

LABEL_6:
  sub_10012CDBC(a2 & 1, a1, a5 & 1, a6, a4, a7);
}

void sub_100043A10(uint64_t a1, char a2, int a3, id a4, char a5, int a6, uint64_t a7)
{
  v13 = a6;
  v14 = [a4 traitCollection];
  if (v13 == 1)
  {
    v15 = v14;
    v16 = [v14 preferredContentSizeCategory];
    v17 = sub_10077084C();

    if (v17)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v18 = sub_1000400FC(a1);
  v19 = sub_1000403C8(a1);
  [v18 size];
  [v19 size];

LABEL_6:
  sub_100042918(a2 & 1, a1, a5 & 1, a6, a4, a7);
}

uint64_t sub_100043BA4(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_100043C04(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = *a1;
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();

  return sub_1002EFEE4(v9, v7, a6, ObjectType);
}

id sub_100043C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100761EDC();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;

    sub_1002F017C(v6, a3);
  }

  else
  {
    sub_10076C52C();
    v7 = swift_dynamicCastClass();
    if (!v7)
    {
      goto LABEL_6;
    }

    v8 = v7;

    sub_1002F0400(v8, a3);
  }

LABEL_6:

  return [v3 setNeedsLayout];
}

double sub_100043DE8(char a1)
{
  if ((a1 & 1) == 0)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_100043E98(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100043EE0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v8 = v7;
  v9 = [a4 traitCollection];
  v10 = [v9 preferredContentSizeCategory];
  v11 = sub_10077087C();

  if ((v11 & 1) == 0)
  {
    if (qword_100940640 != -1)
    {
      swift_once();
    }

    sub_1002ECDCC(&unk_10099FD58, a4);
    if (qword_10093F638 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
    v16 = sub_10000A61C(v15, qword_10099CCD0);
    sub_1001021F4(v16, a4);
    goto LABEL_28;
  }

  v12 = _swiftEmptyArrayStorage;
  v27 = _swiftEmptyArrayStorage;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = a1 + 32;
    do
    {
      sub_10000A570(v14, v26);
      sub_100012498(v26, v25);
      sub_10000A5D4(&qword_1009575A0);
      sub_10075F29C();
      if ((swift_dynamicCast() & 1) != 0 && v25[5])
      {
        sub_10077019C();
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();
        v12 = v27;
      }

      v14 += 40;
      --v13;
    }

    while (v13);
  }

  if (!(v12 >> 62))
  {
    v17 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_17;
    }

LABEL_27:

LABEL_28:
    v23 = objc_opt_self();
    PageTraitEnvironment.pageColumnWidth.getter();
    v24 = [v23 absoluteDimension:?];
    sub_1007665BC();

    return;
  }

  v17 = sub_10077158C();
  if (!v17)
  {
    goto LABEL_27;
  }

LABEL_17:
  if (v17 >= 1)
  {
    v18 = 0;
    v19 = 0.0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v20 = sub_10077149C();
      }

      else
      {
        v20 = *(v12 + 8 * v18 + 32);
      }

      ++v18;
      sub_1002EFEE4(v8, v20, a4, ObjectType);
      v22 = v21;

      if (v19 <= v22)
      {
        v19 = v22;
      }
    }

    while (v17 != v18);
    goto LABEL_27;
  }

  __break(1u);
}

BOOL sub_100044288()
{
  v1 = (*((swift_isaMask & *v0) + 0x160))();
  v2 = v1 == 0;
  if (!v1)
  {
    v3 = [v0 navigationController];
    if (!v3)
    {
      return 0;
    }

    v4 = v3;
    v5 = [v3 navigationBar];

    v1 = v5;
    if (!v5)
    {
      return 0;
    }
  }

  return v2;
}

uint64_t sub_100044348(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UberedPageScrollObserver();
  v5 = swift_allocObject();
  v6 = sub_1004F5268(v2, v5, a1, a2);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v7;
  v9 = *(v6 + 72);
  *(v6 + 72) = sub_100045394;
  *(v6 + 80) = v8;

  sub_1000167E0(v9);

  return v6;
}

void sub_100044420(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_1007604DC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &aBlock[-1] - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v18 = Strong, v19 = COERCE_DOUBLE((*((swift_isaMask & *Strong) + 0x1B8))()), v21 = v20, v18, (v21 & 1) != 0))
  {
    if (a4 == 1.79769313e308)
    {
      return;
    }

    goto LABEL_4;
  }

  if (v19 != a4)
  {
LABEL_4:
    sub_10076049C();
    sub_1007604BC();
    v23 = v22;
    v25 = v24;
    v26 = *(v11 + 8);
    v26(v16, v10);
    sub_10076049C();
    sub_1007604CC();
    v28 = v27;
    v30 = v29;
    v26(v13, v10);
    v31 = swift_allocObject();
    *(v31 + 16) = a2;
    *(v31 + 24) = a3;
    *(v31 + 32) = a1;
    *(v31 + 40) = a4;
    v32 = objc_allocWithZone(UIViewPropertyAnimator);
    aBlock[4] = sub_1000453D8;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009AEDC;
    aBlock[3] = &unk_100885218;
    v33 = _Block_copy(aBlock);

    v34 = [v32 initWithDuration:v33 controlPoint1:a5 controlPoint2:v23 animations:{v25, v28, v30}];
    _Block_release(v33);
    [v34 startAnimation];
  }
}

void sub_100044708(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    (*((swift_isaMask & *Strong) + 0x1C0))(*&a1, 0);
  }
}

uint64_t sub_1000447A8(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 16))();
  (*(a2 + 8))(a1, a2);
  sub_100045478();
  sub_10076668C();
}

void sub_100044838(uint64_t a1, uint64_t a2)
{
  if (sub_100044288())
  {
    v5 = *(a2 + 8);
    *(v5(a1, a2) + 88) = 1;

    v6 = [v2 transitionCoordinator];
    if (v6)
    {
      v7 = v6;
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v9 = swift_allocObject();
      v9[2] = a1;
      v9[3] = a2;
      v9[4] = v8;
      v20 = sub_10004544C;
      v21 = v9;
      aBlock = _NSConcreteStackBlock;
      v17 = 1107296256;
      v18 = sub_1006F5994;
      v19 = &unk_100885330;
      v10 = _Block_copy(&aBlock);

      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      v12[2] = a1;
      v12[3] = a2;
      v12[4] = v11;
      v20 = sub_10004546C;
      v21 = v12;
      aBlock = _NSConcreteStackBlock;
      v17 = 1107296256;
      v18 = sub_1006F5994;
      v19 = &unk_100885380;
      v13 = _Block_copy(&aBlock);

      [v7 animateAlongsideTransition:v10 completion:v13];
      _Block_release(v13);
      _Block_release(v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v5(a1, a2);
      v14 = [v2 collectionView];
      if (v14)
      {
        v15 = v14;
        sub_1004F3468(v14);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_100044ACC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
    if (v9)
    {
      v10 = v9;
      sub_10003F040();
      v11 = v8;
      v12 = sub_100770EEC();

      if (v12)
      {
        if ([a1 isCancelled])
        {
          (*(a4 + 8))(a3, a4);
          sub_1004F3B94();
        }
      }
    }
  }
}

void sub_100044BE0(uint64_t a1, uint64_t a2)
{
  v5 = [v2 presentedViewController];
  if (v5)
  {
  }

  else
  {
    if ((*(a2 + 24))(a1, a2))
    {
      (*(a2 + 8))(a1, a2);
      sub_1004F3B94();
    }

    else
    {
      v6 = [v2 transitionCoordinator];
      v7 = (*(a2 + 8))(a1, a2);
      if (v6)
      {
        v16 = sub_100045400;
        v17 = v7;
        v12 = _NSConcreteStackBlock;
        v13 = 1107296256;
        v14 = sub_1006F5994;
        v15 = &unk_100885290;
        v8 = _Block_copy(&v12);

        v9 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v10 = swift_allocObject();
        v10[2] = a1;
        v10[3] = a2;
        v10[4] = v9;
        v16 = sub_100045440;
        v17 = v10;
        v12 = _NSConcreteStackBlock;
        v13 = 1107296256;
        v14 = sub_1006F5994;
        v15 = &unk_1008852E0;
        v11 = _Block_copy(&v12);

        [v6 animateAlongsideTransition:v8 completion:v11];
        _Block_release(v11);
        _Block_release(v8);
        swift_unknownObjectRelease();
        return;
      }

      sub_1004F3B94();
    }
  }
}

void sub_100044E78(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3)
  {

    v3(v4, 1.0, 0.0);
    sub_1000167E0(v3);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong navigationController];

    if (v7)
    {
      v8 = [v7 navigationBar];

      [v8 _setTitleOpacity:1.0];
    }
  }

  *(a2 + 88) = 0;
}

void sub_100044F3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if ([a1 isCancelled])
    {
      v9 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
      if (v9)
      {
        v10 = v9;
        sub_10003F040();
        v11 = v8;
        v12 = sub_100770EEC();

        if ((v12 & 1) != 0 && sub_100044288())
        {
          (*(a4 + 8))(a3, a4);
          v13 = [v11 collectionView];
          if (!v13)
          {
            __break(1u);
            return;
          }

          v14 = v13;
          sub_1004F3468(v13);
        }
      }
    }
  }
}

void sub_10004507C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  v9[4] = sub_1000454F4;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1006F5994;
  v9[3] = &unk_100885268;
  v8 = _Block_copy(v9);

  [a1 animateAlongsideTransition:v8 completion:0];
  _Block_release(v8);
}

void sub_100045188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    (*(a4 + 8))(a3, a4);
    v8 = [v7 collectionView];
    if (v8)
    {
      v9 = v8;
      sub_1004F3468(v8);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100045240(char a1)
{
  v3 = (*((swift_isaMask & *v1) + 0xC0))((a1 & 8) == 0);
  if (a1 & 1) != 0 || (a1 & 2) != 0 && (v3 = (*((swift_isaMask & *v1) + 0x150))(v3), (v3))
  {
    v4 = (*((swift_isaMask & *v1) + 0xB8))(v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *((swift_isaMask & *v1) + 0x188);
  v6 = v4 & 1;

  return v5(v6);
}

uint64_t sub_10004535C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000453A0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000453E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100045408()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100045478()
{
  result = qword_100943788;
  if (!qword_100943788)
  {
    type metadata accessor for UberedPageScrollObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100943788);
  }

  return result;
}

uint64_t type metadata accessor for MSODiffablePageViewController()
{
  result = qword_1009437B8;
  if (!qword_1009437B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100045598()
{
  v1 = v0;
  v2 = sub_10076FD2C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10076F59C();
  v6 = *(v18 - 8);
  __chkstk_darwin(v18);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC20ProductPageExtension13BaseBootstrap_pendingMetricsLogger;
  v10 = sub_10076F4CC();
  swift_allocObject();
  *(v0 + v9) = sub_10076F4BC();
  v11 = OBJC_IVAR____TtC20ProductPageExtension13BaseBootstrap_diagnosticsRecorder;
  sub_10076832C();
  swift_allocObject();
  *(v0 + v11) = sub_10076831C();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension13BaseBootstrap_pendingEvents) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension13BaseBootstrap_inAppMessagesMetricsEventRecorder) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension13BaseBootstrap_isBootstrapping) = 0;
  sub_10000A5D4(&qword_100943F90);
  v12 = swift_allocObject();
  v13 = *(v1 + v9);
  *(v12 + 16) = xmmword_100784500;
  *(v12 + 56) = v10;
  *(v12 + 64) = &protocol witness table for ReplayLogger;
  *(v12 + 32) = v13;
  v14 = qword_1009412D0;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = sub_10000A61C(v2, qword_1009A25B8);
  (*(v3 + 16))(v5, v15, v2);
  *(v12 + 96) = sub_10076FD4C();
  *(v12 + 104) = &protocol witness table for OSLogger;
  sub_10000DB7C((v12 + 72));
  sub_10076FD3C();
  sub_10076F58C();
  (*(v6 + 32))(v1 + OBJC_IVAR____TtC20ProductPageExtension13BaseBootstrap_logger, v8, v18);
  return v1;
}

uint64_t sub_1000458D4(uint64_t a1)
{
  v19 = a1;
  v18 = sub_10076FA1C();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10076F3BC();
  v5 = *(v17 - 8);
  __chkstk_darwin(v17);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC20ProductPageExtension13BaseBootstrap_pendingEvents;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v11 = *(v1 + v8);
    if (v11 >> 62)
    {
      result = sub_10077158C();
      v12 = result;
      if (result)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
LABEL_5:
        if (v12 < 1)
        {
          __break(1u);
          return result;
        }

        v15 = v8;
        v16 = v1;
        v13 = (v5 + 8);

        v14 = 0;
        do
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            sub_10077149C();
          }

          else
          {
          }

          ++v14;
          sub_10076084C();
          sub_10076F9FC();
          sub_10076F67C();

          (*(v2 + 8))(v4, v18);
          (*v13)(v7, v17);
        }

        while (v12 != v14);

        v8 = v15;
        v1 = v16;
      }
    }

    *(v1 + v8) = _swiftEmptyArrayStorage;
  }

  result = sub_10077158C();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_100045B74@<X0>(uint64_t a1@<X8>)
{
  v19[2] = a1;
  v1 = sub_1007614AC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&qword_100943FA8);
  __chkstk_darwin(v5 - 8);
  v7 = v19 - v6;
  v8 = sub_10076FBAC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1007614EC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009407D8 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v8, qword_1009A0660);
  (*(v9 + 16))(v11, v16, v8);
  v17 = sub_10076257C();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  v19[6] = &type metadata for ModernAppStateControllerFactory;
  v19[7] = sub_100048D2C();
  (*(v2 + 104))(v4, enum case for ASKBootstrapV2.TargetType.app(_:), v1);
  sub_1007614BC();
  swift_allocObject();
  swift_weakInit();

  sub_1007614CC();

  (*(v13 + 8))(v15, v12);
}

uint64_t sub_100045ED4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10076FBBC();
  __chkstk_darwin(v2);
  v3 = sub_10076583C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076F5CC();
  sub_10076582C();
  v7 = type metadata accessor for InAppMessagesMetricsEventRecorder();
  v8 = swift_allocObject();
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 32) = sub_10076580C();
  *(v8 + 40) = v9;
  sub_1000167E0(0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC20ProductPageExtension13BaseBootstrap_inAppMessagesMetricsEventRecorder) = v8;
  }

  a1[3] = v7;
  a1[4] = sub_100048DC0(&qword_100943FF8, type metadata accessor for InAppMessagesMetricsEventRecorder);
  *a1 = v8;
  return (*(v4 + 8))(v6, v3);
}

void sub_1000460DC()
{
  v1 = sub_1007614EC();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v9[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + OBJC_IVAR____TtC20ProductPageExtension13BaseBootstrap_isBootstrapping) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC20ProductPageExtension13BaseBootstrap_isBootstrapping) = 1;
    (*(*v0 + 360))(v3);
    sub_100045B74(v5);
    sub_1007614DC();
    v6 = sub_100016F40(0, &qword_1009471F0);
    swift_retain_n();
    v7 = sub_10077068C();
    v9[3] = v6;
    v9[4] = &protocol witness table for OS_dispatch_queue;
    v9[0] = v7;
    sub_10076FC6C();

    sub_10000CD74(v9);
    sub_10075EABC();
    sub_10075EAAC();
    (*(v2 + 8))(v5, v1);
  }
}

void sub_1000462A0(uint64_t a1)
{
  sub_10076305C();
  sub_10076301C();
  v2 = OBJC_IVAR____TtC20ProductPageExtension13BaseBootstrap_pendingEvents;
  swift_beginAccess();
  sub_10077019C();
  if (*((*(a1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  swift_endAccess();
  sub_1000460DC();
}

uint64_t sub_100046368(uint64_t a1, uint64_t a2)
{
  sub_10004647C();
  v3 = (*(*a2 + 328))();
  sub_10076F5EC();
  sub_100761FCC();
  sub_10076F64C();
  sub_10076FC1C();
  sub_100047828(v3, v5);
}

uint64_t sub_10004647C()
{
  v53 = sub_10076F1BC();
  v47 = *(v53 - 8);
  v48 = (v53 - 8);
  v49 = v47;
  __chkstk_darwin(v53 - 8);
  v52 = &v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_100769BBC();
  v60 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10076A1AC();
  v59 = *(v54 - 8);
  __chkstk_darwin(v54);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076F51C();
  __chkstk_darwin(v5);
  v45 = sub_100760C4C();
  (*(*v0 + 176))();
  sub_100766D8C();
  sub_10076F5CC();
  v56 = sub_100760BBC();
  sub_100016F40(0, &qword_100943FB8);
  sub_100760C3C();
  sub_100048DC0(&qword_100943FC0, &type metadata accessor for MetricsLogger.Configuration);
  sub_10076FC0C();
  v44 = sub_100764B7C();
  swift_allocObject();
  v55 = sub_100764B8C();
  sub_100764B6C();
  sub_100764B5C();
  sub_10076148C();
  sub_10076F64C();
  sub_10076FC1C();
  v51 = v64;
  sub_1007612BC();
  v6 = sub_100016F40(0, &qword_100944EF0);
  sub_10076FC1C();
  v7 = v64;
  v8 = [objc_opt_self() sharedInstance];
  v65 = sub_100016F40(0, &qword_100943FC8);
  v66 = &protocol witness table for ASDSubscriptionEntitlements;
  v64 = v8;
  v62 = v6;
  v63 = &protocol witness table for ACAccountStore;
  v61 = v7;
  v42 = sub_100767E8C();
  v9 = objc_allocWithZone(v42);
  v50 = v7;
  v10 = sub_100767E1C();
  v11 = v4;
  v43 = v4;
  sub_10076A19C();
  sub_10000A5D4(&unk_10094A8C0);
  sub_10076FC1C();
  v46 = v64;
  v40 = v10;
  swift_unknownObjectRetain();
  v12 = v57;
  sub_100769BAC();
  sub_10000A5D4(&qword_100943FD0);
  v13 = (sub_10000A5D4(&qword_100948D60) - 8);
  v14 = (*(*v13 + 80) + 32) & ~*(*v13 + 80);
  v15 = swift_allocObject();
  v41 = xmmword_100783DD0;
  *(v15 + 16) = xmmword_100783DD0;
  v16 = v15 + v14;
  v17 = (v16 + v13[14]);
  sub_10076FB4C();
  v18 = v58;
  v17[3] = v58;
  v17[4] = sub_100048DC0(&qword_100943FD8, &type metadata accessor for ArcadeButtonNameFieldsProvider);
  v19 = sub_10000DB7C(v17);
  (*(v60 + 16))(v19, v12, v18);
  sub_1000FD010(v15);
  swift_setDeallocating();
  sub_10000CFBC(v16, &qword_100948D60);
  swift_deallocClassInstance();
  sub_10000A5D4(&qword_100943FE0);
  v20 = (sub_10000A5D4(&qword_100948D50) - 8);
  v21 = (*(*v20 + 80) + 32) & ~*(*v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v41;
  v23 = v22 + v21;
  v24 = (v23 + v20[14]);
  sub_10076FB0C();
  v25 = v54;
  v24[3] = v54;
  v24[4] = sub_100048DC0(&qword_100943FE8, &type metadata accessor for ArcadeSubscriptionFieldsProvider);
  v26 = sub_10000DB7C(v24);
  (*(v59 + 16))(v26, v11, v25);
  sub_1000FD200(v22);
  swift_setDeallocating();
  sub_10000CFBC(v23, &qword_100948D50);
  swift_deallocClassInstance();
  v27 = sub_10076F66C();

  v28 = [objc_allocWithZone(type metadata accessor for EventStoreManager()) init];
  *&v41 = v27;

  sub_10076F65C();
  sub_10000A5D4(&qword_10094F420);
  v29 = v49;
  v30 = swift_allocObject();
  v30[1] = xmmword_100785C70;
  v64 = v56;

  sub_10076F19C();
  sub_10075EC3C();
  v64 = sub_10075EC2C();
  sub_10076F19C();
  v64 = v55;

  sub_10076F19C();
  v64 = v40;
  v45 = v40;
  sub_10076F19C();
  v64 = v28;
  v48 = v28;
  sub_10076F19C();
  v64 = v30;
  sub_10000A5D4(&qword_100943F98);
  sub_100048C98(&qword_100943FA0, &qword_100943F98);
  sub_10076F61C();

  sub_10076F5EC();
  v64 = [objc_allocWithZone(sub_100767BFC()) init];
  v47 = v64;
  v31 = v52;
  sub_10076F19C();
  sub_10076F60C();

  v32 = v29[1];
  v33 = v53;
  v32(v31, v53);
  sub_10075F3FC();
  swift_allocObject();
  v34 = v45;

  v64 = sub_10075F3BC();

  sub_10076F19C();
  sub_10076F60C();

  v32(v31, v33);
  v35 = objc_allocWithZone(sub_10075EEFC());

  v64 = sub_10075EEEC();
  v36 = v64;
  sub_10076F19C();
  v37 = sub_10076F60C();

  swift_unknownObjectRelease();

  v32(v31, v33);
  (*(v60 + 8))(v57, v58);
  (*(v59 + 8))(v43, v54);
  return v37;
}

uint64_t sub_10004703C(uint64_t a1)
{
  v2 = sub_10076F08C();
  v13 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076F0CC();
  v5 = *(v12 - 8);
  __chkstk_darwin(v12);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016F40(0, &qword_1009471F0);
  v8 = sub_10077068C();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  aBlock[4] = sub_100048D24;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_100885420;
  v10 = _Block_copy(aBlock);
  swift_errorRetain();

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100048DC0(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0);
  sub_100048C98(&qword_100945170, &unk_10094E1C0);
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v10);

  (*(v13 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v12);
}

uint64_t sub_100047320()
{
  type metadata accessor for DebugNotificationCenter();
  inited = swift_initStaticObject();
  swift_getErrorValue();
  v1 = sub_1007716EC();
  v3 = v2;
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = sub_10072F844();

  if (v5)
  {
    sub_1005FCF70();
    v6 = *(inited + 24);
    if (v6)
    {
      sub_100016F40(0, &qword_100942F10);
      v7 = v6;
      isa = sub_100770E4C(1.0, 0.23137, 0.18824, 0.5).super.isa;
      sub_1005FCA1C(v1, v3, isa, 0, 0, 3.0);
    }
  }
}

uint64_t sub_100047454(uint64_t a1)
{
  v2 = sub_10076F08C();
  v19 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076F0CC();
  v17 = *(v5 - 8);
  v18 = v5;
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076F1FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100016F40(0, &qword_1009471F0);
  v11 = sub_10077068C();
  (*(v9 + 16))(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  aBlock[4] = sub_100048C20;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_1008853D0;
  v14 = _Block_copy(aBlock);

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100048DC0(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0);
  sub_100048C98(&qword_100945170, &unk_10094E1C0);
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v14);

  (*(v19 + 8))(v4, v2);
  return (*(v17 + 8))(v7, v18);
}

uint64_t sub_1000477E8(uint64_t a1)
{
  type metadata accessor for DebugNotificationCenter();
  swift_initStaticObject();
  return sub_1005FAA1C(a1);
}

uint64_t sub_100047828(uint64_t a1, void *a2)
{
  v39 = a2;
  v35 = a1;
  v3 = sub_10076FA6C();
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&qword_100943FA8);
  __chkstk_darwin(v5 - 8);
  v40 = &v31 - v6;
  v37 = sub_10076FBBC();
  __chkstk_darwin(v37);
  v38 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10075DD7C();
  v8 = *(v36 - 8);
  __chkstk_darwin(v36);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076F68C();
  v41 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  sub_10076148C();
  sub_10076F64C();
  sub_10076FC1C();
  v17 = v42;
  v18 = v2;
  swift_unknownObjectWeakLoadStrong();
  sub_100761FBC();
  sub_10076925C();
  v19 = sub_10076924C();
  sub_10076133C();
  sub_10076923C();

  v20 = [objc_opt_self() standardUserDefaults];
  v39 = v17;
  v21 = sub_1007612EC();
  v22 = sub_10076FF6C();
  [v20 setBool:v21 & 1 forKey:v22];

  v23 = v18;
  v24 = v35;

  sub_10076FC1C();
  sub_1000458D4(v16);
  sub_100766B2C();
  sub_10075DD6C();
  sub_10075DD4C();
  (*(v8 + 8))(v10, v36);
  sub_100766B1C();
  (*(v41 + 16))(v13, v16, v11);
  sub_100768C2C();
  swift_allocObject();
  sub_100768C0C();
  sub_100767E8C();
  sub_10076FC1C();
  v25 = v42;
  swift_retain_n();
  sub_100767DFC();

  sub_100765D7C();
  sub_10076F63C();
  v26 = v42;
  if (v42)
  {
    sub_100765D6C();
  }

  sub_100764CAC();
  sub_10076FC1C();
  v27 = sub_10076257C();
  (*(*(v27 - 8) + 56))(v40, 1, 1, v27);
  sub_10000A5D4(&qword_100943FB0);
  sub_10076FC1C();
  v28 = sub_100764C9C();
  (*(*v23 + 368))(v24, v28);
  sub_1007612FC();
  sub_10075EC5C();

  sub_10076FA8C();
  sub_10076F63C();
  if (v42)
  {

    v29 = v32;
    sub_10076FA5C();
    sub_10076FA7C();

    (*(v33 + 8))(v29, v34);
    result = (*(v41 + 8))(v16, v11);
  }

  else
  {
    (*(v41 + 8))(v16, v11);
  }

  *(v23 + OBJC_IVAR____TtC20ProductPageExtension13BaseBootstrap_isBootstrapping) = 0;
  return result;
}

uint64_t sub_100047EC8(uint64_t a1)
{
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  swift_getErrorValue();
  v7[3] = v6;
  v3 = sub_10000DB7C(v7);
  (*(*(v6 - 8) + 16))(v3);
  sub_10076F30C();
  sub_10000CFBC(v7, &unk_1009434C0);
  sub_10076F59C();
  sub_10076FBEC();

  sub_100762A0C();
  swift_allocObject();
  swift_errorRetain();
  sub_1007629FC();
  v4 = OBJC_IVAR____TtC20ProductPageExtension13BaseBootstrap_pendingEvents;
  swift_beginAccess();
  sub_10077019C();
  if (*((*(v1 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  swift_endAccess();
  sub_10075EC4C();
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension13BaseBootstrap_isBootstrapping) = 0;
  return (*(*v1 + 376))(a1);
}

uint64_t sub_100048158(uint64_t a1)
{
  v3 = sub_10076FBBC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076F1BC();
  v8 = *(v7 - 8);
  v49 = v7;
  v50 = v8;
  __chkstk_darwin(v7);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v47 = &v44 - v11;
  __chkstk_darwin(v12);
  v46 = &v44 - v13;
  __chkstk_darwin(v14);
  v16 = &v44 - v15;
  v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension13BaseBootstrap_inAppMessagesMetricsEventRecorder];
  v51 = a1;
  if (v17)
  {
    v18 = *(*v1 + 144);

    v45 = v1;
    v20 = v18(v19);
    type metadata accessor for InAppMessagesManager();
    swift_allocObject();

    v22 = sub_100342370(v21, v20, v17);

    v52 = v22;

    sub_10076F19C();
    v23 = sub_10049DC98(0, 1, 1, _swiftEmptyArrayStorage);
    v25 = v23[2];
    v24 = v23[3];
    if (v25 >= v24 >> 1)
    {
      v23 = sub_10049DC98(v24 > 1, v25 + 1, 1, v23);
    }

    v26 = v49;

    v23[2] = v25 + 1;
    (*(v50 + 32))(v23 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v25, v16, v26);
    v1 = v45;
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
    v26 = v49;
  }

  sub_10076F64C();
  sub_10076FC1C();
  v27 = (*(*v1 + 272))(v6);
  (*(v4 + 8))(v6, v3);
  if (v27)
  {
    sub_100765D7C();
    v52 = v27;
    v28 = v27;
    v29 = v46;
    sub_10076F19C();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_10049DC98(0, v23[2] + 1, 1, v23);
    }

    v31 = v23[2];
    v30 = v23[3];
    if (v31 >= v30 >> 1)
    {
      v23 = sub_10049DC98(v30 > 1, v31 + 1, 1, v23);
    }

    v23[2] = v31 + 1;
    v32 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v33 = *(v50 + 72);
    v46 = *(v50 + 32);
    (v46)(v23 + v32 + v33 * v31, v29, v26);
    v34 = sub_100765D5C();
    if (v34)
    {
      v35 = v34;
      v45 = v28;
      sub_100767C9C();
      swift_allocObject();

      v36 = v35;
      v52 = sub_100767C1C();

      sub_10076F19C();
      v38 = v23[2];
      v37 = v23[3];
      if (v38 >= v37 >> 1)
      {
        v23 = sub_10049DC98(v37 > 1, v38 + 1, 1, v23);
      }

      v26 = v49;

      v23[2] = v38 + 1;
      (v46)(v23 + v32 + v38 * v33, v47, v26);
    }

    else
    {
    }
  }

  sub_100016F40(0, &qword_100944EF0);
  sub_10076FC1C();
  sub_10076148C();
  sub_10076FC1C();
  sub_100762F3C();
  swift_allocObject();
  v52 = sub_100762F1C();

  v39 = v48;
  sub_10076F19C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_10049DC98(0, v23[2] + 1, 1, v23);
  }

  v41 = v23[2];
  v40 = v23[3];
  if (v41 >= v40 >> 1)
  {
    v23 = sub_10049DC98(v40 > 1, v41 + 1, 1, v23);
  }

  v23[2] = v41 + 1;
  (*(v50 + 32))(v23 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v41, v39, v26);
  v52 = v23;
  sub_10000A5D4(&qword_100943F98);
  sub_100048C98(&qword_100943FA0, &qword_100943F98);
  v42 = sub_10076F61C();

  return v42;
}

void sub_100048824()
{
  sub_10077145C(43);

  v0._countAndFlagsBits = sub_10077146C();
  sub_1007700CC(v0);

  v1._countAndFlagsBits = 0xD000000000000017;
  v1._object = 0x80000001007CEEA0;
  sub_1007700CC(v1);
  v2._countAndFlagsBits = sub_1007717CC();
  sub_1007700CC(v2);

  sub_10077156C();
  __break(1u);
}

uint64_t sub_100048984()
{
  sub_10000CC8C(v0 + 16);
  v1 = OBJC_IVAR____TtC20ProductPageExtension13BaseBootstrap_logger;
  v2 = sub_10076F59C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BaseBootstrap()
{
  result = qword_100943DE0;
  if (!qword_100943DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100048ABC()
{
  result = sub_10076F59C();
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

uint64_t sub_100048B98()
{
  v1 = sub_10076F1FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100048C20()
{
  v1 = *(sub_10076F1FC() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1000477E8(v2);
}

uint64_t sub_100048C80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100048C98(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000CE78(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100048CEC()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100048D2C()
{
  result = qword_100943FF0;
  if (!qword_100943FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100943FF0);
  }

  return result;
}

uint64_t sub_100048D80()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100048DC0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100048E10()
{
  result = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.5 controlPoint2:{0.0, 1.0, 1.0}];
  qword_100944000 = result;
  return result;
}

id sub_100048E54()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:350.0 damping:38.0 initialVelocity:{0.0, 0.0}];
  qword_100944008 = result;
  return result;
}

void sub_100048F40()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton_selectedBackgroundView];
  v7.receiver = v0;
  v7.super_class = ObjectType;
  [v2 setHidden:{objc_msgSendSuper2(&v7, "isSelected") ^ 1}];
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton_titleLabel];
  v6.receiver = v0;
  v6.super_class = ObjectType;
  if (objc_msgSendSuper2(&v6, "isSelected"))
  {
    v4 = [objc_opt_self() systemWhiteColor];
  }

  else
  {
    sub_100016F40(0, &qword_100942F10);
    v4 = sub_100770CFC();
  }

  v5 = v4;
  [v3 setTextColor:v4];
}

id sub_100049038(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v5, *a3);
}

id sub_1000490CC(char a1)
{
  ObjectType = swift_getObjectType();
  v11.receiver = v1;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, "setEnabled:", a1 & 1);
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton_titleLabel];
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
  v6 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton_artworkView];
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

uint64_t sub_1000491A4@<X0>(uint64_t *a1@<X8>)
{
  v37 = a1;
  v2 = sub_10076DFEC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v34 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v31 = &v30 - v6;
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v36 = sub_10076D8DC();
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v32 = &v30 - v16;
  sub_10076D8AC();
  v30 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton_artworkView);
  v17 = v30;
  v48 = sub_10075FD2C();
  v49 = sub_100049EA4();
  v47[0] = v17;
  *(v12 + 3) = &type metadata for CGFloat;
  *(v12 + 4) = &protocol witness table for CGFloat;
  *v12 = 0x4046000000000000;
  v18 = enum case for Resize.Rule.replaced(_:);
  v19 = *(v3 + 104);
  v19(v12, enum case for Resize.Rule.replaced(_:), v2);
  *(v9 + 3) = &type metadata for CGFloat;
  *(v9 + 4) = &protocol witness table for CGFloat;
  *v9 = 0x4046000000000000;
  v19(v9, v18, v2);
  v20 = enum case for Resize.Rule.unchanged(_:);
  v19(v31, enum case for Resize.Rule.unchanged(_:), v2);
  v19(v34, v20, v2);
  v51 = sub_10076DFFC();
  v52 = &protocol witness table for Resize;
  sub_10000DB7C(v50);
  v21 = v30;
  sub_10076E00C();
  v22 = v32;
  sub_10076D8BC();
  v23 = *(v35 + 8);
  v24 = v36;
  v23(v14, v36);
  sub_10000CD74(v50);
  v25 = *(v33 + OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton_titleLabel);
  v48 = sub_1007626BC();
  v49 = &protocol witness table for UILabel;
  v47[0] = v25;
  v51 = v24;
  v52 = &protocol witness table for HorizontalStack;
  sub_10000DB7C(v50);
  v26 = v25;
  sub_10076D8BC();
  v23(v22, v24);
  sub_10000CD74(v47);
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
  v27 = sub_10076E04C();
  v28 = v37;
  v37[3] = v27;
  v28[4] = &protocol witness table for Margins;
  sub_10000DB7C(v28);
  return sub_10076E05C();
}

id sub_10004972C()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  sub_1000491A4(v7);
  sub_10000CF78(v7, v7[3]);
  sub_10076422C();
  v2 = [v0 traitCollection];
  sub_10076E0EC();

  sub_10000CD74(v7);
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton_shadowView];
  [v1 bounds];
  [v3 setFrame:?];
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton_backgroundView];
  [v1 bounds];
  [v4 setFrame:?];
  v5 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton_selectedBackgroundView];
  [v4 bounds];
  return [v5 setFrame:?];
}

void sub_100049A2C(void *a1)
{
  ObjectType = swift_getObjectType();
  if (qword_10093F508 != -1)
  {
    swift_once();
  }

  v3 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_100944000 timingParameters:0.08];
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = ObjectType;
  v7[4] = sub_10004AEC4;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10009AEDC;
  v7[3] = &unk_1008854E8;
  v5 = _Block_copy(v7);
  v6 = a1;

  [v3 addAnimations:v5];
  _Block_release(v5);
  [v3 startAnimation];
}

double sub_100049DEC()
{
  sub_1000491A4(v3);
  sub_10000CF78(v3, v3[3]);
  sub_10076E0FC();
  v1 = v0;
  sub_10000CD74(v3);
  return v1;
}

unint64_t sub_100049EA4()
{
  result = qword_10094B250;
  if (!qword_10094B250)
  {
    sub_10075FD2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094B250);
  }

  return result;
}

char *sub_100049F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v82 = a2;
  v83 = a3;
  v91 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_10075FEEC();
  v88 = *(v5 - 8);
  v89 = v5;
  __chkstk_darwin(v5);
  v87 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&qword_1009473D0);
  __chkstk_darwin(v7 - 8);
  v86 = &v80 - v8;
  v9 = sub_10076F9AC();
  v84 = *(v9 - 8);
  v85 = v9;
  __chkstk_darwin(v9);
  v81 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076771C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v15 - 8);
  v17 = &v80 - v16;
  v18 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton_titleLabel;
  *v17 = UIFontTextStyleSubheadline;
  *(v17 + 1) = UIFontWeightSemibold;
  v19 = enum case for FontUseCase.preferredFontDerivative(_:);
  v20 = sub_10076D3DC();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v17, v19, v20);
  (*(v21 + 56))(v17, 0, 1, v20);
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v22 = objc_allocWithZone(sub_1007626BC());
  v23 = UIFontTextStyleSubheadline;
  *&v4[v18] = sub_1007626AC();
  v24 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton_shadowView;
  sub_10075F99C();
  *&v4[v24] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v25 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton_artworkView;
  sub_10075FD2C();
  *&v4[v25] = sub_10075FB3C();
  v26 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton_backgroundView;
  sub_10076394C();
  *&v4[v26] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v27 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton_selectedBackgroundView;
  *&v4[v27] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v28 = &v4[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton_action];
  v29 = v83;
  *v28 = v82;
  *(v28 + 1) = v29;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton_category] = v91;
  v95.receiver = v4;
  v95.super_class = ObjectType;

  v30 = objc_msgSendSuper2(&v95, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);

  v31 = sub_1007685FC();
  v33 = v32;

  v94 = &type metadata for String;
  v93[0] = v31;
  v93[1] = v33;
  memset(v92, 0, sizeof(v92));
  v34 = v81;
  sub_10076F99C();
  sub_1000258C0(v92);
  sub_1000258C0(v93);
  sub_100770B9C();
  (*(v84 + 8))(v34, v85);
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v35 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton_shadowView;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton_shadowView]];
  v36 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton_backgroundView;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton_backgroundView]];
  v37 = *&v30[v36];
  v84 = v36;
  v85 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton_selectedBackgroundView;
  [v37 addSubview:*&v30[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton_selectedBackgroundView]];
  v38 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton_artworkView;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton_artworkView]];
  v39 = *&v30[v38];
  v40 = objc_opt_self();
  v41 = v39;
  v42 = [v40 clearColor];
  sub_10075FBCC();

  v83 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton_titleLabel;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton_titleLabel]];
  v43 = qword_10093F900;
  v44 = *&v30[v35];
  if (v43 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v45 = sub_10076BCFC();
    v46 = sub_10000A61C(v45, qword_10099D5A0);
    v47 = *(v45 - 8);
    v48 = v86;
    (*(v47 + 16))(v86, v46, v45);
    (*(v47 + 56))(v48, 0, 1, v45);
    sub_10075F97C();

    v49 = *&v30[v35];
    v50 = enum case for CornerStyle.continuous(_:);
    v51 = v87;
    v52 = v88;
    v86 = *(v88 + 104);
    v53 = v89;
    (v86)(v87, enum case for CornerStyle.continuous(_:), v89);
    v54 = v49;
    sub_10075F98C();

    v55 = *(v52 + 8);
    v55(v51, v53);
    v56 = v84;
    v57 = *&v30[v84];
    v88 = sub_100016F40(0, &qword_100942F10);
    v58 = v57;
    v59 = sub_100770DBC();
    [v58 setBackgroundColor:v59];

    v60 = *&v30[v56];
    (v86)(v51, v50, v53);
    v61 = v60;
    sub_1007638AC();

    v55(v51, v53);
    v62 = v83;
    v63 = *&v30[v83];
    sub_10076860C();
    v64 = sub_10076FF6C();

    [v63 setText:v64];

    v65 = *&v30[v62];
    v66 = sub_100770CFC();
    [v65 setTextColor:v66];

    v67 = v85;
    [*&v30[v85] setHidden:1];
    v68 = *&v30[v67];
    sub_10000A5D4(&unk_100942870);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_100785D70;
    v70 = v68;
    *(v69 + 32) = sub_1007685EC();
    *(v69 + 40) = sub_1007685CC();
    *&v70[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = v69;

    sub_1001C05B8();

    v71 = [v30 subviews];
    sub_100016F40(0, &qword_1009441F0);
    v72 = sub_1007701BC();

    if (v72 >> 62)
    {
      break;
    }

    v44 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
        v73 = sub_10077149C();
      }

      else
      {
        if (v35 >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
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

  v44 = sub_10077158C();
  if (v44)
  {
    goto LABEL_4;
  }

LABEL_16:

  v76 = v30;
  [v76 addTarget:v76 action:"didTap" forControlEvents:64];
  [v76 addTarget:v76 action:"didPress:" forControlEvents:1];

  [v76 addTarget:v76 action:"didRelease:" forControlEvents:480];
  sub_10000A5D4(&unk_100945BF0);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_100783DD0;
  *(v77 + 32) = sub_10076E88C();
  *(v77 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v94 = ObjectType;
  v93[0] = v76;
  v78 = v76;
  sub_100770C5C();
  swift_unknownObjectRelease();

  sub_10000CD74(v93);
  return v78;
}

void sub_10004A9E4()
{
  v1 = v0;
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton_titleLabel;
  *v8 = UIFontTextStyleSubheadline;
  *(v8 + 1) = UIFontWeightSemibold;
  v10 = enum case for FontUseCase.preferredFontDerivative(_:);
  v11 = sub_10076D3DC();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v8, v10, v11);
  (*(v12 + 56))(v8, 0, 1, v11);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  objc_allocWithZone(sub_1007626BC());
  v13 = UIFontTextStyleSubheadline;
  *(v1 + v9) = sub_1007626AC();
  v14 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton_shadowView;
  sub_10075F99C();
  *(v1 + v14) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton_artworkView;
  sub_10075FD2C();
  *(v1 + v15) = sub_10075FB3C();
  v16 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton_backgroundView;
  sub_10076394C();
  *(v1 + v16) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton_selectedBackgroundView;
  *(v1 + v17) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  sub_10077156C();
  __break(1u);
}

void sub_10004ACB4(void *a1)
{
  if (qword_10093F510 != -1)
  {
    swift_once();
  }

  v2 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_100944008 timingParameters:0.5];
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_10004AE34;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10009AEDC;
  v6[3] = &unk_100885498;
  v4 = _Block_copy(v6);
  v5 = a1;

  [v2 addAnimations:v4];
  _Block_release(v4);
  [v2 startAnimation];
}

uint64_t sub_10004ADFC()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10004AE34()
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

uint64_t sub_10004AE74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004AE8C()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10004AF04(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, void *a6)
{
  if (v6[OBJC_IVAR____TtC20ProductPageExtension32UpsellBreakoutCollectionViewCell_shouldApplyBreakoutData] == 1)
  {
    v6[OBJC_IVAR____TtC20ProductPageExtension32UpsellBreakoutCollectionViewCell_shouldApplyBreakoutData] = 0;
    sub_1001A69F8(*a1, a4, a3, a6);
  }

  return [v6 setNeedsLayout];
}

uint64_t sub_10004AF7C()
{
  result = sub_100761C2C();
  if (result)
  {

    return 3;
  }

  return result;
}

uint64_t sub_10004B054(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v40 = a2;
  v3 = sub_10076C38C();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v35 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v31 - v6;
  v8 = sub_10076341C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_1009428D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  v18 = OBJC_IVAR____TtC20ProductPageExtension32UpsellBreakoutCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  v38 = v2;
  sub_10004B630(v2 + v18, v17);
  v19 = v9[6];
  if (v19(v17, 1, v8))
  {
    sub_10000DBE0(v17);
LABEL_6:
    [v38 bounds];
    v25 = v39;
    return sub_1001A63F8(v25, v40);
  }

  v33 = v7;
  v34 = v14;
  v20 = v8;
  v32 = v9[2];
  v32(v11, v17, v8);
  sub_10000DBE0(v17);
  swift_getKeyPath();
  sub_10076338C();

  v31 = v9[1];
  v31(v11, v8);
  v21 = v41;
  v22 = [v41 horizontalSizeClass];

  if (v22 != 2)
  {
    goto LABEL_6;
  }

  v23 = v38;
  v24 = v34;
  sub_10004B630(v38 + v18, v34);
  if (v19(v24, 1, v20))
  {
    sub_10000DBE0(v24);
    [v23 bounds];
    CGRectGetWidth(v42);
  }

  else
  {
    v32(v11, v24, v20);
    sub_10000DBE0(v24);
    swift_getKeyPath();
    v27 = v35;
    sub_10076338C();

    v31(v11, v20);
    v29 = v36;
    v28 = v37;
    v30 = v33;
    (*(v36 + 32))(v33, v27, v37);
    sub_10076C24C();
    sub_10076C26C();
    (*(v29 + 8))(v30, v28);
  }

  [v23 bounds];
  CGRectGetHeight(v43);
  v25 = v39;
  return sub_1001A63F8(v25, v40);
}

void sub_10004B4A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension32UpsellBreakoutCollectionViewCell_upsellBreakoutView);
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_artworkView);
  sub_10075FD2C();
  sub_10004B9B4(&qword_100941820, &type metadata accessor for ArtworkView);
  v3 = v2;
  sub_100760BFC();

  v4 = *(*(*(v1 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  if (v4)
  {
    type metadata accessor for VideoView();
    if (swift_dynamicCastClass())
    {
      sub_10004B9B4(&unk_100942840, type metadata accessor for VideoView);
      v5 = v4;
      sub_100760BFC();
    }
  }
}

uint64_t sub_10004B630(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_1009428D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_10004B6A8(double a1, uint64_t a2, void *a3)
{
  v5 = sub_100765AEC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10047CBA8(a3, v8, a1);
  sub_100765B0C();
  sub_10004B9B4(&qword_10094C050, &type metadata accessor for UpsellBreakoutLayout);
  sub_10076DBDC();
  v10 = v9;
  (*(v6 + 8))(v8, v5);
  v11 = objc_opt_self();
  v12 = [v11 fractionalWidthDimension:1.0];
  v13 = [v11 absoluteDimension:v10];
  v14 = objc_opt_self();
  v15 = [v14 sizeWithWidthDimension:v12 heightDimension:v13];

  v16 = [objc_opt_self() itemWithLayoutSize:v15];
  v17 = objc_opt_self();
  v18 = [v11 fractionalWidthDimension:1.0];
  v19 = [v11 absoluteDimension:v10];
  v20 = [v14 sizeWithWidthDimension:v18 heightDimension:v19];

  sub_10000A5D4(&unk_100942870);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1007841E0;
  *(v21 + 32) = v16;
  sub_10004B9FC();
  v22 = v16;
  isa = sub_1007701AC().super.isa;

  v24 = [v17 horizontalGroupWithLayoutSize:v20 subitems:isa];

  return v24;
}

uint64_t sub_10004B9B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10004B9FC()
{
  result = qword_100952C70;
  if (!qword_100952C70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100952C70);
  }

  return result;
}

char *sub_10004BA48(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10076771C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v14 - 8);
  v16 = &v34 - v15;
  v17 = OBJC_IVAR____TtC20ProductPageExtension15BundleChildView_icon;
  sub_10075FD2C();
  *&v4[v17] = sub_10075FB3C();
  v18 = OBJC_IVAR____TtC20ProductPageExtension15BundleChildView_titleLabel;
  if (qword_100940FC8 != -1)
  {
    swift_once();
  }

  v19 = sub_10076D3DC();
  v20 = sub_10000A61C(v19, qword_1009A1D50);
  v21 = *(v19 - 8);
  (*(v21 + 16))(v16, v20, v19);
  (*(v21 + 56))(v16, 0, 1, v19);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v22 = objc_allocWithZone(sub_1007626BC());
  *&v5[v18] = sub_1007626AC();
  v5[OBJC_IVAR____TtC20ProductPageExtension15BundleChildView_titleStyle] = 0;
  v23 = type metadata accessor for BundleChildView();
  v34.receiver = v5;
  v34.super_class = v23;
  v24 = objc_msgSendSuper2(&v34, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v28 = v24;
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v29 = OBJC_IVAR____TtC20ProductPageExtension15BundleChildView_titleLabel;
  [*&v28[OBJC_IVAR____TtC20ProductPageExtension15BundleChildView_titleLabel] setTextAlignment:1];
  v30 = *&v28[v29];
  sub_100016F40(0, &qword_100942F10);
  v31 = v30;
  v32 = sub_100770D1C();
  [v31 setTextColor:v32];

  [v28 addSubview:*&v28[OBJC_IVAR____TtC20ProductPageExtension15BundleChildView_icon]];
  [v28 addSubview:*&v28[v29]];

  return v28;
}

id sub_10004BDF0()
{
  v1 = v0;
  v2 = sub_10076BF6C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v39[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v39[-1] - v7;
  __chkstk_darwin(v9);
  v11 = &v39[-1] - v10;
  v12 = type metadata accessor for BundleChildView();
  v40.receiver = v0;
  v40.super_class = v12;
  objc_msgSendSuper2(&v40, "layoutSubviews");
  v13 = [v0 traitCollection];
  v14 = sub_10076C04C();
  v39[3] = v14;
  v39[4] = sub_10004C7BC();
  v15 = sub_10000DB7C(v39);
  (*(*(v14 - 8) + 104))(v15, enum case for Feature.voyager_bundles_2025A(_:), v14);
  LOBYTE(v14) = sub_10076C90C();
  sub_10000CD74(v39);
  if (v14)
  {
    v16 = sub_1007706EC();

    if (v16)
    {
      v17 = 32.0;
    }

    else
    {
      v17 = 62.0;
    }
  }

  else
  {

    v17 = 62.0;
  }

  sub_10075FCBC();
  (*(v3 + 104))(v5, enum case for Artwork.Style.roundedRect(_:), v2);
  sub_10076BF2C();
  v18 = *(v3 + 8);
  v18(v5, v2);
  v18(v8, v2);
  sub_10076BF1C();
  v20 = v19;
  v18(v11, v2);
  sub_10076422C();
  MinX = CGRectGetMinX(v41);
  sub_10076422C();
  MinY = CGRectGetMinY(v42);
  sub_10075FC8C();
  v23 = *&v1[OBJC_IVAR____TtC20ProductPageExtension15BundleChildView_titleLabel];
  [v23 firstBaselineFromTop];
  v25 = v1[OBJC_IVAR____TtC20ProductPageExtension15BundleChildView_titleStyle];
  if (v25 == 2)
  {
    return [v23 setFrame:{0.0, 0.0, 0.0, 0.0}];
  }

  v27 = 18.0 - v24;
  sub_10076422C();
  [v23 sizeThatFits:{v28, v29}];
  if (v25)
  {
    v32 = v30;
    v43.origin.x = MinX;
    v43.origin.y = MinY;
    v43.size.width = v17;
    v43.size.height = v20;
    MaxX = CGRectGetMaxX(v43);
    v44.origin.x = MinX;
    v44.origin.y = MinY;
    v44.size.width = v17;
    v44.size.height = v20;
    v34 = CGRectGetMinY(v44);
    if (v32 > 80.0)
    {
      v32 = 80.0;
    }

    v45.origin.x = MinX;
    v45.origin.y = MinY;
    v45.size.width = v17;
    v45.size.height = v20;
    return [v23 setFrame:{v27 + MaxX, v34, v32, CGRectGetHeight(v45)}];
  }

  else
  {
    v35 = v31;
    sub_10076422C();
    v36 = CGRectGetMinX(v46);
    v47.origin.x = MinX;
    v47.origin.y = MinY;
    v47.size.width = v17;
    v47.size.height = v20;
    v37 = v27 + CGRectGetMaxY(v47);
    v48.origin.x = MinX;
    v48.origin.y = MinY;
    v48.size.width = v17;
    v48.size.height = v20;
    return [v23 setFrame:{v36, v37, CGRectGetWidth(v48), v35}];
  }
}

id sub_10004C2B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BundleChildView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10004C36C()
{
  result = qword_100944198;
  if (!qword_100944198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944198);
  }

  return result;
}

void sub_10004C3C0()
{
  v1 = v0;
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR____TtC20ProductPageExtension15BundleChildView_icon;
  sub_10075FD2C();
  *(v0 + v9) = sub_10075FB3C();
  v10 = OBJC_IVAR____TtC20ProductPageExtension15BundleChildView_titleLabel;
  if (qword_100940FC8 != -1)
  {
    swift_once();
  }

  v11 = sub_10076D3DC();
  v12 = sub_10000A61C(v11, qword_1009A1D50);
  v13 = *(v11 - 8);
  (*(v13 + 16))(v8, v12, v11);
  (*(v13 + 56))(v8, 0, 1, v11);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v14 = objc_allocWithZone(sub_1007626BC());
  *(v1 + v10) = sub_1007626AC();
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension15BundleChildView_titleStyle) = 0;
  sub_10077156C();
  __break(1u);
}

void sub_10004C630(uint64_t a1, char a2)
{
  v3 = sub_10076C04C();
  v7[3] = v3;
  v7[4] = sub_10004C7BC();
  v4 = sub_10000DB7C(v7);
  (*(*(v3 - 8) + 104))(v4, enum case for Feature.voyager_bundles_2025A(_:), v3);
  LOBYTE(v3) = sub_10076C90C();
  sub_10000CD74(v7);
  if (v3)
  {
    sub_1007706EC();
  }

  if (a2 == 2 || (a2 & 1) != 0)
  {
    sub_10076BF1C();
  }

  else
  {
    sub_10076BF1C();
    sub_100016F40(0, &qword_100942F00);
    if (qword_100940FC8 != -1)
    {
      swift_once();
    }

    v5 = sub_10076D3DC();
    sub_10000A61C(v5, qword_1009A1D50);
    v6 = sub_100770B3C();
    [v6 descender];
  }
}

unint64_t sub_10004C7BC()
{
  result = qword_100943230;
  if (!qword_100943230)
  {
    sub_10076C04C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100943230);
  }

  return result;
}

double sub_10004C814()
{
  v1 = v0;
  v2 = sub_10076BF6C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v29[-1] - v7;
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = &v29[-1] - v11;
  v13 = [v0 traitCollection];
  v14 = sub_10076C04C();
  v29[3] = v14;
  v29[4] = sub_10004C7BC();
  v15 = sub_10000DB7C(v29);
  (*(*(v14 - 8) + 104))(v15, enum case for Feature.voyager_bundles_2025A(_:), v14);
  LOBYTE(v14) = sub_10076C90C();
  sub_10000CD74(v29);
  if (v14)
  {
    v16 = sub_1007706EC();

    if (v16)
    {
      v17 = 32.0;
    }

    else
    {
      v17 = 62.0;
    }
  }

  else
  {

    v17 = 62.0;
  }

  sub_10075FCBC();
  (*(v3 + 104))(v5, enum case for Artwork.Style.roundedRect(_:), v2);
  sub_10076BF2C();
  v18 = *(v3 + 8);
  v18(v5, v2);
  v18(v8, v2);
  v19 = OBJC_IVAR____TtC20ProductPageExtension15BundleChildView_titleStyle;
  v20 = v1[OBJC_IVAR____TtC20ProductPageExtension15BundleChildView_titleStyle];
  v21 = [v1 traitCollection];
  sub_10004C630(v12, v20);

  v18(v12, v2);
  v22 = *&v1[OBJC_IVAR____TtC20ProductPageExtension15BundleChildView_titleLabel];
  type metadata accessor for BundleChildView();
  sub_10076422C();
  [v22 sizeThatFits:{v23, v24}];
  v26 = fmin(v25, 80.0);
  if ((v1[v19] & 1) == 0)
  {
    v26 = -0.0;
  }

  return v17 + v26;
}

char *sub_10004CAFC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10076F9AC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC20ProductPageExtension38TodayCardSmallLockupCollectionViewCell_lockupView;
  *&v4[v14] = [objc_allocWithZone(type metadata accessor for TodayCardLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v46.receiver = v4;
  v46.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v46, "initWithFrame:", a1, a2, a3, a4);
  v16 = [v15 contentView];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  [v15 setClipsToBounds:0];
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v20 = OBJC_IVAR____TtC20ProductPageExtension38TodayCardSmallLockupCollectionViewCell_lockupView;
  v21 = *(*&v15[OBJC_IVAR____TtC20ProductPageExtension38TodayCardSmallLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v22 = v21;
  sub_10076F95C();
  sub_1000258C0(&v42);
  sub_1000258C0(&v44);
  sub_100770B9C();

  v23 = *(v11 + 8);
  v23(v13, v10);
  v24 = *(*&v15[v20] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v25 = v24;
  sub_10076F95C();
  sub_1000258C0(&v42);
  sub_1000258C0(&v44);
  sub_100770B9C();

  v23(v13, v10);
  v26 = *(*&v15[v20] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v27 = v26;
  sub_10076F95C();
  sub_1000258C0(&v42);
  sub_1000258C0(&v44);
  sub_100770B9C();

  v23(v13, v10);
  v28 = *(*&v15[v20] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_ordinalLabel);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v29 = v28;
  sub_10076F95C();
  sub_1000258C0(&v42);
  sub_1000258C0(&v44);
  sub_100770B9C();

  v23(v13, v10);
  v30 = *&v15[v20];
  v31 = *(v30 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel);
  if (v31)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v32 = v31;
    sub_10076F95C();
    sub_1000258C0(&v42);
    sub_1000258C0(&v44);
    sub_100770B9C();

    v23(v13, v10);
    v30 = *&v15[v20];
  }

  v33 = *(v30 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel);
  if (v33)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v34 = v33;
    sub_10076F95C();
    sub_1000258C0(&v42);
    sub_1000258C0(&v44);
    sub_100770B9C();

    v23(v13, v10);
    v30 = *&v15[v20];
  }

  v35 = *(v30 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v36 = v35;
  sub_10076F95C();
  sub_1000258C0(&v42);
  sub_1000258C0(&v44);
  sub_100770B9C();

  v23(v13, v10);
  v37 = *&v15[v20];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v38 = v37;
  sub_10076F95C();
  sub_1000258C0(&v42);
  sub_1000258C0(&v44);
  sub_100770B9C();

  v23(v13, v10);
  v39 = [v15 contentView];
  [v39 setClipsToBounds:0];

  v40 = [v15 contentView];
  [v40 addSubview:*&v15[v20]];

  return v15;
}

double sub_10004D3C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension38TodayCardSmallLockupCollectionViewCell_lockupView) + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_metrics;
  swift_beginAccess();
  return *v1;
}

void sub_10004D420(uint64_t a1)
{
  v3 = sub_10076BF6C();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10076BEDC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_10076BEEC();
    v8 = sub_10076BE9C();
    (*(v5 + 8))(v7, v4);
    v9 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension38TodayCardSmallLockupCollectionViewCell_lockupView);
    swift_beginAccess();
    sub_10076BFCC();
    v10 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
    v11 = *(v9 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
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

    [*(v9 + v10) setContentMode:v8];
    v12 = *(v9 + v10);
    sub_10075FD2C();
    sub_10004F7C0(&qword_100941820, 255, &type metadata accessor for ArtworkView);
    v13 = v12;
    sub_100760B8C();
  }
}

void sub_10004D6D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10076BF6C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100763ADC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076BEDC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v24 = a2;

    sub_10076BEEC();
    v15 = v3;
    v16 = sub_10076BE9C();
    (*(v12 + 8))(v14, v11);
    v17 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_lockupView;
    v18 = v15;
    v19 = *(*(v15 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView);
    v20 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
    swift_beginAccess();
    (*(v8 + 16))(v10, v19 + v20, v7);
    sub_1007639AC();
    (*(v8 + 8))(v10, v7);
    sub_10076BFCC();
    v21 = *(*(v18 + v17) + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView);
    sub_10076BF7C();
    sub_10075FCCC();
    [v21 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_100016F40(0, &qword_100942F10);
      sub_100770D5C();
    }

    sub_10075FB8C();

    [*(*(v18 + v17) + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView) setContentMode:v16];
    v22 = *(*(v18 + v17) + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView);
    sub_10075FD2C();
    sub_10004F7C0(&qword_100941820, 255, &type metadata accessor for ArtworkView);
    v23 = v22;
    sub_100760B8C();
  }
}

void sub_10004DA7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10076BF6C();
  __chkstk_darwin(v6 - 8);
  v26 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076738C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v23 - v13;
  v15 = sub_10076BEDC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v25 = a2;

    sub_10076BEEC();
    v23 = sub_10076BE9C();
    (*(v16 + 8))(v18, v15);
    v19 = [v3 traitCollection];
    v24 = v3;
    v20 = v3[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_artworkSize + 16];
    if (sub_10077071C())
    {
      sub_1001B997C(v19, v11);
    }

    else if (v20)
    {
      sub_1001B9CB4();
    }

    else
    {
      sub_1001B9D54();
    }

    v21 = v23;

    (*(v9 + 32))(v14, v11, v8);
    sub_10076736C();
    (*(v9 + 8))(v14, v8);
    sub_10076BFCC();
    v22 = *&v24[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_artworkView];
    sub_10076BF7C();
    sub_10075FCCC();
    [v22 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_100016F40(0, &qword_100942F10);
      sub_100770D5C();
    }

    sub_10075FB8C();
    [v22 setContentMode:v21];
    sub_10075FD2C();
    sub_10004F7C0(&qword_100941820, 255, &type metadata accessor for ArtworkView);
    sub_100760B8C();
  }
}

void sub_10004DE54(uint64_t a1)
{
  v3 = sub_10076BF6C();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10076BEDC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_10076BEEC();
    v8 = sub_10076BE9C();
    (*(v5 + 8))(v7, v4);
    if (qword_10093F670 != -1)
    {
      swift_once();
    }

    v9 = sub_10075E77C();
    sub_10000A61C(v9, qword_10099CD70);
    sub_10075E6EC();
    sub_10076BFCC();
    v10 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell_lockupView);
    v11 = OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_iconView;
    v12 = *(*(v10 + OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_iconView) + OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView);
    sub_10076BF7C();
    sub_10075FCCC();
    [v12 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_100016F40(0, &qword_100942F10);
      sub_100770D5C();
    }

    sub_10075FB8C();

    [*(*(v10 + v11) + OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView) setContentMode:v8];
    v13 = *(*(v10 + v11) + OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView);
    sub_10075FD2C();
    sub_10004F7C0(&qword_100941820, 255, &type metadata accessor for ArtworkView);
    v14 = v13;
    sub_100760B8C();
  }
}

void sub_10004E14C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10076BF6C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100763ADC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076BEDC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v23 = a2;

    sub_10076BEEC();
    v15 = sub_10076BE9C();
    (*(v12 + 8))(v14, v11);
    v16 = v15;
    v17 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_lockupView);
    v18 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
    swift_beginAccess();
    (*(v8 + 16))(v10, v17 + v18, v7);
    sub_1007639AC();
    (*(v8 + 8))(v10, v7);
    sub_10076BFCC();
    v19 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
    v20 = *(v17 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
    sub_10076BF7C();
    sub_10075FCCC();
    [v20 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_100016F40(0, &qword_100942F10);
      sub_100770D5C();
    }

    sub_10075FB8C();

    [*(v17 + v19) setContentMode:v16];
    v21 = *(v17 + v19);
    sub_10075FD2C();
    sub_10004F7C0(&qword_100941820, 255, &type metadata accessor for ArtworkView);
    v22 = v21;
    sub_100760B8C();
  }
}

void sub_10004E4D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29 = v3;
  ObjectType = swift_getObjectType();
  v6 = sub_10076BF6C();
  __chkstk_darwin(v6 - 8);
  v28 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_10094CD50);
  v26 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  v11 = sub_10076428C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076BEDC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v25 = a2;

    sub_10076BEEC();
    v24 = sub_10076BE9C();
    (*(v16 + 8))(v18, v15);
    v19 = v29;
    v20 = [v29 traitCollection];
    sub_1002AAFCC(v14);

    sub_10076425C();
    (*(v12 + 8))(v14, v11);
    v21 = v24;
    v30 = v19;
    sub_10075FDCC();
    (*(v26 + 8))(v10, v8);
    sub_10076BFCC();
    v22 = *&v19[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_artworkView];
    sub_10076BF7C();
    sub_10075FCCC();
    [v22 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_100016F40(0, &qword_100942F10);
      sub_100770D5C();
    }

    sub_10075FB8C();
    [v22 setContentMode:v21];
    sub_10075FD2C();
    sub_10004F7C0(&qword_100941820, 255, &type metadata accessor for ArtworkView);
    sub_100760B8C();
  }
}

void sub_10004E8D0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076BF6C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10076BEDC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v16 - v10;
  if (a1)
  {

    sub_10076BEEC();
    sub_10076BE8C();
    sub_10004F7C0(&qword_1009441E0, 255, &type metadata accessor for Artwork.Crop);
    v12 = sub_10076FF1C();
    v13 = *(v6 + 8);
    v13(v8, v5);
    if (v12)
    {
      v14 = 6;
    }

    else
    {
      v14 = sub_10076BE9C();
    }

    v13(v11, v5);
    sub_10076BFCC();
    v15 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_artworkView);
    sub_10076BF7C();
    sub_10075FCCC();
    [v15 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_100016F40(0, &qword_100942F10);
      sub_100770D5C();
    }

    sub_10075FB8C();
    [v15 setContentMode:v14];
    sub_10075FD2C();
    sub_10004F7C0(&qword_100941820, 255, &type metadata accessor for ArtworkView);
    sub_100760B8C();
  }
}

void sub_10004EBD8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10076BF6C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10076BEDC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_10076BEEC();
    v9 = sub_10076BE9C();
    (*(v6 + 8))(v8, v5);
    v10 = sub_10004F7C0(&qword_1009441E8, 255, type metadata accessor for BrickCollectionViewCell);
    (*(v10 + 24))(ObjectType, v10);
    sub_10076BFCC();
    v11 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_artworkView);
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
    [v11 setContentMode:v9];
    sub_10075FD2C();
    sub_10004F7C0(&qword_100941820, 255, &type metadata accessor for ArtworkView);
    sub_100760B8C();
  }
}

void sub_10004EE94(uint64_t a1)
{
  v3 = sub_10076BF6C();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10076BEDC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_10076BEEC();
    v8 = sub_10076BE9C();
    (*(v5 + 8))(v7, v4);
    sub_10076BFCC();
    v9 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension23QuoteCollectionViewCell_quoteView);
    v10 = OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkView;
    v11 = *(v9 + OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkView);
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

    [*(v9 + v10) setContentMode:v8];
    v12 = *(v9 + v10);
    sub_10075FD2C();
    sub_10004F7C0(&qword_100941820, 255, &type metadata accessor for ArtworkView);
    v13 = v12;
    sub_100760B8C();
  }
}

void sub_10004F130(uint64_t a1)
{
  swift_getObjectType();
  v3 = sub_10076BF6C();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10076BEDC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_10076BEEC();
    v8 = sub_10076BE9C();
    (*(v5 + 8))(v7, v4);
    if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_pageTraits))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1006525E0();
      swift_unknownObjectRelease();
    }

    sub_10076BFCC();
    v9 = OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_iconView;
    v10 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_iconView);
    sub_10076BF7C();
    sub_10075FCCC();
    [v10 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_100016F40(0, &qword_100942F10);
      sub_100770D5C();
    }

    sub_10075FB8C();

    [*(v1 + v9) setContentMode:v8];
    v11 = *(v1 + v9);
    sub_10075FD2C();
    sub_10004F7C0(&qword_100941820, 255, &type metadata accessor for ArtworkView);
    v12 = v11;
    sub_100760B8C();
  }
}

void sub_10004F414(uint64_t a1)
{
  v3 = sub_10076BF6C();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10076BEDC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_10076BEEC();
    v8 = sub_10076BE9C();
    (*(v5 + 8))(v7, v4);
    sub_10076BFCC();
    v9 = *(v1 + qword_1009A3410);
    sub_10076BF7C();
    sub_10075FCCC();
    [v9 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_100016F40(0, &qword_100942F10);
      sub_100770D5C();
    }

    sub_10075FB8C();
    [v9 setContentMode:v8];
    sub_10075FD2C();
    sub_10004F7C0(&qword_100941820, 255, &type metadata accessor for ArtworkView);
    sub_100760B8C();
  }
}

void sub_10004F680()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension38TodayCardSmallLockupCollectionViewCell_lockupView);
  v2 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  sub_10075FB6C();

  v4 = *(v1 + v2);
  sub_10075FD2C();
  sub_10004F7C0(&qword_100941820, 255, &type metadata accessor for ArtworkView);
  v5 = v4;
  sub_100760BFC();
}

uint64_t sub_10004F768(uint64_t a1, uint64_t a2)
{
  result = sub_10004F7C0(&unk_1009441D0, a2, type metadata accessor for TodayCardSmallLockupCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10004F7C0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10004F808()
{
  v0 = sub_10000A5D4(&unk_100955860);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  *&v79 = &v77 - v2;
  v3 = sub_10075DDBC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_10000A5D4(&unk_100942870);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100786040;
  v80 = type metadata accessor for BoolUserDefaultsDebugSetting();
  v8 = swift_allocObject();
  *(v8 + 56) = 0xD00000000000001ALL;
  *(v8 + 64) = 0x80000001007CF250;
  *(v8 + 72) = 0;
  *(v8 + 80) = 0xD000000000000019;
  *(v8 + 88) = 0x80000001007CF270;
  *(v8 + 96) = 0;
  sub_10075DDAC();
  v9 = sub_10075DD8C();
  v11 = v10;
  v12 = *(v4 + 8);
  v85 = v3;
  v81 = v12;
  v82 = v4 + 8;
  v12(v6, v3);
  v86 = v9;
  v87 = v11;
  sub_10077140C();
  v84 = v7;
  *(v7 + 32) = v8;
  if (qword_1009414D0 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A61C(v0, qword_1009A3248);
  v14 = sub_10076F73C();
  v78 = sub_10076F70C();
  v15 = ASKBuildTypeGetCurrent();
  v16 = sub_10076FF9C();
  v18 = v17;
  if (v16 == sub_10076FF9C() && v18 == v19)
  {
    goto LABEL_5;
  }

  v20 = sub_10077167C();

  if (v20)
  {
    goto LABEL_7;
  }

  v67 = sub_10076FF9C();
  v69 = v68;
  if (v67 == sub_10076FF9C() && v69 == v70)
  {
LABEL_5:

LABEL_8:
    v21 = 1;
    goto LABEL_9;
  }

  v71 = sub_10077167C();

  if (v71)
  {
LABEL_7:

    goto LABEL_8;
  }

  v72 = sub_10076FF9C();
  v74 = v73;
  if (v72 == sub_10076FF9C() && v74 == v75)
  {
  }

  else
  {
    v76 = sub_10077167C();

    v21 = 0;
    if ((v76 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  sub_10076F72C();
  sub_10076F41C();

  v21 = v86;
LABEL_9:
  v22 = v13;
  v23 = *(v1 + 16);
  v24 = v79;
  v23(v79, v22, v0);
  type metadata accessor for BoolPreferencesDebugSetting();
  v25 = swift_allocObject();
  *(v25 + 56) = 0xD00000000000001BLL;
  *(v25 + 64) = 0x80000001007CF290;
  *(v25 + 72) = 0;
  *(v25 + 80) = 0;
  *(v25 + 88) = v21 & 1;
  v23(v25 + OBJC_IVAR____TtC20ProductPageExtension27BoolPreferencesDebugSetting_key, v24, v0);
  v26 = (v25 + OBJC_IVAR____TtC20ProductPageExtension27BoolPreferencesDebugSetting_preferences);
  *v26 = v78;
  v26[1] = &protocol witness table for LocalPreferences;

  sub_10075DDAC();
  v27 = sub_10075DD8C();
  v29 = v28;
  v77 = v14;
  v30 = v81;
  v81(v6, v85);
  v86 = v27;
  v87 = v29;
  sub_10077140C();
  (*(v1 + 8))(v24, v0);

  v31 = v84;
  *(v84 + 40) = v25;
  v32 = v31;
  v33 = swift_allocObject();
  *(v33 + 56) = 0xD000000000000025;
  *(v33 + 64) = 0x80000001007CF2B0;
  *(v33 + 72) = 0;
  *(v33 + 80) = 0xD000000000000021;
  *(v33 + 88) = 0x80000001007CF2E0;
  *(v33 + 96) = 0;
  sub_10075DDAC();
  v34 = sub_10075DD8C();
  v36 = v35;
  v37 = v85;
  v30(v6, v85);
  v86 = v34;
  v87 = v36;
  sub_10077140C();
  *(v32 + 48) = v33;
  v38 = swift_allocObject();
  *(v38 + 56) = 0x646F4D206F6D6544;
  *(v38 + 64) = 0xE900000000000065;
  *(v38 + 72) = 0;
  *(v38 + 80) = 0x65646F4D6F6D6564;
  *(v38 + 88) = 0xE800000000000000;
  *(v38 + 96) = 0;
  sub_10075DDAC();
  v39 = sub_10075DD8C();
  v41 = v40;
  v30(v6, v37);
  v86 = v39;
  v87 = v41;
  sub_10077140C();
  *(v32 + 56) = v38;
  v42 = swift_allocObject();
  v79 = xmmword_100785D70;
  *(v42 + 16) = xmmword_100785D70;
  v43 = swift_allocObject();
  *(v43 + 56) = 0xD00000000000001ALL;
  *(v43 + 64) = 0x80000001007CF310;
  *(v43 + 72) = 0;
  *(v43 + 80) = 0xD000000000000013;
  *(v43 + 88) = 0x80000001007CF330;
  *(v43 + 96) = 0;
  sub_10075DDAC();
  v44 = sub_10075DD8C();
  v46 = v45;
  v47 = v85;
  v30(v6, v85);
  v86 = v44;
  v87 = v46;
  sub_10077140C();
  v78 = v42;
  *(v42 + 32) = v43;
  v48 = sub_10076F6EC();
  if (v49)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0x6E776F6E6B6E55;
  }

  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0xE700000000000000;
  }

  type metadata accessor for InfoDebugSetting();
  v52 = swift_allocObject();
  v52[7] = 0x697372655620534ALL;
  v52[8] = 0xEA00000000006E6FLL;
  v52[9] = v50;
  v52[10] = v51;

  sub_10075DDAC();
  v53 = sub_10075DD8C();
  v55 = v54;
  v30(v6, v47);
  v86 = v53;
  v87 = v55;
  sub_10077140C();

  *(v42 + 40) = v52;
  v56 = swift_allocObject();
  *(v56 + 16) = v79;
  type metadata accessor for DebugSection();
  v57 = swift_allocObject();
  sub_10075DDAC();
  v58 = sub_10075DD8C();
  v60 = v59;
  v61 = v47;
  v30(v6, v47);
  v57[2] = v58;
  v57[3] = v60;
  v57[4] = 0;
  v57[5] = 0xE000000000000000;
  v57[6] = v84;
  *(v56 + 32) = v57;
  v62 = swift_allocObject();
  sub_10075DDAC();
  v63 = sub_10075DD8C();
  v65 = v64;
  v30(v6, v61);
  v62[2] = v63;
  v62[3] = v65;
  v62[4] = 0x697263536176614ALL;
  v62[5] = 0xEA00000000007470;
  v62[6] = v78;
  *(v56 + 40) = v62;
  return v56;
}

id sub_100050150()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000501BC()
{
  result = qword_100944220;
  if (!qword_100944220)
  {
    sub_10075EFBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944220);
  }

  return result;
}

uint64_t sub_100050214(uint64_t a1, uint64_t a2)
{
  v4 = sub_10075DB7C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v8 - 8);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v36 - v12;
  __chkstk_darwin(v14);
  v16 = v36 - v15;
  __chkstk_darwin(v17);
  v40 = v36 - v18;
  sub_10075EF9C();
  sub_10075EF9C();
  v38 = *(v5 + 48);
  v19 = v38(v16, 1, v4);
  v39 = a2;
  v37 = v5;
  if (v19 == 1)
  {
    sub_10000CFBC(v16, &unk_1009435D0);
    v20 = 0;
  }

  else
  {
    (*(v5 + 32))(v7, v16, v4);
    sub_1007654EC();
    sub_10076F63C();
    v21 = v5;
    v20 = aBlock;
    if (aBlock)
    {
      sub_10075EFAC();
      sub_1007654BC();

      v22 = v37;
      (*(v37 + 8))(v7, v4);
      v23 = v40;
      sub_10000CFBC(v40, &unk_1009435D0);
      v20 = 1;
      (*(v22 + 56))(v13, 0, 1, v4);
      sub_100050DA4(v13, v23);
    }

    else
    {
      (*(v21 + 8))(v7, v4);
    }
  }

  sub_10000A5D4(&qword_100942C70);
  v24 = sub_10076FCEC();
  v25 = [objc_allocWithZone(ASCAppLaunchTrampoline) init];
  sub_10075EFAC();
  v26 = sub_10076FF6C();

  sub_100050CC0(v40, v10);
  if (v38(v10, 1, v4) == 1)
  {
    v28 = 0;
  }

  else
  {
    sub_10075DB1C(v27);
    v28 = v29;
    (*(v37 + 8))(v10, v4);
  }

  v30 = [v25 openApplicationWithBundleIdentifier:v26 payloadURL:v28 universalLinkRequired:{v20, v36[0], v36[1], v36[2], v36[3]}];

  v45 = sub_100050D30;
  v46 = v24;
  aBlock = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_100050A10;
  v44 = &unk_100885650;
  v31 = _Block_copy(&aBlock);

  [v30 addSuccessBlock:v31];
  _Block_release(v31);
  v32 = swift_allocObject();
  v33 = v39;
  v32[2] = a1;
  v32[3] = v33;
  v32[4] = v24;
  v45 = sub_100050D98;
  v46 = v32;
  aBlock = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_100050C44;
  v44 = &unk_1008856A0;
  v34 = _Block_copy(&aBlock);

  [v30 addErrorBlock:v34];
  _Block_release(v34);

  sub_10000CFBC(v40, &unk_1009435D0);
  return v24;
}

uint64_t sub_100050924()
{
  v0 = sub_10076F50C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for ActionOutcome.performed(_:), v0, v2);
  sub_10076FCBC();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100050A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1009412E8 != -1)
  {
    swift_once();
  }

  v3 = sub_10076FD4C();
  sub_10000A61C(v3, qword_1009A2600);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  swift_getErrorValue();
  v9[3] = v8;
  v4 = sub_10000DB7C(v9);
  (*(*(v8 - 8) + 16))(v4);
  sub_10076F32C();
  sub_10000CFBC(v9, &unk_1009434C0);
  sub_10076FBEC();

  v5 = sub_10075EF8C();
  if (!v5)
  {
    return sub_10076FCAC();
  }

  sub_100563DC4(v5, 1, a3);
  sub_10076FC4C();
}

void sub_100050C4C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100050CC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_1009435D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100050D38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100050D50()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100050DA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_1009435D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100050E1C()
{
  sub_10000CC8C(v0 + 16);
  sub_10000DBE0(v0 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_selectedItemLayoutContext);
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TodayCardCollectionElementsObserver()
{
  result = qword_100944250;
  if (!qword_100944250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100050EEC()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_100050FAC(void *a1)
{
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (v2 && a1)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 16);
    v6 = a1;
    v5(0, ObjectType, v3);
  }

  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result && a1)
  {

    return [a1 setHidden:0];
  }

  return result;
}

uint64_t sub_100051098(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&unk_1009428D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result && a1)
  {
    sub_10076C84C();
    sub_100051B20(&qword_100947150, &type metadata accessor for TodayCard);
    result = sub_10076334C();
    if (result)
    {
      v10 = sub_10076341C();
      v11 = *(v10 - 8);
      (*(v11 + 16))(v8, a2, v10);
      (*(v11 + 56))(v8, 0, 1, v10);
      v12 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
      swift_beginAccess();
      sub_1000516DC(v8, v3 + v12);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_100051318()
{
  sub_10000A5D4(&qword_100944390);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100783DD0;
  v2 = sub_100051B20(&qword_100944398, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v1 + 32) = v0;
  *(v1 + 40) = v2;

  return v1;
}

uint64_t sub_1000513F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_100051444(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_10076C84C();
    sub_100051B20(&qword_100947150, &type metadata accessor for TodayCard);
    if (sub_10076334C())
    {
      v3 = objc_opt_self();
      v4 = swift_allocObject();
      *(v4 + 16) = a1;
      *(v4 + 24) = 0x3FEEB851EB851EB8;
      v13 = sub_1000516B8;
      v14 = v4;
      aBlock = _NSConcreteStackBlock;
      v10 = 1107296256;
      v11 = sub_10009AEDC;
      v12 = &unk_1008856F0;
      v5 = _Block_copy(&aBlock);
      v6 = a1;

      v13 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
      v14 = 0;
      aBlock = _NSConcreteStackBlock;
      v10 = 1107296256;
      v11 = sub_1000513F0;
      v12 = &unk_100885718;
      v7 = _Block_copy(&aBlock);
      [v3 _animateUsingDefaultDampedSpringWithDelay:135 initialSpringVelocity:v5 options:v7 animations:0.0 completion:1.0];
      _Block_release(v7);
      _Block_release(v5);

      swift_unknownObjectWeakAssign();
    }

    else
    {
    }
  }
}

uint64_t sub_100051680()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000516C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000516DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_1009428D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10005174C(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4 && a1)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 16);
    v8 = a1;
    v7(1, ObjectType, v5);
  }

  swift_getObjectType();
  v9 = swift_conformsToProtocol2();
  if (v9 && a1)
  {
    v10 = v9;
    sub_10076C84C();
    sub_100051B20(&qword_100947150, &type metadata accessor for TodayCard);
    v11 = a1;
    sub_10076332C();
    if (v13)
    {
      v12 = swift_getObjectType();
      (*(v10 + 192))(*(v2 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_isMotionEnabled), v12, v10);
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        if (sub_10076C74C())
        {
          sub_10076518C();
        }

        swift_getObjectType();
        sub_10076457C();
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

void *sub_100051968(uint64_t a1, uint64_t (*a2)(), uint64_t a3, uint64_t a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = v10;
        v16 = objc_opt_self();
        v12 = swift_allocObject();
        *(v12 + 16) = v11;
        *(v12 + 24) = 0x3FF0000000000000;
        v21 = a2;
        v22 = v12;
        aBlock = _NSConcreteStackBlock;
        v18 = 1107296256;
        v19 = sub_10009AEDC;
        v20 = a3;
        v13 = _Block_copy(&aBlock);
        v14 = v11;

        v21 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
        v22 = 0;
        aBlock = _NSConcreteStackBlock;
        v18 = 1107296256;
        v19 = sub_1000513F0;
        v20 = a4;
        v15 = _Block_copy(&aBlock);
        [v16 _animateUsingDefaultDampedSpringWithDelay:135 initialSpringVelocity:v13 options:v15 animations:0.0 completion:1.0];
        _Block_release(v15);
        _Block_release(v13);
      }

      else
      {
      }
    }

    return swift_unknownObjectWeakAssign();
  }

  return result;
}

uint64_t sub_100051B20(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100051CE0()
{
  sub_100762D7C();
  v0 = sub_10076B8FC();

  if (!v0)
  {
    goto LABEL_10;
  }

  if ((sub_10076BDDC() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (sub_10076BE0C())
  {
    v1 = sub_10076044C();
    goto LABEL_7;
  }

  if ((sub_10076BDFC() & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  v1 = sub_1005A6008(v0, 0);
LABEL_7:
  v2 = v1;

  if (v2)
  {
    return v2;
  }

LABEL_10:
  v4 = objc_allocWithZone(UIImage);

  return [v4 init];
}

id sub_100051E74()
{
  v1 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtensionP33_FDFF98F3DEFBD62812CE468C53A31FA514ActionActivity_objectGraph];
  v5 = sub_10000A5D4(&unk_1009428E0);
  sub_10076F5AC();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_1000527AC(v3);
  }

  else
  {
    v7 = sub_100762D7C();
    sub_100263BF0(v7, 1, v4, v3);

    (*(v6 + 8))(v3, v5);
  }

  return [v0 activityDidFinish:1];
}

uint64_t type metadata accessor for ActionActivity()
{
  result = qword_1009443D8;
  if (!qword_1009443D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100052154()
{
  result = sub_100762D8C();
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

id sub_1000521F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v45 = a3;
  v9 = sub_100762D8C();
  v52 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v43 - v13;
  sub_100760C4C();
  sub_10076F64C();
  sub_10076FC1C();
  v15 = OBJC_IVAR____TtC20ProductPageExtension22ActivityViewController_artworkLoader;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension22ActivityViewController_artworkLoader] = v55;
  sub_10076148C();
  sub_10076FC1C();
  v16 = v55;
  v17 = *&v5[v15];

  v46 = v16;
  v18 = sub_10076135C();
  v47 = a1;
  v19 = sub_10073F3A0(v17, v18 & 1);

  v20 = *(a2 + 16);
  v51 = a4;
  if (v20)
  {
    v43[0] = v19;
    v44 = v5;
    v55 = _swiftEmptyArrayStorage;
    sub_1007714EC();
    v21 = *(v52 + 16);
    v22 = *(v52 + 80);
    v43[1] = a2;
    v23 = (a2 + ((v22 + 32) & ~v22));
    v49 = *(v52 + 72);
    v50 = v21;
    v52 += 16;
    v48 = (v52 - 8);
    do
    {
      v24 = v50;
      v50(v14, v23, v9);
      v24(v11, v14, v9);
      v25 = type metadata accessor for ActionActivity();
      v26 = objc_allocWithZone(v25);
      v24(&v26[OBJC_IVAR____TtC20ProductPageExtensionP33_FDFF98F3DEFBD62812CE468C53A31FA514ActionActivity_activity], v11, v9);
      *&v26[OBJC_IVAR____TtC20ProductPageExtensionP33_FDFF98F3DEFBD62812CE468C53A31FA514ActionActivity_objectGraph] = a4;
      v54.receiver = v26;
      v54.super_class = v25;

      objc_msgSendSuper2(&v54, "init");
      v27 = *v48;
      (*v48)(v11, v9);
      v27(v14, v9);
      sub_1007714CC();
      sub_1007714FC();
      a4 = v51;
      sub_10077150C();
      sub_1007714DC();
      v23 += v49;
      --v20;
    }

    while (v20);

    v5 = v44;
    v28 = v45;
    v19 = v43[0];
  }

  else
  {

    v28 = v45;
  }

  sub_10016DCF0(v19);

  isa = sub_1007701AC().super.isa;

  sub_100052760();
  v30 = sub_1007701AC().super.isa;

  v31 = type metadata accessor for ActivityViewController();
  v53.receiver = v5;
  v53.super_class = v31;
  v32 = objc_msgSendSuper2(&v53, "initWithActivityItems:applicationActivities:", isa, v30);

  v33 = v32;
  [v33 setSharingStyle:v28];
  sub_10000A5D4(&unk_1009609A0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1007844F0;
  *(v34 + 32) = UIActivityTypeAddToReadingList;
  *(v34 + 40) = UIActivityTypeAssignToContact;
  *(v34 + 48) = UIActivityTypePostToFlickr;
  *(v34 + 56) = UIActivityTypePrint;
  *(v34 + 64) = UIActivityTypeSaveToCameraRoll;
  *(v34 + 72) = UIActivityTypeCopyToPasteboard;
  type metadata accessor for ActivityType(0);
  v35 = UIActivityTypeAddToReadingList;
  v36 = UIActivityTypeAssignToContact;
  v37 = UIActivityTypePostToFlickr;
  v38 = UIActivityTypePrint;
  v39 = UIActivityTypeSaveToCameraRoll;
  v40 = UIActivityTypeCopyToPasteboard;
  v41 = sub_1007701AC().super.isa;

  [v33 setExcludedActivityTypes:v41];

  return v33;
}

id sub_1000526F4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_100052760()
{
  result = qword_100944418;
  if (!qword_100944418)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100944418);
  }

  return result;
}

uint64_t sub_1000527AC(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100943200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100052828()
{
  result = qword_100944420;
  if (!qword_100944420)
  {
    sub_100766E6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944420);
  }

  return result;
}

uint64_t sub_100052880()
{
  v0 = sub_10076F50C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076096C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100761FAC();
  sub_100761F8C();
  sub_100766E5C();
  sub_100761F1C();

  (*(v5 + 8))(v7, v4);
  sub_10000A5D4(&qword_100942C70);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  return sub_10076FC8C();
}

uint64_t sub_100052A90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076462C();
  *a1 = result;
  return result;
}

double sub_100052AC0()
{
  v0 = sub_10076C38C();
  v39 = *(v0 - 8);
  __chkstk_darwin(v0);
  v38 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100764FDC();
  v36 = *(v2 - 8);
  __chkstk_darwin(v2);
  v37 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100764FFC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v40 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076997C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100760F3C();
  sub_1000531AC(&qword_100944438, &type metadata accessor for PrivacyFooter);
  sub_10076332C();
  v11 = v42[0];
  if (!v42[0])
  {
    return 0.0;
  }

  v33 = v0;
  v34 = v5;
  v35 = v4;
  sub_10005312C();
  if (qword_100940DB8 != -1)
  {
    swift_once();
  }

  v12 = sub_10076D3DC();
  sub_10000A61C(v12, qword_1009A1720);
  swift_getKeyPath();
  sub_10076338C();

  v13 = v42[0];
  v14 = sub_100770B3C();

  v32 = v11;
  sub_100760F2C();
  sub_10076081C();

  v15 = sub_10075F9DC();

  v16 = sub_10076C04C();
  v43 = v16;
  v44 = sub_1000531AC(&qword_100943230, &type metadata accessor for Feature);
  v17 = sub_10000DB7C(v42);
  (*(*(v16 - 8) + 104))(v17, enum case for Feature.measurement_with_labelplaceholder(_:), v16);
  v31 = v15;
  v18 = v14;
  sub_10076C90C();
  sub_10000CD74(v42);
  sub_10076993C();
  sub_10076994C();
  (*(v8 + 8))(v10, v7);
  if (qword_100941530 != -1)
  {
    swift_once();
  }

  v19 = sub_10000A61C(v2, qword_1009A32C0);
  (*(v36 + 16))(v37, v19, v2);
  v20 = v43;
  v21 = v44;
  v22 = sub_10000CF78(v42, v43);
  v41[3] = v20;
  v41[4] = *(v21 + 8);
  v23 = sub_10000DB7C(v41);
  (*(*(v20 - 8) + 16))(v23, v22, v20);
  v24 = v40;
  sub_100764FEC();
  swift_getKeyPath();
  v25 = v38;
  sub_10076338C();

  sub_10076C2FC();
  (*(v39 + 8))(v25, v33);
  swift_getKeyPath();
  sub_10076338C();

  sub_1000531AC(&unk_100944440, &type metadata accessor for PrivacyFooterLayout);
  v26 = v35;
  sub_10076D2AC();
  v28 = v27;

  swift_unknownObjectRelease();

  (*(v34 + 8))(v24, v26);
  sub_10000CD74(v42);
  return v28;
}

unint64_t sub_10005312C()
{
  result = qword_100942F00;
  if (!qword_100942F00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100942F00);
  }

  return result;
}

uint64_t sub_100053180@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076462C();
  *a1 = result;
  return result;
}

uint64_t sub_1000531AC(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1000531F4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC20ProductPageExtension27SeparatorSpacerReusableView_separatorInsets];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  *v10 = UIEdgeInsetsZero.top;
  v10[1] = left;
  v10[2] = bottom;
  v10[3] = right;
  v14 = OBJC_IVAR____TtC20ProductPageExtension27SeparatorSpacerReusableView_lineView;
  *&v4[v14] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v22.receiver = v4;
  v22.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  [v15 setUserInteractionEnabled:0];
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v16 = OBJC_IVAR____TtC20ProductPageExtension27SeparatorSpacerReusableView_lineView;
  v17 = *&v15[OBJC_IVAR____TtC20ProductPageExtension27SeparatorSpacerReusableView_lineView];
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 separatorColor];
  [v19 setBackgroundColor:v20];

  [v15 addSubview:*&v15[v16]];
  return v15;
}

void sub_100053464()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "layoutSubviews");
  sub_10076422C();
  sub_100770A3C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 traitCollection];
  sub_10076E20C();

  v12.origin.x = v2;
  v12.origin.y = v4;
  v12.size.width = v6;
  v12.size.height = v8;
  CGRectGetMinX(v12);
  v13.origin.x = v2;
  v13.origin.y = v4;
  v13.size.width = v6;
  v13.size.height = v8;
  CGRectGetMidY(v13);
  v14.origin.x = v2;
  v14.origin.y = v4;
  v14.size.width = v6;
  v14.size.height = v8;
  CGRectGetWidth(v14);
  v10 = *&v0[OBJC_IVAR____TtC20ProductPageExtension27SeparatorSpacerReusableView_lineView];
  sub_10076422C();
  sub_100770A4C();
  [v10 setFrame:?];
}

void sub_100053644()
{
  v1 = sub_10076048C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v5);
  v8 = &v17 - v7;
  v9 = OBJC_IVAR____TtC20ProductPageExtension18RoundChevronButton_chevronImageView;
  v10 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension18RoundChevronButton_chevronImageView);
  (*(v2 + 104))(v4, **(&off_1008858E0 + *(v0 + OBJC_IVAR____TtC20ProductPageExtension18RoundChevronButton_chevronDirection)), v1, v6);
  (*(v2 + 32))(v8, v4, v1);
  v11 = v10;
  v12 = sub_10076046C();
  (*(v2 + 8))(v8, v1);
  [v11 setImage:v12];

  v13 = *(v0 + v9);
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 configurationWithPointSize:6 weight:15.0];
  [v15 setPreferredSymbolConfiguration:v16];
}

char *sub_100053820()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC20ProductPageExtension18RoundChevronButton_contentView;
  *&v0[v2] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC20ProductPageExtension18RoundChevronButton_blurEffect;
  *&v0[v3] = [objc_opt_self() effectWithStyle:9];
  v4 = OBJC_IVAR____TtC20ProductPageExtension18RoundChevronButton_chevronImageView;
  *&v0[v4] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  __asm { FMOV            V0.2D, #28.0 }

  *&v0[OBJC_IVAR____TtC20ProductPageExtension18RoundChevronButton_visibleSize] = _Q0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension18RoundChevronButton_tapSize] = xmmword_100786520;
  v0[OBJC_IVAR____TtC20ProductPageExtension18RoundChevronButton_chevronDirection] = 1;
  v0[OBJC_IVAR____TtC20ProductPageExtension18RoundChevronButton_shouldUseDirectionalChevron] = 1;
  v10 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:*&v0[v3]];
  *&v0[OBJC_IVAR____TtC20ProductPageExtension18RoundChevronButton_blurView] = v10;
  v11 = [objc_opt_self() effectForBlurEffect:*&v0[v3] style:4];
  v12 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v11];

  *&v0[OBJC_IVAR____TtC20ProductPageExtension18RoundChevronButton_vibrancyView] = v12;
  v25.receiver = v0;
  v25.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, 68.0, 44.0);
  v14 = OBJC_IVAR____TtC20ProductPageExtension18RoundChevronButton_contentView;
  v15 = *&v13[OBJC_IVAR____TtC20ProductPageExtension18RoundChevronButton_contentView];
  v16 = v13;
  [v15 setUserInteractionEnabled:0];
  v16[OBJC_IVAR____TtC20ProductPageExtension18RoundChevronButton_chevronDirection] = 1;
  v17 = OBJC_IVAR____TtC20ProductPageExtension18RoundChevronButton_chevronImageView;
  [*&v16[OBJC_IVAR____TtC20ProductPageExtension18RoundChevronButton_chevronImageView] setContentMode:4];
  sub_100053644();
  v18 = OBJC_IVAR____TtC20ProductPageExtension18RoundChevronButton_blurView;
  [*&v13[v14] addSubview:*&v16[OBJC_IVAR____TtC20ProductPageExtension18RoundChevronButton_blurView]];
  v19 = OBJC_IVAR____TtC20ProductPageExtension18RoundChevronButton_vibrancyView;
  v20 = [*&v16[OBJC_IVAR____TtC20ProductPageExtension18RoundChevronButton_vibrancyView] contentView];
  [v20 addSubview:*&v16[v17]];

  v21 = [*&v16[v18] contentView];
  [v21 addSubview:*&v16[v19]];

  v22 = *&v13[v14];
  v23 = v16;
  [v23 addSubview:v22];
  [v23 setOverrideUserInterfaceStyle:1];

  return v23;
}

void sub_100053B38()
{
  v1 = v0;
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, "layoutSubviews");
  [v0 bounds];
  v2 = (CGRectGetWidth(v24) + -28.0) * 0.5;
  [v0 bounds];
  v3 = (CGRectGetHeight(v25) + -28.0) * 0.5;
  v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension18RoundChevronButton_contentView];
  [v4 setFrame:{v2, v3, 28.0, 28.0}];
  v5 = OBJC_IVAR____TtC20ProductPageExtension18RoundChevronButton_chevronImageView;
  v6 = [*&v0[OBJC_IVAR____TtC20ProductPageExtension18RoundChevronButton_chevronImageView] image];
  if (v6)
  {
    v7 = v6;
    [*&v0[v5] setContentMode:1];
    v8 = [v0 traitCollection];
    v9 = sub_10077070C();

    if (v9)
    {
      v10 = 1.0;
    }

    else
    {
      v10 = 0.0;
    }

    v11 = *&v1[v5];
    [v4 frame];
    Width = CGRectGetWidth(v26);
    [v7 size];
    v14 = floor(v10 + (Width - v13) * 0.5);
    [v4 frame];
    Height = CGRectGetHeight(v27);
    [v7 size];
    v17 = floor((Height - v16) * 0.5);
    [v7 size];
    v19 = v18;
    [v7 size];
    [v11 setFrame:{v14, v17, v19, v20}];
  }

  v21 = OBJC_IVAR____TtC20ProductPageExtension18RoundChevronButton_blurView;
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension18RoundChevronButton_blurView] setFrame:{0.0, 0.0, 28.0, 28.0}];
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension18RoundChevronButton_vibrancyView] setFrame:{0.0, 0.0, 28.0, 28.0}];
  v22 = *&v1[v21];
  v28.size.width = 28.0;
  v28.size.height = 28.0;
  v28.origin.x = v2;
  v28.origin.y = v3;
  [v22 _setCornerRadius:CGRectGetHeight(v28) * 0.5];
}

unint64_t sub_100053EE4()
{
  result = qword_1009444F8;
  if (!qword_1009444F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009444F8);
  }

  return result;
}

void sub_100053F38()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension18RoundChevronButton_contentView;
  *(v0 + v1) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC20ProductPageExtension18RoundChevronButton_blurEffect;
  *(v0 + v2) = [objc_opt_self() effectWithStyle:9];
  v3 = OBJC_IVAR____TtC20ProductPageExtension18RoundChevronButton_chevronImageView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  __asm { FMOV            V0.2D, #28.0 }

  *(v0 + OBJC_IVAR____TtC20ProductPageExtension18RoundChevronButton_visibleSize) = _Q0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension18RoundChevronButton_tapSize) = xmmword_100786520;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension18RoundChevronButton_chevronDirection) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension18RoundChevronButton_shouldUseDirectionalChevron) = 1;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_100054070(uint64_t a1)
{
  v2 = sub_10075DDBC();
  v24 = v2;
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&unk_100942870);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1007841E0;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100785D70;
  type metadata accessor for ActionDebugSetting();
  v7 = swift_allocObject();
  *(v7 + 56) = 0x6574616C756D6953;
  *(v7 + 64) = 0xEF65676E61684320;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = sub_100054394;
  *(v7 + 112) = 0;
  sub_10075DDAC();
  v8 = sub_10075DD8C();
  v10 = v9;
  v11 = *(v3 + 8);
  v11(v5, v2);
  v26 = v8;
  v27 = v10;
  sub_10077140C();
  *(v6 + 32) = v7;
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  type metadata accessor for NavigationActionDebugSetting();
  v14 = swift_allocObject();
  v14[7] = 0x6C6C412077656956;
  v14[8] = 0xE800000000000000;
  v14[10] = 0;
  v14[11] = 0;
  v14[9] = 0;
  v14[12] = sub_100055868;
  v14[13] = v13;

  sub_10075DDAC();
  v15 = sub_10075DD8C();
  v17 = v16;

  v18 = v24;
  v11(v5, v24);
  v26 = v15;
  v27 = v17;
  sub_10077140C();

  *(v6 + 40) = v14;
  type metadata accessor for DebugSection();
  v19 = swift_allocObject();
  sub_10075DDAC();
  v20 = sub_10075DD8C();
  v22 = v21;
  v11(v5, v18);
  v19[2] = v20;
  v19[3] = v22;
  v19[4] = 0;
  v19[5] = 0xE000000000000000;
  v19[6] = v6;
  result = v25;
  *(v25 + 32) = v19;
  return result;
}

void sub_100054394()
{
  v0 = [objc_opt_self() defaultCenter];
  [v0 postNotificationName:ASDAppCapabilitiesDidChangeNotification object:0];
}

void sub_100054404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100055870(a3);
  }
}

uint64_t sub_100054460@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v118 = a2;
  v3 = sub_10076F4FC();
  __chkstk_darwin(v3 - 8);
  v129 = v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_10075DDBC();
  v130 = *(v128 - 8);
  __chkstk_darwin(v128);
  v127 = v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100765B3C();
  __chkstk_darwin(v6 - 8);
  v117 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_10076B66C();
  v113 = *(v115 - 8);
  __chkstk_darwin(v115);
  v116 = v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_10076B6EC();
  __chkstk_darwin(v111);
  v114 = v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1007621EC();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v112 = v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_10076A83C();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v110 = v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_10076941C();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v124 = v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v13 - 8);
  v120 = v96 - v14;
  v15 = sub_10000A5D4(&unk_10094FA00);
  __chkstk_darwin(v15 - 8);
  v123 = v96 - v16;
  v17 = sub_10000A5D4(&qword_100944530);
  __chkstk_darwin(v17 - 8);
  v122 = v96 - v18;
  v19 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v19 - 8);
  v105 = v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v121 = v96 - v22;
  v23 = sub_10076034C();
  __chkstk_darwin(v23 - 8);
  v99 = v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000A5D4(&qword_100944538);
  __chkstk_darwin(v25 - 8);
  v97 = v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v98 = v96 - v28;
  v29 = sub_10000A5D4(&qword_100944540);
  __chkstk_darwin(v29 - 8);
  v31 = v96 - v30;
  v32 = sub_10000A5D4(&unk_1009568A0);
  __chkstk_darwin(v32 - 8);
  v34 = v96 - v33;
  v35 = sub_10076B5BC();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = *a1;
  v39 = a1[1];
  v141 = 0;
  v139 = 0u;
  v140 = 0u;
  v40 = *(v36 + 104);
  v100 = v96 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40();
  v41 = *(v36 + 56);
  v101 = v34;
  v41(v34, 1, 1, v35);
  v42 = sub_10076042C();
  v43 = *(*(v42 - 8) + 56);
  v102 = v31;
  v43(v31, 1, 1, v42);
  *&v133 = 0;
  *(&v133 + 1) = 0xE000000000000000;
  sub_10077145C(26);

  *&v133 = 0xD000000000000018;
  *(&v133 + 1) = 0x80000001007CF860;
  v44 = objc_opt_self();
  v45 = sub_10076FF6C();
  v46 = [v44 isCapableOfAction:0 capability:v45];

  if (v46)
  {
    v47._countAndFlagsBits = 7562585;
  }

  else
  {
    v47._countAndFlagsBits = 28494;
  }

  if (v46)
  {
    v48 = 0xE300000000000000;
  }

  else
  {
    v48 = 0xE200000000000000;
  }

  v47._object = v48;
  sub_1007700CC(v47);

  v136 = v133;
  *&v133 = 0x203A6E65704FLL;
  *(&v133 + 1) = 0xE600000000000000;
  v49 = sub_10076FF6C();
  v50 = [v44 isCapableOfAction:3 capability:v49];

  if (v50)
  {
    v51._countAndFlagsBits = 7562585;
  }

  else
  {
    v51._countAndFlagsBits = 28494;
  }

  if (v50)
  {
    v52 = 0xE300000000000000;
  }

  else
  {
    v52 = 0xE200000000000000;
  }

  v51._object = v52;
  sub_1007700CC(v51);

  v96[1] = v133;
  v137 = v133;
  v96[0] = *(&v133 + 1);
  *&v133 = 0x203A657461647055;
  *(&v133 + 1) = 0xE800000000000000;
  v96[5] = v38;
  v96[4] = v39;
  v53 = sub_10076FF6C();
  v54 = [v44 isCapableOfAction:1 capability:v53];

  if (v54)
  {
    v55._countAndFlagsBits = 7562585;
  }

  else
  {
    v55._countAndFlagsBits = 28494;
  }

  v56 = v120;
  if (v54)
  {
    v57 = 0xE300000000000000;
  }

  else
  {
    v57 = 0xE200000000000000;
  }

  v55._object = v57;
  sub_1007700CC(v55);

  v96[3] = v133;
  v138 = v133;
  v96[2] = *(&v133 + 1);
  v142 = _swiftEmptyArrayStorage;
  sub_1004BBAE4(0, 3, 0);
  v58 = v142;

  v59 = v127;
  sub_10075DDAC();
  v60 = sub_10075DD8C();
  v62 = v61;
  v63 = *(v130 + 8);
  v130 += 8;
  v119 = v63;
  v63(v59, v128);
  v131 = v60;
  v132 = v62;
  sub_10077140C();
  sub_10076F4DC();
  v64 = sub_10076F7FC();
  v65 = *(v64 - 8);
  v126 = *(v65 + 56);
  v125 = v65 + 56;
  v126(v56, 1, 1, v64);
  v66 = sub_10076B90C();
  swift_allocObject();
  v67 = sub_10076B8CC();
  v142 = v58;
  v69 = v58[2];
  v68 = v58[3];
  if (v69 >= v68 >> 1)
  {
    sub_1004BBAE4((v68 > 1), v69 + 1, 1);
    v58 = v142;
  }

  v134 = v66;
  v70 = sub_1000560B0(&qword_100956710, &type metadata accessor for Action);
  v135 = v70;
  *&v133 = v67;
  v58[2] = v69 + 1;
  sub_100012498(&v133, &v58[5 * v69 + 4]);

  v71 = v127;
  sub_10075DDAC();
  v72 = sub_10075DD8C();
  v74 = v73;
  v119(v71, v128);
  v131 = v72;
  v132 = v74;
  sub_10077140C();
  sub_10076F4DC();
  v126(v56, 1, 1, v64);
  swift_allocObject();
  v75 = sub_10076B8CC();
  v142 = v58;
  v77 = v58[2];
  v76 = v58[3];
  v78 = v56;
  if (v77 >= v76 >> 1)
  {
    v94 = v75;
    sub_1004BBAE4((v76 > 1), v77 + 1, 1);
    v75 = v94;
    v78 = v56;
    v58 = v142;
  }

  v134 = v66;
  v135 = v70;
  *&v133 = v75;
  v58[2] = v77 + 1;
  sub_100012498(&v133, &v58[5 * v77 + 4]);

  v79 = v127;
  sub_10075DDAC();
  v80 = sub_10075DD8C();
  v82 = v81;
  v119(v79, v128);
  v131 = v80;
  v132 = v82;
  sub_10077140C();
  sub_10076F4DC();
  v126(v78, 1, 1, v64);
  swift_allocObject();
  v83 = sub_10076B8CC();
  v142 = v58;
  v84 = v78;
  v86 = v58[2];
  v85 = v58[3];
  if (v86 >= v85 >> 1)
  {
    v95 = v83;
    sub_1004BBAE4((v85 > 1), v86 + 1, 1);
    v83 = v95;
    v58 = v142;
  }

  v134 = v66;
  v135 = v70;
  *&v133 = v83;
  v58[2] = v86 + 1;
  sub_100012498(&v133, &v58[5 * v86 + 4]);
  swift_arrayDestroy();
  v87 = sub_10076029C();
  v88 = *(*(v87 - 8) + 56);
  v88(v98, 1, 1, v87);
  v88(v97, 1, 1, v87);

  sub_1007602DC();
  sub_10076041C();
  swift_allocObject();
  v130 = sub_1007603EC();
  v89 = sub_10075DB7C();
  v90 = *(*(v89 - 8) + 56);
  v90(v121, 1, 1, v89);
  v91 = sub_100762DCC();
  (*(*(v91 - 8) + 56))(v122, 1, 1, v91);
  v92 = sub_10075DD7C();
  (*(*(v92 - 8) + 56))(v123, 1, 1, v92);
  v126(v84, 1, 1, v64);
  v90(v105, 1, 1, v89);
  (*(v103 + 104))(v124, enum case for IncompleteShelfFetchStrategy.onPageLoad(_:), v104);
  (*(v106 + 104))(v110, enum case for ShelfHorizontalScrollTargetBehavior.viewAligned(_:), v107);
  (*(v108 + 104))(v112, enum case for ShelfBackground.none(_:), v109);
  sub_10000A5D4(&qword_100944548);
  swift_allocObject();
  sub_10076F18C();
  *&v133 = _swiftEmptyArrayStorage;
  sub_1000560B0(&unk_100946780, &type metadata accessor for Shelf.PresentationHints);
  sub_10000A5D4(&unk_1009564D0);
  sub_1000560F8();
  sub_1007712CC();
  (*(v113 + 104))(v116, enum case for Shelf.ContentsMetadata.none(_:), v115);
  sub_100765B2C();
  sub_10076B7BC();
  swift_allocObject();
  result = sub_10076B73C();
  *v118 = result;
  return result;
}

id sub_100055798()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppCapabilitiesSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000557F0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100055828()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100055870(uint64_t a1)
{
  v46 = a1;
  v1 = sub_10000A5D4(&unk_1009428E0);
  v47 = *(v1 - 8);
  v48 = v1;
  __chkstk_darwin(v1);
  v45 = &v33 - v2;
  v3 = sub_10000A5D4(&qword_100944528);
  __chkstk_darwin(v3 - 8);
  v44 = &v33 - v4;
  v5 = sub_10076F3DC();
  __chkstk_darwin(v5 - 8);
  v43 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10075F65C();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v42 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_100765F6C();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100766EDC();
  v9 = *(v34 - 8);
  __chkstk_darwin(v34);
  v38 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076F4FC();
  __chkstk_darwin(v11 - 8);
  v35 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v13 - 8);
  v15 = &v33 - v14;
  v16 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v16 - 8);
  v18 = &v33 - v17;
  v19 = sub_10076C15C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v49 = _swiftEmptyArrayStorage;
  sub_1007714EC();
  *&v51 = 0xD00000000000001ELL;
  *(&v51 + 1) = "TRADITIONAL_CHINESE";

  sub_100054460(&v51, v54);

  sub_1007714CC();
  sub_1007714FC();
  sub_10077150C();
  sub_1007714DC();
  *&v51 = 0xD00000000000001CLL;
  *(&v51 + 1) = "uses-non-webkit-browser-engine";

  sub_100054460(&v51, v54);

  sub_1007714CC();
  sub_1007714FC();
  sub_10077150C();
  sub_1007714DC();
  swift_arrayDestroy();
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  (*(v20 + 104))(v22, enum case for FlowPage.page(_:), v19);
  v23 = sub_10075DB7C();
  (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
  v24 = sub_10076096C();
  (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
  v49 = 0u;
  v50 = 0u;
  sub_10076F4DC();
  (*(v9 + 104))(v38, enum case for FlowPresentationContext.infer(_:), v34);
  (*(v36 + 104))(v40, enum case for FlowAnimationBehavior.infer(_:), v37);
  (*(v39 + 104))(v42, enum case for FlowOrigin.inapp(_:), v41);
  sub_10076FA2C();
  sub_10075F63C();
  swift_allocObject();
  v25 = sub_10075F5EC();
  v51 = 0u;
  v52 = 0u;
  sub_10076F3CC();
  v26 = sub_10076F39C();
  (*(*(v26 - 8) + 56))(v44, 1, 1, v26);
  v27 = sub_10075FFEC();
  swift_allocObject();
  v28 = sub_10075FFDC();
  *(&v52 + 1) = v27;
  *&v51 = v28;
  sub_10075F58C();
  sub_1000258C0(&v51);
  sub_10076F64C();
  v30 = v45;
  v29 = v46;
  v31 = v48;
  sub_10076FC1C();
  sub_100263C24(v25, 1, v29, v30);

  return (*(v47 + 8))(v30, v31);
}

uint64_t sub_1000560B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000560F8()
{
  result = qword_100944550;
  if (!qword_100944550)
  {
    sub_10000CE78(&unk_1009564D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944550);
  }

  return result;
}

id sub_10005615C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension18AvatarShowcaseView_artworkLoader] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension18AvatarShowcaseView_maxPlayersToShow] = a1;
  v6 = OBJC_IVAR____TtC20ProductPageExtension18AvatarShowcaseView_layoutConfiguration;
  v7 = sub_10076A32C();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v3[v6], a2, v7);
  sub_10076A2EC();
  v10 = v9 * a1;
  sub_10076A2FC();
  v12 = v10 + v11;
  sub_10076A30C();
  v14 = v13;
  v20.receiver = v3;
  v20.super_class = type metadata accessor for AvatarShowcaseView();
  v15 = objc_msgSendSuper2(&v20, "initWithFrame:", 0.0, 0.0, v12, v14);
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 clearColor];
  [v17 setBackgroundColor:v18];

  (*(v8 + 8))(a2, v7);
  return v17;
}

void sub_100056340(uint64_t a1)
{
  v2 = v1;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension18AvatarShowcaseView_artworkLoader] = a1;

  if (!a1)
  {
    return;
  }

  v4 = [v2 subviews];
  sub_100016F40(0, &qword_1009441F0);
  v5 = sub_1007701BC();

  if (v5 >> 62)
  {
    v6 = sub_10077158C();
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_4:
      if (v6 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v6; ++i)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = sub_10077149C();
        }

        else
        {
          v8 = *(v5 + 8 * i + 32);
        }

        v9 = v8;
        sub_10075FD2C();
        if (swift_dynamicCastClass())
        {
          sub_10000D7F8();
          sub_100760BFC();
        }
      }
    }
  }
}

void sub_1000564CC(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&qword_1009473D0);
  __chkstk_darwin(v6 - 8);
  v59 = &v51 - v7;
  v58 = sub_10075FEEC();
  v8 = *(v58 - 8);
  __chkstk_darwin(v58);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100056B20();

  v57 = a2;
  sub_100056340(v11);
  if (a1 >> 62)
  {
    goto LABEL_45;
  }

  v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (*&v3[OBJC_IVAR____TtC20ProductPageExtension18AvatarShowcaseView_maxPlayersToShow] >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = *&v3[OBJC_IVAR____TtC20ProductPageExtension18AvatarShowcaseView_maxPlayersToShow];
  }

  sub_10076A2EC();
  v15 = v14 * v13;
  sub_10076A2FC();
  v17 = v15 + v16;
  [v3 frame];
  v19 = v18;
  v21 = v20;
  [v3 frame];
  [v3 setFrame:{v19, v21, v17}];
  if (v13 < 0)
  {
    __break(1u);
LABEL_47:
    __break(1u);
    return;
  }

  v60 = a1;
  if (v13)
  {
    v52 = v60 & 0xC000000000000001;
    if ((v60 & 0xC000000000000001) != 0 || v13 <= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v56 = sub_100016F40(0, &qword_100942F10);
      v22 = 0;
      v55 = (v8 + 104);
      v54 = enum case for CornerStyle.arc(_:);
      v53 = (v8 + 8);
      v51 = v13;
      while (1)
      {
        sub_10076A30C();
        v25 = v24;
        sub_10076A2FC();
        v27 = (v25 - v26) * v22;
        sub_10076A30C();
        v29 = v28;
        sub_10076A30C();
        v31 = v30;
        v8 = sub_10075FD2C();
        v32 = [objc_allocWithZone(v8) initWithFrame:{v27, 0.0, v29, v31}];
        sub_100770D5C();
        sub_10075FB8C();
        sub_10076A30C();
        v33 = v58;
        (*v55)(v10, v54, v58);
        sub_10075FD1C();
        (*v53)(v10, v33);
        if (qword_10093F898 != -1)
        {
          swift_once();
        }

        v34 = sub_10076BCFC();
        v35 = sub_10000A61C(v34, qword_10099D468);
        v36 = *(v34 - 8);
        v37 = v59;
        (*(v36 + 16))(v59, v35, v34);
        v38 = *(v36 + 56);
        a1 = v36 + 56;
        v38(v37, 0, 1, v34);
        sub_10075FCDC();
        v39 = [v3 traitCollection];
        LOBYTE(v37) = sub_10077070C();

        v40 = [v3 subviews];
        sub_100016F40(0, &qword_1009441F0);
        v41 = sub_1007701BC();

        v42 = v41 >> 62;
        if (v37)
        {
          if (v42)
          {
            v43 = sub_10077158C();
            if (!v43)
            {
              goto LABEL_11;
            }
          }

          else
          {
            v43 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v43)
            {
              goto LABEL_11;
            }
          }

          v44 = __OFSUB__(v43, 1);
          v45 = v43 - 1;
          if (v44)
          {
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            v12 = sub_10077158C();
            goto LABEL_3;
          }

          if ((v41 & 0xC000000000000001) == 0)
          {
            if ((v45 & 0x8000000000000000) != 0)
            {
              goto LABEL_43;
            }

            if (v45 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_44;
            }

            v46 = *(v41 + 8 * v45 + 32);
LABEL_29:
            v47 = v46;
            goto LABEL_30;
          }
        }

        else
        {
          if (v42)
          {
            if (!sub_10077158C())
            {
LABEL_11:

              [v3 addSubview:v32];
              v23 = 0;
              if (!v52)
              {
                goto LABEL_34;
              }

              goto LABEL_12;
            }
          }

          else if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_11;
          }

          if ((v41 & 0xC000000000000001) == 0)
          {
            if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_42;
            }

            v46 = *(v41 + 32);
            goto LABEL_29;
          }
        }

        v47 = sub_10077149C();
LABEL_30:
        v48 = v47;

        v23 = v48;
        v49 = [v3 traitCollection];
        v50 = sub_10077070C();

        if (v50)
        {
          [v3 insertSubview:v32 aboveSubview:{v23, v51}];
        }

        else
        {
          [v3 insertSubview:v32 belowSubview:{v23, v51}];
        }

        if (!v52)
        {
LABEL_34:

          goto LABEL_13;
        }

LABEL_12:
        sub_10077149C();
LABEL_13:
        ++v22;
        sub_10076A30C();
        sub_10076A30C();
        sub_10076BFBC();
        sub_10000D7F8();
        sub_100760B8C();

        if (v51 == v22)
        {
          return;
        }
      }
    }

    goto LABEL_47;
  }
}

void sub_100056B20()
{
  *&v0[OBJC_IVAR____TtC20ProductPageExtension18AvatarShowcaseView_artworkLoader] = 0;

  v1 = [v0 subviews];
  sub_100016F40(0, &qword_1009441F0);
  v2 = sub_1007701BC();

  if (v2 >> 62)
  {
    v3 = sub_10077158C();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = sub_10077149C();
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    [v5 removeFromSuperview];
  }

LABEL_10:
}

id sub_100056C70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AvatarShowcaseView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AvatarShowcaseView()
{
  result = qword_100944588;
  if (!qword_100944588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100056D78()
{
  result = sub_10076A32C();
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

unint64_t sub_100056E6C()
{
  result = qword_100944598;
  if (!qword_100944598)
  {
    type metadata accessor for EditorialStoryCardCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944598);
  }

  return result;
}

double sub_100056EC4()
{
  v0 = sub_10076D39C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v19 - v5;
  v7 = sub_10076C38C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10076469C();
  v11 = *(v20 - 8);
  __chkstk_darwin(v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007632FC();
  sub_10076460C();
  sub_10076C2FC();
  (*(v8 + 8))(v10, v7);
  sub_10076462C();
  if (JUScreenClassGetMain() == 1)
  {
    if (qword_100941470 != -1)
    {
      swift_once();
    }

    v14 = qword_100962AF0;
  }

  else
  {
    if (qword_100941468 != -1)
    {
      swift_once();
    }

    v14 = qword_100962AD8;
  }

  v15 = sub_10000A61C(v0, v14);
  (*(v1 + 16))(v3, v15, v0);
  (*(v1 + 32))(v6, v3, v0);
  sub_10076D36C();
  v17 = v16;
  (*(v1 + 8))(v6, v0);
  swift_unknownObjectRelease();
  (*(v11 + 8))(v13, v20);
  return round(v17);
}

double sub_1000571FC()
{
  v0 = sub_10076D39C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  v7 = sub_10076C38C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076460C();
  sub_10076C2FC();
  (*(v8 + 8))(v10, v7);
  sub_10076462C();
  if (JUScreenClassGetMain() == 1)
  {
    if (qword_100941470 != -1)
    {
      swift_once();
    }

    v11 = qword_100962AF0;
  }

  else
  {
    if (qword_100941468 != -1)
    {
      swift_once();
    }

    v11 = qword_100962AD8;
  }

  v12 = sub_10000A61C(v0, v11);
  (*(v1 + 16))(v3, v12, v0);
  (*(v1 + 32))(v6, v3, v0);
  sub_10076D36C();
  v14 = v13;
  (*(v1 + 8))(v6, v0);
  swift_unknownObjectRelease();
  return round(v14);
}

char *sub_1000574A0(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  *(v2 + qword_10099CA50 + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_10076A14C();
  sub_10076F64C();
  sub_10076FC1C();
  *(v2 + qword_1009445A0) = v11;

  v5 = sub_100486E1C(a1, a2);
  v6 = *&v5[qword_10099E390];
  v7 = v5;
  v8 = v6;

  sub_10076668C();

  sub_10000A5D4(&unk_100945BF0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100784500;
  *(v9 + 32) = sub_10076E88C();
  *(v9 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v9 + 48) = sub_10076E3EC();
  *(v9 + 56) = &protocol witness table for UITraitLayoutDirection;
  sub_10077061C();

  swift_unknownObjectRelease();

  return v7;
}

void sub_10005764C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10077164C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076F9AC();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27.receiver = v0;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, "viewDidLoad", v9);
  v12 = [v0 collectionView];
  if (v12)
  {
    v13 = v12;
    [v12 setKeyboardDismissMode:1];
  }

  v14 = [v1 collectionView];
  if (v14)
  {
    v15 = v14;
    [v14 setAllowsSelection:1];
  }

  v16 = [v1 collectionView];
  if (v16)
  {
    v17 = v16;
    [v16 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  }

  v18 = [v1 collectionView];
  if (v18)
  {
    v19 = v18;
    memset(v26, 0, sizeof(v26));
    sub_10076F96C();
    sub_10000CFBC(v26, &unk_1009434C0);
    sub_100770B9C();

    (*(v8 + 8))(v11, v7);
    sub_10000A5D4(&unk_100945BF0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100784500;
    *(v20 + 32) = sub_10076E88C();
    *(v20 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
    *(v20 + 48) = sub_10076E3FC();
    *(v20 + 56) = &protocol witness table for UITraitLegibilityWeight;
    sub_10077061C();
    swift_unknownObjectRelease();

    if (qword_100941210 != -1)
    {
      swift_once();
    }

    v21 = sub_10076D9AC();
    sub_10000A61C(v21, qword_1009A23B0);
    sub_10076D17C();
    sub_10076D40C();
    v23 = v22;
    (*(v4 + 8))(v6, v3);
    [v1 additionalSafeAreaInsets];
    [v1 setAdditionalSafeAreaInsets:v23];
    v24 = [v1 view];
    if (v24)
    {
      v25 = v24;
      [v24 setNeedsLayout];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100057A48(void *a1)
{
  v1 = a1;
  sub_10005764C();
}

void sub_100057AF4(void *a1, uint64_t a2, const char **a3, unsigned int *a4)
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

void sub_100057C3C(void *a1, uint64_t a2, uint64_t a3, const char **a4, unsigned int *a5)
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

void sub_100057DA0(void *a1)
{
  v1 = a1;
  sub_100057D78();
}

uint64_t sub_100057E10(unsigned int *a1, void (*a2)(void), unsigned int *a3)
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

void sub_1000580A4(void *a1)
{
  v1 = a1;
  sub_100057DE8();
}

id sub_1000580EC()
{
  v1 = v0;
  swift_getObjectType();
  sub_10000A5D4(&qword_100942480);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100783C60;
  sub_10000A5D4(&qword_100944B48);
  swift_allocObject();
  swift_retain_n();

  v3 = sub_10076A80C();
  v4 = sub_100058C18();
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  type metadata accessor for BackgroundConfigurationCollectionElementsObserver();
  v5 = swift_allocObject();
  *(v5 + 16) = 1;
  v6 = sub_100058C7C(&qword_100942498, type metadata accessor for BackgroundConfigurationCollectionElementsObserver);
  *(v2 + 48) = v5;
  *(v2 + 56) = v6;
  sub_100058C7C(&qword_100944B38, type metadata accessor for SearchFocusDiffablePageViewController);
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
    sub_1006DD260();
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

unint64_t sub_10005838C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for SearchFocusPageShelfLayoutSpacingProvider;
  result = sub_100058BC4();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1000583C0@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  sub_100058C7C(&qword_100944B38, type metadata accessor for SearchFocusDiffablePageViewController);
  sub_10076A6DC();
  v2 = sub_10076A6BC();
  v18[3] = swift_getObjectType();
  v18[0] = v2;
  v3 = sub_10076A6AC();
  v19[3] = swift_getObjectType();
  v19[0] = v3;
  sub_10000CD08(v18, v17);
  sub_10000CD64(v17, v15);
  sub_10000A5D4(&qword_100942460);
  if (swift_dynamicCast() && v16)
  {
    v13 = v16;
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
    *&v4[2 * v6 + 4] = v13;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_10000CD08(v19, v17);
  sub_10000CD64(v17, v15);
  sub_10000A5D4(&qword_100942460);
  if (swift_dynamicCast() && v16)
  {
    v14 = v16;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_10049CD38(0, v4[2] + 1, 1, v4);
    }

    v8 = v4[2];
    v7 = v4[3];
    v9 = v14;
    if (v8 >= v7 >> 1)
    {
      v12 = sub_10049CD38((v7 > 1), v8 + 1, 1, v4);
      v9 = v14;
      v4 = v12;
    }

    v4[2] = v8 + 1;
    *&v4[2 * v8 + 4] = v9;
  }

  swift_arrayDestroy();
  v10 = type metadata accessor for SearchFocusLayoutSectionProvider();
  swift_allocObject();

  result = sub_100592098(v20);
  a1[3] = v10;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = result;
  return result;
}

unint64_t sub_1000586A0@<X0>(uint64_t *a1@<X8>)
{
  sub_100760F1C();
  swift_allocObject();
  v2 = sub_100760F0C();
  swift_allocObject();
  v3 = sub_100760F0C();
  swift_allocObject();
  v4 = sub_100760F0C();
  a1[3] = &type metadata for SearchFocusPageGridProvider;
  result = sub_100058B70();
  a1[4] = result;
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

void sub_100058748(void *a1, uint64_t a2, void *a3)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v9.receiver;
  objc_msgSendSuper2(&v9, "scrollViewWillBeginDragging:", v4);
  v6 = &v5[qword_10099CA50];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(ObjectType, v7);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1000587F8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SearchFocusShelfComponentTypeMappingProvider();
  v3 = swift_allocObject();
  type metadata accessor for AppPromotionsShelfComponentTypeMappingProvider();
  *(v3 + 16) = swift_allocObject();
  type metadata accessor for SmallStoryCardShelfComponentTypeMappingProvider();
  *(v3 + 24) = swift_allocObject();
  a1[3] = v2;
  result = sub_100058C7C(&qword_100944B28, type metadata accessor for SearchFocusShelfComponentTypeMappingProvider);
  a1[4] = result;
  *a1 = v3;
  return result;
}

void sub_1000588AC(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100944B20);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v6 - v4;
  sub_100734CD4(a1);
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

uint64_t sub_1000589E4()
{

  v1 = v0 + qword_10099CA50;

  return sub_10000CC8C(v1);
}

uint64_t sub_100058A24(uint64_t a1)
{

  v2 = a1 + qword_10099CA50;

  return sub_10000CC8C(v2);
}

uint64_t type metadata accessor for SearchFocusDiffablePageViewController()
{
  result = qword_1009445D0;
  if (!qword_1009445D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100058B14(void *a1)
{
  v1 = [a1 collectionView];
  if (v1)
  {
    v2 = v1;
    [v1 reloadData];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_100058B70()
{
  result = qword_100944B30;
  if (!qword_100944B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944B30);
  }

  return result;
}

unint64_t sub_100058BC4()
{
  result = qword_100944B40;
  if (!qword_100944B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944B40);
  }

  return result;
}

unint64_t sub_100058C18()
{
  result = qword_100944B50;
  if (!qword_100944B50)
  {
    sub_10000CE78(&qword_100944B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944B50);
  }

  return result;
}

uint64_t sub_100058C7C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100058CC4(void *a1)
{
  v2 = sub_10077164C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100941210 != -1)
  {
    swift_once();
  }

  v6 = sub_10076D9AC();
  sub_10000A61C(v6, qword_1009A23B0);
  sub_10076D17C();
  sub_10076D40C();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  [a1 additionalSafeAreaInsets];
  [a1 setAdditionalSafeAreaInsets:v8];
  v9 = [a1 view];
  if (v9)
  {
    v10 = v9;
    [v9 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100058E5C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10075FEEC();
  v48 = *(v10 - 8);
  v49 = v10;
  __chkstk_darwin(v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension35AppEventTodayCardCollectionViewCell_formattedDateView] = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v53.receiver = v4;
  v53.super_class = ObjectType;
  v50 = ObjectType;
  v13 = objc_msgSendSuper2(&v53, "initWithFrame:", a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC20ProductPageExtension35AppEventTodayCardCollectionViewCell_formattedDateView;
  *(*&v13[OBJC_IVAR____TtC20ProductPageExtension35AppEventTodayCardCollectionViewCell_formattedDateView] + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_delegate + 8) = &off_100885948;
  swift_unknownObjectWeakAssign();
  v15 = *&v13[v14];
  v16 = v13;
  v47 = v15;
  v17 = [v16 traitCollection];
  v18 = [(NSString *)v17 preferredContentSizeCategory];
  v19 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v20 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  result = sub_10077088C();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (sub_10077087C())
  {
    v22 = sub_10077088C();

    if (v22)
    {
      v23 = UIContentSizeCategoryAccessibilityLarge;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v24 = [(NSString *)v17 preferredContentSizeCategory];
  v25 = UIContentSizeCategoryAccessibilityMedium;
  v26 = UIContentSizeCategoryAccessibilityExtraLarge;
  result = sub_10077088C();
  if ((result & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (sub_10077087C())
  {
    v27 = sub_10077088C();

    if (v27)
    {
      v23 = v25;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {

    v23 = 0;
    v17 = v25;
  }

LABEL_12:

  v28 = v47;
  [v47 setMaximumContentSizeCategory:v23];

  v29 = [v16 contentView];
  [v29 addSubview:*&v13[v14]];

  v30 = OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_infoLayer;
  v31 = *&v16[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_infoLayer];
  v32 = type metadata accessor for TodayCardInfoLayerView();
  v52.receiver = v31;
  v52.super_class = v32;
  v33 = v16;
  objc_msgSendSuper2(&v52, "_setContinuousCornerRadius:", 20.0);
  sub_10030DF18();
  *&v33[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaCornerRadius] = 0x402E000000000000;
  v35 = v48;
  v34 = v49;
  (*(v48 + 104))(v12, enum case for CornerStyle.continuous(_:), v49);
  sub_10027608C(v12, 15.0);
  (*(v35 + 8))(v12, v34);
  v36 = *&v33[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v36)
  {
    v37 = v36;
    [v37 _setContinuousCornerRadius:15.0];
    v38 = [v37 layer];
    [v38 setMaskedCorners:sub_1007704FC()];
  }

  v39 = [v33 contentView];
  [v39 _setContinuousCornerRadius:20.0];

  v40 = [v33 contentView];
  v41 = [v40 layer];

  [v41 setMaskedCorners:3];
  v42 = *&v16[v30];
  v43 = *&v42[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_preferredGradientType];
  *&v42[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_preferredGradientType] = kCAGradientLayerAxial;
  v44 = v42;
  v45 = kCAGradientLayerAxial;

  sub_100059400();
  sub_10000A5D4(&unk_100945BF0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_100783DD0;
  *(v46 + 32) = sub_10076E88C();
  *(v46 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v51[3] = v50;
  v51[0] = v33;
  sub_100770C5C();
  swift_unknownObjectRelease();

  sub_10000CD74(v51);
  return v33;
}

uint64_t sub_100059400()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension35AppEventTodayCardCollectionViewCell_formattedDateView];
  v2 = [v0 traitCollection];
  v3 = [(NSString *)v2 preferredContentSizeCategory];
  v4 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v5 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  result = sub_10077088C();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (sub_10077087C())
  {
    v7 = sub_10077088C();

    if (v7)
    {
      v8 = UIContentSizeCategoryAccessibilityLarge;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v9 = [(NSString *)v2 preferredContentSizeCategory];
  v10 = UIContentSizeCategoryAccessibilityMedium;
  v11 = UIContentSizeCategoryAccessibilityExtraLarge;
  result = sub_10077088C();
  if ((result & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (sub_10077087C())
  {
    v12 = sub_10077088C();

    if (v12)
    {
      v8 = v10;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {

    v8 = 0;
    v2 = v10;
  }

LABEL_12:

  [v1 setMaximumContentSizeCategory:v8];

  return [v0 setNeedsLayout];
}

__n128 sub_10005960C@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32);
  result = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets);
  v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 16);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

id sub_100059630(id result)
{
  v2 = &v1[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];
  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 16];
  v5 = v1[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32];
  v6 = *(result + 1);
  *v2 = *result;
  *(v2 + 1) = v6;
  v7 = *(result + 32);
  v2[32] = v7;
  if (v7)
  {
    if (v5)
    {
      return result;
    }

    return [v1 setNeedsLayout];
  }

  if (v5)
  {
    return [v1 setNeedsLayout];
  }

  v4 = vceqq_f64(*(result + 1), v4);
  *&v3.f64[0] = vmovn_s32(vuzp1q_s32(vceqq_f64(*result, v3), v4));
  LOWORD(v3.f64[0]) = vminv_u16(*&v3.f64[0]);
  if ((LOBYTE(v3.f64[0]) & 1) == 0)
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

double sub_10005969C()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_1009434A0);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v17 - v4;
  v6 = 0.0;
  if (v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded] == 1)
  {
    v7 = &v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];
    if ((v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32] & 1) != 0 || (v6 = *v7, *v7 <= 0.0) || (v8 = [v0 traitCollection], v9 = sub_1007706EC(), v8, (v9 & 1) == 0))
    {
      v10 = [v1 traitCollection];
      v11 = sub_10077070C();

      v12 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
      swift_beginAccess();
      sub_10003BDD4(v1 + v12, v5);
      v13 = [v1 traitCollection];
      sub_1003DF334(v5, v13);
      if (v11)
      {
        v6 = v15;
      }

      else
      {
        v6 = v14;
      }

      sub_10005AEAC(v5);
    }
  }

  return v6;
}

id sub_1000598A4()
{
  v1 = v0;
  v2 = [v0 contentView];
  [v2 bounds];
  v4 = v3;

  v5 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  if (v1[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded] == 1)
  {
    v6 = v4 + -30.0 + -14.0 + -14.0;
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension35AppEventTodayCardCollectionViewCell_formattedDateView] bounds];
    Height = CGRectGetHeight(v37);
  }

  else
  {
    v8 = [v1 contentView];
    [v8 bounds];
    v6 = v9;
    Height = v10;
  }

  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35AppEventTodayCardCollectionViewCell_formattedDateView];
  sub_1004B67D8(v36);
  sub_1004B8E04(v11, v36, v6, Height);
  sub_10005AE58(v36);

  if (v1[v5] == 1 && ((v12 = [v1 traitCollection], v13 = v12, !v1[v5]) ? (v14 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory) : (v14 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory), sub_100312548(v12, v1[*v14], v36), v13, v1[v5] == 1))
  {
    v15 = [v1 contentView];
    [v15 bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v38.origin.x = v17;
    v38.origin.y = v19;
    v38.size.width = v21;
    v38.size.height = v23;
    CGRectGetMinY(v38);
    MinY = sub_10005969C();
  }

  else
  {
    v25 = [v1 contentView];
    [v25 bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    v39.origin.x = v27;
    v39.origin.y = v29;
    v39.size.width = v31;
    v39.size.height = v33;
    MinY = CGRectGetMinY(v39);
  }

  v34 = [v1 contentView];
  [v34 bounds];

  sub_100770A4C();
  return [v11 setFrame:?];
}

void sub_100059B70()
{
  if ((*(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded) & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundView);
    [v1 frame];
    sub_100770A3C();
    [v1 setFrame:?];
    v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror);
    if (v2)
    {
      v3 = v2;
      [v3 frame];
      sub_100770A3C();
      [v3 setFrame:?];
    }
  }
}

uint64_t sub_100059D28(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_10076C7EC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v40 = v39 - v15;
  sub_100333C2C(a1, a2, a3, a4);
  v16 = sub_10076C7FC();
  sub_10075E2EC();
  if (swift_dynamicCastClass())
  {
    v39[1] = v16;
    v17 = sub_10075E2CC();
    v18 = *&v5[OBJC_IVAR____TtC20ProductPageExtension35AppEventTodayCardCollectionViewCell_formattedDateView];
    sub_1004B1900(v17);
    [v5 setNeedsLayout];
    v19 = [v5 backgroundView];
    if (v19)
    {
      v20 = v19;
      v21 = sub_10075E2DC();
      [v20 setBackgroundColor:v21];
    }

    v39[0] = v13;
    v22 = *&v5[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundView];
    v23 = sub_10075E2DC();
    [v22 setBackgroundColor:v23];

    v24 = sub_10075E2DC();
    v25 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_backgroundView;
    swift_beginAccess();
    v26 = *&v18[v25];
    if (v26)
    {
      v27 = v26;
      [v27 setBackgroundColor:v24];
    }

    type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
    sub_10076F63C();
    v28 = v43;
    v29 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
    v30 = *&v18[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
    v31 = v30;
    sub_1004B57F0(v28);
    v32 = *&v18[v29];
    *&v18[v29] = v28;
    v33 = v28;

    sub_1004B5954(v30);
    v34 = v40;
    sub_10076C80C();
    v35 = v39[0];
    (*(v11 + 104))(v39[0], enum case for TodayCard.Style.white(_:), v10);
    sub_10005AE00();
    sub_10077018C();
    sub_10077018C();
    if (v43 == v41 && v44 == v42)
    {
      v36 = 1;
    }

    else if (sub_10077167C())
    {
      v36 = 1;
    }

    else
    {
      v36 = 2;
    }

    v38 = *(v11 + 8);
    v38(v35, v10);
    v38(v34, v10);

    [v18 setOverrideUserInterfaceStyle:v36];
    sub_10005A114();
    [v5 setNeedsLayout];
  }

  else
  {
  }
}

void sub_10005A114()
{
  v1 = v0;
  sub_1003DC268();
  v2 = [v0 contentView];
  sub_1001EEC4C();
  if (v3)
  {
    v4 = sub_10076FF6C();
  }

  else
  {
    v4 = 0;
  }

  [v2 setAccessibilityLabel:v4];

  v5 = [v1 contentView];
  v6 = [*(*&v1[OBJC_IVAR____TtC20ProductPageExtension35AppEventTodayCardCollectionViewCell_formattedDateView] + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_textLabel) text];
  if (v6)
  {
    v7 = v6;
    sub_10076FF9C();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v21[0] = v9;
  v10 = 0;
  v21[1] = sub_1001EEC4C();
  v21[2] = v11;
  v12 = _swiftEmptyArrayStorage;
LABEL_8:
  v13 = &v21[2 * v10];
  while (++v10 != 3)
  {
    v14 = v13 + 2;
    v15 = *v13;
    v13 += 2;
    if (v15)
    {
      v16 = *(v14 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_10049D954(0, *(v12 + 2) + 1, 1, v12);
      }

      v18 = *(v12 + 2);
      v17 = *(v12 + 3);
      if (v18 >= v17 >> 1)
      {
        v12 = sub_10049D954((v17 > 1), v18 + 1, 1, v12);
      }

      *(v12 + 2) = v18 + 1;
      v19 = &v12[16 * v18];
      *(v19 + 4) = v16;
      *(v19 + 5) = v15;
      goto LABEL_8;
    }
  }

  sub_10000A5D4(&unk_100943470);
  swift_arrayDestroy();
  sub_10000A5D4(&unk_10094BB60);
  sub_10003BCA8();
  sub_10076FEFC();

  v20 = sub_10076FF6C();

  [v5 setAccessibilityLabel:v20];
}

void sub_10005A398(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  sub_1003342F8(a1, a2, a3 & 1);
  v8 = swift_dynamicCastClass();
  if (v8 && (a3 & 1) == 0)
  {
    v9 = v8;
    v10 = a1;
    v11 = [v4 backgroundView];
    if (v11)
    {
      v12 = v11;
      v13 = [v9 backgroundView];
      v14 = [v13 backgroundColor];

      [v12 setBackgroundColor:v14];
    }

    v15 = *&v4[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundView];
    v16 = [*&v9[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundView] backgroundColor];
    [v15 setBackgroundColor:v16];

    v17 = OBJC_IVAR____TtC20ProductPageExtension35AppEventTodayCardCollectionViewCell_formattedDateView;
    v18 = *&v9[OBJC_IVAR____TtC20ProductPageExtension35AppEventTodayCardCollectionViewCell_formattedDateView];
    v19 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_appEventFormattedDatePresenter;
    swift_beginAccess();
    if (*(v18 + v19))
    {
    }

    else
    {
      v20 = _swiftEmptyArrayStorage;
    }

    v21 = *&v4[OBJC_IVAR____TtC20ProductPageExtension35AppEventTodayCardCollectionViewCell_formattedDateView];
    sub_1004B1900(v20);
    [v4 setNeedsLayout];
    v22 = *&v9[v17];
    v23 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_backgroundView;
    swift_beginAccess();
    v24 = *(v22 + v23);
    if (v24)
    {
      v25 = [v24 backgroundColor];
    }

    else
    {
      v25 = 0;
    }

    v26 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_backgroundView;
    swift_beginAccess();
    v27 = *&v21[v26];
    if (v27)
    {
      v28 = v27;
      [v28 setBackgroundColor:v25];
    }

    [v21 setOverrideUserInterfaceStyle:{objc_msgSend(*&v9[v17], "overrideUserInterfaceStyle")}];
    v29 = [*&v9[v17] maximumContentSizeCategory];
    [v21 setMaximumContentSizeCategory:v29];

    v30 = [v4 contentView];
    v31 = [v9 contentView];
    v32 = [v31 overrideUserInterfaceStyle];

    [v30 setOverrideUserInterfaceStyle:v32];
  }
}

void sub_10005A678()
{
  v1 = v0;
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "prepareForReuse");
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension35AppEventTodayCardCollectionViewCell_formattedDateView];
  sub_1004B1900(_swiftEmptyArrayStorage);
  [v1 setNeedsLayout];
  v3 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_backgroundView;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4)
  {
    [v4 setBackgroundColor:0];
  }

  v5 = [v1 contentView];
  [v5 setOverrideUserInterfaceStyle:0];
}

id sub_10005A79C()
{
  v1 = v0;
  v2 = sub_10075FEEC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10033C928();
  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension35AppEventTodayCardCollectionViewCell_formattedDateView];
  v7 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  if (v1[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v8 = 5;
  }

  else
  {
    v8 = 3;
  }

  v9 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style);
  *(v6 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style) = v8;
  sub_1004B413C(v9);
  if (v1[v7])
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 20.0;
  }

  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_infoLayer];
  v12 = type metadata accessor for TodayCardInfoLayerView();
  v22.receiver = v11;
  v22.super_class = v12;
  objc_msgSendSuper2(&v22, "_setContinuousCornerRadius:", v10);
  sub_10030DF18();
  if (v1[v7])
  {
    v13 = 0.0;
  }

  else
  {
    v13 = 15.0;
  }

  *&v1[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaCornerRadius] = v13;
  (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
  sub_10027608C(v5, v13);
  (*(v3 + 8))(v5, v2);
  v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v14)
  {
    v15 = v14;
    [v15 _setContinuousCornerRadius:v13];
    v16 = [v15 layer];
    [v16 setMaskedCorners:sub_1007704FC()];
  }

  if (v1[v7])
  {
    v17 = 0.0;
  }

  else
  {
    v17 = 20.0;
  }

  v18 = [v1 contentView];
  [v18 _setContinuousCornerRadius:v17];

  v19 = [v1 contentView];
  v20 = [v19 layer];

  [v20 setMaskedCorners:3];
  return [v1 setNeedsLayout];
}

id sub_10005AA78()
{
  v1 = v0;
  v2 = sub_10075FEEC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10033C7F0();
  v6 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  v7 = v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded];
  v8 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v8 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v9 = v0[*v8];
  if (v9 == 4)
  {
    v10 = 16.0;
  }

  else
  {
    v10 = 15.0;
  }

  if (v9 == 4)
  {
    v11 = 4;
  }

  else
  {
    v11 = 3;
  }

  v12 = *&v0[OBJC_IVAR____TtC20ProductPageExtension35AppEventTodayCardCollectionViewCell_formattedDateView];
  if (v7)
  {
    v13 = 5;
  }

  else
  {
    v13 = v11;
  }

  v14 = *(v12 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style);
  *(v12 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style) = v13;
  sub_1004B413C(v14);
  if (v1[v6])
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 20.0;
  }

  v16 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_infoLayer];
  v17 = type metadata accessor for TodayCardInfoLayerView();
  v23.receiver = v16;
  v23.super_class = v17;
  objc_msgSendSuper2(&v23, "_setContinuousCornerRadius:", v15);
  sub_10030DF18();
  if (v1[v6])
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v10;
  }

  *&v1[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaCornerRadius] = v18;
  (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
  sub_10027608C(v5, v18);
  (*(v3 + 8))(v5, v2);
  v19 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v19)
  {
    v20 = v19;
    [v20 _setContinuousCornerRadius:v18];
    v21 = [v20 layer];
    [v21 setMaskedCorners:sub_1007704FC()];
  }

  return [v1 setNeedsLayout];
}

uint64_t type metadata accessor for AppEventTodayCardCollectionViewCell()
{
  result = qword_100944B88;
  if (!qword_100944B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10005AE00()
{
  result = qword_100944B98;
  if (!qword_100944B98)
  {
    sub_10076C7EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944B98);
  }

  return result;
}

uint64_t sub_10005AEAC(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_1009434A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005AF78(uint64_t a1)
{
  sub_1002B72E8(a1);
  result = sub_1002B72D8();
  if (result)
  {
    *(v1 + qword_10099CA60) = 1;
  }

  return result;
}

uint64_t sub_10005AFA8()
{
  sub_10000A5D4(&qword_100942480);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100784500;
  *(v0 + 32) = sub_1002B65E8();
  *(v0 + 40) = v1;
  v2 = sub_10005B850();
  v3 = sub_10005C748(&qword_100944C58, type metadata accessor for UberedCollectionElementsObserver);
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  sub_10076A43C();
  swift_allocObject();
  return sub_10076A42C();
}

uint64_t sub_10005B064(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100944C50);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_1002B6B48(a1);
  (*(v3 + 16))(v5, a1, v2);
  if ((*(v3 + 88))(v5, v2) != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    return (*(v3 + 8))(v5, v2);
  }

  (*(v3 + 96))(v5, v2);
  sub_10005B8F4();
}

void sub_10005B1B8()
{
  v1 = sub_10000A5D4(&qword_1009499A0);
  __chkstk_darwin(v1 - 8);
  v3 = &v36 - v2;
  v4 = sub_10076B5BC();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = sub_10000A5D4(&qword_100944C40);
  v14 = *(v13 - 8);
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v17 = &v36 - v16;
  v18 = [v0 view];
  if (!v18)
  {
    goto LABEL_18;
  }

  v19 = v18;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {

LABEL_18:
    __break(1u);
    return;
  }

  v21 = *(v20 + OBJC_IVAR____TtC20ProductPageExtensionP33_6AB601F6024DE25A6D4830FED98485CA40InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

  if ((v21 & 1) == 0)
  {
    v22 = qword_1009503C8;
    swift_beginAccess();
    v23 = *&v0[v22];
    if (v23)
    {
      v24 = v23;
      sub_10076E79C();
      v25 = sub_10076E5EC();
      (*(v14 + 8))(v17, v13);
      if (v25 < 1)
      {
      }

      else
      {
        sub_1007699BC();
        v26 = sub_10000A5D4(&unk_100946720);
        v27 = *(v26 - 8);
        if ((*(v27 + 48))(v3, 1, v26) == 1)
        {

          sub_10000CFBC(v3, &qword_1009499A0);
        }

        else
        {
          swift_getKeyPath();
          sub_10076F49C();

          (*(v27 + 8))(v3, v26);
          v29 = v37;
          v28 = v38;
          (*(v37 + 32))(v12, v9, v38);
          (*(v29 + 16))(v6, v12, v28);
          v30 = (*(v29 + 88))(v6, v28);
          if (v30 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v30 == enum case for Shelf.ContentType.upsellBreakout(_:) || v30 == enum case for Shelf.ContentType.heroCarousel(_:) || v30 == enum case for Shelf.ContentType.uber(_:) || v30 == enum case for Shelf.ContentType.mediaPageHeader(_:))
          {
            sub_10000A5D4(&qword_100944C48);
            v32 = sub_10075E11C();
            v33 = *(v32 - 8);
            v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
            v35 = swift_allocObject();
            *(v35 + 16) = xmmword_100783DD0;
            sub_10075E08C();
            sub_100179EC0(v35);
            swift_setDeallocating();
            (*(v33 + 8))(v35 + v34, v32);
            swift_deallocClassInstance();

            (*(v29 + 8))(v12, v28);
          }

          else
          {

            v31 = *(v29 + 8);
            v31(v12, v28);
            v31(v6, v28);
          }
        }
      }
    }
  }
}

uint64_t sub_10005B72C()
{
  *(sub_10005B850() + 24) = 1;
}

uint64_t sub_10005B75C()
{
  *(sub_10005B850() + 24) = 0;
}

uint64_t sub_10005B788()
{
  v1 = qword_100944BA0;
  if (*(v0 + qword_100944BA0))
  {
    v2 = *(v0 + qword_100944BA0);
  }

  else
  {
    v3 = type metadata accessor for BaseGenericDiffablePageViewController();
    v2 = sub_100044348(v3, &off_100885A30);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10005B850()
{
  v1 = qword_100944BB0;
  if (*(v0 + qword_100944BB0))
  {
    v2 = *(v0 + qword_100944BB0);
  }

  else
  {
    sub_10005B788();
    type metadata accessor for UberedCollectionElementsObserver();
    v2 = swift_allocObject();
    swift_weakInit();
    *(v2 + 24) = 0;
    swift_weakAssign();

    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_10005B8F4()
{
  v1 = v0;
  v2 = sub_10075D9EC();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10000A5D4(&qword_100942698);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_10075FFBC();
  type metadata accessor for BaseGenericDiffablePageViewController();
  sub_100045240(v6);
  sub_10075FFCC();
  if (v7)
  {
    if ((sub_10075FFBC() & 0x80) != 0)
    {
      if ((sub_10075FFBC() & 0x80) != 0)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 1.0;
      }

      v19 = [v1 navigationItem];
      sub_10000A5D4(&unk_10094E7E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100783DD0;
      *(inited + 32) = NSForegroundColorAttributeName;
      v12 = objc_opt_self();
      v13 = NSForegroundColorAttributeName;
      v14 = [v12 labelColor];
      v15 = [v14 colorWithAlphaComponent:v10];

      *(inited + 64) = sub_1000325F0();
      *(inited + 40) = v15;
      sub_1000FC5F4(inited);
      swift_setDeallocating();
      sub_10000CFBC(inited + 32, &unk_100948B10);
      sub_10075DA0C();
      sub_10075D9AC();
      v16 = sub_10075D99C();
      (*(*(v16 - 8) + 56))(v5, 0, 1, v16);
      v17 = v19;
      sub_1007705DC();
    }

    else
    {
      v8 = [v1 navigationItem];
      v9 = sub_10076FF6C();

      [v8 setTitle:v9];
    }

    if (sub_10075FFBC() & 2) != 0 && (sub_1000735EC())
    {
      v18 = [v1 navigationItem];
      sub_1002B3AB4();
    }
  }
}

uint64_t sub_10005BC48(uint64_t a1)
{
  v2 = sub_10075DB7C();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v28 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_100964140);
  __chkstk_darwin(v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  sub_10005C684(a1, v9);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_10005C6E8(v9);
LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v19 = sub_10000A5D4(&unk_100964150);
  sub_100050DA4(&v9[*(v19 + 48)], v18);
  sub_100765E7C();
  v20 = *(v4 + 48);
  sub_100050CC0(v15, v6);
  sub_100050CC0(v18, &v6[v20]);
  v21 = v29;
  v22 = *(v29 + 48);
  if (v22(v6, 1, v2) != 1)
  {
    sub_100050CC0(v6, v12);
    if (v22(&v6[v20], 1, v2) != 1)
    {
      v25 = v28;
      (*(v21 + 32))(v28, &v6[v20], v2);
      sub_10005C748(&qword_100944C38, &type metadata accessor for URL);
      v26 = v21;
      v23 = sub_10076FF1C();
      v27 = *(v26 + 8);
      v27(v25, v2);
      sub_10000CFBC(v15, &unk_1009435D0);
      sub_10000CFBC(v18, &unk_1009435D0);
      v27(v12, v2);
      sub_10000CFBC(v6, &unk_1009435D0);
      return v23 & 1;
    }

    sub_10000CFBC(v15, &unk_1009435D0);
    sub_10000CFBC(v18, &unk_1009435D0);
    (*(v21 + 8))(v12, v2);
    goto LABEL_8;
  }

  sub_10000CFBC(v15, &unk_1009435D0);
  sub_10000CFBC(v18, &unk_1009435D0);
  if (v22(&v6[v20], 1, v2) != 1)
  {
LABEL_8:
    sub_10000CFBC(v6, &unk_100964140);
    goto LABEL_9;
  }

  sub_10000CFBC(v6, &unk_1009435D0);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_10005C0E4()
{
  v1 = type metadata accessor for BaseGenericDiffablePageViewController();
  v3.receiver = v0;
  v3.super_class = v1;
  objc_msgSendSuper2(&v3, "viewDidLoad");
  return sub_1000447A8(v1, &off_100885A30);
}

void sub_10005C15C(void *a1)
{
  v1 = a1;
  sub_10005C0E4();
}

void sub_10005C1C4(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_10005C314(a3, &selRef_viewWillAppear_, sub_100044838);
}

id sub_10005C234(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for BaseGenericDiffablePageViewController();
  return objc_msgSendSuper2(&v4, "viewDidAppear:", a1 & 1);
}

void sub_10005C2A0(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_10005C234(a3);
}

uint64_t sub_10005C314(char a1, SEL *a2, uint64_t (*a3)(objc_class *, _UNKNOWN **))
{
  v7 = type metadata accessor for BaseGenericDiffablePageViewController();
  v9.receiver = v3;
  v9.super_class = v7;
  objc_msgSendSuper2(&v9, *a2, a1 & 1);
  return a3(v7, &off_100885A30);
}

void sub_10005C3AC(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_10005C314(a3, &selRef_viewWillDisappear_, sub_100044BE0);
}

void sub_10005C41C(void *a1, double a2, double a3)
{
  v7 = type metadata accessor for BaseGenericDiffablePageViewController();
  v8.receiver = v3;
  v8.super_class = v7;
  objc_msgSendSuper2(&v8, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v3 isViewLoaded])
  {
    sub_10004507C(a1, v7, &off_100885A30);
  }
}

void sub_10005C4D4(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_10005C41C(a5, a2, a3);
  swift_unknownObjectRelease();
}

uint64_t sub_10005C554()
{
}

id sub_10005C594()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseGenericDiffablePageViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10005C5F0()
{
}

uint64_t sub_10005C684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowDestination();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005C6E8(uint64_t a1)
{
  v2 = type metadata accessor for FlowDestination();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005C748(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10005C7A0(void *a1, uint64_t a2, uint64_t a3)
{
  v6[4] = sub_10005DB3C;
  v6[5] = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10009AEDC;
  v6[3] = &unk_100885B28;
  v5 = _Block_copy(v6);

  [a1 presentViewController:a2 animated:1 completion:v5];
  _Block_release(v5);
}

uint64_t sub_10005C87C()
{
  v0 = sub_10076F50C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for ActionOutcome.performed(_:), v0, v2);
  sub_10076FCBC();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_10005C970(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = sub_100766EDC();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v35 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v33 = &v32 - v6;
  v7 = type metadata accessor for FlowPresentationHints();
  __chkstk_darwin(v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_10094A890);
  __chkstk_darwin(v10 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v32 - v14;
  v16 = type metadata accessor for FlowDestination();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v32 - v21;

  sub_10076B87C();
  sub_10012062C(a1, v38, v15);
  v23 = *(v17 + 48);
  if (v23(v15, 1, v16) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v23(v15, 1, v16) != 1)
    {
      sub_10000CFBC(v15, &unk_10094A890);
    }
  }

  else
  {
    sub_10005DAD8(v15, v22);
  }

  if (swift_getEnumCaseMultiPayload() != 21)
  {
    sub_10005DB58(v22, type metadata accessor for FlowDestination);
    return 0;
  }

  v24 = sub_10000A5D4(&qword_100958CE0);
  sub_10000CFBC(&v22[*(v24 + 48)], &unk_1009435D0);
  sub_10075F5BC();
  sub_10075F5AC();

  sub_10076B87C();
  sub_10012062C(a1, v38, v12);
  if (v23(v12, 1, v16) == 1)
  {
    swift_storeEnumTagMultiPayload();
    v25 = v23(v12, 1, v16);
    v26 = v37;
    if (v25 != 1)
    {
      sub_10000CFBC(v12, &unk_10094A890);
    }
  }

  else
  {
    sub_10005DAD8(v12, v19);
    v26 = v37;
  }

  v27 = v33;
  sub_1001489F0(v33);
  sub_10005DB58(v19, type metadata accessor for FlowDestination);
  sub_10005DB58(v9, type metadata accessor for FlowPresentationHints);
  v29 = v35;
  v28 = v36;
  (*(v36 + 32))(v35, v27, v26);
  v30 = (*(v28 + 88))(v29, v26);
  result = 1;
  if (v30 != enum case for FlowPresentationContext.presentModal(_:) && v30 != enum case for FlowPresentationContext.presentModalFormSheet(_:) && v30 != enum case for FlowPresentationContext.presentModalPageSheet(_:) && v30 != enum case for FlowPresentationContext.presentModalFullScreen(_:))
  {
    (*(v28 + 8))(v29, v26);
    return 0;
  }

  return result;
}

uint64_t sub_10005CE68(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005C684(a2, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 39)
  {
    if (EnumCaseMultiPayload != 40 && EnumCaseMultiPayload != 41 && EnumCaseMultiPayload != 42)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 10)
  {

    v14 = *(sub_10000A5D4(&qword_100958CB0) + 64);
    v15 = sub_100762D3C();
    (*(*(v15 - 8) + 8))(&v8[v14], v15);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 19)
  {
LABEL_9:
    sub_10005DB58(v8, type metadata accessor for FlowDestination);
LABEL_10:
    v12 = 0;
    return v12 & 1;
  }

  if (EnumCaseMultiPayload != 28)
  {
LABEL_13:
    sub_10005DB58(v8, type metadata accessor for FlowDestination);
    v12 = 1;
    return v12 & 1;
  }

  sub_100050DA4(v8, v5);
  type metadata accessor for ArticleContainerViewController();
  v10 = swift_dynamicCastClass() == 0;
  v11 = sub_1007690EC();
  sub_10000CFBC(v5, &unk_1009435D0);
  v12 = v10 | v11 ^ 1;
  return v12 & 1;
}

uint64_t sub_10005D094(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v6 - 8);
  v8 = &v66 - v7;
  v9 = sub_10000A5D4(&unk_10094A890);
  __chkstk_darwin(v9 - 8);
  v70 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v66 - v12;
  v14 = type metadata accessor for FlowDestination();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v69 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = (&v66 - v18);
  sub_10000A5D4(&qword_100942C70);
  v20 = sub_10076FCEC();
  v72 = a2;
  v21 = sub_100376418(a2);
  if (v21)
  {
    v71 = v20;
    v22 = v21;
    v23 = [v21 traitCollection];
    v79 = v22;
    sub_100016F40(0, &qword_100944C68);
    v73 = v22;
    sub_10000A5D4(&qword_100944C70);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v76 = 0;
      aBlock = 0u;
      v75 = 0u;
    }

    sub_10076B87C();
    sub_10012062C(a1, v78, v13);
    v24 = *(v15 + 48);
    v25 = v24(v13, 1, v14);
    v66 = v24;
    if (v25 == 1)
    {
      swift_storeEnumTagMultiPayload();
      if (v24(v13, 1, v14) != 1)
      {
        sub_10000CFBC(v13, &unk_10094A890);
      }
    }

    else
    {
      sub_10005DAD8(v13, v19);
    }

    v27 = sub_10075F57C();
    v29 = v28;
    sub_10075F59C();
    v30 = sub_10048B0C0(v19, v23, v27, v29, v8, &aBlock, a3, 1);

    sub_10000CFBC(v8, &unk_100958150);
    sub_10005DB58(v19, type metadata accessor for FlowDestination);
    sub_10000CFBC(&aBlock, &unk_10094A8A0);
    if (!v30)
    {
      sub_10005DA18();
      swift_allocError();
      *v45 = 0;
      v20 = v71;
      sub_10076FCAC();

      return v20;
    }

    v67 = v30;
    sub_10076148C();
    sub_10076F64C();
    sub_10076FC1C();
    v68 = aBlock;
    v31 = [v73 viewControllers];
    sub_100016F40(0, &qword_1009453B0);
    v32 = sub_1007701BC();

    if (v32 >> 62)
    {
      goto LABEL_48;
    }

    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v33)
    {
      while (__OFSUB__(v33--, 1))
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        v33 = sub_10077158C();
        if (!v33)
        {
          goto LABEL_49;
        }
      }

      if ((v32 & 0xC000000000000001) != 0)
      {
        v35 = sub_10077149C();
        goto LABEL_19;
      }

      if ((v33 & 0x8000000000000000) != 0)
      {
        goto LABEL_46;
      }

      if (v33 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v35 = *(v32 + 32 + 8 * v33);
LABEL_19:
      v36 = v35;
      swift_getObjectType();
      if (swift_conformsToProtocol2() && v36)
      {

        goto LABEL_23;
      }
    }

LABEL_49:

    v36 = 0;
LABEL_23:
    v37 = [v73 topViewController];
    v20 = v71;
    if (v37)
    {
      v38 = v37;
      v39 = v36;
      if (v36)
      {
        v40 = v39;
        v41 = sub_100770EEC();

        if (v41)
        {
          v76 = sub_10005DC2C;
          v77 = v20;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v75 = sub_10009AEDC;
          *(&v75 + 1) = &unk_100885B00;
          v42 = _Block_copy(&aBlock);
          v43 = v40;

          v44 = v67;
          [v43 presentViewController:v67 animated:1 completion:v42];

          _Block_release(v42);

          return v20;
        }
      }

      else
      {
      }
    }

    else if (!v36)
    {
      v46 = 0;
    }

    v47 = v72;
    v48 = [v72 presentedViewController];
    if (v48)
    {
      v49 = v48;
      if (([v48 isBeingDismissed] & 1) == 0)
      {

        sub_10076B87C();
        v50 = v70;
        sub_10012062C(a1, &aBlock, v70);
        v51 = v66;
        if (v66(v50, 1, v14) == 1)
        {
          v52 = v51;
          v53 = v69;
          swift_storeEnumTagMultiPayload();
          if (v52(v50, 1, v14) != 1)
          {
            sub_10000CFBC(v50, &unk_10094A890);
          }
        }

        else
        {
          v53 = v69;
          sub_10005DAD8(v50, v69);
        }

        v54 = sub_10005CE68(v49, v53);
        sub_10005DB58(v53, type metadata accessor for FlowDestination);
        if (v54)
        {
          type metadata accessor for ArticleContainerViewController();
          v55 = swift_dynamicCastClass();
          if (v55)
          {
            v56 = *(v55 + OBJC_IVAR____TtC20ProductPageExtension30ArticleContainerViewController_wrapperViewController);
            v57 = v49;
            v58 = [v56 popToRootViewControllerAnimated:0];
          }

          v59 = swift_allocObject();
          v60 = v67;
          v59[2] = v47;
          v59[3] = v60;
          v59[4] = v20;
          v76 = sub_10005DACC;
          v77 = v59;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v75 = sub_10009AEDC;
          *(&v75 + 1) = &unk_100885AD8;
          v61 = _Block_copy(&aBlock);

          v62 = v47;
          v63 = v60;

          [v49 dismissViewControllerAnimated:1 completion:v61];

          goto LABEL_43;
        }
      }
    }

    v76 = sub_10005DC2C;
    v77 = v20;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v75 = sub_10009AEDC;
    *(&v75 + 1) = &unk_100885A88;
    v61 = _Block_copy(&aBlock);

    v64 = v67;
    [v47 presentViewController:v67 animated:1 completion:v61];

LABEL_43:
    _Block_release(v61);

    return v20;
  }

  sub_10005DA18();
  swift_allocError();
  *v26 = 1;
  sub_10076FCAC();

  return v20;
}

unint64_t sub_10005DA18()
{
  result = qword_100944C60;
  if (!qword_100944C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944C60);
  }

  return result;
}

uint64_t sub_10005DA6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005DA84()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005DAD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowDestination();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005DB58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10005DBCC()
{
  result = qword_100944C78;
  if (!qword_100944C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944C78);
  }

  return result;
}

uint64_t sub_10005DC3C()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100940E38 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v5 = sub_10000A61C(v4, qword_1009A18A0);
  (*(*(v4 - 8) + 16))(v3, v5, v4);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  return sub_1007643DC();
}

void sub_10005DDBC()
{
  v0 = [objc_opt_self() systemFontOfSize:10.0 weight:UIFontWeightBold];
  v1 = [objc_opt_self() configurationWithFont:v0];

  qword_100944C80 = v1;
}

uint64_t sub_10005DE40()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  v2 = (__chkstk_darwin)();
  v20[0] = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v21 = v20 - v5;
  __chkstk_darwin(v4);
  v7 = v20 - v6;
  v8 = sub_10076443C();
  sub_10000DB18(v8, qword_100944C88);
  v20[2] = sub_10000A61C(v8, qword_100944C88);
  if (qword_100940E30 != -1)
  {
    swift_once();
  }

  v9 = sub_10076D3DC();
  v10 = sub_10000A61C(v9, qword_1009A1888);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v20[1] = v7;
  if (qword_100940E48 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v9, qword_1009A18D0);
  v15 = v21;
  v11(v21, v14, v9);
  v13(v15, v12, v0);
  v16 = v20[0];
  v11(v20[0], v14, v9);
  v13(v16, v12, v0);
  v23[3] = sub_10076D9AC();
  v23[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v23);
  v22[3] = v0;
  v22[4] = &protocol witness table for FontSource;
  v17 = sub_10000DB7C(v22);
  (*(v1 + 16))(v17, v16, v0);
  sub_10076D9BC();
  (*(v1 + 8))(v16, v0);
  v18 = [objc_opt_self() systemFontOfSize:15.0 weight:UIFontWeightBold];
  [objc_opt_self() configurationWithFont:v18];

  return sub_1007643CC();
}

uint64_t sub_10005E250()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v20[0] = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v21 = v20 - v5;
  __chkstk_darwin(v4);
  v7 = v20 - v6;
  v8 = sub_10076443C();
  sub_10000DB18(v8, qword_100944CA0);
  v20[2] = sub_10000A61C(v8, qword_100944CA0);
  if (qword_100940E30 != -1)
  {
    swift_once();
  }

  v9 = sub_10076D3DC();
  v10 = sub_10000A61C(v9, qword_1009A1888);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v20[1] = v7;
  if (qword_100940E48 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v9, qword_1009A18D0);
  v15 = v21;
  v11(v21, v14, v9);
  v13(v15, v12, v0);
  v16 = v20[0];
  v11(v20[0], v14, v9);
  v13(v16, v12, v0);
  v23[3] = sub_10076D9AC();
  v23[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v23);
  v22[3] = v0;
  v22[4] = &protocol witness table for FontSource;
  v17 = sub_10000DB7C(v22);
  (*(v1 + 16))(v17, v16, v0);
  sub_10076D9BC();
  (*(v1 + 8))(v16, v0);
  sub_100060C6C();
  v18 = UIFontTextStyleFootnote;
  sub_10077098C();

  return sub_1007643CC();
}

uint64_t sub_10005E634()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v21[0] = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v22 = v21 - v4;
  __chkstk_darwin(v5);
  v7 = v21 - v6;
  v8 = sub_10076443C();
  sub_10000DB18(v8, qword_100944CB8);
  v21[2] = sub_10000A61C(v8, qword_100944CB8);
  if (qword_100940E70 != -1)
  {
    swift_once();
  }

  v9 = sub_10076D3DC();
  v10 = sub_10000A61C(v9, qword_1009A1948);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v21[1] = v7;
  if (qword_100940E48 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v9, qword_1009A18D0);
  v15 = v22;
  v11(v22, v14, v9);
  v13(v15, v12, v0);
  v16 = v21[0];
  v11(v21[0], v14, v9);
  v13(v16, v12, v0);
  v24[3] = sub_10076D9AC();
  v24[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v24);
  v23[3] = v0;
  v23[4] = &protocol witness table for FontSource;
  v17 = sub_10000DB7C(v23);
  (*(v1 + 16))(v17, v16, v0);
  sub_10076D9BC();
  (*(v1 + 8))(v16, v0);
  sub_100060C6C();
  v18 = UIFontTextStyleFootnote;
  sub_10077098C();

  v19 = v18;
  sub_10077098C();

  return sub_1007643CC();
}

uint64_t sub_10005EA44()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v24[0] = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v25 = v24 - v4;
  __chkstk_darwin(v5);
  v7 = v24 - v6;
  v8 = sub_10076443C();
  sub_10000DB18(v8, qword_100944CD0);
  v24[2] = sub_10000A61C(v8, qword_100944CD0);
  if (qword_100940E30 != -1)
  {
    swift_once();
  }

  v9 = sub_10076D3DC();
  v10 = sub_10000A61C(v9, qword_1009A1888);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v24[1] = v7;
  if (qword_100940E48 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v9, qword_1009A18D0);
  v15 = v25;
  v11(v25, v14, v9);
  v13(v15, v12, v0);
  v16 = v24[0];
  v11(v24[0], v14, v9);
  v13(v16, v12, v0);
  v27[3] = sub_10076D9AC();
  v27[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v27);
  v26[3] = v0;
  v26[4] = &protocol witness table for FontSource;
  v17 = sub_10000DB7C(v26);
  (*(v1 + 16))(v17, v16, v0);
  sub_10076D9BC();
  (*(v1 + 8))(v16, v0);
  v18 = objc_opt_self();
  v19 = [v18 systemFontOfSize:36.0 weight:UIFontWeightSemibold];
  v20 = objc_opt_self();
  v21 = [v20 configurationWithFont:v19];

  v22 = [v18 systemFontOfSize:15.0 weight:UIFontWeightBold];
  [v20 configurationWithFont:v22];

  return sub_1007643CC();
}

uint64_t sub_10005EEDC(unsigned int *a1, double *a2, double a3)
{
  v6 = sub_10076048C();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, *a1, v6, v8);
  v11 = [objc_opt_self() systemFontOfSize:a3 weight:*a2];
  v12 = [objc_opt_self() configurationWithFont:v11];

  v13 = sub_10076046C();
  (*(v7 + 8))(v10, v6);
  return v13;
}

uint64_t sub_10005F040()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v20[0] = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v21 = v20 - v4;
  __chkstk_darwin(v5);
  v7 = v20 - v6;
  v8 = sub_10076443C();
  sub_10000DB18(v8, qword_10099CA68);
  v20[2] = sub_10000A61C(v8, qword_10099CA68);
  if (qword_100940E58 != -1)
  {
    swift_once();
  }

  v9 = sub_10076D3DC();
  v10 = sub_10000A61C(v9, qword_1009A1900);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v20[1] = v7;
  if (qword_100940E48 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v9, qword_1009A18D0);
  v15 = v21;
  v11(v21, v14, v9);
  v13(v15, v12, v0);
  v16 = v20[0];
  v11(v20[0], v14, v9);
  v13(v16, v12, v0);
  v23[3] = sub_10076D9AC();
  v23[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v23);
  v22[3] = v0;
  v22[4] = &protocol witness table for FontSource;
  v17 = sub_10000DB7C(v22);
  (*(v1 + 16))(v17, v16, v0);
  sub_10076D9BC();
  (*(v1 + 8))(v16, v0);
  sub_100060C6C();
  v18 = UIFontTextStyleFootnote;
  sub_10077098C();

  return sub_1007643CC();
}

uint64_t sub_10005F424()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v20[0] = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v21 = v20 - v4;
  __chkstk_darwin(v5);
  v7 = v20 - v6;
  v8 = sub_10076443C();
  sub_10000DB18(v8, qword_10099CA80);
  v20[2] = sub_10000A61C(v8, qword_10099CA80);
  if (qword_100940E68 != -1)
  {
    swift_once();
  }

  v9 = sub_10076D3DC();
  v10 = sub_10000A61C(v9, qword_1009A1930);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v20[1] = v7;
  if (qword_100940E48 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v9, qword_1009A18D0);
  v15 = v21;
  v11(v21, v14, v9);
  v13(v15, v12, v0);
  v16 = v20[0];
  v11(v20[0], v14, v9);
  v13(v16, v12, v0);
  v23[3] = sub_10076D9AC();
  v23[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v23);
  v22[3] = v0;
  v22[4] = &protocol witness table for FontSource;
  v17 = sub_10000DB7C(v22);
  (*(v1 + 16))(v17, v16, v0);
  sub_10076D9BC();
  (*(v1 + 8))(v16, v0);
  sub_100060C6C();
  v18 = UIFontTextStyleFootnote;
  sub_10077098C();

  return sub_1007643CC();
}

uint64_t sub_10005F800()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v20[0] = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v21 = v20 - v4;
  __chkstk_darwin(v5);
  v7 = v20 - v6;
  v8 = sub_10076443C();
  sub_10000DB18(v8, qword_10099CA98);
  v20[2] = sub_10000A61C(v8, qword_10099CA98);
  if (qword_100940E60 != -1)
  {
    swift_once();
  }

  v9 = sub_10076D3DC();
  v10 = sub_10000A61C(v9, qword_1009A1918);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v20[1] = v7;
  if (qword_100940E48 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v9, qword_1009A18D0);
  v15 = v21;
  v11(v21, v14, v9);
  v13(v15, v12, v0);
  v16 = v20[0];
  v11(v20[0], v14, v9);
  v13(v16, v12, v0);
  v23[3] = sub_10076D9AC();
  v23[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v23);
  v22[3] = v0;
  v22[4] = &protocol witness table for FontSource;
  v17 = sub_10000DB7C(v22);
  (*(v1 + 16))(v17, v16, v0);
  sub_10076D9BC();
  (*(v1 + 8))(v16, v0);
  sub_100060C6C();
  v18 = UIFontTextStyleFootnote;
  sub_10077098C();

  return sub_1007643CC();
}

uint64_t sub_10005FBE4()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v22[0] = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v23 = v22 - v4;
  __chkstk_darwin(v5);
  v7 = v22 - v6;
  v8 = sub_10076443C();
  sub_10000DB18(v8, qword_100944CE8);
  v22[2] = sub_10000A61C(v8, qword_100944CE8);
  if (qword_100940E40 != -1)
  {
    swift_once();
  }

  v9 = sub_10076D3DC();
  v10 = sub_10000A61C(v9, qword_1009A18B8);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v22[1] = v7;
  if (qword_100940E48 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v9, qword_1009A18D0);
  v15 = v23;
  v11(v23, v14, v9);
  v13(v15, v12, v0);
  v16 = v22[0];
  v11(v22[0], v14, v9);
  v13(v16, v12, v0);
  v27[3] = sub_10076D9AC();
  v27[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v27);
  v25 = v0;
  v26 = &protocol witness table for FontSource;
  v17 = sub_10000DB7C(v24);
  (*(v1 + 16))(v17, v16, v0);
  sub_10076D9BC();
  (*(v1 + 8))(v16, v0);
  sub_100060C6C();
  v18 = UIFontTextStyleFootnote;
  sub_10077098C();

  v19 = sub_10076C04C();
  v25 = v19;
  v26 = sub_10004C7BC();
  v20 = sub_10000DB7C(v24);
  (*(*(v19 - 8) + 104))(v20, enum case for Feature.glass_offer_button_2025A(_:), v19);
  sub_10076C90C();
  sub_10000CD74(v24);
  return sub_1007643CC();
}

id sub_10006003C()
{
  v0 = sub_1005A5DB8(0xD000000000000013, 0x80000001007CFB00, 0);
  v1 = [v0 imageWithRenderingMode:2];

  return v1;
}

uint64_t sub_1000600A0()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v21[0] = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v22 = v21 - v4;
  __chkstk_darwin(v5);
  v7 = v21 - v6;
  v8 = sub_10076443C();
  sub_10000DB18(v8, qword_100944D00);
  v21[2] = sub_10000A61C(v8, qword_100944D00);
  if (qword_100940E70 != -1)
  {
    swift_once();
  }

  v9 = sub_10076D3DC();
  v10 = sub_10000A61C(v9, qword_1009A1948);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v21[1] = v7;
  if (qword_100940E48 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v9, qword_1009A18D0);
  v15 = v22;
  v11(v22, v14, v9);
  v13(v15, v12, v0);
  v16 = v21[0];
  v11(v21[0], v14, v9);
  v13(v16, v12, v0);
  v24[3] = sub_10076D9AC();
  v24[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v24);
  v23[3] = v0;
  v23[4] = &protocol witness table for FontSource;
  v17 = sub_10000DB7C(v23);
  (*(v1 + 16))(v17, v16, v0);
  sub_10076D9BC();
  (*(v1 + 8))(v16, v0);
  sub_100060C6C();
  v18 = UIFontTextStyleFootnote;
  sub_10077098C();

  v19 = v18;
  sub_10077098C();

  return sub_1007643CC();
}

uint64_t sub_1000604A8()
{
  v0 = sub_10076048C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.icloudAndArrowDown(_:), v0, v2);
  sub_100060C6C();
  v5 = sub_10077098C();
  v6 = sub_10076046C();

  (*(v1 + 8))(v4, v0);
  return v6;
}

uint64_t sub_1000605D8()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v21[0] = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v22 = v21 - v4;
  __chkstk_darwin(v5);
  v7 = v21 - v6;
  v8 = sub_10076443C();
  sub_10000DB18(v8, qword_10099CAB0);
  v21[2] = sub_10000A61C(v8, qword_10099CAB0);
  if (qword_100940E60 != -1)
  {
    swift_once();
  }

  v9 = sub_10076D3DC();
  v10 = sub_10000A61C(v9, qword_1009A1918);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v21[1] = v7;
  if (qword_100940E48 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v9, qword_1009A18D0);
  v15 = v22;
  v11(v22, v14, v9);
  v13(v15, v12, v0);
  v16 = v21[0];
  v11(v21[0], v14, v9);
  v13(v16, v12, v0);
  v24[3] = sub_10076D9AC();
  v24[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v24);
  v23[3] = v0;
  v23[4] = &protocol witness table for FontSource;
  v17 = sub_10000DB7C(v23);
  (*(v1 + 16))(v17, v16, v0);
  sub_10076D9BC();
  (*(v1 + 8))(v16, v0);
  sub_100060C6C();
  v18 = UIFontTextStyleHeadline;
  sub_10077098C();

  v19 = UIFontTextStyleFootnote;
  sub_10077098C();

  return sub_1007643CC();
}

id sub_1000609F0()
{
  v0 = sub_10076048C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.icloudAndArrowDown(_:), v0, v2);
  sub_100060C6C();
  v5 = sub_10077098C();
  v6 = sub_10076046C();

  (*(v1 + 8))(v4, v0);
  v7 = [v6 imageWithRenderingMode:2];

  return v7;
}

uint64_t sub_100060B44()
{
  v0 = sub_10076048C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.pauseFill(_:), v0, v2);
  if (qword_10093F518 != -1)
  {
    swift_once();
  }

  v5 = sub_10076046C();
  (*(v1 + 8))(v4, v0);
  return v5;
}

unint64_t sub_100060C6C()
{
  result = qword_1009560B0;
  if (!qword_1009560B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009560B0);
  }

  return result;
}

uint64_t sub_100060CCC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100060D14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100060D60@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>, double a6@<D6>, double a7@<D7>)
{
  v84 = a4;
  v87 = a1;
  v88 = a3;
  v86 = a2;
  v90 = a6;
  v91 = a7;
  v89 = a5;
  v76 = sub_10076B13C();
  v68 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_10076EA6C();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v82 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076C36C();
  v80 = *(v9 - 8);
  v81 = v9;
  __chkstk_darwin(v9);
  v74 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v79 = &v68 - v12;
  __chkstk_darwin(v13);
  v73 = &v68 - v14;
  v15 = sub_10076B66C();
  v85 = *(v15 - 8);
  __chkstk_darwin(v15);
  v69 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v68 - v18;
  v72 = sub_10076A82C();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10076B5BC();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000A5D4(&qword_100942C40);
  __chkstk_darwin(v25);
  v83 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v68 - v28;
  sub_100016E2C(v87, &v68 - v28, &qword_1009499A0);
  v30 = *(v25 + 48);
  v87 = v29;
  sub_100016E2C(v86, &v29[v30], &qword_1009499A0);
  swift_getKeyPath();
  sub_10000A5D4(&unk_100946720);
  sub_10076F49C();

  v86 = v22;
  v31 = (*(v22 + 88))(v24, v21);
  if (v31 == enum case for Shelf.ContentType.action(_:))
  {
    swift_getKeyPath();
    sub_10076F49C();

    v32 = v85;
    if ((*(v85 + 88))(v19, v15) == enum case for Shelf.ContentsMetadata.searchLandingTrendingSection(_:))
    {
      (*(v32 + 96))(v19, v15);
      v33 = v71;
      v34 = v70;
      v35 = v72;
      (*(v71 + 32))(v70, v19, v72);
      v36 = sub_10076A81C();
      swift_getKeyPath();
      sub_10076F49C();

      v38 = v80;
      v37 = v81;
      v39 = &enum case for PageGrid.Direction.horizontal(_:);
      if (!v92)
      {
        v39 = &enum case for PageGrid.Direction.vertical(_:);
      }

      v40 = v73;
      (*(v80 + 104))(v73, *v39, v81);
      v41 = v82;
      sub_10076202C();
      v42 = sub_10076EA4C();
      (*(v77 + 8))(v41, v78);
      if (v42 & 1) != 0 && (sub_10076204C())
      {
        v36 = 1;
      }

      (*(v38 + 16))(v79, v40, v37);
      sub_10001D8C4(v36);
      sub_10076C33C();
      (*(v38 + 8))(v40, v37);
      (*(v33 + 8))(v34, v35);
LABEL_24:
      v63 = &qword_100942C40;
      v62 = v87;
      return sub_10000CFBC(v62, v63);
    }

    (*(v32 + 8))(v19, v15);
    v55 = v83;
    v92 = v84;
    v56 = v87;
    sub_100016E2C(v87, v83, &qword_100942C40);
    v57 = *(v25 + 48);
    sub_100061E6C();
  }

  else
  {
    v43 = v85;
    if (v31 != enum case for Shelf.ContentType.searchChartsAndCategories(_:))
    {
      v58 = v83;
      v92 = v84;
      v59 = v87;
      sub_100016E2C(v87, v83, &qword_100942C40);
      v60 = *(v25 + 48);
      sub_100061E6C();
      sub_1007620BC();
      sub_10000CFBC(v59, &qword_100942C40);
      sub_10000CFBC(v58 + v60, &qword_1009499A0);
      sub_10000CFBC(v58, &qword_1009499A0);
      return (*(v86 + 8))(v24, v21);
    }

    swift_getKeyPath();
    v44 = v69;
    sub_10076F49C();

    if ((*(v43 + 88))(v44, v15) == enum case for Shelf.ContentsMetadata.searchLandingChartsAndCategoriesSection(_:))
    {
      (*(v43 + 96))(v44, v15);
      v45 = v68;
      (*(v68 + 32))(v75, v44, v76);
      swift_getKeyPath();
      sub_10076F49C();

      v47 = v80;
      v46 = v81;
      v48 = &enum case for PageGrid.Direction.horizontal(_:);
      if (!v92)
      {
        v48 = &enum case for PageGrid.Direction.vertical(_:);
      }

      (*(v80 + 104))(v74, *v48, v81);
      v49 = v82;
      sub_10076202C();
      v50 = sub_10076EA4C();
      v51 = *(v77 + 8);
      v52 = v49;
      v53 = v78;
      v51(v52, v78);
      if (v50)
      {
        v54 = 1;
      }

      else
      {
        v54 = sub_10076B12C();
      }

      v64 = v82;
      sub_10076202C();
      v65 = sub_10076EA4C();
      v51(v64, v53);
      if (v65 & 1) != 0 && (sub_10076204C())
      {
        v54 = 1;
      }

      v66 = v75;
      v67 = v74;
      (*(v47 + 16))(v79, v74, v46);
      sub_10003F1A0(v54);
      sub_10076C33C();
      (*(v47 + 8))(v67, v46);
      (*(v45 + 8))(v66, v76);
      goto LABEL_24;
    }

    (*(v43 + 8))(v44, v15);
    v55 = v83;
    v92 = v84;
    v56 = v87;
    sub_100016E2C(v87, v83, &qword_100942C40);
    v57 = *(v25 + 48);
    sub_100061E6C();
  }

  sub_1007620BC();
  sub_10000CFBC(v56, &qword_100942C40);
  sub_10000CFBC(v55 + v57, &qword_1009499A0);
  v62 = v55;
  v63 = &qword_1009499A0;
  return sub_10000CFBC(v62, v63);
}

uint64_t sub_1000619E0()
{
  sub_10003CEB0();

  return sub_1007620BC();
}

uint64_t sub_100061AC4()
{
  sub_10003CEB0();

  return sub_1007620AC();
}

uint64_t sub_100061BB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100061EC8();

  return PageGridCaching<>.invalidateCache()(a1, v4, a2);
}

uint64_t sub_100061C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D6>, double a9@<D7>)
{
  v21[6] = a5;
  v21[7] = a6;
  v21[5] = a4;
  *&v21[3] = a8;
  *&v21[4] = a9;
  v21[1] = a7;
  v21[2] = a1;
  v12 = sub_10000A5D4(&qword_100942C40);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v21 - v17;
  sub_100016E2C(a2, v21 - v17, &qword_1009499A0);
  sub_100016E2C(a3, &v18[*(v13 + 56)], &qword_1009499A0);
  v22 = *v9;
  sub_100016E2C(v18, v15, &qword_100942C40);
  v19 = *(v13 + 56);
  sub_1007620BC();
  sub_10000CFBC(v18, &qword_100942C40);
  sub_10000CFBC(&v15[v19], &qword_1009499A0);
  return sub_10000CFBC(v15, &qword_1009499A0);
}

uint64_t sub_100061DEC()
{
  v1 = *v0;
  sub_10000A5D4(&qword_100944D28);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100783DD0;
  *(v2 + 56) = &type metadata for GenericPageGridProvider;
  *(v2 + 64) = sub_100061E6C();
  *(v2 + 72) = sub_100061F1C();
  *(v2 + 32) = v1;

  return v2;
}

unint64_t sub_100061E6C()
{
  result = qword_100944D18;
  if (!qword_100944D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944D18);
  }

  return result;
}

unint64_t sub_100061EC8()
{
  result = qword_100944D20;
  if (!qword_100944D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944D20);
  }

  return result;
}

unint64_t sub_100061F1C()
{
  result = qword_1009505E0;
  if (!qword_1009505E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009505E0);
  }

  return result;
}

UIColor sub_100061F70()
{
  sub_100016F40(0, &qword_100942F10);
  v0 = [objc_allocWithZone(UIColor) initWithRed:0.556862745 green:0.556862745 blue:0.57254902 alpha:1.0];
  v1.super.isa = [objc_allocWithZone(UIColor) initWithRed:0.552941176 green:0.552941176 blue:0.580392157 alpha:1.0];
  v2.super.isa = v0;
  result.super.isa = sub_100770DEC(v2, v1).super.isa;
  qword_100944D30 = result.super.isa;
  return result;
}

void sub_100062020(float a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension10RatingView_rating;
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension10RatingView_rating);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension10RatingView_rating) = a1;
  if (v3 != a1)
  {
    v4 = 0.0;
    if (a1 < 0.0 || (v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension10RatingView_maxNumberOfStars), v4 < a1))
    {
      *(v1 + v2) = v4;
      a1 = v4;
    }

    v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView);
    v6 = *(v5 + OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_currentRating);
    *(v5 + OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_currentRating) = a1;
    sub_100062B94(v6);
  }
}

void sub_1000620A4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarRowView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarColor);
    if (v3)
    {
      v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarColor);
    }

    else
    {
      v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension10RatingView_starColor);
    }

    v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starColor);
    *(v2 + OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starColor) = v4;
    if (v5)
    {
      sub_100016F40(0, &qword_100942F10);
      v6 = v3;
      v7 = v4;
      v8 = v5;
      v9 = sub_100770EEC();

      if (v9)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v10 = v3;
      v11 = v4;
      v8 = 0;
    }

    sub_10006363C();
    v7 = v4;
LABEL_10:
  }

  v12 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView);
  v13 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension10RatingView_starColor);
  v14 = *(v12 + OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starColor);
  *(v12 + OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starColor) = v13;
  if (!v14)
  {
    v17 = v13;
    v18 = 0;
    goto LABEL_15;
  }

  sub_100016F40(0, &qword_100942F10);
  v15 = v13;
  v18 = v14;
  v16 = sub_100770EEC();

  if ((v16 & 1) == 0)
  {
LABEL_15:
    sub_10006363C();
    v15 = v13;
  }
}

void sub_100062244(uint64_t a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_10076048C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v3[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starPadding];
  v12 = *&v3[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starPadding];
  v13 = v3[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starPadding + 8];
  *v11 = *&a1;
  *(v11 + 8) = a2 & 1;
  if (v13)
  {
    if (a2)
    {
      return;
    }

LABEL_6:
    v49 = *&a1;
    v14 = v3[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starSize];
    v15 = *&v3[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_currentRating];
    v47 = v3[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_useCase];
    v16 = [v3 traitCollection];
    v54.receiver = v3;
    v54.super_class = ObjectType;
    v17 = objc_msgSendSuper2(&v54, "minimumContentSizeCategory");
    v53.receiver = v3;
    v53.super_class = ObjectType;
    v18 = objc_msgSendSuper2(&v53, "maximumContentSizeCategory");
    v55.value._rawValue = v17;
    v55.is_nil = v18;
    v19.super.isa = sub_1007706DC(v55, v56).super.isa;

    v48 = v14;
    if (v14 <= 1)
    {
      if (v14)
      {
        v23 = &UIFontTextStyleCaption2;
      }

      else
      {
        v23 = &UIFontTextStyleHeadline;
      }

      v24 = [objc_opt_self() configurationWithTextStyle:*v23 scale:2];
    }

    else if (v14 == 2)
    {
      v24 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
    }

    else if (v14 == 3)
    {
      if ((v47 & 1) != 0 || (v20 = sub_10076C04C(), v51 = v20, v52 = sub_10004C7BC(), v21 = sub_10000DB7C(v50), (*(*(v20 - 8) + 104))(v21, enum case for Feature.search_tags(_:), v20), LOBYTE(v20) = sub_10076C90C(), sub_10000CD74(v50), (v20 & 1) == 0))
      {
        v22 = 2;
      }

      else
      {
        v22 = 1;
      }

      v24 = [objc_opt_self() configurationWithPointSize:4 weight:v22 scale:10.0];
    }

    else
    {
      if ((v47 & 1) != 0 || (v25 = sub_10076C04C(), v51 = v25, v52 = sub_10004C7BC(), v26 = sub_10000DB7C(v50), (*(*(v25 - 8) + 104))(v26, enum case for Feature.search_tags(_:), v25), LOBYTE(v25) = sub_10076C90C(), sub_10000CD74(v50), (v25 & 1) == 0))
      {
        v27 = 2;
      }

      else
      {
        v27 = 1;
      }

      v24 = [objc_opt_self() configurationWithPointSize:4 weight:v27 scale:6.0];
    }

    v28 = v24;
    (*(v8 + 104))(v10, enum case for SystemImage.star(_:), v7);
    v29 = [v28 configurationWithTraitCollection:v19.super.isa];
    v30 = sub_10076046C();

    (*(v8 + 8))(v10, v7);
    [v30 contentInsets];
    v32 = v31;
    [v30 contentInsets];
    v34 = v32 + v33;
    [v30 size];
    v36 = v35 - v34;
    [v30 contentInsets];
    v38 = v37;
    [v30 contentInsets];
    v40 = v38 + v39;
    [v30 size];
    v42 = v41;

    if (a2)
    {
      if (v48 == 4 || v48 == 2)
      {
        v43 = 2.0;
      }

      else
      {
        v43 = 6.0;
        if (v48)
        {
          v44 = v34 * (ceilf(v15) + -1.0);
          if (v44 < 0.0)
          {
            v44 = 0.0;
          }

          v45 = v36 * v15;
          goto LABEL_34;
        }
      }
    }

    else
    {
      v43 = v49;
    }

    v45 = v36 * v15;
    v44 = v43 * (ceilf(v15) + -1.0);
LABEL_34:
    [v3 setFrame:{0.0, 0.0, v45 + v44, v42 - v40}];
    sub_10006363C();
    return;
  }

  if ((a2 & 1) != 0 || v12 != *&a1)
  {
    goto LABEL_6;
  }
}

id sub_100062800()
{
  v1 = v0;
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarRowView];
  if (v2)
  {
    v3 = v2;
    [v3 frame];
    v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView];
    [v4 frame];
    [v3 bounds];
    sub_100770A4C();
    [v4 setFrame:?];
  }

  v5 = [v1 traitCollection];
  v6 = sub_10077070C();

  v7 = *&v1[OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView];
  if (v6)
  {
    CGAffineTransformMakeScale(&v9, -1.0, 1.0);
  }

  else
  {
    *&v9.a = 0x3FF0000000000000uLL;
    v9.c = 0.0;
    v9.d = 1.0;
    *&v9.tx = 0uLL;
  }

  return [v7 setTransform:&v9];
}

void sub_100062B94(float a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10076048C();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v63[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v2[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_currentRating];
  if (v10 != a1)
  {
    v11 = v2[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starSize];
    v12 = *&v2[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starPadding];
    HIDWORD(v62) = v2[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starPadding + 8];
    v13 = v2[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_useCase];
    v14 = [v2 traitCollection];
    v67.receiver = v2;
    v67.super_class = ObjectType;
    v15 = objc_msgSendSuper2(&v67, "minimumContentSizeCategory");
    v66.receiver = v2;
    v66.super_class = ObjectType;
    v16 = objc_msgSendSuper2(&v66, "maximumContentSizeCategory");
    v68.value._rawValue = v15;
    v68.is_nil = v16;
    v17.super.isa = sub_1007706DC(v68, v69).super.isa;

    if (v11 <= 1)
    {
      if (v11)
      {
        v21 = &UIFontTextStyleCaption2;
      }

      else
      {
        v21 = &UIFontTextStyleHeadline;
      }

      v22 = [objc_opt_self() configurationWithTextStyle:*v21 scale:2];
    }

    else if (v11 == 2)
    {
      v22 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
    }

    else if (v11 == 3)
    {
      if ((v13 & 1) != 0 || (v18 = sub_10076C04C(), v64 = v18, v65 = sub_10004C7BC(), v19 = sub_10000DB7C(v63), (*(*(v18 - 8) + 104))(v19, enum case for Feature.search_tags(_:), v18), LOBYTE(v18) = sub_10076C90C(), sub_10000CD74(v63), (v18 & 1) == 0))
      {
        v20 = 2;
      }

      else
      {
        v20 = 1;
      }

      v22 = [objc_opt_self() configurationWithPointSize:4 weight:v20 scale:10.0];
    }

    else
    {
      if ((v13 & 1) != 0 || (v23 = sub_10076C04C(), v64 = v23, v65 = sub_10004C7BC(), v24 = sub_10000DB7C(v63), (*(*(v23 - 8) + 104))(v24, enum case for Feature.search_tags(_:), v23), LOBYTE(v23) = sub_10076C90C(), sub_10000CD74(v63), (v23 & 1) == 0))
      {
        v25 = 2;
      }

      else
      {
        v25 = 1;
      }

      v22 = [objc_opt_self() configurationWithPointSize:4 weight:v25 scale:6.0];
    }

    v26 = HIDWORD(v62);
    v27 = v22;
    (*(v6 + 104))(v9, enum case for SystemImage.star(_:), v5);
    v28 = [v27 configurationWithTraitCollection:v17.super.isa];
    v29 = sub_10076046C();

    (*(v6 + 8))(v9, v5);
    [v29 contentInsets];
    v31 = v30;
    [v29 contentInsets];
    v33 = v31 + v32;
    [v29 size];
    v35 = v34 - v33;
    [v29 contentInsets];
    v37 = v36;
    [v29 contentInsets];
    v39 = v37 + v38;
    [v29 size];
    v41 = v40;

    if (v26)
    {
      if (v11 == 4 || v11 == 2)
      {
        v12 = 2.0;
      }

      else
      {
        v12 = 6.0;
        if (v11)
        {
          v42 = v33 * (ceilf(v10) + -1.0);
          if (v42 < 0.0)
          {
            v42 = 0.0;
          }

          v43 = v35 * v10 + v42;
          goto LABEL_29;
        }
      }
    }

    v43 = v35 * v10 + v12 * (ceilf(v10) + -1.0);
LABEL_29:
    [v2 setFrame:{0.0, 0.0, v43, v41 - v39}];
    v44 = [*&v2[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starImageView] image];
    if (v44)
    {
      v45 = v44;
      v46 = *&v2[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starLayer];
      [v2 bounds];
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v54 = v53;
      [v45 contentInsets];
      v56 = v55;
      [v45 contentInsets];
      v58 = v57;
      [v45 contentInsets];
      v60 = v59;
      [v45 contentInsets];
      [v46 setFrame:{v48 - v56, v50 - v58, v52 + v60, v54 + v61}];
    }
  }
}

id sub_10006314C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076048C();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v44[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starSize];
  v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starPadding];
  HIDWORD(v43) = v1[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starPadding + 8];
  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_currentRating];
  v11 = v1[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_useCase];
  v12 = [v1 traitCollection];
  v48.receiver = v1;
  v48.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v48, "minimumContentSizeCategory");
  v47.receiver = v1;
  v47.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v47, "maximumContentSizeCategory");
  v49.value._rawValue = v13;
  v49.is_nil = v14;
  v15.super.isa = sub_1007706DC(v49, v50).super.isa;

  if (v8 <= 1)
  {
    if (v8)
    {
      v19 = &UIFontTextStyleCaption2;
    }

    else
    {
      v19 = &UIFontTextStyleHeadline;
    }

    v20 = [objc_opt_self() configurationWithTextStyle:*v19 scale:2];
  }

  else if (v8 == 2)
  {
    v20 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  }

  else if (v8 == 3)
  {
    if ((v11 & 1) != 0 || (v16 = sub_10076C04C(), v45 = v16, v46 = sub_10004C7BC(), v17 = sub_10000DB7C(v44), (*(*(v16 - 8) + 104))(v17, enum case for Feature.search_tags(_:), v16), LOBYTE(v16) = sub_10076C90C(), sub_10000CD74(v44), (v16 & 1) == 0))
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    v20 = [objc_opt_self() configurationWithPointSize:4 weight:v18 scale:10.0];
  }

  else
  {
    if ((v11 & 1) != 0 || (v21 = sub_10076C04C(), v45 = v21, v46 = sub_10004C7BC(), v22 = sub_10000DB7C(v44), (*(*(v21 - 8) + 104))(v22, enum case for Feature.search_tags(_:), v21), LOBYTE(v21) = sub_10076C90C(), sub_10000CD74(v44), (v21 & 1) == 0))
    {
      v23 = 2;
    }

    else
    {
      v23 = 1;
    }

    v20 = [objc_opt_self() configurationWithPointSize:4 weight:v23 scale:6.0];
  }

  v24 = HIDWORD(v43);
  v25 = v20;
  (*(v4 + 104))(v7, enum case for SystemImage.star(_:), v3);
  v26 = [v25 configurationWithTraitCollection:v15.super.isa];
  v27 = sub_10076046C();

  (*(v4 + 8))(v7, v3);
  [v27 contentInsets];
  v29 = v28;
  [v27 contentInsets];
  v31 = v29 + v30;
  [v27 size];
  v33 = v32 - v31;
  [v27 contentInsets];
  v35 = v34;
  [v27 contentInsets];
  v37 = v36;
  [v27 size];
  v39 = v38;

  if (!v24)
  {
    goto LABEL_28;
  }

  if (v8 == 4 || v8 == 2)
  {
    v9 = 2.0;
    goto LABEL_28;
  }

  v9 = 6.0;
  if (!v8)
  {
LABEL_28:
    v41 = v33 * v10 + v9 * (ceilf(v10) + -1.0);
    return [v1 setFrame:{0.0, 0.0, v41, v39 - (v35 + v37)}];
  }

  v40 = v31 * (ceilf(v10) + -1.0);
  if (v40 < 0.0)
  {
    v40 = 0.0;
  }

  v41 = v33 * v10 + v40;
  return [v1 setFrame:{0.0, 0.0, v41, v39 - (v35 + v37)}];
}