int main(int argc, const char **argv, const char **envp)
{
  v3 = static CommandLine.argc.getter();
  v4 = static CommandLine.unsafeArgv.getter();
  UIApplicationMain(v3, v4, 0, 0);
  return 0;
}

__n128 sub_100001C38(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100001C44(uint64_t a1, int a2)
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

uint64_t sub_100001C64(uint64_t result, int a2, int a3)
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

__n128 sub_100001CA4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100001CB0(uint64_t a1, int a2)
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

uint64_t sub_100001CD0(uint64_t result, int a2, int a3)
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

void sub_100001D20(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100001D74()
{
  swift_getObjectType();
  v3 = _typeName(_:qualified:)();
  v1._countAndFlagsBits = 58;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  String.append(_:)(*(v0 + OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_debugIdentifier));
  return v3;
}

void sub_100001DDC(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v2[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_visibleContentFrame];
  LOBYTE(v11) = *(a1 + 32);
  if (v2[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_visibleContentFrame + 32])
  {
    if (*(a1 + 32))
    {
      return;
    }
  }

  else if ((*(a1 + 32) & 1) == 0)
  {
    v34.origin.x = v4;
    v34.origin.y = v5;
    v34.size.width = v6;
    v34.size.height = v7;
    if (CGRectEqualToRect(*v13, v34))
    {
      return;
    }
  }

  static Logger.mode.getter();
  v14 = v2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v29[1] = v14;
    v33 = v18;
    *v17 = 136446466;
    v19 = _typeName(_:qualified:)();
    v21 = sub_10000D820(v19, v20, &v33);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = v13[32];
    v23 = *(v13 + 1);
    v30 = *v13;
    v31 = v23;
    v32 = v22;
    sub_1000039A0(0, &qword_10001D128, type metadata accessor for CGRect, &type metadata accessor for Optional);
    v24 = String.init<A>(describing:)();
    v26 = sub_10000D820(v24, v25, &v33);

    *(v17 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v15, v16, "[%{public}s] Calculated new visibleContentFrame: %s", v17, 0x16u);
    swift_arrayDestroy();
  }

  (*(v9 + 8))(v12, v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    sub_100005560();
  }
}

id sub_1000020AC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v5[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_safeContentBounds];
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  result = CGRectEqualToRect(*&v5[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_safeContentBounds], v34);
  if ((result & 1) == 0)
  {
    static Logger.mode.getter();
    v17 = v5;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = v17;
      v33 = v21;
      *v20 = 136446466;
      v22 = _typeName(_:qualified:)();
      v24 = sub_10000D820(v22, v23, &v33);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      v25 = *(v15 + 1);
      v31 = *v15;
      v32 = v25;
      type metadata accessor for CGRect(0);
      v26 = String.init<A>(describing:)();
      v28 = sub_10000D820(v26, v27, &v33);

      *(v20 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v18, v19, "[%{public}s] Received new safeContentBounds: %s", v20, 0x16u);
      swift_arrayDestroy();
      v17 = v30;
    }

    (*(v11 + 8))(v14, v10);
    return [v17 setNeedsLayout];
  }

  return result;
}

uint64_t sub_100002320(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003854();
  v13 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_1000038A0;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003B0C;
  aBlock[3] = &unk_100018BD8;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000038C0();
  sub_1000039A0(0, &qword_10001D120, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_100003918();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

void sub_1000025B4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setNeedsLayout];
  }
}

uint64_t sub_100002610(_BYTE *a1)
{
  sub_1000039A0(0, &qword_10001D4F0, &type metadata accessor for Alarm, &type metadata accessor for Optional);
  v3 = *(*(v2 - 8) + 64);
  result = __chkstk_darwin(v2 - 8);
  v6 = &v10 - v5;
  if (*a1 == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = swift_unknownObjectWeakLoadStrong();

      if (v9)
      {
        dispatch thunk of LockScreenContentModel.alarm.getter();
        sub_100005230(v6);

        sub_1000037C8(v6);
      }
    }

    return dispatch thunk of LockScreenContentModel.alarmButtonPressed.setter();
  }

  return result;
}

void sub_100002734()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    static Logger.mode.getter();
    v7 = v6;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15 = v11;
      *v10 = 136446210;
      v12 = sub_100001D74();
      v14 = sub_10000D820(v12, v13, &v15);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "[%{public}s] traitCollectionDidChange", v10, 0xCu);
      sub_10000377C(v11);
    }

    (*(v1 + 8))(v4, v0);
    [v7 setNeedsLayout];
  }
}

void sub_100002954()
{
  if (*&v0[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_contentView])
  {
    [v0 addSubview:?];
    v1 = *&v0[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_debugSafeContentBoundsView];
    if (v1)
    {
      v2 = *&v0[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_debugActualContentBoundsView];
      if (v2)
      {
        v3 = v1;
        v13 = v2;
        v4 = [v13 layer];
        v5 = objc_opt_self();
        v6 = [v5 blueColor];
        v7 = [v6 colorWithAlphaComponent:0.3];

        v8 = [v7 CGColor];
        [v4 setBackgroundColor:v8];

        [v0 addSubview:v13];
        [v0 sendSubviewToBack:v13];
        v9 = [v3 layer];
        v10 = [v5 greenColor];
        v11 = [v10 colorWithAlphaComponent:0.1];

        v12 = [v11 CGColor];
        [v9 setBackgroundColor:v12];

        [v0 addSubview:v3];
        [v0 sendSubviewToBack:v3];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_100002B98()
{
  ObjectType = swift_getObjectType();
  v106 = type metadata accessor for LockScreenContentState();
  v105 = *(v106 - 8);
  v2 = *(v105 + 64);
  (__chkstk_darwin)();
  v104 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (__chkstk_darwin)();
  v109 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v102 - v10;
  __chkstk_darwin(v9);
  v13 = &v102 - v12;
  v14 = type metadata accessor for LockScreenContainerView();
  v112.receiver = v0;
  v112.super_class = v14;
  objc_msgSendSuper2(&v112, "layoutSubviews");
  static Logger.mode.getter();
  v15 = v0;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  v18 = os_log_type_enabled(v16, v17);
  v108 = ObjectType;
  v110 = v4;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v111 = v20;
    *v19 = 136446210;
    *&v113[0] = _typeName(_:qualified:)();
    *(&v113[0] + 1) = v21;
    v22._countAndFlagsBits = 58;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    String.append(_:)(*&v15[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_debugIdentifier]);
    v23 = v5;
    v24 = sub_10000D820(*&v113[0], *(&v113[0] + 1), &v111);

    *(v19 + 4) = v24;
    v5 = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "[%{public}s] layoutSubviews", v19, 0xCu);
    sub_10000377C(v20);

    v4 = v110;
  }

  v25 = *(v5 + 8);
  v25(v13, v4);
  v26 = *&v15[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_debugSafeContentBoundsView];
  if (v26)
  {
    [v26 setFrame:{*&v15[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_safeContentBounds], *&v15[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_safeContentBounds + 8], *&v15[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_safeContentBounds + 16], *&v15[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_safeContentBounds + 24]}];
  }

  v27 = &v15[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_safeContentBounds];
  v28 = *&v15[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_safeContentBounds + 16];
  v103 = objc_opt_self();
  v29 = [v103 mainScreen];
  [v29 _referenceBounds];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v115.origin.x = v31;
  v115.origin.y = v33;
  v115.size.width = v35;
  v115.size.height = v37;
  v38 = CGRectGetWidth(v115) < 414.0;
  v39 = 92.0;
  if (!v38)
  {
    v39 = 102.0;
  }

  v40 = v28 - v39;
  Height = CGRectGetHeight(*v27);
  static Logger.mode.getter();
  v42 = v15;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();

  v45 = os_log_type_enabled(v43, v44);
  v107 = v25;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    *v46 = 136446466;
    *&v113[0] = _typeName(_:qualified:)();
    *(&v113[0] + 1) = v47;
    v48._countAndFlagsBits = 58;
    v48._object = 0xE100000000000000;
    String.append(_:)(v48);
    String.append(_:)(*&v42[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_debugIdentifier]);
    v49 = v5;
    v50 = sub_10000D820(*&v113[0], *(&v113[0] + 1), &v111);

    *(v46 + 4) = v50;
    *(v46 + 12) = 2082;
    *v113 = v40;
    *(v113 + 1) = Height;
    type metadata accessor for CGSize(0);
    v51 = String.init<A>(describing:)();
    v53 = sub_10000D820(v51, v52, &v111);

    *(v46 + 14) = v53;
    v5 = v49;
    _os_log_impl(&_mh_execute_header, v43, v44, "[%{public}s] targetSize: %{public}s", v46, 0x16u);
    swift_arrayDestroy();
    v25 = v107;

    v54 = v11;
    v55 = v110;
  }

  else
  {

    v54 = v11;
    v55 = v4;
  }

  v25(v54, v55);
  v58 = v109;
  v59 = OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_contentView;
  v60 = *&v42[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_contentView];
  if (!v60)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  LODWORD(v56) = 1112014848;
  LODWORD(v57) = 1112014848;
  [v60 systemLayoutSizeFittingSize:v40 withHorizontalFittingPriority:Height verticalFittingPriority:{v56, v57}];
  v62 = v61;
  v64 = v63;
  static Logger.mode.getter();
  v65 = v42;
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    *v68 = 136446466;
    *&v113[0] = _typeName(_:qualified:)();
    *(&v113[0] + 1) = v69;
    v70._countAndFlagsBits = 58;
    v70._object = 0xE100000000000000;
    String.append(_:)(v70);
    String.append(_:)(*&v65[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_debugIdentifier]);
    v71 = sub_10000D820(*&v113[0], *(&v113[0] + 1), &v111);
    v108 = v5;
    v72 = v71;

    *(v68 + 4) = v72;
    *(v68 + 12) = 2082;
    *v113 = v62;
    *(v113 + 1) = v64;
    type metadata accessor for CGSize(0);
    v73 = String.init<A>(describing:)();
    v75 = sub_10000D820(v73, v74, &v111);

    *(v68 + 14) = v75;
    _os_log_impl(&_mh_execute_header, v66, v67, "[%{public}s] size: %{public}s", v68, 0x16u);
    swift_arrayDestroy();

    v107(v109, v110);
  }

  else
  {

    v25(v58, v110);
  }

  x = v27->origin.x;
  y = v27->origin.y;
  width = v27->size.width;
  v79 = v27->size.height;
  v116.origin.x = v27->origin.x;
  v116.origin.y = y;
  v116.size.width = width;
  v116.size.height = v79;
  MidX = CGRectGetMidX(v116);
  v117.origin.x = x;
  v117.origin.y = y;
  v117.size.width = width;
  v117.size.height = v79;
  CGRectGetMidY(v117);
  v81 = *&v65[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_model];
  v82 = v104;
  dispatch thunk of LockScreenContentModel.state.getter();
  v83 = (*(v105 + 88))(v82, v106);
  if (v83 == enum case for LockScreenContentState.loading(_:) || v83 == enum case for LockScreenContentState.windDown(_:) || v83 == enum case for LockScreenContentState.bedtime(_:))
  {
    v93 = v27->origin.y;
  }

  else
  {
    if (v83 != enum case for LockScreenContentState.wakeUpGreeting(_:))
    {
LABEL_30:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v84 = [v103 mainScreen];
    [v84 _referenceBounds];
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v92 = v91;

    v118.origin.x = v86;
    v118.origin.y = v88;
    v118.size.width = v90;
    v118.size.height = v92;
    CGRectGetMidX(v118);
    v119.origin.x = v86;
    v119.origin.y = v88;
    v119.size.width = v90;
    v119.size.height = v92;
    v93 = CGRectGetMidY(v119) + v64 / -2.5;
  }

  v94 = *&v42[v59];
  if (!v94)
  {
    goto LABEL_27;
  }

  [v94 setFrame:{MidX + v62 * -0.5, v93, v62, v64}];
  v95 = *&v42[v59];
  if (!v95)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v95 frame];
  v96 = &v65[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_visibleContentFrame];
  v113[0] = *&v65[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_visibleContentFrame];
  v113[1] = *&v65[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_visibleContentFrame + 16];
  v114 = v65[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_visibleContentFrame + 32];
  *v96 = v97;
  *(v96 + 1) = v98;
  *(v96 + 2) = v99;
  *(v96 + 3) = v100;
  v96[32] = 0;
  sub_100001DDC(v113);
  result = *&v65[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_debugActualContentBoundsView];
  if (!result)
  {
    return result;
  }

  if (v96[32])
  {
    goto LABEL_29;
  }

  return [result setFrame:{*v96, *(v96 + 1), *(v96 + 2), *(v96 + 3)}];
}

