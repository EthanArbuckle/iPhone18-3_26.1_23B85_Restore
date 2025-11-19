uint64_t sub_10047EBDC(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_100153064();
  sub_10047F180(&qword_1006B0C38, sub_100153064);
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);
}

void sub_10047ECAC(void *a1)
{
  v2 = *&CATransform3DIdentity.m33;
  v8[4] = *&CATransform3DIdentity.m31;
  v8[5] = v2;
  v3 = *&CATransform3DIdentity.m43;
  v8[6] = *&CATransform3DIdentity.m41;
  v8[7] = v3;
  v4 = *&CATransform3DIdentity.m13;
  v8[0] = *&CATransform3DIdentity.m11;
  v8[1] = v4;
  v5 = *&CATransform3DIdentity.m23;
  v8[2] = *&CATransform3DIdentity.m21;
  v8[3] = v5;
  [a1 setTransform3D:v8];
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v6 = [a1 traitCollection];
  v7 = sub_100356E0C(v6);

  [a1 setBackgroundColor:v7];
}

uint64_t sub_10047ED84(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_100153064();
  sub_10047F180(&qword_1006B0C38, sub_100153064);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a4;
  v7 = a1;
  isa = Set._bridgeToObjectiveC()().super.isa;
  v15.receiver = v7;
  v15.super_class = type metadata accessor for FMModernPlatterButton(0);
  objc_msgSendSuper2(&v15, "touchesCancelled:withEvent:", isa, v6);

  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  v14[4] = sub_10047F324;
  v14[5] = v10;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_100004AE4;
  v14[3] = &unk_100640C78;
  v11 = _Block_copy(v14);
  v12 = v7;

  [v9 animateWithDuration:4 delay:v11 options:0 animations:0.15 completion:0.1];
  _Block_release(v11);
}

id sub_10047EF50(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for FMModernPlatterButton(0);
  return objc_msgSendSuper2(&v5, "initWithCoder:", a3);
}

id sub_10047EF9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMModernPlatterButton(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10047F07C()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10047F180(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10047F1C8(uint64_t a1)
{
  result = sub_10047F180(&qword_1006C11E0, type metadata accessor for FMModernPlatterButtonEntry);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10047F220(uint64_t a1)
{
  result = sub_10047F180(&qword_1006C11E8, type metadata accessor for FMModernPlatterButtonEntry);
  *(a1 + 8) = result;
  return result;
}

id sub_10047F29C()
{
  v1 = *(v0 + 16);
  v2 = *&CATransform3DIdentity.m33;
  *&v8.m31 = *&CATransform3DIdentity.m31;
  *&v8.m33 = v2;
  v3 = *&CATransform3DIdentity.m43;
  *&v8.m41 = *&CATransform3DIdentity.m41;
  *&v8.m43 = v3;
  v4 = *&CATransform3DIdentity.m13;
  *&v8.m11 = *&CATransform3DIdentity.m11;
  *&v8.m13 = v4;
  v5 = *&CATransform3DIdentity.m23;
  *&v8.m21 = *&CATransform3DIdentity.m21;
  *&v8.m23 = v5;
  CATransform3DScale(&v7, &v8, 0.93, 0.93, 1.0);
  return [v1 setTransform3D:&v7];
}

void sub_10047F330()
{
  v1 = [v0 navigationBar];
  [v1 setTranslucent:1];

  v2 = [v0 navigationBar];
  v3 = [objc_allocWithZone(UIImage) init];
  [v2 setBackgroundImage:v3 forBarMetrics:0];

  v4 = [v0 navigationBar];
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor:v5];

  v6 = [v0 navigationBar];
  v7 = [objc_allocWithZone(UIImage) init];
  [v6 setShadowImage:v7];
}

uint64_t sub_10047F498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10007EBC0(&unk_1006BEF30);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100007204(a3, v22 - v9, &unk_1006BEF30);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100012DF0(v10, &unk_1006BEF30);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100012DF0(a3, &unk_1006BEF30);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100012DF0(a3, &unk_1006BEF30);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

id sub_10047F744(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v6 = sub_10007EBC0(&qword_1006B0080);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  *&v4[qword_1006BA730] = 0;
  *&v4[qword_1006BA738] = 0;
  v9 = qword_1006BA740;
  v10 = type metadata accessor for FMIPSafeLocation();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[qword_1006BA748];
  *v11 = 0;
  v11[1] = 0;
  v4[qword_1006BA750] = 0;
  v12 = qword_1006BA758;
  static Locale.autoupdatingCurrent.getter();
  v13 = type metadata accessor for Locale();
  (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  type metadata accessor for FMIPReverseGeocodingCache();
  swift_allocObject();
  *&v4[v12] = FMIPReverseGeocodingCache.init(preferredLocale:)();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100005B14(v14, qword_1006D4630);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "FMItemsGroupViewController: Initialized", v17, 2u);
  }

  *&v4[qword_1006BA728] = a1;
  v18 = sub_10007EBC0(a2);
  v20.receiver = v4;
  v20.super_class = v18;
  return objc_msgSendSuper2(&v20, "initWithNibName:bundle:", 0, 0);
}

char *sub_10047F9BC(uint64_t a1)
{
  v2 = v1;
  v4 = &v1[qword_1006BA970];
  *v4 = 0xD00000000000001ELL;
  v4[1] = 0x8000000100588620;
  v5 = qword_1006BA998;
  *&v2[v5] = [objc_allocWithZone(UILabel) init];
  v6 = qword_1006BA9A0;
  *&v2[v6] = [objc_allocWithZone(type metadata accessor for FMLoadingView()) init];
  v7 = qword_1006BA9A8;
  *&v2[v7] = [objc_allocWithZone(UIView) init];
  *&v2[qword_1006BA9B8] = 0;
  *&v2[qword_1006BA9C0] = 0;
  *&v2[qword_1006BA9C8] = 0;
  *&v2[qword_1006BA9D0] = 0;
  v2[qword_1006BA9D8] = 0;
  v8 = qword_1006BA9E0;
  v9 = [objc_opt_self() buttonWithType:1];
  v10 = String._bridgeToObjectiveC()();
  [v9 setAccessibilityIdentifier:v10];

  *&v2[v8] = v9;
  v2[qword_1006BA9E8] = 0;
  v2[qword_1006BA9F0] = 0;
  type metadata accessor for FMTableView();
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v11 setSeparatorStyle:0];
  *&v2[qword_1006BA990] = v11;
  v12 = objc_allocWithZone(type metadata accessor for FMItemsListDataSource());

  *&v2[qword_1006BA978] = sub_10043CCC8(v13, v11);
  v14 = objc_allocWithZone(type metadata accessor for FMNoItemView());

  *&v2[qword_1006BA980] = sub_10046E08C();
  v15 = objc_allocWithZone(type metadata accessor for FMItemTerminalView());

  *&v2[qword_1006BA988] = sub_1001A986C();
  if (qword_1006AEBD0 != -1)
  {
    swift_once();
  }

  memmove(&v2[qword_1006BA9B0], &xmmword_1006D44E0, 0xA0uLL);
  *&v2[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] = a1;
  v23.receiver = v2;
  v23.super_class = type metadata accessor for FMMediatedViewController();

  v16 = objc_msgSendSuper2(&v23, "initWithNibName:bundle:", 0, 0);
  v17 = String._bridgeToObjectiveC()();
  [v16 setAccessibilityIdentifier:{v17, v23.receiver, v23.super_class}];

  sub_10000905C(0, &unk_1006B7840);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v19 = String._bridgeToObjectiveC()();

  [v11 registerClass:ObjCClassFromMetadata forHeaderFooterViewReuseIdentifier:v19];

  *(*&v16[qword_1006BA978] + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_delegate + 8) = &off_100634CB8;
  swift_unknownObjectWeakAssign();
  v20 = *&v16[qword_1006BA988];
  *&v20[OBJC_IVAR____TtC6FindMy14FMTerminalView_delegate + 8] = &off_100634C68;
  swift_unknownObjectWeakAssign();
  v21 = v20;
  sub_10003C718();

  return v16;
}

char *sub_10047FE14(uint64_t a1)
{
  v2 = v1;
  v4 = &v1[qword_1006BA970];
  *v4 = 0xD00000000000001ELL;
  v4[1] = 0x8000000100588620;
  v5 = qword_1006BA998;
  *&v2[v5] = [objc_allocWithZone(UILabel) init];
  v6 = qword_1006BA9A0;
  *&v2[v6] = [objc_allocWithZone(type metadata accessor for FMLoadingView()) init];
  v7 = qword_1006BA9A8;
  *&v2[v7] = [objc_allocWithZone(UIView) init];
  *&v2[qword_1006BA9B8] = 0;
  *&v2[qword_1006BA9C0] = 0;
  *&v2[qword_1006BA9C8] = 0;
  *&v2[qword_1006BA9D0] = 0;
  v2[qword_1006BA9D8] = 0;
  v8 = qword_1006BA9E0;
  v9 = [objc_opt_self() buttonWithType:1];
  v10 = String._bridgeToObjectiveC()();
  [v9 setAccessibilityIdentifier:v10];

  *&v2[v8] = v9;
  v2[qword_1006BA9E8] = 0;
  v2[qword_1006BA9F0] = 0;
  type metadata accessor for FMTableView();
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v11 setSeparatorStyle:0];
  *&v2[qword_1006BA990] = v11;
  v12 = objc_allocWithZone(type metadata accessor for FMDevicesListDataSource());

  *&v2[qword_1006BA978] = sub_10031B5A0(v13, v11);
  v14 = objc_allocWithZone(type metadata accessor for FMNoDeviceView());

  *&v2[qword_1006BA980] = sub_1000383D8(v15);
  v16 = objc_allocWithZone(type metadata accessor for FMDevicesTerminalView());

  *&v2[qword_1006BA988] = sub_10003C3C0(v17);
  if (qword_1006AEBD0 != -1)
  {
    swift_once();
  }

  memmove(&v2[qword_1006BA9B0], &xmmword_1006D44E0, 0xA0uLL);
  *&v2[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] = a1;
  v25.receiver = v2;
  v25.super_class = type metadata accessor for FMMediatedViewController();

  v18 = objc_msgSendSuper2(&v25, "initWithNibName:bundle:", 0, 0);
  v19 = String._bridgeToObjectiveC()();
  [v18 setAccessibilityIdentifier:{v19, v25.receiver, v25.super_class}];

  sub_10000905C(0, &unk_1006B7840);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v21 = String._bridgeToObjectiveC()();

  [v11 registerClass:ObjCClassFromMetadata forHeaderFooterViewReuseIdentifier:v21];

  *(*&v18[qword_1006BA978] + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_delegate + 8) = &off_100634CB8;
  swift_unknownObjectWeakAssign();
  v22 = *&v18[qword_1006BA988];
  *&v22[OBJC_IVAR____TtC6FindMy14FMTerminalView_delegate + 8] = &off_100634C68;
  swift_unknownObjectWeakAssign();
  v23 = v22;
  sub_10003C718();

  return v18;
}

uint64_t sub_1004802EC(uint64_t a1)
{
  v2 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(a1 + OBJC_IVAR____TtC6FindMy23FMInitialCardController_mediator) + 56);
  v6 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027CB0(v5 + v6, v4, type metadata accessor for FMSelectedSection);

  sub_100027D80(v7, v4);

  return sub_10002A1C0(v4, type metadata accessor for FMSelectedSection);
}

int64_t sub_1004803E4(char a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for FMInitialCardController();
  result = objc_msgSendSuper2(&v9, "viewWillDisappear:", a1 & 1);
  v4 = *&v1[OBJC_IVAR____TtC6FindMy23FMInitialCardController_selectionSubscription];
  if (v4)
  {
    v5 = *(*&v1[OBJC_IVAR____TtC6FindMy23FMInitialCardController_mediator] + 56);
    swift_beginAccess();

    result = sub_1003CD53C((v5 + 16), v4);
    v6 = *(v5 + 16);
    if (v6 >> 62)
    {
      v8 = result;
      v7 = _CocoaArrayWrapper.endIndex.getter();
      result = v8;
      if (v7 >= v8)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7 >= result)
      {
LABEL_4:
        sub_1003CD570(result, v7);
        swift_endAccess();
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100480540(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006B2B68);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007EBC0(&unk_1006C0240);
  __chkstk_darwin(v9 - 8);
  v11 = &v23 - v10;
  sub_100007204(a1, &v23 - v10, &unk_1006C0240);
  v12 = type metadata accessor for FMIPBeaconShare();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v14 = &unk_1006C0240;
    v15 = v11;
  }

  else
  {
    FMIPBeaconShare.beaconIdentifier.getter();
    (*(v13 + 8))(v11, v12);
    v16 = UUID.uuidString.getter();
    v18 = v17;
    (*(v6 + 8))(v8, v5);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
    }

    v20 = Strong;

    v21 = type metadata accessor for FMPendingInfo();
    (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
    sub_10011A6EC(v16, v18, v4, 1);

    v14 = &qword_1006B2B68;
    v15 = v4;
  }

  return sub_100012DF0(v15, v14);
}

uint64_t sub_100480840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for OfferLocationDuration();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_10007EBC0(&qword_1006C12F0);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for FriendshipExpiration();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = type metadata accessor for MainActor();
  v3[14] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[15] = v7;
  v3[16] = v6;

  return _swift_task_switch(sub_1004809DC, v7, v6);
}

uint64_t sub_1004809DC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  (*(v2 + 16))(v1, v0[2], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for OfferLocationDuration.oneHour(_:))
  {
    v5 = &enum case for FriendshipExpiration.oneHour(_:);
LABEL_7:
    (*(v0[10] + 104))(v0[8], *v5, v0[9]);
    v6 = 0;
LABEL_8:
    v7 = v0[9];
    v8 = v0[10];
    v9 = v0[8];
    (*(v8 + 56))(v9, v6, 1, v7);
    v10 = *(v8 + 48);
    v11 = v10(v9, 1, v7);
    v12 = v0[12];
    v14 = v0[9];
    v13 = v0[10];
    v15 = v0[8];
    if (v11 == 1)
    {
      (*(v13 + 104))(v12, enum case for FriendshipExpiration.forever(_:), v0[9]);
      if (v10(v15, 1, v14) != 1)
      {
        sub_100012DF0(v0[8], &qword_1006C12F0);
      }
    }

    else
    {
      (*(v13 + 32))(v12, v0[8], v0[9]);
    }

    v16 = v0[3];
    v17 = v0[4];
    (*(v0[10] + 16))(v0[11], v0[12], v0[9]);
    type metadata accessor for FMFShareLocationAction();
    swift_allocObject();

    v18 = FMFShareLocationAction.init(handles:friendId:duration:)();
    v0[17] = v18;
    v19 = static MainActor.shared.getter();
    v0[18] = v19;
    v20 = swift_task_alloc();
    v0[19] = v20;
    v20[2] = v17;
    v20[3] = v18;
    v20[4] = v16;
    v21 = swift_task_alloc();
    v0[20] = v21;
    *v21 = v0;
    v21[1] = sub_100480D24;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v21, v19, &protocol witness table for MainActor, 0xD000000000000029, 0x800000010059B020, sub_100485394, v20, &type metadata for () + 8);
  }

  if (v4 == enum case for OfferLocationDuration.endOfDay(_:))
  {
    v5 = &enum case for FriendshipExpiration.endOfDay(_:);
    goto LABEL_7;
  }

  if (v4 == enum case for OfferLocationDuration.indefinitely(_:))
  {
    v5 = &enum case for FriendshipExpiration.forever(_:);
    goto LABEL_7;
  }

  if (v4 == enum case for OfferLocationDuration.pin(_:))
  {
    v6 = 1;
    goto LABEL_8;
  }

  return _diagnoseUnexpectedEnumCase<A>(type:)();
}

uint64_t sub_100480D24()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_100480F6C;
  }

  else
  {
    v5 = sub_100480EA0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100480EA0()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100480F6C()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100481038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10007EBC0(&qword_1006B9FD0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  (*(v8 + 32))(v13 + v12, v11, v7);

  sub_1000FB600(a3, sub_1004853A0, v13);
}

uint64_t sub_1004811C8(int64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v91 = a4;
  v94 = type metadata accessor for PersonModel.Handle();
  v6 = *(v94 - 8);
  __chkstk_darwin(v94);
  v8 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMFActionStatus();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v89 - v14;
  if (a2)
  {
    swift_errorRetain();
    if (qword_1006AEBE0 != -1)
    {
LABEL_106:
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100005B14(v16, qword_1006D4630);
    (*(v10 + 16))(v15, a1, v9);
    swift_errorRetain();

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    v19 = os_log_type_enabled(v17, v18);
    v92 = a2;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v90 = v21;
      v93 = swift_slowAlloc();
      v95[0] = v93;
      *v20 = 138412802;
      v22.super.isa = Array._bridgeToObjectiveC()().super.isa;
      *(v20 + 4) = v22;
      *v21 = v22;
      *(v20 + 12) = 2080;
      v96 = 0;
      v97 = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v24 = v96;
      v23 = v97;
      (*(v10 + 8))(v15, v9);
      v25 = sub_100005B4C(v24, v23, v95);

      *(v20 + 14) = v25;
      *(v20 + 22) = 2080;
      v96 = v92;
      swift_errorRetain();
      sub_10007EBC0(&unk_1006AF7B0);
      v26 = String.init<A>(describing:)();
      v28 = sub_100005B4C(v26, v27, v95);

      *(v20 + 24) = v28;
      _os_log_impl(&_mh_execute_header, v17, v18, "FMAddFriendViewController: 🙏 Error offering shares to %@ %s %s", v20, 0x20u);
      sub_100012DF0(v90, &unk_1006AF760);

      swift_arrayDestroy();
    }

    else
    {

      (*(v10 + 8))(v15, v9);
    }

    v39 = _convertErrorToNSError(_:)();
    a2 = [v39 userInfo];

    v40 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v40 + 64;
    v41 = 1 << *(v40 + 32);
    v42 = -1;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    v10 = v42 & *(v40 + 64);
    a1 = (v41 + 63) >> 6;
    v89 = &v96 + 1;

    v12 = 0;
    v90 = _swiftEmptyArrayStorage;
    v93 = v40;
    while (1)
    {
      do
      {
        if (!v10)
        {
          while (1)
          {
            v43 = (v12 + 1);
            if (__OFADD__(v12, 1))
            {
              __break(1u);
              goto LABEL_106;
            }

            if (v43 >= a1)
            {
              break;
            }

            v10 = *(v9 + 8 * v43);
            ++v12;
            if (v10)
            {
              v12 = v43;
              goto LABEL_18;
            }
          }

          v79 = v90;
          v80 = *(v90 + 2);
          if (v80)
          {
            v96 = _swiftEmptyArrayStorage;
            sub_100167620(0, v80, 0);
            v81 = v96;
            v82 = v79 + 40;
            do
            {

              PersonModel.Handle.init(rawValue:)();
              v96 = v81;
              v84 = v81[2];
              v83 = v81[3];
              if (v84 >= v83 >> 1)
              {
                sub_100167620(v83 > 1, v84 + 1, 1);
                v81 = v96;
              }

              v81[2] = v84 + 1;
              (*(v6 + 32))(v81 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v84, v8, v94);
              v82 += 16;
              --v80;
            }

            while (v80);
          }

          else
          {

            v81 = _swiftEmptyArrayStorage;
          }

          v85 = type metadata accessor for OfferLocationError();
          sub_100485784(&qword_1006C12F8, &type metadata accessor for OfferLocationError);
          v86 = swift_allocError();
          *v87 = v81;
          (*(*(v85 - 8) + 104))(v87, enum case for OfferLocationError.failed(_:), v85);
          v96 = v86;
          sub_10007EBC0(&qword_1006B9FD0);
          CheckedContinuation.resume(throwing:)();
        }

LABEL_18:
        v44 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v45 = (*(v40 + 48) + ((v12 << 10) | (16 * v44)));
        a2 = *v45;
        v15 = v45[1];
        v46 = HIBYTE(v15) & 0xF;
        v47 = a2 & 0xFFFFFFFFFFFFLL;
        if ((v15 & 0x2000000000000000) != 0)
        {
          v48 = HIBYTE(v15) & 0xF;
        }

        else
        {
          v48 = a2 & 0xFFFFFFFFFFFFLL;
        }
      }

      while (!v48);
      if ((v15 & 0x1000000000000000) == 0)
      {
        break;
      }

      v77 = sub_100484820(a2, v15, 10);
      if (v78)
      {
        goto LABEL_12;
      }

      v51 = v77;
LABEL_80:
      if (100 * (v51 / 100) == 500 && v51 != 518 && *(v93 + 16))
      {
        v70 = sub_10000726C(a2, v15);
        a2 = v71;

        if (a2 & 1) != 0 && (sub_100006004(*(v93 + 56) + 32 * v70, &v96), (swift_dynamicCast()))
        {
          v72 = v95[0];
          v15 = v95[1];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v90 = sub_10008B9E4(0, *(v90 + 2) + 1, 1, v90);
          }

          v74 = *(v90 + 2);
          v73 = *(v90 + 3);
          a2 = v74 + 1;
          if (v74 >= v73 >> 1)
          {
            v90 = sub_10008B9E4((v73 > 1), v74 + 1, 1, v90);
          }

          v75 = v90;
          *(v90 + 2) = a2;
          v76 = &v75[16 * v74];
          *(v76 + 4) = v72;
          *(v76 + 5) = v15;
          v40 = v93;
        }

        else
        {
          v40 = v93;
        }
      }

      else
      {
LABEL_12:

        v40 = v93;
      }
    }

    if ((v15 & 0x2000000000000000) != 0)
    {
      v96 = a2;
      v97 = v15 & 0xFFFFFFFFFFFFFFLL;
      if (a2 == 43)
      {
        if (!v46)
        {
          goto LABEL_109;
        }

        if (--v46)
        {
          v51 = 0;
          v61 = v89;
          while (1)
          {
            v62 = *v61 - 48;
            if (v62 > 9)
            {
              break;
            }

            v63 = 10 * v51;
            if ((v51 * 10) >> 64 != (10 * v51) >> 63)
            {
              break;
            }

            v51 = v63 + v62;
            if (__OFADD__(v63, v62))
            {
              break;
            }

            ++v61;
            if (!--v46)
            {
              goto LABEL_79;
            }
          }
        }
      }

      else if (a2 == 45)
      {
        if (!v46)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
          goto LABEL_111;
        }

        if (--v46)
        {
          v51 = 0;
          v55 = v89;
          while (1)
          {
            v56 = *v55 - 48;
            if (v56 > 9)
            {
              break;
            }

            v57 = 10 * v51;
            if ((v51 * 10) >> 64 != (10 * v51) >> 63)
            {
              break;
            }

            v51 = v57 - v56;
            if (__OFSUB__(v57, v56))
            {
              break;
            }

            ++v55;
            if (!--v46)
            {
              goto LABEL_79;
            }
          }
        }
      }

      else if (v46)
      {
        v51 = 0;
        v66 = &v96;
        while (1)
        {
          v67 = *v66 - 48;
          if (v67 > 9)
          {
            break;
          }

          v68 = 10 * v51;
          if ((v51 * 10) >> 64 != (10 * v51) >> 63)
          {
            break;
          }

          v51 = v68 + v67;
          if (__OFADD__(v68, v67))
          {
            break;
          }

          ++v66;
          if (!--v46)
          {
            goto LABEL_79;
          }
        }
      }

      goto LABEL_78;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v49 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v49 = _StringObject.sharedUTF8.getter();
    }

    v50 = *v49;
    if (v50 == 43)
    {
      if (v47 < 1)
      {
        goto LABEL_110;
      }

      v46 = v47 - 1;
      if (v47 == 1)
      {
        goto LABEL_78;
      }

      v51 = 0;
      if (v49)
      {
        v58 = v49 + 1;
        while (1)
        {
          v59 = *v58 - 48;
          if (v59 > 9)
          {
            goto LABEL_78;
          }

          v60 = 10 * v51;
          if ((v51 * 10) >> 64 != (10 * v51) >> 63)
          {
            goto LABEL_78;
          }

          v51 = v60 + v59;
          if (__OFADD__(v60, v59))
          {
            goto LABEL_78;
          }

          ++v58;
          if (!--v46)
          {
            goto LABEL_79;
          }
        }
      }
    }

    else if (v50 == 45)
    {
      if (v47 < 1)
      {
        goto LABEL_108;
      }

      v46 = v47 - 1;
      if (v47 == 1)
      {
        goto LABEL_78;
      }

      v51 = 0;
      if (v49)
      {
        v52 = v49 + 1;
        while (1)
        {
          v53 = *v52 - 48;
          if (v53 > 9)
          {
            goto LABEL_78;
          }

          v54 = 10 * v51;
          if ((v51 * 10) >> 64 != (10 * v51) >> 63)
          {
            goto LABEL_78;
          }

          v51 = v54 - v53;
          if (__OFSUB__(v54, v53))
          {
            goto LABEL_78;
          }

          ++v52;
          if (!--v46)
          {
            goto LABEL_79;
          }
        }
      }
    }

    else
    {
      if (!v47)
      {
LABEL_78:
        v51 = 0;
        LOBYTE(v46) = 1;
LABEL_79:
        LOBYTE(v95[0]) = v46;
        v69 = v46;

        if (v69)
        {
          goto LABEL_12;
        }

        goto LABEL_80;
      }

      v51 = 0;
      if (v49)
      {
        do
        {
          v64 = *v49 - 48;
          if (v64 > 9)
          {
            goto LABEL_78;
          }

          v65 = 10 * v51;
          if ((v51 * 10) >> 64 != (10 * v51) >> 63)
          {
            goto LABEL_78;
          }

          v51 = v65 + v64;
          if (__OFADD__(v65, v64))
          {
            goto LABEL_78;
          }

          ++v49;
        }

        while (--v47);
      }
    }

    LOBYTE(v46) = 0;
    goto LABEL_79;
  }

  if (qword_1006AEBE0 != -1)
  {
LABEL_111:
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100005B14(v29, qword_1006D4630);
  (*(v10 + 16))(v12, a1, v9);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v95[0] = v34;
    *v32 = 138412546;
    v35.super.isa = Array._bridgeToObjectiveC()().super.isa;
    *(v32 + 4) = v35;
    v33->super.isa = v35.super.isa;
    *(v32 + 12) = 2080;
    v96 = 0;
    v97 = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v36 = v96;
    v37 = v97;
    (*(v10 + 8))(v12, v9);
    v38 = sub_100005B4C(v36, v37, v95);

    *(v32 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v30, v31, "FMAddFriendViewController: 🙏 Offered shares to %@ %s", v32, 0x16u);
    sub_100012DF0(v33, &unk_1006AF760);

    sub_100006060(v34);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  sub_10007EBC0(&qword_1006B9FD0);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100481E88(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = type metadata accessor for ContactPickerViewModel.Dependencies();
  __chkstk_darwin(v6);
  (*(v8 + 16))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  *(swift_allocObject() + 16) = a4;

  v9 = a4;
  return OfferLocationContactPickerView.init(dependencies:fromEmail:performAction:showOfferSuccess:)();
}

uint64_t sub_100481FC8(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v22 = *(v5 - 8);
  v23 = v5;
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v21 = v8;
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v19 - v13;
  sub_10000905C(0, &qword_1006AEDC0);
  v19 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v20 = *(v9 + 8);
  v20(v12, v8);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  aBlock[4] = sub_10048538C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100640E88;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100485784(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v17 = v19;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v16);

  (*(v24 + 8))(v4, v2);
  (*(v22 + 8))(v7, v23);
  return (v20)(v14, v21);
}

void sub_100482394()
{
  v0 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v0 showOfferSuccessForHandles:isa];
}

