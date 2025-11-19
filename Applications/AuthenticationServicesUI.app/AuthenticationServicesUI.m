uint64_t sub_100001B18()
{
  if (qword_1000117D8 != -1)
  {
    sub_100006530();
  }

  return qword_1000117D0;
}

void sub_100001B50(id a1)
{
  qword_1000117D0 = os_log_create("com.apple.AuthenticationServicesUI", "Authorization");

  _objc_release_x1();
}

void sub_100001ED4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 80) & 1) == 0)
  {
    *(v1 + 80) = 1;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100001FC0;
    v6[3] = &unk_10000C548;
    v6[4] = *(a1 + 32);
    v3 = objc_retainBlock(v6);
    v4 = [*(*(a1 + 32) + 8) navigationController];
    v5 = v4;
    if (v4)
    {
      [v4 dismissViewControllerAnimated:1 completion:v3];
    }

    else
    {
      (v3[2])(v3);
    }
  }
}

id sub_100001FC0(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:0 completion:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  v4 = [*(a1 + 32) _remoteViewControllerProxy];
  [v4 invalidate];

  v5 = *(a1 + 32);

  return [v5 _invalidateLookupConnection];
}

void sub_1000021C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 64) == 1)
  {
    [*(v1 + 8) updateInterfaceWithLoginChoices:*(a1 + 40)];
  }

  else
  {
    objc_storeStrong((v1 + 56), *(a1 + 40));
  }
}

void *sub_100002280(void *result)
{
  v1 = result[4];
  if (*(v1 + 64) == 1)
  {
    return [*(v1 + 8) presentPINEntryInterface];
  }

  *(v1 + 48) = 1;
  return result;
}

void *sub_100002338(void *result)
{
  v1 = result[4];
  if (*(v1 + 64) == 1)
  {
    return [*(v1 + 8) presentNewPINEntryInterface];
  }

  *(v1 + 49) = 1;
  return result;
}

void sub_1000028C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000028E0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = sub_100001B18();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100006544(v5, v3);
    }

    [WeakRetained _dismissAndExit];
  }
}

id sub_100003080(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000030F4;
  v3[3] = &unk_10000C548;
  v3[4] = v1;
  return [v1 dismissViewControllerAnimated:1 completion:v3];
}

void sub_1000030F4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000316C;
  block[3] = &unk_10000C548;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000032B0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = UIApplicationMain(a1, a2, 0, v5);

  return v6;
}