id sub_100003554(void *a1)
{
  result = [a1 state];
  if (result == 3)
  {
    [a1 translationInView:v1];
    if (fabs(v4) >= fabs(v5))
    {
      v7 = *(v1 + OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_model);
      if (v4 >= 0.0)
      {
        return dispatch thunk of LockScreenContentModel.moveDemoStateBackward()();
      }

      else
      {
        return dispatch thunk of LockScreenContentModel.moveDemoStateForward()();
      }
    }

    else
    {
      v6 = *(v1 + OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_model);
      return dispatch thunk of LockScreenContentModel.toggleDemoMode()();
    }
  }

  return result;
}

id sub_100003674()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LockScreenContainerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000377C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000037C8(uint64_t a1)
{
  sub_1000039A0(0, &qword_10001D4F0, &type metadata accessor for Alarm, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100003854()
{
  result = qword_10001D440;
  if (!qword_10001D440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001D440);
  }

  return result;
}

uint64_t sub_1000038A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000038C0()
{
  result = qword_10001D470;
  if (!qword_10001D470)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D470);
  }

  return result;
}

unint64_t sub_100003918()
{
  result = qword_10001D480;
  if (!qword_10001D480)
  {
    sub_1000039A0(255, &qword_10001D120, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D480);
  }

  return result;
}

void sub_1000039A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100003A04()
{
  v1 = v0 + OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_visibleContentFrame;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_modelSubscriber) = 0;
  *(v0 + OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_alarmSheetSubscriber) = 0;
  *(v0 + OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = v0 + OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView____lazy_storage___screenBounds;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 1;
  v3 = (v0 + OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_safeContentBounds);
  *v3 = 0u;
  v3[1] = 0u;
  *(v0 + OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_contentView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100003B0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100003B50()
{
  swift_getObjectType();
  v3 = _typeName(_:qualified:)();
  v1._countAndFlagsBits = 58;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  String.append(_:)(*(v0 + OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier));
  return v3;
}

uint64_t sub_100003BB8()
{
  [*(v0 + 16) invalidate];

  return _swift_deallocClassInstance(v0, 24, 7);
}

char *sub_100003C00()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_containerView] = 0;
  *&v1[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_lockScreenStateObserver] = 0;
  *&v1[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_contentStateObserver] = 0;
  v1[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_isAlertVisible] = 0;
  v1[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_didConfigureHostConnection] = 0;
  *&v1[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_contentPreferences] = 0;
  *&v1[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_daemonConnection] = 0;
  UUID.init()();
  v12 = UUID.uuidString.getter();
  v14 = v13;
  (*(v8 + 8))(v11, v7);
  sub_10000F2DC(8, v12, v14, v15);

  v16 = static String._fromSubstring(_:)();
  v18 = v17;

  v19 = &v1[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier];
  *v19 = v16;
  v19[1] = v18;
  v20 = objc_allocWithZone(type metadata accessor for LockScreenContentModel());

  p_opt_class_meths = &OBJC_PROTOCOL___UITraitEnvironment.opt_class_meths;
  *&v1[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_model] = LockScreenContentModel.init(debugIdentifier:)();
  v22 = type metadata accessor for LockScreenViewController();
  v39.receiver = v1;
  v39.super_class = v22;
  v23 = objc_msgSendSuper2(&v39, "initWithNibName:bundle:", 0, 0);
  static Logger.mode.getter();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v38 = v27;
    *v26 = 136446210;
    v28 = sub_100003B50();
    v30 = sub_10000D820(v28, v29, &v38);
    v37 = v2;
    v31 = v30;

    *(v26 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v24, v25, "[%{public}s] init", v26, 0xCu);
    sub_10000377C(v27);

    p_opt_class_meths = (&OBJC_PROTOCOL___UITraitEnvironment + 48);

    (*(v3 + 8))(v6, v37);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  v32 = *(p_opt_class_meths[39] + v23);
  v33 = LockScreenContentModel.stateDidChange.getter();

  v38 = v33;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10000FDDC();
  sub_10000E10C(&unk_10001D560, sub_10000FDDC);
  v34 = Publisher<>.sink(receiveValue:)();

  v35 = *&v23[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_contentStateObserver];
  *&v23[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_contentStateObserver] = v34;

  return v23;
}

void sub_10000405C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100004EB0(a1);
  }
}

id sub_100004110()
{
  swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.mode.getter();
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136446210;
    v17 = _typeName(_:qualified:)();
    v18 = v11;
    v12._countAndFlagsBits = 58;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    String.append(_:)(*&v6[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier]);
    v13 = sub_10000D820(v17, v18, &v19);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%{public}s] deinit", v9, 0xCu);
    sub_10000377C(v10);
  }

  (*(v2 + 8))(v5, v1);
  v14 = type metadata accessor for LockScreenViewController();
  v20.receiver = v6;
  v20.super_class = v14;
  return objc_msgSendSuper2(&v20, "dealloc");
}

void sub_1000043DC()
{
  swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LockScreenViewController();
  v48.receiver = v0;
  v48.super_class = v6;
  objc_msgSendSuper2(&v48, "viewDidLoad");
  static Logger.mode.getter();
  v7 = v0;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  p_opt_class_meths = (&OBJC_PROTOCOL___UITraitEnvironment + 48);
  if (os_log_type_enabled(v8, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v47 = v12;
    *v11 = 136446210;
    v45 = _typeName(_:qualified:)();
    v46 = v13;
    v14._countAndFlagsBits = 58;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    String.append(_:)(*&v7[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier]);
    v15 = sub_10000D820(v45, v46, &v47);
    p_opt_class_meths = &OBJC_PROTOCOL___UITraitEnvironment.opt_class_meths;

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%{public}s] view did load", v11, 0xCu);
    sub_10000377C(v12);
  }

  (*(v2 + 8))(v5, v1);
  v16 = *&v7[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_model];
  v17 = (p_opt_class_meths[38] + v7);
  v18 = *v17;
  v19 = v17[1];
  v20 = objc_allocWithZone(type metadata accessor for LockScreenContainerView());
  v21 = v7;
  v22 = v16;

  v23 = sub_10000F428(v22, v21, v18, v19, v20);

  v24 = OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_containerView;
  v25 = *&v21[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_containerView];
  *&v21[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_containerView] = v23;
  v26 = v23;

  v27 = [objc_opt_self() mainScreen];
  [v27 _referenceBounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  [v26 setFrame:{v29, v31, v33, v35}];
  v36 = *&v21[v24];
  if (!v36)
  {
    __break(1u);
    goto LABEL_9;
  }

  v37 = v36;
  v38 = String._bridgeToObjectiveC()();
  [v37 setAccessibilityIdentifier:v38];

  v39 = [v21 view];
  if (!v39)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!*&v21[v24])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v40 = v39;
  [v39 addSubview:?];

  v41 = [v21 view];
  if (v41)
  {
    v42 = v41;
    v43 = String._bridgeToObjectiveC()();
    [v42 setAccessibilityIdentifier:v43];

    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_100004878(char a1, SEL *a2, const char *a3)
{
  swift_getObjectType();
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LockScreenViewController();
  v27.receiver = v3;
  v27.super_class = v12;
  objc_msgSendSuper2(&v27, *a2, a1 & 1);
  static Logger.mode.getter();
  v13 = v3;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v23 = a3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v26 = v18;
    *v17 = 136446210;
    v24 = _typeName(_:qualified:)();
    v25 = v19;
    v20._countAndFlagsBits = 58;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    String.append(_:)(*&v13[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier]);
    v21 = sub_10000D820(v24, v25, &v26);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, v23, v17, 0xCu);
    sub_10000377C(v18);
  }

  return (*(v8 + 8))(v11, v7);
}

void sub_100004AFC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = (&v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000E4F0(0, &qword_10001D440, OS_dispatch_queue_ptr);
  *v19 = static OS_dispatch_queue.main.getter();
  (*(v16 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v15);
  v20 = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v19, v15);
  if (v20)
  {
    static Logger.mode.getter();
    v21 = v5;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v24 = 136446466;
      v39 = _typeName(_:qualified:)();
      v40 = v25;
      v26._countAndFlagsBits = 58;
      v26._object = 0xE100000000000000;
      String.append(_:)(v26);
      String.append(_:)(*&v21[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier]);
      v27 = sub_10000D820(v39, v40, &v43);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2082;
      v39 = *&a1;
      v40 = *&a2;
      v41 = a3;
      v42 = a4;
      type metadata accessor for CGRect(0);
      v28 = String.init<A>(describing:)();
      v30 = sub_10000D820(v28, v29, &v43);

      *(v24 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v22, v23, "[%{public}s] update layout with safe bounds: %{public}s", v24, 0x16u);
      swift_arrayDestroy();
    }

    (*(v11 + 8))(v14, v10);
    v31 = *&v21[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_containerView];
    if (v31)
    {
      v32 = &v31[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_safeContentBounds];
      v33 = *&v31[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_safeContentBounds];
      v34 = *&v31[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_safeContentBounds + 8];
      v35 = *&v31[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_safeContentBounds + 16];
      v36 = *&v31[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_safeContentBounds + 24];
      *v32 = a1;
      v32[1] = a2;
      v32[2] = a3;
      v32[3] = a4;
      v37 = v31;
      sub_1000020AC(v33, v34, v35, v36);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *sub_100004EB0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for LockScreenContentState();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v34 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v9 = &v29[-v8];
  v10 = type metadata accessor for Logger();
  v35 = *(v10 - 8);
  v11 = *(v35 + 64);
  __chkstk_darwin(v10);
  v13 = &v29[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Logger.mode.getter();
  v14 = *(v4 + 16);
  v14(v9, a1, v3);
  v15 = v1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v32 = v10;
    v19 = v18;
    v31 = swift_slowAlloc();
    v38 = v31;
    *v19 = 136446466;
    v36 = _typeName(_:qualified:)();
    v37 = v20;
    v30 = v17;
    v21._countAndFlagsBits = 58;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);
    String.append(_:)(*&v15[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier]);
    v22 = sub_10000D820(v36, v37, &v38);
    ObjectType = v15;
    v23 = v22;

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    v14(v34, v9, v3);
    v24 = String.init<A>(describing:)();
    v26 = v25;
    (*(v4 + 8))(v9, v3);
    v27 = sub_10000D820(v24, v26, &v38);

    *(v19 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v16, v30, "[%{public}s] updated content state: %{public}s", v19, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v13, v32);
  }

  else
  {

    (*(v4 + 8))(v9, v3);
    (*(v35 + 8))(v13, v10);
  }

  return sub_10000955C();
}