uint64_t sub_100482408(uint64_t a1)
{
  v2 = type metadata accessor for FMSelectedSection();
  v3 = __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v18 - v7;
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = OBJC_IVAR____TtC6FindMy23FMInitialCardController_mediator;
  v12 = *(*(a1 + OBJC_IVAR____TtC6FindMy23FMInitialCardController_mediator) + 56);
  v13 = OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection;
  swift_beginAccess();
  sub_100027CB0(v12 + v13, v10, type metadata accessor for FMSelectedSection);
  swift_storeEnumTagMultiPayload();
  v14 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027CB0(v12 + v14, v5, type metadata accessor for FMSelectedSection);
  swift_beginAccess();

  sub_100058530(v8, v12 + v14);
  swift_endAccess();
  sub_100058594(v5);

  sub_10002A1C0(v5, type metadata accessor for FMSelectedSection);
  sub_10002A1C0(v8, type metadata accessor for FMSelectedSection);
  v15 = *(*(a1 + v11) + 56);
  sub_100027CB0(v10, v8, type metadata accessor for FMSelectedSection);
  v16 = OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection;
  swift_beginAccess();

  sub_100058530(v8, v15 + v16);
  swift_endAccess();
  sub_1000596D8();

  sub_10002A1C0(v8, type metadata accessor for FMSelectedSection);
  return sub_10002A1C0(v10, type metadata accessor for FMSelectedSection);
}

uint64_t sub_10048264C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 248) = a7;
  *(v7 + 32) = a5;
  *(v7 + 40) = a6;
  *(v7 + 24) = a4;
  v8 = type metadata accessor for ContinuousClock();
  *(v7 + 48) = v8;
  *(v7 + 56) = *(v8 - 8);
  *(v7 + 64) = swift_task_alloc();
  v9 = type metadata accessor for UIHostingControllerSizingOptions();
  *(v7 + 72) = v9;
  *(v7 + 80) = *(v9 - 8);
  *(v7 + 88) = swift_task_alloc();
  type metadata accessor for SeeLostItemView();
  *(v7 + 96) = swift_task_alloc();
  type metadata accessor for SeeLostItemViewModel.Dependencies();
  *(v7 + 104) = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  *(v7 + 112) = v10;
  *(v7 + 120) = *(v10 - 8);
  *(v7 + 128) = swift_task_alloc();
  v11 = type metadata accessor for URL();
  *(v7 + 136) = v11;
  *(v7 + 144) = *(v11 - 8);
  *(v7 + 152) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v7 + 160) = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 168) = v13;
  *(v7 + 176) = v12;

  return _swift_task_switch(sub_1004828B4, v13, v12);
}

uint64_t sub_1004828B4()
{
  v1 = *(*(*(v0 + 24) + OBJC_IVAR____TtC6FindMy23FMInitialCardController_mediator) + 16);
  *(v0 + 184) = v1;
  v2 = v1;

  return _swift_task_switch(sub_100482934, 0, 0);
}

uint64_t sub_100482934()
{
  v1 = *(v0 + 184);
  if (v1[OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreInitialized])
  {
    *(v0 + 249) = v1[OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreSignedIn];

    v2 = *(v0 + 168);
    v3 = *(v0 + 176);

    return _swift_task_switch(sub_100482C1C, v2, v3);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 192) = v4;
    *(v4 + 16) = v1;
    v5 = swift_task_alloc();
    *(v0 + 200) = v5;
    *v5 = v0;
    v5[1] = sub_100482A8C;

    return withCheckedContinuation<A>(isolation:function:_:)();
  }
}

uint64_t sub_100482A8C()
{

  return _swift_task_switch(sub_100482BA4, 0, 0);
}

uint64_t sub_100482BA4()
{
  v1 = *(v0 + 184);
  *(v0 + 249) = v1[OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreSignedIn];

  v2 = *(v0 + 168);
  v3 = *(v0 + 176);

  return _swift_task_switch(sub_100482C1C, v2, v3);
}

uint64_t sub_100482C1C()
{
  v1 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v6 = v0[14];
  v5 = v0[15];
  v8 = v0[4];
  v7 = v0[5];
  v21 = v0[3];
  type metadata accessor for SeeLostItemViewModel();
  (*(v1 + 16))(v2, v8, v3);
  (*(v5 + 16))(v4, v7, v6);
  static SeeLostItemViewModel.Dependencies.live()();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();
  v0[26] = SeeLostItemViewModel.__allocating_init(inputURL:sharingUUID:isPartnerURL:isSignedIn:delegate:dependencies:onItemFound:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  SeeLostItemView.init(viewModel:onDismiss:)();
  v9 = objc_allocWithZone(sub_10007EBC0(&unk_1006C1300));
  v10 = UIHostingController.init(rootView:)();
  v0[27] = v10;
  sub_10007EBC0(&qword_1006B3280);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100552220;
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  v0[2] = v11;
  sub_100485784(&qword_1006C1310, &type metadata accessor for UIHostingControllerSizingOptions);
  sub_10007EBC0(&qword_1006B3288);
  sub_100004044(&qword_1006C1320, &qword_1006B3288);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  v12 = objc_allocWithZone(type metadata accessor for FMTransparentNavigationController());
  v13 = sub_1000CC510(v10, -2);
  v0[28] = v13;
  [v13 setDelegate:v13];
  v14 = *(v21 + OBJC_IVAR____TtC6FindMy23FMInitialCardController_seeLostItemController);
  *(v21 + OBJC_IVAR____TtC6FindMy23FMInitialCardController_seeLostItemController) = v13;
  v15 = v13;

  v16 = static Duration.seconds(_:)();
  v18 = v17;
  static Clock<>.continuous.getter();
  v19 = swift_task_alloc();
  v0[29] = v19;
  *v19 = v0;
  v19[1] = sub_100482FBC;

  return sub_1005149A8(v16, v18, 0, 0, 1);
}

uint64_t sub_100482FBC()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  *(*v1 + 240) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 176);
  v7 = *(v2 + 168);
  if (v0)
  {
    v8 = sub_100483254;
  }

  else
  {
    v8 = sub_100483154;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100483154()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[3];

  [v3 presentViewController:v1 animated:1 completion:0];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100483254()
{
  v2 = v0[27];
  v1 = v0[28];

  v3 = v0[1];

  return v3();
}

void sub_100483330(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006C1328);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = &aBlock[-1] - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + OBJC_IVAR____TtC6FindMy23FMInitialCardController_seeLostItemController);
    v11 = Strong;
    v12 = v10;

    if (v10)
    {
      sub_100007204(a1, v8, &qword_1006C1328);
      v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v14 = swift_allocObject();
      sub_100035318(v8, v14 + v13, &qword_1006C1328);
      *(v14 + ((v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
      aBlock[4] = sub_1004856EC;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = &unk_100640FA0;
      v15 = _Block_copy(aBlock);

      [v12 dismissViewControllerAnimated:1 completion:v15];
      _Block_release(v15);
    }
  }
}

uint64_t sub_100483538(uint64_t a1)
{
  v2 = type metadata accessor for SeeLostItemViewModelError();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v38 - v6;
  __chkstk_darwin(v8);
  v10 = &v38 - v9;
  v11 = sub_10007EBC0(&qword_1006C1328);
  __chkstk_darwin(v11);
  v13 = &v38 - v12;
  sub_100007204(a1, &v38 - v12, &qword_1006C1328);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v10, v13, v2);
    v14 = *(v3 + 16);
    v14(v7, v10, v2);
    v15 = v3;
    if ((*(v3 + 88))(v7, v2) == enum case for SeeLostItemViewModelError.userNeedsToSignIn(_:))
    {
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100005B14(v16, qword_1006D4630);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "SeeLostItemViewModelError: User needs to sign in", v19, 2u);
      }

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v21 = Strong;
        sub_100485968();
      }

      return (*(v3 + 8))(v10, v2);
    }

    else
    {
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_100005B14(v27, qword_1006D4630);
      v28 = v40;
      v14(v40, v10, v2);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = v15;
        v32 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v32 = 138412290;
        sub_100485784(&qword_1006C1330, &type metadata accessor for SeeLostItemViewModelError);
        swift_allocError();
        v39 = v10;
        v14(v33, v28, v2);
        v34 = _swift_stdlib_bridgeErrorToNSError();
        v35 = *(v31 + 8);
        v35(v28, v2);
        *(v32 + 4) = v34;
        v36 = v38;
        *v38 = v34;
        _os_log_impl(&_mh_execute_header, v29, v30, "SeeLostItemViewModelError: Unknown Error: %@", v32, 0xCu);
        sub_100012DF0(v36, &unk_1006AF760);

        v35(v39, v2);
        return (v35)(v7, v2);
      }

      else
      {

        v37 = *(v15 + 8);
        v37(v28, v2);
        v37(v10, v2);
        return (v37)(v7, v2);
      }
    }
  }

  else
  {
    v24 = *v13;
    v23 = *(v13 + 1);
    swift_beginAccess();
    v25 = swift_unknownObjectWeakLoadStrong();
    if (v25)
    {
      v26 = v25;
      sub_100484264(v24, v23);
    }
  }
}

void sub_100483A9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&unk_1006B0120);
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  __chkstk_darwin(v4 - 8);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v31 - v8;
  __chkstk_darwin(v10);
  v12 = v31 - v11;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100005B14(v13, qword_1006D4630);
  sub_100007204(a1, v12, &unk_1006B0120);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v31[1] = a2;
    v32 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v33 = a1;
    v16 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    aBlock[0] = v31[0];
    *v16 = 136315138;
    sub_100007204(v12, v9, &unk_1006B0120);
    v17 = type metadata accessor for URL();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v9, 1, v17) == 1)
    {
      sub_100012DF0(v9, &unk_1006B0120);
      v19 = 0xE300000000000000;
      v20 = 7104878;
    }

    else
    {
      v20 = URL.absoluteString.getter();
      v19 = v21;
      (*(v18 + 8))(v9, v17);
    }

    sub_100012DF0(v12, &unk_1006B0120);
    v22 = sub_100005B4C(v20, v19, aBlock);

    *(v16 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "FMInitialCardController: onDismiss SeeLostItemView with url: %s", v16, 0xCu);
    sub_100006060(v31[0]);

    v6 = v32;
    a1 = v33;
  }

  else
  {

    sub_100012DF0(v12, &unk_1006B0120);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = *(Strong + OBJC_IVAR____TtC6FindMy23FMInitialCardController_seeLostItemController);
    v25 = Strong;
    v26 = v24;

    if (v24)
    {
      sub_100007204(a1, v6, &unk_1006B0120);
      v27 = (*(v34 + 80) + 16) & ~*(v34 + 80);
      v28 = swift_allocObject();
      sub_100035318(v6, v28 + v27, &unk_1006B0120);
      v29 = swift_allocObject();
      *(v29 + 16) = sub_100485448;
      *(v29 + 24) = v28;
      aBlock[4] = sub_1000822F4;
      aBlock[5] = v29;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = &unk_100640F50;
      v30 = _Block_copy(aBlock);

      [v26 dismissViewControllerAnimated:1 completion:v30];
      _Block_release(v30);
    }
  }
}

uint64_t sub_100483F48(uint64_t a1)
{
  v2 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100005B14(v9, qword_1006D4630);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "FMInitialCardController: SeeLostItemView dismissed", v12, 2u);
  }

  sub_100007204(a1, v4, &unk_1006B0120);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_100012DF0(v4, &unk_1006B0120);
  }

  (*(v6 + 32))(v8, v4, v5);
  v14 = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v15);
  v17 = v16;
  sub_10015391C(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_100485784(&qword_1006AF360, type metadata accessor for OpenExternalURLOptionsKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v14 openURL:v17 options:isa completionHandler:0];

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100484264(void (*a1)(void, void), unint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B2B68);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100005B14(v7, qword_1006D4630);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100005B4C(a1, a2, &v15);
    _os_log_impl(&_mh_execute_header, v8, v9, "FMInitialCardController: navigateToSharedLostItem with id: %s", v10, 0xCu);
    sub_100006060(v11);
  }

  v12 = type metadata accessor for FMPendingInfo();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);

  sub_10011A6EC(a1, a2, v6, 1);

  return sub_100012DF0(v6, &qword_1006B2B68);
}

void sub_1004844BC()
{

  v1 = *(v0 + OBJC_IVAR____TtC6FindMy23FMInitialCardController_seeLostItemController);
}

id sub_10048451C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMInitialCardController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100484698(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1 + v9;
  v14 = *(v1 + v9 + *(v8 + 64));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1000EE760;

  return sub_10048264C(a1, v10, v11, v12, v1 + v6, v13, v14);
}

