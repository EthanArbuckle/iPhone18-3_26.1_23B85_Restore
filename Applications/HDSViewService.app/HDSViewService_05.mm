uint64_t sub_1000796B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_viewModel;
  v7 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  *(v3 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_askSiriStatesPresented) = &_swiftEmptySetSingleton;
  *(v3 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_finalScreenOfSetupFlowDisplayed) = 0;
  *(v3 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_setupSession) = 0;
  *(v3 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_currentViewController) = 0;
  *(v3 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_softwareUpdateForHomepodPresented) = 0;
  *(v3 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_noP2PRouterPresented) = 0;
  *(v3 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_appleMusicPromotionPresented) = 0;
  *(v3 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_remoteViewController) = a2;
  v8 = objc_allocWithZone(type metadata accessor for HomePodSetupRouter());
  swift_unknownObjectRetain();
  v9 = [v8 init];
  v10 = (v3 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_router);
  *v10 = v9;
  v10[1] = &off_1000F0238;
  *(v3 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state) = 0;
  type metadata accessor for HomePodSetupInteractor();
  swift_allocObject();
  v11 = v9;
  v12 = sub_1000A34AC(a1);
  swift_unknownObjectRelease();
  v13 = (v3 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
  *v13 = v12;
  v13[1] = &off_1000F1F80;
  v12[5] = &off_1000F0DF8;
  swift_unknownObjectWeakAssign();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = &v11[OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_didDismiss];
  v16 = *&v11[OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_didDismiss];
  v17 = *&v11[OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_didDismiss + 8];
  *v15 = sub_100083108;
  v15[1] = v14;

  sub_1000616F4(v16);

  v18 = swift_allocObject();
  swift_weakInit();

  v19 = &v11[OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_prepareForPresentation];
  v20 = *&v11[OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_prepareForPresentation];
  v21 = *&v11[OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_prepareForPresentation + 8];
  *v19 = sub_100083110;
  v19[1] = v18;

  sub_1000616F4(v20);

  return v3;
}

void sub_100079950()
{
  if (qword_1001016D0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100012AAC(v0, qword_100103DD0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "<loom:ViewService:matchHomePodSetupWarnings> HomePodSetupPresenter: didDismiss called", v3, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_remoteViewController;
    v7 = *(Strong + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_remoteViewController);
    if (v7)
    {
      [v7 dismiss];
      v8 = *(v5 + v6);
      if (v8)
      {
        [v8 invalidate];
      }
    }
  }

  else
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "<loom:ViewService:matchHomePodSetupWarnings> HomePodSetupPresenter: didDismiss failed, self is nil", v11, 2u);
    }
  }
}

uint64_t sub_100079B08(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 24) = a2;
    swift_unknownObjectWeakAssign();
    sub_100079134();
  }

  swift_beginAccess();
  v4 = swift_weakLoadStrong();
  if (v4)
  {
    v5 = &off_1000F0D90;
  }

  else
  {
    v5 = 0;
  }

  ObjectType = swift_getObjectType();
  return (*(a2 + 16))(v4, v5, ObjectType, a2);
}

void sub_100079BE0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1001016D0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100012AAC(v9, qword_100103DD0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "<loom:ViewService:matchHomePodSetupPresenterProgress> HomePodSetupPresenter: beginFlow called.", v12, 2u);
  }

  sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v13 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_8;
  }

  v14 = *(v2 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
  swift_unknownObjectWeakAssign();
  [*(v14 + 80) setPresentingViewController:a1];
  v15 = *(v2 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_router);
  swift_unknownObjectWeakAssign();
  if (!IsAppleInternalBuild())
  {
    goto LABEL_10;
  }

  if (qword_100101608 != -1)
  {
    goto LABEL_14;
  }

LABEL_8:
  *(qword_1001086C0 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_indexToNextState) = 0;
  v16 = sub_1000A86D8();
  if (v16 != 70)
  {
    *(v2 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state) = v16;
  }

LABEL_10:
  if (sub_1000A83F8())
  {
    sub_1000A8CFC(-71146);
    *(v2 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state) = 63;
  }

  sub_10007E89C();
}

uint64_t sub_100079EA4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_remoteViewController);
  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
    [v4 setIdleTimerDisabled:0 forReason:v5];
  }

  v6 = OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_router;
  if ((*(*(v2 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_router) + OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_dismissed) & 1) == 0)
  {
    if (qword_1001016D0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100012AAC(v7, qword_100103DD0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "<loom:ViewService:matchHomePodSetupWarnings> HomePodSetupFlowViewController: disappeared without dismiss (device locked?)...dismissing UI", v10, 2u);
    }

    v11 = *(v2 + v6);
    swift_unknownObjectRetain();
    sub_1000610CC(a1, a1 != 19);
    swift_unknownObjectRelease();
  }

  v12 = *(v2 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
  sub_1000A8B18(a1, *(v2 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state));
  sub_1000A74B0();
  v13 = *(v2 + v6);
  swift_unknownObjectRetain();
  sub_1000610CC(5, 1);

  return swift_unknownObjectRelease();
}

void sub_10007A070(uint64_t a1)
{
  v2 = v1;
  v315 = a1;
  v3 = sub_10000E6C4(&qword_100101F08, &unk_1000BD100);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v309 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v313 = (&v309 - v9);
  v10 = __chkstk_darwin(v8);
  v12 = &v309 - v11;
  __chkstk_darwin(v10);
  v14 = &v309 - v13;
  v314 = type metadata accessor for DispatchPredicate();
  v15 = *(v314 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v314);
  v18 = (&v309 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1001016D0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_100012AAC(v19, qword_100103DD0);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  v23 = os_log_type_enabled(v21, v22);
  v310 = v14;
  v316 = v2;
  v311 = v7;
  v309 = v12;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&aBlock = v25;
    *v24 = 136315138;
    v26 = sub_10007869C(*(v2 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state));
    v28 = sub_1000B08A0(v26, v27, &aBlock);

    *(v24 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "<loom:ViewService:matchHomePodSetupPresenterProgress> HomePodSetupPresenter: step completed called with state: %s", v24, 0xCu);
    sub_10000E70C(v25);
  }

  v29 = v315;
  sub_1000161DC(v315, &aBlock);
  v312 = v20;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v318[0] = v33;
    *v32 = 136315138;
    v34 = sub_10000BFCC();
    v36 = v35;
    sub_100012E08(&aBlock);
    v37 = sub_1000B08A0(v34, v36, v318);

    *(v32 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v30, v31, "<loom:ViewService:matchHomePodSetupPresenterProgress> HomePodSetupPresenter: stepResult: %s", v32, 0xCu);
    sub_10000E70C(v33);
  }

  else
  {

    sub_100012E08(&aBlock);
  }

  v38 = v316;
  sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
  *v18 = static OS_dispatch_queue.main.getter();
  v39 = v314;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v314);
  v40 = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v18, v39);
  if ((v40 & 1) == 0)
  {
    __break(1u);
LABEL_339:
    swift_once();
    goto LABEL_11;
  }

  v31 = &unk_100108000;
  if (!IsAppleInternalBuild())
  {
    goto LABEL_16;
  }

  if (qword_100101608 != -1)
  {
    goto LABEL_339;
  }

LABEL_11:
  sub_10003BBB0(v29, *(v38 + v31[324]));
  if (sub_10000FEC4(*v29) == 0x754274726F706572 && v41 == 0xE900000000000067)
  {

LABEL_15:
    sub_1000809E4();
    goto LABEL_16;
  }

  v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v42)
  {
    goto LABEL_15;
  }

LABEL_16:
  v43 = v31[324];
  v44 = *(v38 + v43);
  switch(v44)
  {
    case 1:
      sub_10000F25C((v29 + 8), &aBlock, &qword_1001025D0, &unk_1000BD010);
      if (*(&v321 + 1))
      {
        sub_10000E6C4(&qword_1001018D0, &qword_1000BC200);
        if (swift_dynamicCast())
        {
          v117 = v318[0];
          if (v318[0])
          {
            v118 = [v318[0] name];
            v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v121 = v120;

            v122 = *(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
            sub_1000A6A30(v119, v121);
          }

          else
          {
            [*(*(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) homeKitStartHomeNameCreation:0 namingIssue:0];
          }

          goto LABEL_315;
        }
      }

      else
      {
        sub_10000EBA4(&aBlock, &qword_1001025D0, &unk_1000BD010);
      }

      v192 = Logger.logObject.getter();
      v193 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v192, v193))
      {
        goto LABEL_305;
      }

      v194 = swift_slowAlloc();
      *v194 = 0;
      v195 = "HomePodSetupPresenter: setupStepCompleted for pickHome was called but no home name was giving";
      goto LABEL_304;
    case 2:
      sub_10000F25C((v29 + 8), v318, &qword_1001025D0, &unk_1000BD010);
      if (!v319)
      {
        goto LABEL_174;
      }

      sub_10000E6C4(&qword_1001018D0, &qword_1000BC200);
      if (swift_dynamicCast())
      {
        v104 = v321;

        v105 = *(*(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80);
        v106 = String._bridgeToObjectiveC()();
        v107 = swift_allocObject();
        swift_weakInit();
        v108 = swift_allocObject();
        *(v108 + 16) = v107;
        *(v108 + 24) = v104;
        *&v322 = sub_1000830FC;
        *(&v322 + 1) = v108;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v321 = sub_10007DB0C;
        *(&v321 + 1) = &unk_1000F14B0;
        v109 = _Block_copy(&aBlock);

        [v105 validateHomeName:v106 completion:v109];
        _Block_release(v109);
      }

      goto LABEL_315;
    case 3:
      if (sub_10000FEC4(*v29) == 0x7972616D697270 && v112 == 0xE700000000000000)
      {

LABEL_201:
        [*(*(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) acceptSelectSameWrongLocation];
        goto LABEL_315;
      }

      v175 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v175)
      {
        goto LABEL_201;
      }

      [*(*(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) resetToHomeSelection];
      goto LABEL_315;
    case 4:
      sub_10000F25C((v29 + 8), &aBlock, &qword_1001025D0, &unk_1000BD010);
      if (*(&v321 + 1))
      {
        sub_10000E6C4(&qword_1001018D0, &qword_1000BC200);
        if (swift_dynamicCast())
        {
          v113 = *(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
          sub_1000A6CC0();
          goto LABEL_294;
        }
      }

      else
      {
        sub_10000EBA4(&aBlock, &qword_1001025D0, &unk_1000BD010);
      }

      v192 = Logger.logObject.getter();
      v193 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v192, v193))
      {
        goto LABEL_305;
      }

      v194 = swift_slowAlloc();
      *v194 = 0;
      v195 = "HomePodSetupPresenter: setupStepCompleted for pickRoom was called but no room name was giving";
      goto LABEL_304;
    case 5:
    case 14:
    case 15:
    case 63:
      goto LABEL_315;
    case 6:
      v133 = *v29;
      if (sub_10000FEC4(*v29) == 0x7972616D697270 && v134 == 0xE700000000000000)
      {

        goto LABEL_17;
      }

      v177 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v177)
      {
        goto LABEL_17;
      }

      if (sub_10000FEC4(v133) == 0xD000000000000014 && 0x80000001000C06A0 == v178)
      {
      }

      else
      {
        v294 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v294 & 1) == 0)
        {
          goto LABEL_315;
        }
      }

      [*(*(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) cancelSoftwareUpdateNoSetup];
      goto LABEL_315;
    case 7:
      if (sub_10000FEC4(*v29) == 0x7972616D697270 && v103 == 0xE700000000000000)
      {
      }

      else
      {
        v170 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v170 & 1) == 0)
        {
          goto LABEL_315;
        }
      }

      v171 = 5;
      v51 = 0;
      v172 = 0;
      goto LABEL_222;
    case 8:
      if (sub_10000FEC4(*v29) == 0x6565726761 && v146 == 0xE500000000000000)
      {

LABEL_216:
        v151 = *(*(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80);
        v152 = "soundRecognitionAgreed:";
        goto LABEL_286;
      }

      v181 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v181)
      {
        goto LABEL_216;
      }

      v151 = *(*(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80);
      v152 = "soundRecognitionAgreed:";
      goto LABEL_286;
    case 9:
      v147 = *v29;
      if (sub_10000FEC4(*v29) == 0x6565726761 && v148 == 0xE500000000000000)
      {
        goto LABEL_139;
      }

      v182 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v182)
      {
        goto LABEL_218;
      }

      if (sub_10000FEC4(v147) == 0x7972616D697270 && v244 == 0xE700000000000000)
      {
LABEL_139:
      }

      else
      {
        v245 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v245 & 1) == 0)
        {
          v151 = *(*(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80);
          v152 = "automaticSoftwareUpdatesAgreed:";
          goto LABEL_286;
        }
      }

