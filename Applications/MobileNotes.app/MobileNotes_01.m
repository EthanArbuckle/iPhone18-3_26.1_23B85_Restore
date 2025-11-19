void sub_10001F06C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___ICActivityStreamNavigationController_object);
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR___ICActivityStreamNavigationController_activityStreamViewController);
    if (v3)
    {
      v4 = OBJC_IVAR___ICActivityStreamNavigationController_isCapturingActivityStreamSummaryEvent;
      if (*(v1 + OBJC_IVAR___ICActivityStreamNavigationController_isCapturingActivityStreamSummaryEvent) == 1)
      {
        v5 = v3;
        v6 = v2;
        v7 = [v5 eventReporter];
        if (v7)
        {
          v8 = v7;
          sub_10041ABC8();
          v9 = OBJC_IVAR___ICActivityStreamNavigationController_viewModeDurations;
          swift_beginAccess();
          v10 = *(v1 + v9);
          v11 = 0.0;
          v12 = 0.0;
          if (*(v10 + 16))
          {
            v13 = sub_1002ED08C(2);
            if (v14)
            {
              v12 = *(*(v10 + 56) + 8 * v13);
            }
          }

          swift_endAccess();
          sub_10041ABC8();
          swift_beginAccess();
          v15 = *(v1 + v9);
          if (*(v15 + 16))
          {
            v16 = sub_1002ED08C(3);
            if (v17)
            {
              v11 = *(*(v15 + 56) + 8 * v16);
            }
          }

          swift_endAccess();
          sub_10041ABC8();
          swift_beginAccess();
          v18 = *(v1 + v9);
          v19 = 0.0;
          v20 = 0.0;
          if (*(v18 + 16))
          {
            v21 = sub_1002ED08C(5);
            if (v22)
            {
              v20 = *(*(v18 + 56) + 8 * v21);
            }
          }

          swift_endAccess();
          sub_10041ABC8();
          swift_beginAccess();
          v23 = *(v1 + v9);
          if (*(v23 + 16))
          {
            v24 = sub_1002ED08C(1);
            if (v25)
            {
              v19 = *(*(v23 + 56) + 8 * v24);
            }
          }

          swift_endAccess();
          [v8 submitActivityStreamSummaryEventForObject:v6 halfHeightViewDuration:v12 fullHeightViewDuration:v11 sideBarViewDuration:v20 minimizedViewDuration:v19];
        }

        *(v1 + v4) = 0;
      }
    }
  }
}

id sub_10001F27C()
{
  v1 = OBJC_IVAR___ICActivityStreamNavigationController____lazy_storage___filteredHeaderView;
  v2 = *(v0 + OBJC_IVAR___ICActivityStreamNavigationController____lazy_storage___filteredHeaderView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ICActivityStreamNavigationController____lazy_storage___filteredHeaderView);
  }

  else
  {
    swift_unknownObjectWeakLoadStrong();
    v4 = objc_allocWithZone(type metadata accessor for ActivityStreamDockView());
    v5 = v0;
    v6 = ActivityStreamDockView.init(coordinator:isDisplayedInCard:)();
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = *(v0 + OBJC_IVAR___ICActivityStreamNavigationController_isNonSolarium);
    v8 = objc_opt_self();
    v9 = &selRef_ICBackgroundColor;
    if (!v7)
    {
      v9 = &selRef_clearColor;
    }

    v10 = [v8 *v9];
    [v6 setBackgroundColor:v10];

    [v6 setAlpha:0.0];
    v11 = *(v5 + v1);
    *(v5 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

void sub_10001F434(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v5 = (a1 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateQueue);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v9 = v8;
  v23 = v5[2];
  v24 = v8;
  v25 = v5[4];
  v11 = *v5;
  v10 = v5[1];
  v22[0] = v6;
  v22[1] = v10;
  v18 = v23;
  v19 = v9;
  v20 = v5[4];
  v26 = *(v5 + 10);
  v21 = *(v5 + 10);
  v16 = v11;
  v17 = v7;
  sub_100006038(v22, &v15, &qword_1006C42D0);
  type metadata accessor for ICSelectionStateModel(0);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_1000073B4(v22, &qword_1006C42D0);
  v12 = v15;
  v13 = *&v15[*a2];
  *a3 = v13;
  v14 = v13;
}

void sub_10001F5F4(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR___ICActivityStreamNavigationController_selection;
  v4 = *(v1 + OBJC_IVAR___ICActivityStreamNavigationController_selection);
  *(v2 + OBJC_IVAR___ICActivityStreamNavigationController_selection) = a1;
  v11 = a1;

  v5 = sub_10001F27C();
  v6 = *(v2 + v3);
  ActivityStreamDockView.selection.setter();

  v7 = *(v2 + OBJC_IVAR___ICActivityStreamNavigationController_activityStreamViewController);
  if (v7)
  {
    v8 = *(v2 + v3);
    swift_getKeyPath();
    swift_getKeyPath();
    v9 = v8;
    v10 = v7;
    static Published.subscript.setter();
  }

  else
  {
  }
}

void sub_10001F848()
{
  Notification.object.getter();
  if (!*(&v14 + 1))
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_10001FA64(&v13, v12);
  sub_1000054A4(0, &qword_1006BFAF8);
  swift_dynamicCast();
  v0 = Notification.userInfo.getter();
  if (!v0)
  {
    goto LABEL_10;
  }

  v1 = v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v1 + 16) || (v2 = sub_100024E34(v12), (v3 & 1) == 0))
  {

    sub_100024F9C(v12);
LABEL_10:
    v13 = 0u;
    v14 = 0u;
    goto LABEL_11;
  }

  sub_10000A2A0(*(v1 + 56) + 32 * v2, &v13);
  sub_100024F9C(v12);

  if (!*(&v14 + 1))
  {
LABEL_11:
    sub_1000073B4(&v13, &qword_1006BE7A0);
    goto LABEL_12;
  }

  sub_1000054A4(0, &unk_1006C8180);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v4 = 0;
    goto LABEL_13;
  }

  v4 = *&v12[0];
  v5 = [v4 view];
  if (v5)
  {
    v6 = v5;
    sub_1001E3768(v5);

LABEL_13:
    v7 = [v11 rootViewController];
    if (!v7)
    {
      v8 = v11;
      goto LABEL_17;
    }

    v8 = v7;
    v9 = [v7 view];
    if (v9)
    {
      v10 = v9;
      sub_1000204AC(v9);

      v4 = v10;
LABEL_17:

      return;
    }

    goto LABEL_19;
  }

LABEL_20:
  __break(1u);
}

_OWORD *sub_10001FA64(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10001FA74()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v0 = type metadata accessor for UIAppIntentInteraction();
  v1 = objc_allocWithZone(v0);
  sub_10002062C();
  v2 = UIAppIntentInteraction.init<A>(intent:perform:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = objc_allocWithZone(v0);
  sub_10002074C();
  v52 = v2;
  v4 = UIAppIntentInteraction.init<A>(intent:perform:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = objc_allocWithZone(v0);
  sub_10002086C();
  v51 = v4;
  v6 = UIAppIntentInteraction.init<A>(intent:perform:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = objc_allocWithZone(v0);
  sub_10002098C();
  v50 = v6;
  v8 = UIAppIntentInteraction.init<A>(intent:perform:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = objc_allocWithZone(v0);
  sub_100020AAC();
  v49 = v8;
  v10 = UIAppIntentInteraction.init<A>(intent:perform:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = objc_allocWithZone(v0);
  sub_100020BCC();
  v48 = v10;
  v12 = UIAppIntentInteraction.init<A>(intent:perform:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = objc_allocWithZone(v0);
  sub_100020CEC();
  v47 = v12;
  v14 = UIAppIntentInteraction.init<A>(intent:perform:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = objc_allocWithZone(v0);
  sub_100020E0C();
  v46 = v14;
  v16 = UIAppIntentInteraction.init<A>(intent:perform:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = objc_allocWithZone(v0);
  sub_100020F2C();
  v45 = v16;
  v18 = UIAppIntentInteraction.init<A>(intent:perform:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = objc_allocWithZone(v0);
  sub_10002104C();
  v44 = v18;
  v20 = UIAppIntentInteraction.init<A>(intent:perform:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = objc_allocWithZone(v0);
  sub_10002116C();
  v43 = v20;
  v22 = UIAppIntentInteraction.init<A>(intent:perform:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = objc_allocWithZone(v0);
  sub_10002128C();
  v61 = v22;
  v24 = UIAppIntentInteraction.init<A>(intent:perform:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = objc_allocWithZone(v0);
  sub_1000213AC();
  v60 = v24;
  v26 = UIAppIntentInteraction.init<A>(intent:perform:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = objc_allocWithZone(v0);
  sub_1000214CC();
  v59 = v26;
  v28 = UIAppIntentInteraction.init<A>(intent:perform:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = objc_allocWithZone(v0);
  sub_1000215EC();
  v58 = v28;
  v30 = UIAppIntentInteraction.init<A>(intent:perform:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = objc_allocWithZone(v0);
  sub_10002170C();
  v57 = v30;
  v32 = UIAppIntentInteraction.init<A>(intent:perform:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = objc_allocWithZone(v0);
  sub_10002182C();
  v56 = v32;
  v34 = UIAppIntentInteraction.init<A>(intent:perform:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = objc_allocWithZone(v0);
  sub_10002194C();
  v55 = v34;
  v36 = UIAppIntentInteraction.init<A>(intent:perform:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = objc_allocWithZone(v0);
  sub_100021A6C();
  v54 = v36;
  v38 = UIAppIntentInteraction.init<A>(intent:perform:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = objc_allocWithZone(v0);
  sub_100021B8C();
  v53 = v38;
  v42 = UIAppIntentInteraction.init<A>(intent:perform:)();
  sub_10015DA04(&unk_1006BD390);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100539260;
  *(v40 + 32) = v52;
  *(v40 + 40) = v51;
  *(v40 + 48) = v50;
  *(v40 + 56) = v49;
  *(v40 + 64) = v48;
  *(v40 + 72) = v47;
  *(v40 + 80) = v46;
  *(v40 + 88) = v45;
  *(v40 + 96) = v44;
  *(v40 + 104) = v43;
  *(v40 + 112) = v61;
  *(v40 + 120) = v60;
  *(v40 + 128) = v59;
  *(v40 + 136) = v58;
  *(v40 + 144) = v57;
  *(v40 + 152) = v56;
  *(v40 + 160) = v55;
  *(v40 + 168) = v54;
  *(v40 + 176) = v53;
  *(v40 + 184) = v42;

  return v40;
}

uint64_t sub_100020474()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000204AC(void *a1)
{
  v2 = v1;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_100456854(_swiftEmptyArrayStorage);
    v4 = v11;
  }

  else
  {
    v4 = &_swiftEmptySetSingleton;
  }

  result = sub_10001FA74();
  v6 = result;
  if (!(result >> 62))
  {
    v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_15:

LABEL_16:
    v12 = OBJC_IVAR____TtC11MobileNotes33ICAppIntentsInteractionController_interactions;
    swift_beginAccess();
    *(v2 + v12) = v4;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v7 = result;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_5:
  if (v7 >= 1)
  {
    v8 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v6 + 8 * v8 + 32);
      }

      ++v8;
      v10 = v9;
      sub_100021F10(&v13, v10);

      [a1 addInteraction:v10];
    }

    while (v7 != v8);

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t sub_10002062C()
{
  result = qword_1006C98F0;
  if (!qword_1006C98F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C98F0);
  }

  return result;
}

unint64_t sub_100020684()
{
  result = qword_1006C9970;
  if (!qword_1006C9970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9970);
  }

  return result;
}

unint64_t sub_1000206DC()
{
  result = qword_1006C9978;
  if (!qword_1006C9978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9978);
  }

  return result;
}

unint64_t sub_10002074C()
{
  result = qword_1006BFB10;
  if (!qword_1006BFB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFB10);
  }

  return result;
}

unint64_t sub_1000207A4()
{
  result = qword_1006C23B0;
  if (!qword_1006C23B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C23B0);
  }

  return result;
}

unint64_t sub_1000207FC()
{
  result = qword_1006C23B8;
  if (!qword_1006C23B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C23B8);
  }

  return result;
}

unint64_t sub_10002086C()
{
  result = qword_1006BF900;
  if (!qword_1006BF900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF900);
  }

  return result;
}

unint64_t sub_1000208C4()
{
  result = qword_1006BF920;
  if (!qword_1006BF920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF920);
  }

  return result;
}

unint64_t sub_100020918()
{
  result = qword_1006BF928;
  if (!qword_1006BF928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF928);
  }

  return result;
}

unint64_t sub_10002098C()
{
  result = qword_1006BFB20;
  if (!qword_1006BFB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFB20);
  }

  return result;
}

unint64_t sub_1000209E4()
{
  result = qword_1006C51B0;
  if (!qword_1006C51B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C51B0);
  }

  return result;
}

unint64_t sub_100020A38()
{
  result = qword_1006C51B8;
  if (!qword_1006C51B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C51B8);
  }

  return result;
}

unint64_t sub_100020AAC()
{
  result = qword_1006BFB28;
  if (!qword_1006BFB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFB28);
  }

  return result;
}

unint64_t sub_100020B04()
{
  result = qword_1006C4D08;
  if (!qword_1006C4D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C4D08);
  }

  return result;
}

unint64_t sub_100020B5C()
{
  result = qword_1006C4D10;
  if (!qword_1006C4D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C4D10);
  }

  return result;
}

unint64_t sub_100020BCC()
{
  result = qword_1006BFB30;
  if (!qword_1006BFB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFB30);
  }

  return result;
}

unint64_t sub_100020C20()
{
  result = qword_1006C3568;
  if (!qword_1006C3568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3568);
  }

  return result;
}

unint64_t sub_100020C7C()
{
  result = qword_1006C3570;
  if (!qword_1006C3570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3570);
  }

  return result;
}