unsigned __int8 *sub_100484820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100484DAC();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100484DAC()
{
  v0 = String.subscript.getter();
  v4 = sub_100484E2C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100484E2C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_100005EA0(v9, 0), v12 = sub_100484F84(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_100484F84(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1004851A4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1004851A4(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
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

uint64_t sub_1004851A4(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_100485220(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1000E3478;

  return sub_10029E384(a1, a2, v2);
}

uint64_t sub_1004852E0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000EE760;

  return sub_100480840(a1, a2, v6);
}

uint64_t sub_1004853A0(int64_t a1, uint64_t a2)
{
  v5 = *(sub_10007EBC0(&qword_1006B9FD0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_1004811C8(a1, a2, v6, v7);
}

uint64_t sub_100485448()
{
  v1 = *(sub_10007EBC0(&unk_1006B0120) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100483F48(v2);
}

uint64_t sub_1004854B4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMSelectedSection();
  v5 = __chkstk_darwin(v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = *(v1 + OBJC_IVAR____TtC6FindMy23FMInitialCardController_discoveryCoordinator);
  *(v1 + OBJC_IVAR____TtC6FindMy23FMInitialCardController_discoveryCoordinator) = 0;

  v11 = OBJC_IVAR____TtC6FindMy23FMInitialCardController_mediator;
  v12 = *(*(v1 + OBJC_IVAR____TtC6FindMy23FMInitialCardController_mediator) + 56);
  swift_storeEnumTagMultiPayload();
  v13 = OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection;
  swift_beginAccess();

  sub_100058530(v9, v12 + v13);
  swift_endAccess();
  sub_1000596D8();

  sub_10002A1C0(v9, type metadata accessor for FMSelectedSection);
  v14 = *(*(v2 + v11) + 56);
  v15 = type metadata accessor for FMIPItem();
  (*(*(v15 - 8) + 16))(v9, a1, v15);
  swift_storeEnumTagMultiPayload();
  v16 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027CB0(v14 + v16, v7, type metadata accessor for FMSelectedSection);
  swift_beginAccess();

  sub_100058530(v9, v14 + v16);
  swift_endAccess();
  sub_100058594(v7);

  sub_10002A1C0(v7, type metadata accessor for FMSelectedSection);
  return sub_10002A1C0(v9, type metadata accessor for FMSelectedSection);
}

uint64_t sub_1004856EC()
{
  v1 = *(sub_10007EBC0(&qword_1006C1328) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100483538(v2);
}

uint64_t sub_100485784(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004857CC()
{
  v1 = type metadata accessor for FMSelectedSection();
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v12 - v5;
  v7 = *(v0 + OBJC_IVAR____TtC6FindMy23FMInitialCardController_discoveryCoordinator);
  *(v0 + OBJC_IVAR____TtC6FindMy23FMInitialCardController_discoveryCoordinator) = 0;

  v8 = *(*(v0 + OBJC_IVAR____TtC6FindMy23FMInitialCardController_mediator) + 56);
  v9 = OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection;
  swift_beginAccess();
  sub_100027CB0(v8 + v9, v6, type metadata accessor for FMSelectedSection);
  v10 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027CB0(v8 + v10, v4, type metadata accessor for FMSelectedSection);
  swift_beginAccess();

  sub_100058530(v6, v8 + v10);
  swift_endAccess();
  sub_100058594(v4);

  sub_10002A1C0(v4, type metadata accessor for FMSelectedSection);
  return sub_10002A1C0(v6, type metadata accessor for FMSelectedSection);
}

void sub_100485968()
{
  v0 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_100012DF0(v2, &unk_1006B0120);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100005B14(v7, qword_1006D4630);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "FMTerminalView: Error opening settings. Invalid URL", v10, 2u);
    }
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v11 = [objc_opt_self() defaultWorkspace];
    if (v11)
    {
      v13 = v11;
      URL._bridgeToObjectiveC()(v12);
      v15 = v14;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      [v13 openSensitiveURL:v15 withOptions:isa];
    }

    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100485C60()
{
  v0 = type metadata accessor for Logger();
  sub_100005AB0(v0, qword_1006D4CD8);
  sub_100005B14(v0, qword_1006D4CD8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100485CE4()
{
  v0 = type metadata accessor for Logger();
  sub_100005AB0(v0, qword_1006D4CF0);
  sub_100005B14(v0, qword_1006D4CF0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100485D64()
{
  v0 = type metadata accessor for Logger();
  sub_100005AB0(v0, qword_1006D4D08);
  sub_100005B14(v0, qword_1006D4D08);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100485DE8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_10000905C(0, &qword_1006C1398);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

void *sub_100485E8C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

dispatch_semaphore_t sub_100485EAC()
{
  result = dispatch_semaphore_create(4);
  qword_1006C1338 = result;
  return result;
}

uint64_t sub_100485F48()
{
  result = static Fence.MonitorRegion.minimumRadius.getter();
  qword_1006D4D20 = v1;
  return result;
}

uint64_t sub_100485F68()
{
  result = static Fence.MonitorRegion.maximumRadius.getter();
  qword_1006D4D28 = v1;
  return result;
}

uint64_t sub_100485F88()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 coordinate];
  v13 = v12;
  [v0 coordinate];
  v15 = [objc_allocWithZone(CLLocation) initWithLatitude:v13 longitude:v14];
  v16 = [objc_opt_self() sharedApplication];
  [v16 setNetworkActivityIndicatorVisible:1];

  sub_10000905C(0, &qword_1006AEDC0);
  (*(v9 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v8);
  v17 = static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v11, v8);
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  *(v18 + 24) = v15;
  aBlock[4] = sub_100487F54;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100641170;
  v19 = _Block_copy(aBlock);
  v20 = v1;
  v21 = v15;
  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_100487F5C(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v25 + 8))(v4, v2);
  (*(v23 + 8))(v7, v24);
}

void sub_100486398(char *a1, uint64_t a2)
{
  if (qword_1006AED80 != -1)
  {
    swift_once();
  }

  OS_dispatch_semaphore.wait()();
  v4 = *&a1[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_geocoder];
  [v4 cancelGeocode];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v8[4] = sub_100487FA4;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100485DE8;
  v8[3] = &unk_1006411C0;
  v6 = _Block_copy(v8);
  v7 = a1;

  [v4 reverseGeocodeLocation:a2 completionHandler:v6];
  _Block_release(v6);
}

void sub_1004864D8(unint64_t a1, uint64_t a2, char *a3)
{
  v5 = sub_10007EBC0(&qword_1006B0040);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v43 - v9;
  if (qword_1006AED80 != -1)
  {
    swift_once();
  }

  OS_dispatch_semaphore.signal()();
  v11 = [objc_opt_self() sharedApplication];
  [v11 setNetworkActivityIndicatorVisible:0];

  if (!a1)
  {
    [a3 setTitle:0];
    [a3 setSubtitle:0];
    goto LABEL_46;
  }

  v12 = a1 >> 62;
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_39:
    [a3 setTitle:0];
    [a3 setSubtitle:0];
    goto LABEL_40;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_39;
  }

LABEL_6:
  v45 = a1 >> 62;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v13 = *(a1 + 32);
  }

  v14 = v13;
  v15 = [v13 name];
  [a3 setTitle:v15];

  v44 = v14;
  FMFAddress.init(from:)();
  v16 = type metadata accessor for FMFAddress();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v10, 0, 1, v16);
  v18 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_fmfPlacemark;
  swift_beginAccess();
  sub_100487FAC(v10, &a3[v18]);
  swift_endAccess();
  v19 = [a3 title];
  if (!v19)
  {
    sub_100486C44();
    v11 = v27;
LABEL_17:
    if (!v11)
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  v20 = v19;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = sub_100486C44();
  v11 = v25;
  if (!v23)
  {
    goto LABEL_17;
  }

  if (!v25)
  {
LABEL_18:

LABEL_19:
    v11 = a3;
    sub_100486C44();
    if (v28)
    {
      v11 = v28;
      v26 = String._bridgeToObjectiveC()();
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  if (v21 == v24 && v25 == v23)
  {

    v26 = 0;
LABEL_21:

    goto LABEL_24;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v29 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_23:
  v26 = 0;
LABEL_24:
  [a3 setSubtitle:v26];

  sub_1004311B8(&a3[v18], v8);
  if ((*(v17 + 48))(v8, 1, v16) != 1)
  {

    sub_100278AFC(v8);
    v12 = v45;
LABEL_40:
    if (v12)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_46;
      }

      goto LABEL_42;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_42:
      if ((a1 & 0xC000000000000001) != 0)
      {
        v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_45;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v41 = *(a1 + 32);
LABEL_45:
        v42 = *&a3[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_clPlacemark];
        *&a3[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_clPlacemark] = v41;

        goto LABEL_46;
      }

      goto LABEL_52;
    }

LABEL_46:
    dispatch_group_leave(*&a3[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_didReverseGeocodeGroup]);
    return;
  }

  sub_100278AFC(v8);
  v30 = v44;
  v31 = [v44 region];
  if (!v31)
  {
    goto LABEL_33;
  }

  v32 = v31;
  objc_opt_self();
  v33 = swift_dynamicCastObjCClass();
  if (!v33)
  {

    goto LABEL_33;
  }

  [v33 radius];
  v35 = v34;

  if (v35 <= 0.0)
  {
LABEL_33:
    v37 = [v30 location];
    v12 = v45;
    if (!v37)
    {
      v40 = 0;
      goto LABEL_37;
    }

    v38 = &selRef_horizontalAccuracy;
    v11 = v37;
LABEL_35:
    [v37 *v38];
    v40 = v39;

LABEL_37:
    *&a3[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius] = v40;
    v11 = a3;
    sub_100486AA8();

    goto LABEL_40;
  }

  v36 = [v30 region];
  if (v36)
  {
    v11 = v36;
    objc_opt_self();
    v37 = swift_dynamicCastObjCClass();
    if (!v37)
    {
LABEL_53:

      goto LABEL_54;
    }

    v38 = &selRef_radius;
    v12 = v45;
    goto LABEL_35;
  }

LABEL_54:
  __break(1u);
}

void sub_100486AA8()
{
  if (qword_1006AED90 != -1)
  {
    swift_once();
  }

  v1 = *&qword_1006D4D28;
  if (qword_1006AED88 != -1)
  {
    swift_once();
  }

  v2 = *&qword_1006D4D20;
  v3 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius;
  if (*&qword_1006D4D20 <= *&v0[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius])
  {
    v2 = *&v0[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius];
  }

  if (v2 >= v1)
  {
    v2 = v1;
  }

  *&v0[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius] = v2;
  [v0 coordinate];
  v6 = [objc_opt_self() circleWithCenterCoordinate:v4 radius:{v5, *&v0[v3]}];
  v7 = *&v0[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_overlay];
  *&v0[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_overlay] = v6;
}

uint64_t sub_100486C44()
{
  v1 = type metadata accessor for FMFAddress();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007EBC0(&qword_1006B0040);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_fmfPlacemark;
  swift_beginAccess();
  sub_1004311B8(v0 + v8, v7);
  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_100278AFC(v7);
  }

  else
  {
    (*(v2 + 16))(v4, v7, v1);
    sub_100278AFC(v7);
    countAndFlagsBits = FMFAddress.displayAddress.getter();
    v14 = v13;
    (*(v2 + 8))(v4, v1);
    if (v14)
    {
      return countAndFlagsBits;
    }
  }

  v9 = [objc_opt_self() mainBundle];
  v17._object = 0x800000010058E080;
  v10._object = 0x800000010058E060;
  v17._countAndFlagsBits = 0xD000000000000024;
  v10._countAndFlagsBits = 0xD000000000000012;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v17)._countAndFlagsBits;

  return countAndFlagsBits;
}

double sub_100486F38()
{
  v1 = type metadata accessor for FMFAddress();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007EBC0(&qword_1006B0040);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for FMFAddressLevelType();
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  __chkstk_darwin(v14);
  v17 = &v24 - v16;
  if (*(v0 + OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_locationType) != 1)
  {
    return 2000.0;
  }

  v24 = v15;
  v18 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_fmfPlacemark;
  swift_beginAccess();
  sub_1004311B8(v0 + v18, v7);
  if (!(*(v2 + 48))(v7, 1, v1))
  {
    (*(v2 + 16))(v4, v7, v1);
    sub_100278AFC(v7);
    FMFAddress.levelType.getter();
    (*(v2 + 8))(v4, v1);
    v21 = v24;
    (*(v24 + 32))(v17, v13, v8);
    v22 = *(v21 + 104);
    v22(v10, enum case for FMFAddressLevelType.street(_:), v8);
    sub_100487F5C(&qword_1006C1390, &type metadata accessor for FMFAddressLevelType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v23 = *(v21 + 8);
    v23(v10, v8);
    if (v26 == v25)
    {
      v23(v17, v8);
      return 100.0;
    }

    v22(v10, enum case for FMFAddressLevelType.city(_:), v8);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v23(v10, v8);
    if (v26 == v25)
    {
      v23(v17, v8);
      return 4000.0;
    }

    v22(v10, enum case for FMFAddressLevelType.state(_:), v8);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v23(v10, v8);
    if (v26 == v25)
    {
      v23(v17, v8);
    }

    else
    {
      v22(v10, enum case for FMFAddressLevelType.country(_:), v8);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v23(v10, v8);
      v23(v17, v8);
      if (v26 != v25)
      {
        return 2000.0;
      }
    }

    return 10000.0;
  }

  sub_100278AFC(v7);
  return 2000.0;
}

double sub_100487474()
{
  v1 = type metadata accessor for FMFAddress();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007EBC0(&qword_1006B0040);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for FMFAddressLevelType();
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  __chkstk_darwin(v14);
  v17 = &v24 - v16;
  if (*(v0 + OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_locationType) != 1)
  {
    return 500.0;
  }

  v24 = v15;
  v18 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_fmfPlacemark;
  swift_beginAccess();
  sub_1004311B8(v0 + v18, v7);
  if (!(*(v2 + 48))(v7, 1, v1))
  {
    (*(v2 + 16))(v4, v7, v1);
    sub_100278AFC(v7);
    FMFAddress.levelType.getter();
    (*(v2 + 8))(v4, v1);
    v21 = v24;
    (*(v24 + 32))(v17, v13, v8);
    v22 = *(v21 + 104);
    v22(v10, enum case for FMFAddressLevelType.street(_:), v8);
    sub_100487F5C(&qword_1006C1390, &type metadata accessor for FMFAddressLevelType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v23 = *(v21 + 8);
    v23(v10, v8);
    if (v26 == v25)
    {
      v23(v17, v8);
      return 100.0;
    }

    v22(v10, enum case for FMFAddressLevelType.city(_:), v8);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v23(v10, v8);
    if (v26 == v25)
    {
      v23(v17, v8);
      return 4000.0;
    }

    v22(v10, enum case for FMFAddressLevelType.state(_:), v8);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v23(v10, v8);
    if (v26 == v25)
    {
      v23(v17, v8);
    }

    else
    {
      v22(v10, enum case for FMFAddressLevelType.country(_:), v8);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v23(v10, v8);
      v23(v17, v8);
      if (v26 != v25)
      {
        return 500.0;
      }
    }

    return 10000.0;
  }

  sub_100278AFC(v7);
  return 500.0;
}

uint64_t sub_100487A68()
{
  v1 = [objc_opt_self() mainBundle];
  v11._object = 0x800000010058E100;
  v2._countAndFlagsBits = 0x4E49564C4F534552;
  v2._object = 0xE900000000000047;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0xD00000000000001BLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v11);

  v4 = String._bridgeToObjectiveC()();

  [v0 setTitle:v4];

  [v0 coordinate];
  v7 = [objc_opt_self() circleWithCenterCoordinate:v5 radius:{v6, *&v0[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius]}];
  v8 = *&v0[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_overlay];
  *&v0[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_overlay] = v7;

  dispatch_group_enter(*&v0[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_didReverseGeocodeGroup]);

  return sub_100485F88();
}

id sub_100487C4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMFenceMapAnnotation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMFenceMapAnnotation()
{
  result = qword_1006C1378;
  if (!qword_1006C1378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100487D94()
{
  type metadata accessor for FMFLocationAlertAddressType();
  if (v0 <= 0x3F)
  {
    sub_100487E94();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100487E94()
{
  if (!qword_1006BA950)
  {
    type metadata accessor for FMFAddress();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006BA950);
    }
  }
}

unint64_t sub_100487F00()
{
  result = qword_1006C1388;
  if (!qword_1006C1388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1388);
  }

  return result;
}

uint64_t sub_100487F5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100487FAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B0040);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100488020()
{
  v1 = v0;
  v2 = [v0 navigationController];
  if (v2)
  {
    v3 = v2;
    sub_10047F330();
  }

  v4 = [objc_allocWithZone(UIActivityIndicatorView) initWithFrame:{0.0, 0.0, 20.0, 20.0}];
  v5 = objc_opt_self();
  v6 = [v5 grayColor];
  [v4 setColor:v6];

  v7 = *&v1[OBJC_IVAR____TtC6FindMy33FMPredefinedMessageViewController_rightBarButtonItem];
  if (v7)
  {
    [v7 setEnabled:0];
  }

  v8 = *&v1[OBJC_IVAR____TtC6FindMy33FMPredefinedMessageViewController_tableView];
  [v8 _setSectionContentInsetFollowsLayoutMargins:1];
  [v8 setDataSource:v1];
  [v8 setDelegate:v1];
  [v8 setScrollEnabled:0];
  [v8 setAllowsSelection:1];
  [v8 setAllowsMultipleSelection:0];
  v9 = [v5 clearColor];
  [v8 setBackgroundColor:v9];

  [v8 setRowHeight:UITableViewAutomaticDimension];
  [v8 setEstimatedRowHeight:*&v1[OBJC_IVAR____TtC6FindMy33FMPredefinedMessageViewController_style]];
  type metadata accessor for FMPredefinedMessageTableViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = String._bridgeToObjectiveC()();
  [v8 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v11];

  v12 = [v1 contentView];
  [v12 addSubview:v8];
}

void sub_10048828C()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy33FMPredefinedMessageViewController_tableView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100552F00;
  v4 = [v1 topAnchor];
  v5 = [v0 contentView];
  v6 = [v5 topAnchor];

  v7 = [v4 constraintEqualToAnchor:v6 constant:*&v0[OBJC_IVAR____TtC6FindMy33FMPredefinedMessageViewController_style + 8]];
  *(v3 + 32) = v7;
  v8 = [v1 bottomAnchor];
  v9 = [v0 contentView];
  v10 = [v9 bottomAnchor];

  v11 = [v8 constraintEqualToAnchor:v10];
  *(v3 + 40) = v11;
  v12 = [v1 leadingAnchor];
  v13 = [v0 contentView];
  v14 = [v13 leadingAnchor];

  v15 = [v12 constraintEqualToAnchor:v14];
  *(v3 + 48) = v15;
  v16 = [v1 trailingAnchor];
  v17 = [v0 contentView];
  v18 = [v17 trailingAnchor];

  v19 = [v16 constraintEqualToAnchor:v18];
  v20 = *&v0[OBJC_IVAR____TtC6FindMy33FMPredefinedMessageViewController_tableViewheightConstraint];
  *(v3 + 56) = v19;
  *(v3 + 64) = v20;
  sub_10000905C(0, &qword_1006B3A70);
  v21 = v20;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:isa];
}

uint64_t sub_100488704(void *a1)
{
  v3 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v5 = [a1 dequeueReusableCellWithIdentifier:v3 forIndexPath:isa];

  type metadata accessor for FMPredefinedMessageTableViewCell();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = IndexPath.section.getter();
    v5 = OBJC_IVAR____TtC6FindMy33FMPredefinedMessageViewController_messages;
    if (v8 >= *(*(v1 + OBJC_IVAR____TtC6FindMy33FMPredefinedMessageViewController_messages) + 16))
    {
      return v7;
    }

    v9 = IndexPath.section.getter();
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v10 = *&v5[v1];
      if (v9 < *(v10 + 16))
      {
        v11 = v10 + 16 * v9;
        v12 = *(v11 + 32);
        v13 = *(v11 + 40);

        sub_1000F7380(v12, v13);
        return v7;
      }
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100488984@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v36 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&qword_1006C1410);
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  v11 = sub_10007EBC0(&unk_1006C2670);
  __chkstk_darwin(v11 - 8);
  v39 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v36 - v14;
  v17 = __chkstk_darwin(v16);
  v19 = &v36 - v18;
  v20 = *(v6 + 16);
  v43 = a2;
  v40 = v20;
  v41 = v6 + 16;
  (v20)(&v36 - v18, a2, v5, v17);
  v21 = 1;
  v45 = *(v6 + 56);
  v45(v19, 0, 1, v5);
  v37 = a1;
  v22 = [a1 indexPathForSelectedRow];
  if (v22)
  {
    v23 = v22;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = 0;
  }

  v42 = v6 + 56;
  v45(v15, v21, 1, v5);
  v24 = *(v8 + 48);
  sub_100489434(v19, v10);
  sub_100489434(v15, &v10[v24]);
  v25 = *(v6 + 48);
  if (v25(v10, 1, v5) == 1)
  {
    sub_100012DF0(v15, &unk_1006C2670);
    sub_100012DF0(v19, &unk_1006C2670);
    if (v25(&v10[v24], 1, v5) == 1)
    {
      sub_100012DF0(v10, &unk_1006C2670);
LABEL_11:
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v37 deselectRowAtIndexPath:isa animated:0];

      [*(v38 + OBJC_IVAR____TtC6FindMy33FMPredefinedMessageViewController_rightBarButtonItem) setEnabled:0];
      v28 = 1;
      v27 = v44;
      return (v45)(v27, v28, 1, v5);
    }

    goto LABEL_8;
  }

  v26 = v39;
  sub_100489434(v10, v39);
  if (v25(&v10[v24], 1, v5) == 1)
  {
    sub_100012DF0(v15, &unk_1006C2670);
    sub_100012DF0(v19, &unk_1006C2670);
    (*(v6 + 8))(v26, v5);
LABEL_8:
    sub_100012DF0(v10, &qword_1006C1410);
    goto LABEL_9;
  }

  v29 = &v10[v24];
  v30 = v36;
  (*(v6 + 32))(v36, v29, v5);
  sub_100489768(&qword_1006C1418, &type metadata accessor for IndexPath);
  v31 = v26;
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  v33 = *(v6 + 8);
  v33(v30, v5);
  sub_100012DF0(v15, &unk_1006C2670);
  sub_100012DF0(v19, &unk_1006C2670);
  v33(v31, v5);
  sub_100012DF0(v10, &unk_1006C2670);
  if (v32)
  {
    goto LABEL_11;
  }

LABEL_9:
  v27 = v44;
  v40(v44, v43, v5);
  v28 = 0;
  return (v45)(v27, v28, 1, v5);
}

void sub_100489068(void *a1)
{
  v3 = sub_10007EBC0(&unk_1006C2670);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC6FindMy33FMPredefinedMessageViewController_rightBarButtonItem);
  if (v6)
  {
    v7 = v6;
    v8 = [a1 indexPathForSelectedRow];
    if (v8)
    {
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = type metadata accessor for IndexPath();
      (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
    }

    else
    {
      v10 = type metadata accessor for IndexPath();
      (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    }

    sub_100012DF0(v5, &unk_1006C2670);
    [v7 setEnabled:v8 != 0];
  }
}

id sub_100489328()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPredefinedMessageViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100489434(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&unk_1006C2670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004894A4()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_1000971C0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006412A0;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100489768(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100489768(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1004897B0()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleHeadline;
  v2 = UIFontTextStyleSubheadline;
  v3 = [v0 systemBlueColor];
  v4 = [v0 labelColor];
  v5 = [v0 secondaryLabelColor];
  *&xmmword_1006C1420 = v1;
  *(&xmmword_1006C1420 + 1) = v2;
  *&xmmword_1006C1430 = v3;
  *(&xmmword_1006C1430 + 1) = v4;
  qword_1006C1440 = v5;
  unk_1006C1448 = 32;
  *&xmmword_1006C1450 = 0xE100000000000000;
  *(&xmmword_1006C1450 + 8) = xmmword_100563410;
  __asm { FMOV            V0.2D, #12.0 }

  unk_1006C1468 = _Q0;
  *(&xmmword_1006C1470 + 8) = xmmword_100563420;
  result = 2.0;
  unk_1006C1488 = xmmword_1005521A0;
  return result;
}

double sub_1004898B0()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleHeadline;
  v2 = UIFontTextStyleSubheadline;
  v3 = [v0 systemBlueColor];
  v4 = [v0 labelColor];
  v5 = [v0 secondaryLabelColor];
  *&xmmword_1006C1498 = v1;
  *(&xmmword_1006C1498 + 1) = v2;
  *&xmmword_1006C14A8 = v3;
  *(&xmmword_1006C14A8 + 1) = v4;
  qword_1006C14B8 = v5;
  unk_1006C14C0 = 32;
  *&xmmword_1006C14C8 = 0xE100000000000000;
  *(&xmmword_1006C14C8 + 8) = xmmword_100563430;
  unk_1006C14E0 = xmmword_10055A7D0;
  *(&xmmword_1006C14E8 + 8) = xmmword_100561390;
  result = 2.0;
  unk_1006C1500 = xmmword_1005521A0;
  return result;
}

id sub_1004899B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(&v31 + 1) = &type metadata for SolariumFeatureFlag;
  *&v32 = sub_10000BD04();
  v6 = isFeatureEnabled(_:)();
  sub_100006060(&v30);
  if (v6)
  {
    if (qword_1006AEDA0 != -1)
    {
      swift_once();
    }

    v7 = &xmmword_1006C1498;
  }

  else
  {
    if (qword_1006AED98 != -1)
    {
      swift_once();
    }

    v7 = &xmmword_1006C1420;
  }

  *&v33[64] = *(v7 + 14);
  v8 = v7[6];
  *&v33[32] = v7[5];
  *&v33[48] = v8;
  v9 = v7[4];
  *v33 = v7[3];
  *&v33[16] = v9;
  v10 = v7[2];
  v31 = v7[1];
  v32 = v10;
  v30 = *v7;
  v26 = *&v33[40];
  v27 = *&v33[56];
  v24 = *&v33[8];
  v25 = *&v33[24];
  v12 = *(&v10 + 1);
  v11 = *v33;
  v13 = v10;
  v22 = v30;
  v23 = v31;
  sub_10048B814(&v30, v29);
  v14 = &v3[OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell__style];
  *v14 = v22;
  *(v14 + 1) = v23;
  *(v14 + 4) = v13;
  *(v14 + 5) = v12;
  *(v14 + 6) = v11;
  *(v14 + 72) = v25;
  *(v14 + 56) = v24;
  *(v14 + 104) = v27;
  *(v14 + 88) = v26;
  v15 = OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_monogramImageView;
  *&v3[v15] = [objc_allocWithZone(UIImageView) init];
  v16 = OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_nameLabel;
  *&v3[v16] = [objc_allocWithZone(UILabel) init];
  *&v3[OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_nameLabelLeadingWithoutImageConstraint] = 0;
  *&v3[OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_nameLabelLeadingWithImageConstraint] = 0;
  v17 = OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_handleLabel;
  *&v3[v17] = [objc_allocWithZone(UILabel) init];
  *&v3[OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_isInNetworkOperation] = 0;
  *&v3[OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_recipient] = 0;
  if (a3)
  {
    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v18 = 0;
  }

  v28.receiver = v3;
  v28.super_class = type metadata accessor for FMRecipientTableViewCell();
  v19 = objc_msgSendSuper2(&v28, "initWithStyle:reuseIdentifier:", a1, v18);

  v20 = v19;
  sub_100489CA0();
  sub_100489E00();

  return v20;
}

void sub_100489CA0()
{
  v1 = OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_monogramImageView;
  [*&v0[OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_monogramImageView] setContentMode:2];
  v2 = [v0 contentView];
  [v2 addSubview:*&v0[v1]];

  v3 = OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_nameLabel;
  [*&v0[OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_nameLabel] setAdjustsFontForContentSizeCategory:1];
  [*&v0[v3] setNumberOfLines:0];
  [*&v0[v3] setAdjustsFontForContentSizeCategory:1];
  v4 = [v0 contentView];
  [v4 addSubview:*&v0[v3]];

  v5 = OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_handleLabel;
  [*&v0[OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_handleLabel] setAdjustsFontForContentSizeCategory:1];
  [*&v0[v5] setNumberOfLines:0];
  [*&v0[v5] setAdjustsFontForContentSizeCategory:1];
  v6 = [v0 contentView];
  [v6 addSubview:*&v0[v5]];
}

void sub_100489E00()
{
  v1 = OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_monogramImageView;
  [*&v0[OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_monogramImageView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1005521F0;
  v4 = [*&v0[v1] centerYAnchor];
  v5 = [v0 contentView];
  v6 = [v5 centerYAnchor];

  v7 = [v4 constraintEqualToAnchor:v6];
  *(v3 + 32) = v7;
  v8 = [*&v0[v1] leadingAnchor];
  v9 = [v0 contentView];
  v10 = [v9 leadingAnchor];

  v11 = &v0[OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell__style];
  v12 = [v8 constraintEqualToAnchor:v10 constant:*&v0[OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell__style + 64]];

  *(v3 + 40) = v12;
  v13 = v11[7];
  *(v3 + 48) = [v2 constraintWithItem:*&v0[v1] attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v13];
  *(v3 + 56) = [v2 constraintWithItem:*&v0[v1] attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v13];
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:isa];

  v15 = OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_nameLabel;
  [*&v0[OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_nameLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [*&v0[v15] leadingAnchor];
  v17 = [v0 contentView];
  v18 = [v17 leadingAnchor];

  v19 = [v16 constraintEqualToAnchor:v18 constant:v11[9]];
  v20 = OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_nameLabelLeadingWithoutImageConstraint;
  v21 = *&v0[OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_nameLabelLeadingWithoutImageConstraint];
  *&v0[OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_nameLabelLeadingWithoutImageConstraint] = v19;

  v22 = [*&v0[v15] leadingAnchor];
  v23 = [*&v0[v1] trailingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:v11[10]];

  v25 = *&v0[OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_nameLabelLeadingWithImageConstraint];
  *&v0[OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_nameLabelLeadingWithImageConstraint] = v24;

  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100552EF0;
  v27 = [*&v0[v15] topAnchor];
  v28 = [v0 contentView];
  v29 = [v28 topAnchor];

  v30 = [v27 constraintEqualToAnchor:v29 constant:v11[11]];
  *(v26 + 32) = v30;
  v31 = *&v0[v20];
  if (v31)
  {
    *(v26 + 40) = v31;
    v32 = *&v0[v15];
    v33 = v31;
    v34 = [v32 trailingAnchor];
    v35 = [v0 contentView];
    v36 = [v35 trailingAnchor];

    v37 = [v34 constraintEqualToAnchor:v36 constant:-v11[12]];
    *(v26 + 48) = v37;
    v38 = Array._bridgeToObjectiveC()().super.isa;

    [v2 activateConstraints:v38];

    v39 = OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_handleLabel;
    [*&v0[OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_handleLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1005521F0;
    v41 = [*&v0[v39] topAnchor];
    v42 = [*&v0[v15] bottomAnchor];
    v43 = [v41 constraintEqualToAnchor:v42 constant:v11[13]];

    *(v40 + 32) = v43;
    v44 = [*&v0[v39] bottomAnchor];
    v45 = [v0 contentView];
    v46 = [v45 bottomAnchor];

    v47 = [v44 constraintEqualToAnchor:v46 constant:-v11[14]];
    *(v40 + 40) = v47;
    v48 = [*&v0[v39] leadingAnchor];
    v49 = [*&v0[v15] leadingAnchor];
    v50 = [v48 constraintEqualToAnchor:v49];

    *(v40 + 48) = v50;
    v51 = [*&v0[v39] trailingAnchor];
    v52 = [*&v0[v15] trailingAnchor];
    v53 = [v51 constraintEqualToAnchor:v52];

    *(v40 + 56) = v53;
    v54 = Array._bridgeToObjectiveC()().super.isa;

    [v2 activateConstraints:v54];
  }

  else
  {
    __break(1u);
  }
}

void sub_10048A510()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for FMRecipientTableViewCell();
  objc_msgSendSuper2(&v7, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_nameLabel];
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 labelColor];
  [v3 setTextColor:v4];

  v5 = OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_isInNetworkOperation;
  [*&v0[OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_isInNetworkOperation] cancel];
  v6 = *&v0[v5];
  *&v0[v5] = 0;
}

void sub_10048A61C(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_recipient);
  if (v2)
  {
    sub_10007EBC0(&qword_1006B0C40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100552220;
    *(inited + 32) = NSFontAttributeName;
    v4 = objc_opt_self();
    v5 = (v1 + OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell__style);
    v6 = *(v1 + OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell__style);
    v7 = NSFontAttributeName;
    v59 = v2;
    v8 = [v4 preferredFontForTextStyle:v6];
    v9 = sub_10000905C(0, &qword_1006B4DD0);
    *(inited + 64) = v9;
    *(inited + 40) = v8;
    v10 = v5;
    v11 = v1;
    sub_10001AC8C(inited);
    swift_setDeallocating();
    sub_1000D6084(inited + 32);
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_100552220;
    *(v12 + 32) = v7;
    v13 = [v4 preferredFontForTextStyle:v10[1]];
    *(v12 + 64) = v9;
    *(v12 + 40) = v13;
    sub_10001AC8C(v12);
    swift_setDeallocating();
    sub_1000D6084(v12 + 32);
    v14 = *(v1 + OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_nameLabel);
    if (a1)
    {
      v15 = v10[2];
      [v14 setTextColor:v15];
      v16 = NSForegroundColorAttributeName;
      v17 = sub_10000905C(0, &qword_1006C0000);
      v63 = v17;
      *&v62 = v15;
      sub_1000072E4(&v62, v61);
      v18 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1001BBF3C(v61, NSForegroundColorAttributeName, isUniquelyReferenced_nonNull_native);
      v63 = v17;
      *&v62 = v18;
    }

    else
    {
      [v14 setTextColor:v10[3]];
      v16 = NSForegroundColorAttributeName;
      v23 = v10[4];
      v24 = sub_10000905C(0, &qword_1006C0000);
      v63 = v24;
      *&v62 = v23;
      sub_1000072E4(&v62, v61);
      v25 = v23;
      v26 = swift_isUniquelyReferenced_nonNull_native();
      sub_1001BBF3C(v61, NSForegroundColorAttributeName, v26);
      v63 = v24;
      *&v62 = v25;
    }

    sub_1000072E4(&v62, v61);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001BBF3C(v61, v16, v27);
    if (*&v59[OBJC_IVAR____TtC6FindMy11FMRecipient_fullName + 8])
    {
      v28 = objc_allocWithZone(NSMutableAttributedString);

      v29 = String._bridgeToObjectiveC()();

      type metadata accessor for Key(0);
      sub_10000A6A8(&qword_1006AF370, type metadata accessor for Key);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v31 = [v28 initWithString:v29 attributes:isa];

      v32 = OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_nameLabel;
      [*(v11 + OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_nameLabel) setTextAlignment:4];
      v58 = v31;
      [*(v11 + v32) setAttributedText:v31];
      v33 = objc_allocWithZone(NSMutableAttributedString);

      v34 = String._bridgeToObjectiveC()();

      v35 = Dictionary._bridgeToObjectiveC()().super.isa;
      v36 = [v33 initWithString:v34 attributes:v35];

      v37 = *&v59[OBJC_IVAR____TtC6FindMy11FMRecipient_label + 8];
      if (v37)
      {
        v38 = HIBYTE(v37) & 0xF;
        if ((v37 & 0x2000000000000000) == 0)
        {
          v38 = *&v59[OBJC_IVAR____TtC6FindMy11FMRecipient_label] & 0xFFFFFFFFFFFFLL;
        }

        if (v38)
        {
          v39 = v10[5];
          v40 = v10[6];
          *&v62 = *&v59[OBJC_IVAR____TtC6FindMy11FMRecipient_label];
          *(&v62 + 1) = v37;
          swift_bridgeObjectRetain_n();
          v41._countAndFlagsBits = v39;
          v41._object = v40;
          String.append(_:)(v41);
          v42 = objc_allocWithZone(NSAttributedString);
          v43 = String._bridgeToObjectiveC()();

          v44 = Dictionary._bridgeToObjectiveC()().super.isa;
          v45 = [v42 initWithString:v43 attributes:v44];

          [v36 insertAttributedString:v45 atIndex:0];
        }

        else
        {
        }
      }

      v46 = OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_handleLabel;
      [*(v11 + OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_handleLabel) setTextAlignment:{4, v10}];
      [*(v11 + v46) setAttributedText:v36];
      v47 = *&v59[OBJC_IVAR____TtC6FindMy11FMRecipient_monogram];
      if (!v47)
      {
        v55 = *(v11 + OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_nameLabelLeadingWithoutImageConstraint);
        if (v55)
        {
          [v55 setActive:1];
          v56 = *(v11 + OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_nameLabelLeadingWithImageConstraint);
          if (v56)
          {
            v57 = v56;

            [v57 setActive:0];

            v53 = *(v11 + OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_monogramImageView);
            [v53 setImage:0];
            goto LABEL_24;
          }

          goto LABEL_31;
        }

LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        return;
      }

      v48 = *(v11 + OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_nameLabelLeadingWithoutImageConstraint);
      if (v48)
      {
        v49 = v47;
        [v48 setActive:0];
        v50 = *(v11 + OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_nameLabelLeadingWithImageConstraint);
        if (v50)
        {
          v51 = v50;

          [v51 setActive:1];

          v52 = *(v11 + OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_monogramImageView);
          v53 = v49;
          v54 = v52;
          [v54 setImage:v53];

LABEL_24:
          return;
        }

        goto LABEL_27;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = *(v1 + OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_nameLabelLeadingWithoutImageConstraint);
  if (!v20)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  [v20 setActive:1];
  v21 = *(v1 + OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_nameLabelLeadingWithImageConstraint);
  if (!v21)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v21 setActive:0];
  [*(v1 + OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_nameLabel) setText:0];
  [*(v1 + OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_handleLabel) setText:0];
  v22 = *(v1 + OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_monogramImageView);

  [v22 setImage:0];
}

void sub_10048ADEC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_isInNetworkOperation;
  [*&v1[OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_isInNetworkOperation] cancel];
  v3 = *&v1[v2];
  *&v1[v2] = 0;

  v4 = *&v1[OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_recipient];
  if (v4)
  {
    v5 = (v4 + OBJC_IVAR____TtC6FindMy11FMRecipient_handle);
    v6 = *v5;
    v7 = v5[1];
    v8 = objc_allocWithZone(type metadata accessor for FMReachabilityOperation());
    swift_bridgeObjectRetain_n();
    v9 = sub_10048BAB4(v6, v7, 0, 1);
    v10 = swift_allocObject();
    *(v10 + 2) = v1;
    *(v10 + 3) = v6;
    *(v10 + 4) = v7;
    v11 = &v9[qword_1006B1E58];
    v12 = *&v9[qword_1006B1E58];
    *v11 = sub_10048B5CC;
    v11[1] = v10;
    v14 = v9;
    v13 = v1;
    sub_10001835C(v12);

    [v14 start];
  }
}

uint64_t sub_10048AF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v9 = *(v22 - 8);
  __chkstk_darwin(v22);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(a1 + 8);
  sub_10000905C(0, &qword_1006AEDC0);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  *(v16 + 24) = v13;
  v17 = v21;
  *(v16 + 32) = a3;
  *(v16 + 40) = v17;
  *(v16 + 48) = v15;
  aBlock[4] = sub_10048B5D8;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006413F0;
  v18 = _Block_copy(aBlock);
  sub_10019A9B4(v12, v13);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A6A8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v23 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v22);
}

void sub_10048B254(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    swift_errorRetain();
    sub_10019B990(a1, 1);
  }

  else if (*(a1 + 16))
  {

    v7 = sub_10000726C(a3, a4);
    if (v8)
    {
      v9 = *(*(a1 + 56) + v7);

      goto LABEL_8;
    }
  }

  v9 = 0;
LABEL_8:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_10048A61C(v9);
  }
}

void sub_10048B31C()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = UIContentSizeCategory.isAccessibilityCategory.getter();
  LOBYTE(v1) = ~v1;
  [*(v0 + OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_nameLabel) setNumberOfLines:v1 & 1];
  [*(v0 + OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_handleLabel) setNumberOfLines:v1 & 1];
  sub_10048A61C(0);

  sub_10048ADEC();
}

id sub_10048B3E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMRecipientTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10048B518(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_10048B560(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10048B5EC()
{
  *(&v23 + 1) = &type metadata for SolariumFeatureFlag;
  *&v24 = sub_10000BD04();
  v1 = isFeatureEnabled(_:)();
  sub_100006060(&v22);
  if (v1)
  {
    if (qword_1006AEDA0 != -1)
    {
      swift_once();
    }

    v2 = &xmmword_1006C1498;
  }

  else
  {
    if (qword_1006AED98 != -1)
    {
      swift_once();
    }

    v2 = &xmmword_1006C1420;
  }

  *&v25[64] = *(v2 + 14);
  v3 = v2[6];
  *&v25[32] = v2[5];
  *&v25[48] = v3;
  v4 = v2[4];
  *v25 = v2[3];
  *&v25[16] = v4;
  v5 = v2[2];
  v6 = *v2;
  v23 = v2[1];
  v24 = v5;
  v22 = v6;
  v19 = *&v25[40];
  v20 = *&v25[56];
  v17 = *&v25[8];
  v18 = *&v25[24];
  v8 = *(&v5 + 1);
  v7 = *v25;
  v9 = v5;
  v15 = v6;
  v16 = v23;
  sub_10048B814(&v22, v21);
  v10 = v0 + OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell__style;
  *v10 = v15;
  *(v10 + 16) = v16;
  *(v10 + 32) = v9;
  *(v10 + 40) = v8;
  *(v10 + 48) = v7;
  *(v10 + 72) = v18;
  *(v10 + 56) = v17;
  *(v10 + 104) = v20;
  *(v10 + 88) = v19;
  v11 = OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_monogramImageView;
  *(v0 + v11) = [objc_allocWithZone(UIImageView) init];
  v12 = OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_nameLabel;
  *(v0 + v12) = [objc_allocWithZone(UILabel) init];
  *(v0 + OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_nameLabelLeadingWithoutImageConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_nameLabelLeadingWithImageConstraint) = 0;
  v13 = OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_handleLabel;
  *(v0 + v13) = [objc_allocWithZone(UILabel) init];
  *(v0 + OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_isInNetworkOperation) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_recipient) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10048B9C8(void *a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    v6 = &type metadata for SolariumFeatureFlag;
    v7 = sub_10000BD04();
    v4 = isFeatureEnabled(_:)();
    sub_100006060(v5);
    if (v4)
    {
      if (qword_1006AEC80 != -1)
      {
        swift_once();
      }

      sub_100110FE0();
      sub_10047419C(a1);
    }
  }
}

id sub_10048BAB4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v27 = a4;
  v28 = a3;
  v25 = a1;
  v26 = a2;
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v22 = *(v6 - 8);
  v23 = v6;
  __chkstk_darwin(v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10);
  v11 = &v4[qword_1006C1588];
  *v11 = 0;
  v11[8] = 1;
  v12 = qword_1006C1590;
  v24 = qword_1006C1590;
  *&v4[v12] = dispatch_group_create();
  *&v4[qword_1006C1598] = 0;
  *&v4[qword_1006C15A0] = 0;
  v21 = qword_1006C15A8;
  v13 = sub_10000905C(0, &qword_1006AEDC0);
  v20[1] = "v48@0:8@16@24@32@40";
  v20[2] = v13;
  v30 = _swiftEmptyArrayStorage;
  sub_100003FFC(&unk_1006B0620, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007EBC0(&unk_1006AEDD0);
  sub_100004044(&unk_1006B0630, &unk_1006AEDD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static DispatchQoS.unspecified.getter();
  (*(v22 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v23);
  *&v4[v21] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v4[qword_1006C15B0] = 0;
  v4[qword_1006C15B8] = 0;
  v4[qword_1006C15C0] = 0;
  *&v4[qword_1006C15C8] = 0;
  v14 = qword_1006C15D0;
  *&v5[v14] = sub_100153A44(_swiftEmptyArrayStorage);
  *&v5[qword_1006C15D8] = 0;
  sub_10007EBC0(&unk_1006AF770);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100552220;
  v16 = v26;
  *(v15 + 32) = v25;
  *(v15 + 40) = v16;
  *&v5[qword_1006C1580] = v15;
  v17 = 0x4024000000000000;
  if ((v27 & 1) == 0)
  {
    v17 = v28;
  }

  *v11 = v17;
  v11[8] = 0;
  dispatch_group_enter(*&v5[v24]);
  v18 = type metadata accessor for FMReachabilityOperation();
  v29.receiver = v5;
  v29.super_class = v18;
  return objc_msgSendSuper2(&v29, "init");
}

id sub_10048BE48(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v23 = a3;
  v24 = a2;
  v22 = a1;
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v10 = &v3[qword_1006C1588];
  *v10 = 0;
  v10[8] = 1;
  v11 = qword_1006C1590;
  v19 = qword_1006C1590;
  *&v3[v11] = dispatch_group_create();
  *&v3[qword_1006C1598] = 0;
  *&v3[qword_1006C15A0] = 0;
  v18 = qword_1006C15A8;
  v12 = sub_10000905C(0, &qword_1006AEDC0);
  v17[0] = "v48@0:8@16@24@32@40";
  v17[1] = v12;
  v26 = _swiftEmptyArrayStorage;
  sub_100003FFC(&unk_1006B0620, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007EBC0(&unk_1006AEDD0);
  sub_100004044(&unk_1006B0630, &unk_1006AEDD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static DispatchQoS.unspecified.getter();
  (*(v20 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v21);
  *&v3[v18] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v3[qword_1006C15B0] = 0;
  v3[qword_1006C15B8] = 0;
  v3[qword_1006C15C0] = 0;
  *&v3[qword_1006C15C8] = 0;
  v13 = qword_1006C15D0;
  *&v4[v13] = sub_100153A44(_swiftEmptyArrayStorage);
  *&v4[qword_1006C15D8] = 0;
  *&v4[qword_1006C1580] = v22;
  v14 = 0x4024000000000000;
  if ((v23 & 1) == 0)
  {
    v14 = v24;
  }

  *v10 = v14;
  v10[8] = 0;
  dispatch_group_enter(*&v4[v19]);
  v15 = type metadata accessor for FMReachabilityOperation();
  v25.receiver = v4;
  v25.super_class = v15;
  return objc_msgSendSuper2(&v25, "init");
}

uint64_t sub_10048C1AC(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1 + qword_1006C15D8);
  if (v3)
  {
    swift_errorRetain();
    a2(v3, 1);
  }

  else
  {
    v5 = *(a1 + qword_1006C15C8);
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = sub_1001547E0(_swiftEmptyArrayStorage);
    }

    a2(v6, 0);
  }
}

void sub_10048C278()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = qword_1006C15B8;
    if ((Strong[qword_1006C15B8] & 1) == 0 && (Strong[qword_1006C15B0] & 1) == 0 && (Strong[qword_1006C15C0] & 1) == 0)
    {
      v2 = Strong;
      [*&Strong[qword_1006C1598] invalidate];
      sub_10048ED88();
      v3 = swift_allocError();
      *v4 = xmmword_10055DF60;
      *&v2[qword_1006C15D8] = v3;

      v5 = v2;
      v2[v1] = 1;
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_100005B14(v6, qword_1006D4630);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "FMReachabilityOperation: timed out", v9, 2u);
      }

      dispatch_group_leave(*&v5[qword_1006C1590]);
      Strong = v5;
    }
  }
}

uint64_t sub_10048C430()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100003FFC(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

void sub_10048C508(char *a1)
{
  if ((a1[qword_1006C15B8] & 1) == 0)
  {
    v2 = qword_1006C15B0;
    if ((a1[qword_1006C15B0] & 1) == 0 && (a1[qword_1006C15C0] & 1) == 0)
    {
      v8.receiver = a1;
      v8.super_class = type metadata accessor for FMReachabilityOperation();
      objc_msgSendSuper2(&v8, "cancel");
      if (*&a1[qword_1006C15A0])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        OS_dispatch_source.cancel()();
        swift_unknownObjectRelease();
      }

      [*&a1[qword_1006C1598] invalidate];
      type metadata accessor for CancellationError();
      sub_100003FFC(&qword_1006C18E0, &type metadata accessor for CancellationError);
      v3 = swift_allocError();
      CancellationError.init()();
      *&a1[qword_1006C15D8] = v3;

      a1[v2] = 1;
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_100005B14(v4, qword_1006D4630);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "FMReachabilityOperation: cancelled", v7, 2u);
      }

      dispatch_group_leave(*&a1[qword_1006C1590]);
    }
  }
}

uint64_t sub_10048C714(char *a1)
{
  v2 = *&a1[qword_1006C15A8];
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_10048EDF0;
  *(v4 + 24) = v3;
  v8[4] = sub_10000964C;
  v8[5] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1000095FC;
  v8[3] = &unk_100641580;
  v5 = _Block_copy(v8);
  v6 = a1;

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10048C8A8()
{

  swift_unknownObjectRelease();
}

id sub_10048C948()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMReachabilityOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10048C980(uint64_t a1)
{

  swift_unknownObjectRelease();
}

uint64_t type metadata accessor for FMReachabilityOperation()
{
  result = qword_1006C1608;
  if (!qword_1006C1608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10048CAF8(void (*a1)(void ***), uint64_t a2)
{

  sub_10048D778(v2, a1, a2);
}

void sub_10048CB58(char *a1, uint64_t a2, uint64_t a3)
{
  if (a1[qword_1006C15B8])
  {
    return;
  }

  if (a1[qword_1006C15B0])
  {
    return;
  }

  v4 = qword_1006C15C0;
  if (a1[qword_1006C15C0])
  {
    return;
  }

  if (a2)
  {
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = v7;
    sub_10048ED88();
    v9 = swift_allocError();
    *v10 = v6;
    v10[1] = v8;
  }

  else
  {
    v9 = 0;
  }

  *&a1[qword_1006C15D8] = v9;

  if (a3)
  {
    v40 = v4;
    v11 = a3 + 64;
    v12 = 1 << *(a3 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a3 + 64);
    v15 = (v12 + 63) >> 6;

    v16 = 0;
    v17 = _swiftEmptyArrayStorage;
    v41 = a3;
    while (v14)
    {
LABEL_18:
      v20 = __clz(__rbit64(v14)) | (v16 << 6);
      v21 = (*(a3 + 48) + 16 * v20);
      v22 = v21[1];
      v23 = *(*(a3 + 56) + 8 * v20);
      v46 = *v21;
      v47 = v22;
      v48 = v23;

      v24 = v23;
      sub_10048D080(&v46, a1, &v43);

      v25 = v44;
      if (v44)
      {
        v26 = v43;
        v42 = v45;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_10008C29C(0, v17[2] + 1, 1, v17);
        }

        v28 = v17[2];
        v27 = v17[3];
        if (v28 >= v27 >> 1)
        {
          v17 = sub_10008C29C((v27 > 1), v28 + 1, 1, v17);
        }

        v17[2] = v28 + 1;
        v18 = &v17[3 * v28];
        v18[4] = v26;
        v18[5] = v25;
        *(v18 + 48) = v42 & 1;
        a3 = v41;
      }

      v14 &= v14 - 1;
    }

    while (1)
    {
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v19 >= v15)
      {
        break;
      }

      v14 = *(v11 + 8 * v19);
      ++v16;
      if (v14)
      {
        v16 = v19;
        goto LABEL_18;
      }
    }

    v4 = v40;
    if (!v17[2])
    {
      goto LABEL_26;
    }
  }

  else if (!_swiftEmptyArrayStorage[2])
  {
LABEL_26:
    v29 = &_swiftEmptyDictionarySingleton;
    goto LABEL_27;
  }

  sub_10007EBC0(&qword_1006B38F8);
  v29 = static _DictionaryStorage.allocate(capacity:)();
LABEL_27:
  v46 = v29;

  sub_10048D3FC(v30, 1, &v46);

  *&a1[qword_1006C15C8] = v46;

  if (*&a1[qword_1006C15A0])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
  }

  a1[v4] = 1;
  if (qword_1006AEBE0 != -1)
  {
LABEL_37:
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_100005B14(v31, qword_1006D4630);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v51[0] = v35;
    *v34 = 136315138;
    v36 = 0xE000000000000000;
    if (a3)
    {
      sub_10000905C(0, &qword_1006BEF40);
      v46 = Dictionary.debugDescription.getter();
      v47 = v37;
      v43 = 10;
      v44 = 0xE100000000000000;
      v49 = 0;
      v50 = 0xE000000000000000;
      sub_100035F3C();
      a3 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v36 = v38;
    }

    v39 = sub_100005B4C(a3, v36, v51);

    *(v34 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v32, v33, "FMReachabilityOperation: completed with status: %s", v34, 0xCu);
    sub_100006060(v35);
  }

  dispatch_group_leave(*&a1[qword_1006C1590]);
}

void sub_10048D080(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v8 = qword_1006C15D0;
  swift_beginAccess();
  v9 = *&a2[v8];
  v10 = *(v9 + 16);

  v28 = v7;
  if (v10)
  {

    v11 = sub_10000726C(v6, v5);
    if (v12)
    {
      v13 = v11;

      v14 = (*(v9 + 56) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];

      v17 = [v28 integerValue];

      *a3 = v16;
      *(a3 + 8) = v15;
      *(a3 + 16) = v17 != 2;
      return;
    }
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100005B14(v18, qword_1006D4630);

  v19 = a2;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v22 = 136315394;
    v23 = sub_100005B4C(v6, v5, &v29);

    *(v22 + 4) = v23;
    *(v22 + 12) = 2080;

    v24 = Dictionary.description.getter();
    v26 = v25;

    v27 = sub_100005B4C(v24, v26, &v29);

    *(v22 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "FMReachabilityOperation: received response for unknown handle: %s, requested: %s", v22, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
}

uint64_t sub_10048D3FC(uint64_t a1, char a2, void *a3)
{
  v38 = *(a1 + 16);
  if (!v38)
  {
  }

  LOBYTE(v5) = a2;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  LOBYTE(v8) = *(a1 + 48);
  v9 = *a3;

  v10 = sub_10000726C(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1001B92D8(v15, v5 & 1);
    v10 = sub_10000726C(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v19 = v10;
  sub_1001BFD78();
  v10 = v19;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_10007EBC0(&unk_1006AF7B0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v20 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v21 = (v20[6] + 16 * v10);
  *v21 = v7;
  v21[1] = v6;
  *(v20[7] + v10) = v8;
  v22 = v20[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v36._object = 0x800000010059B6C0;
    v36._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v36);
    _print_unlocked<A, B>(_:_:)();
    v37._countAndFlagsBits = 39;
    v37._object = 0xE100000000000000;
    String.append(_:)(v37);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v20[2] = v23;
  if (v38 != 1)
  {
    v5 = (a1 + 72);
    v8 = 1;
    while (v8 < *(a1 + 16))
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v24 = *v5;
      v25 = *a3;

      v26 = sub_10000726C(v7, v6);
      v28 = v25[2];
      v29 = (v27 & 1) == 0;
      v14 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v27;
      if (v25[3] < v30)
      {
        sub_1001B92D8(v30, 1);
        v26 = sub_10000726C(v7, v6);
        if ((v16 & 1) != (v31 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v32 = *a3;
      *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      v33 = (v32[6] + 16 * v26);
      *v33 = v7;
      v33[1] = v6;
      *(v32[7] + v26) = v24;
      v34 = v32[2];
      v14 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v32[2] = v35;
      v5 += 24;
      if (v38 == v8)
      {
      }
    }

    goto LABEL_25;
  }
}

void sub_10048D778(char *a1, void (*a2)(void ***), uint64_t a3)
{
  v141 = type metadata accessor for DispatchTimeInterval();
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v139 = (&v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v138 = &v123 - v8;
  v137 = type metadata accessor for DispatchTime();
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v145 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v135 = &v123 - v11;
  v12 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v148 = &v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for DispatchQoS();
  v149 = *(v147 - 8);
  __chkstk_darwin(v147);
  v146 = &v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for DispatchQoS.QoSClass();
  v143 = *(v144 - 1);
  __chkstk_darwin(v144);
  v142 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;

  if ([a1 isCancelled])
  {

    goto LABEL_4;
  }

  v156 = a1;
  v22 = a2;
  v23 = [objc_opt_self() currentQueue];
  if (!v23 || (v24 = v13, v25 = v23, v26 = [v23 underlyingQueue], v25, (v132 = v26) == 0))
  {
    sub_10048ED88();
    v77 = swift_allocError();
    *v78 = 0;
    v78[1] = 0;
    aBlock = v77;
    LOBYTE(v159) = 1;
    v22(&aBlock);

LABEL_4:

    return;
  }

  v128 = v22;
  v124 = v15;
  v125 = v24;
  v126 = v12;
  v130 = v17;
  v127 = v16;
  v131 = v21;
  v129 = a3;
  v27 = v156;
  v28 = *&v156[qword_1006C1580];
  v29 = _swiftEmptyArrayStorage;
  v152 = *(v28 + 16);
  if (v152)
  {
    v30 = sub_10000905C(0, &qword_1006B50C0);
    v31 = 0;
    v150 = qword_1006C15D0;
    v154 = 0x8000000100580FB0;
    v155 = v30;
    v32 = (v28 + 40);
    *(&v33 + 1) = 2;
    v153 = xmmword_100552220;
    *&v33 = 136315138;
    v133 = v33;
    ObjectType = v28;
    do
    {
      if (v31 >= *(v28 + 16))
      {
        __break(1u);
LABEL_50:

        __break(1u);
        goto LABEL_51;
      }

      v34 = *(v32 - 1);
      v35 = *v32;
      sub_10007EBC0(&unk_1006B20B0);
      v36 = swift_allocObject();
      *(v36 + 16) = v153;
      *(v36 + 56) = &type metadata for String;
      *(v36 + 64) = sub_10008EE84();
      v37 = v154;
      *(v36 + 32) = 0xD000000000000029;
      *(v36 + 40) = v37;
      swift_bridgeObjectRetain_n();
      v38 = NSPredicate.init(format:_:)();
      v39 = String._bridgeToObjectiveC()();
      v40 = [v38 evaluateWithObject:v39];

      if (v40)
      {
        v41 = String._bridgeToObjectiveC()();
        v42 = IDSCopyIDForEmailAddress();

        v43 = v34;
        if (v42)
        {
          v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v46 = v45;
        }

        else
        {
          v44 = 0;
          v46 = 0;
        }

        v157 = v44;
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v52 = type metadata accessor for Logger();
        sub_100005B14(v52, qword_1006D4630);

        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v134 = v29;
          v56 = v55;
          v57 = swift_slowAlloc();
          aBlock = v57;
          *v56 = v133;
          v58 = sub_100005B4C(v43, v35, &aBlock);

          *(v56 + 4) = v58;
          v27 = v156;
          _os_log_impl(&_mh_execute_header, v53, v54, "FMReachabilityOperation: will check email address: %s...", v56, 0xCu);
          sub_100006060(v57);

          v29 = v134;
LABEL_26:

          goto LABEL_28;
        }
      }

      else
      {
        v47 = sub_100477BA0(v34, v35, 0);

        if ((v47 & 1) == 0)
        {
          goto LABEL_46;
        }

        v43 = v34;
        v48 = String._bridgeToObjectiveC()();
        v49 = IDSCopyIDForPhoneNumber();

        if (v49)
        {
          v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v46 = v51;
        }

        else
        {
          v50 = 0;
          v46 = 0;
        }

        v157 = v50;
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v59 = type metadata accessor for Logger();
        sub_100005B14(v59, qword_1006D4630);

        v53 = Logger.logObject.getter();
        v60 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v53, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          aBlock = v62;
          *v61 = v133;
          v63 = sub_100005B4C(v43, v35, &aBlock);
          v134 = v46;
          v64 = v32;
          v65 = v31;
          v66 = v43;
          v67 = v29;
          v68 = v63;

          *(v61 + 4) = v68;
          v29 = v67;
          v43 = v66;
          v31 = v65;
          v32 = v64;
          v46 = v134;
          _os_log_impl(&_mh_execute_header, v53, v60, "FMReachabilityOperation: will check phone number: %s...", v61, 0xCu);
          sub_100006060(v62);
          v27 = v156;

          goto LABEL_26;
        }
      }

LABEL_28:
      v69 = v157;
      if (!v46)
      {
        goto LABEL_47;
      }

      v70 = String._bridgeToObjectiveC()();
      v71 = IDSCopyRawAddressForDestination();

      if (!v71)
      {
LABEL_46:

LABEL_47:

        sub_10048ED88();
        v121 = swift_allocError();
        *v122 = xmmword_100558510;
        aBlock = v121;
        LOBYTE(v159) = 1;
        v128(&aBlock);

        goto LABEL_48;
      }

      v72 = v150;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v164 = *&v72[v27];
      *&v72[v27] = 0x8000000000000000;
      sub_1001BBA68(v43, v35, v69, v46, isUniquelyReferenced_nonNull_native);

      *&v72[v27] = v164;
      swift_endAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_10008B9E4(0, *(v29 + 2) + 1, 1, v29);
      }

      v75 = *(v29 + 2);
      v74 = *(v29 + 3);
      if (v75 >= v74 >> 1)
      {
        v29 = sub_10008B9E4((v74 > 1), v75 + 1, 1, v29);
      }

      ++v31;
      *(v29 + 2) = v75 + 1;
      v76 = &v29[16 * v75];
      *(v76 + 4) = v69;
      *(v76 + 5) = v46;
      v32 += 2;
      v28 = ObjectType;
    }

    while (v152 != v31);
  }

  v79 = objc_allocWithZone(IDSBatchIDQueryController);
  v80 = v132;
  v81 = String._bridgeToObjectiveC()();
  v82 = [v79 initWithService:v81 delegate:v27 queue:v80];

  v83 = qword_1006C1598;
  v84 = *&v27[qword_1006C1598];
  *&v27[qword_1006C1598] = v82;

  if (!*&v27[v83])
  {

    sub_10048ED88();
    v119 = swift_allocError();
    *v120 = xmmword_100554BC0;
    aBlock = v119;
    LOBYTE(v159) = 1;
    v128(&aBlock);

LABEL_48:

    goto LABEL_4;
  }

  v155 = v83;
  *&v153 = v80;
  v134 = v29;
  v157 = *&v27[qword_1006C1590];
  sub_10000905C(0, &qword_1006AEDC0);
  v85 = v143;
  v86 = v142;
  v87 = v144;
  (*(v143 + 104))(v142, enum case for DispatchQoS.QoSClass.default(_:), v144);
  v88 = static OS_dispatch_queue.global(qos:)();
  (*(v85 + 8))(v86, v87);
  v89 = swift_allocObject();
  v89[2] = v27;
  v89[3] = sub_1001C2164;
  v89[4] = v131;
  v162 = sub_10048EDDC;
  v163 = v89;
  aBlock = _NSConcreteStackBlock;
  v159 = 1107296256;
  v160 = sub_100004AE4;
  v161 = &unk_1006414B8;
  v90 = _Block_copy(&aBlock);
  v91 = v27;

  v92 = v146;
  static DispatchQoS.unspecified.getter();
  v164 = _swiftEmptyArrayStorage;
  sub_100003FFC(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  v93 = v148;
  v94 = v127;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v90);

  v95 = *(v130 + 8);
  v130 += 8;
  v150 = v95;
  (v95)(v93, v94);
  v96 = *(v149 + 8);
  v149 += 8;
  v144 = v96;
  (v96)(v92, v147);

  sub_10000905C(0, &qword_1006C18C0);
  aBlock = _swiftEmptyArrayStorage;
  sub_100003FFC(&qword_1006C18C8, &type metadata accessor for OS_dispatch_source.TimerFlags);
  sub_10007EBC0(&qword_1006C18D0);
  sub_100004044(&qword_1006C18D8, &qword_1006C18D0);
  v97 = v124;
  v98 = v126;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v99 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v125 + 8))(v97, v98);
  v154 = qword_1006C15A0;
  *&v91[qword_1006C15A0] = v99;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v100 = v145;
  static DispatchTime.now()();
  v157 = v91;
  if (v91[qword_1006C1588 + 8])
  {
    goto LABEL_50;
  }

  ObjectType = swift_getObjectType();
  v101 = v135;
  + infix(_:_:)();
  v152 = *(v136 + 8);
  v102 = v137;
  v152(v100, v137);
  v103 = v140;
  v104 = *(v140 + 104);
  v105 = v138;
  v106 = v141;
  v104(v138, enum case for DispatchTimeInterval.never(_:), v141);
  v107 = v139;
  *v139 = 0;
  v104(v107, enum case for DispatchTimeInterval.seconds(_:), v106);
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  swift_unknownObjectRelease();
  v108 = *(v103 + 8);
  v108(v107, v106);
  v108(v105, v106);
  v152(v101, v102);
  v109 = v157;
  v110 = v154;
  if (*&v157[v154])
  {
    swift_getObjectType();
    v111 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v162 = sub_10048EDE8;
    v163 = v111;
    aBlock = _NSConcreteStackBlock;
    v159 = 1107296256;
    v160 = sub_100004AE4;
    v161 = &unk_100641508;
    v112 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    v113 = v146;
    static DispatchQoS.unspecified.getter();
    v114 = v148;
    sub_10048C430();
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v112);
    swift_unknownObjectRelease();
    (v150)(v114, v127);
    (v144)(v113, v147);

    if (*&v109[v110])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      OS_dispatch_source.resume()();
      swift_unknownObjectRelease();
    }
  }

  v115 = *&v156[v155];
  v116 = v134;
  if (v115)
  {
    v117 = v115;
    sub_10052A850(v116);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v117 setDestinations:isa];
  }

  else
  {
LABEL_51:

    __break(1u);
  }
}

uint64_t sub_10048EAA4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v2[qword_1006C15A8];
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a2;
  v12[4] = a1;
  aBlock[4] = sub_10048ED7C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100641440;
  v13 = _Block_copy(aBlock);
  v14 = v2;
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_100003FFC(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);
}

unint64_t sub_10048ED88()
{
  result = qword_1006C18B8;
  if (!qword_1006C18B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C18B8);
  }

  return result;
}

uint64_t sub_10048EDF8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_10048EE9C()
{
  v1 = [v0 contentView];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy45FMAccessoryDiscoveryAccessoryConfirmationCard_imageView];
  [v1 addSubview:v2];

  [v2 setContentMode:1];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v36 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100555120;
  v4 = [v2 leadingAnchor];
  v5 = [v0 contentView];
  v6 = [v5 mainContentGuide];

  v7 = [v6 leadingAnchor];
  v8 = [v4 constraintGreaterThanOrEqualToAnchor:v7];

  *(v3 + 32) = v8;
  v9 = [v2 trailingAnchor];
  v10 = [v0 contentView];
  v11 = [v10 mainContentGuide];

  v12 = [v11 trailingAnchor];
  v13 = [v9 constraintLessThanOrEqualToAnchor:v12];

  *(v3 + 40) = v13;
  v14 = [v2 topAnchor];
  v15 = [v0 contentView];
  v16 = [v15 mainContentGuide];

  v17 = [v16 topAnchor];
  v18 = [v14 constraintGreaterThanOrEqualToAnchor:v17];

  *(v3 + 48) = v18;
  v19 = [v2 bottomAnchor];
  v20 = [v0 contentView];
  v21 = [v20 mainContentGuide];

  v22 = [v21 bottomAnchor];
  v23 = [v19 constraintLessThanOrEqualToAnchor:v22];

  *(v3 + 56) = v23;
  v24 = [v2 centerXAnchor];
  v25 = [v0 contentView];
  v26 = [v25 mainContentGuide];

  v27 = [v26 centerXAnchor];
  v28 = [v24 constraintEqualToAnchor:v27];

  *(v3 + 64) = v28;
  v29 = [v2 centerYAnchor];
  v30 = [v0 contentView];
  v31 = [v30 mainContentGuide];

  v32 = [v31 centerYAnchor];
  v33 = [v29 constraintEqualToAnchor:v32];

  *(v3 + 72) = v33;
  v34 = [v2 heightAnchor];
  v35 = [v34 constraintEqualToConstant:140.0];

  *(v3 + 80) = v35;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v36 activateConstraints:isa];
}