void sub_100005230(uint64_t a1)
{
  v2 = v1;
  sub_10000FC54(0, &qword_10001D4F0, &type metadata accessor for Alarm, &type metadata accessor for Optional);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for Alarm();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (&v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000E4F0(0, &qword_10001D440, OS_dispatch_queue_ptr);
  *v17 = static OS_dispatch_queue.main.getter();
  (*(v14 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v13);
  v18 = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v17, v13);
  if (v18)
  {
    sub_10000E780(a1, v7, &qword_10001D4F0, &type metadata accessor for Alarm);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_10000E800(v7, &qword_10001D4F0, &type metadata accessor for Alarm, &type metadata accessor for Optional, sub_10000FC54);
      sub_100006808(1u);
    }

    else
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_100005770(v12);
      (*(v9 + 8))(v12, v8);
    }

    v19 = *(v2 + OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_model);
    dispatch thunk of LockScreenContentModel.didInteractWithAlarm(_:)();
  }

  else
  {
    __break(1u);
  }
}

void *sub_100005560()
{
  swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.mode.getter();
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136446210;
    v16 = _typeName(_:qualified:)();
    v17 = v11;
    v12._countAndFlagsBits = 58;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    String.append(_:)(*&v6[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier]);
    v13 = sub_10000D820(v16, v17, &v18);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%{public}s] contentSizeDidChange", v9, 0xCu);
    sub_10000377C(v10);
  }

  (*(v2 + 8))(v5, v1);
  result = sub_100007234();
  if (result)
  {
    [result didChangeStyle];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100005770(uint64_t a1)
{
  v101 = a1;
  ObjectType = swift_getObjectType();
  sub_10000FC54(0, &qword_10001D4F0, &type metadata accessor for Alarm, &type metadata accessor for Optional);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v96 = &ObjectType - v3;
  v4 = type metadata accessor for Alarm();
  v108 = *(v4 - 8);
  v5 = *(v108 + 64);
  v6 = __chkstk_darwin(v4);
  v89 = &ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v105 = &ObjectType - v9;
  v10 = __chkstk_darwin(v8);
  v104 = &ObjectType - v11;
  v88 = v12;
  __chkstk_darwin(v10);
  v14 = &ObjectType - v13;
  v94 = type metadata accessor for Logger();
  v93 = *(v94 - 8);
  v15 = *(v93 + 64);
  __chkstk_darwin(v94);
  v17 = &ObjectType - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LockScreenViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = objc_opt_self();
  v20 = [v19 bundleForClass:{ObjCClassFromMetadata, ObjectType}];
  v110._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0xD000000000000012;
  v21._object = 0x8000000100012EE0;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v110._countAndFlagsBits = 0;
  v23 = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v110);
  countAndFlagsBits = v23._countAndFlagsBits;
  object = v23._object;

  v24 = [v19 bundleForClass:ObjCClassFromMetadata];
  v111._object = 0xE000000000000000;
  v25._object = 0x8000000100012F00;
  v25._countAndFlagsBits = 0xD000000000000010;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v111._countAndFlagsBits = 0;
  v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v111);
  v98 = v27._countAndFlagsBits;
  v100 = v27._object;

  v28 = [v19 bundleForClass:ObjCClassFromMetadata];
  v112._object = 0xE000000000000000;
  v29._object = 0x8000000100012F20;
  v30 = v101;
  v29._countAndFlagsBits = 0xD000000000000010;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  v112._countAndFlagsBits = 0;
  v32 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v31, v112);
  v90 = v32._countAndFlagsBits;
  v99 = v32._object;

  v33 = [v19 bundleForClass:ObjCClassFromMetadata];
  v113._object = 0xE000000000000000;
  v34._countAndFlagsBits = 0xD000000000000012;
  v34._object = 0x8000000100012F40;
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  v113._countAndFlagsBits = 0;
  v95 = NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, v33, v35, v113);

  static Logger.mode.getter();
  v36 = v108;
  v38 = v108 + 16;
  v37 = *(v108 + 16);
  v39 = v14;
  v37(v14, v30, v4);
  v37(v104, v30, v4);
  v40 = v36;
  v102 = v37;
  v91 = v38;
  v37(v105, v30, v4);
  v92 = v17;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  v43 = os_log_type_enabled(v41, v42);
  v107 = v4;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    aBlock[0] = v45;
    *v44 = 136446978;
    v46 = _typeName(_:qualified:)();
    v48 = sub_10000D820(v46, v47, aBlock);

    *(v44 + 4) = v48;
    *(v44 + 12) = 1026;
    v49 = Alarm.isSleepAlarm.getter() & 1;
    v50 = *(v108 + 8);
    v50(v39, v107);
    *(v44 + 14) = v49;
    *(v44 + 18) = 1026;
    v51 = v104;
    v52 = Alarm.isSnoozed.getter() & 1;
    v50(v51, v107);
    *(v44 + 20) = v52;
    *(v44 + 24) = 1026;
    v4 = v107;
    v53 = v105;
    v54 = Alarm.isFiring.getter() & 1;
    v50(v53, v4);
    v40 = v108;
    *(v44 + 26) = v54;
    _os_log_impl(&_mh_execute_header, v41, v42, "[%{public}s] creating remote alert alarm - is sleep: %{BOOL,public}d, is snoozed: %{BOOL,public}d, is firing: %{BOOL,public}d", v44, 0x1Eu);
    sub_10000377C(v45);
    v30 = v101;
  }

  else
  {
    v55 = *(v36 + 8);
    v55(v105, v4);
    v55(v104, v4);
    v55(v39, v4);
  }

  (*(v93 + 8))(v92, v94);
  v56 = v96;
  v102(v96, v30, v4);
  (*(v40 + 56))(v56, 0, 1, v4);
  static Alarm.statusText(for:includeTime:allowSnoozeCountdown:isShortFormat:)();
  v58 = v57;
  sub_10000E800(v56, &qword_10001D4F0, &type metadata accessor for Alarm, &type metadata accessor for Optional, sub_10000FC54);
  v59 = v97;
  if (v58)
  {
    v60 = String._bridgeToObjectiveC()();
  }

  else
  {
    v60 = 0;
  }

  v61 = [objc_allocWithZone(SBSRemoteContentAlert) initWithTitle:0 message:v60 preferredStyle:0];

  v62 = objc_allocWithZone(SBSRemoteContentAlertAction);
  v63 = String._bridgeToObjectiveC()();
  v64 = [v62 initWithTitle:v63 style:0];

  [v61 addAction:v64];
  if (Alarm.isActive.getter() & 1) != 0 || (Alarm.isSleepAlarm.getter())
  {
    v65 = objc_allocWithZone(SBSRemoteContentAlertAction);
    v66 = String._bridgeToObjectiveC()();
    v67 = [v65 initWithTitle:v66 style:2];

    [v61 addAction:v67];
  }

  v68 = objc_allocWithZone(SBSRemoteContentAlertAction);
  v69 = String._bridgeToObjectiveC()();

  v70 = [v68 initWithTitle:v69 style:1];

  [v61 addAction:v70];
  v59[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_isAlertVisible] = 1;
  sub_10000955C();
  v71 = sub_100007234();
  if (v71)
  {
    v72 = v71;
    v73 = v89;
    v74 = v30;
    v75 = v107;
    v102(v89, v74, v107);
    v76 = v108;
    v77 = (*(v108 + 80) + 40) & ~*(v108 + 80);
    v78 = (v88 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
    v79 = swift_allocObject();
    v80 = countAndFlagsBits;
    *(v79 + 2) = v59;
    *(v79 + 3) = v80;
    *(v79 + 4) = object;
    (*(v76 + 32))(&v79[v77], v73, v75);
    v81 = &v79[v78];
    v82 = v100;
    *v81 = v98;
    v81[1] = v82;
    v83 = &v79[(v78 + 23) & 0xFFFFFFFFFFFFFFF8];
    v84 = v99;
    *v83 = v90;
    v83[1] = v84;
    aBlock[4] = sub_10000EB58;
    aBlock[5] = v79;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006800;
    aBlock[3] = &unk_100018F10;
    v85 = _Block_copy(aBlock);
    v86 = v59;

    [v72 presentAlert:v61 replyBlock:v85];

    swift_unknownObjectRelease();
    _Block_release(v85);
  }

  else
  {
  }
}

uint64_t sub_100006188(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v43 = a8;
  v40 = a6;
  v41 = a7;
  v37 = a3;
  v38 = a4;
  v39 = a9;
  v46 = type metadata accessor for DispatchWorkItemFlags();
  v49 = *(v46 - 8);
  v12 = *(v49 + 64);
  __chkstk_darwin(v46);
  v45 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v47 = *(v14 - 8);
  v48 = v14;
  v15 = *(v47 + 64);
  __chkstk_darwin(v14);
  v42 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Alarm();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E4F0(0, &qword_10001D440, OS_dispatch_queue_ptr);
  v44 = static OS_dispatch_queue.main.getter();
  (*(v18 + 16))(v20, a5, v17);
  v21 = (*(v18 + 80) + 48) & ~*(v18 + 80);
  v22 = (v19 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 2) = a2;
  *(v23 + 3) = a1;
  v24 = v38;
  *(v23 + 4) = v37;
  *(v23 + 5) = v24;
  (*(v18 + 32))(&v23[v21], v20, v17);
  v25 = &v23[v22];
  v26 = v41;
  *v25 = v40;
  *(v25 + 1) = v26;
  v27 = &v23[(v22 + 23) & 0xFFFFFFFFFFFFFFF8];
  v28 = v39;
  *v27 = v43;
  *(v27 + 1) = v28;
  aBlock[4] = sub_10000ED18;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003B0C;
  aBlock[3] = &unk_100018F60;
  v29 = _Block_copy(aBlock);
  v30 = a2;
  v31 = a1;

  v32 = v42;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000E10C(&qword_10001D470, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000FC54(0, &qword_10001D120, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_100003918();
  v34 = v45;
  v33 = v46;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v35 = v44;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v29);

  (*(v49 + 8))(v34, v33);
  return (*(v47 + 8))(v32, v48);
}

void sub_1000065B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(a1 + OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_isAlertVisible) = 0;
  sub_10000955C();
  v15 = [a2 title];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (v17 == a3 && v19 == a4)
    {
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v34 = Alarm.isSleepAlarm.getter();
    sub_100006808(v34 & 1);
    return;
  }

LABEL_7:
  v22 = [a2 title];
  if (v22)
  {
    v23 = v22;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    if (v24 == a6 && v26 == a7)
    {
    }

    else
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v28 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v38 = *(a1 + OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_model);
    dispatch thunk of LockScreenContentModel.dismissActiveAlarm(_:)();
    v35 = v38;
    goto LABEL_24;
  }

LABEL_13:
  v29 = [a2 title];
  if (!v29)
  {
    return;
  }

  v30 = v29;
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  if (v31 == a8 && v33 == a9)
  {
  }

  else
  {
    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v36 & 1) == 0)
    {
      return;
    }
  }

  v39 = *(a1 + OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_model);
  dispatch thunk of LockScreenContentModel.skipUpcomingOccurrenceAlarm()();
  v35 = v39;
