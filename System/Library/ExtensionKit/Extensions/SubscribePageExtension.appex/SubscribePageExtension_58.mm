void sub_100688F68()
{
  v1 = sub_100744B24();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v9[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + OBJC_IVAR____TtC22SubscribePageExtension13BaseBootstrap_isBootstrapping) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC22SubscribePageExtension13BaseBootstrap_isBootstrapping) = 1;
    (*(*v0 + 360))(v3);
    sub_100689708(v5);
    sub_100744B14();
    v6 = sub_100016C60(0, &qword_100926D00);
    swift_retain_n();
    v7 = sub_100753774();
    v9[3] = v6;
    v9[4] = &protocol witness table for OS_dispatch_queue;
    v9[0] = v7;
    sub_100752D64();

    sub_10000C620(v9);
    sub_100742194();
    sub_100742184();
    (*(v2 + 8))(v5, v1);
  }
}

uint64_t sub_10068912C()
{
  v1 = v0;
  v2 = sub_100752E24();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1007526B4();
  v6 = *(v18 - 8);
  __chkstk_darwin(v18);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC22SubscribePageExtension13BaseBootstrap_pendingMetricsLogger;
  v10 = sub_1007525E4();
  swift_allocObject();
  *(v0 + v9) = sub_1007525D4();
  v11 = OBJC_IVAR____TtC22SubscribePageExtension13BaseBootstrap_diagnosticsRecorder;
  sub_10074B724();
  swift_allocObject();
  *(v0 + v11) = sub_10074B714();
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension13BaseBootstrap_pendingEvents) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension13BaseBootstrap_inAppMessagesMetricsEventRecorder) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension13BaseBootstrap_isBootstrapping) = 0;
  sub_10000C518(&qword_1009447A0);
  v12 = swift_allocObject();
  v13 = *(v1 + v9);
  *(v12 + 16) = xmmword_1007A6580;
  *(v12 + 56) = v10;
  *(v12 + 64) = &protocol witness table for ReplayLogger;
  *(v12 + 32) = v13;
  v14 = qword_100921EC8;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = sub_10000D0FC(v2, qword_1009832D0);
  (*(v3 + 16))(v5, v15, v2);
  *(v12 + 96) = sub_100752E44();
  *(v12 + 104) = &protocol witness table for OSLogger;
  sub_10000D134((v12 + 72));
  sub_100752E34();
  sub_1007526A4();
  (*(v6 + 32))(v1 + OBJC_IVAR____TtC22SubscribePageExtension13BaseBootstrap_logger, v8, v18);
  return v1;
}

uint64_t sub_100689468(uint64_t a1)
{
  v19 = a1;
  v18 = sub_100752B34();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1007524D4();
  v5 = *(v17 - 8);
  __chkstk_darwin(v17);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC22SubscribePageExtension13BaseBootstrap_pendingEvents;
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
      result = sub_100754664();
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
            sub_100754574();
          }

          else
          {
          }

          ++v14;
          sub_100743EC4();
          sub_100752B14();
          sub_100752794();

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

  result = sub_100754664();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_100689708@<X0>(uint64_t a1@<X8>)
{
  v19[2] = a1;
  v1 = sub_100744AE4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&qword_100944748);
  __chkstk_darwin(v5 - 8);
  v7 = v19 - v6;
  v8 = sub_100752CC4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100744B24();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100920CC0 != -1)
  {
    swift_once();
  }

  v16 = sub_10000D0FC(v8, qword_100980480);
  (*(v9 + 16))(v11, v16, v8);
  v17 = sub_100745B44();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  v19[6] = &type metadata for ModernAppStateControllerFactory;
  v19[7] = sub_10068C67C();
  (*(v2 + 104))(v4, enum case for ASKBootstrapV2.TargetType.app(_:), v1);
  sub_100744AF4();
  swift_allocObject();
  swift_weakInit();

  sub_100744B04();

  (*(v13 + 8))(v15, v12);
}

uint64_t sub_100689A68@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100752CD4();
  __chkstk_darwin(v2);
  v3 = sub_100748CA4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007526E4();
  sub_100748C94();
  v7 = type metadata accessor for InAppMessagesMetricsEventRecorder();
  v8 = swift_allocObject();
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 32) = sub_100748C74();
  *(v8 + 40) = v9;
  sub_100046F70(0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC22SubscribePageExtension13BaseBootstrap_inAppMessagesMetricsEventRecorder) = v8;
  }

  a1[3] = v7;
  a1[4] = sub_10068C710(&qword_100944798, type metadata accessor for InAppMessagesMetricsEventRecorder);
  *a1 = v8;
  return (*(v4 + 8))(v6, v3);
}