LABEL_218:
      v151 = *(*(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80);
      v152 = "automaticSoftwareUpdatesAgreed:";
      goto LABEL_286;
    case 10:
      v89 = *v29;
      if (sub_10000FEC4(*v29) == 0x6565726761 && v90 == 0xE500000000000000)
      {
      }

      else
      {
        v167 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v167 & 1) == 0)
        {
          if (sub_10000FEC4(v89) == 0x7972616D697270 && v168 == 0xE700000000000000)
          {
          }

          else
          {
            v285 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v285 & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          v286 = Logger.logObject.getter();
          v287 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v286, v287))
          {
            v288 = swift_slowAlloc();
            *v288 = 0;
            _os_log_impl(&_mh_execute_header, v286, v287, "HomePodSetupPresenter: ****** automation had 'default' as the button for terms of use! *** ", v288, 2u);
          }
        }
      }

      [*(*(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) termsAgreed];
      goto LABEL_315;
    case 11:
      v143 = *v29;
      if (sub_10000FEC4(*v29) == 0x7972616D697270 && v144 == 0xE700000000000000)
      {

LABEL_213:
        v151 = *(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_setupSession);
        if (!v151)
        {
          goto LABEL_315;
        }

        v152 = "personalRequestsEnabled:";
        goto LABEL_286;
      }

      v180 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v180)
      {
        goto LABEL_213;
      }

      v240 = sub_10000FEC4(v143);
      v242 = v241;
      if (v240 == sub_10000FEC4(2) && v242 == v243)
      {
      }

      else
      {
        v295 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v295 & 1) == 0)
        {
          goto LABEL_315;
        }
      }

      v151 = *(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_setupSession);
      if (v151)
      {
        v152 = "personalRequestsEnabled:";
        goto LABEL_286;
      }

      goto LABEL_315;
    case 12:
      v145 = *(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
      sub_1000A70D4();
      goto LABEL_315;
    case 13:
      if (sub_10000FEC4(*v29) == 0x7972616D697270 && v150 == 0xE700000000000000)
      {
      }

      else
      {
        v184 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v184 & 1) == 0)
        {
          goto LABEL_315;
        }
      }

      v185 = *(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
      sub_1000A70FC();
      goto LABEL_315;
    case 16:
      v123 = *(*(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 48);

      v124 = sub_10004B0F0();

      if ((v124 & 1) == 0)
      {
        goto LABEL_235;
      }

      *(v38 + v43) = 52;
      goto LABEL_315;
    case 17:
      [*(*(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) shareSettingsAgreed];
      goto LABEL_315;
    case 18:
      if (sub_10000FEC4(*v29) == 0x7972616D697270 && v84 == 0xE700000000000000)
      {
      }

      else
      {
        v164 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v164 & 1) == 0)
        {
          goto LABEL_182;
        }
      }

      [*(*(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) ledPasscodeMatched];
      goto LABEL_315;
    case 19:
      sub_10000F25C((v29 + 8), v318, &qword_1001025D0, &unk_1000BD010);
      if (v319)
      {
        sub_10000E6C4(&qword_1001018D0, &qword_1000BC200);
        if (swift_dynamicCast())
        {
          v153 = v322;

          if (String.count.getter() == 4)
          {
            v154 = *(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
            sub_1000A80E4(v153, *(&v153 + 1));
            goto LABEL_294;
          }
        }
      }

      else
      {
        sub_10000EBA4(v318, &qword_1001025D0, &unk_1000BD010);
      }

      v192 = Logger.logObject.getter();
      v193 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v192, v193))
      {
        v194 = swift_slowAlloc();
        *v194 = 0;
        v195 = "HomePodSetupPresenter: some how we are at .enterPincode and yet we don't have a four digit pincode! Likely recongized HomePod after user chose manual entry button.";
LABEL_304:
        _os_log_impl(&_mh_execute_header, v192, v193, v195, v194, 2u);
      }

LABEL_305:

      goto LABEL_315;
    case 20:
      if (sub_10000FEC4(*v29) == 0x6F6572657473 && v156 == 0xE600000000000000)
      {

LABEL_228:
        *(v38 + v43) = 23;
        goto LABEL_315;
      }

      v187 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v187)
      {
        goto LABEL_228;
      }

      v246 = *(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
      sub_1000A75C4(1);
      goto LABEL_315;
    case 21:
      sub_10000F25C((v29 + 8), &aBlock, &qword_1001025D0, &unk_1000BD010);
      if (!*(&v321 + 1))
      {
        goto LABEL_175;
      }

      sub_10000E6C4(&qword_1001018D0, &qword_1000BC200);
      if (swift_dynamicCast())
      {
        v137 = *(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
        v138 = v318[0];
        sub_1000A73A8(v138);
      }

      goto LABEL_315;
    case 22:
      sub_10000F25C((v29 + 8), &aBlock, &qword_1001025D0, &unk_1000BD010);
      if (!*(&v321 + 1))
      {
LABEL_175:
        sub_10000EBA4(&aBlock, &qword_1001025D0, &unk_1000BD010);
        goto LABEL_315;
      }

      sub_10000E6C4(&qword_1001018D0, &qword_1000BC200);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_315;
      }

      v125 = v318[0];
      v126 = sub_10000FEC4(*v29);
      v128 = v127;
      if (v126 == sub_10000FEC4(2) && v128 == v129)
      {
      }

      else
      {
        v258 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v258 & 1) == 0)
        {
          [*(*(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) stereoMultiplePicked:v125];

          goto LABEL_315;
        }
      }

      v259 = Logger.logObject.getter();
      v260 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v259, v260))
      {
        v261 = swift_slowAlloc();
        *v261 = 0;
        _os_log_impl(&_mh_execute_header, v259, v260, "HomePodSetupPresenter: pickHomePodToPairWith identify HomePod", v261, 2u);
      }

      v262 = swift_allocObject();
      *(v262 + 16) = v125;
      v263 = v125;
      v264 = Logger.logObject.getter();
      v265 = static os_log_type_t.default.getter();
      v266 = swift_allocObject();
      *(v266 + 16) = 32;
      v267 = swift_allocObject();
      *(v267 + 16) = 8;
      v268 = swift_allocObject();
      *(v268 + 16) = sub_100082FFC;
      *(v268 + 24) = v262;
      v269 = swift_allocObject();
      *(v269 + 16) = sub_100083004;
      *(v269 + 24) = v268;
      sub_10000E6C4(&qword_100104140, &qword_1000BE920);
      v270 = swift_allocObject();
      *(v270 + 16) = xmmword_1000BD070;
      *(v270 + 32) = sub_100083198;
      *(v270 + 40) = v266;
      *(v270 + 48) = sub_100083198;
      *(v270 + 56) = v267;
      *(v270 + 64) = sub_10008300C;
      *(v270 + 72) = v269;
      swift_setDeallocating();
      sub_100081EC0();
      if (os_log_type_enabled(v264, v265))
      {
        v271 = swift_slowAlloc();
        v272 = swift_slowAlloc();
        *&aBlock = v272;
        *v271 = 136315138;
        v273 = [v263 name];
        v274 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v276 = v275;

        v277 = sub_1000B08A0(v274, v276, &aBlock);

        *(v271 + 4) = v277;
        _os_log_impl(&_mh_execute_header, v264, v265, "HomePodSetupPresenter: pickHomePodToPairWith %s", v271, 0xCu);
        sub_10000E70C(v272);
      }

      v38 = v316;
      [*(*(v316 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) identifyHomePod:v263];

      goto LABEL_315;
    case 23:
      v139 = *v29;
      if (v139 == 7)
      {
        v140 = 3;
      }

      else
      {
        v140 = 1;
      }

      if (v139 == 6)
      {
        v141 = 2;
      }

      else
      {
        v141 = v140;
      }

      v142 = *(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
      sub_1000A75C4(v141);
      goto LABEL_315;
    case 24:
      sub_10000F25C((v29 + 8), &aBlock, &qword_1001025D0, &unk_1000BD010);
      if (*(&v321 + 1))
      {
        sub_10000E6C4(&qword_1001018D0, &qword_1000BC200);
        if (swift_dynamicCast())
        {
          v93 = v38;
          v94 = v29;
          v96 = v318[0];
          v95 = v318[1];
          v98 = v318[2];
          v97 = v319;
          v99 = sub_10000FEC4(*v94);
          v101 = v100;
          if (v99 == sub_10000FEC4(1) && v101 == v102)
          {

            goto LABEL_293;
          }

          v256 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v256)
          {
LABEL_293:
            v38 = v93;
            v257 = *(v93 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
            sub_1000A778C(v96, v95, v98, v97);

LABEL_294:

            goto LABEL_315;
          }

          v38 = v93;
        }
      }

      else
      {
        sub_10000EBA4(&aBlock, &qword_1001025D0, &unk_1000BD010);
      }

      v191 = *(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
      sub_1000A7984();
      goto LABEL_315;
    case 25:
      v85 = *v29;
      if (sub_10000FEC4(*v29) == 0x4D5264756F6C4369 && v86 == 0xE900000000000056)
      {
      }

      else
      {
        v165 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v165 & 1) == 0)
        {
          LODWORD(v314) = v85;
          sub_1000161DC(v29, &aBlock);
          sub_1000161DC(&aBlock, v318);
          v224 = swift_allocObject();
          v225 = v321;
          *(v224 + 16) = aBlock;
          *(v224 + 32) = v225;
          *(v224 + 48) = v322;
          *(v224 + 64) = v323;
          v313 = Logger.logObject.getter();
          LODWORD(v315) = static os_log_type_t.debug.getter();
          v226 = swift_allocObject();
          *(v226 + 16) = 0;
          v227 = swift_allocObject();
          *(v227 + 16) = 4;
          v228 = swift_allocObject();
          *(v228 + 16) = sub_100082F64;
          *(v228 + 24) = v224;
          v229 = swift_allocObject();
          *(v229 + 16) = sub_100082FA4;
          *(v229 + 24) = v228;
          v230 = swift_allocObject();
          *(v230 + 16) = sub_100082FAC;
          *(v230 + 24) = v229;
          v231 = swift_allocObject();
          *(v231 + 16) = sub_100082FB4;
          *(v231 + 24) = v230;
          sub_10000E6C4(&qword_100104140, &qword_1000BE920);
          v232 = swift_allocObject();
          *(v232 + 16) = xmmword_1000BD070;
          *(v232 + 32) = sub_100083198;
          *(v232 + 40) = v226;
          *(v232 + 48) = sub_100083198;
          *(v232 + 56) = v227;
          *(v232 + 64) = sub_100082FBC;
          *(v232 + 72) = v231;
          v233 = v313;
          swift_setDeallocating();

          sub_100081EC0();
          if (os_log_type_enabled(v233, v315))
          {
            v234 = swift_slowAlloc();
            *v234 = 67109120;
            if (sub_10000FEC4(v318[0]) == 0xD000000000000010 && 0x80000001000C06C0 == v235)
            {

              v236 = 1;
            }

            else
            {
              v303 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v236 = v303 & 1;
            }

            v284 = v314;
            sub_100012E08(v318);
            *(v234 + 4) = v236;

            _os_log_impl(&_mh_execute_header, v233, v315, "HomePodSetupPresenter: .siriRecognize (aka RMV) set to %{BOOL}d", v234, 8u);
          }

          else
          {

            sub_100012E08(v318);

            v284 = v314;
          }

          v38 = v316;
          v304 = *(v316 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
          v305 = sub_10000FEC4(v284);
          v307 = v306;
          if (v305 != sub_10000FEC4(23) || v307 != v308)
          {
            _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          [*(v304 + 80) recognizeVoiceAnswered:v309];
          goto LABEL_315;
        }
      }

      v151 = *(*(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80);
      v152 = "siriForiCloudRecognizeAnswered:";
      goto LABEL_286;
    case 26:
      *(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_appleMusicPromotionPresented) = 1;
      v80 = *(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
      sub_1000A70E8();
      *(&v321 + 1) = &type metadata for SharingFeatureFlags;
      v81 = sub_100082468();
      *&v322 = v81;
      LOBYTE(aBlock) = 0;
      LOBYTE(v80) = isFeatureEnabled(_:)();
      sub_10000E70C(&aBlock);
      if ((v80 & 1) == 0)
      {
        goto LABEL_235;
      }

      *(&v321 + 1) = &type metadata for SharingFeatureFlags;
      *&v322 = v81;
      LOBYTE(aBlock) = 1;
      v82 = isFeatureEnabled(_:)();
      sub_10000E70C(&aBlock);
      if (v82)
      {
        goto LABEL_235;
      }

      goto LABEL_234;
    case 27:
      v76 = *(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
      if (sub_10000FEC4(*v29) == 0x7972616D697270 && v77 == 0xE700000000000000)
      {

        v78 = 1;
      }

      else
      {
        v78 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      sub_1000A7210(v78 & 1);
      goto LABEL_315;
    case 28:
      v157 = *v29;
      if (sub_10000FEC4(*v29) == 0x7972616D697270 && v158 == 0xE700000000000000)
      {

LABEL_230:
        v151 = *(*(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80);
        v152 = "homePodLoggingProfileSelected:";
        goto LABEL_286;
      }

      v188 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v188)
      {
        goto LABEL_230;
      }

      if (sub_10000FEC4(v157) == 0x7261646E6F636573 && v247 == 0xE900000000000079)
      {
      }

      else
      {
        v296 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v296 & 1) == 0)
        {
          goto LABEL_315;
        }
      }

      v162 = "'Hey Siri, what can you do?'";
      v51 = 0xD000000000000030;
      goto LABEL_199;
    case 29:
    case 43:
    case 45:
    case 65:
    case 66:
    case 67:
      goto LABEL_17;
    case 30:
      if (sub_10000FEC4(*v29) == 0x655373656E755469 && v149 == 0xEE0073676E697474)
      {
      }

      else
      {
        v183 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v183 & 1) == 0)
        {
          v151 = *(*(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80);
          v152 = "homeAppInstallChoice:";
          goto LABEL_286;
        }
      }

      v50 = "_ACCOUNT&path=STORE_SERVICE";
      v51 = 0xD000000000000033;
LABEL_221:
      v172 = v50 | 0x8000000000000000;
      v171 = 13;
      goto LABEL_222;
    case 31:
      if (sub_10000FEC4(*v29) == 0x655373656E755469 && v111 == 0xEE0073676E697474)
      {
      }

      else
      {
        v174 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v174 & 1) == 0)
        {
          [*(*(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) skipiTunesSignIn];
          goto LABEL_315;
        }
      }

      v162 = "208490-homeappui-09142023#wifi";
      v51 = 0xD00000000000002BLL;
      goto LABEL_199;
    case 32:
      v130 = *(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
      if (sub_10000FEC4(*v29) == 0x6F4C6E4F6E727574 && v131 == 0xEE006E6F69746163)
      {

        v132 = 1;
      }

      else
      {
        v132 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      *(*(v130 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_userEnabledLocationForHomePod) = v132 & 1;
      [*(v130 + 80) locationEnable:v309];
      goto LABEL_315;
    case 33:
      v151 = *(*(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80);
      v152 = "homeAppInstallChoice:";
      goto LABEL_286;
    case 34:
    case 35:
    case 36:
    case 37:
    case 46:
      v47 = [objc_allocWithZone(SFClient) init];
      *&v322 = sub_10007DC38;
      *(&v322 + 1) = 0;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v321 = sub_10007DE7C;
      *(&v321 + 1) = &unk_1000F10A0;
      v48 = _Block_copy(&aBlock);
      [v47 reenableProxCardType:100 completion:v48];
      _Block_release(v48);
      if (sub_10000FEC4(*v29) == 0xD000000000000016 && 0x80000001000C06E0 == v49)
      {
      }

      else
      {
        v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v52 & 1) == 0)
        {
          v38 = v316;
          sub_10007E190(12, 0x6F723A7366657270, 0xEF494649573D746FLL);

          goto LABEL_315;
        }
      }

      v53 = v313;
      URL.init(string:)();
      v54 = [objc_opt_self() defaultWorkspace];
      if (v54)
      {
        v55 = v54;
        v56 = v311;
        sub_10000F25C(v53, v311, &qword_100101F08, &unk_1000BD100);
        v57 = type metadata accessor for URL();
        v58 = *(v57 - 8);
        v60 = 0;
        if ((*(v58 + 48))(v56, 1, v57) != 1)
        {
          URL._bridgeToObjectiveC()(v59);
          v60 = v61;
          (*(v58 + 8))(v56, v57);
        }

        sub_10000DC20(_swiftEmptyArrayStorage);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v63 = [v55 openURL:v60 withOptions:isa];

        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.default.getter();
        if (v63)
        {
          v66 = swift_allocObject();
          *(v66 + 16) = 32;
          v67 = swift_allocObject();
          *(v67 + 16) = 8;
          sub_10000E6C4(&qword_100104140, &qword_1000BE920);
          v68 = swift_allocObject();
          *(v68 + 16) = xmmword_1000BD070;
          *(v68 + 32) = sub_100083198;
          *(v68 + 40) = v66;
          *(v68 + 48) = sub_100083198;
          *(v68 + 56) = v67;
          *(v68 + 64) = sub_10008319C;
          *(v68 + 72) = 0;
          swift_setDeallocating();
          sub_100081EC0();
          if (os_log_type_enabled(v64, v65))
          {
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            *&aBlock = v70;
            *v69 = 136315138;
            *(v69 + 4) = sub_1000B08A0(0xD00000000000005ELL, 0x80000001000C6D10, &aBlock);
            v71 = "HomePodSetupPresenter: opening kbartible for %s";
LABEL_33:
            _os_log_impl(&_mh_execute_header, v64, v65, v71, v69, 0xCu);
            sub_10000E70C(v70);
          }
        }

        else
        {
          v73 = swift_allocObject();
          *(v73 + 16) = 32;
          v74 = swift_allocObject();
          *(v74 + 16) = 8;
          sub_10000E6C4(&qword_100104140, &qword_1000BE920);
          v75 = swift_allocObject();
          *(v75 + 16) = xmmword_1000BD070;
          *(v75 + 32) = sub_100082F58;
          *(v75 + 40) = v73;
          *(v75 + 48) = sub_100083198;
          *(v75 + 56) = v74;
          *(v75 + 64) = sub_10008319C;
          *(v75 + 72) = 0;
          swift_setDeallocating();
          sub_100081EC0();
          if (os_log_type_enabled(v64, v65))
          {
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            *&aBlock = v70;
            *v69 = 136315138;
            *(v69 + 4) = sub_1000B08A0(0xD00000000000005ELL, 0x80000001000C6D10, &aBlock);
            v71 = "HomePodSetupPresenter: unable to open URL %s";
            goto LABEL_33;
          }
        }

        sub_10000EBA4(v313, &qword_100101F08, &unk_1000BD100);
        v38 = v316;
        goto LABEL_315;
      }

      __break(1u);
      goto LABEL_341;
    case 38:
    case 40:
    case 41:
      v50 = "com.apple.Home://";
      v51 = 0xD00000000000002CLL;
      goto LABEL_221;
    case 39:
      v50 = "_ACCOUNT&path=ICLOUD_SERVICE";
      v51 = 0xD00000000000004DLL;
      goto LABEL_221;
    case 42:
      [*(*(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) homeiCloudEnable];
      goto LABEL_315;
    case 44:
      goto LABEL_173;
    case 47:
      if (sub_10000FEC4(*v29) == 0x7972616D697270 && v159 == 0xE700000000000000)
      {
      }

      else
      {
        v189 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v189 & 1) == 0)
        {
          v151 = *(*(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80);
          v152 = "resetWiFiPicker:";
          goto LABEL_286;
        }
      }

      [*(*(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) wiFiRetry];
      goto LABEL_315;
    case 48:
      *(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_noP2PRouterPresented) = 1;
      if (sub_10000FEC4(*v29) == 0x7972616D697270 && v160 == 0xE700000000000000)
      {
      }

      else
      {
        v190 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v190 & 1) == 0)
        {
LABEL_235:
          *(v38 + v43) = sub_10007DEE8(v29);
          goto LABEL_315;
        }
      }

LABEL_234:
      *(v38 + v43) = 51;
      goto LABEL_315;
    case 49:
    case 52:
      goto LABEL_235;
    case 50:
      goto LABEL_234;
    case 51:
      v83 = *(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_router);
      swift_unknownObjectRetain();
      v46 = 0;
      goto LABEL_18;
    case 53:
      if (sub_10000FEC4(*v29) == 0x7972616D697270 && v155 == 0xE700000000000000)
      {
      }

      else
      {
        v186 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v186 & 1) == 0)
        {
          v151 = *(*(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80);
          v152 = "softwareUpdateAgreed:";
          goto LABEL_286;
        }
      }

      v151 = *(*(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80);
      v152 = "softwareUpdateAgreed:";
      goto LABEL_286;
    case 54:
      if (sub_10000FEC4(*v29) == 0x7972616D697270 && v110 == 0xE700000000000000)
      {
      }

      else
      {
        v173 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v173 & 1) == 0)
        {
          goto LABEL_315;
        }
      }

      [*(*(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) captiveConfirmed];
      goto LABEL_315;
    case 55:
      sub_10000F25C((v29 + 8), v318, &qword_1001025D0, &unk_1000BD010);
      if (v319)
      {
        sub_10000E6C4(&qword_1001018D0, &qword_1000BC200);
        if (swift_dynamicCast())
        {
          v114 = *(*(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80);
          v115 = String._bridgeToObjectiveC()();
          [v114 wiFiSelected:{v115, v309}];
          goto LABEL_157;
        }
      }

      else
      {
        sub_10000EBA4(v318, &qword_1001025D0, &unk_1000BD010);
      }

      sub_1000161DC(v29, &aBlock);
      sub_1000161DC(&aBlock, v318);
      v196 = swift_allocObject();
      v197 = v321;
      *(v196 + 16) = aBlock;
      *(v196 + 32) = v197;
      *(v196 + 48) = v322;
      *(v196 + 64) = v323;
      v198 = swift_allocObject();
      *(v198 + 16) = sub_10008305C;
      *(v198 + 24) = v196;
      v199 = Logger.logObject.getter();
      v200 = static os_log_type_t.error.getter();
      v201 = swift_allocObject();
      *(v201 + 16) = 32;
      v202 = swift_allocObject();
      *(v202 + 16) = 8;
      v203 = swift_allocObject();
      *(v203 + 16) = sub_100083068;
      *(v203 + 24) = v198;
      v204 = swift_allocObject();
      *(v204 + 16) = sub_100083180;
      *(v204 + 24) = v203;
      sub_10000E6C4(&qword_100104140, &qword_1000BE920);
      v205 = swift_allocObject();
      *(v205 + 16) = xmmword_1000BD070;
      *(v205 + 32) = sub_100083198;
      *(v205 + 40) = v201;
      *(v205 + 48) = sub_100083198;
      *(v205 + 56) = v202;
      *(v205 + 64) = sub_10008312C;
      *(v205 + 72) = v204;
      swift_setDeallocating();
      sub_100081EC0();
      if (os_log_type_enabled(v199, v200))
      {
        v206 = swift_slowAlloc();
        v207 = swift_slowAlloc();
        v317 = v207;
        *v206 = 136315138;
        v208 = sub_10000BFCC();
        v210 = v209;
        sub_100012E08(v318);
        v211 = sub_1000B08A0(v208, v210, &v317);

        *(v206 + 4) = v211;
        _os_log_impl(&_mh_execute_header, v199, v200, "HomePodSetupPresenter: setupStepCompleted for wifi picker failed %s", v206, 0xCu);
        sub_10000E70C(v207);
      }

      else
      {

        sub_100012E08(v318);
      }

      goto LABEL_315;
    case 56:
      sub_10000F25C((v29 + 8), v318, &qword_1001025D0, &unk_1000BD010);
      if (v319)
      {
        sub_10000E6C4(&qword_1001018D0, &qword_1000BC200);
        if (swift_dynamicCast())
        {
          v114 = *(*(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80);
          v115 = String._bridgeToObjectiveC()();
          [v114 wifiPasswordSelected:{v115, v309}];
LABEL_157:
        }
      }

      else
      {
LABEL_174:
        sub_10000EBA4(v318, &qword_1001025D0, &unk_1000BD010);
      }

      goto LABEL_315;
    case 57:
      if (sub_10000FEC4(*v29) == 0x7972616D697270 && v135 == 0xE700000000000000)
      {
      }

      else
      {
        v179 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v179 & 1) == 0)
        {
          v151 = *(*(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80);
          v152 = "resetWiFiPicker:";
LABEL_286:
          [v151 v152];
          goto LABEL_315;
        }
      }

      [*(*(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) wiFiAcknowledged];
      goto LABEL_315;
    case 58:
      v136 = *v29;
      if (v136 == 35)
      {
        goto LABEL_119;
      }

      if (v136 != 34)
      {
        goto LABEL_315;
      }

      goto LABEL_17;
    case 59:
      v72 = *v29;
      if (v72 > 0x20)
      {
        goto LABEL_99;
      }

      if (v72 == 27)
      {
        v248 = [*(*(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) sysDropSession];
        [v248 enableAirDropForEveryone];
      }

      else if (v72 == 28)
      {
        [*(*(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) startAirDropSysdiagnose];
      }

      goto LABEL_315;
    case 60:
    case 61:
      v72 = *v29;
LABEL_99:
      if (v72 - 33 < 2)
      {
        goto LABEL_17;
      }

      if (v72 != 35)
      {
        goto LABEL_315;
      }

LABEL_119:
      [*(*(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) setSysDropMode:{0, v309}];
      goto LABEL_17;
    case 62:
      if (sub_10000FEC4(*v29) == 0x7972616D697270 && v79 == 0xE700000000000000)
      {
      }

      else
      {
        v163 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v163 & 1) == 0)
        {
LABEL_182:
          [*(*(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) skipAudioPasscode];
          goto LABEL_315;
        }
      }

      [*(*(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) playAudioPasscodeAgain];
      goto LABEL_315;
    case 64:
      v91 = *v29;
      if (sub_10000FEC4(*v29) == 0x6565726761 && v92 == 0xE500000000000000)
      {
        goto LABEL_62;
      }

      v169 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v169)
      {
        goto LABEL_192;
      }

      if (sub_10000FEC4(v91) == 0x7972616D697270 && v238 == 0xE700000000000000)
      {
LABEL_62:
      }

      else
      {
        v239 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v239 & 1) == 0)
        {
LABEL_17:
          v45 = *(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_router);
          swift_unknownObjectRetain();
          v46 = 5;
LABEL_18:
          sub_1000610CC(v46, 1);
          swift_unknownObjectRelease();
          goto LABEL_315;
        }
      }

LABEL_192:
      [*(*(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) homePodSoftwareUpdateNonSetupAcknowledged];
      goto LABEL_315;
    case 68:
      v161 = *v29;
      if (v161 == 32)
      {
        v212 = v310;
        URL.init(string:)();
        v213 = [objc_opt_self() defaultWorkspace];
        if (v213)
        {
          v214 = v213;
          v215 = v309;
          sub_10000F25C(v212, v309, &qword_100101F08, &unk_1000BD100);
          v216 = type metadata accessor for URL();
          v217 = *(v216 - 8);
          v219 = 0;
          if ((*(v217 + 48))(v215, 1, v216) != 1)
          {
            URL._bridgeToObjectiveC()(v218);
            v219 = v220;
            (*(v217 + 8))(v215, v216);
          }

          sub_10000DC20(_swiftEmptyArrayStorage);
          v221 = Dictionary._bridgeToObjectiveC()().super.isa;

          v222 = [v214 openURL:v219 withOptions:v221];

          if (v222)
          {
            v223 = v212;
          }

          else
          {
            v249 = Logger.logObject.getter();
            v250 = static os_log_type_t.default.getter();
            v251 = swift_allocObject();
            *(v251 + 16) = 32;
            v252 = swift_allocObject();
            *(v252 + 16) = 8;
            sub_10000E6C4(&qword_100104140, &qword_1000BE920);
            v253 = swift_allocObject();
            *(v253 + 16) = xmmword_1000BD070;
            *(v253 + 32) = sub_100083198;
            *(v253 + 40) = v251;
            *(v253 + 48) = sub_100083198;
            *(v253 + 56) = v252;
            *(v253 + 64) = sub_100081F20;
            *(v253 + 72) = 0;
            swift_setDeallocating();
            sub_100081EC0();
            if (os_log_type_enabled(v249, v250))
            {
              v254 = swift_slowAlloc();
              v255 = swift_slowAlloc();
              *&aBlock = v255;
              *v254 = 136315138;
              *(v254 + 4) = sub_1000B08A0(0xD000000000000026, 0x80000001000C6DE0, &aBlock);
              _os_log_impl(&_mh_execute_header, v249, v250, "HomePodSetupIconContent: unable to open URL %s", v254, 0xCu);
              sub_10000E70C(v255);
            }

            v223 = v310;
          }

          sub_10000EBA4(v223, &qword_100101F08, &unk_1000BD100);
          goto LABEL_315;
        }

LABEL_341:
        __break(1u);
        JUMPOUT(0x10007D518);
      }

      if (v161 != 31)
      {
        goto LABEL_315;
      }

LABEL_173:
      v162 = "onfigurationList";
      v51 = 0xD000000000000011;
LABEL_199:
      v172 = v162 | 0x8000000000000000;
      v171 = 5;
LABEL_222:
      sub_10007E190(v171, v51, v172);
      goto LABEL_315;
    case 69:
      v87 = *v29;
      if (sub_10000FEC4(*v29) == 0x6565726761 && v88 == 0xE500000000000000)
      {

LABEL_186:
        [*(*(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) dataAndPrivacyAgreed];
        goto LABEL_315;
      }

      v166 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v166)
      {
        goto LABEL_186;
      }

      if (sub_10000FEC4(v87) == 0xD000000000000011 && 0x80000001000C07C0 == v237)
      {
      }

      else
      {
        v278 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v278 & 1) == 0)
        {
          goto LABEL_315;
        }
      }

      v279 = *(*(v38 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80);
      if (*(v29 + 6))
      {
        v280 = *(v29 + 6);
        swift_errorRetain();
        v281 = v279;
        v282 = _convertErrorToNSError(_:)();
        v283 = String._bridgeToObjectiveC()();
        [v281 _reportError:v282 label:v283];
      }

      else
      {
        v297 = objc_allocWithZone(NSError);
        v298 = v279;
        v299 = String._bridgeToObjectiveC()();
        v300 = [v297 initWithDomain:v299 code:-2050 userInfo:0];

        v301 = _convertErrorToNSError(_:)();
        v302 = String._bridgeToObjectiveC()();
        [v298 _reportError:v301 label:v302];
      }

LABEL_315:
      v289 = sub_10007869C(*(v38 + v43));
      v291 = v290;
      if (v289 == sub_10007869C(v44) && v291 == v292)
      {
      }

      else
      {
        v293 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v293 & 1) == 0)
        {
          sub_10007E89C();
        }
      }

      return;
    default:
      if (sub_10000FEC4(*v29) == 0x7972616D697270 && v116 == 0xE700000000000000)
      {
      }

      else
      {
        v176 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v176 & 1) == 0)
        {
          goto LABEL_315;
        }
      }

      sub_10007D630();
      goto LABEL_315;
  }
}

void sub_10007D630()
{
  v1 = v0;
  if (qword_1001016D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100012AAC(v2, qword_100103DD0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "HomePodSetupPresenter: request start device setup process", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_remoteViewController);
  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
    [v6 setIdleTimerDisabled:1 forReason:v7];
  }

  v8 = *(v1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
  if (qword_100101718 != -1)
  {
    swift_once();
  }

  sub_100012AAC(v2, qword_100104988);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = 0x4072C00000000000;
    _os_log_impl(&_mh_execute_header, v9, v10, "HomePodSetup: 'Hello Siri' trigger disabled for %f seconds", v11, 0xCu);
  }

  [objc_opt_self() requestPhraseSpotterBypassing:1 timeout:300.0];
  sub_1000A640C();
}

