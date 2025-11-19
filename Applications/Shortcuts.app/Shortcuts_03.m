uint64_t type metadata accessor for DebugMenuViewController()
{
  result = qword_1001004B8;
  if (!qword_1001004B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004AF80(void *a1)
{
  v2 = type metadata accessor for DebugMenuView();
  __chkstk_darwin(v2 - 8);
  sub_1000039BC();
  v5 = v4 - v3;
  for (i = a1; ; i = v8)
  {
    v7 = [i presentedViewController];
    if (!v7)
    {
      break;
    }

    v8 = v7;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  type metadata accessor for DebugMenuViewController();
  v10 = [objc_opt_self() defaultDatabase];
  swift_retain_n();
  DebugMenuView.init(database:close:onShare:)();
  v11 = sub_10004B33C(v5);
  v12 = [v11 navigationItem];
  sub_10004B7D0(0, 0xE000000000000000, v12);

  v13 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v11];
  v14 = [v13 presentationController];
  if (v14)
  {
    v15 = v14;
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = v16;
      sub_10002E87C(&qword_1001000E0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1000C1720;
      v19 = objc_opt_self();
      *(v18 + 32) = [v19 _mediumDetent];
      *(v18 + 40) = [v19 _largeDetent];
      sub_100002FC4(0, &qword_100100520);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v17 _setDetents:isa];

      v15 = isa;
    }
  }

  [i presentViewController:v13 animated:1 completion:0];

  swift_beginAccess();
  v21 = *(v9 + 16);
  *(v9 + 16) = v11;
}

id sub_10004B288(uint64_t a1)
{
  swift_beginAccess();
  result = *(a1 + 16);
  if (result)
  {
    return [result dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

void sub_10004B2E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = v3;
    sub_10004B428();
  }
}

uint64_t sub_10004B33C(uint64_t a1)
{
  v3 = type metadata accessor for DebugMenuView();
  sub_100004458();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000039BC();
  v9 = v8 - v7;
  v10 = objc_allocWithZone(v1);
  (*(v5 + 16))(v9, a1, v3);
  v11 = UIHostingController.init(rootView:)();
  (*(v5 + 8))(a1, v3);
  return v11;
}

void sub_10004B428()
{
  v1 = v0;
  sub_10002E87C(&qword_100100508);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000C0C20;
  URL._bridgeToObjectiveC()(&off_1000C0000);
  v4 = v3;
  *(v2 + 56) = sub_100002FC4(0, &qword_100100510);
  *(v2 + 32) = v4;
  v5 = objc_allocWithZone(UIActivityViewController);
  v6 = sub_10004B714(v2, 0);
  [v1 presentViewController:v6 animated:1 completion:0];
}

void *sub_10004B548(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DebugMenuView();
  sub_100004458();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000039BC();
  (*(v5 + 16))(v8 - v7, a2, v3);
  v9 = UIHostingController.init(coder:rootView:)();
  v10 = *(v5 + 8);
  v11 = v9;
  v10(a2, v3);
  if (v9)
  {
  }

  return v9;
}

id sub_10004B640(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DebugMenuViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_10004B6D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugMenuViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10004B714(uint64_t a1, uint64_t a2)
{
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (a2)
  {
    sub_100002FC4(0, &qword_100100518);
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  v6 = [v2 initWithActivityItems:v4.super.isa applicationActivities:v5.super.isa];

  return v6;
}

void sub_10004B7D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setBackButtonTitle:v4];
}

id sub_10004B834(void *a1, void *a2)
{
  v8 = 0;
  v4 = [swift_getObjCClassFromMetadata() workflowWithReference:a1 database:a2 error:&v8];
  if (v4)
  {
    v5 = v8;
  }

  else
  {
    v6 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

BOOL sub_10004B914(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

BOOL sub_10004B9C4(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v13 = *v6;
    v9 = v13;
    v10 = a1(&v13);
    if (v3)
    {

      return v7 != 0;
    }

    v11 = v10;

    ++v6;
  }

  while ((v11 & 1) == 0);
  return v7 != 0;
}

id WFLinkActions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WFLinkActions.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFLinkActions();
  return objc_msgSendSuper2(&v2, "init");
}

id WFLinkActions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFLinkActions();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10004BB2C()
{
  result = [objc_opt_self() mainScene];
  if (result)
  {
    v1 = result;
    v2 = [result delegate];

    if (v2)
    {
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (!v3)
      {
LABEL_6:
        swift_unknownObjectRelease();
        return 0;
      }

      v4 = [v3 rootViewController];
      swift_unknownObjectRelease();
      if (v4)
      {
        type metadata accessor for MainViewController(0);
        result = swift_dynamicCastClass();
        if (result)
        {
          return result;
        }

        goto LABEL_6;
      }
    }

    return 0;
  }

  return result;
}

unint64_t *sub_10004BBFC()
{
  v0 = type metadata accessor for NavigationDestinationEntity();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0 - 8);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() mainScene];
  if (!v4)
  {
    return &_swiftEmptyArrayStorage;
  }

  v5 = v4;
  v35 = v1;
  v6 = [v4 delegate];

  if (!v6)
  {
    return &_swiftEmptyArrayStorage;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyArrayStorage;
  }

  v8 = [v7 rootViewController];
  swift_unknownObjectRelease();
  v9 = &_swiftEmptyArrayStorage;
  if (v8)
  {
    type metadata accessor for MainViewController(0);
    if (swift_dynamicCastClass())
    {
      v10 = sub_100008288();
      swift_unknownObjectRelease();
      v11 = *&v10[OBJC_IVAR___WFSidebarViewController_sections];

      v12 = *(v11 + 16);
      if (v12)
      {
        v38 = &_swiftEmptyArrayStorage;
        sub_100062D38(0, v12, 0);
        v9 = v38;
        v13 = v11 + 40;
        do
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v14 = dispatch thunk of SidebarSection.destinations.getter();
          swift_unknownObjectRelease();
          v38 = v9;
          v16 = v9[2];
          v15 = v9[3];
          if (v16 >= v15 >> 1)
          {
            sub_100062D38(v15 > 1, v16 + 1, 1);
            v9 = v38;
          }

          v9[2] = v16 + 1;
          v9[v16 + 4] = v14;
          v13 += 16;
          --v12;
        }

        while (v12);
      }

      v18 = 0;
      v19 = v9[2];
      v20 = &_swiftEmptyArrayStorage;
      while (v19 != v18)
      {
        if (v18 >= v9[2])
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
          return result;
        }

        v21 = v9[v18 + 4];
        v22 = *(v21 + 16);
        v23 = v20[2];
        if (__OFADD__(v23, v22))
        {
          goto LABEL_38;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v23 + v22 > v20[3] >> 1)
        {
          sub_10000B180();
          v20 = v24;
        }

        if (*(v21 + 16))
        {
          v25 = (v20[3] >> 1) - v20[2];
          result = type metadata accessor for RootNavigationDestination();
          if (v25 < v22)
          {
            goto LABEL_40;
          }

          swift_arrayInitWithCopy();

          if (v22)
          {
            v26 = v20[2];
            v27 = __OFADD__(v26, v22);
            v28 = v26 + v22;
            if (v27)
            {
              goto LABEL_41;
            }

            v20[2] = v28;
          }
        }

        else
        {

          if (v22)
          {
            goto LABEL_39;
          }
        }

        ++v18;
      }

      v29 = v20[2];
      if (!v29)
      {

        return &_swiftEmptyArrayStorage;
      }

      v38 = &_swiftEmptyArrayStorage;
      sub_100062D18();
      v9 = v38;
      v37 = type metadata accessor for RootNavigationDestination();
      v30 = *(v37 - 8);
      v36 = *(v30 + 16);
      v31 = v20 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
      v32 = *(v30 + 72);
      v33 = v35;
      do
      {
        v36(v3, v31, v37);
        v38 = v9;
        v34 = v9[2];
        if (v34 >= v9[3] >> 1)
        {
          sub_100062D18();
          v33 = v35;
          v9 = v38;
        }

        v9[2] = v34 + 1;
        sub_100063A00(v3, v9 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v34);
        v31 += v32;
        --v29;
      }

      while (v29);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return v9;
}

uint64_t sub_10004C098()
{
  v0 = sub_10002E87C(&qword_1000FF580);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for TypeDisplayRepresentation();
  sub_100066730(v10, static NavigationDestinationEntity.typeDisplayRepresentation);
  sub_10004D458(v10, static NavigationDestinationEntity.typeDisplayRepresentation);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  LocalizedStringResource.init(stringLiteral:)();
  sub_1000042A8(v2, 0, 1, v9);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t static NavigationDestinationEntity.typeDisplayRepresentation.modify()
{
  if (qword_1000FF478 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  sub_1000056FC(v0, static NavigationDestinationEntity.typeDisplayRepresentation);
  return sub_1000669B0();
}

void NavigationDestinationEntity.displayRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1000043AC();
  a19 = v20;
  a20 = v21;
  v22 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v22);
  sub_100005B90();
  __chkstk_darwin(v23);
  sub_100003BE8();
  v24 = type metadata accessor for LocalizedStringResource();
  sub_100003EC8();
  __chkstk_darwin(v25);
  sub_1000039BC();
  sub_100017428();
  v26 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v27 = sub_100002EE0(v26);
  __chkstk_darwin(v27);
  sub_1000051D8();
  v28 = sub_10002E87C(&qword_100100528);
  v29 = sub_100002EE0(v28);
  v30 = __chkstk_darwin(v29);
  v32 = &a9 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = &a9 - v33;
  type metadata accessor for DisplayRepresentation.Image();
  sub_100004730();
  sub_1000042A8(v35, v36, v37, v38);
  RootNavigationDestination.symbolName.getter();
  if (v39)
  {
    sub_100005BC0();
    DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
    sub_1000069B0(v34, &qword_100100528);
    sub_10004D4C4(v32, v34);
  }

  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v40._countAndFlagsBits = sub_1000669EC();
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v40);
  v41._countAndFlagsBits = RootNavigationDestination.displayName.getter();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v41);

  v42._countAndFlagsBits = sub_1000669EC();
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v42);
  LocalizedStringResource.init(stringInterpolation:)();
  v43 = sub_100008330();
  sub_1000042A8(v43, v44, v45, v24);
  sub_100063D74(v34, v32, &qword_100100528);
  DisplayRepresentation.init(title:subtitle:image:)();
  sub_1000069B0(v34, &qword_100100528);
  sub_100002EEC();
}

uint64_t NavigationDestinationEntity.DestinationQuery.entities(for:)()
{
  sub_100005BE4();
  sub_100066C24(v1);
  v2 = type metadata accessor for NavigationDestinationEntity();
  sub_10000A804(v2);
  v0[5] = v3;
  v0[6] = sub_100066B80();
  v0[7] = swift_task_alloc();
  v4 = sub_100011E0C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10004C79C()
{
  sub_100005BE4();
  type metadata accessor for MainActor();
  sub_1000669A4();
  *(v0 + 64) = static MainActor.shared.getter();
  sub_100007DC8();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_1000669D4();
  v1 = sub_100004310();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10004C818()
{
  sub_100005BE4();

  *(v0 + 72) = sub_10004BBFC();
  v1 = sub_100011E0C();

  return _swift_task_switch(v1, v2, v3);
}

void sub_10004C87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100066DF8();
  v17 = 0;
  v18 = v16[5];
  v39 = v16 + 2;
  v40 = v16[9];
  v19 = *(v40 + 16);
  v38 = &_swiftEmptyArrayStorage;
  while (v19 != v17)
  {
    if (v17 >= *(v40 + 16))
    {
      __break(1u);
      return;
    }

    v20 = v16[4];
    v21 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v22 = *(v18 + 72);
    sub_10004D580(v16[9] + v21 + v22 * v17, v16[7]);
    v16[2] = RootNavigationDestination.sidebarIdentifier.getter();
    v16[3] = v23;
    v24 = swift_task_alloc();
    *(v24 + 16) = v39;
    LOBYTE(v20) = sub_10004B914(sub_100063984, v24, v20);

    v25 = v16[7];
    if (v20)
    {
      sub_100063A00(v25, v16[6]);
      v26 = v38;
      a12 = v38;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100066A94();
        sub_100066CB4();
        v26 = v38;
      }

      v28 = v26[2];
      v27 = v26[3];
      if (v28 >= v27 >> 1)
      {
        sub_100005E38(v27);
        sub_100062D18();
        v26 = v38;
      }

      ++v17;
      v29 = v16[6];
      v26[2] = v28 + 1;
      v38 = v26;
      sub_100063A00(v29, v26 + v21 + v28 * v22);
    }

    else
    {
      sub_1000639A4(v25);
      ++v17;
    }
  }

  sub_100066A04();
  sub_100066E14();

  v32(v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, a12, a13, a14, a15, a16);
}

uint64_t NavigationDestinationEntity.DestinationQuery.entities(matching:)()
{
  sub_100005BE4();
  v0[6] = v1;
  v0[7] = v2;
  v3 = type metadata accessor for NavigationDestinationEntity();
  sub_10000A804(v3);
  v0[8] = v4;
  v0[9] = sub_100066B80();
  v0[10] = swift_task_alloc();
  v5 = sub_100011E0C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10004CAF8()
{
  sub_100005BE4();
  type metadata accessor for MainActor();
  sub_1000669A4();
  *(v0 + 88) = static MainActor.shared.getter();
  sub_100007DC8();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_1000669D4();
  v1 = sub_100004310();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10004CB74()
{
  sub_100005BE4();

  *(v0 + 96) = sub_10004BBFC();
  v1 = sub_100011E0C();

  return _swift_task_switch(v1, v2, v3);
}

void sub_10004CBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100066AB8();
  sub_100066C60();
  v15 = 0;
  v16 = v14[8];
  v40 = v14[12];
  v17 = *(v40 + 16);
  v39 = &_swiftEmptyArrayStorage;
  while (v17 != v15)
  {
    sub_100066DEC();
    if (v18)
    {
      __break(1u);
      return;
    }

    v19 = v14[6];
    v20 = v14[7];
    v21 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v22 = *(v16 + 72);
    sub_10004D580(v14[12] + v21 + v22 * v15, v14[10]);
    v23 = RootNavigationDestination.displayName.getter();
    v25 = v24;
    v14[2] = v23;
    v14[3] = v24;
    v14[4] = v19;
    v14[5] = v20;
    sub_1000200D8();
    sub_100066BB8();
    v26 = StringProtocol.localizedCaseInsensitiveContains<A>(_:)();

    v27 = v14[10];
    if (v26)
    {
      sub_100063A00(v27, v14[9]);
      v28 = v39;
      a11 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100066A94();
        sub_100066CB4();
        v28 = v39;
      }

      sub_100066BD8();
      if (v18)
      {
        sub_100005E38(v29);
        sub_100066E70();
        v28 = v39;
      }

      ++v15;
      v30 = v14[9];
      v28[2] = v19;
      v39 = v28;
      sub_100063A00(v30, v28 + v21 + v25 * v22);
    }

    else
    {
      sub_1000639A4(v27);
      ++v15;
    }
  }

  sub_100066A04();
  sub_100066AD4();

  v33(v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, a11, a12, a13, a14);
}

uint64_t sub_10004CD80()
{
  sub_100005BE4();
  type metadata accessor for MainActor();
  sub_1000669A4();
  *(v0 + 16) = static MainActor.shared.getter();
  sub_100007DC8();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_1000669D4();
  v1 = sub_100004310();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10004CDFC()
{
  sub_100005BE4();

  sub_10004BBFC();
  sub_100066A04();

  return v0();
}

uint64_t sub_10004CE5C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100066840;

  return NavigationDestinationEntity.DestinationQuery.entities(matching:)();
}

uint64_t sub_10004CEFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000668D4;

  return NavigationDestinationEntity.DestinationQuery.entities(for:)();
}

uint64_t sub_10004CF90(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100066840;

  return NavigationDestinationEntity.DestinationQuery.suggestedEntities()();
}

