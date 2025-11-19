Swift::Int sub_1000017B4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100001828()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t *sub_10000186C@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_100001890(char a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000055B4(0, &qword_10001D458, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  aBlock[4] = sub_100005740;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000059C4;
  aBlock[3] = &unk_100018F50;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100005604();
  sub_100004544(&qword_10001D468, &qword_100010618);
  sub_10000565C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v9);
}

void sub_100001B2C(char a1, char *a2)
{
  v2 = OBJC_IVAR____TtC11EyeReliefUI14ViewController_viewModel;
  if (*&a2[OBJC_IVAR____TtC11EyeReliefUI14ViewController_viewModel])
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (LOBYTE(v23[0]) == 1)
    {
      v5 = OBJC_IVAR____TtC11EyeReliefUI14ViewController_isSafeDistanceTimer;
      v6 = *&a2[OBJC_IVAR____TtC11EyeReliefUI14ViewController_isSafeDistanceTimer];
      if (a1 == 1)
      {
        v7 = *&a2[OBJC_IVAR____TtC11EyeReliefUI14ViewController_isSafeDistanceTimer];
        v8 = v7;
        if (!v6)
        {
          if (qword_10001D350 != -1)
          {
            swift_once();
          }

          v9 = type metadata accessor for Logger();
          sub_10000468C(v9, qword_10001E380);
          v10 = Logger.logObject.getter();
          v11 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v10, v11))
          {
            v12 = swift_slowAlloc();
            *v12 = 0;
            _os_log_impl(&_mh_execute_header, v10, v11, "Scheduled safe distance timer", v12, 2u);
          }

          v6 = *&a2[v5];
          v7 = v6;
          v8 = v6;
          if (!v6)
          {
            v13 = objc_opt_self();
            v14 = swift_allocObject();
            *(v14 + 16) = a2;
            v23[4] = sub_10000574C;
            v23[5] = v14;
            v23[0] = _NSConcreteStackBlock;
            v23[1] = 1107296256;
            v23[2] = sub_100002018;
            v23[3] = &unk_100018FA0;
            v15 = _Block_copy(v23);
            v16 = a2;

            v8 = [v13 scheduledTimerWithTimeInterval:0 repeats:v15 block:1.0];
            _Block_release(v15);
            v7 = 0;
            v6 = *&a2[v5];
          }
        }

        *&a2[v5] = v8;
        v17 = v7;
      }

      else
      {
        if (v6)
        {
          if (qword_10001D350 != -1)
          {
            swift_once();
          }

          v18 = type metadata accessor for Logger();
          sub_10000468C(v18, qword_10001E380);
          v19 = Logger.logObject.getter();
          v20 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v19, v20))
          {
            v21 = swift_slowAlloc();
            *v21 = 0;
            _os_log_impl(&_mh_execute_header, v19, v20, "Cancelled safe distance timer", v21, 2u);
          }
        }

        [*&a2[v5] invalidate];
        v22 = *&a2[v5];
        *&a2[v5] = 0;

        if (*&a2[v2])
        {
          swift_getKeyPath();
          swift_getKeyPath();

          static Published.subscript.setter();
        }
      }
    }
  }
}

void sub_100001EC0(uint64_t a1, uint64_t a2)
{
  if (qword_10001D350 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000468C(v3, qword_10001E380);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Fired safe distance timer", v6, 2u);
  }

  if (*(a2 + OBJC_IVAR____TtC11EyeReliefUI14ViewController_viewModel))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
  }

  if (*(a2 + OBJC_IVAR____TtC11EyeReliefUI14ViewController_distanceStreaming))
  {
    v7 = *(a2 + OBJC_IVAR____TtC11EyeReliefUI14ViewController_distanceStreaming);

    sub_10000EB60();
  }
}