unint64_t sub_100020CEC()
{
  result = qword_1006BFB38;
  if (!qword_1006BFB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFB38);
  }

  return result;
}

unint64_t sub_100020D40()
{
  result = qword_1006C4AA0;
  if (!qword_1006C4AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C4AA0);
  }

  return result;
}

unint64_t sub_100020D98()
{
  result = qword_1006C4AA8;
  if (!qword_1006C4AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C4AA8);
  }

  return result;
}

unint64_t sub_100020E0C()
{
  result = qword_1006BFB40;
  if (!qword_1006BFB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFB40);
  }

  return result;
}

unint64_t sub_100020E64()
{
  result = qword_1006BD870;
  if (!qword_1006BD870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BD870);
  }

  return result;
}

unint64_t sub_100020EB8()
{
  result = qword_1006BD878;
  if (!qword_1006BD878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BD878);
  }

  return result;
}

unint64_t sub_100020F2C()
{
  result = qword_1006BFB48;
  if (!qword_1006BFB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFB48);
  }

  return result;
}

unint64_t sub_100020F84()
{
  result = qword_1006C5228;
  if (!qword_1006C5228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C5228);
  }

  return result;
}

unint64_t sub_100020FDC()
{
  result = qword_1006C5230;
  if (!qword_1006C5230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C5230);
  }

  return result;
}

unint64_t sub_10002104C()
{
  result = qword_1006BFB50;
  if (!qword_1006BFB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFB50);
  }

  return result;
}

unint64_t sub_1000210A4()
{
  result = qword_1006C7D58;
  if (!qword_1006C7D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7D58);
  }

  return result;
}

unint64_t sub_1000210FC()
{
  result = qword_1006C7D60;
  if (!qword_1006C7D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7D60);
  }

  return result;
}

unint64_t sub_10002116C()
{
  result = qword_1006C4590;
  if (!qword_1006C4590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C4590);
  }

  return result;
}

unint64_t sub_1000211C0()
{
  result = qword_1006C2328;
  if (!qword_1006C2328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2328);
  }

  return result;
}

unint64_t sub_10002121C()
{
  result = qword_1006C2330;
  if (!qword_1006C2330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2330);
  }

  return result;
}

unint64_t sub_10002128C()
{
  result = qword_1006BFA30;
  if (!qword_1006BFA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFA30);
  }

  return result;
}

unint64_t sub_1000212E4()
{
  result = qword_1006C8E78;
  if (!qword_1006C8E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C8E78);
  }

  return result;
}

unint64_t sub_10002133C()
{
  result = qword_1006C8E80;
  if (!qword_1006C8E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C8E80);
  }

  return result;
}

unint64_t sub_1000213AC()
{
  result = qword_1006BFB58;
  if (!qword_1006BFB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFB58);
  }

  return result;
}

unint64_t sub_100021400()
{
  result = qword_1006C37A8;
  if (!qword_1006C37A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C37A8);
  }

  return result;
}

unint64_t sub_10002145C()
{
  result = qword_1006C37B0;
  if (!qword_1006C37B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C37B0);
  }

  return result;
}

unint64_t sub_1000214CC()
{
  result = qword_1006BFB60;
  if (!qword_1006BFB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFB60);
  }

  return result;
}

unint64_t sub_100021524()
{
  result = qword_1006C8D58;
  if (!qword_1006C8D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C8D58);
  }

  return result;
}

unint64_t sub_100021578()
{
  result = qword_1006C8D60;
  if (!qword_1006C8D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C8D60);
  }

  return result;
}

unint64_t sub_1000215EC()
{
  result = qword_1006BFB68;
  if (!qword_1006BFB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFB68);
  }

  return result;
}

unint64_t sub_100021644()
{
  result = qword_1006C12E8;
  if (!qword_1006C12E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C12E8);
  }

  return result;
}

unint64_t sub_10002169C()
{
  result = qword_1006C12F0;
  if (!qword_1006C12F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C12F0);
  }

  return result;
}

unint64_t sub_10002170C()
{
  result = qword_1006BFB70;
  if (!qword_1006BFB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFB70);
  }

  return result;
}

unint64_t sub_100021764()
{
  result = qword_1006CA6D0;
  if (!qword_1006CA6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA6D0);
  }

  return result;
}

unint64_t sub_1000217BC()
{
  result = qword_1006CA6D8;
  if (!qword_1006CA6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA6D8);
  }

  return result;
}

unint64_t sub_10002182C()
{
  result = qword_1006BFB78;
  if (!qword_1006BFB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFB78);
  }

  return result;
}

unint64_t sub_100021884()
{
  result = qword_1006C23E0;
  if (!qword_1006C23E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C23E0);
  }

  return result;
}

unint64_t sub_1000218DC()
{
  result = qword_1006C23E8;
  if (!qword_1006C23E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C23E8);
  }

  return result;
}

unint64_t sub_10002194C()
{
  result = qword_1006BFB80;
  if (!qword_1006BFB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFB80);
  }

  return result;
}

unint64_t sub_1000219A4()
{
  result = qword_1006BF1E0;
  if (!qword_1006BF1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF1E0);
  }

  return result;
}

unint64_t sub_1000219FC()
{
  result = qword_1006BF1E8;
  if (!qword_1006BF1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF1E8);
  }

  return result;
}

unint64_t sub_100021A6C()
{
  result = qword_1006BF860;
  if (!qword_1006BF860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF860);
  }

  return result;
}

unint64_t sub_100021AC4()
{
  result = qword_1006BF868;
  if (!qword_1006BF868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF868);
  }

  return result;
}

unint64_t sub_100021B1C()
{
  result = qword_1006BF870;
  if (!qword_1006BF870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF870);
  }

  return result;
}

unint64_t sub_100021B8C()
{
  result = qword_1006BFB90;
  if (!qword_1006BFB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFB90);
  }

  return result;
}

unint64_t sub_100021BE0()
{
  result = qword_1006C1378;
  if (!qword_1006C1378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1378);
  }

  return result;
}

unint64_t sub_100021C3C()
{
  result = qword_1006C1380;
  if (!qword_1006C1380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1380);
  }

  return result;
}