uint64_t sub_10004D020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000668D4;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_10004D0E0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100064124();
  *v5 = v2;
  v5[1] = sub_1000667E8;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_10004D194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000667E8;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t sub_10004D264(uint64_t a1)
{
  v2 = type metadata accessor for RootNavigationDestination();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for RootNavigationDestination.gallery(_:) || v6 == enum case for RootNavigationDestination.workflowType(_:))
  {
    goto LABEL_6;
  }

  if (v6 == enum case for RootNavigationDestination.folder(_:))
  {
    v8 = 1;
    goto LABEL_9;
  }

  if (v6 == enum case for RootNavigationDestination.autoShortcuts(_:))
  {
LABEL_6:
    v8 = 0;
LABEL_9:
    (*(v3 + 8))(v5, v2);
    return v8;
  }

  if (v6 == enum case for RootNavigationDestination.shortcuts(_:))
  {
    return 0;
  }

  if (v6 == enum case for RootNavigationDestination.allShortcuts(_:))
  {
    return 1;
  }

  v10 = v6 == enum case for RootNavigationDestination.automations(_:) || v6 == enum case for RootNavigationDestination.recentlyModified(_:);
  if (v10 || v6 == enum case for RootNavigationDestination.recentlyRun(_:))
  {
    return 0;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10004D458(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_10004D490(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_10004D4C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002E87C(&qword_100100528);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for NavigationDestinationEntity()
{
  result = qword_100100A70;
  if (!qword_100100A70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004D580(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationDestinationEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NavigationDestinationEntity.FolderQuery.entities(for:)()
{
  sub_100005BE4();
  sub_100066C24(v1);
  v2 = type metadata accessor for RootNavigationDestination();
  v0[5] = v2;
  sub_10000A804(v2);
  v0[6] = v3;
  v0[7] = sub_100066AA0();
  v4 = type metadata accessor for NavigationDestinationEntity();
  sub_10000A804(v4);
  v0[8] = v5;
  v0[9] = sub_100066B80();
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v6 = sub_100011E0C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10004D718()
{
  sub_100005BE4();
  type metadata accessor for MainActor();
  sub_1000669A4();
  *(v0 + 104) = static MainActor.shared.getter();
  sub_100007DC8();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_1000669D4();
  v1 = sub_100004310();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10004D794()
{
  sub_100005BE4();

  *(v0 + 112) = sub_10004BBFC();
  v1 = sub_100011E0C();

  return _swift_task_switch(v1, v2, v3);
}

void sub_10004D7F8()
{
  v1 = 0;
  v2 = v0[8];
  v42 = *(v0[14] + 16);
  v41 = enum case for RootNavigationDestination.gallery(_:);
  v40 = enum case for RootNavigationDestination.workflowType(_:);
  v39 = enum case for RootNavigationDestination.folder(_:);
  v38 = enum case for RootNavigationDestination.autoShortcuts(_:);
  v37 = enum case for RootNavigationDestination.shortcuts(_:);
  v36 = enum case for RootNavigationDestination.allShortcuts(_:);
  sub_100066BA8();
  v44 = &_swiftEmptyArrayStorage;
  while (v42 != v1)
  {
    sub_100066DEC();
    if (v3)
    {
      __break(1u);
LABEL_42:
      __break(1u);
      return;
    }

    v4 = v0[7];
    v5 = v0[5];
    v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v7 = *(v2 + 72);
    sub_10004D580(v0[14] + v6 + v7 * v1, v0[12]);
    v8 = sub_100066C3C();
    v9(v8);
    v10 = sub_100011E00();
    v12 = v11(v10);
    v13 = v12 == v41 || v12 == v40;
    if (v13)
    {
LABEL_10:
      sub_100066AFC();
      v14();
      goto LABEL_11;
    }

    if (v12 == v39)
    {
      sub_100066AFC();
      v17();
      goto LABEL_20;
    }

    if (v12 == v38)
    {
      goto LABEL_10;
    }

    if (v12 == v37)
    {
LABEL_11:
      sub_1000639A4(v0[12]);
      ++v1;
    }

    else
    {
      if (v12 != v36)
      {
        sub_100066B70();
        if (!v13 && v15 != v35)
        {

          _diagnoseUnexpectedEnumCase<A>(type:)();
          return;
        }

        goto LABEL_11;
      }

LABEL_20:
      sub_100063A00(v0[12], v0[11]);
      v18 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100066A94();
        sub_100066CB4();
        v18 = v44;
      }

      sub_100066BD8();
      if (v3)
      {
        sub_100005E38(v19);
        sub_100066E70();
        v18 = v44;
      }

      ++v1;
      v20 = v0[11];
      v18[2] = v4;
      v44 = v18;
      sub_100063A00(v20, v18 + v6 + v5 * v7);
    }
  }

  v21 = 0;
  v22 = v44;
  v23 = v44[2];
  v43 = &_swiftEmptyArrayStorage;
  while (v23 != v21)
  {
    if (v21 >= v22[2])
    {
      goto LABEL_42;
    }

    v24 = v0[4];
    v25 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v26 = *(v2 + 72);
    sub_10004D580(v22 + v25 + v26 * v21, v0[10]);
    v0[2] = RootNavigationDestination.sidebarIdentifier.getter();
    v0[3] = v27;
    v28 = swift_task_alloc();
    *(v28 + 16) = v0 + 2;
    LOBYTE(v24) = sub_10004B914(sub_100066808, v28, v24);

    v29 = v0[10];
    if (v24)
    {
      sub_100063A00(v29, v0[9]);
      v30 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100066A94();
        sub_100066CB4();
        v30 = v43;
      }

      v32 = v30[2];
      v31 = v30[3];
      if (v32 >= v31 >> 1)
      {
        sub_100005E38(v31);
        sub_100062D18();
        v30 = v43;
      }

      ++v21;
      v33 = v0[9];
      v30[2] = v32 + 1;
      v43 = v30;
      sub_100063A00(v33, v30 + v25 + v32 * v26);
      v22 = v44;
    }

    else
    {
      sub_1000639A4(v29);
      ++v21;
      v22 = v44;
    }
  }

  sub_100066A04();

  v34(v43);
}

uint64_t NavigationDestinationEntity.FolderQuery.entities(matching:)()
{
  sub_100005BE4();
  v0[6] = v1;
  v0[7] = v2;
  v3 = type metadata accessor for RootNavigationDestination();
  v0[8] = v3;
  sub_10000A804(v3);
  v0[9] = v4;
  v0[10] = sub_100066AA0();
  v5 = type metadata accessor for NavigationDestinationEntity();
  sub_10000A804(v5);
  v0[11] = v6;
  v0[12] = sub_100066B80();
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v7 = sub_100011E0C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10004DD7C()
{
  sub_100005BE4();
  type metadata accessor for MainActor();
  sub_1000669A4();
  *(v0 + 128) = static MainActor.shared.getter();
  sub_100007DC8();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_1000669D4();
  v1 = sub_100004310();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10004DDF8()
{
  sub_100005BE4();

  *(v0 + 136) = sub_10004BBFC();
  v1 = sub_100011E0C();

  return _swift_task_switch(v1, v2, v3);
}

void sub_10004DE5C()
{
  v1 = 0;
  v2 = v0[11];
  v45 = *(v0[17] + 16);
  v44 = enum case for RootNavigationDestination.gallery(_:);
  v43 = enum case for RootNavigationDestination.workflowType(_:);
  v42 = enum case for RootNavigationDestination.folder(_:);
  v41 = enum case for RootNavigationDestination.autoShortcuts(_:);
  v40 = enum case for RootNavigationDestination.shortcuts(_:);
  v39 = enum case for RootNavigationDestination.allShortcuts(_:);
  sub_100066BA8();
  v47 = &_swiftEmptyArrayStorage;
  while (1)
  {
    while (1)
    {
      if (v45 == v1)
      {

        v21 = 0;
        v22 = v47;
        v23 = v47[2];
        v46 = &_swiftEmptyArrayStorage;
        while (1)
        {
          if (v23 == v21)
          {

            sub_100066A04();
            sub_100066C08();

            __asm { BRAA            X2, X16 }
          }

          if (v21 >= v22[2])
          {
            break;
          }

          v25 = v0[6];
          v24 = v0[7];
          v26 = (*(v2 + 80) + 32) & ~*(v2 + 80);
          v27 = *(v2 + 72);
          sub_10004D580(v22 + v26 + v27 * v21, v0[13]);
          v0[2] = RootNavigationDestination.displayName.getter();
          v0[3] = v28;
          v0[4] = v25;
          v0[5] = v24;
          sub_1000200D8();
          sub_100066BB8();
          v29 = StringProtocol.localizedCaseInsensitiveContains<A>(_:)();

          v30 = v0[13];
          if (v29)
          {
            sub_100063A00(v30, v0[12]);
            v31 = v46;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_100066A40();
              v31 = v46;
            }

            v33 = v31[2];
            v32 = v31[3];
            if (v33 >= v32 >> 1)
            {
              sub_100005E38(v32);
              sub_100066E70();
              v31 = v46;
            }

            ++v21;
            v34 = v0[12];
            v31[2] = v33 + 1;
            v46 = v31;
            sub_100063A00(v34, v31 + v26 + v33 * v27);
            v22 = v47;
          }

          else
          {
            sub_1000639A4(v30);
            ++v21;
            v22 = v47;
          }
        }

        goto LABEL_42;
      }

      sub_100066DEC();
      if (v3)
      {
        __break(1u);
LABEL_42:
        __break(1u);
        return;
      }

      v4 = v0[10];
      v5 = v0[8];
      v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v7 = *(v2 + 72);
      sub_10004D580(v0[17] + v6 + v7 * v1, v0[15]);
      v8 = sub_100066C3C();
      v9(v8);
      v10 = sub_100011E00();
      v12 = v11(v10);
      v13 = v12 == v44 || v12 == v43;
      if (v13)
      {
LABEL_10:
        sub_100066AFC();
        v14();
        goto LABEL_11;
      }

      if (v12 != v42)
      {
        break;
      }

      sub_100066AFC();
      v17();
LABEL_20:
      sub_100063A00(v0[15], v0[14]);
      v18 = v47;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100066A40();
        v18 = v47;
      }

      sub_100066BD8();
      if (v3)
      {
        sub_100005E38(v19);
        sub_100066E70();
        v18 = v47;
      }

      ++v1;
      v20 = v0[14];
      v18[2] = v4;
      v47 = v18;
      sub_100063A00(v20, v18 + v6 + v5 * v7);
    }

    if (v12 == v41)
    {
      goto LABEL_10;
    }

    if (v12 != v40)
    {
      break;
    }

LABEL_11:
    sub_1000639A4(v0[15]);
    ++v1;
  }

  if (v12 == v39)
  {
    goto LABEL_20;
  }

  sub_100066B70();
  if (v13 || v15 == v38)
  {
    goto LABEL_11;
  }

  sub_100066C08();

  _diagnoseUnexpectedEnumCase<A>(type:)();
}

uint64_t NavigationDestinationEntity.FolderQuery.suggestedEntities()()
{
  sub_100005BE4();
  v1 = type metadata accessor for RootNavigationDestination();
  v0[2] = v1;
  sub_10000A804(v1);
  v0[3] = v2;
  v3 = sub_100066AA0();
  sub_100066C24(v3);
  v4 = type metadata accessor for NavigationDestinationEntity();
  sub_10000A804(v4);
  v0[5] = v5;
  v0[6] = sub_100066B80();
  v0[7] = swift_task_alloc();
  v6 = sub_100011E0C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10004E368()
{
  sub_100005BE4();
  type metadata accessor for MainActor();
  sub_1000669A4();
  *(v0 + 64) = static MainActor.shared.getter();
  sub_100007DC8();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_1000669D4();
  v1 = sub_100004310();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10004E3E4()
{
  sub_100005BE4();

  *(v0 + 72) = sub_10004BBFC();
  v1 = sub_100011E0C();

  return _swift_task_switch(v1, v2, v3);
}

void sub_10004E448()
{
  v1 = 0;
  v30 = v0[5];
  v31 = *(v0[9] + 16);
  v2 = (v0[3] + 16);
  v29 = enum case for RootNavigationDestination.gallery(_:);
  v28 = enum case for RootNavigationDestination.workflowType(_:);
  v27 = enum case for RootNavigationDestination.folder(_:);
  v26 = enum case for RootNavigationDestination.autoShortcuts(_:);
  v25 = enum case for RootNavigationDestination.shortcuts(_:);
  v24 = enum case for RootNavigationDestination.allShortcuts(_:);
  sub_100066BA8();
  while (1)
  {
    while (1)
    {
      if (v31 == v1)
      {

        sub_100066A04();
        sub_100066C08();

        __asm { BRAA            X2, X16 }
      }

      sub_100066DEC();
      if (v3)
      {
        __break(1u);
        return;
      }

      v4 = v0[7];
      v5 = v0[4];
      v6 = v0[2];
      v7 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v8 = *(v30 + 72);
      sub_10004D580(v0[9] + v7 + v8 * v1, v4);
      (*v2)(v5, v4, v6);
      v9 = sub_100011E00();
      v11 = v10(v9);
      v12 = v11 == v29 || v11 == v28;
      if (v12)
      {
LABEL_10:
        sub_100066AFC();
        v13();
        goto LABEL_11;
      }

      if (v11 != v27)
      {
        break;
      }

      sub_100066AFC();
      v16();
LABEL_20:
      sub_100063A00(v0[7], v0[6]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100066A40();
      }

      v18 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];
      if (v18 >= v17 >> 1)
      {
        sub_100005E38(v17);
        sub_100062D18();
      }

      ++v1;
      v19 = v0[6];
      _swiftEmptyArrayStorage[2] = v18 + 1;
      sub_100063A00(v19, _swiftEmptyArrayStorage + v7 + v18 * v8);
    }

    if (v11 == v26)
    {
      goto LABEL_10;
    }

    if (v11 != v25)
    {
      break;
    }

LABEL_11:
    sub_1000639A4(v0[7]);
    ++v1;
  }

  if (v11 == v24)
  {
    goto LABEL_20;
  }

  sub_100066B70();
  if (v12 || v14 == v23)
  {
    goto LABEL_11;
  }

  sub_100066C08();

  _diagnoseUnexpectedEnumCase<A>(type:)();
}

uint64_t sub_10004E75C()
{
  sub_100005BE4();
  v1 = *(v0 + 16);
  v2 = enum case for RootNavigationDestination.allShortcuts(_:);
  type metadata accessor for RootNavigationDestination();
  sub_100003EC8();
  (*(v3 + 104))(v1, v2);
  type metadata accessor for NavigationDestinationEntity();
  sub_1000060AC();
  sub_1000042A8(v4, v5, v6, v7);
  sub_100003BDC();

  return v8();
}

uint64_t sub_10004E808(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100066840;

  return NavigationDestinationEntity.FolderQuery.entities(matching:)();
}

uint64_t sub_10004E8A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000668D4;

  return NavigationDestinationEntity.FolderQuery.entities(for:)();
}

uint64_t sub_10004E93C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100066840;

  return NavigationDestinationEntity.FolderQuery.suggestedEntities()();
}

uint64_t sub_10004E9CC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10002F79C();
  *v5 = v2;
  v5[1] = sub_1000667E8;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_10004EA80(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000667E8;

  return NavigationDestinationEntity.FolderQuery.defaultResult()(a1);
}

uint64_t sub_10004EB20@<X0>(uint64_t *a1@<X8>)
{
  result = NavigationDestinationEntity.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10004EB90(uint64_t a1)
{
  v2 = sub_100015BD0(&qword_1000FF590, type metadata accessor for NavigationDestinationEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10004EC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000667E8;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_10004ECD4(uint64_t a1)
{
  v2 = sub_100015BD0(&qword_100100780, type metadata accessor for NavigationDestinationEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

void OpenNavigationDestinationAction.init()()
{
  sub_1000043AC();
  type metadata accessor for InputConnectionBehavior();
  sub_100004458();
  v44 = v2;
  v45 = v1;
  __chkstk_darwin(v1);
  sub_100007944();
  v43 = v3;
  v4 = sub_10002E87C(&qword_1000FF570);
  v5 = sub_100002EE0(v4);
  __chkstk_darwin(v5);
  sub_10000F1A8();
  sub_10000667C();
  __chkstk_darwin(v6);
  sub_100005184();
  sub_10000F7E0(v7);
  v8 = sub_10002E87C(&qword_1000FF578);
  sub_100002EE0(v8);
  sub_100005B90();
  __chkstk_darwin(v9);
  sub_100005B00();
  sub_1000669F8(v10);
  v11 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v11);
  sub_100005B90();
  __chkstk_darwin(v12);
  sub_100005AEC(v13, v42);
  v14 = type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_100004458();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_10000443C();
  v18 = type metadata accessor for Locale();
  v19 = sub_100002EE0(v18);
  __chkstk_darwin(v19);
  sub_10001C794();
  v20 = type metadata accessor for String.LocalizationValue();
  v21 = sub_100002EE0(v20);
  __chkstk_darwin(v21);
  sub_1000039BC();
  sub_100011D5C();
  v22 = type metadata accessor for LocalizedStringResource();
  sub_100003EC8();
  __chkstk_darwin(v23);
  sub_1000039BC();
  sub_10002E87C(&qword_1000FF588);
  sub_100066BC8();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v25 = *(v16 + 104);
  v25(v0, enum case for LocalizedStringResource.BundleDescription.main(_:), v14);
  sub_100007A10();
  sub_1000042D0();
  sub_100004B18();
  sub_100066C48();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v25(v0, v24, v14);
  sub_100007A10();
  sub_1000042D0();
  sub_1000060AC();
  sub_100033518(v26, v27, v28, v22);
  type metadata accessor for NavigationDestinationEntity();
  v29 = sub_100006150();
  sub_100033518(v29, v30, v31, v32);
  v33 = type metadata accessor for IntentDialog();
  v34 = sub_100008330();
  sub_1000042A8(v34, v35, v36, v33);
  v37 = sub_100005E08();
  sub_1000042A8(v37, v38, v39, v33);
  (*(v44 + 104))(v43, enum case for InputConnectionBehavior.default(_:), v45);
  sub_100013358();
  sub_100015BD0(v40, v41);
  sub_10000A5A0();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_100002EEC();
}

uint64_t static OpenNavigationDestinationAction.title.modify()
{
  if (qword_1000FF480 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();
  sub_1000056FC(v0, &static OpenNavigationDestinationAction.title);
  return sub_1000669B0();
}

uint64_t sub_10004F290()
{
  v0 = sub_10002E87C(&qword_1000FF580);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for IntentDescription();
  sub_100066730(v10, static OpenNavigationDestinationAction.description);
  sub_10004D458(v10, static OpenNavigationDestinationAction.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_1000042A8(v2, 1, 1, v9);
  return IntentDescription.init(_:categoryName:searchKeywords:)();
}

uint64_t OpenNavigationDestinationAction.target.setter()
{
  sub_100005730();
  v1 = type metadata accessor for NavigationDestinationEntity();
  v2 = sub_100002EE0(v1);
  __chkstk_darwin(v2);
  sub_1000039BC();
  v3 = sub_1000042EC();
  sub_10004D580(v3, v4);
  IntentParameter.wrappedValue.setter();
  return sub_1000639A4(v0);
}

uint64_t (*OpenNavigationDestinationAction.target.modify())()
{
  v1 = sub_100011884();
  v2 = sub_10004D490(v1);
  *(v0 + 32) = sub_100066A70(v2);
  return sub_10006685C;
}

uint64_t OpenNavigationDestinationAction.perform()()
{
  sub_100005BE4();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_10002E87C(&qword_1000FFFC0);
  sub_100002EE0(v3);
  v4 = sub_100066AA0();
  sub_100066C24(v4);
  v5 = type metadata accessor for RootNavigationContext.TransitionType();
  v0[5] = v5;
  sub_10000A804(v5);
  v0[6] = v6;
  v0[7] = sub_100066AA0();
  v7 = sub_10002E87C(&qword_100100020);
  sub_100002EE0(v7);
  v0[8] = sub_100066AA0();
  v8 = type metadata accessor for NavigationDestinationEntity();
  sub_100002EE0(v8);
  v0[9] = sub_100066AA0();
  type metadata accessor for MainActor();
  sub_1000669A4();
  v0[10] = static MainActor.shared.getter();
  sub_100007DC8();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_1000669D4();
  v9 = sub_100004310();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10004F7EC()
{
  sub_100066AF0();

  v1 = sub_10004BB2C();
  if (v1)
  {
    v2 = v1;
    v4 = v0[8];
    v3 = v0[9];
    v6 = v0[6];
    v5 = v0[7];
    v7 = v0[5];
    IntentParameter.wrappedValue.getter();
    (*(v6 + 104))(v5, enum case for RootNavigationContext.TransitionType.pushAndReplace(_:), v7);
    type metadata accessor for RootPPTTestCase();
    sub_100004730();
    sub_1000042A8(v8, v9, v10, v11);
    sub_100004730();
    RootNavigationContext.init(dismissOccludingViewController:clearSearchState:animateTransition:createAutomation:transitionType:pptTest:)();
    type metadata accessor for RootNavigationContext();
    sub_1000060AC();
    v16 = sub_100033518(v12, v13, v14, v15);
    type metadata accessor for MainViewController(v16);
    sub_1000669BC();
    sub_100015BD0(v17, v18);
    sub_100005BC0();
    RootView.navigate(to:with:completion:)();

    sub_1000069B0(v4, &qword_100100020);
    type metadata accessor for RootNavigationDestination();
    sub_100003EC8();
    (*(v19 + 8))(v3);
  }

  static IntentResult.result<>()();

  sub_100019CB0();

  return v20();
}

uint64_t (*sub_10004F9C8(void *a1))()
{
  v2 = sub_10004D490(0x28uLL);
  *a1 = v2;
  v2[4] = IntentParameter.wrappedValue.modify();
  return sub_10006685C;
}

uint64_t sub_10004FA54@<X0>(uint64_t (*a1)(void)@<X2>, void (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v5 = a1();
  sub_100005BC0();
  swift_beginAccess();
  a2(0);
  sub_100003EC8();
  return (*(v6 + 16))(a3, v5);
}

uint64_t sub_10004FAE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000667E8;

  return OpenNavigationDestinationAction.perform()();
}

uint64_t sub_10004FBA8(uint64_t a1)
{
  v2 = sub_100063C24();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10004FBE4()
{
  v25 = type metadata accessor for String.LocalizationValue.Placeholder();
  v0 = *(v25 - 8);
  __chkstk_darwin(v25);
  v24 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10002E87C(&qword_1000FF580);
  __chkstk_darwin(v3 - 8);
  v26 = &v20 - v4;
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v21 = v5;
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v23 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v23);
  v11 = type metadata accessor for TypeDisplayRepresentation();
  sub_100066730(v11, static WorkflowEntity.typeDisplayRepresentation);
  v22 = sub_10004D458(v11, static WorkflowEntity.typeDisplayRepresentation);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v12 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v13 = *(v6 + 104);
  v20 = v6 + 104;
  v13(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
  v15 = v24;
  v16 = v25;
  (*(v0 + 104))(v24, enum case for String.LocalizationValue.Placeholder.int(_:), v25);
  String.LocalizationValue.StringInterpolation.appendInterpolation(placeholder:specifier:)();
  (*(v0 + 8))(v15, v16);
  v17._countAndFlagsBits = 0x756374726F687320;
  v17._object = 0xEA00000000007374;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v17);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  v13(v8, v12, v21);
  v18 = v26;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_1000042A8(v18, 0, 1, v23);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t static WorkflowEntity.typeDisplayRepresentation.modify()
{
  if (qword_1000FF490 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  sub_1000056FC(v0, static WorkflowEntity.typeDisplayRepresentation);
  return sub_1000669B0();
}

void WorkflowEntity.displayRepresentation.getter()
{
  sub_1000043AC();
  v2 = v1;
  v3 = sub_10002E87C(&qword_100100528);
  sub_100002EE0(v3);
  sub_100005B90();
  __chkstk_darwin(v4);
  sub_100003BE8();
  v5 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v5);
  sub_100005B90();
  __chkstk_darwin(v6);
  sub_100017428();
  v31 = type metadata accessor for LocalizedStringResource();
  sub_100003EC8();
  __chkstk_darwin(v7);
  sub_1000039BC();
  sub_100066994();
  v8 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v9 = sub_100002EE0(v8);
  __chkstk_darwin(v9);
  sub_10001C794();
  v10 = objc_opt_self();
  v11 = [v2 icon];
  v12 = [v10 imageWithIcon:v11 size:{31.0, 31.0}];

  if (v12)
  {
    sub_100063878(v12);
    v14 = v13;
  }

  else
  {
    v14 = 0xF000000000000000;
  }

  v15 = 1;
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = sub_1000669EC();
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);
  v17 = [v2 name];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21._countAndFlagsBits = v18;
  v21._object = v20;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v21);

  v22._countAndFlagsBits = sub_1000669EC();
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v22);
  LocalizedStringResource.init(stringInterpolation:)();
  v23 = sub_100006150();
  sub_1000042A8(v23, v24, v25, v31);
  if (v14 >> 60 != 15)
  {
    v26 = sub_100066D94();
    sub_100063AD0(v26, v27);
    sub_100066D94();
    DisplayRepresentation.Image.init(data:isTemplate:)();
    v15 = 0;
  }

  v28 = type metadata accessor for DisplayRepresentation.Image();
  sub_1000042A8(v0, v15, 1, v28);
  DisplayRepresentation.init(title:subtitle:image:)();
  v29 = sub_100066D94();
  sub_100063A64(v29, v30);
  sub_100002EEC();
}

void sub_100050454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100066AB8();
  sub_100066C60();
  v15 = 0;
  v37 = v14;
  v16 = *(v14 + 16);
  v17 = v16 + 40;
  v18 = *(v16 + 16);
  v36 = v16 + 40;
LABEL_2:
  v19 = v17 + 16 * v15;
  while (v18 != v15)
  {
    if (v15 >= v18)
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_21;
    }

    v21 = objc_opt_self();

    v22 = [v21 defaultDatabase];
    sub_100066C3C();
    v23 = String._bridgeToObjectiveC()();
    v24 = [v22 referenceForWorkflowID:v23];

    v19 += 16;
    ++v15;
    if (v24)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      sub_1000042EC();
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v15 = v20;
      v17 = v36;
      goto LABEL_2;
    }
  }

  v25 = sub_10000D564(_swiftEmptyArrayStorage);
  if (v25)
  {
    v26 = v25;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v26 < 0)
    {
      goto LABEL_22;
    }

    v27 = 0;
    do
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        sub_100066EA0();
      }

      else
      {
        sub_100066E88();
      }

      ++v27;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      sub_100007DBC();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v26 != v27);
  }

  sub_100066A04();
  sub_100066AD4();

  v30(v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, _swiftEmptyArrayStorage, a12, a13, a14);
}

uint64_t WorkflowEntity.WorkflowQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return sub_100005BD8(sub_10005068C);
}

void sub_10005068C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100066DF8();
  v17 = [objc_opt_self() defaultDatabase];
  v18 = [v17 sortedVisibleWorkflowsByName];

  v19 = [v18 descriptors];
  sub_100002FC4(0, &unk_100101E80);
  sub_1000095CC();
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = 0;
  v41 = v20 & 0xC000000000000001;
  v42 = sub_10000D564(v20);
  while (v42 != v21)
  {
    if (v41)
    {
      v22 = sub_100066EA0();
    }

    else
    {
      if (v21 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v22 = sub_100066E88();
    }

    v23 = v22;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return;
    }

    v24 = v16[6];
    v25 = v16[7];
    v26 = [v22 name];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v16[2] = v27;
    v16[3] = v29;
    v16[4] = v24;
    v16[5] = v25;
    sub_1000200D8();
    sub_100066BB8();
    LOBYTE(v26) = StringProtocol.localizedCaseInsensitiveContains<A>(_:)();

    if (v26)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      sub_100066A88();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v21;
  }

  v30 = sub_10000D564(_swiftEmptyArrayStorage);
  if (v30)
  {
    v31 = v30;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v31 < 0)
    {
      goto LABEL_24;
    }

    v32 = 0;
    do
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        sub_100066EA0();
      }

      else
      {
        sub_100066E88();
      }

      ++v32;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      sub_100007DBC();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v31 != v32);
  }

  sub_100066A04();
  sub_100066E14();

  v35(v33, v34, v35, v36, v37, v38, v39, v40, a9, v20 & 0xFFFFFFFFFFFFFF8, v41, v42, _swiftEmptyArrayStorage, a14, a15, a16);
}

uint64_t sub_10005094C()
{
  sub_100066AF0();
  v0 = [objc_opt_self() defaultDatabase];
  v1 = [v0 sortedVisibleWorkflowsByName];

  v2 = [v1 descriptors];
  sub_100002FC4(0, &unk_100101E80);
  sub_1000095CC();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = sub_10000D564(v3);
  if (v4)
  {
    v5 = v4;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v7 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        sub_100066EA0();
      }

      else
      {
        sub_100066E88();
      }

      ++v7;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      sub_100007DBC();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v5 != v7);
  }

  sub_100066A04();

  return v8();
}

uint64_t sub_100050AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_100050B84;

  return WorkflowEntity.WorkflowQuery.entities(matching:)(a2, a3);
}