void sub_100689C70(uint64_t a1)
{
  sub_1007465E4();
  sub_1007465A4();
  v2 = OBJC_IVAR____TtC22SubscribePageExtension13BaseBootstrap_pendingEvents;
  swift_beginAccess();
  sub_100753284();
  if (*((*(a1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

  sub_100753344();
  swift_endAccess();
  sub_100688F68();
}

uint64_t sub_100689D38(uint64_t a1, uint64_t a2)
{
  sub_100689E28();
  v3 = (*(*a2 + 328))();
  sub_100752704();
  sub_1007455A4();
  sub_100752764();
  sub_100752D34();
  sub_10068B1D4(v3, v5);
}

uint64_t sub_100689E28()
{
  v53 = sub_100752314();
  v47 = *(v53 - 8);
  v48 = (v53 - 8);
  v49 = v47;
  __chkstk_darwin(v53 - 8);
  v52 = &v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_10074CF54();
  v60 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10074D534();
  v59 = *(v54 - 8);
  __chkstk_darwin(v54);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100752634();
  __chkstk_darwin(v5);
  v45 = sub_1007442C4();
  (*(*v0 + 176))();
  sub_10074A1B4();
  sub_1007526E4();
  v56 = sub_100744234();
  sub_100016C60(0, &qword_100944758);
  sub_1007442B4();
  sub_10068C710(&qword_100944760, &type metadata accessor for MetricsLogger.Configuration);
  sub_100752D24();
  v44 = sub_100748054();
  swift_allocObject();
  v55 = sub_100748064();
  sub_100748044();
  sub_100748034();
  sub_100744AC4();
  sub_100752764();
  sub_100752D34();
  v51 = v64;
  sub_100744934();
  v6 = sub_100016C60(0, &qword_100939F50);
  sub_100752D34();
  v7 = v64;
  v8 = [objc_opt_self() sharedInstance];
  v65 = sub_100016C60(0, &qword_100944768);
  v66 = &protocol witness table for ASDSubscriptionEntitlements;
  v64 = v8;
  v62 = v6;
  v63 = &protocol witness table for ACAccountStore;
  v61 = v7;
  v42 = sub_10074B294();
  v9 = objc_allocWithZone(v42);
  v50 = v7;
  v10 = sub_10074B224();
  v11 = v4;
  v43 = v4;
  sub_10074D524();
  sub_10000C518(&unk_100925780);
  sub_100752D34();
  v46 = v64;
  v40 = v10;
  swift_unknownObjectRetain();
  v12 = v57;
  sub_10074CF44();
  sub_10000C518(&qword_100944770);
  v13 = (sub_10000C518(&qword_100936DD8) - 8);
  v14 = (*(*v13 + 80) + 32) & ~*(*v13 + 80);
  v15 = swift_allocObject();
  v41 = xmmword_1007A5A00;
  *(v15 + 16) = xmmword_1007A5A00;
  v16 = v15 + v14;
  v17 = (v16 + v13[14]);
  sub_100752C64();
  v18 = v58;
  v17[3] = v58;
  v17[4] = sub_10068C710(&qword_100944778, &type metadata accessor for ArcadeButtonNameFieldsProvider);
  v19 = sub_10000D134(v17);
  (*(v60 + 16))(v19, v12, v18);
  sub_100415650(v15);
  swift_setDeallocating();
  sub_10000C8CC(v16, &qword_100936DD8);
  swift_deallocClassInstance();
  sub_10000C518(&qword_100944780);
  v20 = (sub_10000C518(&qword_100936DB8) - 8);
  v21 = (*(*v20 + 80) + 32) & ~*(*v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v41;
  v23 = v22 + v21;
  v24 = (v23 + v20[14]);
  sub_100752C24();
  v25 = v54;
  v24[3] = v54;
  v24[4] = sub_10068C710(&qword_100944788, &type metadata accessor for ArcadeSubscriptionFieldsProvider);
  v26 = sub_10000D134(v24);
  (*(v59 + 16))(v26, v11, v25);
  sub_100415840(v22);
  swift_setDeallocating();
  sub_10000C8CC(v23, &qword_100936DB8);
  swift_deallocClassInstance();
  v27 = sub_100752784();

  v28 = [objc_allocWithZone(type metadata accessor for EventStoreManager()) init];
  *&v41 = v27;

  sub_100752774();
  sub_10000C518(&qword_100938E30);
  v29 = v49;
  v30 = swift_allocObject();
  v30[1] = xmmword_1007AB1A0;
  v64 = v56;

  sub_1007522F4();
  sub_1007422F4();
  v64 = sub_1007422E4();
  sub_1007522F4();
  v64 = v55;

  sub_1007522F4();
  v64 = v40;
  v45 = v40;
  sub_1007522F4();
  v64 = v28;
  v48 = v28;
  sub_1007522F4();
  v64 = v30;
  sub_10000C518(&qword_100944738);
  sub_1000D83A4(&qword_100944740, &qword_100944738);
  sub_100752734();

  sub_100752704();
  v64 = [objc_allocWithZone(sub_10074B024()) init];
  v47 = v64;
  v31 = v52;
  sub_1007522F4();
  sub_100752724();

  v32 = v29[1];
  v33 = v53;
  v32(v31, v53);
  sub_100742AB4();
  swift_allocObject();
  v34 = v45;

  v64 = sub_100742A74();

  sub_1007522F4();
  sub_100752724();

  v32(v31, v33);
  v35 = objc_allocWithZone(sub_1007425B4());

  v64 = sub_1007425A4();
  v36 = v64;
  sub_1007522F4();
  v37 = sub_100752724();

  swift_unknownObjectRelease();

  v32(v31, v33);
  (*(v60 + 8))(v57, v58);
  (*(v59 + 8))(v43, v54);
  return v37;
}

uint64_t sub_10068A9E8(uint64_t a1)
{
  v2 = sub_1007521E4();
  v13 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100752224();
  v5 = *(v12 - 8);
  __chkstk_darwin(v12);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016C60(0, &qword_100926D00);
  v8 = sub_100753774();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  aBlock[4] = sub_10068C674;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_10087FAD8;
  v10 = _Block_copy(aBlock);
  swift_errorRetain();

  sub_100752204();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10068C710(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000C518(&unk_10092F750);
  sub_1000D83A4(&qword_1009236C0, &unk_10092F750);
  sub_1007543A4();
  sub_100753784();
  _Block_release(v10);

  (*(v13 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v12);
}

uint64_t sub_10068ACCC()
{
  type metadata accessor for DebugNotificationCenter();
  inited = swift_initStaticObject();
  swift_getErrorValue();
  v1 = sub_1007547C4();
  v3 = v2;
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = sub_1006FEC68();

  if (v5)
  {
    sub_1006F06E4();
    v6 = *(inited + 24);
    if (v6)
    {
      sub_100016C60(0, &qword_100923500);
      v7 = v6;
      isa = sub_100753F24(1.0, 0.23137, 0.18824, 0.5).super.isa;
      sub_1006F0190(v1, v3, isa, 0, 0, 3.0);
    }
  }
}

uint64_t sub_10068AE00(uint64_t a1)
{
  v2 = sub_1007521E4();
  v19 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100752224();
  v17 = *(v5 - 8);
  v18 = v5;
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100752354();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100016C60(0, &qword_100926D00);
  v11 = sub_100753774();
  (*(v9 + 16))(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  aBlock[4] = sub_10068C5C4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_10087FA88;
  v14 = _Block_copy(aBlock);

  sub_100752204();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10068C710(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000C518(&unk_10092F750);
  sub_1000D83A4(&qword_1009236C0, &unk_10092F750);
  sub_1007543A4();
  sub_100753784();
  _Block_release(v14);

  (*(v19 + 8))(v4, v2);
  return (*(v17 + 8))(v7, v18);
}

uint64_t sub_10068B194(uint64_t a1)
{
  type metadata accessor for DebugNotificationCenter();
  swift_initStaticObject();
  return sub_1006EE17C(a1);
}

uint64_t sub_10068B1D4(uint64_t a1, void *a2)
{
  v39 = a2;
  v35 = a1;
  v3 = sub_100752B84();
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&qword_100944748);
  __chkstk_darwin(v5 - 8);
  v40 = &v31 - v6;
  v37 = sub_100752CD4();
  __chkstk_darwin(v37);
  v38 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_100741454();
  v8 = *(v36 - 8);
  __chkstk_darwin(v36);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1007527A4();
  v41 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  sub_100744AC4();
  sub_100752764();
  sub_100752D34();
  v17 = v42;
  v18 = v2;
  swift_unknownObjectWeakLoadStrong();
  sub_100745594();
  sub_10074C5F4();
  v19 = sub_10074C5E4();
  sub_1007449A4();
  sub_10074C5D4();

  v20 = [objc_opt_self() standardUserDefaults];
  v39 = v17;
  v21 = sub_100744964();
  v22 = sub_100753064();
  [v20 setBool:v21 & 1 forKey:v22];

  v23 = v18;
  v24 = v35;

  sub_100752D34();
  sub_100689468(v16);
  sub_100749F54();
  sub_100741444();
  sub_100741424();
  (*(v8 + 8))(v10, v36);
  sub_100749F44();
  (*(v41 + 16))(v13, v16, v11);
  sub_10074C024();
  swift_allocObject();
  sub_10074C004();
  sub_10074B294();
  sub_100752D34();
  v25 = v42;
  swift_retain_n();
  sub_10074B204();

  sub_1007491E4();
  sub_100752754();
  v26 = v42;
  if (v42)
  {
    sub_1007491D4();
  }

  sub_100748164();
  sub_100752D34();
  v27 = sub_100745B44();
  (*(*(v27 - 8) + 56))(v40, 1, 1, v27);
  sub_10000C518(&qword_100944750);
  sub_100752D34();
  v28 = sub_100748154();
  (*(*v23 + 368))(v24, v28);
  sub_100744974();
  sub_100742314();

  sub_100752BA4();
  sub_100752754();
  if (v42)
  {

    v29 = v32;
    sub_100752B74();
    sub_100752B94();

    (*(v33 + 8))(v29, v34);
    result = (*(v41 + 8))(v16, v11);
  }

  else
  {
    (*(v41 + 8))(v16, v11);
  }

  *(v23 + OBJC_IVAR____TtC22SubscribePageExtension13BaseBootstrap_isBootstrapping) = 0;
  return result;
}

uint64_t sub_10068B874(uint64_t a1)
{
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_1007523A4();
  swift_getErrorValue();
  v7[3] = v6;
  v3 = sub_10000D134(v7);
  (*(*(v6 - 8) + 16))(v3);
  sub_100752424();
  sub_10000C8CC(v7, &unk_100923520);
  sub_1007526B4();
  sub_100752D04();

  sub_100745FC4();
  swift_allocObject();
  swift_errorRetain();
  sub_100745FB4();
  v4 = OBJC_IVAR____TtC22SubscribePageExtension13BaseBootstrap_pendingEvents;
  swift_beginAccess();
  sub_100753284();
  if (*((*(v1 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

  sub_100753344();
  swift_endAccess();
  sub_100742304();
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension13BaseBootstrap_isBootstrapping) = 0;
  return (*(*v1 + 376))(a1);
}

uint64_t sub_10068BB04(uint64_t a1)
{
  v3 = sub_100752CD4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_100752314();
  v7 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v46 = &v43 - v10;
  __chkstk_darwin(v11);
  v47 = &v43 - v12;
  v14 = __chkstk_darwin(v13);
  v16 = &v43 - v15;
  v17 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension13BaseBootstrap_inAppMessagesMetricsEventRecorder);
  v50 = a1;
  if (v17)
  {
    v18 = *(*v1 + 144);
    v45 = v1;
    v19 = v18(v14);
    type metadata accessor for InAppMessagesManager();
    swift_allocObject();

    v21 = sub_1006EC254(v20, v19, v17);

    v51 = v21;

    sub_1007522F4();
    v22 = sub_10025527C(0, 1, 1, _swiftEmptyArrayStorage);
    v24 = *(v22 + 2);
    v23 = *(v22 + 3);
    if (v24 >= v23 >> 1)
    {
      v22 = sub_10025527C(v23 > 1, v24 + 1, 1, v22);
    }

    *(v22 + 2) = v24 + 1;
    (*(v7 + 32))(&v22[((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v24], v16, v49);
    v1 = v45;
  }

  else
  {
    v22 = _swiftEmptyArrayStorage;
  }

  sub_100752764();
  sub_100752D34();
  v25 = (*(*v1 + 272))(v6);
  (*(v4 + 8))(v6, v3);
  if (v25)
  {
    sub_1007491E4();
    v51 = v25;
    v26 = v25;
    v27 = v47;
    sub_1007522F4();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_10025527C(0, *(v22 + 2) + 1, 1, v22);
    }

    v29 = *(v22 + 2);
    v28 = *(v22 + 3);
    if (v29 >= v28 >> 1)
    {
      v22 = sub_10025527C(v28 > 1, v29 + 1, 1, v22);
    }

    *(v22 + 2) = v29 + 1;
    v30 = *(v7 + 32);
    v45 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v31 = *(v7 + 72);
    v30(&v22[v45 + v31 * v29], v27, v49);
    v32 = sub_1007491C4();
    if (v32)
    {
      v33 = v32;
      v44 = v30;
      v47 = v26;
      sub_10074B0C4();
      swift_allocObject();

      v34 = v33;
      v51 = sub_10074B044();

      v35 = v46;
      sub_1007522F4();
      v37 = *(v22 + 2);
      v36 = *(v22 + 3);
      if (v37 >= v36 >> 1)
      {
        v22 = sub_10025527C(v36 > 1, v37 + 1, 1, v22);
      }

      *(v22 + 2) = v37 + 1;
      v44(&v22[v45 + v37 * v31], v35, v49);
    }

    else
    {
    }
  }

  sub_100016C60(0, &qword_100939F50);
  sub_100752D34();
  sub_100744AC4();
  sub_100752D34();
  sub_1007464E4();
  swift_allocObject();
  v51 = sub_1007464D4();

  v38 = v48;
  sub_1007522F4();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = sub_10025527C(0, *(v22 + 2) + 1, 1, v22);
  }

  v40 = *(v22 + 2);
  v39 = *(v22 + 3);
  if (v40 >= v39 >> 1)
  {
    v22 = sub_10025527C(v39 > 1, v40 + 1, 1, v22);
  }

  *(v22 + 2) = v40 + 1;
  (*(v7 + 32))(&v22[((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v40], v38, v49);
  v51 = v22;
  sub_10000C518(&qword_100944738);
  sub_1000D83A4(&qword_100944740, &qword_100944738);
  v41 = sub_100752734();

  return v41;
}

void sub_10068C1C8()
{
  sub_100754534(43);

  v0._countAndFlagsBits = sub_100754544();
  sub_1007531B4(v0);

  v1._countAndFlagsBits = 0xD000000000000017;
  v1._object = 0x800000010078A280;
  sub_1007531B4(v1);
  v2._countAndFlagsBits = sub_1007548A4();
  sub_1007531B4(v2);

  sub_100754644();
  __break(1u);
}

uint64_t sub_10068C328()
{
  sub_10000C4F0(v0 + 16);
  v1 = OBJC_IVAR____TtC22SubscribePageExtension13BaseBootstrap_logger;
  v2 = sub_1007526B4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BaseBootstrap()
{
  result = qword_100944588;
  if (!qword_100944588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10068C460()
{
  result = sub_1007526B4();
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

uint64_t sub_10068C53C()
{
  v1 = sub_100752354();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10068C5C4()
{
  v1 = *(sub_100752354() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10068B194(v2);
}

uint64_t sub_10068C624(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10068C63C()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10068C67C()
{
  result = qword_100944790;
  if (!qword_100944790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944790);
  }

  return result;
}

uint64_t sub_10068C6D0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10068C710(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10068C770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, uint64_t a7@<D1>, double a8@<D6>, double a9@<D7>, char *a10, char *a11)
{
  v128 = a4;
  v139 = a2;
  v140 = a3;
  v141 = a1;
  v133 = a5;
  v124 = sub_10000C518(&qword_100923230);
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v122 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v121 = &v111 - v17;
  v120 = sub_1007504F4();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_10074EAB4();
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v115 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v114 = &v111 - v21;
  v126 = sub_100751BC4();
  v127 = *(v126 - 8);
  __chkstk_darwin(v126);
  v125 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000C518(&unk_100933370);
  __chkstk_darwin(v23 - 8);
  v131 = &v111 - v24;
  v135 = sub_10074E984();
  v25 = *(v135 - 8);
  __chkstk_darwin(v135);
  v136 = &v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v111 - v28;
  __chkstk_darwin(v30);
  v32 = &v111 - v31;
  v33 = sub_10074F6E4();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v113 = &v111 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v111 = &v111 - v37;
  __chkstk_darwin(v38);
  v112 = &v111 - v39;
  __chkstk_darwin(v40);
  v132 = &v111 - v41;
  __chkstk_darwin(v42);
  v44 = &v111 - v43;
  v45 = sub_10000C518(&qword_100923228);
  v46 = v45 - 8;
  __chkstk_darwin(v45);
  v48 = &v111 - v47;
  sub_100016B4C(v139, &v111 - v47, &unk_10093D6E0);
  v49 = *(v46 + 56);
  v134 = v48;
  v50 = &v48[v49];
  v51 = v34;
  sub_100016B4C(v140, v50, &unk_10093D6E0);
  swift_getKeyPath();
  sub_10000C518(&unk_10092E450);
  sub_1007525B4();

  v52 = *(v34 + 104);
  v53 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v144)
  {
    v53 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v54 = *v53;
  v137 = v33;
  v138 = v44;
  v55 = v44;
  v56 = v135;
  v52(v55, v54, v33);
  swift_getKeyPath();
  sub_1007525B4();

  (*(v25 + 104))(v29, enum case for Shelf.ContentType.placeholder(_:), v56);
  sub_10068F380(&qword_100926DD0, &type metadata accessor for Shelf.ContentType);
  v139 = v32;
  sub_100753274();
  sub_100753274();
  if (v144 == v142 && v145 == v143)
  {
    v57 = 1;
  }

  else
  {
    v57 = sub_100754754();
  }

  v140 = *(v25 + 8);
  v140(v29, v56);

  v58 = v139;
  if (v57)
  {
    swift_getKeyPath();
    v59 = v131;
    sub_1007525B4();

    if ((*(v25 + 48))(v59, 1, v56) == 1)
    {
      sub_10000C8CC(v59, &unk_100933370);
    }

    else
    {
      v140(v58, v56);
      (*(v25 + 32))(v58, v59, v56);
    }
  }

  v60 = a11;
  v61 = v136;
  (*(v25 + 16))(v136, v58, v56);
  v62 = (*(v25 + 88))(v61, v56);
  if (v62 == enum case for Shelf.ContentType.smallLockup(_:) || v62 == enum case for Shelf.ContentType.purchasesLockup(_:) || v62 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.largeLockup(_:))
  {
LABEL_15:
    v63 = v125;
    sub_1007455F4();
    v64 = sub_100751BA4();
    (*(v127 + 8))(v63, v126);
    v66 = v137;
    v65 = v138;
    (*(v51 + 16))(v132, v138, v137);
    sub_10070879C(v64 & 1);
LABEL_41:
    sub_10074F6B4();
    v140(v58, v56);
    v69 = *(v51 + 8);
    v70 = v65;
    v77 = v66;
    goto LABEL_42;
  }

  if (v62 == enum case for Shelf.ContentType.productTopLockup(_:))
  {
LABEL_17:
    v129 = a8;
    v130 = a9;
    v66 = v137;
    v65 = v138;
    (*(v51 + 16))(v132, v138, v137);
    if (qword_1009207D8 == -1)
    {
      goto LABEL_40;
    }

    goto LABEL_85;
  }

  if (v62 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v62 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) || v62 == enum case for Shelf.ContentType.mediumAdLockupWithAlignedRegionBackground(_:) || v62 == enum case for Shelf.ContentType.mediumAdLockupWithScreenshotsBackground(_:) || v62 == enum case for Shelf.ContentType.condensedAdLockupWithIconBackground(_:) || v62 == enum case for Shelf.ContentType.action(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.ribbonBar(_:) || v62 == enum case for Shelf.ContentType.ribbonFlow(_:))
  {
    v71 = v121;
    sub_10074F604();
    v72 = v122;
    sub_10074F604();
    v68 = v137;
    v73 = v138;
    (*(v51 + 16))(v132, v138, v137);
    sub_100632ED4(v71, v72);
    sub_10074F6B4();
    v74 = *(*&v123 + 8);
    v75 = v72;
    v76 = v124;
    v74(v75, v124);
    v74(v71, v76);
    v140(v58, v56);
    v69 = *(v51 + 8);
    v70 = v73;
    goto LABEL_32;
  }

  if (v62 == enum case for Shelf.ContentType.paragraph(_:) || v62 == enum case for Shelf.ContentType.annotation(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.footnote(_:))
  {
LABEL_30:
    v68 = v137;
    v67 = v138;
    (*(v34 + 16))(v132, v138, v137);
    sub_1004E97E0(0.0);
    sub_10074F6B4();
    v140(v58, v56);
    v69 = *(v34 + 8);
    v70 = v67;
LABEL_32:
    v77 = v68;
LABEL_42:
    v69(v70, v77);
    return sub_10000C8CC(v134, &qword_100923228);
  }

  if (v62 == enum case for Shelf.ContentType.editorialCard(_:))
  {
    if (sub_100745624())
    {
      v78 = v118;
      sub_100750504();
      v79 = sub_100750444();
      (*(v119 + 8))(v78, v120);
      if (v79)
      {
        v81 = v137;
        v80 = v138;
        v82 = v132;
        if (qword_100920038 == -1)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v81 = v137;
        v80 = v138;
        v82 = v132;
        if (qword_100920040 == -1)
        {
LABEL_50:

          (*(v51 + 16))(v82, v80, v81);
          sub_10074F6B4();
          v140(v58, v56);
          (*(v51 + 8))(v80, v81);
          return sub_10000C8CC(v134, &qword_100923228);
        }
      }
    }

    else
    {
      v81 = v137;
      v80 = v138;
      v82 = v132;
      if (qword_100920200 == -1)
      {
        goto LABEL_50;
      }
    }

    swift_once();
    goto LABEL_50;
  }

  if (v62 == enum case for Shelf.ContentType.videoCard(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.brick(_:))
  {
LABEL_47:
    v131 = v60;
    v130 = a9;
    v66 = v137;
    v65 = v138;
    (*(v51 + 16))(v132, v138, v137);
    if (qword_100920558 == -1)
    {
      goto LABEL_40;
    }

    goto LABEL_85;
  }

  if (v62 == enum case for Shelf.ContentType.categoryBrick(_:))
  {
LABEL_52:
    swift_getKeyPath();
    v84 = v114;
    sub_1007525B4();

    v85 = v115;
    sub_10074EA54();
    sub_10068F380(&unk_100925360, &type metadata accessor for Shelf.PresentationHints);
    v86 = v117;
    v87 = sub_100754324();
    v88 = *(v116 + 8);
    v88(v85, v86);
    v88(v84, v86);
    v89 = v125;
    sub_1007455F4();
    LOBYTE(v88) = sub_100751BA4();
    (*(v127 + 8))(v89, v126);
    v91 = v137;
    v90 = v138;
    (*(v51 + 16))(v132, v138, v137);
    sub_10013B344(v88 & 1, v87 & 1);
    sub_10074F6B4();
    v140(v58, v56);
    (*(v51 + 8))(v90, v91);
    return sub_10000C8CC(v134, &qword_100923228);
  }

  if (v62 == enum case for Shelf.ContentType.productCapability(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.reviews(_:))
  {
    goto LABEL_30;
  }

  if (v62 == enum case for Shelf.ContentType.reviewsContainer(_:))
  {
    goto LABEL_17;
  }

  v131 = a11;
  v121 = a10;
  v122 = (v25 + 8);
  v123 = a6;
  v124 = a7;
  v129 = a8;
  v130 = a9;
  v92 = v56;
  v93 = v137;
  v94 = v34;
  if (v62 == enum case for Shelf.ContentType.reviewSummary(_:) || v62 == enum case for Shelf.ContentType.editorsChoice(_:))
  {
    v95 = 0.0;
    if (sub_100745624())
    {
      v96 = v125;
      sub_1007455F4();
      v97 = sub_100751BA4();
      (*(v127 + 8))(v96, v126);
      if (v97)
      {
        v95 = 0.0;
      }

      else
      {
        v95 = 190.0;
      }
    }

    v98 = v138;
    (*(v34 + 16))(v113, v138, v93);
    sub_1004E97E0(v95);
    goto LABEL_68;
  }

  if (v62 == enum case for Shelf.ContentType.todayCard(_:))
  {
    (*(v34 + 16))(v132, v138, v137);
    if (qword_100920060 == -1)
    {
      goto LABEL_83;
    }

    goto LABEL_109;
  }

  if (v62 == enum case for Shelf.ContentType.miniTodayCard(_:))
  {
    (*(v34 + 16))(v112, v138, v137);
    if (sub_100745634())
    {
      if (qword_100920680 == -1)
      {
        goto LABEL_83;
      }
    }

    else if (qword_100920678 == -1)
    {
LABEL_83:

      sub_10074F6B4();
      v140(v139, v56);
      (*(v34 + 8))(v138, v93);
      return sub_10000C8CC(v134, &qword_100923228);
    }

LABEL_109:
    swift_once();
    goto LABEL_83;
  }

  v58 = v139;
  a9 = v130;
  a8 = v129;
  if (v62 == enum case for Shelf.ContentType.editorialLink(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.framedArtwork(_:) || v62 == enum case for Shelf.ContentType.screenshots(_:) || v62 == enum case for Shelf.ContentType.productMedia(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v62 == enum case for Shelf.ContentType.productPageLink(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.productRatings(_:))
  {
    v99 = v138;
    (*(v51 + 16))(v132, v138, v137);
    sub_1004E97E0(0.0);
    sub_10074F6B4();
    v140(v139, v56);
    (*(v51 + 8))(v99, v93);
    return sub_10000C8CC(v134, &qword_100923228);
  }

  if (v62 == enum case for Shelf.ContentType.productReview(_:))
  {
    v100 = v125;
    sub_1007455F4();
    v98 = v138;
    (*(v34 + 16))(v132, v138, v93);
    sub_10044F7B0(v100, 0);
LABEL_91:
    sub_10074F6B4();
    (*(v127 + 8))(v100, v126);
    goto LABEL_69;
  }

  if (v62 == enum case for Shelf.ContentType.productReviewAction(_:))
  {
    v100 = v125;
    sub_1007455F4();
    v98 = v138;
    (*(v34 + 16))(v132, v138, v93);
    sub_10073EFC8(v100);
    goto LABEL_91;
  }

  v58 = v139;
  a9 = v130;
  a8 = v129;
  v60 = v131;
  if (v62 == enum case for Shelf.ContentType.framedVideo(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v62 == enum case for Shelf.ContentType.roundedButton(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.titledButtonStack(_:))
  {
    goto LABEL_30;
  }

  if (v62 == enum case for Shelf.ContentType.smallStoryCard(_:))
  {
    goto LABEL_47;
  }

  if (v62 == enum case for Shelf.ContentType.largeStoryCard(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v62 == enum case for Shelf.ContentType.upsellBreakout(_:) || v62 == enum case for Shelf.ContentType.smallBreakout(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.editorialStoryCard(_:) || v62 == enum case for Shelf.ContentType.mixedMediaLockup(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.arcadeFooter(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:))
  {
    goto LABEL_15;
  }

  if (v62 == enum case for Shelf.ContentType.posterLockup(_:))
  {
    swift_getKeyPath();
    sub_1007525B4();

    v101 = *(v144 + 16);

    v102 = v34;
    v103 = v138;
    (*(v34 + 16))(v132, v138, v93);
    sub_10004825C(v101);
LABEL_108:
    sub_10074F6B4();
    v140(v139, v92);
    (*(v102 + 8))(v103, v93);
    return sub_10000C8CC(v134, &qword_100923228);
  }

  v58 = v139;
  a9 = v130;
  a8 = v129;
  if (v62 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
    goto LABEL_15;
  }

  if (v62 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.privacyType(_:))
  {
LABEL_113:
    v102 = v34;
    v103 = v138;
    (*(v34 + 16))(v132, v138, v137);
    v104 = v125;
    sub_1007455F4();
    sub_1006E2EDC(v104);
    (*(v127 + 8))(v104, v126);
    goto LABEL_108;
  }

  v58 = v139;
  a9 = v130;
  a8 = v129;
  if (v62 == enum case for Shelf.ContentType.appPromotion(_:))
  {
LABEL_39:
    v129 = a8;
    v130 = a9;
    v66 = v137;
    v65 = v138;
    (*(v51 + 16))(v132, v138, v137);
    if (qword_100920200 == -1)
    {
LABEL_40:

      goto LABEL_41;
    }

LABEL_85:
    swift_once();
    goto LABEL_40;
  }

  if (v62 == enum case for Shelf.ContentType.searchResult(_:))
  {
    v105 = sub_100745614();
    (*(v34 + 16))(v111, v138, v93);
    if (v105)
    {
      if (qword_100920C28 == -1)
      {
        goto LABEL_83;
      }
    }

    else if (qword_100920C20 == -1)
    {
      goto LABEL_83;
    }

    goto LABEL_109;
  }

  if (v62 == enum case for Shelf.ContentType.searchResultsContextCard(_:))
  {
    v98 = v138;
    (*(v34 + 16))(v132, v138, v137);
    sub_10063F3B8();
LABEL_68:
    sub_10074F6B4();
LABEL_69:
    v140(v139, v92);
    (*(v34 + 8))(v98, v93);
    return sub_10000C8CC(v134, &qword_100923228);
  }

  if (v62 == enum case for Shelf.ContentType.searchChartsAndCategories(_:))
  {
    v106 = v125;
    sub_1007455F4();
    v107 = sub_100751BA4();
    (*(v127 + 8))(v106, v126);
    if (v107)
    {
      if (sub_100745614())
      {
        v108 = 1;
      }

      else
      {
        v108 = 2;
      }
    }

    else
    {
      v108 = 2;
    }

    v102 = v34;
    v103 = v138;
    (*(v34 + 16))(v132, v138, v93);
    sub_10005672C(v108);
    goto LABEL_108;
  }

  v51 = v34;
  v58 = v139;
  a9 = v130;
  a8 = v129;
  if (v62 == enum case for Shelf.ContentType.heroCarousel(_:) || v62 == enum case for Shelf.ContentType.uber(_:) || v62 == enum case for Shelf.ContentType.mediaPageHeader(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.tagBrick(_:))
  {
    goto LABEL_52;
  }

  if (v62 == enum case for Shelf.ContentType.accessibilityFeatures(_:))
  {
    goto LABEL_113;
  }

  v109 = v138;
  (*(v94 + 16))(v132, v138, v137);
  sub_1004E97E0(0.0);
  sub_10074F6B4();
  v110 = v140;
  v140(v139, v56);
  (*(v94 + 8))(v109, v93);
  sub_10000C8CC(v134, &qword_100923228);
  return v110(v136, v56);
}

uint64_t sub_10068EBE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D4>, double a8@<D5>)
{
  v31 = a5;
  v34 = a4;
  v35 = a2;
  v37 = a3;
  v38 = a6;
  v32 = a7;
  v33 = a8;
  v36 = sub_10074E984();
  v39 = *(v36 - 8);
  __chkstk_darwin(v36);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074F6E4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v30 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  v17 = sub_10000C518(&qword_100923228);
  __chkstk_darwin(v17);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v29 - v21;
  sub_100016B4C(v35, &v29 - v21, &unk_10093D6E0);
  v29 = v17;
  sub_100016B4C(v37, &v22[*(v17 + 48)], &unk_10093D6E0);
  swift_getKeyPath();
  sub_10000C518(&unk_10092E450);
  sub_1007525B4();

  v37 = v12;
  v23 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v41)
  {
    v23 = &enum case for PageGrid.Direction.vertical(_:);
  }

  (*(v12 + 104))(v16, *v23, v11);
  swift_getKeyPath();
  v24 = v36;
  v35 = a1;
  sub_1007525B4();

  v25 = (*(v39 + 88))(v10, v24);
  if (v25 == enum case for Shelf.ContentType.reviews(_:) || v25 == enum case for Shelf.ContentType.reviewsContainer(_:) || v25 == enum case for Shelf.ContentType.todayCard(_:) || v25 == enum case for Shelf.ContentType.framedArtwork(_:) || v25 == enum case for Shelf.ContentType.productMedia(_:) || v25 == enum case for Shelf.ContentType.framedVideo(_:) || v25 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v25 == enum case for Shelf.ContentType.upsellBreakout(_:) || v25 == enum case for Shelf.ContentType.smallBreakout(_:) || v25 == enum case for Shelf.ContentType.arcadeFooter(_:))
  {
    v28 = v37;
    (*(v37 + 16))(v30, v16, v11);
    sub_1004E97E0(0.0);
    sub_10074F6B4();
    (*(v28 + 8))(v16, v11);
    return sub_10000C8CC(v22, &qword_100923228);
  }

  else
  {
    v40 = v31;
    sub_100016B4C(v22, v19, &qword_100923228);
    v26 = *(v29 + 48);
    sub_1000E1F2C();
    sub_100745684();
    (*(v37 + 8))(v16, v11);
    sub_10000C8CC(v22, &qword_100923228);
    sub_10000C8CC(&v19[v26], &unk_10093D6E0);
    sub_10000C8CC(v19, &unk_10093D6E0);
    return (*(v39 + 8))(v10, v24);
  }
}

uint64_t sub_10068F18C()
{
  sub_1000E1F2C();

  return sub_100745684();
}

uint64_t sub_10068F270()
{
  sub_1000E1F2C();

  return sub_100745674();
}

uint64_t sub_10068F380(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10068F3E4()
{
  result = qword_1009447A8;
  if (!qword_1009447A8)
  {
    sub_100746774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009447A8);
  }

  return result;
}

uint64_t sub_10068F43C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v42 = a2;
  v5 = sub_100752624();
  v41 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074A304();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&qword_100930CA0);
  v12 = sub_100752DE4();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v14 = [Strong presentedViewController];

  if (v14)
  {

    v15 = swift_unknownObjectUnownedLoadStrong();
    sub_10068FE34(v3, v44);
    v16 = swift_allocObject();
    sub_10068FEBC(v44, (v16 + 2));
    v17 = v42;
    v16[3] = a1;
    v16[4] = v17;
    v16[5] = v12;
    aBlock[4] = sub_10068FEF4;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CF7B0;
    aBlock[3] = &unk_10087FC20;
    v18 = _Block_copy(aBlock);

    [v15 dismissViewControllerAnimated:1 completion:v18];
    _Block_release(v18);
  }

  else
  {
    v19 = v42;
    v38 = v3;
    v39 = v9;
    v40 = v7;
    v37 = v12;
    v20 = sub_100746754();
    sub_100746744();
    if (sub_100746764())
    {
      type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
      v21 = type metadata accessor for StoreNavigationController();
      v22 = objc_allocWithZone(v21);
      *&v22[OBJC_IVAR____TtC22SubscribePageExtension25StoreNavigationController_objectGraph] = v19;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v45.receiver = v22;
      v45.super_class = v21;

      v24 = v11;
      v25 = objc_msgSendSuper2(&v45, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
      [v25 setDelegate:v25];
      sub_100016C60(0, &qword_100929CC0);
      swift_allocObject();
      v26 = swift_unknownObjectUnownedLoadStrong();
      swift_unknownObjectWeakInit();

      v27 = sub_100753FF4();
      sub_1003CC71C(v20, v27);

      sub_10000C518(&unk_1009231A0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1007A5CF0;
      *(v28 + 32) = v20;
      sub_100016C60(0, &qword_10092B0C0);
      v29 = v20;
      isa = sub_100753294().super.isa;

      [v25 setViewControllers:isa];

      v31 = swift_unknownObjectUnownedLoadStrong();
      [v31 presentViewController:v25 animated:0 completion:0];

      v20 = v25;
      v11 = v24;
    }

    else
    {
      v31 = swift_unknownObjectUnownedLoadStrong();
      [v31 presentViewController:v20 animated:0 completion:0];
    }

    v32 = v39;
    v33 = v40;

    (*(v32 + 8))(v11, v8);
    v34 = v41;
    (*(v41 + 104))(v33, enum case for ActionOutcome.performed(_:), v5);
    v12 = v37;
    sub_100752DB4();
    (*(v34 + 8))(v33, v5);
  }

  return v12;
}

uint64_t sub_10068F97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a1;
  v6 = sub_100752624();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074A304();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100746754();
  sub_100746744();
  if (sub_100746764())
  {
    type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
    v15 = type metadata accessor for StoreNavigationController();
    v29 = v10;
    v16 = v15;
    v17 = objc_allocWithZone(v15);
    v30 = a4;
    v18 = v17;
    *&v17[OBJC_IVAR____TtC22SubscribePageExtension25StoreNavigationController_objectGraph] = a3;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v32.receiver = v18;
    v32.super_class = v16;

    v20 = objc_msgSendSuper2(&v32, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
    [v20 setDelegate:v20];
    sub_100016C60(0, &qword_100929CC0);
    swift_allocObject();
    v28 = v6;
    Strong = swift_unknownObjectUnownedLoadStrong();
    swift_unknownObjectWeakInit();

    v10 = v29;
    v22 = sub_100753FF4();
    sub_1003CC71C(v14, v22);

    sub_10000C518(&unk_1009231A0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1007A5CF0;
    *(v23 + 32) = v14;
    sub_100016C60(0, &qword_10092B0C0);
    v24 = v14;
    isa = sub_100753294().super.isa;

    [v20 setViewControllers:isa];

    v6 = v28;
    v26 = swift_unknownObjectUnownedLoadStrong();
    [v26 presentViewController:v20 animated:0 completion:0];

    v14 = v20;
  }

  else
  {
    v26 = swift_unknownObjectUnownedLoadStrong();
    [v26 presentViewController:v14 animated:0 completion:0];
  }

  (*(v11 + 8))(v13, v10);
  (*(v7 + 104))(v9, enum case for ActionOutcome.performed(_:), v6);
  sub_100752DB4();
  return (*(v7 + 8))(v9, v6);
}

void sub_10068FD64()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong presentedViewController];

    if (v2)
    {
      [v2 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t sub_10068FDF4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10068FE6C()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10068FF04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10068FF20(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      v5 = 0xD000000000000023;
      v6 = 0xD000000000000033;
      if (a1 == 10)
      {
        v6 = 0xD00000000000002BLL;
      }

      v7 = a1 == 9;
    }

    else
    {
      v5 = 0xD000000000000014;
      v6 = 0xD00000000000001BLL;
      if (a1 == 7)
      {
        v6 = 0xD00000000000001ELL;
      }

      v7 = a1 == 6;
    }

    if (v7)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x696D61466E497369;
    v2 = 0xD000000000000011;
    v3 = 0x74616572436E6163;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1 == 1)
    {
      v1 = 0xD000000000000016;
    }

    if (!a1)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

id sub_100690144(uint64_t a1, int a2, char a3, char a4)
{
  v5 = v4;
  v48 = a2;
  v9 = sub_10000C518(&qword_1009305B8);
  __chkstk_darwin(v9 - 8);
  v50 = &v47 - v10;
  v11 = sub_100741084();
  v12 = *(v11 - 1);
  __chkstk_darwin(v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  v18 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_bodyLabel];
  v49 = a1;
  if (a3)
  {
    sub_100744644();
    if (a4)
    {
      v19 = [v5 traitCollection];
      v20 = sub_1007537E4();

      goto LABEL_7;
    }
  }

  else
  {
    sub_100744674();
    v21 = [v5 traitCollection];
    v22 = sub_1002AE534(v14, 0, v21);

    (*(v12 + 8))(v14, v11);
    v23 = [v5 traitCollection];
    v24 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v22];
    v47 = [v22 length];
    v17 = swift_allocObject();
    *(v17 + 2) = 0;
    *(v17 + 3) = v23;
    *(v17 + 4) = v24;
    v17[40] = 1;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_100047814;
    *(v25 + 24) = v17;
    v55 = sub_1000B18A8;
    v56 = v25;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_100047044;
    v54 = &unk_10087FC98;
    v26 = _Block_copy(&aBlock);
    v12 = v56;
    v27 = v23;
    v11 = v24;

    [v22 enumerateAttributesInRange:0 options:v47 usingBlock:{0x100000, v26}];

    _Block_release(v26);
    LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

    if ((v22 & 1) == 0)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v20 = 0;
LABEL_7:
  v28 = [v5 traitCollection];
  v29 = sub_1002AE534(v17, v20 & 1, v28);

  (*(v12 + 8))(v17, v11);
  v30 = [v5 traitCollection];
  v31 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v29];
  v47 = [v29 length];
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = v30;
  *(v32 + 32) = v31;
  *(v32 + 40) = 1;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1002B1424;
  *(v33 + 24) = v32;
  v55 = sub_1002B1408;
  v56 = v33;
  aBlock = _NSConcreteStackBlock;
  v52 = 1107296256;
  v53 = sub_100047044;
  v54 = &unk_10087FD10;
  v34 = _Block_copy(&aBlock);
  v35 = v30;
  v11 = v31;

  [v29 enumerateAttributesInRange:0 options:v47 usingBlock:{0x100000, v34}];

  _Block_release(v34);
  LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

  if (v29)
  {
    __break(1u);
    return result;
  }

LABEL_8:
  sub_10025FF08(v11);
  v37 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed;
  v38 = *(v18 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed);
  v39 = v48;
  *(v18 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed) = v48 & 1;
  if (v39)
  {
    v40 = *(v18 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_collapsedNumberOfLines);
  }

  else
  {
    v40 = 0;
  }

  [*(v18 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel) setNumberOfLines:v40];
  if (v38 != *(v18 + v37))
  {
    sub_100260550();
  }

  v41 = sub_100744684();
  v42 = &v5[OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_subtitle];
  *v42 = v41;
  v42[1] = v43;

  sub_1002AD86C();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_subtitleArtwork] = sub_100744634();

  sub_1002AD86C();

  v44 = v50;
  sub_100744664();
  v45 = sub_100744654();
  (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
  v46 = OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_subtitleArtworkAlignment;
  swift_beginAccess();
  sub_10069085C(v44, &v5[v46]);
  swift_endAccess();
  sub_1002AD86C();
  sub_1006908CC(v44);
  return [v5 setNeedsLayout];
}

uint64_t sub_100690844(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10069085C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_1009305B8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006908CC(uint64_t a1)
{
  v2 = sub_10000C518(&qword_1009305B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100690954(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_10069099C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100690A04(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = sub_100754724();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C888(v5, *(v5 + 24));
  sub_100750574();
  v16 = enum case for FloatingPointRoundingRule.up(_:);
  v59 = *(v13 + 104);
  v59(v15, enum case for FloatingPointRoundingRule.up(_:), v12);
  [a1 displayScale];
  sub_10074FC44();
  v60 = v17;
  v18 = *(v13 + 8);
  v18(v15, v12);
  sub_10000C888(v6 + 5, v6[8]);
  sub_100750574();
  v59(v15, v16, v12);
  [a1 displayScale];
  sub_10074FC44();
  v55 = v19;
  v18(v15, v12);
  sub_10000C888(v6 + 13, v6[16]);
  sub_100751254();
  v58 = v20;
  v56 = v21;
  v23 = v22 + 4.0;
  sub_10000C888(v6 + 18, v6[21]);
  v24 = a4;
  sub_100751254();
  v27 = v25;
  v59 = v28;
  v29 = v23;
  if (v23 <= v25)
  {
    v23 = v25;
  }

  v30 = v29;
  v52 = v29;
  v53 = v26;
  v57 = v25;
  v61.origin.x = a2;
  v61.origin.y = a3;
  v61.size.width = v24;
  v61.size.height = a5;
  v31 = CGRectGetMinX(v61) + (v23 - v30) * 0.5;
  v32 = v60;
  v50 = v60 - v56;
  v51 = v31;
  v62.origin.x = a2;
  v62.origin.y = a3;
  v62.size.width = v24;
  v62.size.height = a5;
  MinX = CGRectGetMinX(v62);
  v54 = v32 + v55;
  v55 = v32 + v55 - v53;
  v56 = MinX + (v23 - v27) * 0.5;
  v63.origin.x = a2;
  v63.origin.y = a3;
  v47 = a3;
  v63.size.width = v24;
  v63.size.height = a5;
  v34 = CGRectGetWidth(v63) - v23 - *(v5 + 88);
  sub_10000C888((v5 + 184), *(v5 + 208));
  sub_100751254();
  v60 = v36;
  v38 = v37;
  if (v34 >= v35)
  {
    v39 = v35;
  }

  else
  {
    v39 = v34;
  }

  v64.origin.x = a2;
  v64.origin.y = a3;
  v64.size.width = v24;
  v64.size.height = a5;
  v40 = CGRectGetMaxX(v64) - v39;
  v41 = v54 - v38;
  v48 = v41;
  v49 = v39;
  sub_10000C888((v5 + 224), *(v5 + 248));
  sub_100751254();
  v46 = v43;
  if (v34 < v42)
  {
    v42 = v34;
  }

  if (*(v5 + 96) >= v42)
  {
    v44 = v42;
  }

  else
  {
    v44 = *(v5 + 96);
  }

  v54 = v44;
  v65.origin.x = a2;
  v65.origin.y = v47;
  v65.size.width = v24;
  v65.size.height = a5;
  v53 = CGRectGetMaxX(v65) - v44;
  v66.origin.x = v40;
  v66.origin.y = v41;
  v66.size.width = v39;
  v66.size.height = v60;
  CGRectGetMinY(v66);
  sub_10000C888((v5 + 104), *(v5 + 128));
  sub_100753AA4();
  sub_100751244();
  sub_10000C888((v5 + 144), *(v5 + 168));
  sub_100753AA4();
  sub_100751244();
  sub_10000C888((v5 + 184), *(v5 + 208));
  sub_100753AA4();
  sub_100751244();
  sub_10000C888((v5 + 224), *(v5 + 248));
  sub_100753AA4();
  return sub_100751244();
}

double sub_100690F5C(double a1)
{
  v2 = v1;
  sub_10000C888(v1, v1[3]);
  sub_100750574();
  sub_10000C888(v2 + 5, v2[8]);
  sub_100750574();
  sub_10000C888(v2 + 18, v2[21]);
  sub_100751254();
  return a1;
}

uint64_t sub_100691040(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B0E0();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, v4);
}

unint64_t sub_100691098()
{
  result = qword_1009447D8;
  if (!qword_1009447D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009447D8);
  }

  return result;
}

unint64_t sub_1006910F0()
{
  result = qword_1009447E0;
  if (!qword_1009447E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009447E0);
  }

  return result;
}

void sub_10069119C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, id a6, void *a7, char a8)
{
  v14 = a5;
  if (!a5)
  {
    if (!*(a1 + 16))
    {
      return;
    }

    v17 = a8;
    v18 = sub_100415ADC(NSFontAttributeName);
    if ((v19 & 1) == 0)
    {
      return;
    }

    sub_10000C5B4(*(a1 + 56) + 32 * v18, v33);
    sub_100016C60(0, &qword_100923AB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v14 = v31;
    a5 = 0;
    a8 = v17;
    if (!v31)
    {
      return;
    }
  }

  v29 = a8;
  v15 = a5;
  v16 = [v14 fontDescriptor];
  if ([v16 objectForKey:UIFontDescriptorTextStyleAttribute])
  {
    sub_100754314();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33[0] = v31;
  v33[1] = v32;
  if (*(&v32 + 1))
  {
    type metadata accessor for TextStyle(0);
    if (swift_dynamicCast())
    {
      v8 = v30;
      a6 = [objc_opt_self() preferredFontDescriptorWithTextStyle:v30 compatibleWithTraitCollection:a6];
      v20 = [a6 fontDescriptorWithSymbolicTraits:{objc_msgSend(v16, "symbolicTraits")}];
      v21 = objc_opt_self();
      v22 = "fontWithDescriptor:size:";
      v23 = 0.0;
      if (v20)
      {
        v24 = [v21 fontWithDescriptor:v20 size:0.0];

        v8 = a6;
        a6 = v20;
LABEL_18:

        v21 = v24;
        goto LABEL_19;
      }

LABEL_17:
      v24 = [v21 v22];
      goto LABEL_18;
    }
  }

  else
  {
    sub_1000277BC(v33);
  }

  v21 = [v14 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:a6];
  if (!v21)
  {
    __break(1u);
    goto LABEL_17;
  }

LABEL_19:
  v25 = v21;
  [a7 removeAttribute:NSFontAttributeName range:{a2, a3}];
  [a7 addAttribute:NSFontAttributeName value:v25 range:{a2, a3}];

  if (v29 & 1) != 0 && *(a1 + 16) && (v26 = sub_100415ADC(NSParagraphStyleAttributeName), (v27) && (sub_10000C5B4(*(a1 + 56) + 32 * v26, v33), sub_100016C60(0, &qword_10092A248), (swift_dynamicCast()))
  {
    if (sub_100753654())
    {
      v28 = sub_100753664();
      [a7 removeAttribute:NSParagraphStyleAttributeName range:{a2, a3}];
      [a7 addAttribute:NSParagraphStyleAttributeName value:v28 range:{a2, a3}];
    }

    else
    {
    }
  }

  else
  {
  }
}

void *sub_1006915A0(void *result, uint64_t a2, uint64_t a3, int a4, id a5, uint64_t a6)
{
  if (result[3])
  {
    return [a5 addAttribute:NSForegroundColorAttributeName value:a6 range:{a2, a3}];
  }

  return result;
}

unint64_t sub_1006915D8()
{
  v1 = ASKDeviceTypeGetCurrent();
  v2 = sub_100753094();
  v4 = v3;
  if (v2 == sub_100753094() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_100754754();

    if ((v7 & 1) == 0)
    {
      result = sub_100753804();
      if ((result & 1) == 0)
      {
        if (*(*(v0 + 88) + 16))
        {
          return sub_100412104(*(*(v0 + 96) + 16));
        }
      }
    }
  }

  return result;
}

uint64_t sub_100691734@<X0>(char a1@<W0>, double *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v103 = sub_100754724();
  v13 = *(v103 - 8);
  __chkstk_darwin(v103);
  v102 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100413748(_swiftEmptyArrayStorage);
  v109.origin.x = a3;
  v109.origin.y = a4;
  v109.size.width = a5;
  v109.size.height = a6;
  Width = CGRectGetWidth(v109);
  v17 = 0;
  v18 = *v6;
  v19 = *(v6 + 8);
  v106 = *(v6 + 16);
  v104 = *(v6 + 40);
  v20 = *(v6 + 48);
  if (Width <= 0.0)
  {
    goto LABEL_12;
  }

  v17 = 0;
  v21 = 0.0;
  while (1)
  {
    if (v18 + v21 <= Width)
    {
      v22 = __OFADD__(v17++, 1);
      if (v22)
      {
        break;
      }
    }

    v21 = v18 + *(v6 + 24) + v21;
    if (v21 >= Width)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_8:
  if (v104 < 2 || v17 <= 0)
  {
LABEL_12:
    sub_10000C518(&qword_1009447E8);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1007A5A00;
    *(v23 + 32) = *(v6 + 96);

    v24 = 1;
  }

  else
  {
    sub_10000C518(&qword_100926520);
    v23 = sub_1007532E4();
    v24 = *(v23 + 16);
    if (!v24)
    {

      v26 = 0.0;
      v27 = 0.0;
      v28 = 0.0;
      v29 = 0.0;
LABEL_65:
      *a2 = v15;
      a2[1] = v26;
      a2[2] = v27;
      a2[3] = v28;
      a2[4] = v29;
      return result;
    }
  }

  v30 = *(v23 + 32);
  v90 = v23 + 32;
  v31 = *(v30 + 16);
  if (v17 < v31)
  {
    v31 = v17;
  }

  v32 = v18 * v31;
  v96 = v31;
  v33 = v31 + -1.0;
  v105 = a6;
  v100 = a3;
  if (v33 >= 0.0)
  {
    v34 = v32 + v106 * v33;
    if ((v20 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_19:
    v111.origin.x = a3;
    v111.origin.y = a4;
    v111.size.width = a5;
    v111.size.height = a6;
    v38 = CGRectGetWidth(v111);
    v101 = v34;
    v39 = (v38 - v34) * 0.5;
    v112.origin.x = a3;
    v35 = a4;
    v112.origin.y = a4;
    v36 = a5;
    v112.size.width = a5;
    v112.size.height = a6;
    MinX = CGRectGetMinX(v112) + v39;
    goto LABEL_20;
  }

  v34 = v106 * 0.0 + v32;
  if (v20)
  {
    goto LABEL_19;
  }

LABEL_17:
  v101 = v34;
  v110.origin.x = a3;
  v35 = a4;
  v110.origin.y = a4;
  v36 = a5;
  v110.size.width = a5;
  v110.size.height = a6;
  MinX = CGRectGetMinX(v110);
LABEL_20:
  v97 = 0.0;
  if (a1)
  {
    v40 = MinX;
  }

  else
  {
    v40 = 0.0;
  }

  v41 = v104;
  if (v104 >= v24)
  {
    v41 = v24;
  }

  v42 = v19 * v41 + v106 * (v24 - 1);
  v43 = 0.0;
  if (a1)
  {
    v44 = v100;
    v113.origin.x = v100;
    v113.origin.y = v35;
    v113.size.width = v36;
    v45 = v105;
    v113.size.height = v105;
    v99 = (CGRectGetHeight(v113) - v42) * 0.5;
    v114.origin.x = v44;
    v114.origin.y = v35;
    v114.size.width = v36;
    v114.size.height = v45;
    v43 = CGRectGetMinY(v114) + v99;
  }

  v87 = a2;
  v89 = *(v23 + 16);
  if (!v89)
  {
    v94 = 0.0;
    v93 = 0.0;
    v95 = 0.0;
LABEL_64:

    a2 = v87;
    v29 = v97;
    v26 = v95;
    v28 = v94;
    v27 = v93;
    goto LABEL_65;
  }

  v46 = 0;
  LODWORD(v100) = enum case for FloatingPointRoundingRule.down(_:);
  v47 = (v13 + 104);
  v48 = (v13 + 8);
  v49 = 0.0;
  v92 = v96;
  v95 = 0.0;
  v93 = 0.0;
  v94 = 0.0;
  v97 = 0.0;
  v88 = v23;
LABEL_30:
  if (*&v49 < *(v23 + 16))
  {
    v50 = *(v90 + 8 * *&v49);
    *&v91 = *&v49 + 1;
    v51 = *(*&v50 + 16);
    v98 = *&v50 + 32;
    v99 = v50;

    v52 = 0;
    v105 = v49;
    while (1)
    {
      v53 = 0uLL;
      v54 = v51;
      v55 = 0uLL;
      v56 = 0uLL;
      if (v52 != v51)
      {
        if (v52 >= *(*&v99 + 16))
        {
          goto LABEL_68;
        }

        v54 = v52 + 1;
        *&v107[0] = v52;
        sub_10000C824(v98 + 40 * v52, v107 + 8);
        v53 = v107[0];
        v55 = v107[1];
        v56 = v107[2];
      }

      v108[0] = v53;
      v108[1] = v55;
      v108[2] = v56;
      if (!v56)
      {

        v49 = v91;
        v23 = v88;
        if (*&v91 == v89)
        {
          goto LABEL_64;
        }

        goto LABEL_30;
      }

      v57 = v53;
      v58 = v102;
      v59 = v103;
      (*v47)(v102, LODWORD(v100), v103);
      sub_100753D84();
      v61 = v60;
      v63 = v62;
      (*v48)(v58, v59);
      v115.origin.x = v61;
      v115.origin.y = v63;
      v115.size.width = v18;
      v115.size.height = v19;
      v120.origin.x = v40;
      v120.origin.y = v43;
      v120.size.width = v101;
      v120.size.height = v42;
      v64 = CGRectIntersectsRect(v115, v120);
      v65 = 0;
      if (*&v49 < v104 && v64)
      {
        if (v96 <= -9.22337204e18)
        {
          goto LABEL_69;
        }

        if (v96 >= 9.22337204e18)
        {
          goto LABEL_70;
        }

        if (v57 >= v92)
        {
          v65 = 0;
        }

        else
        {
          v116.origin.x = v61;
          v116.origin.y = v63;
          v116.size.width = v18;
          v116.size.height = v19;
          v66 = CGRectGetMinX(v116);
          v67 = v95;
          if (v66 < v95)
          {
            v67 = v66;
          }

          v95 = v67;
          v117.origin.x = v61;
          v117.origin.y = v63;
          v117.size.width = v18;
          v117.size.height = v19;
          MinY = CGRectGetMinY(v117);
          v69 = v93;
          if (MinY < v93)
          {
            v69 = MinY;
          }

          v93 = v69;
          v118.origin.x = v61;
          v118.origin.y = v63;
          v118.size.width = v18;
          v118.size.height = v19;
          MaxX = CGRectGetMaxX(v118);
          v71 = v94;
          if (v94 <= MaxX)
          {
            v71 = MaxX;
          }

          v94 = v71;
          v119.origin.x = v61;
          v119.origin.y = v63;
          v119.size.width = v18;
          v119.size.height = v19;
          MaxY = CGRectGetMaxY(v119);
          v73 = v97;
          if (v97 <= MaxY)
          {
            v73 = MaxY;
          }

          v97 = v73;
          v65 = 1;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v107[0] = v15;
      v75 = sub_100412104(v46);
      v77 = v15[2];
      v78 = (v76 & 1) == 0;
      v22 = __OFADD__(v77, v78);
      v79 = v77 + v78;
      if (v22)
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v80 = v76;
      if (v15[3] < v79)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_56;
      }

      v83 = v75;
      sub_100674BE0();
      v75 = v83;
      v15 = *&v107[0];
      if (v80)
      {
LABEL_57:
        v82 = v15[7] + 40 * v75;
        *v82 = v61;
        *(v82 + 8) = v63;
        *(v82 + 16) = v18;
        *(v82 + 24) = v19;
        *(v82 + 32) = v65;
        goto LABEL_61;
      }

LABEL_59:
      v15[(v75 >> 6) + 8] |= 1 << v75;
      *(v15[6] + 8 * v75) = v46;
      v84 = v15[7] + 40 * v75;
      *v84 = v61;
      *(v84 + 8) = v63;
      *(v84 + 16) = v18;
      *(v84 + 24) = v19;
      *(v84 + 32) = v65;
      v85 = v15[2];
      v22 = __OFADD__(v85, 1);
      v86 = v85 + 1;
      if (v22)
      {
        goto LABEL_71;
      }

      v15[2] = v86;
LABEL_61:
      v49 = v105;
      if (__OFADD__(v46, 1))
      {
        goto LABEL_67;
      }

      sub_10000C620(v108 + 8);
      ++v46;
      v52 = v54;
    }

    sub_10066FDF8(v79, isUniquelyReferenced_nonNull_native);
    v75 = sub_100412104(v46);
    if ((v80 & 1) != (v81 & 1))
    {
      goto LABEL_73;
    }

LABEL_56:
    v15 = *&v107[0];
    if (v80)
    {
      goto LABEL_57;
    }

    goto LABEL_59;
  }

LABEL_72:
  __break(1u);
LABEL_73:
  result = sub_1007547B4();
  __break(1u);
  return result;
}

void sub_100691FC4(char a1@<W0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v13 = sub_100413748(_swiftEmptyArrayStorage);
  v14 = ASKDeviceTypeGetCurrent();
  v15 = sub_100753094();
  v17 = v16;
  if (v15 == sub_100753094() && v17 == v18)
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_100754754();
  }

  v71.origin.x = a3;
  v71.origin.y = a4;
  v71.size.width = a5;
  v71.size.height = a6;
  Width = CGRectGetWidth(v71);
  v22 = *(v6 + 16);
  v23 = v22;
  if ((v20 & 1) == 0)
  {
    v23 = *(v6 + 24);
  }

  v24 = *v6;
  v25 = *(v6 + 8);
  v26 = 0;
  if (Width > 0.0)
  {
    v27 = v24 + v23;
    v28 = 0.0;
    while (1)
    {
      if (v24 + v28 <= Width)
      {
        v29 = __OFADD__(v26++, 1);
        if (v29)
        {
          break;
        }
      }

      v28 = v27 + v28;
      if (v28 >= Width)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

LABEL_16:
  v30 = *(v6 + 96);
  v31 = *(v30 + 16);
  if (v31 >= v26)
  {
    v32 = v26;
  }

  else
  {
    v32 = *(v30 + 16);
  }

  v33 = v32 - 1;
  if (__OFSUB__(v32, 1))
  {
    goto LABEL_59;
  }

  if (v33 <= 0)
  {
    v68 = 0.0;
    if ((v20 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_24:
    v68 = v22;
    goto LABEL_25;
  }

  v72.origin.x = a3;
  v72.origin.y = a4;
  v72.size.width = a5;
  v72.size.height = a6;
  v34 = CGRectGetWidth(v72);
  if (v20)
  {
    goto LABEL_24;
  }

  v68 = (v34 - v24 * v32) / v33;
LABEL_25:
  v73.origin.x = a3;
  v73.origin.y = a4;
  v73.size.width = a5;
  v73.size.height = a6;
  MinX = CGRectGetMinX(v73);
  v36 = 0.0;
  v37 = a5;
  v38 = 0.0;
  if (a1)
  {
    v39 = a3;
    v40 = a4;
    v41 = a6;
    v38 = floor(CGRectGetMidY(*(&v37 - 2)) + v25 * -0.5);
  }

  v42 = 0;
  v43 = 0.0;
  v44 = 0.0;
  v45 = 0.0;
  while (1)
  {
    v47 = 0uLL;
    v48 = v31;
    v49 = 0uLL;
    v50 = 0uLL;
    if (v42 != v31)
    {
      if (v42 >= v31)
      {
        goto LABEL_56;
      }

      v48 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        goto LABEL_57;
      }

      *&v69[0] = v42;
      sub_10000C824(v30 + 32 + 40 * v42, v69 + 8);
      v47 = v69[0];
      v49 = v69[1];
      v50 = v69[2];
    }

    v70[0] = v47;
    v70[1] = v49;
    v70[2] = v50;
    if (!v50)
    {
      *a2 = v13;
      *(a2 + 8) = v45;
      *(a2 + 16) = v44;
      *(a2 + 24) = v43;
      *(a2 + 32) = v36;
      return;
    }

    v51 = v47;
    if (v47 < v26)
    {
      v75.origin.x = MinX;
      v75.origin.y = v38;
      v75.size.width = v24;
      v75.size.height = v25;
      v52 = CGRectGetMinX(v75);
      if (v52 < v45)
      {
        v45 = v52;
      }

      v76.origin.x = MinX;
      v76.origin.y = v38;
      v76.size.width = v24;
      v76.size.height = v25;
      MinY = CGRectGetMinY(v76);
      if (MinY < v44)
      {
        v44 = MinY;
      }

      v77.origin.x = MinX;
      v77.origin.y = v38;
      v77.size.width = v24;
      v77.size.height = v25;
      MaxX = CGRectGetMaxX(v77);
      if (v43 <= MaxX)
      {
        v43 = MaxX;
      }

      v78.origin.x = MinX;
      v78.origin.y = v38;
      v78.size.width = v24;
      v78.size.height = v25;
      MaxY = CGRectGetMaxY(v78);
      if (v36 <= MaxY)
      {
        v36 = MaxY;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v69[0] = v13;
    v57 = sub_100412104(v51);
    v59 = v13[2];
    v60 = (v58 & 1) == 0;
    v29 = __OFADD__(v59, v60);
    v61 = v59 + v60;
    if (v29)
    {
      break;
    }

    v62 = v58;
    if (v13[3] < v61)
    {
      sub_10066FDF8(v61, isUniquelyReferenced_nonNull_native);
      v57 = sub_100412104(v51);
      if ((v62 & 1) != (v63 & 1))
      {
        goto LABEL_60;
      }

LABEL_49:
      if (v62)
      {
        goto LABEL_28;
      }

      goto LABEL_50;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_49;
    }

    v67 = v57;
    sub_100674BE0();
    v57 = v67;
    v13 = *&v69[0];
    if (v62)
    {
LABEL_28:
      v46 = v13[7] + 40 * v57;
      *v46 = MinX;
      *(v46 + 8) = v38;
      *(v46 + 16) = v24;
      *(v46 + 24) = v25;
      *(v46 + 32) = v51 < v26;
      goto LABEL_29;
    }

LABEL_50:
    v13[(v57 >> 6) + 8] |= 1 << v57;
    *(v13[6] + 8 * v57) = v51;
    v64 = v13[7] + 40 * v57;
    *v64 = MinX;
    *(v64 + 8) = v38;
    *(v64 + 16) = v24;
    *(v64 + 24) = v25;
    *(v64 + 32) = v51 < v26;
    v65 = v13[2];
    v29 = __OFADD__(v65, 1);
    v66 = v65 + 1;
    if (v29)
    {
      goto LABEL_58;
    }

    v13[2] = v66;
LABEL_29:
    v74.origin.x = MinX;
    v74.origin.y = v38;
    v74.size.width = v24;
    v74.size.height = v25;
    MinX = v68 + CGRectGetMaxX(v74);
    sub_10000C620(v70 + 8);
    v42 = v48;
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  sub_1007547B4();
  __break(1u);
}

void sub_10069242C(void *a1)
{
  v2 = v1;
  v4 = [a1 traitCollection];
  sub_1006915D8();

  sub_100753B14();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [a1 traitCollection];
  LOBYTE(v4) = sub_100753804();

  if (v4)
  {
    sub_100691734(1, v31, v6, v8, v10, v12);
  }

  else
  {
    sub_100691FC4(1, v31, v6, v8, v10, v12);
  }

  v14 = 0;
  v23 = v31[4];
  v24 = v31[3];
  v15 = v31[0];
  v16 = *(v2 + 96);
  v17 = *(v16 + 16);
  v25 = v16 + 32;
  while (1)
  {
    v18 = 0uLL;
    v19 = v17;
    v20 = 0uLL;
    v21 = 0uLL;
    if (v14 == v17)
    {
      goto LABEL_10;
    }

    if (v14 >= v17)
    {
      break;
    }

    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_17;
    }

    *&v27 = v14;
    sub_10000C824(v25 + 40 * v14, &v27 + 8);
    v18 = v27;
    v20 = v28;
    v21 = v29;
LABEL_10:
    v30[0] = v18;
    v30[1] = v20;
    v30[2] = v21;
    if (!v21)
    {

      sub_100753B54();
      sub_100750314();
      return;
    }

    v26 = v18;
    sub_100012160((v30 + 8), &v27);
    sub_10000C888(&v27, *(&v28 + 1));
    v22 = [a1 traitCollection];
    if (*(*&v15 + 16))
    {
      sub_100412104(v26);
    }

    sub_100753AA4();

    sub_100750394();
    sub_10000C888(&v27, *(&v28 + 1));
    if (*(*&v15 + 16))
    {
      sub_100412104(v26);
    }

    sub_1007503B4();
    sub_10000C620(&v27);
    v14 = v19;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_1006927BC(void *a1)
{
  v3 = v1[5];
  v6[4] = v1[4];
  v7[0] = v3;
  *(v7 + 10) = *(v1 + 90);
  v4 = v1[1];
  v6[0] = *v1;
  v6[1] = v4;
  v5 = v1[3];
  v6[2] = v1[2];
  v6[3] = v5;
  swift_getObjectType();
  sub_10069287C(a1, v6);
}

uint64_t sub_100692830@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v10 = v1[2];
  v11 = v2;
  v4 = v1[5];
  v12 = v1[4];
  v3 = v12;
  v13 = v4;
  v6 = v1[1];
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_100692B7C(v9, &v8);
}

void sub_10069287C(void *a1, uint64_t a2)
{
  v4 = [a1 traitCollection];
  sub_1006915D8();

  sub_100753BA4();
  v6 = v5;
  v8 = v7;
  v9 = [a1 traitCollection];
  LOBYTE(v4) = sub_100753804();

  if (v4)
  {
    sub_100691734(0, v12, 0.0, 0.0, v6, v8);
  }

  else
  {
    sub_100691FC4(0, v12, 0.0, 0.0, v6, v8);
  }

  sub_100692A5C(v12);
  sub_100753BC4();
  v10 = [a1 traitCollection];
  v11 = v10;
  if ((*(a2 + 105) & 1) == 0 && *(a2 + 104) == 6)
  {
    sub_100753804();
  }

  else
  {
  }
}

__n128 sub_100692A9C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100692AC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 106))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100692B10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 106) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 106) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100692BB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100692BFC(uint64_t result, int a2, int a3)
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
      *(result + 88) = (a2 - 1);
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

uint64_t sub_100692C64()
{
  v0 = sub_100750534();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v24 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100743B04();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&unk_1009249B0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  sub_100039C50(v11, qword_100982D18);
  v12 = sub_10000D0FC(v11, qword_100982D18);
  v30 = &type metadata for Double;
  v31 = &protocol witness table for Double;
  *&v29 = 0x4030000000000000;
  *&v28 = 0x4038000000000000;
  *&v25 = 0x4034000000000000;
  sub_10000C518(&unk_100923AE0);
  sub_100743494();
  sub_1007434C4();
  (*(v8 + 8))(v10, v7);
  (*(v4 + 104))(v6, enum case for SystemImage.chevronForward(_:), v3);
  v13 = sub_100743AE4();
  (*(v4 + 8))(v6, v3);
  v14 = [objc_opt_self() secondaryLabelColor];
  v27 = &protocol witness table for Double;
  v26 = &type metadata for Double;
  *&v25 = 0x4010000000000000;
  v15 = objc_opt_self();
  v16 = UIFontTextStyleFootnote;
  v17 = [v15 configurationWithTextStyle:v16 scale:1];

  if (qword_1009213E8 != -1)
  {
    swift_once();
  }

  v18 = sub_10000D0FC(v0, qword_1009818F0);
  v19 = v24;
  (*(v1 + 16))(v24, v18, v0);
  sub_100016C60(0, &qword_100923500);
  v20 = sub_100753DD4();
  sub_100016C60(0, &qword_100922300);
  sub_100753C54();
  v22 = v21;
  sub_100012160(&v29, v12);
  sub_100012160(&v28, (v12 + 40));
  *(v12 + 10) = v13;
  *(v12 + 11) = v14;
  sub_100012160(&v25, (v12 + 96));
  *(v12 + 17) = v17;
  result = (*(v1 + 32))(&v12[v11[10]], v19, v0);
  *&v12[v11[11]] = 2;
  *&v12[v11[12]] = v20;
  *&v12[v11[13]] = v22;
  return result;
}

uint64_t sub_1006930C0()
{
  v0 = sub_100750534();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100743B04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  sub_100039C50(v8, qword_100982D30);
  v9 = sub_10000D0FC(v8, qword_100982D30);
  v10 = sub_1007507D4();
  v29 = v10;
  v30 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v28);
  sub_1007507C4();
  v26 = v10;
  v27 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v25);
  sub_1007507C4();
  (*(v5 + 104))(v7, enum case for SystemImage.arrowUpForward(_:), v4);
  v21 = sub_100743AE4();
  (*(v5 + 8))(v7, v4);
  v11 = objc_opt_self();
  v12 = [v11 secondaryLabelColor];
  v23 = &type metadata for Double;
  v24 = &protocol witness table for Double;
  *&v22 = 0x4018000000000000;
  v13 = objc_opt_self();
  v14 = UIFontTextStyleFootnote;
  v15 = [v13 configurationWithTextStyle:v14 scale:1];

  if (qword_1009213E8 != -1)
  {
    swift_once();
  }

  v16 = sub_10000D0FC(v0, qword_1009818F0);
  (*(v1 + 16))(v3, v16, v0);
  v17 = [v11 secondaryLabelColor];
  sub_100016C60(0, &qword_100922300);
  sub_100753C54();
  v19 = v18;
  sub_100012160(&v28, v9);
  sub_100012160(&v25, (v9 + 40));
  *(v9 + 10) = v21;
  *(v9 + 11) = v12;
  sub_100012160(&v22, (v9 + 96));
  *(v9 + 17) = v15;
  result = (*(v1 + 32))(&v9[v8[10]], v3, v0);
  *&v9[v8[11]] = 2;
  *&v9[v8[12]] = v17;
  *&v9[v8[13]] = v19;
  return result;
}

uint64_t sub_10069344C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v65 = a2;
  v5 = sub_1007507B4();
  v63 = *(v5 - 8);
  v64 = v5;
  __chkstk_darwin(v5);
  v62 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_100751144();
  v7 = *(v71 - 8);
  __chkstk_darwin(v71);
  v70 = (&v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v69 = (&v54 - v10);
  __chkstk_darwin(v11);
  v68 = (&v54 - v12);
  __chkstk_darwin(v13);
  v67 = (&v54 - v14);
  v15 = sub_100750A34();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  __chkstk_darwin(v17);
  v19 = &v54 - v18;
  __chkstk_darwin(v20);
  v23 = &v54 - v22;
  v24 = *(v3 + 120);
  v66 = v3;
  if (v24 == 1)
  {
    v58 = v21;
    sub_100750A04();
    sub_10000C888(v3, *(v3 + 24));
    sub_100750434();
    sub_10069607C(v3, v73);
    v25 = swift_allocObject();
    memcpy((v25 + 16), v73, 0x108uLL);
    v26 = v58;
    sub_100750A14();

    sub_10000C620(v74);
    v27 = *(v16 + 8);
    v56 = v16 + 8;
    v57 = v27;
    v27(v26, v15);
    sub_10000C824(v3 + 40, v74);
    v28 = *(v3 + 248);
    v29 = v67;
    v67[3] = &type metadata for CGFloat;
    v29[4] = &protocol witness table for CGFloat;
    *v29 = v28;
    v59 = v23;
    v30 = v15;
    v31 = *(v7 + 104);
    v61 = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v32 = v71;
    v31(v29, enum case for Resize.Rule.replaced(_:), v71);
    v33 = enum case for Resize.Rule.unchanged(_:);
    v31(v68, enum case for Resize.Rule.unchanged(_:), v32);
    v55 = v19;
    v31(v69, v33, v32);
    v60 = v16;
    v31(v70, v33, v32);
    v73[3] = sub_100751154();
    v73[4] = &protocol witness table for Resize;
    sub_10000D134(v73);
    v34 = v66;
    sub_100751164();
    v35 = v55;
    sub_100750A14();
    v36 = v57;
    v57(v35, v30);
    sub_10000C620(v73);
    v37 = v58;
    sub_100750A04();
    sub_10069607C(v34, v73);
    v38 = swift_allocObject();
    memcpy((v38 + 16), v73, 0x108uLL);
    sub_100750A14();

    v36(v37, v30);
    v73[3] = v30;
    v73[4] = &protocol witness table for HorizontalStack;
    v39 = sub_10000D134(v73);
    v40 = v59;
    (*(v60 + 16))(v39, v59, v30);
    v75 = v30;
    v76 = &protocol witness table for HorizontalStack;
    sub_10000D134(v74);
    sub_100750A14();
    v41 = v35;
    v42 = v66;
    v36(v41, v30);
    v36(v40, v30);
  }

  else
  {
    *(swift_allocObject() + 16) = a1;
    sub_100750A04();
    sub_10000C888(v3, *(v3 + 24));
    sub_100750434();
    sub_10069607C(v3, v73);
    v43 = swift_allocObject();
    memcpy((v43 + 16), v73, 0x108uLL);
    sub_100750A14();

    sub_10000C620(v74);
    v59 = *(v16 + 8);
    v60 = v16 + 8;
    v59(v19, v15);
    sub_10000C824(v3 + 40, v74);
    v44 = *(v3 + 248);
    v45 = v67;
    v67[3] = &type metadata for CGFloat;
    v45[4] = &protocol witness table for CGFloat;
    *v45 = v44;
    v58 = v15;
    v31 = *(v7 + 104);
    v61 = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v46 = v71;
    v31(v45, enum case for Resize.Rule.replaced(_:), v71);
    v33 = enum case for Resize.Rule.unchanged(_:);
    v31(v68, enum case for Resize.Rule.unchanged(_:), v46);
    v31(v69, v33, v46);
    v31(v70, v33, v46);
    v73[3] = sub_100751154();
    v73[4] = &protocol witness table for Resize;
    sub_10000D134(v73);
    v42 = v66;
    sub_100751164();
    v47 = v58;
    v75 = v58;
    v76 = &protocol witness table for HorizontalStack;
    sub_10000D134(v74);
    sub_100750A14();
    v59(v23, v47);
  }

  sub_10000C620(v73);
  v48 = v62;
  sub_100750794();
  sub_10069607C(v42, v73);
  v49 = swift_allocObject();
  memcpy((v49 + 16), v73, 0x108uLL);
  v50 = v64;
  v72[3] = v64;
  v72[4] = &protocol witness table for VerticalStack;
  sub_10000D134(v72);
  sub_1007507A4();

  (*(v63 + 8))(v48, v50);
  v51 = v67;
  *v67 = sub_1000B2740;
  v51[1] = 0;
  v52 = v71;
  v31(v51, enum case for Resize.Rule.recalculated(_:), v71);
  v31(v68, v33, v52);
  v31(v69, v33, v52);
  v31(v70, v33, v52);
  sub_100751164();
  return sub_10000C620(v74);
}

uint64_t sub_100693D88(uint64_t a1, uint64_t a2)
{
  sub_10000C824(a2 + 128, v4);
  sub_100750714();
  sub_10000C824(a2 + 168, v4);
  return sub_100750724();
}

double sub_100693DDC()
{
  v1 = sub_100751154();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C888(v0, v0[3]);
  sub_100750434();
  sub_10000C888(v18, v18[3]);
  sub_100751254();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_10000C620(v18);
  sub_10000C888(v0, v0[3]);
  v19.var0 = v6;
  v19.var1 = v8;
  v19.var2 = v10;
  v19.var3 = v12;
  if (sub_100750874(v19) > 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 3;
  }

  sub_10069344C(v13, v4);
  sub_100751254();
  v15 = v14;
  (*(v2 + 8))(v4, v1);
  return v15;
}

uint64_t sub_100693FD0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = sub_100751154();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C888(v4, v4[3]);
  sub_100750434();
  sub_10000C888(v24, v24[3]);
  sub_100751254();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_10000C620(v24);
  sub_10000C888(v4, v4[3]);
  v25.var0 = v14;
  v25.var1 = v16;
  v25.var2 = v18;
  v25.var3 = v20;
  if (sub_100750874(v25) > 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = 3;
  }

  if (sub_100750A24())
  {
    v26.origin.x = a1;
    v26.origin.y = a2;
    v26.size.width = a3;
    v26.size.height = a4;
    CGRectGetWidth(v26);
    v27.origin.x = a1;
    v27.origin.y = a2;
    v27.size.width = a3;
    v27.size.height = a4;
    CGRectGetHeight(v27);
  }

  sub_10069344C(v21, v12);
  sub_100751244();
  return (*(v10 + 8))(v12, v9);
}

id sub_100694214()
{
  type metadata accessor for ShelfFooterTitleButton(0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  qword_1009447F0 = result;
  return result;
}

char *sub_1006943B4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v12 = sub_100754074();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000C518(&qword_100932470);
  __chkstk_darwin(v16 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v32 - v20;
  v22 = OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_leadingIconView;
  *&v5[v22] = [objc_allocWithZone(UIImageView) init];
  v5[OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_hasLeadingIcon] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_leadingIconHeight] = 0;
  sub_10059C530(a1, &v5[OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_style]);
  v32.receiver = v5;
  v32.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v32, "initWithFrame:", a2, a3, a4, a5);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  sub_1007541A4();
  v28 = sub_1007541F4();
  v29 = *(v28 - 8);
  (*(v29 + 56))(v21, 0, 1, v28);
  sub_100754224();
  sub_100754214();
  if ((*(v29 + 48))(v18, 1, v28))
  {
    sub_10003BB1C(v18, v21);
    sub_100754224();
    sub_10003BB8C(v18);
  }

  else
  {
    (*(v13 + 104))(v15, enum case for UIButton.Configuration.CornerStyle.fixed(_:), v12);
    sub_100754084();
    sub_100754224();
  }

  v30 = [v27 layer];
  [v30 setAllowsGroupBlending:0];

  [v27 addSubview:*&v27[OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_leadingIconView]];
  sub_10059C5F8(a1);
  return v27;
}

id sub_1006947AC()
{
  v1 = v0;
  v2 = sub_10000C518(&qword_100932470);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  sub_100754214();
  v8 = sub_1007541F4();
  if ((*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    sub_10003BB1C(v7, v4);
    sub_100754224();
    sub_10003BB8C(v7);
  }

  else
  {
    v9 = &v0[OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_style];
    swift_beginAccess();
    v10 = v9[10];
    sub_100754194();
    sub_100754224();
  }

  v11 = [v1 titleLabel];
  if (v11)
  {
    v12 = v11;
    v13 = &v1[OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_style];
    swift_beginAccess();
    [v12 setNumberOfLines:*&v13[*(type metadata accessor for ShelfFooterTitleButton.Style(0) + 44)]];
  }

  v14 = &v1[OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_style];
  swift_beginAccess();
  [v1 setTintColor:*&v14[*(type metadata accessor for ShelfFooterTitleButton.Style(0) + 48)]];
  return [v1 setNeedsUpdateConfiguration];
}

id sub_1006949AC@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 titleLabel];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 imageView];
    if (v5)
    {
      v6 = v5;
      a1[3] = &type metadata for ShelfFooterTitleButton.Layout;
      a1[4] = sub_100695C8C();
      v7 = swift_allocObject();
      *a1 = v7;
      *(v7 + 40) = sub_100016C60(0, &qword_1009236D0);
      *(v7 + 48) = &protocol witness table for UILabel;
      *(v7 + 16) = v4;
      v8 = sub_100016C60(0, &qword_10092BFC0);
      *(v7 + 80) = v8;
      *(v7 + 88) = &protocol witness table for UIImageView;
      *(v7 + 56) = v6;
      v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_leadingIconView];
      *(v7 + 120) = v8;
      *(v7 + 128) = &protocol witness table for UIImageView;
      *(v7 + 96) = v9;
      v10 = v1[OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_hasLeadingIcon];
      v11 = &v1[OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_style];
      swift_beginAccess();
      sub_10000C824(v11, v7 + 144);
      sub_10000C824(v11 + 40, v7 + 184);
      sub_10000C824(v11 + 96, v7 + 224);
      v12 = v9;
      result = [v6 lastBaselineFromBottom];
      v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_leadingIconHeight];
      *(v7 + 136) = v10;
      *(v7 + 264) = v15;
      *(v7 + 272) = v14;
      return result;
    }
  }

  a1[3] = sub_100750A34();
  a1[4] = &protocol witness table for HorizontalStack;
  sub_10000D134(a1);
  return sub_100750A04();
}

uint64_t sub_100694B64()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10000C518(&qword_1009440A0);
  __chkstk_darwin(v3 - 8);
  v64 = v63 - v4;
  v5 = sub_10000C518(&unk_100944920);
  __chkstk_darwin(v5 - 8);
  v7 = v63 - v6;
  v8 = sub_10000C518(&qword_100932470);
  __chkstk_darwin(v8 - 8);
  v73 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v70 = v63 - v11;
  __chkstk_darwin(v12);
  v69 = v63 - v13;
  __chkstk_darwin(v14);
  v16 = v63 - v15;
  __chkstk_darwin(v17);
  v19 = v63 - v18;
  v20 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  v21 = v20 - 8;
  v66 = *(v20 - 8);
  __chkstk_darwin(v20);
  v67 = v22;
  v68 = v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v72 = v63 - v24;
  v25 = sub_100750534();
  v26 = *(v25 - 8);
  *&v27 = __chkstk_darwin(v25).n128_u64[0];
  v29 = v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75.receiver = v1;
  v75.super_class = ObjectType;
  objc_msgSendSuper2(&v75, "updateConfiguration", v27);
  sub_100016C60(0, &qword_100923AB0);
  v30 = v1 + OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_style;
  swift_beginAccess();
  (*(v26 + 16))(v29, v30 + *(v21 + 48), v25);
  v31 = [v1 traitCollection];
  v71 = sub_100753C14();

  (*(v26 + 8))(v29, v25);
  if ([v1 isHighlighted])
  {
    v65 = 1;
  }

  else
  {
    v65 = [v1 isSelected];
  }

  v32 = v72;
  sub_10059C530(v30, v72);
  sub_100754214();
  v33 = sub_1007541F4();
  v34 = *(v33 - 8);
  v35 = *(v34 + 48);
  v36 = v34 + 48;
  v37 = v35(v19, 1, v33);
  v38 = v70;
  if (v37)
  {
    sub_10003BB1C(v19, v73);
    sub_100754224();
    sub_10003BB8C(v19);
  }

  else
  {
    v63[0] = v19;
    v39 = v68;
    sub_10059C530(v32, v68);
    v40 = (*(v66 + 80) + 25) & ~*(v66 + 80);
    v41 = swift_allocObject();
    v63[1] = v36;
    v42 = v35;
    v43 = v38;
    v44 = v71;
    *(v41 + 16) = v71;
    *(v41 + 24) = v65;
    v45 = v41 + v40;
    v32 = v72;
    sub_10059C6FC(v39, v45);
    v46 = v44;
    v38 = v43;
    v35 = v42;
    sub_100751A04();
    v47 = sub_1007519F4();
    (*(*(v47 - 8) + 56))(v7, 0, 1, v47);
    sub_100754144();
    sub_100754224();
  }

  sub_100754214();
  if (v35(v16, 1, v33))
  {
    sub_10003BB1C(v16, v73);
    sub_100754224();
    sub_10003BB8C(v16);
  }

  else
  {
    v48 = v68;
    sub_10059C530(v32, v68);
    v49 = (*(v66 + 80) + 17) & ~*(v66 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = v65;
    sub_10059C6FC(v48, v50 + v49);
    v51 = v64;
    sub_100751804();
    v52 = sub_1007517F4();
    (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
    sub_100754134();
    sub_100754224();
  }

  v53 = v69;
  sub_100754214();
  if (v35(v53, 1, v33))
  {
    sub_10003BB1C(v53, v73);
    sub_100754224();
    sub_10003BB8C(v53);
  }

  else
  {
    v54 = *(v32 + 136);
    sub_100754024();
    sub_100754224();
  }

  v55 = [v1 imageView];
  if (v55)
  {
    v56 = v55;
    v57 = [v55 layer];

    v58 = [v1 traitCollection];
    [v58 userInterfaceStyle];

    sub_100753094();
    v59 = sub_100753064();

    [v57 setCompositingFilter:v59];
  }

  sub_100754214();
  if (v35(v38, 1, v33))
  {
    sub_10003BB1C(v38, v73);
    sub_100754224();

    sub_10059C5F8(v32);
    return sub_10003BB8C(v38);
  }

  else
  {
    v61 = [objc_opt_self() clearColor];
    v62 = sub_100754034();
    sub_1007515C4();
    v62(v74, 0);
    sub_100754224();

    return sub_10059C5F8(v32);
  }
}

uint64_t sub_1006953D4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1007410D4();
  (*(*(v10 - 8) + 16))(a5, a1, v10);
  sub_1000168F0();
  v11 = a2;
  sub_1007410E4();
  v12 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  v13 = *(a4 + *(v12 + 48));
  if (a3)
  {
    v14 = [v13 colorWithAlphaComponent:*(a4 + *(v12 + 52))];
  }

  else
  {
    v15 = v13;
  }

  sub_1002205EC();
  return sub_1007410E4();
}

id sub_1006954DC(uint64_t a1, char a2, uint64_t a3)
{
  v4 = *(a3 + 88);
  if (a2)
  {
    v5 = [*(a3 + 88) colorWithAlphaComponent:*(a3 + *(type metadata accessor for ShelfFooterTitleButton.Style(0) + 52))];

    return v5;
  }

  else
  {

    return v4;
  }
}

double sub_100695690(double a1, double a2)
{
  v13.receiver = v2;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "sizeThatFits:", a1, a2);
  v6 = v5;
  v7 = [v2 titleLabel];
  if (v7)
  {

    v8 = [v2 imageView];
    if (v8)
    {

      sub_1006949AC(v12);
      sub_10000C888(v12, v12[3]);
      [v2 layoutMargins];
      sub_100753BA4();
      v9 = [v2 traitCollection];
      sub_100751254();

      [v2 layoutMargins];
      sub_100753BC4();
      v6 = v10;
      sub_10000C620(v12);
    }
  }

  return v6;
}

uint64_t sub_1006958C4()
{
  result = type metadata accessor for ShelfFooterTitleButton.Style(319);
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

uint64_t sub_1006959B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100750534();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100695A70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100750534();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100695B14()
{
  sub_1001071F4();
  if (v0 <= 0x3F)
  {
    sub_100016C60(319, &qword_10092B280);
    if (v1 <= 0x3F)
    {
      sub_100016C60(319, &qword_100923500);
      if (v2 <= 0x3F)
      {
        sub_100695C24();
        if (v3 <= 0x3F)
        {
          sub_100750534();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100695C24()
{
  if (!qword_1009448B8)
  {
    sub_100016C60(255, &qword_1009448C0);
    v0 = sub_100754284();
    if (!v1)
    {
      atomic_store(v0, &qword_1009448B8);
    }
  }
}

unint64_t sub_100695C8C()
{
  result = qword_100944910;
  if (!qword_100944910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944910);
  }

  return result;
}

uint64_t sub_100695CE4()
{
  v1 = (type metadata accessor for ShelfFooterTitleButton.Style(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(*v1 + 64);
  sub_10000C620(v0 + v3);
  sub_10000C620(v0 + v3 + 40);

  sub_10000C620(v0 + v3 + 96);
  v5 = v1[12];
  v6 = sub_100750534();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

id sub_100695E08(uint64_t a1)
{
  v3 = *(type metadata accessor for ShelfFooterTitleButton.Style(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 17) & ~*(v3 + 80));

  return sub_1006954DC(a1, v4, v5);
}

uint64_t sub_100695E7C()
{
  v1 = (type metadata accessor for ShelfFooterTitleButton.Style(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 25) & ~v2;
  v4 = *(*v1 + 64);

  sub_10000C620(v0 + v3);
  sub_10000C620(v0 + v3 + 40);

  sub_10000C620(v0 + v3 + 96);
  v5 = v1[12];
  v6 = sub_100750534();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100695FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ShelfFooterTitleButton.Style(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 25) & ~*(v5 + 80));

  return sub_1006953D4(a1, v6, v7, v8, a2);
}

uint64_t sub_100696100()
{
  sub_10000C620(v0 + 16);
  sub_10000C620(v0 + 56);
  sub_10000C620(v0 + 96);
  sub_10000C620(v0 + 144);
  sub_10000C620(v0 + 184);
  sub_10000C620(v0 + 224);

  return _swift_deallocObject(v0, 280, 7);
}

double sub_100696238(uint64_t a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_100754724();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v75 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1007504F4();
  v74 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&unk_100928A40);
  *&v15 = __chkstk_darwin(v14 - 8).n128_u64[0];
  v82 = &v74 - v16;
  v88 = a5;
  [a5 pageMarginInsets];
  v99._object = 0x800000010076DF60;
  v99._countAndFlagsBits = 0xD000000000000010;
  v100._countAndFlagsBits = 0;
  v100._object = 0xE000000000000000;
  v17 = sub_1007458B4(v99, v100);
  v19 = sub_10017093C(v17, v18);
  v77 = v9;
  v78 = v8;
  v76 = v11;
  v83 = v13;
  if (v19 > 2)
  {
    if (v19 - 3 < 2)
    {
      if (qword_100920390 != -1)
      {
        swift_once();
      }

      v20 = &xmmword_10097DE88;
      goto LABEL_21;
    }

    if (v19 == 5)
    {
      if (qword_100920398 != -1)
      {
        swift_once();
      }

      v20 = &xmmword_10097DEE0;
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  if (!v19)
  {
LABEL_15:
    if (qword_100920378 != -1)
    {
      swift_once();
    }

    v20 = &xmmword_10097DD80;
    goto LABEL_21;
  }

  if (v19 == 1)
  {
    if (qword_100920380 != -1)
    {
      swift_once();
    }

    v20 = &xmmword_10097DDD8;
  }

  else
  {
    if (qword_100920388 != -1)
    {
      swift_once();
    }

    v20 = &xmmword_10097DE30;
  }

LABEL_21:
  v21 = v20[4];
  *&v97[16] = v20[3];
  *&v97[32] = v21;
  v98 = *(v20 + 10);
  v22 = v20[2];
  v96 = v20[1];
  *v97 = v22;
  v95 = *v20;
  v23 = *&v97[40];
  v24 = v98;
  v86 = *&v97[24];
  v87 = *&v97[8];
  v26 = *(&v96 + 1);
  v25 = v22;
  v28 = *(&v95 + 1);
  v27 = v96;
  v29 = v95;
  sub_100170CF0(&v95, v92);
  v92[0] = __PAIR128__(v28, v29);
  v92[1] = __PAIR128__(v26, v27);
  *&v93[0] = v25;
  *(v93 + 8) = v87;
  *(&v93[1] + 8) = v86;
  *(&v93[2] + 1) = v23;
  v94 = v24;
  v98 = v24;
  v95 = __PAIR128__(v28, v29);
  v96 = __PAIR128__(v26, v27);
  *v97 = v93[0];
  *&v97[16] = v93[1];
  *&v97[32] = v93[2];
  v30 = v88;
  [v88 pageMarginInsets];
  v31 = [objc_allocWithZone(type metadata accessor for QuotesLabel()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v85 = sub_100170988(&v95);

  *&v86 = a1;
  sub_10074E904();
  v33 = v32;
  v34 = sub_100016C60(0, &qword_100923AB0);
  if (qword_1009203B8 != -1)
  {
    swift_once();
  }

  v84 = sub_100750534();
  v35 = sub_10000D0FC(v84, qword_10097DF38);
  v36 = [v30 traitCollection];
  v81 = v35;
  v37 = sub_100753C14();

  sub_10000C518(&unk_100929CA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A6580;
  *(inited + 32) = NSParagraphStyleAttributeName;
  v39 = qword_100920138;
  v40 = NSParagraphStyleAttributeName;
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = [qword_10097D250 paragraphStyleWithBaseWritingDirection:-1];
  v42 = sub_100016C60(0, &qword_10092A248);
  *(inited + 40) = v41;
  *(inited + 64) = v42;
  *(inited + 72) = NSFontAttributeName;
  *(inited + 104) = v34;
  *(inited + 80) = v37;
  v43 = NSFontAttributeName;
  v80 = v37;
  sub_100413A18(inited);
  swift_setDeallocating();
  sub_10000C518(&unk_100923510);
  swift_arrayDestroy();
  v44 = objc_allocWithZone(NSMutableAttributedString);
  v45 = sub_100753064();
  type metadata accessor for Key(0);
  sub_10069740C(&qword_1009276F0, type metadata accessor for Key);
  v79 = v33;
  isa = sub_100752F34().super.isa;

  v47 = [v44 initWithString:v45 attributes:isa];

  *&v87 = v47;
  if (v85)
  {
    v48 = v85;
    sub_100413A18(_swiftEmptyArrayStorage);
    v49 = objc_allocWithZone(NSAttributedString);
    v50 = sub_100753064();
    v51 = sub_100752F34().super.isa;

    v52 = [v49 initWithString:v50 attributes:v51];

    [v87 appendAttributedString:v52];
    v53 = [objc_allocWithZone(NSTextAttachment) init];
    [v53 setImage:v48];
    [(UIImage *)v48 size];
    [v53 setBounds:{0.0, -v23, v54, v55}];
    v56 = [objc_opt_self() attributedStringWithAttachment:v53];
    [v87 appendAttributedString:v56];

    sub_100170D28(v92);
  }

  else
  {

    sub_100170D28(v92);
  }

  v57 = v84;
  v58 = *(v84 - 8);
  v59 = v82;
  (*(v58 + 16))(v82, v81, v84);
  (*(v58 + 56))(v59, 0, 1, v57);
  v60 = sub_10074F3F4();
  v90 = v60;
  v61 = sub_10069740C(&qword_10092AC70, &type metadata accessor for Feature);
  v91 = v61;
  v62 = sub_10000D134(v89);
  v63 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v64 = *(*(v60 - 8) + 104);
  v64(v62, enum case for Feature.measurement_with_labelplaceholder(_:), v60);
  sub_10074FC74();
  sub_10000C620(v89);
  v65 = v88;
  sub_10074CCA4();
  sub_10006A144(v59);
  if (qword_1009203C8 != -1)
  {
    swift_once();
  }

  v66 = sub_100750B04();
  sub_10000D0FC(v66, qword_10097DF68);
  sub_100750584();
  if (qword_1009203D0 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v66, qword_10097DF80);
  sub_100750554();
  v82 = [objc_allocWithZone(NSStringDrawingContext) init];
  [v82 setMaximumNumberOfLines:0];
  sub_10074E914();
  if (v67)
  {
    if (qword_1009203C0 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v84, qword_10097DF50);
    v90 = v60;
    v91 = v61;
    v68 = sub_10000D134(v89);
    v64(v68, v63, v60);
    sub_10074FC74();
    sub_10000C620(v89);
    v69 = v88;
    sub_10074CCB4();

    if (qword_1009203D8 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v66, qword_10097DF98);
    sub_100750584();
    v65 = v69;
    v70 = v83;
    v71 = &stru_1008F2000;
    if (qword_1009203E0 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v66, qword_10097DFB0);
    sub_100750554();
  }

  else
  {
    v70 = v83;
    v71 = &stru_1008F2000;
  }

  if (sub_10074E924())
  {
    sub_10074F2A4();
    sub_10074F2A4();
    sub_100750504();
    if ((sub_10074E8F4() & 1) == 0)
    {
      [v65 v71[109].name];
      [v65 v71[109].name];
    }

    sub_1007504C4();
    if (qword_1009203E8 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v66, qword_10097DFC8);
    v72 = v75;
    sub_1007502D4();
    sub_100750564();

    (*(v77 + 8))(v72, v78);
    (*(v74 + 8))(v70, v76);
  }

  else
  {
  }

  return a2;
}

id sub_100697040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v8 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - v9;
  v11 = sub_1007504F4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension23QuoteCollectionViewCell_quoteView];
  v16 = sub_10074E904();
  sub_10016E5F4(v16, v17);
  v18 = sub_10074E914();
  sub_10016ED68(v18, v19);
  v15[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_isFullWidthArtwork] = sub_10074E8F4() & 1;
  sub_10016F158();
  if (sub_10074E924())
  {
    sub_10074F2A4();
    sub_10074F2A4();
    sub_100750504();
    (*(v12 + 16))(v10, v14, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    v20 = OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_artworkAspectRatio;
    swift_beginAccess();
    sub_1005C4B2C(v10, &v15[v20]);
    swift_endAccess();
    [*&v15[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_artworkView] setHidden:0];
    [v15 setNeedsLayout];
    v21 = [v6 contentView];
    sub_100016C60(0, &qword_100922300);
    sub_1007477B4();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v40.origin.x = v23;
    v40.origin.y = v25;
    v40.size.width = v27;
    v40.size.height = v29;
    Width = CGRectGetWidth(v40);
    sub_1007504C4();
    v32 = v31;

    (*(v12 + 8))(v14, v11);
    v33 = &v6[OBJC_IVAR____TtC22SubscribePageExtension23QuoteCollectionViewCell_preferredArtworkSize];
    *v33 = Width;
    *(v33 + 1) = v32;
  }

  else
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    v34 = OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_artworkAspectRatio;
    swift_beginAccess();
    sub_1005C4B2C(v10, &v15[v34]);
    swift_endAccess();
    [*&v15[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_artworkView] setHidden:1];
    [v15 setNeedsLayout];
    v35 = &v6[OBJC_IVAR____TtC22SubscribePageExtension23QuoteCollectionViewCell_preferredArtworkSize];
    *v35 = 0;
    *(v35 + 1) = 0;
  }

  [a5 pageMarginInsets];
  v37 = v36;
  [a5 pageMarginInsets];
  return [v15 setLayoutMargins:{0.0, v37, 0.0}];
}

uint64_t sub_10069740C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100697454(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = a3;
  v11 = a2;
  v13 = sub_1007504F4();
  v3 = *(v13 - 8);
  __chkstk_darwin(v13);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074EB24();
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

    sub_10000C824(v15 + 40 * v9++, &v22);
LABEL_8:
    v20[0] = v22;
    v20[1] = v23;
    v21 = v24;
    if (!*(&v23 + 1))
    {
      return swift_bridgeObjectRelease_n();
    }

    sub_100012160(v20, v19);
    sub_10000C824(v19, v17);
    sub_10000C518(&qword_1009242A0);
    sub_10074E934();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v18 = 0;
    }

    result = sub_10000C620(v19);
    if (v18)
    {
      if (sub_10074E924())
      {
        sub_10074F2A4();
        sub_10074F2A4();
        sub_100750504();
        if ((sub_10074E8F4() & 1) == 0)
        {
          [v11 pageMarginInsets];
        }

        sub_1007504C4();
        sub_10074F374();
        sub_100744214();

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

uint64_t sub_1006977A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100746674();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100697820(uint64_t a1, uint64_t a2)
{
  v4 = sub_100746674();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1006978B4()
{
  result = sub_100746674();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10069793C@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = sub_100751E24();
  v3 = *(v2 - 8);
  v52 = v2;
  v53 = v3;
  __chkstk_darwin(v2);
  v51 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_100751B84();
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&qword_100944B58);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v42 - v9;
  v43 = sub_10000C518(&qword_100944B60);
  __chkstk_darwin(v43);
  v12 = v42 - v11;
  v13 = sub_10000C518(&qword_100944B68);
  v14 = *(v13 - 8);
  v47 = v13;
  v48 = v14;
  __chkstk_darwin(v13);
  v16 = v42 - v15;
  v17 = sub_10000C518(&qword_100944B70);
  v18 = *(v17 - 8);
  v49 = v17;
  v50 = v18;
  __chkstk_darwin(v17);
  v46 = v42 - v19;
  v56 = v1;
  sub_10000C518(&qword_100944B78);
  sub_10002DDC8(&qword_100944B80, &qword_100944B78);
  sub_100751ED4();
  sub_100751B74();
  sub_10002DDC8(&qword_100944B88, &qword_100944B58);
  v20 = v44;
  sub_100752044();
  (*(v45 + 8))(v6, v20);
  (*(v8 + 8))(v10, v7);
  v21 = sub_100751E54();
  v22 = v43;
  v12[*(v43 + 36)] = v21;
  v55 = v42[1];
  v23 = sub_10000C518(&qword_100944B90);
  v24 = sub_10069D014();
  v25 = sub_10000C724(&qword_100944BB0);
  v26 = sub_10002DDC8(&qword_100944BB8, &qword_100944BB0);
  v57 = v25;
  v58 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100752034();
  sub_10069D15C(v12);
  v28 = v51;
  sub_100751E14();
  v57 = v22;
  v58 = v23;
  v59 = v24;
  v60 = OpaqueTypeConformance2;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = v46;
  v31 = v47;
  v32 = v52;
  sub_100751FC4();
  v33 = v32;
  (*(v53 + 8))(v28, v32);
  v34 = v31;
  (*(v48 + 8))(v16, v31);
  v57 = sub_100746634();
  v58 = v35;
  sub_1000D5C0C();
  v36 = sub_100751F24();
  v38 = v37;
  LOBYTE(v31) = v39;
  v57 = v34;
  v58 = v33;
  v59 = v29;
  v60 = &protocol witness table for EnabledTextSelectability;
  swift_getOpaqueTypeConformance2();
  v40 = v49;
  sub_100751FE4();
  sub_1004A660C(v36, v38, v31 & 1);

  return (*(v50 + 8))(v30, v40);
}

uint64_t sub_100697FCC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for DebugMetricsEventDetailView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&qword_100944BD0);
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v45 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = v39 - v10;
  v11 = type metadata accessor for DebugMetricsEventDetailView.Summary(0);
  __chkstk_darwin(v11);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10000C518(&qword_100944BD8);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v39 - v16;
  v18 = sub_100746674();
  (*(*(v18 - 8) + 16))(v13, a1, v18);
  sub_100751B54();
  sub_10069D1CC(&qword_1009273E8, type metadata accessor for DebugMetricsEventDetailView.Summary);
  v48 = v17;
  sub_100752004();
  sub_10069D214(v13);
  v19 = sub_100746654();
  v20 = *(v19 + 16);
  if (!v20)
  {
    v21 = _swiftEmptyArrayStorage;
    goto LABEL_5;
  }

  v39[0] = v4;
  v39[1] = v5;
  v40 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100631124(v20, 0);
  v22 = sub_1007271D0(&v50, v21 + 4, v20, v19);

  sub_1001A8F34();
  if (v22 == v20)
  {
    v6 = v40;
    v4 = v39[0];
LABEL_5:
    v50 = v21;
    sub_1004537F4(&v50);

    swift_getKeyPath();
    sub_10069D270(a1, v6);
    v23 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v24 = swift_allocObject();
    sub_10069D3A0(v6, v24 + v23);
    sub_10000C518(&unk_100928A70);
    sub_10002DDC8(&qword_100944BE0, &unk_100928A70);
    sub_10069D484();
    v25 = v49;
    sub_1007520A4();
    v26 = v41;
    v27 = v42;
    v28 = *(v42 + 16);
    v29 = v44;
    v28(v41, v48, v44);
    v30 = v45;
    v31 = v46;
    v40 = *(v46 + 16);
    v32 = v25;
    v33 = v47;
    (v40)(v45, v32, v47);
    v34 = v43;
    v28(v43, v26, v29);
    v35 = sub_10000C518(&qword_100944BF0);
    (v40)(&v34[*(v35 + 48)], v30, v33);
    v36 = *(v31 + 8);
    v36(v49, v33);
    v37 = *(v27 + 8);
    v37(v48, v29);
    v36(v30, v33);
    return (v37)(v26, v29);
  }

  __break(1u);

  __break(1u);
  return result;
}

double sub_100698578@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];

  v5 = sub_100746654();
  if (*(v5 + 16) && (v6 = sub_1003861D0(v4, v3), (v7 & 1) != 0))
  {
    sub_10000C5B4(*(v5 + 56) + 32 * v6, &v10);
  }

  else
  {

    v10 = 0u;
    v11 = 0u;
  }

  *a2 = v4;
  *(a2 + 8) = v3;
  result = *&v10;
  v9 = v11;
  *(a2 + 16) = v10;
  *(a2 + 32) = v9;
  return result;
}

uint64_t sub_100698610(uint64_t a1)
{
  v2 = sub_100751DA4();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10000C518(&qword_100944BB0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100751D94();
  v9 = a1;
  sub_10000C518(&qword_100944BC0);
  sub_10002DDC8(&qword_100944BC8, &qword_100944BC0);
  sub_100751B34();
  sub_10002DDC8(&qword_100944BB8, &qword_100944BB0);
  sub_100751DB4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10069887C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100752054();
  *a1 = result;
  return result;
}

uint64_t sub_1006988BC()
{
  v0 = sub_100741304();
  v64 = *(v0 - 8);
  v65 = v0;
  __chkstk_darwin(v0);
  v63 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100741384();
  v61 = *(v2 - 8);
  v62 = v2;
  __chkstk_darwin(v2);
  v60 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100741364();
  v58 = *(v4 - 8);
  v59 = v4;
  __chkstk_darwin(v4);
  v57 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100741324();
  v55 = *(v6 - 8);
  v56 = v6;
  __chkstk_darwin(v6);
  v52 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100741344();
  v53 = *(v8 - 8);
  v54 = v8;
  __chkstk_darwin(v8);
  v51 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1007411D4();
  __chkstk_darwin(v10 - 8);
  v50 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1007416E4();
  __chkstk_darwin(v12 - 8);
  v49 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100741644();
  __chkstk_darwin(v14 - 8);
  v15 = sub_100741574();
  __chkstk_darwin(v15 - 8);
  v16 = sub_10000C518(&qword_100944B48);
  __chkstk_darwin(v16 - 8);
  v18 = &v45 - v17;
  v19 = sub_10000C518(&qword_100944B50);
  __chkstk_darwin(v19 - 8);
  v21 = &v45 - v20;
  v22 = sub_1007413B4();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v45 - v27;
  __chkstk_darwin(v29);
  v46 = &v45 - v30;
  __chkstk_darwin(v31);
  v47 = &v45 - v32;
  sub_100039C50(v33, qword_100944980);
  v48 = sub_10000D0FC(v22, qword_100944980);
  sub_1007412A4();
  v34 = sub_1007412B4();
  (*(*(v34 - 8) + 56))(v21, 0, 1, v34);
  sub_100741284();
  v35 = sub_100741294();
  (*(*(v35 - 8) + 56))(v18, 0, 1, v35);
  sub_100741524();
  sub_1007415F4();
  sub_1007416C4();
  sub_1007411C4();
  sub_1007412D4();
  v36 = v52;
  sub_100741314();
  v37 = v51;
  sub_100741334();
  (*(v55 + 8))(v36, v56);
  sub_1007412E4();
  (*(v53 + 8))(v37, v54);
  v38 = *(v23 + 8);
  v38(v25, v22);
  v39 = v57;
  sub_100741354();
  v40 = v46;
  sub_100741394();
  (*(v58 + 8))(v39, v59);
  v38(v28, v22);
  v41 = v60;
  sub_100741374();
  v42 = v47;
  sub_1007413A4();
  (*(v61 + 8))(v41, v62);
  v38(v40, v22);
  v43 = v63;
  sub_1007412F4();
  sub_1007412C4();
  (*(v64 + 8))(v43, v65);
  return (v38)(v42, v22);
}

uint64_t sub_100699038@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000C518(&qword_100944AB8);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - v4;
  v6 = sub_10000C518(&qword_100944AC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_10000C518(&qword_100944AC8);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  *v14 = sub_100751D14();
  *(v14 + 1) = 0x401C000000000000;
  v14[16] = 0;
  v15 = sub_10000C518(&qword_100944AD0);
  sub_1006993E0(v1, &v14[*(v15 + 44)]);
  sub_100746664();
  sub_1007529D4();
  v16 = sub_1007532D4();

  v17 = 0;
  KeyPath = 0;
  v19 = 0;
  if (v16)
  {
    sub_100752054();
    sub_100751D24();
    v20 = sub_100751D44();
    (*(*(v20 - 8) + 56))(v8, 0, 1, v20);
    v17 = sub_100752064();

    sub_10000C8CC(v8, &qword_100944AC0);
    v21 = sub_100751E64();
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
    v19 = sub_100751E74();
    sub_10000C8CC(v5, &qword_100944AB8);
    KeyPath = swift_getKeyPath();
  }

  sub_100016B4C(v14, v11, &qword_100944AC8);
  sub_100016B4C(v11, a1, &qword_100944AC8);
  v22 = sub_10000C518(&qword_100944AD8);
  v23 = a1 + *(v22 + 48);
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = (a1 + *(v22 + 64));
  sub_10069CD70(v17);
  sub_10069CDC0(v17);
  *v24 = v17;
  v24[1] = KeyPath;
  v24[2] = v19;
  sub_10000C8CC(v14, &qword_100944AC8);
  sub_10069CDC0(v17);
  return sub_10000C8CC(v11, &qword_100944AC8);
}

uint64_t sub_1006993E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = sub_10000C518(&qword_100944AE0);
  v34 = *(v31 - 8);
  __chkstk_darwin(v31);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v37 = sub_100751C94();
  LOBYTE(v54[0]) = 1;
  sub_100699840(v40);
  *(v39 + 7) = v40[0];
  *(&v39[1] + 7) = v40[1];
  *(&v39[2] + 7) = v41[0];
  v39[3] = *(v41 + 9);
  v36 = LOBYTE(v54[0]);
  v32 = sub_100751EC4();
  KeyPath = swift_getKeyPath();
  v54[0] = sub_100746614();
  swift_getKeyPath();
  sub_10000C518(&qword_100944AE8);
  sub_10000C518(&qword_100944AF0);
  sub_10002DDC8(&qword_100944AF8, &qword_100944AE8);
  sub_10069CE64();
  v30 = v7;
  sub_1007520A4();
  v29 = sub_100751C94();
  LOBYTE(v54[0]) = 1;
  sub_100699BD4(a1, v42);
  *&v38[7] = v42[0];
  *&v38[23] = v42[1];
  *&v38[39] = v42[2];
  *&v38[55] = v42[3];
  v8 = v54[0];
  v9 = v33;
  v10 = *(v34 + 16);
  v11 = v31;
  v10(v33, v7, v31);
  v43[0] = v37;
  v43[1] = 0;
  LOBYTE(v44[0]) = v36;
  *(v44 + 1) = v39[0];
  *(&v44[1] + 1) = v39[1];
  *(&v44[3] + 1) = v39[3];
  *(&v44[2] + 1) = v39[2];
  v12 = v32;
  *(&v44[4] + 1) = KeyPath;
  v45 = v32;
  v13 = v44[0];
  *a2 = v37;
  *(a2 + 16) = v13;
  v14 = v44[1];
  v15 = v44[2];
  v16 = v44[3];
  v17 = v44[4];
  *(a2 + 96) = v12;
  *(a2 + 64) = v16;
  *(a2 + 80) = v17;
  *(a2 + 32) = v14;
  *(a2 + 48) = v15;
  v18 = sub_10000C518(&qword_100944B28);
  v10((a2 + *(v18 + 48)), v9, v11);
  v19 = a2 + *(v18 + 64);
  v20 = v29;
  v46[0] = v29;
  v46[1] = 0;
  v47[0] = v8;
  *&v47[1] = *v38;
  *&v47[17] = *&v38[16];
  *&v47[33] = *&v38[32];
  *&v47[49] = *&v38[48];
  v21 = *&v38[63];
  *&v47[64] = *&v38[63];
  v22 = *v47;
  *v19 = v29;
  *(v19 + 16) = v22;
  v23 = *&v47[16];
  v24 = *&v47[32];
  v25 = *&v47[48];
  *(v19 + 80) = v21;
  *(v19 + 48) = v24;
  *(v19 + 64) = v25;
  *(v19 + 32) = v23;
  sub_100016B4C(v43, v54, &qword_100944B30);
  sub_100016B4C(v46, v54, &qword_100944B38);
  v26 = *(v34 + 8);
  v26(v30, v11);
  v48[0] = v20;
  v48[1] = 0;
  v49 = v8;
  v51 = *&v38[16];
  v52 = *&v38[32];
  *v53 = *&v38[48];
  *&v53[15] = *&v38[63];
  v50 = *v38;
  sub_10000C8CC(v48, &qword_100944B38);
  v26(v33, v11);
  v54[0] = v37;
  v54[1] = 0;
  v55 = v36;
  v56 = v39[0];
  v57 = v39[1];
  v58 = v39[2];
  v59 = v39[3];
  v60 = KeyPath;
  v61 = v32;
  return sub_10000C8CC(v54, &qword_100944B30);
}

uint64_t sub_100699840@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000C518(&qword_100944AC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  sub_1007465F4();
  sub_100752054();
  sub_100751D34();
  v5 = sub_100751D44();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = sub_100752064();

  sub_10000C8CC(v4, &qword_100944AC0);
  v18 = sub_100746634();
  v19 = v7;
  sub_1000D5C0C();
  v8 = sub_100751F24();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  KeyPath = swift_getKeyPath();
  v12 &= 1u;
  LOBYTE(v18) = v12;
  v20 = 0;
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10;
  *(a1 + 24) = v12;
  *(a1 + 32) = v14;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = 3;
  *(a1 + 56) = 0;

  sub_1004A65FC(v8, v10, v12);

  sub_1004A660C(v8, v10, v12);
}

uint64_t sub_100699A0C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_100751CD4();
  __chkstk_darwin(v10 - 8);
  if (a4)
  {
    sub_100751CC4();
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    sub_100751CB4(v25);
    v26._countAndFlagsBits = a1;
    v26._object = a2;
    sub_100751CA4(v26);
    v27._countAndFlagsBits = 8250;
    v27._object = 0xE200000000000000;
    sub_100751CB4(v27);
    v28._countAndFlagsBits = a3;
    v28._object = a4;
    sub_100751CA4(v28);
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    sub_100751CB4(v29);
    sub_100751CE4();
    v11 = sub_100751F14();
    v13 = v12;
    v15 = v14;
    sub_100751E94();
    v16 = sub_100751F04();
    a4 = v17;
    v19 = v18;
    v21 = v20;

    sub_1004A660C(v11, v13, v15 & 1);

    result = swift_getKeyPath();
    v23 = v19 & 1;
    v24 = 1;
  }

  else
  {
    v16 = 0;
    v23 = 0;
    v21 = 0;
    result = 0;
    v24 = 0;
  }

  *a5 = v16;
  *(a5 + 8) = a4;
  *(a5 + 16) = v23;
  *(a5 + 24) = v21;
  *(a5 + 32) = result;
  *(a5 + 40) = v24;
  *(a5 + 48) = 0;
  return result;
}

uint64_t sub_100699BD4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v55 = a2;
  v3 = sub_10000C518(&unk_100928740);
  __chkstk_darwin(v3 - 8);
  v5 = &v52 - v4;
  v6 = sub_100741454();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746624();
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    v54 = a1;
    (*(v7 + 32))(v9, v5, v6);
    v53 = v6;
    if (qword_100921CB8 != -1)
    {
      swift_once();
    }

    v36 = sub_1007413B4();
    sub_10000D0FC(v36, qword_100944980);
    sub_10069D1CC(&qword_100944B40, &type metadata accessor for Date.FormatStyle);
    sub_100741434();
    v56 = v58;
    v57 = v59;
    sub_1000D5C0C();
    v37 = sub_100751F24();
    v39 = v38;
    v52 = v9;
    v41 = v40;
    sub_100751EB4();
    v42 = sub_100751F04();
    v44 = v43;
    v46 = v45;

    sub_1004A660C(v37, v39, v41 & 1);

    LODWORD(v58) = sub_100751DC4();
    v10 = sub_100751EE4();
    v11 = v47;
    LOBYTE(v37) = v48;
    v13 = v49;
    sub_1004A660C(v42, v44, v46 & 1);

    (*(v7 + 8))(v52, v53);
    v12 = v37 & 1;
    sub_1004A65FC(v10, v11, v37 & 1);

    v14 = sub_100746644();
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_7:
    v26 = 0;
    v28 = 0;
    v35 = 0;
    v32 = 0;
    goto LABEL_8;
  }

  sub_10000C8CC(v5, &unk_100928740);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = sub_100746644();
  if (!v15)
  {
    goto LABEL_7;
  }

LABEL_3:
  v58 = v14;
  v59 = v15;
  sub_1000D5C0C();
  v16 = sub_100751F24();
  v18 = v17;
  v20 = v19;
  sub_100751EB4();
  v21 = sub_100751F04();
  v53 = v11;
  v54 = v10;
  v23 = v22;
  v25 = v24;
  v52 = v13;

  sub_1004A660C(v16, v18, v20 & 1);

  LODWORD(v58) = sub_100751DC4();
  v26 = sub_100751EE4();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v25 & 1;
  v34 = v23;
  v11 = v53;
  v10 = v54;
  sub_1004A660C(v21, v34, v33);
  v13 = v52;

  v35 = v30 & 1;
  sub_1004A65FC(v26, v28, v35);

LABEL_8:
  sub_1004A6A80(v10, v11, v12, v13);
  sub_1004A6A80(v26, v28, v35, v32);
  sub_1004A6AC4(v10, v11, v12, v13);
  sub_1004A6AC4(v26, v28, v35, v32);
  v50 = v55;
  *v55 = v10;
  v50[1] = v11;
  v50[2] = v12;
  v50[3] = v13;
  v50[4] = v26;
  v50[5] = v28;
  v50[6] = v35;
  v50[7] = v32;
  sub_1004A6AC4(v26, v28, v35, v32);
  return sub_1004A6AC4(v10, v11, v12, v13);
}

uint64_t sub_10069A0B8@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v35 = sub_10000C518(&qword_100944C08);
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v4 = v30 - v3;
  v36 = sub_10000C518(&qword_100944C10);
  __chkstk_darwin(v36);
  v38 = v30 - v5;
  v32 = sub_10000C518(&qword_100944C18);
  __chkstk_darwin(v32);
  v33 = v30 - v6;
  v37 = sub_10000C518(&qword_100944C20);
  __chkstk_darwin(v37);
  v34 = v30 - v7;
  v8 = sub_10000C518(&qword_100944C28);
  __chkstk_darwin(v8);
  v10 = v30 - v9;
  v11 = sub_10000C518(&qword_100944C30);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v30 - v13;
  v31 = sub_10000C518(&qword_100944C38);
  __chkstk_darwin(v31);
  v16 = v30 - v15;
  sub_100016B4C((v1 + 2), &v41, &unk_100923520);
  if (*(&v42[0] + 1))
  {
    sub_10000C518(&qword_100944C70);
    if (swift_dynamicCast())
    {
      v17 = v40;
      if (*(v40 + 16))
      {
        sub_10069D9F0(v1, &v41);
        v18 = swift_allocObject();
        v30[1] = v30;
        v19 = v42[0];
        *(v18 + 16) = v41;
        *(v18 + 32) = v19;
        *(v18 + 48) = v42[1];
        *(v18 + 64) = v17;
        __chkstk_darwin(v18);
        v30[-2] = v1;
        sub_10000C518(&qword_100944C78);
        sub_10069D8A8();
        sub_10069DAEC();
        sub_100751B94();
        (*(v12 + 16))(v10, v14, v11);
        swift_storeEnumTagMultiPayload();
        sub_10002DDC8(&qword_100944C50, &qword_100944C30);
        sub_100751D64();
        (*(v12 + 8))(v14, v11);
      }

      else
      {

        v27 = *v1;
        v28 = v1[1];
        sub_100016B4C((v1 + 2), v42, &unk_100923520);
        *&v41 = v27;
        *(&v41 + 1) = v28;
        sub_10069D700(&v41, v10);
        swift_storeEnumTagMultiPayload();
        sub_10002DDC8(&qword_100944C50, &qword_100944C30);
        sub_10069D8A8();

        sub_100751D64();
        sub_10069D8FC(&v41);
      }

      sub_100016B4C(v16, v33, &qword_100944C38);
      swift_storeEnumTagMultiPayload();
      sub_10069D7F0();
      sub_10002DDC8(&qword_100944C60, &qword_100944C08);
      v29 = v34;
      sub_100751D64();
      sub_100016B4C(v29, v38, &qword_100944C20);
      swift_storeEnumTagMultiPayload();
      sub_10069D738();
      sub_10069D8A8();
      sub_100751D64();
      sub_10000C8CC(v29, &qword_100944C20);
      return sub_10000C8CC(v16, &qword_100944C38);
    }
  }

  else
  {
    sub_10000C8CC(&v41, &unk_100923520);
  }

  sub_100016B4C((v1 + 2), &v41, &unk_100923520);
  if (*(&v42[0] + 1))
  {
    sub_10000C518(&qword_10092F1E8);
    if (swift_dynamicCast())
    {
      v20 = v40;
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      __chkstk_darwin(v21);
      v30[-2] = v1;
      sub_10000C518(&qword_100944BD0);
      sub_10069D8A8();
      sub_10069D96C();
      sub_100751B94();
      v22 = v35;
      (*(v2 + 16))(v33, v4, v35);
      swift_storeEnumTagMultiPayload();
      sub_10069D7F0();
      sub_10002DDC8(&qword_100944C60, &qword_100944C08);
      v23 = v34;
      sub_100751D64();
      sub_100016B4C(v23, v38, &qword_100944C20);
      swift_storeEnumTagMultiPayload();
      sub_10069D738();
      sub_100751D64();
      sub_10000C8CC(v23, &qword_100944C20);
      return (*(v2 + 8))(v4, v22);
    }
  }

  else
  {
    sub_10000C8CC(&v41, &unk_100923520);
  }

  v25 = *v1;
  v26 = v1[1];
  sub_100016B4C((v1 + 2), v42, &unk_100923520);
  *&v41 = v25;
  *(&v41 + 1) = v26;
  sub_10069D700(&v41, v38);
  swift_storeEnumTagMultiPayload();
  sub_10069D738();
  sub_10069D8A8();

  sub_100751D64();
  return sub_10069D8FC(&v41);
}

uint64_t sub_10069AA3C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10000C518(&qword_100944CA8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v28 - v8;
  v31 = sub_10000C518(&qword_100944CB0);
  __chkstk_darwin(v31);
  v32 = v28 - v10;
  v33 = sub_10000C518(&qword_100944C90);
  v30 = *(v33 - 8);
  __chkstk_darwin(v33);
  v29 = v28 - v11;
  if (*a1 == 0x6973736572706D69 && a1[1] == 0xEB00000000736E6FLL || (sub_100754754() & 1) != 0)
  {
    v28[2] = v6;
    v12 = sub_100121BE8(a2);
    v13 = *(v12 + 16);
    v28[0] = v12;
    v28[1] = a3;
    if (v13)
    {
      v14 = v12 + 32;
      v15 = _swiftEmptyArrayStorage;
      do
      {
        sub_100016B4C(v14, v38, &qword_100944CC8);
        v34 = v38[0];
        v35 = v38[1];
        v36 = v39;
        sub_10000C518(&qword_10092F1E8);
        if (swift_dynamicCast())
        {
          v16 = v37;
          if (v37)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v15 = sub_100256884(0, v15[2] + 1, 1, v15);
            }

            v18 = v15[2];
            v17 = v15[3];
            if (v18 >= v17 >> 1)
            {
              v15 = sub_100256884((v17 > 1), v18 + 1, 1, v15);
            }

            v15[2] = v18 + 1;
            v15[v18 + 4] = v16;
          }
        }

        v14 += 40;
        --v13;
      }

      while (v13);
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
    }

    v19 = sub_100588930(v15);
    v21 = v20;
    *&v38[0] = v28[0];
    swift_getKeyPath();
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    *(v22 + 24) = v21;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_10069DD14;
    *(v23 + 24) = v22;
    sub_10000C518(&qword_100944CB8);
    sub_10002DDC8(&qword_100944CC0, &qword_100944CB8);
    sub_10069DBFC();
    v24 = v29;
    sub_1007520A4();
    v25 = v30;
    v26 = v33;
    (*(v30 + 16))(v32, v24, v33);
    swift_storeEnumTagMultiPayload();
    sub_10069DB78();
    sub_10069DC50();
    sub_100751D64();
    return (*(v25 + 8))(v24, v26);
  }

  else
  {
    *&v38[0] = sub_100121BE8(a2);
    swift_getKeyPath();
    sub_10000C518(&qword_100944CB8);
    sub_10002DDC8(&qword_100944CC0, &qword_100944CB8);
    sub_10069D484();
    sub_1007520A4();
    (*(v7 + 16))(v32, v9, v6);
    swift_storeEnumTagMultiPayload();
    sub_10069DB78();
    sub_10069DC50();
    sub_100751D64();
    return (*(v7 + 8))(v9, v6);
  }
}

unint64_t sub_10069B008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10000C5B4(a2, v10);
  sub_10000C518(&qword_10092F1E8);
  if (swift_dynamicCast())
  {
    v5 = v9;
    if (!*(v9 + 16))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = sub_100414AE8(_swiftEmptyArrayStorage);
    if (!*(v5 + 16))
    {
LABEL_7:
      memset(v10, 0, sizeof(v10));
      goto LABEL_8;
    }
  }

  v6 = sub_1003861D0(0xD000000000000012, 0x800000010078A560);
  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_10000C5B4(*(v5 + 56) + 32 * v6, v10);
LABEL_8:
  sub_100588C28(v10, a4);
  sub_10000C8CC(v10, &unk_100923520);
  return v5;
}

uint64_t sub_10069B118@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + 8;
  v5._countAndFlagsBits = sub_100754714();
  sub_1007531B4(v5);

  v6._countAndFlagsBits = 93;
  v6._object = 0xE100000000000000;
  sub_1007531B4(v6);
  result = sub_10000C5B4(v3, (a2 + 2));
  *a2 = 91;
  a2[1] = 0xE100000000000000;
  return result;
}

uint64_t sub_10069B1B0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_100631124(*(a1 + 16), 0);
  v4 = sub_1007271D0(&v6, v3 + 4, v2, a1);

  sub_1001A8F34();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:
    v3 = _swiftEmptyArrayStorage;
  }

  v6 = v3;
  sub_1004537F4(&v6);
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;

  sub_10000C518(&unk_100928A70);
  sub_10002DDC8(&qword_100944BE0, &unk_100928A70);
  sub_10069D484();
  return sub_1007520A4();
}

double sub_10069B364@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  if (*(a2 + 16))
  {

    v7 = sub_1003861D0(v4, v5);
    if (v8)
    {
      sub_10000C5B4(*(a2 + 56) + 32 * v7, &v11);
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  *a3 = v4;
  *(a3 + 8) = v5;
  result = *&v11;
  v10 = v12;
  *(a3 + 16) = v11;
  *(a3 + 32) = v10;
  return result;
}

uint64_t sub_10069B3F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100751D14();
  LOBYTE(v19[0]) = 1;
  sub_10069B58C(v16);
  *&v15[7] = v16[0];
  *&v15[23] = v16[1];
  *&v15[39] = v16[2];
  *&v15[55] = v16[3];
  v5 = v19[0];
  sub_100016B4C(a1 + 16, v12, &unk_100923520);
  v13 = 0;
  v14 = 1;
  sub_10069DF38(v12, v11);
  v17[0] = v4;
  v17[1] = 0;
  v18[0] = v5;
  *&v18[1] = *v15;
  *&v18[17] = *&v15[16];
  *&v18[33] = *&v15[32];
  *&v18[49] = *&v15[48];
  *&v18[64] = *&v15[63];
  v6 = *&v15[63];
  v7 = *v18;
  *a2 = v4;
  *(a2 + 16) = v7;
  v8 = *&v18[16];
  v9 = *&v18[48];
  *(a2 + 48) = *&v18[32];
  *(a2 + 64) = v9;
  *(a2 + 32) = v8;
  *(a2 + 80) = v6;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  sub_10069DF38(v11, a2 + 104);
  sub_100016B4C(v17, v19, &qword_100944CE0);
  sub_10069DF70(v12);
  sub_10069DF70(v11);
  v19[0] = v4;
  v19[1] = 0;
  v20 = v5;
  v22 = *&v15[16];
  v23 = *&v15[32];
  *v24 = *&v15[48];
  *&v24[15] = *&v15[63];
  v21 = *v15;
  return sub_10000C8CC(v19, &qword_100944CE0);
}

uint64_t sub_10069B58C@<X0>(uint64_t a1@<X8>)
{
  sub_1000D5C0C();

  v2 = sub_100751F24();
  v4 = v3;
  v6 = v5;
  v25 = sub_100751EF4();
  v26 = v7;
  v9 = v8;
  v24 = v10;
  sub_1004A660C(v2, v4, v6 & 1);

  sub_10069B758();
  v11 = sub_100751F24();
  v13 = v12;
  v15 = v14;
  sub_100751DC4();
  v16 = sub_100751EE4();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_1004A660C(v11, v13, v15 & 1);

  *a1 = v25;
  *(a1 + 8) = v9;
  *(a1 + 16) = v24 & 1;
  *(a1 + 24) = v26;
  *(a1 + 32) = v16;
  *(a1 + 40) = v18;
  *(a1 + 48) = v20 & 1;
  *(a1 + 56) = v22;
  sub_1004A65FC(v25, v9, v24 & 1);

  sub_1004A65FC(v16, v18, v20 & 1);

  sub_1004A660C(v16, v18, v20 & 1);

  sub_1004A660C(v25, v9, v24 & 1);
}

uint64_t sub_10069B758()
{
  sub_100016B4C(v0, v5, &unk_100923520);
  if (v6)
  {
    if (swift_dynamicCast())
    {

      return 0x676E69727453;
    }
  }

  else
  {
    sub_10000C8CC(v5, &unk_100923520);
  }

  sub_100016B4C(v0, v5, &unk_100923520);
  if (v6)
  {
    sub_100016C60(0, &qword_10092BE20);
    if (swift_dynamicCast())
    {
      v2 = CFGetTypeID(cf);
      if (CFBooleanGetTypeID() == v2)
      {

        return 0x6E61656C6F6F42;
      }

      else if (CFNumberGetTypeID() == v2)
      {
        IsFloatType = CFNumberIsFloatType(cf);

        if (IsFloatType)
        {
          return 0x656C62756F44;
        }

        else
        {
          return 7630409;
        }
      }

      else
      {

        return 0x7265626D754ELL;
      }
    }
  }

  else
  {
    sub_10000C8CC(v5, &unk_100923520);
  }

  sub_100016B4C(v0, v5, &unk_100923520);
  if (v6)
  {
    sub_10000C518(&qword_100944C70);
    if (swift_dynamicCast())
    {

      return 0x7961727241;
    }
  }

  else
  {
    sub_10000C8CC(v5, &unk_100923520);
  }

  sub_100016B4C(v0, v5, &unk_100923520);
  if (v6)
  {
    sub_10000C518(&qword_10092F1E8);
    if (swift_dynamicCast())
    {

      return 0x7463656A624FLL;
    }
  }

  else
  {
    sub_10000C8CC(v5, &unk_100923520);
  }

  result = 0x6E776F6E6B6E753CLL;
  if (*(v0 + 24))
  {
    sub_100016B4C(v0, v5, &unk_100923520);
    if (v6)
    {
      sub_100016C60(0, &qword_100944CF0);
      if (swift_dynamicCast())
      {

        return 0x6E776F6E6B6E753CLL;
      }
    }

    else
    {
      sub_10000C8CC(v5, &unk_100923520);
    }

    v5[0] = sub_10000C518(&unk_100923520);
    sub_10000C518(&qword_100944CE8);
    return sub_1007530E4();
  }

  return result;
}

uint64_t sub_10069BB08@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_100751C94();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return sub_10069B3F8(v1, a1 + 24);
}

uint64_t sub_10069BB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_10000C518(&qword_100944CF8);
  v11 = __chkstk_darwin(v8);
  v13 = &v43 - v12;
  if (a1)
  {
    v46 = v10;
    v47 = v9;
    v48 = a4;
    *v13 = sub_100751D04();
    *(v13 + 1) = 0;
    v13[16] = 1;
    v14 = *(a1 + 16);
    if (!v14)
    {
      v15 = _swiftEmptyArrayStorage;
      goto LABEL_9;
    }

    v44 = a2;
    v45 = a3;
    v15 = sub_100631124(v14, 0);
    v16 = sub_1007271D0(&v49, v15 + 4, v14, a1);

    sub_1001A8F34();
    if (v16 == v14)
    {
      a2 = v44;
      a3 = v45;
LABEL_9:
      v49 = v15;
      sub_1004537F4(&v49);
      sub_10000C518(&qword_100944D00);
      swift_getKeyPath();
      v19 = swift_allocObject();
      v19[2] = a1;
      v19[3] = a2;
      v19[4] = a3;

      sub_10000C518(&unk_100928A70);
      sub_10000C518(&qword_100944D08);
      sub_10002DDC8(&qword_100944BE0, &unk_100928A70);
      sub_10002DDC8(&qword_100944D10, &qword_100944D08);
      sub_1007520A4();
      v20 = sub_100751E54();
      sub_100751B04();
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v29 = &v13[*(sub_10000C518(&qword_100944D18) + 36)];
      *v29 = v20;
      *(v29 + 1) = v22;
      *(v29 + 2) = v24;
      *(v29 + 3) = v26;
      *(v29 + 4) = v28;
      v29[40] = 0;
      v30 = sub_100751E54();
      v31 = &v13[*(sub_10000C518(&qword_100944D20) + 36)];
      *v31 = 1;
      v31[8] = v30;
      v32 = v47;
      v33 = &v13[*(v47 + 36)];
      v34 = *(sub_100751BE4() + 20);
      v35 = enum case for RoundedCornerStyle.continuous(_:);
      v36 = sub_100751CF4();
      (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
      __asm { FMOV            V0.2D, #8.0 }

      *v33 = _Q0;
      *&v33[*(sub_10000C518(&qword_100944D28) + 36)] = 256;
      v42 = v48;
      sub_10069E048(v13, v48);
      return (*(v46 + 56))(v42, 0, 1, v32);
    }

    __break(1u);

    __break(1u);
  }

  else
  {
    v17 = *(v10 + 56);

    return v17(a4, 1, 1, v11);
  }

  return result;
}

uint64_t sub_10069BFA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v26[0] = a1;
  v26[1] = a2;
  sub_1000D5C0C();

  v9 = sub_100751F24();
  v11 = v10;
  v13 = v12;
  v14 = sub_100751EF4();
  v16 = v15;
  v21 = v17;
  v19 = v18;
  sub_1004A660C(v9, v11, v13 & 1);

  sub_10069C100(a1, a2, a3, a4, a5, v26);
  v26[4] = 3;
  v27 = 0;
  sub_10069DF38(v26, v25);
  *a6 = v14;
  *(a6 + 8) = v16;
  *(a6 + 16) = v21 & 1;
  *(a6 + 24) = v19;
  *(a6 + 32) = 0x4030000000000000;
  *(a6 + 40) = 0;
  sub_10069DF38(v25, a6 + 48);
  sub_1004A65FC(v14, v16, v21 & 1);

  sub_10069DF70(v26);
  sub_10069DF70(v25);
  sub_1004A660C(v14, v16, v21 & 1);
}

double sub_10069C100@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000010078A560 == a2 || (sub_100754754()) && a3 && *(a3 + 16) && (v12 = sub_1003861D0(a1, a2), (v13))
  {
    sub_10000C5B4(*(a3 + 56) + 32 * v12, v18);
    sub_10000C610(v18, v19);
    if (a5)
    {
      *&v18[0] = 0;
      *(&v18[0] + 1) = 0xE000000000000000;
      sub_1007545F4();
      v20._countAndFlagsBits = 10272;
      v20._object = 0xE200000000000000;
      sub_1007531B4(v20);
      v21._countAndFlagsBits = a4;
      v21._object = a5;
      sub_1007531B4(v21);
      v22._countAndFlagsBits = 41;
      v22._object = 0xE100000000000000;
      sub_1007531B4(v22);
      v14 = v18[0];
      *(a6 + 24) = &type metadata for String;
      *a6 = v14;
      sub_10000C620(v19);
      return result;
    }

    sub_10000C620(v19);
    if (!*(a3 + 16))
    {
      goto LABEL_14;
    }
  }

  else if (!a3 || !*(a3 + 16))
  {
    goto LABEL_14;
  }

  v16 = sub_1003861D0(a1, a2);
  if (v17)
  {
    sub_10000C5B4(*(a3 + 56) + 32 * v16, a6);
    return result;
  }

LABEL_14:
  result = 0.0;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  return result;
}

__n128 sub_10069C2A0@<Q0>(uint64_t a1@<X8>)
{
  sub_100016B4C(v1, &v35, &unk_100923520);
  if (v36.n128_u64[1])
  {
    sub_10000C518(&qword_100944C70);
    if (swift_dynamicCast())
    {
      v3 = *(*&v53[0] + 16);

      *&cf = v3;
      *&v54 = sub_100754714();
      *(&v54 + 1) = v4;
      v58._countAndFlagsBits = 0x736D65746920;
      v58._object = 0xE600000000000000;
      sub_1007531B4(v58);
      cf = v54;
      v47.n128_u64[0] = 0;
      v47.n128_u64[1] = _swiftEmptyArrayStorage;
      LOBYTE(v48) = 0;

      sub_100751D64();
      v45 = v56;
      v44 = 0;
      v57[18] = 0;
      sub_10000C518(&qword_100944DA8);
      sub_10000C518(&qword_100944DB8);
      sub_10069E520();
      sub_10069E59C();
      sub_100751D64();
      v55 = v40;
      v56 = v41;
      *v57 = *v42;
      *&v57[15] = *&v42[15];
      v54 = v39;
LABEL_8:
      LOBYTE(v51) = 0;
      v57[19] = 0;
      sub_10000C518(&qword_100944D90);
      sub_10069E494();
      sub_100751D64();

      goto LABEL_23;
    }
  }

  else
  {
    sub_10000C8CC(&v35, &unk_100923520);
  }

  sub_100016B4C(v1, &v35, &unk_100923520);
  if (v36.n128_u64[1])
  {
    sub_10000C518(&qword_10092F1E8);
    if (swift_dynamicCast())
    {
      v5 = *(*&v53[0] + 16);

      *&cf = v5;
      *&v54 = sub_100754714();
      *(&v54 + 1) = v6;
      v59._countAndFlagsBits = 0x7379656B20;
      v59._object = 0xE500000000000000;
      sub_1007531B4(v59);
      cf = v54;
      v47.n128_u64[0] = 0;
      v47.n128_u64[1] = _swiftEmptyArrayStorage;
      LOBYTE(v48) = 1;

      sub_100751D64();
      v45 = v56;
      v44 = 0;
      v57[18] = 0;
      sub_10000C518(&qword_100944DA8);
      sub_10000C518(&qword_100944DB8);
      sub_10069E520();
      sub_10069E59C();
      sub_100751D64();
      v56 = v41;
      *v57 = *v42;
      *&v57[15] = *&v42[15];
      v54 = v39;
      v55 = v40;
      goto LABEL_8;
    }
  }

  else
  {
    sub_10000C8CC(&v35, &unk_100923520);
  }

  sub_100016B4C(v1, &v54, &unk_100923520);
  if (v55.n128_u64[1])
  {
    sub_100016C60(0, &qword_10092BE20);
    if (swift_dynamicCast())
    {
      v7 = cf;
      v8 = CFGetTypeID(cf);
      v34 = v7;
      if (CFBooleanGetTypeID() == v8)
      {
        v9 = [v7 BOOLValue];
        if (v9)
        {
          v10 = 1702195828;
        }

        else
        {
          v10 = 0x65736C6166;
        }

        if (v9)
        {
          v11 = 0xE400000000000000;
        }

        else
        {
          v11 = 0xE500000000000000;
        }

        KeyPath = swift_getKeyPath();
        *&cf = v10;
        *(&cf + 1) = v11;
        v47.n128_u64[0] = 0;
        v47.n128_u64[1] = _swiftEmptyArrayStorage;
        *&v48 = KeyPath;
        v13 = 2;
      }

      else
      {
        v25 = [v7 stringValue];
        v26 = sub_100753094();
        v28 = v27;

        v29 = swift_getKeyPath();
        *&cf = v26;
        *(&cf + 1) = v28;
        v47.n128_u64[0] = 0;
        v47.n128_u64[1] = _swiftEmptyArrayStorage;
        *&v48 = v29;
        v13 = 258;
      }

      WORD4(v48) = v13;
      sub_10000C518(&qword_100944DD8);
      sub_10069E6AC();
      sub_100751D64();
      v45 = BYTE9(v56);
      v44 = 0;
      v57[17] = 0;
      v30 = v54;
      v31 = v55.n128_u8[0];
      v32 = v55.n128_u8[0];
      v33 = v54;
      sub_10069E870(v54, *(&v54 + 1), v55.n128_i8[0]);
      sub_10069E870(v30, *(&v30 + 1), v31);
      sub_10000C518(&qword_100944DC8);
      sub_10000C518(&qword_100944DF8);
      sub_10069E628();
      sub_10069E764();
      sub_100751D64();
      v56 = v48;
      *v57 = v49;
      *&v57[16] = v50;
      v54 = cf;
      v55 = v47;
      LOBYTE(v51) = 1;
      v57[18] = 1;
      sub_10000C518(&qword_100944DA8);
      sub_10000C518(&qword_100944DB8);
      sub_10069E520();
      sub_10069E59C();
      sub_100751D64();
      v41 = v37;
      *v42 = *v38;
      *&v42[15] = *&v38[15];
      v39 = v35;
      v40 = v36;
      v56 = v37;
      *v57 = *v38;
      *&v57[15] = *&v38[15];
      v54 = v35;
      v55 = v36;
      LOBYTE(v53[0]) = 0;
      v57[19] = 0;
      sub_100016B4C(&v39, &cf, &qword_100944D90);
      sub_10000C518(&qword_100944D90);
      sub_10069E494();
      sub_100751D64();
      sub_10069E8B8(v33, *(&v30 + 1), v32);
      sub_10000C8CC(&v39, &qword_100944D90);

      sub_10069E8B8(v33, *(&v30 + 1), v32);
      v56 = v48;
      *v57 = v49;
      *&v57[16] = v50;
      v22 = cf;
      v21 = v47;
      goto LABEL_24;
    }
  }

  else
  {
    sub_10000C8CC(&v54, &unk_100923520);
  }

  sub_100016B4C(v1, &v51, &unk_100923520);
  if (!v52)
  {
    sub_10000C8CC(&v51, &unk_100923520);
    LOBYTE(v39) = 0;
    LOBYTE(v35) = 1;
    cf = xmmword_1007D4290;
    v47.n128_u8[0] = 0;
    v47.n128_u64[1] = _swiftEmptyArrayStorage;
    HIBYTE(v50) = 1;
    sub_10000C518(&qword_100944D90);
    sub_10069E494();
    sub_100751D64();
    goto LABEL_25;
  }

  sub_10000C610(&v51, v53);
  sub_10000C5B4(v53, &v54);
  v14 = sub_1007530E4();
  v16 = v15;
  v17 = swift_getKeyPath();
  v18 = *(v1 + 32);
  v19 = *(v1 + 40);
  v20 = swift_getKeyPath();
  LOBYTE(cf) = v19;
  *&v35 = v14;
  *(&v35 + 1) = v16;
  v36.n128_u8[0] = 0;
  v36.n128_u64[1] = _swiftEmptyArrayStorage;
  *&v37 = v17;
  BYTE8(v37) = 2;
  *v38 = v20;
  *&v38[8] = v18;
  v38[16] = v19;
  v56 = v37;
  *v57 = *v38;
  v57[16] = v19;
  v54 = v35;
  v55 = v36;
  v43 = 1;
  v57[17] = 1;
  sub_100016B4C(&v35, &cf, &qword_100944DF8);
  sub_10000C518(&qword_100944DC8);
  sub_10000C518(&qword_100944DF8);
  sub_10069E628();
  sub_10069E764();
  sub_100751D64();
  v56 = v48;
  *v57 = v49;
  *&v57[16] = v50;
  v54 = cf;
  v55 = v47;
  v44 = 1;
  v57[18] = 1;
  sub_10000C518(&qword_100944DA8);
  sub_10000C518(&qword_100944DB8);
  sub_10069E520();
  sub_10069E59C();
  sub_100751D64();
  v56 = v41;
  *v57 = *v42;
  *&v57[15] = *&v42[15];
  v54 = v39;
  v55 = v40;
  v45 = 0;
  v57[19] = 0;
  sub_10000C518(&qword_100944D90);
  sub_10069E494();
  sub_100751D64();
  sub_10000C8CC(&v35, &qword_100944DF8);
  sub_10000C620(v53);
LABEL_23:
  v56 = v48;
  *v57 = v49;
  *&v57[16] = v50;
  v22 = cf;
  v21 = v47;
LABEL_24:
  v54 = v22;
  v55 = v21;
LABEL_25:
  v23 = *v57;
  *(a1 + 32) = v56;
  *(a1 + 48) = v23;
  *(a1 + 64) = *&v57[16];
  result = v55;
  *a1 = v54;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10069CD70(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10069CDC0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10069CE0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100751C34();
  *a1 = result;
  return result;
}

unint64_t sub_10069CE64()
{
  result = qword_100944B00;
  if (!qword_100944B00)
  {
    sub_10000C724(&qword_100944AF0);
    sub_10069CEE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944B00);
  }

  return result;
}

unint64_t sub_10069CEE8()
{
  result = qword_100944B08;
  if (!qword_100944B08)
  {
    sub_10000C724(&qword_100944B10);
    sub_10002DDC8(&qword_100944B18, &qword_100944B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944B08);
  }

  return result;
}

uint64_t sub_10069CFA0@<X0>(uint64_t a1@<X8>)
{
  result = sub_100751C54();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_10069D014()
{
  result = qword_100944B98;
  if (!qword_100944B98)
  {
    sub_10000C724(&qword_100944B60);
    sub_10000C724(&qword_100944B58);
    sub_100751B84();
    sub_10002DDC8(&qword_100944B88, &qword_100944B58);
    swift_getOpaqueTypeConformance2();
    sub_10002DDC8(&qword_100944BA0, &qword_100944BA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944B98);
  }

  return result;
}

uint64_t sub_10069D15C(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100944B60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10069D1CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10069D214(uint64_t a1)
{
  v2 = type metadata accessor for DebugMetricsEventDetailView.Summary(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10069D270(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugMetricsEventDetailView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10069D2D4()
{
  v1 = *(type metadata accessor for DebugMetricsEventDetailView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_100746674();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10069D3A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugMetricsEventDetailView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_10069D404@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for DebugMetricsEventDetailView(0);

  return sub_100698578(a1, a2);
}

unint64_t sub_10069D484()
{
  result = qword_100944BE8;
  if (!qword_100944BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944BE8);
  }

  return result;
}

uint64_t sub_10069D4D8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10069D544()
{
  sub_10000C724(&qword_100944B70);
  sub_10000C724(&qword_100944B68);
  sub_100751E24();
  sub_10000C724(&qword_100944B60);
  sub_10000C724(&qword_100944B90);
  sub_10069D014();
  sub_10000C724(&qword_100944BB0);
  sub_10002DDC8(&qword_100944BB8, &qword_100944BB0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10069D738()
{
  result = qword_100944C40;
  if (!qword_100944C40)
  {
    sub_10000C724(&qword_100944C20);
    sub_10069D7F0();
    sub_10002DDC8(&qword_100944C60, &qword_100944C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944C40);
  }

  return result;
}

unint64_t sub_10069D7F0()
{
  result = qword_100944C48;
  if (!qword_100944C48)
  {
    sub_10000C724(&qword_100944C38);
    sub_10002DDC8(&qword_100944C50, &qword_100944C30);
    sub_10069D8A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944C48);
  }

  return result;
}

unint64_t sub_10069D8A8()
{
  result = qword_100944C58;
  if (!qword_100944C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944C58);
  }

  return result;
}

uint64_t sub_10069D92C()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10069D96C()
{
  result = qword_100944C68;
  if (!qword_100944C68)
  {
    sub_10000C724(&qword_100944BD0);
    sub_10069D484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944C68);
  }

  return result;
}

uint64_t sub_10069DA28()
{

  if (*(v0 + 56))
  {
    sub_10000C620(v0 + 32);
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10069DA88@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v5 = *v3;
  v4 = v3[1];
  sub_100016B4C((v3 + 2), (a1 + 2), &unk_100923520);
  *a1 = v5;
  a1[1] = v4;
}

unint64_t sub_10069DAEC()
{
  result = qword_100944C80;
  if (!qword_100944C80)
  {
    sub_10000C724(&qword_100944C78);
    sub_10069DB78();
    sub_10069DC50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944C80);
  }

  return result;
}

unint64_t sub_10069DB78()
{
  result = qword_100944C88;
  if (!qword_100944C88)
  {
    sub_10000C724(&qword_100944C90);
    sub_10069DBFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944C88);
  }

  return result;
}

unint64_t sub_10069DBFC()
{
  result = qword_100944C98;
  if (!qword_100944C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944C98);
  }

  return result;
}

unint64_t sub_10069DC50()
{
  result = qword_100944CA0;
  if (!qword_100944CA0)
  {
    sub_10000C724(&qword_100944CA8);
    sub_10069D484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944CA0);
  }

  return result;
}

uint64_t sub_10069DCD4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10069DD1C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10069DD54@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1 + 1);
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t sub_10069DD98(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_10069DDF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_10069DE74()
{
  result = qword_100944CD0;
  if (!qword_100944CD0)
  {
    sub_10000C724(&qword_100944CD8);
    sub_10069D738();
    sub_10069D8A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944CD0);
  }

  return result;
}

uint64_t sub_10069DFA0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10069DFE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = *a1;
  v8 = a1[1];
  *a2 = sub_100751C74();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return sub_10069BFA8(v7, v8, v4, v5, v6, a2 + 24);
}

uint64_t sub_10069E048(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100944CF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10069E0B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_10069E114(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_10069E1CC()
{
  result = qword_100944D40;
  if (!qword_100944D40)
  {
    sub_10000C724(&qword_100944D48);
    sub_10069E250();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944D40);
  }

  return result;
}

unint64_t sub_10069E250()
{
  result = qword_100944D50;
  if (!qword_100944D50)
  {
    sub_10000C724(&qword_100944CF8);
    sub_10069E308();
    sub_10002DDC8(&qword_100944D88, &qword_100944D28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944D50);
  }

  return result;
}

unint64_t sub_10069E308()
{
  result = qword_100944D58;
  if (!qword_100944D58)
  {
    sub_10000C724(&qword_100944D20);
    sub_10069E3C0();
    sub_10002DDC8(&qword_100944D78, &qword_100944D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944D58);
  }

  return result;
}

unint64_t sub_10069E3C0()
{
  result = qword_100944D60;
  if (!qword_100944D60)
  {
    sub_10000C724(&qword_100944D18);
    sub_10002DDC8(&qword_100944D68, &qword_100944D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944D60);
  }

  return result;
}

unint64_t sub_10069E494()
{
  result = qword_100944D98;
  if (!qword_100944D98)
  {
    sub_10000C724(&qword_100944D90);
    sub_10069E520();
    sub_10069E59C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944D98);
  }

  return result;
}

unint64_t sub_10069E520()
{
  result = qword_100944DA0;
  if (!qword_100944DA0)
  {
    sub_10000C724(&qword_100944DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944DA0);
  }

  return result;
}

unint64_t sub_10069E59C()
{
  result = qword_100944DB0;
  if (!qword_100944DB0)
  {
    sub_10000C724(&qword_100944DB8);
    sub_10069E628();
    sub_10069E764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944DB0);
  }

  return result;
}

unint64_t sub_10069E628()
{
  result = qword_100944DC0;
  if (!qword_100944DC0)
  {
    sub_10000C724(&qword_100944DC8);
    sub_10069E6AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944DC0);
  }

  return result;
}

unint64_t sub_10069E6AC()
{
  result = qword_100944DD0;
  if (!qword_100944DD0)
  {
    sub_10000C724(&qword_100944DD8);
    sub_10002DDC8(&qword_100944DE0, &qword_100944DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944DD0);
  }

  return result;
}

unint64_t sub_10069E764()
{
  result = qword_100944DF0;
  if (!qword_100944DF0)
  {
    sub_10000C724(&qword_100944DF8);
    sub_10069E6AC();
    sub_10002DDC8(&qword_100944B18, &qword_100944B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944DF0);
  }

  return result;
}

uint64_t sub_10069E81C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100751C14();
  *a1 = result;
  return result;
}

uint64_t sub_10069E870(uint64_t a1, uint64_t a2, char a3)
{
  sub_1004A65FC(a1, a2, a3 & 1);
}

uint64_t sub_10069E8B8(uint64_t a1, uint64_t a2, char a3)
{
  sub_1004A660C(a1, a2, a3 & 1);
}

unint64_t sub_10069E904()
{
  result = qword_100944E00;
  if (!qword_100944E00)
  {
    sub_10000C724(&qword_100944E08);
    sub_10069E494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944E00);
  }

  return result;
}

void sub_10069EA80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a1;
  v40 = a3;
  v4 = sub_100743B04();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v36 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100746E24();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = sub_10000C518(&qword_100933090);
  __chkstk_darwin(v13 - 8);
  v15 = &v36 - v14;
  v41 = sub_100744754();
  sub_10074ECD4();
  sub_100752764();
  sub_10069F0AC(&qword_100928558, &type metadata accessor for Action);
  sub_100752684();

  v16 = sub_10000C518(&unk_100933080);
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  v17 = OBJC_IVAR____TtC22SubscribePageExtension31RoundedButtonCollectionViewCell_action;
  swift_beginAccess();
  v18 = v15;
  v19 = v3;
  sub_100195594(v18, &v3[v17]);
  swift_endAccess();
  v3[OBJC_IVAR____TtC22SubscribePageExtension31RoundedButtonCollectionViewCell_hasDivider] = sub_100744714() & 1;
  sub_100711CAC();
  sub_100744734();
  (*(v7 + 16))(v9, v12, v6);
  if ((*(v7 + 88))(v9, v6) != enum case for RoundedButtonType.share(_:))
  {
    v30 = *(v7 + 8);
    v30(v9, v6);
    v30(v12, v6);
    goto LABEL_7;
  }

  v21 = v36;
  v20 = v37;
  v22 = v38;
  (*(v37 + 104))(v36, enum case for SystemImage.squareAndArrowUp(_:), v38);
  v23 = sub_100743AE4();
  (*(v20 + 8))(v21, v22);
  v24 = [v23 imageWithRenderingMode:2];

  (*(v7 + 8))(v12, v6);
  if (!v24)
  {
LABEL_7:
    v29 = *&v19[OBJC_IVAR____TtC22SubscribePageExtension31RoundedButtonCollectionViewCell_button];
    [v29 setImage:0 forState:0];
    goto LABEL_8;
  }

  sub_100016C60(0, &qword_100923AB0);
  if (qword_100921400 != -1)
  {
    swift_once();
  }

  v25 = sub_100750534();
  sub_10000D0FC(v25, qword_100981938);
  v26 = [v19 traitCollection];
  v27 = sub_100753C14();

  v28 = [objc_opt_self() configurationWithFont:v27];
  v29 = *&v19[OBJC_IVAR____TtC22SubscribePageExtension31RoundedButtonCollectionViewCell_button];
  [v29 setPreferredSymbolConfiguration:v28 forImageInState:0];
  [v29 setContentVerticalAlignment:0];
  [v29 setImage:v24 forState:0];

LABEL_8:
  sub_100744744();
  v31 = sub_100753064();

  [v29 setTitle:v31 forState:0];

  v32 = sub_100744764();
  if (!v32)
  {
    sub_100016C60(0, &qword_100923500);
    v32 = sub_100753E44();
  }

  v33 = v32;
  [v29 setTitleColor:v33 forState:0];
  [v29 setTintColor:v33];

  v34 = sub_100744724();
  if (!v34)
  {
    sub_100016C60(0, &qword_100923500);
    v34 = sub_100753E84();
  }

  v35 = v34;
  [v29 setBackgroundColor:v34];

  [v19 setNeedsLayout];
}

uint64_t sub_10069F0AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static NSUserActivity.handle(userActivity:asPartOf:)(void *a1, uint64_t a2)
{
  v75 = a2;
  v3 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v3 - 8);
  v5 = &v54 - v4;
  v70 = sub_10074A304();
  v67 = *(v70 - 8);
  __chkstk_darwin(v70);
  v71 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100742CF4();
  v64 = *(v7 - 8);
  v65 = v7;
  __chkstk_darwin(v7);
  v69 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1007493D4();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v66 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100752614();
  __chkstk_darwin(v10 - 8);
  v68 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v12 - 8);
  v63 = &v54 - v13;
  v14 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v14 - 8);
  v60 = &v54 - v15;
  v58 = sub_10074F4D4();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v59 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100744574();
  v55 = *(v17 - 8);
  __chkstk_darwin(v17);
  v72 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100743FE4();
  v56 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10000C518(&qword_100944E58);
  __chkstk_darwin(v22 - 8);
  v24 = &v54 - v23;
  v25 = sub_100742B54();
  v73 = *(v25 - 8);
  v74 = v25;
  *&v26 = __chkstk_darwin(v25).n128_u64[0];
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = [a1 activityType];
  v30 = sub_100753094();
  v32 = v31;

  if (sub_100753094() == v30 && v33 == v32)
  {

LABEL_5:

    v35 = v75;

    return sub_10069FBF8(a1, v35);
  }

  v54 = v5;
  v34 = sub_100754754();

  if (v34)
  {
    goto LABEL_5;
  }

  if (sub_100753094() == v30 && v37 == v32)
  {
  }

  else
  {
    v38 = sub_100754754();

    result = 0;
    if ((v38 & 1) == 0)
    {
      return result;
    }
  }

  v39 = a1;
  sub_100742B24();
  v41 = v73;
  v40 = v74;
  if ((*(v73 + 48))(v24, 1, v74) == 1)
  {
    sub_10000C8CC(v24, &qword_100944E58);
    return 0;
  }

  else
  {
    v42 = v28;
    (*(v41 + 32))(v28, v24, v40);
    sub_100745584();
    sub_100745564();
    sub_100742B44();
    sub_1007454F4();

    v43 = v56;
    (*(v56 + 8))(v21, v19);
    sub_100744AC4();
    sub_100752754();
    if (v78)
    {
      sub_10074C494();
    }

    (*(v55 + 104))(v72, enum case for NavigationTab.loading(_:), v17);
    sub_10000C518(&unk_1009231A0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1007A5CF0;
    v80 = 0;
    v78 = 0u;
    v79 = 0u;
    (*(v57 + 104))(v59, enum case for FlowPage.unknown(_:), v58);
    v45 = v60;
    sub_100742B34();
    v46 = sub_100741264();
    (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
    v47 = v63;
    sub_100742B44();
    (*(v43 + 56))(v47, 0, 1, v19);
    v76 = 0u;
    v77 = 0u;
    sub_1007525F4();
    (*(v61 + 104))(v66, enum case for FlowAnimationBehavior.never(_:), v62);
    v48 = *(v64 + 13);
    v64 = v42;
    v48(v69, enum case for FlowOrigin.external(_:), v65);
    (*(v67 + 104))(v71, enum case for FlowPresentationContext.infer(_:), v70);
    sub_100752B44();
    sub_100742CD4();
    swift_allocObject();
    *(v44 + 32) = sub_100742C84();
    sub_1007525F4();
    sub_100745824();
    swift_allocObject();
    v49 = sub_1007457E4();
    v50 = sub_10000C518(&unk_100923210);
    v51 = v54;
    v52 = v75;
    sub_1007526C4();
    v53 = *(v50 - 8);
    if ((*(v53 + 48))(v51, 1, v50) == 1)
    {
      (*(v73 + 8))(v64, v74);

      sub_10000C8CC(v51, &unk_100923960);
    }

    else
    {
      sub_1003C13BC(v49, 1, v52, v51);

      (*(v73 + 8))(v64, v74);
      (*(v53 + 8))(v51, v50);
    }

    return 1;
  }
}

uint64_t sub_10069FBF8(void *a1, uint64_t a2)
{
  v40 = a2;
  v3 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v3 - 8);
  v5 = v35 - v4;
  v6 = sub_100752614();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100744574();
  v38 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100743FD4();
  v37 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100743FE4();
  v39 = *(v13 - 8);
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 userInfo];
  if (!v17)
  {
    goto LABEL_10;
  }

  v18 = v17;
  v36 = v5;
  v19 = sub_100752F44();

  v41 = sub_100753094();
  v42 = v20;
  sub_1007544E4();
  if (!*(v19 + 16) || (v21 = sub_100412148(v43), (v22 & 1) == 0))
  {

    sub_100016994(v43);
LABEL_10:
    v44 = 0u;
    v45 = 0u;
    goto LABEL_11;
  }

  sub_10000C5B4(*(v19 + 56) + 32 * v21, &v44);
  sub_100016994(v43);

  if (!*(&v45 + 1))
  {
LABEL_11:
    sub_10000C8CC(&v44, &unk_100923520);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v24 = v43[0];
  v23 = v43[1];
  v25 = sub_100753094();
  v35[1] = v24;
  if (v25 != v24 || v26 != v23)
  {
    v29 = sub_100754754();

    v27 = v36;
    if (v29)
    {
      goto LABEL_14;
    }

    return 0;
  }

  v27 = v36;
LABEL_14:
  (*(v37 + 104))(v12, enum case for ReferrerData.Kind.spotlight(_:), v10);
  sub_100743FC4();
  sub_100745584();
  sub_100745564();
  sub_1007454F4();

  (*(v38 + 104))(v9, enum case for NavigationTab.arcade(_:), v7);
  sub_1007525F4();
  sub_100745824();
  swift_allocObject();
  v30 = sub_1007457E4();
  v31 = sub_10000C518(&unk_100923210);
  v32 = v40;
  sub_1007526C4();
  v33 = v27;
  v34 = *(v31 - 8);
  if ((*(v34 + 48))(v33, 1, v31) == 1)
  {
    (*(v39 + 8))(v16, v13);

    sub_10000C8CC(v33, &unk_100923960);
  }

  else
  {
    sub_1003C13BC(v30, 1, v32, v33);

    (*(v39 + 8))(v16, v13);
    (*(v34 + 8))(v33, v31);
  }

  return 1;
}

uint64_t type metadata accessor for FadeInDynamicTypeButton()
{
  result = qword_100944E78;
  if (!qword_100944E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1006A0260(double a1, double a2, double a3, double a4)
{
  *&v4[qword_100944E60] = 0x4059000000000000;
  v4[qword_100944E70] = 0;
  v9 = objc_opt_self();
  v10 = [v9 systemBackgroundColor];
  v11 = sub_10014D0DC(v10);

  *&v4[qword_100944E68] = v11;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for FadeInDynamicTypeButton();
  v12 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v13 = [v9 systemBackgroundColor];
  [v12 setBackgroundColor:v13];

  v14 = [v12 layer];
  [v14 addSublayer:*&v12[qword_100944E68]];

  v15 = [v12 layer];
  [v15 setMasksToBounds:0];

  return v12;
}

id sub_1006A0404(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for FadeInDynamicTypeButton();
  v1 = objc_msgSendSuper2(&v3, "backgroundColor");

  return v1;
}

void sub_1006A0460(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for FadeInDynamicTypeButton();
  v10.receiver = a1;
  v10.super_class = v5;
  v6 = a3;
  v7 = a1;
  v8 = objc_msgSendSuper2(&v10, "backgroundColor");
  v9.receiver = v7;
  v9.super_class = v5;
  objc_msgSendSuper2(&v9, "setBackgroundColor:", v6);
  sub_1006A0500(v8);
}

void sub_1006A0500(void *a1)
{
  v2 = v1;
  v4 = [v2 backgroundColor];
  if (v4)
  {
    v5 = v4;
    if (a1)
    {
      sub_100016C60(0, &qword_100923500);
      v6 = a1;
      v7 = sub_100753FC4();

      if (v7)
      {
        return;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return;
  }

  v8 = [v2 backgroundColor];
  if (!v8)
  {
    v8 = [objc_opt_self() clearColor];
  }

  v9 = v8;
  v10 = sub_10014D0DC(v8);

  sub_1006A0C40(v10);
}

id sub_1006A0630()
{
  v1 = qword_100944E68;
  if (v0[qword_100944E70])
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  if (v0[qword_100944E70])
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  [*&v0[qword_100944E68] setStartPoint:{v2, 0.5}];
  [*&v0[v1] setEndPoint:{v3, 0.5}];

  return [v0 setNeedsLayout];
}

uint64_t sub_1006A06C4()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_100750534();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FadeInDynamicTypeButton();
  v14.receiver = v0;
  v14.super_class = v9;
  objc_msgSendSuper2(&v14, "layoutSubviews");
  sub_100746694();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10006A144(v4);
  }

  (*(v6 + 32))(v8, v4, v5);
  sub_100016C60(0, &qword_100923AB0);
  v11 = [v0 traitCollection];
  v12 = sub_100753C14();

  [v12 lineHeight];
  [v1 bounds];
  CGRectGetMinX(v15);
  [v1 bounds];
  CGRectGetMinY(v16);
  [v1 bounds];
  CGRectGetHeight(v17);
  v13 = *&v1[qword_100944E68];
  sub_1007477B4();
  sub_100753B34();
  [v13 setFrame:?];

  return (*(v6 + 8))(v8, v5);
}

void sub_1006A0978(void *a1)
{
  v1 = a1;
  sub_1006A06C4();
}

void sub_1006A09C0(void *a1)
{
  v5 = a1;
  v1 = [v5 backgroundColor];
  if (v1)
  {
    v2 = v1;
    v3 = sub_10014D0DC(v1);
    sub_1006A0C40(v3);

    v4 = v3;
  }

  else
  {
    v4 = v5;
  }
}

id sub_1006A0A58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FadeInDynamicTypeButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_1006A0AA8(uint64_t a1, void *a2)
{
  v4 = sub_100750534();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  (*(v5 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4, v6);
  v8 = sub_1007466B4();
  v9 = sub_10014D0DC(a2);
  v10 = qword_100944E68;
  v11 = *&v8[qword_100944E68];
  *&v8[qword_100944E68] = v9;

  [v8 setBackgroundColor:a2];
  v12 = [v8 layer];
  [v12 addSublayer:*&v8[v10]];

  v13 = [v8 layer];
  [v13 setMasksToBounds:0];

  (*(v5 + 8))(a1, v4);
  return v8;
}

void sub_1006A0C40(void *a1)
{
  v2 = qword_100944E68;
  v5 = *&v1[qword_100944E68];
  *&v1[qword_100944E68] = a1;
  v3 = a1;
  [v5 frame];
  [v3 setFrame:?];
  v4 = [v1 layer];
  [v4 insertSublayer:*&v1[v2] below:v5];

  [v5 removeFromSuperlayer];
  [v1 setNeedsLayout];
}

uint64_t sub_1006A0D10()
{
  v0 = sub_10074D294();
  sub_100039C50(v0, qword_100982D60);
  sub_10000D0FC(v0, qword_100982D60);
  return sub_10074D284();
}

uint64_t sub_1006A0D5C()
{
  v0 = sub_10074D1D4();
  sub_100039C50(v0, qword_100982D78);
  v1 = sub_10000D0FC(v0, qword_100982D78);
  v2 = enum case for CondensedSearchResultCardLayout.Configuration.appEvent(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

char *sub_1006A0DE4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_100743584();
  v76 = *(v10 - 8);
  v77 = v10;
  __chkstk_darwin(v10);
  v75 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&qword_100932470);
  __chkstk_darwin(v12 - 8);
  v74 = &v68 - v13;
  v14 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v14 - 8);
  v73 = &v68 - v15;
  v16 = OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_appEventFormattedDateView;
  *&v4[v16] = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v17 = OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_titleLabel;
  sub_100745C84();
  *&v4[v17] = sub_100745C64();
  v18 = OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_viewButton;
  *&v5[v18] = [objc_opt_self() buttonWithType:0];
  v19 = OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_artworkView;
  if (qword_100921CC0 != -1)
  {
    swift_once();
  }

  v20 = sub_10074D294();
  sub_10000D0FC(v20, qword_100982D60);
  sub_10074D1F4();
  *&v5[v19] = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, v21, v22}];
  v23 = OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_appEventTapGestureRecognizer;
  *&v5[v23] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v24 = &v5[OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_appEventViewTappedAction];
  v25 = type metadata accessor for CondensedAppEventCardView();
  *v24 = 0;
  *(v24 + 1) = 0;
  v79.receiver = v5;
  v79.super_class = v25;
  v26 = objc_msgSendSuper2(&v79, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v30 = v26;
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v70 = OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_appEventFormattedDateView;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_appEventFormattedDateView]];
  v31 = OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_titleLabel;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_titleLabel]];
  v72 = OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_artworkView;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_artworkView]];
  v71 = OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_viewButton;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_viewButton]];
  v32 = qword_100921CC8;
  v33 = *&v30[v31];
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = sub_10074D1D4();
  sub_10000D0FC(v34, qword_100982D78);
  v35 = v73;
  sub_10074D1C4();
  v36 = sub_100750534();
  v37 = *(v36 - 8);
  v38 = *(v37 + 56);
  v68 = v36;
  v69 = v38;
  v38(v35, 0, 1, v36);
  sub_100745BA4();

  v39 = v30;
  v40.super.isa = [v39 traitCollection];
  isa = v40.super.isa;
  [*&v30[v31] setNumberOfLines:sub_10074D194(v40)];

  v42 = v70;
  v43 = *&v30[v70];
  v44 = v43[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style];
  v43[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style] = 7;
  v45 = v43;
  sub_1000C95D0(v44);

  *(*&v30[v42] + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_delegate + 8) = &off_1008805E8;
  swift_unknownObjectWeakAssign();

  v46 = *&v30[v31];
  *v35 = UIFontTextStyleSubheadline;
  *(v35 + 2) = 0;
  v47 = v68;
  (*(v37 + 104))(v35, enum case for FontUseCase.preferredFont(_:), v68);
  v69(v35, 0, 1, v47);
  v48 = v46;
  v49 = UIFontTextStyleSubheadline;
  sub_100745BA4();

  v50 = v71;
  v51 = *&v30[v71];
  v52 = v51;
  v53 = [v39 traitCollection];
  v54 = v74;
  v55 = ObjectType;
  sub_1006AB840(v51, v74);

  v56 = sub_1007541F4();
  (*(*(v56 - 8) + 56))(v54, 0, 1, v56);
  sub_100754224();

  v57 = sub_1006ABADC();
  sub_10000FF60(v57, v58);

  [*&v30[v50] addTarget:v39 action:"handleTapWithGestureRecognizer:" forControlEvents:64];
  v59 = *&v30[v72];
  v61 = v75;
  v60 = v76;
  v62 = v77;
  (*(v76 + 104))(v75, enum case for CornerStyle.continuous(_:), v77);
  v63 = v59;
  sub_1007433B4();

  (*(v60 + 8))(v61, v62);
  v64 = OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_appEventTapGestureRecognizer;
  v65 = *&v39[OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_appEventTapGestureRecognizer];
  [v65 addTarget:v39 action:"handleTapWithGestureRecognizer:"];

  [v39 addGestureRecognizer:*&v39[v64]];
  sub_10000C518(&unk_1009249D0);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1007A5A00;
  *(v66 + 32) = sub_1007519E4();
  *(v66 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(swift_allocObject() + 16) = v55;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v39;
}

id sub_1006A15C0(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1006ABADC();
  sub_1006ABB00(v5, v6, a3, &off_1008805F8);

  v7 = [a1 traitCollection];
  v8 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_titleLabel];
  if (qword_100921CC8 != -1)
  {
    swift_once();
  }

  v9 = sub_10074D1D4();
  sub_10000D0FC(v9, qword_100982D78);
  v10.super.isa = v7;
  [v8 setNumberOfLines:sub_10074D194(v10)];

  return [a1 setNeedsLayout];
}

id sub_1006A1714()
{
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_appEventTapGestureRecognizer] removeTarget:v0 action:0];
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_viewButton] removeTarget:v0 action:"handleTapWithGestureRecognizer:" forControlEvents:0xFFFFFFFFLL];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CondensedAppEventCardView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1006A18B0()
{
  v1 = v0;
  v2 = sub_10000C518(&qword_100922FD0);
  v123 = *(v2 - 8);
  v124 = v2;
  __chkstk_darwin(v2);
  v122 = &v90 - v3;
  v4 = sub_10074D294();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074D2B4();
  v120 = *(v8 - 8);
  *&v121 = v8;
  __chkstk_darwin(v8);
  v119 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100750354();
  v107 = *(v10 - 8);
  v108 = v10;
  __chkstk_darwin(v10);
  v106 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_100750CC4();
  v128 = *(v126 - 8);
  __chkstk_darwin(v126);
  v103 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_100750CB4();
  v129 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_100750C64();
  v127 = *(v125 - 8);
  __chkstk_darwin(v125);
  v15 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_100750D04();
  v16 = *(v105 - 8);
  __chkstk_darwin(v105);
  v104 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CondensedAppEventCardView();
  v149.receiver = v0;
  v149.super_class = v18;
  objc_msgSendSuper2(&v149, "layoutSubviews");
  sub_1007477B4();
  v20 = v19;
  v22 = v21;
  v23 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_appEventFormattedDateView];
  sub_1000CBC6C(v146);
  v24 = sub_1000CD7E4(v0, v146, v20, v22);
  v26 = v25;
  sub_1000CD59C(v146);
  [v23 setFrame:{0.0, 0.0, v24, v26}];
  v27 = [v0 traitCollection];
  v28 = sub_100753804();

  if (v28)
  {
    v95 = v16;
    if (qword_100921CC0 != -1)
    {
      swift_once();
    }

    v29 = sub_10000D0FC(v4, qword_100982D60);
    v30 = type metadata accessor for AppPromotionFormattedDateView();
    v148 = &protocol witness table for UIView;
    v147 = v30;
    v146[0] = v23;
    v31 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_titleLabel];
    v32 = sub_100745C84();
    v145 = &protocol witness table for UILabel;
    v144 = v32;
    v143[0] = v31;
    v33 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_viewButton];
    v34 = sub_1003F9034();
    v142 = &protocol witness table for UIView;
    v141 = v34;
    v140 = v33;
    v35 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_artworkView];
    v138 = sub_1007433C4();
    v139 = &protocol witness table for UIView;
    v137 = v35;
    sub_10000C518(&unk_100923060);
    v36 = *(sub_100750CF4() - 8);
    v99 = *(v36 + 72);
    v37 = *(v36 + 80);
    v94 = v1;
    v38 = (v37 + 32) & ~v37;
    v39 = swift_allocObject();
    v93 = v39;
    *(v39 + 16) = xmmword_1007A97A0;
    v124 = v39 + v38;
    v40 = v23;
    v41 = v31;
    v42 = v33;
    v43 = v35;
    sub_10074D224();
    v97 = v29;
    sub_10074D244();
    v92 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
    v44 = v127;
    v98 = *(v127 + 104);
    v100 = v127 + 104;
    v45 = v15;
    v98(v15);
    v46 = sub_10000C518(&unk_100944F30);
    v47 = *(v129 + 72);
    v109 = *(v129 + 80);
    v96 = (v109 + 32) & ~v109;
    v122 = v47;
    v123 = 3 * v47;
    v110 = 2 * v47;
    v111 = v46;
    v48 = swift_allocObject();
    v121 = xmmword_1007A5620;
    *(v48 + 16) = xmmword_1007A5620;
    sub_100750CA4();
    sub_100750C84();
    sub_100750C94();
    v131[0] = v48;
    v119 = sub_1006A520C(&qword_100923050, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
    v118 = sub_10000C518(&unk_100944F40);
    v120 = sub_100016BFC();
    v50 = v101;
    v49 = v102;
    sub_1007543A4();
    v117 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v51 = v128;
    v52 = *(v128 + 104);
    v115 = v128 + 104;
    v116 = v52;
    v53 = v103;
    v54 = v126;
    v52(v103);
    sub_100750CE4();
    v55 = *(v51 + 8);
    v128 = v51 + 8;
    v114 = v55;
    v55(v53, v54);
    v56 = *(v129 + 8);
    v129 += 8;
    v113 = v56;
    v56(v50, v49);
    v57 = *(v44 + 8);
    v127 = v44 + 8;
    v112 = v57;
    v58 = v125;
    v57(v45, v125);
    sub_1000F4268(v132);
    sub_10000C620(v134);
    sub_10074D214();
    v133 = 0;
    memset(v132, 0, sizeof(v132));
    v91 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
    v59 = v98;
    v98(v45);
    v60 = swift_allocObject();
    *(v60 + 16) = v121;
    sub_100750CA4();
    sub_100750C84();
    sub_100750C94();
    v131[0] = v60;
    sub_1007543A4();
    v61 = v126;
    v116(v53, v117, v126);
    v62 = v99;
    sub_100750CE4();
    v114(v53, v61);
    v113(v50, v49);
    v112(v45, v58);
    sub_1000F4268(v132);
    sub_10000C620(v134);
    v90 = 2 * v62;
    v63 = v144;
    v64 = v145;
    v65 = sub_10000C888(v143, v144);
    v135 = v63;
    v136 = v64[1];
    v66 = sub_10000D134(v134);
    (*(*(v63 - 8) + 16))(v66, v65, v63);
    sub_10074D204();
    sub_10074D254();
    (v59)(v45, v91, v58);
    v67 = swift_allocObject();
    *(v67 + 16) = v121;
    sub_100750CA4();
    sub_100750C84();
    sub_100750C94();
    v130 = v67;
    sub_1007543A4();
    v68 = v126;
    v116(v53, v117, v126);
    v69 = v90;
    sub_100750CE4();
    v114(v53, v68);
    v113(v50, v49);
    v70 = v125;
    v112(v45, v125);
    sub_1000F4268(v131);
    sub_10000C620(v132);
    sub_10000C620(v134);
    v99 += v69;
    v135 = &type metadata for Double;
    v136 = &protocol witness table for Double;
    v134[0] = 0x4030000000000000;
    sub_10074D234();
    (v98)(v45, v92, v70);
    v71 = swift_allocObject();
    *(v71 + 16) = v121;
    sub_100750CA4();
    sub_100750C84();
    sub_100750C94();
    v131[0] = v71;
    sub_1007543A4();
    v72 = v126;
    v116(v53, v117, v126);
    sub_100750CE4();
    v114(v53, v72);
    v113(v50, v49);
    v112(v45, v70);
    sub_1000F4268(v132);
    sub_10000C620(v134);
    v73 = v104;
    sub_100750CD4();
    sub_10000C620(&v137);
    sub_10000C620(&v140);
    sub_10000C620(v143);
    sub_10000C620(v146);
    v75 = v105;
    v74 = v106;
    sub_100751124();
    (*(v107 + 8))(v74, v108);
    return (*(v95 + 8))(v73, v75);
  }

  else
  {
    if (qword_100921CC0 != -1)
    {
      swift_once();
    }

    v77 = sub_10000D0FC(v4, qword_100982D60);
    (*(v5 + 16))(v7, v77, v4);
    v78 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_artworkView];
    v147 = sub_1007433C4();
    v148 = sub_1006A520C(&qword_10092E370, &type metadata accessor for ArtworkView);
    v146[0] = v78;
    v134[0] = v23;
    type metadata accessor for AppPromotionFormattedDateView();
    v79 = v78;
    sub_100750434();
    v80 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_titleLabel];
    v81 = sub_100745C84();
    v142 = &protocol witness table for UILabel;
    v141 = v81;
    v140 = v80;
    v82 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_viewButton];
    v138 = sub_1003F9034();
    v139 = &protocol witness table for UIButton;
    v137 = v82;
    v83 = v80;
    v84 = v82;
    v85 = v119;
    sub_10074D2A4();
    v86 = [v1 traitCollection];
    sub_1006A520C(&qword_100922FD8, &type metadata accessor for CondensedSearchResultCardLayout);
    v87 = v122;
    v88 = v121;
    sub_100750594();
    swift_getOpaqueTypeConformance2();
    v89 = v124;
    sub_100751244();

    (*(v123 + 8))(v87, v89);
    return (*(v120 + 8))(v85, v88);
  }
}