void sub_10007D874(char a1, uint64_t a2)
{
  if (a1)
  {
    if (qword_1001016D0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100012AAC(v2, qword_100103DD0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "HomePodSetupPresenter: Home name is valid, creating home...", v5, 2u);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = *(Strong + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
      swift_unknownObjectRetain();

      v8 = *(v7 + 80);
      v9 = String._bridgeToObjectiveC()();
      [v8 createNewHomeWithName:v9];
      swift_unknownObjectRelease();

LABEL_14:
    }
  }

  else
  {
    if (qword_1001016D0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100012AAC(v11, qword_100103DD0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "HomePodSetupPresenter: Home name is invalid", v14, 2u);
    }

    swift_beginAccess();
    v15 = swift_weakLoadStrong();
    if (v15)
    {
      v16 = *(v15 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
      swift_unknownObjectRetain();

      v9 = *(v16 + 80);
      swift_unknownObjectRelease();
      [v9 homeKitStartHomeNameCreation:1 namingIssue:a2];
      goto LABEL_14;
    }
  }
}

uint64_t sub_10007DB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

uint64_t sub_10007DB6C(void *a1)
{
  v1 = [a1 name];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_10007DBC0(char *a1)
{
  if (sub_10000FEC4(*a1) == 0xD000000000000010 && 0x80000001000C06C0 == v1)
  {
    v3 = 1;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v3 & 1;
}

void sub_10007DC38(uint64_t a1)
{
  if (a1)
  {
    if (qword_1001016D0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100012AAC(v1, qword_100103DD0);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v12 = v4;
      *v3 = 136315138;
      sub_10000E6C4(&unk_1001035D8, &unk_1000BDD90);
      v5 = Optional.debugDescription.getter();
      v7 = sub_1000B08A0(v5, v6, &v12);

      *(v3 + 4) = v7;
      _os_log_impl(&_mh_execute_header, oslog, v2, "HomePodSetupPresenter: ### Re-enable B238Setup after WiFi failed: %s", v3, 0xCu);
      sub_10000E70C(v4);

      return;
    }
  }

  else
  {
    if (qword_1001016D0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100012AAC(v8, qword_100103DD0);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v9, "HomePodSetupPresenter: Re-enabling B238Setup after WiFi connects", v10, 2u);
    }
  }
}

void sub_10007DE7C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_10007DEE8(char *a1)
{
  if (sub_10000FEC4(*a1) == 0x7972616D697270 && v2 == 0xE700000000000000)
  {

    return 51;
  }

  v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v4)
  {
    return 51;
  }

  v5 = *(v1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
  v6 = *(v5 + 48);
  if (*(v6 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_bonjourTestState) == 3 && (*(v1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_noP2PRouterPresented) & 1) == 0 && *(v6 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_didUsePhonesNetwork) == 1)
  {
    if (qword_1001016D0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100012AAC(v7, qword_100103DD0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "<loom:ViewService:matchHomePodSetupPresenterProgress> HomePodSetupPresenter: stateForLastScreens .noP2PRouter", v10, 2u);
    }

    return 48;
  }

  if (!*(v6 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_amsMarketingItem))
  {
    return 51;
  }

  if (*(v6 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_acceptedMusicTerms) != 1)
  {
    return 51;
  }

  if (*(v1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_appleMusicPromotionPresented))
  {
    return 51;
  }

  v12 = *(v5 + 136);
  if (!v12 || !*&v12[OBJC_IVAR____TtC14HDSViewService35HomePodSetupAMSUpsellViewController_vcAppleMusic])
  {
    return 51;
  }

  v13 = qword_1001016D0;
  v14 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100012AAC(v15, qword_100103DD0);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "<loom:ViewService:matchHomePodSetupPresenterProgress> HomePodSetupPresenter: stateForLastScreens .appleMusicPromotion", v18, 2u);
  }

  return 26;
}

void sub_10007E190(int a1, uint64_t a2, unint64_t a3)
{
  v7 = *(*(sub_10000E6C4(&qword_100101F08, &unk_1000BD100) - 8) + 64);
  v8 = (__chkstk_darwin)();
  v10 = &v36[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v36[-v11];
  v13 = *(v3 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_router);
  swift_unknownObjectRetain();
  sub_1000610CC(a1, a1 != 19);
  swift_unknownObjectRelease();
  if (a3)
  {
    if (qword_1001016D0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100012AAC(v14, qword_100103DD0);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v37 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_1000B08A0(a2, a3, &v37);
      _os_log_impl(&_mh_execute_header, v15, v16, "<loom:ViewService:matchHomePodSetupPresenterProgress> HomePodSetupPresenter: Attempting to open settings: %s", v17, 0xCu);
      sub_10000E70C(v18);
    }

    URL.init(string:)();
    v19 = [objc_opt_self() defaultWorkspace];
    if (!v19)
    {
      goto LABEL_11;
    }

    v20 = v19;
    sub_10000F25C(v12, v10, &qword_100101F08, &unk_1000BD100);
    v21 = type metadata accessor for URL();
    v22 = *(v21 - 8);
    v24 = 0;
    if ((*(v22 + 48))(v10, 1, v21) != 1)
    {
      URL._bridgeToObjectiveC()(v23);
      v24 = v25;
      (*(v22 + 8))(v10, v21);
    }

    sub_10000DC20(&_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v37 = 0;
    v27 = [v20 openSensitiveURL:v24 withOptions:isa error:&v37];

    if (v27)
    {
      v28 = v37;
LABEL_11:
      sub_10000EBA4(v12, &qword_100101F08, &unk_1000BD100);
      return;
    }

    v29 = v37;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10000EBA4(v12, &qword_100101F08, &unk_1000BD100);
    v30 = _convertErrorToNSError(_:)();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      *(v33 + 4) = v30;
      *v34 = v30;
      v35 = v30;
      _os_log_impl(&_mh_execute_header, v31, v32, "<loom:ViewService:matchHomePodSetupWarnings> HomePodSetupPresenter: Open Settings failed {error: %@}", v33, 0xCu);
      sub_10000EBA4(v34, &qword_100101E38, &unk_1000BCF80);
    }

    else
    {
    }
  }
}

uint64_t sub_10007E65C(char a1)
{
  *(v1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state) = a1;
  v3 = sub_10007869C(a1);
  v4 = v2;
  if (v3 == 1701736292 && v2 == 0xE400000000000000)
  {
    goto LABEL_3;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v6 & 1) == 0)
  {
    if (v3 == 0x6F727245656E6F64 && v4 == 0xE900000000000072)
    {
LABEL_3:

      goto LABEL_5;
    }

    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      v9 = *(v1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
      v10 = *(v9 + 96);
      *(v9 + 88) = v3;
      *(v9 + 96) = v4;

      *(v9 + 104) = mach_absolute_time();
      *(v9 + 112) = 0;
      if (qword_1001016D0 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100012AAC(v11, qword_100103DD0);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v17 = v15;
        *v14 = 136315138;
        v16 = sub_1000B08A0(v3, v4, &v17);

        *(v14 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v12, v13, "<loom:ViewService:matchHomePodSetupPresenterProgress> HomePodSetupPresenter presentCurrentTask viewController: %s", v14, 0xCu);
        sub_10000E70C(v15);
      }
    }
  }

LABEL_5:

  return sub_10007E89C(v5);
}

void sub_10007E89C()
{
  v1 = v0;
  if (IsAppleInternalBuild())
  {
    sub_10007F0D4();
  }

  v2 = sub_100080390(*(v0 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state));
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_router);
    swift_unknownObjectRetain();
    sub_100060D5C(v3);
    swift_unknownObjectRelease();
    v5 = *(v1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_currentViewController);
    *(v1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_currentViewController) = v3;
    v10 = v3;

    v6 = *(*(v1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80);
    [v6 setPresentingChildViewController:v10];
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_router);
    v8 = *(*(v1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_dismissType;
    if (*(v8 + 4))
    {
      v9 = 0;
    }

    else
    {
      v9 = *v8;
    }

    swift_unknownObjectRetain();
    sub_1000610CC(v9, v9 != 19);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10007EA04()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v39 - v16;
  result = IsAppleInternalBuild();
  if (result)
  {
    v46 = v11;
    if (qword_100101608 != -1)
    {
      swift_once();
    }

    sub_10003CFBC(*(v47 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state), &v49);
    if (v51 == 1)
    {
      return sub_10000EBA4(&v49, &qword_1001024D0, &unk_1000BE910);
    }

    else
    {
      v41 = v10;
      v42 = v6;
      v53[0] = v49;
      v53[1] = v50;
      v53[2] = v51;
      v54 = v52;
      if (qword_1001016D0 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100012AAC(v19, qword_100103DD0);
      sub_1000161DC(v53, &v49);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      v22 = os_log_type_enabled(v20, v21);
      v45 = v0;
      v44 = v1;
      v43 = v5;
      if (v22)
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        aBlock[0] = v24;
        *v23 = 136315138;
        v25 = sub_10000BFCC();
        v27 = v26;
        sub_100012E08(&v49);
        v28 = sub_1000B08A0(v25, v27, aBlock);

        *(v23 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v20, v21, "HomePodSetupPresenter: Found Automation stepResult: %s", v23, 0xCu);
        sub_10000E70C(v24);
      }

      else
      {

        sub_100012E08(&v49);
      }

      sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
      v40 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      if (qword_1001016D8 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for DispatchTimeInterval();
      sub_100012AAC(v29, qword_100103DE8);
      + infix(_:_:)();
      v30 = *(v46 + 8);
      v31 = v15;
      v32 = v41;
      v30(v31, v41);
      v33 = swift_allocObject();
      swift_weakInit();
      sub_1000161DC(v53, &v49);
      v34 = swift_allocObject();
      v35 = v50;
      *(v34 + 24) = v49;
      *(v34 + 16) = v33;
      *(v34 + 40) = v35;
      *(v34 + 56) = v51;
      *(v34 + 72) = v52;
      aBlock[4] = sub_100082F3C;
      aBlock[5] = v34;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100091194;
      aBlock[3] = &unk_1000F1078;
      v36 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      *&v49 = _swiftEmptyArrayStorage;
      sub_100082514(&qword_1001042F0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
      sub_100014588();
      v37 = v45;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v38 = v40;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v36);

      (*(v44 + 8))(v4, v37);
      (*(v42 + 8))(v9, v43);
      v30(v17, v32);
      return sub_100012E08(v53);
    }
  }

  return result;
}

uint64_t sub_10007F074(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10007A070(a2);
  }

  return result;
}

uint64_t sub_10007F0D4()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v83 = *(v0 - 8);
  v1 = *(v83 + 64);
  __chkstk_darwin(v0);
  v3 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v82 = *(v4 - 8);
  v5 = *(v82 + 64);
  __chkstk_darwin(v4);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for DispatchTimeInterval();
  v80 = *(v98 - 8);
  v8 = *(v80 + 64);
  __chkstk_darwin(v98);
  v97 = (&v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for DispatchTime();
  v81 = *(v10 - 8);
  v11 = *(v81 + 64);
  v12 = __chkstk_darwin(v10);
  v86 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v104 = &v79 - v14;
  if (qword_100101608 != -1)
  {
    swift_once();
  }

  v15 = qword_1001086C0;
  v16 = OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_indexToNextState;
  v17 = *(qword_1001086C0 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_indexToNextState);
  v18 = OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_forcedStateSequence;
  result = swift_beginAccess();
  v20 = *(v15 + v18);
  v21 = *(v20 + 16);
  v22 = v21 < v17 || v21 == 0;
  v99 = v10;
  if (v22)
  {
    v23 = v104;
  }

  else
  {
    v23 = v104;
    if (v17 < v21)
    {
      if (v17 < 0)
      {
        __break(1u);
        return result;
      }

      v24 = *(v20 + v17++ + 32);
      *(v15 + v16) = v17;
    }

    else
    {
      v24 = 0;
    }

    *(v100 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state) = v24;
    v21 = *(v20 + 16);
  }

  v25 = v21 < v17 || v21 == 0;
  if (v25 && !*(v15 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_testMode) && !*(v15 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_testFlags))
  {
    return result;
  }

  v87 = OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state;
  v26 = sub_10007869C(*(v100 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state));
  v96 = v4;
  if (v26 == 0x636C655769726973 && v27 == 0xEB00000000656D6FLL)
  {

LABEL_25:
    sub_10000E6C4(&qword_100104120, &qword_1000BE8E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000BB8E0;
    *(inited + 32) = 0x7478655469726973;
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = 0xD00000000000001CLL;
    *(inited + 56) = 0x80000001000C6BF0;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = 0x495469726973;
    *(inited + 88) = 0xE600000000000000;
    sub_10000E6C4(&qword_100104128, &qword_1000BE8E8);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1000BE6B0;
    v32 = sub_10000DD50(&off_1000EE270);
    sub_10000E6C4(&qword_100104130, &qword_1000BE8F0);
    swift_arrayDestroy();
    *(v31 + 32) = v32;
    v33 = sub_10000DD50(&off_1000EE2D8);
    swift_arrayDestroy();
    *(v31 + 40) = v33;
    v34 = sub_10000DD50(&off_1000EE340);
    swift_arrayDestroy();
    *(v31 + 48) = v34;
    v35 = sub_10000DD50(&off_1000EE3A8);
    swift_arrayDestroy();
    *(v31 + 56) = v35;
    v36 = sub_10000DD50(&off_1000EE410);
    swift_arrayDestroy();
    *(v31 + 64) = v36;
    v37 = sub_10000DD50(&off_1000EE478);
    swift_arrayDestroy();
    *(v31 + 72) = v37;
    *(inited + 120) = sub_10000E6C4(&qword_100104138, &qword_1000BE8F8);
    *(inited + 96) = v31;
    v38 = sub_10000DC20(inited);
    swift_setDeallocating();
    sub_10000E6C4(&qword_100101980, &qword_1000BC250);
    swift_arrayDestroy();
    sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
    v102 = static OS_dispatch_queue.main.getter();
    v39 = v7;
    v40 = v3;
    v41 = v0;
    v42 = v86;
    static DispatchTime.now()();
    v43 = v97;
    *v97 = 1;
    v44 = v80;
    v45 = v98;
    (*(v80 + 104))(v43, enum case for DispatchTimeInterval.seconds(_:), v98);
    + infix(_:_:)();
    (*(v44 + 8))(v43, v45);
    v46 = *(v81 + 8);
    v47 = v42;
    v0 = v41;
    v3 = v40;
    v7 = v39;
    v46(v47, v99);
    v48 = swift_allocObject();
    *(v48 + 16) = v100;
    *(v48 + 24) = v38;
    v109 = sub_1000825E0;
    v110 = v48;
    aBlock = _NSConcreteStackBlock;
    v106 = 1107296256;
    v107 = sub_100091194;
    v108 = &unk_1000F1028;
    v49 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock = &_swiftEmptyArrayStorage;
    sub_100082514(&qword_1001042F0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
    sub_100014588();
    v4 = v96;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v50 = v102;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    v51 = v49;
    v29 = v99;
    _Block_release(v51);

    (*(v83 + 8))(v3, v0);
    (*(v82 + 8))(v39, v4);
    v46(v104, v29);
    v23 = v104;
    goto LABEL_26;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v29 = v99;
  if (v28)
  {
    goto LABEL_25;
  }

LABEL_26:
  v84 = v7;
  v85 = v3;
  v103 = v0;
  if (sub_10007869C(*(v100 + v87)) == 0x73736572676F7270 && v52 == 0xEA00000000004955)
  {

    v53 = v85;
    v54 = v84;
    v55 = v86;
    goto LABEL_30;
  }

  v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v53 = v85;
  v54 = v84;
  v55 = v86;
  if (v56)
  {
LABEL_30:
    v95 = sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
    v57 = 0;
    v94 = (v80 + 104);
    v93 = enum case for DispatchTimeInterval.milliseconds(_:);
    v92 = (v80 + 8);
    v91 = (v81 + 8);
    v90 = &v107;
    v89 = (v83 + 8);
    v88 = (v82 + 8);
    v58 = 750;
    do
    {
      v59 = *(&off_1000EE4E0 + v57 + 32);
      v102 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      v60 = v97;
      *v97 = v58;
      v61 = v98;
      (*v94)(v60, v93, v98);
      + infix(_:_:)();
      (*v92)(v60, v61);
      v101 = *v91;
      v101(v55, v29);
      v62 = swift_allocObject();
      *(v62 + 16) = v100;
      *(v62 + 24) = v59;
      v109 = sub_100082594;
      v110 = v62;
      aBlock = _NSConcreteStackBlock;
      v106 = 1107296256;
      v107 = sub_100091194;
      v108 = &unk_1000F0FD8;
      v63 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock = &_swiftEmptyArrayStorage;
      sub_100082514(&qword_1001042F0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
      sub_100014588();
      v29 = v99;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v64 = v102;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      v65 = v103;
      _Block_release(v63);

      v4 = v96;
      (*v89)(v53, v65);
      (*v88)(v54, v4);
      v101(v104, v29);
      v23 = v104;
      v58 += 750;
      v57 += 4;
    }

    while (v57 != 24);
  }

  if (sub_10007869C(*(v100 + v87)) == 0xD000000000000013 && 0x80000001000C09D0 == v66)
  {

    v67 = v103;
    v68 = v85;
    v69 = v84;
    v70 = v98;
  }

  else
  {
    v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v67 = v103;
    v68 = v85;
    v69 = v84;
    v70 = v98;
    if ((v71 & 1) == 0)
    {
      return result;
    }
  }

  if (!*(*(*(v100 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_amsMarketingItem))
  {
    sub_1000A8984();
    sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
    v104 = static OS_dispatch_queue.main.getter();
    v72 = v86;
    static DispatchTime.now()();
    v73 = v97;
    *v97 = 2;
    v74 = v80;
    (*(v80 + 104))(v73, enum case for DispatchTimeInterval.seconds(_:), v70);
    + infix(_:_:)();
    (*(v74 + 8))(v73, v70);
    v102 = *(v81 + 8);
    v75 = v99;
    v102(v72, v99);
    v76 = swift_allocObject();
    swift_weakInit();
    v109 = sub_1000824F4;
    v110 = v76;
    aBlock = _NSConcreteStackBlock;
    v106 = 1107296256;
    v107 = sub_100091194;
    v108 = &unk_1000F0F88;
    v77 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock = &_swiftEmptyArrayStorage;
    sub_100082514(&qword_1001042F0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
    sub_100014588();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v78 = v104;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v77);

    (*(v83 + 8))(v68, v67);
    (*(v82 + 8))(v69, v4);
    result = (v102)(v23, v75);
    *(v100 + v87) = 0;
  }

  return result;
}

uint64_t sub_10008011C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
  v4 = sub_1000783D4(a2);
  sub_100081FB0(v3, 510, v4, a1);
}

uint64_t sub_100080184(uint64_t a1, int a2)
{
  v4 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12[-v6];
  *(*(*(a1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_progressEvent) = a2;
  LOBYTE(a2) = *(a1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state);

  v12[8] = 1;
  sub_1000185F0(v7, v8, a2, 0x100000000uLL, 0);

  v9 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  v10 = OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_viewModel;
  swift_beginAccess();
  sub_100082E7C(v7, a1 + v10);
  swift_endAccess();
  sub_100079428();
  return sub_10000EBA4(v7, &qword_100103420, &unk_1000BCE90);
}

uint64_t sub_1000802F4()
{
  if (qword_100101608 != -1)
  {
    swift_once();
  }

  *(qword_1001086C0 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_indexToNextState) = 0;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10007E89C();
  }

  return result;
}

char *sub_100080390(char a1)
{
  result = 0;
  switch(a1)
  {
    case 1:
    case 4:
    case 22:
    case 24:
      type metadata accessor for HomePodSetupPickerViewController();
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    case 2:
    case 56:
      type metadata accessor for HomePodSetupTextFieldViewController();
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    case 3:
    case 6:
    case 7:
    case 9:
    case 12:
    case 13:
    case 17:
    case 25:
    case 28:
    case 29:
    case 31:
    case 32:
    case 33:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 47:
    case 48:
    case 50:
    case 52:
    case 53:
    case 57:
    case 58:
    case 59:
    case 61:
    case 62:
    case 64:
    case 65:
    case 66:
    case 68:
    case 69:
      type metadata accessor for HomePodSetupIconContentViewController();
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    case 5:
      type metadata accessor for HomePodSetupProgressViewController();
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    case 8:
      type metadata accessor for HomePodSetupSoundRecognitionViewController();
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    case 10:
      type metadata accessor for HomePodSetupDisclaimerViewController();
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    case 11:
      type metadata accessor for HomePodSetupPersonalRequestsViewController();
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    case 14:
    case 15:
      type metadata accessor for HomePodSetupSiriWelcomeViewController();
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    case 16:
    case 30:
      type metadata accessor for HomePodSetupFeatureListViewController();
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    case 18:
      v4 = *(*(*(v1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceModelCode);
      v5 = objc_allocWithZone(type metadata accessor for HomePodSetupVisualAuthViewController());
      return sub_10006CE94(v4);
    case 19:
      [*(*(v1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) skipAudioPasscode];
      type metadata accessor for HomePodSetupPINEntryViewController();
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    case 20:
    case 27:
      type metadata accessor for HomePodSetupStereoViewController();
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    case 21:
      v6 = [objc_allocWithZone(HomePodSetupSiriVoicePreviewer) init];
      v7 = *(v1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
      [v6 setSession:*(*(v7 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_sfSession)];
      v8 = *(v7 + 48);
      v9 = *(v8 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preferredSiriLanguageCode);
      v10 = *(v8 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preferredSiriLanguageCode + 8);
      v11 = *(v8 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_allowsRandomVoiceSelection);
      objc_allocWithZone(type metadata accessor for HomePodSetupSiriVoiceSelectionViewController());

      return sub_100058DDC(v9, v10, v11, v6);
    case 23:
      type metadata accessor for HomePodSetupLeftRightViewController();
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    case 26:
      v39[3] = &type metadata for SharingFeatureFlags;
      v39[4] = sub_100082468();
      LOBYTE(v39[0]) = 0;
      v12 = isFeatureEnabled(_:)();
      sub_10000E70C(v39);
      v13 = *(v1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
      if ((v12 & 1) == 0)
      {
        v17 = *(v13 + 48);
        v19 = *(v17 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_deviceGUID);
        v18 = *(v17 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_deviceGUID + 8);
        v20 = (v17 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_deviceSerialNumber);
        v22 = *v20;
        v21 = v20[1];
        v23 = type metadata accessor for HomePodSetupAppleMusicViewController();
        v24 = objc_allocWithZone(v23);
        *&v24[OBJC_IVAR____TtC14HDSViewService36HomePodSetupAppleMusicViewController_presenter + 8] = 0;
        swift_unknownObjectWeakInit();
        v25 = OBJC_IVAR____TtC14HDSViewService36HomePodSetupAppleMusicViewController_viewModel;
        v26 = type metadata accessor for HomePodSetupViewModel(0);
        (*(*(v26 - 8) + 56))(&v24[v25], 1, 1, v26);
        *&v24[OBJC_IVAR____TtC14HDSViewService36HomePodSetupAppleMusicViewController_vcAppleMusic] = 0;
        v27 = &v24[OBJC_IVAR____TtC14HDSViewService36HomePodSetupAppleMusicViewController_deviceGUID];
        *v27 = v19;
        *(v27 + 1) = v18;
        v28 = &v24[OBJC_IVAR____TtC14HDSViewService36HomePodSetupAppleMusicViewController_deviceSerialNumber];
        *v28 = v22;
        *(v28 + 1) = v21;
        v29 = objc_allocWithZone(PRXCardContentView);

        v30 = [v29 init];
        v38.receiver = v24;
        v38.super_class = v23;
        v31 = objc_msgSendSuper2(&v38, "initWithContentView:", v30);

        return v31;
      }

      if ([*(v13 + 80) acceptedMusicTerms])
      {
        v14 = *(v13 + 136);
        if (v14)
        {
          v15 = *(v13 + 136);
          v16 = v14;
          return v15;
        }

        if (qword_1001016D0 != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        sub_100012AAC(v37, qword_100103DD0);
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          v36 = "HomePodSetupPresenter: No marketing item so not showing Music Offer.";
          goto LABEL_37;
        }
      }

      else
      {
        if (qword_1001016D0 != -1)
        {
          swift_once();
        }

        v32 = type metadata accessor for Logger();
        sub_100012AAC(v32, qword_100103DD0);
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          v36 = "HomePodSetupPresenter: User did not agree to Apple Music Privacy not showing Music Offer.";
LABEL_37:
          _os_log_impl(&_mh_execute_header, v33, v34, v36, v35, 2u);
        }
      }

      return 0;
    case 34:
    case 35:
    case 36:
    case 37:
    case 46:
    case 54:
      type metadata accessor for HomePodSetupWiFiErrorViewController();
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    case 49:
    case 67:
      type metadata accessor for HomePodSetupDoneViewController();
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    case 51:
      return result;
    case 55:
      type metadata accessor for HomePodSetupTableViewController();
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    case 60:
      type metadata accessor for HomePodSetupFileTransferViewController();
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    case 63:
      type metadata accessor for SoftwareUpdateRequiredViewController();
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    default:
      type metadata accessor for HomePodSetupIntroViewController();
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }
}

void sub_1000809E4()
{
  v1 = sub_10000E6C4(&qword_100101F08, &unk_1000BD100);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v94 = &v91 - v3;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v92 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v93 = &v91 - v9;
  v10 = type metadata accessor for URLQueryItem();
  v11 = *(v10 - 8);
  v104 = v10;
  v105 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v106 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000E6C4(&qword_1001040F8, &qword_1000BE8B8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v98 = &v91 - v16;
  v17 = type metadata accessor for URLComponents();
  v100 = *(v17 - 8);
  v101 = v17;
  v18 = *(v100 + 64);
  __chkstk_darwin(v17);
  v97 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v0 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
  v21 = [*(v20 + 80) mainError];
  if (v21)
  {
    v22 = v21;
    v108 = 0;
    v109 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v23._countAndFlagsBits = 0xD000000000000028;
    v23._object = 0x80000001000C6BC0;
    String.append(_:)(v23);
    v107 = v22;
    sub_10000E6C4(&unk_1001035F0, &unk_1000BE8D0);
    _print_unlocked<A, B>(_:_:)();
    v24._countAndFlagsBits = 10528;
    v24._object = 0xE200000000000000;
    String.append(_:)(v24);
  }

  else
  {
    v108 = 0;
    v109 = 0xE000000000000000;
    _StringGuts.grow(_:)(40);

    v108 = 0xD000000000000026;
    v109 = 0x80000001000C6B50;
    LODWORD(v107) = *(*(v20 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_status);
    v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v25);
  }

  v26 = v108;
  v27 = v109;
  sub_10000E6C4(&qword_100104100, &qword_1000BE8C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000BE6C0;
  strcpy((inited + 32), "Classification");
  *(inited + 47) = -18;
  *(inited + 48) = 0x2073756F69726553;
  *(inited + 56) = 0xEB00000000677542;
  *(inited + 64) = 0x6E656E6F706D6F43;
  *(inited + 72) = 0xEB00000000444974;
  *(inited + 80) = 0x30323833313231;
  *(inited + 88) = 0xE700000000000000;
  strcpy((inited + 96), "ComponentName");
  *(inited + 110) = -4864;
  *(inited + 112) = 0x69766544656D6F48;
  *(inited + 120) = 0xEF70757465536563;
  *(inited + 128) = 0xD000000000000010;
  *(inited + 136) = 0x80000001000C6B80;
  *(inited + 144) = 7105601;
  *(inited + 152) = 0xE300000000000000;
  *(inited + 160) = 0x7364726F7779654BLL;
  *(inited + 168) = 0xE800000000000000;
  *(inited + 176) = 0x393739343937;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = 0x6375646F72706552;
  *(inited + 200) = 0xEF7974696C696269;
  strcpy((inited + 208), "I Didn't Try");
  *(inited + 221) = 0;
  *(inited + 222) = -5120;
  *(inited + 224) = 0x656C746954;
  *(inited + 232) = 0xE500000000000000;
  *(inited + 240) = v26;
  *(inited + 248) = v27;
  *(inited + 256) = 0x656D686361747441;
  *(inited + 264) = 0xEB0000000073746ELL;
  v29 = [*(v20 + 80) sysDropSession];
  v30 = [v29 fileTransferredSysDiagnosePath];

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  *(inited + 272) = v31;
  *(inited + 280) = v33;
  v34 = sub_10000D9E4(inited);
  swift_setDeallocating();
  sub_10000E6C4(&qword_100104108, &qword_1000BE8C8);
  swift_arrayDestroy();
  if (qword_1001016D0 == -1)
  {
    goto LABEL_5;
  }

LABEL_38:
  swift_once();
LABEL_5:
  v35 = type metadata accessor for Logger();
  v36 = sub_100012AAC(v35, qword_100103DD0);

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  v39 = os_log_type_enabled(v37, v38);
  v95 = v5;
  v96 = v4;
  v99 = v36;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v108 = v41;
    *v40 = 136315138;
    v42 = Dictionary.description.getter();
    v5 = v43;
    v44 = sub_1000B08A0(v42, v43, &v108);

    *(v40 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v37, v38, "TTR query dict %s", v40, 0xCu);
    sub_10000E70C(v41);
  }

  v45 = v34 + 64;
  v46 = 1 << *(v34 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & *(v34 + 64);
  v49 = (v46 + 63) >> 6;
  v102 = v105 + 32;

  v4 = 0;
  v50 = _swiftEmptyArrayStorage;
  v51 = v34;
  v103 = v34;
  while (v48)
  {
LABEL_14:
    v53 = (v51[6] + ((v4 << 10) | (16 * __clz(__rbit64(v48)))));
    v54 = *v53;
    v55 = v53[1];
    if (v51[2])
    {

      v56 = sub_100053B80(v54, v55);
      if (v57)
      {
        v58 = (v51[7] + 16 * v56);
        v5 = *v58;
        v59 = v58[1];
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    URLQueryItem.init(name:value:)();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = sub_100053208(0, v50[2] + 1, 1, v50);
    }

    v51 = v103;
    v61 = v50[2];
    v60 = v50[3];
    v34 = v61 + 1;
    if (v61 >= v60 >> 1)
    {
      v50 = sub_100053208(v60 > 1, v61 + 1, 1, v50);
    }

    v48 &= v48 - 1;
    v50[2] = v34;
    (*(v105 + 32))(v50 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v61, v106, v104);
  }

  while (1)
  {
    v52 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v52 >= v49)
    {
      break;
    }

    v48 = *(v45 + 8 * v52);
    ++v4;
    if (v48)
    {
      v4 = v52;
      goto LABEL_14;
    }
  }

  v62 = v98;
  URLComponents.init(string:)();
  v64 = v100;
  v63 = v101;
  if ((*(v100 + 48))(v62, 1, v101) == 1)
  {

    v65 = &qword_1001040F8;
    v66 = &qword_1000BE8B8;
    goto LABEL_29;
  }

  v67 = v97;
  (*(v64 + 32))(v97, v62, v63);
  URLComponents.queryItems.setter();
  v62 = v94;
  URLComponents.url.getter();
  v69 = v95;
  v68 = v96;
  if ((*(v95 + 48))(v62, 1, v96) == 1)
  {
    (*(v64 + 8))(v67, v63);
    v65 = &qword_100101F08;
    v66 = &unk_1000BD100;
LABEL_29:
    sub_10000EBA4(v62, v65, v66);
  }

  else
  {
    v70 = v93;
    (*(v69 + 32))(v93, v62, v68);
    v71 = [objc_opt_self() sharedApplication];
    URL._bridgeToObjectiveC()(v72);
    v74 = v73;
    sub_10000DAF8(_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_100082514(&qword_100101B08, type metadata accessor for OpenExternalURLOptionsKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v71 openURL:v74 options:isa completionHandler:0];

    v76 = v92;
    (*(v69 + 16))(v92, v70, v68);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v108 = v80;
      *v79 = 136315138;
      sub_100082514(&qword_100104110, &type metadata accessor for URL);
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v82 = v76;
      v84 = v83;
      v85 = *(v69 + 8);
      v85(v82, v68);
      v86 = sub_1000B08A0(v81, v84, &v108);

      *(v79 + 4) = v86;
      _os_log_impl(&_mh_execute_header, v77, v78, "HomePodSetupPresenter: Open Radar URL: %s", v79, 0xCu);
      sub_10000E70C(v80);

      v85(v93, v68);
    }

    else
    {

      v87 = *(v69 + 8);
      v87(v76, v68);
      v87(v70, v68);
    }

    (*(v100 + 8))(v97, v101);
  }

  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    *v90 = 0;
    _os_log_impl(&_mh_execute_header, v88, v89, "<loom:ViewService:matchSubmitRadar> HomePodSetupPresenter: Report Bug", v90, 2u);
  }
}

uint64_t sub_1000816F0()
{
  sub_100012E5C(v0 + 16);
  sub_10000EBA4(v0 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_viewModel, &qword_100103420, &unk_1000BCE90);
  v1 = *(v0 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_askSiriStatesPresented);

  v2 = *(v0 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
  swift_unknownObjectRelease();
  v3 = *(v0 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_router);
  swift_unknownObjectRelease();

  v4 = *(v0 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_remoteViewController);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_100081790()
{
  sub_1000816F0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HomePodSetupPresenter()
{
  result = qword_100103E78;
  if (!qword_100103E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10008183C()
{
  sub_100012108();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for HomePodSetupState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xBB)
  {
    goto LABEL_17;
  }

  if (a2 + 69 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 69) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 69;
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

      return (*a1 | (v4 << 8)) - 69;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 69;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x46;
  v8 = v6 - 70;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomePodSetupState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 69 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 69) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xBB)
  {
    v4 = 0;
  }

  if (a2 > 0xBA)
  {
    v5 = ((a2 - 187) >> 8) + 1;
    *result = a2 + 69;
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
    *result = a2 + 69;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100081A6C()
{
  result = qword_1001040F0;
  if (!qword_1001040F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001040F0);
  }

  return result;
}

uint64_t sub_100081AC0()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  sub_100012B48(v0, qword_100103DE8);
  *sub_100012AAC(v0, qword_100103DE8) = 1;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

uint64_t sub_100081B50(int a1)
{
  if (a1 <= 0)
  {
    if (a1 == -71163)
    {
      return 45;
    }

    else if (a1 == -71138)
    {
      return 46;
    }

    else if (a1)
    {
      return 50;
    }

    else
    {
      v4 = *(*(v1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 48);

      v5 = sub_10004B0F0();

      if (v5)
      {
        return 52;
      }

      else
      {
        return 49;
      }
    }
  }

  else
  {
    v2 = a1 - 301000;
    result = 34;
    switch(v2)
    {
      case 0:
      case 9:
        return result;
      case 4:
        result = 36;
        break;
      case 5:
        result = 38;
        break;
      case 6:
        result = 41;
        break;
      case 10:
        result = 42;
        break;
      case 11:
        result = 39;
        break;
      case 17:
        result = 30;
        break;
      case 18:
        result = 43;
        break;
      case 20:
      case 34:
        result = 37;
        break;
      case 21:
      case 28:
        result = 35;
        break;
      case 24:
        result = 44;
        break;
      case 27:
        result = 40;
        break;
      default:
        return 50;
    }
  }

  return result;
}

uint64_t sub_100081D10(int a1)
{
  v2 = v1;
  if (qword_1001016D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100012AAC(v4, qword_100103DD0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v5, v6, "HomePodSetupPresenter: displayError called for state: %d", v7, 8u);
  }

  *(*(*(v2 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_status) = a1;
  if (a1 <= 301016)
  {
    if (a1 == 301007)
    {
      v8 = 31;
      goto LABEL_17;
    }

    if (a1 == 301010)
    {
      v8 = 42;
      goto LABEL_17;
    }
  }

  else
  {
    switch(a1)
    {
      case 301022:
        v8 = 32;
        goto LABEL_17;
      case 301019:
        v8 = 33;
        goto LABEL_17;
      case 301017:
        v8 = 30;
        goto LABEL_17;
    }
  }

  v8 = 50;
LABEL_17:

  return sub_10007E65C(v8);
}

uint64_t sub_100081EC0()
{
  v1 = *(v0 + 16);
  sub_10000E6C4(&qword_100104148, &qword_1000BE928);
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_100081F20(uint64_t **a1, uint64_t a2, uint64_t *a3)
{
  result = sub_1000B08A0(0xD000000000000026, 0x80000001000C6DE0, a3);
  v5 = *a1;
  *v5 = result;
  *a1 = v5 + 1;
  return result;
}

uint64_t sub_100081F68(uint64_t **a1, uint64_t a2, uint64_t *a3)
{
  result = sub_1000B08A0(0xD00000000000005ELL, 0x80000001000C6D10, a3);
  v5 = *a1;
  *v5 = result;
  *a1 = v5 + 1;
  return result;
}

void sub_100081FB0(uint64_t a1, int a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = (&v37 - v10);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
  *v16 = static OS_dispatch_queue.main.getter();
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v17 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v12);
  if (v17)
  {
    v18 = *(a1 + 48);
    *(v18 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_progressEvent) = a2;
    v19 = *(v18 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_siriDialogInfo);
    *(v18 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_siriDialogInfo) = a3;

    sub_1000825E8(a2);
    v16 = String.init(cString:)();
    a3 = v20;
    if (qword_1001016D0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v21 = type metadata accessor for Logger();
  sub_100012AAC(v21, qword_100103DD0);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v37 = v11;
    v25 = a1;
    v26 = a4;
    v27 = v24;
    v28 = swift_slowAlloc();
    v38 = v28;
    *v27 = 136315138;
    v29 = sub_1000B08A0(v16, a3, &v38);

    *(v27 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "HomePodSetupPresenter: Show Siri Welcome screen for event %s", v27, 0xCu);
    sub_10000E70C(v28);

    a4 = v26;
    a1 = v25;
    v11 = v37;
  }

  else
  {
  }

  if (a2 == 510)
  {
    v30 = *(a1 + 48);

    sub_100037200(v31, v11);

    v32 = type metadata accessor for HomePodSetupViewModel(0);
    (*(*(v32 - 8) + 56))(v11, 0, 1, v32);
    v33 = OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_viewModel;
    swift_beginAccess();
    sub_100082E7C(v11, a4 + v33);
    swift_endAccess();
    sub_100079428();
    sub_10000EBA4(v11, &qword_100103420, &unk_1000BCE90);
  }

  else if (a2 == 500)
  {
    sub_10007E65C(14);
  }

  else
  {
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "HomePodSetupPresenter: Show Siri Welcome screen with an invalid Event Type", v36, 2u);
    }
  }
}

uint64_t sub_100082414()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x46)
  {
    return 70;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_100082468()
{
  result = qword_100104118;
  if (!qword_100104118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100104118);
  }

  return result;
}

uint64_t sub_1000824BC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000824FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100082514(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008255C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 28, 7);
}

uint64_t sub_1000825A0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

const char *sub_1000825E8(int a1)
{
  if (a1 > 279)
  {
    if (a1 <= 709)
    {
      if (a1 <= 499)
      {
        if (a1 > 400)
        {
          if (a1 > 419)
          {
            switch(a1)
            {
              case 420:
                return "FileTransferReady";
              case 430:
                return "eSimExternal2FAStart";
              case 431:
                return "eSimExternal2FAStop";
            }
          }

          else
          {
            switch(a1)
            {
              case 401:
                return "PINPair";
              case 410:
                return "MigrateStart";
              case 411:
                return "MigrateStop";
            }
          }
        }

        else if (a1 > 299)
        {
          switch(a1)
          {
            case 300:
              return "BackupProgress";
            case 310:
              return "SyncProgress";
            case 400:
              return "StopSetup";
          }
        }

        else
        {
          switch(a1)
          {
            case 280:
              return "TVLCalFailed";
            case 281:
              return "TVLCalTryAgain";
            case 282:
              return "TVLCalFinal";
          }
        }
      }

      else if (a1 <= 554)
      {
        if (a1 > 529)
        {
          switch(a1)
          {
            case 530:
              return "SiriDialogBHome";
            case 540:
              return "SiriDialogBNews";
            case 550:
              return "SiriDialogBWeather";
          }
        }

        else
        {
          switch(a1)
          {
            case 500:
              return "SiriWelcome";
            case 510:
              return "SiriDialogA";
            case 520:
              return "SiriDialogBStart";
          }
        }
      }

      else if (a1 <= 569)
      {
        switch(a1)
        {
          case 555:
            return "SiriDialogBClock";
          case 558:
            return "SiriDialogBMusic";
          case 560:
            return "SiriDialogCMusic";
        }
      }

      else if (a1 > 599)
      {
        if (a1 == 600)
        {
          return "SiriSkipDemo";
        }

        if (a1 == 700)
        {
          return "StopSetupLEDs";
        }
      }

      else
      {
        if (a1 == 570)
        {
          return "SiriDialogCNews";
        }

        if (a1 == 580)
        {
          return "SiriDialogCWeather";
        }
      }

      return "?";
    }

    if (a1 <= 899)
    {
      if (a1 <= 802)
      {
        if (a1 == 710)
        {
          return "AudioPasscodeEnded";
        }

        if (a1 == 800)
        {
          return "AuthAccountsStart";
        }
      }

      else
      {
        switch(a1)
        {
          case 803:
            return "AuthAccountsiCloudProgress";
          case 804:
            return "AuthAccountsStoreProgress";
          case 805:
            return "AuthAccountsGameCenterProgress";
        }
      }

      return "?";
    }

    if (a1 > 999)
    {
      if (a1 <= 1099)
      {
        if (a1 == 1000)
        {
          return "SecureIntentStart";
        }

        if (a1 == 1001)
        {
          return "SecureIntentFinish";
        }
      }

      else
      {
        switch(a1)
        {
          case 1100:
            return "OneTimeCodeDetected";
          case 2000:
            return "DependentStart";
          case 2001:
            return "DependentEnd";
        }
      }

      return "?";
    }

    switch(a1)
    {
      case 900:
        result = "SU-No-SetupScanAttempt";
        break;
      case 901:
        result = "SU-No-SetupStatusUpdate";
        break;
      case 902:
        result = "SU-No-SetupWipeWifi";
        break;
      case 903:
        result = "SU-No-SetupCancelled";
        break;
      case 904:
        result = "SU-No-SetupObliterate";
        break;
      case 905:
        result = "SU-No-SetupCannotCancel";
        break;
      case 906:
        result = "SysDrop AirDrop Event";
        break;
      case 907:
        result = "SysDrop Sysdiagnose Event";
        break;
      case 908:
        result = "SysDrop Cancel Event";
        break;
      case 909:
        result = "File Transfer Progress Event";
        break;
      case 910:
        result = "File Transfer Completed Event";
        break;
      case 911:
        result = "iOSWiFiSetup";
        break;
      case 912:
        result = "HKPrimaryResidentSSIDFetchStart";
        break;
      case 913:
        result = "LoggingProfileTransfer";
        break;
      default:
        return "?";
    }
  }

  else
  {
    if (a1 > 121)
    {
      if (a1 <= 239)
      {
        if (a1 > 209)
        {
          if (a1 > 229)
          {
            switch(a1)
            {
              case 230:
                return "HomeKitStart";
              case 234:
                return "HomeKitSetupStart";
              case 236:
                return "CDPSetupStart";
            }
          }

          else
          {
            switch(a1)
            {
              case 210:
                return "ActivationStart";
              case 220:
                return "iCloudStart";
              case 224:
                return "AppleIDSetupStart";
            }
          }
        }

        else if (a1 > 139)
        {
          switch(a1)
          {
            case 140:
              return "RecognizeVoice";
            case 150:
              return "SiriForEveryone";
            case 200:
              return "WiFiStart";
          }
        }

        else
        {
          switch(a1)
          {
            case 122:
              return "CheckingAppleMusic";
            case 124:
              return "CheckingAccount";
            case 130:
              return "WiFiPoweredOff";
          }
        }
      }

      else if (a1 <= 269)
      {
        if (a1 > 249)
        {
          switch(a1)
          {
            case 250:
              return "ReportSuccess";
            case 260:
              return "TVLSStart";
            case 264:
              return "TVLSFinish";
          }
        }

        else
        {
          switch(a1)
          {
            case 240:
              return "BuddyStarting";
            case 241:
              return "BuddyProgress";
            case 242:
              return "BuddyFinished";
          }
        }
      }

      else
      {
        if (a1 > 275)
        {
          if (a1 > 277)
          {
            if (a1 == 278)
            {
              return "TVLCalStart";
            }

            else
            {
              return "TVLCalStep";
            }
          }

          else if (a1 == 276)
          {
            return "TVLSTryAgain";
          }

          else
          {
            return "TVLSToneBegan";
          }
        }

        switch(a1)
        {
          case 270:
            return "TVLSEstimateStart";
          case 272:
            return "TVLSEstimateFinal";
          case 274:
            return "TVLSEstimateFailed";
        }
      }

      return "?";
    }

    if (a1 > 69)
    {
      if (a1 <= 95)
      {
        if (a1 > 91)
        {
          switch(a1)
          {
            case '\\':
              return "StepStart";
            case '^':
              return "StepFinish";
            case '_':
              return "PreFinish";
          }
        }

        else
        {
          switch(a1)
          {
            case 'F':
              return "SecurityFinish";
            case 'P':
              return "BasicConfigStart";
            case 'Z':
              return "BasicConfigFinish";
          }
        }

        return "?";
      }

      if (a1 > 98)
      {
        switch(a1)
        {
          case 'c':
            return "SetupPeerSWUpdate";
          case 'd':
            return "Finished";
          case 'x':
            return "CheckingiCloud";
        }

        return "?";
      }

      if (a1 == 96)
      {
        return "SetupFinished";
      }

      else if (a1 == 97)
      {
        return "SetupResumed";
      }

      else
      {
        return "SetupSuspend";
      }
    }

    else
    {
      if (a1 > 32)
      {
        if (a1 > 49)
        {
          switch(a1)
          {
            case '2':
              return "PreAuthFinish";
            case '<':
              return "SecurityStart";
            case 'A':
              return "SecurityAPCLoopStart";
          }
        }

        else
        {
          switch(a1)
          {
            case '!':
              return "SessionSecured";
            case '#':
              return "ConnectStart";
            case '(':
              return "PreAuthStart";
          }
        }

        return "?";
      }

      if (a1 <= 29)
      {
        switch(a1)
        {
          case 0:
            return "Invalid";
          case 10:
            return "Start";
          case 20:
            return "Final";
        }

        return "?";
      }

      if (a1 == 30)
      {
        return "Error";
      }

      else if (a1 == 31)
      {
        return "SessionStarted";
      }

      else
      {
        return "SessionEnded";
      }
    }
  }

  return result;
}

uint64_t sub_100082E7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100082EEC()
{
  v1 = v0[2];

  if (v0[7])
  {
    sub_10000E70C(v0 + 4);
  }

  v2 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100082F6C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100082FC4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100083014()
{
  if (v0[6])
  {
    sub_10000E70C(v0 + 3);
  }

  v1 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_100083068()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1(v5);
  v3 = sub_10000BFCC();
  sub_100012E08(v5);
  return v3;
}

uint64_t sub_1000830BC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1000830FC(char a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  sub_10007D874(a1, a2);
}

void sub_1000831A0(double a1, double a2, float a3)
{
  v7 = [v3 widthAnchor];
  v8 = [v3 heightAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 multiplier:a1 / a2];

  *&v10 = a3;
  [v9 setPriority:v10];
  v11 = objc_opt_self();
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000BCE00;
  *(v12 + 32) = v9;
  sub_1000163D8();
  v13 = v9;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 activateConstraints:isa];
}

void sub_1000832FC(void *a1, double a2, double a3)
{
  v4 = v3;
  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:a1];
  v8 = objc_opt_self();
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000BD0A0;
  v10 = [a1 centerXAnchor];
  v11 = [v4 centerXAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:a2];

  *(v9 + 32) = v12;
  v13 = [a1 centerYAnchor];
  v14 = [v4 centerYAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:a3];

  *(v9 + 40) = v15;
  sub_1000163D8();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v8 activateConstraints:isa];
}

id sub_1000834C0(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 addSubview:a1];
  v14 = [a1 topAnchor];
  v15 = [a2 topAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:a3];

  v17 = [a2 rightAnchor];
  v18 = [a1 rightAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:a6];

  v20 = [a2 bottomAnchor];
  v21 = [a1 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:a5];

  v23 = [a1 leftAnchor];
  v24 = [a2 leftAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:a4];

  v26 = objc_opt_self();
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1000BD460;
  *(v27 + 32) = v16;
  *(v27 + 40) = v19;
  *(v27 + 48) = v22;
  *(v27 + 56) = v25;
  sub_1000163D8();
  v28 = v16;
  v29 = v19;
  v30 = v22;
  v31 = v25;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v26 activateConstraints:isa];

  return v28;
}

uint64_t sub_100083828(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000E6C4(&qword_100101F08, &unk_1000BD100);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100083A0C(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_100075414(v7);
  }

  (*(v9 + 32))(v12, v7, v8);
  v14 = [objc_opt_self() currentTraitCollection];
  v15 = [v14 userInterfaceStyle];

  if (v15 == 2)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  URL._bridgeToObjectiveC()(v16);
  v19 = v18;
  [v2 updateViewForAssetType:v17 adjustmentsURL:v18];

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_100083A0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000E6C4(&qword_100101F08, &unk_1000BD100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100083A7C()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100104150);
  v1 = sub_100012AAC(v0, qword_100104150);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100083B44()
{
  v1 = v0;
  v2 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v43 - v4;
  v6 = type metadata accessor for HomePodSetupViewModel(0);
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = (&v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v13 = (&v43 - v12);
  v14 = type metadata accessor for HomePodSetupPersonalRequestsViewController();
  v44.receiver = v1;
  v44.super_class = v14;
  objc_msgSendSuper2(&v44, "viewDidLoad");
  v15 = OBJC_IVAR____TtC14HDSViewService42HomePodSetupPersonalRequestsViewController_viewModel;
  swift_beginAccess();
  sub_10000F25C(v1 + v15, v5, &qword_100103420, &unk_1000BCE90);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000EBA4(v5, &qword_100103420, &unk_1000BCE90);
    if (qword_1001016E0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100012AAC(v16, qword_100104150);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "HomePodSetupPersonalRequestsViewController: viewDidLoad failed because viewModel not set.", v19, 2u);
    }
  }

  else
  {
    sub_100016310(v5, v13);
    if (qword_1001016E0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100012AAC(v20, qword_100104150);
    sub_100012AE4(v13, v11);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v43 = v24;
      *v23 = 136315138;
      v25 = *v11;
      v26 = v11[1];

      sub_100016374(v11);
      v27 = sub_1000B08A0(v25, v26, &v43);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "HomePodSetupPersonalRequestsViewController: viewDidLoad with title %s", v23, 0xCu);
      sub_10000E70C(v24);
    }

    else
    {

      sub_100016374(v11);
    }

    sub_100084024();
    sub_1000854D4(v13);
    if ((*(v13 + v6[19]) & 2) == 0)
    {
      v28 = (v13 + v6[20]);
      if (v28[1])
      {
        v30 = v28[6];
        v29 = v28[7];
        v32 = v28[4];
        v31 = v28[5];
        v34 = v28[2];
        v33 = v28[3];
        v35 = *v28;
        v36 = String._bridgeToObjectiveC()();
        v37 = String._bridgeToObjectiveC()();
        v38 = String._bridgeToObjectiveC()();
        v39 = String._bridgeToObjectiveC()();
        v40 = [v1 dismissalConfirmationActionWithTitle:v36 message:v37 confirmButtonTitle:v38 cancelButtonTitle:v39];

        [v1 setDismissButtonAction:v40];
      }
    }

    v41 = *(v13 + v6[10]);
    v42 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10009EA84(v41, sub_10008B9B8, v42);

    sub_100016374(v13);
  }
}

void sub_100084024()
{
  v1 = v0;
  v2 = sub_1000860C8(0xD000000000000022, 0x80000001000C7040);
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  v6 = sub_1000860C8(0xD000000000000022, 0x80000001000C7070);
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  v61 = v9;
  v63 = v8;
  v10 = sub_1000860C8(0xD000000000000023, 0x80000001000C70A0);
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  v65 = v13;
  v66 = v12;
  v59 = v0;
  v14 = sub_1000860C8(0xD00000000000001FLL, 0x80000001000C70D0);
  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  v69 = v17;
  v70 = v16;
  v18 = objc_allocWithZone(PRXFeatureIcon);
  v19 = String._bridgeToObjectiveC()();
  v20 = [v18 initWithSystemImageNamed:v19];

  v60 = objc_opt_self();
  v21 = [v60 systemRedColor];
  [v20 setPlatterColor:v21];

  sub_10000E6C4(&qword_100102388, qword_1000BE250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000BD050;
  *(inited + 56) = &type metadata for String;
  v23 = sub_100039F8C();
  *(inited + 64) = v23;
  *(inited + 32) = v4;
  *(inited + 40) = v5;
  v71 = 0;
  v72 = 0xE000000000000000;
  sub_100038F50(inited, &v71);
  swift_setDeallocating();
  v24 = *(inited + 16);
  sub_10000E6C4(&qword_1001023D8, &unk_1000BD290);
  swift_arrayDestroy();
  v25 = v20;
  v26 = String._bridgeToObjectiveC()();

  v27 = String._bridgeToObjectiveC()();
  v28 = objc_opt_self();
  v68 = v25;
  v67 = [v28 featureWithTitle:v26 detailText:v27 icon:v25];

  v29 = objc_allocWithZone(PRXFeatureIcon);
  v30 = String._bridgeToObjectiveC()();
  v31 = [v29 initWithSystemImageNamed:v30];

  v32 = [v60 systemBlueColor];
  [v31 setPlatterColor:v32];

  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_1000BD050;
  *(v33 + 56) = &type metadata for String;
  *(v33 + 64) = v23;
  *(v33 + 32) = v63;
  *(v33 + 40) = v61;
  v71 = 0;
  v72 = 0xE000000000000000;
  sub_100038F50(v33, &v71);
  swift_setDeallocating();
  v34 = *(v33 + 16);
  swift_arrayDestroy();
  v35 = v31;
  v36 = String._bridgeToObjectiveC()();

  v37 = String._bridgeToObjectiveC()();
  v64 = v35;
  v62 = [v28 featureWithTitle:v36 detailText:v37 icon:v35];

  v38 = objc_allocWithZone(PRXFeatureIcon);
  v39 = String._bridgeToObjectiveC()();
  v40 = [v38 initWithSystemImageNamed:v39];

  v41 = [v60 systemYellowColor];
  [v40 setPlatterColor:v41];

  v42 = swift_initStackObject();
  *(v42 + 16) = xmmword_1000BD050;
  *(v42 + 56) = &type metadata for String;
  *(v42 + 64) = v23;
  *(v42 + 32) = v66;
  *(v42 + 40) = v65;
  v71 = 0;
  v72 = 0xE000000000000000;
  sub_100038F50(v42, &v71);
  swift_setDeallocating();
  v43 = *(v42 + 16);
  swift_arrayDestroy();
  v44 = v40;
  v45 = String._bridgeToObjectiveC()();

  v46 = String._bridgeToObjectiveC()();
  v47 = [v28 featureWithTitle:v45 detailText:v46 icon:v44];

  v48 = objc_allocWithZone(PRXFeatureIcon);
  v49 = String._bridgeToObjectiveC()();
  v50 = [v48 initWithSystemImageNamed:v49];

  v51 = [v60 systemGreenColor];
  [v50 setPlatterColor:v51];

  v52 = swift_initStackObject();
  *(v52 + 16) = xmmword_1000BD050;
  *(v52 + 56) = &type metadata for String;
  *(v52 + 64) = v23;
  *(v52 + 32) = v70;
  *(v52 + 40) = v69;
  v71 = 0;
  v72 = 0xE000000000000000;
  sub_100038F50(v52, &v71);
  swift_setDeallocating();
  v53 = *(v52 + 16);
  swift_arrayDestroy();
  v54 = v50;
  v55 = String._bridgeToObjectiveC()();

  v56 = String._bridgeToObjectiveC()();
  v57 = [v28 featureWithTitle:v55 detailText:v56 icon:v54];

  v58 = [v59 tableView];
  [v58 setSeparatorStyle:0];
}

void sub_100084840(char *a1)
{
  v1 = *a1;
  if (qword_1001016E0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100012AAC(v2, qword_100104150);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v7 = sub_10000FEC4(v1);
    v9 = sub_1000B08A0(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "HomePodSetupPersonalRequestsViewController: User tapped on button: %s", v5, 0xCu);
    sub_10000E70C(v6);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_1000849C0(v1);
  }
}

uint64_t sub_1000849C0(char a1)
{
  v2 = v1;
  v4 = sub_10000E6C4(&qword_1001041B0, &qword_1000BE9B8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v35 - v6;
  v8 = type metadata accessor for ClientOrigin();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RequestOrigin();
  v14 = *(*(v13 - 8) + 64);
  result = __chkstk_darwin(v13 - 8);
  if (a1 == 2)
  {
    if (qword_1001016E0 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100012AAC(v31, qword_100104150);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "PersonalRequests Disabled", v34, 2u);
    }
  }

  else
  {
    if (a1 != 1)
    {
      return result;
    }

    if (qword_1001016E0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100012AAC(v16, qword_100104150);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "PersonalRequests Agree button", v19, 2u);
    }

    if (SFDeviceClassCodeGet() == 1)
    {
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "PersonalRequests get me device", v22, 2u);
      }

      (*(v9 + 104))(v12, enum case for ClientOrigin.other(_:), v8);
      RequestOrigin.init(_:)();
      v23 = type metadata accessor for Session();
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      swift_allocObject();
      v26 = Session.init(_:)();
      v27 = type metadata accessor for TaskPriority();
      (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
      type metadata accessor for MainActor();

      v28 = v2;
      v29 = static MainActor.shared.getter();
      v30 = swift_allocObject();
      v30[2] = v29;
      v30[3] = &protocol witness table for MainActor;
      v30[4] = v26;
      v30[5] = v28;
      sub_1000880A0(0, 0, v7, &unk_1000BE9C8, v30);
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v36 = 0;
    memset(v35, 0, sizeof(v35));
    memset(v38, 0, sizeof(v38));
    v37[0] = 2;
    sub_100012DA0(v35, v38, &qword_1001025D0, &unk_1000BD010);
    sub_10007A070(v37);
    swift_unknownObjectRelease();
    return sub_100012E08(v37);
  }

  return result;
}

uint64_t sub_100084ED0(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v4 - 8);
  v37 = v4;
  v5 = *(v36 + 64);
  __chkstk_darwin(v4);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTimeInterval();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for DispatchTime();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v32 - v22;
  v24 = type metadata accessor for HomePodSetupPersonalRequestsViewController();
  v39.receiver = v2;
  v39.super_class = v24;
  objc_msgSendSuper2(&v39, "viewDidAppear:", a1 & 1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10007EA04();
    result = swift_unknownObjectRelease();
  }

  if (qword_100101608 != -1)
  {
    result = swift_once();
  }

  if (*(*(qword_1001086C0 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_automationStepResults) + 16) || *(qword_1001086C0 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_alwaysSelectDefault) == 1)
  {
    static DispatchTime.now()();
    *v15 = 1;
    (*(v12 + 104))(v15, enum case for DispatchTimeInterval.seconds(_:), v11);
    + infix(_:_:)();
    (*(v12 + 8))(v15, v11);
    v32 = *(v17 + 8);
    v32(v21, v16);
    sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
    v26 = static OS_dispatch_queue.main.getter();
    v27 = swift_allocObject();
    *(v27 + 16) = v2;
    aBlock[4] = sub_10008B960;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100091194;
    aBlock[3] = &unk_1000F1528;
    v28 = _Block_copy(aBlock);
    v29 = v2;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10008BEA8(&qword_1001042F0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
    sub_100014588();
    v30 = v33;
    v31 = v37;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v28);

    (*(v36 + 8))(v30, v31);
    (*(v34 + 8))(v10, v35);
    return (v32)(v23, v16);
  }

  return result;
}

uint64_t sub_1000853F0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = 0;
    memset(v1, 0, sizeof(v1));
    memset(v4, 0, sizeof(v4));
    v3[0] = 1;
    sub_100012DA0(v1, v4, &qword_1001025D0, &unk_1000BD010);
    sub_10007A070(v3);
    swift_unknownObjectRelease();
    return sub_100012E08(v3);
  }

  return result;
}

void sub_1000854D4(uint64_t *a1)
{
  if ((v1[OBJC_IVAR____TtC14HDSViewService42HomePodSetupPersonalRequestsViewController_isConfigured] & 1) == 0)
  {
    v2 = v1;
    v1[OBJC_IVAR____TtC14HDSViewService42HomePodSetupPersonalRequestsViewController_isConfigured] = 1;
    v4 = *a1;
    v3 = a1[1];
    v6 = String._bridgeToObjectiveC()();
    [v2 setTitle:v6];

    sub_100085C1C();
    v7 = String._bridgeToObjectiveC()();

    [v2 setSubtitle:v7];

    v8 = type metadata accessor for HomePodSetupViewModel(0);
    [v2 setDismissalType:*(a1 + *(v8 + 76))];
    v9 = (a1 + *(v8 + 28));
    v10 = *v9;
    v11 = v9[1];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      v13 = [objc_allocWithZone(PRXLabel) initWithStyle:1];
      v14 = String._bridgeToObjectiveC()();
      [v13 setText:v14];

      [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
      v15 = [v2 view];
      if (!v15)
      {
        goto LABEL_24;
      }

      v16 = v15;
      [v15 addSubview:v13];

      v17 = *&v2[OBJC_IVAR____TtC14HDSViewService42HomePodSetupPersonalRequestsViewController_bodyLabel];
      *&v2[OBJC_IVAR____TtC14HDSViewService42HomePodSetupPersonalRequestsViewController_bodyLabel] = v13;
    }

    v18 = SFDeviceClassCodeGet();
    v19 = [objc_allocWithZone(PRXLabel) init];
    if (v18 == 1)
    {
      v20 = String._bridgeToObjectiveC()();
      v21 = sub_100006658(v20);

      if (!v21)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = String._bridgeToObjectiveC()();
      }

      [v19 setText:v21];

      [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
      v22 = v19;
      [v22 setNumberOfLines:0];
      v23 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption1];
      [v22 setFont:v23];

      [v22 setAdjustsFontSizeToFitWidth:1];
      v24 = [objc_opt_self() secondaryLabelColor];
      [v22 setTextColor:v24];

      [v22 setTextAlignment:1];
      v25 = [v2 view];
      if (!v25)
      {
        goto LABEL_25;
      }

      v26 = v25;
      [v25 addSubview:v22];

      v27 = *&v2[OBJC_IVAR____TtC14HDSViewService42HomePodSetupPersonalRequestsViewController_bottomLabel];
      *&v2[OBJC_IVAR____TtC14HDSViewService42HomePodSetupPersonalRequestsViewController_bottomLabel] = v22;
      v28 = v22;

      v29 = &selRef_topAnchor;
      v30 = 30.0;
    }

    else
    {
      v29 = &selRef_bottomAnchor;
      v30 = 10.0;
    }

    v31 = [v2 contentView];
    v32 = [v31 mainContentGuide];

    v33 = [v2 tableView];
    v34 = [v33 bottomAnchor];

    if (v18 == 1)
    {
      v35 = v19;
    }

    else
    {
      v35 = v32;
    }

    v36 = [v35 *v29];
    v37 = [v34 constraintEqualToAnchor:v36 constant:v30];

    v38 = v37;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v59 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    if (v18 == 1)
    {
      sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000BD460;
      v40 = v19;
      v41 = [v40 bottomAnchor];
      v42 = [v32 bottomAnchor];
      v43 = [v41 constraintEqualToAnchor:v42 constant:10.0];

      *(inited + 32) = v43;
      v44 = [v40 centerXAnchor];
      v45 = [v32 centerXAnchor];
      v46 = [v44 constraintEqualToAnchor:v45];

      *(inited + 40) = v46;
      v47 = [v40 leadingAnchor];
      v48 = [v2 tableView];
      v49 = [v48 leadingAnchor];

      v50 = [v47 constraintEqualToAnchor:v49 constant:40.0];
      *(inited + 48) = v50;
      v51 = [v40 trailingAnchor];

      v52 = [v2 tableView];
      v53 = [v52 trailingAnchor];

      v54 = [v51 constraintEqualToAnchor:v53 constant:-40.0];
      *(inited + 56) = v54;
      sub_1000952D4(inited);
    }

    v55 = objc_opt_self();
    sub_10003AE18(0, &qword_100102620, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v55 activateConstraints:isa];

    v57 = [v2 view];
    if (v57)
    {
      v58 = v57;

      [v58 bringSubviewToFront:v19];

      return;
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }
}

uint64_t sub_100085C1C()
{
  v1 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v12 - v3;
  if (SFDeviceClassCodeGet() == 1)
  {
    v5 = OBJC_IVAR____TtC14HDSViewService42HomePodSetupPersonalRequestsViewController_viewModel;
    swift_beginAccess();
    sub_10000F25C(v0 + v5, v4, &qword_100103420, &unk_1000BCE90);
    v6 = type metadata accessor for HomePodSetupViewModel(0);
    if (!(*(*(v6 - 8) + 48))(v4, 1, v6))
    {
      v7 = v4[*(v6 + 172)];
    }

    sub_10000EBA4(v4, &qword_100103420, &unk_1000BCE90);
  }

  v8 = String._bridgeToObjectiveC()();

  v9 = sub_100006658(v8);

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v10;
}

id sub_100085EBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupPersonalRequestsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HomePodSetupPersonalRequestsViewController()
{
  result = qword_1001041A0;
  if (!qword_1001041A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100085FC4()
{
  sub_100012108();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100086074(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC14HDSViewService42HomePodSetupPersonalRequestsViewController_presenter + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1000860C8(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v37 = a2;
  v3 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v35 - v8;
  v10 = OBJC_IVAR____TtC14HDSViewService42HomePodSetupPersonalRequestsViewController_viewModel;
  swift_beginAccess();
  sub_10000F25C(v2 + v10, v9, &qword_100103420, &unk_1000BCE90);
  v11 = type metadata accessor for HomePodSetupViewModel(0);
  v12 = *(*(v11 - 8) + 48);
  v13 = 0;
  v14 = 0;
  if (!v12(v9, 1, v11))
  {
    v15 = &v9[*(v11 + 180)];
    v13 = *v15;
    v14 = *(v15 + 1);
  }

  v35 = v13;
  sub_10000EBA4(v9, &qword_100103420, &unk_1000BCE90);
  v16 = [objc_opt_self() sharedInstance];
  sub_10000F25C(v2 + v10, v7, &qword_100103420, &unk_1000BCE90);
  if (v12(v7, 1, v11))
  {
    sub_10000EBA4(v7, &qword_100103420, &unk_1000BCE90);
    v17 = v36;
  }

  else
  {
    v18 = v7[*(v11 + 176)];
    sub_10000EBA4(v7, &qword_100103420, &unk_1000BCE90);
    v17 = v36;
    if (v18 == 1)
    {
      v19 = 0x49535F5453554A5FLL;
      v20 = 0xEA00000000004952;
      goto LABEL_8;
    }
  }

  v19 = 0x5249535F5945485FLL;
  v20 = 0xE900000000000049;
LABEL_8:
  v40 = v19;
  v41 = v20;
  v38 = v17;
  v39 = v37;

  v38 = String.init<A>(_:)();
  v39 = v21;
  String.append<A>(contentsOf:)();
  if (!v16)
  {

    goto LABEL_24;
  }

  v22 = v16;
  v23 = String._bridgeToObjectiveC()();

  if (v14)
  {

    v24 = String._bridgeToObjectiveC()();
  }

  else
  {
    v24 = 0;
  }

  v25 = [v22 localizedUIUtteranceForKey:v23 languageCode:v24];

  if (!v25)
  {
    goto LABEL_18;
  }

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {
LABEL_18:
    v30 = v22;
    v31 = String._bridgeToObjectiveC()();
    if (v14)
    {
      v32 = String._bridgeToObjectiveC()();
    }

    else
    {
      v32 = 0;
    }

    v33 = [v30 localizedUIUtteranceForKey:v31 languageCode:v32];

    if (v33)
    {
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v26;
    }

LABEL_24:

    return 0;
  }

  return v26;
}

uint64_t sub_1000864EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v6 = type metadata accessor for PreferenceError();
  v5[17] = v6;
  v7 = *(v6 - 8);
  v5[18] = v7;
  v8 = *(v7 + 64) + 15;
  v5[19] = swift_task_alloc();
  v9 = type metadata accessor for Device();
  v5[20] = v9;
  v10 = *(v9 - 8);
  v5[21] = v10;
  v11 = *(v10 + 64) + 15;
  v5[22] = swift_task_alloc();
  v12 = swift_task_alloc();
  v5[23] = v12;
  v5[24] = type metadata accessor for MainActor();
  v5[25] = static MainActor.shared.getter();
  v13 = async function pointer to Session.activeLocationSharingDevice(cached:)[1];
  v14 = swift_task_alloc();
  v5[26] = v14;
  *v14 = v5;
  v14[1] = sub_10008667C;

  return Session.activeLocationSharingDevice(cached:)(v12, 1);
}

uint64_t sub_10008667C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 208);
  v5 = *(*v1 + 200);
  v6 = *(*v1 + 192);
  v11 = *v1;
  v3[27] = v2;

  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[28] = v8;
  v3[29] = v7;
  if (v2)
  {
    v9 = sub_100086DC8;
  }

  else
  {
    v9 = sub_1000867DC;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_1000867DC()
{
  v1 = v0[25];
  v2 = v0[23];

  if (Device.isThisDevice.getter())
  {
    if (qword_1001016E0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100012AAC(v3, qword_100104150);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "PersonalRequests me device is this device\n", v6, 2u);
    }

    v7 = v0[23];
    v8 = v0[20];
    v9 = v0[21];
    v10 = v0[16];

    sub_1000871C8();
    (*(v9 + 8))(v7, v8);
  }

  else
  {
    if (qword_1001016E0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100012AAC(v11, qword_100104150);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "PersonalRequests ask user to switch me device", v14, 2u);
    }

    v15 = v0[23];
    v16 = v0[20];
    v17 = v0[21];
    v19 = v0[15];
    v18 = v0[16];

    sub_1000878D0(v15, v19);
    (*(v17 + 8))(v15, v16);
  }

  v21 = v0[22];
  v20 = v0[23];
  v22 = v0[19];

  v23 = v0[1];

  return v23();
}

uint64_t sub_100086A30()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = *(v2 + 232);
  v6 = *(v2 + 224);
  if (v0)
  {
    v7 = sub_100087134;
  }

  else
  {
    v7 = sub_100086B6C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100086B6C()
{
  v1 = v0[25];
  v2 = v0[22];

  if (Device.isThisDevice.getter())
  {
    if (qword_1001016E0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100012AAC(v3, qword_100104150);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "PersonalRequests me device is this device\n", v6, 2u);
    }

    v8 = v0[21];
    v7 = v0[22];
    v9 = v0[20];
    v10 = v0[16];

    sub_1000871C8();
    (*(v8 + 8))(v7, v9);
  }

  else
  {
    if (qword_1001016E0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100012AAC(v11, qword_100104150);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "PersonalRequests ask user to switch me device", v14, 2u);
    }

    v16 = v0[21];
    v15 = v0[22];
    v17 = v0[20];
    v19 = v0[15];
    v18 = v0[16];

    sub_1000878D0(v15, v19);
    (*(v16 + 8))(v15, v17);
  }

  v20 = v0[14];

  v22 = v0[22];
  v21 = v0[23];
  v23 = v0[19];

  v24 = v0[1];

  return v24();
}

uint64_t sub_100086DC8()
{
  *(v0 + 112) = *(v0 + 216);
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  swift_errorRetain();
  sub_10000E6C4(&unk_1001035F0, &unk_1000BE8D0);
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 144) + 88))(*(v0 + 152), *(v0 + 136)) == enum case for PreferenceError.missingMeDevice(_:))
    {
      v3 = *(v0 + 216);

      v4 = async function pointer to Session.activeLocationSharingDevice(cached:)[1];
      v5 = swift_task_alloc();
      *(v0 + 240) = v5;
      *v5 = v0;
      v5[1] = sub_100086A30;
      v6 = *(v0 + 176);
      v7 = *(v0 + 120);

      return Session.activeLocationSharingDevice(cached:)(v6, 0);
    }

    v9 = *(v0 + 200);
    v11 = *(v0 + 144);
    v10 = *(v0 + 152);
    v12 = *(v0 + 136);

    (*(v11 + 8))(v10, v12);
  }

  else
  {
    v8 = *(v0 + 200);
  }

  v13 = *(v0 + 112);

  if (qword_1001016E0 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 216);
  v15 = type metadata accessor for Logger();
  sub_100012AAC(v15, qword_100104150);
  swift_errorRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = *(v0 + 216);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 4) = v21;
    *v20 = v21;
    _os_log_impl(&_mh_execute_header, v16, v17, "### PersonalRequests get me device failed: %@\n", v19, 0xCu);
    sub_10000EBA4(v20, &qword_100101E38, &unk_1000BCF80);
  }

  v22 = *(v0 + 128);

  Strong = swift_unknownObjectWeakLoadStrong();
  v24 = *(v0 + 216);
  if (Strong)
  {
    *(v0 + 24) = 0u;
    *(v0 + 104) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 0u;
    *(v0 + 16) = 2;
    sub_100012DA0(v0 + 72, v0 + 24, &qword_1001025D0, &unk_1000BD010);
    sub_10007A070(v0 + 16);
    swift_unknownObjectRelease();

    sub_100012E08(v0 + 16);
  }

  else
  {
    v25 = *(v0 + 216);
  }

  v27 = *(v0 + 176);
  v26 = *(v0 + 184);
  v28 = *(v0 + 152);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_100087134()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[19];

  v5 = v0[14];

  v6 = v0[1];
  v7 = v0[31];

  return v6();
}

void sub_1000871C8()
{
  v1 = v0;
  if (qword_1001016E0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100012AAC(v2, qword_100104150);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "PersonalRequests siriCheck\n", v5, 2u);
  }

  v37 = [objc_opt_self() sharedPreferences];
  if ([v37 assistantIsEnabled])
  {
    goto LABEL_8;
  }

  v6 = [objc_opt_self() sharedPreferences];
  if (!v6)
  {
    __break(1u);
    goto LABEL_32;
  }

  v7 = v6;
  v8 = [v6 voiceTriggerEnabled];

  if (v8)
  {
LABEL_8:
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "PersonalRequests Siri enabled, enabling PR\n", v11, 2u);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v39 = 0;
      memset(v38, 0, sizeof(v38));
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      LOBYTE(aBlock) = 1;
      sub_100012DA0(v38, &v41, &qword_1001025D0, &unk_1000BD010);
      sub_10007A070(&aBlock);

      swift_unknownObjectRelease();
      sub_100012E08(&aBlock);
    }

    else
    {
    }

    return;
  }

  v12 = String._bridgeToObjectiveC()();
  v13 = CUAddSuffixForCurrentDeviceClass();

  if (!v13)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v14 = sub_100006658(v13);

  if (!v14)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = String._bridgeToObjectiveC()();
  }

  v15 = String._bridgeToObjectiveC()();
  v16 = sub_1000068E0();

  if (!v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = String._bridgeToObjectiveC()();
  }

  v17 = sub_100006658(v16);

  if (!v17)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = String._bridgeToObjectiveC()();
  }

  v18 = [objc_opt_self() alertControllerWithTitle:v14 message:v17 preferredStyle:1];

  v19 = String._bridgeToObjectiveC()();
  v20 = sub_100006658(v19);

  if (!v20)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = String._bridgeToObjectiveC()();
  }

  v21 = sub_100006658(v20);

  if (!v21)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = String._bridgeToObjectiveC()();
  }

  v22 = swift_allocObject();
  *(v22 + 16) = v1;
  *(v22 + 24) = v18;
  *(&v42 + 1) = sub_10008BBFC;
  *&v43 = v22;
  aBlock = _NSConcreteStackBlock;
  *&v41 = 1107296256;
  *(&v41 + 1) = sub_10003DFD0;
  *&v42 = &unk_1000F15C8;
  v23 = _Block_copy(&aBlock);
  v24 = v1;
  v25 = v18;

  v26 = objc_opt_self();
  v27 = [v26 actionWithTitle:v21 style:1 handler:v23];
  _Block_release(v23);

  [v25 addAction:v27];
  v28 = String._bridgeToObjectiveC()();
  v29 = sub_100006658(v28);

  if (!v29)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = String._bridgeToObjectiveC()();
  }

  v30 = sub_100006658(v29);

  if (!v30)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = String._bridgeToObjectiveC()();
  }

  v31 = swift_allocObject();
  v31[2] = v37;
  v31[3] = v24;
  v31[4] = v25;
  *(&v42 + 1) = sub_10008BC68;
  *&v43 = v31;
  aBlock = _NSConcreteStackBlock;
  *&v41 = 1107296256;
  *(&v41 + 1) = sub_10003DFD0;
  *&v42 = &unk_1000F1618;
  v32 = _Block_copy(&aBlock);
  v33 = v24;
  v34 = v25;
  v35 = v37;

  v36 = [v26 actionWithTitle:v30 style:0 handler:v32];
  _Block_release(v32);

  [v34 addAction:v36];
  [v34 setPreferredAction:v36];
  [v33 presentViewController:v34 animated:1 completion:0];
}