LABEL_24:
}

uint64_t sub_100006808(unsigned int a1)
{
  ObjectType = swift_getObjectType();
  v80 = type metadata accessor for Logger();
  v79 = *(v80 - 8);
  v2 = *(v79 + 64);
  __chkstk_darwin(v80);
  v4 = &v74[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v78 = &v74[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v82 = &v74[-v10];
  sub_10000FC54(0, &qword_10001D4C8, &type metadata accessor for URL, &type metadata accessor for Optional);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v74[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v13);
  v18 = &v74[-v17];
  v19 = __chkstk_darwin(v16);
  v21 = &v74[-v20];
  __chkstk_darwin(v19);
  v83 = &v74[-v22];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;
  v26 = objc_allocWithZone(LSApplicationRecord);
  v27 = sub_10000D200(v23, v25, 1);
  v81 = v4;
  v75 = a1;
  if (!v27)
  {
LABEL_2:
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
    v31 = objc_allocWithZone(LSApplicationRecord);
    v32 = sub_10000D200(v28, v30, 1);
    v38 = v83;
    if (v32)
    {
      v39 = v32;
      v40 = [v32 applicationState];
      v41 = [v40 isInstalled];

      if (v41)
      {
        v42 = HKSPSleepURL();
        if (v42)
        {
          v43 = v42;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          (*(v6 + 56))(v21, 0, 1, v5);
        }

        else
        {

          (*(v6 + 56))(v21, 1, 1, v5);
        }

        sub_10000E6EC(v21, v38);
        goto LABEL_18;
      }
    }

    v33 = HKSPSleepFocusConfigurationURL();
    if (v33)
    {
      v34 = v33;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v6 + 56))(v18, 0, 1, v5);
    }

    else
    {
      (*(v6 + 56))(v18, 1, 1, v5);
    }

    v44 = v82;
    sub_10000E6EC(v18, v38);
    goto LABEL_19;
  }

  v35 = v27;
  v36 = [v27 applicationState];
  v37 = [v36 isInstalled];

  if ((v37 & 1) == 0)
  {

    goto LABEL_2;
  }

  v38 = v83;
  URL.init(string:)();

LABEL_18:
  v44 = v82;
LABEL_19:
  sub_10000E780(v38, v15, &qword_10001D4C8, &type metadata accessor for URL);
  if ((*(v6 + 48))(v15, 1, v5) == 1)
  {
    sub_10000E800(v38, &qword_10001D4C8, &type metadata accessor for URL, &type metadata accessor for Optional, sub_10000FC54);
    v45 = v15;
  }

  else
  {
    (*(v6 + 32))(v44, v15, v5);
    v46 = [objc_opt_self() defaultWorkspace];
    if (v46)
    {
      v48 = v46;
      URL._bridgeToObjectiveC()(v47);
      v50 = v49;
      sub_10000FC54(0, &qword_10001D4D8, sub_10000E860, &type metadata accessor for _ContiguousArrayStorage);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000111B0;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v52;
      *(inited + 72) = &type metadata for Bool;
      *(inited + 48) = 1;
      *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 88) = v53;
      *(inited + 120) = &type metadata for Bool;
      *(inited + 96) = 1;
      sub_10000E8C4(inited);
      swift_setDeallocating();
      sub_10000E860();
      swift_arrayDestroy();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v75 = [v48 openSensitiveURL:v50 withOptions:isa];
    }

    else
    {
      v75 = 2;
    }

    v55 = v81;
    static Logger.mode.getter();
    v56 = v78;
    (*(v6 + 16))(v78, v44, v5);
    v57 = v77;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v86[0] = swift_slowAlloc();
      *v60 = 136446722;
      v84 = _typeName(_:qualified:)();
      v85 = v61;
      v62._countAndFlagsBits = 58;
      v62._object = 0xE100000000000000;
      String.append(_:)(v62);
      String.append(_:)(*&v57[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier]);
      v63 = sub_10000D820(v84, v85, v86);

      *(v60 + 4) = v63;
      *(v60 + 12) = 2082;
      sub_10000E10C(&qword_10001D4D0, &type metadata accessor for URL);
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v65;
      v67 = *(v6 + 8);
      v67(v56, v5);
      v68 = sub_10000D820(v64, v66, v86);

      *(v60 + 14) = v68;
      *(v60 + 22) = 2082;
      LOBYTE(v84) = v75;
      v69 = String.init<A>(describingOptional:)();
      v71 = sub_10000D820(v69, v70, v86);

      *(v60 + 24) = v71;
      _os_log_impl(&_mh_execute_header, v58, v59, "[%{public}s] opening %{public}s, success: %{public}s", v60, 0x20u);
      swift_arrayDestroy();

      (*(v79 + 8))(v81, v80);
      v67(v82, v5);
    }

    else
    {

      v72 = *(v6 + 8);
      v72(v56, v5);
      (*(v79 + 8))(v55, v80);
      v72(v44, v5);
    }

    v45 = v83;
  }

  return sub_10000E800(v45, &qword_10001D4C8, &type metadata accessor for URL, &type metadata accessor for Optional, sub_10000FC54);
}

uint64_t sub_100007234()
{
  swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_didConfigureHostConnection) != 1)
  {
    static Logger.mode.getter();
    v10 = v0;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v24[0] = v14;
      *v13 = 136446210;
      *&aBlock = _typeName(_:qualified:)();
      *(&aBlock + 1) = v15;
      v16._countAndFlagsBits = 58;
      v16._object = 0xE100000000000000;
      String.append(_:)(v16);
      String.append(_:)(*&v10[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier]);
      v17 = sub_10000D820(aBlock, *(&aBlock + 1), v24);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "[%{public}s] requested remote content host proxy before configuring connection", v13, 0xCu);
      sub_10000377C(v14);
    }

    (*(v2 + 8))(v5, v1);
    return 0;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  v22 = sub_10000E6E4;
  v23 = v6;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v21 = sub_100007850;
  *(&v21 + 1) = &unk_100018EC0;
  v7 = _Block_copy(&aBlock);
  v8 = v0;

  v9 = [v8 _remoteViewControllerProxyWithErrorHandler:v7];
  _Block_release(v7);
  if (v9)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    aBlock = 0u;
    v21 = 0u;
  }

  v24[0] = aBlock;
  v24[1] = v21;
  if (!*(&v21 + 1))
  {
    sub_10000E800(v24, &unk_10001D4B0, &type metadata for Any[8], &type metadata accessor for Optional, sub_10000FA6C);
    return 0;
  }

  sub_10000FD74(0, &qword_10001D4B8, &protocolRef_SBSRemoteContentHostInterface);
  if (swift_dynamicCast())
  {
    return v19[1];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000075B4(uint64_t a1, void *a2)
{
  swift_getObjectType();
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.mode.getter();
  v9 = a2;
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = v4;
    v13 = v12;
    v24 = swift_slowAlloc();
    *v13 = 136446466;
    v22 = _typeName(_:qualified:)();
    v23 = v14;
    v15._countAndFlagsBits = 58;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    String.append(_:)(*&v9[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier]);
    v16 = sub_10000D820(v22, v23, &v24);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2082;
    v22 = a1;
    swift_errorRetain();
    sub_10000D14C(0, &qword_10001D4C0, &unk_10001D450, &protocol descriptor for Error, sub_10000FD10);
    v17 = String.init<A>(describing:)();
    v19 = sub_10000D820(v17, v18, &v24);

    *(v13 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%{public}s] error acquiring remote content host proxy: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    return (*(v5 + 8))(v8, v21);
  }

  else
  {

    return (*(v5 + 8))(v8, v4);
  }
}

void sub_100007850(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_10000791C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v60 = *(v8 - 8);
  v9 = *(v60 + 64);
  __chkstk_darwin(v8);
  v59 = &v55[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v55[-v12];
  a1[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_didConfigureHostConnection] = 1;
  BSDeserializeCGRectFromXPCDictionaryWithKey();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  static Logger.mode.getter();
  swift_unknownObjectRetain();
  v22 = a1;

  swift_unknownObjectRetain();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v25 = os_log_type_enabled(v23, v24);
  v61 = v22;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v57 = v4;
    v27 = v26;
    v63 = swift_slowAlloc();
    *v27 = 136446978;
    v56 = v24;
    v28 = sub_100003B50();
    v30 = sub_10000D820(v28, v29, &v63);
    v58 = v8;
    v31 = v30;

    *(v27 + 4) = v31;
    *(v27 + 12) = 2082;
    v62[0] = a2;
    sub_10000F27C(0, &qword_10001D500, &type metadata for AnyHashable, &protocol witness table for AnyHashable, &type metadata accessor for Dictionary);

    v32 = String.init<A>(describingOptional:)();
    v34 = sub_10000D820(v32, v33, &v63);

    *(v27 + 14) = v34;
    *(v27 + 22) = 2082;
    *v62 = v15;
    *&v62[1] = v17;
    *&v62[2] = v19;
    *&v62[3] = v21;
    type metadata accessor for CGRect(0);
    v35 = String.init<A>(describing:)();
    v37 = sub_10000D820(v35, v36, &v63);

    *(v27 + 24) = v37;
    *(v27 + 32) = 2082;
    v8 = v58;
    v62[0] = a4;
    sub_10000FD74(0, &qword_10001D508, &protocolRef_OS_xpc_object);
    swift_unknownObjectRetain();
    v38 = String.init<A>(describingOptional:)();
    v40 = sub_10000D820(v38, v39, &v63);

    *(v27 + 34) = v40;
    _os_log_impl(&_mh_execute_header, v23, v56, "[%{public}s] configure with userInfo: %{public}s, bounds: %{public}s endpoint: %{public}s", v27, 0x2Au);
    swift_arrayDestroy();
  }

  v41 = *(v60 + 8);
  v41(v13, v8);
  if (a4)
  {
    v42 = swift_unknownObjectRetain();
    sub_10000AE88(v42);
    swift_unknownObjectRelease();
  }

  else
  {
    v43 = v59;
    static Logger.mode.getter();
    v44 = v61;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v58 = v8;
      v49 = v48;
      v62[0] = v48;
      *v47 = 136446210;
      v50 = sub_100003B50();
      v52 = sub_10000D820(v50, v51, v62);

      *(v47 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v45, v46, "[%{public}s] cannot connect to sleepd due to nil endpoint", v47, 0xCu);
      sub_10000377C(v49);

      v54 = v58;
      v53 = v59;
    }

    else
    {

      v53 = v43;
      v54 = v8;
    }

    v41(v53, v54);
  }

  sub_100004AFC(v15, v17, v19, v21);
}