uint64_t sub_100021CAC(void *a1, void *a2, void (*a3)(void), uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = __CocoaSet.member(for:)();

    if (v17)
    {

      a3(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v35;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_100266C14(v15, result + 1, a4, a5, a6);
        v28 = v27[2];
        if (v27[3] <= v28)
        {
          sub_1000222DC(v28 + 1, a4);
        }

        v29 = v16;
        sub_100269330(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    a3(0);
    v19 = NSObject._rawHashValue(seed:)(*(v14 + 40));
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *v11;
      v26 = a2;
      sub_100021F4C(v26, v21, isUniquelyReferenced_nonNull_native, a4, a5, a6);
      *v11 = v36;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

void sub_100021F4C(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_1000222DC(v9 + 1, a4);
  }

  else
  {
    if (v10 > v9)
    {
      sub_10026C228(a4);
      goto LABEL_12;
    }

    v11 = a6;
    sub_1000220D0(v9 + 1, a4);
  }

  v12 = *v6;
  v13 = NSObject._rawHashValue(seed:)(*(*v6 + 40));
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v11(0);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = static NSObject.== infix(_:_:)();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1000220D0(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  sub_10015DA04(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(v6 + 40);
      v18 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v26;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

uint64_t sub_1000222DC(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  sub_10015DA04(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
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
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
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
        goto LABEL_30;
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
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

ICViewControllerManager *__cdecl sub_100022758(id a1, UIWindow *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = ICDynamicCast();

  if (v3)
  {
    v4 = [v3 screen];
    v5 = [v4 displayIdentity];
    if ([v5 expectsSecureRendering])
    {
      v6 = 0;
    }

    else
    {
      v6 = [v3 viewControllerManager];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_100022ED8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_100022F10()
{
  sub_100004FD8();
  sub_100005018();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100023C30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_100023D70()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100023DA8()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100023DE8()
{
  result = qword_1006CA2B0;
  if (!qword_1006CA2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA2B0);
  }

  return result;
}

unint64_t sub_100023E3C()
{
  result = qword_1006BFA70;
  if (!qword_1006BFA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFA70);
  }

  return result;
}

unint64_t sub_100023E94()
{
  result = qword_1006BFA78;
  if (!qword_1006BFA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFA78);
  }

  return result;
}

uint64_t sub_100024010()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100024048()
{
  result = qword_1006BFF40;
  if (!qword_1006BFF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFF40);
  }

  return result;
}

unint64_t sub_10002409C()
{
  result = qword_1006C6E00;
  if (!qword_1006C6E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C6E00);
  }

  return result;
}

unint64_t sub_1000240F4()
{
  result = qword_1006C6E08;
  if (!qword_1006C6E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C6E08);
  }

  return result;
}

void sub_10002421C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

unint64_t sub_10002435C()
{
  result = qword_1006CA2A0;
  if (!qword_1006CA2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA2A0);
  }

  return result;
}

unint64_t sub_1000243B0()
{
  result = qword_1006C6C20;
  if (!qword_1006C6C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C6C20);
  }

  return result;
}

unint64_t sub_100024408()
{
  result = qword_1006C6C28;
  if (!qword_1006C6C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C6C28);
  }

  return result;
}

uint64_t sub_10002447C@<X0>(char *a1@<X8>)
{
  type metadata accessor for Logger();

  return sub_1000244FC(a1);
}

uint64_t sub_1000244FC@<X0>(char *a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006C57E8);
  __chkstk_darwin(v2 - 8);
  v4 = &v60 - v3;
  v5 = type metadata accessor for EditNoteActivity();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Notification.object.getter();
  if (!v67)
  {
    v30 = &v65;
LABEL_18:
    sub_1000073B4(v30, &qword_1006BE7A0);
    goto LABEL_19;
  }

  sub_1000054A4(0, &qword_1006C6420);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Not continuing with fast sync because note/editor is ineligible.", v33, 2u);
    }

    goto LABEL_22;
  }

  v9 = v68;
  v10 = Notification.userInfo.getter();
  if (!v10)
  {

    v68 = 0u;
    v69 = 0u;
    goto LABEL_17;
  }

  v11 = v10;
  v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = v12;
  AnyHashable.init<A>(_:)();
  if (!*(v11 + 16) || (v13 = sub_100024E34(&v65), (v14 & 1) == 0))
  {

    sub_100024F9C(&v65);
    v68 = 0u;
    v69 = 0u;
    goto LABEL_15;
  }

  sub_10000A2A0(*(v11 + 56) + 32 * v13, &v68);
  sub_100024F9C(&v65);

  if (!*(&v69 + 1))
  {
LABEL_15:

LABEL_17:
    v30 = &v68;
    goto LABEL_18;
  }

  sub_1000054A4(0, &qword_1006C1420);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_19;
  }

  v15 = v65;
  if ((_s11MobileNotes31RealtimeCollaborationControllerC02iscD7Enabled3forSbSo6ICNoteC_tFZ_0(v65) & 1) == 0)
  {

    goto LABEL_19;
  }

  v16 = v15;
  EditNoteActivity.init(note:)();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000073B4(v4, &qword_1006C57E8);
    v17 = v16;
    v18 = static os_log_type_t.fault.getter();
    v19 = Logger.logObject.getter();
    if (os_log_type_enabled(v19, v18))
    {
      v20 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *&v68 = v62;
      *v20 = 136315650;
      v21 = StaticString.description.getter();
      v23 = sub_100009D88(v21, v22, &v68);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2048;
      *(v20 + 14) = 139;
      *(v20 + 22) = 2080;
      v65 = 0;
      v66 = 0xE000000000000000;
      _StringGuts.grow(_:)(49);

      v65 = 0xD00000000000002FLL;
      v66 = 0x800000010056E880;
      v24 = [v17 ic_loggingDescription];
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v28._countAndFlagsBits = v25;
      v28._object = v27;
      String.append(_:)(v28);

      v29 = sub_100009D88(v65, v66, &v68);

      *(v20 + 24) = v29;
      _os_log_impl(&_mh_execute_header, v19, v18, "Failed assertion at %s:%lu: %s", v20, 0x20u);
      swift_arrayDestroy();
    }

    goto LABEL_22;
  }

  v61 = *(v6 + 32);
  v62 = v16;
  v61(v8, v4, v5);
  v36 = Notification.name.getter();
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;
  if (v37 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v39 == v40)
  {

LABEL_30:
    v42 = sub_10015DA04(&qword_1006C57F8);
    v43 = *(v42 + 48);
    (*(v6 + 16))(a1, v8, v5);
    v44 = v62;
    v45 = [v62 serverShareCheckingParent];
    if (v45)
    {
      v46 = v45;
      sub_1000054A4(0, &qword_1006BFD38);
      NSObject<>.makeSnapshot()();

      (*(v6 + 8))(v8, v5);
    }

    else
    {
      (*(v6 + 8))(v8, v5);

      v47 = sub_10015DA04(&qword_1006BFCC8);
      (*(*(v47 - 8) + 56))(&a1[v43], 1, 1, v47);
    }

    *&a1[*(v42 + 64)] = v9;
    v48 = type metadata accessor for FastSyncEditorActivityChangeHandler(0);
    goto LABEL_34;
  }

  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v41)
  {

    goto LABEL_30;
  }

  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;
  if (v49 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v51 != v52)
  {
    v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v53)
    {

      goto LABEL_40;
    }

    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;
    if (v55 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v57 != v58)
    {
      v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v59 & 1) == 0)
      {
        (*(v6 + 8))(v8, v5);

LABEL_22:
        v34 = type metadata accessor for FastSyncEditorActivityChangeHandler(0);
        return (*(*(v34 - 8) + 56))(a1, 1, 1, v34);
      }

      goto LABEL_40;
    }
  }

LABEL_40:
  v54 = *(sub_10015DA04(&qword_1006C57F0) + 48);
  v61(a1, v8, v5);
  *&a1[v54] = v9;
  v48 = type metadata accessor for FastSyncEditorActivityChangeHandler(0);
LABEL_34:
  swift_storeEnumTagMultiPayload();
  return (*(*(v48 - 8) + 56))(a1, 0, 1, v48);
}

unint64_t sub_100024E34(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100024E78(a1, v4);
}

unint64_t sub_100024E78(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100024F40(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100024F9C(v8);
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

uint64_t _s11MobileNotes31RealtimeCollaborationControllerC02iscD7Enabled3forSbSo6ICNoteC_tFZ_0(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006BC7C8 != -1)
  {
    swift_once();
  }

  if (byte_1006EF718 != 1)
  {
    return 0;
  }

  v6 = [a1 account];
  if (v6)
  {
    v7 = v6;
    goto LABEL_6;
  }

  v10 = [a1 folder];
  if (v10)
  {
    v11 = v10;
    v7 = [v10 account];

    if (v7)
    {
LABEL_6:
      v8 = [v7 isPrimaryiCloudAccount];

      if (v8)
      {
        return 1;
      }
    }
  }

  static Logger.realtimeCollaboration.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Fast sync is disabled for non-primary iCloud account", v14, 2u);
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t sub_1000251EC()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = (__chkstk_darwin)();
  v4 = &v41[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __chkstk_darwin(v2);
  v7 = &v41[-v6];
  v8 = __chkstk_darwin(v5);
  v10 = &v41[-v9];
  __chkstk_darwin(v8);
  v12 = &v41[-v11];
  v50 = &type metadata for NotesFeature;
  v51 = sub_100025864();
  v47 = "RealtimeCollaboration";
  v48 = 21;
  v49 = 2;
  v13 = isFeatureEnabled(_:)();
  sub_100009F60(&v47);
  if ((v13 & 1) == 0)
  {
    static Logger.realtimeCollaboration.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Fast sync is disabled by the feature flag", v19, 2u);
    }

    (*(v1 + 8))(v4, v0);
    return 0;
  }

  if ([objc_opt_self() isRunningUnitTests])
  {
    static Logger.realtimeCollaboration.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Fast sync is disabled in unit tests", v16, 2u);
    }

    (*(v1 + 8))(v7, v0);
    return 0;
  }

  v21 = [objc_opt_self() sharedConfiguration];
  v22 = [v21 fastSyncEnabled];

  if (!v22)
  {
    static Logger.realtimeCollaboration.getter();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Fast Sync is disabled by the cloud configuration", v40, 2u);
    }

    (*(v1 + 8))(v10, v0);
    return 0;
  }

  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = 256;
  if (qword_1006BC7A0 != -1)
  {
    swift_once();
  }

  v24 = sub_10002597C(v0, qword_1006C46C8);
  (*(v1 + 16))(v12, v24, v0);
  v25 = swift_allocObject();
  *(v25 + 16) = 2;
  if ((sub_1000259B4(v25, v23) & 1) == 0)
  {
    v26 = static os_log_type_t.fault.getter();
    v27 = Logger.logObject.getter();
    if (os_log_type_enabled(v27, v26))
    {
      v28 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v46 = v44;
      *v28 = 136315650;
      v29 = StaticString.description.getter();
      v43 = v27;
      v31 = sub_100009D88(v29, v30, &v46);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2048;
      *(v28 + 14) = 83;
      *(v28 + 22) = 2080;
      v47 = 0;
      v48 = 0xE000000000000000;
      _StringGuts.grow(_:)(49);

      v47 = 0xD000000000000021;
      v48 = 0x800000010056D7E0;
      sub_100025A54(v23);
      v42 = v26;
      v45._countAndFlagsBits = StaticString.description.getter();
      v45._object = v32;
      v33._countAndFlagsBits = 47;
      v33._object = 0xE100000000000000;
      String.append(_:)(v33);
      v34._countAndFlagsBits = StaticString.description.getter();
      String.append(_:)(v34);

      String.append(_:)(v45);

      v35._countAndFlagsBits = 0x7369642073617720;
      v35._object = 0xEE002E64656C6261;
      String.append(_:)(v35);
      v36 = sub_100009D88(v47, v48, &v46);

      *(v28 + 24) = v36;
      v37 = v43;
      _os_log_impl(&_mh_execute_header, v43, v42, "Failed assertion at %s:%lu: %s", v28, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  (*(v1 + 8))(v12, v0);

  return 1;
}

uint64_t sub_100025840()
{
  result = sub_1000251EC();
  byte_1006EF718 = result & 1;
  return result;
}

unint64_t sub_100025864()
{
  result = qword_1006C76D0;
  if (!qword_1006C76D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C76D0);
  }

  return result;
}

uint64_t sub_1000258CC()
{
  v0 = type metadata accessor for Logger();
  sub_100025918(v0, qword_1006C46C8);
  sub_10002597C(v0, qword_1006C46C8);
  return static Logger.realtimeCollaboration.getter();
}

uint64_t *sub_100025918(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10002597C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000259B4(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 16);
  LODWORD(v3) = *(a1 + 16);
  if (v3 == 2)
  {
    v3 = sub_100025A54(a2);
    v5 = v4;
    v7 = v6;
    v11 = &type metadata for TelephonyUtilitiesFeature;
    v12 = sub_100025AC8();
    v9[0] = v3;
    v9[1] = v5;
    v10 = v7;
    LOBYTE(v3) = isFeatureEnabled(_:)();
    sub_100009F60(v9);
    swift_beginAccess();
    *v2 = v3 & 1;
  }

  return v3 & 1;
}

const char *sub_100025A54(uint64_t a1)
{
  v3 = a1 + 16;
  result = *(a1 + 16);
  if (*(v3 + 17) == 1)
  {
    swift_beginAccess();
    result = "sharePlayLite";
    *(a1 + 16) = "sharePlayLite";
    *(a1 + 24) = 13;
    *(a1 + 32) = 2;
  }

  return result;
}

unint64_t sub_100025AC8()
{
  result = qword_1006BDF80;
  if (!qword_1006BDF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BDF80);
  }

  return result;
}

uint64_t sub_100025BC8()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_1006C4D59);
  swift_endAccess();
  if (v1)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v3;
    }
  }

  else
  {
    sub_1000073B4(v6, &qword_1006BE7A0);
    return 0;
  }

  return result;
}