uint64_t sub_100050B84()
{
  sub_100004304();
  v3 = v2;
  sub_100007B24();
  v5 = v4;
  sub_100041EC8();
  *v6 = v5;
  v7 = *v1;
  sub_100005224();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_100050C80(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000668D4;

  return WorkflowEntity.WorkflowQuery.entities(for:)(a1);
}

uint64_t sub_100050D14(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100066840;

  return WorkflowEntity.WorkflowQuery.suggestedEntities()();
}

uint64_t sub_100050DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100050E64;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100050E64()
{
  sub_100005BE4();
  v3 = v2;
  sub_100007B24();
  v4 = *v1;
  sub_100005224();
  *v5 = v4;

  sub_100066A04();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_100050F50(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100064740();
  *v5 = v2;
  v5[1] = sub_1000667E8;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100051004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000510B8;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t sub_1000510B8()
{
  sub_100005BE4();
  sub_100007B24();
  v1 = *v0;
  sub_100005224();
  *v2 = v1;

  sub_100003BDC();

  return v3();
}

uint64_t sub_100051198@<X0>(uint64_t *a1@<X8>)
{
  result = WorkflowEntity.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000511F0(uint64_t a1)
{
  v2 = sub_100021C0C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100051244(uint64_t a1)
{
  v2 = sub_100021808();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

void OpenWorkflowAction.init()()
{
  sub_1000043AC();
  type metadata accessor for InputConnectionBehavior();
  sub_100004458();
  __chkstk_darwin(v0);
  sub_100007944();
  sub_10000516C(v1);
  v2 = sub_10002E87C(&qword_1000FF570);
  v3 = sub_100002EE0(v2);
  __chkstk_darwin(v3);
  sub_10000F1A8();
  sub_10000667C();
  v5 = __chkstk_darwin(v4);
  sub_10000E8B0(v5, v6, v7, v8, v9, v10, v11, v12, v39);
  v13 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v13);
  sub_100005B90();
  __chkstk_darwin(v14);
  sub_100005AEC(v15, v40);
  type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_100004458();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_10001C6E4();
  v19 = type metadata accessor for Locale();
  v20 = sub_100002EE0(v19);
  __chkstk_darwin(v20);
  sub_10000443C();
  v21 = type metadata accessor for String.LocalizationValue();
  v22 = sub_100002EE0(v21);
  __chkstk_darwin(v22);
  sub_1000039BC();
  sub_100066958();
  type metadata accessor for LocalizedStringResource();
  sub_100003EC8();
  __chkstk_darwin(v23);
  sub_1000051D8();
  sub_10002E87C(&qword_1000FF598);
  sub_1000060C4();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24 = *(v17 + 104);
  v25 = sub_1000334F4();
  v24(v25);
  sub_100005B78();
  sub_10000F6AC();
  sub_100004B18();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v26 = sub_1000334F4();
  v24(v26);
  sub_10000F6AC();
  v27 = sub_1000046F0();
  v30 = sub_100066B08(v27, v28, v29);
  v31 = sub_100008330();
  sub_1000042A8(v31, v32, v33, v30);
  v34 = sub_100005E08();
  sub_1000042A8(v34, v35, v36, v30);
  v37 = sub_10000A5AC();
  v38(v37);
  sub_100021C0C();
  sub_100066C30();
  sub_10000B0B8();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_100002EEC();
}

uint64_t static OpenWorkflowAction.title.modify()
{
  if (qword_1000FF498 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();
  sub_1000056FC(v0, &static OpenWorkflowAction.title);
  return sub_1000669B0();
}

uint64_t sub_1000516E8()
{
  v0 = sub_10002E87C(&qword_1000FF580);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for IntentDescription();
  sub_100066730(v10, static OpenWorkflowAction.description);
  sub_10004D458(v10, static OpenWorkflowAction.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_1000042A8(v2, 1, 1, v9);
  return IntentDescription.init(_:categoryName:searchKeywords:)();
}

void AddShortcutToHomeScreenAction.shortcut.setter(void *a1)
{
  v2 = a1;
  sub_100066D58();
}

uint64_t (*OpenWorkflowAction.target.modify())()
{
  v1 = sub_100011884();
  v2 = sub_10004D490(v1);
  *(v0 + 32) = sub_100066A70(v2);
  return sub_10006685C;
}

uint64_t OpenWorkflowAction.perform()()
{
  sub_100005BE4();
  v0[4] = v1;
  v0[5] = v2;
  type metadata accessor for MainActor();
  sub_1000669A4();
  v0[6] = static MainActor.shared.getter();
  sub_100007DC8();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_1000669D4();
  v3 = sub_100004310();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100051B44()
{
  sub_100004304();

  v1 = sub_10004BB2C();
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = v1;
    IntentParameter.wrappedValue.getter();
    v3 = *(v0 + 24);
    type metadata accessor for MainViewController(0);
    sub_1000669BC();
    sub_100015BD0(v4, v5);
    WorkflowOpener.openWorkflow(_:)();

    swift_unknownObjectRelease();
  }

  static IntentResult.result<>()();
  sub_100019CB0();

  return v6();
}

uint64_t sub_100051C28@<X0>(uint64_t *a1@<X8>)
{
  result = AddShortcutToHomeScreenAction.shortcut.getter();
  *a1 = result;
  return result;
}

uint64_t (*sub_100051C60(void *a1))()
{
  v2 = sub_10004D490(0x28uLL);
  *a1 = v2;
  v2[4] = IntentParameter.wrappedValue.modify();
  return sub_10006685C;
}

uint64_t sub_100051CEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000667E8;

  return OpenWorkflowAction.perform()();
}

uint64_t sub_100051DB4(uint64_t a1)
{
  v2 = sub_100063B7C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

void CreateWorkflowAction.init()()
{
  sub_1000043AC();
  type metadata accessor for InputConnectionBehavior();
  sub_100004458();
  __chkstk_darwin(v0);
  sub_100007944();
  sub_10000F7E0(v1);
  v2 = sub_10002E87C(&qword_1000FF570);
  sub_100002EE0(v2);
  sub_100005B90();
  __chkstk_darwin(v3);
  sub_100005B00();
  sub_1000669F8(v4);
  v5 = sub_10002E87C(&qword_1000FF5A8);
  sub_100002EE0(v5);
  sub_100005B90();
  __chkstk_darwin(v6);
  sub_100005AEC(v7, v35);
  v8 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v8);
  sub_100005B90();
  __chkstk_darwin(v9);
  sub_100005B00();
  sub_1000042F8();
  type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_100004458();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_10001C6E4();
  v13 = type metadata accessor for Locale();
  v14 = sub_100002EE0(v13);
  __chkstk_darwin(v14);
  sub_10000443C();
  v15 = type metadata accessor for String.LocalizationValue();
  v16 = sub_100002EE0(v15);
  __chkstk_darwin(v16);
  sub_10001C794();
  v17 = type metadata accessor for LocalizedStringResource();
  sub_100003EC8();
  __chkstk_darwin(v18);
  sub_1000051D8();
  sub_10002E87C(&qword_1000FF5B0);
  sub_100066CF0();
  static Locale.current.getter();
  v19 = *(v11 + 104);
  v20 = sub_100006A08();
  v19(v20);
  sub_100005B78();
  sub_10000F6AC();
  sub_100004B18();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v21 = sub_100006A08();
  v19(v21);
  sub_10000F6AC();
  v22 = sub_1000046F0();
  sub_100033518(v22, v23, v24, v17);
  type metadata accessor for String.IntentInputOptions();
  v25 = sub_100008330();
  sub_100033518(v25, v26, v27, v28);
  type metadata accessor for IntentDialog();
  v29 = sub_100005E08();
  sub_1000042A8(v29, v30, v31, v32);
  v33 = sub_1000095B8();
  v34(v33);
  sub_10000B0B8();
  IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  sub_100002EEC();
}

uint64_t static CreateWorkflowAction.title.modify()
{
  if (qword_1000FF4A8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();
  sub_1000056FC(v0, &static CreateWorkflowAction.title);
  return sub_1000669B0();
}

uint64_t sub_100052270()
{
  v0 = sub_10002E87C(&qword_1000FF580);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for IntentDescription();
  sub_100066730(v10, static CreateWorkflowAction.description);
  sub_10004D458(v10, static CreateWorkflowAction.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_1000042A8(v2, 1, 1, v9);
  return IntentDescription.init(_:categoryName:searchKeywords:)();
}

void static CreateWorkflowAction.parameterSummary.getter()
{
  sub_1000079FC();
  v0 = sub_10002E87C(&qword_100100530);
  sub_100002EE0(v0);
  sub_100005B90();
  __chkstk_darwin(v1);
  sub_100003BE8();
  sub_10002E87C(&qword_100100538);
  sub_100003EC8();
  sub_100005B90();
  __chkstk_darwin(v2);
  sub_100007B14();
  sub_100063B28();
  sub_100066B38();
  sub_100004B18();
  v3._countAndFlagsBits = 0xD000000000000016;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10002E87C(&qword_100100548);
  sub_100066968();

  v4._countAndFlagsBits = sub_1000669EC();
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  sub_100066938();
  sub_1000044C0();
  sub_100066A24();
  IntentParameterSummary.init(_:table:)();
  sub_1000046DC();
}

uint64_t (*CreateWorkflowAction.name.modify())()
{
  v1 = sub_100011884();
  v2 = sub_10004D490(v1);
  *(v0 + 32) = sub_100066A70(v2);
  return sub_10006685C;
}

uint64_t CreateWorkflowAction.perform()()
{
  sub_100004304();
  v0[11] = v1;
  v0[12] = v2;
  v3 = type metadata accessor for LibraryWorkflowCreationBehavior();
  v0[13] = v3;
  sub_10000A804(v3);
  v0[14] = v4;
  v0[15] = sub_100066AA0();
  v5 = type metadata accessor for LibraryConfiguration();
  v0[16] = v5;
  sub_10000A804(v5);
  v0[17] = v6;
  v0[18] = sub_100066AA0();
  type metadata accessor for MainActor();
  sub_1000669A4();
  v0[19] = static MainActor.shared.getter();
  sub_100007DC8();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100052874, v8, v7);
}

uint64_t sub_100052874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100066DF8();

  v17 = sub_10004BB2C();
  v18 = [objc_allocWithZone(WFWorkflowRecord) init];
  IntentParameter.wrappedValue.getter();
  v19 = v16[6];
  if (v19)
  {
    sub_100006018(v16[5], v19, v18, &selRef_setName_);
  }

  if (!v17 || (v20 = v17, sub_10003437C(), v22 = v21, v20, !v22) || (v23 = v16[17], v24 = v16[18], v26 = v16[15], v25 = v16[16], a11 = v17, v27 = v16[13], v28 = v16[14], v29 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController_configuration, sub_100005BC0(), swift_beginAccess(), (*(v23 + 16))(v24, &v22[v29], v25), v22, LibraryConfiguration.workflowCreationBehavior.getter(), v30 = sub_100066D7C(), v31(v30), v32 = LibraryWorkflowCreationBehavior.creationOptions(record:)(), (*(v28 + 8))(v26, v27), v17 = a11, !v32))
  {
    v32 = [objc_allocWithZone(WFWorkflowCreationOptions) initWithRecord:v18];
  }

  v33 = [objc_opt_self() defaultDatabase];
  v16[7] = 0;
  v34 = [v33 createWorkflowWithOptions:v32 nameCollisionBehavior:0 error:v16 + 7];

  v35 = v16[7];
  if (v34)
  {
    a10 = v16[18];
    a11 = v16[15];
    v36 = v35;
    OpenWorkflowAction.init()();
    v38 = v37;
    v16[8] = v34;
    v39 = v34;
    IntentParameter.wrappedValue.setter();
    v16[9] = v39;
    v16[10] = v38;
    sub_100021754();
    sub_100063B7C();
    static IntentResult.result<A, B>(value:opensIntent:)();
  }

  else
  {
    v40 = v35;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_100003BDC();
  sub_100066E14();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t (*sub_100052B98(void *a1))()
{
  v2 = sub_10004D490(0x28uLL);
  *a1 = v2;
  v2[4] = IntentParameter.wrappedValue.modify();
  return sub_10006685C;
}

uint64_t sub_100052C28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000667E8;

  return CreateWorkflowAction.perform()();
}

uint64_t sub_100052CF0(uint64_t a1)
{
  v2 = sub_100063B28();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

void CreateFolderAction.init()()
{
  sub_1000043AC();
  type metadata accessor for InputConnectionBehavior();
  sub_100004458();
  __chkstk_darwin(v0);
  sub_100007944();
  sub_10000F7E0(v1);
  v2 = sub_10002E87C(&qword_1000FF570);
  sub_100002EE0(v2);
  sub_100005B90();
  __chkstk_darwin(v3);
  sub_100005B00();
  sub_1000669F8(v4);
  v5 = sub_10002E87C(&qword_1000FF5A8);
  sub_100002EE0(v5);
  sub_100005B90();
  __chkstk_darwin(v6);
  sub_100005AEC(v7, v35);
  v8 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v8);
  sub_100005B90();
  __chkstk_darwin(v9);
  sub_100005B00();
  sub_1000042F8();
  type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_100004458();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_10001C6E4();
  v13 = type metadata accessor for Locale();
  v14 = sub_100002EE0(v13);
  __chkstk_darwin(v14);
  sub_10000443C();
  v15 = type metadata accessor for String.LocalizationValue();
  v16 = sub_100002EE0(v15);
  __chkstk_darwin(v16);
  sub_10001C794();
  v17 = type metadata accessor for LocalizedStringResource();
  sub_100003EC8();
  __chkstk_darwin(v18);
  sub_1000051D8();
  sub_10002E87C(&qword_1000FF5B0);
  sub_100066CF0();
  static Locale.current.getter();
  v19 = *(v11 + 104);
  v20 = sub_100006A08();
  v19(v20);
  sub_100005B78();
  sub_10000F6AC();
  sub_100004B18();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v21 = sub_100006A08();
  v19(v21);
  sub_10000F6AC();
  v22 = sub_1000046F0();
  sub_100033518(v22, v23, v24, v17);
  type metadata accessor for String.IntentInputOptions();
  v25 = sub_100008330();
  sub_100033518(v25, v26, v27, v28);
  type metadata accessor for IntentDialog();
  v29 = sub_100005E08();
  sub_1000042A8(v29, v30, v31, v32);
  v33 = sub_1000095B8();
  v34(v33);
  sub_10000B0B8();
  IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  sub_100002EEC();
}

uint64_t static CreateFolderAction.title.modify()
{
  if (qword_1000FF4B8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();
  sub_1000056FC(v0, &static CreateFolderAction.title);
  return sub_1000669B0();
}

uint64_t sub_1000531AC()
{
  v0 = sub_10002E87C(&qword_1000FF580);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for IntentDescription();
  sub_100066730(v10, static CreateFolderAction.description);
  sub_10004D458(v10, static CreateFolderAction.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_1000042A8(v2, 1, 1, v9);
  return IntentDescription.init(_:categoryName:searchKeywords:)();
}

void static CreateFolderAction.parameterSummary.getter()
{
  sub_1000079FC();
  v0 = sub_10002E87C(&qword_100100560);
  sub_100002EE0(v0);
  sub_100005B90();
  __chkstk_darwin(v1);
  sub_100003BE8();
  sub_10002E87C(&qword_100100568);
  sub_100003EC8();
  sub_100005B90();
  __chkstk_darwin(v2);
  sub_100007B14();
  sub_100063BD0();
  sub_100066B38();
  sub_100004B18();
  v3._countAndFlagsBits = 0xD000000000000014;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10002E87C(&qword_100100578);
  sub_100066968();

  v4._countAndFlagsBits = sub_1000669EC();
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  sub_100066938();
  sub_1000044C0();
  sub_100066A24();
  IntentParameterSummary.init(_:table:)();
  sub_1000046DC();
}

uint64_t (*CreateFolderAction.name.modify())()
{
  v1 = sub_100011884();
  v2 = sub_10004D490(v1);
  *(v0 + 32) = sub_100066A70(v2);
  return sub_10006685C;
}

uint64_t CreateFolderAction.perform()()
{
  sub_100004304();
  v0[6] = v1;
  v0[7] = v2;
  v3 = type metadata accessor for NavigationDestinationEntity();
  v0[8] = v3;
  sub_100002EE0(v3);
  v0[9] = sub_100066B80();
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  sub_1000669A4();
  v0[12] = static MainActor.shared.getter();
  sub_100007DC8();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000537DC, v5, v4);
}

uint64_t sub_1000537DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100066AB8();
  sub_100066C60();

  v15 = [objc_opt_self() defaultDatabase];
  IntentParameter.wrappedValue.getter();
  if (v14[3])
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  v17 = [objc_opt_self() defaultGlyphCharacter];
  v14[4] = 0;
  v18 = [v15 createFolderWithName:v16 icon:v17 error:v14 + 4];

  v19 = v14[4];
  if (v18)
  {
    v20 = v14[10];
    v21 = v14[11];
    v22 = v14[9];
    *v21 = v18;
    v23 = enum case for RootNavigationDestination.folder(_:);
    type metadata accessor for RootNavigationDestination();
    sub_100003EC8();
    (*(v24 + 104))(v21, v23);
    v25 = v19;
    v26 = v18;
    OpenNavigationDestinationAction.init()();
    v28 = v27;
    sub_10004D580(v21, v20);
    sub_10004D580(v20, v22);
    IntentParameter.wrappedValue.setter();
    sub_1000639A4(v20);
    v14[5] = v28;
    sub_100013358();
    sub_100015BD0(v29, v30);
    sub_100063C24();
    static IntentResult.result<A, B>(value:opensIntent:)();

    sub_1000639A4(v21);
  }

  else
  {
    v31 = v19;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_100007084();
  sub_100066AD4();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
}

uint64_t (*sub_100053A80(void *a1))()
{
  v2 = sub_10004D490(0x28uLL);
  *a1 = v2;
  v2[4] = IntentParameter.wrappedValue.modify();
  return sub_10006685C;
}

uint64_t sub_100053B10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000667E8;

  return CreateFolderAction.perform()();
}

uint64_t sub_100053BD8(uint64_t a1)
{
  v2 = sub_100063BD0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

void MoveShortcutToFolderAction.init()()
{
  sub_1000043AC();
  v0 = sub_10002E87C(&qword_1000FF578);
  sub_100002EE0(v0);
  sub_100005B90();
  __chkstk_darwin(v1);
  sub_100005B00();
  sub_1000042F8();
  type metadata accessor for InputConnectionBehavior();
  sub_100004458();
  v50 = v2;
  v51 = v3;
  __chkstk_darwin(v2);
  sub_100007944();
  sub_1000669F8(v4);
  v5 = sub_10002E87C(&qword_1000FF570);
  v6 = sub_100002EE0(v5);
  __chkstk_darwin(v6);
  sub_10000F1A8();
  sub_10000667C();
  __chkstk_darwin(v7);
  sub_100005184();
  v8 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v8);
  sub_100005B90();
  __chkstk_darwin(v9);
  sub_100005B00();
  type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_100004458();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_1000039BC();
  sub_100066958();
  v13 = type metadata accessor for Locale();
  v14 = sub_100002EE0(v13);
  __chkstk_darwin(v14);
  sub_1000039BC();
  sub_100011D5C();
  v15 = type metadata accessor for String.LocalizationValue();
  v16 = sub_100002EE0(v15);
  __chkstk_darwin(v16);
  sub_1000039BC();
  sub_100017428();
  v46 = type metadata accessor for LocalizedStringResource();
  sub_100002F04();
  __chkstk_darwin(v17);
  sub_1000039BC();
  sub_10002E87C(&qword_1000FF5B8);
  sub_1000060C4();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = *(v11 + 104);
  v19 = sub_100066C54();
  v18(v19);
  sub_100003F1C();
  sub_10000B0F4();
  sub_100004B18();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20 = sub_100066C54();
  v18(v20);
  sub_10000B0F4();
  sub_1000060AC();
  sub_1000042A8(v21, v22, v23, v46);
  v24 = type metadata accessor for IntentDialog();
  v25 = sub_100008330();
  sub_1000042A8(v25, v26, v27, v24);
  sub_100004730();
  sub_1000042A8(v28, v29, v30, v24);
  v47 = enum case for InputConnectionBehavior.default(_:);
  v48 = *(v51 + 104);
  v48();
  sub_100021C0C();
  sub_100066D70();
  sub_100066D88();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_10002E87C(&qword_1000FF588);
  sub_100066BC8();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v31 = sub_100066C54();
  v18(v31);
  sub_10000B0F4();
  sub_100019BFC();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v32 = sub_100066C54();
  v18(v32);
  sub_10000B0F4();
  sub_1000060AC();
  sub_100033518(v33, v34, v35, v46);
  type metadata accessor for NavigationDestinationEntity();
  v36 = sub_100004770();
  sub_1000042A8(v36, v37, v38, v39);
  v40 = sub_100006150();
  sub_1000042A8(v40, v41, v42, v24);
  v43 = sub_100008330();
  sub_1000042A8(v43, v44, v45, v24);
  (v48)(v49, v47, v50);
  sub_10002F79C();
  sub_10000A5A0();
  IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)();
  sub_100002EEC();
}

uint64_t static MoveShortcutToFolderAction.title.modify()
{
  if (qword_1000FF4C8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();
  sub_1000056FC(v0, &static MoveShortcutToFolderAction.title);
  return sub_1000669B0();
}

uint64_t sub_100054298()
{
  v0 = sub_10002E87C(&qword_1000FF580);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for IntentDescription();
  sub_100066730(v10, static MoveShortcutToFolderAction.description);
  sub_10004D458(v10, static MoveShortcutToFolderAction.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_1000042A8(v2, 1, 1, v9);
  return IntentDescription.init(_:categoryName:searchKeywords:)();
}

void static MoveShortcutToFolderAction.parameterSummary.getter()
{
  sub_1000079FC();
  v0 = sub_10002E87C(&qword_100100590);
  sub_100002EE0(v0);
  sub_100005B90();
  __chkstk_darwin(v1);
  sub_100003BE8();
  sub_10002E87C(&qword_100100598);
  sub_100003EC8();
  sub_100005B90();
  __chkstk_darwin(v2);
  sub_100007B14();
  sub_100063C78();
  sub_100066D0C();
  v3._countAndFlagsBits = 0x2065766F4DLL;
  v3._object = 0xE500000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10002E87C(&qword_1001005A8);
  sub_100066968();

  sub_100066E30();
  swift_getKeyPath();
  sub_10002E87C(&qword_1001005B0);
  sub_100066968();

  v4._countAndFlagsBits = sub_1000669EC();
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  sub_100066938();
  sub_1000044C0();
  sub_100066A24();
  IntentParameterSummary.init(_:table:)();
  sub_1000046DC();
}

uint64_t (*MoveShortcutToFolderAction.shortcuts.modify())()
{
  v1 = sub_100011884();
  v2 = sub_10004D490(v1);
  *(v0 + 32) = sub_100066A70(v2);
  return sub_10006685C;
}

uint64_t (*MoveShortcutToFolderAction.folder.modify())()
{
  v1 = sub_10000CBF0();
  v2 = sub_10004D490(v1);
  *(v0 + 32) = sub_100066A70(v2);
  return sub_10006685C;
}

unint64_t MoveShortcutToFolderAction.MoveError.errorDescription.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000029;
  }

  else
  {
    return 0xD000000000000023;
  }
}

Swift::Int sub_100054830()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MoveShortcutToFolderAction.MoveError.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t MoveShortcutToFolderAction.perform()()
{
  sub_100005BE4();
  v0[5] = v1;
  v0[6] = v2;
  sub_100066C24(v3);
  v4 = type metadata accessor for RootNavigationDestination();
  v0[7] = v4;
  sub_10000A804(v4);
  v0[8] = v5;
  v0[9] = sub_100066AA0();
  v6 = type metadata accessor for NavigationDestinationEntity();
  sub_100002EE0(v6);
  v0[10] = sub_100066B80();
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  sub_1000669A4();
  v0[13] = static MainActor.shared.getter();
  sub_100007DC8();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_1000669D4();
  v7 = sub_100004310();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10005498C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100066AB8();
  sub_100066C60();

  v15 = sub_10004BB2C();
  if (!v15)
  {
    sub_100063CCC();
    sub_100066C9C();
    *v28 = 0;
    swift_willThrow();
    goto LABEL_12;
  }

  v16 = v15;
  v17 = v14[12];
  v19 = v14[8];
  v18 = v14[9];
  v20 = v14[7];
  v21 = sub_100008288();

  IntentParameter.wrappedValue.getter();
  (*(v19 + 32))(v18, v17, v20);
  v22 = sub_100011DAC();
  v24 = v23(v22);
  if (v24 != enum case for RootNavigationDestination.folder(_:))
  {
    if (v24 == enum case for RootNavigationDestination.allShortcuts(_:))
    {
      v26 = 0;
      goto LABEL_7;
    }

    sub_100063CCC();
    sub_100066C9C();
    *v38 = 1;
    swift_willThrow();

    v39 = sub_100011DAC();
    v40(v39);
LABEL_12:

    sub_100003BDC();
    goto LABEL_13;
  }

  v25 = v14[9];
  (*(v14[8] + 96))(v25, v14[7]);
  v26 = *v25;
  v27 = *v25;
LABEL_7:
  IntentParameter.wrappedValue.getter();
  v29 = v14[2];
  v30 = *(v29 + 16);
  if (v30)
  {
    a10 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v31 = 32;
    do
    {
      v32 = *(v29 + v31);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      sub_100066A88();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v31 += 8;
      --v30;
    }

    while (v30);
  }

  LOBYTE(a10) = 1;
  dispatch thunk of ShortcutMoveService.prepend(_:to:source:)();
  v33 = v14[11];

  OpenNavigationDestinationAction.init()();
  v35 = v34;
  IntentParameter.wrappedValue.getter();
  v36 = sub_100007DBC();
  sub_10004D580(v36, v37);
  IntentParameter.wrappedValue.setter();
  sub_1000639A4(v33);
  v14[3] = v35;
  sub_100063C24();
  static IntentResult.result<A>(opensIntent:)();

  sub_100019CB0();
LABEL_13:
  sub_100066AD4();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100054D14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000667E8;

  return MoveShortcutToFolderAction.perform()();
}

void sub_100054DC0(void *a1@<X8>)
{
  MoveShortcutToFolderAction.init()();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100054DE8(uint64_t a1)
{
  v2 = sub_100063C78();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

void AddShortcutToHomeScreenAction.init()()
{
  sub_1000043AC();
  v1 = sub_10002E87C(&qword_1000FF5D0);
  sub_100002EE0(v1);
  sub_100005B90();
  __chkstk_darwin(v2);
  sub_100005B00();
  v3 = sub_10002E87C(&qword_1000FF5A8);
  sub_100002EE0(v3);
  sub_100005B90();
  __chkstk_darwin(v4);
  sub_100005B00();
  sub_1000042F8();
  v69 = type metadata accessor for InputConnectionBehavior();
  sub_100004458();
  v70 = v5;
  __chkstk_darwin(v6);
  sub_100007944();
  v63 = v7;
  v8 = sub_10002E87C(&qword_1000FF570);
  v9 = sub_100002EE0(v8);
  __chkstk_darwin(v9);
  sub_10000F1A8();
  sub_10000667C();
  v11 = __chkstk_darwin(v10);
  sub_10000E8B0(v11, v12, v13, v14, v15, v16, v17, v18, v62);
  v19 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v19);
  sub_100005B90();
  __chkstk_darwin(v20);
  sub_100005B00();
  v21 = type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_10000F720();
  v23 = v22;
  __chkstk_darwin(v24);
  sub_1000039BC();
  sub_100066958();
  v25 = type metadata accessor for Locale();
  v26 = sub_100002EE0(v25);
  __chkstk_darwin(v26);
  sub_1000039BC();
  sub_100011D5C();
  v27 = type metadata accessor for String.LocalizationValue();
  v28 = sub_100002EE0(v27);
  __chkstk_darwin(v28);
  sub_1000039BC();
  sub_10000F43C();
  v66 = type metadata accessor for LocalizedStringResource();
  sub_100002F04();
  __chkstk_darwin(v29);
  sub_10001C794();
  sub_10002E87C(&qword_1000FF598);
  sub_1000060C4();
  sub_100066EB8();
  static Locale.current.getter();
  v30 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v31 = *(v23 + 104);
  v64 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  (v31)(v0, enum case for LocalizedStringResource.BundleDescription.main(_:), v21);
  sub_100003F1C();
  sub_10000B0F4();
  sub_100066984();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v31)(v0, v30, v21);
  sub_100066A64();
  sub_10000B0F4();
  sub_1000060AC();
  sub_1000042A8(v32, v33, v34, v66);
  v68 = type metadata accessor for IntentDialog();
  v35 = sub_100005E08();
  sub_1000042A8(v35, v36, v37, v68);
  sub_100004730();
  sub_1000042A8(v38, v39, v40, v68);
  v67 = enum case for InputConnectionBehavior.default(_:);
  v65 = *(v70 + 104);
  v65(v63);
  sub_100021C0C();
  sub_100066C84();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_10002E87C(&qword_1000FF5C8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v31)(v0, v64, v21);
  sub_10000B0F4();
  sub_1000669E0();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v31)(v0, v64, v21);
  sub_100066A64();
  sub_10000B0F4();
  sub_1000060AC();
  sub_1000042A8(v41, v42, v43, v66);
  type metadata accessor for String.IntentInputOptions();
  v44 = sub_100005E08();
  sub_1000042A8(v44, v45, v46, v47);
  sub_100004730();
  sub_1000042A8(v48, v49, v50, v68);
  (v65)(v63, v67, v69);
  sub_100066C84();
  IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  sub_10002E87C(&qword_1000FF5D8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v31)(v0, v64, v21);
  sub_10000B0F4();
  sub_1000669E0();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v51 = sub_100066C54();
  v31(v51);
  sub_100066A64();
  sub_10000B0F4();
  sub_1000060AC();
  sub_100033518(v52, v53, v54, v66);
  type metadata accessor for IntentFile();
  v55 = sub_100004770();
  sub_1000042A8(v55, v56, v57, v58);
  v59 = sub_100005E08();
  sub_1000042A8(v59, v60, v61, v68);
  (v65)(v63, v67, v69);
  IntentParameter<>.init(title:description:default:supportedTypeIdentifiers:requestValueDialog:inputConnectionBehavior:)();
  sub_100002EEC();
}

uint64_t sub_1000554E4()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100066730(v6, static AddShortcutToHomeScreenAction.title);
  sub_10004D458(v6, static AddShortcutToHomeScreenAction.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t static AddShortcutToHomeScreenAction.title.modify()
{
  if (qword_1000FF4D8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();
  sub_1000056FC(v0, static AddShortcutToHomeScreenAction.title);
  return sub_1000669B0();
}

uint64_t sub_1000557F4()
{
  v0 = sub_10002E87C(&qword_1000FF580);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for IntentDescription();
  sub_100066730(v10, static AddShortcutToHomeScreenAction.description);
  sub_10004D458(v10, static AddShortcutToHomeScreenAction.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_1000042A8(v2, 1, 1, v9);
  return IntentDescription.init(_:categoryName:searchKeywords:)();
}

void static AddShortcutToHomeScreenAction.parameterSummary.getter()
{
  sub_1000079FC();
  v0 = sub_10002E87C(&qword_1001005C0);
  sub_100002EE0(v0);
  sub_100005B90();
  __chkstk_darwin(v1);
  sub_100003BE8();
  sub_10002E87C(&qword_1001005C8);
  sub_100003EC8();
  sub_100005B90();
  __chkstk_darwin(v2);
  sub_100007B14();
  sub_100063D20();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._countAndFlagsBits = 543450177;
  v3._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10002E87C(&qword_1001005D8);
  sub_100007DBC();
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0x656D6F48206F7420;
  v4._object = 0xEF6E656572635320;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  sub_100066E50();
  sub_1000044C0();
  IntentParameterSummary.init(_:table:_:)();
  sub_1000046DC();
}

uint64_t sub_100055C94()
{
  swift_getKeyPath();
  sub_100063D20();
  v0 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  swift_getKeyPath();

  v1 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  sub_10002E87C(&qword_1001000E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000C1720;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;

  v3 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildBlock(_:)();

  return v3;
}

uint64_t sub_100055DD0@<X0>(uint64_t *a1@<X8>)
{
  result = AddShortcutToHomeScreenAction.$image.getter();
  *a1 = result;
  return result;
}

uint64_t (*AddShortcutToHomeScreenAction.shortcut.modify())()
{
  v1 = sub_100011884();
  v2 = sub_10004D490(v1);
  *(v0 + 32) = sub_100066A70(v2);
  return sub_10006685C;
}

uint64_t (*AddShortcutToHomeScreenAction.title.modify())()
{
  v1 = sub_10000CBF0();
  v2 = sub_10004D490(v1);
  *(v0 + 32) = sub_100066A70(v2);
  return sub_10006685C;
}

uint64_t AddShortcutToHomeScreenAction.image.setter(uint64_t a1)
{
  v2 = sub_100006144();
  v3 = sub_10002E87C(v2);
  sub_100002EE0(v3);
  sub_100005B90();
  __chkstk_darwin(v4);
  sub_100063D74(a1, &v9 - v5, &qword_1000FF5D0);
  IntentParameter.wrappedValue.setter();
  v6 = sub_1000042EC();
  return sub_1000069B0(v6, v7);
}

uint64_t (*AddShortcutToHomeScreenAction.image.modify())()
{
  v1 = sub_10004D490(0x28uLL);
  *(v0 + 32) = sub_100066A70(v1);
  return sub_10006685C;
}

void AddShortcutToHomeScreenAction.AddToHomeScreenError.localizedStringResource.getter()
{
  sub_1000079FC();
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_100004458();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_10001C794();
  v5 = type metadata accessor for Locale();
  v6 = sub_100002EE0(v5);
  __chkstk_darwin(v6);
  sub_1000039BC();
  sub_100017428();
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = sub_100002EE0(v7);
  __chkstk_darwin(v8);
  sub_1000039BC();
  sub_100004B18();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v0, enum case for LocalizedStringResource.BundleDescription.main(_:), v1);
  sub_100003F1C();
  sub_100007A10();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_1000046DC();
}

Swift::Int AddShortcutToHomeScreenAction.AddToHomeScreenError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10005625C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  AddShortcutToHomeScreenAction.AddToHomeScreenError.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t AddShortcutToHomeScreenAction.perform()()
{
  sub_100004304();
  v0[30] = v1;
  v0[31] = v2;
  v0[28] = v3;
  v0[29] = v4;
  v5 = type metadata accessor for GlyphIconColorScheme();
  v0[32] = v5;
  sub_10000A804(v5);
  v0[33] = v6;
  v0[34] = sub_100066AA0();
  v7 = type metadata accessor for AggregatedEntry();
  v0[35] = v7;
  sub_10000A804(v7);
  v0[36] = v8;
  v0[37] = sub_100066AA0();
  v9 = sub_10002E87C(&qword_1001005E0);
  sub_100002EE0(v9);
  v0[38] = sub_100066B80();
  v0[39] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v0[40] = v10;
  sub_10000A804(v10);
  v0[41] = v11;
  v0[42] = sub_100066AA0();
  v12 = sub_10002E87C(&qword_1000FF5D0);
  sub_100002EE0(v12);
  v0[43] = sub_100066AA0();
  v13 = type metadata accessor for IntentFile();
  v0[44] = v13;
  sub_10000A804(v13);
  v0[45] = v14;
  v0[46] = sub_100066AA0();
  type metadata accessor for MainActor();
  sub_1000669A4();
  v0[47] = static MainActor.shared.getter();
  sub_100007DC8();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[48] = v15;
  v0[49] = v16;

  return _swift_task_switch(sub_100056500, v15, v16);
}

uint64_t sub_100056500()
{
  IntentParameter.wrappedValue.getter();
  v1 = v0[18];
  v2 = v0[19];

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    IntentParameter.wrappedValue.getter();
  }

  else
  {
    IntentParameter.wrappedValue.getter();
    v4 = v0[27];
    v5 = [v4 name];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = v0[43];
  v6 = v0[44];
  IntentParameter.wrappedValue.getter();
  if (sub_10000AB80(v7, 1, v6) == 1)
  {
    sub_1000069B0(v0[43], &qword_1000FF5D0);
    IntentParameter.wrappedValue.getter();
    v8 = v0[22];
    v9 = [v8 icon];

    [v9 glyphCharacter];
    v10 = WFSystemImageNameForGlyphCharacter();
    if (v10)
    {
      v11 = v10;
      v12 = v0[37];
      v13 = v0[34];
      v14 = v0[33];
      v88 = v0[32];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = [objc_opt_self() sharedInstance];
      IntentParameter.wrappedValue.getter();
      *v12 = v0[23];
      v16 = sub_100003E90();
      v17(v16);
      IntentParameter.wrappedValue.getter();
      v18 = v0[24];
      v19 = [v18 icon];

      v20 = [v19 backgroundColor];
      *v13 = v20;
      (*(v14 + 104))(v13, enum case for GlyphIconColorScheme.palette(_:), v88);
      WFHomeScreenController.add(entry:name:colorScheme:symbolName:)();
      v41 = v0[36];
      v42 = v0[37];
      v43 = v0[35];

      v44 = sub_100007DBC();
      v45(v44);
      (*(v41 + 8))(v42, v43);
LABEL_18:
      v46 = v0[40];
      v47 = v0[38];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;
      sub_100004730();
      sub_1000042A8(v51, v52, v53, v46);
      v54 = objc_allocWithZone(WFAppLaunchRequest);
      v55 = sub_100062AF4(v48, v50, 0, v47, 0, 0);
      v0[50] = v55;
      v0[2] = v0;
      v0[7] = v0 + 52;
      v0[3] = sub_100056E50;
      v56 = swift_continuation_init();
      v0[17] = sub_10002E87C(&qword_1001005F0);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_100057200;
      v0[13] = &unk_1000F1E48;
      v0[14] = v56;
      [v55 performWithCompletionHandler:v0 + 10];

      return _swift_continuation_await(v0 + 2);
    }

    sub_100063DD0();
    sub_100066C9C();
    *v31 = 2;
    swift_willThrow();
  }

  else
  {
    v22 = v0[39];
    v21 = v0[40];
    (*(v0[45] + 32))(v0[46], v0[43], v0[44]);
    IntentFile.fileURL.getter();
    v23 = sub_10000AB80(v22, 1, v21);
    v24 = v0[39];
    if (v23 == 1)
    {
      v25 = v0[46];
      v27 = v0[44];
      v26 = v0[45];

      sub_1000069B0(v24, &qword_1001005E0);
      sub_100063DD0();
      sub_100066C9C();
      *v28 = 0;
      swift_willThrow();
      (*(v26 + 8))(v25, v27);
    }

    else
    {
      v29 = sub_100066C3C();
      v30(v29);
      if (URL.startAccessingSecurityScopedResource()())
      {
        Data.init(contentsOf:options:)();
        sub_100002FC4(0, &qword_100100110);
        v57 = sub_100066A88();
        sub_100063AD0(v57, v58);
        v59 = sub_100066A88();
        v61 = sub_100057188(v59, v60);
        if (v61)
        {
          v62 = v61;
          v63 = [objc_opt_self() sharedInstance];
          IntentParameter.wrappedValue.getter();
          v64 = v0[25];
          v65 = String._bridgeToObjectiveC()();

          v0[26] = 0;
          v66 = [v63 addWorkflowToHomeScreen:v64 withName:v65 image:v62 error:v0 + 26];

          v67 = v0[26];
          if (v66)
          {
            v68 = v0[45];
            v92 = v0[46];
            v69 = v0[44];
            v70 = v67;

            v71 = sub_100066A88();
            sub_100063A78(v71, v72);
            URL.stopAccessingSecurityScopedResource()();
            v73 = sub_100011DAC();
            v74(v73);
            (*(v68 + 8))(v92, v69);
            goto LABEL_18;
          }

          v83 = v0[45];
          v91 = v0[44];
          v94 = v0[46];
          v84 = v0[41];
          v89 = v0[42];
          v90 = v0[40];
          v85 = v67;

          _convertNSErrorToError(_:)();

          swift_willThrow();
          v86 = sub_100066A88();
          sub_100063A78(v86, v87);

          URL.stopAccessingSecurityScopedResource()();
          (*(v84 + 8))(v89, v90);
          (*(v83 + 8))(v94, v91);
        }

        else
        {
          v93 = v0[46];
          v76 = v0[44];
          v75 = v0[45];
          v77 = v0[41];
          v78 = v0[42];
          v79 = v0[40];

          sub_100063DD0();
          sub_100066C9C();
          *v80 = 3;
          swift_willThrow();
          v81 = sub_100066A88();
          sub_100063A78(v81, v82);
          URL.stopAccessingSecurityScopedResource()();
          (*(v77 + 8))(v78, v79);
          (*(v75 + 8))(v93, v76);
        }
      }

      else
      {
        v32 = v0[46];
        v34 = v0[44];
        v33 = v0[45];
        v36 = v0[41];
        v35 = v0[42];
        v37 = v0[40];

        sub_100063DD0();
        sub_100066C9C();
        *v38 = 0;
        swift_willThrow();
        (*(v36 + 8))(v35, v37);
        (*(v33 + 8))(v32, v34);
      }
    }
  }

  sub_100003BDC();

  return v39();
}

uint64_t sub_100056E50()
{
  sub_100005BE4();
  sub_100041EC8();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 408) = v4;
  v5 = v3[49];
  v6 = v3[48];
  if (v4)
  {
    v7 = sub_1000570A0;
  }

  else
  {
    v7 = sub_100056FA4;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100056FA4()
{
  v1 = *(v0 + 400);
  sub_100066DCC();

  static IntentResult.result<>()();

  sub_100003BDC();

  return v2();
}

uint64_t sub_1000570A0()
{
  v1 = *(v0 + 400);

  swift_willThrow();

  sub_100066DCC();

  sub_100007084();

  return v2();
}

id sub_100057188(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = [v4 initWithData:isa];

  sub_100063A78(a1, a2);
  return v6;
}

uint64_t sub_100057200(uint64_t a1, char a2, void *a3)
{
  v5 = sub_100041C04((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_100057278(*v5, a3);
  }

  v7 = *v5;

  return sub_1000572DC(v7, a2);
}

uint64_t sub_100057278(uint64_t a1, uint64_t a2)
{
  sub_10002E87C(&qword_1000FFF88);
  v4 = sub_100066C9C();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

uint64_t sub_100057300(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 64) + 40);
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 32))(v3, a2, v4);

  return swift_continuation_throwingResume();
}

uint64_t sub_1000573C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000667E8;

  return AddShortcutToHomeScreenAction.perform()();
}

void sub_100057478(void *a1@<X8>)
{
  AddShortcutToHomeScreenAction.init()();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
}

uint64_t sub_1000574A4(uint64_t a1)
{
  v2 = sub_100063D20();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

void RenameShortcutAction.init()()
{
  sub_1000043AC();
  v0 = sub_10002E87C(&qword_1000FF5A8);
  sub_100002EE0(v0);
  sub_100005B90();
  __chkstk_darwin(v1);
  sub_100005AEC(v2, v51);
  type metadata accessor for InputConnectionBehavior();
  sub_100004458();
  v58 = v3;
  v59 = v4;
  __chkstk_darwin(v3);
  sub_100007944();
  sub_10000F7E0(v5);
  v6 = sub_10002E87C(&qword_1000FF570);
  v7 = sub_100002EE0(v6);
  __chkstk_darwin(v7);
  sub_10000F1A8();
  sub_10000667C();
  v9 = __chkstk_darwin(v8);
  sub_10000E8B0(v9, v10, v11, v12, v13, v14, v15, v16, v52);
  v17 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v17);
  sub_100005B90();
  __chkstk_darwin(v18);
  sub_100005B00();
  type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_100004458();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_1000051D8();
  v22 = type metadata accessor for Locale();
  v23 = sub_100002EE0(v22);
  __chkstk_darwin(v23);
  sub_10000443C();
  v24 = type metadata accessor for String.LocalizationValue();
  v25 = sub_100002EE0(v24);
  __chkstk_darwin(v25);
  sub_1000039BC();
  sub_10000F43C();
  v55 = type metadata accessor for LocalizedStringResource();
  sub_100002F04();
  __chkstk_darwin(v26);
  sub_1000039BC();
  sub_10002E87C(&qword_1000FF598);
  sub_1000060C4();
  sub_100066EB8();
  static Locale.current.getter();
  v27 = *(v20 + 104);
  v28 = sub_100007DA0();
  v27(v28);
  sub_100003F1C();
  sub_100066A64();
  sub_100002F40();
  sub_100066984();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v29 = sub_100007DA0();
  v27(v29);
  sub_100066D7C();
  sub_100002F40();
  sub_1000060AC();
  sub_1000042A8(v30, v31, v32, v55);
  v56 = type metadata accessor for IntentDialog();
  v33 = sub_1000095D8();
  sub_1000042A8(v33, v34, v35, v56);
  v36 = sub_100004770();
  sub_1000042A8(v36, v37, v38, v56);
  v53 = enum case for InputConnectionBehavior.default(_:);
  v54 = *(v59 + 104);
  v54();
  sub_100021C0C();
  sub_100066D70();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_10002E87C(&qword_1000FF5C8);
  sub_100066CF0();
  static Locale.current.getter();
  v39 = sub_100007DA0();
  v27(v39);
  sub_100002F40();
  sub_1000669E0();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v40 = sub_100007DA0();
  v27(v40);
  sub_100066A64();
  sub_100002F40();
  sub_1000060AC();
  sub_100033518(v41, v42, v43, v55);
  type metadata accessor for String.IntentInputOptions();
  v44 = sub_100004770();
  sub_1000042A8(v44, v45, v46, v47);
  v48 = sub_100006150();
  sub_1000042A8(v48, v49, v50, v56);
  (v54)(v57, v53, v58);
  sub_100066B98();
  IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  sub_100002EEC();
}

void sub_1000579F0()
{
  sub_1000043AC();
  v2 = v1;
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_100004458();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000039BC();
  sub_10000F43C();
  v7 = type metadata accessor for Locale();
  v8 = sub_100002EE0(v7);
  __chkstk_darwin(v8);
  sub_1000039BC();
  sub_100066A30();
  v9 = type metadata accessor for String.LocalizationValue();
  v10 = sub_100002EE0(v9);
  __chkstk_darwin(v10);
  sub_10001C6E4();
  v11 = type metadata accessor for LocalizedStringResource();
  sub_100066730(v11, v2);
  sub_10004D458(v11, v2);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v5 + 104))(v0, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  sub_100003F1C();
  sub_100007A10();
  sub_1000042D0();
  sub_100002EEC();
}

uint64_t sub_100057BD4()
{
  v0 = sub_10002E87C(&qword_1000FF580);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for IntentDescription();
  sub_100066730(v10, static RenameShortcutAction.description);
  sub_10004D458(v10, static RenameShortcutAction.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_1000042A8(v2, 1, 1, v9);
  return IntentDescription.init(_:categoryName:searchKeywords:)();
}

uint64_t (*RenameShortcutAction.shortcut.modify())()
{
  v1 = sub_100011884();
  v2 = sub_10004D490(v1);
  *(v0 + 32) = sub_100066A70(v2);
  return sub_10006685C;
}

uint64_t (*RenameShortcutAction.name.modify())()
{
  v1 = sub_10000CBF0();
  v2 = sub_10004D490(v1);
  *(v0 + 32) = sub_100066A70(v2);
  return sub_10006685C;
}

void static RenameShortcutAction.parameterSummary.getter()
{
  sub_1000079FC();
  v0 = sub_10002E87C(&qword_1001005F8);
  sub_100002EE0(v0);
  sub_100005B90();
  __chkstk_darwin(v1);
  sub_100003BE8();
  sub_10002E87C(&qword_100100600);
  sub_100003EC8();
  sub_100005B90();
  __chkstk_darwin(v2);
  sub_100007B14();
  sub_100063E24();
  sub_100066D0C();
  v3._countAndFlagsBits = 0x20656D616E6552;
  v3._object = 0xE700000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10002E87C(&qword_100100610);
  sub_100066968();

  sub_100066E30();
  swift_getKeyPath();
  sub_10002E87C(&qword_100100618);
  sub_100066968();

  v4._countAndFlagsBits = sub_1000669EC();
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  sub_100066938();
  sub_1000044C0();
  sub_100066A24();
  IntentParameterSummary.init(_:table:)();
  sub_1000046DC();
}

uint64_t RenameShortcutAction.perform()()
{
  sub_100005BE4();
  v0[6] = v1;
  v0[7] = v2;
  v0[5] = v3;

  return _swift_task_switch(sub_100058194, 0, 0);
}

uint64_t sub_100058194()
{
  sub_100066AF0();
  v1 = [objc_opt_self() defaultDatabase];
  IntentParameter.wrappedValue.getter();
  v2 = *(v0 + 16);
  IntentParameter.wrappedValue.getter();
  v3 = String._bridgeToObjectiveC()();

  *(v0 + 16) = 0;
  v4 = sub_100003E90();
  v6 = [v4 v5];

  v7 = *(v0 + 16);
  if (v6)
  {
    v8 = v7;
    OpenWorkflowAction.init()();
    v10 = v9;
    IntentParameter.wrappedValue.getter();
    v11 = *(v0 + 16);
    IntentParameter.wrappedValue.setter();

    *(v0 + 16) = v6;
    *(v0 + 32) = v10;
    sub_100021754();
    sub_100063B7C();
    static IntentResult.result<A, B>(value:opensIntent:)();
  }

  else
  {
    v13 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_100007084();

  return v12();
}

uint64_t sub_10005838C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000667E8;

  return RenameShortcutAction.perform()();
}

void sub_100058438(void *a1@<X8>)
{
  RenameShortcutAction.init()();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100058460(uint64_t a1)
{
  v2 = sub_100063E24();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

void ChangeShortcutIconAction.init()()
{
  sub_1000043AC();
  type metadata accessor for InputConnectionBehavior();
  sub_100004458();
  __chkstk_darwin(v0);
  sub_100007944();
  sub_10000516C(v1);
  v2 = sub_10002E87C(&qword_1000FF570);
  v3 = sub_100002EE0(v2);
  __chkstk_darwin(v3);
  sub_10000F1A8();
  sub_10000667C();
  v5 = __chkstk_darwin(v4);
  sub_10000E8B0(v5, v6, v7, v8, v9, v10, v11, v12, v39);
  v13 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v13);
  sub_100005B90();
  __chkstk_darwin(v14);
  sub_100005AEC(v15, v40);
  type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_100004458();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_10001C6E4();
  v19 = type metadata accessor for Locale();
  v20 = sub_100002EE0(v19);
  __chkstk_darwin(v20);
  sub_10000443C();
  v21 = type metadata accessor for String.LocalizationValue();
  v22 = sub_100002EE0(v21);
  __chkstk_darwin(v22);
  sub_1000039BC();
  sub_100066958();
  type metadata accessor for LocalizedStringResource();
  sub_100003EC8();
  __chkstk_darwin(v23);
  sub_1000051D8();
  sub_10002E87C(&qword_1000FF598);
  sub_1000060C4();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24 = *(v17 + 104);
  v25 = sub_1000334F4();
  v24(v25);
  sub_100005B78();
  sub_10000F6AC();
  sub_100004B18();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v26 = sub_1000334F4();
  v24(v26);
  sub_10000F6AC();
  v27 = sub_1000046F0();
  v30 = sub_100066B08(v27, v28, v29);
  v31 = sub_100008330();
  sub_1000042A8(v31, v32, v33, v30);
  v34 = sub_100005E08();
  sub_1000042A8(v34, v35, v36, v30);
  v37 = sub_10000A5AC();
  v38(v37);
  sub_100021C0C();
  sub_100066C30();
  sub_10000B0B8();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_100002EEC();
}

uint64_t sub_1000587A4()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100066730(v6, static ChangeShortcutIconAction.title);
  sub_10004D458(v6, static ChangeShortcutIconAction.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_100058A00()
{
  v0 = sub_10002E87C(&qword_1000FF580);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for IntentDescription();
  sub_100066730(v10, static ChangeShortcutIconAction.description);
  sub_10004D458(v10, static ChangeShortcutIconAction.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_1000042A8(v2, 1, 1, v9);
  return IntentDescription.init(_:categoryName:searchKeywords:)();
}

uint64_t (*ChangeShortcutIconAction.shortcut.modify())()
{
  v1 = sub_100011884();
  v2 = sub_10004D490(v1);
  *(v0 + 32) = sub_100066A70(v2);
  return sub_10006685C;
}

void static ChangeShortcutIconAction.parameterSummary.getter()
{
  sub_1000079FC();
  v0 = sub_10002E87C(&qword_100100620);
  sub_100002EE0(v0);
  sub_100005B90();
  __chkstk_darwin(v1);
  sub_100003BE8();
  sub_10002E87C(&qword_100100628);
  sub_100003EC8();
  sub_100005B90();
  __chkstk_darwin(v2);
  sub_100007B14();
  sub_100063E78();
  sub_100066B38();
  v3._countAndFlagsBits = 0x692065676E616843;
  v3._object = 0xEF20666F206E6F63;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10002E87C(&qword_100100638);
  sub_100066968();

  v4._countAndFlagsBits = sub_1000669EC();
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  sub_100066938();
  sub_1000044C0();
  sub_100066A24();
  IntentParameterSummary.init(_:table:)();
  sub_1000046DC();
}

uint64_t ChangeShortcutIconAction.perform()()
{
  sub_100005BE4();
  v0[3] = v1;
  v0[4] = v2;
  v3 = sub_10002E87C(&qword_100100018);
  sub_100002EE0(v3);
  v0[5] = sub_100066AA0();
  v4 = type metadata accessor for OpenWorkflowOptions();
  v0[6] = v4;
  sub_10000A804(v4);
  v0[7] = v5;
  v0[8] = sub_100066AA0();
  v6 = sub_100011E0C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100058F88()
{
  sub_100004304();
  type metadata accessor for OpenWorkflowOptions.ActionError();
  v1 = sub_100004770();
  sub_1000042A8(v1, v2, v3, v4);
  OpenWorkflowOptions.init(scrolledToActionIndex:actionError:isNewWorkflow:showIconPicker:isEmbeddedInAutomation:triggerInputType:onOpen:)();
  *(v0 + 72) = type metadata accessor for MainActor();
  *(v0 + 80) = static MainActor.shared.getter();
  sub_100007DC8();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_1000669D4();
  v5 = sub_100004310();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10005905C()
{
  sub_100005BE4();

  *(v0 + 88) = sub_10004BB2C();
  v1 = sub_100011E0C();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1000590C0()
{
  sub_100004304();
  if (v0[11])
  {
    IntentParameter.wrappedValue.getter();
    v0[12] = v0[2];
    v0[13] = static MainActor.shared.getter();
    sub_100007DC8();
    dispatch thunk of Actor.unownedExecutor.getter();
    sub_1000669D4();
    v1 = sub_100004310();

    return _swift_task_switch(v1, v2, v3);
  }

  else
  {
    static IntentResult.result<>()();
    v4 = sub_100066BF8();
    v5(v4);

    sub_100019CB0();

    return v6();
  }
}

uint64_t sub_1000591BC()
{
  sub_100004304();
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);

  v3 = sub_1000042EC();
  sub_1000355A8(v3, v4);

  swift_unknownObjectRelease();
  v5 = sub_100011E0C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100059244()
{
  sub_100004304();
  static IntentResult.result<>()();
  v0 = sub_100066BF8();
  v1(v0);

  sub_100019CB0();

  return v2();
}

uint64_t sub_1000592E4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  type metadata accessor for LocalizedStringResource();
  sub_100003EC8();
  v3 = sub_100005BCC();

  return v4(v3);
}

uint64_t sub_100059350()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000667E8;

  return ChangeShortcutIconAction.perform()();
}

uint64_t sub_100059418(uint64_t a1)
{
  v2 = sub_100063E78();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100059454()
{
  v0 = sub_10002E87C(&qword_1000FF580);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for TypeDisplayRepresentation();
  sub_100066730(v10, static ShortcutAttribute.typeDisplayRepresentation);
  sub_10004D458(v10, static ShortcutAttribute.typeDisplayRepresentation);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_1000042A8(v2, 1, 1, v9);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t static ShortcutAttribute.typeDisplayRepresentation.modify()
{
  if (qword_1000FF508 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  sub_1000056FC(v0, static ShortcutAttribute.typeDisplayRepresentation);
  return sub_1000669B0();
}

void static ShortcutAttribute.caseDisplayRepresentations.getter()
{
  sub_1000043AC();
  v1 = sub_10002E87C(&qword_100100528);
  sub_100002EE0(v1);
  sub_100005B90();
  __chkstk_darwin(v2);
  sub_100005B00();
  v3 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v3);
  sub_100005B90();
  __chkstk_darwin(v4);
  sub_100005B00();
  sub_1000042F8();
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_10000F720();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_10001C794();
  v9 = type metadata accessor for Locale();
  v10 = sub_100002EE0(v9);
  __chkstk_darwin(v10);
  sub_1000039BC();
  sub_100066994();
  v11 = type metadata accessor for String.LocalizationValue();
  v12 = sub_100002EE0(v11);
  __chkstk_darwin(v12);
  sub_10000443C();
  v39 = type metadata accessor for LocalizedStringResource();
  sub_100002F04();
  __chkstk_darwin(v13);
  sub_100007944();
  sub_10002E87C(&qword_100100640);
  v14 = sub_10002E87C(&qword_100100648) - 8;
  v41 = *(*v14 + 72);
  v15 = (*(*v14 + 80) + 32) & ~*(*v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000C1770;
  v17 = v16 + v15;
  *(v16 + v15) = 1;
  sub_100004B18();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v42 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v40 = *(v7 + 104);
  v40(v0);
  sub_100003F1C();
  sub_100007A10();
  sub_1000042D0();
  v18 = sub_100005E08();
  sub_1000042A8(v18, v19, v20, v39);
  sub_100004B18();
  sub_100005BC0();
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  sub_100066D88();
  DisplayRepresentation.init(title:subtitle:image:)();
  *(v17 + v41) = 0;
  sub_100066BE8();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v40)(v0, v42, v5);
  sub_100003F1C();
  sub_100007A10();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v21 = sub_100005E08();
  sub_1000042A8(v21, v22, v23, v39);
  sub_100005BC0();
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  sub_100066D88();
  DisplayRepresentation.init(title:subtitle:image:)();
  *(v17 + 2 * v41) = 2;
  sub_100004B18();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v40)(v0, v42, v5);
  sub_100003F1C();
  sub_100005E44();
  sub_1000042D0();
  v24 = sub_100006150();
  sub_1000042A8(v24, v25, v26, v39);
  sub_100005BC0();
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  sub_100066CCC();
  *(v17 + 3 * v41) = 3;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v40)(v0, v42, v5);
  sub_100003F1C();
  sub_100005E44();
  sub_1000042D0();
  v27 = sub_100006150();
  sub_1000042A8(v27, v28, v29, v39);
  sub_100066BE8();
  sub_100005BC0();
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  sub_100066CCC();
  *(v17 + 4 * v41) = 4;
  sub_100004B18();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v40)(v0, v42, v5);
  sub_100003F1C();
  sub_100007A10();
  sub_1000042D0();
  v30 = sub_100006150();
  sub_1000042A8(v30, v31, v32, v39);
  sub_100005BC0();
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  DisplayRepresentation.init(title:subtitle:image:)();
  *(v17 + 5 * v41) = 5;
  sub_100004B18();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v40)(v0, v42, v5);
  sub_100003F1C();
  sub_100007A10();
  sub_10000955C();
  v33 = sub_1000095D8();
  sub_1000042A8(v33, v34, v35, v39);
  sub_100005BC0();
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  DisplayRepresentation.init(title:subtitle:image:)();
  *(v17 + 6 * v41) = 6;
  sub_100066BE8();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v40)(v0, v42, v5);
  sub_100003F1C();
  sub_100007A10();
  sub_10000955C();
  v36 = sub_1000095D8();
  sub_1000042A8(v36, v37, v38, v39);
  sub_100005BC0();
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  DisplayRepresentation.init(title:subtitle:image:)();
  type metadata accessor for DisplayRepresentation();
  sub_100063ECC();
  Dictionary.init(dictionaryLiteral:)();
  sub_100002EEC();
}

Shortcuts::ShortcutAttribute_optional __swiftcall ShortcutAttribute.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&off_1000F0F40, v3);
  sub_100007DC8();

  if (v1 >= 7)
  {
    return 7;
  }

  else
  {
    return v1;
  }
}

void ShortcutAttribute.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      return;
    default:
      sub_100004B18();
      break;
  }
}

Swift::Int sub_10005A1D0(char a1)
{
  Hasher.init(_seed:)();
  ShortcutAttribute.rawValue.getter(a1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10005A248()
{
  String.hash(into:)();
}

uint64_t sub_10005A2A8()
{
  String.hash(into:)();
}

Swift::Int sub_10005A3E8(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  ShortcutAttribute.rawValue.getter(a2);
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10005A448()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Shortcuts::ShortcutAttribute_optional sub_10005A4BC@<W0>(Swift::String *a1@<X0>, Shortcuts::ShortcutAttribute_optional *a2@<X8>)
{
  result.value = ShortcutAttribute.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void sub_10005A4EC(void *a1@<X8>)
{
  ShortcutAttribute.rawValue.getter(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_10005A554(uint64_t a1)
{
  v2 = sub_1000309C0();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10005A5A4(uint64_t a1)
{
  v2 = sub_1000654AC();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10005A5F0(char a1)
{
  switch(a1)
  {
    case 1:
      v18 = [v2 workflowTypes];
      v19 = sub_100005730();
      type metadata accessor for WFWorkflowTypeName(v19);
      v5 = sub_100066D28();

      sub_100066B54(WFWorkflowTypeShareSheet);
      __chkstk_darwin(v20);
      sub_100066920();
      v8 = sub_100066824;
      goto LABEL_8;
    case 2:
      v12 = [v2 workflowTypes];
      v13 = sub_100005730();
      type metadata accessor for WFWorkflowTypeName(v13);
      v5 = sub_100066D28();

      sub_100066B54(WFWorkflowTypeWatch);
      __chkstk_darwin(v14);
      sub_100066920();
      v8 = sub_100066824;
      goto LABEL_8;
    case 3:
      v15 = [v2 workflowTypes];
      v16 = sub_100005730();
      type metadata accessor for WFWorkflowTypeName(v16);
      v5 = sub_100066D28();

      sub_100066B54(WFWorkflowTypeMenuBar);
      __chkstk_darwin(v17);
      sub_100066920();
      v8 = sub_100066824;
      goto LABEL_8;
    case 4:
      v9 = [v2 workflowTypes];
      v10 = sub_100005730();
      type metadata accessor for WFWorkflowTypeName(v10);
      v5 = sub_100066D28();

      sub_100066B54(WFWorkflowTypeReceivesOnScreenContent);
      __chkstk_darwin(v11);
      sub_100066920();
      v8 = sub_100066824;
      goto LABEL_8;
    case 5:
      v21 = [v2 workflowTypes];
      v22 = sub_100005730();
      type metadata accessor for WFWorkflowTypeName(v22);
      v5 = sub_100066D28();

      sub_100066B54(WFWorkflowTypeQuickActions);
      __chkstk_darwin(v23);
      sub_100066920();
      v8 = sub_100066824;
      goto LABEL_8;
    case 6:
      v24 = [v2 disabledOnLockScreen] ^ 1;
      return v24 & 1;
    default:
      v3 = [v2 workflowTypes];
      v4 = sub_100005730();
      type metadata accessor for WFWorkflowTypeName(v4);
      v5 = sub_100066D28();

      sub_100066B54(WFWorkflowTypeReceivesInputFromSearch);
      __chkstk_darwin(v6);
      sub_100066920();
      v8 = sub_1000667B8;
LABEL_8:
      v24 = sub_10004B9C4(v8, v7, v5);

      return v24 & 1;
  }
}

void sub_10005A8E8(char a1, char a2)
{
  switch(a2)
  {
    case 1:
      v3 = &WFWorkflowTypeShareSheet;
      goto LABEL_8;
    case 2:
      v3 = &WFWorkflowTypeWatch;
      goto LABEL_8;
    case 3:
      v3 = &WFWorkflowTypeMenuBar;
      goto LABEL_8;
    case 4:
      v3 = &WFWorkflowTypeReceivesOnScreenContent;
      goto LABEL_8;
    case 5:
      v3 = &WFWorkflowTypeQuickActions;
      goto LABEL_8;
    case 6:
      [v2 setDisabledOnLockScreen:(a1 & 1) == 0];
      return;
    default:
      v3 = &WFWorkflowTypeReceivesInputFromSearch;
LABEL_8:
      sub_10005A97C(*v3, a1 & 1, v2);
      return;
  }
}

void sub_10005A97C(void *a1, char a2, id a3)
{
  v6 = [a3 workflowTypes];
  type metadata accessor for WFWorkflowTypeName(0);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100084FDC(v7);
  v9 = v8;
  sub_10002E87C(&qword_100100BC0);
  if (a2)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000C0C20;
    *(inited + 32) = a1;
    v11 = a1;
    sub_10005AAC8(inited, v9);
    v13 = v12;
  }

  else
  {
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_1000C0C20;
    *(v14 + 32) = a1;
    v15 = a1;
    v13 = sub_100062E88(v14, v9);
    swift_setDeallocating();
    sub_100069B04();
  }

  sub_10005AB58(v13);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a3 setWorkflowTypes:isa];
}

void sub_10005AAC8(uint64_t a1, void *a2)
{
  v3 = 0;
  v6[1] = a2;
  v4 = *(a1 + 16);
  while (1)
  {
    if (v4 == v3)
    {

      return;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    v5 = v3 + 1;
    sub_10008DBA8(v6, *(a1 + 8 * v3 + 32));

    v3 = v5;
  }

  __break(1u);
}

void *sub_10005AB58(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_10008D6A0(*(a1 + 16), 0);
  v4 = sub_1000480B0(&v6, v3 + 4, v2, a1);
  sub_100048024();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

void GetShortcutAttributesAction.init()()
{
  sub_1000043AC();
  type metadata accessor for InputConnectionBehavior();
  sub_100004458();
  v45 = v0;
  v46 = v1;
  __chkstk_darwin(v0);
  sub_100007944();
  sub_10000516C(v2);
  v3 = sub_10002E87C(&qword_1000FF570);
  v4 = sub_100002EE0(v3);
  __chkstk_darwin(v4);
  sub_10000F1A8();
  sub_10000667C();
  __chkstk_darwin(v5);
  sub_100005184();
  sub_10000F7E0(v6);
  v7 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v7);
  sub_100005B90();
  __chkstk_darwin(v8);
  sub_100005B00();
  type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_100004458();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000051D8();
  v12 = type metadata accessor for Locale();
  v13 = sub_100002EE0(v12);
  __chkstk_darwin(v13);
  sub_10000443C();
  v14 = type metadata accessor for String.LocalizationValue();
  v15 = sub_100002EE0(v14);
  __chkstk_darwin(v15);
  sub_1000039BC();
  sub_10000F43C();
  v43 = type metadata accessor for LocalizedStringResource();
  sub_100002F04();
  __chkstk_darwin(v16);
  sub_1000039BC();
  sub_10002E87C(&qword_1000FF5E0);
  sub_100003E9C();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17 = *(v10 + 104);
  v18 = sub_100007DA0();
  v17(v18);
  sub_100003F1C();
  sub_100002F40();
  sub_100066984();
  sub_100066C48();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19 = sub_100007DA0();
  v17(v19);
  sub_100002F40();
  sub_1000060AC();
  sub_1000042A8(v20, v21, v22, v43);
  v23 = type metadata accessor for IntentDialog();
  v24 = sub_100004770();
  sub_1000042A8(v24, v25, v26, v23);
  v27 = sub_1000095D8();
  sub_1000042A8(v27, v28, v29, v23);
  v41 = enum case for InputConnectionBehavior.default(_:);
  v42 = *(v46 + 104);
  v42();
  sub_1000309C0();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  sub_10002E87C(&qword_1000FF598);
  sub_1000060C4();
  sub_100066EB8();
  static Locale.current.getter();
  v30 = sub_100007DA0();
  v17(v30);
  sub_100002F40();
  sub_100066984();
  sub_100066C48();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v31 = sub_100007DA0();
  v17(v31);
  sub_100002F40();
  v32 = sub_1000046F0();
  sub_1000042A8(v32, v33, v34, v43);
  v35 = sub_100008330();
  sub_1000042A8(v35, v36, v37, v23);
  v38 = sub_100004770();
  sub_1000042A8(v38, v39, v40, v23);
  (v42)(v44, v41, v45);
  sub_100021C0C();
  sub_100066C30();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_100002EEC();
}

uint64_t sub_10005B0AC()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100066730(v6, static GetShortcutAttributesAction.title);
  sub_10004D458(v6, static GetShortcutAttributesAction.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_10005B308()
{
  v0 = sub_10002E87C(&qword_1000FF580);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for IntentDescription();
  sub_100066730(v10, static GetShortcutAttributesAction.description);
  sub_10004D458(v10, static GetShortcutAttributesAction.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_1000042A8(v2, 1, 1, v9);
  return IntentDescription.init(_:categoryName:searchKeywords:)();
}

uint64_t (*GetShortcutAttributesAction.attribute.modify())()
{
  v1 = sub_100011884();
  v2 = sub_10004D490(v1);
  *(v0 + 32) = sub_100066A70(v2);
  return sub_10006685C;
}

void GetShortcutAttributesAction.shortcut.setter(void *a1)
{
  v2 = a1;
  sub_100066D58();
}

uint64_t (*GetShortcutAttributesAction.shortcut.modify())()
{
  v1 = sub_10000CBF0();
  v2 = sub_10004D490(v1);
  *(v0 + 32) = sub_100066A70(v2);
  return sub_10006685C;
}

void static GetShortcutAttributesAction.parameterSummary.getter()
{
  sub_1000079FC();
  v0 = sub_10002E87C(&qword_100100658);
  sub_100002EE0(v0);
  sub_100005B90();
  __chkstk_darwin(v1);
  sub_100003BE8();
  sub_10002E87C(&qword_100100660);
  sub_100003EC8();
  sub_100005B90();
  __chkstk_darwin(v2);
  sub_100007B14();
  sub_100063F20();
  sub_100066D0C();
  v3._countAndFlagsBits = 544499015;
  v3._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10002E87C(&qword_100100670);
  sub_100066968();

  v4._countAndFlagsBits = 0x20726F6620;
  v4._object = 0xE500000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  sub_10002E87C(&qword_100100678);
  sub_100066968();

  v5._countAndFlagsBits = sub_1000669EC();
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  sub_100066938();
  sub_1000044C0();
  sub_100066A24();
  IntentParameterSummary.init(_:table:)();
  sub_1000046DC();
}

uint64_t GetShortcutAttributesAction.perform()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return sub_100005BD8(sub_10005B934);
}

uint64_t sub_10005B934()
{
  sub_100066AF0();
  sub_100002FC4(0, &qword_100100158);
  IntentParameter.wrappedValue.getter();
  v1 = [objc_opt_self() defaultDatabase];
  v2 = sub_1000095CC();
  v4 = sub_10004B834(v2, v3);
  OpenWorkflowAction.init()();
  v6 = v5;
  IntentParameter.wrappedValue.getter();
  v7 = *(v0 + 16);
  IntentParameter.wrappedValue.setter();

  IntentParameter.wrappedValue.getter();
  *(v0 + 48) = sub_10005A5F0(*(v0 + 16)) & 1;
  *(v0 + 16) = v6;
  sub_100063F74();
  sub_100063B7C();
  static IntentResult.result<A, B>(value:opensIntent:)();

  sub_100019CB0();

  return v8();
}

uint64_t sub_10005BAC4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000667E8;

  return GetShortcutAttributesAction.perform()(a1, v5, v4);
}

void sub_10005BB70(void *a1@<X8>)
{
  GetShortcutAttributesAction.init()();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10005BB98(uint64_t a1)
{
  v2 = sub_100063F20();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

void static SetShortcutAttributesAction.SetShortcutAttributesOperation.typeDisplayRepresentation.getter()
{
  sub_1000043AC();
  v1 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v1);
  sub_100005B90();
  __chkstk_darwin(v2);
  sub_100007B14();
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_100004458();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000039BC();
  sub_100017428();
  v7 = type metadata accessor for Locale();
  v8 = sub_100002EE0(v7);
  __chkstk_darwin(v8);
  sub_1000039BC();
  sub_100066994();
  v9 = type metadata accessor for String.LocalizationValue();
  v10 = sub_100002EE0(v9);
  __chkstk_darwin(v10);
  sub_1000039BC();
  sub_100066A30();
  v11 = type metadata accessor for LocalizedStringResource();
  sub_100003EC8();
  __chkstk_darwin(v12);
  sub_1000051D8();
  sub_100066A10();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v5 + 104))(v0, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  sub_100003F1C();
  sub_100007A10();
  sub_1000042D0();
  v13 = sub_100005E08();
  sub_1000042A8(v13, v14, v15, v11);
  sub_100066D88();
  TypeDisplayRepresentation.init(name:numericFormat:)();
  sub_100002EEC();
}

void static SetShortcutAttributesAction.SetShortcutAttributesOperation.caseDisplayRepresentations.getter()
{
  sub_1000043AC();
  v1 = sub_10002E87C(&qword_100100528);
  sub_100002EE0(v1);
  sub_100005B90();
  __chkstk_darwin(v2);
  sub_100005B00();
  v3 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v3);
  sub_100005B90();
  __chkstk_darwin(v4);
  sub_100005B00();
  sub_1000042F8();
  v30 = type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_10000F720();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000039BC();
  sub_100066A30();
  v8 = type metadata accessor for Locale();
  v9 = sub_100002EE0(v8);
  __chkstk_darwin(v9);
  sub_100007944();
  v10 = type metadata accessor for String.LocalizationValue();
  v11 = sub_100002EE0(v10);
  __chkstk_darwin(v11);
  sub_1000051D8();
  v33 = type metadata accessor for LocalizedStringResource();
  sub_100003EC8();
  __chkstk_darwin(v12);
  sub_100007944();
  sub_10002E87C(&qword_100100688);
  v13 = sub_10002E87C(&qword_100100690) - 8;
  v32 = *(*v13 + 72);
  v14 = (*(*v13 + 80) + 32) & ~*(*v13 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1000C0D80;
  v15 = v34 + v14;
  *(v34 + v14) = 0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v29 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v31 = *(v6 + 104);
  v31(v0);
  sub_100003F1C();
  sub_100007A10();
  sub_1000042D0();
  v16 = sub_100006150();
  sub_100033518(v16, v17, v18, v33);
  v19 = type metadata accessor for DisplayRepresentation.Image();
  v20 = sub_1000095D8();
  sub_1000042A8(v20, v21, v22, v19);
  sub_100006144();
  DisplayRepresentation.init(title:subtitle:image:)();
  *(v15 + v32) = 1;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v31)(v0, v29, v30);
  sub_100003F1C();
  sub_100007A10();
  sub_1000042D0();
  v23 = sub_100006150();
  sub_1000042A8(v23, v24, v25, v33);
  v26 = sub_1000095D8();
  sub_1000042A8(v26, v27, v28, v19);
  sub_100006144();
  DisplayRepresentation.init(title:subtitle:image:)();
  type metadata accessor for DisplayRepresentation();
  sub_100063FC8();
  Dictionary.init(dictionaryLiteral:)();
  sub_100002EEC();
}

Shortcuts::SetShortcutAttributesAction::SetShortcutAttributesOperation_optional __swiftcall SetShortcutAttributesAction.SetShortcutAttributesOperation.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&off_1000F1030, v3);
  sub_100007DC8();

  if (v1 == 1)
  {
    v4.value = Shortcuts_SetShortcutAttributesAction_SetShortcutAttributesOperation_toggle;
  }

  else
  {
    v4.value = Shortcuts_SetShortcutAttributesAction_SetShortcutAttributesOperation_unknownDefault;
  }

  if (v1)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t SetShortcutAttributesAction.SetShortcutAttributesOperation.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x656C67676F74;
  }

  else
  {
    return 1852994932;
  }
}

Shortcuts::SetShortcutAttributesAction::SetShortcutAttributesOperation_optional sub_10005C240@<W0>(Swift::String *a1@<X0>, Shortcuts::SetShortcutAttributesAction::SetShortcutAttributesOperation_optional *a2@<X8>)
{
  result.value = SetShortcutAttributesAction.SetShortcutAttributesOperation.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_10005C270@<X0>(uint64_t *a1@<X8>)
{
  result = SetShortcutAttributesAction.SetShortcutAttributesOperation.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10005C2B0(uint64_t a1)
{
  v2 = sub_100030FAC();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10005C300(uint64_t a1)
{
  v2 = sub_100065988();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

void SetShortcutAttributesAction.init()()
{
  sub_1000043AC();
  v1 = sub_10002E87C(&qword_1000FF600);
  sub_100002EE0(v1);
  sub_100005B90();
  __chkstk_darwin(v2);
  sub_100005B00();
  sub_1000042F8();
  v67 = type metadata accessor for InputConnectionBehavior();
  sub_100004458();
  v65 = v3;
  __chkstk_darwin(v4);
  sub_100007944();
  sub_10000F7E0(v5);
  v6 = sub_10002E87C(&qword_1000FF570);
  v7 = sub_100002EE0(v6);
  __chkstk_darwin(v7);
  sub_10000F1A8();
  sub_10000667C();
  __chkstk_darwin(v8);
  sub_100005184();
  v9 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v9);
  sub_100005B90();
  __chkstk_darwin(v10);
  sub_100005B00();
  v11 = type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_10000F720();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000051D8();
  v15 = type metadata accessor for Locale();
  v16 = sub_100002EE0(v15);
  __chkstk_darwin(v16);
  sub_1000039BC();
  sub_100011D5C();
  v17 = type metadata accessor for String.LocalizationValue();
  v18 = sub_100002EE0(v17);
  __chkstk_darwin(v18);
  sub_1000039BC();
  sub_10000F43C();
  v62 = type metadata accessor for LocalizedStringResource();
  sub_100002F04();
  __chkstk_darwin(v19);
  sub_1000039BC();
  sub_10002E87C(&qword_1000FF5F0);
  sub_100066A10();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v21 = *(v13 + 104);
  v60 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  (v21)(v0, enum case for LocalizedStringResource.BundleDescription.main(_:), v11);
  sub_100003F1C();
  sub_100066A64();
  sub_100019C38();
  sub_100019BFC();
  sub_1000669E0();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v21)(v0, v20, v11);
  sub_100066D7C();
  sub_100019C38();
  sub_1000060AC();
  sub_1000042A8(v22, v23, v24, v62);
  v61 = type metadata accessor for IntentDialog();
  v25 = sub_100005E08();
  sub_1000042A8(v25, v26, v27, v61);
  v28 = sub_1000095D8();
  sub_1000042A8(v28, v29, v30, v61);
  v64 = enum case for InputConnectionBehavior.default(_:);
  v63 = *(v65 + 104);
  v63();
  sub_100030FAC();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  sub_10002E87C(&qword_1000FF5E0);
  sub_100003E9C();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v21)(v0, v60, v11);
  sub_100019C38();
  sub_100066984();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v21)(v0, v60, v11);
  sub_100066A64();
  sub_100019C38();
  sub_1000060AC();
  sub_1000042A8(v31, v32, v33, v62);
  v34 = sub_100006150();
  sub_1000042A8(v34, v35, v36, v61);
  sub_100004730();
  sub_1000042A8(v37, v38, v39, v61);
  (v63)(v66, v64, v67);
  sub_1000309C0();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  sub_10002E87C(&qword_1000FF598);
  sub_1000060C4();
  sub_100066EB8();
  static Locale.current.getter();
  (v21)(v0, v60, v11);
  sub_100019C38();
  sub_100019BFC();
  sub_1000669E0();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v40 = sub_100007DA0();
  v21(v40);
  sub_100011E00();
  sub_100019C38();
  v41 = sub_1000046F0();
  sub_1000042A8(v41, v42, v43, v62);
  sub_100004730();
  sub_1000042A8(v44, v45, v46, v61);
  sub_100004730();
  sub_1000042A8(v47, v48, v49, v61);
  (v63)(v66, v64, v67);
  sub_100021C0C();
  sub_100066D70();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_10002E87C(&qword_1000FF608);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v21)(v0, v60, v11);
  sub_100066A64();
  sub_100019C38();
  sub_1000669E0();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v21)(v0, v60, v11);
  sub_100066D7C();
  sub_100019C38();
  sub_1000060AC();
  sub_1000042A8(v50, v51, v52, v62);
  type metadata accessor for Bool.IntentDisplayName();
  v53 = sub_100004770();
  sub_1000042A8(v53, v54, v55, v56);
  v57 = sub_100006150();
  sub_1000042A8(v57, v58, v59, v61);
  (v63)(v66, v64, v67);
  sub_100066B98();
  IntentParameter<>.init(title:description:default:displayName:requestValueDialog:inputConnectionBehavior:)();
  sub_100002EEC();
}

void SetShortcutAttributesAction.init(attribute:operation:state:)()
{
  sub_1000043AC();
  v1 = sub_10002E87C(&qword_1000FF600);
  sub_100002EE0(v1);
  sub_100005B90();
  __chkstk_darwin(v2);
  sub_100005B00();
  sub_1000042F8();
  type metadata accessor for InputConnectionBehavior();
  sub_100004458();
  v67 = v3;
  v68 = v4;
  __chkstk_darwin(v3);
  sub_100007944();
  sub_1000669F8(v5);
  v6 = sub_10002E87C(&qword_1000FF570);
  v7 = sub_100002EE0(v6);
  __chkstk_darwin(v7);
  sub_10000F1A8();
  sub_10000667C();
  __chkstk_darwin(v8);
  sub_100005184();
  v9 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v9);
  sub_100005B90();
  __chkstk_darwin(v10);
  sub_100005B00();
  sub_1000042F8();
  v11 = type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_100004458();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000039BC();
  sub_100011D5C();
  v15 = type metadata accessor for Locale();
  v16 = sub_100002EE0(v15);
  __chkstk_darwin(v16);
  sub_1000039BC();
  sub_100017428();
  v17 = type metadata accessor for String.LocalizationValue();
  v18 = sub_100002EE0(v17);
  __chkstk_darwin(v18);
  sub_1000039BC();
  sub_100066A30();
  v65 = type metadata accessor for LocalizedStringResource();
  sub_100002F04();
  __chkstk_darwin(v19);
  sub_1000039BC();
  sub_10002E87C(&qword_1000FF5F0);
  sub_100066A10();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v21 = *(v13 + 104);
  v22 = sub_100066B60();
  v21(v22);
  sub_100066DB8();
  sub_100066DA0();
  sub_1000668DC();
  sub_100019BFC();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v23 = sub_100066B60();
  v21(v23);
  sub_1000668DC();
  sub_1000060AC();
  sub_1000042A8(v24, v25, v26, v65);
  v63 = type metadata accessor for IntentDialog();
  sub_100004730();
  sub_1000042A8(v27, v28, v29, v63);
  v30 = sub_100005E08();
  sub_1000042A8(v30, v31, v32, v63);
  v62 = enum case for InputConnectionBehavior.default(_:);
  v64 = *(v68 + 104);
  v64();
  sub_100030FAC();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  sub_10002E87C(&qword_1000FF5E0);

  sub_100003E9C();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v21)(v0, v20, v11);
  sub_100066DA0();
  sub_1000668DC();
  sub_100004B18();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v33 = sub_100066B60();
  v21(v33);
  sub_100066DA0();
  sub_1000668DC();
  sub_1000060AC();
  sub_1000042A8(v34, v35, v36, v65);
  sub_100004730();
  sub_1000042A8(v37, v38, v39, v63);
  sub_100004730();
  sub_1000042A8(v40, v41, v42, v63);
  (v64)(v66, v62, v67);
  sub_1000309C0();
  sub_100066D94();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  sub_10002E87C(&qword_1000FF598);

  sub_1000060C4();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v21)(v0, v20, v11);
  sub_1000668DC();
  sub_100019BFC();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v21)(v0, v20, v11);
  sub_100066DA0();
  sub_1000668DC();
  sub_1000060AC();
  sub_1000042A8(v43, v44, v45, v65);
  v46 = sub_100005E08();
  sub_1000042A8(v46, v47, v48, v63);
  sub_100004730();
  sub_1000042A8(v49, v50, v51, v63);
  (v64)(v66, v62, v67);
  sub_100021C0C();
  sub_100066D70();
  sub_10000A5A0();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_10002E87C(&qword_1000FF608);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v21)(v0, v20, v11);
  sub_100066DB8();
  sub_1000668DC();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v21)(v0, v20, v11);
  sub_1000668DC();
  sub_1000060AC();
  sub_1000042A8(v52, v53, v54, v65);
  type metadata accessor for Bool.IntentDisplayName();
  v55 = sub_100004770();
  sub_1000042A8(v55, v56, v57, v58);
  v59 = sub_100006150();
  sub_1000042A8(v59, v60, v61, v63);
  (v64)(v66, v62, v67);
  sub_10000A5A0();
  sub_100066B98();
  IntentParameter<>.init(title:description:default:displayName:requestValueDialog:inputConnectionBehavior:)();

  IntentParameter.wrappedValue.setter();
  IntentParameter.wrappedValue.setter();
  IntentParameter.wrappedValue.setter();

  sub_100006144();
  sub_100002EEC();
}