void sub_100002018(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100002080(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000055B4(0, &qword_10001D458, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  aBlock[4] = sub_1000055FC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000059C4;
  aBlock[3] = &unk_100018F00;
  v14 = _Block_copy(aBlock);
  v15 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100005604();
  sub_100004544(&qword_10001D468, &qword_100010618);
  sub_10000565C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

void sub_100002314(uint64_t a1)
{
  if (qword_10001D350 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000468C(v2, qword_10001E380);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unable to stream. Enabling continue button.", v5, 2u);
  }

  if (*(a1 + OBJC_IVAR____TtC11EyeReliefUI14ViewController_viewModel))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
  }
}

void sub_100002518()
{
  v1 = v0;
  v2 = type metadata accessor for ShieldIntervention(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InterventionViewModel(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  LOBYTE(aBlock) = 1;
  Published.init(initialValue:)();
  v10 = OBJC_IVAR____TtC11EyeReliefUI14ViewController_viewModel;
  v11 = *&v1[OBJC_IVAR____TtC11EyeReliefUI14ViewController_viewModel];
  *&v1[OBJC_IVAR____TtC11EyeReliefUI14ViewController_viewModel] = v9;

  v12 = [v1 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12;
  v14 = objc_opt_self();
  v15 = [v14 clearColor];
  [v13 setBackgroundColor:v15];

  if (!*&v1[v10])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  v17 = v1;

  sub_100005A08(v18, sub_10000453C, v16, v5);
  v19 = objc_allocWithZone(sub_100004544(&qword_10001D3C8, &qword_1000105A8));
  v20 = UIHostingController.init(rootView:)();
  v21 = OBJC_IVAR____TtC11EyeReliefUI14ViewController_shieldIntervention;
  v22 = *&v17[OBJC_IVAR____TtC11EyeReliefUI14ViewController_shieldIntervention];
  *&v17[OBJC_IVAR____TtC11EyeReliefUI14ViewController_shieldIntervention] = v20;
  v23 = v20;

  v24 = [v23 view];
  if (!v24)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v25 = [v14 clearColor];
  [v24 setBackgroundColor:v25];

  v26 = *&v17[v21];
  if (!v26)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v27 = [v26 view];
  if (!v27)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v28 = v27;
  v29 = [v27 layer];

  [v29 setMasksToBounds:1];
  v30 = *&v17[v21];
  if (!v30)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v31 = [v30 view];
  if (!v31)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v32 = v31;
  v33 = [v31 layer];

  v34 = objc_opt_self();
  v35 = [v34 mainScreen];
  v36 = [v35 traitCollection];

  [v36 displayCornerRadius];
  v38 = v37;

  [v33 setCornerRadius:v38];
  v39 = *&v17[v21];
  if (!v39)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v40 = [v39 view];
  if (!v40)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v41 = v40;
  v42 = [v40 layer];

  [v42 setCornerCurve:kCACornerCurveContinuous];
  v43 = [v34 mainScreen];
  [v43 bounds];
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;

  v77.origin.x = v45;
  v77.origin.y = v47;
  v77.size.width = v49;
  v77.size.height = v51;
  Height = CGRectGetHeight(v77);
  v78.origin.x = v45;
  v78.origin.y = v47;
  v78.size.width = v49;
  v78.size.height = v51;
  Width = CGRectGetWidth(v78);
  v79.origin.x = v45;
  v79.origin.y = v47;
  v79.size.width = v49;
  v79.size.height = v51;
  v54 = CGRectGetHeight(v79);
  v55 = *&v17[v21];
  if (!v55)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v56 = v54;
  v57 = [v55 view];
  if (!v57)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v58 = v57;
  [v57 setFrame:{0.0, Height, Width, v56}];

  if (!*&v17[v21])
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  [v17 addChildViewController:?];
  v59 = [v17 view];
  if (!v59)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v60 = v59;
  v61 = *&v17[v21];
  if (!v61)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v62 = [v61 view];
  if (v62)
  {
    v63 = v62;
    [v60 addSubview:v62];

    sub_100003378();
    v64 = objc_opt_self();
    v65 = swift_allocObject();
    *(v65 + 2) = v17;
    v65[3] = v45;
    v65[4] = v47;
    v65[5] = v49;
    v65[6] = v51;
    v75 = sub_1000045C4;
    v76 = v65;
    aBlock = _NSConcreteStackBlock;
    v72 = 1107296256;
    v73 = sub_1000059C4;
    v74 = &unk_100018D20;
    v66 = _Block_copy(&aBlock);
    v67 = v17;

    v68 = swift_allocObject();
    *(v68 + 16) = v67;
    v75 = sub_1000045F4;
    v76 = v68;
    aBlock = _NSConcreteStackBlock;
    v72 = 1107296256;
    v73 = sub_1000031A4;
    v74 = &unk_100018D70;
    v69 = _Block_copy(&aBlock);
    v70 = v67;

    [v64 _animateUsingSpringWithTension:0 friction:v66 interactive:v69 animations:200.0 completion:35.0];
    _Block_release(v69);
    _Block_release(v66);
    return;
  }

LABEL_31:
  __break(1u);
}

void sub_100002B90(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC11EyeReliefUI14ViewController_interventionResponseAction];
  if (v1)
  {
    if (*&a1[OBJC_IVAR____TtC11EyeReliefUI14ViewController_viewModel])
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v3 = v1;

      static Published.subscript.getter();

      v4 = v43;
    }

    else
    {
      v5 = v1;
      v4 = 0;
    }

    if (qword_10001D350 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000468C(v6, qword_10001E380);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v43 = v10;
      *v9 = 136315138;
      if (v4)
      {
        v11 = 0x656661736E75;
      }

      else
      {
        v11 = 1701208435;
      }

      if (v4)
      {
        v12 = 0xE600000000000000;
      }

      else
      {
        v12 = 0xE400000000000000;
      }

      v13 = sub_100004740(v11, v12, &v43);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "User pressed dismiss button at %s distance. Replying back to eyereliefd", v9, 0xCu);
      sub_100004CE8(v10);
    }

    v14 = *&a1[OBJC_IVAR____TtC11EyeReliefUI14ViewController_shieldIntervention];
    if (v14)
    {
      v15 = [v14 view];
      if (v15)
      {
        v16 = v15;
        v17 = [v15 layer];

        v18 = objc_opt_self();
        v19 = [v18 mainScreen];
        v20 = [v19 traitCollection];

        [v20 displayCornerRadius];
        v22 = v21;

        [v17 setCornerRadius:v22];
        v23 = [v18 mainScreen];
        [v23 bounds];
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;

        v49.origin.x = v25;
        v49.origin.y = v27;
        v49.size.width = v29;
        v49.size.height = v31;
        Height = CGRectGetHeight(v49);
        v50.origin.x = v25;
        v50.origin.y = v27;
        v50.size.width = v29;
        v50.size.height = v31;
        Width = CGRectGetWidth(v50);
        v51.origin.x = v25;
        v51.origin.y = v27;
        v51.size.width = v29;
        v51.size.height = v31;
        v34 = CGRectGetHeight(v51);
        v35 = objc_opt_self();
        v36 = swift_allocObject();
        *(v36 + 2) = a1;
        v36[3] = 0.0;
        v36[4] = Height;
        v36[5] = Width;
        v36[6] = v34;
        v47 = sub_1000046C4;
        v48 = v36;
        v43 = _NSConcreteStackBlock;
        v44 = 1107296256;
        v45 = sub_1000059C4;
        v46 = &unk_100018DC0;
        v37 = _Block_copy(&v43);
        v38 = a1;

        v39 = swift_allocObject();
        *(v39 + 16) = v1;
        *(v39 + 24) = v38;
        *(v39 + 32) = v4;
        v47 = sub_100004734;
        v48 = v39;
        v43 = _NSConcreteStackBlock;
        v44 = 1107296256;
        v45 = sub_1000031A4;
        v46 = &unk_100018E10;
        v40 = _Block_copy(&v43);
        v41 = v1;
        v42 = v38;

        [v35 _animateUsingSpringWithTension:0 friction:v37 interactive:v40 animations:200.0 completion:30.0];
        _Block_release(v40);
        _Block_release(v37);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

id sub_100003050(_BYTE *a1, double a2, double a3, double a4, double a5)
{
  result = *&a1[OBJC_IVAR____TtC11EyeReliefUI14ViewController_shieldIntervention];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = [result view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v11 = result;
  [result setFrame:{a2, a3, a4, a5}];

  a1[OBJC_IVAR____TtC11EyeReliefUI14ViewController_shouldHideStatusBar] = 1;

  return [a1 setNeedsStatusBarAppearanceUpdate];
}

void sub_100003110(int a1, int a2, id a3, uint64_t a4, char a5)
{
  if ([a3 canSendResponse])
  {
    sub_100005294(a3, (a5 & 1) == 0);
  }

  v7 = [objc_opt_self() sharedApplication];
  [v7 terminateWithSuccess];
}

uint64_t sub_1000031A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

void sub_100003204(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v5 = *(a1 + OBJC_IVAR____TtC11EyeReliefUI14ViewController_shieldIntervention);
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v11 = [v5 view];
  if (!v11)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v13.origin.x = a2;
  v13.origin.y = a3;
  v13.size.width = a4;
  v13.size.height = a5;
  Width = CGRectGetWidth(v13);
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  [v11 setFrame:{0.0, 0.0, Width, CGRectGetHeight(v14)}];
}

void sub_1000032DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + OBJC_IVAR____TtC11EyeReliefUI14ViewController_shieldIntervention);
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = [v3 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = [v4 layer];

  [v6 setCornerRadius:0.0];
}

void sub_100003378()
{
  v1 = OBJC_IVAR____TtC11EyeReliefUI14ViewController_shieldIntervention;
  v2 = *&v0[OBJC_IVAR____TtC11EyeReliefUI14ViewController_shieldIntervention];
  if (!v2)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = [v2 view];
  if (!v3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = v3;
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = *&v0[v1];
  if (!v5)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = [v5 view];
  if (!v6)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = v6;
  v8 = [v6 topAnchor];

  v9 = [v0 view];
  if (!v9)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = v9;
  v11 = [v9 topAnchor];

  v12 = [v8 constraintEqualToAnchor:v11];
  [v12 setActive:1];

  v13 = *&v0[v1];
  if (!v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = [v13 view];
  if (!v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = v14;
  v16 = [v14 bottomAnchor];

  v17 = [v0 view];
  if (!v17)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v18 = v17;
  v19 = [v17 bottomAnchor];

  v20 = [v16 constraintEqualToAnchor:v19];
  [v20 setActive:1];

  v21 = *&v0[v1];
  if (!v21)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v22 = [v21 view];
  if (!v22)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v23 = v22;
  v24 = [v22 leftAnchor];

  v25 = [v0 view];
  if (!v25)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v26 = v25;
  v27 = [v25 leftAnchor];

  v28 = [v24 constraintEqualToAnchor:v27];
  [v28 setActive:1];

  v29 = *&v0[v1];
  if (!v29)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v30 = [v29 view];
  if (!v30)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v31 = v30;
  v32 = [v30 rightAnchor];

  v33 = [v0 view];
  if (!v33)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v34 = v33;
  v35 = [v33 rightAnchor];

  v36 = [v32 constraintEqualToAnchor:v35];
  [v36 setActive:1];
}

void sub_1000036E4(void *a1, void (*a2)(id))
{
  v3 = v2;
  if ([v3 _remoteViewControllerProxy])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100004D34(v24, v22);
    sub_100004544(&qword_10001D450, &qword_100010610);
    swift_dynamicCast();
    [v23[0] setReachabilityDisabled:1];
    swift_unknownObjectRelease();
    sub_100004D34(v24, v22);
    swift_dynamicCast();
    [v23[0] setAllowsAlertStacking:1];
    swift_unknownObjectRelease();
    sub_100004D34(v24, v22);
    swift_dynamicCast();
    [v23[0] setWallpaperTunnelActive:1];
    swift_unknownObjectRelease();
    v3[OBJC_IVAR____TtC11EyeReliefUI14ViewController_interventionType] = 1;
    if (!a1)
    {
      __break(1u);
      return;
    }

    v6 = [a1 userInfo];
    if (v6)
    {
      v7 = v6;
      v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      AnyHashable.init<A>(_:)();
      if (*(v8 + 16))
      {
        v9 = sub_100004D94(v22);
        if (v10)
        {
          sub_100004D34(*(v8 + 56) + 32 * v9, v23);
          sub_100005434(v22);

          sub_100004D34(v23, v22);
          if (swift_dynamicCast())
          {
            v11 = 0xD000000000000012;
            v12 = OBJC_IVAR____TtC11EyeReliefUI14ViewController_tooCloseDistanceThreshold;
          }

          else
          {
            v12 = OBJC_IVAR____TtC11EyeReliefUI14ViewController_tooCloseDistanceThreshold;
            v11 = *&v3[OBJC_IVAR____TtC11EyeReliefUI14ViewController_tooCloseDistanceThreshold];
          }

          *&v3[v12] = v11;
          if (qword_10001D350 != -1)
          {
            swift_once();
          }

          v16 = type metadata accessor for Logger();
          sub_10000468C(v16, qword_10001E380);
          v17 = v3;
          v18 = Logger.logObject.getter();
          v19 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v18, v19))
          {
            v20 = swift_slowAlloc();
            *v20 = 134217984;
            *(v20 + 4) = *&v3[v12];
            _os_log_impl(&_mh_execute_header, v18, v19, "Setting distance threshold to %f mm", v20, 0xCu);
          }

          v6 = sub_100004CE8(v23);
          if (!a2)
          {
            goto LABEL_23;
          }

          goto LABEL_16;
        }
      }

      v6 = sub_100005434(v22);
    }

    if (!a2)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_16:
    a2(v6);
    sub_100004CE8(v24);
    return;
  }

  if (qword_10001D350 != -1)
  {
LABEL_24:
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000468C(v13, qword_10001E380);
  oslog = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v14, "configureWithContext: Failed to instantiate remote VC proxy", v15, 2u);
  }
}

void sub_100003C14(void *a1, void (*a2)(uint64_t))
{
  if (!a1)
  {
    goto LABEL_19;
  }

  v5 = [a1 actions];
  sub_1000055B4(0, &qword_10001D3D8, BSAction_ptr);
  sub_1000053C4();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *(v6 + 16);
  }

  if (v7)
  {
    v9 = [a1 actions];
    v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = sub_100004EA0(v10);

    if ((v11 & 0x8000000000000000) != 0 || (v11 & 0x4000000000000000) != 0)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_9;
      }
    }

    else if (*(v11 + 16))
    {
LABEL_9:
      if ((v11 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_12;
      }

      if (*(v11 + 16))
      {
        v12 = *(v11 + 32);
LABEL_12:
        v13 = v12;

        v14 = *(v2 + OBJC_IVAR____TtC11EyeReliefUI14ViewController_interventionResponseAction);
        *(v2 + OBJC_IVAR____TtC11EyeReliefUI14ViewController_interventionResponseAction) = v13;

        goto LABEL_13;
      }

      goto LABEL_18;
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_13:
  if (a2)
  {
    a2(v8);
    return;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_100003EB4()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [result window];

    if (v3 && (v4 = [v3 windowScene], v3, v4) && (v5 = objc_msgSend(v4, "interfaceOrientation"), v4, (v5 - 3) <= 1) && (v6 = objc_msgSend(objc_opt_self(), "currentDevice"), v7 = objc_msgSend(v6, "userInterfaceIdiom"), v6, !v7))
    {
      return 1;
    }

    else
    {
      return v0[OBJC_IVAR____TtC11EyeReliefUI14ViewController_shouldHideStatusBar];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100004024(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC11EyeReliefUI14ViewController_interventionResponseAction] = 0;
  *&v3[OBJC_IVAR____TtC11EyeReliefUI14ViewController_shieldIntervention] = 0;
  v3[OBJC_IVAR____TtC11EyeReliefUI14ViewController_interventionType] = 3;
  *&v3[OBJC_IVAR____TtC11EyeReliefUI14ViewController_tooCloseDistanceThreshold] = 0x4072C00000000000;
  *&v3[OBJC_IVAR____TtC11EyeReliefUI14ViewController_distanceStreaming] = 0;
  *&v3[OBJC_IVAR____TtC11EyeReliefUI14ViewController_viewModel] = 0;
  *&v3[OBJC_IVAR____TtC11EyeReliefUI14ViewController_isSafeDistanceTimer] = 0;
  v3[OBJC_IVAR____TtC11EyeReliefUI14ViewController_shouldHideStatusBar] = 0;
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for ViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id sub_100004170(void *a1)
{
  *&v1[OBJC_IVAR____TtC11EyeReliefUI14ViewController_interventionResponseAction] = 0;
  *&v1[OBJC_IVAR____TtC11EyeReliefUI14ViewController_shieldIntervention] = 0;
  v1[OBJC_IVAR____TtC11EyeReliefUI14ViewController_interventionType] = 3;
  *&v1[OBJC_IVAR____TtC11EyeReliefUI14ViewController_tooCloseDistanceThreshold] = 0x4072C00000000000;
  *&v1[OBJC_IVAR____TtC11EyeReliefUI14ViewController_distanceStreaming] = 0;
  *&v1[OBJC_IVAR____TtC11EyeReliefUI14ViewController_viewModel] = 0;
  *&v1[OBJC_IVAR____TtC11EyeReliefUI14ViewController_isSafeDistanceTimer] = 0;
  v1[OBJC_IVAR____TtC11EyeReliefUI14ViewController_shouldHideStatusBar] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100004264()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for InterventionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InterventionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000044B0()
{
  result = qword_10001D3C0;
  if (!qword_10001D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D3C0);
  }

  return result;
}

uint64_t sub_100004504()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004544(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000458C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000045DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_1000045FC(uint64_t a1, uint64_t a2)
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

  sub_100004544(&qword_10001D3E8, &unk_100010600);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_10000468C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000046F4()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100004740(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000480C(v11, 0, 0, 1, a1, a2);
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
    sub_100004D34(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004CE8(v11);
  return v7;
}

unint64_t sub_10000480C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100004918(a5, a6);
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

char *sub_100004918(uint64_t a1, unint64_t a2)
{
  v4 = sub_100004964(a1, a2);
  sub_100004A94(&off_100018C18);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100004964(uint64_t a1, unint64_t a2)
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

  v6 = sub_100004B80(v5, 0);
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
        v7 = sub_100004B80(v10, 0);
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

uint64_t sub_100004A94(uint64_t result)
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

  result = sub_100004BF4(result, v12, 1, v3);
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

void *sub_100004B80(uint64_t a1, uint64_t a2)
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

  sub_100004544(&qword_10001D3D0, &qword_1000105F8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100004BF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004544(&qword_10001D3D0, &qword_1000105F8);
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

uint64_t sub_100004CE8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100004D34(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100004D94(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100004DD8(a1, v4);
}

unint64_t sub_100004DD8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100005488(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100005434(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void *sub_100004EA0(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_1000045FC(v2, 0);

    v1 = sub_100004F50(&v5, v3 + 4, v2, v1);
    sub_10000542C();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  return v3;
}

id sub_100004F50(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  sub_1000055B4(0, &qword_10001D3D8, BSAction_ptr);
  sub_1000053C4();
  result = Set.Iterator.init(_cocoa:)();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      sub_1000055B4(0, &qword_10001D3D8, BSAction_ptr);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

uint64_t sub_10000516C()
{
  if (v0[OBJC_IVAR____TtC11EyeReliefUI14ViewController_interventionType] == 1)
  {
    sub_100002518();
  }

  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = *&v0[OBJC_IVAR____TtC11EyeReliefUI14ViewController_tooCloseDistanceThreshold];
  type metadata accessor for DistanceStreaming();
  swift_allocObject();
  v4 = v0;
  sub_10000DC70(sub_1000055A4, v1, sub_1000055AC, v2, v3);
  v5 = *&v4[OBJC_IVAR____TtC11EyeReliefUI14ViewController_distanceStreaming];
  *&v4[OBJC_IVAR____TtC11EyeReliefUI14ViewController_distanceStreaming] = v6;

  sub_10000E554();
}

void sub_100005294(void *a1, uint64_t a2)
{
  v6 = [objc_allocWithZone(BSMutableSettings) init];
  [v6 setFlag:a2 forSetting:0];
  v4 = [objc_opt_self() responseWithInfo:v6];
  if ([a1 canSendResponse])
  {
    v5 = v4;
    [a1 sendResponse:v5];
  }
}

uint64_t sub_10000536C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000537C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000053C4()
{
  result = qword_10001D3E0;
  if (!qword_10001D3E0)
  {
    sub_1000055B4(255, &qword_10001D3D8, BSAction_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D3E0);
  }

  return result;
}

void sub_1000054E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC11EyeReliefUI14ViewController_interventionResponseAction);
  if (v1)
  {
    v2 = v1;
    if ([v2 canSendResponse])
    {
      sub_100005294(v2, 0x7FFFFFFFFFFFFFFFLL);
    }
  }

  if (*(v0 + OBJC_IVAR____TtC11EyeReliefUI14ViewController_shieldIntervention))
  {
    v3 = [objc_opt_self() sharedApplication];
    [v3 terminateWithSuccess];
  }
}

uint64_t sub_1000055B4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_100005604()
{
  result = qword_10001D460;
  if (!qword_10001D460)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D460);
  }

  return result;
}

unint64_t sub_10000565C()
{
  result = qword_10001D470;
  if (!qword_10001D470)
  {
    sub_1000056C0(&qword_10001D468, &qword_100010618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D470);
  }

  return result;
}

uint64_t sub_1000056C0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100005708()
{

  return _swift_deallocObject(v0, 32, 7);
}

__n128 sub_100005754(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100005760(uint64_t a1, int a2)
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

uint64_t sub_100005780(uint64_t result, int a2, int a3)
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

__n128 sub_1000057C0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000057CC(uint64_t a1, int a2)
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

uint64_t sub_1000057EC(uint64_t result, int a2, int a3)
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

void sub_10000583C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1000058E0()
{
  v0 = type metadata accessor for Logger();
  sub_100005960(v0, qword_10001E380);
  sub_10000468C(v0, qword_10001E380);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_100005960(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1000059C4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100005A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = (__chkstk_darwin)();
  v50 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v51 = &v50 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v50 - v16;
  __chkstk_darwin(v15);
  v19 = &v50 - v18;
  v53 = 0;
  State.init(wrappedValue:)();
  v20 = v55;
  *(a4 + 16) = v54;
  *(a4 + 24) = v20;
  v53 = 0;
  State.init(wrappedValue:)();
  v21 = v55;
  *(a4 + 32) = v54;
  *(a4 + 40) = v21;
  v53 = 0;
  State.init(wrappedValue:)();
  v22 = v55;
  *(a4 + 48) = v54;
  *(a4 + 56) = v22;
  *(a4 + 80) = a2;
  *(a4 + 88) = a3;
  type metadata accessor for InterventionViewModel(0);
  sub_10000785C(&qword_10001D7F8, type metadata accessor for InterventionViewModel);

  v52 = a1;
  *(a4 + 64) = ObservedObject.init(wrappedValue:)();
  *(a4 + 72) = v23;
  v24 = type metadata accessor for ShieldConfiguration(0);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v27 = swift_allocObject();
  sub_1000069A0();
  *a4 = v27;
  *(a4 + 8) = 0;
  v28 = objc_opt_self();
  v29 = [v28 mainBundle];
  v30 = String._bridgeToObjectiveC()();
  v31 = String._bridgeToObjectiveC()();
  v32 = [v29 URLForResource:v30 withExtension:v31];

  if (v32)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v33 = *(v9 + 32);
    v33(v19, v17, v8);
    v34 = (a4 + *(type metadata accessor for ShieldIntervention(0) + 40));
    v33(v34, v19, v8);
    v35 = type metadata accessor for VideoPlayerUIViewWrapper(0);
    v34[*(v35 + 20)] = 1;
    (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  }

  else
  {
    v36 = *(type metadata accessor for ShieldIntervention(0) + 40);
    v37 = type metadata accessor for VideoPlayerUIViewWrapper(0);
    (*(*(v37 - 8) + 56))(a4 + v36, 1, 1, v37);
  }

  v38 = [v28 mainBundle];
  v39 = String._bridgeToObjectiveC()();
  v40 = String._bridgeToObjectiveC()();
  v41 = [v38 URLForResource:v39 withExtension:v40];

  if (v41)
  {
    v42 = v50;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v43 = *(v9 + 32);
    v44 = v51;
    v43(v51, v42, v8);
    v45 = (a4 + *(type metadata accessor for ShieldIntervention(0) + 44));
    v43(v45, v44, v8);
    v46 = type metadata accessor for VideoPlayerUIViewWrapper(0);
    v45[*(v46 + 20)] = 0;
    return (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
  }

  else
  {

    v48 = *(type metadata accessor for ShieldIntervention(0) + 44);
    v49 = type metadata accessor for VideoPlayerUIViewWrapper(0);
    return (*(*(v49 - 8) + 56))(a4 + v48, 1, 1, v49);
  }
}

char *sub_100005F18(char *a1, char a2, double a3, double a4, double a5, double a6)
{
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC11EyeReliefUI17VideoPlayerUIView_videoLayer;
  *&v6[v18] = [objc_allocWithZone(AVPlayerLayer) init];
  *&v6[OBJC_IVAR____TtC11EyeReliefUI17VideoPlayerUIView_videoLooper] = 0;
  v19 = type metadata accessor for VideoPlayerUIView();
  v35.receiver = v6;
  v35.super_class = v19;
  v20 = objc_msgSendSuper2(&v35, "initWithFrame:", a3, a4, a5, a6);
  (*(v14 + 16))(v17, a1, v13);
  v21 = objc_allocWithZone(AVPlayerItem);
  v22 = v20;
  URL._bridgeToObjectiveC()(v23);
  v25 = v24;
  v26 = [v21 initWithURL:v24];

  v27 = *(v14 + 8);
  v27(v17, v13);
  v28 = [objc_allocWithZone(AVQueuePlayer) init];
  [v28 setPreventsDisplaySleepDuringVideoPlayback:0];
  [v28 _setParticipatesInAudioSession:0];
  [v28 insertItem:v26 afterItem:0];
  if (a2)
  {
    v29 = [objc_opt_self() playerLooperWithPlayer:v28 templateItem:v26];
    v30 = *&v22[OBJC_IVAR____TtC11EyeReliefUI17VideoPlayerUIView_videoLooper];
    *&v22[OBJC_IVAR____TtC11EyeReliefUI17VideoPlayerUIView_videoLooper] = v29;
  }

  else
  {
    [v28 setActionAtItemEnd:2];
  }

  v31 = OBJC_IVAR____TtC11EyeReliefUI17VideoPlayerUIView_videoLayer;
  v32 = *&v22[OBJC_IVAR____TtC11EyeReliefUI17VideoPlayerUIView_videoLayer];
  [v32 setPlayer:v28];

  v33 = [v22 layer];
  [v33 addSublayer:*&v22[v31]];

  [v28 play];
  v27(a1, v13);
  return v22;
}

id sub_100006354()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoPlayerUIView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_1000063F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v2);
  LOBYTE(a2) = *(v2 + *(a2 + 20));
  v9 = objc_allocWithZone(type metadata accessor for VideoPlayerUIView());
  return sub_100005F18(v7, a2, 0.0, 0.0, 0.0, 0.0);
}

uint64_t sub_10000652C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000785C(&qword_10001DB80, type metadata accessor for VideoPlayerUIViewWrapper);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000065C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000785C(&qword_10001DB80, type metadata accessor for VideoPlayerUIViewWrapper);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100006654()
{
  sub_10000785C(&qword_10001DB80, type metadata accessor for VideoPlayerUIViewWrapper);
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_1000066AC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100006720()
{
  v1 = OBJC_IVAR____TtC11EyeReliefUI21InterventionViewModel__isTooClose;
  v2 = sub_100004544(&qword_10001DB90, &qword_100010D78);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

void sub_1000067F0()
{
  sub_1000073E4(319, &unk_10001D508, &type metadata for Bool, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000068A4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for InterventionViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100006934()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1000069A0()
{
  v1 = v0;
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 model];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = String.uppercased()();

  String.append(_:)(v4);
  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v26._object = 0x80000001000113E0;
  v7._countAndFlagsBits = 0xD000000000000017;
  v7._object = 0x80000001000113C0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v26._countAndFlagsBits = 0xD00000000000002ELL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v26);

  static String.localizedStringWithFormat(_:_:)();

  swift_beginAccess();
  Published.init(initialValue:)();
  swift_endAccess();
  String.append(_:)(v4);
  v9 = [v5 mainBundle];
  v27._object = 0x8000000100011430;
  v27._countAndFlagsBits = 0xD000000000000034;
  v10._countAndFlagsBits = 0xD00000000000001ALL;
  v10._object = 0x8000000100011410;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v27);

  static String.localizedStringWithFormat(_:_:)();

  swift_beginAccess();
  Published.init(initialValue:)();
  swift_endAccess();
  v12 = [v5 mainBundle];
  v13._countAndFlagsBits = 0xD000000000000014;
  v28._object = 0x8000000100011490;
  v13._object = 0x8000000100011470;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0xD00000000000002ELL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v28);

  static String.localizedStringWithFormat(_:_:)();

  swift_beginAccess();
  Published.init(initialValue:)();
  swift_endAccess();
  String.append(_:)(v4);

  v15 = [v5 mainBundle];
  v29._object = 0x80000001000114E0;
  v29._countAndFlagsBits = 0xD000000000000031;
  v16._countAndFlagsBits = 0xD000000000000018;
  v16._object = 0x80000001000114C0;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v29);

  static String.localizedStringWithFormat(_:_:)();

  swift_beginAccess();
  Published.init(initialValue:)();
  swift_endAccess();
  v18 = [v5 mainBundle];
  v30._countAndFlagsBits = 0xD000000000000027;
  v30._object = 0x8000000100011520;
  v19._countAndFlagsBits = 0x45554E49544E4F43;
  v19._object = 0xE800000000000000;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v30);

  v21 = static String.localizedStringWithFormat(_:_:)();
  v23 = v22;

  v24 = (v1 + OBJC_IVAR____TtC11EyeReliefUI19ShieldConfiguration_continueButtonTitleString);
  *v24 = v21;
  v24[1] = v23;
  return v1;
}

uint64_t sub_100006EC8()
{
  v1 = OBJC_IVAR____TtC11EyeReliefUI19ShieldConfiguration__titleString;
  v2 = sub_100004544(&qword_10001DB88, &qword_100010D70);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11EyeReliefUI19ShieldConfiguration__successTitleString, v2);
  v3(v0 + OBJC_IVAR____TtC11EyeReliefUI19ShieldConfiguration__successSubtitleString, v2);
  v3(v0 + OBJC_IVAR____TtC11EyeReliefUI19ShieldConfiguration__subtitleString, v2);
  v4 = *(v0 + OBJC_IVAR____TtC11EyeReliefUI19ShieldConfiguration_continueButtonTitleString + 8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

void sub_100007014()
{
  sub_1000073E4(319, &unk_10001D610, &type metadata for String, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000070EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100004544(&qword_10001D770, &unk_100010720);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_1000071BC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100004544(&qword_10001D770, &unk_100010720);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10000728C()
{
  sub_10000752C(319, &qword_10001D7E0, type metadata accessor for ShieldConfiguration, &type metadata accessor for State);
  if (v0 <= 0x3F)
  {
    sub_1000073E4(319, &qword_10001D7E8, &type metadata for Bool, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_100007434();
      if (v2 <= 0x3F)
      {
        sub_1000074C8();
        if (v3 <= 0x3F)
        {
          sub_10000752C(319, &unk_10001D810, type metadata accessor for VideoPlayerUIViewWrapper, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000073E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100007434()
{
  if (!qword_10001D7F0)
  {
    type metadata accessor for InterventionViewModel(255);
    sub_10000785C(&qword_10001D7F8, type metadata accessor for InterventionViewModel);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_10001D7F0);
    }
  }
}

void sub_1000074C8()
{
  if (!qword_10001D800)
  {
    sub_1000056C0(&qword_10001D808, ":+");
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10001D800);
    }
  }
}

void sub_10000752C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1000075B0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000075FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000076DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_100007794()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10000785C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000078C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_100004544(&qword_10001DB78, &qword_100010C58);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v26 - v12;
  v14 = type metadata accessor for Font.TextStyle();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v26 = swift_getKeyPath();
  a3 &= 1u;
  v29 = a3;
  v28 = 1;
  (*(v15 + 104))(v18, enum case for Font.TextStyle.largeTitle(_:), v14);
  v19 = type metadata accessor for Font.Design();
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  sub_10000D868(a1, a2, a3);

  static Font.system(_:design:weight:)();
  sub_10000D634(v13, &qword_10001DB78, &qword_100010C58);
  (*(v15 + 8))(v18, v14);
  v20 = Font.bold()();

  v21 = swift_getKeyPath();
  v22 = static Color.primary.getter();
  result = swift_getKeyPath();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  v24 = v26;
  v25 = KeyPath;
  *(a5 + 24) = a4;
  *(a5 + 32) = v25;
  *(a5 + 40) = 0;
  *(a5 + 48) = 1;
  *(a5 + 56) = v24;
  *(a5 + 64) = 1;
  *(a5 + 72) = v21;
  *(a5 + 80) = v20;
  *(a5 + 88) = result;
  *(a5 + 96) = v22;
  *(a5 + 104) = 0x4000000000000000;
  return result;
}

uint64_t sub_100007B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_100004544(&qword_10001DB78, &qword_100010C58);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v26 - v12;
  v14 = type metadata accessor for Font.TextStyle();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v26 = swift_getKeyPath();
  a3 &= 1u;
  v29 = a3;
  v28 = 1;
  (*(v15 + 104))(v18, enum case for Font.TextStyle.body(_:), v14);
  v19 = type metadata accessor for Font.Design();
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  sub_10000D868(a1, a2, a3);

  v20 = static Font.system(_:design:weight:)();
  sub_10000D634(v13, &qword_10001DB78, &qword_100010C58);
  (*(v15 + 8))(v18, v14);
  v21 = swift_getKeyPath();
  v22 = static Color.primary.getter();
  result = swift_getKeyPath();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  v24 = v26;
  v25 = KeyPath;
  *(a5 + 24) = a4;
  *(a5 + 32) = v25;
  *(a5 + 40) = 0;
  *(a5 + 48) = 1;
  *(a5 + 56) = v24;
  *(a5 + 64) = 1;
  *(a5 + 72) = v21;
  *(a5 + 80) = v20;
  *(a5 + 88) = result;
  *(a5 + 96) = v22;
  *(a5 + 104) = 0x4000000000000000;
  return result;
}

id sub_100007DAC()
{
  v0 = objc_allocWithZone(UIVisualEffectView);

  return [v0 init];
}

uint64_t sub_100007E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000DAB4();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100007E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000DAB4();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100007EE4()
{
  sub_10000DAB4();
  UIViewRepresentable.body.getter();
  __break(1u);
}

void sub_100007F0C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100004544(&qword_10001D908, &qword_1000108F8);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  v11 = [objc_opt_self() effectWithStyle:9];
  v12 = static Edge.Set.all.getter();
  *v10 = static VerticalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v13 = sub_100004544(&qword_10001D910, &qword_100010900);
  sub_10000809C(a1, &v10[*(v13 + 44)]);
  sub_10000D5CC(v10, v8, &qword_10001D908, &qword_1000108F8);
  *a2 = v11;
  *(a2 + 8) = v12;
  v14 = sub_100004544(&qword_10001D918, &qword_100010908);
  sub_10000D5CC(v8, a2 + *(v14 + 48), &qword_10001D908, &qword_1000108F8);
  v15 = v11;
  sub_10000D634(v10, &qword_10001D908, &qword_1000108F8);
  sub_10000D634(v8, &qword_10001D908, &qword_1000108F8);
}

uint64_t sub_10000809C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100004544(&qword_10001D920, &qword_100010910);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v15 - v9;
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = 0x4032000000000000;
  v10[16] = 0;
  v11 = sub_100004544(&qword_10001D928, &qword_100010918);
  sub_100008208(a1, &v10[*(v11 + 44)]);
  sub_10000D5CC(v10, v8, &qword_10001D920, &qword_100010910);
  *a2 = 0x4040000000000000;
  *(a2 + 8) = 0;
  v12 = sub_100004544(&qword_10001D930, &qword_100010920);
  sub_10000D5CC(v8, a2 + *(v12 + 48), &qword_10001D920, &qword_100010910);
  v13 = a2 + *(v12 + 64);
  *v13 = 0x4040000000000000;
  *(v13 + 8) = 0;
  sub_10000D634(v10, &qword_10001D920, &qword_100010910);
  return sub_10000D634(v8, &qword_10001D920, &qword_100010910);
}

uint64_t sub_100008208@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v466 = a1;
  v465 = a2;
  v464 = sub_100004544(&qword_10001D938, &qword_100010928);
  v463 = *(v464 - 8);
  v2 = *(v463 + 64);
  __chkstk_darwin(v464);
  v457 = v381 - v3;
  v456 = sub_100004544(&qword_10001D940, &qword_100010930);
  v4 = *(*(v456 - 8) + 64);
  __chkstk_darwin(v456);
  v438 = v381 - v5;
  v415 = sub_100004544(&qword_10001D948, &qword_100010938);
  v6 = *(*(v415 - 8) + 64);
  __chkstk_darwin(v415);
  v417 = v381 - v7;
  v416 = sub_100004544(&qword_10001D950, &qword_100010940);
  v8 = *(*(v416 - 8) + 64);
  __chkstk_darwin(v416);
  v419 = v381 - v9;
  v418 = sub_100004544(&qword_10001D958, &qword_100010948);
  v10 = *(*(v418 - 8) + 64);
  __chkstk_darwin(v418);
  v421 = v381 - v11;
  v420 = sub_100004544(&qword_10001D960, &qword_100010950);
  v12 = *(*(v420 - 8) + 64);
  __chkstk_darwin(v420);
  v423 = v381 - v13;
  v427 = sub_100004544(&qword_10001D968, &qword_100010958);
  v14 = *(*(v427 - 8) + 64);
  __chkstk_darwin(v427);
  v428 = v381 - v15;
  v16 = sub_100004544(&qword_10001D970, &qword_100010960);
  v432 = *(v16 - 8);
  v433 = v16;
  v17 = *(v432 + 64);
  __chkstk_darwin(v16);
  v430 = v381 - v18;
  v422 = sub_100004544(&qword_10001D978, &qword_100010968);
  v19 = *(*(v422 - 8) + 64);
  __chkstk_darwin(v422);
  v434 = v381 - v20;
  v431 = sub_100004544(&qword_10001D980, &qword_100010970);
  v429 = *(v431 - 8);
  v21 = *(v429 + 64);
  __chkstk_darwin(v431);
  v425 = v381 - v22;
  v426 = sub_100004544(&qword_10001D988, &qword_100010978);
  v23 = *(*(v426 - 8) + 64);
  v24 = __chkstk_darwin(v426);
  v436 = v381 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v424 = v381 - v27;
  __chkstk_darwin(v26);
  v447 = v381 - v28;
  v439 = sub_100004544(&qword_10001D990, &qword_100010980);
  v394 = *(v439 - 1);
  v29 = *(v394 + 64);
  __chkstk_darwin(v439);
  v390 = v381 - v30;
  v31 = sub_100004544(&qword_10001D998, &qword_100010988);
  v32 = *(*(v31 - 8) + 64);
  v33 = __chkstk_darwin(v31 - 8);
  v446 = v381 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v459 = v381 - v35;
  v453 = sub_100004544(&qword_10001D9A0, &qword_100010990);
  v36 = *(*(v453 - 8) + 64);
  __chkstk_darwin(v453);
  v455 = v381 - v37;
  v454 = sub_100004544(&qword_10001D9A8, &qword_100010998);
  v38 = *(*(v454 - 8) + 64);
  __chkstk_darwin(v454);
  v437 = v381 - v39;
  v450 = type metadata accessor for BorderedProminentButtonStyle();
  v449 = *(v450 - 8);
  v40 = *(v449 + 64);
  __chkstk_darwin(v450);
  v448 = v381 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v395 = sub_100004544(&qword_10001D9B0, &qword_1000109A0);
  v42 = *(*(v395 - 8) + 64);
  __chkstk_darwin(v395);
  v397 = v381 - v43;
  v396 = sub_100004544(&qword_10001D9B8, &qword_1000109A8);
  v44 = *(*(v396 - 8) + 64);
  __chkstk_darwin(v396);
  v399 = v381 - v45;
  v398 = sub_100004544(&qword_10001D9C0, &qword_1000109B0);
  v46 = *(*(v398 - 8) + 64);
  __chkstk_darwin(v398);
  v401 = v381 - v47;
  v400 = sub_100004544(&qword_10001D9C8, &qword_1000109B8);
  v48 = *(*(v400 - 8) + 64);
  __chkstk_darwin(v400);
  v403 = v381 - v49;
  v407 = sub_100004544(&qword_10001D9D0, &qword_1000109C0);
  v50 = *(*(v407 - 8) + 64);
  __chkstk_darwin(v407);
  v409 = v381 - v51;
  v414 = sub_100004544(&qword_10001D9D8, &qword_1000109C8);
  v412 = *(v414 - 8);
  v52 = *(v412 + 64);
  __chkstk_darwin(v414);
  v411 = v381 - v53;
  v402 = sub_100004544(&qword_10001D9E0, &qword_1000109D0);
  v54 = *(*(v402 - 8) + 64);
  __chkstk_darwin(v402);
  v413 = v381 - v55;
  v410 = sub_100004544(&qword_10001D9E8, &qword_1000109D8);
  v408 = *(v410 - 8);
  v56 = *(v408 + 64);
  __chkstk_darwin(v410);
  v405 = v381 - v57;
  v406 = sub_100004544(&qword_10001D9F0, &qword_1000109E0);
  v58 = *(*(v406 - 8) + 64);
  v59 = __chkstk_darwin(v406);
  v435 = v381 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __chkstk_darwin(v59);
  v404 = v381 - v62;
  __chkstk_darwin(v61);
  v445 = v381 - v63;
  v64 = type metadata accessor for ShieldIntervention(0);
  v65 = *(v64 - 8);
  v442 = v64;
  v443 = v65;
  v66 = *(v65 + 64);
  __chkstk_darwin(v64);
  v460 = v67;
  v461 = v381 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v384 = sub_100004544(&qword_10001D9F8, &qword_1000109E8);
  v68 = *(*(v384 - 8) + 64);
  __chkstk_darwin(v384);
  v386 = v381 - v69;
  v385 = sub_100004544(&qword_10001DA00, &qword_1000109F0);
  v70 = *(*(v385 - 8) + 64);
  __chkstk_darwin(v385);
  v389 = v381 - v71;
  v72 = sub_100004544(&qword_10001DA08, &qword_1000109F8);
  v392 = *(v72 - 8);
  v393 = v72;
  v73 = *(v392 + 64);
  v74 = __chkstk_darwin(v72);
  v388 = v381 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v74);
  v387 = v381 - v76;
  v77 = sub_100004544(&qword_10001D770, &unk_100010720);
  v78 = *(*(v77 - 8) + 64);
  v79 = __chkstk_darwin(v77 - 8);
  v81 = v381 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v79);
  v83 = v381 - v82;
  v84 = type metadata accessor for VideoPlayerUIViewWrapper(0);
  v440 = *(v84 - 8);
  v441 = v84;
  v85 = *(v440 + 64);
  v86 = __chkstk_darwin(v84);
  v382 = v381 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v86);
  v383 = v381 - v88;
  v89 = sub_100004544(&qword_10001DA10, &qword_100010A00);
  v90 = *(*(v89 - 8) + 64);
  v91 = __chkstk_darwin(v89 - 8);
  v444 = v381 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v91);
  v458 = v381 - v93;
  v94 = sub_100004544(&qword_10001DA18, &qword_100010A08);
  v95 = *(*(v94 - 8) + 64);
  v96 = __chkstk_darwin(v94 - 8);
  v452 = v381 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v96);
  v451 = v381 - v98;
  v99 = sub_100004544(&qword_10001DA20, &qword_100010A10);
  v100 = *(*(v99 - 8) + 64);
  v101 = __chkstk_darwin(v99 - 8);
  v462 = v381 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v101);
  v104 = v381 - v103;
  v105 = objc_opt_self();
  v106 = [v105 currentDevice];
  v381[2] = [v106 userInterfaceIdiom];

  v107 = [v105 currentDevice];
  v381[1] = [v107 userInterfaceIdiom];

  v108 = [v105 currentDevice];
  [v108 userInterfaceIdiom];

  v109 = [v105 currentDevice];
  v110 = v104;
  [v109 userInterfaceIdiom];

  v111 = v466;
  v112 = *(v466 + 24);
  LOBYTE(v543) = *(v466 + 16);
  *(&v543 + 1) = v112;
  v113 = sub_100004544(&qword_10001D900, &qword_1000108F0);
  State.wrappedValue.getter();
  v114 = 1;
  if (v520 == 1)
  {
    v391 = v113;
    v115 = *(v111 + 72);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v116 = (v440 + 48);
    v381[0] = v104;
    if (v543 == 1)
    {
      sub_10000D5CC(v111 + *(v442 + 40), v83, &qword_10001D770, &unk_100010720);
      if ((*v116)(v83, 1, v441) == 1)
      {
        sub_10000D634(v83, &qword_10001D770, &unk_100010720);
        v117 = 1;
        v118 = v458;
        v119 = v393;
      }

      else
      {
        v123 = v383;
        sub_10000CEE8(v83, v383, type metadata accessor for VideoPlayerUIViewWrapper);
        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v124 = v386;
        sub_10000D694(v123, v386, type metadata accessor for VideoPlayerUIViewWrapper);
        v125 = (v124 + *(v439 + 9));
        v126 = v561;
        *v125 = v560;
        v125[1] = v126;
        v125[2] = v562;
        static AnyTransition.opacity.getter();
        static Animation.easeOut(duration:)();
        v127 = AnyTransition.animation(_:)();

        *(v124 + *(v384 + 36)) = v127;
        v128 = *(v111 + 32);
        v129 = *(v111 + 40);
        LOBYTE(v543) = v128;
        *(&v543 + 1) = v129;
        State.wrappedValue.getter();
        if (v520)
        {
          v130 = 1.0;
        }

        else
        {
          v130 = 0.1;
        }

        v131 = v124;
        v132 = v389;
        sub_10000D564(v131, v389, &qword_10001D9F8, &qword_1000109E8);
        *(v132 + *(v385 + 36)) = v130;
        v133 = static Animation.spring(response:dampingFraction:blendDuration:)();
        LOBYTE(v543) = v128;
        *(&v543 + 1) = v129;
        State.wrappedValue.getter();
        sub_10000D6FC(v123);
        v134 = v520;
        v135 = v388;
        sub_10000D564(v132, v388, &qword_10001DA00, &qword_1000109F0);
        v119 = v393;
        v136 = v135 + *(v393 + 36);
        *v136 = v133;
        *(v136 + 8) = v134;
        v137 = v135;
        v138 = v387;
        sub_10000D564(v137, v387, &qword_10001DA08, &qword_1000109F8);
        v139 = v138;
        v118 = v458;
        sub_10000D564(v139, v458, &qword_10001DA08, &qword_1000109F8);
        v117 = 0;
      }

      (*(v392 + 56))(v118, v117, 1, v119);
      v140 = *(v111 + 8);
      v459 = *v111;
      v447 = v140;
      *&v520 = v459;
      *(&v520 + 1) = v140;
      v446 = sub_100004544(&qword_10001DA30, &qword_100010A68);
      State.projectedValue.getter();
      v141 = v543;
      v142 = v544;
      swift_getKeyPath();
      v489 = v141;
      *&v490 = v142;
      v440 = sub_100004544(&qword_10001DA38, &qword_100010A98);
      Binding.subscript.getter();

      v145 = v543;
      v144 = v145 >> 64;
      v143 = v145;
      v146 = v544;

      v520 = __PAIR128__(v144, v143);
      v521 = v146;
      v442 = sub_100004544(&qword_10001DA40, &qword_100010AA0);
      Binding.wrappedValue.getter();
      v148 = *(&v476 + 1);
      v147 = v476;

      v533 = __PAIR128__(v148, v147);
      v441 = sub_10000C70C();
      v149 = Text.init<A>(_:)();
      v151 = v150;
      LOBYTE(v144) = v152;
      sub_1000078C0(v149, v150, v152 & 1, v153, v556);
      sub_10000C760(v149, v151, v144 & 1);

      v154 = *(v111 + 40);
      LOBYTE(v543) = *(v111 + 32);
      v155 = v543;
      *(&v543 + 1) = v154;
      v156 = v154;
      State.wrappedValue.getter();
      if (v520)
      {
        v157 = 1.0;
      }

      else
      {
        v157 = 0.1;
      }

      v158 = 1.0;
      LOBYTE(v543) = v155;
      LODWORD(v438) = v155;
      *(&v543 + 1) = v156;
      v436 = v156;
      State.wrappedValue.getter();
      if (!v520)
      {
        v158 = 0.8;
      }

      static UnitPoint.center.getter();
      v160 = v159;
      v162 = v161;
      v163 = static Animation.spring(response:dampingFraction:blendDuration:)();
      LOBYTE(v543) = v155;
      *(&v543 + 1) = v156;
      State.wrappedValue.getter();
      v164 = v520;
      static AnyTransition.opacity.getter();
      static Animation.easeOut(duration:)();
      v165 = AnyTransition.animation(_:)();

      v166 = v461;
      v439 = type metadata accessor for ShieldIntervention;
      sub_10000D694(v111, v461, type metadata accessor for ShieldIntervention);
      v443 = (*(v443 + 80) + 16) & ~*(v443 + 80);
      v167 = v443;
      v168 = swift_allocObject();
      sub_10000CEE8(v166, v168 + v167, type metadata accessor for ShieldIntervention);
      v547 = v556[4];
      v548 = v556[5];
      v549 = v556[6];
      v543 = v556[0];
      v544 = v556[1];
      v546 = v556[3];
      v545 = v556[2];
      *&v550 = v157;
      *(&v550 + 1) = v158;
      *&v551 = v158;
      *(&v551 + 1) = v160;
      *&v552 = v162;
      *(&v552 + 1) = v163;
      LOBYTE(v553) = v164;
      *(&v553 + 1) = v165;
      *&v554 = sub_10000CFA0;
      *(&v554 + 1) = v168;
      v555 = 0uLL;
      *&v489 = v459;
      *(&v489 + 1) = v447;
      State.projectedValue.getter();
      v169 = v520;
      v170 = v521;
      swift_getKeyPath();
      v476 = v169;
      *&v477 = v170;
      Binding.subscript.getter();

      v171 = v520;
      v172 = v521;

      v489 = v171;
      v490 = v172;
      Binding.wrappedValue.getter();
      v173 = v533;

      v511 = v173;
      v174 = Text.init<A>(_:)();
      v176 = v175;
      LOBYTE(v166) = v177;
      sub_100007B40(v174, v175, v177 & 1, v178, v542);
      sub_10000C760(v174, v176, v166 & 1);

      v179 = v438;
      LOBYTE(v520) = v438;
      v180 = v436;
      *(&v520 + 1) = v436;
      State.wrappedValue.getter();
      if (v489)
      {
        v181 = 1.0;
      }

      else
      {
        v181 = 0.1;
      }

      v182 = static Animation.spring(response:dampingFraction:blendDuration:)();
      LOBYTE(v520) = v179;
      *(&v520 + 1) = v180;
      State.wrappedValue.getter();
      v183 = v489;
      static AnyTransition.opacity.getter();
      static Animation.easeOut(duration:)();
      v184 = AnyTransition.animation(_:)();

      v537 = v542[4];
      v538 = v542[5];
      v539 = v542[6];
      v533 = v542[0];
      v534 = v542[1];
      v536 = v542[3];
      v535 = v542[2];
      *&v540 = v181;
      *(&v540 + 1) = v182;
      LOBYTE(v541) = v183;
      DWORD1(v541) = *&v559[3];
      *(&v541 + 1) = *v559;
      *(&v541 + 1) = v184;
      v185 = v461;
      v186 = v439;
      sub_10000D694(v466, v461, v439);
      v187 = v443;
      v188 = swift_allocObject();
      v189 = sub_10000CEE8(v185, v188 + v187, v186);
      __chkstk_darwin(v189);
      sub_100004544(&qword_10001DB10, &qword_100010C30);
      sub_10000D080();
      v190 = v405;
      Button.init(action:label:)();
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v191 = v408;
      v192 = v397;
      v193 = v410;
      (*(v408 + 16))(v397, v190, v410);
      v194 = (v192 + *(v395 + 36));
      v195 = v568;
      v194[4] = v567;
      v194[5] = v195;
      v194[6] = v569;
      v196 = v564;
      *v194 = v563;
      v194[1] = v196;
      v197 = v566;
      v194[2] = v565;
      v194[3] = v197;
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v198 = v399;
      sub_10000D564(v192, v399, &qword_10001D9B0, &qword_1000109A0);
      v199 = (v198 + *(v396 + 36));
      v200 = v571;
      *v199 = v570;
      v199[1] = v200;
      v199[2] = v572;
      KeyPath = swift_getKeyPath();
      v202 = swift_allocObject();
      *(v202 + 16) = 1;
      v203 = v198;
      v204 = v401;
      sub_10000D564(v203, v401, &qword_10001D9B8, &qword_1000109A8);
      v205 = (v204 + *(v398 + 36));
      *v205 = KeyPath;
      v205[1] = sub_10000DB40;
      v205[2] = v202;
      v206 = static Color.blue.getter();
      v207 = swift_getKeyPath();
      v208 = v204;
      v209 = v403;
      sub_10000D564(v208, v403, &qword_10001D9C0, &qword_1000109B0);
      v210 = (v209 + *(v400 + 36));
      *v210 = v207;
      v210[1] = v206;
      v211 = static Color.gray.getter();
      v212 = swift_getKeyPath();
      v213 = v409;
      sub_10000D564(v209, v409, &qword_10001D9C8, &qword_1000109B8);
      v214 = (v213 + *(v407 + 36));
      *v214 = v212;
      v214[1] = v211;
      v215 = v448;
      BorderedProminentButtonStyle.init()();
      sub_10000D1D4();
      sub_10000785C(&qword_10001DAD0, &type metadata accessor for BorderedProminentButtonStyle);
      v216 = v411;
      v217 = v450;
      View.buttonStyle<A>(_:)();
      (*(v449 + 8))(v215, v217);
      sub_10000D634(v213, &qword_10001D9D0, &qword_1000109C0);
      v218 = v413;
      v219 = &v413[*(v402 + 36)];
      v220 = v219 + *(sub_100004544(&qword_10001DAD8, &qword_100010B88) + 28);
      static ButtonBorderShape.capsule.getter();
      *v219 = swift_getKeyPath();
      (*(v412 + 32))(v218, v216, v414);
      static AnyTransition.opacity.getter();
      static Animation.easeInOut(duration:)();
      v221 = AnyTransition.animation(_:)();

      (*(v191 + 8))(v190, v193);
      v222 = v404;
      sub_10000D564(v218, v404, &qword_10001D9E0, &qword_1000109D0);
      *(v222 + *(v406 + 36)) = v221;
      v223 = v222;
      v224 = v445;
      sub_10000D564(v223, v445, &qword_10001D9F0, &qword_1000109E0);
      v225 = &qword_100010A00;
      v226 = v444;
      sub_10000D5CC(v458, v444, &qword_10001DA10, &qword_100010A00);
      v486 = v553;
      v487 = v554;
      v488 = v555;
      v482 = v549;
      v483 = v550;
      v484 = v551;
      v485 = v552;
      v478 = v545;
      v479 = v546;
      v480 = v547;
      v481 = v548;
      v476 = v543;
      v477 = v544;
      v473 = v539;
      v474 = v540;
      v475 = v541;
      v469 = v535;
      v470 = v536;
      v471 = v537;
      v472 = v538;
      v467 = v533;
      v468 = v534;
      v227 = v224;
      v228 = v435;
      sub_10000D5CC(v227, v435, &qword_10001D9F0, &qword_1000109E0);
      v229 = v437;
      sub_10000D5CC(v226, v437, &qword_10001DA10, &qword_100010A00);
      v230 = sub_100004544(&qword_10001DB60, &qword_100010C40);
      v231 = v230[12];
      v233 = v486;
      v232 = v487;
      v499 = v486;
      v500 = v487;
      v234 = v488;
      v501 = v488;
      v236 = v482;
      v235 = v483;
      v495 = v482;
      v496 = v483;
      v237 = v484;
      v238 = v485;
      v498 = v485;
      v497 = v484;
      v239 = v480;
      v240 = v481;
      v494 = v481;
      v493 = v480;
      v241 = v479;
      v492 = v479;
      v491 = v478;
      v243 = v476;
      v242 = v477;
      v490 = v477;
      v489 = v476;
      v244 = (v229 + v231);
      v244[2] = v478;
      v244[3] = v241;
      v244[6] = v236;
      v244[7] = v235;
      v244[4] = v239;
      v244[5] = v240;
      v244[11] = v232;
      v244[12] = v234;
      v244[9] = v238;
      v244[10] = v233;
      v244[8] = v237;
      *v244 = v243;
      v244[1] = v242;
      v245 = v230[16];
      v246 = v474;
      v508 = v473;
      v509 = v474;
      v247 = v475;
      v510 = v475;
      v248 = v469;
      v249 = v470;
      v504 = v469;
      v505 = v470;
      v251 = v471;
      v250 = v472;
      v507 = v472;
      v506 = v471;
      v253 = v467;
      v252 = v468;
      v503 = v468;
      v502 = v467;
      v254 = (v229 + v245);
      v254[6] = v473;
      v254[7] = v246;
      v254[8] = v247;
      v254[2] = v248;
      v254[3] = v249;
      v254[4] = v251;
      v254[5] = v250;
      *v254 = v253;
      v254[1] = v252;
      v255 = v229 + v230[20];
      *v255 = 0;
      *(v255 + 8) = 1;
      *(v255 + 16) = 0x3FF0000000000000;
      sub_10000D5CC(v228, v229 + v230[24], &qword_10001D9F0, &qword_1000109E0);
      sub_10000D5CC(&v543, &v520, &qword_10001DB68, &qword_100010C48);
      sub_10000D5CC(&v533, &v520, &qword_10001DB70, &qword_100010C50);
      sub_10000D5CC(&v489, &v520, &qword_10001DB68, &qword_100010C48);
      sub_10000D5CC(&v502, &v520, &qword_10001DB70, &qword_100010C50);
      sub_10000D634(v228, &qword_10001D9F0, &qword_1000109E0);
      v517 = v473;
      v518 = v474;
      v519 = v475;
      v513 = v469;
      v514 = v470;
      v516 = v472;
      v515 = v471;
      v512 = v468;
      v511 = v467;
      sub_10000D634(&v511, &qword_10001DB70, &qword_100010C50);
      v530 = v486;
      v531 = v487;
      v532 = v488;
      v526 = v482;
      v527 = v483;
      v529 = v485;
      v528 = v484;
      v522 = v478;
      v523 = v479;
      v525 = v481;
      v524 = v480;
      v521 = v477;
      v520 = v476;
      sub_10000D634(&v520, &qword_10001DB68, &qword_100010C48);
      v256 = &qword_10001DA10;
      sub_10000D634(v444, &qword_10001DA10, &qword_100010A00);
      sub_10000D5CC(v229, v455, &qword_10001D9A8, &qword_100010998);
      swift_storeEnumTagMultiPayload();
      sub_10000DA14(&qword_10001DAF8, &qword_10001D9A8, &qword_100010998);
      sub_10000DA14(&qword_10001DB00, &qword_10001D940, &qword_100010930);
      v257 = v451;
      _ConditionalContent<>.init(storage:)();
      sub_10000D634(&v533, &qword_10001DB70, &qword_100010C50);
      sub_10000D634(&v543, &qword_10001DB68, &qword_100010C48);
      sub_10000D634(v229, &qword_10001D9A8, &qword_100010998);
      sub_10000D634(v445, &qword_10001D9F0, &qword_1000109E0);
      v258 = v458;
    }

    else
    {
      sub_10000D5CC(v111 + *(v442 + 44), v81, &qword_10001D770, &unk_100010720);
      if ((*v116)(v81, 1, v441) == 1)
      {
        sub_10000D634(v81, &qword_10001D770, &unk_100010720);
        v120 = 1;
        v121 = v459;
        v122 = v439;
      }

      else
      {
        v259 = v382;
        sub_10000CEE8(v81, v382, type metadata accessor for VideoPlayerUIViewWrapper);
        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v260 = v390;
        sub_10000CEE8(v259, v390, type metadata accessor for VideoPlayerUIViewWrapper);
        v122 = v439;
        v261 = (v260 + *(v439 + 9));
        v262 = v561;
        *v261 = v560;
        v261[1] = v262;
        v261[2] = v562;
        v121 = v459;
        sub_10000D564(v260, v459, &qword_10001D990, &qword_100010980);
        v120 = 0;
      }

      (*(v394 + 56))(v121, v120, 1, v122);
      v263 = *(v111 + 8);
      v458 = *v111;
      v445 = v263;
      *&v520 = v458;
      *(&v520 + 1) = v263;
      v444 = sub_100004544(&qword_10001DA30, &qword_100010A68);
      State.projectedValue.getter();
      v264 = v543;
      v265 = v544;
      swift_getKeyPath();
      v489 = v264;
      *&v490 = v265;
      sub_100004544(&qword_10001DA38, &qword_100010A98);
      Binding.subscript.getter();

      v266 = v543;
      v267 = v111;
      v268 = *(&v543 + 1);
      v269 = v544;

      *&v520 = v266;
      *(&v520 + 1) = v268;
      v521 = v269;
      v442 = sub_100004544(&qword_10001DA40, &qword_100010AA0);
      Binding.wrappedValue.getter();
      v270 = v476;

      v533 = v270;
      v441 = sub_10000C70C();
      v271 = Text.init<A>(_:)();
      v273 = v272;
      LOBYTE(v268) = v274;
      sub_1000078C0(v271, v272, v274 & 1, v275, v558);
      sub_10000C760(v271, v273, v268 & 1);

      v276 = *(v111 + 48);
      v277 = *(v111 + 56);
      LOBYTE(v543) = v276;
      *(&v543 + 1) = v277;
      v278 = v277;
      State.wrappedValue.getter();
      if (v520)
      {
        v279 = 1.0;
      }

      else
      {
        v279 = 0.0;
      }

      LOBYTE(v543) = v276;
      *(&v543 + 1) = v278;
      v437 = v278;
      State.wrappedValue.getter();
      if (v520)
      {
        v280 = 1.0;
      }

      else
      {
        v280 = 0.8;
      }

      static UnitPoint.center.getter();
      v282 = v281;
      v284 = v283;
      v285 = static Animation.spring(response:dampingFraction:blendDuration:)();
      LOBYTE(v543) = v276;
      *(&v543 + 1) = v278;
      State.wrappedValue.getter();
      v286 = v520;
      v287 = v461;
      v439 = type metadata accessor for ShieldIntervention;
      sub_10000D694(v267, v461, type metadata accessor for ShieldIntervention);
      v443 = *(v443 + 80);
      v288 = (v443 + 16) & ~v443;
      v440 = v288;
      v289 = swift_allocObject();
      sub_10000CEE8(v287, v289 + v288, type metadata accessor for ShieldIntervention);
      v547 = v558[4];
      v548 = v558[5];
      v549 = v558[6];
      v543 = v558[0];
      v544 = v558[1];
      v546 = v558[3];
      v545 = v558[2];
      *&v550 = v279;
      *(&v550 + 1) = v280;
      *&v551 = v280;
      *(&v551 + 1) = v282;
      *&v552 = v284;
      *(&v552 + 1) = v285;
      LOBYTE(v553) = v286;
      *(&v553 + 1) = *v559;
      DWORD1(v553) = *&v559[3];
      *(&v553 + 1) = sub_10000C770;
      v554 = v289;
      *&v555 = 0;
      *&v489 = v458;
      *(&v489 + 1) = v445;
      State.projectedValue.getter();
      v290 = v520;
      v291 = v521;
      swift_getKeyPath();
      v476 = v290;
      *&v477 = v291;
      Binding.subscript.getter();

      v292 = v520;
      v293 = v521;

      v489 = v292;
      v490 = v293;
      Binding.wrappedValue.getter();
      v294 = v533;

      v511 = v294;
      v295 = Text.init<A>(_:)();
      v297 = v296;
      v299 = v298;
      sub_100007B40(v295, v296, v298 & 1, v300, v557);
      sub_10000C760(v295, v297, v299 & 1);

      LOBYTE(v520) = v276;
      v301 = v437;
      *(&v520 + 1) = v437;
      State.wrappedValue.getter();
      if (v489)
      {
        v302 = 1.0;
      }

      else
      {
        v302 = 0.0;
      }

      v303 = static Animation.spring(response:dampingFraction:blendDuration:)();
      LOBYTE(v520) = v276;
      *(&v520 + 1) = v301;
      State.wrappedValue.getter();
      v537 = v557[4];
      v538 = v557[5];
      v539 = v557[6];
      v533 = v557[0];
      v534 = v557[1];
      v536 = v557[3];
      v535 = v557[2];
      *&v540 = v302;
      *(&v540 + 1) = v303;
      LOBYTE(v541) = v489;
      v304 = v461;
      v305 = v439;
      sub_10000D694(v466, v461, v439);
      v306 = v440;
      v307 = swift_allocObject();
      v308 = sub_10000CEE8(v304, v307 + v306, v305);
      __chkstk_darwin(v308);
      sub_100004544(&qword_10001DA50, &qword_100010AD0);
      sub_10000C890();
      v309 = v425;
      Button.init(action:label:)();
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v310 = v429;
      v311 = v417;
      v312 = v431;
      (*(v429 + 16))(v417, v309, v431);
      v313 = (v311 + *(v415 + 36));
      v314 = v568;
      v313[4] = v567;
      v313[5] = v314;
      v313[6] = v569;
      v315 = v564;
      *v313 = v563;
      v313[1] = v315;
      v316 = v566;
      v313[2] = v565;
      v313[3] = v316;
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v317 = v419;
      sub_10000D564(v311, v419, &qword_10001D948, &qword_100010938);
      v318 = (v317 + *(v416 + 36));
      v319 = v571;
      *v318 = v570;
      v318[1] = v319;
      v318[2] = v572;
      v320 = swift_getKeyPath();
      v321 = swift_allocObject();
      *(v321 + 16) = 0;
      v322 = v317;
      v323 = v421;
      sub_10000D564(v322, v421, &qword_10001D950, &qword_100010940);
      v324 = (v323 + *(v418 + 36));
      *v324 = v320;
      v324[1] = sub_10000CA24;
      v324[2] = v321;
      v325 = static Color.blue.getter();
      v326 = swift_getKeyPath();
      v327 = v323;
      v328 = v423;
      sub_10000D564(v327, v423, &qword_10001D958, &qword_100010948);
      v329 = (v328 + *(v420 + 36));
      *v329 = v326;
      v329[1] = v325;
      v330 = static Color.white.getter();
      v331 = swift_getKeyPath();
      v332 = v428;
      sub_10000D564(v328, v428, &qword_10001D960, &qword_100010950);
      v333 = (v332 + *(v427 + 36));
      *v333 = v331;
      v333[1] = v330;
      v334 = v448;
      BorderedProminentButtonStyle.init()();
      sub_10000CAEC();
      sub_10000785C(&qword_10001DAD0, &type metadata accessor for BorderedProminentButtonStyle);
      v335 = v430;
      v336 = v450;
      View.buttonStyle<A>(_:)();
      (*(v449 + 8))(v334, v336);
      sub_10000D634(v332, &qword_10001D968, &qword_100010958);
      v337 = v434;
      v338 = &v434[*(v422 + 36)];
      v339 = v338 + *(sub_100004544(&qword_10001DAD8, &qword_100010B88) + 28);
      static ButtonBorderShape.capsule.getter();
      *v338 = swift_getKeyPath();
      (*(v432 + 32))(v337, v335, v433);
      static AnyTransition.opacity.getter();
      static Animation.easeInOut(duration:)();
      v340 = AnyTransition.animation(_:)();

      (*(v310 + 8))(v309, v312);
      v341 = v424;
      sub_10000D564(v337, v424, &qword_10001D978, &qword_100010968);
      *(v341 + *(v426 + 36)) = v340;
      v342 = v447;
      sub_10000D564(v341, v447, &qword_10001D988, &qword_100010978);
      v225 = &qword_100010988;
      v343 = v446;
      sub_10000D5CC(v459, v446, &qword_10001D998, &qword_100010988);
      v486 = v553;
      v487 = v554;
      *&v488 = v555;
      v482 = v549;
      v483 = v550;
      v484 = v551;
      v485 = v552;
      v478 = v545;
      v479 = v546;
      v480 = v547;
      v481 = v548;
      v476 = v543;
      v477 = v544;
      v473 = v539;
      v474 = v540;
      LOBYTE(v475) = v541;
      v469 = v535;
      v470 = v536;
      v471 = v537;
      v472 = v538;
      v467 = v533;
      v468 = v534;
      v344 = v342;
      v345 = v436;
      sub_10000D5CC(v344, v436, &qword_10001D988, &qword_100010978);
      v346 = v438;
      sub_10000D5CC(v343, v438, &qword_10001D998, &qword_100010988);
      v347 = sub_100004544(&qword_10001DAE0, &qword_100010BC0);
      v348 = v347[12];
      v350 = v486;
      v349 = v487;
      v499 = v486;
      v500 = v487;
      v352 = v482;
      v351 = v483;
      v495 = v482;
      v496 = v483;
      v353 = v484;
      v354 = v485;
      v498 = v485;
      v497 = v484;
      v355 = v480;
      v356 = v481;
      v494 = v481;
      v493 = v480;
      v357 = v479;
      v492 = v479;
      v491 = v478;
      v359 = v476;
      v358 = v477;
      v490 = v477;
      v489 = v476;
      v360 = v346 + v348;
      *(v360 + 32) = v478;
      *(v360 + 48) = v357;
      v361 = v488;
      *&v501 = v488;
      *(v360 + 96) = v352;
      *(v360 + 112) = v351;
      *(v360 + 64) = v355;
      *(v360 + 80) = v356;
      *(v360 + 192) = v361;
      *(v360 + 160) = v350;
      *(v360 + 176) = v349;
      *(v360 + 128) = v353;
      *(v360 + 144) = v354;
      *v360 = v359;
      *(v360 + 16) = v358;
      v362 = v347[16];
      v363 = v474;
      v508 = v473;
      v509 = v474;
      v364 = v469;
      v365 = v470;
      v504 = v469;
      v505 = v470;
      v367 = v471;
      v366 = v472;
      v507 = v472;
      v506 = v471;
      v369 = v467;
      v368 = v468;
      v503 = v468;
      v502 = v467;
      v370 = v346 + v362;
      *(v370 + 96) = v473;
      *(v370 + 112) = v363;
      *(v370 + 32) = v364;
      *(v370 + 48) = v365;
      *(v370 + 64) = v367;
      *(v370 + 80) = v366;
      LOBYTE(v510) = v475;
      *(v370 + 128) = v475;
      *v370 = v369;
      *(v370 + 16) = v368;
      v371 = v346 + v347[20];
      *v371 = 0;
      *(v371 + 8) = 1;
      *(v371 + 16) = 0x3FF0000000000000;
      sub_10000D5CC(v345, v346 + v347[24], &qword_10001D988, &qword_100010978);
      sub_10000D5CC(&v543, &v520, &qword_10001DAE8, &qword_100010BC8);
      sub_10000D5CC(&v533, &v520, &qword_10001DAF0, &qword_100010BD0);
      sub_10000D5CC(&v489, &v520, &qword_10001DAE8, &qword_100010BC8);
      sub_10000D5CC(&v502, &v520, &qword_10001DAF0, &qword_100010BD0);
      sub_10000D634(v345, &qword_10001D988, &qword_100010978);
      v517 = v473;
      v518 = v474;
      LOBYTE(v519) = v475;
      v513 = v469;
      v514 = v470;
      v516 = v472;
      v515 = v471;
      v512 = v468;
      v511 = v467;
      sub_10000D634(&v511, &qword_10001DAF0, &qword_100010BD0);
      v530 = v486;
      v531 = v487;
      *&v532 = v488;
      v526 = v482;
      v527 = v483;
      v529 = v485;
      v528 = v484;
      v522 = v478;
      v523 = v479;
      v525 = v481;
      v524 = v480;
      v521 = v477;
      v520 = v476;
      sub_10000D634(&v520, &qword_10001DAE8, &qword_100010BC8);
      v256 = &qword_10001D998;
      sub_10000D634(v446, &qword_10001D998, &qword_100010988);
      sub_10000D5CC(v346, v455, &qword_10001D940, &qword_100010930);
      swift_storeEnumTagMultiPayload();
      sub_10000DA14(&qword_10001DAF8, &qword_10001D9A8, &qword_100010998);
      sub_10000DA14(&qword_10001DB00, &qword_10001D940, &qword_100010930);
      v257 = v451;
      _ConditionalContent<>.init(storage:)();
      sub_10000D634(&v533, &qword_10001DAF0, &qword_100010BD0);
      sub_10000D634(&v543, &qword_10001DAE8, &qword_100010BC8);
      sub_10000D634(v346, &qword_10001D940, &qword_100010930);
      sub_10000D634(v447, &qword_10001D988, &qword_100010978);
      v258 = v459;
    }

    sub_10000D634(v258, v256, v225);
    v372 = v257;
    v373 = v257;
    v374 = v452;
    sub_10000D5CC(v372, v452, &qword_10001DA18, &qword_100010A08);
    v375 = v457;
    sub_10000D5CC(v374, v457, &qword_10001DA18, &qword_100010A08);
    v376 = v375 + *(sub_100004544(&qword_10001DB08, &qword_100010BD8) + 48);
    *v376 = 0;
    *(v376 + 8) = 1;
    sub_10000D634(v373, &qword_10001DA18, &qword_100010A08);
    sub_10000D634(v374, &qword_10001DA18, &qword_100010A08);
    v110 = v381[0];
    sub_10000D564(v375, v381[0], &qword_10001D938, &qword_100010928);
    v114 = 0;
  }

  (*(v463 + 56))(v110, v114, 1, v464);
  v377 = v462;
  sub_10000D5CC(v110, v462, &qword_10001DA20, &qword_100010A10);
  v378 = v465;
  *v465 = 0;
  *(v378 + 8) = 1;
  v378[2] = 0x3FF0000000000000;
  v379 = sub_100004544(&qword_10001DA28, &qword_100010A18);
  sub_10000D5CC(v377, v378 + *(v379 + 48), &qword_10001DA20, &qword_100010A10);
  sub_10000D634(v110, &qword_10001DA20, &qword_100010A10);
  return sub_10000D634(v377, &qword_10001DA20, &qword_100010A10);
}

uint64_t sub_10000B3FC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_100004544(&qword_10001D900, &qword_1000108F0);
  return State.wrappedValue.setter();
}

__n128 sub_10000B45C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100004544(&qword_10001DB78, &qword_100010C58);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v28[-v6];
  v8 = type metadata accessor for Font.TextStyle();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = a1[1];
  v39 = *a1;
  v40 = v13;
  sub_100004544(&qword_10001DA30, &qword_100010A68);
  State.wrappedValue.getter();
  v15 = *(v38 + OBJC_IVAR____TtC11EyeReliefUI19ShieldConfiguration_continueButtonTitleString);
  v14 = *(v38 + OBJC_IVAR____TtC11EyeReliefUI19ShieldConfiguration_continueButtonTitleString + 8);

  v39 = v15;
  v40 = v14;
  sub_10000C70C();
  v16 = Text.init<A>(_:)();
  v29 = v18;
  v30 = v17;
  LOBYTE(a1) = v19;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  LOBYTE(a1) = a1 & 1;
  LOBYTE(v39) = a1;
  (*(v9 + 104))(v12, enum case for Font.TextStyle.body(_:), v8);
  v20 = type metadata accessor for Font.Design();
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  static Font.system(_:design:weight:)();
  sub_10000D634(v7, &qword_10001DB78, &qword_100010C58);
  (*(v9 + 8))(v12, v8);
  v21 = Font.bold()();

  KeyPath = swift_getKeyPath();
  v23 = v29;
  v24 = v30;
  *a2 = v16;
  *(a2 + 8) = v24;
  *(a2 + 16) = a1;
  *(a2 + 24) = v23;
  v25 = v36;
  *(a2 + 96) = v35;
  *(a2 + 112) = v25;
  *(a2 + 128) = v37;
  v26 = v32;
  *(a2 + 32) = v31;
  *(a2 + 48) = v26;
  result = v34;
  *(a2 + 64) = v33;
  *(a2 + 80) = result;
  *(a2 + 144) = 0x3FE0000000000000;
  *(a2 + 152) = KeyPath;
  *(a2 + 160) = v21;
  return result;
}

uint64_t sub_10000B7D0(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  sub_100004544(&qword_10001D900, &qword_1000108F0);
  return State.wrappedValue.setter();
}

uint64_t sub_10000B830@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_10000B8AC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

__n128 sub_10000B92C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100004544(&qword_10001DB78, &qword_100010C58);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v28[-v6];
  v8 = type metadata accessor for Font.TextStyle();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = a1[1];
  v39 = *a1;
  v40 = v13;
  sub_100004544(&qword_10001DA30, &qword_100010A68);
  State.wrappedValue.getter();
  v15 = *(v38 + OBJC_IVAR____TtC11EyeReliefUI19ShieldConfiguration_continueButtonTitleString);
  v14 = *(v38 + OBJC_IVAR____TtC11EyeReliefUI19ShieldConfiguration_continueButtonTitleString + 8);

  v39 = v15;
  v40 = v14;
  sub_10000C70C();
  v16 = Text.init<A>(_:)();
  v29 = v18;
  v30 = v17;
  LOBYTE(a1) = v19;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  LOBYTE(a1) = a1 & 1;
  LOBYTE(v39) = a1;
  (*(v9 + 104))(v12, enum case for Font.TextStyle.body(_:), v8);
  v20 = type metadata accessor for Font.Design();
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  static Font.system(_:design:weight:)();
  sub_10000D634(v7, &qword_10001DB78, &qword_100010C58);
  (*(v9 + 8))(v12, v8);
  v21 = Font.bold()();

  KeyPath = swift_getKeyPath();
  v23 = v29;
  v24 = v30;
  *a2 = v16;
  *(a2 + 8) = v24;
  *(a2 + 16) = a1;
  *(a2 + 24) = v23;
  v25 = v36;
  *(a2 + 96) = v35;
  *(a2 + 112) = v25;
  *(a2 + 128) = v37;
  v26 = v32;
  *(a2 + 32) = v31;
  *(a2 + 48) = v26;
  result = v34;
  *(a2 + 64) = v33;
  *(a2 + 80) = result;
  *(a2 + 144) = KeyPath;
  *(a2 + 152) = v21;
  return result;
}

uint64_t sub_10000BC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v31 = a2;
  v29 = a1;
  v34 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v34 - 8);
  v4 = *(v37 + 64);
  __chkstk_darwin(v34);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v35 = *(v7 - 8);
  v36 = v7;
  v8 = *(v35 + 64);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ShieldIntervention(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = type metadata accessor for DispatchTime();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v28 - v20;
  sub_10000C300();
  v28 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v30 = *(v15 + 8);
  v30(v19, v14);
  sub_10000D694(v29, &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShieldIntervention);
  v22 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v23 = swift_allocObject();
  sub_10000CEE8(&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for ShieldIntervention);
  aBlock[4] = v32;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000059C4;
  aBlock[3] = v33;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000785C(&qword_10001D460, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004544(&qword_10001D468, &qword_100010618);
  sub_10000DA14(&qword_10001D470, &qword_10001D468, &qword_100010618);
  v25 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v26 = v28;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v24);

  (*(v37 + 8))(v6, v25);
  (*(v35 + 8))(v10, v36);
  return (v30)(v21, v14);
}

uint64_t sub_10000C108(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  sub_100004544(&qword_10001D900, &qword_1000108F0);
  return State.wrappedValue.setter();
}

uint64_t sub_10000C170@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  *a2 = static Alignment.center.getter();
  a2[1] = v6;
  v7 = sub_100004544(&qword_10001D8F0, &qword_1000108D8);
  sub_100007F0C(v2, a2 + *(v7 + 44));
  sub_10000D694(v2, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShieldIntervention);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_10000CEE8(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for ShieldIntervention);
  result = sub_100004544(&qword_10001D8F8, &unk_1000108E0);
  v11 = (a2 + *(result + 36));
  *v11 = sub_10000C2D4;
  v11[1] = v9;
  v11[2] = 0;
  v11[3] = 0;
  return result;
}