void sub_100025EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t type metadata accessor for CollaborationButtonsController()
{
  result = qword_1006C5EA0;
  if (!qword_1006C5EA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100025F28()
{
  sub_100026130(319, &qword_1006C5EB0, &qword_1006C5EB8);
  if (v0 <= 0x3F)
  {
    sub_100026184();
    if (v1 <= 0x3F)
    {
      sub_100026130(319, &qword_1006C5EC8, &qword_1006C5ED0);
      if (v2 <= 0x3F)
      {
        sub_100026130(319, &qword_1006C5ED8, &qword_1006C5EE0);
        if (v3 <= 0x3F)
        {
          sub_100026130(319, &qword_1006C5EE8, &qword_1006C5EF0);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_100026130(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_10017992C(a3);
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100026184()
{
  if (!qword_1006C5EC0)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1006C5EC0);
    }
  }
}

uint64_t type metadata accessor for CollaborationParticipantDataSource()
{
  result = qword_1006C9CD0;
  if (!qword_1006C9CD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100026220()
{
  sub_1000262D8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000262D8()
{
  if (!qword_1006C5EC8)
  {
    sub_10017992C(&qword_1006C5ED0);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1006C5EC8);
    }
  }
}

id sub_100026384(void *a1, void *a2)
{
  v3 = v2;
  v56 = a2;
  v63 = a1;
  ObjectType = swift_getObjectType();
  v4 = sub_10015DA04(&qword_1006C5F88);
  v61 = *(v4 - 8);
  v62 = v4;
  __chkstk_darwin(v4);
  v60 = &v48 - v5;
  v59 = sub_10015DA04(&qword_1006C5EF0);
  v6 = __chkstk_darwin(v59);
  v58 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v57 = &v48 - v8;
  v9 = sub_10015DA04(&qword_1006C5F90);
  v54 = *(v9 - 8);
  v55 = v9;
  __chkstk_darwin(v9);
  v52 = &v48 - v10;
  v49 = sub_10015DA04(&qword_1006C49B0);
  v11 = *(v49 - 8);
  __chkstk_darwin(v49);
  v13 = &v48 - v12;
  v14 = sub_10015DA04(&qword_1006C5F70);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v48 - v16;
  v18 = sub_10015DA04(&qword_1006C5F98);
  v50 = *(v18 - 8);
  v19 = v50;
  v51 = v18;
  __chkstk_darwin(v18);
  v21 = &v48 - v20;
  v22 = OBJC_IVAR___ICCollaborationButtonsController__cloudObject;
  v67 = 0;
  v53 = sub_10015DA04(&qword_1006C5EB8);
  Published.init(initialValue:)();
  (*(v19 + 32))(&v3[v22], v21, v18);
  v23 = OBJC_IVAR___ICCollaborationButtonsController__accountSupportsDeviceToDeviceEncryption;
  LOBYTE(v67) = 0;
  Published.init(initialValue:)();
  v24 = *(v15 + 32);
  v24(&v3[v23], v17, v14);
  v25 = OBJC_IVAR___ICCollaborationButtonsController__accountHasKeychainEnabled;
  LOBYTE(v67) = 0;
  Published.init(initialValue:)();
  v24(&v3[v25], v17, v14);
  v26 = OBJC_IVAR___ICCollaborationButtonsController__showsActivityStream;
  LOBYTE(v67) = 0;
  Published.init(initialValue:)();
  v24(&v3[v26], v17, v14);
  v27 = OBJC_IVAR___ICCollaborationButtonsController__showsAttributionSidebar;
  LOBYTE(v67) = 0;
  Published.init(initialValue:)();
  v24(&v3[v27], v17, v14);
  v28 = OBJC_IVAR___ICCollaborationButtonsController__showsCollaboratorCursors;
  LOBYTE(v67) = 0;
  Published.init(initialValue:)();
  v24(&v3[v28], v17, v14);
  v29 = v56;
  v30 = OBJC_IVAR___ICCollaborationButtonsController__activeParticipants;
  v67 = _swiftEmptyArrayStorage;
  sub_10015DA04(&qword_1006C5ED0);
  Published.init(initialValue:)();
  (*(v11 + 32))(&v3[v30], v13, v49);
  v31 = OBJC_IVAR___ICCollaborationButtonsController__participantDataSource;
  v67 = 0;
  sub_10015DA04(&qword_1006C5EE0);
  v32 = v52;
  Published.init(initialValue:)();
  (*(v54 + 32))(&v3[v31], v32, v55);
  *&v3[OBJC_IVAR___ICCollaborationButtonsController_activityStreamUpdater] = 0;
  *&v3[OBJC_IVAR___ICCollaborationButtonsController_activityDigestSummaryObservation] = 0;
  *&v3[OBJC_IVAR___ICCollaborationButtonsController_showsCollaboratorCursorsObservation] = 0;
  *&v3[OBJC_IVAR___ICCollaborationButtonsController_collaboratorDataSourceObservation] = 0;
  v33 = OBJC_IVAR___ICCollaborationButtonsController__activityDigestSummary;
  v34 = type metadata accessor for ICActivityStreamDigest.Summary();
  v35 = v57;
  (*(*(v34 - 8) + 56))(v57, 1, 1, v34);
  sub_100026B50(v35, v58);
  v36 = v60;
  Published.init(initialValue:)();
  sub_1000073B4(v35, &qword_1006C5EF0);
  (*(v61 + 32))(&v3[v33], v36, v62);
  *&v3[OBJC_IVAR___ICCollaborationButtonsController____lazy_storage___buttonItem] = 0;
  v37 = &v3[OBJC_IVAR___ICCollaborationButtonsController_didPressManageShareButton];
  *v37 = 0;
  *(v37 + 1) = 0;
  swift_beginAccess();
  v38 = *(v50 + 8);
  v39 = v63;
  v40 = v63;
  v38(&v3[v22], v51);
  v66 = v39;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_unknownObjectUnownedInit();
  v65.receiver = v3;
  v65.super_class = ObjectType;
  v41 = objc_msgSendSuper2(&v65, "init");
  if (v39)
  {
    objc_opt_self();
    v42 = swift_dynamicCastObjCClass();
    if (v42)
    {
      v43 = v42;
      type metadata accessor for CollaborationParticipantDataSource();
      swift_allocObject();
      v44 = v40;
      v45 = v41;
      v46 = sub_100026BC0(v43);

      swift_getKeyPath();
      swift_getKeyPath();
      v67 = v46;
      v40 = v45;
      static Published.subscript.setter();
      sub_100026DC4();
    }

    v29 = v40;
  }

  return v41;
}

uint64_t sub_100026B50(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&qword_1006C5EF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_100026BC0(void *a1)
{
  v3 = sub_10015DA04(&qword_1006C49B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - v5;
  *(v1 + 3) = &_swiftEmptySetSingleton;
  *(v1 + 4) = 0;
  v7 = OBJC_IVAR____TtC11MobileNotes34CollaborationParticipantDataSource__cleanedUpParticipants;
  v13[1] = _swiftEmptyArrayStorage;
  sub_10015DA04(&qword_1006C5ED0);
  Published.init(initialValue:)();
  (*(v4 + 32))(&v1[v7], v6, v3);
  *&v1[OBJC_IVAR____TtC11MobileNotes34CollaborationParticipantDataSource_groupSession] = 0;
  *(v1 + 2) = a1;
  v8 = objc_opt_self();
  v9 = a1;
  v10 = [v8 defaultCenter];
  v11 = qword_1006BC7D0;

  if (v11 != -1)
  {
    swift_once();
  }

  [v10 addObserver:v1 selector:"realtimeCollaborationControllerGroupActivityDidChange:" name:qword_1006EF720 object:0];

  return v1;
}

NSString sub_100026D8C()
{
  result = String._bridgeToObjectiveC()();
  qword_1006EF720 = result;
  return result;
}

uint64_t sub_100026DC4()
{
  v1 = v0;
  v2 = sub_10015DA04(&unk_1006C5F10);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v8 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v8[1])
  {
    swift_beginAccess();
    sub_10015DA04(&qword_1006C49B0);
    Published.projectedValue.getter();
    swift_endAccess();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1000060B4(&unk_1006C5F20, &unk_1006C5F10);
    v6 = Publisher<>.sink(receiveValue:)();

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v6 = 0;
  }

  *(v1 + OBJC_IVAR___ICCollaborationButtonsController_collaboratorDataSourceObservation) = v6;
}

uint64_t sub_100026FD0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100027008()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_100027080()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_1000271F0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000274F4()
{

  *(v0 + 336) = +[ICAppDelegate sharedInstance];
  v1 = swift_task_alloc();
  *(v0 + 344) = v1;
  *v1 = v0;
  v1[1] = sub_100387A68;

  return sub_1000275AC();
}

uint64_t sub_1000275AC()
{
  v1[3] = v0;
  sub_10015DA04(qword_1006C0920);
  v1[4] = swift_task_alloc();
  v2 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = type metadata accessor for MainActor();
  v1[9] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[10] = v4;
  v1[11] = v3;

  return _swift_task_switch(sub_1000276DC, v4, v3);
}

uint64_t sub_1000276DC()
{
  if ([*(v0 + 24) isReadyForDelayedLaunchTasks])
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = [objc_opt_self() defaultCenter];
    NSNotificationCenter.notifications(named:object:)();

    NSNotificationCenter.Notifications.makeAsyncIterator()();
    *(v0 + 96) = static MainActor.shared.getter();
    v4 = sub_10002785C();
    v5 = swift_task_alloc();
    *(v0 + 104) = v5;
    *v5 = v0;
    v5[1] = sub_10022AA20;
    v6 = *(v0 + 32);
    v7 = *(v0 + 40);

    return dispatch thunk of AsyncIteratorProtocol.next()(v6, v7, v4);
  }
}

unint64_t sub_10002785C()
{
  result = qword_1006C8860;
  if (!qword_1006C8860)
  {
    type metadata accessor for NSNotificationCenter.Notifications.Iterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C8860);
  }

  return result;
}

void sub_10002794C(id a1)
{
  v1 = objc_alloc_init(ICQuickNoteSessionManager);
  v2 = qword_1006CB2D0;
  qword_1006CB2D0 = v1;
}

uint64_t sub_1000280A8@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_1000280DC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10002812C(uint64_t a1, int a2)
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

uint64_t sub_10002814C(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ICAttachmentArchiveModel.Coordinate(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ICAttachmentArchiveModel.Coordinate(uint64_t result, int a2, int a3)
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

uint64_t sub_100028208()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000282B4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000282EC@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

void *sub_1000283EC@<X0>(void *result@<X0>, char *a2@<X8>)
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

uint64_t sub_100028434()
{
  v1 = sub_10015DA04(&qword_1006BD9C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_10015DA04(&qword_1006BD9B8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100028594()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000285CC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000286B0@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000286DC@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100028708()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100028750()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100028790()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000287D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100028810()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100028850()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100028910()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100028948()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t _s11MobileNotes12NotesFeatureVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s11MobileNotes12NotesFeatureVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_100028A88()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100028AC8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100028B10@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100028B3C()
{
  v1 = (type metadata accessor for ChecklistItemEntity() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v8 = *(type metadata accessor for ChecklistItemID() + 20);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v7(v5 + v1[7], v6);

  return _swift_deallocObject(v0, v4 + 24, v2 | 7);
}

uint64_t sub_100028CE4()
{
  v1 = (type metadata accessor for ChecklistItemEntity() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = type metadata accessor for URL();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v7 = *(type metadata accessor for ChecklistItemID() + 20);
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v6(v0 + v3 + v1[7], v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100028E6C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100028F3C()
{
  v1 = (type metadata accessor for ChecklistItemEntity() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  v7 = type metadata accessor for URL();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  v9 = *(type metadata accessor for ChecklistItemID() + 20);
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 8))(v6 + v9, v10);
  v8(v6 + v1[7], v7);

  return _swift_deallocObject(v0, v5 + 8, v2 | 7);
}

uint64_t sub_100029120@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100029180()
{
  sub_1000291C8(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_1000291C8(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 57, 7);
}

void sub_1000291C8(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

id sub_1000291D8(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return a2;
  }

  else
  {
  }
}

uint64_t sub_1000291E8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100029224()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10002927C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&qword_1006BE390);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000292EC()
{
  sub_10017992C(&qword_1006BE390);
  sub_10017992C(&qword_1006BE360);
  type metadata accessor for ModifiedContent();
  sub_10017992C(&qword_1006BE368);
  type metadata accessor for ModifiedContent();
  type metadata accessor for EnabledTextSelectability();
  sub_1000060B4(&qword_1006BE370, &qword_1006BE360);
  swift_getWitnessTable();
  sub_1000060B4(&qword_1006BE378, &qword_1006BE368);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  return swift_getWitnessTable();
}

uint64_t sub_1000294D8@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100029504@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100029530()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100029600()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100029670@<X0>(uint64_t *a1@<X8>)
{
  sub_1001B37F8();
  result = BinaryInteger.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_1000297A8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 operationQueue];
  *a2 = result;
  return result;
}

id sub_1000297E4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 operationCount];
  *a2 = result;
  return result;
}

id sub_100029818@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isDisabled];
  *a2 = result;
  return result;
}

id sub_100029860@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isObservingChanges];
  *a2 = result;
  return result;
}

uint64_t sub_1000298DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000299AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TableID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100029AB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for TableID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for URL();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100029BC4()
{
  v1 = type metadata accessor for TableID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100029C68@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_100029CB8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_100029D7C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100029E54()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100029EE0@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100029F10(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100029FDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_10002A098()
{
  v1 = sub_10015DA04(&qword_1006C4D50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10002A140(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_10002A1EC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10002A290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10002A35C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_10002A418@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002A444@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002A4F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002A538()
{
  v1 = sub_10015DA04(&qword_1006BF730);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10002A608()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002A6AC@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002A6D8@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002A78C@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002A7B8@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002A7E4@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002A810()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10002A93C@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002A968@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002A994()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002AA20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EditNoteActivity();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_10015DA04(&qword_1006BFC50);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10002AB38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for EditNoteActivity();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_10015DA04(&qword_1006BFC50);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10002AC60()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002ACA0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002ACD8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002AD10()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10002AD68()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10002ADBC(char a1)
{
  if (!a1)
  {
    return 0x736D657469;
  }

  if (a1 == 1)
  {
    return 0x49746E6572727563;
  }

  return 0xD00000000000001ELL;
}

uint64_t sub_10002AE1C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002AE7C()
{

  if (*(v0 + 72))
  {
  }

  if (*(v0 + 88))
  {
  }

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10002AEEC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002AF24()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10002B064@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10002B0D8@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10002B218@<X0>(void *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_10002B33C@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10002B3B0@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10002B578@<X0>(void *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_10002B6A4@<X0>(void *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10002B724@<X0>(void *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

double sub_10002B79C@<D0>(_OWORD *a1@<X8>)
{
  IntentParameter.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_10002B850@<D0>(_OWORD *a1@<X8>)
{
  IntentParameter.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_10002B8C8@<D0>(_OWORD *a1@<X8>)
{
  IntentParameter.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_10002B968@<D0>(_OWORD *a1@<X8>)
{
  IntentParameter.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_10002BA08@<D0>(_OWORD *a1@<X8>)
{
  IntentParameter.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_10002BAB4@<X0>(void *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10002BB34@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10002BBA8@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10002BC20@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10002BC94@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10002BD08@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10002BD7C@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10002BE60@<X0>(void *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10002BF80()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002BFC0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for AttachmentID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for URL();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_10015DA04(&qword_1006BCC20);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[9]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_10002C120(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for AttachmentID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for URL();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_10015DA04(&qword_1006BCC20);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[9]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10002C2C4()
{
  v1 = type metadata accessor for AttachmentID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10002C388()
{
  v1 = type metadata accessor for AttachmentID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10002C42C@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002C458()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002C490()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002C5A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = type metadata accessor for UUID();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10002C694(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UUID();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10002C794()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002C7F0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 120))(*(a1 + a2 - 16));
  *a3 = result & 1;
  return result;
}

__n128 sub_10002C88C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

id sub_10002C898@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 userIdentity];
  *a2 = result;
  return result;
}

id sub_10002C8E8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 userRecordID];
  *a2 = result;
  return result;
}

uint64_t sub_10002C928@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002C9E8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002CB08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(qword_1006C0CC0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10002CB80(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(qword_1006C0CC0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10002CBFC()
{
  sub_10017992C(&qword_1006C09A8);
  type metadata accessor for CollaborationPopoverDetailView.CollaborationListLabelStyle();
  sub_1002316F0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_10002CD5C()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10002CD94@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 _ICDebugWindowEnabled];
  *a2 = result;
  return result;
}

uint64_t sub_10002CDDC()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002CE14()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002CE5C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002CEAC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002CEF4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v14 = *(v2 + 80);
  v3 = (v14 + 32) & ~v14;
  v4 = (*(v2 + 64) + v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_10015DA04(&qword_1006BCC20) - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + v6 + 8) & ~v8;
  v13 = *(v7 + 64);
  swift_unknownObjectRelease();
  v10 = v0 + v3;
  v11 = *(v2 + 8);
  v11(v10, v1);

  if (!(*(v2 + 48))(v0 + v9, 1, v1))
  {
    v11(v0 + v9, v1);
  }

  return _swift_deallocObject(v0, v13 + v9 + 1, v14 | v8 | 7);
}

uint64_t sub_10002D0B8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002D0F0()
{
  v1 = *(sub_10015DA04(&qword_1006BCC20) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, ((v3 + v4) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_10002D22C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002D26C@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002D298@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002D2C4()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10002D408()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002D450()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002D48C()
{
  v1 = *(type metadata accessor for AudioAttachmentMetadata(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for UnknownStorage();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002D5BC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10002D5F4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 completedUnitCount];
  *a2 = result;
  return result;
}

uint64_t sub_10002D63C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002D674()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10002D7A0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10002D89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10015DA04(&unk_1006C1710);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10002D968(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10015DA04(&unk_1006C1710);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10002DA30()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002DA78@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002DAA4@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002DAD0@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002DBD8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002DC10@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10002DCA8()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10002DD7C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NoteEntity(0);
  result = EntityProperty.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002DDC0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NoteEntity(0);
  result = EntityProperty.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002DE04@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NoteEntity(0);
  result = EntityProperty.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002DE48@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NoteEntity(0);
  result = EntityProperty.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002DE8C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NoteEntity(0);
  result = EntityProperty.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002DED0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NoteEntity(0);
  result = EntityProperty.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002DF14()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002DF4C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002DF8C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002E020()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002E058()
{

  if (*(v0 + 72))
  {
  }

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10002E0C0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002E0F8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002E130()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002E1E0()
{
  if (*(v0 + 40) != 1)
  {
  }

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10002E248()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 16) != 1)
  {
  }

  return _swift_deallocObject(v0, ((v5 + 68) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10002E344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10015DA04(&unk_1006C1710);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10015DA04(&qword_1006BCC20);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 80);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10002E480(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_10015DA04(&unk_1006C1710);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10015DA04(&qword_1006BCC20);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 80);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10002E5C8()
{
  if (*(v0 + 40))
  {
    sub_100009F60(v0 + 16);
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002E608()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002E640@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002E66C@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002E698()
{

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10002E7CC@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002E808@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002E8C4@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002E980()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002E9FC()
{
  v1 = type metadata accessor for RealtimeCollaborationSelectionDocument.ParticipantSelection();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10002EAC0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002EAF8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002EB38()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002EB74(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10015DA04(&unk_1006C1710);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_10002EC30(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10015DA04(&unk_1006C1710);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10002ECE8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002ED20()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002ED60()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002EDA0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002EDE8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002EE38()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002EE78()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002EEDC()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_10002EFB0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002EFE8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10015DA04(&unk_1006C1710);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_10015DA04(&qword_1006C28A8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_10015DA04(&qword_1006C28A0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_10015DA04(&qword_1006C2898);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[8] + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  v18 = v17 - 1;
  if (v18 < 0)
  {
    v18 = -1;
  }

  return (v18 + 1);
}

uint64_t sub_10002F1C4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_10015DA04(&unk_1006C1710);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_10015DA04(&qword_1006C28A8);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_10015DA04(&qword_1006C28A0);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = sub_10015DA04(&qword_1006C2898);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8] + 8) = a2;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10002F398(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&qword_1006C29F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F40C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10002F460()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10002F498()
{
  v1 = sub_10015DA04(&unk_1006C2B10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10002F530()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002F568()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10002F5A0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isEmpty];
  *a2 = result;
  return result;
}

uint64_t sub_10002F5DC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002F618()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002F664()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002F6C4()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10002F718@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AttachmentEntity();
  result = EntityProperty.projectedValue.getter();
  *a1 = result;
  return result;
}

void *sub_10002F79C@<X0>(void *result@<X0>, BOOL *a2@<X8>)
{
  v2 = result[1];
  v3 = *result & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  *a2 = v3 == 0;
  return result;
}

uint64_t sub_10002F7C8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002F870(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&qword_1006C30E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F8E0(uint64_t a1, uint64_t a2)
{
  v4 = _s6ObjectVMa(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10002F94C(uint64_t a1, uint64_t a2)
{
  v4 = _s6ObjectVMa(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10002F9C0@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10002FA64()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002FAB4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002FAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EditNoteActivity();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10002FBB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for EditNoteActivity();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = -a2;
  }

  return result;
}

uint64_t sub_10002FC74@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002FCA0@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002FCCC@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002FCF8()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10002FE2C@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002FE58@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002FE84()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002FEBC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002FEFC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002FF34()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10002FF8C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100030058@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000300D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100030114()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100030154()
{
  sub_1002EC294(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000301C8@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100030238()
{
  v1 = *(type metadata accessor for AudioAttachmentMetadata(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  v7 = type metadata accessor for UnknownStorage();
  (*(*(v7 - 8) + 8))(v6, v7);

  return _swift_deallocObject(v0, v5 + 8, v2 | 7);
}

uint64_t sub_100030398()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000303E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100030418()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100030460()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000304C0()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100030520()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100030560()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000305A0()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000305E0()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100030620()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100030658(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 7)
  {
    return v5 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000306C4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 6);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100030748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
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

uint64_t sub_100030814(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_1000308CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 251)
  {
    v4 = *(a1 + 1);
    if (v4 >= 5)
    {
      return v4 - 4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_10015DA04(&qword_1006C3808);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10015DA04(&unk_1006BE0B0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100030A00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 251)
  {
    *(result + 1) = a2 + 4;
  }

  else
  {
    v8 = sub_10015DA04(&qword_1006C3808);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10015DA04(&unk_1006BE0B0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100030B48(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10015DA04(&unk_1006C1710);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100030C04(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10015DA04(&unk_1006C1710);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100030CB4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10015DA04(&unk_1006BE0B0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_9:
    v13 = *(v8 + 48);

    return v13(a1 + v9, a2, v7);
  }

  v10 = sub_10015DA04(&unk_1006C1710);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_9;
  }

  v11 = sub_10015DA04(&qword_1006C37E8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[8];
    goto LABEL_9;
  }

  v12 = sub_10015DA04(&qword_1006BCC20);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[10];
    goto LABEL_9;
  }

  if (a2 == 2147483646)
  {
    v15 = *(a1 + a3[12] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    v16 = v15 - 1;
    if (v16 < 0)
    {
      v16 = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = sub_10015DA04(&qword_1006C37E0);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[13];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_100030F00(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_10015DA04(&unk_1006BE0B0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v15 = *(v10 + 56);

    return v15(a1 + v11, a2, a2, v9);
  }

  v12 = sub_10015DA04(&unk_1006C1710);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = sub_10015DA04(&qword_1006C37E8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  result = sub_10015DA04(&qword_1006BCC20);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[12] + 8) = a2;
  }

  else
  {
    v16 = sub_10015DA04(&qword_1006C37E0);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + a4[13];

    return v17(v18, a2, a2, v16);
  }

  return result;
}

uint64_t sub_100031298()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000312D0()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100031320()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100031358()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100031390()
{
  v1 = sub_10015DA04(&qword_1006C3FC0);
  v90 = *(v1 - 8);
  v91 = v1;
  v2 = (*(v90 + 80) + 16) & ~*(v90 + 80);
  v85 = v2;
  v86 = *(v90 + 80);
  v3 = *(v90 + 64);
  v4 = sub_10015DA04(&qword_1006C3FB0);
  v88 = *(v4 - 8);
  v89 = v4;
  v81 = *(v88 + 80);
  v82 = (v2 + v3 + v81) & ~v81;
  v5 = *(v88 + 64);
  v87 = sub_10015DA04(&qword_1006C3FB8);
  v84 = *(v87 - 8);
  v76 = *(v84 + 80);
  v78 = (v82 + v5 + v76) & ~v76;
  v6 = *(v84 + 64);
  v83 = sub_10015DA04(&qword_1006C3FA8);
  v80 = *(v83 - 8);
  v70 = *(v80 + 80);
  v74 = (v78 + v6 + v70) & ~v70;
  v7 = *(v80 + 64);
  v79 = sub_10015DA04(&qword_1006C3FA0);
  v77 = *(v79 - 8);
  v65 = *(v77 + 80);
  v71 = (v74 + v7 + v65) & ~v65;
  v8 = *(v77 + 64);
  v75 = sub_10015DA04(&qword_1006C3F90);
  v73 = *(v75 - 8);
  v60 = *(v73 + 80);
  v67 = (v71 + v8 + v60) & ~v60;
  v9 = *(v73 + 64);
  v72 = sub_10015DA04(&qword_1006C3F98);
  v69 = *(v72 - 8);
  v55 = *(v69 + 80);
  v63 = (v67 + v9 + v55) & ~v55;
  v10 = *(v69 + 64);
  v68 = sub_10015DA04(&qword_1006C3F70);
  v66 = *(v68 - 8);
  v50 = *(v66 + 80);
  v59 = (v63 + v10 + v50) & ~v50;
  v11 = *(v66 + 64);
  v64 = sub_10015DA04(&qword_1006C3F68);
  v62 = *(v64 - 8);
  v44 = *(v62 + 80);
  v56 = (v59 + v11 + v44) & ~v44;
  v12 = *(v62 + 64);
  v61 = sub_10015DA04(&qword_1006C3F88);
  v58 = *(v61 - 8);
  v40 = *(v58 + 80);
  v52 = (v56 + v12 + v40) & ~v40;
  v13 = *(v58 + 64);
  v57 = sub_10015DA04(&qword_1006C3F80);
  v54 = *(v57 - 8);
  v35 = *(v54 + 80);
  v48 = (v52 + v13 + v35) & ~v35;
  v14 = *(v54 + 64);
  v53 = sub_10015DA04(&qword_1006C3F78);
  v51 = *(v53 - 8);
  v15 = *(v51 + 80);
  v16 = (v48 + v14 + v15) & ~v15;
  v45 = v16;
  v17 = *(v51 + 64);
  v49 = sub_10015DA04(&qword_1006C3F58);
  v47 = *(v49 - 8);
  v18 = *(v47 + 80);
  v41 = (v16 + v17 + v18) & ~v18;
  v19 = *(v47 + 64);
  v46 = sub_10015DA04(&qword_1006C3F50);
  v43 = *(v46 - 8);
  v20 = *(v43 + 80);
  v38 = (v41 + v19 + v20) & ~v20;
  v21 = *(v43 + 64);
  v42 = sub_10015DA04(&qword_1006C3F48);
  v37 = *(v42 - 8);
  v22 = *(v37 + 80);
  v34 = (v38 + v21 + v22) & ~v22;
  v23 = *(v37 + 64);
  v39 = sub_10015DA04(&qword_1006C3F40);
  v24 = *(v39 - 8);
  v25 = *(v24 + 80);
  v26 = (v34 + v23 + v25) & ~v25;
  v27 = *(v24 + 64);
  v36 = sub_10015DA04(&qword_1006C3F60);
  v28 = *(v36 - 8);
  v29 = *(v28 + 80);
  v30 = (v26 + v27 + v29) & ~v29;
  v33 = *(v28 + 64);
  v31 = v86 | v81 | v76 | v70 | v65 | v60 | v55 | v50 | v44 | v40 | v35 | v15 | v18 | v20 | v22 | v25 | v29;
  (*(v90 + 8))(v0 + v85, v91);
  (*(v88 + 8))(v0 + v82, v89);
  (*(v84 + 8))(v0 + v78, v87);
  (*(v80 + 8))(v0 + v74, v83);
  (*(v77 + 8))(v0 + v71, v79);
  (*(v73 + 8))(v0 + v67, v75);
  (*(v69 + 8))(v0 + v63, v72);
  (*(v66 + 8))(v0 + v59, v68);
  (*(v62 + 8))(v0 + v56, v64);
  (*(v58 + 8))(v0 + v52, v61);
  (*(v54 + 8))(v0 + v48, v57);
  (*(v51 + 8))(v0 + v45, v53);
  (*(v47 + 8))(v0 + v41, v49);
  (*(v43 + 8))(v0 + v38, v46);
  (*(v37 + 8))(v0 + v34, v42);
  (*(v24 + 8))(v0 + v26, v39);
  (*(v28 + 8))(v0 + v30, v36);

  return _swift_deallocObject(v0, v30 + v33, v31 | 7);
}

uint64_t sub_100031E28()
{
  v1 = sub_10015DA04(&qword_1006C3F38);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100031EBC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100031EFC()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100031F34()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100031F74()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100031FAC()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100032000(uint64_t a1, void **a2)
{
  v2 = *a2;
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v2 setFolderIdentifiers:isa];
}

uint64_t sub_1000320EC@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100032118()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000321A4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000321E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100032224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccountID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100032334(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for AccountID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for URL();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100032440()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100032480()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000324C0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100032508()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100032544()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003258C()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100032740()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100032778()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000327F8@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100032824@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100032850()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100032928@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100032954()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000329E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100032A20()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100032A58()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100032A98()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100032AE0@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100032B0C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100032B5C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100032BAC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10015DA04(&unk_1006BCA20);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10015DA04(&unk_1006BF9D0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100032CE8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_10015DA04(&unk_1006BCA20);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10015DA04(&unk_1006BF9D0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100032EF0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100032F2C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100032F64()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100032FAC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100032FF8()
{
  v1 = sub_10015DA04(&qword_1006C2178);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000330C8()
{
  v1 = type metadata accessor for EditNoteActivity();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1000331C8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100033218()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100033268()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000332C0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000332F8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100033340()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100033378()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000333B0()
{
  v1 = type metadata accessor for FastSyncStateMachine();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;
  v6 = type metadata accessor for EditNoteActivity();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[5];
  v8 = sub_10015DA04(&qword_1006BFCC8);
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = v5 + v1[8];
  sub_100354FDC(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000335A8()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100033610@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100033680()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000336D0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100033708()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100033748()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100033788()
{
  v1 = sub_10015DA04(&qword_1006C4B10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_10015DA04(&qword_1006C4B18);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_1000338E8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000339B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TagID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100033AC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for TagID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for URL();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100033BD4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100033C20()
{
  _Block_release(*(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100033C78@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100033CA4@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100033D58()
{
  v1 = sub_10015DA04(&qword_1006C4D50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100033DEC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Logger();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100033E98()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100033EE0@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100033F0C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100034060@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003408C@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000340B8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000340F0()
{
  v1 = (type metadata accessor for NoteEntity(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(*v1 + 64);

  v5 = type metadata accessor for NoteID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000342A4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100034364@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100034418@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003448C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000344D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NoteID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 36));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000345E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for NoteID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for URL();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10003472C()
{
  v1 = type metadata accessor for UTType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

id sub_1000347B4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 store];
  *a2 = result;
  return result;
}

id sub_10003485C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 folder];
  *a2 = result;
  return result;
}

void sub_1000348B0(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = String._bridgeToObjectiveC()();
  [v2 setTitle:v3];
}

uint64_t sub_1000349E4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100034A24()
{
  v1 = type metadata accessor for NoteID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100034AE8()
{
  v1 = type metadata accessor for NoteID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100034B88()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100034BC0()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100034BF8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 fastSyncEnabled];
  *a2 = result;
  return result;
}

uint64_t sub_100034C30()
{
  v11 = type metadata accessor for SuspendingClock.Instant();
  v1 = *(v11 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for SuspendingClock();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v12 = v2 | v7;
  v9 = (((((*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v3, v11);
  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v12 | 7);
}

uint64_t sub_100034DE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&qword_1006C5848);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100034E58(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10015DA04(&qword_1006C5848);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100034EE4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for EditNoteActivity();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10015DA04(&qword_1006BFCC8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100035014(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for EditNoteActivity();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10015DA04(&qword_1006BFCC8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10003515C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100035194()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000351DC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003522C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100035264()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000352C4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000352FC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100035340()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100035378()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100035400()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000354D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100035518()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100035648()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100035694()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000356D4()
{
  v1 = sub_10015DA04(&qword_1006C5FE8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000357A4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000357DC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100035814()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003584C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003588C()
{
  v24 = sub_10015DA04(&qword_1006C6008);
  v1 = *(v24 - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v20 = *(v1 + 80);
  v21 = v2;
  v3 = *(v1 + 64);
  v23 = sub_10015DA04(&qword_1006C6000);
  v4 = *(v23 - 8);
  v5 = *(v4 + 80);
  v6 = (v2 + v3 + v5) & ~v5;
  v19 = v6;
  v7 = *(v4 + 64);
  v22 = sub_10015DA04(&qword_1006C5FF8);
  v8 = *(v22 - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v7 + v9) & ~v9;
  v11 = *(v8 + 64);
  v12 = sub_10015DA04(&qword_1006BF730);
  v13 = *(v12 - 8);
  v14 = *(v13 + 80);
  v15 = (v10 + v11 + v14) & ~v14;
  v18 = *(v13 + 64);
  v16 = v20 | v5 | v9 | v14;

  (*(v1 + 8))(v0 + v21, v24);
  (*(v4 + 8))(v0 + v19, v23);
  (*(v8 + 8))(v0 + v10, v22);
  (*(v13 + 8))(v0 + v15, v12);

  return _swift_deallocObject(v0, v15 + v18, v16 | 7);
}

uint64_t sub_100035B28()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100035B6C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100035BA4()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100035BFC()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100035C4C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100035C9C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100035CD4()
{

  if (*(v0 + 56))
  {
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100035D34()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100035D7C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100035DBC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100035DFC()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100035E3C()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100035E84()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100035EC4()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100035FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ChecklistItemID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000360C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ChecklistItemID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for URL();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000361D0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100036208()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000362CC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100036308()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100036358()
{

  if (*(v0 + 72))
  {
  }

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000363C0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000363F8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100036448()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100036524()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100036564()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100036658()
{
  v1 = (type metadata accessor for ChecklistItemID() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v1[7];
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return _swift_deallocObject(v0, v4 + 24, v2 | 7);
}

uint64_t sub_100036798()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000367E0()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100036868()
{
  v1 = (type metadata accessor for ChecklistItemID() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v1[7];
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return _swift_deallocObject(v0, ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1000369AC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000369E4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100036A24()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100036A64()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100036AAC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100036AEC()
{
  if (*(v0 + 40))
  {
    sub_100009F60(v0 + 16);
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100036B2C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100036B80()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100036BB8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100036BF0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100036C28()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100036C60()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100036CA0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100036CF0()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100036D28()
{

  return _swift_deallocObject(v0, 43, 7);
}

uint64_t sub_100036D68()
{

  return _swift_deallocObject(v0, 51, 7);
}

uint64_t sub_100036DB0()
{

  return _swift_deallocObject(v0, 42, 7);
}

uint64_t sub_100036DF0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100036E30()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100036E70()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100036EB0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100036EF0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100036F70@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100036FE0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100037020()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100037058()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003709C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000370D8()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100037110()
{
  v1 = sub_10015DA04(&qword_1006C6AA8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v17 = (v3 + 24) & ~v3;
  v18 = v1;
  v4 = *(v2 + 64);
  v5 = sub_10015DA04(&qword_1006C6AA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v17 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = sub_10015DA04(&qword_1006C6A98);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v16 = *(v11 + 64);
  v14 = v3 | v7 | v12;

  (*(v2 + 8))(v0 + v17, v18);
  (*(v6 + 8))(v0 + v8, v5);
  (*(v11 + 8))(v0 + v13, v10);

  return _swift_deallocObject(v0, v13 + v16, v14 | 7);
}

uint64_t sub_100037310()
{
  v1 = sub_10015DA04(&qword_1006C3F38);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_10015DA04(&qword_1006C6A90);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100037470()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000374A8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000374F8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100037534@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100037560@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003758C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100037628@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

id sub_100037698@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1000376E0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100037718()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100037750()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100037788()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000377D8@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100037804@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100037830()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000378F0@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003791C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100037954()
{

  if (*(v0 + 72))
  {
  }

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000379A8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000379E0()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100037A28()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100037A78()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100037AB0()
{
  if (*(v0 + 40))
  {
    sub_100009F60(v0 + 16);
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100037AF0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100037B28@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 currentNote];
  *a2 = result;
  return result;
}

uint64_t sub_100037B98()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100037BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10015DA04(&qword_1006C72D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100037C9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_10015DA04(&qword_1006C72D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100037D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ICQueryEntity();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for ICQueryType();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100037E3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ICQueryEntity();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for ICQueryType();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100037F38()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100037F70()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100037FC8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003800C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100038048()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100038090()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000380C8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100038100()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100038144()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003819C()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000381F0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TableEntity();
  result = EntityProperty.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100038238()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003827C@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000382EC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100038324@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100038398()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000383FC@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100038428@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100038454()
{

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100038588@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000385B4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000385EC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003862C()
{

  return _swift_deallocObject(v0, 25, 7);
}

void sub_100038678(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v10 = a1[4];
  sub_10017CC60(a1, v9);
  v11 = (*(v10 + 72))(v9, v10);
  if (v12 >> 60 != 15)
  {
    v24 = *(a2 + 96);
    v13 = v11;
    v14 = v12;
    swift_getObjectType();
    URL.appendingPathComponent(_:isDirectory:)();
    dispatch thunk of ICFileManaging.createFile(at:contents:)();
    if (v2)
    {
      v24 = v14;
      (*(v6 + 8))(v8, v5);
      if (qword_1006BC940 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_10002597C(v15, qword_1006C81A8);
      swift_errorRetain();
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v25 = v19;
        *v18 = 136315138;
        swift_getErrorValue();
        v20 = Error.localizedDescription.getter();
        v22 = sub_100009D88(v20, v21, &v25);

        *(v18 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v16, v17, "Cannot export attachment preview image file — skipping {error: %s}", v18, 0xCu);
        sub_100009F60(v19);

        sub_1001C60E4(v13, v24);
      }

      else
      {
        sub_1001C60E4(v13, v24);
      }
    }

    else
    {
      (*(v6 + 8))(v8, v5);
      sub_1001C60E4(v13, v14);
    }
  }
}

void sub_1000389A8(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v10 = a1[4];
  sub_10017CC60(a1, v9);
  v11 = (*(v10 + 80))(v9, v10);
  if (v12 >> 60 != 15)
  {
    v24 = *(a2 + 96);
    v13 = v11;
    v14 = v12;
    swift_getObjectType();
    URL.appendingPathComponent(_:isDirectory:)();
    dispatch thunk of ICFileManaging.createFile(at:contents:)();
    if (v2)
    {
      v24 = v14;
      (*(v6 + 8))(v8, v5);
      if (qword_1006BC940 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_10002597C(v15, qword_1006C81A8);
      swift_errorRetain();
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v25 = v19;
        *v18 = 136315138;
        swift_getErrorValue();
        v20 = Error.localizedDescription.getter();
        v22 = sub_100009D88(v20, v21, &v25);

        *(v18 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v16, v17, "Cannot export attachment fallback PDF file — skipping {error: %s}", v18, 0xCu);
        sub_100009F60(v19);

        sub_1001C60E4(v13, v24);
      }

      else
      {
        sub_1001C60E4(v13, v24);
      }
    }

    else
    {
      (*(v6 + 8))(v8, v5);
      sub_1001C60E4(v13, v14);
    }
  }
}

uint64_t sub_100038CD8()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

__n128 sub_100038D5C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_100038D68()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100038DA0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100038DD8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100038E18()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100038E84()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100038EDC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100038F24(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&unk_1006C1710);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100038F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&unk_1006C1710);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100039018()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100039078@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result)
  {
    *a2 = result;
    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10003908C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000390C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Logger();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100039170(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Logger();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100039214()
{
  v1 = (type metadata accessor for BulkModifyNoteTags() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = type metadata accessor for Logger();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100039314()
{
  v1 = (type metadata accessor for BulkModifyNoteTags() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = type metadata accessor for Logger();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10003940C()
{
  v1 = (type metadata accessor for BulkModifyNoteTags() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;

  v6 = v1[8];
  v7 = type metadata accessor for Logger();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return _swift_deallocObject(v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100039528()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100039568()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000395A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100039604()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003963C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100039674@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000396E4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003971C@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003978C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000397C4()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100039804()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100039840()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100039918()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100039958()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100039990()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000399E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100039AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FolderID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100039BC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for FolderID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for URL();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100039CCC()
{
  v1 = type metadata accessor for FolderID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100039D90()
{
  v1 = type metadata accessor for FolderID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100039E54()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100039E9C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100039EEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100039F58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100039FC8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003A008()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003A040()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003A080@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.minimumScaleFactor.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10003A0E0@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003A10C@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003A138()
{

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10003A1E4@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003A210()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003A25C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003A294()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003A31C@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003A348()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003A384()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003A3BC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003A3FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003A434()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003A494()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003A4E8()
{
  if (*(v0 + 16))
  {
  }

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003A538()
{
  v1 = sub_10015DA04(&unk_1006C9B30);
  v27 = *(v1 - 8);
  v28 = v1;
  v25 = *(v27 + 80);
  v2 = *(v27 + 64);
  v26 = sub_10015DA04(&qword_1006C9B28);
  v3 = *(v26 - 8);
  v4 = *(v3 + 80);
  v22 = (((v25 + 16) & ~v25) + v2 + v4) & ~v4;
  v5 = *(v3 + 64);
  v24 = sub_10015DA04(&qword_1006C9B20);
  v6 = *(v24 - 8);
  v7 = *(v6 + 80);
  v8 = (v22 + v5 + v7) & ~v7;
  v20 = v8;
  v9 = *(v6 + 64);
  v23 = sub_10015DA04(&qword_1006C9B18);
  v10 = *(v23 - 8);
  v11 = *(v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v13 = *(v10 + 64);
  v21 = sub_10015DA04(&qword_1006C9B10);
  v14 = *(v21 - 8);
  v15 = *(v14 + 80);
  v16 = (v12 + v13 + v15) & ~v15;
  v19 = *(v14 + 64);
  v17 = v25 | v4 | v7 | v11 | v15;
  (*(v27 + 8))(v0 + ((v25 + 16) & ~v25), v28);
  (*(v3 + 8))(v0 + v22, v26);
  (*(v6 + 8))(v0 + v20, v24);
  (*(v10 + 8))(v0 + v12, v23);
  (*(v14 + 8))(v0 + v16, v21);

  return _swift_deallocObject(v0, v16 + v19, v17 | 7);
}

uint64_t sub_10003A860()
{
  v1 = sub_10015DA04(&qword_1006C9B08);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_10015DA04(&qword_1006C9B00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10003A9C0()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003AA14()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003AA5C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003AA94()
{

  if (*(v0 + 72))
  {
  }

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10003AAFC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003AB48()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003AB8C()
{
  v1 = type metadata accessor for Notification();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10003AC28()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003AC70()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003ACAC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003ACE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10015DA04(&unk_1006C1710);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_10003ADC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10015DA04(&unk_1006C1710);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2;
  }

  return result;
}

uint64_t sub_10003AE98()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003AED0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003AF10()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003AF48()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10003B038@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003B064@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003B118()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10003B154()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003B19C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003B21C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003B27C()
{
  v1 = sub_10015DA04(&qword_1006CA490);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10003B310()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003B348()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003B380()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003B3B8@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003B3E4@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003B414()
{
  v1 = (type metadata accessor for ChecklistItemEntity() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v8 = *(type metadata accessor for ChecklistItemID() + 20);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v7(v5 + v1[7], v6);

  return _swift_deallocObject(v0, v4 + 40, v2 | 7);
}

uint64_t sub_10003B5CC()
{
  v1 = (type metadata accessor for ChecklistItemEntity() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;
  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v8 = *(type metadata accessor for ChecklistItemID() + 20);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v7(v5 + v1[7], v6);

  return _swift_deallocObject(v0, v4 + 40, v2 | 7);
}

uint64_t sub_10003B78C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003B8B8()
{
  v1 = (type metadata accessor for ChecklistItemEntity() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v8 = *(type metadata accessor for ChecklistItemID() + 20);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v7(v5 + v1[7], v6);

  return _swift_deallocObject(v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_10003BB58()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003BBA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10015DA04(&unk_1006C1710);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10003BC5C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_10015DA04(&unk_1006C1710);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003BD0C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003BD44()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003BD80()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10003BDC8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003BE08()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10003BEE4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003BF1C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10003C378(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) activityDidFinish:a2 == 0];
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = [*(a1 + 32) activityType];
    (*(v4 + 16))(v4, a2 == 0, v5);
  }
}

uint64_t sub_10003C990(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ICThumbnailService sharedThumbnailService];
  v5 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003CA54;
  v8[3] = &unk_100645598;
  v9 = v3;
  v6 = v3;
  [v4 thumbnailWithConfiguration:v5 completion:v8];

  return 0;
}

void sub_10003CA54(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v6 = [v3 image];
    v4 = [v6 ic_PNGData];
    v5 = [v3 error];

    (*(v2 + 16))(v2, v4, v5);
  }
}

void sub_10003D7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, id a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, id a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, id a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v68 + 40));
  objc_destroyWeak((v68 + 32));
  objc_destroyWeak((v67 + 40));
  objc_destroyWeak((v67 + 32));
  objc_destroyWeak(&a43);
  objc_destroyWeak(&a48);
  objc_destroyWeak(&a53);
  objc_destroyWeak(&a58);
  objc_destroyWeak(&a67);
  objc_destroyWeak(&STACK[0x230]);
  objc_destroyWeak(&STACK[0x258]);
  objc_destroyWeak(&STACK[0x280]);
  objc_destroyWeak(&STACK[0x2B0]);
  objc_destroyWeak(&STACK[0x2A8]);
  objc_destroyWeak(&STACK[0x2E0]);
  objc_destroyWeak(&STACK[0x2D8]);
  objc_destroyWeak(&STACK[0x310]);
  objc_destroyWeak(&STACK[0x308]);
  objc_destroyWeak((v69 - 184));
  objc_destroyWeak((v69 - 192));
  objc_destroyWeak((v69 - 200));
  objc_destroyWeak((v69 - 176));
  objc_destroyWeak((v69 - 136));
  objc_destroyWeak((v69 - 120));
  objc_destroyWeak((v69 - 112));
  _Unwind_Resume(a1);
}

void sub_10003D97C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v12 = a2;
  v6 = a4;
  [v12 setDisplayGenericTitle:1];
  if ([v6 isCollapsible])
  {
    v7 = *(a1 + 40) == 0;
  }

  else
  {
    v7 = 0;
  }

  [v12 setDisplayDisclosure:v7];
  objc_opt_class();
  v8 = ICDynamicCast();
  [v12 setFolderListSectionIdentifier:v8];

  objc_opt_class();
  v9 = ICDynamicCast();
  [v12 setNoteSectionIdentifier:v9];

  if ([v12 ic_inSidebar])
  {
    v10 = 1;
  }

  else if (+[UIDevice ic_isVision])
  {
    v10 = *(a1 + 40) == 0;
  }

  else
  {
    v10 = 0;
  }

  [v12 setUsesSidebarHeaderConfiguration:v10];
  if (+[UIDevice ic_isVision]&& *(a1 + 40))
  {
    [v12 setHorizontalInsetsOverride:0.0];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v12 setStyleForCalculator:{objc_msgSend(WeakRetained, "shouldStyleForCalculator")}];
}

void sub_10003DAE4(id *a1, void *a2, uint64_t a3, void *a4)
{
  v14 = a2;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v6 ic_isEntityOfClass:objc_opt_class()])
    {
      WeakRetained = objc_loadWeakRetained(a1 + 4);
      v8 = [WeakRetained modernViewContext];
      v9 = [v8 objectWithID:v6];
      [v14 setNoteContainer:v9];
    }

    else
    {
      if (![v6 ic_isEntityOfClass:objc_opt_class()])
      {
        goto LABEL_7;
      }

      WeakRetained = objc_loadWeakRetained(a1 + 4);
      v8 = [WeakRetained legacyViewContext];
      v9 = [v8 objectWithID:v6];
      [v14 setNoteCollection:v9];
    }
  }

LABEL_7:
  v10 = objc_loadWeakRetained(a1 + 5);
  [v14 setPresentingViewController:v10];

  [v14 setHasGroupInset:1];
  [v14 setHasDisclosureIndicator:1];
  v11 = objc_loadWeakRetained(a1 + 4);
  v12 = [v11 unsupportedFolderInfoButtonTapHandler];
  [v14 setUnsupportedFolderInfoButtonTapHandler:v12];

  v13 = objc_loadWeakRetained(a1 + 6);
  [v14 setAccessibilityCustomActionsDelegate:v13];
}

void sub_10003DC90(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v13 = a2;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    objc_opt_class();
    v8 = ICCheckedDynamicCast();
    v9 = [WeakRetained emptyConfigurationForNoteWithObjectID:v8];

    v10 = objc_loadWeakRetained((a1 + 32));
    v11 = [v10 collectionView];
    [v13 setConfiguration:v9 synchronously:{objc_msgSend(v11, "ic_shouldOptimizeForScrolling") ^ 1}];

    v12 = objc_loadWeakRetained((a1 + 40));
    [v13 setAccessibilityCustomActionsDelegate:v12];
  }
}

void sub_10003DDA4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v13 = a2;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    objc_opt_class();
    v8 = ICCheckedDynamicCast();
    v9 = [WeakRetained emptyConfigurationForNoteWithObjectID:v8];

    v10 = objc_loadWeakRetained((a1 + 32));
    v11 = [v10 collectionView];
    [v13 setConfiguration:v9 synchronously:{objc_msgSend(v11, "ic_shouldOptimizeForScrolling") ^ 1}];

    v12 = objc_loadWeakRetained((a1 + 40));
    [v13 setAccessibilityCustomActionsDelegate:v12];
  }
}

void sub_10003DEB8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v12 = a2;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    if ([v7 ic_isEntityOfClass:objc_opt_class()])
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v9 = [WeakRetained modernViewContext];
      v10 = [v9 objectWithID:v7];

      [v12 setFolder:v10];
      v11 = objc_loadWeakRetained((a1 + 40));
      [v12 setAccessibilityCustomActionsDelegate:v11];
    }
  }
}

void sub_10003DFBC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  [v7 setAllowsExclusion:1];
  [v7 setHasGroupInset:0];
  [v7 setHasHorizontalScrolling:1];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003E0BC;
  v10[3] = &unk_100645718;
  objc_copyWeak(&v11, (a1 + 32));
  [v7 setSelectionDidChange:v10];
  objc_destroyWeak(&v11);
}

void sub_10003E0BC(uint64_t a1, void *a2)
{
  v20 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained collectionViewDiffableDataSource];
  v5 = [v4 snapshot];

  v6 = [v5 itemIdentifiers];
  v7 = [v6 ic_objectPassingTest:&stru_1006456F0];

  if (v7)
  {
    v8 = objc_loadWeakRetained((a1 + 32));
    v9 = [v8 collectionViewDiffableDataSource];
    v10 = [v9 indexPathForItemIdentifier:v7];

    objc_opt_class();
    v11 = objc_loadWeakRetained((a1 + 32));
    v12 = [v11 collectionView];
    v13 = [v12 cellForItemAtIndexPath:v10];
    v14 = ICDynamicCast();

    v15 = [v14 tagSelection];
    [v20 setTagOperator:{objc_msgSend(v15, "tagOperator")}];

    [v14 updateForTagSelection:v20 animated:1];
  }

  v16 = objc_loadWeakRetained((a1 + 32));
  v17 = [v16 tagSelectionDidChangeHandler];

  if (v17)
  {
    v18 = objc_loadWeakRetained((a1 + 32));
    v19 = [v18 tagSelectionDidChangeHandler];
    (v19)[2](v19, v20);
  }
}

BOOL sub_10003E290(id a1, id a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_10003E2DC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  [v7 setMaxNumberOfLines:0];
  [v7 setAccessibilityContainerType:4];
  objc_initWeak(&location, v7);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10003E530;
  v26[3] = &unk_100645768;
  objc_copyWeak(&v27, &location);
  objc_copyWeak(&v28, (a1 + 32));
  [v7 setSelectionOperatorChangeHandler:v26];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained modernBackgroundContext];

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_10003E6C8;
  v24 = sub_10003E6D8;
  v25 = 0;
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10003E6E0;
  v16 = &unk_100645790;
  v18 = &v20;
  objc_copyWeak(&v19, (a1 + 32));
  v12 = v11;
  v17 = v12;
  [v12 performBlockAndWait:&v13];
  [v7 updateForTagSelection:v21[5] animated:{0, v13, v14, v15, v16}];

  objc_destroyWeak(&v19);
  _Block_object_dispose(&v20, 8);

  objc_destroyWeak(&v28);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

void sub_10003E4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak((v8 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 + 40));
  objc_destroyWeak((v9 + 32));
  objc_destroyWeak((v10 - 88));
  _Unwind_Resume(a1);
}

void sub_10003E530(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained tagSelection];
  [v5 setTagOperator:a2];

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 tagSelection];
  v8 = [ICQuery queryForNotesMatchingTagSelection:v7];
  v9 = objc_loadWeakRetained((a1 + 40));
  [v9 setNoteQuery:v8];

  v10 = objc_loadWeakRetained((a1 + 32));
  v11 = [v10 tagSelection];
  [v10 updateForTagSelection:v11 animated:0];

  v12 = objc_loadWeakRetained((a1 + 40));
  v13 = [v12 tagSelectionDidChangeHandler];

  if (v13)
  {
    v17 = objc_loadWeakRetained((a1 + 40));
    v14 = [v17 tagSelectionDidChangeHandler];
    v15 = objc_loadWeakRetained((a1 + 32));
    v16 = [v15 tagSelection];
    (v14)[2](v14, v16);
  }
}

uint64_t sub_10003E6C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10003E6E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained noteQuery];
  v3 = [v2 tagSelectionWithManagedObjectContext:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id sub_10003E768(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v10 = *(a1 + 32);
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = *(a1 + 40);
    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_19;
    }

    v13 = v9;
    if ([v13 ic_isContainerType])
    {
      WeakRetained = objc_loadWeakRetained((a1 + 88));
      v15 = [WeakRetained noteContainerViewMode] == 0;
      v16 = 64;
      v17 = 56;
    }

    else
    {
      if (![v13 ic_isNoteType])
      {
        if ([v13 ic_isLegacyNoteType])
        {
          v11 = *(a1 + 72);
          goto LABEL_18;
        }

        if (![v13 ic_isInvitationType])
        {
          v11 = 0;
          goto LABEL_18;
        }
      }

      WeakRetained = objc_loadWeakRetained((a1 + 88));
      v15 = [WeakRetained noteContainerViewMode] == 0;
      v16 = 80;
      v17 = 72;
    }

    if (v15)
    {
      v16 = v17;
    }

    v11 = *(a1 + v16);

LABEL_18:
    if (v11)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  v10 = *(a1 + 48);
LABEL_4:
  v11 = v10;
  if (v11)
  {
LABEL_5:
    v12 = [v7 dequeueConfiguredReusableCellWithRegistration:v11 forIndexPath:v8 item:v9];

    goto LABEL_20;
  }

LABEL_19:
  v12 = 0;
LABEL_20:

  return v12;
}

id sub_10003E950(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([v8 isEqualToString:UICollectionElementKindSectionHeader])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if ([WeakRetained isTrashFolder])
    {
      v11 = [v9 length] == 1;
    }

    else
    {
      v11 = 0;
    }

    if ([v8 isEqualToString:UICollectionElementKindSectionFooter])
    {
      v12 = [v9 length];
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    else if (!v11)
    {
      goto LABEL_14;
    }

    v13 = 32;
    goto LABEL_13;
  }

  if (![v8 isEqualToString:UICollectionElementKindSectionFooter])
  {
    goto LABEL_14;
  }

  v12 = [v9 length];
LABEL_9:
  if (v12 == 1)
  {
    v13 = 40;
LABEL_13:
    v14 = *(a1 + v13);
    v15 = [v7 dequeueConfiguredReusableSupplementaryViewWithRegistration:v14 forIndexPath:v9];

    goto LABEL_15;
  }

LABEL_14:
  v15 = 0;
LABEL_15:

  return v15;
}

uint64_t sub_10003EA98(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained collectionView];
  v7 = [v6 isEditing] ^ 1;

  return v7;
}

uint64_t sub_10003EB24(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained collectionView];
  v7 = [v6 isEditing] ^ 1;

  return v7;
}

void sub_10003EBB0(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = +[ICExpansionState sharedExpansionState];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained indexer];
  v6 = [v5 expansionStateContext];
  [v3 expandItemIdentifier:v11 context:v6];

  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v7 willExpandItemHandler];

  if (v8)
  {
    v9 = objc_loadWeakRetained((a1 + 32));
    v10 = [v9 willExpandItemHandler];
    (v10)[2](v10, v11);
  }
}

void sub_10003ECB0(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = +[ICExpansionState sharedExpansionState];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained indexer];
  v6 = [v5 expansionStateContext];
  [v3 collapseItemIdentifier:v11 context:v6];

  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v7 willCollapseItemHandler];

  if (v8)
  {
    v9 = objc_loadWeakRetained((a1 + 32));
    v10 = [v9 willCollapseItemHandler];
    (v10)[2](v10, v11);
  }
}

void sub_10003EDB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained window];

  if (v3)
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    v4 = [v5 lockedNotesMigratorDidMigrateNoteDelayer];
    [v4 requestFire];
  }
}

void sub_10003EE4C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained window];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    [v4 reloadDataAnimated:1];
  }
}

void sub_10003F6D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003F6F4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  v7 = [v6 object];
  v8 = ICDynamicCast();

  if (v8 && [v8 ic_isModernNoteType] && (objc_msgSend(*(a1 + 32), "containsObject:", v8) & 1) == 0)
  {
    [*(a1 + 32) addObject:v8];
    v9 = [*(a1 + 40) managedObjectContext];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10003F844;
    v10[3] = &unk_100645928;
    v11 = *(a1 + 40);
    v12 = v6;
    v13 = *(a1 + 48);
    [v9 performBlockAndWait:v10];

    *a4 = *(*(*(a1 + 56) + 8) + 24);
  }
}