uint64_t sub_10005D460()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100066730(v6, static SetShortcutAttributesAction.title);
  sub_10004D458(v6, static SetShortcutAttributesAction.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_10005D6BC()
{
  v0 = sub_10002E87C(&qword_1000FF580);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for IntentDescription();
  sub_100066730(v10, static SetShortcutAttributesAction.description);
  sub_10004D458(v10, static SetShortcutAttributesAction.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_1000042A8(v2, 1, 1, v9);
  return IntentDescription.init(_:categoryName:searchKeywords:)();
}

uint64_t (*SetShortcutAttributesAction.operation.modify())()
{
  v1 = sub_100011884();
  v2 = sub_10004D490(v1);
  *(v0 + 32) = sub_100066A70(v2);
  return sub_10006685C;
}

uint64_t (*SetShortcutAttributesAction.attribute.modify())()
{
  v1 = sub_10000CBF0();
  v2 = sub_10004D490(v1);
  *(v0 + 32) = sub_100066A70(v2);
  return sub_10006685C;
}

void SetShortcutAttributesAction.shortcut.setter(void *a1)
{
  v2 = a1;
  sub_100066D58();
}

uint64_t (*SetShortcutAttributesAction.shortcut.modify())()
{
  v1 = sub_10004D490(0x28uLL);
  *(v0 + 32) = sub_100066A70(v1);
  return sub_10006685C;
}

uint64_t (*SetShortcutAttributesAction.state.modify())()
{
  v1 = sub_10004D490(0x28uLL);
  *(v0 + 32) = sub_100066A70(v1);
  return sub_10006685C;
}

uint64_t static SetShortcutAttributesAction.parameterSummary.getter()
{
  KeyPath = swift_getKeyPath();
  v1 = sub_100006144();
  v2 = sub_10002E87C(v1);
  v3 = sub_10006401C();
  v4 = sub_10000966C(&qword_1001006B0, &qword_1001006A0);

  return ParameterSummarySwitchCondition.init(_:_:)(KeyPath, sub_10005DCF4, 0, v2, v3, v4);
}

uint64_t sub_10005DCF4@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_10002E87C(&qword_100100BC8);
  v2 = *(v1 - 8);
  v26 = v1;
  v27 = v2;
  v3 = __chkstk_darwin(v1);
  v24 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v25 = &v19 - v5;
  v6 = sub_10002E87C(&qword_100100BD0);
  v29 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v23 = &v19 - v10;
  v30 = 0;
  v11 = sub_10002E87C(&qword_100100BD8);
  v21 = sub_10006401C();
  sub_100065930();
  sub_10000966C(&qword_100100BE0, &qword_100100BD8);
  v22 = v11;
  ParameterSummaryCaseCondition.init(_:_:)();
  sub_10000966C(&qword_100100BE8, &qword_100100BD0);
  v12 = v6;
  static ParameterSummaryCaseBuilder.buildExpression<A>(_:)();
  v20 = *(v29 + 8);
  v29 += 8;
  v20(v9, v6);
  v13 = v24;
  ParameterSummaryDefaultCaseCondition.init(_:)();
  sub_10000966C(&qword_100100BF0, &qword_100100BC8);
  v14 = v25;
  v15 = v26;
  static ParameterSummaryCaseBuilder.buildExpression<A>(_:)();
  v16 = *(v27 + 8);
  v16(v13, v15);
  v17 = v23;
  static ParameterSummaryCaseBuilder.buildBlock<A, B>(_:_:)();
  v16(v14, v15);
  return (v20)(v17, v12);
}

uint64_t sub_10005E0D4@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v1 = sub_10002E87C(&qword_100100BF8);
  __chkstk_darwin(v1 - 8);
  v2 = sub_10002E87C(&qword_100100C00);
  __chkstk_darwin(v2);
  v3 = sub_10002E87C(&qword_100100BD8);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v17 - v8;
  sub_10006401C();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  sub_10002E87C(&qword_100100C08);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v11._countAndFlagsBits = 32;
  v11._object = 0xE100000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  sub_10002E87C(&qword_100100C10);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v12._countAndFlagsBits = 32;
  v12._object = 0xE100000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  sub_10002E87C(&qword_100100C20);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v13._countAndFlagsBits = 0x20726F6620;
  v13._object = 0xE500000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  sub_10002E87C(&qword_100100C18);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v14);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:)();
  sub_10000966C(&qword_100100BE0, &qword_100100BD8);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v15 = *(v4 + 8);
  v15(v7, v3);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v15)(v9, v3);
}