uint64_t sub_10048F3A8()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B64E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v40 - v3;
  v5 = sub_10007EBC0(&qword_1006C39A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v40 - v6;
  v8 = sub_10007EBC0(&qword_1006B3B08);
  v9 = *(v8 - 8);
  v43 = v8;
  v44 = v9;
  __chkstk_darwin(v8);
  v11 = &v40 - v10;
  v12 = sub_10007EBC0(&qword_1006C0E38);
  v13 = *(v12 - 8);
  v45 = v12;
  v46 = v13;
  __chkstk_darwin(v12);
  v41 = &v40 - v14;
  v15 = sub_10007EBC0(&qword_1006C0E40);
  v16 = *(v15 - 8);
  v47 = v15;
  v48 = v16;
  *&v17 = __chkstk_darwin(v15).n128_u64[0];
  v42 = &v40 - v18;
  [v0 setDismissalType:{3, v17}];
  FMIPDiscoveredAccessory.displayName.getter();
  v19 = String._bridgeToObjectiveC()();

  [v0 setTitle:v19];

  v20 = [objc_opt_self() mainBundle];
  v51._object = 0x8000000100579A00;
  v21._countAndFlagsBits = 0xD000000000000021;
  v21._object = 0x800000010059B740;
  v22.value._object = 0x80000001005799E0;
  v51._countAndFlagsBits = 0xD000000000000018;
  v22.value._countAndFlagsBits = 0xD000000000000013;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v51);

  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v25 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10049000C;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017328;
  aBlock[3] = &unk_100641660;
  v26 = _Block_copy(aBlock);
  v27 = objc_opt_self();

  v28 = [v27 actionWithTitle:v25 style:0 handler:v26];

  _Block_release(v26);

  v29 = [v0 addAction:v28];

  type metadata accessor for FMAccessoryDiscoveryAccessoryConfirmationCard.ViewModel(0);
  FMIPDiscoveredAccessory.productInformation.getter();
  v30 = sub_1001B0BA8(v7, 1);
  sub_100012DF0(v7, &qword_1006C39A0);
  aBlock[0] = v30;
  v31 = [objc_opt_self() mainRunLoop];
  v49 = v31;
  v32 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v32 - 8) + 56))(v4, 1, 1, v32);
  sub_10007EBC0(&unk_1006B4D90);
  sub_10000905C(0, &qword_1006B2918);
  sub_100004098(&qword_1006B7800, &unk_1006B4D90);
  sub_100110658();
  Publisher.receive<A>(on:options:)();
  sub_100012DF0(v4, &qword_1006B64E0);

  sub_10000905C(0, &qword_1006BC2B0);
  sub_100004098(&qword_1006B3B18, &qword_1006B3B08);
  v33 = v41;
  v34 = v43;
  Publisher.map<A>(_:)();
  (*(v44 + 8))(v11, v34);
  sub_10007EBC0(&qword_1006B5D38);
  sub_100004098(&qword_1006C0E48, &qword_1006C0E38);
  sub_100004098(&qword_1006C0E50, &qword_1006B5D38);
  v35 = v42;
  v36 = v45;
  Publisher.catch<A>(_:)();
  (*(v46 + 8))(v33, v36);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100004098(&qword_1006C0E58, &qword_1006C0E40);
  v37 = v47;
  v38 = Publisher<>.sink(receiveValue:)();

  (*(v48 + 8))(v35, v37);
  *&v1[OBJC_IVAR____TtC6FindMy45FMAccessoryDiscoveryAccessoryConfirmationCard_imageFetchCancellable] = v38;
}