uint64_t sub_100007E00(uint64_t a1, uint64_t a2)
{
  static MainActor.shared.getter();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_10000EDEC();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    _StringGuts.grow(_:)(66);
    v8._object = 0x8000000100013010;
    v8._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v8);
    v9._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v9);

    v10._countAndFlagsBits = 46;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000080A8()
{
  swift_getObjectType();
  sub_10000FC54(0, &qword_10001D430, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v24 - v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.mode.getter();
  v10 = v0;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v24 = v4;
    v14 = v13;
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 136446210;
    v25 = _typeName(_:qualified:)();
    v26 = v16;
    v17._countAndFlagsBits = 58;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    String.append(_:)(*&v10[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier]);
    v18 = sub_10000D820(v25, v26, &v27);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%{public}s] didChangeContentBounds called, requesting content bounds using ObjC shim", v14, 0xCu);
    sub_10000377C(v15);

    v4 = v24;
  }

  (*(v6 + 8))(v9, v5);
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
  type metadata accessor for MainActor();
  v20 = v10;
  v21 = static MainActor.shared.getter();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = &protocol witness table for MainActor;
  v22[4] = v20;
  sub_10000887C(0, 0, v4, &unk_1000112D0, v22);
}

uint64_t sub_1000083B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  type metadata accessor for MainActor();
  *(v4 + 72) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100008450, v6, v5);
}

uint64_t sub_100008450()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = sub_100007234();
  if (v3)
  {
    v4 = v3;
    v5 = v0[8];
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v0[6] = sub_10000E6A4;
    v0[7] = v7;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100008808;
    v0[5] = &unk_100018E70;
    v8 = _Block_copy(v0 + 2);
    v9 = v0[7];
    v10 = v5;

    [v6 getContentBoundsWithBlock:v8 interface:v4];
    _Block_release(v8);
    swift_unknownObjectRelease();
  }

  v11 = v0[1];

  return v11();
}

void sub_100008594(void *a1, double a2, double a3, double a4, double a5)
{
  swift_getObjectType();
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.mode.getter();
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v18 = 136446466;
    v26 = _typeName(_:qualified:)();
    v27 = v19;
    v20._countAndFlagsBits = 58;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    String.append(_:)(*&v15[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier]);
    v21 = sub_10000D820(v26, v27, &v30);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2082;
    v26 = *&a2;
    v27 = *&a3;
    v28 = a4;
    v29 = a5;
    type metadata accessor for CGRect(0);
    v22 = String.init<A>(describing:)();
    v24 = sub_10000D820(v22, v23, &v30);

    *(v18 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "[%{public}s] received new bounds: %{public}s", v18, 0x16u);
    swift_arrayDestroy();
  }

  (*(v11 + 8))(v14, v10);
  sub_100004AFC(a2, a3, a4, a5);
}

uint64_t sub_100008808(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);

  v9(v11, a2, a3, a4, a5);
}