uint64_t sub_10005E4A0@<X0>(uint64_t *a1@<X8>)
{
  result = SetShortcutAttributesAction.$state.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10005E4CC@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v1 = sub_10002E87C(&qword_100100BF8);
  __chkstk_darwin(v1 - 8);
  v2 = sub_10002E87C(&qword_100100C00);
  __chkstk_darwin(v2);
  v3 = sub_10002E87C(&qword_100100BD8);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v16 - v8;
  sub_10006401C();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  sub_10002E87C(&qword_100100C08);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v11._countAndFlagsBits = 32;
  v11._object = 0xE100000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  sub_10002E87C(&qword_100100C10);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v12._countAndFlagsBits = 0x20726F6620;
  v12._object = 0xE500000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  sub_10002E87C(&qword_100100C18);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v13);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:)();
  sub_10000966C(&qword_100100BE0, &qword_100100BD8);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v14 = *(v4 + 8);
  v14(v7, v3);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v14)(v9, v3);
}

uint64_t SetShortcutAttributesAction.perform()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return sub_100005BD8(sub_10005E86C);
}

uint64_t sub_10005E86C()
{
  sub_100002FC4(0, &qword_100100158);
  IntentParameter.wrappedValue.getter();
  v1 = [objc_opt_self() defaultDatabase];
  v2 = sub_1000095CC();
  v4 = sub_10004B834(v2, v3);
  *(v0 + 184) = v4;
  v5 = v4;
  IntentParameter.wrappedValue.getter();
  if (*(v0 + 80))
  {
    IntentParameter.wrappedValue.getter();
    v6 = *(v0 + 80);
    v7 = (sub_10005A5F0(v6) & 1) == 0;
    v8 = v6;
  }

  else
  {
    IntentParameter.wrappedValue.getter();
    v9 = *(v0 + 80);
    IntentParameter.wrappedValue.getter();
    v7 = *(v0 + 80);
    v8 = v9;
  }

  sub_10005A8E8(v7, v8);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_10005EA90;
  v10 = swift_continuation_init();
  *(v0 + 136) = sub_10002E87C(&qword_1001006B8);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10005ECC4;
  *(v0 + 104) = &unk_1000F1E70;
  *(v0 + 112) = v10;
  [v5 saveWithCompletionBlock:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10005EA90()
{
  sub_100005BE4();
  sub_100007B24();
  sub_100041EC8();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 192) = v4;
  if (v4)
  {
    v5 = sub_10005EC5C;
  }

  else
  {
    v5 = sub_10005EB94;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10005EB94()
{
  v1 = *(v0 + 184);
  OpenWorkflowAction.init()();
  v3 = v2;
  IntentParameter.wrappedValue.getter();
  v4 = *(v0 + 80);
  IntentParameter.wrappedValue.setter();

  *(v0 + 80) = v3;
  sub_100063B7C();
  static IntentResult.result<A>(opensIntent:)();

  sub_100019CB0();

  return v5();
}

uint64_t sub_10005EC5C()
{
  sub_100004304();
  v1 = *(v0 + 184);
  swift_willThrow();

  sub_100003BDC();

  return v2();
}

uint64_t sub_10005ECC4(uint64_t a1, void *a2)
{
  v3 = *sub_100041C04((a1 + 32), *(a1 + 56));
  if (a2)
  {
    return sub_100057278(v3, a2);
  }

  return j__swift_continuation_throwingResume();
}

uint64_t sub_10005ED44(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000667E8;

  return SetShortcutAttributesAction.perform()(a1, v4, v5, v7, v6);
}

void sub_10005EE04(void *a1@<X8>)
{
  SetShortcutAttributesAction.init()();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_10005EE30(uint64_t a1)
{
  v2 = sub_10006401C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

void CreateShortcutiCloudLinkAction.init()()
{
  sub_1000043AC();
  type metadata accessor for InputConnectionBehavior();
  sub_100004458();
  __chkstk_darwin(v0);
  sub_100007944();
  sub_10000516C(v1);
  v2 = sub_10002E87C(&qword_1000FF570);
  v3 = sub_100002EE0(v2);
  __chkstk_darwin(v3);
  sub_10000F1A8();
  sub_10000667C();
  v5 = __chkstk_darwin(v4);
  sub_10000E8B0(v5, v6, v7, v8, v9, v10, v11, v12, v39);
  v13 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v13);
  sub_100005B90();
  __chkstk_darwin(v14);
  sub_100005AEC(v15, v40);
  type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_100004458();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_10001C6E4();
  v19 = type metadata accessor for Locale();
  v20 = sub_100002EE0(v19);
  __chkstk_darwin(v20);
  sub_10000443C();
  v21 = type metadata accessor for String.LocalizationValue();
  v22 = sub_100002EE0(v21);
  __chkstk_darwin(v22);
  sub_1000039BC();
  sub_100066958();
  type metadata accessor for LocalizedStringResource();
  sub_100003EC8();
  __chkstk_darwin(v23);
  sub_1000051D8();
  sub_10002E87C(&qword_1000FF598);
  sub_1000060C4();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24 = *(v17 + 104);
  v25 = sub_1000334F4();
  v24(v25);
  sub_100005B78();
  sub_10000F6AC();
  sub_100004B18();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v26 = sub_1000334F4();
  v24(v26);
  sub_10000F6AC();
  v27 = sub_1000046F0();
  v30 = sub_100066B08(v27, v28, v29);
  v31 = sub_100008330();
  sub_1000042A8(v31, v32, v33, v30);
  v34 = sub_100005E08();
  sub_1000042A8(v34, v35, v36, v30);
  v37 = sub_10000A5AC();
  v38(v37);
  sub_100021C0C();
  sub_100066C30();
  sub_10000B0B8();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_100002EEC();
}

uint64_t sub_10005F174()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100066730(v6, static CreateShortcutiCloudLinkAction.title);
  sub_10004D458(v6, static CreateShortcutiCloudLinkAction.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t static CreateShortcutiCloudLinkAction.title.modify()
{
  if (qword_1000FF530 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();
  sub_1000056FC(v0, static CreateShortcutiCloudLinkAction.title);
  return sub_1000669B0();
}

uint64_t sub_10005F484()
{
  v0 = sub_10002E87C(&qword_1000FF580);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for IntentDescription();
  sub_100066730(v10, static CreateShortcutiCloudLinkAction.description);
  sub_10004D458(v10, static CreateShortcutiCloudLinkAction.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_1000042A8(v2, 1, 1, v9);
  return IntentDescription.init(_:categoryName:searchKeywords:)();
}

uint64_t (*CreateShortcutiCloudLinkAction.shortcut.modify())()
{
  v1 = sub_100011884();
  v2 = sub_10004D490(v1);
  *(v0 + 32) = sub_100066A70(v2);
  return sub_10006685C;
}

void static CreateShortcutiCloudLinkAction.parameterSummary.getter()
{
  sub_1000079FC();
  v0 = sub_10002E87C(&qword_1001006C0);
  sub_100002EE0(v0);
  sub_100005B90();
  __chkstk_darwin(v1);
  sub_100003BE8();
  sub_10002E87C(&qword_1001006C8);
  sub_100003EC8();
  sub_100005B90();
  __chkstk_darwin(v2);
  sub_100007B14();
  sub_100064070();
  sub_100066B38();
  sub_100004B18();
  v3._countAndFlagsBits = sub_100066C48();
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10002E87C(&qword_1001006D8);
  sub_100066968();

  v4._countAndFlagsBits = sub_1000669EC();
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  sub_100066938();
  sub_1000044C0();
  sub_100066A24();
  IntentParameterSummary.init(_:table:)();
  sub_1000046DC();
}

uint64_t CreateShortcutiCloudLinkAction.perform()()
{
  sub_100005BE4();
  v0[19] = v1;
  v0[20] = v2;
  v3 = type metadata accessor for URL();
  v0[21] = v3;
  sub_10000A804(v3);
  v0[22] = v4;
  v0[23] = sub_100066B80();
  v0[24] = swift_task_alloc();
  v5 = sub_100011E0C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10005F9DC()
{
  sub_100066AF0();
  v1 = [objc_allocWithZone(WFWorkflowPrepareForSharingOptions) init];
  v0[25] = v1;
  sub_100002FC4(0, &qword_100100158);
  IntentParameter.wrappedValue.getter();
  v2 = [objc_opt_self() defaultDatabase];
  v3 = sub_1000095CC();
  v5 = sub_10004B834(v3, v4);
  v0[26] = v5;
  v6 = v5;
  v7 = [v5 prepareForSharingWithOptions:v1];
  v0[27] = v7;
  v8 = [objc_opt_self() sharedManager];
  v0[28] = v8;
  sub_1000638E8(v6);
  if (!v9)
  {
    v10 = [objc_opt_self() defaultName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v11 = v0[23];
  v12 = String._bridgeToObjectiveC()();
  v0[29] = v12;

  v0[2] = v0;
  v0[7] = v11;
  v0[3] = sub_10005FC9C;
  v13 = swift_continuation_init();
  v0[17] = sub_10002E87C(&qword_1001006E0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10005FF70;
  v0[13] = &unk_1000F1E98;
  v0[14] = v13;
  [v8 uploadWorkflow:v7 withName:v12 shortDescription:0 longDescription:0 private:1 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10005FC9C()
{
  sub_100005BE4();
  sub_100007B24();
  sub_100041EC8();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 240) = v4;
  if (v4)
  {
    v5 = sub_10005FECC;
  }

  else
  {
    v5 = sub_10005FDA0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10005FDA0()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[26];
  v4 = v0[27];
  v11 = v0[25];
  v5 = sub_100005BCC();
  v6(v5);

  sub_100015BD0(&qword_1001006E8, &type metadata accessor for URL);
  sub_1000042EC();
  static IntentResult.result<A>(value:)();

  v7 = sub_1000042EC();
  v8(v7);

  sub_100019CB0();

  return v9();
}

uint64_t sub_10005FECC()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  swift_willThrow();

  sub_100003BDC();

  return v5();
}

uint64_t sub_10005FF70(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for URL();
  __chkstk_darwin(v5 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *sub_100041C04((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_100057278(v8, a3);
  }

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_100057300(v8, v7);
}

uint64_t sub_100060058()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000667E8;

  return CreateShortcutiCloudLinkAction.perform()();
}

uint64_t sub_100060120(uint64_t a1)
{
  v2 = sub_100064070();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

void DeleteWorkflowAction.init()()
{
  sub_1000043AC();
  type metadata accessor for InputConnectionBehavior();
  sub_100004458();
  __chkstk_darwin(v1);
  sub_100007944();
  sub_10000516C(v2);
  v3 = sub_10002E87C(&qword_1000FF570);
  v4 = sub_100002EE0(v3);
  __chkstk_darwin(v4);
  sub_10000F1A8();
  sub_10000667C();
  __chkstk_darwin(v5);
  v6 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v6);
  sub_100005B90();
  __chkstk_darwin(v7);
  sub_100066994();
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_100004458();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_10001C6E4();
  v12 = type metadata accessor for Locale();
  v13 = sub_100002EE0(v12);
  __chkstk_darwin(v13);
  sub_10000443C();
  v14 = type metadata accessor for String.LocalizationValue();
  v15 = sub_100002EE0(v14);
  __chkstk_darwin(v15);
  sub_10001C794();
  type metadata accessor for LocalizedStringResource();
  sub_100003EC8();
  __chkstk_darwin(v16);
  sub_1000051D8();
  sub_10002E87C(&qword_1000FF5B8);
  sub_1000060C4();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v10 + 104))(v0, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  sub_100003F1C();
  sub_100007A10();
  sub_1000042D0();
  sub_100004730();
  v20 = sub_100066B08(v17, v18, v19);
  v21 = sub_100006150();
  sub_1000042A8(v21, v22, v23, v20);
  v24 = sub_100005E08();
  sub_1000042A8(v24, v25, v26, v20);
  v27 = sub_10000A5AC();
  v28(v27);
  sub_100021C0C();
  sub_100066C30();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_100002EEC();
}

uint64_t sub_100060450()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100066730(v6, static DeleteWorkflowAction.title);
  sub_10004D458(v6, static DeleteWorkflowAction.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t static DeleteWorkflowAction.title.modify()
{
  if (qword_1000FF540 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();
  sub_1000056FC(v0, static DeleteWorkflowAction.title);
  return sub_1000669B0();
}

uint64_t sub_100060760()
{
  v0 = sub_10002E87C(&qword_1000FF580);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for IntentDescription();
  sub_100066730(v10, static DeleteWorkflowAction.description);
  sub_10004D458(v10, static DeleteWorkflowAction.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_1000042A8(v2, 1, 1, v9);
  return IntentDescription.init(_:categoryName:searchKeywords:)();
}

uint64_t (*DeleteWorkflowAction.entities.modify())()
{
  v1 = sub_100011884();
  v2 = sub_10004D490(v1);
  *(v0 + 32) = sub_100066A70(v2);
  return sub_10006685C;
}

uint64_t DeleteWorkflowAction.perform()()
{
  sub_100004304();
  v0[3] = v1;
  v0[4] = v2;
  type metadata accessor for MainActor();
  sub_1000669A4();
  v0[5] = static MainActor.shared.getter();
  sub_100007DC8();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100060B98, v4, v3);
}

uint64_t sub_100060B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100066AB8();
  sub_100066C60();

  IntentParameter.wrappedValue.getter();
  v15 = 0;
  v16 = *(v14 + 16);
  v17 = *(v16 + 16);
  while (1)
  {
    if (v17 == v15)
    {

      static IntentResult.result<>()();
      sub_100007084();
      goto LABEL_8;
    }

    if (v15 >= *(v16 + 16))
    {
      __break(1u);
    }

    v18 = *(v16 + 8 * v15 + 32);
    v19 = objc_opt_self();
    v20 = v18;
    v21 = [v19 defaultDatabase];
    *(v14 + 16) = 0;
    v22 = [v21 deleteReference:v20 error:v14 + 16];

    v23 = *(v14 + 16);
    if (!v22)
    {
      break;
    }

    ++v15;
  }

  v24 = v23;

  _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_100007084();
LABEL_8:
  sub_100066AD4();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100060D50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000667E8;

  return DeleteWorkflowAction.perform()();
}

uint64_t sub_100060E18(uint64_t a1)
{
  v2 = sub_100065D18();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

void SearchShortcutsAction.init()()
{
  sub_1000043AC();
  v0 = sub_10002E87C(&qword_1000FF578);
  sub_100002EE0(v0);
  sub_100005B90();
  __chkstk_darwin(v1);
  sub_100005B00();
  sub_1000042F8();
  type metadata accessor for InputConnectionBehavior();
  sub_100004458();
  v54 = v2;
  v55 = v3;
  __chkstk_darwin(v2);
  sub_100007944();
  v53 = v4;
  v5 = sub_10002E87C(&qword_1000FF570);
  v6 = sub_100002EE0(v5);
  __chkstk_darwin(v6);
  sub_10000F1A8();
  sub_10000667C();
  __chkstk_darwin(v7);
  sub_100005184();
  v8 = sub_10002E87C(&qword_1000FF5A8);
  sub_100002EE0(v8);
  sub_100005B90();
  __chkstk_darwin(v9);
  sub_100005B00();
  v10 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v10);
  sub_100005B90();
  __chkstk_darwin(v11);
  sub_100005B00();
  type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_100004458();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000039BC();
  sub_100066958();
  v15 = type metadata accessor for Locale();
  v16 = sub_100002EE0(v15);
  __chkstk_darwin(v16);
  sub_1000039BC();
  sub_100011D5C();
  v17 = type metadata accessor for String.LocalizationValue();
  v18 = sub_100002EE0(v17);
  __chkstk_darwin(v18);
  sub_1000039BC();
  sub_100066994();
  v52 = type metadata accessor for LocalizedStringResource();
  sub_100003EC8();
  __chkstk_darwin(v19);
  sub_10001C794();
  sub_10002E87C(&qword_1000FF5C8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20 = *(v13 + 104);
  v21 = sub_100066DAC();
  v20(v21);
  sub_100003F1C();
  sub_10000B0F4();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v22 = sub_100066DAC();
  v20(v22);
  sub_10000B0F4();
  sub_1000060AC();
  sub_100033518(v23, v24, v25, v52);
  type metadata accessor for String.IntentInputOptions();
  v26 = sub_100008330();
  sub_100033518(v26, v27, v28, v29);
  v49 = type metadata accessor for IntentDialog();
  sub_100004730();
  sub_1000042A8(v30, v31, v32, v33);
  v50 = enum case for InputConnectionBehavior.default(_:);
  v51 = *(v55 + 104);
  v51(v53);
  IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  sub_10002E87C(&qword_1000FF588);
  sub_100066BC8();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v34 = sub_100066DAC();
  v20(v34);
  sub_10000B0F4();
  sub_100004B18();
  sub_100066C48();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v35 = sub_100066DAC();
  v20(v35);
  sub_100011DAC();
  sub_10000B0F4();
  v36 = sub_1000046F0();
  sub_100033518(v36, v37, v38, v52);
  type metadata accessor for NavigationDestinationEntity();
  v39 = sub_100004770();
  sub_1000042A8(v39, v40, v41, v42);
  v43 = sub_1000095D8();
  sub_1000042A8(v43, v44, v45, v49);
  v46 = sub_100008330();
  sub_1000042A8(v46, v47, v48, v49);
  (v51)(v53, v50, v54);
  sub_10002F79C();
  IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)();
  sub_100002EEC();
}

uint64_t sub_1000613BC()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100066730(v6, static SearchShortcutsAction.title);
  sub_10004D458(v6, static SearchShortcutsAction.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_100061618()
{
  sub_100066C6C();
  if (!v2)
  {
    swift_once();
  }

  v3 = v1(0);
  sub_10004D458(v3, v0);
  sub_100005BC0();
  swift_beginAccess();
  sub_100002F04();
  v4 = sub_100005BCC();
  return v5(v4);
}

uint64_t sub_1000616E4(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v7 = a3(0);
  v8 = sub_10004D458(v7, a4);
  swift_beginAccess();
  (*(*(v7 - 8) + 24))(v8, a1, v7);
  swift_endAccess();
  v9 = sub_1000042EC();
  return v10(v9);
}

uint64_t static SearchShortcutsAction.title.modify()
{
  if (qword_1000FF550 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();
  sub_1000056FC(v0, static SearchShortcutsAction.title);
  return sub_1000669B0();
}

uint64_t sub_100061848()
{
  v0 = sub_10002E87C(&qword_1000FF580);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for IntentDescription();
  sub_100066730(v10, static SearchShortcutsAction.description);
  sub_10004D458(v10, static SearchShortcutsAction.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_1000042A8(v2, 1, 1, v9);
  return IntentDescription.init(_:categoryName:searchKeywords:)();
}

uint64_t sub_100061B38(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = a2(0);

  return sub_10004D458(v5, a3);
}

uint64_t sub_100061BCC()
{
  sub_100066C6C();
  if (!v3)
  {
    swift_once();
  }

  v4 = v2(0);
  sub_10004D458(v4, v1);
  sub_100002F04();
  v6 = *(v5 + 16);

  return v6(v0);
}

uint64_t (*SearchShortcutsAction.searchPhrase.modify())()
{
  v1 = sub_100011884();
  v2 = sub_10004D490(v1);
  *(v0 + 32) = sub_100066A70(v2);
  return sub_10006685C;
}

uint64_t sub_100061CD0()
{
  sub_100005730();
  v1 = type metadata accessor for NavigationDestinationEntity();
  v2 = sub_100002EE0(v1);
  __chkstk_darwin(v2);
  sub_1000039BC();
  v3 = sub_1000042EC();
  sub_10004D580(v3, v4);
  IntentParameter.wrappedValue.setter();
  return sub_1000639A4(v0);
}

uint64_t (*SearchShortcutsAction.folder.modify())()
{
  v1 = sub_10000CBF0();
  v2 = sub_10004D490(v1);
  *(v0 + 32) = sub_100066A70(v2);
  return sub_10006685C;
}

void static SearchShortcutsAction.parameterSummary.getter()
{
  sub_1000079FC();
  v0 = sub_10002E87C(&qword_1001006F0);
  sub_100002EE0(v0);
  sub_100005B90();
  __chkstk_darwin(v1);
  sub_100003BE8();
  sub_10002E87C(&qword_1001006F8);
  sub_100003EC8();
  sub_100005B90();
  __chkstk_darwin(v2);
  sub_100007B14();
  sub_1000640C4();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._countAndFlagsBits = 0x20686372616553;
  v3._object = 0xE700000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10002E87C(&qword_100100708);
  sub_100007DBC();
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0x726F6853206E6920;
  v4._object = 0xED00007374756374;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  sub_100066E50();
  sub_1000044C0();
  IntentParameterSummary.init(_:table:_:)();
  sub_1000046DC();
}

uint64_t sub_100061F1C()
{
  swift_getKeyPath();
  sub_1000640C4();
  v0 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  sub_10002E87C(&qword_1001000E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000C0DB0;
  *(v1 + 32) = v0;

  v2 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildBlock(_:)();

  return v2;
}

uint64_t SearchShortcutsAction.perform()()
{
  sub_100005BE4();
  v0[5] = v1;
  v0[6] = v2;
  v0[4] = v3;
  v4 = sub_10002E87C(&qword_1000FFFC0);
  sub_100002EE0(v4);
  v0[7] = sub_100066AA0();
  v5 = type metadata accessor for RootNavigationContext.TransitionType();
  v0[8] = v5;
  sub_10000A804(v5);
  v0[9] = v6;
  v0[10] = sub_100066AA0();
  v7 = type metadata accessor for RootNavigationContext();
  v0[11] = v7;
  sub_10000A804(v7);
  v0[12] = v8;
  v0[13] = sub_100066AA0();
  v0[14] = type metadata accessor for MainActor();
  v0[15] = static MainActor.shared.getter();
  sub_100007DC8();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[16] = v10;
  v0[17] = v9;

  return _swift_task_switch(sub_100062134, v10, v9);
}

uint64_t sub_100062134()
{
  sub_100066AF0();
  v1 = sub_10004BB2C();
  *(v0 + 144) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 104);
    v12 = *(v0 + 40);
    (*(*(v0 + 72) + 104))(*(v0 + 80), enum case for RootNavigationContext.TransitionType.pushAndReplace(_:), *(v0 + 64));
    type metadata accessor for RootPPTTestCase();
    v4 = sub_1000095D8();
    sub_1000042A8(v4, v5, v6, v7);
    sub_100004730();
    RootNavigationContext.init(dismissOccludingViewController:clearSearchState:animateTransition:createAutomation:transitionType:pptTest:)();
    *(v0 + 152) = static MainActor.shared.getter();
    v8 = swift_task_alloc();
    *(v0 + 160) = v8;
    *(v8 + 16) = v2;
    *(v8 + 24) = v12;
    *(v8 + 40) = v3;
    v9 = swift_task_alloc();
    *(v0 + 168) = v9;
    *v9 = v0;
    v9[1] = sub_100062320;

    return withCheckedContinuation<A>(isolation:function:_:)();
  }

  else
  {

    static IntentResult.result<>()();

    sub_100019CB0();

    return v10();
  }
}

uint64_t sub_100062320()
{
  sub_100004304();
  v1 = *v0;
  v2 = *v0;
  sub_100005224();
  *v3 = v2;

  v4 = *(v1 + 136);
  v5 = *(v1 + 128);

  return _swift_task_switch(sub_100062474, v5, v4);
}

uint64_t sub_100062474()
{
  sub_100004304();

  if (sub_10004BB2C())
  {
    sub_1000669A4();
    v2 = sub_100034958();
    if (v2)
    {
      v3 = v2;
      v4 = sub_10000C560();
      if (v4)
      {
        v5 = v4;
        v6 = [v0 presentedViewController];
        if (v6)
        {
          v7 = v6;
          objc_opt_self();
          sub_1000095CC();
          v8 = swift_dynamicCastObjCClass();
          if (v8)
          {
            [v8 dismissViewControllerAnimated:0 completion:0];
          }
        }

        v9 = sub_100003E90();
        [v9 v10];
        IntentParameter.wrappedValue.getter();
        sub_100006018(v1[2], v1[3], v5, &selRef_setText_);
        v11 = sub_100003E90();
        [v11 v12];
      }
    }
  }

  v13 = v1[18];
  static IntentResult.result<>()();

  v14 = sub_100066BF8();
  v15(v14);

  sub_100019CB0();

  return v16();
}

uint64_t sub_1000625E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10002E87C(&qword_100100BB8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - v9;
  v11 = sub_10002E87C(&qword_100100020);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = type metadata accessor for NavigationDestinationEntity();
  __chkstk_darwin(v14 - 8);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  IntentParameter.wrappedValue.getter();
  v17 = type metadata accessor for RootNavigationContext();
  (*(*(v17 - 8) + 16))(v13, a5, v17);
  sub_1000042A8(v13, 0, 1, v17);
  (*(v8 + 16))(v10, a1, v7);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  (*(v8 + 32))(v19 + v18, v10, v7);
  type metadata accessor for MainViewController(0);
  sub_100015BD0(&qword_100100000, type metadata accessor for MainViewController);
  RootView.navigate(to:with:completion:)();

  sub_1000069B0(v13, &qword_100100020);
  v20 = type metadata accessor for RootNavigationDestination();
  return (*(*(v20 - 8) + 8))(v16, v20);
}

uint64_t (*sub_100062904(void *a1))()
{
  v2 = sub_10004D490(0x28uLL);
  *a1 = v2;
  v2[4] = IntentParameter.wrappedValue.modify();
  return sub_100062964;
}

void sub_100062968(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1000629E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000510B8;

  return SearchShortcutsAction.perform()();
}

void sub_100062A90(void *a1@<X8>)
{
  SearchShortcutsAction.init()();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100062AB8(uint64_t a1)
{
  v2 = sub_1000640C4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

id sub_100062AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v7 = v6;
  v12 = String._bridgeToObjectiveC()();

  if (a3)
  {
    v13.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v13.super.isa = 0;
  }

  v14 = type metadata accessor for URL();
  v16 = 0;
  if (sub_10000AB80(a4, 1, v14) != 1)
  {
    URL._bridgeToObjectiveC()(v15);
    v16 = v17;
    (*(*(v14 - 8) + 8))(a4, v14);
  }

  v18 = [v7 initWithBundleIdentifier:v12 options:v13.super.isa URL:v16 userActivity:a5 retainsSiri:a6 & 1];

  return v18;
}

uint64_t sub_100062C28(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return result;
}

void sub_100062C54(uint64_t a1)
{
  v2 = (*v1)[3];
  if (a1 + 1 > (v2 >> 1))
  {
    sub_10008D124(v2 > 1, a1 + 1, 1, *v1);
    *v1 = v3;
  }
}

unint64_t sub_100062C94(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_100062CB4(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100062DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_100062DFC()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

_BYTE *sub_100062E88(uint64_t a1, void *a2)
{
  v2 = a2;
  if (a2[2])
  {
    v3 = a1;
    v52[0] = a1;
    v4 = *(a1 + 16);
    v47 = a1 + 32;
    v51 = a2 + 7;

    v5 = 0;
    v49 = v4;
LABEL_3:
    if (v5 == v4)
    {
      goto LABEL_37;
    }

    v6 = *(v47 + 8 * v5);
    v48 = v5 + 1;
    v52[1] = v5 + 1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    v50 = v6;
    String.hash(into:)();
    v7 = Hasher._finalize()();

    v8 = ~(-1 << v2[32]);
    while (1)
    {
      v9 = v7 & v8;
      v10 = v9 >> 6;
      v11 = 1 << v9;
      if (((1 << v9) & v51[v9 >> 6]) == 0)
      {

        v5 = v48;
        v4 = v49;
        goto LABEL_3;
      }

      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
      if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
      {

        goto LABEL_16;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        break;
      }

      v7 = v9 + 1;
    }

LABEL_16:
    v19 = v2[32];
    v41 = ((1 << v19) + 63) >> 6;
    v20 = 8 * v41;
    if ((v19 & 0x3Fu) > 0xD)
    {
LABEL_41:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        goto LABEL_44;
      }
    }

    v42 = &v40;
    __chkstk_darwin(v18);
    v9 = &v40 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v9, v51, v20);
    v21 = *(v9 + 8 * v10) & ~v11;
    v44 = v9;
    v45 = v3;
    *(v9 + 8 * v10) = v21;
    v22 = *(v2 + 2) - 1;
    v46 = *(v3 + 16);
    v11 = 1;
    v23 = v48;
    v24 = v48;
    while (2)
    {
      v43 = v22;
      v48 = v23;
      do
      {
LABEL_19:
        if (v24 == v46)
        {
          v2 = sub_100063630(v44, v41, v43, v2);
          goto LABEL_37;
        }

        if ((v23 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if (v24 >= *(v3 + 16))
        {
          goto LABEL_40;
        }

        v25 = *(v47 + 8 * v24);
        v50 = (v24 + 1);
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v26;
        Hasher.init(_seed:)();
        v49 = v25;
        String.hash(into:)();
        v9 = Hasher._finalize()();

        v20 = ~(-1 << v2[32]);
        while (1)
        {
          v27 = v9 & v20;
          v28 = (v9 & v20) >> 6;
          v29 = 1 << (v9 & v20);
          if ((v29 & v51[v28]) == 0)
          {

            v3 = v45;
            v23 = v48;
            v24 = v50;
            goto LABEL_19;
          }

          v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v10 = v31;
          v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v9 = v33;
          if (v30 == v32 && v10 == v33)
          {
            break;
          }

          v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v9 = v27 + 1;
          if (v35)
          {

            goto LABEL_32;
          }
        }

LABEL_32:
        v3 = v45;
        v36 = v44[v28];
        v44[v28] = v36 & ~v29;
        v23 = v48;
        v24 = v50;
      }

      while ((v36 & v29) == 0);
      v22 = v43 - 1;
      if (!__OFSUB__(v43, 1))
      {
        v23 = v50;
        if (v43 != 1)
        {
          continue;
        }

        v2 = &_swiftEmptySetSingleton;
LABEL_37:

        return v2;
      }

      break;
    }

    __break(1u);
LABEL_44:
    v38 = swift_slowAlloc();
    v39 = sub_1000635A8(v38, v41, v51, v41, v2, v9, v52);

    return v39;
  }

  return &_swiftEmptySetSingleton;
}

void sub_100063394(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v28 = a3 + 56;
  v26 = a5;
  while (2)
  {
    v24 = v7;
    do
    {
LABEL_3:
      v8 = a5[1];
      v9 = *(*a5 + 16);
      if (v8 == v9)
      {

        sub_100063630(a1, a2, v24, a3);
        return;
      }

      if (v8 >= v9)
      {
        __break(1u);
        goto LABEL_21;
      }

      v10 = *(*a5 + 8 * v8 + 32);
      a5[1] = v8 + 1;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v10;
      String.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = ~(-1 << *(a3 + 32));
      while (1)
      {
        v13 = v11 & v12;
        v14 = (v11 & v12) >> 6;
        v15 = 1 << (v11 & v12);
        if ((v15 & *(v28 + 8 * v14)) == 0)
        {

          a5 = v26;
          goto LABEL_3;
        }

        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {
          break;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v11 = v13 + 1;
        if (v21)
        {

          goto LABEL_15;
        }
      }

LABEL_15:
      a5 = v26;
      v22 = a1[v14];
      a1[v14] = v22 & ~v15;
    }

    while ((v22 & v15) == 0);
    v7 = v24 - 1;
    if (__OFSUB__(v24, 1))
    {
LABEL_21:
      __break(1u);
      return;
    }

    if (v24 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1000635A8(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_100063394(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_100063630(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_10002E87C(&unk_100101F60);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v28 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v29 = (v10 - 1) & v10;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    v17 = v16;
    String.hash(into:)();
    v18 = Hasher._finalize()();

    v19 = -1 << v9[32];
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 6) + 8 * v22) = v17;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v28;
    v10 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v29 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100063878(void *a1)
{
  v2 = [a1 PNGRepresentation];

  if (!v2)
  {
    return 0;
  }

  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000638E8(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000639A4(uint64_t a1)
{
  v2 = type metadata accessor for NavigationDestinationEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100063A00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationDestinationEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100063A64(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100063A78(a1, a2);
  }

  return a1;
}

uint64_t sub_100063A78(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100063AD0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_100063B28()
{
  result = qword_100100540;
  if (!qword_100100540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100540);
  }

  return result;
}

unint64_t sub_100063B7C()
{
  result = qword_100100558;
  if (!qword_100100558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100558);
  }

  return result;
}

unint64_t sub_100063BD0()
{
  result = qword_100100570;
  if (!qword_100100570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100570);
  }

  return result;
}

unint64_t sub_100063C24()
{
  result = qword_100100588;
  if (!qword_100100588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100588);
  }

  return result;
}

unint64_t sub_100063C78()
{
  result = qword_1001005A0;
  if (!qword_1001005A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001005A0);
  }

  return result;
}

unint64_t sub_100063CCC()
{
  result = qword_1001005B8;
  if (!qword_1001005B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001005B8);
  }

  return result;
}

unint64_t sub_100063D20()
{
  result = qword_1001005D0;
  if (!qword_1001005D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001005D0);
  }

  return result;
}

uint64_t sub_100063D74(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_10002E87C(a3);
  sub_100003EC8();
  v4 = sub_100005BCC();
  v5(v4);
  return a2;
}

unint64_t sub_100063DD0()
{
  result = qword_1001005E8;
  if (!qword_1001005E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001005E8);
  }

  return result;
}

unint64_t sub_100063E24()
{
  result = qword_100100608;
  if (!qword_100100608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100608);
  }

  return result;
}

unint64_t sub_100063E78()
{
  result = qword_100100630;
  if (!qword_100100630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100630);
  }

  return result;
}

unint64_t sub_100063ECC()
{
  result = qword_100100650;
  if (!qword_100100650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100650);
  }

  return result;
}

unint64_t sub_100063F20()
{
  result = qword_100100668;
  if (!qword_100100668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100668);
  }

  return result;
}

unint64_t sub_100063F74()
{
  result = qword_100100680;
  if (!qword_100100680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100680);
  }

  return result;
}

unint64_t sub_100063FC8()
{
  result = qword_100100698;
  if (!qword_100100698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100698);
  }

  return result;
}

unint64_t sub_10006401C()
{
  result = qword_1001006A8;
  if (!qword_1001006A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001006A8);
  }

  return result;
}

unint64_t sub_100064070()
{
  result = qword_1001006D0;
  if (!qword_1001006D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001006D0);
  }

  return result;
}

unint64_t sub_1000640C4()
{
  result = qword_100100700;
  if (!qword_100100700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100700);
  }

  return result;
}

unint64_t sub_100064124()
{
  result = qword_100100710;
  if (!qword_100100710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100710);
  }

  return result;
}

unint64_t sub_10006417C()
{
  result = qword_100100718;
  if (!qword_100100718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100718);
  }

  return result;
}

unint64_t sub_1000641D4()
{
  result = qword_100100720;
  if (!qword_100100720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100720);
  }

  return result;
}

unint64_t sub_10006422C()
{
  result = qword_100100728;
  if (!qword_100100728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100728);
  }

  return result;
}

unint64_t sub_100064280()
{
  result = qword_100100730;
  if (!qword_100100730)
  {
    sub_100041CB4(&qword_100100738);
    sub_100015BD0(&qword_100100580, type metadata accessor for NavigationDestinationEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100730);
  }

  return result;
}

unint64_t sub_10006433C()
{
  result = qword_100100740;
  if (!qword_100100740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100740);
  }

  return result;
}

unint64_t sub_100064394()
{
  result = qword_100100748;
  if (!qword_100100748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100748);
  }

  return result;
}

unint64_t sub_1000643EC()
{
  result = qword_100100750;
  if (!qword_100100750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100750);
  }

  return result;
}

unint64_t sub_1000645F0()
{
  result = qword_1001007A0;
  if (!qword_1001007A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001007A0);
  }

  return result;
}

unint64_t sub_10006464C()
{
  result = qword_1001007A8;
  if (!qword_1001007A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001007A8);
  }

  return result;
}