void sub_1000878D0(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v2 = sub_10000E6C4(&qword_1001041B0, &qword_1000BE9B8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v49 = &v49 - v4;
  v5 = String._bridgeToObjectiveC()();
  v6 = sub_100006658(v5);

  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  Device.deviceName.getter();

  v7 = String._bridgeToObjectiveC()();
  v8 = sub_1000068E0();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000E6C4(&qword_100102388, qword_1000BE250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000BB8E0;
  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 name];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *(inited + 56) = &type metadata for String;
  v15 = sub_100039F8C();
  *(inited + 64) = v15;
  *(inited + 32) = v12;
  *(inited + 40) = v14;
  v16 = Device.deviceName.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v15;
  *(inited + 72) = v16;
  *(inited + 80) = v17;
  aBlock = 0;
  v53 = 0xE000000000000000;

  sub_100038F50(inited, &aBlock);
  swift_setDeallocating();
  v18 = *(inited + 16);
  sub_10000E6C4(&qword_1001023D8, &unk_1000BD290);
  swift_arrayDestroy();
  v19 = String._bridgeToObjectiveC()();
  v20 = [objc_opt_self() alertControllerWithTitle:v6 message:v19 preferredStyle:1];

  v21 = String._bridgeToObjectiveC()();
  v22 = sub_100006658(v21);

  if (!v22)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = String._bridgeToObjectiveC()();
  }

  v23 = swift_allocObject();
  v24 = v50;
  *(v23 + 16) = v50;
  *(v23 + 24) = v20;
  v56 = sub_10008BC74;
  v57 = v23;
  aBlock = _NSConcreteStackBlock;
  v53 = 1107296256;
  v54 = sub_10003DFD0;
  v55 = &unk_1000F1668;
  v25 = _Block_copy(&aBlock);
  v26 = v24;
  v27 = v20;

  v28 = objc_opt_self();
  v29 = [v28 actionWithTitle:v22 style:1 handler:v25];
  _Block_release(v25);

  v50 = v29;
  [v27 addAction:v29];
  v30 = String._bridgeToObjectiveC()();
  v31 = CUAddSuffixForCurrentDeviceClass();

  if (v31)
  {

    v32 = sub_100006658(v31);

    if (!v32)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = String._bridgeToObjectiveC()();
    }

    v33 = swift_allocObject();
    v33[2] = v51;
    v33[3] = v27;
    v33[4] = v26;
    v56 = sub_10008BCE0;
    v57 = v33;
    aBlock = _NSConcreteStackBlock;
    v53 = 1107296256;
    v54 = sub_10003DFD0;
    v55 = &unk_1000F16B8;
    v34 = _Block_copy(&aBlock);
    v35 = v26;
    v36 = v27;

    v37 = [v28 actionWithTitle:v32 style:0 handler:v34];
    _Block_release(v34);

    [v36 addAction:v37];
    [v36 setPreferredAction:v37];
    if (qword_100101608 != -1)
    {
      swift_once();
    }

    if (*(*(qword_1001086C0 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_automationStepResults) + 16) || *(qword_1001086C0 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_alwaysSelectDefault) == 1)
    {
      if (qword_1001016E0 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_100012AAC(v38, qword_100104150);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "Me Switch alert: Use button\n", v41, 2u);
      }

      v42 = type metadata accessor for TaskPriority();
      v43 = v49;
      (*(*(v42 - 8) + 56))(v49, 1, 1, v42);
      type metadata accessor for MainActor();
      v44 = v35;
      v45 = v36;
      v46 = v51;

      v47 = static MainActor.shared.getter();
      v48 = swift_allocObject();
      v48[2] = v47;
      v48[3] = &protocol witness table for MainActor;
      v48[4] = v46;
      v48[5] = v45;
      v48[6] = v44;
      sub_100089D34(0, 0, v43, &unk_1000BE9D8, v48);
    }

    else
    {
      [v35 presentViewController:v36 animated:1 completion:0];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000880A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10000E6C4(&qword_1001041B0, &qword_1000BE9B8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_10000F25C(a3, v24 - v10, &qword_1001041B0, &qword_1000BE9B8);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000EBA4(v11, &qword_1001041B0, &qword_1000BE9B8);
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

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_10000EBA4(a3, &qword_1001041B0, &qword_1000BE9B8);

      return v22;
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

  sub_10000EBA4(a3, &qword_1001041B0, &qword_1000BE9B8);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

id sub_10008834C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (qword_1001016E0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100012AAC(v6, qword_100104150);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Siri Enabled, enabling PR\n", v9, 2u);
  }

  [a2 setAssistantIsEnabled:1];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    memset(v14, 0, sizeof(v14));
    v13[0] = 1;
    sub_100012DA0(v11, v14, &qword_1001025D0, &unk_1000BD010);
    sub_10007A070(v13);
    swift_unknownObjectRelease();
    sub_100012E08(v13);
  }

  return [a4 dismissViewControllerAnimated:1 completion:0];
}

