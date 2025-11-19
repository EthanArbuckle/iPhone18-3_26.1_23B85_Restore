uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  objc_autoreleasePoolPop(v4);
  return v7;
}

id sub_100001764()
{
  if (qword_10000D1F8[0] != -1)
  {
    sub_100003EE0();
  }

  v1 = qword_10000D1F0;

  return v1;
}

void sub_1000017A8(id a1)
{
  qword_10000D1F0 = os_log_create("com.apple.carplay.splashscreen", "General");

  _objc_release_x1();
}

void sub_100002310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100002340(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissAlertAnimated:1];
}

void sub_100002384(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissAlertAnimated:1];
}

void sub_1000024B0(id a1, NSError *a2)
{
  v2 = sub_100001764();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100003EF4(v2);
  }
}

void sub_1000024F4(uint64_t a1)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000025EC;
  v5[3] = &unk_100008518;
  v2 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v2;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100002644;
  v3[3] = &unk_100008540;
  v4 = *(a1 + 40);
  [UIView animateWithDuration:v5 animations:v3 completion:0.25];
}

id sub_1000025EC(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:0.0];

  v3 = *(a1 + 40);

  return [v3 setWallpaperStyle:0 withDuration:0.25];
}

id sub_100002644(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v1 = UIApp;

  return [v1 terminateWithSuccess];
}

void sub_100002868(id a1, NSError *a2)
{
  v2 = sub_100001764();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100003EF4(v2);
  }
}

id sub_100002994(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100002A10;
  v3[3] = &unk_1000085B0;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [BSUIAnimationFactory animateWithFactory:v1 actions:v3];
}

id sub_100002A10(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:1.0];

  [*(a1 + 32) configureBackgroundLayer];
  v3 = *(a1 + 32);

  return [v3 configureImages];
}

void sub_100002B3C(uint64_t a1, void *a2)
{
  if (([a2 events] & 0x10) != 0)
  {
    v3 = sub_100001764();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Handling home button action", buf, 2u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002C10;
    block[3] = &unk_1000085B0;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

uint64_t sub_100002D04(uint64_t *a1, uint64_t *a2)
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

id sub_100002E10()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_100002E44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SplashScreenLogoViewHost();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100002EDC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SplashScreenLogoViewHost();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100002F10@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v55 = type metadata accessor for _ShapeSet();
  v53 = *(v55 - 8);
  v1 = *(v53 + 64);
  (__chkstk_darwin)();
  v52 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for RoundedRectangle();
  v3 = *(*(v48 - 8) + 64);
  v4 = (__chkstk_darwin)();
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v42 - v6;
  v8 = type metadata accessor for Material._GlassVariant();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v42 - v15;
  __chkstk_darwin(v14);
  v18 = &v42 - v17;
  v19 = type metadata accessor for Material();
  v50 = *(v19 - 8);
  v51 = v19;
  v20 = *(v50 + 64);
  __chkstk_darwin(v19);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = Image.init(_:bundle:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v46 = v63;
  v23 = v64;
  v24 = v65;
  v45 = v66;
  v44 = v67;
  v43 = v68;
  static Material._GlassVariant.text.getter();
  static Material._GlassVariant.widgets.getter();
  Material._GlassVariant.mix(with:by:)();
  v25 = *(v9 + 8);
  v25(v13, v8);
  v25(v16, v8);
  static Material._glass(_:)();
  v25(v18, v8);
  v26 = *(v48 + 20);
  v27 = enum case for RoundedCornerStyle.continuous(_:);
  v28 = type metadata accessor for RoundedCornerStyle();
  (*(*(v28 - 8) + 104))(&v7[v26], v27, v28);
  __asm { FMOV            V0.2D, #26.0 }

  *v7 = _Q0;
  v56 = v47;
  v57 = v46;
  v58 = v23;
  v59 = v24;
  v60 = v45;
  v61 = v44;
  v62 = v43;
  sub_100002D04(&qword_10000D0E8, &qword_100005458);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_100005440;
  sub_100003478(v7, v49);
  sub_1000034DC();
  *(v34 + 32) = AnyShape.init<A>(_:)();
  v35 = v52;
  _ShapeSet.init(shapes:smoothness:)();
  sub_100002D04(&qword_10000D0F8, &qword_100005460);
  sub_100003534();
  v36 = v54;
  View.materialEffect(_:in:)();
  (*(v53 + 8))(v35, v55);
  sub_100003600(v7);
  (*(v50 + 8))(v22, v51);

  v37 = *(sub_100002D04(&qword_10000D108, &qword_100005468) + 36);
  v38 = enum case for ColorScheme.light(_:);
  v39 = type metadata accessor for ColorScheme();
  v40 = *(v39 - 8);
  (*(v40 + 104))(v36 + v37, v38, v39);
  return (*(v40 + 56))(v36 + v37, 0, 1, v39);
}

uint64_t sub_100003478(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000034DC()
{
  result = qword_10000D0F0;
  if (!qword_10000D0F0)
  {
    type metadata accessor for RoundedRectangle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000D0F0);
  }

  return result;
}

unint64_t sub_100003534()
{
  result = qword_10000D100;
  if (!qword_10000D100)
  {
    sub_1000035B8(&qword_10000D0F8, &qword_100005460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000D100);
  }

  return result;
}

uint64_t sub_1000035B8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003600(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003700@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(a1 + 24) = &type metadata for SplashScreenLogoView;
  *(a1 + 32) = sub_100003918();
}

unint64_t sub_1000037EC()
{
  result = qword_10000D138;
  if (!qword_10000D138)
  {
    sub_1000035B8(&qword_10000D108, &qword_100005468);
    sub_1000035B8(&qword_10000D0F8, &qword_100005460);
    sub_100003534();
    swift_getOpaqueTypeConformance2();
    sub_1000038B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000D138);
  }

  return result;
}

unint64_t sub_1000038B4()
{
  result = qword_10000D140;
  if (!qword_10000D140)
  {
    sub_1000035B8(&qword_10000D148, qword_100005600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000D140);
  }

  return result;
}

unint64_t sub_100003918()
{
  result = qword_10000D150;
  if (!qword_10000D150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000D150);
  }

  return result;
}

id sub_10000397C()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_10000D308 = result;
  return result;
}

uint64_t sub_1000039D0()
{
  v0 = type metadata accessor for ImageResource();
  sub_100003E7C(v0, qword_10000D330);
  sub_100003A9C(v0, qword_10000D330);
  if (qword_10000D300 != -1)
  {
    swift_once();
  }

  v1 = qword_10000D308;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100003A9C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003B90(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for ImageResource();
  sub_100003E7C(v3, a2);
  sub_100003A9C(v3, a2);
  if (qword_10000D300 != -1)
  {
    swift_once();
  }

  v4 = qword_10000D308;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100003C7C()
{
  v0 = type metadata accessor for ImageResource();
  sub_100003E7C(v0, qword_10000D378);
  sub_100003A9C(v0, qword_10000D378);
  if (qword_10000D300 != -1)
  {
    swift_once();
  }

  v1 = qword_10000D308;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100003D48(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for ImageResource();

  return sub_100003A9C(v3, a2);
}

uint64_t sub_100003DC0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for ImageResource();
  v6 = sub_100003A9C(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t *sub_100003E7C(uint64_t a1, uint64_t *a2)
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