void sub_10048FBA8()
{
  v0 = type metadata accessor for FMAccessoryDiscoveryCoordinator.Event(0);
  __chkstk_darwin(v0);
  v2 = (&v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = OBJC_IVAR____TtC6FindMy45FMAccessoryDiscoveryAccessoryConfirmationCard_viewModel;
      v8 = type metadata accessor for FMIPDiscoveredAccessory();
      (*(*(v8 - 8) + 16))(v2, &v4[v7], v8);
      swift_storeEnumTagMultiPayload();
      sub_10026E410(v2);

      sub_10049001C(v2, type metadata accessor for FMAccessoryDiscoveryCoordinator.Event);
    }

    else
    {
    }
  }
}

void sub_10048FCF4(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC6FindMy45FMAccessoryDiscoveryAccessoryConfirmationCard_imageView);

    [v4 setImage:v1];
  }
}

id sub_10048FDAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMAccessoryDiscoveryAccessoryConfirmationCard(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10048FE8C()
{
  result = type metadata accessor for FMAccessoryDiscoveryAccessoryConfirmationCard.ViewModel(319);
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

uint64_t sub_10048FF88()
{
  result = type metadata accessor for FMIPDiscoveredAccessory();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FMProductAssetProvider();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10049001C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_10049007C(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC6FindMy45FMAccessoryDiscoveryAccessoryConfirmationCard_imageFetchCancellable] = 0;
  v4 = OBJC_IVAR____TtC6FindMy45FMAccessoryDiscoveryAccessoryConfirmationCard_imageView;
  *&v2[v4] = [objc_allocWithZone(UIImageView) init];
  swift_unknownObjectWeakInit();
  sub_100490158(a2, &v2[OBJC_IVAR____TtC6FindMy45FMAccessoryDiscoveryAccessoryConfirmationCard_viewModel]);
  swift_unknownObjectWeakAssign();
  v7.receiver = v2;
  v7.super_class = type metadata accessor for FMAccessoryDiscoveryAccessoryConfirmationCard(0);
  v5 = objc_msgSendSuper2(&v7, "initWithContentView:", 0);
  sub_10049001C(a2, type metadata accessor for FMAccessoryDiscoveryAccessoryConfirmationCard.ViewModel);
  return v5;
}

uint64_t sub_100490158(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMAccessoryDiscoveryAccessoryConfirmationCard.ViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004901CC()
{
  v1 = type metadata accessor for FMIPAlertType();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v24 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v25 = &v24 - v6;
  v7 = __chkstk_darwin(v5);
  v29 = &v24 - v8;
  v9 = __chkstk_darwin(v7);
  v26 = &v24 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v24 - v12;
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  v27 = v0;
  FMIPAlert.type.getter();
  v28 = *(v2 + 104);
  v28(v13, enum case for FMIPAlertType.recurrentNetworkIssue(_:), v1);
  sub_100491404(&qword_1006BC880, &type metadata accessor for FMIPAlertType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v32 == v30 && v33 == v31)
  {
    v16 = 1;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v17 = *(v2 + 8);
  v17(v13, v1);
  v17(v15, v1);

  if (v16)
  {
    goto LABEL_11;
  }

  v18 = v26;
  FMIPAlert.type.getter();
  v28(v29, enum case for FMIPAlertType.networkIssue(_:), v1);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v32 == v30 && v33 == v31)
  {
    v17(v29, v1);
    v17(v18, v1);
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v17(v29, v1);
    v17(v18, v1);

    if (v19)
    {
      goto LABEL_11;
    }

    v22 = v25;
    FMIPAlert.type.getter();
    v23 = v24;
    v28(v24, enum case for FMIPAlertType.initialization(_:), v1);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v32 != v30 || v33 != v31)
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v17(v23, v1);
      v17(v22, v1);

      return v20 & 1;
    }

    v17(v23, v1);
    v17(v22, v1);
  }

LABEL_11:
  v20 = 1;
  return v20 & 1;
}

BOOL sub_100490644()
{
  v1 = type metadata accessor for FMFAlertType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v70 = &v63[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10007EBC0(&qword_1006BC890);
  v5 = __chkstk_darwin(v4);
  v68 = &v63[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v5);
  v71 = &v63[-v8];
  __chkstk_darwin(v7);
  v10 = &v63[-v9];
  v11 = sub_10007EBC0(&qword_1006BC898);
  v12 = __chkstk_darwin(v11 - 8);
  v67 = &v63[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v12);
  v72 = &v63[-v15];
  v16 = __chkstk_darwin(v14);
  v73 = &v63[-v17];
  v18 = __chkstk_darwin(v16);
  v69 = &v63[-v19];
  v20 = __chkstk_darwin(v18);
  v75 = &v63[-v21];
  v22 = __chkstk_darwin(v20);
  v76 = &v63[-v23];
  v24 = __chkstk_darwin(v22);
  v26 = &v63[-v25];
  v27 = __chkstk_darwin(v24);
  v29 = &v63[-v28];
  __chkstk_darwin(v27);
  v31 = &v63[-v30];
  v74 = v0;
  FMFAlert.alertType.getter();
  v32 = v2[13];
  v81 = v2 + 13;
  v79 = v32;
  v32(v29, enum case for FMFAlertType.recurrentNetworkIssue(_:), v1);
  v33 = v2[7];
  v80 = v2 + 7;
  v78 = v33;
  v33(v29, 0, 1, v1);
  v34 = *(v4 + 48);
  sub_1003575E4(v31, v10);
  sub_1003575E4(v29, &v10[v34]);
  v77 = v2;
  v35 = v2[6];
  if (v35(v10, 1, v1) == 1)
  {
    sub_100012DF0(v29, &qword_1006BC898);
    sub_100012DF0(v31, &qword_1006BC898);
    if (v35(&v10[v34], 1, v1) == 1)
    {
      v36 = v10;
LABEL_16:
      sub_100012DF0(v36, &qword_1006BC898);
      return 1;
    }

    goto LABEL_6;
  }

  sub_1003575E4(v10, v26);
  if (v35(&v10[v34], 1, v1) == 1)
  {
    sub_100012DF0(v29, &qword_1006BC898);
    sub_100012DF0(v31, &qword_1006BC898);
    (v77[1])(v26, v1);
LABEL_6:
    sub_100012DF0(v10, &qword_1006BC890);
    goto LABEL_7;
  }

  v65 = v4;
  v66 = v35;
  v48 = v70;
  v49 = v77;
  (v77[4])(v70, &v10[v34], v1);
  sub_100491404(&unk_1006BC8A0, &type metadata accessor for FMFAlertType);
  v64 = dispatch thunk of static Equatable.== infix(_:_:)();
  v50 = v49;
  v51 = v48;
  v4 = v65;
  v35 = v66;
  v52 = v50[1];
  v52(v51, v1);
  sub_100012DF0(v29, &qword_1006BC898);
  sub_100012DF0(v31, &qword_1006BC898);
  v52(v26, v1);
  sub_100012DF0(v10, &qword_1006BC898);
  if (v64)
  {
    return 1;
  }

LABEL_7:
  v37 = v76;
  FMFAlert.alertType.getter();
  v38 = v75;
  v79(v75, enum case for FMFAlertType.networkIssue(_:), v1);
  v78(v38, 0, 1, v1);
  v39 = *(v4 + 48);
  v40 = v71;
  sub_1003575E4(v37, v71);
  sub_1003575E4(v38, &v40[v39]);
  if (v35(v40, 1, v1) == 1)
  {
    sub_100012DF0(v38, &qword_1006BC898);
    sub_100012DF0(v37, &qword_1006BC898);
    v41 = v35(&v40[v39], 1, v1);
    v42 = v72;
    v43 = v73;
    if (v41 == 1)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v44 = v69;
  sub_1003575E4(v40, v69);
  v45 = v35(&v40[v39], 1, v1);
  v43 = v73;
  if (v45 == 1)
  {
    sub_100012DF0(v75, &qword_1006BC898);
    sub_100012DF0(v76, &qword_1006BC898);
    (v77[1])(v44, v1);
    v42 = v72;
LABEL_12:
    sub_100012DF0(v40, &qword_1006BC890);
    goto LABEL_13;
  }

  v53 = v77;
  v54 = v70;
  (v77[4])(v70, &v40[v39], v1);
  sub_100491404(&unk_1006BC8A0, &type metadata accessor for FMFAlertType);
  LODWORD(v65) = dispatch thunk of static Equatable.== infix(_:_:)();
  v66 = v35;
  v55 = v40;
  v56 = v53[1];
  v56(v54, v1);
  sub_100012DF0(v75, &qword_1006BC898);
  sub_100012DF0(v76, &qword_1006BC898);
  v56(v69, v1);
  v57 = v55;
  v35 = v66;
  sub_100012DF0(v57, &qword_1006BC898);
  v42 = v72;
  if (v65)
  {
    return 1;
  }

LABEL_13:
  FMFAlert.alertType.getter();
  v79(v42, enum case for FMFAlertType.initialization(_:), v1);
  v78(v42, 0, 1, v1);
  v46 = *(v4 + 48);
  v40 = v68;
  sub_1003575E4(v43, v68);
  sub_1003575E4(v42, &v40[v46]);
  if (v35(v40, 1, v1) == 1)
  {
    sub_100012DF0(v42, &qword_1006BC898);
    sub_100012DF0(v43, &qword_1006BC898);
    if (v35(&v40[v46], 1, v1) == 1)
    {
LABEL_15:
      v36 = v40;
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  sub_1003575E4(v40, v67);
  if (v35(&v40[v46], 1, v1) == 1)
  {
    sub_100012DF0(v42, &qword_1006BC898);
    sub_100012DF0(v43, &qword_1006BC898);
    (v77[1])(v67, v1);
LABEL_22:
    sub_100012DF0(v40, &qword_1006BC890);
    return 0;
  }

  v58 = v77;
  v59 = v70;
  (v77[4])(v70, &v40[v46], v1);
  sub_100491404(&unk_1006BC8A0, &type metadata accessor for FMFAlertType);
  v60 = v67;
  v61 = dispatch thunk of static Equatable.== infix(_:_:)();
  v62 = v58[1];
  v62(v59, v1);
  sub_100012DF0(v42, &qword_1006BC898);
  sub_100012DF0(v43, &qword_1006BC898);
  v62(v60, v1);
  sub_100012DF0(v40, &qword_1006BC898);
  return (v61 & 1) != 0;
}

uint64_t sub_1004910DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v3 = 0x746C7561666564;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0x8000000100579120;
  }

  if (*a2)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (*a2)
  {
    v6 = 0x8000000100579120;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100491188()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100491210()
{
  String.hash(into:)();
}

Swift::Int sub_100491284()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100491308@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100622FA0, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_100491368(unint64_t *a1@<X8>)
{
  v2 = 0x8000000100579120;
  v3 = 0x746C7561666564;
  if (*v1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_1004913B0()
{
  result = qword_1006C19F0;
  if (!qword_1006C19F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C19F0);
  }

  return result;
}

uint64_t sub_100491404(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_10049144C()
{
  v1 = OBJC_IVAR____TtC6FindMy19FMSideBarViewModern_modernBackground;
  *&v0[v1] = [objc_allocWithZone(UIView) init];
  v7.receiver = v0;
  v7.super_class = type metadata accessor for FMSideBarViewModern();
  v2 = objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v3 = OBJC_IVAR____TtC6FindMy19FMSideBarViewModern_modernBackground;
  v4 = *&v2[OBJC_IVAR____TtC6FindMy19FMSideBarViewModern_modernBackground];
  v5 = v2;
  [v4 setAutoresizingMask:18];
  [v5 addSubview:*&v2[v3]];

  return v5;
}

id sub_1004915E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMSideBarViewModern();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t (*sub_10049165C(uint64_t (*result)(void)))(void)
{
  if (result)
  {
    return result();
  }

  return result;
}

char *sub_10049168C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v33[2] = a1;
  v34 = a4;
  v33[1] = a3;
  v8 = sub_10007EBC0(&qword_1006B6D60);
  v9 = __chkstk_darwin(v8 - 8);
  v33[0] = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v33 - v11;
  v13 = type metadata accessor for UIButton.Configuration();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = OBJC_IVAR____TtC6FindMy14FMSimpleButton_button;
  sub_10000905C(0, &qword_1006B3400);
  static UIButton.Configuration.plain()();
  *&v5[v15] = UIButton.init(configuration:primaryAction:)();
  v16 = OBJC_IVAR____TtC6FindMy14FMSimpleButton_subtitleLabel;
  *&v6[v16] = [objc_allocWithZone(UILabel) init];
  v17 = OBJC_IVAR____TtC6FindMy14FMSimpleButton_separator;
  *&v6[v17] = [objc_allocWithZone(UIView) init];
  v6[OBJC_IVAR____TtC6FindMy14FMSimpleButton_isActionEnabled] = 1;
  v18 = &v6[OBJC_IVAR____TtC6FindMy14FMSimpleButton_subtitle];
  *v18 = 0;
  v18[1] = 0;
  v19 = OBJC_IVAR____TtC6FindMy14FMSimpleButton_subtitleColor;
  *&v6[v19] = [objc_opt_self() tertiaryLabelColor];
  v6[OBJC_IVAR____TtC6FindMy14FMSimpleButton_separated] = 1;
  v6[OBJC_IVAR____TtC6FindMy14FMSimpleButton_useEmbeddedSubtitle] = a5;
  v20 = type metadata accessor for FMSimpleButton();
  v35.receiver = v6;
  v35.super_class = v20;
  v21 = objc_msgSendSuper2(&v35, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v22 = OBJC_IVAR____TtC6FindMy14FMSimpleButton_button;
  v23 = *&v21[OBJC_IVAR____TtC6FindMy14FMSimpleButton_button];
  v24 = v21;
  v25 = v23;
  v26 = String._bridgeToObjectiveC()();

  [v25 setTitle:v26 forState:0];

  if (a5)
  {
    v27 = *&v21[v22];
    UIButton.configuration.getter();
    if ((*(v14 + 48))(v12, 1, v13))
    {

      sub_10028247C(v12, v33[0]);
      UIButton.configuration.setter();

      sub_1002BE394(v12);
    }

    else
    {
      UIButton.Configuration.subtitle.setter();
      UIButton.configuration.setter();
    }
  }

  else
  {
    v28 = *&v24[OBJC_IVAR____TtC6FindMy14FMSimpleButton_subtitleLabel];
    if (v34)
    {
      v29 = v28;
      v30 = String._bridgeToObjectiveC()();
    }

    else
    {
      v31 = v28;
      v30 = 0;
    }

    [v28 setText:v30];
  }

  sub_100491A60();
  sub_100492010();

  return v24;
}

id sub_100491A60()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006C1A98);
  __chkstk_darwin(v2 - 8);
  v32 = &v31 - v3;
  v4 = sub_10007EBC0(&qword_1006B6D60);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v31 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v31 - v12;
  __chkstk_darwin(v11);
  v15 = &v31 - v14;
  v16 = *&v0[OBJC_IVAR____TtC6FindMy14FMSimpleButton_button];
  UIButton.configuration.getter();
  v17 = type metadata accessor for UIButton.Configuration();
  v18 = *(*(v17 - 8) + 48);
  if (v18(v15, 1, v17))
  {
    sub_10028247C(v15, v7);
    UIButton.configuration.setter();
    sub_1002BE394(v15);
  }

  else
  {
    v19 = UIButton.Configuration.contentInsets.modify();
    *(v20 + 8) = 0;
    v19(v33, 0);
    UIButton.configuration.setter();
  }

  UIButton.configuration.getter();
  if (v18(v13, 1, v17))
  {
    sub_10028247C(v13, v7);
    UIButton.configuration.setter();
    sub_1002BE394(v13);
  }

  else
  {
    v21 = UIButton.Configuration.contentInsets.modify();
    *(v22 + 24) = 0;
    v21(v33, 0);
    UIButton.configuration.setter();
  }

  [v16 setContentHorizontalAlignment:4];
  UIButton.configuration.getter();
  if (v18(v10, 1, v17))
  {
    sub_10028247C(v10, v7);
    UIButton.configuration.setter();
    sub_1002BE394(v10);
  }

  else
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = v32;
    UIConfigurationTextAttributesTransformer.init(_:)();
    v24 = type metadata accessor for UIConfigurationTextAttributesTransformer();
    (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
    UIButton.Configuration.subtitleTextAttributesTransformer.setter();
    UIButton.configuration.setter();
  }

  [v16 addTarget:v0 action:"handleAction" forControlEvents:64];
  [v0 addSubview:v16];
  v25 = *&v0[OBJC_IVAR____TtC6FindMy14FMSimpleButton_subtitleLabel];
  v26 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption1];
  [v25 setFont:v26];

  [v25 setNumberOfLines:0];
  [v25 setAdjustsFontForContentSizeCategory:1];
  [v25 setTextColor:*&v1[OBJC_IVAR____TtC6FindMy14FMSimpleButton_subtitleColor]];
  [v1 addSubview:v25];
  v27 = *&v1[OBJC_IVAR____TtC6FindMy14FMSimpleButton_separator];
  v28 = [objc_opt_self() labelColor];
  v29 = [v28 colorWithAlphaComponent:0.1];

  [v27 setBackgroundColor:v29];
  return [v1 addSubview:v27];
}

uint64_t sub_100491F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributeContainer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC6FindMy14FMSimpleButton_subtitleColor);
  }

  sub_10049276C();
  return AttributeContainer.subscript.setter();
}

void sub_100492010()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy14FMSimpleButton_separator];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy14FMSimpleButton_button];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *&v0[OBJC_IVAR____TtC6FindMy14FMSimpleButton_subtitleLabel];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [v1 topAnchor];
  v5 = [v3 bottomAnchor];
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v44 = [v4 constraintEqualToAnchor:v5 constant:*&qword_1006D4750];

  LODWORD(v6) = 1144750080;
  [v44 setPriority:v6];
  v47 = &type metadata for SolariumFeatureFlag;
  v48 = sub_10000BD04();
  v7 = isFeatureEnabled(_:)();
  sub_100006060(v46);
  if (v7)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = *&qword_1006D4798;
  }

  v45 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1005637D0;
  v10 = [v2 topAnchor];
  v11 = [v0 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:*&qword_1006D4750];

  *(v9 + 32) = v12;
  v13 = [v2 leadingAnchor];
  v14 = [v0 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v9 + 40) = v15;
  v16 = [v2 trailingAnchor];
  v17 = [v0 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v9 + 48) = v18;
  v19 = [v3 topAnchor];
  v20 = [v2 bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:*&qword_1006C1A28];

  *(v9 + 56) = v21;
  v22 = [v3 leadingAnchor];
  v23 = [v0 leadingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(v9 + 64) = v24;
  v25 = [v3 trailingAnchor];
  v26 = [v0 trailingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

  *(v9 + 72) = v27;
  v28 = [v1 topAnchor];
  v29 = [v2 bottomAnchor];
  v30 = [v28 constraintGreaterThanOrEqualToAnchor:v29 constant:*&qword_1006D4750];

  *(v9 + 80) = v30;
  *(v9 + 88) = v44;
  v31 = v44;
  v32 = [v1 bottomAnchor];
  v33 = [v0 bottomAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v9 + 96) = v34;
  v35 = [v1 leadingAnchor];
  v36 = [v0 leadingAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(v9 + 104) = v37;
  v38 = [v1 trailingAnchor];
  v39 = [v0 trailingAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:v8];

  *(v9 + 112) = v40;
  v41 = [v1 heightAnchor];
  v42 = [v41 constraintEqualToConstant:1.0];

  *(v9 + 120) = v42;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v45 activateConstraints:isa];
}

id sub_10049268C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMSimpleButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10049276C()
{
  result = qword_1006C1AA0[0];
  if (!qword_1006C1AA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1006C1AA0);
  }

  return result;
}