id sub_1000884D8(uint64_t a1, uint64_t a2, void *a3, const char *a4)
{
  if (qword_1001016E0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100012AAC(v6, qword_100104150);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a4, v9, 2u);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    memset(v14, 0, sizeof(v14));
    v13[0] = 2;
    sub_100012DA0(v11, v14, &qword_1001025D0, &unk_1000BD010);
    sub_10007A070(v13);
    swift_unknownObjectRelease();
    sub_100012E08(v13);
  }

  return [a3 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_10008864C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_10000E6C4(&qword_1001041B0, &qword_1000BE9B8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v21 - v9;
  if (qword_1001016E0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100012AAC(v11, qword_100104150);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Me Switch alert: Use button\n", v14, 2u);
  }

  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  type metadata accessor for MainActor();

  v16 = a3;
  v17 = a4;
  v18 = static MainActor.shared.getter();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = &protocol witness table for MainActor;
  v19[4] = a2;
  v19[5] = v16;
  v19[6] = v17;
  sub_100089D34(0, 0, v10, &unk_1000BEA08, v19);
}

uint64_t sub_100088850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v6[12] = v7;
  v8 = *(v7 - 8);
  v6[13] = v8;
  v9 = *(v8 + 64) + 15;
  v6[14] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  v6[15] = v10;
  v11 = *(v10 - 8);
  v6[16] = v11;
  v12 = *(v11 + 64) + 15;
  v6[17] = swift_task_alloc();
  v13 = type metadata accessor for DeviceWithCompanion();
  v6[18] = v13;
  v14 = *(v13 - 8);
  v6[19] = v14;
  v15 = *(v14 + 64) + 15;
  v16 = swift_task_alloc();
  v6[20] = v16;
  v17 = *(*(sub_10000E6C4(&qword_1001041B8, &qword_1000BE9F8) - 8) + 64) + 15;
  v6[21] = swift_task_alloc();
  v6[22] = type metadata accessor for MainActor();
  v6[23] = static MainActor.shared.getter();
  v18 = async function pointer to Session.thisDeviceWithCompanion()[1];
  v19 = swift_task_alloc();
  v6[24] = v19;
  *v19 = v6;
  v19[1] = sub_100088A68;

  return Session.thisDeviceWithCompanion()(v16);
}