unint64_t sub_10000C300()
{
  result = qword_10001D458;
  if (!qword_10001D458)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001D458);
  }

  return result;
}

uint64_t sub_10000C34C()
{
  v1 = type metadata accessor for ShieldIntervention(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 40);

  v10 = *(v0 + v3 + 56);

  v11 = *(v0 + v3 + 72);

  if (*(v0 + v3 + 80))
  {
    v12 = *(v5 + 88);
  }

  v13 = *(v1 + 40);
  v14 = type metadata accessor for VideoPlayerUIViewWrapper(0);
  v15 = *(*(v14 - 8) + 48);
  if (!v15(v5 + v13, 1, v14))
  {
    v16 = type metadata accessor for URL();
    (*(*(v16 - 8) + 8))(v5 + v13, v16);
  }

  v17 = *(v1 + 44);
  if (!v15(v5 + v17, 1, v14))
  {
    v18 = type metadata accessor for URL();
    (*(*(v18 - 8) + 8))(v5 + v17, v18);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000C534(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ShieldIntervention(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_10000C5A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C5C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10000C640(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t sub_10000C70C()
{
  result = qword_10001DA48;
  if (!qword_10001DA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DA48);
  }

  return result;
}

uint64_t sub_10000C760(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

double sub_10000C884@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  *&result = sub_10000B92C(v1[2], a1).n128_u64[0];
  return result;
}

unint64_t sub_10000C890()
{
  result = qword_10001DA58;
  if (!qword_10001DA58)
  {
    sub_1000056C0(&qword_10001DA50, &qword_100010AD0);
    sub_10000C948();
    sub_10000DA14(&qword_10001DA70, &qword_10001DA78, &qword_100010AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DA58);
  }

  return result;
}

unint64_t sub_10000C948()
{
  result = qword_10001DA60;
  if (!qword_10001DA60)
  {
    sub_1000056C0(&qword_10001DA68, &qword_100010AD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DA60);
  }

  return result;
}

uint64_t sub_10000C9CC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10000CA3C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000CA68(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.tintColor.setter();
}

uint64_t sub_10000CA94@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000CAC0(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

unint64_t sub_10000CAEC()
{
  result = qword_10001DA80;
  if (!qword_10001DA80)
  {
    sub_1000056C0(&qword_10001D968, &qword_100010958);
    sub_10000CBA4();
    sub_10000DA14(&qword_10001DAC0, &qword_10001DAC8, &qword_100010B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DA80);
  }

  return result;
}

unint64_t sub_10000CBA4()
{
  result = qword_10001DA88;
  if (!qword_10001DA88)
  {
    sub_1000056C0(&qword_10001D960, &qword_100010950);
    sub_10000CC5C();
    sub_10000DA14(&qword_10001DAC0, &qword_10001DAC8, &qword_100010B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DA88);
  }

  return result;
}

unint64_t sub_10000CC5C()
{
  result = qword_10001DA90;
  if (!qword_10001DA90)
  {
    sub_1000056C0(&qword_10001D958, &qword_100010948);
    sub_10000D428(&qword_10001DA98, &qword_10001D950, &qword_100010940, sub_10000CD40);
    sub_10000DA14(&qword_10001DAB0, &qword_10001DAB8, &qword_100010B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DA90);
  }

  return result;
}

unint64_t sub_10000CD40()
{
  result = qword_10001DAA0;
  if (!qword_10001DAA0)
  {
    sub_1000056C0(&qword_10001D948, &qword_100010938);
    sub_10000DA14(&qword_10001DAA8, &qword_10001D980, &qword_100010970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DAA0);
  }

  return result;
}

uint64_t sub_10000CE1C(uint64_t a1)
{
  v2 = type metadata accessor for ButtonBorderShape();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues._buttonBorderShape.setter();
}

uint64_t sub_10000CEE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000D008()
{
  v1 = type metadata accessor for ShieldIntervention(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + 80);
  if (v5)
  {
    v6 = *(v4 + 88);
    return v5();
  }

  return result;
}

double sub_10000D074@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  *&result = sub_10000B45C(v1[2], a1).n128_u64[0];
  return result;
}

unint64_t sub_10000D080()
{
  result = qword_10001DB18;
  if (!qword_10001DB18)
  {
    sub_1000056C0(&qword_10001DB10, &qword_100010C30);
    sub_10000D138();
    sub_10000DA14(&qword_10001DA70, &qword_10001DA78, &qword_100010AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DB18);
  }

  return result;
}

unint64_t sub_10000D138()
{
  result = qword_10001DB20;
  if (!qword_10001DB20)
  {
    sub_1000056C0(&qword_10001DB28, &qword_100010C38);
    sub_10000C948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DB20);
  }

  return result;
}

unint64_t sub_10000D1D4()
{
  result = qword_10001DB30;
  if (!qword_10001DB30)
  {
    sub_1000056C0(&qword_10001D9D0, &qword_1000109C0);
    sub_10000D28C();
    sub_10000DA14(&qword_10001DAC0, &qword_10001DAC8, &qword_100010B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DB30);
  }

  return result;
}

unint64_t sub_10000D28C()
{
  result = qword_10001DB38;
  if (!qword_10001DB38)
  {
    sub_1000056C0(&qword_10001D9C8, &qword_1000109B8);
    sub_10000D344();
    sub_10000DA14(&qword_10001DAC0, &qword_10001DAC8, &qword_100010B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DB38);
  }

  return result;
}

unint64_t sub_10000D344()
{
  result = qword_10001DB40;
  if (!qword_10001DB40)
  {
    sub_1000056C0(&qword_10001D9C0, &qword_1000109B0);
    sub_10000D428(&qword_10001DB48, &qword_10001D9B8, &qword_1000109A8, sub_10000D4AC);
    sub_10000DA14(&qword_10001DAB0, &qword_10001DAB8, &qword_100010B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DB40);
  }

  return result;
}

uint64_t sub_10000D428(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000056C0(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000D4AC()
{
  result = qword_10001DB50;
  if (!qword_10001DB50)
  {
    sub_1000056C0(&qword_10001D9B0, &qword_1000109A0);
    sub_10000DA14(&qword_10001DB58, &qword_10001D9E8, &qword_1000109D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DB50);
  }

  return result;
}

uint64_t sub_10000D564(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004544(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000D5CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004544(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000D634(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004544(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000D694(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000D6FC(uint64_t a1)
{
  v2 = type metadata accessor for VideoPlayerUIViewWrapper(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000D758@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000D784(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

uint64_t sub_10000D7B0@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10000D7E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return EnvironmentValues.lineLimit.setter();
}

uint64_t sub_10000D814@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000D868(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10000D89C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_10000D8F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_10000D95C()
{
  result = qword_10001DB98;
  if (!qword_10001DB98)
  {
    sub_1000056C0(&qword_10001D8F8, &unk_1000108E0);
    sub_10000DA14(&qword_10001DBA0, &qword_10001DBA8, "PM");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DB98);
  }

  return result;
}

uint64_t sub_10000DA14(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000056C0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000DA60()
{
  result = qword_10001DBB0;
  if (!qword_10001DBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DBB0);
  }

  return result;
}

unint64_t sub_10000DAB4()
{
  result = qword_10001DBB8;
  if (!qword_10001DBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DBB8);
  }

  return result;
}

id sub_10000DB8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

void sub_10000DC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v39 = a4;
  v40 = a3;
  v41 = a2;
  v33 = a1;
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v37 = *(v8 - 8);
  v38 = v8;
  v9 = *(v37 + 64);
  __chkstk_darwin(v8);
  v36 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v34 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  *(v5 + 32) = 0xD00000000000002DLL;
  *(v5 + 40) = 0x8000000100011640;
  *(v5 + 56) = 0;
  *(v5 + 64) = 1;
  *(v5 + 48) = a5;
  *(v5 + 16) = [objc_allocWithZone(AWAttentionAwarenessClient) init];
  v15 = [objc_allocWithZone(AWAttentionAwarenessConfiguration) init];
  v16 = String._bridgeToObjectiveC()();
  [v15 setIdentifier:v16];

  [v15 setContinuousFaceDetectMode:1];
  [v15 setNotificationMask:31];
  [v15 setActivateEyeRelief:1];
  [v15 setActivateAttentionDetection:0];
  [*(v5 + 16) setConfiguration:v15];
  sub_10000C300();
  v18 = *(v5 + 32);
  v17 = *(v5 + 40);

  static DispatchQoS.unspecified.getter();
  aBlock = &_swiftEmptyArrayStorage;
  sub_10000F0BC(&qword_10001DDB0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100004544(&qword_10001DDB8, qword_100010F10);
  sub_10000F104(&qword_10001DDC0, &qword_10001DDB8, qword_100010F10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v37 + 104))(v36, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v38);
  v19 = v39;
  v20 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v6[3] = v20;
  v6[9] = v40;
  v6[10] = v19;
  v21 = v6[2];
  if (!v21)
  {

    if (!v20)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v22 = swift_allocObject();
  v23 = v33;
  v22[2] = v6;
  v22[3] = v23;
  v22[4] = v41;
  v46 = sub_10000F1A0;
  v47 = v22;
  aBlock = _NSConcreteStackBlock;
  v43 = 1107296256;
  v44 = sub_100002018;
  v45 = &unk_100019420;
  v24 = _Block_copy(&aBlock);

  v25 = v21;
  v26 = v20;

  [v25 setEventStreamerWithQueue:v26 block:v24];
  _Block_release(v24);

  v27 = v6[2];
  v20 = v6[3];
  if (!v27)
  {
LABEL_5:
    if (!v20)
    {
LABEL_7:

      return;
    }

LABEL_6:
    v31 = v20;
    dispatch_activate(v31);

    goto LABEL_7;
  }

  if (v20)
  {
    v46 = sub_10000F158;
    v47 = v6;
    aBlock = _NSConcreteStackBlock;
    v43 = 1107296256;
    v44 = sub_10000E314;
    v45 = &unk_1000193D0;
    v28 = _Block_copy(&aBlock);

    v29 = v27;
    v30 = v20;

    [v29 setNotificationHandlerWithQueue:v30 block:v28];
    _Block_release(v28);

    v20 = v6[3];
    goto LABEL_5;
  }

  __break(1u);
}

void sub_10000E1D8(char a1, uint64_t a2)
{
  if (qword_10001D350 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000468C(v4, qword_10001E380);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Received AA notification for face detect state", v7, 2u);
  }

  if ((a1 & 5) != 0)
  {
    v8 = *(a2 + 72);
    if (v8)
    {
      v9 = *(a2 + 80);

      v8(v10);

      sub_10000536C(v8);
    }
  }
}

uint64_t sub_10000E314(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_10000E368(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = v2;
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() distance];
  v6 = v5;
  objc_opt_self();
  v7 = [swift_dynamicCastObjCClassUnconditional() faceState];
  if (qword_10001D350 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000468C(v8, qword_10001E380);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134218240;
    *(v11 + 4) = v6;
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v9, v10, "ER Distance: %f, ER Face State: %llu", v11, 0x16u);
  }

  v12 = *(v3 + 56);
  if (*(v3 + 64))
  {
    v12 = v6;
  }

  v13 = (v6 + v12) * 0.5;
  *(v3 + 56) = v6;
  *(v3 + 64) = 0;
  if (v13 <= 0.0)
  {
    if (v7 != 2)
    {
      goto LABEL_15;
    }

LABEL_14:
    v14 = 2;
    return a2(v14);
  }

  if (v7 == 2)
  {
    goto LABEL_14;
  }

  if (v7 != 1)
  {
LABEL_15:
    v14 = 0;
    return a2(v14);
  }

  if (v13 >= *(v3 + 48))
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  return a2(v14);
}

void sub_10000E554()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + 24);
  if (v13)
  {
    aBlock[4] = sub_10000F0B4;
    aBlock[5] = v1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000059C4;
    aBlock[3] = &unk_1000193A8;
    v25 = v10;
    v14 = _Block_copy(aBlock);
    v24 = v13;

    static DispatchQoS.unspecified.getter();
    v26 = &_swiftEmptyArrayStorage;
    sub_10000F0BC(&qword_10001D460, &type metadata accessor for DispatchWorkItemFlags);
    sub_100004544(&qword_10001D468, &qword_100010618);
    sub_10000F104(&qword_10001D470, &qword_10001D468, &qword_100010618);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v15 = v24;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);

    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v12, v25);
  }

  else
  {
    if (qword_10001D350 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000468C(v16, qword_10001E380);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Error: Streaming queue was nil", v19, 2u);
    }

    v20 = *(v1 + 72);
    if (v20)
    {
      v21 = *(v1 + 80);

      v20(v22);

      sub_10000536C(v20);
    }
  }
}

void sub_10000E90C(void *a1)
{
  v2 = a1[2];
  if (!v2)
  {
    goto LABEL_4;
  }

  v16 = 0;
  if ([v2 resumeWithError:&v16])
  {
    v3 = v16;
LABEL_4:
    if (qword_10001D350 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000468C(v4, qword_10001E380);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Resumed distance streaming", v7, 2u);
    }

    return;
  }

  v8 = v16;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_10001D350 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000468C(v9, qword_10001E380);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Couldn't resume distance streaming", v12, 2u);
  }

  v13 = a1[9];
  if (v13)
  {
    v14 = a1[10];

    v13(v15);

    sub_10000536C(v13);
  }

  else
  {
  }
}

uint64_t sub_10000EB60()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = __chkstk_darwin(v6);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 24);
  if (v12)
  {
    aBlock[4] = sub_10000F094;
    aBlock[5] = v0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000059C4;
    aBlock[3] = &unk_100019380;
    v17 = result;
    v16 = _Block_copy(aBlock);
    v13 = v12;

    static DispatchQoS.unspecified.getter();
    v18 = &_swiftEmptyArrayStorage;
    sub_10000F0BC(&qword_10001D460, &type metadata accessor for DispatchWorkItemFlags);
    sub_100004544(&qword_10001D468, &qword_100010618);
    sub_10000F104(&qword_10001D470, &qword_10001D468, &qword_100010618);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v14 = v16;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);

    (*(v2 + 8))(v5, v1);
    (*(v7 + 8))(v11, v17);
  }

  return result;
}

void sub_10000EE10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v11 = 0;
  if ([v1 cancelFaceDetectStreamWithError:&v11])
  {
    v2 = v11;
LABEL_4:
    if (qword_10001D350 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000468C(v3, qword_10001E380);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Stopped distance streaming", v6, 2u);
    }

    goto LABEL_13;
  }

  v7 = v11;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_10001D350 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000468C(v8, qword_10001E380);
  v4 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v4, v9, "Couldn't stop distance streaming", v10, 2u);
  }

LABEL_13:
}

uint64_t sub_10000F020()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 80);
  sub_10000536C(*(v0 + 72));

  return _swift_deallocClassInstance(v0, 88, 7);
}

uint64_t sub_10000F09C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000F0BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000F104(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000056C0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000F160()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000F1A0(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[2];
  return sub_10000E368(a1, v2);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}