void sub_1004927C0()
{
  v1 = v0;
  v2 = type metadata accessor for UIButton.Configuration();
  __chkstk_darwin(v2 - 8);
  v3 = OBJC_IVAR____TtC6FindMy14FMSimpleButton_button;
  sub_10000905C(0, &qword_1006B3400);
  static UIButton.Configuration.plain()();
  *(v0 + v3) = UIButton.init(configuration:primaryAction:)();
  v4 = OBJC_IVAR____TtC6FindMy14FMSimpleButton_subtitleLabel;
  *(v1 + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC6FindMy14FMSimpleButton_separator;
  *(v1 + v5) = [objc_allocWithZone(UIView) init];
  *(v1 + OBJC_IVAR____TtC6FindMy14FMSimpleButton_isActionEnabled) = 1;
  v6 = (v1 + OBJC_IVAR____TtC6FindMy14FMSimpleButton_subtitle);
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtC6FindMy14FMSimpleButton_subtitleColor;
  *(v1 + v7) = [objc_opt_self() tertiaryLabelColor];
  *(v1 + OBJC_IVAR____TtC6FindMy14FMSimpleButton_separated) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t FMObjectAssociation.__allocating_init(policy:)(uint64_t a1)
{
  v2 = swift_allocObject();
  FMObjectAssociation.init(policy:)(a1);
  return v2;
}

uint64_t FMObjectAssociation.init(policy:)(uint64_t a1)
{
  v13 = a1;
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v12 - 8);
  __chkstk_darwin(v12);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100003E90();
  v11[1] = ".addressbookprewarm";
  v11[2] = v7;
  static DispatchQoS.default.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_100003F6C(&unk_1006B0620, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007EBC0(&unk_1006AEDD0);
  sub_100004044(&unk_1006B0630, &unk_1006AEDD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  v8 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = v13;
  *(v1 + 16) = v8;
  *(v1 + 24) = v9;
  return v1;
}

uint64_t FMObjectAssociation.subscript.getter(uint64_t a1)
{
  v2 = v1;
  v11 = 0;
  v4 = *(v1 + 16);
  v5 = swift_allocObject();
  v5[2] = &v11;
  v5[3] = a1;
  v5[4] = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100492E50;
  *(v6 + 24) = v5;
  aBlock[4] = sub_100009624;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000095FC;
  aBlock[3] = &unk_1006417A0;
  v7 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v9 = v11;

    return v9;
  }

  return result;
}

uint64_t sub_100492D64(void *a1, id object, void *key)
{
  if (objc_getAssociatedObject(object, key))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    sub_1000072E4(v9, &v10);
    swift_dynamicCast();
    v4 = v6;
  }

  else
  {
    sub_10000D2C0(v9);
    v4 = 0;
  }

  *a1 = v4;
  return swift_unknownObjectRelease();
}

uint64_t FMObjectAssociation.subscript.setter(uint64_t a1, uint64_t a2)
{
  v15[1] = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v8 = *(v16 - 8);
  __chkstk_darwin(v16);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 24);
  v15[2] = *(v2 + 16);
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = v2;
  v12[4] = a1;
  v12[5] = v11;
  aBlock[4] = sub_100493148;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006417F0;
  v13 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_100003F6C(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v17 + 8))(v7, v5);
  (*(v8 + 8))(v10, v16);
}

uint64_t (*FMObjectAssociation.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[1] = a2;
  a1[2] = v2;
  *a1 = FMObjectAssociation.subscript.getter(a2);
  return sub_1004931A0;
}

uint64_t sub_1004931A0(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    FMObjectAssociation.subscript.setter(v3, v2);

    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRetain();
    return FMObjectAssociation.subscript.setter(v3, v2);
  }
}

uint64_t FMObjectAssociation.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1004932F0@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for FMIPPartType();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v42 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v41 = &v30 - v11;
  v12 = type metadata accessor for FMIPItem();
  __chkstk_darwin(v12);
  v43 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  if (v15)
  {
    v32 = a3;
    v33 = v3;
    v31 = v13;
    v17 = *(v13 + 16);
    v16 = v13 + 16;
    v48 = *a2;
    v36 = (v8 + 104);
    v37 = v17;
    v39 = v12;
    v40 = (v8 + 8);
    v18 = a1 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v38 = v16;
    v34 = *(v16 + 56);
    v35 = (v16 - 8);
    v19 = v43;
    while (1)
    {
      v37(v19, v18, v12);
      v20 = v41;
      FMIPItem.partType.getter();
      v21 = v42;
      (*v36)(v42, v48, v7);
      sub_1004A7DD4(&qword_1006BEF50, &type metadata accessor for FMIPPartType);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v46 == v44 && v47 == v45)
      {
        break;
      }

      v23 = v15;
      v49 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v24 = v21;
      v25 = *v40;
      (*v40)(v24, v7);
      v25(v20, v7);

      if (v49)
      {
        goto LABEL_12;
      }

      v19 = v43;
      v12 = v39;
      (*v35)(v43, v39);
      v18 += v34;
      --v15;
      if (v23 == 1)
      {
        v26 = 1;
        a3 = v32;
        v13 = v31;
        return (*(v13 + 56))(a3, v26, 1, v12);
      }
    }

    v27 = *v40;
    (*v40)(v21, v7);
    v27(v20, v7);

LABEL_12:
    v28 = v31;
    a3 = v32;
    v12 = v39;
    (*(v31 + 32))(v32, v43, v39);
    v13 = v28;
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  return (*(v13 + 56))(a3, v26, 1, v12);
}

uint64_t sub_1004936B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for FMIPAudioChannel();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v20 = a2;
    v21 = v2;
    v19 = v6;
    v11 = *(v6 + 16);
    v10 = v6 + 16;
    v22 = v11;
    v12 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v13 = *(v10 + 56);
    while (1)
    {
      v22(v8, v12, v5);
      if (FMIPAudioChannel.name.getter() == 1952867692 && v14 == 0xE400000000000000)
      {
        break;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v15)
      {
        goto LABEL_10;
      }

      (*(v10 - 8))(v8, v5);
      v12 += v13;
      if (!--v9)
      {
        v16 = 1;
        a2 = v20;
        v6 = v19;
        return (*(v6 + 56))(a2, v16, 1, v5);
      }
    }

LABEL_10:
    v6 = v19;
    a2 = v20;
    (*(v19 + 32))(v20, v8, v5);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v6 + 56))(a2, v16, 1, v5);
}

uint64_t sub_1004938A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for FMIPAudioChannel();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v20 = a2;
    v21 = v2;
    v10 = 0x7468676972;
    v19 = v6;
    v12 = *(v6 + 16);
    v11 = v6 + 16;
    v23 = v12;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v22 = *(v11 + 56);
    while (1)
    {
      v23(v8, v13, v5);
      if (FMIPAudioChannel.name.getter() == v10 && v14 == 0xE500000000000000)
      {
        break;
      }

      v15 = v10;
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        goto LABEL_10;
      }

      (*(v11 - 8))(v8, v5);
      v13 += v22;
      --v9;
      v10 = v15;
      if (!v9)
      {
        v17 = 1;
        a2 = v20;
        v6 = v19;
        return (*(v6 + 56))(a2, v17, 1, v5);
      }
    }

LABEL_10:
    v6 = v19;
    a2 = v20;
    (*(v19 + 32))(v20, v8, v5);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return (*(v6 + 56))(a2, v17, 1, v5);
}