uint64_t sub_100088A68()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 192);
  v5 = *v1;
  v3[25] = v0;

  v6 = v3[23];
  v7 = v3[22];
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v10 = sub_100089620;
  }

  else
  {
    v3[26] = v8;
    v3[27] = v9;
    v10 = sub_100088BCC;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_100088BCC()
{
  v48 = v0;
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  DeviceWithCompanion.thisDevice.getter();
  (*(v4 + 8))(v2, v3);
  v5 = type metadata accessor for Device();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v1, 1, v5) == 1)
  {
    v7 = v0[23];
    v8 = v0[21];

    sub_10000EBA4(v8, &qword_1001041B8, &qword_1000BE9F8);
    v9 = type metadata accessor for PreferenceError();
    sub_10008BEA8(&unk_1001041C0, &type metadata accessor for PreferenceError);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, enum case for PreferenceError.missingMeDevice(_:), v9);
    swift_willThrow();
    if (qword_1001016E0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100012AAC(v11, qword_100104150);
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
      _os_log_impl(&_mh_execute_header, v12, v13, "### Me Switch failed: %@", v14, 0xCu);
      sub_10000EBA4(v15, &qword_100101E38, &unk_1000BCF80);
    }

    else
    {
    }

    v45 = v0[21];
    v46 = v0[20];
    v30 = v0[16];
    v29 = v0[17];
    v31 = v0[14];
    v44 = v0[15];
    v32 = v0[12];
    v33 = v0[13];
    v35 = v0[10];
    v34 = v0[11];
    sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
    v43 = static OS_dispatch_queue.main.getter();
    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    *(v36 + 24) = v34;
    v0[6] = sub_10008C008;
    v0[7] = v36;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100091194;
    v0[5] = &unk_1000F17F8;
    v37 = _Block_copy(v0 + 2);
    v38 = v35;
    v39 = v34;
    static DispatchQoS.unspecified.getter();
    v0[8] = _swiftEmptyArrayStorage;
    sub_10008BEA8(&qword_1001042F0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
    sub_100014588();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v37);

    (*(v33 + 8))(v31, v32);
    (*(v30 + 8))(v29, v44);
    v40 = v0[7];

    v41 = v0[1];

    return v41();
  }

  else
  {
    v17 = v0[21];
    v18 = Device.identifier.getter();
    v20 = v19;
    v0[28] = v19;
    (*(v6 + 8))(v17, v5);
    if (qword_1001016E0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    v0[29] = sub_100012AAC(v21, qword_100104150);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v47 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1000B08A0(v18, v20, &v47);
      _os_log_impl(&_mh_execute_header, v22, v23, "Me Switch: Setting new device to this device: %s", v24, 0xCu);
      sub_10000E70C(v25);
    }

    v26 = async function pointer to Session.setActiveLocationSharingDevice(_:)[1];
    v27 = swift_task_alloc();
    v0[30] = v27;
    *v27 = v0;
    v27[1] = sub_100089248;
    v28 = v0[9];

    return Session.setActiveLocationSharingDevice(_:)(v18, v20);
  }
}