unint64_t sub_1000646A4()
{
  result = qword_1001007B0;
  if (!qword_1001007B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001007B0);
  }

  return result;
}

unint64_t sub_100064740()
{
  result = qword_1001007B8;
  if (!qword_1001007B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001007B8);
  }

  return result;
}

unint64_t sub_100064798()
{
  result = qword_1001007C0;
  if (!qword_1001007C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001007C0);
  }

  return result;
}

unint64_t sub_1000647F0()
{
  result = qword_1001007C8;
  if (!qword_1001007C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001007C8);
  }

  return result;
}

unint64_t sub_100064848()
{
  result = qword_1001007D0;
  if (!qword_1001007D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001007D0);
  }

  return result;
}

unint64_t sub_1000648A0()
{
  result = qword_1001007D8;
  if (!qword_1001007D8)
  {
    sub_100041CB4(&qword_1001007E0);
    sub_100021754();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001007D8);
  }

  return result;
}

unint64_t sub_10006496C()
{
  result = qword_100100830;
  if (!qword_100100830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100830);
  }

  return result;
}

unint64_t sub_1000649C8()
{
  result = qword_100100838;
  if (!qword_100100838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100838);
  }

  return result;
}

unint64_t sub_100064A20()
{
  result = qword_100100840;
  if (!qword_100100840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100840);
  }

  return result;
}