uint64_t sub_10000887C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10000FC54(0, &qword_10001D430, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000E780(a3, v27 - v11, &qword_10001D430, &type metadata accessor for TaskPriority);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000E800(v12, &qword_10001D430, &type metadata accessor for TaskPriority, &type metadata accessor for Optional, sub_10000FC54);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_10000E800(a3, &qword_10001D430, &type metadata accessor for TaskPriority, &type metadata accessor for Optional, sub_10000FC54);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000E800(a3, &qword_10001D430, &type metadata accessor for TaskPriority, &type metadata accessor for Optional, sub_10000FC54);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100008C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10000FC54(0, &qword_10001D430, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000E780(a3, v27 - v11, &qword_10001D430, &type metadata accessor for TaskPriority);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000E800(v12, &qword_10001D430, &type metadata accessor for TaskPriority, &type metadata accessor for Optional, sub_10000FC54);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v27[0] = a3;
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_10000FA6C(0, &qword_10001D4F8, &type metadata for () + 8, &type metadata accessor for Optional);

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_10000E800(v27[0], &qword_10001D430, &type metadata accessor for TaskPriority, &type metadata accessor for Optional, sub_10000FC54);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000E800(a3, &qword_10001D430, &type metadata accessor for TaskPriority, &type metadata accessor for Optional, sub_10000FC54);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_10000FA6C(0, &qword_10001D4F8, &type metadata for () + 8, &type metadata accessor for Optional);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1000090A0(void *a1, void (*a2)(xpc_object_t), uint64_t a3)
{
  v44 = a3;
  v46 = a2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v45 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v42 - v9;
  static Logger.mode.getter();
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v43 = v5;
    v15 = v4;
    v16 = v14;
    v17 = swift_slowAlloc();
    v47[0] = v17;
    *v16 = 136446210;
    v18 = sub_100003B50();
    v20 = sub_10000D820(v18, v19, v47);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "[%{public}s] getInlinePresentationContentFrame called, returning content size", v16, 0xCu);
    sub_10000377C(v17);

    v4 = v15;
    v5 = v43;
  }

  v21 = *(v5 + 8);
  result = v21(v10, v4);
  v23 = *&v11[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_containerView];
  v24 = v45;
  if (v23)
  {
    v25 = v23 + OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_visibleContentFrame;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    if ((*(v25 + 32) & 1) == 0)
    {
      v28 = *(v25 + 16);
      v29 = *(v25 + 24);
      v26 = *v25;
      v27 = *(v25 + 8);
    }

    static Logger.mode.getter();
    v30 = v11;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v33 = 136446466;
      v34 = sub_100003B50();
      v36 = sub_10000D820(v34, v35, &v48);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2082;
      v47[0] = v26;
      v47[1] = v27;
      v47[2] = v28;
      v47[3] = v29;
      type metadata accessor for CGRect(0);
      v37 = String.init<A>(describing:)();
      v39 = sub_10000D820(v37, v38, &v48);

      *(v33 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v31, v32, "[%{public}s] frame: %{public}s", v33, 0x16u);
      swift_arrayDestroy();

      v40 = v45;
    }

    else
    {

      v40 = v24;
    }

    v21(v40, v4);
    v41 = xpc_dictionary_create(0, 0, 0);
    BSSerializeCGRectToXPCDictionaryWithKey();
    if (v46)
    {
      v46(v41);
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10000955C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v174 = *(v2 - 8);
  v175 = v2;
  v3 = *(v174 + 64);
  v4 = __chkstk_darwin(v2);
  v168 = &v158 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v180 = &v158 - v6;
  v7 = type metadata accessor for LockScreenContentState();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v164 = &v158 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v165 = &v158 - v13;
  v14 = __chkstk_darwin(v12);
  v163 = &v158 - v15;
  v16 = __chkstk_darwin(v14);
  v173 = &v158 - v17;
  v18 = __chkstk_darwin(v16);
  v162 = &v158 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v158 - v21;
  v23 = __chkstk_darwin(v20);
  v161 = &v158 - v24;
  v25 = __chkstk_darwin(v23);
  v167 = &v158 - v26;
  v27 = __chkstk_darwin(v25);
  v172 = &v158 - v28;
  v29 = __chkstk_darwin(v27);
  v176 = &v158 - v30;
  v31 = __chkstk_darwin(v29);
  v160 = &v158 - v32;
  __chkstk_darwin(v31);
  v34 = &v158 - v33;
  v35 = type metadata accessor for DispatchPredicate();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  v39 = (&v158 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000E4F0(0, &qword_10001D440, OS_dispatch_queue_ptr);
  *v39 = static OS_dispatch_queue.main.getter();
  (*(v36 + 104))(v39, enum case for DispatchPredicate.onQueue(_:), v35);
  v40 = _dispatchPreconditionTest(_:)();
  (*(v36 + 8))(v39, v35);
  if ((v40 & 1) == 0)
  {
    __break(1u);
    goto LABEL_71;
  }

  v159 = v22;
  v41 = OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_model;
  v42 = *&v1[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_model];
  dispatch thunk of LockScreenContentModel.state.getter();

  v43 = v8[11];
  LODWORD(v42) = v43(v34, v7);
  v44 = enum case for LockScreenContentState.loading(_:);
  v45 = v8[1];
  v178 = v8 + 1;
  v179 = v45;
  v45(v34, v7);
  if (v42 == v44)
  {
    v46 = v180;
    static Logger.mode.getter();
    v47 = v1;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v183[0] = v51;
      *v50 = 136446210;
      v181 = _typeName(_:qualified:)();
      v182 = v52;
      v53._countAndFlagsBits = 58;
      v53._object = 0xE100000000000000;
      String.append(_:)(v53);
      String.append(_:)(*&v47[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier]);
      v54 = sub_10000D820(v181, v182, v183);

      *(v50 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v48, v49, "[%{public}s] skipping updating content preferences while in loading state", v50, 0xCu);
      sub_10000377C(v51);
    }

    return (*(v174 + 8))(v46, v175);
  }

  v56 = *&v1[v41];
  v57 = v160;
  dispatch thunk of LockScreenContentModel.state.getter();

  v180 = v1;
  v177 = v41;
  v58 = *&v1[v41];
  v59 = v57;
  v60 = v58;
  v61 = dispatch thunk of LockScreenContentModel.hideTime.getter();

  v62 = v8[2];
  v63 = v176;
  v62(v176, v59, v7);
  v170 = v43;
  v171 = v8 + 11;
  v64 = v43(v63, v7);
  LODWORD(v176) = enum case for LockScreenContentState.windDown(_:);
  v92 = v64 == v44;
  v169 = v44;
  v65 = v161;
  if (v92)
  {
LABEL_10:
    v66 = v59;
    v67 = v179;
    v179(v66, v7);
    v160 = 0;
    goto LABEL_14;
  }

  if (v64 != v176 && v64 != enum case for LockScreenContentState.bedtime(_:))
  {
    if (v64 != enum case for LockScreenContentState.wakeUpGreeting(_:))
    {
      goto LABEL_71;
    }

    goto LABEL_10;
  }

  v68 = v59;
  v67 = v179;
  v179(v68, v7);
  v69 = 2;
  if ((v61 & 1) == 0)
  {
    v69 = 0;
  }

  v160 = v69;
LABEL_14:
  v70 = *&v180[v177];
  v71 = v172;
  dispatch thunk of LockScreenContentModel.state.getter();

  v72 = v167;
  v62(v167, v71, v7);
  v73 = v170(v72, v7);
  if (v73 == v169)
  {
    LODWORD(v167) = enum case for LockScreenContentState.bedtime(_:);
LABEL_16:
    v74 = 1;
    goto LABEL_21;
  }

  if (v73 == v176)
  {
    LODWORD(v167) = enum case for LockScreenContentState.bedtime(_:);
    v74 = 2;
  }

  else
  {
    if (v73 != enum case for LockScreenContentState.bedtime(_:))
    {
      if (v73 != enum case for LockScreenContentState.wakeUpGreeting(_:))
      {
        goto LABEL_71;
      }

      LODWORD(v167) = enum case for LockScreenContentState.bedtime(_:);
      goto LABEL_16;
    }

    v74 = 3;
    LODWORD(v167) = v73;
  }

LABEL_21:
  v158 = v74;
  v67(v172, v7);
  v75 = *&v180[v177];
  dispatch thunk of LockScreenContentModel.state.getter();

  v76 = v159;
  v62(v159, v65, v7);
  v77 = v170(v76, v7);
  if (v77 == v169)
  {
    LODWORD(v159) = 0;
    LODWORD(v172) = enum case for LockScreenContentState.wakeUpGreeting(_:);
  }

  else
  {
    LODWORD(v172) = enum case for LockScreenContentState.wakeUpGreeting(_:);
    LODWORD(v159) = 1;
    if (v77 != v176 && v77 != v167)
    {
      if (v77 != v172)
      {
        goto LABEL_71;
      }

      LODWORD(v159) = 0;
      LODWORD(v172) = v77;
    }
  }

  v67(v65, v7);
  v78 = v180;
  v79 = v177;
  v80 = *&v180[v177];
  v81 = v162;
  dispatch thunk of LockScreenContentModel.state.getter();

  v179(v81, v7);
  v82 = *&v78[v79];
  dispatch thunk of LockScreenContentModel.state.getter();

  v179(v81, v7);
  v83 = *&v78[v79];
  dispatch thunk of LockScreenContentModel.state.getter();

  v84 = v81;
  v85 = v179;
  v179(v84, v7);
  v86 = *&v78[v79];
  v87 = v173;
  dispatch thunk of LockScreenContentModel.state.getter();

  v88 = v163;
  v62(v163, v87, v7);
  v89 = v170;
  v90 = v170(v88, v7);
  v91 = v169;
  v92 = v90 == v169 || v90 == v176;
  v93 = v92 || v90 == v167;
  v94 = !v93;
  if (!v93 && v90 != v172)
  {
    goto LABEL_71;
  }

  v85(v173, v7);
  v95 = *&v180[v177];
  v96 = v165;
  dispatch thunk of LockScreenContentModel.state.getter();

  v97 = v164;
  v62(v164, v96, v7);
  v98 = v89(v97, v7);
  v99 = 3;
  if (v98 == v91 || v98 == v176)
  {
    v100 = v94;
    goto LABEL_44;
  }

  v100 = v94;
  if (v98 != v167)
  {
    if (v98 == v172)
    {
      v99 = 4;
      goto LABEL_44;
    }

LABEL_71:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

LABEL_44:
  v101 = v96;
  v102 = v99;
  v85(v101, v7);
  sub_10000FC54(0, &qword_10001D488, sub_10000E178, &type metadata accessor for _ContiguousArrayStorage);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000111C0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v104;
  *(inited + 48) = Int._bridgeToObjectiveC()();
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v105;
  *(inited + 72) = Int._bridgeToObjectiveC()();
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v106;
  v107 = v159;
  *(inited + 96) = Bool._bridgeToObjectiveC()();
  *(inited + 104) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 112) = v108;
  *(inited + 120) = Int._bridgeToObjectiveC()();
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v109;
  *(inited + 144) = Bool._bridgeToObjectiveC()();
  *(inited + 152) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 160) = v110;
  v111 = v180;
  v179 = OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_isAlertVisible;
  v112 = v180[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_isAlertVisible];
  *(inited + 168) = Bool._bridgeToObjectiveC()();
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v113;
  *(inited + 192) = Bool._bridgeToObjectiveC()();
  *(inited + 200) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 208) = v114;
  *(inited + 216) = Bool._bridgeToObjectiveC()();
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v115;
  *(inited + 240) = Int._bridgeToObjectiveC()();
  sub_10000E3F8(inited);
  v116 = v100;
  swift_setDeallocating();
  sub_10000E178();
  swift_arrayDestroy();
  v117 = objc_allocWithZone(SBSRemoteContentPreferences);
  sub_10000E4F0(0, &qword_10001D498, NSNumber_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v119 = [v117 initWithConfiguration:isa];

  v120 = OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_contentPreferences;
  v121 = *&v111[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_contentPreferences];
  *&v111[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_contentPreferences] = v119;

  v122 = v168;
  static Logger.mode.getter();
  v123 = v111;
  v124 = Logger.logObject.getter();
  v125 = static os_log_type_t.default.getter();

  LODWORD(v177) = v125;
  if (os_log_type_enabled(v124, v125))
  {
    v126 = swift_slowAlloc();
    v173 = v102;
    v127 = v126;
    v176 = swift_slowAlloc();
    v183[0] = v176;
    *v127 = 136448770;
    v181 = _typeName(_:qualified:)();
    v182 = v128;
    v178 = v123;
    v129._countAndFlagsBits = 58;
    v129._object = 0xE100000000000000;
    String.append(_:)(v129);
    String.append(_:)(*(v178 + OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier));
    v130 = sub_10000D820(v181, v182, v183);
    LODWORD(v172) = v116;
    v131 = v130;

    *(v127 + 4) = v131;
    *(v127 + 12) = 2082;
    v181 = *&v111[v120];
    v132 = v181;
    sub_10000E4F0(0, &qword_10001D4A0, SBSRemoteContentPreferences_ptr);
    v133 = v132;
    v134 = String.init<A>(describingOptional:)();
    v136 = sub_10000D820(v134, v135, v183);

    *(v127 + 14) = v136;
    *(v127 + 22) = 2082;
    v181 = v160;
    v137 = dispatch thunk of CustomStringConvertible.description.getter();
    v139 = sub_10000D820(v137, v138, v183);

    *(v127 + 24) = v139;
    *(v127 + 32) = 2082;
    v181 = v158;
    v140 = dispatch thunk of CustomStringConvertible.description.getter();
    v142 = sub_10000D820(v140, v141, v183);

    *(v127 + 34) = v142;
    *(v127 + 42) = 2082;
    if (v107)
    {
      v143 = 1702195828;
    }

    else
    {
      v143 = 0x65736C6166;
    }

    if (v107)
    {
      v144 = 0xE400000000000000;
    }

    else
    {
      v144 = 0xE500000000000000;
    }

    v145 = sub_10000D820(v143, v144, v183);

    *(v127 + 44) = v145;
    *(v127 + 52) = 2082;
    v181 = 4;
    v146 = dispatch thunk of CustomStringConvertible.description.getter();
    v148 = sub_10000D820(v146, v147, v183);

    *(v127 + 54) = v148;
    *(v127 + 62) = 2082;
    *(v127 + 64) = sub_10000D820(1702195828, 0xE400000000000000, v183);
    *(v127 + 72) = 2082;
    if (*(v179 + v111))
    {
      v149 = 1702195828;
    }

    else
    {
      v149 = 0x65736C6166;
    }

    if (*(v179 + v111))
    {
      v150 = 0xE400000000000000;
    }

    else
    {
      v150 = 0xE500000000000000;
    }

    v151 = sub_10000D820(v149, v150, v183);

    *(v127 + 74) = v151;
    *(v127 + 82) = 2082;
    *(v127 + 84) = sub_10000D820(1702195828, 0xE400000000000000, v183);
    *(v127 + 92) = 2082;
    if (v172)
    {
      v152 = 1702195828;
    }

    else
    {
      v152 = 0x65736C6166;
    }

    if (v172)
    {
      v153 = 0xE400000000000000;
    }

    else
    {
      v153 = 0xE500000000000000;
    }

    v154 = sub_10000D820(v152, v153, v183);

    *(v127 + 94) = v154;
    *(v127 + 102) = 2082;
    v181 = v173;
    v155 = dispatch thunk of CustomStringConvertible.description.getter();
    v157 = sub_10000D820(v155, v156, v183);

    *(v127 + 104) = v157;
    _os_log_impl(&_mh_execute_header, v124, v177, "[%{public}s] updating content preferences %{public}s, dateTime: %{public}s, background: %{public}s, reduceWhitePoint: %{public}s, homeGestureMode: %{public}s, suppressNotifications: %{public}s, suppressBottomEdgeContent: %{public}s, presentInline: %{public}s, dismissOnTap: %{public}s, preferredNotificationListMode: %{public}s", v127, 0x70u);
    swift_arrayDestroy();

    (*(v174 + 8))(v168, v175);
  }

  else
  {

    (*(v174 + 8))(v122, v175);
  }

  result = sub_100007234();
  if (result)
  {
    [result didChangeStyle];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10000A654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a1;
  v8[3] = a6;
  type metadata accessor for MainActor();
  v8[6] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000A6F0, v10, v9);
}

uint64_t sub_10000A6F0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);

  if (v2)
  {
    v3 = *(v0 + 32);
    v4 = *(v0 + 24);
    v5 = *(*(v0 + 40) + OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_contentPreferences);
    v6 = v5;
    v4(v5);
  }

  **(v0 + 16) = v2 == 0;
  v7 = *(v0 + 8);

  return v7();
}