uint64_t sub_100089248()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v9 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v4 = v2[26];
    v5 = v2[27];
    v6 = sub_1000899A4;
  }

  else
  {
    v7 = v2[28];

    v4 = v2[26];
    v5 = v2[27];
    v6 = sub_100089364;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100089364()
{
  v1 = v0[29];
  v2 = v0[23];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Me Switch succeeded", v5, 2u);
  }

  v22 = v0[21];
  v23 = v0[20];
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[14];
  v21 = v0[15];
  v9 = v0[12];
  v10 = v0[13];
  v12 = v0[10];
  v11 = v0[11];
  sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
  v20 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  v0[6] = sub_10008C008;
  v0[7] = v13;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100091194;
  v0[5] = &unk_1000F17F8;
  v14 = _Block_copy(v0 + 2);
  v15 = v12;
  v16 = v11;
  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_10008BEA8(&qword_1001042F0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
  sub_100014588();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v10 + 8))(v8, v9);
  (*(v7 + 8))(v6, v21);
  v17 = v0[7];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100089620()
{
  v1 = v0[23];

  v2 = v0[25];
  if (qword_1001016E0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100012AAC(v3, qword_100104150);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "### Me Switch failed: %@", v6, 0xCu);
    sub_10000EBA4(v7, &qword_100101E38, &unk_1000BCF80);
  }

  else
  {
  }

  v25 = v0[21];
  v26 = v0[20];
  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[14];
  v24 = v0[15];
  v12 = v0[12];
  v13 = v0[13];
  v15 = v0[10];
  v14 = v0[11];
  sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
  v23 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  v0[6] = sub_10008C008;
  v0[7] = v16;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100091194;
  v0[5] = &unk_1000F17F8;
  v17 = _Block_copy(v0 + 2);
  v18 = v15;
  v19 = v14;
  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_10008BEA8(&qword_1001042F0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
  sub_100014588();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v13 + 8))(v11, v12);
  (*(v10 + 8))(v9, v24);
  v20 = v0[7];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1000899A4()
{
  v1 = v0[28];
  v2 = v0[23];

  v3 = v0[31];
  if (qword_1001016E0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100012AAC(v4, qword_100104150);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "### Me Switch failed: %@", v7, 0xCu);
    sub_10000EBA4(v8, &qword_100101E38, &unk_1000BCF80);
  }

  else
  {
  }

  v26 = v0[21];
  v27 = v0[20];
  v11 = v0[16];
  v10 = v0[17];
  v12 = v0[14];
  v25 = v0[15];
  v13 = v0[12];
  v14 = v0[13];
  v16 = v0[10];
  v15 = v0[11];
  sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
  v24 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  v0[6] = sub_10008C008;
  v0[7] = v17;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100091194;
  v0[5] = &unk_1000F17F8;
  v18 = _Block_copy(v0 + 2);
  v19 = v16;
  v20 = v15;
  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_10008BEA8(&qword_1001042F0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
  sub_100014588();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v14 + 8))(v12, v13);
  (*(v11 + 8))(v10, v25);
  v21 = v0[7];

  v22 = v0[1];

  return v22();
}

uint64_t sub_100089D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000E6C4(&qword_1001041B0, &qword_1000BE9B8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000F25C(a3, v27 - v11, &qword_1001041B0, &qword_1000BE9B8);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000EBA4(v12, &qword_1001041B0, &qword_1000BE9B8);
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

      sub_10000EBA4(a3, &qword_1001041B0, &qword_1000BE9B8);

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

  sub_10000EBA4(a3, &qword_1001041B0, &qword_1000BE9B8);
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

uint64_t sub_10008A034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v6[12] = v7;
  v8 = *(v7 - 8);
  v6[13] = v8;
  v9 = *(v8 + 64) + 15;
  v6[14] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  v6[15] = v10;
  v11 = *(v10 - 8);
  v6[16] = v11;
  v12 = *(v11 + 64) + 15;
  v6[17] = swift_task_alloc();
  v13 = type metadata accessor for DeviceWithCompanion();
  v6[18] = v13;
  v14 = *(v13 - 8);
  v6[19] = v14;
  v15 = *(v14 + 64) + 15;
  v16 = swift_task_alloc();
  v6[20] = v16;
  v17 = *(*(sub_10000E6C4(&qword_1001041B8, &qword_1000BE9F8) - 8) + 64) + 15;
  v6[21] = swift_task_alloc();
  v6[22] = type metadata accessor for MainActor();
  v6[23] = static MainActor.shared.getter();
  v18 = async function pointer to Session.thisDeviceWithCompanion()[1];
  v19 = swift_task_alloc();
  v6[24] = v19;
  *v19 = v6;
  v19[1] = sub_10008A24C;

  return Session.thisDeviceWithCompanion()(v16);
}

uint64_t sub_10008A24C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 192);
  v5 = *v1;
  v3[25] = v0;

  v6 = v3[23];
  v7 = v3[22];
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v10 = sub_10008AE04;
  }

  else
  {
    v3[26] = v8;
    v3[27] = v9;
    v10 = sub_10008A3B0;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_10008A3B0()
{
  v48 = v0;
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  DeviceWithCompanion.thisDevice.getter();
  (*(v4 + 8))(v2, v3);
  v5 = type metadata accessor for Device();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v1, 1, v5) == 1)
  {
    v7 = v0[23];
    v8 = v0[21];

    sub_10000EBA4(v8, &qword_1001041B8, &qword_1000BE9F8);
    v9 = type metadata accessor for PreferenceError();
    sub_10008BEA8(&unk_1001041C0, &type metadata accessor for PreferenceError);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, enum case for PreferenceError.missingMeDevice(_:), v9);
    swift_willThrow();
    if (qword_1001016E0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100012AAC(v11, qword_100104150);
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
      _os_log_impl(&_mh_execute_header, v12, v13, "### Me Switch failed: %@", v14, 0xCu);
      sub_10000EBA4(v15, &qword_100101E38, &unk_1000BCF80);
    }

    else
    {
    }

    v45 = v0[21];
    v46 = v0[20];
    v30 = v0[16];
    v29 = v0[17];
    v31 = v0[14];
    v44 = v0[15];
    v32 = v0[12];
    v33 = v0[13];
    v35 = v0[10];
    v34 = v0[11];
    sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
    v43 = static OS_dispatch_queue.main.getter();
    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    *(v36 + 24) = v34;
    v0[6] = sub_10008C064;
    v0[7] = v36;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100091194;
    v0[5] = &unk_1000F1780;
    v37 = _Block_copy(v0 + 2);
    v38 = v35;
    v39 = v34;
    static DispatchQoS.unspecified.getter();
    v0[8] = _swiftEmptyArrayStorage;
    sub_10008BEA8(&qword_1001042F0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
    sub_100014588();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v37);

    (*(v33 + 8))(v31, v32);
    (*(v30 + 8))(v29, v44);
    v40 = v0[7];

    v41 = v0[1];

    return v41();
  }

  else
  {
    v17 = v0[21];
    v18 = Device.identifier.getter();
    v20 = v19;
    v0[28] = v19;
    (*(v6 + 8))(v17, v5);
    if (qword_1001016E0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    v0[29] = sub_100012AAC(v21, qword_100104150);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v47 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1000B08A0(v18, v20, &v47);
      _os_log_impl(&_mh_execute_header, v22, v23, "Me Switch: Setting new device to this device: %s", v24, 0xCu);
      sub_10000E70C(v25);
    }

    v26 = async function pointer to Session.setActiveLocationSharingDevice(_:)[1];
    v27 = swift_task_alloc();
    v0[30] = v27;
    *v27 = v0;
    v27[1] = sub_10008AA2C;
    v28 = v0[9];

    return Session.setActiveLocationSharingDevice(_:)(v18, v20);
  }
}

uint64_t sub_10008AA2C()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v9 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v4 = v2[26];
    v5 = v2[27];
    v6 = sub_10008B188;
  }

  else
  {
    v7 = v2[28];

    v4 = v2[26];
    v5 = v2[27];
    v6 = sub_10008AB48;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10008AB48()
{
  v1 = v0[29];
  v2 = v0[23];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Me Switch succeeded", v5, 2u);
  }

  v22 = v0[21];
  v23 = v0[20];
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[14];
  v21 = v0[15];
  v9 = v0[12];
  v10 = v0[13];
  v12 = v0[10];
  v11 = v0[11];
  sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
  v20 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  v0[6] = sub_10008C064;
  v0[7] = v13;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100091194;
  v0[5] = &unk_1000F1780;
  v14 = _Block_copy(v0 + 2);
  v15 = v12;
  v16 = v11;
  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_10008BEA8(&qword_1001042F0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
  sub_100014588();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v10 + 8))(v8, v9);
  (*(v7 + 8))(v6, v21);
  v17 = v0[7];

  v18 = v0[1];

  return v18();
}

uint64_t sub_10008AE04()
{
  v1 = v0[23];

  v2 = v0[25];
  if (qword_1001016E0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100012AAC(v3, qword_100104150);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "### Me Switch failed: %@", v6, 0xCu);
    sub_10000EBA4(v7, &qword_100101E38, &unk_1000BCF80);
  }

  else
  {
  }

  v25 = v0[21];
  v26 = v0[20];
  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[14];
  v24 = v0[15];
  v12 = v0[12];
  v13 = v0[13];
  v15 = v0[10];
  v14 = v0[11];
  sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
  v23 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  v0[6] = sub_10008C064;
  v0[7] = v16;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100091194;
  v0[5] = &unk_1000F1780;
  v17 = _Block_copy(v0 + 2);
  v18 = v15;
  v19 = v14;
  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_10008BEA8(&qword_1001042F0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
  sub_100014588();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v13 + 8))(v11, v12);
  (*(v10 + 8))(v9, v24);
  v20 = v0[7];

  v21 = v0[1];

  return v21();
}

uint64_t sub_10008B188()
{
  v1 = v0[28];
  v2 = v0[23];

  v3 = v0[31];
  if (qword_1001016E0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100012AAC(v4, qword_100104150);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "### Me Switch failed: %@", v7, 0xCu);
    sub_10000EBA4(v8, &qword_100101E38, &unk_1000BCF80);
  }

  else
  {
  }

  v26 = v0[21];
  v27 = v0[20];
  v11 = v0[16];
  v10 = v0[17];
  v12 = v0[14];
  v25 = v0[15];
  v13 = v0[12];
  v14 = v0[13];
  v16 = v0[10];
  v15 = v0[11];
  sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
  v24 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  v0[6] = sub_10008C064;
  v0[7] = v17;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100091194;
  v0[5] = &unk_1000F1780;
  v18 = _Block_copy(v0 + 2);
  v19 = v16;
  v20 = v15;
  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_10008BEA8(&qword_1001042F0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
  sub_100014588();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v14 + 8))(v12, v13);
  (*(v11 + 8))(v10, v25);
  v21 = v0[7];

  v22 = v0[1];

  return v22();
}

uint64_t sub_10008B518(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10008B610;

  return v7(a1);
}

uint64_t sub_10008B610()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_10008B708(uint64_t *a1)
{
  v3 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  if (qword_1001016E0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100012AAC(v7, qword_100104150);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = [v8 isViewLoaded];

    _os_log_impl(&_mh_execute_header, v9, v10, "HomePodSetupPersonalRequestsViewController: presenter:didUpdate viewModel, isViewloaded = %{BOOL}d", v11, 8u);
  }

  else
  {

    v9 = v8;
  }

  sub_100012AE4(a1, v6);
  v12 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtC14HDSViewService42HomePodSetupPersonalRequestsViewController_viewModel;
  swift_beginAccess();
  sub_100012DA0(v6, v8 + v13, &qword_100103420, &unk_1000BCE90);
  swift_endAccess();
  if ([v8 isViewLoaded])
  {
    sub_1000854D4(a1);
  }
}

uint64_t sub_10008B928()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008B968(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008B980()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008B9C0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10008BA08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10008BAC8;

  return sub_1000864EC(a1, v4, v5, v7, v6);
}

uint64_t sub_10008BAC8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10008BBBC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008BC20()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10008BC98()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10008BCF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10008C068;

  return sub_10008A034(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10008BDB8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008BDF0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10008C068;

  return sub_10008B518(a1, v5);
}

uint64_t sub_10008BEA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008BEF0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10008BF40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10008BAC8;

  return sub_100088850(a1, v4, v5, v6, v7, v8);
}

void sub_10008C00C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  [v1 dismissViewControllerAnimated:1 completion:0];
  sub_1000871C8();
}