unint64_t sub_100064AC0()
{
  result = qword_100100848;
  if (!qword_100100848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100848);
  }

  return result;
}

unint64_t sub_100064B1C()
{
  result = qword_100100850;
  if (!qword_100100850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100850);
  }

  return result;
}

unint64_t sub_100064B74()
{
  result = qword_100100858;
  if (!qword_100100858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100858);
  }

  return result;
}

unint64_t sub_100064C1C()
{
  result = qword_100100860;
  if (!qword_100100860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100860);
  }

  return result;
}

unint64_t sub_100064C78()
{
  result = qword_100100868;
  if (!qword_100100868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100868);
  }

  return result;
}

unint64_t sub_100064CD0()
{
  result = qword_100100870;
  if (!qword_100100870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100870);
  }

  return result;
}

unint64_t sub_100064D78()
{
  result = qword_100100878;
  if (!qword_100100878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100878);
  }

  return result;
}

unint64_t sub_100064DD4()
{
  result = qword_100100880;
  if (!qword_100100880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100880);
  }

  return result;
}

unint64_t sub_100064E2C()
{
  result = qword_100100888;
  if (!qword_100100888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100888);
  }

  return result;
}

unint64_t sub_100064ED4()
{
  result = qword_100100890;
  if (!qword_100100890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100890);
  }

  return result;
}