void *sub_10000A954(char *a1, unint64_t a2)
{
  v45 = a2;
  v3 = type metadata accessor for Logger();
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  __chkstk_darwin(v3);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LockScreenContentState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v41 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v40 = &v38 - v11;
  __chkstk_darwin(v12);
  v14 = &v38 - v13;
  v15 = OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_model;
  v16 = *&a1[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_model];
  dispatch thunk of LockScreenContentModel.state.getter();

  LODWORD(v16) = (*(v7 + 88))(v14, v6);
  v17 = enum case for LockScreenContentState.wakeUpGreeting(_:);
  v18 = *(v7 + 8);
  v18(v14, v6);
  if (v16 == v17)
  {
    if (v45 > 8)
    {
      goto LABEL_14;
    }

    if (((1 << v45) & 0x7B) == 0)
    {
      v19 = *&a1[v15];
      dispatch thunk of LockScreenContentModel.dismissWakeUpGreeting()();
    }
  }

  v39 = v15;
  v20 = *&a1[v15];
  v21 = v40;
  dispatch thunk of LockScreenContentModel.state.getter();

  v22 = v41;
  (*(v7 + 104))(v41, enum case for LockScreenContentState.bedtime(_:), v6);
  v23 = static LockScreenContentState.== infix(_:_:)();
  v18(v22, v6);
  v18(v21, v6);
  v24 = v45;
  v25 = v42;
  if (v23)
  {
    if (v45 <= 8)
    {
      if (((1 << v45) & 0x17B) == 0)
      {
        v26 = *&a1[v39];
        dispatch thunk of LockScreenContentModel.dismissSleepLock()();
      }

      goto LABEL_9;
    }

LABEL_14:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

LABEL_9:
  static Logger.mode.getter();
  v27 = a1;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v30 = 136446466;
    v31 = sub_100003B50();
    v33 = sub_10000D820(v31, v32, &v47);

    *(v30 + 4) = v33;
    *(v30 + 12) = 2082;
    v46 = v24;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = sub_10000D820(v34, v35, &v47);

    *(v30 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v28, v29, "[%{public}s] did dismiss, type: %{public}s", v30, 0x16u);
    swift_arrayDestroy();
  }

  (*(v43 + 8))(v25, v44);
  result = sub_10000C0CC();
  if (result)
  {
    [result didDismissWithReason:v24];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10000AE88(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for Logger();
  v79 = *(v4 - 8);
  v80 = v4;
  v5 = *(v79 + 64);
  __chkstk_darwin(v4);
  v76 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v75 = &v72 - v8;
  __chkstk_darwin(v9);
  v11 = &v72 - v10;
  sub_10000FC54(0, &qword_10001D460, sub_10000D0A4, &type metadata accessor for Published.Publisher);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  v17 = &v72 - v16;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = (&v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000E4F0(0, &qword_10001D440, OS_dispatch_queue_ptr);
  *v22 = static OS_dispatch_queue.main.getter();
  (*(v19 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v18);
  v23 = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v22, v18);
  if (v23)
  {
    v24 = type metadata accessor for LockScreenClient();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    v27 = swift_allocObject();
    sub_10000D0A4();
    aBlock = 0;
    v83 = 0;
    Published.init(initialValue:)();
    swift_beginAccess();
    sub_10000FC54(0, &qword_10001D358, sub_10000D0A4, &type metadata accessor for Published);
    Published.projectedValue.getter();
    swift_endAccess();
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    *(v29 + 16) = sub_10000DFA8;
    *(v29 + 24) = v28;
    sub_10000DFE0();
    v30 = Publisher<>.sink(receiveValue:)();

    (*(v14 + 8))(v17, v13);
    v31 = *&v2[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_lockScreenStateObserver];
    *&v2[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_lockScreenStateObserver] = v30;

    static Logger.mode.getter();
    v32 = v2;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = a1;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v81 = v37;
      *v36 = 136446210;
      aBlock = _typeName(_:qualified:)();
      v83 = v38;
      v39._countAndFlagsBits = 58;
      v39._object = 0xE100000000000000;
      String.append(_:)(v39);
      String.append(_:)(*&v32[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier]);
      v40 = sub_10000D820(aBlock, v83, &v81);

      *(v36 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v33, v34, "[%{public}s] creating connection", v36, 0xCu);
      sub_10000377C(v37);

      a1 = v35;
    }

    v78 = *(v79 + 8);
    v78(v11, v80);
    v41 = [objc_allocWithZone(NSXPCListenerEndpoint) init];
    [v41 _setEndpoint:a1];
    v42 = objc_allocWithZone(NSXPCConnection);
    v73 = v41;
    v43 = [v42 initWithListenerEndpoint:v41];
    v44 = HKSPSleepLockScreenClientInterface();
    [v43 setExportedInterface:v44];

    v74 = v27;
    [v43 setExportedObject:v27];
    v45 = HKSPSleepLockScreenServerInterface();
    [v43 setRemoteObjectInterface:v45];

    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v86 = sub_10000E068;
    v87 = v46;
    aBlock = _NSConcreteStackBlock;
    v83 = 1107296256;
    v84 = sub_100003B0C;
    v85 = &unk_100018D30;
    v47 = _Block_copy(&aBlock);

    [v43 setInterruptionHandler:v47];
    _Block_release(v47);
    v48 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v86 = sub_10000E0A8;
    v87 = v48;
    aBlock = _NSConcreteStackBlock;
    v83 = 1107296256;
    v84 = sub_100003B0C;
    v85 = &unk_100018D58;
    v49 = _Block_copy(&aBlock);

    [v43 setInvalidationHandler:v49];
    _Block_release(v49);
    v50 = v75;
    static Logger.mode.getter();
    v51 = v32;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v81 = v55;
      *v54 = 136446210;
      aBlock = _typeName(_:qualified:)();
      v83 = v56;
      v57._countAndFlagsBits = 58;
      v57._object = 0xE100000000000000;
      String.append(_:)(v57);
      String.append(_:)(*&v51[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier]);
      v58 = sub_10000D820(aBlock, v83, &v81);

      *(v54 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v52, v53, "[%{public}s] resuming connection", v54, 0xCu);
      sub_10000377C(v55);
    }

    v78(v50, v80);
    [v43 resume];
    type metadata accessor for LockScreenViewController.DaemonConnectionWrapper();
    v59 = swift_allocObject();
    *(v59 + 16) = v43;
    v60 = *&v51[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_daemonConnection];
    *&v51[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_daemonConnection] = v59;
    v61 = v43;

    v62 = v76;
    static Logger.mode.getter();
    v63 = v51;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v81 = v67;
      *v66 = 136446210;
      aBlock = _typeName(_:qualified:)();
      v83 = v68;
      v69._countAndFlagsBits = 58;
      v69._object = 0xE100000000000000;
      String.append(_:)(v69);
      String.append(_:)(*&v63[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier]);
      v70 = sub_10000D820(aBlock, v83, &v81);

      *(v66 + 4) = v70;
      _os_log_impl(&_mh_execute_header, v64, v65, "[%{public}s] requested connect", v66, 0xCu);
      sub_10000377C(v67);
    }

    v78(v62, v80);
    v71 = sub_10000C0CC();
    if (v71)
    {
      [v71 connect];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10000B8C0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    static Logger.mode.getter();

    v10 = v9;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v31 = v28;
      *v13 = 136446722;
      HIDWORD(v27) = v12;
      v14 = sub_100003B50();
      v16 = sub_10000D820(v14, v15, &v31);
      v29 = v3;
      v17 = v16;

      *(v13 + 4) = v17;
      *(v13 + 12) = 2082;
      v18 = NSStringFromHKSPSleepLockScreenState();
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = sub_10000D820(v19, v21, &v31);

      *(v13 + 14) = v22;
      *(v13 + 22) = 2082;
      v30 = a2;
      sub_10000D7A0(0, &qword_10001D370, &type metadata accessor for Dictionary);

      v23 = String.init<A>(describingOptional:)();
      v25 = sub_10000D820(v23, v24, &v31);

      *(v13 + 24) = v25;
      _os_log_impl(&_mh_execute_header, v11, BYTE4(v27), "[%{public}s] update to state: %{public}s, user info: %{public}s", v13, 0x20u);
      swift_arrayDestroy();

      (*(v4 + 8))(v7, v29);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }

    v26 = *&v10[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_model];
    dispatch thunk of LockScreenContentModel.lockScreenState.setter();
  }
}

uint64_t sub_10000BBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    sub_10000E4F0(0, &qword_10001D440, OS_dispatch_queue_ptr);
    v17 = static OS_dispatch_queue.main.getter();
    v23 = v10;
    v18 = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    aBlock[4] = a3;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003B0C;
    aBlock[3] = v24;
    v20 = _Block_copy(aBlock);
    v21 = v16;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10000E10C(&qword_10001D470, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000FC54(0, &qword_10001D120, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
    sub_100003918();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);

    (*(v6 + 8))(v9, v5);
    return (*(v11 + 8))(v14, v23);
  }

  return result;
}

uint64_t sub_10000BEC8(void *a1, const char *a2)
{
  swift_getObjectType();
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.mode.getter();
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136446210;
    v21 = _typeName(_:qualified:)();
    v22 = v15;
    v16._countAndFlagsBits = 58;
    v16._object = 0xE100000000000000;
    String.append(_:)(v16);
    String.append(_:)(*&v9[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier]);
    v17 = sub_10000D820(v21, v22, &v23);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, v20, v13, 0xCu);
    sub_10000377C(v14);
  }

  (*(v5 + 8))(v8, v4);
  v18 = *&v9[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_daemonConnection];
  *&v9[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_daemonConnection] = 0;
}

uint64_t sub_10000C0CC()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000E4F0(0, &qword_10001D440, OS_dispatch_queue_ptr);
  *v11 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v14 = *&v1[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_daemonConnection];
    if (v14)
    {
      v15 = *(v14 + 16);
      v16 = swift_allocObject();
      *(v16 + 16) = v1;
      v34 = sub_10000DF28;
      v35 = v16;
      aBlock = _NSConcreteStackBlock;
      v31 = 1107296256;
      v32 = sub_10000C770;
      v33 = &unk_100018CB8;
      v17 = _Block_copy(&aBlock);

      v18 = v15;
      v19 = v1;

      v20 = [v18 remoteObjectProxyWithErrorHandler:v17];
      _Block_release(v17);

      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      sub_10000FD74(0, &qword_10001D448, &protocolRef_HKSPSleepLockScreenServer);
      if (swift_dynamicCast())
      {
        return v36;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      static Logger.mode.getter();
      v21 = v1;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v36 = v25;
        *v24 = 136446210;
        aBlock = _typeName(_:qualified:)();
        v31 = v26;
        v27._countAndFlagsBits = 58;
        v27._object = 0xE100000000000000;
        String.append(_:)(v27);
        String.append(_:)(*&v21[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier]);
        v28 = sub_10000D820(aBlock, v31, &v36);

        *(v24 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v22, v23, "[%{public}s] requested remote server proxy before starting sleepd connection", v24, 0xCu);
        sub_10000377C(v25);
      }

      (*(v3 + 8))(v6, v2);
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000C4F0(uint64_t a1, void *a2)
{
  swift_getObjectType();
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.mode.getter();
  v9 = a2;
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = v4;
    v13 = v12;
    v24 = swift_slowAlloc();
    *v13 = 136446466;
    v22 = _typeName(_:qualified:)();
    v23 = v14;
    v15._countAndFlagsBits = 58;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    String.append(_:)(*&v9[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier]);
    v16 = sub_10000D820(v22, v23, &v24);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2082;
    v22 = a1;
    swift_errorRetain();
    sub_10000FD10(0, &qword_10001D450);
    v17 = String.init<A>(describing:)();
    v19 = sub_10000D820(v17, v18, &v24);

    *(v13 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%{public}s] error acquiring remote server proxy: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    return (*(v5 + 8))(v8, v21);
  }

  else
  {

    return (*(v5 + 8))(v8, v4);
  }
}

void sub_10000C778(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_10000C874()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10000C8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  type metadata accessor for MainActor();
  v6[7] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000C984, v8, v7);
}

uint64_t sub_10000C984()
{
  v2 = v0[6];
  v1 = v0[7];

  if (v2)
  {
    v2 = sub_10000CA50(v0[6]);
  }

  v3 = v0[4];
  v4 = v0[5];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v4;
  v0[3] = v2;

  static Published.subscript.setter();
  v5 = v0[1];

  return v5();
}