unint64_t *sub_10008C090(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v14 = &_swiftEmptyArrayStorage;
    sub_10008ECA8(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v14 = v2;
      v8 = v2[2];
      v7 = v2[3];
      v9 = v5;
      if (v8 >= v7 >> 1)
      {
        sub_10008ECA8((v7 > 1), v8 + 1, 1);
        v2 = v14;
      }

      v12 = &type metadata for HomeOption;
      v13 = &off_1000F1F68;
      *&v11 = v5;
      BYTE8(v11) = v6;
      v2[2] = v8 + 1;
      sub_10000EC04(&v11, &v2[5 * v8 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

unint64_t *sub_10008C190(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v16 = &_swiftEmptyArrayStorage;
    sub_10008ECA8(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = (a1 + 56);
    do
    {
      v5 = *(v4 - 24);
      v7 = *(v4 - 2);
      v6 = *(v4 - 1);
      v8 = *v4;
      v16 = v2;
      v9 = v2[2];
      v10 = v2[3];

      if (v9 >= v10 >> 1)
      {
        sub_10008ECA8((v10 > 1), v9 + 1, 1);
        v2 = v16;
      }

      v14 = &type metadata for RoomOption;
      v15 = &off_1000F1C90;
      v11 = swift_allocObject();
      *&v13 = v11;
      *(v11 + 16) = v5;
      *(v11 + 24) = v7;
      *(v11 + 32) = v6;
      *(v11 + 40) = v8;
      v2[2] = v9 + 1;
      sub_10000EC04(&v13, &v2[5 * v9 + 4]);
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

unint64_t *sub_10008C2B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v15 = &_swiftEmptyArrayStorage;
    sub_10008ECA8(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      v15 = v2;
      v6 = v2[2];
      v7 = v2[3];
      v8 = v5;
      if (v6 >= v7 >> 1)
      {
        v9 = v7 > 1;
        v10 = v8;
        sub_10008ECA8(v9, v6 + 1, 1);
        v8 = v10;
        v2 = v15;
      }

      v13 = &type metadata for HomePodOption;
      v14 = &off_1000F0CE8;
      *&v12 = v8;
      v2[2] = v6 + 1;
      sub_10000EC04(&v12, &v2[5 * v6 + 4]);
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

unint64_t *sub_10008C3BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v16 = &_swiftEmptyArrayStorage;
    sub_10008ECA8(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = (a1 + 56);
    do
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v8 = *(v4 - 1);
      v7 = *v4;
      v16 = v2;
      v9 = v2[2];
      v10 = v2[3];

      if (v9 >= v10 >> 1)
      {
        sub_10008ECA8((v10 > 1), v9 + 1, 1);
        v2 = v16;
      }

      v14 = &type metadata for LanguageOption;
      v15 = &off_1000F0778;
      v11 = swift_allocObject();
      *&v13 = v11;
      v11[2] = v6;
      v11[3] = v5;
      v11[4] = v8;
      v11[5] = v7;
      v2[2] = v9 + 1;
      sub_10000EC04(&v13, &v2[5 * v9 + 4]);
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_10008C4E4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_10008ED28(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        type metadata accessor for CGColor(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_10008ED28((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_10000E9F4(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for CGColor(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_10008ED28((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_10000E9F4(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_10008C6B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10008ED48(0, v1, 0);
    v3 = (a1 + 32);
    do
    {
      v7 = *v3;

      sub_10000E6C4(&qword_1001020B0, &qword_1000BD170);
      sub_10000E6C4(&unk_100104940, &qword_1000BEAC0);
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_10008ED48((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      _swiftEmptyArrayStorage[v5 + 4] = v8;
      ++v3;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10008C7E0()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  sub_100012B48(v0, HomePodViewfinderCircleAnimationDelay);
  *sub_100012AAC(v0, HomePodViewfinderCircleAnimationDelay) = 200;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

uint64_t HomePodViewfinderCircleAnimationDelay.unsafeMutableAddressor()
{
  if (qword_1001016E8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for DispatchTimeInterval();

  return sub_100012AAC(v0, HomePodViewfinderCircleAnimationDelay);
}

void sub_10008C8D4()
{
  [*(v0 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_viewFinderBorderLayer) removeAllAnimations];
  v4 = sub_10008D7B8(0.6, 0.0);
  v1 = sub_10008D7B8(0.6, 13.0);
  [v4 appendPath:v1];

  v2 = *(v0 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_borderLayerMask);
  v3 = [v4 CGPath];
  [v2 setPath:v3];

  sub_10008CDF0(*(v0 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_initialColors), 0, 1);
  sub_10008D8E4(0, v4, 0.0);
}

uint64_t sub_10008C9E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_rotKey);
  v2 = *(v0 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_rotKey + 8);
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() animationWithKeyPath:v3];

  isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
  [v4 setFromValue:isa];

  v6 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  [v4 setByValue:v6];

  v7 = v4;
  LODWORD(v8) = 2139095040;
  [v7 setRepeatCount:v8];
  [v7 setDuration:2.0];

  v9 = *(v0 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_viewFinderBorderLayer);
  v10 = String._bridgeToObjectiveC()();
  [v9 addAnimation:v7 forKey:v10];

  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000BD0A0;
  v12 = objc_opt_self();
  v13 = [v12 systemBlueColor];
  v14 = [v13 colorWithAlphaComponent:1.0];

  *(inited + 32) = v14;
  v15 = [v12 systemBlueColor];
  v16 = [v15 colorWithAlphaComponent:0.0];

  *(inited + 40) = v16;
  sub_10008CDF0(inited, 0x3FC999999999999ALL, 0);

  swift_setDeallocating();
  v17 = *(inited + 16);
  return swift_arrayDestroy();
}

void sub_10008CC14()
{
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000BD0A0;
  v2 = objc_opt_self();
  v3 = [v2 systemGreenColor];
  v4 = [v3 colorWithAlphaComponent:1.0];

  *(inited + 32) = v4;
  v5 = [v2 systemGreenColor];
  v6 = [v5 colorWithAlphaComponent:1.0];

  *(inited + 40) = v6;
  sub_10008CDF0(inited, 0x3FC999999999999ALL, 0);
  swift_setDeallocating();
  v7 = *(inited + 16);
  swift_arrayDestroy();
  v8 = sub_10008D7B8(0.6, 0.0);
  v9 = sub_10008D7B8(0.6, 13.0);
  [v8 appendPath:v9];

  v10 = sub_10008D7B8(0.6, 0.0);
  v11 = sub_10008D7B8(0.6, 19.0);
  [v10 appendPath:v11];

  v12 = v8;
  sub_10008D8E4(v8, v10, 0.5);

  *(v0 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_needsReset) = 1;
}

void sub_10008CDF0(unint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  if (a1 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v8 < 0)
    {
      __break(1u);
      return;
    }

    v25 = v3;
    v9 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v10;
      ++v9;
      v12 = [v10 CGColor];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v13 = *(&_swiftEmptyArrayStorage + 2);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v8 != v9);
    v4 = v25;
  }

  if (a3)
  {
    v14 = *&v4[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_viewFinderBorderLayer];
    sub_10008C4E4(&_swiftEmptyArrayStorage);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v14 setColors:isa];
  }

  else
  {
    v15 = *&a2;
    v16 = *&v4[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_colorsKey];
    v17 = *&v4[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_colorsKey + 8];
    v18 = String._bridgeToObjectiveC()();
    v19 = [objc_opt_self() animationWithKeyPath:v18];

    v20 = *&v4[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_viewFinderBorderLayer];
    v21 = [v20 colors];
    [v19 setFromValue:v21];

    type metadata accessor for CGColor(0);
    v22 = Array._bridgeToObjectiveC()().super.isa;
    [v19 setToValue:v22];

    v23 = v19;
    [v23 setDuration:v15];
    [v23 setRemovedOnCompletion:0];
    [v23 setDelegate:v4];

    sub_10008C4E4(&_swiftEmptyArrayStorage);

    v24 = Array._bridgeToObjectiveC()().super.isa;

    [v20 setColors:v24];

    isa = [v23 keyPath];
    [v20 addAnimation:v23 forKey:?];
  }
}

char *sub_10008D18C()
{
  v1 = OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_viewFinderTintLayer;
  *&v0[v1] = [objc_allocWithZone(CAShapeLayer) init];
  v2 = OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_viewFinderBorderLayer;
  *&v0[v2] = [objc_allocWithZone(CAGradientLayer) init];
  v3 = OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_borderLayerMask;
  *&v0[v3] = [objc_allocWithZone(CAShapeLayer) init];
  v4 = OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_initialWhiteTintLayer;
  *&v0[v4] = [objc_allocWithZone(CAShapeLayer) init];
  v5 = &v0[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_rotKey];
  *v5 = 0xD000000000000012;
  v5[1] = 0x80000001000C72D0;
  v6 = &v0[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_colorsKey];
  *v6 = 0x73726F6C6F63;
  v6[1] = 0xE600000000000000;
  v0[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_needsReset] = 0;
  v7 = OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_initialColors;
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000BD0A0;
  v9 = objc_opt_self();
  v10 = [v9 systemBlueColor];
  v11 = [v10 colorWithAlphaComponent:1.0];

  *(v8 + 32) = v11;
  v12 = [v9 systemBlueColor];
  v13 = [v12 colorWithAlphaComponent:1.0];

  *&v0[v7] = v8;
  *&v0[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_innerInitialHoleWidthRatio] = 0x3FDCCCCCCCCCCCCDLL;
  *&v0[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_innerTargetHoleWidthRatio] = 0x3FE3333333333333;
  *&v0[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_strokeWidth] = 0x402A000000000000;
  *(v8 + 40) = v13;
  *&v0[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_successStrokeWidth] = 0x4033000000000000;
  v27.receiver = v0;
  v27.super_class = type metadata accessor for SVSLEDPasscodeActivityIndicatorView();
  v14 = objc_msgSendSuper2(&v27, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10008D6B4();
  v15 = OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_viewFinderBorderLayer;
  [*&v14[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_viewFinderBorderLayer] setType:kCAGradientLayerConic];
  [*&v14[v15] setStartPoint:{0.5, 0.5}];
  v16 = *&v14[v15];
  CGAffineTransformMakeRotation(&v26, 3.14159265);
  [v16 setAffineTransform:&v26];
  LODWORD(v17) = 1060320051;
  [*&v14[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_borderLayerMask] setOpacity:v17];
  v18 = OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_viewFinderTintLayer;
  LODWORD(v19) = 1062501089;
  [*&v14[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_viewFinderTintLayer] setOpacity:v19];
  v20 = OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_initialWhiteTintLayer;
  LODWORD(v21) = 1.0;
  [*&v14[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_initialWhiteTintLayer] setOpacity:v21];
  v22 = [v14 layer];
  [v22 insertSublayer:*&v14[v15] atIndex:0];

  v23 = [v14 layer];
  [v23 insertSublayer:*&v14[v20] atIndex:0];

  v24 = [v14 layer];
  [v24 insertSublayer:*&v14[v18] atIndex:0];

  sub_10008C8D4();
  return v14;
}

void sub_10008D59C()
{
  v1 = *&v0[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_viewFinderTintLayer];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = *&v0[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_viewFinderBorderLayer];
  [v0 bounds];
  [v2 setFrame:?];
  v3 = *&v0[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_initialWhiteTintLayer];
  [v0 bounds];
  [v3 setFrame:?];
  v4 = *&v0[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_borderLayerMask];
  [v0 bounds];
  [v4 setFrame:?];
  sub_10008DAD8();

  sub_10008D6B4();
}

void sub_10008D6B4()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_viewFinderTintLayer);
  v2 = objc_opt_self();
  v3 = [v2 systemBackgroundColor];
  v4 = [v3 CGColor];

  [v1 setFillColor:v4];
  v5 = *(v0 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_initialWhiteTintLayer);
  v6 = [v2 systemBackgroundColor];
  v7 = [v6 CGColor];

  [v5 setFillColor:v7];
}

id sub_10008D7B8(double a1, double a2)
{
  [v2 bounds];
  v5 = CGRectGetWidth(v18) * a1 + a2;
  [v2 center];
  v7 = v6;
  v9 = v8;
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = v5;
  v19.size.height = v5;
  v10 = v7 - CGRectGetWidth(v19) * 0.5;
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = v5;
  v20.size.height = v5;
  v11 = v9 - CGRectGetHeight(v20) * 0.5;
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = v5;
  v21.size.height = v5;
  Width = CGRectGetWidth(v21);
  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  v22.size.width = v5;
  v22.size.height = v5;
  Height = CGRectGetHeight(v22);
  v23.origin.x = v10;
  v23.origin.y = v11;
  v23.size.width = Width;
  v23.size.height = Height;
  v14 = CGRectGetWidth(v23) * 0.5;
  v15 = [objc_opt_self() bezierPathWithRoundedRect:v10 cornerRadius:{v11, Width, Height, v14}];

  return v15;
}

void sub_10008D8E4(void *a1, void *a2, double a3)
{
  v7 = String._bridgeToObjectiveC()();
  v8 = [objc_opt_self() animationWithKeyPath:v7];

  if (a1)
  {
    v14 = [a1 CGPath];
    type metadata accessor for CGPath(0);
    a1 = _bridgeAnythingToObjectiveC<A>(_:)();
  }

  [v8 setFromValue:a1];
  swift_unknownObjectRelease();
  v9 = [a2 CGPath];
  [v8 setToValue:v9];

  v10 = v8;
  [v10 setDuration:a3];
  v11 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [v10 setTimingFunction:v11];

  [v10 setFillMode:kCAFillModeBoth];
  [v10 setRemovedOnCompletion:0];

  v12 = *(v3 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_borderLayerMask);
  v13 = [v10 keyPath];
  [v12 addAnimation:v10 forKey:v13];
}

void sub_10008DAD8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v67 = *(v2 - 8);
  v68 = v2;
  v3 = *(v67 + 64);
  __chkstk_darwin(v2);
  v64 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v65 = *(v5 - 8);
  v66 = v5;
  v6 = *(v65 + 64);
  __chkstk_darwin(v5);
  v63 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DispatchTime();
  v60 = *(v62 - 8);
  v8 = *(v60 + 64);
  v9 = __chkstk_darwin(v62);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v57 = &v54 - v12;
  [v0 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = objc_opt_self();
  v22 = [v21 bezierPathWithRoundedRect:v14 cornerRadius:{v16, v18, v20, 0.0}];
  v23 = sub_10008D7B8(0.6, 0.0);
  [v22 appendPath:v23];

  v24 = sub_10008D7B8(0.45, 0.0);
  v25 = sub_10008D7B8(0.45, 13.0);
  [v24 appendPath:v25];

  v26 = sub_10008D7B8(0.6, 0.0);
  v27 = sub_10008D7B8(0.6, 13.0);
  v58 = v26;
  [v26 appendPath:v27];

  v28 = *&v0[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_viewFinderTintLayer];
  v61 = v22;
  v29 = [v22 CGPath];
  [v28 setPath:v29];

  v30 = *&v1[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_borderLayerMask];
  v59 = v24;
  v31 = [v24 CGPath];
  [v30 setPath:v31];

  [*&v1[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_viewFinderBorderLayer] setMask:v30];
  v32 = *&v1[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_initialWhiteTintLayer];
  [v1 bounds];
  v33 = [v21 bezierPathWithRoundedRect:? cornerRadius:?];
  v34 = [v33 CGPath];

  [v32 setPath:v34];
  [v28 setFillRule:kCAFillRuleEvenOdd];
  [v30 setFillRule:kCAFillRuleEvenOdd];
  v35 = String._bridgeToObjectiveC()();
  v36 = [objc_opt_self() animationWithKeyPath:v35];

  isa = Int._bridgeToObjectiveC()().super.super.isa;
  [v36 setFromValue:isa];

  v38 = Int._bridgeToObjectiveC()().super.super.isa;
  [v36 setToValue:v38];

  v39 = v36;
  [v39 setDuration:0.6];
  v40 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [v39 setTimingFunction:v40];

  [v39 setFillMode:kCAFillModeBoth];
  [v39 setRemovedOnCompletion:0];

  sub_1000144DC();
  v56 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  if (qword_1001016E8 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for DispatchTimeInterval();
  sub_100012AAC(v41, HomePodViewfinderCircleAnimationDelay);
  v42 = v57;
  + infix(_:_:)();
  v60 = *(v60 + 8);
  v43 = v11;
  v44 = v62;
  (v60)(v43, v62);
  v45 = swift_allocObject();
  *(v45 + 16) = v1;
  *(v45 + 24) = v39;
  aBlock[4] = sub_10008EC88;
  aBlock[5] = v45;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100091194;
  aBlock[3] = &unk_1000F1848;
  v46 = _Block_copy(aBlock);
  v55 = v39;
  v1;

  v47 = v63;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100014530();
  sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
  sub_100014588();
  v48 = v64;
  v49 = v68;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v50 = v56;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v46);

  (*(v67 + 8))(v48, v49);
  (*(v65 + 8))(v47, v66);
  (v60)(v42, v44);
  v51 = v59;
  v52 = v59;
  v53 = v58;
  sub_10008D8E4(v51, v58, 0.5);
}

void sub_10008E274(uint64_t a1, id a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_initialWhiteTintLayer);
  v4 = [a2 keyPath];
  [v3 addAnimation:a2 forKey:v4];
}

Swift::Void __swiftcall SVSLPCActivityIndicatorViewController.viewDidLoad()()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v1;
  [v1 setTranslatesAutoresizingMaskIntoConstraints:1];

  v3 = *&v0[OBJC_IVAR____TtC14HDSViewService37SVSLPCActivityIndicatorViewController_v];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [v0 view];
  if (!v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = v4;
  [v4 addSubview:v3];

  v6 = [v3 leftAnchor];
  v7 = [v0 view];
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v7;
  v9 = [v7 leftAnchor];

  v10 = [v6 constraintEqualToAnchor:v9];
  [v10 setActive:1];

  v11 = [v3 rightAnchor];
  v12 = [v0 view];
  if (!v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = v12;
  v14 = [v12 rightAnchor];

  v15 = [v11 constraintEqualToAnchor:v14];
  [v15 setActive:1];

  v16 = [v3 topAnchor];
  v17 = [v0 view];
  if (!v17)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v18 = v17;
  v19 = [v17 topAnchor];

  v20 = [v16 constraintEqualToAnchor:v19];
  [v20 setActive:1];

  v21 = [v3 bottomAnchor];
  v22 = [v0 view];
  if (!v22)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v23 = v22;
  v24 = [v22 bottomAnchor];

  v25 = [v21 constraintEqualToAnchor:v24];
  [v25 setActive:1];

  [v3 setNeedsLayout];
}

id SVSLPCActivityIndicatorViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id SVSLPCActivityIndicatorViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC14HDSViewService37SVSLPCActivityIndicatorViewController_v;
  *&v3[v6] = [objc_allocWithZone(type metadata accessor for SVSLEDPasscodeActivityIndicatorView()) init];
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for SVSLPCActivityIndicatorViewController();
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id SVSLPCActivityIndicatorViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id SVSLPCActivityIndicatorViewController.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC14HDSViewService37SVSLPCActivityIndicatorViewController_v;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for SVSLEDPasscodeActivityIndicatorView()) init];
  v6.receiver = v1;
  v6.super_class = type metadata accessor for SVSLPCActivityIndicatorViewController();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_10008EC00(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10008EC48()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008EC90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_10008ECA8(void *a1, int64_t a2, char a3)
{
  result = sub_10008ED68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10008ECC8(char *a1, int64_t a2, char a3)
{
  result = sub_10008EEB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10008ECE8(char *a1, int64_t a2, char a3)
{
  result = sub_10008EFBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10008ED08(char *a1, int64_t a2, char a3)
{
  result = sub_10008F0C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10008ED28(char *a1, int64_t a2, char a3)
{
  result = sub_10008F1D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10008ED48(void *a1, int64_t a2, char a3)
{
  result = sub_10008F3F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10008ED68(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_10000E6C4(&unk_100104310, &qword_1000BEA98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000E6C4(&qword_100102058, &unk_1000BD160);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10008EEB0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000E6C4(&unk_100104320, &qword_1000BDA08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10008EFBC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000E6C4(&qword_1001032A0, &qword_1000BEAA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10008F0C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000E6C4(&unk_100104330, &qword_1000BEAA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10008F1D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000E6C4(&unk_1001036E0, &unk_1000BD410);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10008F2E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000E6C4(&qword_1001032B8, &unk_1000BEAB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10008F3F0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_10000E6C4(&unk_100104340, &qword_1000BEAC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000E6C4(&unk_100104940, &qword_1000BEAC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_10008F524(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v15 = a1;
  v5 = [v4 keyPath];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (v7 == *(v1 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_colorsKey) && v9 == *(v1 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_colorsKey + 8))
    {

LABEL_13:
      v12 = *(v1 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_viewFinderBorderLayer);
      if ([v4 toValue])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_10000E9F4(&v17, &v18);
        sub_10000E6C4(&qword_100104308, &qword_1000BEA90);
        swift_dynamicCast();
        sub_10008C4E4(v16);

        isa = Array._bridgeToObjectiveC()().super.isa;

        [v12 setColors:isa];

        v14 = OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_needsReset;
        if (*(v1 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_needsReset) == 1)
        {
          [v12 removeAllAnimations];
        }

        *(v1 + v14) = 0;
      }

      else
      {
        __break(1u);
      }

      return;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {

      goto LABEL_13;
    }
  }
}

void sub_10008F754()
{
  v1 = OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_viewFinderTintLayer;
  *(v0 + v1) = [objc_allocWithZone(CAShapeLayer) init];
  v2 = OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_viewFinderBorderLayer;
  *(v0 + v2) = [objc_allocWithZone(CAGradientLayer) init];
  v3 = OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_borderLayerMask;
  *(v0 + v3) = [objc_allocWithZone(CAShapeLayer) init];
  v4 = OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_initialWhiteTintLayer;
  *(v0 + v4) = [objc_allocWithZone(CAShapeLayer) init];
  v5 = (v0 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_rotKey);
  *v5 = 0xD000000000000012;
  v5[1] = 0x80000001000C72D0;
  v6 = (v0 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_colorsKey);
  *v6 = 0x73726F6C6F63;
  v6[1] = 0xE600000000000000;
  *(v0 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_needsReset) = 0;
  v7 = OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_initialColors;
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000BD0A0;
  v9 = objc_opt_self();
  v10 = [v9 systemBlueColor];
  v11 = [v10 colorWithAlphaComponent:1.0];

  *(v8 + 32) = v11;
  v12 = [v9 systemBlueColor];
  v13 = [v12 colorWithAlphaComponent:1.0];

  *(v0 + v7) = v8;
  *(v8 + 40) = v13;
  *(v0 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_innerInitialHoleWidthRatio) = 0x3FDCCCCCCCCCCCCDLL;
  *(v0 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_innerTargetHoleWidthRatio) = 0x3FE3333333333333;
  *(v0 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_strokeWidth) = 0x402A000000000000;
  *(v0 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_successStrokeWidth) = 0x4033000000000000;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10008F99C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10008F9D4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

void sub_10008FA14(unint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_imageViewConstraints];
  *&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_imageViewConstraints] = 0;

  if (a1)
  {
    if (a1 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v5 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v6 = *(a1 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        [v6 removeFromSuperview];

        ++v5;
        if (v8 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }
  }

LABEL_15:
  v9 = *&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_imageViews];
  if (v9)
  {
    if (v9 >> 62)
    {
      goto LABEL_33;
    }

    for (j = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = _CocoaArrayWrapper.endIndex.getter())
    {

      if (!j)
      {
        break;
      }

      v11 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v1 addSubview:v13];

        ++v11;
        if (v14 == j)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      ;
    }

LABEL_27:

    [v1 setNeedsUpdateConstraints];
  }
}

char *sub_10008FC2C(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_imageViewConstraints] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_progressViewConstraints] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_bodyLabelConstraints] = 0;
  v3 = OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_imageViewsGuide;
  *&v1[v3] = [objc_allocWithZone(UILayoutGuide) init];
  *&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_imageViews] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_progressView] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_bodyLabel] = 0;
  v28.receiver = v1;
  v28.super_class = type metadata accessor for HomePodSetupProgressBarView();
  v4 = objc_msgSendSuper2(&v28, "initWithCardStyle:", a1);
  v5 = OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_imageViewsGuide;
  v6 = *&v4[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_imageViewsGuide];
  v7 = v4;
  [v7 addLayoutGuide:v6];
  v8 = [v7 mainContentGuide];
  v27 = objc_opt_self();
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000BD420;
  v10 = [*&v4[v5] topAnchor];
  v11 = [v8 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v9 + 32) = v12;
  v13 = [*&v4[v5] leadingAnchor];
  v14 = [v8 leadingAnchor];
  v15 = [v13 constraintGreaterThanOrEqualToAnchor:v14];

  *(v9 + 40) = v15;
  v16 = [*&v4[v5] trailingAnchor];
  v17 = [v8 trailingAnchor];
  v18 = [v16 constraintLessThanOrEqualToAnchor:v17];

  *(v9 + 48) = v18;
  v19 = [*&v4[v5] centerXAnchor];
  v20 = [v8 centerXAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v9 + 56) = v21;
  v22 = [*&v4[v5] bottomAnchor];
  v23 = [v8 bottomAnchor];
  v24 = [v22 constraintLessThanOrEqualToAnchor:v23];

  *(v9 + 64) = v24;
  sub_1000163D8();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints:isa];

  return v7;
}

void sub_10008FFE8()
{
  v1 = v0;
  v118.receiver = v0;
  v118.super_class = type metadata accessor for HomePodSetupProgressBarView();
  objc_msgSendSuper2(&v118, "updateConstraints");
  v2 = *&v0[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_imageViews];
  v3 = &selRef_initWithSystemImageNamed_;
  v117 = v0;
  if (v2)
  {
    if (!(v2 >> 62))
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v4)
      {
        goto LABEL_39;
      }

LABEL_4:
      if (*&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_imageViewConstraints])
      {
        goto LABEL_39;
      }

      v114 = OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_imageViewConstraints;
      if (v4 < 1)
      {
        __break(1u);
      }

      else
      {
        v5 = *&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_imageViewsGuide];
        v6 = PRXIconToIconMargin;

        v7 = 0;
        v8 = 0;
        v9 = &selRef_initWithSystemImageNamed_;
        v115 = v4;
        do
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v10 = *(v2 + v7 + 4);
          }

          v11 = v10;
          v12 = [v11 centerYAnchor];
          if (!v8 || (v13 = [v8 centerYAnchor]) == 0)
          {
            v13 = [v5 centerYAnchor];
          }

          v14 = [v12 v9[252]];

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v41 = v9;
            v42 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v9 = v41;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v15 = [v11 image];

          if (v15)
          {
            [v15 size];
            v17 = v16;
            v19 = v18;
          }

          else
          {
            v17 = 1.0;
            v19 = 1.0;
          }

          if (v17 <= 0.0)
          {
            v20 = 1.0;
          }

          else
          {
            v20 = v19 / v17;
          }

          v21 = [v11 heightAnchor];
          v22 = [v11 widthAnchor];
          v23 = [v21 constraintEqualToAnchor:v22 multiplier:v20];

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v43 = v9;
            v44 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v9 = v43;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v24 = [v11 topAnchor];
          v25 = [v5 topAnchor];
          v26 = [v24 constraintGreaterThanOrEqualToAnchor:v25];

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v45 = v9;
            v46 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v9 = v45;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v27 = [v11 bottomAnchor];
          v28 = [v5 bottomAnchor];
          v29 = [v27 constraintLessThanOrEqualToAnchor:v28];

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v47 = v9;
            v48 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v9 = v47;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          if (v8)
          {
            v30 = [v11 leadingAnchor];
            v31 = [v8 trailingAnchor];
            v32 = [v30 constraintEqualToAnchor:v31 constant:v6];

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v49 = v9;
              v50 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              v9 = v49;
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v33 = [v8 widthAnchor];
            v34 = [v11 widthAnchor];
            v35 = [v33 v9[252]];

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v36 = v9;
              v37 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              v9 = v36;
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }

          else
          {
            v38 = [v11 leadingAnchor];
            v39 = [v5 leadingAnchor];
            v40 = [v38 v9[252]];

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v51 = v9;
              v52 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              v9 = v51;
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }

          ++v7;
          v8 = v11;
        }

        while (v115 != v7);

        v2 = v11;
        v53 = [v2 trailingAnchor];
        v54 = [v5 trailingAnchor];
        v55 = [v53 v9[252]];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) < *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_38;
        }
      }

      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_38:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v56 = objc_opt_self();
      sub_1000163D8();
      isa = Array._bridgeToObjectiveC()().super.isa;
      v3 = &selRef_initWithSystemImageNamed_;
      [v56 activateConstraints:isa];

      v1 = v117;
      v58 = *&v117[v114];
      *&v117[v114] = _swiftEmptyArrayStorage;

      goto LABEL_39;
    }

    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_4;
    }
  }

LABEL_39:
  v59 = *&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_progressView];
  if (v59)
  {
    v60 = OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_progressViewConstraints;
    if (*&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_progressViewConstraints])
    {
      v61 = _swiftEmptyArrayStorage;
    }

    else
    {
      sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_1000BD430;
      v63 = v59;
      v64 = [v63 leadingAnchor];
      v65 = [v1 mainContentGuide];
      v66 = [v65 leadingAnchor];

      v67 = [v64 constraintEqualToAnchor:v66 constant:20.0];
      *(v62 + 32) = v67;
      v68 = [v63 trailingAnchor];
      v69 = [v117 mainContentGuide];
      v70 = [v69 trailingAnchor];

      v71 = [v68 constraintEqualToAnchor:v70 constant:-20.0];
      v3 = &selRef_initWithSystemImageNamed_;
      *(v62 + 40) = v71;
      v72 = [v63 heightAnchor];
      v73 = [v72 constraintEqualToConstant:6.0];

      *(v62 + 48) = v73;
      v74 = objc_opt_self();
      sub_1000163D8();
      v75 = Array._bridgeToObjectiveC()().super.isa;
      [v74 activateConstraints:v75];

      v1 = v117;
      v76 = *&v117[v60];
      *&v117[v60] = v62;

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v112 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v61 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v61 = _swiftEmptyArrayStorage;
  }

  v77 = *&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_bodyLabel];
  if (v77)
  {
    v78 = OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_bodyLabelConstraints;
    if (!*&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_bodyLabelConstraints])
    {
      sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_1000BD0A0;
      v80 = v77;
      v81 = [v80 leadingAnchor];
      v82 = [v1 mainContentGuide];
      v83 = [v82 leadingAnchor];

      v84 = [v81 constraintEqualToAnchor:v83];
      *(v79 + 32) = v84;
      v85 = [v80 trailingAnchor];
      v86 = [v117 mainContentGuide];
      v87 = [v86 trailingAnchor];

      v88 = [v85 constraintEqualToAnchor:v87];
      v3 = &selRef_initWithSystemImageNamed_;
      *(v79 + 40) = v88;
      v89 = objc_opt_self();
      sub_1000163D8();
      v90 = Array._bridgeToObjectiveC()().super.isa;
      [v89 activateConstraints:v90];

      v91 = *&v117[v78];
      *&v117[v78] = v79;

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v113 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v61 = _swiftEmptyArrayStorage;
    }
  }

  if (!(_swiftEmptyArrayStorage >> 62))
  {
    v92 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v92)
    {
      goto LABEL_53;
    }

LABEL_69:

    v61 = 0;
    goto LABEL_70;
  }

  v92 = _CocoaArrayWrapper.endIndex.getter();
  if (!v92)
  {
    goto LABEL_69;
  }

LABEL_53:
  if (v92 < 1)
  {
    __break(1u);
  }

  else
  {
    v93 = 0;
    v94 = 0;
    v116 = OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_imageViewsGuide;
    v95 = PRXMainContentMargin;
    do
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v99 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v99 = _swiftEmptyArrayStorage[v94 + 4];
      }

      v100 = v99;
      if (v93)
      {
        v96 = [v99 topAnchor];
        v97 = [v93 bottomAnchor];
        v98 = [v96 constraintEqualToAnchor:v97 constant:v95];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v104 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      else
      {
        v101 = [v99 topAnchor];
        v102 = [*&v117[v116] bottomAnchor];
        v103 = [v101 constraintEqualToAnchor:v102 constant:v95];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v105 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      ++v94;
      v93 = v100;
    }

    while (v92 != v94);

    v61 = v100;
    v106 = [v61 bottomAnchor];
    v107 = [v117 mainContentGuide];
    v108 = [v107 bottomAnchor];

    v109 = [v106 constraintLessThanOrEqualToAnchor:v108];
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) < *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_67;
    }
  }

  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_67:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v3 = &selRef_initWithSystemImageNamed_;
LABEL_70:
  v110 = objc_opt_self();
  sub_1000163D8();
  v111 = Array._bridgeToObjectiveC()().super.isa;

  [v110 v3[216]];
}