uint64_t sub_100493AC0(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_10008B9E4(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_100016318(&v42, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, result);
    v18 = v16 + result;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v45 = v23;
          v46 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v39 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  result = v42;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(v4 + 2);
  v13 = v43;
  v14 = v44;
  v2 = v45;
  v41 = v43;
  if (!v46)
  {
    goto LABEL_19;
  }

  v19 = (v46 - 1) & v46;
  v20 = __clz(__rbit64(v46)) | (v45 << 6);
  v39 = v44;
  v21 = (v44 + 64) >> 6;
LABEL_27:
  v40 = result;
  v26 = (*(result + 48) + 16 * v20);
  v28 = *v26;
  v27 = v26[1];

  v29 = v41;
LABEL_29:
  while (1)
  {
    v30 = *(v4 + 3);
    v31 = v30 >> 1;
    if ((v30 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v12;
  }

  v37 = sub_10008B9E4((v30 > 1), v12 + 1, 1, v4);
  v29 = v41;
  v4 = v37;
  v31 = *(v37 + 3) >> 1;
  if (v12 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v32 = &v4[16 * v12 + 32];
    *v32 = v28;
    *(v32 + 1) = v27;
    ++v12;
    if (!v19)
    {
      break;
    }

    result = v40;
LABEL_38:
    v35 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v36 = (*(result + 48) + ((v2 << 10) | (16 * v35)));
    v28 = *v36;
    v27 = v36[1];

    v29 = v41;
    if (v12 == v31)
    {
      v12 = v31;
      *(v4 + 2) = v31;
      goto LABEL_29;
    }
  }

  v33 = v2;
  result = v40;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v34 >= v21)
    {
      break;
    }

    v19 = *(v29 + 8 * v34);
    ++v33;
    if (v19)
    {
      v2 = v34;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v38 = v2 + 1;
  }

  else
  {
    v38 = v21;
  }

  v44 = v39;
  v45 = v38 - 1;
  v46 = 0;
  *(v4 + 2) = v12;
LABEL_13:
  result = sub_1002204D4();
  *v1 = v4;
  return result;
}

uint64_t sub_100493DD4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_10008B9E4(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100493EF4(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_100494038(uint64_t a1)
{
  v77 = type metadata accessor for FMIPPlaySoundChannels();
  v4 = *(v77 - 8);
  __chkstk_darwin(v77);
  v78 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&qword_1006B6948);
  v7 = __chkstk_darwin(v6 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v59 - v9;
  result = __chkstk_darwin(v8);
  v14 = &v59 - v13;
  v15 = *(a1 + 16);
  v16 = *v1;
  v17 = *(*v1 + 2);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v76 = v12;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = v10;
  if (!isUniquelyReferenced_nonNull_native || (v20 = *(v16 + 3) >> 1, v20 < v18))
  {
    if (v17 <= v18)
    {
      v21 = v17 + v15;
    }

    else
    {
      v21 = v17;
    }

    v16 = sub_10008BB18(isUniquelyReferenced_nonNull_native, v21, 1, v16);
    v20 = *(v16 + 3) >> 1;
  }

  v22 = *(v16 + 2);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v23 = v20 - v22;
  result = sub_1004A2EF0(&v79, &v16[v18 + v17 * v22], v20 - v22, a1, &type metadata accessor for FMIPPlaySoundChannels);
  if (result < v15)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v26 = *(v16 + 2);
    v27 = __OFADD__(v26, result);
    v28 = v26 + result;
    if (v27)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v16 + 2) = v28;
  }

  if (result != v23)
  {
    result = sub_1002204D4();
LABEL_14:
    *v1 = v16;
    return result;
  }

LABEL_17:
  v74 = *(v16 + 2);
  v25 = v80;
  v65 = v79;
  v28 = v82;
  v24 = &v84;
  v60 = v81;
  v29 = v83;
  v63 = v80;
  if (v83)
  {
    v30 = v82;
LABEL_27:
    v72 = (v29 - 1) & v29;
    v34 = v77;
    (*(v2 + 16))(v14, *(v65 + 48) + (__clz(__rbit64(v29)) | (v30 << 6)) * v17, v77);
    v67 = *(v2 + 56);
    v67(v14, 0, 1, v34);
    v33 = v30;
    while (1)
    {
      v35 = v75;
      sub_100007204(v14, v75, &qword_1006B6948);
      v36 = *(v2 + 48);
      v2 += 48;
      v71 = v36;
      if (v36(v35, 1, v34) == 1)
      {
        break;
      }

      v38 = (v4 + 32);
      v62 = (v60 + 64) >> 6;
      v66 = v4 + 56;
      v64 = (v4 + 16);
      v61 = (v4 + 8);
      v37 = v75;
      v73 = v38;
      while (1)
      {
        sub_100012DF0(v37, &qword_1006B6948);
        v39 = *(v16 + 3);
        v40 = v39 >> 1;
        if ((v39 >> 1) < v74 + 1)
        {
          v16 = sub_10008BB18(v39 > 1, v74 + 1, 1, v16);
          v40 = *(v16 + 3) >> 1;
        }

        v41 = v76;
        sub_100007204(v14, v76, &qword_1006B6948);
        if (v71(v41, 1, v77) != 1)
        {
          break;
        }

        v42 = v33;
        v43 = v76;
        v4 = v74;
LABEL_38:
        v33 = v42;
        sub_100012DF0(v43, &qword_1006B6948);
        v74 = v4;
LABEL_33:
        *(v16 + 2) = v4;
        v37 = v75;
        sub_100007204(v14, v75, &qword_1006B6948);
        if (v71(v37, 1, v77) == 1)
        {
          goto LABEL_30;
        }
      }

      v69 = &v16[v18];
      v4 = v74;
      v44 = *v73;
      if (v74 <= v40)
      {
        v45 = v40;
      }

      else
      {
        v45 = v74;
      }

      v70 = v45;
      v43 = v76;
      v46 = v77;
      v47 = v78;
      v68 = v44;
      while (1)
      {
        v51 = v47;
        v52 = v43;
        v53 = v46;
        v54 = v44;
        v44(v51, v52, v46);
        if (v4 == v70)
        {
          (*v61)(v78, v53);
          v4 = v70;
          v74 = v70;
          goto LABEL_33;
        }

        sub_100012DF0(v14, &qword_1006B6948);
        v74 = v4;
        v54(&v69[v4 * v17], v78, v53);
        v55 = v72;
        if (!v72)
        {
          break;
        }

        v56 = v33;
LABEL_55:
        v72 = (v55 - 1) & v55;
        v49 = v77;
        (*v64)(v14, *(v65 + 48) + (__clz(__rbit64(v55)) | (v56 << 6)) * v17, v77);
        v48 = 0;
        v58 = v56;
LABEL_44:
        v4 = v74 + 1;
        v67(v14, v48, 1, v49);
        v43 = v76;
        sub_100007204(v14, v76, &qword_1006B6948);
        v50 = v71(v43, 1, v49);
        v46 = v49;
        v33 = v58;
        v42 = v58;
        v47 = v78;
        v44 = v68;
        if (v50 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v62 <= v33 + 1)
      {
        v57 = v33 + 1;
      }

      else
      {
        v57 = v62;
      }

      v58 = v57 - 1;
      while (1)
      {
        v56 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v56 >= v62)
        {
          v72 = 0;
          v48 = 1;
          v49 = v77;
          goto LABEL_44;
        }

        v55 = *(v63 + 8 * v56);
        ++v33;
        if (v55)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v34 = v77;
      v67 = *(v2 + 56);
      v67(v14, 1, 1, v77);
      v72 = 0;
    }

    v37 = v75;
LABEL_30:
    sub_100012DF0(v14, &qword_1006B6948);
    sub_1002204D4();
    result = sub_100012DF0(v37, &qword_1006B6948);
    goto LABEL_14;
  }

LABEL_20:
  v31 = (*(v24 - 32) + 64) >> 6;
  if (v31 <= v28 + 1)
  {
    v32 = v28 + 1;
  }

  else
  {
    v32 = v31;
  }

  v33 = v32 - 1;
  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v31)
    {
      goto LABEL_57;
    }

    v29 = *(v25 + 8 * v30);
    ++v28;
    if (v29)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1004947C4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10008C658(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100494A0C(unint64_t a1, uint64_t a2)
{
  v513 = a2;
  v471 = type metadata accessor for Date();
  v470 = *(v471 - 8);
  v4 = __chkstk_darwin(v471);
  v469 = &v462 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v468 = &v462 - v6;
  v7 = sub_10007EBC0(&qword_1006C1D78);
  v8 = __chkstk_darwin(v7 - 8);
  v479 = &v462 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v478 = &v462 - v10;
  v497 = type metadata accessor for FMIPActionStatus();
  v496 = *(v497 - 8);
  v11 = __chkstk_darwin(v497);
  v480 = &v462 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v481 = &v462 - v14;
  __chkstk_darwin(v13);
  v493 = &v462 - v15;
  v16 = sub_10007EBC0(&qword_1006C1D80);
  __chkstk_darwin(v16 - 8);
  v512 = &v462 - v17;
  v18 = type metadata accessor for FMIPPlaySoundMetadata();
  v516 = *(v18 - 8);
  __chkstk_darwin(v18);
  v519 = &v462 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v511 = sub_10007EBC0(&qword_1006C1D30);
  v20 = __chkstk_darwin(v511);
  v510 = &v462 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v523 = &v462 - v22;
  v526 = type metadata accessor for FMIPDevice();
  v527 = *(v526 - 8);
  v23 = __chkstk_darwin(v526);
  v521 = &v462 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v482 = &v462 - v26;
  v27 = __chkstk_darwin(v25);
  v472 = &v462 - v28;
  v29 = __chkstk_darwin(v27);
  v483 = &v462 - v30;
  v31 = __chkstk_darwin(v29);
  v486 = &v462 - v32;
  v33 = __chkstk_darwin(v31);
  v485 = &v462 - v34;
  v35 = __chkstk_darwin(v33);
  v494 = &v462 - v36;
  v37 = __chkstk_darwin(v35);
  v475 = &v462 - v38;
  v39 = __chkstk_darwin(v37);
  v462 = &v462 - v40;
  v41 = __chkstk_darwin(v39);
  v474 = &v462 - v42;
  v43 = __chkstk_darwin(v41);
  v465 = &v462 - v44;
  v45 = __chkstk_darwin(v43);
  v477 = &v462 - v46;
  v47 = __chkstk_darwin(v45);
  v467 = &v462 - v48;
  v49 = __chkstk_darwin(v47);
  v464 = &v462 - v50;
  v51 = __chkstk_darwin(v49);
  v463 = &v462 - v52;
  v53 = __chkstk_darwin(v51);
  v487 = &v462 - v54;
  v55 = __chkstk_darwin(v53);
  v492 = &v462 - v56;
  __chkstk_darwin(v55);
  v509 = &v462 - v57;
  v536 = type metadata accessor for FMIPPartType();
  v500 = *(v536 - 8);
  v58 = __chkstk_darwin(v536);
  v484 = &v462 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __chkstk_darwin(v58);
  v466 = &v462 - v61;
  v62 = __chkstk_darwin(v60);
  v533 = &v462 - v63;
  v64 = __chkstk_darwin(v62);
  v532 = &v462 - v65;
  v66 = __chkstk_darwin(v64);
  v531 = &v462 - v67;
  __chkstk_darwin(v66);
  v530 = &v462 - v68;
  v69 = sub_10007EBC0(&qword_1006B07D0);
  v70 = __chkstk_darwin(v69 - 8);
  v491 = &v462 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __chkstk_darwin(v70);
  v476 = &v462 - v73;
  v74 = __chkstk_darwin(v72);
  v524 = &v462 - v75;
  v76 = __chkstk_darwin(v74);
  v508 = &v462 - v77;
  v78 = __chkstk_darwin(v76);
  v507 = &v462 - v79;
  v80 = __chkstk_darwin(v78);
  v506 = &v462 - v81;
  v82 = __chkstk_darwin(v80);
  v505 = &v462 - v83;
  v84 = __chkstk_darwin(v82);
  v520 = &v462 - v85;
  __chkstk_darwin(v84);
  v522 = &v462 - v86;
  v504 = type metadata accessor for FMIPFeatures();
  v503 = *(v504 - 8);
  v87 = __chkstk_darwin(v504);
  v502 = &v462 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v87);
  v501 = &v462 - v89;
  v550 = type metadata accessor for FMIPItemState();
  v499 = *(v550 - 8);
  v90 = __chkstk_darwin(v550);
  v549 = &v462 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v90);
  v548 = &v462 - v92;
  v93 = type metadata accessor for FMIPItem();
  v546 = *(v93 - 8);
  v94 = __chkstk_darwin(v93);
  v488 = &v462 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __chkstk_darwin(v94);
  v473 = &v462 - v97;
  v98 = __chkstk_darwin(v96);
  v535 = &v462 - v99;
  v100 = __chkstk_darwin(v98);
  v534 = &v462 - v101;
  v102 = __chkstk_darwin(v100);
  v544 = &v462 - v103;
  v104 = __chkstk_darwin(v102);
  v489 = &v462 - v105;
  v106 = __chkstk_darwin(v104);
  v543 = &v462 - v107;
  __chkstk_darwin(v106);
  v109 = &v462 - v108;
  v110 = sub_10007EBC0(&unk_1006BB1C0);
  v111 = __chkstk_darwin(v110 - 8);
  v490 = &v462 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __chkstk_darwin(v111);
  v495 = &v462 - v114;
  v115 = __chkstk_darwin(v113);
  v514 = &v462 - v116;
  v117 = __chkstk_darwin(v115);
  v119 = &v462 - v118;
  __chkstk_darwin(v117);
  v121 = &v462 - v120;
  v528 = a1;
  FMIPDevice.itemGroup.getter();
  v525 = v121;
  sub_100007204(v121, v119, &unk_1006BB1C0);
  v122 = type metadata accessor for FMIPItemGroup();
  v123 = *(v122 - 8);
  v124 = *(v123 + 48);
  v518 = v123 + 48;
  v517 = v124;
  v125 = v124(v119, 1, v122);
  v542 = v18;
  v551 = v93;
  v515 = v122;
  v498 = v123;
  if (v125 == 1)
  {
    sub_100012DF0(v119, &unk_1006BB1C0);
    v126 = 0;
    v127 = v546;
  }

  else
  {
    v128 = FMIPItemGroup.items.getter();
    (*(v123 + 8))(v119, v122);
    v541 = *(v128 + 16);
    if (v541)
    {
      v18 = 0;
      v127 = v546;
      v539 = v546 + 16;
      v538 = (v499 + 8);
      v529 = (v546 + 8);
      v129 = &v556;
      v537 = (v546 + 32);
      v126 = _swiftEmptyArrayStorage;
      LODWORD(v130) = v109;
      v540 = v128;
      while (v18 < *(v128 + 16))
      {
        v2 = v126;
        v131 = *(v127 + 72);
        v547 = (*(v127 + 80) + 32) & ~*(v127 + 80);
        v545 = v131;
        (*(v127 + 16))(v109, v128 + v547 + v131 * v18, v93);
        v132 = v548;
        FMIPItem.state.getter();
        v133 = v93;
        v134 = v549;
        static FMIPItemState.soundPlaying.getter();
        sub_1004A7DD4(&qword_1006C0350, &type metadata accessor for FMIPItemState);
        v135 = v550;
        v136 = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v137 = *v538;
        (*v538)(v134, v135);
        v137(v132, v135);
        if (v136)
        {
          v138 = *v537;
          (*v537)(v543, v109, v133);
          v126 = v2;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v554 = v2;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10016704C(0, *(v2 + 16) + 1, 1);
            v126 = v554;
          }

          v128 = v540;
          v2 = *(v126 + 2);
          v140 = *(v126 + 3);
          if (v2 >= v140 >> 1)
          {
            sub_10016704C(v140 > 1, v2 + 1, 1);
            v126 = v554;
          }

          *(v126 + 2) = v2 + 1;
          v141 = v551;
          v138(&v126[v547 + v2 * v545], v543, v551);
          v93 = v141;
        }

        else
        {
          (*v529)(v109, v133);
          v126 = v2;
          v93 = v133;
          v128 = v540;
        }

        ++v18;
        v127 = v546;
        if (v541 == v18)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_239;
    }

    v126 = _swiftEmptyArrayStorage;
    v127 = v546;
LABEL_15:

    v18 = v542;
    v122 = v515;
  }

  v538 = v126;
  v142 = v514;
  sub_100007204(v525, v514, &unk_1006BB1C0);
  v143 = v517(v142, 1, v122);
  v128 = v528;
  if (v143 == 1)
  {
    sub_100012DF0(v142, &unk_1006BB1C0);
    v547 = 0;
    goto LABEL_32;
  }

  v144 = FMIPItemGroup.items.getter();
  (*(v498 + 8))(v142, v122);
  v541 = *(v144 + 16);
  if (v541)
  {
    v128 = 0;
    v539 = v127 + 16;
    v130 = (v499 + 8);
    v129 = &v556;
    v537 = (v127 + 8);
    v543 = (v127 + 32);
    v145 = _swiftEmptyArrayStorage;
    v146 = v489;
    v540 = v144;
    while (v128 < *(v144 + 16))
    {
      v547 = v145;
      v147 = *(v127 + 72);
      v545 = (*(v127 + 80) + 32) & ~*(v127 + 80);
      (*(v127 + 16))(v146, v144 + v545 + v147 * v128, v93);
      v148 = v548;
      FMIPItem.state.getter();
      v2 = v549;
      static FMIPItemState.soundPending.getter();
      sub_1004A7DD4(&qword_1006C0350, &type metadata accessor for FMIPItemState);
      v149 = v146;
      v150 = v550;
      v151 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v152 = *v130;
      (*v130)(v2, v150);
      v152(v148, v150);
      if (v151 & 1) != 0 || (v153 = v548, FMIPItem.state.getter(), v2 = v549, static FMIPItemState.soundQueued.getter(), v154 = v550, v155 = dispatch thunk of SetAlgebra.isSuperset(of:)(), v152(v2, v154), v152(v153, v154), (v155))
      {
        v156 = *v543;
        (*v543)(v544, v149, v551);
        v145 = v547;
        v157 = swift_isUniquelyReferenced_nonNull_native();
        v554 = v145;
        v146 = v149;
        if ((v157 & 1) == 0)
        {
          sub_10016704C(0, *(v145 + 2) + 1, 1);
          v145 = v554;
        }

        v144 = v540;
        v159 = *(v145 + 2);
        v158 = *(v145 + 3);
        if (v159 >= v158 >> 1)
        {
          sub_10016704C(v158 > 1, v159 + 1, 1);
          v145 = v554;
        }

        *(v145 + 2) = v159 + 1;
        v160 = v551;
        v156(&v145[v545 + v159 * v147], v544, v551);
        v93 = v160;
        v18 = v542;
      }

      else
      {
        v93 = v551;
        (*v537)(v149, v551);
        v145 = v547;
        v18 = v542;
        v146 = v149;
        v144 = v540;
      }

      ++v128;
      v127 = v546;
      if (v541 == v128)
      {
        goto LABEL_31;
      }
    }

LABEL_239:
    __break(1u);
    goto LABEL_240;
  }

  v145 = _swiftEmptyArrayStorage;
LABEL_31:
  v547 = v145;

  v128 = v528;
LABEL_32:
  v161 = v501;
  FMIPDevice.features.getter();
  v162 = v502;
  static FMIPFeatures.isMultiChannelSoundEnabled.getter();
  sub_1004A7DD4(&qword_1006C1D50, &type metadata accessor for FMIPFeatures);
  v163 = v504;
  LODWORD(v514) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v164 = *(v503 + 8);
  v164(v162, v163);
  v164(v161, v163);
  FMIPDevice.features.getter();
  static FMIPFeatures.isStopSoundSupported.getter();
  LODWORD(v503) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v164(v162, v163);
  v164(v161, v163);
  v165 = FMIPDevice.audioChannels.getter();
  v166 = 0;
  v537 = sub_1004A6638(v165);

  v167 = v538;
  if (!v538)
  {
    v169 = v546;
    v180 = *(v546 + 56);
    v180(v522, 1, 1, v93);
    v181 = v547;
    v182 = v520;
LABEL_48:
    LODWORD(v534) = 0;
    goto LABEL_49;
  }

  v168 = *(v538 + 2);

  v169 = v546;
  if (v168)
  {
    v529 = 0;
    v544 = *(v546 + 16);
    LODWORD(v543) = enum case for FMIPPartType.leftBud(_:);
    v170 = (v500 + 8);
    v540 = (v546 + 8);
    v541 = (v500 + 104);
    v171 = &v167[(*(v546 + 80) + 32) & ~*(v546 + 80)];
    v545 = v546 + 16;
    v539 = *(v546 + 72);
    v172 = v534;
    v173 = v531;
    v174 = v536;
    while (1)
    {
      (v544)(v172, v171, v93);
      v175 = v530;
      FMIPItem.partType.getter();
      (*v541)(v173, v543, v174);
      sub_1004A7DD4(&qword_1006BEF50, &type metadata accessor for FMIPPartType);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v554 == v552 && v555 == v553)
      {
        break;
      }

      v177 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v178 = *v170;
      (*v170)(v173, v174);
      v178(v175, v174);

      if (v177)
      {
        goto LABEL_46;
      }

      v172 = v534;
      v93 = v551;
      (*v540)(v534, v551);
      v171 += v539;
      if (!--v168)
      {
        v179 = 1;
        v128 = v528;
        v167 = v538;
        v18 = v542;
        v169 = v546;
        v166 = v529;
        goto LABEL_44;
      }
    }

    v184 = *v170;
    (*v170)(v173, v174);
    v184(v175, v174);

LABEL_46:
    v169 = v546;
    v183 = v522;
    v93 = v551;
    (*(v546 + 32))(v522, v534, v551);
    v179 = 0;
    v128 = v528;
    v167 = v538;
    v18 = v542;
    v166 = v529;
  }

  else
  {
    v179 = 1;
LABEL_44:
    v183 = v522;
  }

  v180 = *(v169 + 56);
  LODWORD(v534) = 1;
  v180(v183, v179, 1, v93);

  v185 = (*(v169 + 48))(v183, 1, v93);
  v181 = v547;
  v182 = v520;
  if (v185 == 1)
  {
    goto LABEL_48;
  }

LABEL_49:
  sub_100012DF0(v522, &qword_1006B07D0);
  if (!v167)
  {
    v180(v182, 1, 1, v93);
LABEL_65:
    v199 = 0;
    goto LABEL_66;
  }

  v186 = *(v167 + 2);

  if (v186)
  {
    v531 = v180;
    v529 = v166;
    v187 = v169 + 16;
    v544 = *(v169 + 16);
    LODWORD(v543) = enum case for FMIPPartType.rightBud(_:);
    v188 = (v500 + 8);
    v540 = (v187 - 8);
    v541 = (v500 + 104);
    v189 = &v167[(*(v187 + 64) + 32) & ~*(v187 + 64)];
    v545 = v187;
    v539 = *(v187 + 56);
    v190 = v535;
    v191 = v533;
    v192 = v536;
    while (1)
    {
      (v544)(v190, v189, v93);
      v193 = v532;
      FMIPItem.partType.getter();
      (*v541)(v191, v543, v192);
      sub_1004A7DD4(&qword_1006BEF50, &type metadata accessor for FMIPPartType);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v554 == v552 && v555 == v553)
      {
        break;
      }

      v195 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v196 = *v188;
      (*v188)(v191, v192);
      v196(v193, v192);

      if (v195)
      {
        goto LABEL_62;
      }

      v190 = v535;
      v93 = v551;
      (*v540)(v535, v551);
      v189 += v539;
      if (!--v186)
      {
        v197 = 1;
        v128 = v528;
        v167 = v538;
        v169 = v546;
        v181 = v547;
        v18 = v542;
        v182 = v520;
        goto LABEL_63;
      }
    }

    v198 = *v188;
    (*v188)(v191, v192);
    v198(v193, v192);

LABEL_62:
    v169 = v546;
    v182 = v520;
    v93 = v551;
    (*(v546 + 32))(v520, v535, v551);
    v197 = 0;
    v128 = v528;
    v167 = v538;
    v181 = v547;
    v18 = v542;
LABEL_63:
    v166 = v529;
    v180 = v531;
  }

  else
  {
    v197 = 1;
    v182 = v520;
  }

  v199 = 1;
  v180(v182, v197, 1, v93);

  if ((*(v169 + 48))(v182, 1, v93) == 1)
  {
    goto LABEL_65;
  }

LABEL_66:
  sub_100012DF0(v182, &qword_1006B07D0);
  if (!v167)
  {
    v201 = v505;
    v180(v505, 1, 1, v93);
    goto LABEL_70;
  }

  v201 = v505;
  sub_1004932F0(v200, &enum case for FMIPPartType.case(_:), v505);
  v169 = v546;

  v202 = *(v169 + 48);
  LODWORD(v539) = 1;
  if (v202(v201, 1, v93) == 1)
  {
LABEL_70:
    LODWORD(v539) = 0;
  }

  sub_100012DF0(v201, &qword_1006B07D0);
  LODWORD(v540) = v199;
  if (!v181)
  {
    v529 = v166;
    v209 = v506;
    v180(v506, 1, 1, v93);
    sub_100012DF0(v209, &qword_1006B07D0);
    v210 = v507;
    v180(v507, 1, 1, v93);
    sub_100012DF0(v210, &qword_1006B07D0);
    v208 = v508;
    v180(v508, 1, 1, v93);
    LODWORD(v533) = 0;
    LODWORD(v532) = 0;
    goto LABEL_75;
  }

  v204 = v506;
  sub_1004932F0(v203, &enum case for FMIPPartType.leftBud(_:), v506);

  v205 = *(v169 + 48);
  LODWORD(v535) = 1;
  LODWORD(v532) = v205(v204, 1, v93) != 1;
  sub_100012DF0(v204, &qword_1006B07D0);

  v206 = v507;
  sub_1004932F0(v547, &enum case for FMIPPartType.rightBud(_:), v507);

  LODWORD(v533) = v205(v206, 1, v93) != 1;
  sub_100012DF0(v206, &qword_1006B07D0);

  v208 = v508;
  sub_1004932F0(v207, &enum case for FMIPPartType.case(_:), v508);
  v529 = v166;

  if (v205(v208, 1, v93) == 1)
  {
LABEL_75:
    LODWORD(v535) = 0;
  }

  sub_100012DF0(v208, &qword_1006B07D0);
  v127 = v526;
  v211 = v527;
  v212 = v509;
  if (qword_1006AEB18 != -1)
  {
    swift_once();
  }

  v213 = type metadata accessor for Logger();
  v214 = sub_100005B14(v213, qword_1006D4110);
  v543 = *(v211 + 16);
  v544 = (v211 + 16);
  (v543)(v212, v128, v127);
  swift_bridgeObjectRetain_n();
  v215 = Logger.logObject.getter();
  v216 = static os_log_type_t.default.getter();
  v217 = os_log_type_enabled(v215, v216);
  v541 = v214;
  if (v217)
  {
    v218 = swift_slowAlloc();
    v219 = swift_slowAlloc();
    v554 = v219;
    *v218 = 141560579;
    *(v218 + 4) = 1752392040;
    *(v218 + 12) = 2081;
    v220 = FMIPDevice.identifier.getter();
    v222 = sub_100005B4C(v220, v221, &v554);

    *(v218 + 14) = v222;
    v545 = *(v211 + 8);
    (v545)(v212, v526);
    *(v218 + 22) = 1024;
    *(v218 + 24) = v514 & 1;
    *(v218 + 28) = 1024;
    *(v218 + 30) = v503 & 1;
    *(v218 + 34) = 2048;
    v223 = v537[2];

    *(v218 + 36) = v223;
    v127 = v526;

    *(v218 + 44) = 1024;
    *(v218 + 46) = v534;
    *(v218 + 50) = 1024;
    v224 = v540;
    *(v218 + 52) = v540;
    *(v218 + 56) = 1024;
    *(v218 + 58) = v539;
    *(v218 + 62) = 1024;
    *(v218 + 64) = v532;
    *(v218 + 68) = 1024;
    *(v218 + 70) = v533;
    *(v218 + 74) = 1024;
    *(v218 + 76) = v535;
    _os_log_impl(&_mh_execute_header, v215, v216, "soundViewLayout id: %{private,mask.hash}s has multiChannel: %{BOOL}d, canStopSound: %{BOOL}d, playingChannels: %ld, leftPlaying: %{BOOL}d, rightPlaying: %{BOOL}d, casePlaying: %{BOOL}d, leftQueued: %{BOOL}d, rightQueued: %{BOOL}d, caseQueued: %{BOOL}d.", v218, 0x50u);
    sub_100006060(v219);

    v128 = v528;

    v225 = v521;
  }

  else
  {

    v545 = *(v211 + 8);
    (v545)(v212, v127);

    v225 = v521;
    v224 = v540;
  }

  v226 = *(v511 + 48);
  v227 = v523;
  *(v227 + v226) = sub_1004A024C(v523, v128, v513);
  v228 = v510;
  sub_100007204(v227, v510, &qword_1006C1D30);

  v229 = v228;
  v230 = v524;
  sub_100035318(v229, v524, &qword_1006B07D0);
  v231 = v512;
  FMIPDevice.soundMetadata.getter();
  v232 = v516;
  if ((*(v516 + 48))(v231, 1, v18) == 1)
  {
    sub_100012DF0(v231, &qword_1006C1D80);
    v233 = v491;
    sub_100007204(v230, v491, &qword_1006B07D0);
    v234 = v546;
    v235 = v551;
    if ((*(v546 + 48))(v233, 1, v551) == 1)
    {
      sub_100012DF0(v233, &qword_1006B07D0);
      v236 = v538;
      v237 = v495;
      goto LABEL_96;
    }

    v246 = v488;
    (*(v234 + 32))(v488, v233, v235);
    v237 = v495;
    if ((v514 & 1) == 0)
    {
      (*(v234 + 8))(v246, v235);
      v236 = v538;
LABEL_96:
      v274 = v515;
      v275 = v517;
      v276 = v517(v525, 1, v515);
      v277 = v490;
      if (v276 != 1)
      {
        sub_100007204(v525, v237, &unk_1006BB1C0);
        if (v275(v237, 1, v274) == 1)
        {
          sub_100012DF0(v237, &unk_1006BB1C0);
          v275 = v517;
        }

        else
        {
          v287 = FMIPItemGroup.items.getter();
          (*(v498 + 8))(v237, v515);
          v288 = *(v287 + 16);
          v274 = v515;

          v289 = v288 > 1;
          v236 = v538;
          v275 = v517;
          if (v289)
          {
LABEL_106:
            v296 = v486;
            (v543)(v486, v128, v127);
            v297 = Logger.logObject.getter();
            v298 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v297, v298))
            {
              v299 = v127;
              v300 = swift_slowAlloc();
              v301 = swift_slowAlloc();
              v554 = v301;
              *v300 = 141558275;
              *(v300 + 4) = 1752392040;
              *(v300 + 12) = 2081;
              v302 = FMIPDevice.identifier.getter();
              v304 = sub_100005B4C(v302, v303, &v554);

              *(v300 + 14) = v304;
              v128 = v528;
              v305 = v299;
              v225 = v521;
              (v545)(v296, v305);
              _os_log_impl(&_mh_execute_header, v297, v298, "soundViewLayout id: %{private,mask.hash}s is checking LE sound state.", v300, 0x16u);
              sub_100006060(v301);
            }

            else
            {

              (v545)(v296, v127);
              v225 = v521;
            }

            if (v532)
            {
              if (v224)
              {
                v374 = 10;
              }

              else
              {
                v374 = 7;
              }

              if (v533)
              {
                v314 = 2;
              }

              else
              {
                v314 = v374;
              }
            }

            else if (v534)
            {
              if (v224)
              {
                v375 = 4;
              }

              else
              {
                v375 = 6;
              }

              if (v533)
              {
                v314 = 9;
              }

              else
              {
                v314 = v375;
              }
            }

            else if (v224)
            {
              if (v533)
              {
                v314 = 8;
              }

              else
              {
                v314 = 5;
              }
            }

            else if (v533)
            {
              v314 = 8;
            }

            else
            {
              v314 = 0;
            }

            goto LABEL_193;
          }
        }
      }

      sub_100007204(v525, v277, &unk_1006BB1C0);
      if (v275(v277, 1, v274) == 1)
      {
        sub_100012DF0(v277, &unk_1006BB1C0);
LABEL_108:
        if (v236 && *(v236 + 2))
        {
          v306 = v483;
          (v543)(v483, v128, v127);
          v307 = Logger.logObject.getter();
          v308 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v307, v308))
          {
            v281 = v127;
            v309 = swift_slowAlloc();
            v310 = swift_slowAlloc();
            v554 = v310;
            *v309 = 141558275;
            *(v309 + 4) = 1752392040;
            *(v309 + 12) = 2081;
            v311 = FMIPDevice.identifier.getter();
            v313 = sub_100005B4C(v311, v312, &v554);

            *(v309 + 14) = v313;
            v128 = v528;
            (v545)(v306, v281);
            _os_log_impl(&_mh_execute_header, v307, v308, "soundViewLayout id: %{private,mask.hash}s is monaural device playing sound.", v309, 0x16u);
            sub_100006060(v310);

            v314 = 3;
LABEL_179:
            v225 = v521;
            goto LABEL_194;
          }

          (v545)(v306, v127);
          v314 = 3;
        }

        else if (v547 && *(v547 + 16))
        {
          v315 = v472;
          (v543)(v472, v128, v127);
          v316 = Logger.logObject.getter();
          v317 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v316, v317))
          {
            v281 = v127;
            v318 = swift_slowAlloc();
            v319 = swift_slowAlloc();
            v554 = v319;
            *v318 = 141558275;
            *(v318 + 4) = 1752392040;
            *(v318 + 12) = 2081;
            v320 = FMIPDevice.identifier.getter();
            v322 = sub_100005B4C(v320, v321, &v554);

            *(v318 + 14) = v322;
            v128 = v528;
            (v545)(v315, v281);
            _os_log_impl(&_mh_execute_header, v316, v317, "soundViewLayout id: %{private,mask.hash}s is queueing sound.", v318, 0x16u);
            sub_100006060(v319);

            v314 = 2;
            goto LABEL_179;
          }

          (v545)(v315, v127);
          v314 = 2;
        }

        else
        {
          v323 = v482;
          (v543)(v482, v128, v127);
          v324 = Logger.logObject.getter();
          v325 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v324, v325))
          {
            v281 = v127;
            v326 = swift_slowAlloc();
            v327 = swift_slowAlloc();
            v554 = v327;
            *v326 = 141558275;
            *(v326 + 4) = 1752392040;
            *(v326 + 12) = 2081;
            v328 = FMIPDevice.identifier.getter();
            v330 = sub_100005B4C(v328, v329, &v554);

            *(v326 + 14) = v330;
            v128 = v528;
            (v545)(v323, v281);
            _os_log_impl(&_mh_execute_header, v324, v325, "soundViewLayout id: %{private,mask.hash}s is not playing any sound.", v326, 0x16u);
            sub_100006060(v327);

            v314 = 0;
            goto LABEL_179;
          }

          (v545)(v323, v127);
          v314 = 0;
        }

        v281 = v127;
        goto LABEL_179;
      }

      v290 = v548;
      FMIPItemGroup.state.getter();
      (*(v498 + 8))(v277, v274);
      v291 = v549;
      static FMIPItemState.isInCase.getter();
      sub_1004A7DD4(&qword_1006C0350, &type metadata accessor for FMIPItemState);
      v292 = v550;
      v293 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v294 = *(v499 + 8);
      v294(v291, v292);
      v295 = v290;
      v224 = v540;
      v294(v295, v292);
      v236 = v538;
      if ((v293 & 1) == 0)
      {
        goto LABEL_108;
      }

      goto LABEL_106;
    }

    v247 = v485;
    (v543)(v485, v128, v127);
    v248 = Logger.logObject.getter();
    v249 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v248, v249))
    {
      v250 = v247;
      v251 = v127;
      v252 = swift_slowAlloc();
      v253 = swift_slowAlloc();
      v554 = v253;
      *v252 = 141558275;
      *(v252 + 4) = 1752392040;
      *(v252 + 12) = 2081;
      v254 = FMIPDevice.identifier.getter();
      v256 = sub_100005B4C(v254, v255, &v554);

      *(v252 + 14) = v256;
      v128 = v528;
      v257 = v250;
      v246 = v488;
      v258 = v251;
      v225 = v521;
      (v545)(v257, v258);
      _os_log_impl(&_mh_execute_header, v248, v249, "soundViewLayout id: %{private,mask.hash}s is checking LE sound state for primary part", v252, 0x16u);
      sub_100006060(v253);

      v259 = v551;
    }

    else
    {

      (v545)(v247, v127);
      v259 = v551;
      v225 = v521;
    }

    v376 = v484;
    FMIPItem.partType.getter();
    (*(v546 + 8))(v246, v259);
    v377 = v536;
    v378 = (*(v500 + 88))(v376, v536);
    if (v378 == enum case for FMIPPartType.standalone(_:))
    {
      goto LABEL_141;
    }

    if (v378 == enum case for FMIPPartType.case(_:))
    {
      goto LABEL_143;
    }

    if (v378 == enum case for FMIPPartType.leftBud(_:))
    {
      if (v532)
      {
        v379 = 2;
      }

      else
      {
        v379 = 0;
      }

      v380 = v534;
      goto LABEL_171;
    }

    if (v378 == enum case for FMIPPartType.rightBud(_:))
    {
      if (v533)
      {
        v379 = 2;
      }

      else
      {
        v379 = 0;
      }

      v407 = v224 == 0;
      goto LABEL_172;
    }

    if (v378 != enum case for FMIPPartType.generic(_:))
    {
      (*(v500 + 8))(v376, v377);
    }