double sub_1006A2970()
{
  v1 = v0;
  v113 = sub_10000C518(&qword_100922FD0);
  v108 = *(v113 - 8);
  __chkstk_darwin(v113);
  v3 = &v79 - v2;
  v107 = sub_10074D2B4();
  v4 = *(v107 - 8);
  __chkstk_darwin(v107);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_100750CC4();
  v116 = *(v114 - 8);
  __chkstk_darwin(v114);
  v90 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_100750CB4();
  v117 = *(v89 - 8);
  __chkstk_darwin(v89);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_100750C64();
  v115 = *(v111 - 8);
  __chkstk_darwin(v111);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10074D294();
  v109 = *(v12 - 8);
  v110 = v12;
  __chkstk_darwin(v12);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100750D04();
  v92 = *(v15 - 8);
  v93 = v15;
  __chkstk_darwin(v15);
  v91 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100753804())
  {
    sub_10074D284();
    v17 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_appEventFormattedDateView];
    v135 = type metadata accessor for AppPromotionFormattedDateView();
    v136 = &protocol witness table for UIView;
    v134 = v17;
    v18 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_titleLabel];
    v132 = sub_100745C84();
    v133 = &protocol witness table for UILabel;
    v131[0] = v18;
    v19 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_viewButton];
    v129 = sub_1003F9034();
    v130 = &protocol witness table for UIView;
    v128 = v19;
    v20 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_artworkView];
    v126 = sub_1007433C4();
    v127 = &protocol witness table for UIView;
    v125 = v20;
    sub_10000C518(&unk_100923060);
    v21 = *(sub_100750CF4() - 8);
    v87 = *(v21 + 72);
    v22 = *(v21 + 80);
    v85 = v0;
    v23 = (v22 + 32) & ~v22;
    v24 = swift_allocObject();
    v84 = v24;
    *(v24 + 16) = xmmword_1007A97A0;
    v113 = v24 + v23;
    v25 = v17;
    v26 = v18;
    v27 = v19;
    v28 = v20;
    v112 = v14;
    sub_10074D224();
    sub_10074D244();
    v83 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
    v29 = v115;
    v30 = *(v115 + 104);
    v86 = v115 + 104;
    v94 = v30;
    v30(v11);
    v88 = sub_10000C518(&unk_100944F30);
    v31 = *(v117 + 72);
    v32 = *(v117 + 80);
    v33 = (v32 + 32) & ~v32;
    v107 = 3 * v31;
    v108 = v32;
    v105 = v31;
    v106 = 2 * v31;
    v34 = swift_allocObject();
    v104 = xmmword_1007A5620;
    *(v34 + 16) = xmmword_1007A5620;
    sub_100750CA4();
    sub_100750C84();
    sub_100750C94();
    v119[0] = v34;
    v103 = sub_1006A520C(&qword_100923050, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
    v102 = sub_10000C518(&unk_100944F40);
    v96 = sub_100016BFC();
    v35 = v89;
    sub_1007543A4();
    v101 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v36 = v116;
    v37 = *(v116 + 104);
    v99 = v116 + 104;
    v100 = v37;
    v38 = v90;
    v39 = v114;
    v37(v90);
    sub_100750CE4();
    v95 = *(v36 + 8);
    v116 = v36 + 8;
    v95(v38, v39);
    v40 = *(v117 + 8);
    v117 += 8;
    v98 = v40;
    v40(v9, v35);
    v41 = *(v29 + 8);
    v115 = v29 + 8;
    v97 = v41;
    v42 = v111;
    v41(v11, v111);
    sub_1000F4268(v120);
    sub_10000C620(v122);
    sub_10074D214();
    v121 = 0;
    memset(v120, 0, sizeof(v120));
    v82 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
    v94(v11);
    v81 = v33;
    v43 = swift_allocObject();
    *(v43 + 16) = v104;
    sub_100750CA4();
    sub_100750C84();
    sub_100750C94();
    v119[0] = v43;
    sub_1007543A4();
    v44 = v114;
    v100(v38, v101, v114);
    v45 = v87;
    sub_100750CE4();
    v95(v38, v44);
    v98(v9, v35);
    v97(v11, v42);
    sub_1000F4268(v120);
    sub_10000C620(v122);
    v80 = 2 * v45;
    v46 = v132;
    v47 = v133;
    v48 = sub_10000C888(v131, v132);
    v123 = v46;
    v124 = v47[1];
    v49 = sub_10000D134(v122);
    (*(*(v46 - 8) + 16))(v49, v48, v46);
    sub_10074D204();
    sub_10074D254();
    v50 = v42;
    (v94)(v11, v82, v42);
    v51 = swift_allocObject();
    *(v51 + 16) = v104;
    sub_100750CA4();
    sub_100750C84();
    sub_100750C94();
    v118 = v51;
    sub_1007543A4();
    v52 = v114;
    v100(v38, v101, v114);
    v53 = v80;
    sub_100750CE4();
    v95(v38, v52);
    v98(v9, v35);
    v97(v11, v50);
    sub_1000F4268(v119);
    sub_10000C620(v120);
    sub_10000C620(v122);
    v87 += v53;
    v123 = &type metadata for Double;
    v124 = &protocol witness table for Double;
    v122[0] = 0x4030000000000000;
    sub_10074D234();
    (v94)(v11, v83, v50);
    v54 = swift_allocObject();
    *(v54 + 16) = v104;
    sub_100750CA4();
    sub_100750C84();
    sub_100750C94();
    v119[0] = v54;
    sub_1007543A4();
    v55 = v114;
    v100(v38, v101, v114);
    sub_100750CE4();
    v95(v38, v55);
    v98(v9, v35);
    v97(v11, v50);
    sub_1000F4268(v120);
    sub_10000C620(v122);
    v56 = v91;
    sub_100750CD4();
    (*(v109 + 8))(v112, v110);
    sub_10000C620(&v125);
    sub_10000C620(&v128);
    sub_10000C620(v131);
    sub_10000C620(&v134);
    v57 = [v85 traitCollection];
    sub_100751034();
    sub_10000C518(&unk_1009231A0);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1007A5CF0;
    *(v58 + 32) = v57;
    v59 = v57;
    v60 = sub_100751044();
    v61 = v93;
    sub_100750404();
    v63 = v62;

    (*(v92 + 8))(v56, v61);
  }

  else
  {
    v65 = v109;
    v64 = v110;
    if (qword_100921CC0 != -1)
    {
      swift_once();
    }

    v66 = sub_10000D0FC(v64, qword_100982D60);
    (*(v65 + 16))(v14, v66, v64);
    v67 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_artworkView];
    v135 = sub_1007433C4();
    v136 = sub_1006A520C(&qword_10092E370, &type metadata accessor for ArtworkView);
    v134 = v67;
    v68 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_appEventFormattedDateView];
    v132 = type metadata accessor for AppPromotionFormattedDateView();
    v133 = sub_1006A520C(&qword_100944F58, type metadata accessor for AppPromotionFormattedDateView);
    v131[0] = v68;
    v69 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_titleLabel];
    v129 = sub_100745C84();
    v130 = &protocol witness table for UILabel;
    v128 = v69;
    v70 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_viewButton];
    v126 = sub_1003F9034();
    v127 = &protocol witness table for UIButton;
    v125 = v70;
    v71 = v67;
    v72 = v68;
    v73 = v69;
    v74 = v70;
    sub_10074D2A4();
    sub_1006A520C(&qword_100922FD8, &type metadata accessor for CondensedSearchResultCardLayout);
    v75 = v107;
    sub_100750594();
    swift_getOpaqueTypeConformance2();
    v76 = v113;
    sub_100751254();
    v63 = v77;
    (*(v108 + 8))(v3, v76);
    (*(v4 + 8))(v6, v75);
  }

  return v63;
}