uint64_t sub_10000CA50(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000D7A0(0, &qword_10001D438, &type metadata accessor for _DictionaryStorage);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10000DF48(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10000D810(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10000D810(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10000D810(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_10000D810(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10000CEC4()
{
  v1 = OBJC_IVAR____TtC15SleepLockScreen16LockScreenClient__state;
  sub_10000FC54(0, &qword_10001D358, sub_10000D0A4, &type metadata accessor for Published);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for LockScreenClient()
{
  result = qword_10001D348;
  if (!qword_10001D348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000CFE4()
{
  sub_10000FC54(319, &qword_10001D358, sub_10000D0A4, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10000D0A4()
{
  if (!qword_10001D360)
  {
    type metadata accessor for HKSPSleepLockScreenState(255);
    sub_10000D14C(255, &qword_10001D368, &unk_10001D370, &type metadata accessor for Dictionary, sub_10000D7A0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10001D360);
    }
  }
}

void sub_10000D14C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = type metadata accessor for Optional();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_10000D1A8()
{
  result = qword_10001D378;
  if (!qword_10001D378)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10001D378);
  }

  return result;
}

id sub_10000D200(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

double sub_10000D2DC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_10000D360(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10000D3E8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000D430(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000FE88;

  return sub_10000C8E8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10000D4F8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000D5F0;

  return v7(a1);
}

uint64_t sub_10000D5F0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000D6E8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000FE88;

  return sub_10000D4F8(a1, v5);
}

void sub_10000D7A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, unint64_t, void *))
{
  if (!*a2)
  {
    v6 = sub_10000D1A8();
    v7 = a3(a1, &type metadata for AnyHashable, v6, &protocol witness table for AnyHashable);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

_OWORD *sub_10000D810(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000D820(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000D8EC(v11, 0, 0, 1, a1, a2);
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
    sub_10000DF48(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000377C(v11);
  return v7;
}

unint64_t sub_10000D8EC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000D9F8(a5, a6);
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

char *sub_10000D9F8(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000DA44(a1, a2);
  sub_10000DB74(&off_100018A10);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000DA44(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000DC60(v5, 0);
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
        v7 = sub_10000DC60(v10, 0);
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

uint64_t sub_10000DB74(uint64_t result)
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

  result = sub_10000DCEC(result, v12, 1, v3);
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

void *sub_10000DC60(uint64_t a1, uint64_t a2)
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

  sub_10000FA6C(0, &qword_10001D458, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000DCEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000FA6C(0, &qword_10001D458, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
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

unint64_t sub_10000DDF8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10000DE70(a1, a2, v6);
}

unint64_t sub_10000DE70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_10000DF30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000DF48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000DFB0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

unint64_t sub_10000DFE0()
{
  result = qword_10001D468;
  if (!qword_10001D468)
  {
    sub_10000FC54(255, &qword_10001D460, sub_10000D0A4, &type metadata accessor for Published.Publisher);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D468);
  }

  return result;
}

uint64_t sub_10000E10C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10000E178()
{
  if (!qword_10001D490)
  {
    sub_10000E4F0(255, &qword_10001D498, NSNumber_ptr);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10001D490);
    }
  }
}

uint64_t sub_10000E1F0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_10000E2E4;

  return v6(v2 + 32);
}

uint64_t sub_10000E2E4()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_10000E3F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000E538();
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10000DDF8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10000E4F0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_10000E538()
{
  if (!qword_10001D4A8)
  {
    sub_10000E4F0(255, &qword_10001D498, NSNumber_ptr);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_10001D4A8);
    }
  }
}

uint64_t sub_10000E5B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000E5F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000FE88;

  return sub_1000083B8(a1, v4, v5, v6);
}

uint64_t sub_10000E6AC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E6EC(uint64_t a1, uint64_t a2)
{
  sub_10000FC54(0, &qword_10001D4C8, &type metadata accessor for URL, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E780(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_10000FC54(0, a3, a4, &type metadata accessor for Optional);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000E800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_10000E860()
{
  if (!qword_10001D4E0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10001D4E0);
    }
  }
}

unint64_t sub_10000E8C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000F27C(0, &qword_10001D4E8, &type metadata for String, &protocol witness table for String, &type metadata accessor for _DictionaryStorage);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000E9F4(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_10000DDF8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000D810(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10000E9F4(uint64_t a1, uint64_t a2)
{
  sub_10000E860();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000EA58()
{
  v1 = type metadata accessor for Alarm();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_10000EB58(void *a1)
{
  v3 = *(type metadata accessor for Alarm() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_100006188(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_10000EC10()
{
  v1 = type metadata accessor for Alarm();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;

  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

void sub_10000ED18()
{
  v1 = *(type metadata accessor for Alarm() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1000065B4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_10000EDEC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10000EE14()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000EE60()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
    v2 = *(v0 + 40);
  }

  if (*(v0 + 48))
  {
    v3 = *(v0 + 56);
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10000EEC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000EF9C;

  return sub_10000A654(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10000EF9C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000F090()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F0C8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000FE88;

  return sub_10000E1F0(a1, v5);
}

uint64_t sub_10000F180(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000EF9C;

  return sub_10000E1F0(a1, v5);
}

uint64_t sub_10000F238()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return sub_1000090A0(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

void sub_10000F27C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, char *))
{
  if (!*a2)
  {
    v6 = a5(0, a3, &type metadata for Any[8]);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_10000F2DC(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = String.index(_:offsetBy:limitedBy:)();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return String.subscript.getter(a1, a2, a3, a4);
}

void sub_10000F378()
{
  *(v0 + OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_containerView) = 0;
  *(v0 + OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_lockScreenStateObserver) = 0;
  *(v0 + OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_contentStateObserver) = 0;
  *(v0 + OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_isAlertVisible) = 0;
  *(v0 + OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_didConfigureHostConnection) = 0;
  *(v0 + OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_contentPreferences) = 0;
  *(v0 + OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_daemonConnection) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

char *sub_10000F428(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  sub_10000FA6C(0, &qword_10001D510, &type metadata for Bool, &type metadata accessor for Published.Publisher);
  v50[0] = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v50 - v12;
  v14 = type metadata accessor for LockScreenContentView();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = &a5[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_visibleContentFrame];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  *&a5[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_modelSubscriber] = 0;
  *&a5[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_alarmSheetSubscriber] = 0;
  *&a5[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_delegate + 8] = 0;
  v17 = swift_unknownObjectWeakInit();
  v18 = &a5[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView____lazy_storage___screenBounds];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v18[32] = 1;
  v19 = &a5[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_safeContentBounds];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  v20 = OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_contentView;
  *&a5[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_contentView] = 0;
  *&a5[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_model] = a1;
  *(v17 + 8) = &off_100018C00;
  swift_unknownObjectWeakAssign();
  v21 = &a5[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_debugIdentifier];
  *v21 = a3;
  *(v21 + 1) = a4;
  v22 = a1;
  LockScreenContentView.init(model:)();
  sub_10000FABC();
  v24 = objc_allocWithZone(v23);
  v25 = _UIHostingView.init(rootView:)();
  v26 = *&a5[v20];
  *&a5[v20] = v25;

  v27 = objc_opt_self();
  v28 = [v27 hksp_internalUserDefaults];
  v29 = [v28 hksp_lockScreenDebugMode];

  v30 = 0;
  if (v29)
  {
    v30 = [objc_allocWithZone(UIView) init];
  }

  *&a5[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_debugSafeContentBoundsView] = v30;
  v31 = [v27 hksp_internalUserDefaults];
  v32 = [v31 hksp_lockScreenDebugMode];

  if (v32)
  {
    v33 = [objc_allocWithZone(UIView) init];
  }

  else
  {
    v33 = 0;
  }

  *&a5[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_debugActualContentBoundsView] = v33;
  v34 = type metadata accessor for LockScreenContainerView();
  v51.receiver = a5;
  v51.super_class = v34;
  v35 = objc_msgSendSuper2(&v51, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100002954();
  type metadata accessor for LockScreenContentModel();
  sub_10000E10C(&qword_10001D528, &type metadata accessor for LockScreenContentModel);
  v50[1] = ObservableObject<>.objectWillChange.getter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for ObservableObjectPublisher();
  v36 = Publisher<>.sink(receiveValue:)();

  v37 = *&v35[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_modelSubscriber];
  *&v35[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_modelSubscriber] = v36;

  dispatch thunk of LockScreenContentModel.$alarmButtonPressed.getter();
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = swift_allocObject();
  *(v39 + 16) = v38;
  *(v39 + 24) = v22;
  sub_10000FBD8();
  v40 = v22;
  v41 = v50[0];
  v42 = Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v13, v41);
  v43 = *&v35[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_alarmSheetSubscriber];
  *&v35[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_alarmSheetSubscriber] = v42;

  v44 = [v27 hksp_internalUserDefaults];
  v45 = String._bridgeToObjectiveC()();
  v46 = [v44 BOOLForKey:v45];

  if (v46)
  {
    v47 = [objc_allocWithZone(UIPanGestureRecognizer) initWithTarget:v35 action:"didPan:"];
    [v35 addGestureRecognizer:v47];
  }

  sub_10000FC54(0, &qword_10001D538, sub_10000FCB8, &type metadata accessor for _ContiguousArrayStorage);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1000111D0;
  *(v48 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v48 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10000FD74(0, &qword_10001D550, &protocolRef_UITraitEnvironment);
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  return v35;
}

void sub_10000FA6C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10000FABC()
{
  if (!qword_10001D518)
  {
    type metadata accessor for LockScreenContentView();
    sub_10000E10C(&qword_10001D520, &type metadata accessor for LockScreenContentView);
    v0 = type metadata accessor for _UIHostingView();
    if (!v1)
    {
      atomic_store(v0, &qword_10001D518);
    }
  }
}

uint64_t sub_10000FB50()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000FB90()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000FBD0(_BYTE *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_100002610(a1);
}

unint64_t sub_10000FBD8()
{
  result = qword_10001D530;
  if (!qword_10001D530)
  {
    sub_10000FA6C(255, &qword_10001D510, &type metadata for Bool, &type metadata accessor for Published.Publisher);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D530);
  }

  return result;
}

void sub_10000FC54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_10000FCB8()
{
  result = qword_10001D540;
  if (!qword_10001D540)
  {
    sub_10000FD10(255, &qword_10001D548);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_10001D540);
  }

  return result;
}

uint64_t sub_10000FD10(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000FD74(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3 | 1;
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_10000FDDC()
{
  if (!qword_10001D558)
  {
    type metadata accessor for LockScreenContentState();
    v0 = type metadata accessor for PassthroughSubject();
    if (!v1)
    {
      atomic_store(v0, &qword_10001D558);
    }
  }
}

uint64_t sub_10000FFA4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[LockScreenViewController] received boundsDictionary in ObjC shim", v14, 2u);
  }

  BSDeserializeCGRectFromXPCDictionaryWithKey();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  return (*(*(a1 + 32) + 16))(v6, v8, v10, v12);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}