LABEL_141:
    v314 = 0;
LABEL_193:
    v281 = v526;
    goto LABEL_194;
  }

  (*(v232 + 32))(v519, v231, v18);
  v238 = v492;
  (v543)(v492, v128, v127);
  v239 = Logger.logObject.getter();
  v240 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v239, v240))
  {
    v241 = v238;
    v238 = swift_slowAlloc();
    v242 = swift_slowAlloc();
    v554 = v242;
    *v238 = 141558275;
    *(v238 + 4) = 1752392040;
    *(v238 + 12) = 2081;
    v243 = FMIPDevice.identifier.getter();
    v245 = sub_100005B4C(v243, v244, &v554);

    *(v238 + 14) = v245;
    v128 = v528;
    (v545)(v241, v526);
    _os_log_impl(&_mh_execute_header, v239, v240, "soundViewLayout id: %{private,mask.hash}s has sound metadata.", v238, 0x16u);
    sub_100006060(v242);
    v127 = v526;
  }

  else
  {

    (v545)(v238, v127);
  }

  v260 = v493;
  FMIPPlaySoundMetadata.status.getter();
  v261 = (*(v496 + 88))(v260, v497);
  v262 = v494;
  if (v261 == enum case for FMIPActionStatus.error(_:) || v261 == enum case for FMIPActionStatus.unknown(_:))
  {
    goto LABEL_149;
  }

  v263 = enum case for FMIPActionStatus.success(_:);
  v264 = v487;
  if (v261 == enum case for FMIPActionStatus.success(_:))
  {
    goto LABEL_93;
  }

  if (v261 == enum case for FMIPActionStatus.inEarSafetyWarning(_:))
  {
LABEL_100:
    NSLog(_:_:)();
    v278 = v475;
    (v543)(v475, v128, v127);
    v279 = Logger.logObject.getter();
    v280 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v279, v280))
    {
      (v545)(v278, v127);

      (*(v516 + 8))(v519, v18);
      v314 = 0;
      v281 = v127;
      goto LABEL_194;
    }

    v281 = v127;
    v282 = swift_slowAlloc();
    v283 = swift_slowAlloc();
    v554 = v283;
    *v282 = 141558275;
    *(v282 + 4) = 1752392040;
    *(v282 + 12) = 2081;
    v284 = FMIPDevice.identifier.getter();
    v286 = sub_100005B4C(v284, v285, &v554);

    *(v282 + 14) = v286;
    v128 = v528;
    (v545)(v278, v281);
    _os_log_impl(&_mh_execute_header, v279, v280, "soundViewLayout id: %{private,mask.hash}s is asking for safety warning.", v282, 0x16u);
    sub_100006060(v283);
    goto LABEL_155;
  }

  if (v261 != enum case for FMIPActionStatus.pending(_:))
  {
    if (v261 != enum case for FMIPActionStatus.notify(_:))
    {
      if (v261 == enum case for FMIPActionStatus.onNeckSafetyWarning(_:) || v261 == enum case for FMIPActionStatus.onHeadSafetyWarning(_:) || v261 == enum case for FMIPActionStatus.onTableTopSafetyWarning(_:) || v261 == enum case for FMIPActionStatus.carryingCaseClosedWarning(_:))
      {
        goto LABEL_100;
      }

      if (v261 == enum case for FMIPActionStatus.queueingSound(_:))
      {
        v419 = v462;
        (v543)(v462, v128, v127);
        v420 = Logger.logObject.getter();
        v421 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v420, v421))
        {
          v281 = v127;
          v422 = swift_slowAlloc();
          v423 = swift_slowAlloc();
          v554 = v423;
          *v422 = 141558275;
          *(v422 + 4) = 1752392040;
          *(v422 + 12) = 2081;
          v424 = FMIPDevice.identifier.getter();
          v426 = sub_100005B4C(v424, v425, &v554);

          *(v422 + 14) = v426;
          v128 = v528;
          (v545)(v419, v281);
          _os_log_impl(&_mh_execute_header, v420, v421, "soundViewLayout id: %{private,mask.hash}s is queueing sound.", v422, 0x16u);
          sub_100006060(v423);

          (*(v516 + 8))(v519, v18);
          v314 = 1;
        }

        else
        {
          (v545)(v419, v127);

          (*(v516 + 8))(v519, v18);
          v314 = 1;
          v281 = v127;
        }

        goto LABEL_194;
      }

      if (v261 != enum case for FMIPActionStatus.serverSafetyWarning(_:) && v261 != enum case for FMIPActionStatus.eraseCancelled(_:) && v261 != enum case for FMIPActionStatus.successPasscodeSet(_:) && v261 != enum case for FMIPActionStatus.successPasscodeAlreadySet(_:) && v261 != enum case for FMIPActionStatus.successPasscodeSetV2(_:) && v261 != enum case for FMIPActionStatus.successFailedToSetPasscode(_:) && v261 != enum case for FMIPActionStatus.succeedFailedToSetPasscodeV2(_:))
      {
        v429 = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        goto LABEL_253;
      }
    }

LABEL_149:
    v381 = v225;
    NSLog(_:_:)();
    (v543)(v262, v128, v127);
    v382 = Logger.logObject.getter();
    v383 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v382, v383))
    {
      v281 = v127;
      v384 = swift_slowAlloc();
      v385 = swift_slowAlloc();
      v554 = v385;
      *v384 = 141558275;
      *(v384 + 4) = 1752392040;
      *(v384 + 12) = 2081;
      v386 = FMIPDevice.identifier.getter();
      v388 = sub_100005B4C(v386, v387, &v554);

      *(v384 + 14) = v388;
      v128 = v528;
      (v545)(v262, v281);
      _os_log_impl(&_mh_execute_header, v382, v383, "soundViewLayout id: %{private,mask.hash}s is in error state.", v384, 0x16u);
      sub_100006060(v385);

      (*(v516 + 8))(v519, v18);
      v314 = 0;
    }

    else
    {
      (v545)(v262, v127);

      (*(v516 + 8))(v519, v18);
      v314 = 0;
      v281 = v127;
    }

    v225 = v381;
    goto LABEL_194;
  }

LABEL_93:
  (v543)(v487, v128, v127);
  v265 = Logger.logObject.getter();
  v266 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v265, v266))
  {
    v267 = swift_slowAlloc();
    v268 = v127;
    v269 = swift_slowAlloc();
    v554 = v269;
    *v267 = 141558275;
    *(v267 + 4) = 1752392040;
    *(v267 + 12) = 2081;
    v270 = FMIPDevice.identifier.getter();
    v272 = sub_100005B4C(v270, v271, &v554);

    *(v267 + 14) = v272;
    v225 = v521;
    v273 = v268;
    v18 = v542;
    (v545)(v264, v273);
    _os_log_impl(&_mh_execute_header, v265, v266, "soundViewLayout id: %{private,mask.hash}s sound succeeded.", v267, 0x16u);
    sub_100006060(v269);
  }

  else
  {

    (v545)(v264, v127);
  }

  if (((v514 | v503) & 1) == 0)
  {
    v353 = v481;
    FMIPPlaySoundMetadata.status.getter();
    v354 = v496;
    v355 = v480;
    v356 = v497;
    (*(v496 + 104))(v480, v263, v497);
    sub_1004A7DD4(&qword_1006C1D70, &type metadata accessor for FMIPActionStatus);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v357 = v554;
    v358 = v552;
    v359 = *(v354 + 8);
    v359(v355, v356);
    v359(v353, v356);
    v128 = v528;
    if (v357 == v358)
    {
      v360 = v468;
      Date.init()();
      v361 = v469;
      FMIPPlaySoundMetadata.timestamp.getter();
      Date.timeIntervalSince(_:)();
      v363 = v362;
      v364 = *(v470 + 8);
      v365 = v471;
      v364(v361, v471);
      v364(v360, v365);
      if (v363 < 15.0)
      {
        v366 = v465;
        v281 = v526;
        (v543)(v465, v128, v526);
        v367 = Logger.logObject.getter();
        v368 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v367, v368))
        {
          v369 = swift_slowAlloc();
          v370 = swift_slowAlloc();
          v554 = v370;
          *v369 = 141558275;
          *(v369 + 4) = 1752392040;
          *(v369 + 12) = 2081;
          v371 = FMIPDevice.identifier.getter();
          v373 = sub_100005B4C(v371, v372, &v554);

          *(v369 + 14) = v373;
          v128 = v528;
          (v545)(v366, v281);
          _os_log_impl(&_mh_execute_header, v367, v368, "soundViewLayout id: %{private,mask.hash}s is playing sound - for 15 seconds.", v369, 0x16u);
          sub_100006060(v370);
        }

        else
        {
          (v545)(v366, v281);
        }

        (*(v516 + 8))(v519, v18);
        v314 = 3;
        goto LABEL_194;
      }
    }

    v389 = v474;
    v281 = v526;
    (v543)(v474, v128, v526);
    v279 = Logger.logObject.getter();
    v390 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v279, v390))
    {
      (v545)(v389, v281);
      goto LABEL_176;
    }

    v391 = swift_slowAlloc();
    v392 = swift_slowAlloc();
    v554 = v392;
    *v391 = 141558275;
    *(v391 + 4) = 1752392040;
    *(v391 + 12) = 2081;
    v393 = FMIPDevice.identifier.getter();
    v395 = sub_100005B4C(v393, v394, &v554);

    *(v391 + 14) = v395;
    v128 = v528;
    (v545)(v389, v281);
    _os_log_impl(&_mh_execute_header, v279, v390, "soundViewLayout id: %{private,mask.hash}s is no longer playing sound - 15 seconds elapsed.", v391, 0x16u);
    sub_100006060(v392);
LABEL_155:

LABEL_176:

    (*(v516 + 8))(v519, v18);
    v314 = 0;
    goto LABEL_194;
  }

  LODWORD(v550) = v263;
  v331 = v478;
  v332 = v537;
  sub_1004936B8(v537, v478);
  v333 = type metadata accessor for FMIPAudioChannel();
  v334 = *(*(v333 - 8) + 48);
  v335 = v334(v331, 1, v333);
  sub_100012DF0(v331, &qword_1006C1D78);
  v336 = v479;
  sub_1004938A8(v332, v479);
  LODWORD(v127) = v334(v336, 1, v333);
  sub_100012DF0(v336, &qword_1006C1D78);
  v337 = v476;
  sub_100007204(v524, v476, &qword_1006B07D0);
  v338 = v546;
  v339 = v551;
  if ((*(v546 + 48))(v337, 1, v551) == 1)
  {
    sub_100012DF0(v337, &qword_1006B07D0);
    v128 = v528;
    v340 = v538;
    v341 = v547;
    v342 = v542;
    v343 = v477;
    if (v514)
    {
      LODWORD(v551) = v335;
      v344 = v464;
      v345 = v526;
      (v543)(v464, v528, v526);
      v346 = Logger.logObject.getter();
      v347 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v346, v347))
      {
        v348 = swift_slowAlloc();
        v349 = swift_slowAlloc();
        v554 = v349;
        *v348 = 141558275;
        *(v348 + 4) = 1752392040;
        *(v348 + 12) = 2081;
        v350 = FMIPDevice.identifier.getter();
        v352 = sub_100005B4C(v350, v351, &v554);

        *(v348 + 14) = v352;
        (v545)(v344, v345);
        _os_log_impl(&_mh_execute_header, v346, v347, "soundViewLayout id: %{private,mask.hash}s is a multichannel device.", v348, 0x16u);
        sub_100006060(v349);

        v128 = v528;
      }

      else
      {

        (v545)(v344, v345);
      }

      v18 = v467;
      LODWORD(v130) = v540;
      LODWORD(v2) = v533;
      v129 = v517;
      if (v551 != 1)
      {
        if (v127 != 1)
        {
          goto LABEL_229;
        }

        goto LABEL_241;
      }

      if (v127 != 1)
      {
        if (v534)
        {
LABEL_229:
          v314 = 4;
          goto LABEL_266;
        }

        goto LABEL_262;
      }

LABEL_240:
      if (v534)
      {
LABEL_241:
        if (v2)
        {
          v441 = 9;
        }

        else
        {
          v441 = 6;
        }

        v442 = v130 == 0;
        v443 = 4;
        goto LABEL_263;
      }

      if (!v130)
      {
        if ((v129)(v525, 1) == 1)
        {
          v455 = v481;
          FMIPPlaySoundMetadata.status.getter();
          v456 = v496;
          v457 = v2;
          v2 = v480;
          v458 = v497;
          (*(v496 + 104))(v480, v550, v497);
          sub_1004A7DD4(&qword_1006C1D70, &type metadata accessor for FMIPActionStatus);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          v459 = v554 != v552;
          v460 = *(v456 + 8);
          v461 = v2;
          LODWORD(v2) = v457;
          v460(v461, v458);
          v460(v455, v458);
          v18 = v467;
          v314 = (2 * v459);
          goto LABEL_266;
        }

        if (!v532)
        {
          if (v2)
          {
            v314 = 8;
          }

          else
          {
            v314 = 0;
          }

LABEL_266:
          v281 = v526;
          (v543)(v18, v128, v526);
          v445 = Logger.logObject.getter();
          v446 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v445, v446))
          {
            LODWORD(v550) = v127 != 1;
            LODWORD(v533) = v2;
            v447 = v551 != 1;
            v448 = swift_slowAlloc();
            v554 = swift_slowAlloc();
            *v448 = 141560067;
            *(v448 + 4) = 1752392040;
            *(v448 + 12) = 2081;
            v449 = FMIPDevice.identifier.getter();
            v451 = sub_100005B4C(v449, v450, &v554);

            *(v448 + 14) = v451;
            (v545)(v18, v281);
            *(v448 + 22) = 2082;
            v452 = FMSoundPlatterViewLayout.description.getter(v314);
            v454 = sub_100005B4C(v452, v453, &v554);

            *(v448 + 24) = v454;
            *(v448 + 32) = 1024;
            *(v448 + 34) = v447;
            *(v448 + 38) = 1024;
            *(v448 + 40) = v534;
            *(v448 + 44) = 1024;
            *(v448 + 46) = v532;
            *(v448 + 50) = 1024;
            *(v448 + 52) = v550;
            *(v448 + 56) = 1024;
            *(v448 + 58) = v540;
            *(v448 + 62) = 1024;
            *(v448 + 64) = v533;
            _os_log_impl(&_mh_execute_header, v445, v446, "soundViewLayout id: %{private,mask.hash}s multichannel result %{public}s. Left: [Playing_Classic: %{BOOL}d, PLaying_LE: %{BOOL}d, Queued: %{BOOL}d] Right: [Playing_Classic: %{BOOL}d, Playing_LE: %{BOOL}d, Queued: %{BOOL}d].", v448, 0x44u);
            swift_arrayDestroy();
          }

          else
          {
            (v545)(v18, v281);
          }

          (*(v516 + 8))(v519, v542);
          v128 = v528;
          goto LABEL_179;
        }

        v442 = v2 == 0;
        v441 = 7;
        v443 = 2;
LABEL_263:
        if (v442)
        {
          v314 = v441;
        }

        else
        {
          v314 = v443;
        }

        goto LABEL_266;
      }

LABEL_262:
      v442 = v532 == 0;
      v441 = 5;
      v443 = 10;
      goto LABEL_263;
    }

LABEL_181:
    if (v341 && *(v341 + 16))
    {
      v314 = 2;
      v281 = v526;
    }

    else
    {
      v281 = v526;
      if (v537[2] || v340 && *(v340 + 2))
      {
        v314 = 3;
      }

      else
      {
        v314 = 0;
      }
    }

    (v543)(v343, v128, v281);
    v431 = Logger.logObject.getter();
    v432 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v431, v432))
    {
      v433 = v342;
      v434 = swift_slowAlloc();
      v554 = swift_slowAlloc();
      *v434 = 141558531;
      *(v434 + 4) = 1752392040;
      *(v434 + 12) = 2081;
      v435 = FMIPDevice.identifier.getter();
      v437 = sub_100005B4C(v435, v436, &v554);

      *(v434 + 14) = v437;
      (v545)(v343, v281);
      *(v434 + 22) = 2082;
      v438 = FMSoundPlatterViewLayout.description.getter(v314);
      v440 = sub_100005B4C(v438, v439, &v554);

      *(v434 + 24) = v440;
      _os_log_impl(&_mh_execute_header, v431, v432, "soundViewLayout id: %{private,mask.hash}s [Monaural / Can Stop Sound] is %{public}s.", v434, 0x20u);
      swift_arrayDestroy();
      v128 = v528;

      (*(v516 + 8))(v519, v433);
    }

    else
    {
      (v545)(v343, v281);

      (*(v516 + 8))(v519, v342);
    }

    goto LABEL_179;
  }

  v396 = v473;
  (*(v338 + 32))(v473, v337, v339);
  v128 = v528;
  v343 = v477;
  if ((v514 & 1) == 0)
  {
    (*(v338 + 8))(v396, v339);
    v340 = v538;
    v341 = v547;
    v342 = v542;
    goto LABEL_181;
  }

  v397 = v463;
  v398 = v526;
  (v543)(v463, v528, v526);
  v399 = Logger.logObject.getter();
  v400 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v399, v400))
  {
    v401 = swift_slowAlloc();
    v402 = swift_slowAlloc();
    v554 = v402;
    *v401 = 141558275;
    *(v401 + 4) = 1752392040;
    *(v401 + 12) = 2081;
    v403 = FMIPDevice.identifier.getter();
    v405 = v335;
    v406 = sub_100005B4C(v403, v404, &v554);

    *(v401 + 14) = v406;
    v335 = v405;
    (v545)(v397, v398);
    _os_log_impl(&_mh_execute_header, v399, v400, "soundViewLayout id: %{private,mask.hash}s is a multichannel device and has primary selected part.", v401, 0x16u);
    sub_100006060(v402);
  }

  else
  {

    (v545)(v397, v398);
  }

  v225 = v521;
  v427 = v551;
  LOBYTE(v238) = v540;
  LODWORD(v18) = v533;
  v264 = v466;
  v428 = v473;
  FMIPItem.partType.getter();
  (*(v546 + 8))(v428, v427);
  (*(v516 + 8))(v519, v542);
  v262 = v536;
  v429 = (*(v500 + 88))(v264, v536);
  v128 = v528;
  if (v429 == enum case for FMIPPartType.standalone(_:))
  {
    goto LABEL_141;
  }

  if (v429 == enum case for FMIPPartType.case(_:))
  {
LABEL_143:
    if (v535)
    {
      v379 = 2;
    }

    else
    {
      v379 = 0;
    }

    v380 = v539;
LABEL_171:
    v407 = v380 == 0;
LABEL_172:
    if (v407)
    {
      v314 = v379;
    }

    else
    {
      v314 = 3;
    }

    goto LABEL_193;
  }

  if (v429 == enum case for FMIPPartType.leftBud(_:))
  {
    v314 = 3;
    v281 = v526;
    if ((v534 & 1) == 0)
    {
      if (v532)
      {
        v430 = 2;
      }

      else
      {
        v430 = 0;
      }

      if (v335 == 1)
      {
        v314 = v430;
      }

      else
      {
        v314 = 3;
      }
    }

    goto LABEL_194;
  }

LABEL_253:
  if (v429 != enum case for FMIPPartType.rightBud(_:))
  {
    if (v429 != enum case for FMIPPartType.generic(_:))
    {
      (*(v500 + 8))(v264, v262);
    }

    goto LABEL_141;
  }

  v314 = 3;
  v281 = v526;
  if ((v238 & 1) == 0)
  {
    if (v18)
    {
      v444 = 2;
    }

    else
    {
      v444 = 0;
    }

    if (v127 == 1)
    {
      v314 = v444;
    }

    else
    {
      v314 = 3;
    }
  }

LABEL_194:
  (v543)(v225, v128, v281);
  v408 = Logger.logObject.getter();
  v409 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v408, v409))
  {
    v410 = swift_slowAlloc();
    v554 = swift_slowAlloc();
    *v410 = 141558531;
    *(v410 + 4) = 1752392040;
    *(v410 + 12) = 2081;
    v411 = FMIPDevice.identifier.getter();
    v413 = v225;
    v414 = sub_100005B4C(v411, v412, &v554);

    *(v410 + 14) = v414;
    (v545)(v413, v281);
    *(v410 + 22) = 2082;
    v415 = FMSoundPlatterViewLayout.description.getter(v314);
    v417 = sub_100005B4C(v415, v416, &v554);

    *(v410 + 24) = v417;

    _os_log_impl(&_mh_execute_header, v408, v409, "soundViewLayout Result id: %{private,mask.hash}s is %{public}s.", v410, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (v545)(v225, v281);
  }

  sub_100012DF0(v524, &qword_1006B07D0);
  sub_100012DF0(v523, &qword_1006C1D30);
  sub_100012DF0(v525, &unk_1006BB1C0);
  return v314;
}