uint64_t sub_100003334()
{
  v0 = type metadata accessor for Logger();
  sub_1000033B4(v0, qword_1000117E0);
  sub_100003418(v0, qword_1000117E0);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_1000033B4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_100003418(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_100003450(char a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for RootViewController();
  objc_msgSendSuper2(&v11, "viewDidAppear:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC24AuthenticationServicesUI18RootViewController_viewServiceViewController];
  if (v3)
  {
    v4 = v3;
    [v4 setModalPresentationStyle:3];
    v10[4] = sub_100003604;
    v10[5] = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_1000036EC;
    v10[3] = &unk_10000C6C0;
    v5 = _Block_copy(v10);
    [v1 presentViewController:v4 animated:0 completion:v5];
    _Block_release(v5);
    if (qword_100011450 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003418(v6, qword_1000117E0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Presenting view", v9, 2u);
    }
  }
}

void sub_100003604()
{
  if (qword_100011450 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003418(v0, qword_1000117E0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Finished presenting view.", v2, 2u);
  }
}

uint64_t sub_1000036EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_100003784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_100011450 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003418(v6, qword_1000117E0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Setting up with context", v9, 2u);
  }

  v10 = [objc_allocWithZone(ASViewServiceViewController) init];
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v10 setUpWithPresentationContextData:isa xpcEndpoint:a3];

  v12 = *(v4 + OBJC_IVAR____TtC24AuthenticationServicesUI18RootViewController_viewServiceViewController);
  *(v4 + OBJC_IVAR____TtC24AuthenticationServicesUI18RootViewController_viewServiceViewController) = v10;
}

void sub_1000038E4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_100011450 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003418(v9, qword_1000117E0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Setting up with exported credential data", v12, 2u);
  }

  v13 = [objc_allocWithZone(ASViewServiceViewController) init];
  v14 = String._bridgeToObjectiveC()();
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  [v13 setUpWithExporterBundleID:v14 exportedCredentialData:isa xpcEndpoint:a5];

  v16 = *(v6 + OBJC_IVAR____TtC24AuthenticationServicesUI18RootViewController_viewServiceViewController);
  *(v6 + OBJC_IVAR____TtC24AuthenticationServicesUI18RootViewController_viewServiceViewController) = v13;
}

id sub_100003BB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RootViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100003C20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100003E84(uint64_t a1, void *a2)
{
  if (qword_100011450 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003418(v3, qword_1000117E0);
  v4 = a2;
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v4;
    *v7 = v4;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, oslog, v5, "Opened caBLE url with %@", v6, 0xCu);
    sub_1000063C0(v7, &qword_1000115F8, &qword_10000AD78);
  }
}

void sub_100003FD0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id sub_10000409C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100004140(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000420C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000064D0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006374(v11);
  return v7;
}

unint64_t sub_10000420C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100004318(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100004318(uint64_t a1, unint64_t a2)
{
  v4 = sub_100004364(a1, a2);
  sub_100004494(&off_10000C698);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100004364(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100004580(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100004580(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100004494(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1000045F4(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100004580(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100005638(&qword_100011690, &qword_10000ADA0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000045F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005638(&qword_100011690, &qword_10000ADA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1000046E8(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = __CocoaSet.contains(_:)();

    if (v7)
    {
      v8 = sub_100004880();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_100006420(0, &qword_100011600, BSAction_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v12 = -1 << *(v3 + 32);
  v13 = v11 & ~v12;
  if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v3 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  v17 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v10;
  v21 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000049E8();
    v19 = v21;
  }

  v20 = *(*(v19 + 48) + 8 * v13);
  sub_100004D60(v13);
  result = v20;
  *v10 = v21;
  return result;
}

uint64_t sub_100004880()
{
  v1 = v0;
  v2 = *v0;

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = sub_100004F00(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = NSObject._rawHashValue(seed:)(v6);
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_100006420(0, &qword_100011600, BSAction_ptr);
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_100004D60(v9);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000049E8()
{
  v1 = v0;
  sub_100005638(&qword_100011688, &qword_10000AD98);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100004B38(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100005638(&qword_100011688, &qword_10000AD98);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_100004D60(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = NSObject._rawHashValue(seed:)(v11);

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

Swift::Int sub_100004F00(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100005638(&qword_100011688, &qword_10000AD98);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100006420(0, &qword_100011600, BSAction_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100004B38(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

void sub_1000050F0(uint64_t a1)
{
  v43 = type metadata accessor for URL();
  v2 = *(v43 - 8);
  v3 = *(v2 + 64);
  v4 = (__chkstk_darwin)();
  __chkstk_darwin(v4);
  v41 = &v39 - v5;
  v39 = v6;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006420(0, &qword_1000115E8, UIOpenURLContext_ptr);
    sub_100005680(&qword_1000115F0, &qword_1000115E8, UIOpenURLContext_ptr);
    Set.Iterator.init(_cocoa:)();
    a1 = aBlock[6];
    v7 = aBlock[7];
    v8 = aBlock[8];
    v9 = aBlock[9];
    v10 = aBlock[10];
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v40 = v8;
  v14 = (v8 + 64) >> 6;
  v42 = (v2 + 8);
  while (a1 < 0)
  {
    v21 = __CocoaSet.Iterator.next()();
    if (!v21 || (v44 = v21, sub_100006420(0, &qword_1000115E8, UIOpenURLContext_ptr), swift_dynamicCast(), v20 = aBlock[0], v18 = v9, v19 = v10, !aBlock[0]))
    {
LABEL_24:
      sub_1000055D8();
      return;
    }

LABEL_19:
    v22 = [v20 URL];
    v23 = v41;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL.scheme.getter();
    v25 = v24;
    v26 = *v42;
    (*v42)(v23, v43);
    if (v25)
    {
      v27 = String.lowercased()();

      if (v27._countAndFlagsBits == 1868851558 && v27._object == 0xE400000000000000)
      {

LABEL_23:
        sub_1000055D8();
        v28 = [objc_allocWithZone(ASCAgentProxy) init];
        v29 = [v20 URL];
        v30 = v39;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        URL._bridgeToObjectiveC()(v31);
        v33 = v32;
        v26(v30, v43);
        v34 = [v20 options];
        v35 = [v34 sourceApplication];

        v36 = swift_allocObject();
        *(v36 + 16) = v28;
        aBlock[4] = sub_100005618;
        aBlock[5] = v36;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100003FD0;
        aBlock[3] = &unk_10000C710;
        v37 = _Block_copy(aBlock);
        v38 = v28;

        [v38 openCABLEURL:v33 fromSourceApplication:v35 withCompletionHandler:v37];
        _Block_release(v37);

        return;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v15)
      {
        goto LABEL_23;
      }
    }

    v9 = v18;
    v10 = v19;
  }

  v16 = v9;
  v17 = v10;
  v18 = v9;
  if (v10)
  {
LABEL_15:
    v19 = (v17 - 1) & v17;
    v20 = *(*(a1 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v20)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v14)
    {
      goto LABEL_24;
    }

    v17 = *(v7 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_1000055E0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005620(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005638(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100005680(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100006420(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000056D0(void *a1, void *a2)
{
  v3 = v2;
  if (qword_100011450 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003418(v6, qword_1000117E0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Scene will connect to session", v9, 2u);
  }

  sub_100005638(&qword_100011698, &unk_10000ADA8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10000AD50;
  *(v10 + 32) = v3;
  v11 = v3;
  sub_100005638(&unk_100011700, &qword_10000ADB8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v13 = String._bridgeToObjectiveC()();
  [a1 _registerBSActionResponderArray:isa forKey:v13];

  v14 = [a2 URLContexts];
  sub_100006420(0, &qword_1000115E8, UIOpenURLContext_ptr);
  sub_100005680(&qword_1000115F0, &qword_1000115E8, UIOpenURLContext_ptr);
  v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = __CocoaSet.count.getter();
  }

  else
  {
    v16 = *(v15 + 16);
  }

  if (v16)
  {
    v18 = [a2 URLContexts];
    v19 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000050F0(v19);
  }

  return result;
}

uint64_t sub_100005964(uint64_t a1, void *a2)
{
  v3 = v2;
  if (qword_100011450 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003418(v6, qword_1000117E0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Responding to BSActions", v9, 2u);
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
    v22 = a2;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v69[0] = v26;
      *v25 = 136446210;
      swift_getObjectType();
      v27 = _typeName(_:qualified:)();
      v29 = sub_100004140(v27, v28, v69);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "Received unexpected scene %{public}s", v25, 0xCu);
      sub_100006374(v26);
    }

    return a1;
  }

  v11 = v10;
  v12 = objc_allocWithZone(UIWindow);
  v58 = a2;
  v13 = [v12 initWithWindowScene:v11];
  type metadata accessor for RootViewController();
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v13 setRootViewController:v14];
  [v13 setContentsPosition:0];
  v15 = OBJC_IVAR____TtC24AuthenticationServicesUI13SceneDelegate_windows;
  swift_beginAccess();
  v16 = v13;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v15 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v15 + v3) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v54 = *((*(v15 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v57 = v16;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v17 = *(v3 + OBJC_IVAR____TtC24AuthenticationServicesUI13SceneDelegate_rootViewController);
  *(v3 + OBJC_IVAR____TtC24AuthenticationServicesUI13SceneDelegate_rootViewController) = v14;
  v59 = v14;

  v68 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    v3 = BSAction_ptr;
    sub_100006420(0, &qword_100011600, BSAction_ptr);
    sub_100005680(&qword_100011608, &qword_100011600, BSAction_ptr);
    Set.Iterator.init(_cocoa:)();
    a1 = v69[0];
    v18 = v69[1];
    v19 = v69[2];
    v20 = v69[3];
    v21 = v69[4];
  }

  else
  {
    v30 = -1 << *(a1 + 32);
    v18 = a1 + 56;
    v19 = ~v30;
    v31 = -v30;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v21 = v32 & *(a1 + 56);
    swift_bridgeObjectRetain_n();
    v20 = 0;
  }

  while (1)
  {
    if (a1 < 0)
    {
      v37 = __CocoaSet.Iterator.next()();
      if (!v37 || (*&v62 = v37, sub_100006420(0, &qword_100011600, BSAction_ptr), swift_dynamicCast(), v3 = v66, v35 = v20, v36 = v21, !v66))
      {
LABEL_43:
        sub_1000055D8();
        goto LABEL_44;
      }
    }

    else
    {
      v33 = v20;
      v34 = v21;
      v35 = v20;
      if (!v21)
      {
        while (1)
        {
          v35 = &v33->count + 1;
          if (__OFADD__(v33, 1))
          {
            break;
          }

          if (v35 >= ((v19 + 64) >> 6))
          {
            goto LABEL_43;
          }

          v34 = *(v18 + 8 * v35);
          v33 = (v33 + 1);
          if (v34)
          {
            goto LABEL_25;
          }
        }

        __break(1u);
        goto LABEL_51;
      }

LABEL_25:
      v36 = (v34 - 1) & v34;
      v3 = *(*(a1 + 48) + ((v35 << 9) | (8 * __clz(__rbit64(v34)))));
      if (!v3)
      {
        goto LABEL_43;
      }
    }

    v38 = [v3 info];
    if (!v38)
    {
      goto LABEL_18;
    }

    v15 = v38;
    if ([v38 objectForSetting:0])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v62 = 0u;
      v65 = 0u;
    }

    v66 = v62;
    v67 = v65;
    if (*(&v65 + 1))
    {
      break;
    }

LABEL_42:

    sub_1000063C0(&v66, &qword_100011610, &unk_10000AD80);
LABEL_19:
    v20 = v35;
    v21 = v36;
  }

  sub_100006420(0, &qword_100011618, NSDictionary_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  if ([v15 objectForSetting:1])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v62 = 0u;
    v65 = 0u;
  }

  v66 = v62;
  v67 = v65;
  if (!*(&v65 + 1))
  {

    goto LABEL_42;
  }

  sub_100005638(&qword_100011680, &qword_10000AD90);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_17:
LABEL_18:

    goto LABEL_19;
  }

  v55 = v60;
  v56 = v60;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "Found context action", v42, 2u);
  }

  *&v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v63 + 1) = v43;
  v20 = &UIApplicationDelegate__prots;
  v44 = [v60 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v44)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    goto LABEL_52;
  }

LABEL_51:
  v63 = 0u;
  v65 = 0u;
LABEL_52:
  v66 = v63;
  v67 = v65;
  v45 = v56;
  if (*(&v65 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_100003784(v60, v61, v55);
      v45 = v56;
      sub_10000647C(v60, v61);
    }
  }

  else
  {
    sub_1000063C0(&v66, &qword_100011610, &unk_10000AD80);
  }

  *&v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v66 + 1) = v46;
  v47 = [v45 v20[332].count];
  swift_unknownObjectRelease();
  if (v47)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v63 = 0u;
    v65 = 0u;
  }

  v66 = v63;
  v67 = v65;
  if (*(&v65 + 1))
  {
    v48 = swift_dynamicCast();
    if (v48)
    {
      v49 = v60;
    }

    else
    {
      v49 = 0;
    }

    if (v48)
    {
      v50 = v61;
    }

    else
    {
      v50 = 0xF000000000000000;
    }
  }

  else
  {
    sub_1000063C0(&v66, &qword_100011610, &unk_10000AD80);
    v49 = 0;
    v50 = 0xF000000000000000;
  }

  *&v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v64 + 1) = v51;
  v52 = [v56 v20[332].count];
  swift_unknownObjectRelease();
  if (v52)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v64 = 0u;
    v65 = 0u;
  }

  v66 = v64;
  v67 = v65;
  if (*(&v65 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_1000038E4(v49, v50, v60, v61, v55);
    }
  }

  else
  {
    sub_1000063C0(&v66, &qword_100011610, &unk_10000AD80);
  }

  v53 = sub_1000046E8(v3);
  sub_1000055D8();

  sub_100006468(v49, v50);
  swift_unknownObjectRelease();

LABEL_44:
  [v57 makeKeyAndVisible];

  return v68;
}

uint64_t sub_100006374(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000063C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100005638(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100006420(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100006468(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000647C(a1, a2);
  }

  return a1;
}

uint64_t sub_10000647C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000064D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_100006544(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  sub_1000032B0(&_mh_execute_header, v5, v6, "View service lost connection to agent with error: %{public}@", v7, v8, v9, v10, 2u);
}

void sub_1000065DC(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  sub_1000032B0(&_mh_execute_header, v5, v6, "Error initializing presentation context: %{public}@", v7, v8, v9, v10, 2u);
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}