double sub_1006A3924()
{
  v104 = sub_100750CC4();
  v108 = *(v104 - 8);
  __chkstk_darwin(v104);
  v78 = &v64 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_100750CB4();
  v109 = *(v77 - 8);
  __chkstk_darwin(v77);
  v76 = &v64 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100750C64();
  v3 = *(v2 - 8);
  v106 = v2;
  v107 = v3;
  __chkstk_darwin(v2);
  v73 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100750D04();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v79 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_100750304();
  v8 = *(v102 - 8);
  __chkstk_darwin(v102);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074CD14();
  v103 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100747C14();
  __chkstk_darwin(v14 - 8);
  v15 = sub_10074F704();
  v74 = *(v15 - 8);
  v75 = v15;
  __chkstk_darwin(v15);
  v87 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100742574();
  sub_1006A520C(&qword_100923190, &type metadata accessor for AppEventSearchResult);
  sub_1007468B4();
  if (!v120[0])
  {
    return 0.0;
  }

  v101 = v11;
  v86 = v120[0];
  sub_100746884();
  if (qword_100920C20 != -1)
  {
    swift_once();
  }

  sub_10074F6A4();
  sub_10074F674();
  swift_getKeyPath();
  sub_100746914();

  v17 = v120[0];
  if (qword_100921CC0 != -1)
  {
    swift_once();
  }

  v18 = sub_10074D294();
  v105 = sub_10000D0FC(v18, qword_100982D60);
  sub_10074D1F4();
  v19 = sub_100750F34();
  swift_allocObject();
  v85 = sub_100750F14();
  if (qword_1009201B8 != -1)
  {
    swift_once();
  }

  v71 = v6;
  v72 = v5;
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_100536A04(&unk_10097D858, v17);
  swift_unknownObjectRelease();
  swift_allocObject();
  v84 = sub_100750F04();
  sub_100742554();
  sub_100742874();
  v100 = v20;

  if (qword_100921CC8 != -1)
  {
    swift_once();
  }

  v21 = sub_10074D1D4();
  sub_10000D0FC(v21, qword_100982D78);
  sub_10074D1C4();
  v22 = v102;
  (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v102);
  v23.super.isa = [v17 traitCollection];
  isa = v23.super.isa;
  sub_1007502F4(v23);

  (*(v8 + 8))(v10, v22);
  v25 = sub_10074F3F4();
  v121 = v25;
  v122 = sub_1006A520C(&qword_10092AC70, &type metadata accessor for Feature);
  v26 = sub_10000D134(v120);
  (*(*(v25 - 8) + 104))(v26, enum case for Feature.measurement_with_labelplaceholder(_:), v25);
  sub_10074FC74();
  sub_10000C620(v120);
  sub_10074CD04();
  sub_10074CCE4();
  (*(v103 + 8))(v13, v101);
  sub_10074D1E4();
  swift_allocObject();
  v27 = sub_100750F14();
  v119[3] = v19;
  v119[4] = &protocol witness table for LayoutViewPlaceholder;
  v118[4] = &protocol witness table for LayoutViewPlaceholder;
  v119[0] = v84;
  v118[3] = v19;
  v118[0] = v27;
  v70 = v27;
  v117[4] = &protocol witness table for LayoutViewPlaceholder;
  v117[3] = v19;
  v117[0] = v85;
  sub_10000C518(&unk_100923060);
  v28 = *(sub_100750CF4() - 8);
  v83 = *(v28 + 72);
  v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v30 = swift_allocObject();
  v69 = v30;
  *(v30 + 16) = xmmword_1007A97A0;
  v88 = v30 + v29;

  sub_10074D224();
  sub_10074D244();
  v67 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v31 = v107;
  v32 = *(v107 + 104);
  v89 = v107 + 104;
  v90 = v32;
  v68 = v17;
  v33 = v73;
  v32(v73);
  v91 = sub_10000C518(&unk_100944F30);
  v34 = *(v109 + 72);
  v35 = *(v109 + 80);
  v81 = (v35 + 32) & ~v35;
  v102 = 3 * v34;
  v103 = v35;
  v100 = v34;
  v101 = 2 * v34;
  v36 = swift_allocObject();
  v99 = xmmword_1007A5620;
  *(v36 + 16) = xmmword_1007A5620;
  sub_100750CA4();
  sub_100750C84();
  sub_100750C94();
  v111[0] = v36;
  v97 = sub_1006A520C(&qword_100923050, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
  v96 = sub_10000C518(&unk_100944F40);
  v98 = sub_100016BFC();
  v37 = v76;
  v38 = v77;
  sub_1007543A4();
  v95 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v39 = v108;
  v40 = *(v108 + 104);
  v93 = v108 + 104;
  v94 = v40;
  v41 = v78;
  v42 = v104;
  v40(v78);
  sub_100750CE4();
  v80 = *(v39 + 8);
  v108 = v39 + 8;
  v80(v41, v42);
  v82 = *(v109 + 8);
  v109 += 8;
  v82(v37, v38);
  v43 = *(v31 + 8);
  v107 = v31 + 8;
  v92 = v43;
  v43(v33, v106);
  sub_1000F4268(v112);
  sub_10000C620(v114);
  sub_10074D214();
  v113 = 0;
  memset(v112, 0, sizeof(v112));
  v66 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  v90(v33);
  v44 = swift_allocObject();
  *(v44 + 16) = v99;
  sub_100750CA4();
  sub_100750C84();
  sub_100750C94();
  v111[0] = v44;
  sub_1007543A4();
  v94(v41, v95, v42);
  v45 = v83;
  sub_100750CE4();
  v46 = v80;
  v80(v41, v42);
  v82(v37, v38);
  v47 = v106;
  v92(v33, v106);
  sub_1000F4268(v112);
  sub_10000C620(v114);
  v65 = 2 * v45;
  v48 = v121;
  v49 = v122;
  v50 = sub_10000C888(v120, v121);
  v115 = v48;
  v116 = *(v49 + 8);
  v51 = sub_10000D134(v114);
  (*(*(v48 - 8) + 16))(v51, v50, v48);
  sub_10074D204();
  sub_10074D254();
  (v90)(v33, v66, v47);
  v52 = swift_allocObject();
  *(v52 + 16) = v99;
  sub_100750CA4();
  sub_100750C84();
  sub_100750C94();
  v110 = v52;
  sub_1007543A4();
  v53 = v104;
  v94(v41, v95, v104);
  v54 = v65;
  sub_100750CE4();
  v46(v41, v53);
  v55 = v82;
  v82(v37, v38);
  v56 = v106;
  v92(v33, v106);
  sub_1000F4268(v111);
  sub_10000C620(v112);
  sub_10000C620(v114);
  v83 += v54;
  v115 = &type metadata for Double;
  v116 = &protocol witness table for Double;
  v114[0] = 0x4030000000000000;
  sub_10074D234();
  (v90)(v33, v67, v56);
  v57 = swift_allocObject();
  *(v57 + 16) = v99;
  sub_100750CA4();
  sub_100750C84();
  sub_100750C94();
  v111[0] = v57;
  sub_1007543A4();
  v58 = v104;
  v94(v41, v95, v104);
  sub_100750CE4();
  v80(v41, v58);
  v55(v37, v38);
  v92(v33, v56);
  sub_1000F4268(v112);
  sub_10000C620(v114);
  v59 = v79;
  sub_100750CD4();
  sub_10000C620(v117);
  sub_10000C620(v118);
  sub_10000C620(v119);
  v60 = v72;
  sub_100750404();
  v62 = v61;
  swift_unknownObjectRelease();

  (*(v74 + 8))(v87, v75);
  sub_10000C620(v120);
  (*(v71 + 8))(v59, v60);
  return v62;
}

double sub_1006A4980()
{
  v46 = sub_10074D294();
  __chkstk_darwin(v46);
  v51 = &v44 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_10074D2B4();
  v56 = *(v1 - 8);
  v57 = v1;
  __chkstk_darwin(v1);
  v54 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_100750BD4();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v52 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750534();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100750E94();
  v8 = *(v50 - 8);
  __chkstk_darwin(v50);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  __chkstk_darwin(v14);
  v47 = &v44 - v15;
  v16 = sub_100747C14();
  __chkstk_darwin(v16 - 8);
  v17 = sub_10074F704();
  v48 = *(v17 - 8);
  v49 = v17;
  __chkstk_darwin(v17);
  v60 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100742574();
  sub_1006A520C(&qword_100923190, &type metadata accessor for AppEventSearchResult);
  sub_1007468B4();
  v59 = v70[0];
  if (!v70[0])
  {
    return 0.0;
  }

  v45 = v5;
  sub_100746884();
  if (qword_100920C20 != -1)
  {
    swift_once();
  }

  sub_10074F6A4();
  sub_10074F674();
  swift_getKeyPath();
  sub_100746914();

  v19 = v70[0];
  swift_getObjectType();
  v44 = [v19 traitCollection];
  v58 = sub_100742554();
  if (qword_100921CC0 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v46, qword_100982D60);
  sub_10074D1F4();
  v21 = v20;
  v23 = v22;
  if (qword_1009201B8 != -1)
  {
    swift_once();
  }

  swift_unknownObjectRetain();
  v24 = sub_100536A04(&unk_10097D858, v19);
  v26 = v25;
  swift_unknownObjectRelease();
  sub_100750E84();
  v27 = v45;
  v46 = v19;
  if (qword_100921CC8 != -1)
  {
    swift_once();
  }

  v28 = sub_10074D1D4();
  sub_10000D0FC(v28, qword_100982D78);
  sub_10074D1C4();
  sub_100750E54();
  v27[1](v7, v4);
  v29 = *(v8 + 8);
  v30 = v50;
  (v29)(v10, v50);
  v45 = v29;
  v31 = v44;
  v32.super.isa = v44;
  sub_10074D194(v32);
  v33 = v47;
  sub_100750E74();
  (v29)(v13, v30);
  sub_100742874();
  (*(v8 + 16))(v13, v33, v30);
  sub_100750BB4();
  v34 = v52;
  sub_100750BF4();
  v70[3] = &type metadata for FixedSizedPlaceholder;
  v35 = sub_100016AF8();
  v70[4] = v35;
  *v70 = v24;
  v70[1] = v26;
  v36 = v55;
  v69[3] = v55;
  v69[4] = &protocol witness table for LabelPlaceholder;
  v37 = sub_10000D134(v69);
  v38 = v53;
  (*(v53 + 16))(v37, v34, v36);
  v67 = &type metadata for FixedSizedPlaceholder;
  v68 = v35;
  v66 = xmmword_1007D4960;
  v65[3] = &type metadata for FixedSizedPlaceholder;
  v65[4] = v35;
  v65[0] = v21;
  v65[1] = v23;
  sub_10074D284();
  sub_10000C824(v65, &v64);
  sub_10000C824(v70, &v63);
  sub_10000C824(v69, &v62);
  sub_10000C824(&v66, &v61);
  v39 = v54;
  sub_10074D2A4();
  sub_10000C620(v65);
  sub_10000C620(&v66);
  sub_10000C620(v69);
  sub_10000C620(v70);
  sub_1006A520C(&qword_100944F50, &type metadata accessor for CondensedSearchResultCardLayout);
  v40 = v57;
  sub_100751254();
  v42 = v41;
  swift_unknownObjectRelease();

  (*(v56 + 8))(v39, v40);
  (*(v38 + 8))(v34, v36);
  (v45)(v33, v30);
  (*(v48 + 8))(v60, v49);
  return v42;
}

uint64_t sub_1006A520C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1006A5254()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_appEventFormattedDateView;
  *(v1 + v2) = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_titleLabel;
  sub_100745C84();
  *(v1 + v3) = sub_100745C64();
  v4 = OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_viewButton;
  *(v1 + v4) = [objc_opt_self() buttonWithType:0];
  v5 = OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_artworkView;
  if (qword_100921CC0 != -1)
  {
    swift_once();
  }

  v6 = sub_10074D294();
  sub_10000D0FC(v6, qword_100982D60);
  sub_10074D1F4();
  *(v1 + v5) = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, v7, v8}];
  v9 = OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_appEventTapGestureRecognizer;
  *(v1 + v9) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v10 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_appEventViewTappedAction);
  *v10 = 0;
  v10[1] = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_1006A541C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(_BYTE *, unint64_t))
{
  v8 = v7;
  v112 = a7;
  v121 = a6;
  v93 = a5;
  v120 = a4;
  v114 = a3;
  v11 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v11 - 8);
  v106 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1007504F4();
  v98 = *(v101 - 8);
  __chkstk_darwin(v101);
  v97 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v93 - v15;
  v17 = sub_100746A94();
  v113 = *(v17 - 8);
  __chkstk_darwin(v17);
  v116 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v104 = &v93 - v20;
  __chkstk_darwin(v21);
  v110 = &v93 - v22;
  __chkstk_darwin(v23);
  v117 = &v93 - v24;
  v25 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v25 - 8);
  v96 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v93 - v28;
  v100 = sub_100746B04();
  v111 = *(v100 - 8);
  __chkstk_darwin(v100);
  v105 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v109 = &v93 - v32;
  __chkstk_darwin(v33);
  v102 = &v93 - v34;
  v35 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_imageViews;
  swift_beginAccess();
  v119 = v35;
  v36 = *(v7 + v35);
  if (v36 >> 62)
  {
    goto LABEL_103;
  }

  for (i = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100754664())
  {
    v107 = v8;
    v115 = v17;
    v99 = a1;
    v108 = v29;
    v38 = &v124;
    v103 = v16;
    if (!i)
    {
      goto LABEL_11;
    }

    if (i >= 1)
    {
      v94 = a2;

      v39 = 0;
      do
      {
        if ((v36 & 0xC000000000000001) != 0)
        {
          v40 = sub_100754574();
        }

        else
        {
          v40 = *&v36[8 * v39 + 32];
        }

        v41 = v40;
        ++v39;
        v122[0] = v40;
        type metadata accessor for BorderedScreenshotView();
        sub_1006A6FF0(&qword_100923470, type metadata accessor for BorderedScreenshotView);
        v42 = v41;
        sub_1007544E4();
        sub_100744264();
        sub_100016994(v123);
        v43 = *&v42[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView];
        v125.value.super.isa = 0;
        v125.is_nil = 0;
        sub_100743384(v125, v44);
      }

      while (i != v39);

      v8 = v107;
      a2 = v94;
      v17 = v115;
LABEL_11:
      v118 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_videoView;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v46 = Strong;
        [*(Strong + qword_10093CB50) setImage:{0, v93}];
        v122[0] = v46;
        type metadata accessor for VideoView();
        sub_1006A6FF0(&qword_10093DD00, type metadata accessor for VideoView);
        v47 = v46;
        v8 = v107;
        v48 = v47;
        sub_1007544E4();
        sub_100744264();

        sub_100016994(v123);
      }

      v49 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_metrics;
      swift_beginAccess();
      v50 = v8;
      v51 = v111;
      v52 = *(v111 + 16);
      v53 = v102;
      i = v100;
      v52(v102, v50 + v49, v100);
      sub_100746AF4();
      v54 = *(v51 + 8);
      v54(v53, i);
      v55 = v109;
      v52(v109, v50 + v49, i);
      v56 = v110;
      sub_100746AB4();
      v111 = v51 + 8;
      v95 = v54;
      v54(v55, i);
      if (v114)
      {
        v57 = sub_100743844();
      }

      else
      {
        v57 = 0;
      }

      a1 = a2;
      v29 = v99;
      v36 = v113;
      v58 = v117;
      v7 = v56;
      sub_10062E728(v57, v112, v117);

      v59 = *(v36 + 1);
      v113 = v36 + 8;
      v112 = v59;
      v59(v56, v17);
      v123[3] = &type metadata for CGFloat;
      v123[4] = &protocol witness table for CGFloat;
      v123[0] = 0x4021000000000000;
      sub_10000C824(v123, v122);
      v60 = *(v36 + 2);
      v110 = v36 + 16;
      v109 = v60;
      (v60)(v104, v58, v17);
      v8 = v107;
      if (a2 | v29)
      {
        sub_100750504();
        goto LABEL_24;
      }

      v61 = sub_100631A30(v114, v120, 0, 1);
      v35 = v116;
      if (v61 >> 62)
      {
        v91 = v61;
        v92 = sub_100754664();
        v61 = v91;
        v35 = v116;
        if (v92)
        {
          goto LABEL_19;
        }
      }

      else if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_19:
        if ((v61 & 0xC000000000000001) != 0)
        {
          goto LABEL_113;
        }

        v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v62)
        {

          goto LABEL_22;
        }

        __break(1u);
        goto LABEL_115;
      }

      sub_100750504();
      goto LABEL_25;
    }

    __break(1u);
