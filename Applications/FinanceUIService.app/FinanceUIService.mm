void sub_100001BB0()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for TransactionPickerServiceViewController();
  objc_msgSendSuper2(&v5, "viewDidLoad");
  v1 = String._bridgeToObjectiveC()();
  v2 = objc_opt_self();
  v3 = [v2 reporterForSubject:v1];
  if (v3)
  {
  }

  else
  {
    [v2 beginSubjectReporting:v1];
    v4 = *&v0[OBJC_IVAR____TtC16FinanceUIService38TransactionPickerServiceViewController_analyticsSession];

    AnalyticsSession.refreshSessionID()();
  }

  sub_100001FB4();
}

void sub_100001D4C(char a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for TransactionPickerServiceViewController();
  objc_msgSendSuper2(&v6, "viewDidDisappear:", a1 & 1);
  v3 = String._bridgeToObjectiveC()();
  v4 = objc_opt_self();
  v5 = [v4 reporterForSubject:v3];
  if (v5)
  {

    [v4 endSubjectReporting:v3];
  }
}

id sub_100001F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v6 = a4(isCurrentExecutor);

  return v6;
}

void sub_100001FB4()
{
  v1 = v0;
  v2 = (*(*(sub_100003FFC(&qword_100019108, &qword_10000FC80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = v43 - v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, &v1[OBJC_IVAR____TtC16FinanceUIService38TransactionPickerServiceViewController_logger], v5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "TransactionPickerViewController - someone requested transaction picker", v12, 2u);
  }

  (*(v6 + 8))(v9, v5);
  sub_100002574(v4);
  v13 = objc_allocWithZone(sub_100003FFC(&qword_100019110, &qword_10000FC88));
  v14 = UIHostingController.init(rootView:)();
  v15 = *&v1[OBJC_IVAR____TtC16FinanceUIService38TransactionPickerServiceViewController_hostingController];
  *&v1[OBJC_IVAR____TtC16FinanceUIService38TransactionPickerServiceViewController_hostingController] = v14;
  v16 = v14;

  v17 = [v16 view];
  if (v17)
  {
    [v1 addChildViewController:v16];
    v18 = [v1 view];
    if (v18)
    {
      v19 = v18;
      [v18 addSubview:v17];

      [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
      sub_100003FFC(&qword_100019118, &unk_10000FC90);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_10000FA50;
      v21 = [v17 topAnchor];
      v22 = [v1 view];
      if (v22)
      {
        v23 = v22;
        v24 = [v22 topAnchor];

        v25 = [v21 constraintEqualToAnchor:v24];
        *(v20 + 32) = v25;
        v26 = [v17 leadingAnchor];
        v27 = [v1 view];
        if (v27)
        {
          v28 = v27;
          v29 = [v27 leadingAnchor];

          v30 = [v26 constraintEqualToAnchor:v29];
          *(v20 + 40) = v30;
          v31 = [v17 trailingAnchor];
          v32 = [v1 view];
          if (v32)
          {
            v33 = v32;
            v34 = [v32 trailingAnchor];

            v35 = [v31 constraintEqualToAnchor:v34];
            *(v20 + 48) = v35;
            v36 = [v17 bottomAnchor];
            v37 = [v1 view];
            if (v37)
            {
              v38 = v37;
              v39 = objc_opt_self();
              v40 = [v38 bottomAnchor];

              v41 = [v36 constraintEqualToAnchor:v40];
              *(v20 + 56) = v41;
              sub_100004444();
              isa = Array._bridgeToObjectiveC()().super.isa;

              [v39 activateConstraints:isa];

              return;
            }

            goto LABEL_23;
          }

LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          return;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  if ([v1 _remoteViewControllerProxy])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
  }

  v46[0] = v44;
  v46[1] = v45;
  if (*(&v45 + 1))
  {
    sub_100003FFC(&qword_1000190F8, &qword_10000FC70);
    if (swift_dynamicCast())
    {
      [v43[1] cancelled];
      swift_unknownObjectRelease();
    }
  }

  else
  {

    sub_1000041D4(v46);
  }
}

uint64_t sub_100002574@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = (*(*(sub_100003FFC(&qword_1000190C0, &qword_10000FC48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v26 = &v26 - v2;
  v30 = sub_100003FFC(&qword_1000190C8, &qword_10000FC50);
  v28 = *(v30 - 8);
  v3 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v27 = &v26 - v4;
  v5 = (*(*(sub_100003FFC(&qword_1000190D0, &qword_10000FC58) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v26 - v6;
  v8 = type metadata accessor for DataRestrictedTransactionPickerView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FinanceStore.DataType();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FinanceStore();
  static FinanceStore.shared.getter();
  (*(v14 + 104))(v17, enum case for FinanceStore.DataType.financialData(_:), v13);
  v18 = FinanceStore.isDataRestricted(for:)();

  (*(v14 + 8))(v17, v13);
  v19 = v29;
  if ((v18 & 1) != 0 || (sub_100003324() & 1) == 0)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    DataRestrictedTransactionPickerView.init(cancelAction:)();
    (*(v9 + 16))(v7, v12, v8);
    swift_storeEnumTagMultiPayload();
    sub_100004168(&qword_1000190D8, &type metadata accessor for DataRestrictedTransactionPickerView);
    sub_10000407C();
    _ConditionalContent<>.init(storage:)();
    return (*(v9 + 8))(v12, v8);
  }

  else
  {
    v20 = type metadata accessor for AppProtectionShieldState();
    (*(*(v20 - 8) + 56))(v26, 1, 1, v20);
    *(swift_allocObject() + 16) = v19;
    type metadata accessor for TransactionPickerView();
    sub_100004168(&qword_1000190E8, &type metadata accessor for TransactionPickerView);
    v21 = v19;
    v22 = v27;
    AppProtectionShieldView.init(forceShieldState:shieldType:dismissAction:showAuthOnAppear:content:)();
    v23 = v28;
    v24 = v30;
    (*(v28 + 16))(v7, v22, v30);
    swift_storeEnumTagMultiPayload();
    sub_100004168(&qword_1000190D8, &type metadata accessor for DataRestrictedTransactionPickerView);
    sub_10000407C();
    _ConditionalContent<>.init(storage:)();
    return (*(v23 + 8))(v22, v24);
  }
}

uint64_t sub_100002ACC()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  TransactionPickerView.init(confirmAction:cancelAction:)();
}

void sub_100002BEC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_9:
    sub_1000041D4(&v8);
    return;
  }

  v3 = Strong;
  v4 = [Strong _remoteViewControllerProxy];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_9;
  }

  sub_100003FFC(&qword_1000190F8, &qword_10000FC70);
  if (swift_dynamicCast())
  {
    sub_100002E14(sub_100002D40, 0, a1);
    v5 = Array<A>.xpcValue.getter();

    [v6 foundWithTransactions:v5];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100002D40(uint64_t a1)
{
  v2 = *(*(type metadata accessor for InternalTransaction() - 8) + 64);
  __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return Transaction.init(internalTransaction:)();
}

unint64_t *sub_100002E14(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v45 = a1;
  v46 = a2;
  v44 = type metadata accessor for InternalTransaction();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for Transaction();
  v10 = *(v43 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v50 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v13)
  {
    v42 = v9;
    v52 = &_swiftEmptyArrayStorage;
    v47 = v6;
    sub_10000423C(0, v13, 0);
    v15 = v47;
    v51 = v52;
    v16 = a3 + 56;
    v17 = -1 << *(a3 + 32);
    v18 = _HashTable.startBucket.getter();
    v19 = 0;
    v40 = v15 + 16;
    v41 = (v15 + 8);
    v38 = v10 + 32;
    v39 = v10;
    v35 = a3 + 64;
    v36 = v13;
    v37 = a3 + 56;
    while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(a3 + 32))
    {
      v21 = v18 >> 6;
      if ((*(v16 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
      {
        goto LABEL_23;
      }

      v48 = v19;
      v22 = *(a3 + 36);
      v23 = a3;
      v24 = *(a3 + 48) + *(v15 + 72) * v18;
      v10 = v42;
      a3 = v44;
      (*(v15 + 16))(v42, v24, v44);
      v45(v10);
      v49 = v4;
      if (v4)
      {
        goto LABEL_27;
      }

      (*v41)(v10, a3);
      v25 = v51;
      v52 = v51;
      v10 = v51[2];
      v26 = v51[3];
      a3 = v10 + 1;
      if (v10 >= v26 >> 1)
      {
        sub_10000423C(v26 > 1, v10 + 1, 1);
        v25 = v52;
      }

      v25[2] = a3;
      v27 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v51 = v25;
      (*(v39 + 32))(v25 + v27 + *(v39 + 72) * v10, v50, v43);
      v20 = 1 << *(v23 + 32);
      if (v18 >= v20)
      {
        goto LABEL_24;
      }

      a3 = v23;
      v16 = v37;
      v28 = *(v37 + 8 * v21);
      if ((v28 & (1 << v18)) == 0)
      {
        goto LABEL_25;
      }

      if (v22 != *(a3 + 36))
      {
        goto LABEL_26;
      }

      v29 = v28 & (-2 << (v18 & 0x3F));
      if (v29)
      {
        v20 = __clz(__rbit64(v29)) | v18 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = v21 << 6;
        v31 = v21 + 1;
        v32 = (v35 + 8 * v21);
        while (v31 < (v20 + 63) >> 6)
        {
          v33 = *v32++;
          v10 = v33;
          v30 += 64;
          ++v31;
          if (v33)
          {
            sub_100004434(v18, v22, 0);
            v20 = __clz(__rbit64(v10)) + v30;
            goto LABEL_4;
          }
        }

        sub_100004434(v18, v22, 0);
      }

LABEL_4:
      v4 = v49;
      v19 = v48 + 1;
      v18 = v20;
      v15 = v47;
      if (v48 + 1 == v36)
      {
        return v51;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    (*v41)(v10, a3);

    __break(1u);
  }

  return result;
}

uint64_t sub_10000321C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v6 = 0u;
    v7 = 0u;
    return sub_1000041D4(&v6);
  }

  v1 = Strong;
  v2 = [Strong _remoteViewControllerProxy];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    *v4 = 0u;
    v5 = 0u;
  }

  v6 = *v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    return sub_1000041D4(&v6);
  }

  sub_100003FFC(&qword_1000190F8, &qword_10000FC70);
  result = swift_dynamicCast();
  if (result)
  {
    [v4[0] cancelled];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100003324()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for XPCEntitlements();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for XPCEntitlementChecker();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  XPCEntitlementChecker.init()();
  [v0 _hostAuditToken];
  XPCEntitlementChecker.entitlements(auditToken:)();
  v14 = XPCEntitlements.isTransactionPickerEnabled.getter();
  (*(v7 + 8))(v10, v6);
  if (v14)
  {
  }

  else
  {
    (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC16FinanceUIService38TransactionPickerServiceViewController_logger, v1);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Not entitled to use Transaction Picker", v17, 2u);
    }

    (*(v2 + 8))(v5, v1);
  }

  return v14 & 1;
}

id sub_100003594(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  Logger.init(subsystem:category:)();
  *&v3[OBJC_IVAR____TtC16FinanceUIService38TransactionPickerServiceViewController_hostingController] = 0;
  v7 = OBJC_IVAR____TtC16FinanceUIService38TransactionPickerServiceViewController_analyticsSession;
  v8 = type metadata accessor for AnalyticsSession();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *&v3[v7] = AnalyticsSession.init()();
  if (a2)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v4;
  v14.super_class = type metadata accessor for TransactionPickerServiceViewController();
  v12 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", v11, a3);

  return v12;
}

id sub_100003780(void *a1)
{
  Logger.init(subsystem:category:)();
  *&v1[OBJC_IVAR____TtC16FinanceUIService38TransactionPickerServiceViewController_hostingController] = 0;
  v3 = OBJC_IVAR____TtC16FinanceUIService38TransactionPickerServiceViewController_analyticsSession;
  v4 = type metadata accessor for AnalyticsSession();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *&v1[v3] = AnalyticsSession.init()();
  v9.receiver = v1;
  v9.super_class = type metadata accessor for TransactionPickerServiceViewController();
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

id sub_100003914()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransactionPickerServiceViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TransactionPickerServiceViewController()
{
  result = qword_100019020;
  if (!qword_100019020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100003A2C()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void type metadata accessor for PKAnalyticsSubject()
{
  if (!qword_100019090)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100019090);
    }
  }
}

uint64_t sub_100003B2C(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100003BA4(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100003C24@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100003C68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100003CB0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100003CDC(uint64_t a1)
{
  v2 = sub_100004168(&qword_1000190B0, type metadata accessor for PKAnalyticsSubject);
  v3 = sub_100004168(&qword_1000190B8, type metadata accessor for PKAnalyticsSubject);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003E28()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100003E64()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100003EB8()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_100003F2C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_100003FFC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100004044()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10000407C()
{
  result = qword_1000190E0;
  if (!qword_1000190E0)
  {
    sub_1000040E0(&qword_1000190C8, &qword_10000FC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000190E0);
  }

  return result;
}

uint64_t sub_1000040E0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100004128()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004168(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000041D4(uint64_t a1)
{
  v2 = sub_100003FFC(&qword_1000190F0, &unk_10000FC60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

size_t sub_10000423C(size_t a1, int64_t a2, char a3)
{
  result = sub_10000425C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10000425C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003FFC(&qword_100019100, &qword_10000FC78);
  v10 = *(type metadata accessor for Transaction() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Transaction() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_100004434(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_100004444()
{
  result = qword_100019120;
  if (!qword_100019120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100019120);
  }

  return result;
}

__n128 sub_100004494(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000044A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1000044E8(uint64_t result, int a2, int a3)
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

uint64_t sub_100004554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  static Color.clear.getter();
  sub_100003FFC(&qword_100019128, &qword_10000FD38);
  State.projectedValue.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;

  View.installWalletAlert(isPresented:completion:)();

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  v10 = (a5 + *(sub_100003FFC(&qword_100019130, &unk_10000FD40) + 36));
  *v10 = 0;
  v10[1] = 0;
  v10[2] = sub_100004844;
  v10[3] = v9;
}

uint64_t sub_1000046E8(void (*a1)(uint64_t))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);
}

uint64_t sub_1000047D0(uint64_t result)
{
  if ((result & 1) == 0)
  {
    v2 = *(v1 + 24);
    return (*(v1 + 16))();
  }

  return result;
}

uint64_t sub_100004804()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100004844()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  return sub_1000046E8(*(v0 + 16));
}

unint64_t sub_100004858()
{
  result = qword_100019138;
  if (!qword_100019138)
  {
    sub_1000040E0(&qword_100019130, &unk_10000FD40);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019138);
  }

  return result;
}

void sub_100004918(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for InstallWalletRemoteViewController();
  objc_msgSendSuper2(&v5, "viewWillAppear:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC16FinanceUIService33InstallWalletRemoteViewController_hostingController];
  if (v3)
  {
    v4 = v3;
    if ([v1 isViewLoaded])
    {
      [v4 setModalPresentationStyle:5];
      [v1 presentViewController:v4 animated:0 completion:0];

      return;
    }
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100004CC4(int a1, id a2, void *a3)
{
  v4 = v3;
  [a2 setSwipeDismissalStyle:0];
  if (a3)
  {
    sub_100003FFC(&qword_100019190, &qword_10000FDB0);
    v7 = type metadata accessor for XPCEntitlementChecker();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    v10 = a3;
    XPCEntitlementChecker.init()();
    sub_100005904();
    FinanceXPCConnection.init(endpoint:entitlementChecker:)();
    FinanceXPCConnection.resume()();
    v11 = *(v4 + OBJC_IVAR____TtC16FinanceUIService33InstallWalletRemoteViewController_daemonConnection);
    *(v4 + OBJC_IVAR____TtC16FinanceUIService33InstallWalletRemoteViewController_daemonConnection) = v14;

    v12 = sub_100004E58(a2, v14);

    v13 = *(v4 + OBJC_IVAR____TtC16FinanceUIService33InstallWalletRemoteViewController_hostingController);
    *(v4 + OBJC_IVAR____TtC16FinanceUIService33InstallWalletRemoteViewController_hostingController) = v12;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

id sub_100004E58(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = v4;

  State.init(wrappedValue:)();
  v6 = objc_allocWithZone(sub_100003FFC(&qword_1000191A0, &qword_10000FDB8));
  *(v6 + *((swift_isaMask & *v6) + qword_100019C40 + 16)) = a1;

  swift_unknownObjectRetain();
  v7 = UIHostingController.init(rootView:)();
  result = [v7 view];
  if (result)
  {
    v9 = result;
    [result setBackgroundColor:0];

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100005000(uint64_t a1)
{
  v2 = (*(*(sub_100003FFC(&qword_1000191A8, &unk_10000FDC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v11 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;
  v6[5] = sub_100006754;
  v6[6] = 0;

  sub_10000C2C8(0, 0, v4, &unk_10000FDD0, v6);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR____TtC16FinanceUIService33InstallWalletRemoteViewController_hostingController);
    v9 = Strong;
    v10 = v8;

    if (v8)
    {
      [v10 dismissViewControllerAnimated:0 completion:0];
    }
  }
}

uint64_t sub_1000052A4()
{
  v1 = OBJC_IVAR____TtC16FinanceUIService33InstallWalletRemoteViewController_log;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC16FinanceUIService33InstallWalletRemoteViewController_daemonConnection);
}

id sub_10000532C()
{
  if (*&v0[OBJC_IVAR____TtC16FinanceUIService33InstallWalletRemoteViewController_daemonConnection])
  {
    v3 = *&v0[OBJC_IVAR____TtC16FinanceUIService33InstallWalletRemoteViewController_daemonConnection];
    sub_100003FFC(&qword_100019190, &qword_10000FDB0);
    sub_100005904();
    FinanceXPCConnection.invalidate()();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for InstallWalletRemoteViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InstallWalletRemoteViewController()
{
  result = qword_100019180;
  if (!qword_100019180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100005530(uint64_t a1, uint64_t a2, void *a3)
{
  Logger.init(subsystem:category:)();
  *&v3[OBJC_IVAR____TtC16FinanceUIService33InstallWalletRemoteViewController_hostingController] = 0;
  *&v3[OBJC_IVAR____TtC16FinanceUIService33InstallWalletRemoteViewController_daemonConnection] = 0;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for InstallWalletRemoteViewController();
  v7 = objc_msgSendSuper2(&v9, "initWithNibName:bundle:", v6, a3);

  return v7;
}

id sub_1000056F4(void *a1)
{
  Logger.init(subsystem:category:)();
  *&v1[OBJC_IVAR____TtC16FinanceUIService33InstallWalletRemoteViewController_hostingController] = 0;
  *&v1[OBJC_IVAR____TtC16FinanceUIService33InstallWalletRemoteViewController_daemonConnection] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for InstallWalletRemoteViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_100005868()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_100005904()
{
  result = qword_100019198;
  if (!qword_100019198)
  {
    sub_1000040E0(&qword_100019190, &qword_10000FDB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019198);
  }

  return result;
}

uint64_t sub_100005968()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000059A0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000059EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005CBC;

  return sub_10000C8B0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100005AB4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100005AFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005BC4;

  return sub_10000C8B0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100005BC4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100005CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = type metadata accessor for Logger();
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v9 = *(v8 + 64) + 15;
  v6[8] = swift_task_alloc();

  return _swift_task_switch(sub_100005D84, 0, 0);
}

uint64_t sub_100005D84()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  Logger.init(subsystem:category:)();
  v0[2] = v4;
  v5 = swift_allocObject();
  v0[9] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = async function pointer to FinanceXPCConnection.execute<A>(_:)[1];

  v7 = swift_task_alloc();
  v0[10] = v7;
  v8 = sub_100003FFC(&qword_1000191B0, &qword_10000FE18);
  v9 = sub_100006C00();
  *v7 = v0;
  v7[1] = sub_100005EE0;

  return FinanceXPCConnection.execute<A>(_:)(v9, sub_100006BB0, v5, v8, &type metadata for () + 8, v9);
}

uint64_t sub_100005EE0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_100006078;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_100005FFC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100005FFC()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100006078()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "electAccountsUI XPC error: %@", v8, 0xCu);
    sub_100006C64(v9);
  }

  else
  {
    v11 = v0[11];
  }

  (*(v0[7] + 8))(v0[8], v0[6]);

  v12 = v0[1];

  return v12();
}

uint64_t ClientToServiceXPCConnection<>.updated(accountSelectionResult:)(uint64_t a1)
{
  v3 = (*(*(sub_100003FFC(&qword_1000191A8, &unk_10000FDC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v14 - v4;
  v6 = type metadata accessor for AccountSelectionResult();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  (*(v7 + 16))(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  (*(v7 + 32))(v10 + v9, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v1;
  v12[5] = sub_1000064DC;
  v12[6] = v10;

  sub_10000C2C8(0, 0, v5, &unk_10000FE00, v12);
}

void sub_1000063F8(void *a1)
{
  v2 = AccountSelectionResult.xpcValue.getter();
  [a1 updated:v2];
}

uint64_t sub_100006454()
{
  v1 = type metadata accessor for AccountSelectionResult();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1000064DC(void *a1)
{
  v3 = *(type metadata accessor for AccountSelectionResult() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = AccountSelectionResult.xpcValue.getter();
  [a1 updated:v5];
}

uint64_t sub_100006570(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005CBC;

  return sub_100005CC0(a1, v4, v5, v6, v7, v8);
}

uint64_t ClientToServiceXPCConnection<>.cancelled()()
{
  v1 = (*(*(sub_100003FFC(&qword_1000191A8, &unk_10000FDC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v3 = &v7 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v5[5] = sub_100006754;
  v5[6] = 0;

  sub_10000C2C8(0, 0, v3, &unk_10000FE08, v5);
}

{
  return sub_10000C7A4(&unk_1000153A0, sub_100006754, &unk_10000FDD0);
}

uint64_t ClientToServiceXPCConnection<>.failed(with:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = (*(*(sub_100003FFC(&qword_1000191A8, &unk_10000FDC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v16 - v9;
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = v4;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v4;
  v13[5] = sub_100006A40;
  v13[6] = v11;
  swift_retain_n();
  v14 = a1;
  sub_100006B18(a2);
  sub_10000C2C8(0, 0, v10, &unk_10000FE10, v13);
}

id sub_1000068D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = [a1 failedWith:a2];
  if (a3)
  {

    v7 = ClientToServiceXPCConnection.connection.getter();
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    *(v8 + 24) = a4;
    v10[4] = sub_100006B60;
    v10[5] = v8;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10000C5B8;
    v10[3] = &unk_100014E50;
    v9 = _Block_copy(v10);

    [v7 scheduleSendBarrierBlock:v9];
    _Block_release(v9);

    return sub_100006BA0(a3);
  }

  return result;
}

uint64_t sub_1000069F0()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100006A50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005BC4;

  return sub_100005CC0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100006B18(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100006B28()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006B60()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100006B88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006BA0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100006BB0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v2(*a1);
  sub_100003FFC(&qword_1000191C8, &qword_10000FE28);
  return CheckedContinuation.resume(returning:)();
}

unint64_t sub_100006C00()
{
  result = qword_1000191B8;
  if (!qword_1000191B8)
  {
    sub_1000040E0(&qword_1000191B0, &qword_10000FE18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000191B8);
  }

  return result;
}

uint64_t sub_100006C64(uint64_t a1)
{
  v2 = sub_100003FFC(&qword_1000191C0, &qword_10000FE20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100006F98()
{
  v1 = v0;
  v2 = type metadata accessor for DeviceType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v1 isViewLoaded])
  {
    goto LABEL_9;
  }

  v7 = *&v1[OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_controllerState];
  if (v7 == 1)
  {
    return;
  }

  if (!v7)
  {
LABEL_9:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v8 = v7;
  static DeviceInfo.deviceType.getter();
  v9 = DeviceType.isiPad.getter();
  (*(v3 + 8))(v6, v2);
  if (v9)
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  [v8 setModalPresentationStyle:v10];
  [v1 presentViewController:v8 animated:1 completion:0];
  sub_100008CE0(v7);
}

void sub_100007184(uint64_t a1, void *a2, void *a3)
{
  v70 = a3;
  v5 = sub_100003FFC(&qword_1000191A8, &unk_10000FDC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v63 = &v56 - v7;
  v62 = type metadata accessor for Logger();
  v61 = *(v62 - 8);
  v8 = *(v61 + 64);
  __chkstk_darwin(v62);
  v66 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for OrderImportPreview();
  v59 = *(v60 - 8);
  v10 = *(v59 + 64);
  v11 = __chkstk_darwin(v60);
  v57 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v58 = &v56 - v14;
  __chkstk_darwin(v13);
  v67 = &v56 - v15;
  v16 = type metadata accessor for SaveOrderUIInfoKeys();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = __chkstk_darwin(v16);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v56 - v22;
  [a2 setSwipeDismissalStyle:0];
  v65 = a2;
  [a2 setLaunchingInterfaceOrientation:1];
  if (a1)
  {
    v24 = v17[13];
    v24(v23, enum case for SaveOrderUIInfoKeys.data(_:), v16);
    v25 = SaveOrderUIInfoKeys.rawValue.getter();
    v27 = v26;
    v28 = v17[1];
    v28(v23, v16);
    v71 = v25;
    v72 = v27;
    AnyHashable.init<A>(_:)();
    if (*(a1 + 16) && (v29 = sub_10000BB48(v73), (v30 & 1) != 0))
    {
      sub_100008D44(*(a1 + 56) + 32 * v29, v74);
      sub_100008CF0(v73);
      if (swift_dynamicCast())
      {
        v68 = v72;
        v69 = v71;
        v24(v21, enum case for SaveOrderUIInfoKeys.sourceApplication(_:), v16);
        v31 = SaveOrderUIInfoKeys.rawValue.getter();
        v33 = v32;
        v28(v21, v16);
        v74[0] = v31;
        v74[1] = v33;
        AnyHashable.init<A>(_:)();
        if (!*(a1 + 16))
        {
          goto LABEL_8;
        }

        v34 = sub_10000BB48(v73);
        if (v35)
        {
          sub_100008D44(*(a1 + 56) + 32 * v34, v74);
          sub_100008CF0(v73);
          swift_dynamicCast();
        }

        else
        {
LABEL_8:
          sub_100008CF0(v73);
        }

        v36 = v64;
        v37 = v68;
        if (v70)
        {
          sub_100003FFC(&qword_100019190, &qword_10000FDB0);
          v38 = type metadata accessor for XPCEntitlementChecker();
          v39 = *(v38 + 48);
          v40 = *(v38 + 52);
          swift_allocObject();
          v41 = v70;
          v42 = XPCEntitlementChecker.init()();
          v73[3] = v38;
          v73[4] = &protocol witness table for XPCEntitlementChecker;
          v73[0] = v42;
          sub_100005904();
          FinanceXPCConnection.init(endpoint:entitlementChecker:)();
          v43 = v74[0];
          v73[0] = v74[0];
          FinanceXPCConnection.resume()();
          v44 = *(v36 + OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_daemonConnection);
          *(v36 + OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_daemonConnection) = v43;

          v45 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v46 = swift_allocObject();
          *(v46 + 16) = v45;
          *(v46 + 24) = v43;
          type metadata accessor for FinanceStore();

          sub_100008E20(v69, v37);

          static FinanceStore.shared.getter();
          v47 = v67;
          OrderImportPreview.init(orderData:sourceApplication:financeStore:completion:)();

          v48 = v59;
          v49 = *(v59 + 16);
          v50 = v58;
          v51 = v60;
          v49(v58, v47, v60);
          v52 = objc_allocWithZone(sub_100003FFC(qword_100019228, &qword_10000FEB0));
          *&v52[*((swift_isaMask & *v52) + qword_100019C40 + 16)] = v65;
          v70 = v41;
          v49(v57, v50, v51);
          swift_unknownObjectRetain();
          v53 = UIHostingController.init(rootView:)();
          sub_100008ED0(v69, v68);

          v54 = *(v48 + 8);
          v54(v50, v51);
          v54(v67, v51);
          v55 = *(v36 + OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_controllerState);
          *(v36 + OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_controllerState) = v53;
          sub_100008CE0(v55);
          return;
        }
      }
    }

    else
    {
      sub_100008CF0(v73);
    }
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100007BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_100007CB4(a1, a3);
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = *(v7 + OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_controllerState);
    v9 = v7;
    sub_100008F24(v8);

    if (v8 >= 2)
    {
      [v8 dismissViewControllerAnimated:1 completion:0];
    }

    sub_100008CE0(v8);
  }
}

uint64_t sub_100007CB4(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v3 = (*(*(sub_100003FFC(&qword_1000191A8, &unk_10000FDC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v61 = &v58 - v4;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (__chkstk_darwin)();
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v58 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v58 - v15;
  __chkstk_darwin(v14);
  v18 = &v58 - v17;
  v19 = type metadata accessor for OrderImportPreview.ImportResult();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = (&v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v23, a1, v19);
  v24 = (*(v20 + 88))(v23, v19);
  if (v24 == enum case for OrderImportPreview.ImportResult.error(_:))
  {
    (*(v20 + 96))(v23, v19);
    v25 = *v23;
    (*(v6 + 16))(v13, v59 + OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_log, v5);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    v28 = v6;
    if (os_log_type_enabled(v26, v27))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v31;
      *v30 = v31;
      _os_log_impl(&_mh_execute_header, v26, v27, "ImportRemoteViewController - Error: %@", v29, 0xCu);
      sub_100006C64(v30);
    }

    (*(v28 + 8))(v13, v5);
    v32 = _convertErrorToNSError(_:)();
    v33 = swift_allocObject();
    v33[2] = v32;
    v33[3] = 0;
    v34 = v60;
    v33[4] = 0;
    v33[5] = v34;
    v35 = type metadata accessor for TaskPriority();
    v36 = v61;
    (*(*(v35 - 8) + 56))(v61, 1, 1, v35);
    v37 = swift_allocObject();
    v37[2] = 0;
    v37[3] = 0;
    v37[4] = v34;
    v37[5] = sub_100008F84;
    v37[6] = v33;
    swift_retain_n();

    sub_10000C2C8(0, 0, v36, &unk_10000FEC0, v37);
  }

  if (v24 == enum case for OrderImportPreview.ImportResult.cancelled(_:))
  {
    (*(v6 + 16))(v16, v59 + OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_log, v5);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "ImportRemoteViewController - User cancelled add", v41, 2u);
    }

    (*(v6 + 8))(v16, v5);
    v42 = type metadata accessor for TaskPriority();
    v43 = v61;
    (*(*(v42 - 8) + 56))(v61, 1, 1, v42);
    v44 = swift_allocObject();
    v44[2] = 0;
    v44[3] = 0;
    v44[4] = v60;
    v44[5] = sub_100006754;
    v44[6] = 0;

    v45 = &unk_10000FEC8;
LABEL_13:
    sub_10000C2C8(0, 0, v43, v45, v44);
  }

  v46 = *(v6 + 16);
  v47 = v59 + OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_log;
  if (v24 == enum case for OrderImportPreview.ImportResult.orderAdded(_:))
  {
    v46(v18, v47, v5);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "ImportRemoteViewController - Successfully added order", v50, 2u);
    }

    (*(v6 + 8))(v18, v5);
    v51 = type metadata accessor for TaskPriority();
    v43 = v61;
    (*(*(v51 - 8) + 56))(v61, 1, 1, v51);
    v44 = swift_allocObject();
    v44[2] = 0;
    v44[3] = 0;
    v44[4] = v60;
    v44[5] = sub_10000CD74;
    v44[6] = 0;

    v45 = &unk_10000FED0;
    goto LABEL_13;
  }

  v46(v10, v47, v5);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&_mh_execute_header, v52, v53, "ImportRemoteViewController - Unknown result type", v54, 2u);
  }

  (*(v6 + 8))(v10, v5);
  v55 = type metadata accessor for TaskPriority();
  v56 = v61;
  (*(*(v55 - 8) + 56))(v61, 1, 1, v55);
  v57 = swift_allocObject();
  v57[2] = 0;
  v57[3] = 0;
  v57[4] = v60;
  v57[5] = sub_100006754;
  v57[6] = 0;

  sub_10000C2C8(0, 0, v56, &unk_10000FEB8, v57);

  return (*(v20 + 8))(v23, v19);
}

uint64_t sub_10000866C()
{
  v1 = OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_log;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100008CE0(*(v0 + OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_controllerState));
  v3 = *(v0 + OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_daemonConnection);
}

id sub_1000086F4()
{
  if (*&v0[OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_daemonConnection])
  {
    v3 = *&v0[OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_daemonConnection];
    sub_100003FFC(&qword_100019190, &qword_10000FDB0);
    sub_100005904();
    FinanceXPCConnection.invalidate()();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImportRemoteViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ImportRemoteViewController()
{
  result = qword_100019218;
  if (!qword_100019218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1000088F8(uint64_t a1, uint64_t a2, void *a3)
{
  Logger.init(subsystem:category:)();
  *&v3[OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_controllerState] = 0;
  *&v3[OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_daemonConnection] = 0;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for ImportRemoteViewController();
  v7 = objc_msgSendSuper2(&v9, "initWithNibName:bundle:", v6, a3);

  return v7;
}

id sub_100008ABC(void *a1)
{
  Logger.init(subsystem:category:)();
  *&v1[OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_controllerState] = 0;
  *&v1[OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_daemonConnection] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ImportRemoteViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_100008C30()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_100008CE0(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_100008D44(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100008DA0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008DD8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008E20(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100008E74()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008ED0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_100008F24(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_100008F34()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

void sub_100008FF4(void *a1, uint64_t a2, void *a3)
{
  v4 = swift_isaMask & *a1;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = v4 + qword_100019C40;
  v6 = *(v4 + qword_100019C40);
  v7 = *(v5 + 8);
  sub_100009418(a3);
}

id sub_1000090E4(char a1)
{
  v3 = swift_isaMask & *v1;
  v4 = *(v3 + qword_100019C40);
  v5 = *(v3 + qword_100019C40 + 8);
  v7.receiver = v1;
  v7.super_class = type metadata accessor for RemoteHostingController();
  objc_msgSendSuper2(&v7, "viewDidDisappear:", a1 & 1);
  return [*(v1 + *((swift_isaMask & *v1) + qword_100019C40 + 16)) deactivate];
}

void sub_1000091C0(void *a1, uint64_t a2, char a3)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a1;
  sub_1000090E4(a3);
}

id sub_100009338()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v1 + qword_100019C40);
  v3 = *(v1 + qword_100019C40 + 8);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for RemoteHostingController();
  return objc_msgSendSuper2(&v5, "dealloc");
}

Swift::Int AccountSelectionUIError.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1000095B0()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

unint64_t sub_1000095F4()
{
  result = qword_1000192B0;
  if (!qword_1000192B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000192B0);
  }

  return result;
}

unint64_t sub_10000964C()
{
  result = qword_1000192B8;
  if (!qword_1000192B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000192B8);
  }

  return result;
}

uint64_t sub_1000096A0(uint64_t a1)
{
  v2 = sub_10000BEC8();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000096DC(uint64_t a1)
{
  v2 = sub_10000BEC8();

  return Error<>._code.getter(a1, v2);
}

unint64_t sub_100009724()
{
  result = qword_1000192C0;
  if (!qword_1000192C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000192C0);
  }

  return result;
}

uint64_t sub_1000097AC(unsigned int *a1, int a2)
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

_WORD *sub_100009800(_WORD *result, int a2, int a3)
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

void sub_10000988C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_subject];
  v7 = objc_opt_self();
  v8 = [v7 reporterForSubject:v6];
  if (v8)
  {

    static Logger.bankConnect.getter();
    v9 = v0;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = sub_10000B5A0(v14, v15, &v19);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Analytics session for %s has already been started", v12, 0xCu);
      sub_10000BE7C(v13);
    }

    (*(v2 + 8))(v5, v1);
  }

  else
  {
    [v7 beginSubjectReporting:v6];
    v17 = *&v0[OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_session];
    AnalyticsSession.refreshSessionID()();
  }
}

void sub_100009AA0(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SelectAccountsViewController();
  objc_msgSendSuper2(&v5, "viewWillAppear:", a1 & 1);
  sub_10000988C();
  if (![v1 isViewLoaded])
  {
    goto LABEL_6;
  }

  v3 = *&v1[OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_controllerState];
  if (v3 == 1)
  {
    return;
  }

  if (!v3)
  {
LABEL_6:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v4 = v3;
  [v4 setModalPresentationStyle:0];
  [v1 presentViewController:v4 animated:1 completion:0];
  sub_100008CE0(v3);
}

id sub_100009C08(char a1)
{
  v3 = sub_100003FFC(&qword_1000191A8, &unk_10000FDC0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for SelectAccountsViewController();
  v12.receiver = v1;
  v12.super_class = v7;
  objc_msgSendSuper2(&v12, "viewWillDisappear:", a1 & 1);
  result = [objc_opt_self() endSubjectReporting:*&v1[OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_subject]];
  v9 = *&v1[OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_daemonConnection];
  if (v9)
  {
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;
    v11[5] = sub_100006754;
    v11[6] = 0;

    sub_10000C2C8(0, 0, v6, &unk_100010208, v11);
  }

  return result;
}

void sub_100009D9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a1;
  a5(a3);
}

void sub_100009E7C(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for SelectAccountsUIInfoKeys();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 setSwipeDismissalStyle:0];
  [a2 setStatusBarHidden:1 withDuration:0.3];
  [a2 setDismissalAnimationStyle:2];
  if (!a3 || !a1)
  {
    goto LABEL_14;
  }

  (*(v9 + 104))(v12, enum case for SelectAccountsUIInfoKeys.sourceApplication(_:), v8);
  v13 = a3;
  v14 = SelectAccountsUIInfoKeys.rawValue.getter();
  v16 = v15;
  (*(v9 + 8))(v12, v8);
  v34 = v14;
  v35 = v16;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16))
  {
    goto LABEL_9;
  }

  v17 = sub_10000BB48(v36);
  if ((v18 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_100008D44(*(a1 + 56) + 32 * v17, v37);
  sub_100008CF0(v36);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    while (1)
    {
LABEL_10:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  v20 = v34;
  v19 = v35;
  v21 = objc_allocWithZone(LSApplicationRecord);

  v22 = sub_10000B4C4(v20, v19, 0);
  sub_100003FFC(&qword_1000191B0, &qword_10000FE18);
  v23 = type metadata accessor for XPCEntitlementChecker();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = v13;
  v27 = v22;
  v28 = XPCEntitlementChecker.init()();
  v36[3] = v23;
  v36[4] = &protocol witness table for XPCEntitlementChecker;
  v36[0] = v28;
  sub_100006C00();
  FinanceXPCConnection.init(endpoint:entitlementChecker:)();
  v29 = v37[0];
  v36[0] = v37[0];
  FinanceXPCConnection.resume()();
  v30 = *(v4 + OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_daemonConnection);
  *(v4 + OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_daemonConnection) = v29;

  if (!v27)
  {
    __break(1u);
LABEL_9:
    sub_100008CF0(v36);
    goto LABEL_10;
  }

  v31 = sub_10000A324(v27, a2, v29);

  v32 = *(v4 + OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_controllerState);
  *(v4 + OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_controllerState) = v31;
  sub_100008CE0(v32);
}

uint64_t sub_10000A324(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SelectAccountsView();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v25 - v13;
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = v17;
  v19 = a1;

  SelectAccountsView.init(applicationRecord:completion:)();
  v20 = v7[2];
  v20(v14, v16, v6);
  v21 = objc_allocWithZone(sub_100003FFC(&qword_100019318, qword_1000101D0));
  *(v21 + *((swift_isaMask & *v21) + qword_100019C40 + 16)) = a2;
  v20(v11, v14, v6);
  swift_unknownObjectRetain();
  v22 = UIHostingController.init(rootView:)();
  v23 = v7[1];
  v23(v14, v6);
  v23(v16, v6);
  return v22;
}

void sub_10000A588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v44 = a2;
  v43 = type metadata accessor for AccountSelectionResult();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v43);
  v7 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v42 - v8;
  v45 = type metadata accessor for AccountSelectionValues();
  v42 = *(v45 - 8);
  v10 = *(v42 + 64);
  __chkstk_darwin(v45);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003FFC(&qword_1000191A8, &unk_10000FDC0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v42 - v15;
  v17 = type metadata accessor for SelectAccountsResult();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, a1, v17);
  v22 = (*(v18 + 88))(v21, v17);
  if (v22 == enum case for SelectAccountsResult.updated(_:))
  {
    (*(v18 + 96))(v21, v17);
    v23 = v42;
    v24 = v21;
    v25 = v45;
    (*(v42 + 32))(v12, v24, v45);
    (*(v23 + 16))(v9, v12, v25);
    v26 = v43;
    (*(v4 + 104))(v9, enum case for AccountSelectionResult.values(_:), v43);
    (*(v4 + 16))(v7, v9, v26);
    v27 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v28 = swift_allocObject();
    (*(v4 + 32))(v28 + v27, v7, v26);
    v29 = type metadata accessor for TaskPriority();
    (*(*(v29 - 8) + 56))(v16, 1, 1, v29);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v44;
    v30[5] = sub_10000BE0C;
    v30[6] = v28;

    sub_10000C2C8(0, 0, v16, &unk_1000101F0, v30);

    (*(v4 + 8))(v9, v26);
    (*(v23 + 8))(v12, v45);
  }

  else
  {
    v31 = v16;
    v32 = v44;
    if (v22 == enum case for SelectAccountsResult.cancelled(_:))
    {
      v33 = type metadata accessor for TaskPriority();
      (*(*(v33 - 8) + 56))(v16, 1, 1, v33);
      v34 = swift_allocObject();
      v34[2] = 0;
      v34[3] = 0;
      v34[4] = v32;
      v34[5] = sub_100006754;
      v34[6] = 0;

      sub_10000C2C8(0, 0, v16, &unk_1000101F8, v34);
    }

    else
    {
      sub_100009724();
      swift_allocError();
      v35 = _convertErrorToNSError(_:)();
      v36 = swift_allocObject();
      v36[2] = v35;
      v36[3] = 0;
      v36[4] = 0;
      v36[5] = v32;
      v37 = type metadata accessor for TaskPriority();
      (*(*(v37 - 8) + 56))(v31, 1, 1, v37);
      v38 = swift_allocObject();
      v38[2] = 0;
      v38[3] = 0;
      v38[4] = v32;
      v38[5] = sub_100006A40;
      v38[6] = v36;
      swift_retain_n();
      sub_10000C2C8(0, 0, v31, &unk_10000FE00, v38);

      (*(v18 + 8))(v21, v17);
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v40 = *(Strong + OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_controllerState);
    v41 = Strong;
    sub_100008F24(v40);

    if (v40 >= 2)
    {
      [v40 dismissViewControllerAnimated:1 completion:0];
    }

    sub_100008CE0(v40);
  }
}

void sub_10000AD44()
{
  v1 = OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_log;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100008CE0(*(v0 + OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_controllerState));
  v3 = *(v0 + OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_daemonConnection);

  v4 = *(v0 + OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_session);

  v5 = *(v0 + OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_subject);
}

id sub_10000ADEC()
{
  if (*&v0[OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_daemonConnection])
  {
    v3 = *&v0[OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_daemonConnection];
    sub_100003FFC(&qword_1000191B0, &qword_10000FE18);
    sub_100006C00();
    FinanceXPCConnection.invalidate()();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for SelectAccountsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SelectAccountsViewController()
{
  result = qword_100019308;
  if (!qword_100019308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10000B010(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  Logger.init(subsystem:category:)();
  *&v3[OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_controllerState] = 0;
  *&v3[OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_daemonConnection] = 0;
  v7 = OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_session;
  v8 = type metadata accessor for AnalyticsSession();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *&v3[v7] = AnalyticsSession.init()();
  v11 = OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_subject;
  *&v4[v11] = String._bridgeToObjectiveC()();
  if (a2)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = v4;
  v15.super_class = type metadata accessor for SelectAccountsViewController();
  v13 = objc_msgSendSuper2(&v15, "initWithNibName:bundle:", v12, a3);

  return v13;
}

id sub_10000B238(void *a1)
{
  v2 = v1;
  Logger.init(subsystem:category:)();
  *&v1[OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_controllerState] = 0;
  *&v1[OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_daemonConnection] = 0;
  v4 = OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_session;
  v5 = type metadata accessor for AnalyticsSession();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *&v1[v4] = AnalyticsSession.init()();
  v8 = OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_subject;
  *&v2[v8] = String._bridgeToObjectiveC()();
  v11.receiver = v2;
  v11.super_class = type metadata accessor for SelectAccountsViewController();
  v9 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);

  if (v9)
  {
  }

  return v9;
}

uint64_t sub_10000B408()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_10000B4C4(uint64_t a1, uint64_t a2, char a3)
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

uint64_t sub_10000B5A0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000B66C(v11, 0, 0, 1, a1, a2);
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
    sub_100008D44(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000BE7C(v11);
  return v7;
}

unint64_t sub_10000B66C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000B778(a5, a6);
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

char *sub_10000B778(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000B7C4(a1, a2);
  sub_10000B8F4(&off_100014B50);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000B7C4(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000B9E0(v5, 0);
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
        v7 = sub_10000B9E0(v10, 0);
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

uint64_t sub_10000B8F4(uint64_t result)
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

  result = sub_10000BA54(result, v12, 1, v3);
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

void *sub_10000B9E0(uint64_t a1, uint64_t a2)
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

  sub_100003FFC(&qword_100019320, &qword_100010200);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000BA54(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003FFC(&qword_100019320, &qword_100010200);
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

unint64_t sub_10000BB48(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10000BB8C(a1, v4);
}

unint64_t sub_10000BB8C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000BC54(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100008CF0(v8);
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

uint64_t sub_10000BCB0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000BCE8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000BD30()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000BD84()
{
  v1 = type metadata accessor for AccountSelectionResult();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10000BE0C(void *a1)
{
  v2 = *(*(type metadata accessor for AccountSelectionResult() - 8) + 80);

  sub_1000063F8(a1);
}

uint64_t sub_10000BE7C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_10000BEC8()
{
  result = qword_100019328;
  if (!qword_100019328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019328);
  }

  return result;
}

uint64_t sub_10000BF40()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_10000BFD0()
{
  v0 = sub_100003FFC(&qword_100019338, &qword_100010268);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  WindowGroup.init(id:title:lazyContent:)();
  sub_10000C22C();
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_10000C0FC()
{
  result = _set_user_dir_suffix();
  if (!result)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000C1AC();
  static App.main()();
  return 0;
}

unint64_t sub_10000C1AC()
{
  result = qword_100019330;
  if (!qword_100019330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019330);
  }

  return result;
}

unint64_t sub_10000C22C()
{
  result = qword_100019340;
  if (!qword_100019340)
  {
    sub_1000040E0(&qword_100019338, &qword_100010268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019340);
  }

  return result;
}

uint64_t sub_10000C2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100003FFC(&qword_1000191A8, &unk_10000FDC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_10000D0E4(a3, v26 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000D4B4(v11, &qword_1000191A8, &unk_10000FDC0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_10000D4B4(a3, &qword_1000191A8, &unk_10000FDC0);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000D4B4(a3, &qword_1000191A8, &unk_10000FDC0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_10000C5B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t ClientToServiceXPCConnection<>.failed(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100003FFC(&qword_1000191A8, &unk_10000FDC0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v16 - v10;
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = v4;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v4;
  v14[5] = sub_100008EC0;
  v14[6] = v12;
  swift_retain_n();
  swift_errorRetain();
  sub_100006B18(a2);
  sub_10000C2C8(0, 0, v11, &unk_100010278, v14);
}

uint64_t sub_10000C7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003FFC(&qword_1000191A8, &unk_10000FDC0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v13 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v3;
  v11[5] = a2;
  v11[6] = 0;

  sub_10000C2C8(0, 0, v9, a3, v11);
}

uint64_t sub_10000C8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = type metadata accessor for Logger();
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v9 = *(v8 + 64) + 15;
  v6[8] = swift_task_alloc();

  return _swift_task_switch(sub_10000C974, 0, 0);
}

uint64_t sub_10000C974()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  Logger.init(subsystem:category:)();
  v0[2] = v4;
  v5 = swift_allocObject();
  v0[9] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = async function pointer to FinanceXPCConnection.execute<A>(_:)[1];

  v7 = swift_task_alloc();
  v0[10] = v7;
  v8 = sub_100003FFC(&qword_100019190, &qword_10000FDB0);
  v9 = sub_100005904();
  *v7 = v0;
  v7[1] = sub_10000CAD0;

  return FinanceXPCConnection.execute<A>(_:)(v9, sub_100006BB0, v5, v8, &type metadata for () + 8, v9);
}

uint64_t sub_10000CAD0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_10000CBEC;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_100005FFC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10000CBEC()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "SaveOrderUI XPC error: %@", v8, 0xCu);
    sub_10000D4B4(v9, &qword_1000191C0, &qword_10000FE20);
  }

  else
  {
    v11 = v0[11];
  }

  (*(v0[7] + 8))(v0[8], v0[6]);

  v12 = v0[1];

  return v12();
}

void sub_10000CD84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for FinanceError();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = a2;
  swift_errorRetain();
  sub_100003FFC(&qword_100019348, &qword_100010288);
  if (swift_dynamicCast())
  {
    (*(v9 + 8))(v12, v8);
    v13 = _convertErrorToNSError(_:)();
  }

  else
  {
    sub_10000D03C();
    swift_allocError();
    (*(v9 + 104))(v14, enum case for FinanceError.unknown(_:), v8);
    v13 = _convertErrorToNSError(_:)();
  }

  [a1 failedWith:v13];

  if (a3)
  {

    v15 = ClientToServiceXPCConnection.connection.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = a4;
    aBlock[4] = sub_100006B60;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C5B8;
    aBlock[3] = &unk_100015458;
    v17 = _Block_copy(aBlock);

    [v15 scheduleSendBarrierBlock:v17];
    _Block_release(v17);

    sub_100006BA0(a3);
  }
}

uint64_t sub_10000CFEC()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_10000D03C()
{
  result = qword_100019350;
  if (!qword_100019350)
  {
    type metadata accessor for FinanceError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019350);
  }

  return result;
}

uint64_t sub_10000D094()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000D0CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000D0E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003FFC(&qword_1000191A8, &unk_10000FDC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000D154(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000D24C;

  return v7(a1);
}

uint64_t sub_10000D24C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000D344(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005CBC;

  return sub_10000D154(a1, v5);
}

uint64_t sub_10000D3FC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005BC4;

  return sub_10000D154(a1, v5);
}

uint64_t sub_10000D4B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003FFC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000D528(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10000D54C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000D5A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_10000D5FC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_10000D62C(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v38[1] = a3;
  v39 = a2;
  v40 = a1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v41 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v38 - v10;
  v12 = OBJC_IVAR____TtC16FinanceUIService27FinanceRemoteViewController_log;
  v13 = v6[2];
  v13(v38 - v10, &v4[OBJC_IVAR____TtC16FinanceUIService27FinanceRemoteViewController_log], v5);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Configuring view in FinanceUIService", v16, 2u);
  }

  v17 = v6[1];
  v17(v11, v5);
  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  v47 = sub_10000EA00;
  v48 = v18;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v46 = sub_10000DB28;
  *(&v46 + 1) = &unk_100015650;
  v19 = _Block_copy(&aBlock);
  v20 = v4;

  v21 = [v20 _remoteViewControllerProxyWithErrorHandler:v19];
  _Block_release(v19);
  if (v21)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
  }

  aBlock = v43;
  v46 = v44;
  sub_10000E958(&aBlock, &v43);
  if (!*(&v44 + 1))
  {
    sub_10000D4B4(&v43, &qword_1000190F0, &unk_10000FC60);
    goto LABEL_14;
  }

  sub_100003FFC(&qword_100019398, &unk_100010350);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v29 = &v4[v12];
    v30 = v41;
    v13(v41, v29, v5);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Could not create remote ViewController configuration proxy", v33, 2u);
    }

    v17(v30, v5);
    goto LABEL_23;
  }

  v22 = v40;
  if (!v40)
  {
    __break(1u);
    return;
  }

  v23 = v42;
  v24 = [v40 xpcEndpoint];
  v25 = v39;
  if (v24)
  {
    v26 = v24;
    v27 = [objc_allocWithZone(NSXPCListenerEndpoint) init];
    v28 = v27;
    if (v27)
    {
      [v27 _setEndpoint:v26];
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0;
  }

  v34 = [v22 userInfo];
  if (v34)
  {
    v35 = v34;
    v36 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v36 = 0;
  }

  (*((swift_isaMask & *v20) + 0x70))(v36, v23, v28);

  if (!v25)
  {
    sub_10000D4B4(&aBlock, &qword_1000190F0, &unk_10000FC60);
    swift_unknownObjectRelease();

    return;
  }

  v25(v37);
  swift_unknownObjectRelease();

  sub_100006BA0(v25);
LABEL_23:
  sub_10000D4B4(&aBlock, &qword_1000190F0, &unk_10000FC60);
}

void sub_10000DB28(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id sub_10000DCD8(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v30[1] = a3;
  v31 = a2;
  v32 = a1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v33 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v30 - v10;
  v12 = OBJC_IVAR____TtC16FinanceUIService27FinanceRemoteViewController_log;
  v13 = v6[2];
  v13(v30 - v10, &v4[OBJC_IVAR____TtC16FinanceUIService27FinanceRemoteViewController_log], v5);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Activating view in FinanceUIService", v16, 2u);
  }

  v17 = v6[1];
  v17(v11, v5);
  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  v38 = sub_10000E918;
  v39 = v18;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v37 = sub_10000DB28;
  *(&v37 + 1) = &unk_1000155D8;
  v19 = _Block_copy(&aBlock);
  v20 = v4;

  v21 = [v20 _remoteViewControllerProxyWithErrorHandler:v19];
  _Block_release(v19);
  if (v21)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  aBlock = v34;
  v37 = v35;
  sub_10000E958(&aBlock, &v34);
  if (!*(&v35 + 1))
  {
    sub_10000D4B4(&v34, &qword_1000190F0, &unk_10000FC60);
    goto LABEL_12;
  }

  sub_100003FFC(&qword_100019398, &unk_100010350);
  if (!swift_dynamicCast())
  {
LABEL_12:
    v25 = &v4[v12];
    v26 = v33;
    v13(v33, v25, v5);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Could not create remote ViewController activation proxy", v29, 2u);
    }

    v17(v26, v5);
    return sub_10000D4B4(&aBlock, &qword_1000190F0, &unk_10000FC60);
  }

  result = v32;
  if (!v32)
  {
    __break(1u);
    return result;
  }

  v23 = v31;
  if (!v31)
  {
    sub_10000D4B4(&aBlock, &qword_1000190F0, &unk_10000FC60);
    return swift_unknownObjectRelease();
  }

  v23(v24);
  swift_unknownObjectRelease();
  sub_100006BA0(v23);
  return sub_10000D4B4(&aBlock, &qword_1000190F0, &unk_10000FC60);
}

uint64_t sub_10000E0F0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    (*(v8 + 16))(v11, a2 + OBJC_IVAR____TtC16FinanceUIService27FinanceRemoteViewController_log, v7);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, a4, v14, 0xCu);
      sub_10000D4B4(v15, &qword_1000191C0, &qword_10000FE20);
    }

    else
    {
    }

    (*(v8 + 8))(v11, v7);
  }

  else
  {
  }
}

id sub_10000E748()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FinanceRemoteViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FinanceRemoteViewController()
{
  result = qword_100019388;
  if (!qword_100019388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000E840()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000E8D0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E940(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E958(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003FFC(&qword_1000190F0, &unk_10000FC60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E9C8()
{

  return _swift_deallocObject(v0, 24, 7);
}