unint64_t sub_100064F2C()
{
  result = qword_100100898;
  if (!qword_100100898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100898);
  }

  return result;
}

unint64_t sub_100064F84()
{
  result = qword_1001008A0;
  if (!qword_1001008A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001008A0);
  }

  return result;
}

unint64_t sub_100065014()
{
  result = qword_1001008A8;
  if (!qword_1001008A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001008A8);
  }

  return result;
}

unint64_t sub_10006506C()
{
  result = qword_1001008B0;
  if (!qword_1001008B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001008B0);
  }

  return result;
}

unint64_t sub_100065114()
{
  result = qword_1001008B8;
  if (!qword_1001008B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001008B8);
  }

  return result;
}

unint64_t sub_10006516C()
{
  result = qword_1001008C0;
  if (!qword_1001008C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001008C0);
  }

  return result;
}

unint64_t sub_1000651FC()
{
  result = qword_1001008C8;
  if (!qword_1001008C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001008C8);
  }

  return result;
}

unint64_t sub_100065298()
{
  result = qword_1001008E0;
  if (!qword_1001008E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001008E0);
  }

  return result;
}

unint64_t sub_1000652F0()
{
  result = qword_1001008E8;
  if (!qword_1001008E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001008E8);
  }

  return result;
}

unint64_t sub_100065348()
{
  result = qword_1001008F0;
  if (!qword_1001008F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001008F0);
  }

  return result;
}

unint64_t sub_1000653AC()
{
  result = qword_1001008F8;
  if (!qword_1001008F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001008F8);
  }

  return result;
}

unint64_t sub_100065400()
{
  result = qword_100100900;
  if (!qword_100100900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100900);
  }

  return result;
}

unint64_t sub_100065454()
{
  result = qword_100100908;
  if (!qword_100100908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100908);
  }

  return result;
}

unint64_t sub_1000654AC()
{
  result = qword_100100910;
  if (!qword_100100910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100910);
  }

  return result;
}

unint64_t sub_100065530()
{
  result = qword_100100918;
  if (!qword_100100918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100918);
  }

  return result;
}

unint64_t sub_100065588()
{
  result = qword_100100920;
  if (!qword_100100920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100920);
  }

  return result;
}

unint64_t sub_1000655E4()
{
  result = qword_100100928;
  if (!qword_100100928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100928);
  }

  return result;
}

unint64_t sub_10006563C()
{
  result = qword_100100930;
  if (!qword_100100930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100930);
  }

  return result;
}

unint64_t sub_1000656E4()
{
  result = qword_100100938;
  if (!qword_100100938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100938);
  }

  return result;
}

unint64_t sub_100065780()
{
  result = qword_100100950;
  if (!qword_100100950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100950);
  }

  return result;
}

unint64_t sub_1000657D8()
{
  result = qword_100100958;
  if (!qword_100100958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100958);
  }

  return result;
}

unint64_t sub_100065830()
{
  result = qword_100100960;
  if (!qword_100100960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100960);
  }

  return result;
}

unint64_t sub_100065888()
{
  result = qword_100100968;
  if (!qword_100100968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100968);
  }

  return result;
}

unint64_t sub_1000658DC()
{
  result = qword_100100970;
  if (!qword_100100970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100970);
  }

  return result;
}

unint64_t sub_100065930()
{
  result = qword_100100978;
  if (!qword_100100978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100978);
  }

  return result;
}

unint64_t sub_100065988()
{
  result = qword_100100980;
  if (!qword_100100980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100980);
  }

  return result;
}

unint64_t sub_100065A0C()
{
  result = qword_100100988;
  if (!qword_100100988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100988);
  }

  return result;
}

unint64_t sub_100065A64()
{
  result = qword_100100990;
  if (!qword_100100990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100990);
  }

  return result;
}

unint64_t sub_100065AC0()
{
  result = qword_100100998;
  if (!qword_100100998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100998);
  }

  return result;
}

unint64_t sub_100065B18()
{
  result = qword_1001009A0;
  if (!qword_1001009A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001009A0);
  }

  return result;
}

unint64_t sub_100065BC0()
{
  result = qword_1001009A8;
  if (!qword_1001009A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001009A8);
  }

  return result;
}

unint64_t sub_100065C18()
{
  result = qword_1001009B0;
  if (!qword_1001009B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001009B0);
  }

  return result;
}

unint64_t sub_100065CC0()
{
  result = qword_1001009B8;
  if (!qword_1001009B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001009B8);
  }

  return result;
}

unint64_t sub_100065D18()
{
  result = qword_1001009C0;
  if (!qword_1001009C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001009C0);
  }

  return result;
}

unint64_t sub_100065D70()
{
  result = qword_1001009C8;
  if (!qword_1001009C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001009C8);
  }

  return result;
}

unint64_t sub_100065DC8()
{
  result = qword_1001009D0;
  if (!qword_1001009D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001009D0);
  }

  return result;
}

unint64_t sub_100065EB0()
{
  result = qword_1001009D8;
  if (!qword_1001009D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001009D8);
  }

  return result;
}

unint64_t sub_100065F0C()
{
  result = qword_1001009E0;
  if (!qword_1001009E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001009E0);
  }

  return result;
}

unint64_t sub_100065F64()
{
  result = qword_1001009E8;
  if (!qword_1001009E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001009E8);
  }

  return result;
}

uint64_t sub_100066018()
{
  result = type metadata accessor for RootNavigationDestination();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_100066114(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100066128(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100066168(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for AddShortcutToHomeScreenAction.AddToHomeScreenError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AddShortcutToHomeScreenAction.AddToHomeScreenError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShortcutAttribute(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ShortcutAttribute(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000664B0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000664F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_100066540(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10006663C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10006667C(uint64_t result, int a2, int a3)
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

uint64_t sub_1000666C8()
{
  v0 = sub_10002E87C(&qword_100100BB8);
  sub_100002EE0(v0);

  return sub_1000628C8();
}

uint64_t *sub_100066730(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000668DC()
{

  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_100066938()
{

  return ParameterSummaryString.init(stringInterpolation:)();
}

uint64_t sub_100066968()
{

  return ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();
}

void sub_100066A40()
{

  sub_100062D18();
}

uint64_t sub_100066A70(uint64_t a1)
{
  *v1 = a1;

  return IntentParameter.wrappedValue.modify();
}

uint64_t sub_100066AA0()
{

  return swift_task_alloc();
}

uint64_t sub_100066B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000042A8(a1, a2, a3, v3);
  *(v4 - 96) = 0;

  return type metadata accessor for IntentDialog();
}

uint64_t sub_100066B38()
{

  return ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
}

uint64_t sub_100066B80()
{

  return swift_task_alloc();
}

uint64_t sub_100066C9C()
{

  return swift_allocError();
}

void sub_100066CB4()
{

  sub_100062D18();
}

uint64_t sub_100066CCC()
{

  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t sub_100066CF0()
{

  return String.LocalizationValue.init(stringLiteral:)();
}

uint64_t sub_100066D0C()
{

  return ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
}

uint64_t sub_100066D28()
{

  return static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_100066D40()
{

  return IntentParameter.wrappedValue.getter();
}

uint64_t sub_100066D58()
{

  return IntentParameter.wrappedValue.setter();
}

void sub_100066E30()
{
  v1 = 544175136;
  v2 = 0xE400000000000000;

  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(*&v1);
}

uint64_t sub_100066E50()
{

  return ParameterSummaryString.init(stringInterpolation:)();
}

void sub_100066E70()
{

  sub_100062D18();
}

id sub_100066E88()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t sub_100066EA0()
{

  return specialized _ArrayBuffer._getElementSlowPath(_:)();
}