LABEL_105:
    v36 = sub_100254D74((v38 > 1), v120, 1, v36);
LABEL_27:

    v17 = v115;
LABEL_31:
    v95(v105, i);
    v112(v117, v17);
    sub_10000C8CC(v108, &unk_1009281D0);
    *(v36 + 2) = v120;
    v64 = &v36[16 * v35];
    *(v64 + 4) = v7;
    v64[40] = 0;
    if (a1 | v29)
    {
      break;
    }

LABEL_76:
    v17 = 0;
    v29 = (v36 + 40);
    v16 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView;
    while (v17 < *(v36 + 2))
    {
      a2 = *(v29 - 8);
      a1 = *v29;
      v123[0] = _swiftEmptyArrayStorage;
      v79 = swift_unknownObjectWeakLoadStrong();

      if (v79)
      {
        v80 = v79;
        sub_100753284();
        if (*((v123[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();
      }

      v81 = *(v8 + v16);
      if (v81)
      {
        v82 = v81;
        sub_100753284();
        if (*((v123[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();
      }

      v83 = *(v8 + v119);
      if (v83 >> 62)
      {
        sub_100016C60(0, &qword_100922300);

        v84 = sub_100754654();
      }

      else
      {
        swift_bridgeObjectRetain_n();
        sub_100754764();
        sub_100016C60(0, &qword_100922300);
        v84 = v83;
      }

      v7 = v123;
      sub_10049FC94(v84);
      if (v123[0] >> 62)
      {
        v7 = v123[0];
        v35 = sub_100754664();
      }

      else
      {
        v35 = *((v123[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v17 < v35)
      {
        v85 = sub_10062F024();
        v7 = v85;
        if ((v85 & 0xC000000000000001) != 0)
        {
          v86 = sub_100754574();
        }

        else
        {
          if (v17 >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_101;
          }

          v86 = *(v85 + 8 * v17 + 32);
        }

        v87 = v86;

        v122[0] = v87;
        sub_100016C60(0, &qword_100922300);
        sub_1006A7038();
        sub_1007544E4();
        v35 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v88 = swift_allocObject();
        *(v88 + 16) = v35;
        *(v88 + 24) = a1;
        *(v88 + 32) = v17;

        v7 = v121;
        sub_1007441F4();

        sub_10000C8CC(v123, &unk_1009276E0);
      }

      ++v17;
      v29 += 16;
      if (v120 == v17)
      {
      }
    }

    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    ;
  }

  while (1)
  {
    a1 = *(v36 + 4);

    v65 = sub_10062F024();
    if (v65 >> 62)
    {
      v89 = v65;
      v90 = sub_100754664();
      v65 = v89;
      if (!v90)
      {
LABEL_107:

        v67 = 0;
        goto LABEL_108;
      }
    }

    else if (!*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_107;
    }

    if ((v65 & 0xC000000000000001) != 0)
    {
      v66 = sub_100754574();
      goto LABEL_37;
    }

    if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v66 = *(v65 + 32);
LABEL_37:
      v67 = v66;

LABEL_108:
      v122[0] = v67;
      sub_10000C518(&qword_100941700);
      sub_1006A7120();
      sub_1007544E4();
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_1007441F4();

      sub_10000C8CC(v123, &unk_1009276E0);
    }

    __break(1u);
LABEL_113:
    sub_100754574();
LABEL_22:

    sub_10074F2A4();
    sub_100750504();

LABEL_24:
    v35 = v116;
LABEL_25:
    a2 = v96;
    sub_100016B4C(v108, v96, &unk_1009281D0);
    sub_100746AD4();
    sub_10000C620(v123);
    v63 = v97;
    sub_100746AE4();
    sub_1007504C4();
    (*(v98 + 8))(v63, v101);
    if (a1)
    {

      sub_10074EC14();
      v7 = sub_10074F374();
      v36 = sub_100254D74(0, 1, 1, _swiftEmptyArrayStorage);
      v35 = *(v36 + 2);
      v38 = *(v36 + 3);
      v120 = v35 + 1;
      if (v35 >= v38 >> 1)
      {
        goto LABEL_105;
      }

      goto LABEL_27;
    }

    if (v29)
    {

      v7 = sub_10074F374();
      v36 = sub_100254D74(0, 1, 1, _swiftEmptyArrayStorage);
      v35 = *(v36 + 2);
      v62 = *(v36 + 3);
      v120 = v35 + 1;
      if (v35 < v62 >> 1)
      {
LABEL_30:

        goto LABEL_31;
      }

LABEL_115:
      v36 = sub_100254D74((v62 > 1), v120, 1, v36);
      goto LABEL_30;
    }

    v68 = sub_100746A84();
    v7 = sub_100631A30(v114, v120, v68, 0);
    result = sub_100746B24();
    v70 = v7;
    if (v7 >> 62)
    {
      result = sub_100754664();
      v70 = v7;
      i = result;
    }

    else
    {
      i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v94 = 0;
    if (i)
    {
      break;
    }

    v36 = _swiftEmptyArrayStorage;
LABEL_74:

    v95(v105, v100);
    v112(v117, v17);
    sub_10000C8CC(v108, &unk_1009281D0);
    v120 = *(v36 + 2);
    if (!v120)
    {
    }

    a1 = v94;
    v29 = v99;
    if (!(v94 | v99))
    {
      goto LABEL_76;
    }
  }

  if (i >= 1)
  {
    a2 = 0;
    v104 = (v70 & 0xC000000000000001);
    v103 = (v36 + 88);
    LODWORD(v102) = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
    LODWORD(v98) = enum case for LockupMediaLayout.DisplayType.landscape(_:);
    v36 = _swiftEmptyArrayStorage;
    v101 = v70;
    while (1)
    {
      if (v104)
      {
        v29 = sub_100754574();
      }

      else
      {
        v29 = *(v70 + 8 * a2 + 32);
      }

      (v109)(v35, v117, v17);
      v71 = (*v103)(v35, v17);
      if (v71 == v102)
      {
        break;
      }

      if (v71 == v98)
      {
        goto LABEL_49;
      }

      v16 = sub_10074F194();
      v112(v35, v17);
LABEL_51:
      if (!v120)
      {
        goto LABEL_62;
      }

      v7 = v120;
      v72 = sub_10074F794();
      if (v72 >> 62)
      {
        v35 = v72;
        v74 = sub_100754664();
        v72 = v35;
        if (!v74)
        {
LABEL_61:

          goto LABEL_62;
        }
      }

      else if (!*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      if ((v72 & 0xC000000000000001) != 0)
      {
        sub_100754574();
      }

      else
      {
        if (!*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_102;
        }
      }

      sub_10074F3D4();
      a1 = sub_10074EC14();
      v73 = sub_10074F224();

      if ((v73 & 1) == 0)
      {

LABEL_62:
        if (v114)
        {
          v75 = sub_100743844();
        }

        else
        {
          v75 = 0;
        }

        sub_100743864();
        a1 = v106;
        sub_1002898DC(v75, v106);

        sub_100753BA4();
        v7 = sub_10074F374();
        sub_100024440(a1);
        goto LABEL_66;
      }

      v7 = sub_10074F374();

LABEL_66:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_100254D74(0, *(v36 + 2) + 1, 1, v36);
      }

      v77 = *(v36 + 2);
      v76 = *(v36 + 3);
      if (v77 >= v76 >> 1)
      {
        v36 = sub_100254D74((v76 > 1), v77 + 1, 1, v36);
      }

      ++a2;

      *(v36 + 2) = v77 + 1;
      v78 = &v36[16 * v77];
      *(v78 + 4) = v7;
      v78[40] = v16 & 1;
      v17 = v115;
      v35 = v116;
      v70 = v101;
      if (i == a2)
      {
        goto LABEL_74;
      }
    }

    v112(v35, v17);
LABEL_49:
    v16 = 0;
    goto LABEL_51;
  }

  __break(1u);
  return result;
}